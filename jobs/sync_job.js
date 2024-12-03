

const { CronJob } = require('cron');
const axios = require('axios');
const { PostgresService } = require('../db/database');
const { ASSET_STATUS } = require('../constant/asset.constant');

async function sync() {
    try {
        const response = await axios.get('https://669ce22d15704bb0e304842d.mockapi.io/assets');
    const data = await response.data;
    if (!Array.isArray(data) || data.length <= 0 ) {
        console.log("No data");
        return;
    }
    console.log(data);

    const activedAssets = data.filter(el => el.status === 'actived');
    const locationIds = activedAssets.map(el => el.location_id);
    const existedLocationQueryResult = await PostgresService.pg.query("SELECT id FROM public.as_location WHERE id = ANY($1::smallint[])", [locationIds])
    const existedLocationIds = existedLocationQueryResult.rows.map(el => el.id)
    let perfectAssets = []
    
    for (let asset of activedAssets) {
        if (existedLocationIds.includes(asset.location_id) && new Date(asset.created_at) < new Date()) {
            perfectAssets.push({
                location_id: asset.location_id,
                status_id: ASSET_STATUS.ACTIVED,
                org_id: 1
            })
        }
    }
    if(perfectAssets.length === 0) {
        console.log("All data synced");
        return;
    }
    const rows = perfectAssets.map((_, index) => 
        `($${index * 3 + 1}, $${index * 3 + 2}, $${index * 3 + 3})`
      ).join(', ');
    try {
        const queryText = `INSERT INTO public.as_asset(location_id, org_id, status_id) VALUES ${rows}`
        const res = await PostgresService.pg.query(queryText, perfectAssets.flatMap(Object.values))
        console.log("Sync successfully, table as_asset")
      } catch (e) {
        console.log(e)
        throw e
      } finally {
      }
    } catch(err) {
        console.log(err);
    }
}

const syncJob = new CronJob(
	'0 0 * * *',
	sync, 
	null,
	true, 
	'Asia/Ho_Chi_Minh'
);

module.exports = {
    syncJob
}
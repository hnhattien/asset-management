
const { Pool } = require('pg');



console.log({
    host: process.env.POSTGRES_DOCKER_HOST,
        user: process.env.POSTGRES_USER,
        password: process.env.POSTGRES_PASSWORD,
        port: Number(process.env.POSTGRES_DOCKER_PORT),
        database: process.env.POSTGRES_DB,
})

class PostgresService {
    static pg = new Pool({
        host: process.env.POSTGRES_DOCKER_HOST,
        user: process.env.POSTGRES_USER,
        password: process.env.POSTGRES_PASSWORD,
        port: process.env.POSTGRES_DOCKER_PORT,
        database: process.env.POSTGRES_DB
    })
    static async initDatabase() {
        await this.pg.query(`CREATE DATABASE IF NOT EXISTS ${process.env.POSTGRES_DB}
    WITH
    OWNER = ${process.env.POSTGRES_USER}
    ENCODING = 'UTF8';`)
    }
}

module.exports = {
    PostgresService
}
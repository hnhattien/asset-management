source .env.dev
echo postgres://$POSTGRES_USER:$POSTGRES_PASSWORD@$POSTGRES_HOST:5500/$POSTGRES_DB
echo migrations
./migrate -path migrations -database "postgres://$POSTGRES_USER:$POSTGRES_PASSWORD@$POSTGRES_HOST:$POSTGRES_PORT/$POSTGRES_DB?sslmode=disable&search_path=public" up $1
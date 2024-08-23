import os

TOKEN = os.get_env('TELEGRAM_TOKEN')

DB_CONFIG = {
    'dbname': os.getenv('POSTGRES_DB'),
    'user': os.getenv('POSTGRES_USER'),
    'password': os.getenv('POSTGRES_PASSWORD'),
    'host': 'postgres',
    'port': 5432
}
docker-compose down --volumes
docker system prune --volumes -af
docker-compose up --build -d
docker-compose logs -f


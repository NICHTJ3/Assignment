echo "Waiting for REDIS..."

while ! nc -z redis 6379; do
  sleep 0.1
done

echo "REDIS started"
gunicorn3 --bind 0.0.0.0:5000 wsgi;

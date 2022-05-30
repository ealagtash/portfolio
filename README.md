## Portfolio of Ehsan Al-Agtash

To set up your local workspace:
1. check out this project
2. in the directory run, either:
    - `make`,
    - or the following commands:
       ``` shell
       rm -rf .venv
       pyenv install --skip-existing || true
       python3 -m venv .venv
       . .venv/bin/activate && pip install --upgrade pip
       cp .python-version .venv/.python-version
       ```
3. happy dev

-------------------------

## Or just run:

`docker compose up --build`

---
https://pentacent.medium.com/nginx-and-lets-encrypt-with-docker-in-less-than-5-minutes-b4b8a60d3a71
https://dzone.com/articles/nginx-and-https-with-lets-encrypt-certbot-and-cron
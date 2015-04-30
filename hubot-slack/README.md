Build Hubot Slack Images
========================
* `docker build -t hubot-slack .`
* `docker build -t hubot-redis ../redis`

Create Containers
=================
* `docker create --name hubot-redis --restart=always hubot-redis`
* `docker create --name hubot-slack --restart=always --link hubot-redis:redis -e HUBOT_SLACK_TOKEN=xxxx-1111-z1z1 -e REDIS_URL=redis://redis:6379 hubot-slack`

Start Hubot with Brain
======================
docker start hubot-redis hubot-slack

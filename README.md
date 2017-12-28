# ubuntucron-docker
Docker image to run cron inside the ubuntu docker container

## Add cron jobs
```bash
docker build -t "ubuntucron/cron" .
docker run -d -name cron -v /path/to/your/coronconfig/cron.conf:/crontab/cron.conf ubuntu/cron
#edit /path/to/your/cronconfig/cron.conf to editjob
docker restart cron 
```
## Tips 
You may found that time in container is not same with your timezone.
```bash
#use this command fix time zone problem
docker run --name <containername> -v /etc/localtime:/etc/localtime:ro ...

```


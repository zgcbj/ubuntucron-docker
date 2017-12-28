#!/bin/bash

/bin/bash -c "crontab /crontab/cron.conf"

exec cron -f

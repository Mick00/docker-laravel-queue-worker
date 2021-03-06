[supervisord]
nodaemon=true
user=root
logfile=/dev/stdout
logfile_maxbytes=0

[program:laravel-worker]
process_name=%(program_name)s_%(process_num)02d
command=php /var/www/artisan queue:work %%QUEUE_CONNECTION%% --queue=%%QUEUE_NAME%% --memory=%%MEMORY_LIMIT%%
autostart=true
autorestart=true
numprocs=1
startretries=10
stdout_events_enabled=1
redirect_stderr=true
stdout_logfile=/var/www/storage/logs/worker.log
user=worker
[supervisord]
nodaemon=true

[program:laravel-horizon]
process_name=%(program_name)s_%(process_num)02d
command=php /var/www/app/artisan horizon
autostart=true
autorestart=true
stdout_events_enabled=1

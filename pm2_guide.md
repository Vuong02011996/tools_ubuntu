Inference in [here](https://pm2.io/blog/2018/09/19/Manage-Python-Processes)
# Config
Create file:
apps:
  - script : ./server.py
    name   : 'clover_dev_5555'
    interpreter: /mnt/storage/anaconda3/envs/flask-app/bin/python
    args: ".env_test"

  - script : ./server.py
    name   : 'clover_dev_11033'
    interpreter: /mnt/storage/anaconda3/envs/flask-app/bin/python
    args: ".env_demo"

  - script : ./server.py
    name   : 'clover_dev_5556'
    interpreter: /mnt/storage/anaconda3/envs/flask-app/bin/python
    args: ".env_staging"
    
pm2 restart ecosystem.test.config.yaml

certbot --nginx -d konga.core.greenlabs.ai -d www.konga.core.greenlabs.ai


# Command
```
pm2 resurrect
pm2 status
pm2 restart 0
pm2 stop 0```
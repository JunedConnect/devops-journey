#!/bin/bash

BS1IP=172.31.16.102

BS2IP=172.31.22.93


while true
do


    ping -w 1 $BS1IP
    BS1StatusCode=$(echo $?)

    ping -w 1 $BS2IP
    BS2StatusCode=$(echo $?)

    if (($BS1StatusCode == 0)); then
        BS1ServerStatus=$(echo "🔋 Backend Server 1 is online and healthy")
    else
        BS1ServerStatus=$(echo " 🪫 Backend Server 1 is offline")
    fi

    if (($BS2StatusCode == 0)); then
        BS2ServerStatus=$(echo "🔋 Backend Server 2 is online and healthy")
    else
        BS2ServerStatus=$(echo " 🪫 Backend Server 2 is offline")
    fi

    echo $BS1ServerStatus
    echo $BS2ServerStatus

cat << EOF > /usr/share/nginx/html/index.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Backend Server Status</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            width: 70%;
            max-width: 800px;
            text-align: center;
        }
        h1 {
            font-size: 36px;
            margin-bottom: 20px;
            color: #333;
        }
        .status {
            font-size: 20px;
            margin: 20px 0;
            padding: 15px;
            border-radius: 5px;
            text-align: left;
            background-color: #f9f9f9;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        .online {
            color: #4CAF50;
            border: 2px solid #4CAF50;
            background-color: #e7f9e7;
        }
        .offline {
            color: #f44336;
            border: 2px solid #f44336;
            background-color: #f9e7e7;
        }
        .footer {
            margin-top: 30px;
            font-size: 14px;
            color: #777;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Backend Server Status</h1>
        <div class="status $BS1ServerStatus">
            <h2>Server 1</h2>
            <p>Status: <strong>$BS1ServerStatus</strong></p>
        </div>
        <div class="status $BS2ServerStatus">
            <h2>Server 2</h2>
            <p>Status: <strong>$BS2ServerStatus</strong></p>
        </div>
    </div>
</body>
</html>
EOF


done
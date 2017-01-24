# jmeter_docker

Use JMeter with Docker

- Replace `Demo.jmx`
- Change the following about `Demo.jmx` file

```
COPY		Demo.jmx /opt/jmeter	
```
- build Docker file in root folder

```
docker build -t performanceDocker .
```
- run docker with performance testing

```
docker run --rm -v $(pwd):/root performanceDocker bin/jmeter -n -t Demo.jmx
```

- The log maybe like this:

```
Writing log file to: /opt/jmeter/jmeter.log
Creating summariser <summary>
Created the tree successfully using Demo.jmx
Starting the test @ Tue Jan 24 03:37:44 UTC 2017 (1485229064594)
Waiting for possible Shutdown/StopTestNow/Heapdump message on port 4445
summary +      1 in 00:00:20 =    0.0/s Avg: 20112 Min: 20112 Max: 20112 Err:     1 (100.00%) Active: 1 Started: 1 Finished: 0
summary =      1 in 00:00:20 =    0.0/s Avg: 20112 Min: 20112 Max: 20112 Err:     1 (100.00%)
Tidying up ...    @ Tue Jan 24 03:38:04 UTC 2017 (1485229084963)
... end of run
```
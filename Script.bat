@echo off

java -jar jars/batchStock.jar

timeout /t 5

java -jar jars/batchTerminal.jar

timeout /t 5

java -jar jars/batchTarifa.jar

timeout /t 5

start java -jar jars/batchMicroCatalogo.jar

timeout /t 30

start java -jar jars/batchMicroTarifa.jar
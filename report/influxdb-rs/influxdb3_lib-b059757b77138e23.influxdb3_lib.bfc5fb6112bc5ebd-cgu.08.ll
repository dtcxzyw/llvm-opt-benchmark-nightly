Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_lib-b059757b77138e23.influxdb3_lib.bfc5fb6112bc5ebd-cgu.08?download=true
inline.NumInlined: 6681
inline.NumDeleted: 2341
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0
@1396 = private unnamed_addr constant [8 x i8] c"tls-cert", align 1
@1397 = private unnamed_addr constant [18 x i8] c"INFLUXDB3_TLS_CERT", align 1
@1398 = private unnamed_addr constant [19 x i8] c"TLS_MINIMUM_VERSION", align 1
@1399 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsc_NtNtCsbyItyepKEh3_12clap_builder7builder12value_parserFG_RL0_eEINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtNtCsgsNUVCRJO2f_13influxdb3_lib8commands5serve17TlsMinimumVersionNtNtCscdodAO9FK5_5alloc6string6StringENtB5_14AnyValueParser9parse_refB1O_, ptr @_RNvXsc_NtNtCsbyItyepKEh3_12clap_builder7builder12value_parserFG_RL0_eEINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtNtCsgsNUVCRJO2f_13influxdb3_lib8commands5serve17TlsMinimumVersionNtNtCscdodAO9FK5_5alloc6string6StringENtB5_14AnyValueParser10parse_ref_B1O_, ptr @_RNvXsc_NtNtCsbyItyepKEh3_12clap_builder7builder12value_parserFG_RL0_eEINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtNtCsgsNUVCRJO2f_13influxdb3_lib8commands5serve17TlsMinimumVersionNtNtCscdodAO9FK5_5alloc6string6StringENtB5_14AnyValueParser7type_idB1O_, ptr @_RNvXsc_NtNtCsbyItyepKEh3_12clap_builder7builder12value_parserFG_RL0_eEINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtNtCsgsNUVCRJO2f_13influxdb3_lib8commands5serve17TlsMinimumVersionNtNtCscdodAO9FK5_5alloc6string6StringENtB5_14AnyValueParser15possible_valuesB1O_, ptr @_RNvXsc_NtNtCsbyItyepKEh3_12clap_builder7builder12value_parserFG_RL0_eEINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtNtCsgsNUVCRJO2f_13influxdb3_lib8commands5serve17TlsMinimumVersionNtNtCscdodAO9FK5_5alloc6string6StringENtB5_14AnyValueParser9clone_anyB1O_ }>, align 8
@1400 = private unnamed_addr constant [59 x i8] c"Lowest TLS protocol version the server accepts from clients", align 1
@1401 = private unnamed_addr constant [19 x i8] c"tls-minimum-version", align 1
@1402 = private unnamed_addr constant [29 x i8] c"INFLUXDB3_TLS_MINIMUM_VERSION", align 1
@1403 = private unnamed_addr constant [22 x i8] c"TCP_LISTENER_FILE_PATH", align 1
@1404 = private unnamed_addr constant [75 x i8] c"Provide a file path to write the address that the server is listening on to", align 1
@1405 = private unnamed_addr constant [152 x i8] c"Provide a file path to write the address that the server is listening on to.\0A\0AThis is mainly intended for testing purposes and is not considered stable.", align 1
@1406 = private unnamed_addr constant [22 x i8] c"tcp-listener-file-path", align 1
@1407 = private unnamed_addr constant [32 x i8] c"INFLUXDB3_TCP_LISTENER_FILE_PATH", align 1
@1408 = private unnamed_addr constant [43 x i8] c"ADMIN_TOKEN_RECOVERY_TCP_LISTENER_FILE_PATH", align 1
@1409 = private unnamed_addr constant [96 x i8] c"Provide a file path to write the address that the admin token recovery server is listening on to", align 1
@1410 = private unnamed_addr constant [173 x i8] c"Provide a file path to write the address that the admin token recovery server is listening on to.\0A\0AThis is mainly intended for testing purposes and is not considered stable.", align 1
@1411 = private unnamed_addr constant [43 x i8] c"admin-token-recovery-tcp-listener-file-path", align 1
@1412 = private unnamed_addr constant [53 x i8] c"INFLUXDB3_ADMIN_TOKEN_RECOVERY_TCP_LISTENER_FILE_PATH", align 1
@1413 = private unnamed_addr constant [16 x i8] c"ADMIN_TOKEN_FILE", align 1
@1414 = private unnamed_addr constant [78 x i8] c"File path containing offline admin token (JSON format with token and metadata)", align 1
@1415 = private unnamed_addr constant [16 x i8] c"admin-token-file", align 1
@1416 = private unnamed_addr constant [26 x i8] c"INFLUXDB3_ADMIN_TOKEN_FILE", align 1
@1417 = private unnamed_addr constant [28 x i8] c"WAL_REPLAY_CONCURRENCY_LIMIT", align 1
@1418 = private unnamed_addr constant [46 x i8] c"Concurrency limit during WAL replay at startup", align 1
@1419 = private unnamed_addr constant [118 x i8] c"Concurrency limit during WAL replay at startup.\0A\0AHigher values shorten startup; setting this too high can lead to OOM.", align 1
@1420 = private unnamed_addr constant [28 x i8] c"wal-replay-concurrency-limit", align 1
@1421 = private unnamed_addr constant [38 x i8] c"INFLUXDB3_WAL_REPLAY_CONCURRENCY_LIMIT", align 1
@1422 = private unnamed_addr constant [34 x i8] c"PARQUET_SNAPSHOT_CONCURRENCY_LIMIT", align 1
@1423 = private unnamed_addr constant [94 x i8] c"Maximum number of concurrent snapshot persistence tasks. Setting this too high can lead to OOM", align 1
@1424 = private unnamed_addr constant [26 x i8] c"snapshot-concurrency-limit", align 1
@1425 = private unnamed_addr constant [36 x i8] c"INFLUXDB3_SNAPSHOT_CONCURRENCY_LIMIT", align 1
@1426 = private unnamed_addr constant [28 x i8] c"HARD_DELETE_DEFAULT_DURATION", align 1
@1427 = private unnamed_addr constant [176 x i8] c"Deprecated: never had any effect; the server always uses the built-in default hard-delete duration. Accepted so 3.10 configurations that set it warn instead of failing to parse", align 1
@1428 = private unnamed_addr constant [28 x i8] c"hard-delete-default-duration", align 1
@1429 = private unnamed_addr constant [38 x i8] c"INFLUXDB3_HARD_DELETE_DEFAULT_DURATION", align 1
@1430 = private unnamed_addr constant [19 x i8] c"DELETE_GRACE_PERIOD", align 1
@1431 = private unnamed_addr constant [103 x i8] c"Grace period for hard deleted databases and tables before they are removed permanently from the catalog", align 1
@1432 = private unnamed_addr constant [19 x i8] c"delete-grace-period", align 1
@1433 = private unnamed_addr constant [29 x i8] c"INFLUXDB3_DELETE_GRACE_PERIOD", align 1
@1434 = private unnamed_addr constant [3 x i8] c"24h", align 1
@1435 = private unnamed_addr constant [10 x i8] c"CLUSTER_ID", align 1
@1436 = private unnamed_addr constant [335 x i8] c"The cluster-id is an enterprise config option to identify nodes belonging to the same cluster. Core OSS is single node only. We've seen folks install Core OSS thinking they installed Enterprise. They use --cluster-id and get the error `unexpected argument` which is confusing. So we generate a custom error message if they use this arg", align 1
@1437 = private unnamed_addr constant [10 x i8] c"cluster-id", align 1
@1438 = private unnamed_addr constant [143 x i8] c"Try to keep all the memory size in MB instead of raw bytes, also allow them to be configured as a percentage of total memory using MemorySizeMb", align 1
@1439 = private unnamed_addr constant [13 x i8] c"output_format", align 1
@1440 = private unnamed_addr constant [63 x i8] c"the following required argument was not provided: output_format", align 1
@1441 = private unnamed_addr constant [7 x i8] c"ca_cert", align 1
@1442 = private unnamed_addr constant [13 x i8] c"tls_no_verify", align 1
@1443 = private unnamed_addr constant [63 x i8] c"the following required argument was not provided: tls_no_verify", align 1
@1444 = private unnamed_addr constant [15 x i8] c"TableListConfig", align 1
@1445 = private unnamed_addr constant [13 x i8] c"OUTPUT_FORMAT", align 1
@1446 = private unnamed_addr constant [39 x i8] c"The format in which to output the query", align 1
@1447 = private unnamed_addr constant [6 x i8] c"format", align 1
@1448 = private unnamed_addr constant [6 x i8] c"pretty", align 1
@1449 = private unnamed_addr constant [7 x i8] c"CA_CERT", align 1
@1450 = private unnamed_addr constant [77 x i8] c"An optional arg to use a custom CA, useful for testing with self-signed certs", align 1
@1451 = private unnamed_addr constant [6 x i8] c"tls-ca", align 1
@1452 = private unnamed_addr constant [16 x i8] c"INFLUXDB3_TLS_CA", align 1
@1453 = private unnamed_addr constant [13 x i8] c"TLS_NO_VERIFY", align 1
@1454 = private unnamed_addr constant [36 x i8] c"Disable TLS certificate verification", align 1
@1455 = private unnamed_addr constant [13 x i8] c"tls-no-verify", align 1
@1456 = private unnamed_addr constant [23 x i8] c"INFLUXDB3_TLS_NO_VERIFY", align 1
@1457 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCsgsNUVCRJO2f_13influxdb3_lib8commands4show6system13ShowTablesRowENtB6_5Debug3fmtB1a_ }>, align 8
@1458 = private unnamed_addr constant [19 x i8] c"SystemTableNotFound", align 1
@1459 = private unnamed_addr constant [13 x i8] c"system_tables", align 1
@1460 = private unnamed_addr constant [39 x i8] c"ParseError :: CreatingDatabaseDirectory", align 1
@1461 = private unnamed_addr constant [35 x i8] c"ParseError :: CreateLocalFileSystem", align 1
@1462 = private unnamed_addr constant [38 x i8] c"ParseError :: MissingObjectStoreConfig", align 1
@1463 = private unnamed_addr constant [29 x i8] c"ParseError :: InvalidS3Config", align 1
@1464 = private unnamed_addr constant [30 x i8] c"ParseError :: InvalidGCSConfig", align 1
@1465 = private unnamed_addr constant [32 x i8] c"ParseError :: InvalidAzureConfig", align 1
@1466 = private unnamed_addr constant [47 x i8] c"ParseError :: ReadingAwsFileCredentialsToString", align 1
@1467 = private unnamed_addr constant [45 x i8] c"ParseError :: DeserializingAwsFileCredentials", align 1
@1468 = private unnamed_addr constant [38 x i8] c"ParseError :: ReadingCaCertificateFile", align 1
@1469 = private unnamed_addr constant [34 x i8] c"ParseError :: ParsingCaCertificate", align 1
@1470 = private unnamed_addr constant [12 x i8] c"from_env_var", align 1
@1471 = private unnamed_addr constant [6 x i8] c"NodeId", align 1
@1472 = private unnamed_addr constant [6 x i8] c"PREFIX", align 1
@1473 = private unnamed_addr constant [192 x i8] c"The node identifier used as a prefix in all object store file paths. This should be unique for any InfluxDB 3 Core servers that share the same object store configuration, i.e., the same bucket", align 1
@1474 = private unnamed_addr constant [7 x i8] c"node-id", align 1
@1475 = private unnamed_addr constant [7 x i8] c"host-id", align 1
@1476 = private unnamed_addr constant [17 x i8] c"INFLUXDB3_NODE_ID", align 1
@1477 = private unnamed_addr constant [12 x i8] c"FROM_ENV_VAR", align 1
@1478 = private unnamed_addr constant [230 x i8] c"Alternative to node-id which allows the node identifier to be derived from the specified environment variable. This allows the node identifier to be dynamically detected at runtime in environments like Docker Compose or Kubernetes", align 1
@1479 = private unnamed_addr constant [16 x i8] c"node-id-from-env", align 1
@1480 = private unnamed_addr constant [26 x i8] c"INFLUXDB3_NODE_ID_FROM_ENV", align 1
@1481 = private unnamed_addr constant [12 x i8] c"system_table", align 1
@1482 = private unnamed_addr constant [62 x i8] c"the following required argument was not provided: system_table", align 1
@1483 = private unnamed_addr constant [55 x i8] c"the following required argument was not provided: limit", align 1
@1484 = private unnamed_addr constant [8 x i8] c"order_by", align 1
@1485 = private unnamed_addr constant [6 x i8] c"select", align 1
@1486 = private unnamed_addr constant [11 x i8] c"TableConfig", align 1
@1487 = private unnamed_addr constant [12 x i8] c"SYSTEM_TABLE", align 1
@1488 = private unnamed_addr constant [25 x i8] c"The system table to query", align 1
@1489 = private unnamed_addr constant [5 x i8] c"LIMIT", align 1
@1490 = private unnamed_addr constant [117 x i8] c"The maximum number of table entries to display in the output. Default is 100 and 0 can be passed to indicate no limit", align 1
@1491 = private unnamed_addr constant [8 x i8] c"ORDER_BY", align 1
@1492 = private unnamed_addr constant [29 x i8] c"Order by the specified fields", align 1
@1493 = private unnamed_addr constant [8 x i8] c"order-by", align 1
@1494 = private unnamed_addr constant [6 x i8] c"SELECT", align 1
@1495 = private unnamed_addr constant [34 x i8] c"Select specified fields from table", align 1
@1496 = private unnamed_addr constant [13 x i8] c"SummaryConfig", align 1
@1497 = private unnamed_addr constant [126 x i8] c"The maximum number of entries from each table to display in the output. Default is 10 and 0 can be passed to indicate no limit", align 1
@1498 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @51, [16 x i8] c"w\00\00\00\00\00\00\00k\04\00\00$\00\00\00" }>, align 8
@1499 = private unnamed_addr constant [5 x i8] c"\1B[31m", align 1
@1500 = private unnamed_addr constant [5 x i8] c"\1B[39m", align 1
@1501 = private unnamed_addr constant [28 x i8] c"PythonEnvironmentMetricsImpl", align 1
@1502 = private unnamed_addr constant [22 x i8] c"has_python_environment", align 1
@1503 = private unnamed_addr constant [4 x i8] c"\1B[4m", align 1
@1504 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@1505 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -7370404323978612010 to ptr), ptr inttoptr (i64 -690662277979501555 to ptr) }>, align 8
@1506 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 1009682925765619560 to ptr), ptr inttoptr (i64 8709113157501641700 to ptr) }>, align 8
@1507 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 8444971782774098754 to ptr), ptr inttoptr (i64 -4379977221763595977 to ptr) }>, align 8
@1508 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 643755028142497746 to ptr), ptr inttoptr (i64 7099619958098055323 to ptr) }>, align 8
@1509 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 3514341241144962054 to ptr), ptr inttoptr (i64 3781240125164063856 to ptr) }>, align 8
@1510 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 2320855602834966386 to ptr), ptr inttoptr (i64 -3537253101590959938 to ptr) }>, align 8
@1511 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -1727666092023348359 to ptr), ptr inttoptr (i64 1656143016589042219 to ptr) }>, align 8
@1512 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -4595636110221030538 to ptr), ptr inttoptr (i64 2790923651394935433 to ptr) }>, align 8
@1513 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -4158280875573024388 to ptr), ptr inttoptr (i64 -8041457994875579425 to ptr) }>, align 8
@1514 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -7576425159912132170 to ptr), ptr inttoptr (i64 19745073314560191 to ptr) }>, align 8
@1515 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 3521741420838229517 to ptr), ptr inttoptr (i64 -2397771688522890904 to ptr) }>, align 8
@1516 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 3112902957280558448 to ptr), ptr inttoptr (i64 2357408483126345115 to ptr) }>, align 8
@1517 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 4534702699267576973 to ptr), ptr inttoptr (i64 -2540269039281644587 to ptr) }>, align 8
@1518 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 4811965172987722965 to ptr), ptr inttoptr (i64 -6177383971814447896 to ptr) }>, align 8
@1519 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 7289502299721994051 to ptr), ptr inttoptr (i64 99074384467558581 to ptr) }>, align 8
@1520 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -2183691439106926549 to ptr), ptr inttoptr (i64 6086662085689959637 to ptr) }>, align 8
@1521 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 6033965026317112031 to ptr), ptr inttoptr (i64 8246545143450564598 to ptr) }>, align 8
@1522 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 2226241016354847951 to ptr), ptr inttoptr (i64 3141863331777474449 to ptr) }>, align 8
@1523 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 8718224977778561452 to ptr), ptr inttoptr (i64 1265125432459200245 to ptr) }>, align 8
@1524 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -2991049763364114017 to ptr), ptr inttoptr (i64 3115551046287325098 to ptr) }>, align 8
@1525 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -6918424049008626793 to ptr), ptr inttoptr (i64 4951083738158833647 to ptr) }>, align 8
@1526 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 2223532294624914400 to ptr), ptr inttoptr (i64 1390811024547670467 to ptr) }>, align 8
@1527 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 3088595876217051321 to ptr), ptr inttoptr (i64 -7837166771125636731 to ptr) }>, align 8
@1528 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -5686093895876453215 to ptr), ptr inttoptr (i64 -3831032326957292088 to ptr) }>, align 8
@1529 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 8680460637581324099 to ptr), ptr inttoptr (i64 -7610649855377871620 to ptr) }>, align 8
@1530 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -4166089749784394755 to ptr), ptr inttoptr (i64 1463630824750685964 to ptr) }>, align 8
@1531 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -8275847733865250663 to ptr), ptr inttoptr (i64 2229023508148266087 to ptr) }>, align 8
@1532 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 7736696981806309933 to ptr), ptr inttoptr (i64 4871670718040957037 to ptr) }>, align 8
@1533 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -8258812536611094200 to ptr), ptr inttoptr (i64 -279198307899696793 to ptr) }>, align 8
@1534 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 7080536387315632578 to ptr), ptr inttoptr (i64 5296459061437125857 to ptr) }>, align 8
@1535 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -2236892227862618217 to ptr), ptr inttoptr (i64 -1826079698350918737 to ptr) }>, align 8
@1536 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 7273166576870894975 to ptr), ptr inttoptr (i64 8725332763616569551 to ptr) }>, align 8
@1537 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 3577190437077868673 to ptr), ptr inttoptr (i64 6557423342871457822 to ptr) }>, align 8
@1538 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -2469464724414060682 to ptr), ptr inttoptr (i64 -402711423528045109 to ptr) }>, align 8
@1539 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 4262278487820037578 to ptr), ptr inttoptr (i64 7306954111906887224 to ptr) }>, align 8
@1540 = private unnamed_addr constant [45 x i8] c"prof:true,prof_active:true,lg_prof_sample:20\00", align 1
@switch.table._RNvXs1d_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB6_15ObjectStoreTypeNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt = private unnamed_addr constant [6 x i8] c"\06\0F\04\02\06\05", align 8
@switch.table._RNvXs1d_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB6_15ObjectStoreTypeNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.797 = private unnamed_addr constant [6 x ptr] [ptr @559, ptr @560, ptr @561, ptr @562, ptr @563, ptr @564], align 8
@switch.table._RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtCsjGL2vCcvtUM_6schema15InfluxFieldTypeNtB6_5Debug3fmtCsgsNUVCRJO2f_13influxdb3_lib = private unnamed_addr constant [5 x i8] c"\05\07\08\06\07", align 8
@switch.table._RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtCsjGL2vCcvtUM_6schema15InfluxFieldTypeNtB6_5Debug3fmtCsgsNUVCRJO2f_13influxdb3_lib.798 = private unnamed_addr constant [5 x ptr] [ptr @565, ptr @566, ptr @567, ptr @429, ptr @568], align 8
@switch.table._RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsIdnmPPg5ba_10data_types7columns10ColumnTypeNtB6_5Debug3fmtCsgsNUVCRJO2f_13influxdb3_lib = private unnamed_addr constant [7 x i8] c"\03\03\03\04\06\04\03", align 8
@switch.table._RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsIdnmPPg5ba_10data_types7columns10ColumnTypeNtB6_5Debug3fmtCsgsNUVCRJO2f_13influxdb3_lib.799 = private unnamed_addr constant [7 x ptr] [ptr @425, ptr @426, ptr @427, ptr @428, ptr @429, ptr @430, ptr @431], align 8
@switch.table._RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs844E4pPEVZX_17influxdb3_catalog5error10enterprise8NodeModeNtB6_5Debug3fmtCsgsNUVCRJO2f_13influxdb3_lib = private unnamed_addr constant [6 x i8] c"\04\05\06\07\07\03", align 8
@switch.table._RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs844E4pPEVZX_17influxdb3_catalog5error10enterprise8NodeModeNtB6_5Debug3fmtCsgsNUVCRJO2f_13influxdb3_lib.800 = private unnamed_addr constant [6 x ptr] [ptr @416, ptr @417, ptr @418, ptr @419, ptr @420, ptr @421], align 8
@switch.table._RNvXs5_NtNtCsi8UQarL1hXO_2h25codec5errorNtB5_9UserErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt = private unnamed_addr constant [13 x i8] c"\10\13\0D\08\15\12\10\1C\1A\14\18\16\1E", align 8
@switch.table._RNvXs5_NtNtCsi8UQarL1hXO_2h25codec5errorNtB5_9UserErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.801 = private unnamed_addr constant [13 x ptr] [ptr @664, ptr @665, ptr @666, ptr @667, ptr @668, ptr @669, ptr @670, ptr @671, ptr @672, ptr @673, ptr @674, ptr @675, ptr @676], align 8
@switch.table._RNvXsg_NtCsj7DbYNsdxOJ_3url6parserNtB5_10ParseErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt = private unnamed_addr constant [10 x i8] c"\09\09\0B\12\12\16\16 \19\08", align 8
@switch.table._RNvXsg_NtCsj7DbYNsdxOJ_3url6parserNtB5_10ParseErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.802 = private unnamed_addr constant [10 x ptr] [ptr @1091, ptr @1092, ptr @1093, ptr @1094, ptr @1095, ptr @1096, ptr @1097, ptr @1098, ptr @1099, ptr @1100], align 8
@switch.table._RNvXsl_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB5_10ParseErrorNtNtCs4NRVxsYgnAr_4core5error5Error11description = private unnamed_addr constant [10 x i8] c"'#&\1D\1E /-&\22", align 8
@switch.table._RNvXsl_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB5_10ParseErrorNtNtCs4NRVxsYgnAr_4core5error5Error11description.803 = private unnamed_addr constant [10 x ptr] [ptr @1460, ptr @1461, ptr @1462, ptr @1463, ptr @1464, ptr @1465, ptr @1466, ptr @1467, ptr @1468, ptr @1469], align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCs1LivM9IBWqb_12object_store4pathNtB3_4Path5parseRNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [104 x i8], align 8               ; 13 uses
  %i.f = alloca [48 x i8], align 8                ; 17 uses
  %i.g = alloca [24 x i8], align 8                ; 18 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.h, align 8, !nonnull !17, !noundef !17 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i = load i64, ptr %i.i, align 8, !noundef !17 ; 12 uses
  %i.j = tail call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 1) ; 2 uses
  %i.k = sext i1 %i.j to i64
  %.sroa.7.0 = add i64 %.val1.i, %i.k             ; 3 uses
  %.sroa.0.0.idx = zext i1 %i.j to i64
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.0.idx ; 3 uses
  %i.l = icmp eq i64 %.sroa.7.0, 0
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.m, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.537.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bj

bb.c:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.7.0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 1)
  %i.o = sext i1 %i.n to i64
  %.sroa.7.1 = add i64 %.sroa.7.0, %i.o           ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMsu_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.7.1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 1)
  %.sroa.038.sroa.0.0.copyload = load i64, ptr %i.e, align 8
  %.sroa.038.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.038.sroa.4.0.copyload = load i64, ptr %.sroa.038.sroa.4.0..sroa_idx, align 8 ; 29 uses
  %.sroa.038.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.038.sroa.6.0.copyload = load i64, ptr %.sroa.038.sroa.6.0..sroa_idx, align 8 ; 6 uses
  %.sroa.038.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.038.sroa.7.0.copyload = load i64, ptr %.sroa.038.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %.sroa.038.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.038.sroa.8.0.copyload = load i64, ptr %.sroa.038.sroa.8.0..sroa_idx, align 8
  %.sroa.038.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.sroa.038.sroa.10.0.copyload = load i64, ptr %.sroa.038.sroa.10.0..sroa_idx, align 8
  %.sroa.038.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %.sroa.038.sroa.12.0.copyload = load ptr, ptr %.sroa.038.sroa.12.0..sroa_idx, align 8, !nonnull !17, !noundef !17 ; 18 uses
  %.sroa.038.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %.sroa.038.sroa.13.0.copyload = load i64, ptr %.sroa.038.sroa.13.0..sroa_idx, align 8 ; 57 uses
  %.sroa.038.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %.sroa.038.sroa.14.0.copyload = load ptr, ptr %.sroa.038.sroa.14.0..sroa_idx, align 8 ; 5 uses
  %.sroa.038.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %.sroa.038.sroa.15.0.copyload = load i64, ptr %.sroa.038.sroa.15.0..sroa_idx, align 8 ; 14 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.p = trunc nuw i64 %.sroa.038.sroa.0.0.copyload to i1
  %i.q = add nsw i64 %.sroa.038.sroa.15.0.copyload, -1 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %.sroa.4137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %.sroa.4149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  br i1 %i.p, label %.split.us, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.c
  %i.s = and i64 %.sroa.038.sroa.6.0.copyload, 65536
  %.sroa.999.sroa.10116.0.extract.trunc.not = icmp eq i64 %i.s, 0
  %.sroa.999.sroa.0.0.extract.trunc = trunc i64 %.sroa.038.sroa.6.0.copyload to i1
  br i1 %.sroa.999.sroa.10116.0.extract.trunc.not, label %.lr.ph.i.i.peel, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.peel

.lr.ph.i.i.peel:                                  ; preds = %.preheader.i.i.preheader
  %i.t = trunc i64 %.sroa.038.sroa.6.0.copyload to i1 ; 2 uses
  %i.u = icmp eq i64 %.sroa.038.sroa.4.0.copyload, 0
  br i1 %i.u, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.peel
  %.not.i.i.i.peel.i.peel = icmp ult i64 %.sroa.038.sroa.4.0.copyload, %.sroa.038.sroa.13.0.copyload
  br i1 %.not.i.i.i.peel.i.peel, label %bb.e, label %.split.i.i.i.peel.i.peel

.split.i.i.i.peel.i.peel:                         ; preds = %bb.d
  %i.v = icmp eq i64 %.sroa.038.sroa.4.0.copyload, %.sroa.038.sroa.13.0.copyload
  br i1 %i.v, label %bb.f, label %.loopexit.i

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %.sroa.038.sroa.4.0.copyload
  %i.x = load i8, ptr %i.w, align 1, !alias.scope !131, !noalias !132, !noundef !17
  %i.y = icmp sgt i8 %i.x, -65
  br i1 %i.y, label %bb.f, label %.loopexit.i

bb.f:                                             ; preds = %bb.e, %.split.i.i.i.peel.i.peel, %.lr.ph.i.i.peel
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %.sroa.038.sroa.4.0.copyload ; 4 uses
  %i.aa = icmp samesign eq i64 %.sroa.038.sroa.4.0.copyload, %.sroa.038.sroa.13.0.copyload
  br i1 %i.aa, label %.loopexit19.i.peel, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = load i8, ptr %i.z, align 1, !noalias !133, !noundef !17 ; 5 uses
  %i.ac = icmp sgt i8 %i.ab, -1
  br i1 %i.ac, label %bb.h, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit12.i.i.i.peel.i.peel

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit12.i.i.i.peel.i.peel: ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ae = and i8 %i.ab, 31
  %i.af = zext nneg i8 %i.ae to i32               ; 3 uses
  %i.ag = add nuw nsw i64 %.sroa.038.sroa.4.0.copyload, 1
  %i.ah = icmp samesign ne i64 %i.ag, %.sroa.038.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = load i8, ptr %i.ad, align 1, !noalias !133, !noundef !17
  %i.aj = shl nuw nsw i32 %i.af, 6
  %i.ak = and i8 %i.ai, 63
  %i.al = zext nneg i8 %i.ak to i32               ; 2 uses
  %i.am = or disjoint i32 %i.aj, %i.al
  %i.an = icmp samesign ugt i8 %i.ab, -33
  br i1 %i.an, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit14.i.i.i.peel.i.peel, label %bb.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit14.i.i.i.peel.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit12.i.i.i.peel.i.peel
  %i.ao = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %i.ap = add nuw nsw i64 %.sroa.038.sroa.4.0.copyload, 2
  %i.aq = icmp samesign ne i64 %i.ap, %.sroa.038.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = load i8, ptr %i.ao, align 1, !noalias !133, !noundef !17
  %i.as = shl nuw nsw i32 %i.al, 6
  %i.at = and i8 %i.ar, 63
  %i.au = zext nneg i8 %i.at to i32
  %i.av = or disjoint i32 %i.as, %i.au            ; 2 uses
  %i.aw = shl nuw nsw i32 %i.af, 12
  %i.ax = or disjoint i32 %i.av, %i.aw
  %i.ay = icmp samesign ugt i8 %i.ab, -17
  br i1 %i.ay, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit16.i.i.i.peel.i.peel, label %bb.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit16.i.i.i.peel.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit14.i.i.i.peel.i.peel
  %i.az = getelementptr inbounds nuw i8, ptr %i.z, i64 3
  %i.ba = add nuw nsw i64 %.sroa.038.sroa.4.0.copyload, 3
  %i.bb = icmp samesign ne i64 %i.ba, %.sroa.038.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = load i8, ptr %i.az, align 1, !noalias !133, !noundef !17
  %i.bd = shl nuw nsw i32 %i.af, 18
  %i.be = and i32 %i.bd, 1835008
  %i.bf = shl nuw nsw i32 %i.av, 6
  %i.bg = and i8 %i.bc, 63
  %i.bh = zext nneg i8 %i.bg to i32
  %i.bi = or disjoint i32 %i.bf, %i.bh
  %i.bj = or disjoint i32 %i.bi, %i.be
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bk = zext nneg i8 %i.ab to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit16.i.i.i.peel.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit14.i.i.i.peel.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit12.i.i.i.peel.i.peel
  %.sroa.4.0.i.ph.i.i.peel.i.peel = phi i32 [ %i.ax, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit14.i.i.i.peel.i.peel ], [ %i.bj, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit16.i.i.i.peel.i.peel ], [ %i.am, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit12.i.i.i.peel.i.peel ], [ %i.bk, %bb.h ] ; 4 uses
  %i.bl = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.bl)
  br i1 %i.t, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.peel, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bm = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 128
  br i1 %i.bm, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bn = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 2048
  br i1 %i.bn, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bo = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 65536
  %..i.i.peel.i.peel = select i1 %i.bo, i64 3, i64 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.sroa.01.0.i.i.peel.i.peel = phi i64 [ 2, %bb.k ], [ %..i.i.peel.i.peel, %bb.l ], [ 1, %bb.j ]
  %i.bp = add i64 %.sroa.01.0.i.i.peel.i.peel, %.sroa.038.sroa.4.0.copyload ; 23 uses
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not.i.i.i.i.peel = icmp ult i64 %i.bp, %.sroa.038.sroa.13.0.copyload
  br i1 %.not.i.i.i.i.peel, label %bb.o, label %.split.i.i.i.i.peel

.split.i.i.i.i.peel:                              ; preds = %bb.n
  %i.br = icmp eq i64 %i.bp, %.sroa.038.sroa.13.0.copyload
  br i1 %i.br, label %bb.p, label %.loopexit.i

bb.o:                                             ; preds = %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %i.bp
  %i.bt = load i8, ptr %i.bs, align 1, !alias.scope !131, !noalias !134, !noundef !17
  %i.bu = icmp sgt i8 %i.bt, -65
  br i1 %i.bu, label %bb.p, label %.loopexit.i

bb.p:                                             ; preds = %bb.o, %.split.i.i.i.i.peel, %bb.m
  %i.bv = icmp samesign eq i64 %i.bp, %.sroa.038.sroa.13.0.copyload
  br i1 %i.bv, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.peel, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %i.bp
  %i.bx = load i8, ptr %i.bw, align 1, !noalias !135, !noundef !17 ; 3 uses
  %i.by = icmp sgt i8 %i.bx, -1
  br i1 %i.by, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.peel, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit12.i.i.i.i.peel

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit12.i.i.i.i.peel: ; preds = %bb.q
  %i.bz = add nuw nsw i64 %i.bp, 1
  %i.ca = icmp samesign ne i64 %i.bz, %.sroa.038.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = icmp samesign ugt i8 %i.bx, -33
  br i1 %i.cb, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit14.i.i.i.i.peel, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.peel

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit14.i.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit12.i.i.i.i.peel
  %i.cc = add nuw nsw i64 %i.bp, 2
  %i.cd = icmp samesign ne i64 %i.cc, %.sroa.038.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.cd)
  %i.ce = icmp samesign ugt i8 %i.bx, -17
  br i1 %i.ce, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit16.i.i.i.i.peel, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.peel

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit16.i.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit14.i.i.i.i.peel
  %i.cf = add nuw nsw i64 %i.bp, 3
  %i.cg = icmp samesign ne i64 %i.cf, %.sroa.038.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.cg)
  br label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.peel

.loopexit19.i.peel:                               ; preds = %bb.f
  br i1 %i.t, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.peel, label %bb.r

bb.r:                                             ; preds = %.loopexit19.i.peel
  br label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.peel

_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.peel: ; preds = %bb.r, %.loopexit19.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit16.i.i.i.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit14.i.i.i.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit12.i.i.i.i.peel, %bb.q, %bb.p, %bb.i, %.preheader.i.i.preheader
  %.sroa.999.sroa.0.4.peel = phi i1 [ true, %bb.r ], [ false, %.loopexit19.i.peel ], [ false, %bb.i ], [ false, %bb.p ], [ %.sroa.999.sroa.0.0.extract.trunc, %.preheader.i.i.preheader ], [ false, %bb.q ], [ false, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit16.i.i.i.i.peel ], [ false, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit14.i.i.i.i.peel ], [ false, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit12.i.i.i.i.peel ]
  %.sroa.51.2.peel = phi i1 [ true, %bb.r ], [ false, %.loopexit19.i.peel ], [ false, %bb.i ], [ false, %bb.p ], [ true, %.preheader.i.i.preheader ], [ false, %bb.q ], [ false, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit16.i.i.i.i.peel ], [ false, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit14.i.i.i.i.peel ], [ false, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit12.i.i.i.i.peel ]
  %.sroa.41.2.peel = phi i64 [ 0, %bb.r ], [ %.sroa.038.sroa.13.0.copyload, %.loopexit19.i.peel ], [ %.sroa.038.sroa.4.0.copyload, %bb.i ], [ %.sroa.038.sroa.13.0.copyload, %bb.p ], [ 0, %.preheader.i.i.preheader ], [ %i.bp, %bb.q ], [ %i.bp, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit16.i.i.i.i.peel ], [ %i.bp, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit14.i.i.i.i.peel ], [ %i.bp, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit12.i.i.i.i.peel ]
  %.sroa.5.5.peel = phi i64 [ %.sroa.038.sroa.13.0.copyload, %bb.r ], [ %.sroa.038.sroa.13.0.copyload, %.loopexit19.i.peel ], [ %.sroa.038.sroa.4.0.copyload, %bb.i ], [ %.sroa.038.sroa.13.0.copyload, %bb.p ], [ %.sroa.038.sroa.4.0.copyload, %.preheader.i.i.preheader ], [ %i.bp, %bb.q ], [ %i.bp, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit16.i.i.i.i.peel ], [ %i.bp, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit14.i.i.i.i.peel ], [ %i.bp, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit12.i.i.i.i.peel ]
  %.sroa.7.1.pn.peel = phi i64 [ %.sroa.7.1, %bb.r ], [ %.sroa.038.sroa.13.0.copyload, %.loopexit19.i.peel ], [ %.sroa.038.sroa.4.0.copyload, %bb.i ], [ %.sroa.038.sroa.13.0.copyload, %bb.p ], [ %.sroa.7.1, %.preheader.i.i.preheader ], [ %i.bp, %bb.q ], [ %i.bp, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit16.i.i.i.i.peel ], [ %i.bp, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit14.i.i.i.i.peel ], [ %i.bp, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit12.i.i.i.i.peel ] ; 2 uses
  %i.ch = icmp eq i64 %.sroa.7.1.pn.peel, 0
  br i1 %i.ch, label %.split250.us, label %bb.s

bb.s:                                             ; preds = %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMNtNtCs1LivM9IBWqb_12object_store4path5partsNtB2_8PathPart5parse(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.038.sroa.12.0.copyload, i64 noundef %.sroa.7.1.pn.peel)
  %i.ci = load i64, ptr %i.f, align 8, !range !18, !noundef !17
  %.not77.peel = icmp eq i64 %i.ci, -1
  br i1 %.not77.peel, label %bb.t, label %.split252.us

bb.t:                                             ; preds = %bb.s
  %.sroa.0136.0.copyload.peel = load ptr, ptr %i.r, align 8 ; 2 uses
  %i.cj = load <2 x i64>, ptr %.sroa.4137.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store ptr %.sroa.0136.0.copyload.peel, ptr %i.g, align 8
  store <2 x i64> %i.cj, ptr %.sroa.4149.0..sroa_idx, align 8
  %i.ck = icmp eq ptr %.sroa.0136.0.copyload.peel, inttoptr (i64 -1 to ptr)
  br i1 %i.ck, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsgsNUVCRJO2f_13influxdb3_lib.exit.peel, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.peel unwind label %.split254.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.peel: ; preds = %bb.u
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsgsNUVCRJO2f_13influxdb3_lib.exit.peel

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsgsNUVCRJO2f_13influxdb3_lib.exit.peel: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.peel, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br i1 %.sroa.51.2.peel, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread, label %.preheader.i.i

.split.us:                                        ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.038.sroa.14.0.copyload) ]
  %i.cl = sub i64 %.sroa.038.sroa.15.0.copyload, %.sroa.038.sroa.6.0.copyload
  %umax49.i89.us = tail call i64 @llvm.umax.i64(i64 %.sroa.038.sroa.4.0.copyload, i64 range(i64 0, -9223372036854775808) %.sroa.038.sroa.15.0.copyload)
  %i.cm = add i64 %.sroa.038.sroa.4.0.copyload, -1 ; 2 uses
  %.first_iter = icmp ult i64 %i.cm, %.sroa.038.sroa.15.0.copyload
  %.first_iter.fr = freeze i1 %.first_iter
  %.not182.us = icmp eq i64 %.sroa.038.sroa.4.0.copyload, 0
  %invariant.op = sub i64 1, %.sroa.038.sroa.4.0.copyload
  %exitcond.not.i91.us376.not = icmp ult i64 %.sroa.038.sroa.4.0.copyload, %.sroa.038.sroa.15.0.copyload
  %invariant.op460 = sub i64 1, %.sroa.038.sroa.4.0.copyload
  %.not182.us379 = icmp eq i64 %.sroa.038.sroa.4.0.copyload, 0
  br label %bb.v

bb.v:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsgsNUVCRJO2f_13influxdb3_lib.exit.us, %.split.us
  %.sroa.19.0227.us = phi i64 [ %.sroa.038.sroa.8.0.copyload, %.split.us ], [ %.sroa.19.2.us, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsgsNUVCRJO2f_13influxdb3_lib.exit.us ] ; 3 uses
  %.sroa.31103.0226.us = phi i64 [ %.sroa.038.sroa.10.0.copyload, %.split.us ], [ %.sroa.31103.2.us, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsgsNUVCRJO2f_13influxdb3_lib.exit.us ] ; 3 uses
  %.sroa.41.0225.us = phi i64 [ 0, %.split.us ], [ %.sroa.41.2.us, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsgsNUVCRJO2f_13influxdb3_lib.exit.us ] ; 7 uses
  %i.cn = icmp eq i64 %.sroa.31103.0226.us, -1
  %i.co = add i64 %.sroa.19.0227.us, %i.q         ; 3 uses
  %i.cp = icmp ult i64 %i.co, %.sroa.038.sroa.13.0.copyload ; 2 uses
  br i1 %i.cn, label %bb.af, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !136)
  call void @llvm.experimental.noalias.scope.decl(metadata !137)
  br i1 %i.cp, label %.lr.ph.i.us, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.us

.lr.ph.i.us:                                      ; preds = %bb.w, %.sink.split.i81.us
  %i.cq = phi i64 [ %.sink.i.us, %.sink.split.i81.us ], [ %.sroa.31103.0226.us, %bb.w ] ; 3 uses
  %i.cr = phi i64 [ %i.du, %.sink.split.i81.us ], [ %i.co, %bb.w ]
  %i.cs = phi i64 [ %.ph71.i.us, %.sink.split.i81.us ], [ %.sroa.19.0227.us, %bb.w ] ; 8 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %i.cr
  %i.cu = load i8, ptr %i.ct, align 1, !alias.scope !136, !noundef !17
  %i.cv = and i8 %i.cu, 63
  %i.cw = zext nneg i8 %i.cv to i64
  %i.cx = shl nuw i64 1, %i.cw
  %i.cy = and i64 %i.cx, %.sroa.038.sroa.7.0.copyload
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %bb.ae, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.us
  %.sroa.0.0.i.i.us = call i64 @llvm.umax.i64(i64 %i.cq, i64 %.sroa.038.sroa.4.0.copyload) ; 4 uses
  %umax49.i.us = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.us, i64 range(i64 0, -9223372036854775808) %.sroa.038.sroa.15.0.copyload)
  %exitcond.not.i.us371.not = icmp ult i64 %.sroa.0.0.i.i.us, %.sroa.038.sroa.15.0.copyload
  br i1 %exitcond.not.i.us371.not, label %.lr.ph, label %.preheader183.us.preheader

bb.y:                                             ; preds = %bb.z
  %i.da = add nuw i64 %.sroa.02.0.i.us372, 1      ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.da, %umax49.i.us
  br i1 %exitcond.not.i.us, label %.preheader183.us.preheader, label %.lr.ph

.preheader183.us.preheader:                       ; preds = %bb.y, %bb.x
  %i.db = icmp ult i64 %i.cq, %.sroa.038.sroa.4.0.copyload
  br i1 %i.db, label %.lr.ph374, label %.preheader183.us.preheader._crit_edge

.lr.ph:                                           ; preds = %bb.x, %bb.y
  %.sroa.02.0.i.us372 = phi i64 [ %i.da, %bb.y ], [ %.sroa.0.0.i.i.us, %bb.x ] ; 4 uses
  %i.dc = add i64 %.sroa.02.0.i.us372, %i.cs      ; 2 uses
  %i.dd = icmp ult i64 %i.dc, %.sroa.038.sroa.13.0.copyload
  br i1 %i.dd, label %bb.z, label %.split231.us

bb.z:                                             ; preds = %.lr.ph
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.14.0.copyload, i64 %.sroa.02.0.i.us372
  %i.df = load i8, ptr %i.de, align 1, !alias.scope !137, !noundef !17
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %i.dc
  %i.dh = load i8, ptr %i.dg, align 1, !alias.scope !136, !noundef !17
  %.not21.i.us = icmp eq i8 %i.df, %i.dh
  br i1 %.not21.i.us, label %bb.y, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.reass.reass = add i64 %i.cs, %invariant.op
  %i.di = add i64 %.reass.reass, %.sroa.02.0.i.us372
  br label %.sink.split.i81.us

.preheader183.us:                                 ; preds = %bb.ac
  %i.dj = icmp ult i64 %i.cq, %i.dk
  br i1 %i.dj, label %.lr.ph374, label %.preheader183.us.preheader._crit_edge

.lr.ph374:                                        ; preds = %.preheader183.us.preheader, %.preheader183.us
  %.sroa.2.0.i.us373 = phi i64 [ %i.dk, %.preheader183.us ], [ %.sroa.038.sroa.4.0.copyload, %.preheader183.us.preheader ]
  %i.dk = add i64 %.sroa.2.0.i.us373, -1          ; 6 uses
  %i.dl = icmp ult i64 %i.dk, %.sroa.038.sroa.15.0.copyload
  br i1 %i.dl, label %bb.ab, label %.split234.us

bb.ab:                                            ; preds = %.lr.ph374
  %i.dm = add i64 %i.dk, %i.cs                    ; 3 uses
  %i.dn = icmp ult i64 %i.dm, %.sroa.038.sroa.13.0.copyload
  br i1 %i.dn, label %bb.ac, label %.split237.us

bb.ac:                                            ; preds = %bb.ab
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.14.0.copyload, i64 %i.dk
  %i.dp = load i8, ptr %i.do, align 1, !alias.scope !137, !noundef !17
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %i.dm
  %i.dr = load i8, ptr %i.dq, align 1, !alias.scope !136, !noundef !17
  %.not.i82.us = icmp eq i8 %i.dp, %i.dr
  br i1 %.not.i82.us, label %.preheader183.us, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ds = add i64 %i.cs, %.sroa.038.sroa.6.0.copyload
  br label %.sink.split.i81.us

bb.ae:                                            ; preds = %.lr.ph.i.us
  %i.dt = add i64 %i.cs, %.sroa.038.sroa.15.0.copyload
  br label %.sink.split.i81.us

.sink.split.i81.us:                               ; preds = %bb.ae, %bb.ad, %bb.aa
  %.sink.i.us = phi i64 [ %i.cl, %bb.ad ], [ 0, %bb.aa ], [ 0, %bb.ae ] ; 2 uses
  %.ph71.i.us = phi i64 [ %i.ds, %bb.ad ], [ %i.di, %bb.aa ], [ %i.dt, %bb.ae ] ; 2 uses
  %i.du = add i64 %.ph71.i.us, %i.q               ; 2 uses
  %i.dv = icmp ult i64 %i.du, %.sroa.038.sroa.13.0.copyload
  br i1 %i.dv, label %.lr.ph.i.us, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.us

.preheader183.us.preheader._crit_edge:            ; preds = %.preheader183.us.preheader, %.preheader183.us
  %i.dw = add i64 %i.cs, %.sroa.038.sroa.15.0.copyload ; 2 uses
  br label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.us

bb.af:                                            ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !138)
  call void @llvm.experimental.noalias.scope.decl(metadata !139)
  br i1 %i.cp, label %.lr.ph.i86.us, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.us

.lr.ph.i86.us:                                    ; preds = %bb.af, %bb.am
  %i.dx = phi i64 [ %i.ew, %bb.am ], [ %i.co, %bb.af ]
  %i.dy = phi i64 [ %i.ev, %bb.am ], [ %.sroa.19.0227.us, %bb.af ] ; 8 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %i.dx
  %i.ea = load i8, ptr %i.dz, align 1, !alias.scope !138, !noundef !17
  %i.eb = and i8 %i.ea, 63
  %i.ec = zext nneg i8 %i.eb to i64
  %i.ed = shl nuw i64 1, %i.ec
  %i.ee = and i64 %i.ed, %.sroa.038.sroa.7.0.copyload
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %bb.al, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph.i86.us
  br i1 %exitcond.not.i91.us376.not, label %bb.ai, label %.preheader.us.preheader

.preheader:                                       ; preds = %bb.aj
  %i.eg = add nuw i64 %.sroa.02.0.i90.us380, 1    ; 2 uses
  %exitcond.not.i91.us = icmp eq i64 %i.eg, %umax49.i89.us
  br i1 %exitcond.not.i91.us, label %.preheader.us.preheader, label %bb.ai

.preheader.us.preheader:                          ; preds = %.preheader, %.preheader.preheader
  br i1 %.first_iter.fr, label %.preheader.us.us.preheader, label %.lr.ph381.a

.preheader.us.us.preheader:                       ; preds = %.preheader.us.preheader
  br i1 %.not182.us379, label %.preheader.us.preheader._crit_edge, label %.lr.ph378

.preheader.us.preheader.a:                        ; preds = %bb.ag
  %.not182.us.us = icmp eq i64 %2, 0
  br i1 %.not182.us.us, label %.preheader.us.preheader._crit_edge, label %.lr.ph378

.lr.ph378:                                        ; preds = %.preheader.us.us.preheader, %.preheader.us.preheader.a
  %.sroa.02.0.i90.us377 = phi i64 [ %2, %.preheader.us.preheader.a ], [ %.sroa.038.sroa.4.0.copyload, %.preheader.us.us.preheader ]
  %2 = add i64 %.sroa.02.0.i90.us377, -1          ; 4 uses
  %i.eh = add i64 %2, %i.dy                       ; 3 uses
  %i.ei = icmp ult i64 %i.eh, %.sroa.038.sroa.13.0.copyload
  br i1 %i.ei, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph378
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.14.0.copyload, i64 %2
  %i.ek = load i8, ptr %i.ej, align 1, !alias.scope !139, !noundef !17
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %i.eh
  %i.em = load i8, ptr %i.el, align 1, !alias.scope !138, !noundef !17
  %.not21.i93.us.a = icmp eq i8 %i.ek, %i.em
  br i1 %.not21.i93.us.a, label %.preheader.us.preheader.a, label %.preheader.us

bb.ah:                                            ; preds = %.lr.ph378
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.eh, i64 noundef range(i64 0, -9223372036854775808) %.sroa.038.sroa.13.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #43, !noalias !140
  unreachable

.preheader.us:                                    ; preds = %bb.ag
  %3 = add i64 %.sroa.038.sroa.6.0.copyload, %i.dy
  br label %bb.am

.lr.ph381.a:                                      ; preds = %.preheader.us.preheader
  br i1 %.not182.us, label %.preheader.us.preheader._crit_edge, label %.split244.us

bb.ai:                                            ; preds = %.preheader.preheader, %.preheader
  %.sroa.02.0.i90.us380 = phi i64 [ %i.eg, %.preheader ], [ %.sroa.038.sroa.4.0.copyload, %.preheader.preheader ] ; 4 uses
  %i.en = add i64 %.sroa.02.0.i90.us380, %i.dy    ; 2 uses
  %i.eo = icmp ult i64 %i.en, %.sroa.038.sroa.13.0.copyload
  br i1 %i.eo, label %bb.aj, label %.split240.us

bb.aj:                                            ; preds = %bb.ai
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.14.0.copyload, i64 %.sroa.02.0.i90.us380
  %i.eq = load i8, ptr %i.ep, align 1, !alias.scope !139, !noundef !17
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %i.en
  %i.es = load i8, ptr %i.er, align 1, !alias.scope !138, !noundef !17
  %.not.i95.us = icmp eq i8 %i.eq, %i.es
  br i1 %.not.i95.us, label %.preheader, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.reass344.reass = add i64 %i.dy, %invariant.op460
  %i.et = add i64 %.reass344.reass, %.sroa.02.0.i90.us380
  br label %bb.am

.split244.us:                                     ; preds = %.lr.ph381.a
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cm, i64 noundef range(i64 0, -9223372036854775808) %.sroa.038.sroa.15.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #43, !noalias !140
  unreachable

bb.al:                                            ; preds = %.lr.ph.i86.us
  %i.eu = add i64 %i.dy, %.sroa.038.sroa.15.0.copyload
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.preheader.us, %bb.ak
  %i.ev = phi i64 [ %i.et, %bb.ak ], [ %i.eu, %bb.al ], [ %3, %.preheader.us ] ; 2 uses
  %i.ew = add i64 %i.ev, %i.q                     ; 2 uses
  %i.ex = icmp ult i64 %i.ew, %.sroa.038.sroa.13.0.copyload
  br i1 %i.ex, label %.lr.ph.i86.us, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.us

.preheader.us.preheader._crit_edge:               ; preds = %.preheader.us.us.preheader, %.preheader.us.preheader.a, %.lr.ph381.a
  %i.ey = add i64 %i.dy, %.sroa.038.sroa.15.0.copyload ; 2 uses
  br label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.us

_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.us: ; preds = %.sink.split.i81.us, %bb.am, %.preheader.us.preheader._crit_edge, %bb.af, %.preheader183.us.preheader._crit_edge, %bb.w
  %.sroa.51.2.us = phi i1 [ false, %.preheader183.us.preheader._crit_edge ], [ true, %bb.w ], [ true, %bb.am ], [ true, %bb.af ], [ false, %.preheader.us.preheader._crit_edge ], [ true, %.sink.split.i81.us ]
  %.sroa.41.2.us = phi i64 [ %i.dw, %.preheader183.us.preheader._crit_edge ], [ %.sroa.41.0225.us, %bb.w ], [ %.sroa.41.0225.us, %bb.am ], [ %.sroa.41.0225.us, %bb.af ], [ %i.ey, %.preheader.us.preheader._crit_edge ], [ %.sroa.41.0225.us, %.sink.split.i81.us ]
  %.sroa.31103.2.us = phi i64 [ 0, %.preheader183.us.preheader._crit_edge ], [ %.sroa.31103.0226.us, %bb.w ], [ -1, %bb.am ], [ -1, %bb.af ], [ -1, %.preheader.us.preheader._crit_edge ], [ %.sink.i.us, %.sink.split.i81.us ]
  %.sroa.19.2.us = phi i64 [ %i.dw, %.preheader183.us.preheader._crit_edge ], [ %.sroa.038.sroa.13.0.copyload, %bb.w ], [ %.sroa.038.sroa.13.0.copyload, %bb.am ], [ %.sroa.038.sroa.13.0.copyload, %bb.af ], [ %i.ey, %.preheader.us.preheader._crit_edge ], [ %.sroa.038.sroa.13.0.copyload, %.sink.split.i81.us ]
  %.sroa.7.1.pn.us = phi i64 [ %i.cs, %.preheader183.us.preheader._crit_edge ], [ %.sroa.7.1, %bb.w ], [ %.sroa.7.1, %bb.am ], [ %.sroa.7.1, %bb.af ], [ %i.dy, %.preheader.us.preheader._crit_edge ], [ %.sroa.7.1, %.sink.split.i81.us ] ; 2 uses
  %i.ez = icmp eq i64 %.sroa.7.1.pn.us, %.sroa.41.0225.us
  br i1 %i.ez, label %.split250.us, label %bb.an

bb.an:                                            ; preds = %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.us
  %.sroa.4.1.i.us = sub nuw i64 %.sroa.7.1.pn.us, %.sroa.41.0225.us
  %.sroa.0.1.i.us = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %.sroa.41.0225.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMNtNtCs1LivM9IBWqb_12object_store4path5partsNtB2_8PathPart5parse(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.us, i64 noundef %.sroa.4.1.i.us)
  %i.fa = load i64, ptr %i.f, align 8, !range !18, !noundef !17
  %.not77.us = icmp eq i64 %i.fa, -1
  br i1 %.not77.us, label %bb.ao, label %.split252.us

bb.ao:                                            ; preds = %bb.an
  %.sroa.0136.0.copyload.us = load ptr, ptr %i.r, align 8 ; 2 uses
  %i.fb = load <2 x i64>, ptr %.sroa.4137.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store ptr %.sroa.0136.0.copyload.us, ptr %i.g, align 8
  store <2 x i64> %i.fb, ptr %.sroa.4149.0..sroa_idx, align 8
  %i.fc = icmp eq ptr %.sroa.0136.0.copyload.us, inttoptr (i64 -1 to ptr)
  br i1 %i.fc, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsgsNUVCRJO2f_13influxdb3_lib.exit.us, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.us unwind label %.split254.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.us: ; preds = %bb.ap
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsgsNUVCRJO2f_13influxdb3_lib.exit.us

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsgsNUVCRJO2f_13influxdb3_lib.exit.us: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.us, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br i1 %.sroa.51.2.us, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread, label %bb.v

.preheader.i.i:                                   ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsgsNUVCRJO2f_13influxdb3_lib.exit.peel, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsgsNUVCRJO2f_13influxdb3_lib.exit
  %.sroa.5.0228 = phi i64 [ %.sroa.5.5, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsgsNUVCRJO2f_13influxdb3_lib.exit ], [ %.sroa.5.5.peel, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsgsNUVCRJO2f_13influxdb3_lib.exit.peel ] ; 15 uses
  %.sroa.41.0225 = phi i64 [ %.sroa.41.2, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsgsNUVCRJO2f_13influxdb3_lib.exit ], [ %.sroa.41.2.peel, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsgsNUVCRJO2f_13influxdb3_lib.exit.peel ] ; 4 uses
  %.sroa.999.sroa.0.0223 = phi i1 [ false, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsgsNUVCRJO2f_13influxdb3_lib.exit ], [ %.sroa.999.sroa.0.4.peel, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsgsNUVCRJO2f_13influxdb3_lib.exit.peel ] ; 2 uses
  %i.fd = icmp eq i64 %.sroa.5.0228, 0
  br i1 %i.fd, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %.preheader.i.i
  %.not.i.i.i.peel.i = icmp ult i64 %.sroa.5.0228, %.sroa.038.sroa.13.0.copyload
  br i1 %.not.i.i.i.peel.i, label %bb.ar, label %.split.i.i.i.peel.i

.split.i.i.i.peel.i:                              ; preds = %bb.aq
  %i.fe = icmp eq i64 %.sroa.5.0228, %.sroa.038.sroa.13.0.copyload
  br i1 %i.fe, label %bb.as, label %.loopexit.i

bb.ar:                                            ; preds = %bb.aq
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %.sroa.5.0228
  %i.fg = load i8, ptr %i.ff, align 1, !alias.scope !131, !noalias !132, !noundef !17
  %i.fh = icmp sgt i8 %i.fg, -65
  br i1 %i.fh, label %bb.as, label %.loopexit.i

bb.as:                                            ; preds = %bb.ar, %.split.i.i.i.peel.i, %.preheader.i.i
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %.sroa.5.0228 ; 4 uses
  %i.fj = icmp samesign eq i64 %.sroa.5.0228, %.sroa.038.sroa.13.0.copyload
  br i1 %i.fj, label %.loopexit19.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fk = load i8, ptr %i.fi, align 1, !noalias !133, !noundef !17 ; 5 uses
  %i.fl = icmp sgt i8 %i.fk, -1
  br i1 %i.fl, label %bb.au, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit12.i.i.i.peel.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit12.i.i.i.peel.i: ; preds = %bb.at
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 1
  %i.fn = and i8 %i.fk, 31
  %i.fo = zext nneg i8 %i.fn to i32               ; 3 uses
  %i.fp = add nuw nsw i64 %.sroa.5.0228, 1
  %i.fq = icmp samesign ne i64 %i.fp, %.sroa.038.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.fq)
  %i.fr = load i8, ptr %i.fm, align 1, !noalias !133, !noundef !17
  %i.fs = shl nuw nsw i32 %i.fo, 6
  %i.ft = and i8 %i.fr, 63
  %i.fu = zext nneg i8 %i.ft to i32               ; 2 uses
  %i.fv = or disjoint i32 %i.fs, %i.fu
  %i.fw = icmp samesign ugt i8 %i.fk, -33
  br i1 %i.fw, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit14.i.i.i.peel.i, label %bb.av

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit14.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit12.i.i.i.peel.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fi, i64 2
  %i.fy = add nuw nsw i64 %.sroa.5.0228, 2
  %i.fz = icmp samesign ne i64 %i.fy, %.sroa.038.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.fz)
  %i.ga = load i8, ptr %i.fx, align 1, !noalias !133, !noundef !17
  %i.gb = shl nuw nsw i32 %i.fu, 6
  %i.gc = and i8 %i.ga, 63
  %i.gd = zext nneg i8 %i.gc to i32
  %i.ge = or disjoint i32 %i.gb, %i.gd            ; 2 uses
  %i.gf = shl nuw nsw i32 %i.fo, 12
  %i.gg = or disjoint i32 %i.ge, %i.gf
  %i.gh = icmp samesign ugt i8 %i.fk, -17
  br i1 %i.gh, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit16.i.i.i.peel.i, label %bb.av

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit16.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit14.i.i.i.peel.i
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fi, i64 3
  %i.gj = add nuw nsw i64 %.sroa.5.0228, 3
  %i.gk = icmp samesign ne i64 %i.gj, %.sroa.038.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.gk)
  %i.gl = load i8, ptr %i.gi, align 1, !noalias !133, !noundef !17
  %i.gm = shl nuw nsw i32 %i.fo, 18
  %i.gn = and i32 %i.gm, 1835008
  %i.go = shl nuw nsw i32 %i.ge, 6
  %i.gp = and i8 %i.gl, 63
  %i.gq = zext nneg i8 %i.gp to i32
  %i.gr = or disjoint i32 %i.go, %i.gq
  %i.gs = or disjoint i32 %i.gr, %i.gn
  br label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.gt = zext nneg i8 %i.fk to i32
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit16.i.i.i.peel.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit14.i.i.i.peel.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit12.i.i.i.peel.i
  %.sroa.4.0.i.ph.i.i.peel.i = phi i32 [ %i.gg, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit14.i.i.i.peel.i ], [ %i.gs, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit16.i.i.i.peel.i ], [ %i.fv, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit12.i.i.i.peel.i ], [ %i.gt, %bb.au ] ; 4 uses
  %i.gu = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 1114112
  call void @llvm.assume(i1 %i.gu)
  br i1 %.sroa.999.sroa.0.0223, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gv = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 128
  br i1 %i.gv, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gw = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 2048
  br i1 %i.gw, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gx = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 65536
  %..i.i.peel.i = select i1 %i.gx, i64 3, i64 4
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw
  %.sroa.01.0.i.i.peel.i = phi i64 [ 2, %bb.ax ], [ %..i.i.peel.i, %bb.ay ], [ 1, %bb.aw ]
  %i.gy = add i64 %.sroa.01.0.i.i.peel.i, %.sroa.5.0228 ; 23 uses
  %i.gz = icmp eq i64 %i.gy, 0
  br i1 %i.gz, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.not.i.i.i.i = icmp ult i64 %i.gy, %.sroa.038.sroa.13.0.copyload
  br i1 %.not.i.i.i.i, label %bb.bb, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.ba
  %i.ha = icmp eq i64 %i.gy, %.sroa.038.sroa.13.0.copyload
  br i1 %i.ha, label %bb.bc, label %.loopexit.i

bb.bb:                                            ; preds = %bb.ba
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %i.gy
  %i.hc = load i8, ptr %i.hb, align 1, !alias.scope !131, !noalias !134, !noundef !17
  %i.hd = icmp sgt i8 %i.hc, -65
  br i1 %i.hd, label %bb.bc, label %.loopexit.i

bb.bc:                                            ; preds = %bb.bb, %.split.i.i.i.i, %bb.az
  %i.he = icmp samesign eq i64 %i.gy, %.sroa.038.sroa.13.0.copyload
  br i1 %i.he, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %i.gy
  %i.hg = load i8, ptr %i.hf, align 1, !noalias !135, !noundef !17 ; 3 uses
  %i.hh = icmp sgt i8 %i.hg, -1
  br i1 %i.hh, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsgsNUVCRJO2f_13influxdb3_lib.exit, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit12.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit12.i.i.i.i: ; preds = %bb.bd
  %i.hi = add nuw nsw i64 %i.gy, 1
  %i.hj = icmp samesign ne i64 %i.hi, %.sroa.038.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.hj)
  %i.hk = icmp samesign ugt i8 %i.hg, -33
  br i1 %i.hk, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit14.i.i.i.i, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsgsNUVCRJO2f_13influxdb3_lib.exit

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit12.i.i.i.i
  %i.hl = add nuw nsw i64 %i.gy, 2
  %i.hm = icmp samesign ne i64 %i.hl, %.sroa.038.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.hm)
  %i.hn = icmp samesign ugt i8 %i.hg, -17
  br i1 %i.hn, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit16.i.i.i.i, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsgsNUVCRJO2f_13influxdb3_lib.exit

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit16.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit14.i.i.i.i
  %i.ho = add nuw nsw i64 %i.gy, 3
  %i.hp = icmp samesign ne i64 %i.ho, %.sroa.038.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.hp)
  br label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsgsNUVCRJO2f_13influxdb3_lib.exit

.loopexit.i:                                      ; preds = %bb.bb, %.split.i.i.i.i, %bb.ar, %.split.i.i.i.peel.i, %bb.o, %.split.i.i.i.i.peel, %bb.e, %.split.i.i.i.peel.i.peel
  %.lcssa12.i = phi i64 [ %.sroa.038.sroa.4.0.copyload, %.split.i.i.i.peel.i.peel ], [ %.sroa.038.sroa.4.0.copyload, %bb.e ], [ %i.bp, %.split.i.i.i.i.peel ], [ %i.bp, %bb.o ], [ %i.gy, %bb.bb ], [ %i.gy, %.split.i.i.i.i ], [ %.sroa.5.0228, %bb.ar ], [ %.sroa.5.0228, %.split.i.i.i.peel.i ]
  call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.038.sroa.12.0.copyload, i64 noundef %.sroa.038.sroa.13.0.copyload, i64 noundef %.lcssa12.i, i64 noundef %.sroa.038.sroa.13.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1498) #43, !noalias !134
  unreachable

.loopexit19.i:                                    ; preds = %bb.as
  br i1 %.sroa.999.sroa.0.0223, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.be

.split240.us:                                     ; preds = %bb.ai
  %i.hq = add i64 %i.dy, %.sroa.038.sroa.4.0.copyload
  %umax.i92 = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %.sroa.038.sroa.13.0.copyload, i64 %i.hq)
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax.i92, i64 noundef range(i64 0, -9223372036854775808) %.sroa.038.sroa.13.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #43, !noalias !140
  unreachable

.split234.us:                                     ; preds = %.lr.ph374
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.dk, i64 noundef range(i64 0, -9223372036854775808) %.sroa.038.sroa.15.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #43, !noalias !141
  unreachable

.split237.us:                                     ; preds = %bb.ab
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.dm, i64 noundef range(i64 0, -9223372036854775808) %.sroa.038.sroa.13.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #43, !noalias !141
  unreachable

.split231.us:                                     ; preds = %.lr.ph
  %i.hr = add i64 %i.cs, %.sroa.0.0.i.i.us
  %umax.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %.sroa.038.sroa.13.0.copyload, i64 %i.hr)
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.038.sroa.13.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #43, !noalias !141
  unreachable

bb.be:                                            ; preds = %.loopexit19.i
  br label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsgsNUVCRJO2f_13influxdb3_lib.exit

_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit12.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit14.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit16.i.i.i.i, %bb.bd, %bb.bc, %bb.av, %.loopexit19.i, %bb.be
  %.sroa.51.2 = phi i1 [ true, %bb.be ], [ false, %.loopexit19.i ], [ false, %bb.av ], [ false, %bb.bc ], [ false, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit12.i.i.i.i ], [ false, %bb.bd ], [ false, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit16.i.i.i.i ], [ false, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit14.i.i.i.i ]
  %.sroa.41.2 = phi i64 [ %.sroa.41.0225, %bb.be ], [ %.sroa.038.sroa.13.0.copyload, %.loopexit19.i ], [ %.sroa.5.0228, %bb.av ], [ %.sroa.038.sroa.13.0.copyload, %bb.bc ], [ %i.gy, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit12.i.i.i.i ], [ %i.gy, %bb.bd ], [ %i.gy, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit16.i.i.i.i ], [ %i.gy, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit14.i.i.i.i ]
  %.sroa.5.5 = phi i64 [ %.sroa.038.sroa.13.0.copyload, %bb.be ], [ %.sroa.038.sroa.13.0.copyload, %.loopexit19.i ], [ %.sroa.5.0228, %bb.av ], [ %.sroa.038.sroa.13.0.copyload, %bb.bc ], [ %i.gy, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit12.i.i.i.i ], [ %i.gy, %bb.bd ], [ %i.gy, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit16.i.i.i.i ], [ %i.gy, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit14.i.i.i.i ]
  %.sroa.7.1.pn = phi i64 [ %.sroa.7.1, %bb.be ], [ %.sroa.038.sroa.13.0.copyload, %.loopexit19.i ], [ %.sroa.5.0228, %bb.av ], [ %.sroa.038.sroa.13.0.copyload, %bb.bc ], [ %i.gy, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit12.i.i.i.i ], [ %i.gy, %bb.bd ], [ %i.gy, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit16.i.i.i.i ], [ %i.gy, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit14.i.i.i.i ] ; 2 uses
  %i.hs = icmp eq i64 %.sroa.7.1.pn, %.sroa.41.0225
  br i1 %i.hs, label %.split250.us, label %bb.bk

_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsgsNUVCRJO2f_13influxdb3_lib.exit.peel, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsgsNUVCRJO2f_13influxdb3_lib.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsgsNUVCRJO2f_13influxdb3_lib.exit.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %.sroa.7.1, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.ht = load i64, ptr %i.d, align 8, !range !19, !noundef !17
  %i.hu = trunc nuw i64 %i.ht to i1
  %i.hv = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.hw = load i64, ptr %i.hv, align 8, !range !20, !noundef !17 ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.hu, label %bb.bf, label %bb.bg, !prof !21

bb.bf:                                            ; preds = %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread
  %i.hy = load i64, ptr %i.hx, align 8
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.hw, i64 %i.hy) #43
  unreachable

bb.bg:                                            ; preds = %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread
  %i.hz = load ptr, ptr %i.hx, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.ia = icmp ule i64 %.sroa.7.1, %i.hw
  call void @llvm.assume(i1 %i.ia)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not76 = icmp eq i64 %.sroa.7.1, 0
  br i1 %.not76, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bi, %bb.bg
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.hw, ptr %i.ib, align 8
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.hz, ptr %.sroa.455.0..sroa_idx, align 8
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.7.1, ptr %.sroa.556.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hz, ptr nonnull align 1 %.sroa.0.0, i64 %.sroa.7.1, i1 false)
  br label %bb.bh

bb.bj:                                            ; preds = %bb.bn, %_RNCINvMNtCs1LivM9IBWqb_12object_store4pathNtB5_4Path5parseRNtNtCscdodAO9FK5_5alloc6string6StringE0CsgsNUVCRJO2f_13influxdb3_lib.exit, %bb.b, %bb.bh
  ret void

.split250.us:                                     ; preds = %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.peel, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsgsNUVCRJO2f_13influxdb3_lib.exit, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %.val1.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.ic = load i64, ptr %i.c, align 8, !range !19, !noundef !17
  %i.id = trunc nuw i64 %i.ic to i1
  %i.ie = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.if = load i64, ptr %i.ie, align 8, !range !20, !noundef !17 ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.id, label %bb.bl, label %bb.bm, !prof !21

bb.bk:                                            ; preds = %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsgsNUVCRJO2f_13influxdb3_lib.exit
  %.sroa.4.1.i = sub nuw i64 %.sroa.7.1.pn, %.sroa.41.0225
  %.sroa.0.1.i = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %.sroa.41.0225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMNtNtCs1LivM9IBWqb_12object_store4path5partsNtB2_8PathPart5parse(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i, i64 noundef %.sroa.4.1.i)
  %i.ih = load i64, ptr %i.f, align 8, !range !18, !noundef !17
  %.not77 = icmp eq i64 %i.ih, -1
  br i1 %.not77, label %bb.bw, label %.split252.us

bb.bl:                                            ; preds = %.split250.us
  %i.ii = load i64, ptr %i.ig, align 8
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.if, i64 %i.ii) #43
  unreachable

bb.bm:                                            ; preds = %.split250.us
  %i.ij = load ptr, ptr %i.ig, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.ik = icmp ule i64 %.val1.i, %i.if
  call void @llvm.assume(i1 %i.ik)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not78 = icmp eq i64 %.val1.i, 0
  br i1 %.not78, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bo, %bb.bm
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.if, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ij, ptr %.sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx, align 8
  %.sroa.415.sroa.5.0..sroa.415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.val1.i, ptr %.sroa.415.sroa.5.0..sroa.415.0..sroa_idx.sroa_idx, align 8
  br label %bb.bj

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ij, ptr nonnull align 1 %.val.i, i64 %.val1.i, i1 false)
  br label %bb.bn

.split252.us:                                     ; preds = %bb.s, %bb.bk, %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !142)
  call void @llvm.experimental.noalias.scope.decl(metadata !143)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !144
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.val1.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bq unwind label %bb.bp, !noalias !144

bb.bp:                                            ; preds = %bb.br, %.split252.us
  %i.il = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts11InvalidPartECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b) #44
          to label %common.resume unwind label %bb.bv, !noalias !145

bb.bq:                                            ; preds = %.split252.us
  %i.im = load i64, ptr %i.a, align 8, !range !19, !noalias !144, !noundef !17
  %i.in = trunc nuw i64 %i.im to i1
  %i.io = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ip = load i64, ptr %i.io, align 8, !range !20, !noalias !144, !noundef !17 ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.in, label %bb.br, label %bb.bs, !prof !21

bb.br:                                            ; preds = %bb.bq
  %i.ir = load i64, ptr %i.iq, align 8, !noalias !144
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ip, i64 %i.ir) #43
          to label %bb.bu unwind label %bb.bp, !noalias !144

bb.bs:                                            ; preds = %bb.bq
  %i.is = load ptr, ptr %i.iq, align 8, !noalias !144, !nonnull !17, !noundef !17 ; 2 uses
  %i.it = icmp ule i64 %.val1.i, %i.ip
  call void @llvm.assume(i1 %i.it)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !144
  %.not.i = icmp eq i64 %.val1.i, 0
  br i1 %.not.i, label %_RNCINvMNtCs1LivM9IBWqb_12object_store4pathNtB5_4Path5parseRNtNtCscdodAO9FK5_5alloc6string6StringE0CsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.is, ptr nonnull readonly align 1 %.val.i, i64 %.val1.i, i1 false), !noalias !146
  br label %_RNCINvMNtCs1LivM9IBWqb_12object_store4pathNtB5_4Path5parseRNtNtCscdodAO9FK5_5alloc6string6StringE0CsgsNUVCRJO2f_13influxdb3_lib.exit

bb.bu:                                            ; preds = %bb.br
  unreachable

bb.bv:                                            ; preds = %bb.bp
  %i.iu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #45, !noalias !145
  unreachable

common.resume:                                    ; preds = %.split254.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bp
  %common.resume.op = phi { ptr, i32 } [ %i.il, %bb.bp ], [ %lpad.loopexit.split-lp425, %.split254.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

_RNCINvMNtCs1LivM9IBWqb_12object_store4pathNtB5_4Path5parseRNtNtCscdodAO9FK5_5alloc6string6StringE0CsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.bs, %bb.bt
  %.sroa.7.sroa.0.0.copyload = load i64, ptr %i.b, align 8, !alias.scope !146
  %i.iv = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.571.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.iv, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %i.ip, ptr %0, align 8
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.is, ptr %.sroa.470.0..sroa_idx, align 8
  %.sroa.470.sroa.4.0..sroa.470.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val1.i, ptr %.sroa.470.sroa.4.0..sroa.470.0..sroa_idx.sroa_idx, align 8
  %.sroa.470.sroa.5.0..sroa.470.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.7.sroa.0.0.copyload, ptr %.sroa.470.sroa.5.0..sroa.470.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.bj

bb.bw:                                            ; preds = %bb.bk
  %.sroa.0136.0.copyload = load ptr, ptr %i.r, align 8 ; 2 uses
  %i.iw = load <2 x i64>, ptr %.sroa.4137.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store ptr %.sroa.0136.0.copyload, ptr %i.g, align 8
  store <2 x i64> %i.iw, ptr %.sroa.4149.0..sroa_idx, align 8
  %i.ix = icmp eq ptr %.sroa.0136.0.copyload, inttoptr (i64 -1 to ptr)
  br i1 %i.ix, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i unwind label %.split254.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-amqp?download=true
inline.NumInlined: 111
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
@match_criteria = internal constant [6 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.1420 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.1421 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.1422 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.1423 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.1424 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.1426 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1427 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.1428 = private unnamed_addr constant [22 x i8] c"Missing topic pattern\00", align 1
@.str.1429 = private unnamed_addr constant [25 x i8] c"Missing payload protocol\00", align 1
@.str.1430 = private unnamed_addr constant [18 x i8] c"Invalid regex: %s\00", align 1
@.str.1431 = private unnamed_addr constant [16 x i8] c"AMQP version as\00", align 1
@.str.1432 = private unnamed_addr constant [23 x i8] c"AMQP (unknown version)\00", align 1
@.str.1433 = private unnamed_addr constant [25 x i8] c"Protocol-Header %u-%u-%u\00", align 1
@.str.1434 = private unnamed_addr constant [15 x i8] c"Connection.%s \00", align 1
@.str.1435 = private unnamed_addr constant [13 x i8] c"Unknown (%u)\00", align 1
@.str.1436 = private unnamed_addr constant [29 x i8] c"Unknown connection method %u\00", align 1
@.str.1437 = private unnamed_addr constant [12 x i8] c"Channel.%s \00", align 1
@.str.1438 = private unnamed_addr constant [26 x i8] c"Unknown channel method %u\00", align 1
@.str.1439 = private unnamed_addr constant [16 x i8] c"Access.Request \00", align 1
@.str.1440 = private unnamed_addr constant [19 x i8] c"Access.Request-Ok \00", align 1
@.str.1441 = private unnamed_addr constant [25 x i8] c"Unknown access method %u\00", align 1
@.str.1442 = private unnamed_addr constant [13 x i8] c"Exchange.%s \00", align 1
@.str.1443 = private unnamed_addr constant [27 x i8] c"Unknown exchange method %u\00", align 1
@.str.1444 = private unnamed_addr constant [10 x i8] c"Queue.%s \00", align 1
@.str.1445 = private unnamed_addr constant [24 x i8] c"Unknown queue method %u\00", align 1
@.str.1446 = private unnamed_addr constant [10 x i8] c"Basic.%s \00", align 1
@.str.1447 = private unnamed_addr constant [24 x i8] c"Unknown basic method %u\00", align 1
@.str.1448 = private unnamed_addr constant [9 x i8] c"File.%s \00", align 1
@.str.1449 = private unnamed_addr constant [23 x i8] c"Unknown file method %u\00", align 1
@.str.1450 = private unnamed_addr constant [11 x i8] c"Stream.%s \00", align 1
@.str.1451 = private unnamed_addr constant [25 x i8] c"Unknown stream method %u\00", align 1
@.str.1452 = private unnamed_addr constant [7 x i8] c"Tx.%s \00", align 1
@.str.1453 = private unnamed_addr constant [21 x i8] c"Unknown tx method %u\00", align 1
@.str.1454 = private unnamed_addr constant [8 x i8] c"Dtx.%s \00", align 1
@.str.1455 = private unnamed_addr constant [22 x i8] c"Unknown dtx method %u\00", align 1
@.str.1456 = private unnamed_addr constant [16 x i8] c"Tunnel.Request \00", align 1
@.str.1457 = private unnamed_addr constant [25 x i8] c"Unknown tunnel method %u\00", align 1
@.str.1458 = private unnamed_addr constant [16 x i8] c"Confirm.Select \00", align 1
@.str.1459 = private unnamed_addr constant [19 x i8] c"Confirm.Select-Ok \00", align 1
@.str.1460 = private unnamed_addr constant [26 x i8] c"Unknown confirm method %u\00", align 1
@.str.1461 = private unnamed_addr constant [24 x i8] c"Unknown method class %u\00", align 1
@.str.1462 = private unnamed_addr constant [16 x i8] c"Content-Header \00", align 1
@.str.1463 = private unnamed_addr constant [24 x i8] c"Unknown header class %u\00", align 1
@.str.1464 = private unnamed_addr constant [14 x i8] c"Content-Body \00", align 1
@.str.1465 = private unnamed_addr constant [11 x i8] c"Heartbeat \00", align 1
@.str.1466 = private unnamed_addr constant [22 x i8] c"Unknown frame type %u\00", align 1
@.str.1467 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1468 = private unnamed_addr constant [13 x i8] c"unknown type\00", align 1
@.str.1469 = private unnamed_addr constant [6 x i8] c" (%s)\00", align 1
@.str.1470 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@.str.1471 = private unnamed_addr constant [5 x i8] c"[%i]\00", align 1
@.str.1472 = private unnamed_addr constant [10 x i8] c"vhost=%s \00", align 1
@.str.1473 = private unnamed_addr constant [10 x i8] c"reply=%s \00", align 1
@.str.1474 = private unnamed_addr constant [6 x i8] c"x=%s \00", align 1
@.str.1475 = private unnamed_addr constant [7 x i8] c"dx=%s \00", align 1
@.str.1476 = private unnamed_addr constant [7 x i8] c"sx=%s \00", align 1
@.str.1477 = private unnamed_addr constant [7 x i8] c"bk=%s \00", align 1
@.str.1478 = private unnamed_addr constant [6 x i8] c"q=%s \00", align 1
@.str.1479 = private unnamed_addr constant [7 x i8] c"rk=%s \00", align 1
@.str.1480 = private unnamed_addr constant [9 x i8] c"type=%s \00", align 1
@.str.1481 = private unnamed_addr constant [23 x i8] c"Protocol-Header %d-%d \00", align 1
@.str.1482 = private unnamed_addr constant [33 x i8] c"Unknown command/control class %d\00", align 1
@.str.1483 = private unnamed_addr constant [8 x i8] c"header \00", align 1
@.str.1484 = private unnamed_addr constant [14 x i8] c"message-body \00", align 1
@.str.1485 = private unnamed_addr constant [22 x i8] c"Unknown frame type %d\00", align 1
@.str.1486 = private unnamed_addr constant [28 x i8] c"<invalid connection method>\00", align 1
@.str.1487 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.1488 = private unnamed_addr constant [9 x i8] c" (%u %s)\00", align 1
@.str.1489 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@.str.1490 = private unnamed_addr constant [8 x i8] c"entries\00", align 1
@.str.1491 = private unnamed_addr constant [12 x i8] c"%s (%s): %s\00", align 1
@.str.1492 = private unnamed_addr constant [25 x i8] c"%s (composite): %d bytes\00", align 1
@.str.1493 = private unnamed_addr constant [19 x i8] c"unimplemented type\00", align 1
@.str.1494 = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@.str.1497 = private unnamed_addr constant [40 x i8] c"%s (%s): (value field length: %d bytes)\00", align 1
@.str.1498 = private unnamed_addr constant [6 x i8] c"vbin8\00", align 1
@amqp_0_10_var_types = internal unnamed_addr constant [3 x { i8, [7 x i8], ptr, ptr, i32, [4 x i8] }] [{ i8, [7 x i8], ptr, ptr, i32, [4 x i8] } { i8 -128, [7 x i8] zeroinitializer, ptr @.str.1498, ptr @format_amqp_0_10_vbin, i32 1, [4 x i8] zeroinitializer }, { i8, [7 x i8], ptr, ptr, i32, [4 x i8] } { i8 -107, [7 x i8] zeroinitializer, ptr @.str.1253, ptr @format_amqp_0_10_str, i32 2, [4 x i8] zeroinitializer }, { i8, [7 x i8], ptr, ptr, i32, [4 x i8] } { i8 -1, [7 x i8] zeroinitializer, ptr @.str.1086, ptr null, i32 0, [4 x i8] zeroinitializer }], align 16
@.str.1500 = private unnamed_addr constant [29 x i8] c"Invalid vbin length size %d!\00", align 1
@.str.1501 = private unnamed_addr constant [31 x i8] c"Invalid string length size %d!\00", align 1
@.str.1502 = private unnamed_addr constant [5 x i8] c"bin8\00", align 1
@.str.1503 = private unnamed_addr constant [5 x i8] c"int8\00", align 1
@.str.1504 = private unnamed_addr constant [6 x i8] c"uint8\00", align 1
@.str.1505 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.1506 = private unnamed_addr constant [6 x i8] c"bin16\00", align 1
@.str.1507 = private unnamed_addr constant [6 x i8] c"int16\00", align 1
@.str.1508 = private unnamed_addr constant [7 x i8] c"uint16\00", align 1
@.str.1509 = private unnamed_addr constant [6 x i8] c"bin32\00", align 1
@.str.1510 = private unnamed_addr constant [6 x i8] c"int32\00", align 1
@.str.1511 = private unnamed_addr constant [7 x i8] c"uint32\00", align 1
@amqp_0_10_fixed_types = internal unnamed_addr constant [12 x { i8, [7 x i8], ptr, ptr, i32, [4 x i8] }] [{ i8, [7 x i8], ptr, ptr, i32, [4 x i8] } { i8 0, [7 x i8] zeroinitializer, ptr @.str.1502, ptr @format_amqp_0_10_bin, i32 1, [4 x i8] zeroinitializer }, { i8, [7 x i8], ptr, ptr, i32, [4 x i8] } { i8 1, [7 x i8] zeroinitializer, ptr @.str.1503, ptr @format_amqp_0_10_int, i32 1, [4 x i8] zeroinitializer }, { i8, [7 x i8], ptr, ptr, i32, [4 x i8] } { i8 2, [7 x i8] zeroinitializer, ptr @.str.1504, ptr @format_amqp_0_10_uint, i32 1, [4 x i8] zeroinitializer }, { i8, [7 x i8], ptr, ptr, i32, [4 x i8] } { i8 4, [7 x i8] zeroinitializer, ptr @.str.1505, ptr @format_amqp_0_10_char, i32 1, [4 x i8] zeroinitializer }, { i8, [7 x i8], ptr, ptr, i32, [4 x i8] } { i8 8, [7 x i8] zeroinitializer, ptr @.str.1407, ptr @format_amqp_0_10_boolean, i32 1, [4 x i8] zeroinitializer }, { i8, [7 x i8], ptr, ptr, i32, [4 x i8] } { i8 16, [7 x i8] zeroinitializer, ptr @.str.1506, ptr @format_amqp_0_10_bin, i32 2, [4 x i8] zeroinitializer }, { i8, [7 x i8], ptr, ptr, i32, [4 x i8] } { i8 17, [7 x i8] zeroinitializer, ptr @.str.1507, ptr @format_amqp_0_10_int, i32 2, [4 x i8] zeroinitializer }, { i8, [7 x i8], ptr, ptr, i32, [4 x i8] } { i8 18, [7 x i8] zeroinitializer, ptr @.str.1508, ptr @format_amqp_0_10_uint, i32 2, [4 x i8] zeroinitializer }, { i8, [7 x i8], ptr, ptr, i32, [4 x i8] } { i8 32, [7 x i8] zeroinitializer, ptr @.str.1509, ptr @format_amqp_0_10_bin, i32 4, [4 x i8] zeroinitializer }, { i8, [7 x i8], ptr, ptr, i32, [4 x i8] } { i8 33, [7 x i8] zeroinitializer, ptr @.str.1510, ptr @format_amqp_0_10_int, i32 4, [4 x i8] zeroinitializer }, { i8, [7 x i8], ptr, ptr, i32, [4 x i8] } { i8 34, [7 x i8] zeroinitializer, ptr @.str.1511, ptr @format_amqp_0_10_uint, i32 4, [4 x i8] zeroinitializer }, { i8, [7 x i8], ptr, ptr, i32, [4 x i8] } { i8 -1, [7 x i8] zeroinitializer, ptr @.str.1086, ptr null, i32 0, [4 x i8] zeroinitializer }], align 16
@.str.1513 = private unnamed_addr constant [23 x i8] c"Invalid int length %d!\00", align 1
@.str.1514 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1515 = private unnamed_addr constant [24 x i8] c"Invalid uint length %d!\00", align 1
@.str.1516 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.1517 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.1518 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.1519 = private unnamed_addr constant [25 x i8] c" (array of %u element%s)\00", align 1
@.str.1520 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.1521 = private unnamed_addr constant [25 x i8] c"<invalid session method>\00", align 1
@.str.1522 = private unnamed_addr constant [31 x i8] c"Invalid sequence set length %u\00", align 1
@.str.1523 = private unnamed_addr constant [36 x i8] c"Invalid sequence set value count %u\00", align 1
@.str.1524 = private unnamed_addr constant [3 x i8] c" [\00", align 1
@.str.1525 = private unnamed_addr constant [11 x i8] c"(%u, %u)%s\00", align 1
@.str.1526 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.1527 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.1528 = private unnamed_addr constant [27 x i8] c"<invalid execution method>\00", align 1
@.str.1529 = private unnamed_addr constant [11 x i8] c" (Invalid)\00", align 1
@.str.1530 = private unnamed_addr constant [22 x i8] c"Invalid class code %x\00", align 1
@.str.1531 = private unnamed_addr constant [25 x i8] c"<invalid message method>\00", align 1
@.str.1532 = private unnamed_addr constant [20 x i8] c"<invalid tx method>\00", align 1
@.str.1533 = private unnamed_addr constant [21 x i8] c"<invalid dtx method>\00", align 1
@.str.1534 = private unnamed_addr constant [26 x i8] c"<invalid exchange method>\00", align 1
@.str.1535 = private unnamed_addr constant [23 x i8] c"<invalid queue method>\00", align 1
@.str.1536 = private unnamed_addr constant [22 x i8] c"<invalid file method>\00", align 1
@.str.1537 = private unnamed_addr constant [24 x i8] c"<invalid stream method>\00", align 1
@.str.1538 = private unnamed_addr constant [28 x i8] c"Protocol-Header%s %d-%d-%d \00", align 1
@.str.1539 = private unnamed_addr constant [6 x i8] c"(TLS)\00", align 1
@.str.1540 = private unnamed_addr constant [8 x i8] c"(empty)\00", align 1
@.str.1541 = private unnamed_addr constant [28 x i8] c"<invalid AMQP performative>\00", align 1
@amqp_1_0_amqp_open_items = internal constant [10 x ptr] [ptr @hf_amqp_1_0_containerId, ptr @hf_amqp_1_0_hostname, ptr @hf_amqp_1_0_maxFrameSize, ptr @hf_amqp_1_0_channelMax, ptr @hf_amqp_1_0_idleTimeOut, ptr @hf_amqp_1_0_outgoingLocales, ptr @hf_amqp_1_0_incomingLocales, ptr @hf_amqp_1_0_offeredCapabilities, ptr @hf_amqp_1_0_desiredCapabilities, ptr @hf_amqp_1_0_properties], align 16
@amqp_1_0_amqp_begin_items = internal constant [8 x ptr] [ptr @hf_amqp_1_0_remoteChannel, ptr @hf_amqp_1_0_nextOutgoingId, ptr @hf_amqp_1_0_incomingWindow, ptr @hf_amqp_1_0_outgoingWindow, ptr @hf_amqp_1_0_handleMax, ptr @hf_amqp_1_0_offeredCapabilities, ptr @hf_amqp_1_0_desiredCapabilities, ptr @hf_amqp_1_0_properties], align 16
@amqp_1_0_amqp_attach_items = internal constant [14 x ptr] [ptr @hf_amqp_1_0_name, ptr @hf_amqp_1_0_handle, ptr @hf_amqp_1_0_role, ptr @hf_amqp_1_0_sndSettleMode, ptr @hf_amqp_1_0_rcvSettleMode, ptr @hf_amqp_1_0_source, ptr @hf_amqp_1_0_target, ptr @hf_amqp_1_0_unsettled, ptr @hf_amqp_1_0_incompleteUnsettled, ptr @hf_amqp_1_0_initialDeliveryCount, ptr @hf_amqp_1_0_maxMessageSize, ptr @hf_amqp_1_0_offeredCapabilities, ptr @hf_amqp_1_0_desiredCapabilities, ptr @hf_amqp_1_0_properties], align 16
@amqp_1_0_amqp_flow_items = internal constant [11 x ptr] [ptr @hf_amqp_1_0_nextIncomingId, ptr @hf_amqp_1_0_incomingWindow, ptr @hf_amqp_1_0_nextOutgoingId, ptr @hf_amqp_1_0_outgoingWindow, ptr @hf_amqp_1_0_handle, ptr @hf_amqp_1_0_deliveryCount, ptr @hf_amqp_1_0_linkCredit, ptr @hf_amqp_1_0_available, ptr @hf_amqp_1_0_drain, ptr @hf_amqp_1_0_echo, ptr @hf_amqp_1_0_properties], align 16
@amqp_1_0_amqp_transfer_items = internal constant [11 x ptr] [ptr @hf_amqp_1_0_handle, ptr @hf_amqp_1_0_deliveryId, ptr @hf_amqp_1_0_deliveryTag, ptr @hf_amqp_1_0_messageFormat, ptr @hf_amqp_1_0_settled, ptr @hf_amqp_1_0_more, ptr @hf_amqp_1_0_rcvSettleMode, ptr @hf_amqp_1_0_state, ptr @hf_amqp_1_0_resume, ptr @hf_amqp_1_0_aborted, ptr @hf_amqp_1_0_batchable], align 16
@amqp_1_0_amqp_disposition_items = internal constant [6 x ptr] [ptr @hf_amqp_1_0_role, ptr @hf_amqp_1_0_first, ptr @hf_amqp_1_0_last, ptr @hf_amqp_1_0_settled, ptr @hf_amqp_1_0_state, ptr @hf_amqp_1_0_batchable], align 16
@amqp_1_0_amqp_detach_items = internal constant [3 x ptr] [ptr @hf_amqp_1_0_handle, ptr @hf_amqp_1_0_closed, ptr @hf_amqp_1_0_error], align 16
@amqp_1_0_amqp_end_items = internal constant [1 x ptr] [ptr @hf_amqp_1_0_error], align 8
@amqp_1_0_amqp_close_items = internal constant [1 x ptr] [ptr @hf_amqp_1_0_error], align 8
@.str.1542 = private unnamed_addr constant [29 x i8] c"Unknown AMQP performative %d\00", align 1
@.str.1543 = private unnamed_addr constant [18 x i8] c"(unknown type %d)\00", align 1
@.str.1544 = private unnamed_addr constant [26 x i8] c"Unknown AMQP list type %d\00", align 1
@.str.1545 = private unnamed_addr constant [24 x i8] c" (list of %d element%s)\00", align 1
@.str.1546 = private unnamed_addr constant [56 x i8] c"Number of list elements (%d) bigger than list size (%d)\00", align 1
@.str.1547 = private unnamed_addr constant [74 x i8] c"Number of list elements (%d) not matching number of decoded elements (%d)\00", align 1
@.str.1548 = private unnamed_addr constant [8 x i8] c"%s : %s\00", align 1
@amqp_1_0_error_items = internal constant [3 x ptr] [ptr @hf_amqp_1_0_condition, ptr @hf_amqp_1_0_description, ptr @hf_amqp_1_0_info], align 16
@amqp_1_0_messageHeader_items = internal constant [5 x ptr] [ptr @hf_amqp_1_0_durable, ptr @hf_amqp_1_0_priority, ptr @hf_amqp_1_0_ttl, ptr @hf_amqp_1_0_firstAcquirer, ptr @hf_amqp_1_0_deliveryCount], align 16
@amqp_1_0_messageProperties_items = internal constant [13 x ptr] [ptr @hf_amqp_1_0_messageId, ptr @hf_amqp_1_0_userId, ptr @hf_amqp_1_0_to, ptr @hf_amqp_1_0_subject, ptr @hf_amqp_1_0_replyTo, ptr @hf_amqp_1_0_correlationId, ptr @hf_amqp_1_0_contentType, ptr @hf_amqp_1_0_contentEncoding, ptr @hf_amqp_1_0_absoluteExpiryTime, ptr @hf_amqp_1_0_creationTime, ptr @hf_amqp_1_0_groupId, ptr @hf_amqp_1_0_groupSequence, ptr @hf_amqp_1_0_replyToGroupId], align 16
@amqp_1_0_received_items = internal constant [2 x ptr] [ptr @hf_amqp_1_0_sectionNumber, ptr @hf_amqp_1_0_sectionOffset], align 16
@amqp_1_0_rejected_items = internal constant [1 x ptr] [ptr @hf_amqp_1_0_error], align 8
@amqp_1_0_modified_items = internal constant [3 x ptr] [ptr @hf_amqp_1_0_deliveryFailed, ptr @hf_amqp_1_0_undeliverableHere, ptr @hf_amqp_1_0_messageAnnotations], align 16
@amqp_1_0_source_items = internal constant [11 x ptr] [ptr @hf_amqp_1_0_address, ptr @hf_amqp_1_0_terminusDurable, ptr @hf_amqp_1_0_expiryPolicy, ptr @hf_amqp_1_0_timeout, ptr @hf_amqp_1_0_dynamic, ptr @hf_amqp_1_0_dynamicNodeProperties, ptr @hf_amqp_1_0_distributionMode, ptr @hf_amqp_1_0_filter, ptr @hf_amqp_1_0_defaultOutcome, ptr @hf_amqp_1_0_outcomes, ptr @hf_amqp_1_0_capabilities], align 16
@amqp_1_0_target_items = internal constant [7 x ptr] [ptr @hf_amqp_1_0_address, ptr @hf_amqp_1_0_terminusDurable, ptr @hf_amqp_1_0_expiryPolicy, ptr @hf_amqp_1_0_timeout, ptr @hf_amqp_1_0_dynamic, ptr @hf_amqp_1_0_dynamicNodeProperties, ptr @hf_amqp_1_0_capabilities], align 16
@amqp_1_0_coordinator_items = internal constant [1 x ptr] [ptr @hf_amqp_1_0_capabilities], align 8
@amqp_1_0_declare_items = internal constant [1 x ptr] [ptr @hf_amqp_1_0_globalId], align 8
@amqp_1_0_discharge_items = internal constant [2 x ptr] [ptr @hf_amqp_1_0_txnId, ptr @hf_amqp_1_0_fail], align 16
@amqp_1_0_declared_items = internal constant [1 x ptr] [ptr @hf_amqp_1_0_txnId], align 8
@amqp_1_0_transactionalState_items = internal constant [2 x ptr] [ptr @hf_amqp_1_0_txnId, ptr @hf_amqp_1_0_outcome], align 16
@amqp_1_0_defined_types = internal unnamed_addr constant [27 x { i32, [4 x i8], ptr, i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr, i32, [4 x i8], ptr } { i32 29, [4 x i8] zeroinitializer, ptr @hf_amqp_1_0_error, i32 3, [4 x i8] zeroinitializer, ptr @amqp_1_0_error_items }, { i32, [4 x i8], ptr, i32, [4 x i8], ptr } { i32 112, [4 x i8] zeroinitializer, ptr @hf_amqp_1_0_messageHeader, i32 5, [4 x i8] zeroinitializer, ptr @amqp_1_0_messageHeader_items }, { i32, [4 x i8], ptr, i32, [4 x i8], ptr } { i32 113, [4 x i8] zeroinitializer, ptr @hf_amqp_1_0_deliveryAnnotations, i32 0, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr, i32, [4 x i8], ptr } { i32 114, [4 x i8] zeroinitializer, ptr @hf_amqp_1_0_messageAnnotations, i32 0, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr, i32, [4 x i8], ptr } { i32 115, [4 x i8] zeroinitializer, ptr @hf_amqp_1_0_messageProperties, i32 13, [4 x i8] zeroinitializer, ptr @amqp_1_0_messageProperties_items }, { i32, [4 x i8], ptr, i32, [4 x i8], ptr } { i32 116, [4 x i8] zeroinitializer, ptr @hf_amqp_1_0_applicationProperties, i32 0, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr, i32, [4 x i8], ptr } { i32 117, [4 x i8] zeroinitializer, ptr @hf_amqp_1_0_data, i32 0, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr, i32, [4 x i8], ptr } { i32 118, [4 x i8] zeroinitializer, ptr @hf_amqp_1_0_amqp_sequence, i32 0, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr, i32, [4 x i8], ptr } { i32 119, [4 x i8] zeroinitializer, ptr @hf_amqp_1_0_amqp_value, i32 0, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr, i32, [4 x i8], ptr } { i32 120, [4 x i8] zeroinitializer, ptr @hf_amqp_1_0_footer, i32 0, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr, i32, [4 x i8], ptr } { i32 35, [4 x i8] zeroinitializer, ptr @hf_amqp_1_0_received, i32 2, [4 x i8] zeroinitializer, ptr @amqp_1_0_received_items }, { i32, [4 x i8], ptr, i32, [4 x i8], ptr } { i32 36, [4 x i8] zeroinitializer, ptr @hf_amqp_1_0_accepted, i32 0, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr, i32, [4 x i8], ptr } { i32 37, [4 x i8] zeroinitializer, ptr @hf_amqp_1_0_rejected, i32 1, [4 x i8] zeroinitializer, ptr @amqp_1_0_rejected_items }, { i32, [4 x i8], ptr, i32, [4 x i8], ptr } { i32 38, [4 x i8] zeroinitializer, ptr @hf_amqp_1_0_released, i32 0, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr, i32, [4 x i8], ptr } { i32 39, [4 x i8] zeroinitializer, ptr @hf_amqp_1_0_modified, i32 3, [4 x i8] zeroinitializer, ptr @amqp_1_0_modified_items }, { i32, [4 x i8], ptr, i32, [4 x i8], ptr } { i32 40, [4 x i8] zeroinitializer, ptr @hf_amqp_1_0_source, i32 11, [4 x i8] zeroinitializer, ptr @amqp_1_0_source_items }, { i32, [4 x i8], ptr, i32, [4 x i8], ptr } { i32 41, [4 x i8] zeroinitializer, ptr @hf_amqp_1_0_target, i32 7, [4 x i8] zeroinitializer, ptr @amqp_1_0_target_items }, { i32, [4 x i8], ptr, i32, [4 x i8], ptr } { i32 43, [4 x i8] zeroinitializer, ptr @hf_amqp_1_0_deleteOnClose, i32 0, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr, i32, [4 x i8], ptr } { i32 44, [4 x i8] zeroinitializer, ptr @hf_amqp_1_0_deleteOnNoLinks, i32 0, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr, i32, [4 x i8], ptr } { i32 45, [4 x i8] zeroinitializer, ptr @hf_amqp_1_0_deleteOnNoMessages, i32 0, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr, i32, [4 x i8], ptr } { i32 46, [4 x i8] zeroinitializer, ptr @hf_amqp_1_0_deleteOnNoLinksOrMessages, i32 0, [4 x i8] zeroinitializer, ptr null }, { i32, [4 x i8], ptr, i32, [4 x i8], ptr } { i32 48, [4 x i8] zeroinitializer, ptr @hf_amqp_1_0_coordinator, i32 1, [4 x i8] zeroinitializer, ptr @amqp_1_0_coordinator_items }, { i32, [4 x i8], ptr, i32, [4 x i8], ptr } { i32 49, [4 x i8] zeroinitializer, ptr @hf_amqp_1_0_declare, i32 1, [4 x i8] zeroinitializer, ptr @amqp_1_0_declare_items }, { i32, [4 x i8], ptr, i32, [4 x i8], ptr } { i32 50, [4 x i8] zeroinitializer, ptr @hf_amqp_1_0_discharge, i32 2, [4 x i8] zeroinitializer, ptr @amqp_1_0_discharge_items }, { i32, [4 x i8], ptr, i32, [4 x i8], ptr } { i32 51, [4 x i8] zeroinitializer, ptr @hf_amqp_1_0_declared, i32 1, [4 x i8] zeroinitializer, ptr @amqp_1_0_declared_items }, { i32, [4 x i8], ptr, i32, [4 x i8], ptr } { i32 52, [4 x i8] zeroinitializer, ptr @hf_amqp_1_0_transactionalState, i32 2, [4 x i8] zeroinitializer, ptr @amqp_1_0_transactionalState_items }, { i32, [4 x i8], ptr, i32, [4 x i8], ptr } zeroinitializer], align 16
@amqp_synonym_types = internal unnamed_addr constant [16 x %struct.amqp_synonym_types_t] [%struct.amqp_synonym_types_t { ptr @hf_amqp_1_0_outgoingLocales, ptr null, ptr @hf_amqp_1_0_outgoingLocales_sym, ptr null, ptr null }, %struct.amqp_synonym_types_t { ptr @hf_amqp_1_0_incomingLocales, ptr null, ptr @hf_amqp_1_0_incomingLocales_sym, ptr null, ptr null }, %struct.amqp_synonym_types_t { ptr @hf_amqp_1_0_offeredCapabilities, ptr null, ptr @hf_amqp_1_0_offeredCapabilities_sym, ptr null, ptr null }, %struct.amqp_synonym_types_t { ptr @hf_amqp_1_0_desiredCapabilities, ptr null, ptr @hf_amqp_1_0_desiredCapabilities_sym, ptr null, ptr null }, %struct.amqp_synonym_types_t { ptr @hf_amqp_1_0_address, ptr null, ptr @hf_amqp_1_0_address_str, ptr null, ptr null }, %struct.amqp_synonym_types_t { ptr @hf_amqp_1_0_source, ptr null, ptr @hf_amqp_1_0_source_str, ptr null, ptr null }, %struct.amqp_synonym_types_t { ptr @hf_amqp_1_0_target, ptr null, ptr @hf_amqp_1_0_target_str, ptr null, ptr null }, %struct.amqp_synonym_types_t { ptr @hf_amqp_1_0_outcomes, ptr null, ptr @hf_amqp_1_0_outcomes_sym, ptr null, ptr null }, %struct.amqp_synonym_types_t { ptr @hf_amqp_1_0_capabilities, ptr null, ptr @hf_amqp_1_0_capabilities_sym, ptr null, ptr null }, %struct.amqp_synonym_types_t { ptr @hf_amqp_1_0_messageId, ptr @hf_amqp_1_0_messageId_uint, ptr @hf_amqp_1_0_messageId_str, ptr @hf_amqp_1_0_messageId_bin, ptr @hf_amqp_1_0_messageId_uuid }, %struct.amqp_synonym_types_t { ptr @hf_amqp_1_0_messageId, ptr @hf_amqp_1_0_messageId_uint, ptr @hf_amqp_1_0_messageId_str, ptr @hf_amqp_1_0_messageId_bin, ptr @hf_amqp_1_0_messageId_uuid }, %struct.amqp_synonym_types_t { ptr @hf_amqp_1_0_correlationId, ptr @hf_amqp_1_0_correlationId_uint, ptr @hf_amqp_1_0_correlationId_str, ptr @hf_amqp_1_0_correlationId_bin, ptr @hf_amqp_1_0_correlationId_uuid }, %struct.amqp_synonym_types_t { ptr @hf_amqp_1_0_to, ptr null, ptr @hf_amqp_1_0_to_str, ptr null, ptr null }, %struct.amqp_synonym_types_t { ptr @hf_amqp_1_0_replyTo, ptr null, ptr @hf_amqp_1_0_replyTo_str, ptr null, ptr null }, %struct.amqp_synonym_types_t { ptr @hf_amqp_1_0_mechanisms, ptr null, ptr @hf_amqp_1_0_mechanisms_sym, ptr null, ptr null }, %struct.amqp_synonym_types_t zeroinitializer], align 16
@.str.1550 = private unnamed_addr constant [11 x i8] c"%s: (null)\00", align 1
@.str.1551 = private unnamed_addr constant [42 x i8] c"Unknown AMQP type %d (0x%x) of field \22%s\22\00", align 1
@.str.1552 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.1553 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.1554 = private unnamed_addr constant [6 x i8] c"ubyte\00", align 1
@.str.1555 = private unnamed_addr constant [7 x i8] c"ushort\00", align 1
@.str.1556 = private unnamed_addr constant [5 x i8] c"uint\00", align 1
@.str.1557 = private unnamed_addr constant [10 x i8] c"smalluint\00", align 1
@.str.1558 = private unnamed_addr constant [6 x i8] c"uint0\00", align 1
@.str.1559 = private unnamed_addr constant [6 x i8] c"ulong\00", align 1
@.str.1560 = private unnamed_addr constant [11 x i8] c"smallulong\00", align 1
@.str.1561 = private unnamed_addr constant [7 x i8] c"ulong0\00", align 1
@.str.1562 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.1563 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.1564 = private unnamed_addr constant [9 x i8] c"smallint\00", align 1
@.str.1565 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.1566 = private unnamed_addr constant [10 x i8] c"smalllong\00", align 1
@.str.1567 = private unnamed_addr constant [10 x i8] c"decimal32\00", align 1
@.str.1568 = private unnamed_addr constant [10 x i8] c"decimal64\00", align 1
@.str.1569 = private unnamed_addr constant [11 x i8] c"decimal128\00", align 1
@.str.1570 = private unnamed_addr constant [5 x i8] c"uuid\00", align 1
@.str.1571 = private unnamed_addr constant [7 x i8] c"vbin32\00", align 1
@.str.1572 = private unnamed_addr constant [10 x i8] c"str8-utf8\00", align 1
@.str.1573 = private unnamed_addr constant [11 x i8] c"str32-utf8\00", align 1
@.str.1574 = private unnamed_addr constant [5 x i8] c"sym8\00", align 1
@.str.1575 = private unnamed_addr constant [6 x i8] c"sym32\00", align 1
@amqp_1_0_fixed_types = internal constant [33 x { i8, [7 x i8], ptr, i32, i32, ptr, ptr }] [{ i8, [7 x i8], ptr, i32, i32, ptr, ptr } { i8 64, [7 x i8] zeroinitializer, ptr @.str.1552, i32 0, i32 0, ptr @dissect_amqp_1_0_skip, ptr @format_amqp_1_0_null }, { i8, [7 x i8], ptr, i32, i32, ptr, ptr } { i8 65, [7 x i8] zeroinitializer, ptr @.str.1553, i32 2, i32 0, ptr @dissect_amqp_1_0_true, ptr @format_amqp_1_0_boolean_true }, { i8, [7 x i8], ptr, i32, i32, ptr, ptr } { i8 66, [7 x i8] zeroinitializer, ptr @.str.1553, i32 2, i32 0, ptr @dissect_amqp_1_0_false, ptr @format_amqp_1_0_boolean_false }, { i8, [7 x i8], ptr, i32, i32, ptr, ptr } { i8 86, [7 x i8] zeroinitializer, ptr @.str.1553, i32 2, i32 1, ptr @dissect_amqp_1_0_fixed, ptr @format_amqp_1_0_boolean }, { i8, [7 x i8], ptr, i32, i32, ptr, ptr } { i8 80, [7 x i8] zeroinitializer, ptr @.str.1554, i32 4, i32 1, ptr @dissect_amqp_1_0_fixed, ptr @format_amqp_1_0_uint }, { i8, [7 x i8], ptr, i32, i32, ptr, ptr } { i8 96, [7 x i8] zeroinitializer, ptr @.str.1555, i32 5, i32 2, ptr @dissect_amqp_1_0_fixed, ptr @format_amqp_1_0_uint }, { i8, [7 x i8], ptr, i32, i32, ptr, ptr } { i8 112, [7 x i8] zeroinitializer, ptr @.str.1556, i32 7, i32 4, ptr @dissect_amqp_1_0_fixed, ptr @format_amqp_1_0_uint }, { i8, [7 x i8], ptr, i32, i32, ptr, ptr } { i8 82, [7 x i8] zeroinitializer, ptr @.str.1557, i32 4, i32 1, ptr @dissect_amqp_1_0_fixed, ptr @format_amqp_1_0_uint }, { i8, [7 x i8], ptr, i32, i32, ptr, ptr } { i8 67, [7 x i8] zeroinitializer, ptr @.str.1558, i32 4, i32 0, ptr @dissect_amqp_1_0_zero, ptr @format_amqp_1_0_uint }, { i8, [7 x i8], ptr, i32, i32, ptr, ptr } { i8 -128, [7 x i8] zeroinitializer, ptr @.str.1559, i32 11, i32 8, ptr @dissect_amqp_1_0_fixed, ptr @format_amqp_1_0_uint }, { i8, [7 x i8], ptr, i32, i32, ptr, ptr } { i8 83, [7 x i8] zeroinitializer, ptr @.str.1560, i32 4, i32 1, ptr @dissect_amqp_1_0_fixed, ptr @format_amqp_1_0_uint }, { i8, [7 x i8], ptr, i32, i32, ptr, ptr } { i8 68, [7 x i8] zeroinitializer, ptr @.str.1561, i32 4, i32 0, ptr @dissect_amqp_1_0_zero, ptr @format_amqp_1_0_uint }, { i8, [7 x i8], ptr, i32, i32, ptr, ptr } { i8 81, [7 x i8] zeroinitializer, ptr @.str.1305, i32 12, i32 1, ptr @dissect_amqp_1_0_fixed, ptr @format_amqp_1_0_int }, { i8, [7 x i8], ptr, i32, i32, ptr, ptr } { i8 97, [7 x i8] zeroinitializer, ptr @.str.1562, i32 13, i32 2, ptr @dissect_amqp_1_0_fixed, ptr @format_amqp_1_0_int }, { i8, [7 x i8], ptr, i32, i32, ptr, ptr } { i8 113, [7 x i8] zeroinitializer, ptr @.str.1563, i32 15, i32 4, ptr @dissect_amqp_1_0_fixed, ptr @format_amqp_1_0_int }, { i8, [7 x i8], ptr, i32, i32, ptr, ptr } { i8 84, [7 x i8] zeroinitializer, ptr @.str.1564, i32 12, i32 1, ptr @dissect_amqp_1_0_fixed, ptr @format_amqp_1_0_int }, { i8, [7 x i8], ptr, i32, i32, ptr, ptr } { i8 -127, [7 x i8] zeroinitializer, ptr @.str.1565, i32 19, i32 8, ptr @dissect_amqp_1_0_fixed, ptr @format_amqp_1_0_int }, { i8, [7 x i8], ptr, i32, i32, ptr, ptr } { i8 85, [7 x i8] zeroinitializer, ptr @.str.1566, i32 12, i32 1, ptr @dissect_amqp_1_0_fixed, ptr @format_amqp_1_0_int }, { i8, [7 x i8], ptr, i32, i32, ptr, ptr } { i8 114, [7 x i8] zeroinitializer, ptr @.str.1403, i32 22, i32 4, ptr @dissect_amqp_1_0_fixed, ptr @format_amqp_1_0_float }, { i8, [7 x i8], ptr, i32, i32, ptr, ptr } { i8 -126, [7 x i8] zeroinitializer, ptr @.str.1402, i32 23, i32 8, ptr @dissect_amqp_1_0_fixed, ptr @format_amqp_1_0_double }, { i8, [7 x i8], ptr, i32, i32, ptr, ptr } { i8 116, [7 x i8] zeroinitializer, ptr @.str.1567, i32 30, i32 4, ptr @dissect_amqp_1_0_fixed, ptr @format_amqp_1_0_decimal }, { i8, [7 x i8], ptr, i32, i32, ptr, ptr } { i8 -124, [7 x i8] zeroinitializer, ptr @.str.1568, i32 30, i32 8, ptr @dissect_amqp_1_0_fixed, ptr @format_amqp_1_0_decimal }, { i8, [7 x i8], ptr, i32, i32, ptr, ptr } { i8 -108, [7 x i8] zeroinitializer, ptr @.str.1569, i32 30, i32 16, ptr @dissect_amqp_1_0_fixed, ptr @format_amqp_1_0_decimal }, { i8, [7 x i8], ptr, i32, i32, ptr, ptr } { i8 115, [7 x i8] zeroinitializer, ptr @.str.1505, i32 26, i32 4, ptr @dissect_amqp_1_0_fixed, ptr @format_amqp_1_0_char }, { i8, [7 x i8], ptr, i32, i32, ptr, ptr } { i8 -125, [7 x i8] zeroinitializer, ptr @.str.1400, i32 24, i32 8, ptr @dissect_amqp_1_0_timestamp, ptr @format_amqp_1_0_timestamp }, { i8, [7 x i8], ptr, i32, i32, ptr, ptr } { i8 -104, [7 x i8] zeroinitializer, ptr @.str.1570, i32 36, i32 16, ptr @dissect_amqp_1_0_fixed, ptr @format_amqp_1_0_uuid }, { i8, [7 x i8], ptr, i32, i32, ptr, ptr } { i8 -96, [7 x i8] zeroinitializer, ptr @.str.1498, i32 30, i32 1, ptr @dissect_amqp_1_0_variable, ptr @format_amqp_1_0_bin }, { i8, [7 x i8], ptr, i32, i32, ptr, ptr } { i8 -80, [7 x i8] zeroinitializer, ptr @.str.1571, i32 30, i32 4, ptr @dissect_amqp_1_0_variable, ptr @format_amqp_1_0_bin }, { i8, [7 x i8], ptr, i32, i32, ptr, ptr } { i8 -95, [7 x i8] zeroinitializer, ptr @.str.1572, i32 26, i32 1, ptr @dissect_amqp_1_0_variable, ptr @format_amqp_1_0_str }, { i8, [7 x i8], ptr, i32, i32, ptr, ptr } { i8 -79, [7 x i8] zeroinitializer, ptr @.str.1573, i32 26, i32 4, ptr @dissect_amqp_1_0_variable, ptr @format_amqp_1_0_str }, { i8, [7 x i8], ptr, i32, i32, ptr, ptr } { i8 -93, [7 x i8] zeroinitializer, ptr @.str.1574, i32 26, i32 1, ptr @dissect_amqp_1_0_variable, ptr @format_amqp_1_0_symbol }, { i8, [7 x i8], ptr, i32, i32, ptr, ptr } { i8 -77, [7 x i8] zeroinitializer, ptr @.str.1575, i32 26, i32 4, ptr @dissect_amqp_1_0_variable, ptr @format_amqp_1_0_symbol }, { i8, [7 x i8], ptr, i32, i32, ptr, ptr } { i8 -1, [7 x i8] zeroinitializer, ptr @.str.1086, i32 0, i32 0, ptr null, ptr null }], align 16
@.str.1577 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.1578 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.1579 = private unnamed_addr constant [59 x i8] c"Unexpected integer at frame position %d to list field \22%s\22\00", align 1
@.str.1580 = private unnamed_addr constant [4 x i8] c"%li\00", align 1
@.str.1581 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.1582 = private unnamed_addr constant [16 x i8] c"(not supported)\00", align 1
@.str.1583 = private unnamed_addr constant [37 x i8] c"Invalid size of length indicator %d!\00", align 1
@.str.1584 = private unnamed_addr constant [31 x i8] c"Invalid binary length size %d!\00", align 1
@.str.1585 = private unnamed_addr constant [31 x i8] c"Invalid symbol length size %d!\00", align 1
@.str.1586 = private unnamed_addr constant [25 x i8] c"Unknown AMQP map type %d\00", align 1
@.str.1587 = private unnamed_addr constant [28 x i8] c"Odd number of map items: %d\00", align 1
@.str.1588 = private unnamed_addr constant [54 x i8] c"Number of map elements (%d) bigger than map size (%d)\00", align 1
@.str.1589 = private unnamed_addr constant [23 x i8] c" (map of %d element%s)\00", align 1
@.str.1590 = private unnamed_addr constant [26 x i8] c"(unknown map key type %d)\00", align 1
@.str.1591 = private unnamed_addr constant [29 x i8] c"Unknown AMQP map key type %d\00", align 1
@.str.1592 = private unnamed_addr constant [27 x i8] c"Unknown AMQP array type %d\00", align 1
@.str.1593 = private unnamed_addr constant [25 x i8] c" (array of %d element%s)\00", align 1
@.str.1594 = private unnamed_addr constant [58 x i8] c"Number of array elements (%d) bigger than array size (%d)\00", align 1
@.str.1595 = private unnamed_addr constant [75 x i8] c"Number of array elements (%d) not matching number of decoded elements (%d)\00", align 1
@.str.1596 = private unnamed_addr constant [22 x i8] c"<invalid SASL method>\00", align 1
@amqp_1_0_sasl_mechanisms_items = internal constant [1 x ptr] [ptr @hf_amqp_1_0_mechanisms], align 8
@amqp_1_0_sasl_init_items = internal constant [3 x ptr] [ptr @hf_amqp_1_0_mechanism, ptr @hf_amqp_1_0_initResponse, ptr @hf_amqp_1_0_hostname], align 16
@amqp_1_0_sasl_challenge_items = internal constant [1 x ptr] [ptr @hf_amqp_1_0_saslChallenge], align 8
@amqp_1_0_sasl_response_items = internal constant [1 x ptr] [ptr @hf_amqp_1_0_saslResponse], align 8
@amqp_1_0_sasl_outcome_items = internal constant [2 x ptr] [ptr @hf_amqp_1_0_saslCode, ptr @hf_amqp_1_0_saslAdditionalData], align 16
@.str.1597 = private unnamed_addr constant [24 x i8] c"Unknown SASL command %d\00", align 1
@switch.table.dissect_amqp_0_10_frame = private unnamed_addr constant [10 x ptr] [ptr @hf_amqp_0_10_connection_method, ptr @hf_amqp_0_10_session_method, ptr @hf_amqp_0_10_execution_method, ptr @hf_amqp_0_10_message_method, ptr @hf_amqp_0_10_tx_method, ptr @hf_amqp_0_10_dtx_method, ptr @hf_amqp_0_10_exchange_method, ptr @hf_amqp_0_10_queue_method, ptr @hf_amqp_0_10_file_method, ptr @hf_amqp_0_10_stream_method], align 8
@switch.table.decode_fixed_type = private unnamed_addr constant [245 x ptr] [ptr getelementptr inbounds nuw (i8, ptr @amqp_1_0_fixed_types, i64 360), ptr getelementptr inbounds nuw (i8, ptr @amqp_1_0_fixed_types, i64 640), ptr getelementptr inbounds nuw (i8, ptr @amqp_1_0_fixed_types, i64 760), ptr getelementptr inbounds nuw (i8, ptr @amqp_1_0_fixed_types, i64 960), ptr getelementptr inbounds nuw (i8, ptr @amqp_1_0_fixed_types, i64 840), ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr getelementptr inbounds nuw (i8, ptr @amqp_1_0_fixed_types, i64 880), ptr null, ptr null, ptr null, ptr getelementptr inbounds nuw (i8, ptr @amqp_1_0_fixed_types, i64 1000), ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr getelementptr inbounds nuw (i8, ptr @amqp_1_0_fixed_types, i64 1040), ptr getelementptr inbounds nuw (i8, ptr @amqp_1_0_fixed_types, i64 1120), ptr null, ptr getelementptr inbounds nuw (i8, ptr @amqp_1_0_fixed_types, i64 1200), ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr getelementptr inbounds nuw (i8, ptr @amqp_1_0_fixed_types, i64 1080), ptr getelementptr inbounds nuw (i8, ptr @amqp_1_0_fixed_types, i64 1160), ptr null, ptr getelementptr inbounds nuw (i8, ptr @amqp_1_0_fixed_types, i64 1240), ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @amqp_1_0_fixed_types, ptr getelementptr inbounds nuw (i8, ptr @amqp_1_0_fixed_types, i64 40), ptr getelementptr inbounds nuw (i8, ptr @amqp_1_0_fixed_types, i64 80), ptr getelementptr inbounds nuw (i8, ptr @amqp_1_0_fixed_types, i64 320), ptr getelementptr inbounds nuw (i8, ptr @amqp_1_0_fixed_types, i64 440), ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr getelementptr inbounds nuw (i8, ptr @amqp_1_0_fixed_types, i64 160), ptr getelementptr inbounds nuw (i8, ptr @amqp_1_0_fixed_types, i64 480), ptr getelementptr inbounds nuw (i8, ptr @amqp_1_0_fixed_types, i64 280), ptr getelementptr inbounds nuw (i8, ptr @amqp_1_0_fixed_types, i64 400), ptr getelementptr inbounds nuw (i8, ptr @amqp_1_0_fixed_types, i64 600), ptr getelementptr inbounds nuw (i8, ptr @amqp_1_0_fixed_types, i64 680), ptr getelementptr inbounds nuw (i8, ptr @amqp_1_0_fixed_types, i64 120), ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr getelementptr inbounds nuw (i8, ptr @amqp_1_0_fixed_types, i64 200), ptr getelementptr inbounds nuw (i8, ptr @amqp_1_0_fixed_types, i64 520), ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr getelementptr inbounds nuw (i8, ptr @amqp_1_0_fixed_types, i64 240), ptr getelementptr inbounds nuw (i8, ptr @amqp_1_0_fixed_types, i64 560), ptr getelementptr inbounds nuw (i8, ptr @amqp_1_0_fixed_types, i64 720), ptr getelementptr inbounds nuw (i8, ptr @amqp_1_0_fixed_types, i64 920), ptr getelementptr inbounds nuw (i8, ptr @amqp_1_0_fixed_types, i64 800)], align 8

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_amqp() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @uat_new(ptr noundef nonnull @.str.1052, i64 noundef 48, ptr noundef nonnull @.str.1053, i1 noundef zeroext true, ptr noundef nonnull @amqp_message_decodes, ptr noundef nonnull @num_amqp_message_decodes, i32 noundef 1, ptr noundef null, ptr noundef nonnull @amqp_message_decode_copy_cb, ptr noundef nonnull @amqp_message_decode_update_cb, ptr noundef nonnull @amqp_message_decode_free_cb, ptr noundef null, ptr noundef null, ptr noundef nonnull @proto_register_amqp.amqp_message_decode_flds)
  %i.b = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str.1056, ptr noundef nonnull @.str.1057, ptr noundef nonnull @.str.1054) ; 2 uses
  store i32 %i.b, ptr @proto_amqp, align 4
  %i.c = tail call i32 @proto_register_protocol_in_name_only(ptr noundef nonnull @.str.1058, ptr noundef nonnull @.str.1059, ptr noundef nonnull @.str.1060, i32 noundef %i.b, i32 noundef 30)
  store i32 %i.c, ptr @proto_amqpv0_9, align 4
  %i.d = load i32, ptr @proto_amqp, align 4
  %i.e = tail call i32 @proto_register_protocol_in_name_only(ptr noundef nonnull @.str.1061, ptr noundef nonnull @.str.1062, ptr noundef nonnull @.str.1063, i32 noundef %i.d, i32 noundef 30)
  store i32 %i.e, ptr @proto_amqpv0_10, align 4
  %i.f = load i32, ptr @proto_amqp, align 4
  %i.g = tail call i32 @proto_register_protocol_in_name_only(ptr noundef nonnull @.str.1064, ptr noundef nonnull @.str.1065, ptr noundef nonnull @.str.1066, i32 noundef %i.f, i32 noundef 30)
  store i32 %i.g, ptr @proto_amqpv1_0, align 4
  %i.h = load i32, ptr @proto_amqp, align 4
  %i.i = tail call ptr @register_dissector(ptr noundef nonnull @.str.1054, ptr noundef nonnull @dissect_amqp, i32 noundef %i.h)
  store ptr %i.i, ptr @amqp_tcp_handle, align 8
  %i.j = load i32, ptr @proto_amqp, align 4
  tail call void @proto_register_field_array(i32 noundef %i.j, ptr noundef nonnull @proto_register_amqp.hf, i32 noundef 655)
  tail call void @proto_register_subtree_array(ptr noundef nonnull @proto_register_amqp.ett, i32 noundef 13)
  %i.k = load i32, ptr @proto_amqp, align 4
  %i.l = tail call ptr @expert_register_protocol(i32 noundef %i.k)
  tail call void @expert_register_field_array(ptr noundef %i.l, ptr noundef nonnull @proto_register_amqp.ei, i32 noundef 29)
  %i.m = load i32, ptr @proto_amqp, align 4
  %i.n = tail call ptr @register_dissector_table(ptr noundef nonnull @.str.1055, ptr noundef nonnull @.str.1067, i32 noundef %i.m, i32 noundef 4, i32 noundef 1)
  store ptr %i.n, ptr @version_table, align 8
  %i.o = load i32, ptr @proto_amqp, align 4
  %i.p = tail call ptr @prefs_register_protocol(i32 noundef %i.o, ptr noundef nonnull @proto_reg_handoff_amqp) ; 3 uses
  tail call void @prefs_register_uint_preference(ptr noundef %i.p, ptr noundef nonnull @.str.1068, ptr noundef nonnull @.str.1069, ptr noundef nonnull @.str.1070, i32 noundef 10, ptr noundef nonnull @amqps_port)
  tail call void @prefs_register_obsolete_preference(ptr noundef %i.p, ptr noundef nonnull @.str.1071)
  tail call void @register_decode_as(ptr noundef nonnull @proto_register_amqp.amqp_da)
  tail call void @prefs_register_uat_preference(ptr noundef %i.p, ptr noundef nonnull @.str.1072, ptr noundef nonnull @.str.1052, ptr noundef nonnull @.str.1073, ptr noundef %i.a)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @uat_fld_chk_enum(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @message_decode_match_criteria_set_cb(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = tail call noalias ptr @g_strndup(ptr noundef %1, i64 noundef %i.a) ; 3 uses
  store i32 0, ptr %0, align 8
  %i.c = getelementptr i8, ptr %3, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not14 = icmp eq ptr %i.d, null
  br i1 %.not14, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef %i.b) #14
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph21

.lr.ph21:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.01520 = phi i32 [ %i.g, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.g = add i32 %.01520, 1                       ; 2 uses
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr [16 x i8], ptr %3, i64 %i.h ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !8

.lr.ph:                                           ; preds = %.lr.ph21
  %i.l = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef %i.b) #14
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.lr.ph._crit_edge, label %.lr.ph21, !llvm.loop !8

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.lcssa = phi ptr [ %3, %.lr.ph.preheader ], [ %i.i, %.lr.ph ]
  %i.n = load i32, ptr %.lcssa, align 8
  store i32 %i.n, ptr %0, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph21, %bb.a, %.lr.ph._crit_edge
  tail call void @g_free(ptr noundef %i.b)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @message_decode_match_criteria_tostr_cb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not16 = icmp eq ptr %i.b, null
  br i1 %.not16, label %g_strdup_inline.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8                ; 2 uses
  %i.d = load i32, ptr %3, align 8
  %i.e = icmp eq i32 %i.d, %i.c
  br i1 %i.e, label %._crit_edge, label %.lr.ph23

.lr.ph23:                                         ; preds = %.lr.ph, %bb.b
  %.01722 = phi i32 [ %i.f, %bb.b ], [ 0, %.lr.ph ]
  %i.f = add i32 %.01722, 1                       ; 2 uses
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr [16 x i8], ptr %3, i64 %i.g ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %g_strdup_inline.exit, label %bb.b, !llvm.loop !9

bb.b:                                             ; preds = %.lr.ph23
  %i.k = load i32, ptr %i.h, align 8
  %i.l = icmp eq i32 %i.k, %i.c
  br i1 %i.l, label %._crit_edge, label %.lr.ph23, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa = phi ptr [ %i.b, %.lr.ph ], [ %i.j, %bb.b ]
  %i.m = tail call noalias ptr @g_strdup(ptr noundef nonnull %.lcssa) ; 2 uses
  store ptr %i.m, ptr %1, align 8
  %i.n = tail call i64 @strlen(ptr noundef %i.m) #14
  %i.o = trunc i64 %i.n to i32
  br label %bb.c

g_strdup_inline.exit:                             ; preds = %.lr.ph23, %bb.a
  %i.p = tail call noalias dereferenceable_or_null(9) ptr @g_malloc(i64 noundef 9) #15 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(9) %i.p, ptr noundef nonnull align 1 dereferenceable(9) @.str.1420, i64 noundef 9, i1 noundef false) #16
  store ptr %i.p, ptr %1, align 8
  br label %bb.c

bb.c:                                             ; preds = %g_strdup_inline.exit, %._crit_edge
  %storemerge = phi i32 [ 8, %g_strdup_inline.exit ], [ %i.o, %._crit_edge ]
  store i32 %storemerge, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @uat_fld_chk_str(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @message_decode_topic_pattern_set_cb(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = tail call noalias ptr @g_strndup(ptr noundef %1, i64 noundef %i.a)
  %i.c = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @g_free(ptr noundef %i.d)
  store ptr %i.b, ptr %i.c, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @message_decode_topic_pattern_tostr_cb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %g_strdup_inline.exit, label %g_strdup_inline.exit8

g_strdup_inline.exit8:                            ; preds = %bb.a
  %i.c = tail call noalias ptr @g_strdup(ptr noundef nonnull %i.b)
  store ptr %i.c, ptr %1, align 8
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = tail call i64 @strlen(ptr noundef %i.d) #14
  %i.f = trunc i64 %i.e to i32
  br label %bb.b

g_strdup_inline.exit:                             ; preds = %bb.a
  %i.g = tail call noalias dereferenceable_or_null(1) ptr @g_malloc(i64 noundef 1) #15 ; 2 uses
  store i8 0, ptr %i.g, align 1
  store ptr %i.g, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %g_strdup_inline.exit, %g_strdup_inline.exit8
  %storemerge = phi i32 [ 0, %g_strdup_inline.exit ], [ %i.f, %g_strdup_inline.exit8 ]
  store i32 %storemerge, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @uat_fld_chk_proto(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @message_decode_payload_proto_set_cb(ptr nofree noundef captures(none) initializes((24, 40)) %0, ptr noundef %1, i32 noundef %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = zext i32 %2 to i64
  %i.b = tail call noalias ptr @g_strndup(ptr noundef %1, i64 noundef %i.a) ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 24         ; 2 uses
  store ptr %i.b, ptr %i.c, align 8
  %i.d = tail call ptr @g_strchug(ptr noundef %i.b)
  %i.e = tail call ptr @g_strchomp(ptr noundef %i.d) ; 0 uses
  %i.f = load ptr, ptr %i.c, align 8
  %i.g = tail call ptr @find_dissector(ptr noundef %i.f)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = tail call ptr @find_dissector(ptr noundef nonnull @.str.1427)
  %i.i = getelementptr i8, ptr %0, i64 24
  store ptr null, ptr %i.i, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
end_hunk_0
begin_hunk_1_@get_amqp_1_0_value_formatter:bb.a
  %i.ew = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %3), !inline_history !24
  %i.ex = add i32 %3, 4
  %i.ey = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.ex), !inline_history !24
  br label %bb.ax

bb.aw:                                            ; preds = %bb.at
  %i.ez = zext i8 %i.eq to i32                    ; 2 uses
  %i.fa = load i32, ptr @hf_amqp_1_0_list, align 4
  %i.fb = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_none_format(ptr noundef null, i32 noundef %i.fa, ptr noundef %0, i32 noundef %i.ep, i32 noundef 1, ptr noundef nonnull @.str.1543, i32 noundef %i.ez), !inline_history !24 ; 0 uses
  %i.fc = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef null, ptr noundef nonnull @ei_amqp_unknown_amqp_type, ptr noundef nonnull @.str.1592, i32 noundef %i.ez), !inline_history !24 ; 0 uses
  %i.fd = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.ep), !inline_history !24
  br label %dissect_amqp_1_0_array.exit

bb.ax:                                            ; preds = %bb.av, %bb.au
  %.082.i = phi i32 [ 1, %bb.au ], [ 4, %bb.av ]  ; 2 uses
  %.080.i = phi i32 [ %i.ev, %bb.au ], [ %i.ey, %bb.av ] ; 8 uses
  %.079.i = phi i32 [ %i.es, %bb.au ], [ %i.ew, %bb.av ] ; 3 uses
  %i.fe = shl nuw nsw i32 %.082.i, 1
  %i.ff = add i32 %i.fe, %3                       ; 2 uses
  %i.fg = call fastcc i32 @get_amqp_1_0_type_formatter(ptr noundef %0, ptr noundef %1, i32 noundef %i.ff, ptr noundef nonnull %i.a, ptr noundef nonnull %i.e, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b), !inline_history !24
  %i.fh = load i32, ptr %i.a, align 4             ; 3 uses
  %i.fi = add nuw nsw i32 %.082.i, 1
  %i.fj = add i32 %i.fi, %.079.i
  %i.fk = tail call ptr @proto_tree_add_item(ptr noundef %9, i32 noundef %i.fh, ptr noundef %0, i32 noundef %i.ep, i32 noundef %i.fj, i32 noundef 0), !inline_history !24 ; 3 uses
  %.not.i137 = icmp eq ptr %5, null
  br i1 %.not.i137, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.fl = tail call ptr @proto_registrar_get_name(i32 noundef %i.fh), !inline_history !24
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.fm = phi ptr [ %i.fl, %bb.ay ], [ %5, %bb.ax ]
  tail call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.fk, ptr noundef nonnull @.str.1467, ptr noundef %i.fm), !inline_history !24
  %i.fn = load i32, ptr %i.b, align 4
  %i.fo = add i32 %i.ff, %i.fn                    ; 2 uses
  %.not87.i = icmp eq i32 %.080.i, 0              ; 2 uses
  br i1 %.not87.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fp = load i32, ptr @ett_amqp_1_0_array, align 4
  %i.fq = tail call ptr @proto_item_add_subtree(ptr noundef %i.fk, i32 noundef %i.fp), !inline_history !24
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.083.i = phi ptr [ %i.fq, %bb.ba ], [ %i.fk, %bb.az ] ; 4 uses
  %i.fr = icmp eq i32 %6, 0
  br i1 %i.fr, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.fs = icmp eq i32 %.080.i, 1
  %i.ft = select i1 %i.fs, ptr @.str.1426, ptr @.str.1520
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.083.i, ptr noundef nonnull @.str.1593, i32 noundef %.080.i, ptr noundef nonnull %i.ft), !inline_history !24
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.fu = icmp ugt i32 %.080.i, %.079.i
  br i1 %i.fu, label %bb.be, label %.preheader

.preheader:                                       ; preds = %bb.bd
  br i1 %.not87.i, label %.critedge.i138, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.fv = trunc nuw i32 %i.fg to i8
  %i.fw = load i32, ptr %i.c, align 4
  %i.fx = load ptr, ptr %i.d, align 8
  %i.fy = zext i32 %6 to i64
  %wide.trip.count = zext i32 %.080.i to i64
  br label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.fz = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %.083.i, ptr noundef nonnull @ei_amqp_invalid_number_of_params, ptr noundef nonnull @.str.1594, i32 noundef %.080.i, i32 noundef %.079.i), !inline_history !24 ; 0 uses
  %i.ga = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.ep), !inline_history !24
  br label %dissect_amqp_1_0_array.exit

bb.bf:                                            ; preds = %.lr.ph, %bb.bi
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.bi ] ; 4 uses
  %.085.i147 = phi i32 [ %i.fo, %.lr.ph ], [ %i.gi, %bb.bi ] ; 4 uses
  %i.gb = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.085.i147), !inline_history !24
  %.not88.i = icmp eq i32 %i.gb, 0
  br i1 %.not88.i, label %.critedge.i138.loopexit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  store i32 0, ptr %i.b, align 4
  %i.gc = icmp samesign ult i64 %indvars.iv, %i.fy
  br i1 %i.gc, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.gd = getelementptr [8 x i8], ptr %7, i64 %indvars.iv
  %i.ge = load ptr, ptr %i.gd, align 8
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.0.in.i = phi ptr [ %i.ge, %bb.bh ], [ @hf_amqp_1_0_list, %bb.bg ]
  %.0.i139 = load i32, ptr %.0.in.i, align 4
  %i.gf = tail call ptr @proto_registrar_get_nth(i32 noundef %i.fh), !inline_history !24
  %i.gg = load ptr, ptr %i.gf, align 8
  call fastcc void @get_amqp_1_0_value_formatter(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %i.fv, i32 noundef %.085.i147, i32 noundef %.0.i139, ptr noundef %i.gg, i32 noundef %i.fw, ptr noundef %i.fx, ptr noundef nonnull %i.b, ptr noundef %.083.i), !inline_history !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gh = load i32, ptr %i.b, align 4
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %i.gh, i32 1) ; 2 uses
  store i32 %spec.store.select, ptr %i.b, align 4
  %i.gi = add i32 %spec.store.select, %.085.i147  ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge.i138.thread, label %bb.bf, !llvm.loop !25

.critedge.i138.loopexit:                          ; preds = %bb.bf
  %indvars167.le = trunc i64 %indvars.iv to i32
  br label %.critedge.i138

.critedge.i138:                                   ; preds = %.critedge.i138.loopexit, %.preheader
  %.085.i.lcssa = phi i32 [ %i.fo, %.preheader ], [ %.085.i147, %.critedge.i138.loopexit ] ; 2 uses
  %.081.i.lcssa = phi i32 [ 0, %.preheader ], [ %indvars167.le, %.critedge.i138.loopexit ] ; 3 uses
  %.not89.i = icmp eq i32 %.081.i.lcssa, %.080.i
  br i1 %.not89.i, label %.critedge.i138.thread, label %bb.bj

bb.bj:                                            ; preds = %.critedge.i138
  %i.gj = add i32 %.081.i.lcssa, %.080.i
  %i.gk = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %.083.i, ptr noundef nonnull @ei_amqp_invalid_number_of_params, ptr noundef nonnull @.str.1595, i32 noundef %i.gj, i32 noundef %.081.i.lcssa), !inline_history !24 ; 0 uses
  br label %.critedge.i138.thread

.critedge.i138.thread:                            ; preds = %bb.bi, %bb.bj, %.critedge.i138
  %.085.i.lcssa182 = phi i32 [ %.085.i.lcssa, %.critedge.i138 ], [ %.085.i.lcssa, %bb.bj ], [ %i.gi, %bb.bi ]
  %i.gl = sub i32 %.085.i.lcssa182, %i.ep
  br label %dissect_amqp_1_0_array.exit

dissect_amqp_1_0_array.exit:                      ; preds = %bb.aw, %bb.be, %.critedge.i138.thread
  %.084.i = phi i32 [ %i.fd, %bb.aw ], [ %i.ga, %bb.be ], [ %i.gl, %.critedge.i138.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.gm = add i32 %.084.i, -1
  store i32 %i.gm, ptr %8, align 4
  br label %bb.bn

bb.bk:                                            ; preds = %bb.v
  %.not128 = icmp eq ptr %5, null
  br i1 %.not128, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.gn = tail call ptr @proto_registrar_get_name(i32 noundef %4)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bk, %bb.bl
  %i.go = phi ptr [ %i.gn, %bb.bl ], [ %5, %bb.bk ]
  %i.gp = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %9, ptr noundef nonnull @ei_amqp_unknown_amqp_type, ptr noundef nonnull @.str.1551, i32 noundef %i.cb, i32 noundef %i.cb, ptr noundef %i.go) ; 0 uses
  %i.gq = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %3)
  store i32 %i.gq, ptr %8, align 4
  br label %bb.bn

bb.bn:                                            ; preds = %bb.j, %bb.l, %bb.o, %bb.u, %dissect_amqp_1_0_map.exit, %dissect_amqp_1_0_array.exit, %bb.bm, %bb.y, %bb.x
  call void @decrement_dissection_depth(ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #16
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @format_amqp_1_0_str(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %4) #0 {
bb.a:
  switch i32 %3, label %bb.d [
    i32 1, label %bb.b
    i32 4, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %2)
  %i.b = zext i8 %i.a to i32
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %2)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 416
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.e, ptr noundef nonnull @.str.1501, i32 noundef %3)
  store ptr %i.f, ptr %4, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ %i.c, %bb.c ]  ; 2 uses
  %i.g = add i32 %3, %2
  %i.h = getelementptr i8, ptr %1, i64 416
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call ptr @tvb_get_string_enc(ptr noundef %i.i, ptr noundef %0, i32 noundef %i.g, i32 noundef %.0, i32 noundef 2)
  store ptr %i.j, ptr %4, align 8
  %i.k = add i32 %.0, %3
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.019 = phi i32 [ %i.k, %bb.e ], [ %3, %bb.d ]
  ret i32 %.019
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define internal fastcc ptr @decode_fixed_type(i8 noundef zeroext %0) unnamed_addr #10 {
bb.a:
  %switch.tableidx = xor i8 %0, -128              ; 2 uses
  %i.a = icmp ult i8 %switch.tableidx, -11
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.decode_fixed_type, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.05 = phi ptr [ %switch.load, %switch.lookup ], [ null, %bb.a ]
  ret ptr %.05
}

; Function Attrs: null_pointer_is_valid
declare i32 @proto_registrar_get_ftype(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define internal noundef i32 @dissect_amqp_1_0_skip(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i32 %2, i32 %3, ptr nofree readnone captures(none) %4, i32 %5) #10 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) uwtable
define internal noundef i32 @format_amqp_1_0_null(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i32 %2, i32 %3, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %4) #11 {
bb.a:
  store ptr @.str.1577, ptr %4, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_amqp_1_0_true(ptr noundef %0, ptr nofree readnone captures(none) %1, i32 noundef %2, i32 %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = add i32 %2, -1
  %i.b = tail call ptr @proto_tree_add_boolean(ptr noundef %4, i32 noundef %5, ptr noundef %0, i32 noundef %i.a, i32 noundef 1, i64 noundef 1) ; 0 uses
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) uwtable
define internal noundef i32 @format_amqp_1_0_boolean_true(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i32 %2, i32 %3, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %4) #11 {
bb.a:
  store ptr @.str.1517, ptr %4, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_amqp_1_0_false(ptr noundef %0, ptr nofree readnone captures(none) %1, i32 noundef %2, i32 %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = add i32 %2, -1
  %i.b = tail call ptr @proto_tree_add_boolean(ptr noundef %4, i32 noundef %5, ptr noundef %0, i32 noundef %i.a, i32 noundef 1, i64 noundef 0) ; 0 uses
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) uwtable
define internal noundef i32 @format_amqp_1_0_boolean_false(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i32 %2, i32 %3, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %4) #11 {
bb.a:
  store ptr @.str.1518, ptr %4, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_amqp_1_0_fixed(ptr noundef %0, ptr nofree readnone captures(none) %1, i32 noundef %2, i32 noundef returned %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = tail call ptr @proto_tree_add_item(ptr noundef %4, i32 noundef %5, ptr noundef %0, i32 noundef %2, i32 noundef %3, i32 noundef 0) ; 0 uses
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @format_amqp_1_0_boolean(ptr noundef %0, ptr nofree readnone captures(none) %1, i32 noundef %2, i32 %3, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %4) #0 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %2)
  %.not = icmp eq i8 %i.a, 0
  %i.b = select i1 %.not, ptr @.str.1518, ptr @.str.1517
  store ptr %i.b, ptr %4, align 8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @format_amqp_1_0_uint(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef returned %3, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %4) #0 {
bb.a:
  switch i32 %3, label %bb.f [
    i32 0, label %bb.g
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 4, label %bb.d
    i32 8, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %2)
  %i.b = zext i8 %i.a to i64
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.c = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %2)
  %i.d = zext i16 %i.c to i64
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.e = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %2)
  %i.f = zext i32 %i.e to i64
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.g = tail call i64 @tvb_get_ntoh64(ptr noundef %0, i32 noundef %2)
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %1, i64 416
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.i, ptr noundef nonnull @.str.1515, i32 noundef %3)
  br label %bb.h

bb.g:                                             ; preds = %bb.a, %bb.b, %bb.d, %bb.e, %bb.c
  %.0 = phi i64 [ %i.g, %bb.e ], [ %i.b, %bb.b ], [ %i.d, %bb.c ], [ %i.f, %bb.d ], [ 0, %bb.a ]
  %i.k = getelementptr i8, ptr %1, i64 416
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.l, ptr noundef nonnull @.str.1578, i64 noundef %.0)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %storemerge = phi ptr [ %i.j, %bb.f ], [ %i.m, %bb.g ]
  store ptr %storemerge, ptr %4, align 8
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_amqp_1_0_zero(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = tail call i32 @proto_registrar_get_ftype(i32 noundef %5)
  switch i32 %i.a, label %bb.f [
    i32 4, label %bb.b
    i32 5, label %bb.b
    i32 6, label %bb.b
    i32 7, label %bb.b
    i32 8, label %bb.c
    i32 9, label %bb.c
    i32 10, label %bb.c
    i32 11, label %bb.c
    i32 12, label %bb.d
    i32 13, label %bb.d
    i32 14, label %bb.d
    i32 15, label %bb.d
    i32 16, label %bb.e
    i32 17, label %bb.e
    i32 18, label %bb.e
    i32 19, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.b = add i32 %2, -1
  %i.c = tail call ptr @proto_tree_add_uint(ptr noundef %4, i32 noundef %5, ptr noundef %0, i32 noundef %i.b, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.g

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.d = add i32 %2, -1
  %i.e = tail call ptr @proto_tree_add_uint64(ptr noundef %4, i32 noundef %5, ptr noundef %0, i32 noundef %i.d, i32 noundef 1, i64 noundef 0) ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.f = add i32 %2, -1
  %i.g = tail call ptr @proto_tree_add_int(ptr noundef %4, i32 noundef %5, ptr noundef %0, i32 noundef %i.f, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.h = add i32 %2, -1
  %i.i = tail call ptr @proto_tree_add_int64(ptr noundef %4, i32 noundef %5, ptr noundef %0, i32 noundef %i.h, i32 noundef 1, i64 noundef 0) ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.j = tail call ptr @proto_registrar_get_name(i32 noundef %5)
  %i.k = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %4, ptr noundef nonnull @ei_amqp_unknown_amqp_type, ptr noundef nonnull @.str.1579, i32 noundef %2, ptr noundef %i.j) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i32 0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @format_amqp_1_0_int(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef returned %3, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %4) #0 {
bb.a:
  %i.a = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %3)
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %.split, label %bb.f

.split:                                           ; preds = %bb.a
  %i.c = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %3, i1 true)
  switch i32 %i.c, label %bb.f [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %.split
  %i.d = tail call signext i8 @tvb_get_int8(ptr noundef %0, i32 noundef %2)
  %i.e = sext i8 %i.d to i64
  br label %bb.g

bb.c:                                             ; preds = %.split
  %i.f = tail call signext i16 @tvb_get_ntohis(ptr noundef %0, i32 noundef %2)
  %i.g = sext i16 %i.f to i64
  br label %bb.g

bb.d:                                             ; preds = %.split
end_hunk_1

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-scsi?download=true
inline.NumInlined: 31
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
@.str.1427 = private unnamed_addr constant [28 x i8] c"Grown Defect List Not Found\00", align 1
@.str.1428 = private unnamed_addr constant [35 x i8] c"Miscompare During Verify Operation\00", align 1
@.str.1429 = private unnamed_addr constant [33 x i8] c"Recovered Id With Ecc Correction\00", align 1
@.str.1430 = private unnamed_addr constant [21 x i8] c"Defect List Transfer\00", align 1
@.str.1431 = private unnamed_addr constant [31 x i8] c"Invalid Command Operation Code\00", align 1
@.str.1432 = private unnamed_addr constant [35 x i8] c"Logical Block Address Out Of Range\00", align 1
@.str.1433 = private unnamed_addr constant [24 x i8] c"Invalid Element Address\00", align 1
@.str.1434 = private unnamed_addr constant [21 x i8] c"Invalid Field In Cdb\00", align 1
@.str.1435 = private unnamed_addr constant [21 x i8] c"Cdb Decryption Error\00", align 1
@.str.1436 = private unnamed_addr constant [27 x i8] c"Logical Unit Not Supported\00", align 1
@.str.1437 = private unnamed_addr constant [32 x i8] c"Invalid Field In Parameter List\00", align 1
@.str.1438 = private unnamed_addr constant [24 x i8] c"Parameter Not Supported\00", align 1
@.str.1439 = private unnamed_addr constant [24 x i8] c"Parameter Value Invalid\00", align 1
@.str.1440 = private unnamed_addr constant [35 x i8] c"Threshold Parameters Not Supported\00", align 1
@.str.1441 = private unnamed_addr constant [42 x i8] c"Invalid Release Of Persistent Reservation\00", align 1
@.str.1442 = private unnamed_addr constant [22 x i8] c"Data Decryption Error\00", align 1
@.str.1443 = private unnamed_addr constant [28 x i8] c"Too Many Target Descriptors\00", align 1
@.str.1444 = private unnamed_addr constant [40 x i8] c"Unsupported Target Descriptor Type Code\00", align 1
@.str.1445 = private unnamed_addr constant [29 x i8] c"Too Many Segment Descriptors\00", align 1
@.str.1446 = private unnamed_addr constant [41 x i8] c"Unsupported Segment Descriptor Type Code\00", align 1
@.str.1447 = private unnamed_addr constant [27 x i8] c"Unexpected Inexact Segment\00", align 1
@.str.1448 = private unnamed_addr constant [28 x i8] c"Inline Data Length Exceeded\00", align 1
@.str.1449 = private unnamed_addr constant [49 x i8] c"Invalid Operation For Copy Source Or Destination\00", align 1
@.str.1450 = private unnamed_addr constant [35 x i8] c"Copy Segment Granularity Violation\00", align 1
@.str.1451 = private unnamed_addr constant [16 x i8] c"Write Protected\00", align 1
@.str.1452 = private unnamed_addr constant [25 x i8] c"Hardware Write Protected\00", align 1
@.str.1453 = private unnamed_addr constant [38 x i8] c"Logical Unit Software Write Protected\00", align 1
@.str.1454 = private unnamed_addr constant [51 x i8] c"Not Ready To Ready Change, Medium May Have Changed\00", align 1
@.str.1455 = private unnamed_addr constant [34 x i8] c"Import Or Export Element Accessed\00", align 1
@.str.1456 = private unnamed_addr constant [46 x i8] c"Power On, Reset, Or Bus Device Reset Occurred\00", align 1
@.str.1457 = private unnamed_addr constant [18 x i8] c"Power On Occurred\00", align 1
@.str.1458 = private unnamed_addr constant [24 x i8] c"Scsi Bus Reset Occurred\00", align 1
@.str.1459 = private unnamed_addr constant [35 x i8] c"Bus Device Reset Function Occurred\00", align 1
@.str.1460 = private unnamed_addr constant [22 x i8] c"Device Internal Reset\00", align 1
@.str.1461 = private unnamed_addr constant [41 x i8] c"Transceiver Mode Changed To Single-Ended\00", align 1
@.str.1462 = private unnamed_addr constant [32 x i8] c"Transceiver Mode Changed To Lvd\00", align 1
@.str.1463 = private unnamed_addr constant [19 x i8] c"Parameters Changed\00", align 1
@.str.1464 = private unnamed_addr constant [24 x i8] c"Mode Parameters Changed\00", align 1
@.str.1465 = private unnamed_addr constant [23 x i8] c"Log Parameters Changed\00", align 1
@.str.1466 = private unnamed_addr constant [23 x i8] c"Reservations Preempted\00", align 1
@.str.1467 = private unnamed_addr constant [22 x i8] c"Reservations Released\00", align 1
@.str.1468 = private unnamed_addr constant [24 x i8] c"Registrations Preempted\00", align 1
@.str.1469 = private unnamed_addr constant [49 x i8] c"Copy Cannot Execute Since Host Cannot Disconnect\00", align 1
@.str.1470 = private unnamed_addr constant [23 x i8] c"Command Sequence Error\00", align 1
@.str.1471 = private unnamed_addr constant [46 x i8] c"Partition or Collection Contains User Objects\00", align 1
@.str.1472 = private unnamed_addr constant [38 x i8] c"Commands Cleared By Another Initiator\00", align 1
@.str.1473 = private unnamed_addr constant [30 x i8] c"Incompatible Medium Installed\00", align 1
@.str.1474 = private unnamed_addr constant [36 x i8] c"Cannot Read Medium - Unknown Format\00", align 1
@.str.1475 = private unnamed_addr constant [41 x i8] c"Cannot Read Medium - Incompatible Format\00", align 1
@.str.1476 = private unnamed_addr constant [29 x i8] c"Cleaning Cartridge Installed\00", align 1
@.str.1477 = private unnamed_addr constant [37 x i8] c"Cannot Write Medium - Unknown Format\00", align 1
@.str.1478 = private unnamed_addr constant [42 x i8] c"Cannot Write Medium - Incompatible Format\00", align 1
@.str.1479 = private unnamed_addr constant [43 x i8] c"Cannot Format Medium - Incompatible Medium\00", align 1
@.str.1480 = private unnamed_addr constant [17 x i8] c"Cleaning Failure\00", align 1
@.str.1481 = private unnamed_addr constant [24 x i8] c"Medium Format Corrupted\00", align 1
@.str.1482 = private unnamed_addr constant [22 x i8] c"Format Command Failed\00", align 1
@.str.1483 = private unnamed_addr constant [35 x i8] c"No Defect Spare Location Available\00", align 1
@.str.1484 = private unnamed_addr constant [27 x i8] c"Defect List Update Failure\00", align 1
@.str.1485 = private unnamed_addr constant [18 x i8] c"Enclosure Failure\00", align 1
@.str.1486 = private unnamed_addr constant [27 x i8] c"Enclosure Services Failure\00", align 1
@.str.1487 = private unnamed_addr constant [31 x i8] c"Unsupported Enclosure Function\00", align 1
@.str.1488 = private unnamed_addr constant [31 x i8] c"Enclosure Services Unavailable\00", align 1
@.str.1489 = private unnamed_addr constant [36 x i8] c"Enclosure Services Transfer Failure\00", align 1
@.str.1490 = private unnamed_addr constant [36 x i8] c"Enclosure Services Transfer Refused\00", align 1
@.str.1491 = private unnamed_addr constant [18 x i8] c"Rounded Parameter\00", align 1
@.str.1492 = private unnamed_addr constant [41 x i8] c"Thin Provisioning Soft Threshold Reached\00", align 1
@.str.1493 = private unnamed_addr constant [32 x i8] c"Saving Parameters Not Supported\00", align 1
@.str.1494 = private unnamed_addr constant [19 x i8] c"Medium Not Present\00", align 1
@.str.1495 = private unnamed_addr constant [33 x i8] c"Medium Not Present - Tray Closed\00", align 1
@.str.1496 = private unnamed_addr constant [31 x i8] c"Medium Not Present - Tray Open\00", align 1
@.str.1497 = private unnamed_addr constant [30 x i8] c"Medium Not Present - Loadable\00", align 1
@.str.1498 = private unnamed_addr constant [56 x i8] c"Medium Not Present - Medium Auxiliary Memory Accessible\00", align 1
@.str.1499 = private unnamed_addr constant [32 x i8] c"Medium Destination Element Full\00", align 1
@.str.1500 = private unnamed_addr constant [28 x i8] c"Medium Source Element Empty\00", align 1
@.str.1501 = private unnamed_addr constant [31 x i8] c"Medium Magazine Not Accessible\00", align 1
@.str.1502 = private unnamed_addr constant [24 x i8] c"Medium Magazine Removed\00", align 1
@.str.1503 = private unnamed_addr constant [25 x i8] c"Medium Magazine Inserted\00", align 1
@.str.1504 = private unnamed_addr constant [23 x i8] c"Medium Magazine Locked\00", align 1
@.str.1505 = private unnamed_addr constant [25 x i8] c"Medium Magazine Unlocked\00", align 1
@.str.1506 = private unnamed_addr constant [33 x i8] c"Invalid Bits In Identify Message\00", align 1
@.str.1507 = private unnamed_addr constant [41 x i8] c"Logical Unit Has Not Self-Configured Yet\00", align 1
@.str.1508 = private unnamed_addr constant [21 x i8] c"Logical Unit Failure\00", align 1
@.str.1509 = private unnamed_addr constant [24 x i8] c"Timeout On Logical Unit\00", align 1
@.str.1510 = private unnamed_addr constant [30 x i8] c"Logical Unit Failed Self-Test\00", align 1
@.str.1511 = private unnamed_addr constant [44 x i8] c"Logical Unit Unable To Update Self-Test Log\00", align 1
@.str.1512 = private unnamed_addr constant [41 x i8] c"Target Operating Conditions Have Changed\00", align 1
@.str.1513 = private unnamed_addr constant [27 x i8] c"Microcode Has Been Changed\00", align 1
@.str.1514 = private unnamed_addr constant [29 x i8] c"Changed Operating Definition\00", align 1
@.str.1515 = private unnamed_addr constant [25 x i8] c"Inquiry Data Has Changed\00", align 1
@.str.1516 = private unnamed_addr constant [26 x i8] c"Component Device Attached\00", align 1
@.str.1517 = private unnamed_addr constant [26 x i8] c"Device Identifier Changed\00", align 1
@.str.1518 = private unnamed_addr constant [37 x i8] c"Redundancy Group Created Or Modified\00", align 1
@.str.1519 = private unnamed_addr constant [25 x i8] c"Redundancy Group Deleted\00", align 1
@.str.1520 = private unnamed_addr constant [26 x i8] c"Spare Created Or Modified\00", align 1
@.str.1521 = private unnamed_addr constant [14 x i8] c"Spare Deleted\00", align 1
@.str.1522 = private unnamed_addr constant [31 x i8] c"Volume Set Created Or Modified\00", align 1
@.str.1523 = private unnamed_addr constant [19 x i8] c"Volume Set Deleted\00", align 1
@.str.1524 = private unnamed_addr constant [22 x i8] c"Volume Set Deassigned\00", align 1
@.str.1525 = private unnamed_addr constant [22 x i8] c"Volume Set Reassigned\00", align 1
@.str.1526 = private unnamed_addr constant [31 x i8] c"Reported Luns Data Has Changed\00", align 1
@.str.1527 = private unnamed_addr constant [24 x i8] c"Echo Buffer Overwritten\00", align 1
@.str.1528 = private unnamed_addr constant [16 x i8] c"Medium Loadable\00", align 1
@.str.1529 = private unnamed_addr constant [35 x i8] c"Medium Auxiliary Memory Accessible\00", align 1
@.str.1530 = private unnamed_addr constant [37 x i8] c"Self-Test Failure (Should Use 40 Nn)\00", align 1
@.str.1531 = private unnamed_addr constant [14 x i8] c"Message Error\00", align 1
@.str.1532 = private unnamed_addr constant [24 x i8] c"Internal Target Failure\00", align 1
@.str.1533 = private unnamed_addr constant [27 x i8] c"Select Or Reselect Failure\00", align 1
@.str.1534 = private unnamed_addr constant [24 x i8] c"Unsuccessful Soft Reset\00", align 1
@.str.1535 = private unnamed_addr constant [18 x i8] c"Scsi Parity Error\00", align 1
@.str.1536 = private unnamed_addr constant [30 x i8] c"Data Phase Crc Error Detected\00", align 1
@.str.1537 = private unnamed_addr constant [48 x i8] c"Scsi Parity Error Detected During St Data Phase\00", align 1
@.str.1538 = private unnamed_addr constant [36 x i8] c"Information Unit Crc Error Detected\00", align 1
@.str.1539 = private unnamed_addr constant [51 x i8] c"Asynchronous Information Protection Error Detected\00", align 1
@.str.1540 = private unnamed_addr constant [42 x i8] c"Initiator Detected Error Message Received\00", align 1
@.str.1541 = private unnamed_addr constant [22 x i8] c"Invalid Message Error\00", align 1
@.str.1542 = private unnamed_addr constant [20 x i8] c"Command Phase Error\00", align 1
@.str.1543 = private unnamed_addr constant [17 x i8] c"Data Phase Error\00", align 1
@.str.1544 = private unnamed_addr constant [39 x i8] c"Logical Unit Failed Self-Configuration\00", align 1
@.str.1545 = private unnamed_addr constant [44 x i8] c"Tagged Overlapped Commands (Nn = Queue Tag)\00", align 1
@.str.1546 = private unnamed_addr constant [30 x i8] c"Overlapped Commands Attempted\00", align 1
@.str.1547 = private unnamed_addr constant [27 x i8] c"Media Load Or Eject Failed\00", align 1
@.str.1548 = private unnamed_addr constant [25 x i8] c"Medium Removal Prevented\00", align 1
@.str.1549 = private unnamed_addr constant [19 x i8] c"System Buffer Full\00", align 1
@.str.1550 = private unnamed_addr constant [35 x i8] c"Insufficient Reservation Resources\00", align 1
@.str.1551 = private unnamed_addr constant [23 x i8] c"Insufficient Resources\00", align 1
@.str.1552 = private unnamed_addr constant [36 x i8] c"Insufficient Registration Resources\00", align 1
@.str.1553 = private unnamed_addr constant [39 x i8] c"Operator Request Or State Change Input\00", align 1
@.str.1554 = private unnamed_addr constant [32 x i8] c"Operator Medium Removal Request\00", align 1
@.str.1555 = private unnamed_addr constant [32 x i8] c"Operator Selected Write Protect\00", align 1
@.str.1556 = private unnamed_addr constant [31 x i8] c"Operator Selected Write Permit\00", align 1
@.str.1557 = private unnamed_addr constant [14 x i8] c"Log Exception\00", align 1
@.str.1558 = private unnamed_addr constant [24 x i8] c"Threshold Condition Met\00", align 1
@.str.1559 = private unnamed_addr constant [23 x i8] c"Log Counter At Maximum\00", align 1
@.str.1560 = private unnamed_addr constant [25 x i8] c"Log List Codes Exhausted\00", align 1
@.str.1561 = private unnamed_addr constant [7 x i8] c"Change\00", align 1
@.str.1562 = private unnamed_addr constant [13 x i8] c"Synchronized\00", align 1
@.str.1563 = private unnamed_addr constant [38 x i8] c"Failure Prediction Threshold Exceeded\00", align 1
@.str.1564 = private unnamed_addr constant [35 x i8] c"Failure General Hard Drive Failure\00", align 1
@.str.1565 = private unnamed_addr constant [34 x i8] c"Failure Drive Error Rate Too High\00", align 1
@.str.1566 = private unnamed_addr constant [33 x i8] c"Failure Data Error Rate Too High\00", align 1
@.str.1567 = private unnamed_addr constant [33 x i8] c"Failure Seek Error Rate Too High\00", align 1
@.str.1568 = private unnamed_addr constant [33 x i8] c"Failure Too Many Block Reassigns\00", align 1
@.str.1569 = private unnamed_addr constant [30 x i8] c"Failure Access Times Too High\00", align 1
@.str.1570 = private unnamed_addr constant [34 x i8] c"Failure Start Unit Times Too High\00", align 1
@.str.1571 = private unnamed_addr constant [28 x i8] c"Failure Channel Parametrics\00", align 1
@.str.1572 = private unnamed_addr constant [28 x i8] c"Failure Controller Detected\00", align 1
@.str.1573 = private unnamed_addr constant [31 x i8] c"Failure Throughput Performance\00", align 1
@.str.1574 = private unnamed_addr constant [30 x i8] c"Failure Seek Time Performance\00", align 1
@.str.1575 = private unnamed_addr constant [28 x i8] c"Failure Spin-Up Retry Count\00", align 1
@.str.1576 = private unnamed_addr constant [32 x i8] c"Failure Drive Calibration Retry\00", align 1
@.str.1577 = private unnamed_addr constant [37 x i8] c"Impending Failure General Hard Drive\00", align 1
@.str.1578 = private unnamed_addr constant [44 x i8] c"Impending Failure Drive Error Rate Too High\00", align 1
@.str.1579 = private unnamed_addr constant [43 x i8] c"Impending Failure Data Error Rate Too High\00", align 1
@.str.1580 = private unnamed_addr constant [43 x i8] c"Impending Failure Seek Error Rate Too High\00", align 1
@.str.1581 = private unnamed_addr constant [43 x i8] c"Impending Failure Too Many Block Reassigns\00", align 1
@.str.1582 = private unnamed_addr constant [40 x i8] c"Impending Failure Access Times Too High\00", align 1
@.str.1583 = private unnamed_addr constant [44 x i8] c"Impending Failure Start Unit Times Too High\00", align 1
@.str.1584 = private unnamed_addr constant [38 x i8] c"Impending Failure Channel Parametrics\00", align 1
@.str.1585 = private unnamed_addr constant [38 x i8] c"Impending Failure Controller Detected\00", align 1
@.str.1586 = private unnamed_addr constant [41 x i8] c"Impending Failure Throughput Performance\00", align 1
@.str.1587 = private unnamed_addr constant [40 x i8] c"Impending Failure Seek Time Performance\00", align 1
@.str.1588 = private unnamed_addr constant [38 x i8] c"Impending Failure Spin-Up Retry Count\00", align 1
@.str.1589 = private unnamed_addr constant [42 x i8] c"Impending Failure Drive Calibration Retry\00", align 1
@.str.1590 = private unnamed_addr constant [38 x i8] c"Failure Drive Calibration Retry Count\00", align 1
@.str.1591 = private unnamed_addr constant [46 x i8] c"Failure Prediction Threshold Exceeded (False)\00", align 1
@.str.1592 = private unnamed_addr constant [23 x i8] c"Low Power Condition On\00", align 1
@.str.1593 = private unnamed_addr constant [34 x i8] c"Idle Condition Activated By Timer\00", align 1
@.str.1594 = private unnamed_addr constant [37 x i8] c"Standby Condition Activated By Timer\00", align 1
@.str.1595 = private unnamed_addr constant [36 x i8] c"Idle Condition Activated By Command\00", align 1
@.str.1596 = private unnamed_addr constant [39 x i8] c"Standby Condition Activated By Command\00", align 1
@.str.1597 = private unnamed_addr constant [14 x i8] c"Voltage Fault\00", align 1
@scsi_asc_val = internal constant [322 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.1328 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.1329 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.1330 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.1331 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.1332 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.1333 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.1334 }, { i32, [4 x i8], ptr } { i32 22, [4 x i8] zeroinitializer, ptr @.str.1335 }, { i32, [4 x i8], ptr } { i32 23, [4 x i8] zeroinitializer, ptr @.str.1336 }, { i32, [4 x i8], ptr } { i32 24, [4 x i8] zeroinitializer, ptr @.str.1337 }, { i32, [4 x i8], ptr } { i32 25, [4 x i8] zeroinitializer, ptr @.str.1338 }, { i32, [4 x i8], ptr } { i32 26, [4 x i8] zeroinitializer, ptr @.str.1339 }, { i32, [4 x i8], ptr } { i32 27, [4 x i8] zeroinitializer, ptr @.str.1340 }, { i32, [4 x i8], ptr } { i32 28, [4 x i8] zeroinitializer, ptr @.str.1341 }, { i32, [4 x i8], ptr } { i32 256, [4 x i8] zeroinitializer, ptr @.str.1342 }, { i32, [4 x i8], ptr } { i32 512, [4 x i8] zeroinitializer, ptr @.str.1343 }, { i32, [4 x i8], ptr } { i32 768, [4 x i8] zeroinitializer, ptr @.str.1344 }, { i32, [4 x i8], ptr } { i32 1024, [4 x i8] zeroinitializer, ptr @.str.1345 }, { i32, [4 x i8], ptr } { i32 1025, [4 x i8] zeroinitializer, ptr @.str.1346 }, { i32, [4 x i8], ptr } { i32 1026, [4 x i8] zeroinitializer, ptr @.str.1347 }, { i32, [4 x i8], ptr } { i32 1027, [4 x i8] zeroinitializer, ptr @.str.1348 }, { i32, [4 x i8], ptr } { i32 1028, [4 x i8] zeroinitializer, ptr @.str.1349 }, { i32, [4 x i8], ptr } { i32 1029, [4 x i8] zeroinitializer, ptr @.str.1350 }, { i32, [4 x i8], ptr } { i32 1030, [4 x i8] zeroinitializer, ptr @.str.1351 }, { i32, [4 x i8], ptr } { i32 1031, [4 x i8] zeroinitializer, ptr @.str.1352 }, { i32, [4 x i8], ptr } { i32 1033, [4 x i8] zeroinitializer, ptr @.str.1353 }, { i32, [4 x i8], ptr } { i32 1280, [4 x i8] zeroinitializer, ptr @.str.1354 }, { i32, [4 x i8], ptr } { i32 1536, [4 x i8] zeroinitializer, ptr @.str.1355 }, { i32, [4 x i8], ptr } { i32 1792, [4 x i8] zeroinitializer, ptr @.str.1356 }, { i32, [4 x i8], ptr } { i32 2048, [4 x i8] zeroinitializer, ptr @.str.1357 }, { i32, [4 x i8], ptr } { i32 2049, [4 x i8] zeroinitializer, ptr @.str.1358 }, { i32, [4 x i8], ptr } { i32 2050, [4 x i8] zeroinitializer, ptr @.str.1359 }, { i32, [4 x i8], ptr } { i32 2051, [4 x i8] zeroinitializer, ptr @.str.1360 }, { i32, [4 x i8], ptr } { i32 2052, [4 x i8] zeroinitializer, ptr @.str.1361 }, { i32, [4 x i8], ptr } { i32 2304, [4 x i8] zeroinitializer, ptr @.str.1362 }, { i32, [4 x i8], ptr } { i32 2308, [4 x i8] zeroinitializer, ptr @.str.1363 }, { i32, [4 x i8], ptr } { i32 2560, [4 x i8] zeroinitializer, ptr @.str.1364 }, { i32, [4 x i8], ptr } { i32 2816, [4 x i8] zeroinitializer, ptr @.str.1365 }, { i32, [4 x i8], ptr } { i32 2817, [4 x i8] zeroinitializer, ptr @.str.1366 }, { i32, [4 x i8], ptr } { i32 2818, [4 x i8] zeroinitializer, ptr @.str.1367 }, { i32, [4 x i8], ptr } { i32 3074, [4 x i8] zeroinitializer, ptr @.str.1368 }, { i32, [4 x i8], ptr } { i32 3075, [4 x i8] zeroinitializer, ptr @.str.1369 }, { i32, [4 x i8], ptr } { i32 3076, [4 x i8] zeroinitializer, ptr @.str.1370 }, { i32, [4 x i8], ptr } { i32 3077, [4 x i8] zeroinitializer, ptr @.str.1371 }, { i32, [4 x i8], ptr } { i32 3078, [4 x i8] zeroinitializer, ptr @.str.1372 }, { i32, [4 x i8], ptr } { i32 3328, [4 x i8] zeroinitializer, ptr @.str.1373 }, { i32, [4 x i8], ptr } { i32 3329, [4 x i8] zeroinitializer, ptr @.str.1374 }, { i32, [4 x i8], ptr } { i32 3330, [4 x i8] zeroinitializer, ptr @.str.1375 }, { i32, [4 x i8], ptr } { i32 3331, [4 x i8] zeroinitializer, ptr @.str.1376 }, { i32, [4 x i8], ptr } { i32 3332, [4 x i8] zeroinitializer, ptr @.str.1377 }, { i32, [4 x i8], ptr } { i32 3333, [4 x i8] zeroinitializer, ptr @.str.1378 }, { i32, [4 x i8], ptr } { i32 4096, [4 x i8] zeroinitializer, ptr @.str.1379 }, { i32, [4 x i8], ptr } { i32 4352, [4 x i8] zeroinitializer, ptr @.str.1380 }, { i32, [4 x i8], ptr } { i32 4353, [4 x i8] zeroinitializer, ptr @.str.1381 }, { i32, [4 x i8], ptr } { i32 4354, [4 x i8] zeroinitializer, ptr @.str.1382 }, { i32, [4 x i8], ptr } { i32 4355, [4 x i8] zeroinitializer, ptr @.str.1383 }, { i32, [4 x i8], ptr } { i32 4356, [4 x i8] zeroinitializer, ptr @.str.1384 }, { i32, [4 x i8], ptr } { i32 4362, [4 x i8] zeroinitializer, ptr @.str.1385 }, { i32, [4 x i8], ptr } { i32 4363, [4 x i8] zeroinitializer, ptr @.str.1386 }, { i32, [4 x i8], ptr } { i32 4364, [4 x i8] zeroinitializer, ptr @.str.1387 }, { i32, [4 x i8], ptr } { i32 4365, [4 x i8] zeroinitializer, ptr @.str.1388 }, { i32, [4 x i8], ptr } { i32 4366, [4 x i8] zeroinitializer, ptr @.str.1389 }, { i32, [4 x i8], ptr } { i32 4608, [4 x i8] zeroinitializer, ptr @.str.1390 }, { i32, [4 x i8], ptr } { i32 4864, [4 x i8] zeroinitializer, ptr @.str.1391 }, { i32, [4 x i8], ptr } { i32 5120, [4 x i8] zeroinitializer, ptr @.str.1392 }, { i32, [4 x i8], ptr } { i32 5121, [4 x i8] zeroinitializer, ptr @.str.1393 }, { i32, [4 x i8], ptr } { i32 5125, [4 x i8] zeroinitializer, ptr @.str.1394 }, { i32, [4 x i8], ptr } { i32 5126, [4 x i8] zeroinitializer, ptr @.str.1395 }, { i32, [4 x i8], ptr } { i32 5376, [4 x i8] zeroinitializer, ptr @.str.1396 }, { i32, [4 x i8], ptr } { i32 5377, [4 x i8] zeroinitializer, ptr @.str.1397 }, { i32, [4 x i8], ptr } { i32 5378, [4 x i8] zeroinitializer, ptr @.str.1398 }, { i32, [4 x i8], ptr } { i32 5632, [4 x i8] zeroinitializer, ptr @.str.1399 }, { i32, [4 x i8], ptr } { i32 5633, [4 x i8] zeroinitializer, ptr @.str.1400 }, { i32, [4 x i8], ptr } { i32 5634, [4 x i8] zeroinitializer, ptr @.str.1401 }, { i32, [4 x i8], ptr } { i32 5635, [4 x i8] zeroinitializer, ptr @.str.1402 }, { i32, [4 x i8], ptr } { i32 5636, [4 x i8] zeroinitializer, ptr @.str.1403 }, { i32, [4 x i8], ptr } { i32 5888, [4 x i8] zeroinitializer, ptr @.str.1404 }, { i32, [4 x i8], ptr } { i32 5889, [4 x i8] zeroinitializer, ptr @.str.1405 }, { i32, [4 x i8], ptr } { i32 5890, [4 x i8] zeroinitializer, ptr @.str.1406 }, { i32, [4 x i8], ptr } { i32 5891, [4 x i8] zeroinitializer, ptr @.str.1407 }, { i32, [4 x i8], ptr } { i32 5893, [4 x i8] zeroinitializer, ptr @.str.1408 }, { i32, [4 x i8], ptr } { i32 5894, [4 x i8] zeroinitializer, ptr @.str.1409 }, { i32, [4 x i8], ptr } { i32 5895, [4 x i8] zeroinitializer, ptr @.str.1410 }, { i32, [4 x i8], ptr } { i32 5896, [4 x i8] zeroinitializer, ptr @.str.1411 }, { i32, [4 x i8], ptr } { i32 5897, [4 x i8] zeroinitializer, ptr @.str.1412 }, { i32, [4 x i8], ptr } { i32 6144, [4 x i8] zeroinitializer, ptr @.str.1413 }, { i32, [4 x i8], ptr } { i32 6145, [4 x i8] zeroinitializer, ptr @.str.1414 }, { i32, [4 x i8], ptr } { i32 6146, [4 x i8] zeroinitializer, ptr @.str.1415 }, { i32, [4 x i8], ptr } { i32 6149, [4 x i8] zeroinitializer, ptr @.str.1416 }, { i32, [4 x i8], ptr } { i32 6150, [4 x i8] zeroinitializer, ptr @.str.1417 }, { i32, [4 x i8], ptr } { i32 6151, [4 x i8] zeroinitializer, ptr @.str.1418 }, { i32, [4 x i8], ptr } { i32 6400, [4 x i8] zeroinitializer, ptr @.str.1419 }, { i32, [4 x i8], ptr } { i32 6401, [4 x i8] zeroinitializer, ptr @.str.1420 }, { i32, [4 x i8], ptr } { i32 6402, [4 x i8] zeroinitializer, ptr @.str.1421 }, { i32, [4 x i8], ptr } { i32 6403, [4 x i8] zeroinitializer, ptr @.str.1422 }, { i32, [4 x i8], ptr } { i32 6656, [4 x i8] zeroinitializer, ptr @.str.1423 }, { i32, [4 x i8], ptr } { i32 6912, [4 x i8] zeroinitializer, ptr @.str.1424 }, { i32, [4 x i8], ptr } { i32 7168, [4 x i8] zeroinitializer, ptr @.str.1425 }, { i32, [4 x i8], ptr } { i32 7169, [4 x i8] zeroinitializer, ptr @.str.1426 }, { i32, [4 x i8], ptr } { i32 7170, [4 x i8] zeroinitializer, ptr @.str.1427 }, { i32, [4 x i8], ptr } { i32 7424, [4 x i8] zeroinitializer, ptr @.str.1428 }, { i32, [4 x i8], ptr } { i32 7680, [4 x i8] zeroinitializer, ptr @.str.1429 }, { i32, [4 x i8], ptr } { i32 7936, [4 x i8] zeroinitializer, ptr @.str.1430 }, { i32, [4 x i8], ptr } { i32 8192, [4 x i8] zeroinitializer, ptr @.str.1431 }, { i32, [4 x i8], ptr } { i32 8448, [4 x i8] zeroinitializer, ptr @.str.1432 }, { i32, [4 x i8], ptr } { i32 8449, [4 x i8] zeroinitializer, ptr @.str.1433 }, { i32, [4 x i8], ptr } { i32 9216, [4 x i8] zeroinitializer, ptr @.str.1434 }, { i32, [4 x i8], ptr } { i32 9217, [4 x i8] zeroinitializer, ptr @.str.1435 }, { i32, [4 x i8], ptr } { i32 9472, [4 x i8] zeroinitializer, ptr @.str.1436 }, { i32, [4 x i8], ptr } { i32 9728, [4 x i8] zeroinitializer, ptr @.str.1437 }, { i32, [4 x i8], ptr } { i32 9729, [4 x i8] zeroinitializer, ptr @.str.1438 }, { i32, [4 x i8], ptr } { i32 9730, [4 x i8] zeroinitializer, ptr @.str.1439 }, { i32, [4 x i8], ptr } { i32 9731, [4 x i8] zeroinitializer, ptr @.str.1440 }, { i32, [4 x i8], ptr } { i32 9732, [4 x i8] zeroinitializer, ptr @.str.1441 }, { i32, [4 x i8], ptr } { i32 9733, [4 x i8] zeroinitializer, ptr @.str.1442 }, { i32, [4 x i8], ptr } { i32 9734, [4 x i8] zeroinitializer, ptr @.str.1443 }, { i32, [4 x i8], ptr } { i32 9735, [4 x i8] zeroinitializer, ptr @.str.1444 }, { i32, [4 x i8], ptr } { i32 9736, [4 x i8] zeroinitializer, ptr @.str.1445 }, { i32, [4 x i8], ptr } { i32 9737, [4 x i8] zeroinitializer, ptr @.str.1446 }, { i32, [4 x i8], ptr } { i32 9738, [4 x i8] zeroinitializer, ptr @.str.1447 }, { i32, [4 x i8], ptr } { i32 9739, [4 x i8] zeroinitializer, ptr @.str.1448 }, { i32, [4 x i8], ptr } { i32 9740, [4 x i8] zeroinitializer, ptr @.str.1449 }, { i32, [4 x i8], ptr } { i32 9741, [4 x i8] zeroinitializer, ptr @.str.1450 }, { i32, [4 x i8], ptr } { i32 9984, [4 x i8] zeroinitializer, ptr @.str.1451 }, { i32, [4 x i8], ptr } { i32 9985, [4 x i8] zeroinitializer, ptr @.str.1452 }, { i32, [4 x i8], ptr } { i32 9986, [4 x i8] zeroinitializer, ptr @.str.1453 }, { i32, [4 x i8], ptr } { i32 10240, [4 x i8] zeroinitializer, ptr @.str.1454 }, { i32, [4 x i8], ptr } { i32 10241, [4 x i8] zeroinitializer, ptr @.str.1455 }, { i32, [4 x i8], ptr } { i32 10496, [4 x i8] zeroinitializer, ptr @.str.1456 }, { i32, [4 x i8], ptr } { i32 10497, [4 x i8] zeroinitializer, ptr @.str.1457 }, { i32, [4 x i8], ptr } { i32 10498, [4 x i8] zeroinitializer, ptr @.str.1458 }, { i32, [4 x i8], ptr } { i32 10499, [4 x i8] zeroinitializer, ptr @.str.1459 }, { i32, [4 x i8], ptr } { i32 10500, [4 x i8] zeroinitializer, ptr @.str.1460 }, { i32, [4 x i8], ptr } { i32 10501, [4 x i8] zeroinitializer, ptr @.str.1461 }, { i32, [4 x i8], ptr } { i32 10502, [4 x i8] zeroinitializer, ptr @.str.1462 }, { i32, [4 x i8], ptr } { i32 10752, [4 x i8] zeroinitializer, ptr @.str.1463 }, { i32, [4 x i8], ptr } { i32 10753, [4 x i8] zeroinitializer, ptr @.str.1464 }, { i32, [4 x i8], ptr } { i32 10754, [4 x i8] zeroinitializer, ptr @.str.1465 }, { i32, [4 x i8], ptr } { i32 10755, [4 x i8] zeroinitializer, ptr @.str.1466 }, { i32, [4 x i8], ptr } { i32 10756, [4 x i8] zeroinitializer, ptr @.str.1467 }, { i32, [4 x i8], ptr } { i32 10757, [4 x i8] zeroinitializer, ptr @.str.1468 }, { i32, [4 x i8], ptr } { i32 11008, [4 x i8] zeroinitializer, ptr @.str.1469 }, { i32, [4 x i8], ptr } { i32 11264, [4 x i8] zeroinitializer, ptr @.str.1470 }, { i32, [4 x i8], ptr } { i32 11274, [4 x i8] zeroinitializer, ptr @.str.1471 }, { i32, [4 x i8], ptr } { i32 12032, [4 x i8] zeroinitializer, ptr @.str.1472 }, { i32, [4 x i8], ptr } { i32 12288, [4 x i8] zeroinitializer, ptr @.str.1473 }, { i32, [4 x i8], ptr } { i32 12289, [4 x i8] zeroinitializer, ptr @.str.1474 }, { i32, [4 x i8], ptr } { i32 12290, [4 x i8] zeroinitializer, ptr @.str.1475 }, { i32, [4 x i8], ptr } { i32 12291, [4 x i8] zeroinitializer, ptr @.str.1476 }, { i32, [4 x i8], ptr } { i32 12292, [4 x i8] zeroinitializer, ptr @.str.1477 }, { i32, [4 x i8], ptr } { i32 12293, [4 x i8] zeroinitializer, ptr @.str.1478 }, { i32, [4 x i8], ptr } { i32 12294, [4 x i8] zeroinitializer, ptr @.str.1479 }, { i32, [4 x i8], ptr } { i32 12295, [4 x i8] zeroinitializer, ptr @.str.1480 }, { i32, [4 x i8], ptr } { i32 12544, [4 x i8] zeroinitializer, ptr @.str.1481 }, { i32, [4 x i8], ptr } { i32 12545, [4 x i8] zeroinitializer, ptr @.str.1482 }, { i32, [4 x i8], ptr } { i32 12800, [4 x i8] zeroinitializer, ptr @.str.1483 }, { i32, [4 x i8], ptr } { i32 12801, [4 x i8] zeroinitializer, ptr @.str.1484 }, { i32, [4 x i8], ptr } { i32 13312, [4 x i8] zeroinitializer, ptr @.str.1485 }, { i32, [4 x i8], ptr } { i32 13568, [4 x i8] zeroinitializer, ptr @.str.1486 }, { i32, [4 x i8], ptr } { i32 13569, [4 x i8] zeroinitializer, ptr @.str.1487 }, { i32, [4 x i8], ptr } { i32 13570, [4 x i8] zeroinitializer, ptr @.str.1488 }, { i32, [4 x i8], ptr } { i32 13571, [4 x i8] zeroinitializer, ptr @.str.1489 }, { i32, [4 x i8], ptr } { i32 13572, [4 x i8] zeroinitializer, ptr @.str.1490 }, { i32, [4 x i8], ptr } { i32 14080, [4 x i8] zeroinitializer, ptr @.str.1491 }, { i32, [4 x i8], ptr } { i32 14343, [4 x i8] zeroinitializer, ptr @.str.1492 }, { i32, [4 x i8], ptr } { i32 14592, [4 x i8] zeroinitializer, ptr @.str.1493 }, { i32, [4 x i8], ptr } { i32 14848, [4 x i8] zeroinitializer, ptr @.str.1494 }, { i32, [4 x i8], ptr } { i32 14849, [4 x i8] zeroinitializer, ptr @.str.1495 }, { i32, [4 x i8], ptr } { i32 14850, [4 x i8] zeroinitializer, ptr @.str.1496 }, { i32, [4 x i8], ptr } { i32 14851, [4 x i8] zeroinitializer, ptr @.str.1497 }, { i32, [4 x i8], ptr } { i32 14852, [4 x i8] zeroinitializer, ptr @.str.1498 }, { i32, [4 x i8], ptr } { i32 15117, [4 x i8] zeroinitializer, ptr @.str.1499 }, { i32, [4 x i8], ptr } { i32 15118, [4 x i8] zeroinitializer, ptr @.str.1500 }, { i32, [4 x i8], ptr } { i32 15121, [4 x i8] zeroinitializer, ptr @.str.1501 }, { i32, [4 x i8], ptr } { i32 15122, [4 x i8] zeroinitializer, ptr @.str.1502 }, { i32, [4 x i8], ptr } { i32 15123, [4 x i8] zeroinitializer, ptr @.str.1503 }, { i32, [4 x i8], ptr } { i32 15124, [4 x i8] zeroinitializer, ptr @.str.1504 }, { i32, [4 x i8], ptr } { i32 15125, [4 x i8] zeroinitializer, ptr @.str.1505 }, { i32, [4 x i8], ptr } { i32 15616, [4 x i8] zeroinitializer, ptr @.str.1506 }, { i32, [4 x i8], ptr } { i32 15872, [4 x i8] zeroinitializer, ptr @.str.1507 }, { i32, [4 x i8], ptr } { i32 15873, [4 x i8] zeroinitializer, ptr @.str.1508 }, { i32, [4 x i8], ptr } { i32 15874, [4 x i8] zeroinitializer, ptr @.str.1509 }, { i32, [4 x i8], ptr } { i32 15875, [4 x i8] zeroinitializer, ptr @.str.1510 }, { i32, [4 x i8], ptr } { i32 15876, [4 x i8] zeroinitializer, ptr @.str.1511 }, { i32, [4 x i8], ptr } { i32 16128, [4 x i8] zeroinitializer, ptr @.str.1512 }, { i32, [4 x i8], ptr } { i32 16129, [4 x i8] zeroinitializer, ptr @.str.1513 }, { i32, [4 x i8], ptr } { i32 16130, [4 x i8] zeroinitializer, ptr @.str.1514 }, { i32, [4 x i8], ptr } { i32 16131, [4 x i8] zeroinitializer, ptr @.str.1515 }, { i32, [4 x i8], ptr } { i32 16132, [4 x i8] zeroinitializer, ptr @.str.1516 }, { i32, [4 x i8], ptr } { i32 16133, [4 x i8] zeroinitializer, ptr @.str.1517 }, { i32, [4 x i8], ptr } { i32 16134, [4 x i8] zeroinitializer, ptr @.str.1518 }, { i32, [4 x i8], ptr } { i32 16135, [4 x i8] zeroinitializer, ptr @.str.1519 }, { i32, [4 x i8], ptr } { i32 16136, [4 x i8] zeroinitializer, ptr @.str.1520 }, { i32, [4 x i8], ptr } { i32 16137, [4 x i8] zeroinitializer, ptr @.str.1521 }, { i32, [4 x i8], ptr } { i32 16138, [4 x i8] zeroinitializer, ptr @.str.1522 }, { i32, [4 x i8], ptr } { i32 16139, [4 x i8] zeroinitializer, ptr @.str.1523 }, { i32, [4 x i8], ptr } { i32 16140, [4 x i8] zeroinitializer, ptr @.str.1524 }, { i32, [4 x i8], ptr } { i32 16141, [4 x i8] zeroinitializer, ptr @.str.1525 }, { i32, [4 x i8], ptr } { i32 16142, [4 x i8] zeroinitializer, ptr @.str.1526 }, { i32, [4 x i8], ptr } { i32 16143, [4 x i8] zeroinitializer, ptr @.str.1527 }, { i32, [4 x i8], ptr } { i32 16144, [4 x i8] zeroinitializer, ptr @.str.1528 }, { i32, [4 x i8], ptr } { i32 16145, [4 x i8] zeroinitializer, ptr @.str.1529 }, { i32, [4 x i8], ptr } { i32 16896, [4 x i8] zeroinitializer, ptr @.str.1530 }, { i32, [4 x i8], ptr } { i32 17152, [4 x i8] zeroinitializer, ptr @.str.1531 }, { i32, [4 x i8], ptr } { i32 17408, [4 x i8] zeroinitializer, ptr @.str.1532 }, { i32, [4 x i8], ptr } { i32 17664, [4 x i8] zeroinitializer, ptr @.str.1533 }, { i32, [4 x i8], ptr } { i32 17920, [4 x i8] zeroinitializer, ptr @.str.1534 }, { i32, [4 x i8], ptr } { i32 18176, [4 x i8] zeroinitializer, ptr @.str.1535 }, { i32, [4 x i8], ptr } { i32 18177, [4 x i8] zeroinitializer, ptr @.str.1536 }, { i32, [4 x i8], ptr } { i32 18178, [4 x i8] zeroinitializer, ptr @.str.1537 }, { i32, [4 x i8], ptr } { i32 18179, [4 x i8] zeroinitializer, ptr @.str.1538 }, { i32, [4 x i8], ptr } { i32 18180, [4 x i8] zeroinitializer, ptr @.str.1539 }, { i32, [4 x i8], ptr } { i32 18432, [4 x i8] zeroinitializer, ptr @.str.1540 }, { i32, [4 x i8], ptr } { i32 18688, [4 x i8] zeroinitializer, ptr @.str.1541 }, { i32, [4 x i8], ptr } { i32 18944, [4 x i8] zeroinitializer, ptr @.str.1542 }, { i32, [4 x i8], ptr } { i32 19200, [4 x i8] zeroinitializer, ptr @.str.1543 }, { i32, [4 x i8], ptr } { i32 19456, [4 x i8] zeroinitializer, ptr @.str.1544 }, { i32, [4 x i8], ptr } { i32 19712, [4 x i8] zeroinitializer, ptr @.str.1545 }, { i32, [4 x i8], ptr } { i32 19968, [4 x i8] zeroinitializer, ptr @.str.1546 }, { i32, [4 x i8], ptr } { i32 21248, [4 x i8] zeroinitializer, ptr @.str.1547 }, { i32, [4 x i8], ptr } { i32 21250, [4 x i8] zeroinitializer, ptr @.str.1548 }, { i32, [4 x i8], ptr } { i32 21761, [4 x i8] zeroinitializer, ptr @.str.1549 }, { i32, [4 x i8], ptr } { i32 21762, [4 x i8] zeroinitializer, ptr @.str.1550 }, { i32, [4 x i8], ptr } { i32 21763, [4 x i8] zeroinitializer, ptr @.str.1551 }, { i32, [4 x i8], ptr } { i32 21764, [4 x i8] zeroinitializer, ptr @.str.1552 }, { i32, [4 x i8], ptr } { i32 23040, [4 x i8] zeroinitializer, ptr @.str.1553 }, { i32, [4 x i8], ptr } { i32 23041, [4 x i8] zeroinitializer, ptr @.str.1554 }, { i32, [4 x i8], ptr } { i32 23042, [4 x i8] zeroinitializer, ptr @.str.1555 }, { i32, [4 x i8], ptr } { i32 23043, [4 x i8] zeroinitializer, ptr @.str.1556 }, { i32, [4 x i8], ptr } { i32 23296, [4 x i8] zeroinitializer, ptr @.str.1557 }, { i32, [4 x i8], ptr } { i32 23297, [4 x i8] zeroinitializer, ptr @.str.1558 }, { i32, [4 x i8], ptr } { i32 23298, [4 x i8] zeroinitializer, ptr @.str.1559 }, { i32, [4 x i8], ptr } { i32 23299, [4 x i8] zeroinitializer, ptr @.str.1560 }, { i32, [4 x i8], ptr } { i32 23552, [4 x i8] zeroinitializer, ptr @.str.1561 }, { i32, [4 x i8], ptr } { i32 23554, [4 x i8] zeroinitializer, ptr @.str.1562 }, { i32, [4 x i8], ptr } { i32 23808, [4 x i8] zeroinitializer, ptr @.str.1563 }, { i32, [4 x i8], ptr } { i32 23824, [4 x i8] zeroinitializer, ptr @.str.1564 }, { i32, [4 x i8], ptr } { i32 23825, [4 x i8] zeroinitializer, ptr @.str.1565 }, { i32, [4 x i8], ptr } { i32 23826, [4 x i8] zeroinitializer, ptr @.str.1566 }, { i32, [4 x i8], ptr } { i32 23827, [4 x i8] zeroinitializer, ptr @.str.1567 }, { i32, [4 x i8], ptr } { i32 23828, [4 x i8] zeroinitializer, ptr @.str.1568 }, { i32, [4 x i8], ptr } { i32 23829, [4 x i8] zeroinitializer, ptr @.str.1569 }, { i32, [4 x i8], ptr } { i32 23830, [4 x i8] zeroinitializer, ptr @.str.1570 }, { i32, [4 x i8], ptr } { i32 23831, [4 x i8] zeroinitializer, ptr @.str.1571 }, { i32, [4 x i8], ptr } { i32 23832, [4 x i8] zeroinitializer, ptr @.str.1572 }, { i32, [4 x i8], ptr } { i32 23833, [4 x i8] zeroinitializer, ptr @.str.1573 }, { i32, [4 x i8], ptr } { i32 23834, [4 x i8] zeroinitializer, ptr @.str.1574 }, { i32, [4 x i8], ptr } { i32 23835, [4 x i8] zeroinitializer, ptr @.str.1575 }, { i32, [4 x i8], ptr } { i32 23836, [4 x i8] zeroinitializer, ptr @.str.1576 }, { i32, [4 x i8], ptr } { i32 23840, [4 x i8] zeroinitializer, ptr @.str.1564 }, { i32, [4 x i8], ptr } { i32 23841, [4 x i8] zeroinitializer, ptr @.str.1565 }, { i32, [4 x i8], ptr } { i32 23842, [4 x i8] zeroinitializer, ptr @.str.1566 }, { i32, [4 x i8], ptr } { i32 23843, [4 x i8] zeroinitializer, ptr @.str.1567 }, { i32, [4 x i8], ptr } { i32 23844, [4 x i8] zeroinitializer, ptr @.str.1568 }, { i32, [4 x i8], ptr } { i32 23845, [4 x i8] zeroinitializer, ptr @.str.1569 }, { i32, [4 x i8], ptr } { i32 23846, [4 x i8] zeroinitializer, ptr @.str.1570 }, { i32, [4 x i8], ptr } { i32 23847, [4 x i8] zeroinitializer, ptr @.str.1571 }, { i32, [4 x i8], ptr } { i32 23848, [4 x i8] zeroinitializer, ptr @.str.1572 }, { i32, [4 x i8], ptr } { i32 23849, [4 x i8] zeroinitializer, ptr @.str.1573 }, { i32, [4 x i8], ptr } { i32 23850, [4 x i8] zeroinitializer, ptr @.str.1574 }, { i32, [4 x i8], ptr } { i32 23851, [4 x i8] zeroinitializer, ptr @.str.1575 }, { i32, [4 x i8], ptr } { i32 23852, [4 x i8] zeroinitializer, ptr @.str.1576 }, { i32, [4 x i8], ptr } { i32 23856, [4 x i8] zeroinitializer, ptr @.str.1577 }, { i32, [4 x i8], ptr } { i32 23857, [4 x i8] zeroinitializer, ptr @.str.1578 }, { i32, [4 x i8], ptr } { i32 23858, [4 x i8] zeroinitializer, ptr @.str.1579 }, { i32, [4 x i8], ptr } { i32 23859, [4 x i8] zeroinitializer, ptr @.str.1580 }, { i32, [4 x i8], ptr } { i32 23860, [4 x i8] zeroinitializer, ptr @.str.1581 }, { i32, [4 x i8], ptr } { i32 23861, [4 x i8] zeroinitializer, ptr @.str.1582 }, { i32, [4 x i8], ptr } { i32 23862, [4 x i8] zeroinitializer, ptr @.str.1583 }, { i32, [4 x i8], ptr } { i32 23863, [4 x i8] zeroinitializer, ptr @.str.1584 }, { i32, [4 x i8], ptr } { i32 23864, [4 x i8] zeroinitializer, ptr @.str.1585 }, { i32, [4 x i8], ptr } { i32 23865, [4 x i8] zeroinitializer, ptr @.str.1586 }, { i32, [4 x i8], ptr } { i32 23866, [4 x i8] zeroinitializer, ptr @.str.1587 }, { i32, [4 x i8], ptr } { i32 23867, [4 x i8] zeroinitializer, ptr @.str.1588 }, { i32, [4 x i8], ptr } { i32 23868, [4 x i8] zeroinitializer, ptr @.str.1589 }, { i32, [4 x i8], ptr } { i32 23872, [4 x i8] zeroinitializer, ptr @.str.1564 }, { i32, [4 x i8], ptr } { i32 23873, [4 x i8] zeroinitializer, ptr @.str.1565 }, { i32, [4 x i8], ptr } { i32 23874, [4 x i8] zeroinitializer, ptr @.str.1566 }, { i32, [4 x i8], ptr } { i32 23875, [4 x i8] zeroinitializer, ptr @.str.1567 }, { i32, [4 x i8], ptr } { i32 23876, [4 x i8] zeroinitializer, ptr @.str.1568 }, { i32, [4 x i8], ptr } { i32 23877, [4 x i8] zeroinitializer, ptr @.str.1569 }, { i32, [4 x i8], ptr } { i32 23878, [4 x i8] zeroinitializer, ptr @.str.1570 }, { i32, [4 x i8], ptr } { i32 23879, [4 x i8] zeroinitializer, ptr @.str.1571 }, { i32, [4 x i8], ptr } { i32 23880, [4 x i8] zeroinitializer, ptr @.str.1572 }, { i32, [4 x i8], ptr } { i32 23881, [4 x i8] zeroinitializer, ptr @.str.1573 }, { i32, [4 x i8], ptr } { i32 23882, [4 x i8] zeroinitializer, ptr @.str.1574 }, { i32, [4 x i8], ptr } { i32 23883, [4 x i8] zeroinitializer, ptr @.str.1575 }, { i32, [4 x i8], ptr } { i32 23884, [4 x i8] zeroinitializer, ptr @.str.1590 }, { i32, [4 x i8], ptr } { i32 23888, [4 x i8] zeroinitializer, ptr @.str.1564 }, { i32, [4 x i8], ptr } { i32 23889, [4 x i8] zeroinitializer, ptr @.str.1565 }, { i32, [4 x i8], ptr } { i32 23890, [4 x i8] zeroinitializer, ptr @.str.1566 }, { i32, [4 x i8], ptr } { i32 23891, [4 x i8] zeroinitializer, ptr @.str.1567 }, { i32, [4 x i8], ptr } { i32 23892, [4 x i8] zeroinitializer, ptr @.str.1568 }, { i32, [4 x i8], ptr } { i32 23893, [4 x i8] zeroinitializer, ptr @.str.1569 }, { i32, [4 x i8], ptr } { i32 23894, [4 x i8] zeroinitializer, ptr @.str.1570 }, { i32, [4 x i8], ptr } { i32 23895, [4 x i8] zeroinitializer, ptr @.str.1571 }, { i32, [4 x i8], ptr } { i32 23896, [4 x i8] zeroinitializer, ptr @.str.1572 }, { i32, [4 x i8], ptr } { i32 23897, [4 x i8] zeroinitializer, ptr @.str.1573 }, { i32, [4 x i8], ptr } { i32 23898, [4 x i8] zeroinitializer, ptr @.str.1574 }, { i32, [4 x i8], ptr } { i32 23899, [4 x i8] zeroinitializer, ptr @.str.1575 }, { i32, [4 x i8], ptr } { i32 23900, [4 x i8] zeroinitializer, ptr @.str.1590 }, { i32, [4 x i8], ptr } { i32 23904, [4 x i8] zeroinitializer, ptr @.str.1564 }, { i32, [4 x i8], ptr } { i32 23905, [4 x i8] zeroinitializer, ptr @.str.1565 }, { i32, [4 x i8], ptr } { i32 23906, [4 x i8] zeroinitializer, ptr @.str.1566 }, { i32, [4 x i8], ptr } { i32 23907, [4 x i8] zeroinitializer, ptr @.str.1567 }, { i32, [4 x i8], ptr } { i32 23908, [4 x i8] zeroinitializer, ptr @.str.1568 }, { i32, [4 x i8], ptr } { i32 23909, [4 x i8] zeroinitializer, ptr @.str.1569 }, { i32, [4 x i8], ptr } { i32 23910, [4 x i8] zeroinitializer, ptr @.str.1570 }, { i32, [4 x i8], ptr } { i32 23911, [4 x i8] zeroinitializer, ptr @.str.1571 }, { i32, [4 x i8], ptr } { i32 23912, [4 x i8] zeroinitializer, ptr @.str.1572 }, { i32, [4 x i8], ptr } { i32 23913, [4 x i8] zeroinitializer, ptr @.str.1573 }, { i32, [4 x i8], ptr } { i32 23914, [4 x i8] zeroinitializer, ptr @.str.1574 }, { i32, [4 x i8], ptr } { i32 23915, [4 x i8] zeroinitializer, ptr @.str.1575 }, { i32, [4 x i8], ptr } { i32 23916, [4 x i8] zeroinitializer, ptr @.str.1590 }, { i32, [4 x i8], ptr } { i32 24063, [4 x i8] zeroinitializer, ptr @.str.1591 }, { i32, [4 x i8], ptr } { i32 24064, [4 x i8] zeroinitializer, ptr @.str.1592 }, { i32, [4 x i8], ptr } { i32 24065, [4 x i8] zeroinitializer, ptr @.str.1593 }, { i32, [4 x i8], ptr } { i32 24066, [4 x i8] zeroinitializer, ptr @.str.1594 }, { i32, [4 x i8], ptr } { i32 24067, [4 x i8] zeroinitializer, ptr @.str.1595 }, { i32, [4 x i8], ptr } { i32 24068, [4 x i8] zeroinitializer, ptr @.str.1596 }, { i32, [4 x i8], ptr } { i32 25856, [4 x i8] zeroinitializer, ptr @.str.1597 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.1599 = private unnamed_addr constant [35 x i8] c"Supported Vital Product Data Pages\00", align 1
@.str.1600 = private unnamed_addr constant [23 x i8] c"ASCII Information Page\00", align 1
@.str.1601 = private unnamed_addr constant [24 x i8] c"Unit Serial Number Page\00", align 1
@.str.1602 = private unnamed_addr constant [38 x i8] c"Implemented Operating Definition Page\00", align 1
@.str.1603 = private unnamed_addr constant [44 x i8] c"ASCII Implemented Operating Definition Page\00", align 1
@.str.1604 = private unnamed_addr constant [27 x i8] c"Device Identification Page\00", align 1
@.str.1605 = private unnamed_addr constant [18 x i8] c"Block Limits Page\00", align 1
@.str.1606 = private unnamed_addr constant [29 x i8] c"Block Device Characteristics\00", align 1
@.str.1607 = private unnamed_addr constant [32 x i8] c"Logical Block Provisioning Page\00", align 1
@scsi_evpd_pagecode_val = internal constant [16 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.1599 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.1600 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.1600 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.1600 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.1600 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.1600 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.1600 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.1600 }, { i32, [4 x i8], ptr } { i32 128, [4 x i8] zeroinitializer, ptr @.str.1601 }, { i32, [4 x i8], ptr } { i32 129, [4 x i8] zeroinitializer, ptr @.str.1602 }, { i32, [4 x i8], ptr } { i32 130, [4 x i8] zeroinitializer, ptr @.str.1603 }, { i32, [4 x i8], ptr } { i32 131, [4 x i8] zeroinitializer, ptr @.str.1604 }, { i32, [4 x i8], ptr } { i32 176, [4 x i8] zeroinitializer, ptr @.str.1605 }, { i32, [4 x i8], ptr } { i32 177, [4 x i8] zeroinitializer, ptr @.str.1606 }, { i32, [4 x i8], ptr } { i32 178, [4 x i8] zeroinitializer, ptr @.str.1607 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.1609 = private unnamed_addr constant [14 x i8] c"Page Code: %s\00", align 1
@.str.1610 = private unnamed_addr constant [17 x i8] c"Unknown (0x%08x)\00", align 1
@.str.1611 = private unnamed_addr constant [23 x i8] c"Designation Descriptor\00", align 1
@.str.1612 = private unnamed_addr constant [13 x i8] c"Command Data\00", align 1
@dissect_spc_inq_sccsflags.sccs_fields_spc2 = internal constant [2 x ptr] [ptr @hf_scsi_inq_sccs, ptr null], align 16
@dissect_spc_inq_sccsflags.sccs_fields_spc3 = internal constant [6 x ptr] [ptr @hf_scsi_inq_sccs, ptr @hf_scsi_inq_acc, ptr @hf_scsi_inq_tpgs, ptr @hf_scsi_inq_tpc, ptr @hf_scsi_inq_protect, ptr null], align 16
@dissect_spc_inq_bqueflags.bqe_fields_spc = internal constant [5 x ptr] [ptr @hf_scsi_inq_encserv, ptr @hf_scsi_inq_multip, ptr @hf_scsi_inq_mchngr, ptr @hf_scsi_inq_ackreqq, ptr null], align 16
@dissect_spc_inq_bqueflags.bqe_fields_spc2 = internal constant [5 x ptr] [ptr @hf_scsi_inq_bque, ptr @hf_scsi_inq_encserv, ptr @hf_scsi_inq_multip, ptr @hf_scsi_inq_mchngr, ptr null], align 16
@dissect_spc_inq_bqueflags.bqe_fields_spc4 = internal constant [4 x ptr] [ptr @hf_scsi_inq_bque, ptr @hf_scsi_inq_encserv, ptr @hf_scsi_inq_multip, ptr null], align 16
@dissect_spc_inq_reladrflags.reladr_fields_spc = internal constant [5 x ptr] [ptr @hf_scsi_inq_reladr, ptr @hf_scsi_inq_linked, ptr @hf_scsi_inq_trandis, ptr @hf_scsi_inq_cmdque, ptr null], align 16
@dissect_spc_inq_reladrflags.reladr_fields_spc2 = internal constant [4 x ptr] [ptr @hf_scsi_inq_reladr, ptr @hf_scsi_inq_linked, ptr @hf_scsi_inq_cmdque, ptr null], align 16
@dissect_spc_inq_reladrflags.reladr_fields_spc3 = internal constant [3 x ptr] [ptr @hf_scsi_inq_linked, ptr @hf_scsi_inq_cmdque, ptr null], align 16
@dissect_spc_inq_reladrflags.reladr_fields_spc4 = internal constant [2 x ptr] [ptr @hf_scsi_inq_cmdque, ptr null], align 16
@.str.1613 = private unnamed_addr constant [19 x i8] c"NAA Designator: %s\00", align 1
@dissect_scsi_log_page.pcflags_fields = internal constant [2 x ptr] [ptr @hf_scsi_log_pagecode, ptr null], align 16
@dissect_scsi_log_page.paramflags_fields = internal constant [8 x ptr] [ptr @hf_scsi_log_pf_du, ptr @hf_scsi_log_pf_ds, ptr @hf_scsi_log_pf_tsd, ptr @hf_scsi_log_pf_etc, ptr @hf_scsi_log_pf_tmc, ptr @hf_scsi_log_pf_lbin, ptr @hf_scsi_log_pf_lp, ptr null], align 16
@.str.1614 = private unnamed_addr constant [13 x i8] c"Log Page: %s\00", align 1
@.str.1615 = private unnamed_addr constant [17 x i8] c"Unknown (0x%04x)\00", align 1
@tape_alert_log_parameters = internal unnamed_addr constant [51 x { i32, [4 x i8], ptr, ptr }] [{ i32, [4 x i8], ptr, ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.410, ptr @log_parameter_2e_0001 }, { i32, [4 x i8], ptr, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.412, ptr @log_parameter_2e_0002 }, { i32, [4 x i8], ptr, ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.414, ptr @log_parameter_2e_0003 }, { i32, [4 x i8], ptr, ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.416, ptr @log_parameter_2e_0004 }, { i32, [4 x i8], ptr, ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.418, ptr @log_parameter_2e_0005 }, { i32, [4 x i8], ptr, ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.420, ptr @log_parameter_2e_0006 }, { i32, [4 x i8], ptr, ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.422, ptr @log_parameter_2e_0007 }, { i32, [4 x i8], ptr, ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.424, ptr @log_parameter_2e_0008 }, { i32, [4 x i8], ptr, ptr } { i32 9, [4 x i8] zeroinitializer, ptr @.str.426, ptr @log_parameter_2e_0009 }, { i32, [4 x i8], ptr, ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.428, ptr @log_parameter_2e_000a }, { i32, [4 x i8], ptr, ptr } { i32 11, [4 x i8] zeroinitializer, ptr @.str.430, ptr @log_parameter_2e_000b }, { i32, [4 x i8], ptr, ptr } { i32 12, [4 x i8] zeroinitializer, ptr @.str.432, ptr @log_parameter_2e_000c }, { i32, [4 x i8], ptr, ptr } { i32 13, [4 x i8] zeroinitializer, ptr @.str.434, ptr @log_parameter_2e_000d }, { i32, [4 x i8], ptr, ptr } { i32 14, [4 x i8] zeroinitializer, ptr @.str.436, ptr @log_parameter_2e_000e }, { i32, [4 x i8], ptr, ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.438, ptr @log_parameter_2e_000f }, { i32, [4 x i8], ptr, ptr } { i32 16, [4 x i8] zeroinitializer, ptr @.str.440, ptr @log_parameter_2e_0010 }, { i32, [4 x i8], ptr, ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.442, ptr @log_parameter_2e_0011 }, { i32, [4 x i8], ptr, ptr } { i32 18, [4 x i8] zeroinitializer, ptr @.str.444, ptr @log_parameter_2e_0012 }, { i32, [4 x i8], ptr, ptr } { i32 19, [4 x i8] zeroinitializer, ptr @.str.446, ptr @log_parameter_2e_0013 }, { i32, [4 x i8], ptr, ptr } { i32 20, [4 x i8] zeroinitializer, ptr @.str.448, ptr @log_parameter_2e_0014 }, { i32, [4 x i8], ptr, ptr } { i32 21, [4 x i8] zeroinitializer, ptr @.str.450, ptr @log_parameter_2e_0015 }, { i32, [4 x i8], ptr, ptr } { i32 22, [4 x i8] zeroinitializer, ptr @.str.452, ptr @log_parameter_2e_0016 }, { i32, [4 x i8], ptr, ptr } { i32 23, [4 x i8] zeroinitializer, ptr @.str.454, ptr @log_parameter_2e_0017 }, { i32, [4 x i8], ptr, ptr } { i32 24, [4 x i8] zeroinitializer, ptr @.str.456, ptr @log_parameter_2e_0018 }, { i32, [4 x i8], ptr, ptr } { i32 25, [4 x i8] zeroinitializer, ptr @.str.458, ptr @log_parameter_2e_0019 }, { i32, [4 x i8], ptr, ptr } { i32 26, [4 x i8] zeroinitializer, ptr @.str.460, ptr @log_parameter_2e_001a }, { i32, [4 x i8], ptr, ptr } { i32 27, [4 x i8] zeroinitializer, ptr @.str.462, ptr @log_parameter_2e_001b }, { i32, [4 x i8], ptr, ptr } { i32 28, [4 x i8] zeroinitializer, ptr @.str.464, ptr @log_parameter_2e_001c }, { i32, [4 x i8], ptr, ptr } { i32 29, [4 x i8] zeroinitializer, ptr @.str.466, ptr @log_parameter_2e_001d }, { i32, [4 x i8], ptr, ptr } { i32 30, [4 x i8] zeroinitializer, ptr @.str.468, ptr @log_parameter_2e_001e }, { i32, [4 x i8], ptr, ptr } { i32 31, [4 x i8] zeroinitializer, ptr @.str.470, ptr @log_parameter_2e_001f }, { i32, [4 x i8], ptr, ptr } { i32 32, [4 x i8] zeroinitializer, ptr @.str.472, ptr @log_parameter_2e_0020 }, { i32, [4 x i8], ptr, ptr } { i32 33, [4 x i8] zeroinitializer, ptr @.str.474, ptr @log_parameter_2e_0021 }, { i32, [4 x i8], ptr, ptr } { i32 34, [4 x i8] zeroinitializer, ptr @.str.476, ptr @log_parameter_2e_0022 }, { i32, [4 x i8], ptr, ptr } { i32 35, [4 x i8] zeroinitializer, ptr @.str.478, ptr @log_parameter_2e_0023 }, { i32, [4 x i8], ptr, ptr } { i32 36, [4 x i8] zeroinitializer, ptr @.str.480, ptr @log_parameter_2e_0024 }, { i32, [4 x i8], ptr, ptr } { i32 37, [4 x i8] zeroinitializer, ptr @.str.482, ptr @log_parameter_2e_0025 }, { i32, [4 x i8], ptr, ptr } { i32 38, [4 x i8] zeroinitializer, ptr @.str.484, ptr @log_parameter_2e_0026 }, { i32, [4 x i8], ptr, ptr } { i32 39, [4 x i8] zeroinitializer, ptr @.str.486, ptr @log_parameter_2e_0027 }, { i32, [4 x i8], ptr, ptr } { i32 50, [4 x i8] zeroinitializer, ptr @.str.488, ptr @log_parameter_2e_0032 }, { i32, [4 x i8], ptr, ptr } { i32 51, [4 x i8] zeroinitializer, ptr @.str.490, ptr @log_parameter_2e_0033 }, { i32, [4 x i8], ptr, ptr } { i32 52, [4 x i8] zeroinitializer, ptr @.str.492, ptr @log_parameter_2e_0034 }, { i32, [4 x i8], ptr, ptr } { i32 53, [4 x i8] zeroinitializer, ptr @.str.494, ptr @log_parameter_2e_0035 }, { i32, [4 x i8], ptr, ptr } { i32 54, [4 x i8] zeroinitializer, ptr @.str.496, ptr @log_parameter_2e_0036 }, { i32, [4 x i8], ptr, ptr } { i32 55, [4 x i8] zeroinitializer, ptr @.str.498, ptr @log_parameter_2e_0037 }, { i32, [4 x i8], ptr, ptr } { i32 56, [4 x i8] zeroinitializer, ptr @.str.500, ptr @log_parameter_2e_0038 }, { i32, [4 x i8], ptr, ptr } { i32 57, [4 x i8] zeroinitializer, ptr @.str.502, ptr @log_parameter_2e_0039 }, { i32, [4 x i8], ptr, ptr } { i32 58, [4 x i8] zeroinitializer, ptr @.str.504, ptr @log_parameter_2e_003a }, { i32, [4 x i8], ptr, ptr } { i32 59, [4 x i8] zeroinitializer, ptr @.str.506, ptr @log_parameter_2e_003b }, { i32, [4 x i8], ptr, ptr } { i32 60, [4 x i8] zeroinitializer, ptr @.str.508, ptr @log_parameter_2e_003c }, { i32, [4 x i8], ptr, ptr } zeroinitializer], align 16
@.str.1618 = private unnamed_addr constant [13 x i8] c"%s Mode Page\00", align 1
@.str.1619 = private unnamed_addr constant [9 x i8] c"%u 100ms\00", align 1
@.str.1620 = private unnamed_addr constant [23 x i8] c"Sub-header Byte %u: %u\00", align 1
@.str.1621 = private unnamed_addr constant [19 x i8] c" Control Extension\00", align 1
@.str.1622 = private unnamed_addr constant [23 x i8] c"Management Protocol In\00", align 1
@.str.1623 = private unnamed_addr constant [25 x i8] c"Report Supported Opcodes\00", align 1
@mpi_action_vals = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 16, [4 x i8] zeroinitializer, ptr @.str.1622 }, { i32, [4 x i8], ptr } { i32 12, [4 x i8] zeroinitializer, ptr @.str.1623 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.1625 = private unnamed_addr constant [17 x i8] c"Unknown (0x%02x)\00", align 1
@dissect_scsi_descriptor_snsinfo.command_functions = internal constant [9 x ptr] [ptr @hf_scsi_sns_osd_object_validation, ptr @hf_scsi_sns_osd_object_cmd_cap_v, ptr @hf_scsi_sns_osd_object_command, ptr @hf_scsi_sns_osd_object_imp_st_att, ptr @hf_scsi_sns_osd_object_sa_cap_v, ptr @hf_scsi_sns_osd_object_set_att, ptr @hf_scsi_sns_osd_object_ga_cap_v, ptr @hf_scsi_sns_osd_object_get_att, ptr null], align 16
@.str.1626 = private unnamed_addr constant [11 x i8] c" (Unknown)\00", align 1
@.str.1627 = private unnamed_addr constant [21 x i8] c"Direct Access Device\00", align 1
@.str.1628 = private unnamed_addr constant [25 x i8] c"Sequential Access Device\00", align 1
@.str.1629 = private unnamed_addr constant [8 x i8] c"Printer\00", align 1
@.str.1630 = private unnamed_addr constant [10 x i8] c"Processor\00", align 1
@.str.1631 = private unnamed_addr constant [5 x i8] c"WORM\00", align 1
@.str.1632 = private unnamed_addr constant [7 x i8] c"CD-ROM\00", align 1
@.str.1633 = private unnamed_addr constant [8 x i8] c"Scanner\00", align 1
@.str.1634 = private unnamed_addr constant [15 x i8] c"Optical Memory\00", align 1
@.str.1635 = private unnamed_addr constant [15 x i8] c"Medium Changer\00", align 1
@.str.1636 = private unnamed_addr constant [14 x i8] c"Communication\00", align 1
@.str.1637 = private unnamed_addr constant [14 x i8] c"Storage Array\00", align 1
@.str.1638 = private unnamed_addr constant [19 x i8] c"Enclosure Services\00", align 1
@.str.1639 = private unnamed_addr constant [24 x i8] c"Simplified Block Device\00", align 1
@.str.1640 = private unnamed_addr constant [27 x i8] c"Optical Card Reader/Writer\00", align 1
@.str.1641 = private unnamed_addr constant [28 x i8] c"Object-based Storage Device\00", align 1
@.str.1642 = private unnamed_addr constant [27 x i8] c"Automation/Drive Interface\00", align 1
@.str.1643 = private unnamed_addr constant [26 x i8] c"Unknown or no device type\00", align 1
@scsi_devtype_val = internal constant [19 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.1627 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.1628 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.1629 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.1630 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.1631 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.1632 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.1633 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.1634 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.1635 }, { i32, [4 x i8], ptr } { i32 9, [4 x i8] zeroinitializer, ptr @.str.1636 }, { i32, [4 x i8], ptr } { i32 12, [4 x i8] zeroinitializer, ptr @.str.1637 }, { i32, [4 x i8], ptr } { i32 13, [4 x i8] zeroinitializer, ptr @.str.1638 }, { i32, [4 x i8], ptr } { i32 14, [4 x i8] zeroinitializer, ptr @.str.1639 }, { i32, [4 x i8], ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.1640 }, { i32, [4 x i8], ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.1641 }, { i32, [4 x i8], ptr } { i32 18, [4 x i8] zeroinitializer, ptr @.str.1642 }, { i32, [4 x i8], ptr } { i32 30, [4 x i8] zeroinitializer, ptr @.str.44 }, { i32, [4 x i8], ptr } { i32 31, [4 x i8] zeroinitializer, ptr @.str.1643 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.1645 = private unnamed_addr constant [14 x i8] c"scsi_spc_vals\00", align 1
@.str.1646 = private unnamed_addr constant [16 x i8] c"Test Unit Ready\00", align 1
@.str.1647 = private unnamed_addr constant [14 x i8] c"Request Sense\00", align 1
@.str.1648 = private unnamed_addr constant [8 x i8] c"Inquiry\00", align 1
@.str.1649 = private unnamed_addr constant [15 x i8] c"Mode Select(6)\00", align 1
@.str.1650 = private unnamed_addr constant [11 x i8] c"Reserve(6)\00", align 1
@.str.1651 = private unnamed_addr constant [11 x i8] c"Release(6)\00", align 1
@.str.1652 = private unnamed_addr constant [14 x i8] c"Mode Sense(6)\00", align 1
@.str.1653 = private unnamed_addr constant [28 x i8] c"Receive Diagnostics Results\00", align 1
@.str.1654 = private unnamed_addr constant [16 x i8] c"Send Diagnostic\00", align 1
@.str.1655 = private unnamed_addr constant [29 x i8] c"Prevent/Allow Medium Removal\00", align 1
@.str.1656 = private unnamed_addr constant [8 x i8] c"Compare\00", align 1
@.str.1657 = private unnamed_addr constant [16 x i8] c"Copy And Verify\00", align 1
@.str.1658 = private unnamed_addr constant [13 x i8] c"Write Buffer\00", align 1
@.str.1659 = private unnamed_addr constant [12 x i8] c"Read Buffer\00", align 1
@.str.1660 = private unnamed_addr constant [18 x i8] c"Change Definition\00", align 1
@.str.1661 = private unnamed_addr constant [11 x i8] c"Log Select\00", align 1
@.str.1662 = private unnamed_addr constant [10 x i8] c"Log Sense\00", align 1
@.str.1663 = private unnamed_addr constant [16 x i8] c"Mode Select(10)\00", align 1
@.str.1664 = private unnamed_addr constant [12 x i8] c"Reserve(10)\00", align 1
@.str.1665 = private unnamed_addr constant [12 x i8] c"Release(10)\00", align 1
@.str.1666 = private unnamed_addr constant [15 x i8] c"Mode Sense(10)\00", align 1
@.str.1667 = private unnamed_addr constant [22 x i8] c"Persistent Reserve In\00", align 1
@.str.1668 = private unnamed_addr constant [23 x i8] c"Persistent Reserve Out\00", align 1
@.str.1669 = private unnamed_addr constant [20 x i8] c"Variable Length CDB\00", align 1
@.str.1670 = private unnamed_addr constant [14 x i8] c"Extended Copy\00", align 1
@.str.1671 = private unnamed_addr constant [13 x i8] c"Receive Copy\00", align 1
@.str.1672 = private unnamed_addr constant [18 x i8] c"Access Control In\00", align 1
@.str.1673 = private unnamed_addr constant [19 x i8] c"Access Control Out\00", align 1
@.str.1674 = private unnamed_addr constant [12 x i8] c"Report LUNs\00", align 1
@.str.1675 = private unnamed_addr constant [17 x i8] c"Mgmt Protocol In\00", align 1
@scsi_spc_vals = internal constant [32 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.1646 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.1647 }, { i32, [4 x i8], ptr } { i32 18, [4 x i8] zeroinitializer, ptr @.str.1648 }, { i32, [4 x i8], ptr } { i32 21, [4 x i8] zeroinitializer, ptr @.str.1649 }, { i32, [4 x i8], ptr } { i32 22, [4 x i8] zeroinitializer, ptr @.str.1650 }, { i32, [4 x i8], ptr } { i32 23, [4 x i8] zeroinitializer, ptr @.str.1651 }, { i32, [4 x i8], ptr } { i32 24, [4 x i8] zeroinitializer, ptr @.str.1059 }, { i32, [4 x i8], ptr } { i32 26, [4 x i8] zeroinitializer, ptr @.str.1652 }, { i32, [4 x i8], ptr } { i32 28, [4 x i8] zeroinitializer, ptr @.str.1653 }, { i32, [4 x i8], ptr } { i32 29, [4 x i8] zeroinitializer, ptr @.str.1654 }, { i32, [4 x i8], ptr } { i32 30, [4 x i8] zeroinitializer, ptr @.str.1655 }, { i32, [4 x i8], ptr } { i32 57, [4 x i8] zeroinitializer, ptr @.str.1656 }, { i32, [4 x i8], ptr } { i32 58, [4 x i8] zeroinitializer, ptr @.str.1657 }, { i32, [4 x i8], ptr } { i32 59, [4 x i8] zeroinitializer, ptr @.str.1658 }, { i32, [4 x i8], ptr } { i32 60, [4 x i8] zeroinitializer, ptr @.str.1659 }, { i32, [4 x i8], ptr } { i32 64, [4 x i8] zeroinitializer, ptr @.str.1660 }, { i32, [4 x i8], ptr } { i32 76, [4 x i8] zeroinitializer, ptr @.str.1661 }, { i32, [4 x i8], ptr } { i32 77, [4 x i8] zeroinitializer, ptr @.str.1662 }, { i32, [4 x i8], ptr } { i32 85, [4 x i8] zeroinitializer, ptr @.str.1663 }, { i32, [4 x i8], ptr } { i32 86, [4 x i8] zeroinitializer, ptr @.str.1664 }, { i32, [4 x i8], ptr } { i32 87, [4 x i8] zeroinitializer, ptr @.str.1665 }, { i32, [4 x i8], ptr } { i32 90, [4 x i8] zeroinitializer, ptr @.str.1666 }, { i32, [4 x i8], ptr } { i32 94, [4 x i8] zeroinitializer, ptr @.str.1667 }, { i32, [4 x i8], ptr } { i32 95, [4 x i8] zeroinitializer, ptr @.str.1668 }, { i32, [4 x i8], ptr } { i32 127, [4 x i8] zeroinitializer, ptr @.str.1669 }, { i32, [4 x i8], ptr } { i32 131, [4 x i8] zeroinitializer, ptr @.str.1670 }, { i32, [4 x i8], ptr } { i32 132, [4 x i8] zeroinitializer, ptr @.str.1671 }, { i32, [4 x i8], ptr } { i32 134, [4 x i8] zeroinitializer, ptr @.str.1672 }, { i32, [4 x i8], ptr } { i32 135, [4 x i8] zeroinitializer, ptr @.str.1673 }, { i32, [4 x i8], ptr } { i32 160, [4 x i8] zeroinitializer, ptr @.str.1674 }, { i32, [4 x i8], ptr } { i32 163, [4 x i8] zeroinitializer, ptr @.str.1675 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@spc = internal constant <{ [164 x %struct._scsi_cdb_table_t], [92 x %struct._scsi_cdb_table_t] }> <{ [164 x %struct._scsi_cdb_table_t] [%struct._scsi_cdb_table_t { ptr @dissect_spc_testunitready }, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t { ptr @dissect_spc_requestsense }, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t { ptr @dissect_spc_inquiry }, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t { ptr @dissect_spc_modeselect6 }, %struct._scsi_cdb_table_t { ptr @dissect_spc_reserve6 }, %struct._scsi_cdb_table_t { ptr @dissect_spc_release6 }, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t { ptr @dissect_spc_modesense6 }, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t { ptr @dissect_spc_senddiagnostic }, %struct._scsi_cdb_table_t { ptr @dissect_spc_preventallowmediaremoval }, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t { ptr @dissect_spc_writebuffer }, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t { ptr @dissect_spc_logselect }, %struct._scsi_cdb_table_t { ptr @dissect_spc_logsense }, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t { ptr @dissect_spc_modeselect10 }, %struct._scsi_cdb_table_t { ptr @dissect_spc_reserve10 }, %struct._scsi_cdb_table_t { ptr @dissect_spc_release10 }, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t { ptr @dissect_spc_modesense10 }, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t { ptr @dissect_spc_persistentreservein }, %struct._scsi_cdb_table_t { ptr @dissect_spc_persistentreserveout }, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t { ptr @dissect_scsi_varlencdb }, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t { ptr @dissect_spc_extcopy }, %struct._scsi_cdb_table_t { ptr @dissect_spc_recvcopy }, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t { ptr @dissect_spc_reportluns }, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t zeroinitializer, %struct._scsi_cdb_table_t { ptr @dissect_spc_reportdeviceidentifier }], [92 x %struct._scsi_cdb_table_t] zeroinitializer }>, align 16
@.str.1678 = private unnamed_addr constant [10 x i8] c"fragments\00", align 1
@hf_scsi_sbc_opcode = external local_unnamed_addr global i32, align 4
@scsi_sbc_vals_ext = external global %struct._value_string_ext, align 8
@scsi_sbc_table = external constant [256 x %struct._scsi_cdb_table_t], align 16
@hf_scsi_mmc_opcode = external local_unnamed_addr global i32, align 4
@scsi_mmc_vals_ext = external global %struct._value_string_ext, align 8
@scsi_mmc_table = external constant [256 x %struct._scsi_cdb_table_t], align 16
@hf_scsi_ssc_opcode = external local_unnamed_addr global i32, align 4
@scsi_ssc_vals_ext = external global %struct._value_string_ext, align 8
@scsi_ssc_table = external constant [256 x %struct._scsi_cdb_table_t], align 16
@hf_scsi_smc_opcode = external local_unnamed_addr global i32, align 4
@scsi_smc_vals_ext = external global %struct._value_string_ext, align 8
@scsi_smc_table = external constant [256 x %struct._scsi_cdb_table_t], align 16
@hf_scsi_osd_opcode = external local_unnamed_addr global i32, align 4
@scsi_osd_vals_ext = external global %struct._value_string_ext, align 8
@scsi_osd_table = external constant [256 x %struct._scsi_cdb_table_t], align 16
@.str.1679 = private unnamed_addr constant [18 x i8] c"Normal ACA is set\00", align 1
@.str.1680 = private unnamed_addr constant [22 x i8] c"Normal ACA is not set\00", align 1
@.str.1681 = private unnamed_addr constant [17 x i8] c"Threshold Values\00", align 1
@.str.1682 = private unnamed_addr constant [18 x i8] c"Cumulative Values\00", align 1
@.str.1683 = private unnamed_addr constant [25 x i8] c"Default Threshold Values\00", align 1
@.str.1684 = private unnamed_addr constant [26 x i8] c"Default Cumulative Values\00", align 1
@scsi_log_pc_val = internal constant [5 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.1681 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.1682 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.1683 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.1684 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.1686 = private unnamed_addr constant [20 x i8] c"Supported Log Pages\00", align 1
@.str.1687 = private unnamed_addr constant [29 x i8] c"Buffer Overrun/Underrun Page\00", align 1
@.str.1688 = private unnamed_addr constant [27 x i8] c"Error Counter (write) Page\00", align 1
@.str.1689 = private unnamed_addr constant [26 x i8] c"Error Counter (read) Page\00", align 1
@.str.1690 = private unnamed_addr constant [34 x i8] c"Error Counter (read reverse) Page\00", align 1
@.str.1691 = private unnamed_addr constant [28 x i8] c"Error Counter (verify) Page\00", align 1
@.str.1692 = private unnamed_addr constant [22 x i8] c"Non-medium Error Page\00", align 1
@.str.1693 = private unnamed_addr constant [25 x i8] c"Last n Error Events Page\00", align 1
@.str.1694 = private unnamed_addr constant [23 x i8] c"Format Status Log Page\00", align 1
@.str.1695 = private unnamed_addr constant [44 x i8] c"Last n Deferred Errors or Async Events Page\00", align 1
@.str.1696 = private unnamed_addr constant [34 x i8] c"Sequential-Access Device Log Page\00", align 1
@.str.1697 = private unnamed_addr constant [17 x i8] c"Temperature Page\00", align 1
@.str.1698 = private unnamed_addr constant [30 x i8] c"Start-Stop Cycle Counter Page\00", align 1
@.str.1699 = private unnamed_addr constant [24 x i8] c"Application Client Page\00", align 1
@.str.1700 = private unnamed_addr constant [23 x i8] c"Self-test Results Page\00", align 1
@.str.1701 = private unnamed_addr constant [20 x i8] c"DTD Status Log Page\00", align 1
@.str.1702 = private unnamed_addr constant [26 x i8] c"Tape-Alert Log Page (SSC)\00", align 1
@.str.1703 = private unnamed_addr constant [34 x i8] c"Informational Exceptions Log Page\00", align 1
@scsi_log_page_val = internal constant [19 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.1686 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.1687 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.1688 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.1689 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.1690 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.1691 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.1692 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.1693 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.1694 }, { i32, [4 x i8], ptr } { i32 11, [4 x i8] zeroinitializer, ptr @.str.1695 }, { i32, [4 x i8], ptr } { i32 12, [4 x i8] zeroinitializer, ptr @.str.1696 }, { i32, [4 x i8], ptr } { i32 13, [4 x i8] zeroinitializer, ptr @.str.1697 }, { i32, [4 x i8], ptr } { i32 14, [4 x i8] zeroinitializer, ptr @.str.1698 }, { i32, [4 x i8], ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.1699 }, { i32, [4 x i8], ptr } { i32 16, [4 x i8] zeroinitializer, ptr @.str.1700 }, { i32, [4 x i8], ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.1701 }, { i32, [4 x i8], ptr } { i32 46, [4 x i8] zeroinitializer, ptr @.str.1702 }, { i32, [4 x i8], ptr } { i32 47, [4 x i8] zeroinitializer, ptr @.str.1703 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.1705 = private unnamed_addr constant [15 x i8] c"Current Values\00", align 1
@.str.1706 = private unnamed_addr constant [18 x i8] c"Changeable Values\00", align 1
@.str.1707 = private unnamed_addr constant [15 x i8] c"Default Values\00", align 1
@.str.1708 = private unnamed_addr constant [13 x i8] c"Saved Values\00", align 1
@scsi_modesns_pc_val = internal constant [5 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.1705 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.1706 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.1707 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.1708 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.1710 = private unnamed_addr constant [21 x i8] c"Disconnect-Reconnect\00", align 1
@.str.1711 = private unnamed_addr constant [18 x i8] c"Peripheral Device\00", align 1
@.str.1712 = private unnamed_addr constant [33 x i8] c"Informational Exceptions Control\00", align 1
@.str.1713 = private unnamed_addr constant [16 x i8] c"Power Condition\00", align 1
@.str.1714 = private unnamed_addr constant [22 x i8] c"Protocol Specific LUN\00", align 1
@.str.1715 = private unnamed_addr constant [23 x i8] c"Protocol-Specific Port\00", align 1
@.str.1716 = private unnamed_addr constant [21 x i8] c"Vendor Specific Page\00", align 1
@.str.1717 = private unnamed_addr constant [22 x i8] c"Return All Mode Pages\00", align 1
@scsi_spc_modepage_val = internal constant [10 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.83 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.1710 }, { i32, [4 x i8], ptr } { i32 9, [4 x i8] zeroinitializer, ptr @.str.1711 }, { i32, [4 x i8], ptr } { i32 28, [4 x i8] zeroinitializer, ptr @.str.1712 }, { i32, [4 x i8], ptr } { i32 26, [4 x i8] zeroinitializer, ptr @.str.1713 }, { i32, [4 x i8], ptr } { i32 24, [4 x i8] zeroinitializer, ptr @.str.1714 }, { i32, [4 x i8], ptr } { i32 25, [4 x i8] zeroinitializer, ptr @.str.1715 }, { i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.1716 }, { i32, [4 x i8], ptr } { i32 63, [4 x i8] zeroinitializer, ptr @.str.1717 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.1719 = private unnamed_addr constant [26 x i8] c"Read/Write Error Recovery\00", align 1
@.str.1720 = private unnamed_addr constant [14 x i8] c"Format Device\00", align 1
@.str.1721 = private unnamed_addr constant [20 x i8] c"Rigid Disk Geometry\00", align 1
@.str.1722 = private unnamed_addr constant [14 x i8] c"Flexible Disk\00", align 1
@.str.1723 = private unnamed_addr constant [22 x i8] c"Verify Error Recovery\00", align 1
@.str.1724 = private unnamed_addr constant [8 x i8] c"Caching\00", align 1
@.str.1725 = private unnamed_addr constant [23 x i8] c"Medium Types Supported\00", align 1
@.str.1726 = private unnamed_addr constant [18 x i8] c"Notch & Partition\00", align 1
@.str.1727 = private unnamed_addr constant [12 x i8] c"XOR Control\00", align 1
@scsi_sbc_modepage_val = internal constant [11 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.1719 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.1720 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.1721 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.1722 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.1723 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.1724 }, { i32, [4 x i8], ptr } { i32 11, [4 x i8] zeroinitializer, ptr @.str.1725 }, { i32, [4 x i8], ptr } { i32 12, [4 x i8] zeroinitializer, ptr @.str.1726 }, { i32, [4 x i8], ptr } { i32 16, [4 x i8] zeroinitializer, ptr @.str.1727 }, { i32, [4 x i8], ptr } { i32 63, [4 x i8] zeroinitializer, ptr @.str.1717 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.1729 = private unnamed_addr constant [17 x i8] c"Data Compression\00", align 1
@.str.1730 = private unnamed_addr constant [21 x i8] c"Device Configuration\00", align 1
@.str.1731 = private unnamed_addr constant [21 x i8] c"Medium Partition (1)\00", align 1
@.str.1732 = private unnamed_addr constant [21 x i8] c"Medium Partition (2)\00", align 1
@.str.1733 = private unnamed_addr constant [21 x i8] c"Medium Partition (3)\00", align 1
@.str.1734 = private unnamed_addr constant [21 x i8] c"Medium Partition (4)\00", align 1
@scsi_ssc2_modepage_val = internal constant [8 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.1729 }, { i32, [4 x i8], ptr } { i32 16, [4 x i8] zeroinitializer, ptr @.str.1730 }, { i32, [4 x i8], ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.1731 }, { i32, [4 x i8], ptr } { i32 18, [4 x i8] zeroinitializer, ptr @.str.1732 }, { i32, [4 x i8], ptr } { i32 19, [4 x i8] zeroinitializer, ptr @.str.1733 }, { i32, [4 x i8], ptr } { i32 20, [4 x i8] zeroinitializer, ptr @.str.1734 }, { i32, [4 x i8], ptr } { i32 63, [4 x i8] zeroinitializer, ptr @.str.1717 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.1736 = private unnamed_addr constant [4 x i8] c"MRW\00", align 1
@.str.1737 = private unnamed_addr constant [17 x i8] c"Write Parameters\00", align 1
@.str.1738 = private unnamed_addr constant [38 x i8] c"MM Capabilities and Mechanical Status\00", align 1
@scsi_mmc5_modepage_val = internal constant [5 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.1736 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.1737 }, { i32, [4 x i8], ptr } { i32 42, [4 x i8] zeroinitializer, ptr @.str.1738 }, { i32, [4 x i8], ptr } { i32 63, [4 x i8] zeroinitializer, ptr @.str.1717 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.1740 = private unnamed_addr constant [27 x i8] c"Element Address Assignment\00", align 1
@.str.1741 = private unnamed_addr constant [30 x i8] c"Transport Geometry Parameters\00", align 1
@.str.1742 = private unnamed_addr constant [20 x i8] c"Device Capabilities\00", align 1
@scsi_smc_modepage_val = internal constant [5 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 29, [4 x i8] zeroinitializer, ptr @.str.1740 }, { i32, [4 x i8], ptr } { i32 30, [4 x i8] zeroinitializer, ptr @.str.1741 }, { i32, [4 x i8], ptr } { i32 31, [4 x i8] zeroinitializer, ptr @.str.1742 }, { i32, [4 x i8], ptr } { i32 63, [4 x i8] zeroinitializer, ptr @.str.1717 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.1744 = private unnamed_addr constant [10 x i8] c"Read Keys\00", align 1
@.str.1745 = private unnamed_addr constant [17 x i8] c"Read Reservation\00", align 1
@.str.1746 = private unnamed_addr constant [20 x i8] c"Report Capabilities\00", align 1
@.str.1747 = private unnamed_addr constant [17 x i8] c"Read Full Status\00", align 1
@scsi_persresvin_svcaction_val = internal constant [5 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.1744 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.1745 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.1746 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.1747 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.1749 = private unnamed_addr constant [9 x i8] c"Register\00", align 1
@.str.1750 = private unnamed_addr constant [8 x i8] c"Reserve\00", align 1
@.str.1751 = private unnamed_addr constant [8 x i8] c"Release\00", align 1
@.str.1752 = private unnamed_addr constant [6 x i8] c"Clear\00", align 1
@.str.1753 = private unnamed_addr constant [8 x i8] c"Preempt\00", align 1
@.str.1754 = private unnamed_addr constant [16 x i8] c"Preempt & Abort\00", align 1
@.str.1755 = private unnamed_addr constant [31 x i8] c"Register & Ignore Existing Key\00", align 1
@.str.1756 = private unnamed_addr constant [16 x i8] c"Register & Move\00", align 1
@.str.1757 = private unnamed_addr constant [25 x i8] c"Replace Lost Reservation\00", align 1
@scsi_persresvout_svcaction_val = internal constant [10 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.1749 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.1750 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.1751 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.1752 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.1753 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.1754 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.1755 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.1756 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.1757 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.1759 = private unnamed_addr constant [9 x i8] c"LU Scope\00", align 1
@.str.1760 = private unnamed_addr constant [14 x i8] c"Element Scope\00", align 1
@scsi_persresv_scope_val = internal constant [4 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.1759 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.90 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.1760 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.1762 = private unnamed_addr constant [11 x i8] c"Write Excl\00", align 1
@.str.1763 = private unnamed_addr constant [12 x i8] c"Excl Access\00", align 1
@.str.1764 = private unnamed_addr constant [29 x i8] c"Write Excl, Registrants Only\00", align 1
@.str.1765 = private unnamed_addr constant [30 x i8] c"Excl Access, Registrants Only\00", align 1
@.str.1766 = private unnamed_addr constant [28 x i8] c"Write Excl, All Registrants\00", align 1
@.str.1767 = private unnamed_addr constant [29 x i8] c"Excl Access, All Registrants\00", align 1
@scsi_persresv_type_val = internal constant [7 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.1762 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.1763 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.1764 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.1765 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.1766 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.1767 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.1769 = private unnamed_addr constant [31 x i8] c"Specify Initiator Ports is set\00", align 1
@.str.1770 = private unnamed_addr constant [35 x i8] c"Specify Initiator Ports is not set\00", align 1
@.str.1771 = private unnamed_addr constant [24 x i8] c"All Target Ports is set\00", align 1
@.str.1772 = private unnamed_addr constant [28 x i8] c"All Target Ports is not set\00", align 1
@.str.1773 = private unnamed_addr constant [41 x i8] c"Active Persist Through Power Loss is set\00", align 1
@.str.1774 = private unnamed_addr constant [45 x i8] c"Active Persist Through Power Loss is not set\00", align 1
@.str.1775 = private unnamed_addr constant [41 x i8] c"Device type is connected to logical unit\00", align 1
@.str.1776 = private unnamed_addr constant [72 x i8] c"Device type is supported by server but is not connected to logical unit\00", align 1
@.str.1777 = private unnamed_addr constant [39 x i8] c"Device type is not supported by server\00", align 1
@scsi_qualifier_val = internal constant [4 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.1775 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.1776 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.1777 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.1779 = private unnamed_addr constant [17 x i8] c"scsi_verdesc_val\00", align 1
@.str.1780 = private unnamed_addr constant [59 x i8] c"Version Descriptor Not Supported or No Standard Identified\00", align 1
@.str.1781 = private unnamed_addr constant [25 x i8] c"SAM (no version claimed)\00", align 1
@.str.1782 = private unnamed_addr constant [27 x i8] c"SAM T10/0994-D revision 18\00", align 1
@.str.1783 = private unnamed_addr constant [25 x i8] c"SAM ANSI INCITS 270-1996\00", align 1
@.str.1784 = private unnamed_addr constant [27 x i8] c"SAM-2 (no version claimed)\00", align 1
@.str.1785 = private unnamed_addr constant [29 x i8] c"SAM-2 T10/1157-D revision 23\00", align 1
@.str.1786 = private unnamed_addr constant [29 x i8] c"SAM-2 T10/1157-D revision 24\00", align 1
@.str.1787 = private unnamed_addr constant [27 x i8] c"SAM-2 ANSI INCITS 366-2003\00", align 1
@.str.1788 = private unnamed_addr constant [24 x i8] c"SAM-2 ISO/IEC 14776-412\00", align 1
@.str.1789 = private unnamed_addr constant [27 x i8] c"SAM-3 (no version claimed)\00", align 1
@.str.1790 = private unnamed_addr constant [28 x i8] c"SAM-3 T10/1561-D revision 7\00", align 1
@.str.1791 = private unnamed_addr constant [29 x i8] c"SAM-3 T10/1561-D revision 13\00", align 1
@.str.1792 = private unnamed_addr constant [29 x i8] c"SAM-3 T10/1561-D revision 14\00", align 1
@.str.1793 = private unnamed_addr constant [27 x i8] c"SAM-3 ANSI INCITS 402-2005\00", align 1
@.str.1794 = private unnamed_addr constant [27 x i8] c"SAM-4 (no version claimed)\00", align 1
@.str.1795 = private unnamed_addr constant [29 x i8] c"SAM-4 T10/1683-D revision 13\00", align 1
@.str.1796 = private unnamed_addr constant [29 x i8] c"SAM-4 T10/1683-D revision 14\00", align 1
@.str.1797 = private unnamed_addr constant [27 x i8] c"SAM-4 ANSI INCITS 447-2008\00", align 1
@.str.1798 = private unnamed_addr constant [24 x i8] c"SAM-4 ISO/IEC 14776-414\00", align 1
@.str.1799 = private unnamed_addr constant [27 x i8] c"SAM-5 (no version claimed)\00", align 1
@.str.1800 = private unnamed_addr constant [28 x i8] c"SAM-5 T10/2104-D revision 4\00", align 1
@.str.1801 = private unnamed_addr constant [25 x i8] c"SPC (no version claimed)\00", align 1
end_hunk_0
begin_hunk_1_@dissect_spc_recvcopy:bb.a
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 12
  store i16 %i.e, ptr %i.h, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = add i32 %3, 1
  %i.j = load i32, ptr @hf_scsi_reserved_64, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.j, ptr noundef %0, i32 noundef %i.i, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.l = add i32 %3, 9
  %i.m = load i32, ptr @hf_scsi_alloclen32, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.m, ptr noundef %0, i32 noundef %i.l, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.o = add i32 %3, 13
  %i.p = load i32, ptr @hf_scsi_reserved_8, align 4
  %i.q = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.p, ptr noundef %0, i32 noundef %i.o, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.r = add i32 %3, 14
  %i.s = load i32, ptr @hf_scsi_control, align 4
  %i.t = load i32, ptr @ett_scsi_control, align 4
  %i.u = tail call ptr @proto_tree_add_bitmask(ptr noundef %2, ptr noundef %0, i32 noundef %i.r, i32 noundef %i.s, i32 noundef %i.t, ptr noundef nonnull @cdb_control_fields, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.e:                                             ; preds = %bb.a
  %.not = icmp eq ptr %7, null
  br i1 %.not, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr i8, ptr %7, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr i8, ptr %i.w, i64 12
  %i.y = load i16, ptr %i.x, align 4              ; 2 uses
  %i.z = icmp eq i16 %i.y, 3
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = load i32, ptr @hf_scsi_recv_copy_avail_data, align 4
  %i.ab = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.aa, ptr noundef %0, i32 noundef %3, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ac = add i32 %3, 4
  %i.ad = load i32, ptr @hf_scsi_recv_copy_snlid, align 4
  %i.ae = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ad, ptr noundef %0, i32 noundef %i.ac, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.af = add i32 %3, 5
  %i.ag = load i32, ptr @hf_scsi_reserved_24, align 4
  %i.ah = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ag, ptr noundef %0, i32 noundef %i.af, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.ai = add i32 %3, 8
  %i.aj = load i32, ptr @hf_scsi_recv_copy_max_cscd_desc_count, align 4
  %i.ak = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.aj, ptr noundef %0, i32 noundef %i.ai, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.al = add i32 %3, 10
  %i.am = load i32, ptr @hf_scsi_recv_copy_max_seg_desc_count, align 4
  %i.an = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.am, ptr noundef %0, i32 noundef %i.al, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ao = add i32 %3, 12
  %i.ap = load i32, ptr @hf_scsi_recv_copy_max_desc_list_len, align 4
  %i.aq = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ap, ptr noundef %0, i32 noundef %i.ao, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ar = add i32 %3, 16
  %i.as = load i32, ptr @hf_scsi_recv_copy_max_seg_len, align 4
  %i.at = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.as, ptr noundef %0, i32 noundef %i.ar, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.au = add i32 %3, 20
  %i.av = load i32, ptr @hf_scsi_recv_copy_max_inline_data_len, align 4
  %i.aw = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.av, ptr noundef %0, i32 noundef %i.au, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ax = add i32 %3, 24
  %i.ay = load i32, ptr @hf_scsi_recv_copy_held_data_limit, align 4
  %i.az = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ay, ptr noundef %0, i32 noundef %i.ax, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ba = add i32 %3, 28
  %i.bb = load i32, ptr @hf_scsi_recv_copy_max_stream_dev_trans_size, align 4
  %i.bc = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bb, ptr noundef %0, i32 noundef %i.ba, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.bd = add i32 %3, 32
  %i.be = load i32, ptr @hf_scsi_reserved_16, align 4
  %i.bf = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.be, ptr noundef %0, i32 noundef %i.bd, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bg = add i32 %3, 34
  %i.bh = load i32, ptr @hf_scsi_recv_copy_total_con_copies, align 4
  %i.bi = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bh, ptr noundef %0, i32 noundef %i.bg, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bj = add i32 %3, 36
  %i.bk = load i32, ptr @hf_scsi_recv_copy_max_con_copies, align 4
  %i.bl = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bk, ptr noundef %0, i32 noundef %i.bj, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bm = add i32 %3, 37
  %i.bn = load i32, ptr @hf_scsi_recv_copy_data_seg_gran, align 4
  %i.bo = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bn, ptr noundef %0, i32 noundef %i.bm, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bp = add i32 %3, 38
  %i.bq = load i32, ptr @hf_scsi_recv_copy_inline_data_gran, align 4
  %i.br = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bq, ptr noundef %0, i32 noundef %i.bp, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bs = add i32 %3, 39
  %i.bt = load i32, ptr @hf_scsi_recv_copy_held_data_gran, align 4
  %i.bu = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bt, ptr noundef %0, i32 noundef %i.bs, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bv = add i32 %3, 40
  %i.bw = load i32, ptr @hf_scsi_reserved_24, align 4
  %i.bx = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bw, ptr noundef %0, i32 noundef %i.bv, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.by = add i32 %3, 43                          ; 2 uses
  %i.bz = load i32, ptr @hf_scsi_recv_copy_implemented_desc_list_len, align 4
  %i.ca = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bz, ptr noundef %0, i32 noundef %i.by, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cb = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.by) ; 2 uses
  %.not118120 = icmp eq i8 %i.cb, 0
  br i1 %.not118120, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.cc = add i32 %3, 44
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0122 = phi i8 [ %i.cg, %.lr.ph ], [ %i.cb, %.lr.ph.preheader ]
  %.0115121 = phi i32 [ %i.cf, %.lr.ph ], [ %i.cc, %.lr.ph.preheader ] ; 2 uses
  %i.cd = load i32, ptr @hf_scsi_spc_xcopy_cscd_desc_type_code, align 4
  %i.ce = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.cd, ptr noundef %0, i32 noundef %.0115121, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cf = add i32 %.0115121, 1
  %i.cg = add i8 %.0122, -1                       ; 2 uses
  %.not118 = icmp eq i8 %i.cg, 0
  br i1 %.not118, label %.loopexit, label %.lr.ph, !llvm.loop !11

bb.h:                                             ; preds = %bb.f
  %i.ch = zext i16 %i.y to i32
  %i.ci = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %2, ptr noundef %1, ptr noundef nonnull @ei_scsi_unknown_serv_action, ptr noundef %0, i32 noundef %3, i32 noundef 0, ptr noundef nonnull @.str.31, i32 noundef %i.ch) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.g, %bb.d, %bb.h, %bb.e
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_expert_format(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @dissect_spc_logselect(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i32 %6, ptr nofree readnone captures(none) %7) #1 {
bb.a:
  %.not = icmp ne ptr %2, null
  %or.cond = and i1 %4, %5
  %or.cond15 = and i1 %.not, %or.cond
  br i1 %or.cond15, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr @hf_scsi_log_ppc_flags, align 4
  %i.b = load i32, ptr @ett_scsi_log_ppc, align 4
  %i.c = tail call ptr @proto_tree_add_bitmask(ptr noundef nonnull %2, ptr noundef %0, i32 noundef %3, i32 noundef %i.a, i32 noundef %i.b, ptr noundef nonnull @dissect_spc_logselect.ppcflags_fields, i32 noundef 0) ; 0 uses
  %i.d = add i32 %3, 1
  %i.e = load i32, ptr @hf_scsi_log_pc_flags, align 4
  %i.f = load i32, ptr @ett_scsi_log_pc, align 4
  %i.g = tail call ptr @proto_tree_add_bitmask(ptr noundef nonnull %2, ptr noundef %0, i32 noundef %i.d, i32 noundef %i.e, i32 noundef %i.f, ptr noundef nonnull @dissect_spc_logselect.pcflags_fields, i32 noundef 0) ; 0 uses
  %i.h = load i32, ptr @hf_scsi_paramlen16, align 4
  %i.i = add i32 %3, 6
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.h, ptr noundef %0, i32 noundef %i.i, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.k = add i32 %3, 8
  %i.l = load i32, ptr @hf_scsi_control, align 4
  %i.m = load i32, ptr @ett_scsi_control, align 4
  %i.n = tail call ptr @proto_tree_add_bitmask(ptr noundef nonnull %2, ptr noundef %0, i32 noundef %i.k, i32 noundef %i.l, i32 noundef %i.m, ptr noundef nonnull @cdb_control_fields, i32 noundef 0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @dissect_spc_logsense(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i32 %6, ptr nofree noundef readnone captures(address_is_null) %7) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %.not26 = icmp eq ptr %2, null
  br i1 %.not26, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %or.cond = and i1 %4, %5
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = load i32, ptr @hf_scsi_log_ppc_flags, align 4
  %i.c = load i32, ptr @ett_scsi_log_ppc, align 4
  %i.d = tail call ptr @proto_tree_add_bitmask(ptr noundef nonnull %2, ptr noundef %0, i32 noundef %3, i32 noundef %i.b, i32 noundef %i.c, ptr noundef nonnull @dissect_spc_logsense.ppcflags_fields, i32 noundef 0) ; 0 uses
  %i.e = add i32 %3, 1
  %i.f = load i32, ptr @hf_scsi_log_pc_flags, align 4
  %i.g = load i32, ptr @ett_scsi_log_pc, align 4
  %i.h = tail call ptr @proto_tree_add_bitmask(ptr noundef nonnull %2, ptr noundef %0, i32 noundef %i.e, i32 noundef %i.f, i32 noundef %i.g, ptr noundef nonnull @dissect_spc_logsense.pcflags_fields, i32 noundef 0) ; 0 uses
  %i.i = load i32, ptr @hf_scsi_log_parameter_ptr, align 4
  %i.j = add i32 %3, 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.i, ptr noundef %0, i32 noundef %i.j, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.l = load i32, ptr @hf_scsi_alloclen16, align 4
  %i.m = add i32 %3, 6
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.l, ptr noundef %0, i32 noundef %i.m, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.o = add i32 %3, 8
  %i.p = load i32, ptr @hf_scsi_control, align 4
  %i.q = load i32, ptr @ett_scsi_control, align 4
  %i.r = tail call ptr @proto_tree_add_bitmask(ptr noundef nonnull %2, ptr noundef %0, i32 noundef %i.o, i32 noundef %i.p, i32 noundef %i.q, ptr noundef nonnull @cdb_control_fields, i32 noundef 0) ; 0 uses
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.s = icmp eq ptr %7, null
  %or.cond3.not = or i1 %4, %i.s
  br i1 %or.cond3.not, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.t = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %3)
  %i.u = and i8 %i.t, 63                          ; 2 uses
  %i.v = load i32, ptr @ett_scsi_log, align 4
  %i.w = getelementptr i8, ptr %1, i64 416
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = zext nneg i8 %i.u to i32
  %i.z = tail call ptr @val_to_str(ptr noundef %i.x, i32 noundef %i.y, ptr noundef nonnull @scsi_log_page_val, ptr noundef nonnull @.str.1615)
  %i.aa = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef nonnull %2, ptr noundef %0, i32 noundef %3, i32 noundef -1, i32 noundef %i.v, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.1614, ptr noundef %i.z) ; 7 uses
  %i.ab = load i32, ptr @hf_scsi_log_pc_flags, align 4
  %i.ac = load i32, ptr @ett_scsi_log_pc, align 4
  %i.ad = call ptr @proto_tree_add_bitmask(ptr noundef %i.aa, ptr noundef %0, i32 noundef %3, i32 noundef %i.ab, i32 noundef %i.ac, ptr noundef nonnull @dissect_scsi_log_page.pcflags_fields, i32 noundef 0) ; 0 uses
  %i.ae = add i32 %3, 2                           ; 2 uses
  %i.af = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.ae)
  %i.ag = load i32, ptr @hf_scsi_log_page_length, align 4
  %i.ah = call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.ag, ptr noundef %0, i32 noundef %i.ae, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ai = add i32 %3, 4                           ; 4 uses
  %.not.i = icmp eq i8 %i.u, 46
  %i.aj = zext i16 %i.af to i32
  %i.ak = add i32 %i.ai, %i.aj                    ; 2 uses
  %i.al = icmp ult i32 %i.ai, %i.ak
  br i1 %i.al, label %.lr.ph86.i.a, label %dissect_scsi_log_page.exit

.lr.ph86.i.a:                                     ; preds = %bb.e, %bb.k
  %.085.i = phi i32 [ %.1.i, %bb.k ], [ %i.ai, %bb.e ] ; 5 uses
  %i.am = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %.085.i)
  %i.an = load i32, ptr @hf_scsi_log_parameter_code, align 4
  %i.ao = call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.an, ptr noundef %0, i32 noundef %.085.i, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ap = add i32 %.085.i, 2
  %i.aq = load i32, ptr @hf_scsi_log_param_flags, align 4
  %i.ar = load i32, ptr @ett_scsi_log_param, align 4
  %i.as = call ptr @proto_tree_add_bitmask(ptr noundef %i.aa, ptr noundef %0, i32 noundef %i.ap, i32 noundef %i.aq, i32 noundef %i.ar, ptr noundef nonnull @dissect_scsi_log_page.paramflags_fields, i32 noundef 0) ; 0 uses
  %i.at = add i32 %.085.i, 3                      ; 2 uses
  %i.au = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.at) ; 3 uses
  %i.av = load i32, ptr @hf_scsi_log_param_len, align 4
  %i.aw = call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.av, ptr noundef %0, i32 noundef %i.at, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ax = add i32 %.085.i, 4                      ; 4 uses
  br i1 %.not.i, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %.lr.ph86.i.a
  switch i16 %i.am, label %8 [
    i16 1, label %.loopexit.i
    i16 2, label %.loopexit.i.fold.split
    i16 3, label %.loopexit.i.fold.split82
    i16 4, label %.loopexit.i.fold.split83
    i16 5, label %.loopexit.i.fold.split84
    i16 6, label %.loopexit.i.fold.split85
    i16 7, label %.loopexit.i.fold.split86
    i16 8, label %.loopexit.i.fold.split87
    i16 9, label %.loopexit.i.fold.split88
    i16 10, label %.loopexit.i.fold.split89
    i16 11, label %.loopexit.i.fold.split90
    i16 12, label %.loopexit.i.fold.split91
    i16 13, label %.loopexit.i.fold.split92
    i16 14, label %.loopexit.i.fold.split93
    i16 15, label %.loopexit.i.fold.split94
    i16 16, label %.loopexit.i.fold.split95
    i16 17, label %.loopexit.i.fold.split96
    i16 18, label %.loopexit.i.fold.split97
    i16 19, label %.loopexit.i.fold.split98
    i16 20, label %.loopexit.i.fold.split99
    i16 21, label %.loopexit.i.fold.split100
    i16 22, label %.loopexit.i.fold.split101
    i16 23, label %.loopexit.i.fold.split102
    i16 24, label %.loopexit.i.fold.split103
    i16 25, label %.loopexit.i.fold.split104
    i16 26, label %.loopexit.i.fold.split105
    i16 27, label %.loopexit.i.fold.split106
    i16 28, label %.loopexit.i.fold.split107
    i16 29, label %.loopexit.i.fold.split108
    i16 30, label %.loopexit.i.fold.split109
    i16 31, label %.loopexit.i.fold.split110
    i16 32, label %.loopexit.i.fold.split111
    i16 33, label %.loopexit.i.fold.split112
    i16 34, label %.loopexit.i.fold.split113
    i16 35, label %.loopexit.i.fold.split114
    i16 36, label %.loopexit.i.fold.split115
    i16 37, label %.loopexit.i.fold.split116
    i16 38, label %.loopexit.i.fold.split117
    i16 39, label %.loopexit.i.fold.split118
    i16 50, label %.loopexit.i.fold.split119
    i16 51, label %.loopexit.i.fold.split120
    i16 52, label %.loopexit.i.fold.split121
    i16 53, label %.loopexit.i.fold.split122
    i16 54, label %.loopexit.i.fold.split123
    i16 55, label %.loopexit.i.fold.split124
    i16 56, label %.loopexit.i.fold.split125
    i16 57, label %.loopexit.i.fold.split126
    i16 58, label %.loopexit.i.fold.split127
    i16 59, label %.loopexit.i.fold.split128
    i16 60, label %.loopexit.i.fold.split129
  ]

8:                                                ; preds = %.lr.ph.i
  br label %.loopexit.i

.loopexit.i.fold.split:                           ; preds = %.lr.ph.i
  br label %.loopexit.i

.loopexit.i.fold.split82:                         ; preds = %.lr.ph.i
  br label %.loopexit.i

.loopexit.i.fold.split83:                         ; preds = %.lr.ph.i
  br label %.loopexit.i

.loopexit.i.fold.split84:                         ; preds = %.lr.ph.i
  br label %.loopexit.i

.loopexit.i.fold.split85:                         ; preds = %.lr.ph.i
  br label %.loopexit.i

.loopexit.i.fold.split86:                         ; preds = %.lr.ph.i
  br label %.loopexit.i

.loopexit.i.fold.split87:                         ; preds = %.lr.ph.i
  br label %.loopexit.i

.loopexit.i.fold.split88:                         ; preds = %.lr.ph.i
  br label %.loopexit.i

.loopexit.i.fold.split89:                         ; preds = %.lr.ph.i
  br label %.loopexit.i

.loopexit.i.fold.split90:                         ; preds = %.lr.ph.i
  br label %.loopexit.i

.loopexit.i.fold.split91:                         ; preds = %.lr.ph.i
  br label %.loopexit.i

.loopexit.i.fold.split92:                         ; preds = %.lr.ph.i
  br label %.loopexit.i

.loopexit.i.fold.split93:                         ; preds = %.lr.ph.i
  br label %.loopexit.i

.loopexit.i.fold.split94:                         ; preds = %.lr.ph.i
  br label %.loopexit.i

.loopexit.i.fold.split95:                         ; preds = %.lr.ph.i
  br label %.loopexit.i

.loopexit.i.fold.split96:                         ; preds = %.lr.ph.i
  br label %.loopexit.i

.loopexit.i.fold.split97:                         ; preds = %.lr.ph.i
  br label %.loopexit.i

.loopexit.i.fold.split98:                         ; preds = %.lr.ph.i
  br label %.loopexit.i

.loopexit.i.fold.split99:                         ; preds = %.lr.ph.i
  br label %.loopexit.i

.loopexit.i.fold.split100:                        ; preds = %.lr.ph.i
  br label %.loopexit.i

.loopexit.i.fold.split101:                        ; preds = %.lr.ph.i
  br label %.loopexit.i

.loopexit.i.fold.split102:                        ; preds = %.lr.ph.i
  br label %.loopexit.i

.loopexit.i.fold.split103:                        ; preds = %.lr.ph.i
  br label %.loopexit.i

.loopexit.i.fold.split104:                        ; preds = %.lr.ph.i
  br label %.loopexit.i

.loopexit.i.fold.split105:                        ; preds = %.lr.ph.i
  br label %.loopexit.i

.loopexit.i.fold.split106:                        ; preds = %.lr.ph.i
  br label %.loopexit.i

.loopexit.i.fold.split107:                        ; preds = %.lr.ph.i
  br label %.loopexit.i

.loopexit.i.fold.split108:                        ; preds = %.lr.ph.i
  br label %.loopexit.i

.loopexit.i.fold.split109:                        ; preds = %.lr.ph.i
  br label %.loopexit.i

.loopexit.i.fold.split110:                        ; preds = %.lr.ph.i
  br label %.loopexit.i

.loopexit.i.fold.split111:                        ; preds = %.lr.ph.i
  br label %.loopexit.i

.loopexit.i.fold.split112:                        ; preds = %.lr.ph.i
  br label %.loopexit.i

.loopexit.i.fold.split113:                        ; preds = %.lr.ph.i
  br label %.loopexit.i

.loopexit.i.fold.split114:                        ; preds = %.lr.ph.i
  br label %.loopexit.i

.loopexit.i.fold.split115:                        ; preds = %.lr.ph.i
  br label %.loopexit.i

.loopexit.i.fold.split116:                        ; preds = %.lr.ph.i
  br label %.loopexit.i

.loopexit.i.fold.split117:                        ; preds = %.lr.ph.i
  br label %.loopexit.i

.loopexit.i.fold.split118:                        ; preds = %.lr.ph.i
  br label %.loopexit.i

.loopexit.i.fold.split119:                        ; preds = %.lr.ph.i
  br label %.loopexit.i

.loopexit.i.fold.split120:                        ; preds = %.lr.ph.i
  br label %.loopexit.i

.loopexit.i.fold.split121:                        ; preds = %.lr.ph.i
  br label %.loopexit.i

.loopexit.i.fold.split122:                        ; preds = %.lr.ph.i
  br label %.loopexit.i

.loopexit.i.fold.split123:                        ; preds = %.lr.ph.i
  br label %.loopexit.i

.loopexit.i.fold.split124:                        ; preds = %.lr.ph.i
  br label %.loopexit.i

.loopexit.i.fold.split125:                        ; preds = %.lr.ph.i
  br label %.loopexit.i

.loopexit.i.fold.split126:                        ; preds = %.lr.ph.i
  br label %.loopexit.i

.loopexit.i.fold.split127:                        ; preds = %.lr.ph.i
  br label %.loopexit.i

.loopexit.i.fold.split128:                        ; preds = %.lr.ph.i
  br label %.loopexit.i

.loopexit.i.fold.split129:                        ; preds = %.lr.ph.i
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i, %.loopexit.i.fold.split129, %.loopexit.i.fold.split128, %.loopexit.i.fold.split127, %.loopexit.i.fold.split126, %.loopexit.i.fold.split125, %.loopexit.i.fold.split124, %.loopexit.i.fold.split123, %.loopexit.i.fold.split122, %.loopexit.i.fold.split121, %.loopexit.i.fold.split120, %.loopexit.i.fold.split119, %.loopexit.i.fold.split118, %.loopexit.i.fold.split117, %.loopexit.i.fold.split116, %.loopexit.i.fold.split115, %.loopexit.i.fold.split114, %.loopexit.i.fold.split113, %.loopexit.i.fold.split112, %.loopexit.i.fold.split111, %.loopexit.i.fold.split110, %.loopexit.i.fold.split109, %.loopexit.i.fold.split108, %.loopexit.i.fold.split107, %.loopexit.i.fold.split106, %.loopexit.i.fold.split105, %.loopexit.i.fold.split104, %.loopexit.i.fold.split103, %.loopexit.i.fold.split102, %.loopexit.i.fold.split101, %.loopexit.i.fold.split100, %.loopexit.i.fold.split99, %.loopexit.i.fold.split98, %.loopexit.i.fold.split97, %.loopexit.i.fold.split96, %.loopexit.i.fold.split95, %.loopexit.i.fold.split94, %.loopexit.i.fold.split93, %.loopexit.i.fold.split92, %.loopexit.i.fold.split91, %.loopexit.i.fold.split90, %.loopexit.i.fold.split89, %.loopexit.i.fold.split88, %.loopexit.i.fold.split87, %.loopexit.i.fold.split86, %.loopexit.i.fold.split85, %.loopexit.i.fold.split84, %.loopexit.i.fold.split83, %.loopexit.i.fold.split82, %.loopexit.i.fold.split, %8, %.lr.ph86.i.a
  %.not76.i = phi i1 [ true, %.lr.ph86.i.a ], [ false, %.loopexit.i.fold.split101 ], [ false, %.loopexit.i.fold.split118 ], [ false, %.lr.ph.i ], [ false, %.loopexit.i.fold.split96 ], [ false, %.loopexit.i.fold.split122 ], [ false, %.loopexit.i.fold.split115 ], [ true, %8 ], [ false, %.loopexit.i.fold.split ], [ false, %.loopexit.i.fold.split112 ], [ false, %.loopexit.i.fold.split107 ], [ false, %.loopexit.i.fold.split82 ], [ false, %.loopexit.i.fold.split121 ], [ false, %.loopexit.i.fold.split128 ], [ false, %.loopexit.i.fold.split83 ], [ false, %.loopexit.i.fold.split102 ], [ false, %.loopexit.i.fold.split113 ], [ false, %.loopexit.i.fold.split84 ], [ false, %.loopexit.i.fold.split111 ], [ false, %.loopexit.i.fold.split98 ], [ false, %.loopexit.i.fold.split85 ], [ false, %.loopexit.i.fold.split116 ], [ false, %.loopexit.i.fold.split127 ], [ false, %.loopexit.i.fold.split86 ], [ false, %.loopexit.i.fold.split105 ], [ false, %.loopexit.i.fold.split104 ], [ false, %.loopexit.i.fold.split87 ], [ false, %.loopexit.i.fold.split110 ], [ false, %.loopexit.i.fold.split97 ], [ false, %.loopexit.i.fold.split88 ], [ false, %.loopexit.i.fold.split119 ], [ false, %.loopexit.i.fold.split126 ], [ false, %.loopexit.i.fold.split89 ], [ false, %.loopexit.i.fold.split100 ], [ false, %.loopexit.i.fold.split99 ], [ false, %.loopexit.i.fold.split90 ], [ false, %.loopexit.i.fold.split109 ], [ false, %.loopexit.i.fold.split120 ], [ false, %.loopexit.i.fold.split91 ], [ false, %.loopexit.i.fold.split106 ], [ false, %.loopexit.i.fold.split125 ], [ false, %.loopexit.i.fold.split92 ], [ false, %.loopexit.i.fold.split103 ], [ false, %.loopexit.i.fold.split114 ], [ false, %.loopexit.i.fold.split93 ], [ false, %.loopexit.i.fold.split108 ], [ false, %.loopexit.i.fold.split123 ], [ false, %.loopexit.i.fold.split94 ], [ false, %.loopexit.i.fold.split117 ], [ false, %.loopexit.i.fold.split124 ], [ false, %.loopexit.i.fold.split95 ], [ false, %.loopexit.i.fold.split129 ]
  %.169.i = phi ptr [ null, %.lr.ph86.i.a ], [ getelementptr inbounds nuw (i8, ptr @tape_alert_log_parameters, i64 504), %.loopexit.i.fold.split101 ], [ getelementptr inbounds nuw (i8, ptr @tape_alert_log_parameters, i64 912), %.loopexit.i.fold.split118 ], [ @tape_alert_log_parameters, %.lr.ph.i ], [ getelementptr inbounds nuw (i8, ptr @tape_alert_log_parameters, i64 384), %.loopexit.i.fold.split96 ], [ getelementptr inbounds nuw (i8, ptr @tape_alert_log_parameters, i64 1008), %.loopexit.i.fold.split122 ], [ getelementptr inbounds nuw (i8, ptr @tape_alert_log_parameters, i64 840), %.loopexit.i.fold.split115 ], [ null, %8 ], [ getelementptr inbounds nuw (i8, ptr @tape_alert_log_parameters, i64 24), %.loopexit.i.fold.split ], [ getelementptr inbounds nuw (i8, ptr @tape_alert_log_parameters, i64 768), %.loopexit.i.fold.split112 ], [ getelementptr inbounds nuw (i8, ptr @tape_alert_log_parameters, i64 648), %.loopexit.i.fold.split107 ], [ getelementptr inbounds nuw (i8, ptr @tape_alert_log_parameters, i64 48), %.loopexit.i.fold.split82 ], [ getelementptr inbounds nuw (i8, ptr @tape_alert_log_parameters, i64 984), %.loopexit.i.fold.split121 ], [ getelementptr inbounds nuw (i8, ptr @tape_alert_log_parameters, i64 1152), %.loopexit.i.fold.split128 ], [ getelementptr inbounds nuw (i8, ptr @tape_alert_log_parameters, i64 72), %.loopexit.i.fold.split83 ], [ getelementptr inbounds nuw (i8, ptr @tape_alert_log_parameters, i64 528), %.loopexit.i.fold.split102 ], [ getelementptr inbounds nuw (i8, ptr @tape_alert_log_parameters, i64 792), %.loopexit.i.fold.split113 ], [ getelementptr inbounds nuw (i8, ptr @tape_alert_log_parameters, i64 96), %.loopexit.i.fold.split84 ], [ getelementptr inbounds nuw (i8, ptr @tape_alert_log_parameters, i64 744), %.loopexit.i.fold.split111 ], [ getelementptr inbounds nuw (i8, ptr @tape_alert_log_parameters, i64 432), %.loopexit.i.fold.split98 ], [ getelementptr inbounds nuw (i8, ptr @tape_alert_log_parameters, i64 120), %.loopexit.i.fold.split85 ], [ getelementptr inbounds nuw (i8, ptr @tape_alert_log_parameters, i64 864), %.loopexit.i.fold.split116 ], [ getelementptr inbounds nuw (i8, ptr @tape_alert_log_parameters, i64 1128), %.loopexit.i.fold.split127 ], [ getelementptr inbounds nuw (i8, ptr @tape_alert_log_parameters, i64 144), %.loopexit.i.fold.split86 ], [ getelementptr inbounds nuw (i8, ptr @tape_alert_log_parameters, i64 600), %.loopexit.i.fold.split105 ], [ getelementptr inbounds nuw (i8, ptr @tape_alert_log_parameters, i64 576), %.loopexit.i.fold.split104 ], [ getelementptr inbounds nuw (i8, ptr @tape_alert_log_parameters, i64 168), %.loopexit.i.fold.split87 ], [ getelementptr inbounds nuw (i8, ptr @tape_alert_log_parameters, i64 720), %.loopexit.i.fold.split110 ], [ getelementptr inbounds nuw (i8, ptr @tape_alert_log_parameters, i64 408), %.loopexit.i.fold.split97 ], [ getelementptr inbounds nuw (i8, ptr @tape_alert_log_parameters, i64 192), %.loopexit.i.fold.split88 ], [ getelementptr inbounds nuw (i8, ptr @tape_alert_log_parameters, i64 936), %.loopexit.i.fold.split119 ], [ getelementptr inbounds nuw (i8, ptr @tape_alert_log_parameters, i64 1104), %.loopexit.i.fold.split126 ], [ getelementptr inbounds nuw (i8, ptr @tape_alert_log_parameters, i64 216), %.loopexit.i.fold.split89 ], [ getelementptr inbounds nuw (i8, ptr @tape_alert_log_parameters, i64 480), %.loopexit.i.fold.split100 ], [ getelementptr inbounds nuw (i8, ptr @tape_alert_log_parameters, i64 456), %.loopexit.i.fold.split99 ], [ getelementptr inbounds nuw (i8, ptr @tape_alert_log_parameters, i64 240), %.loopexit.i.fold.split90 ], [ getelementptr inbounds nuw (i8, ptr @tape_alert_log_parameters, i64 696), %.loopexit.i.fold.split109 ], [ getelementptr inbounds nuw (i8, ptr @tape_alert_log_parameters, i64 960), %.loopexit.i.fold.split120 ], [ getelementptr inbounds nuw (i8, ptr @tape_alert_log_parameters, i64 264), %.loopexit.i.fold.split91 ], [ getelementptr inbounds nuw (i8, ptr @tape_alert_log_parameters, i64 624), %.loopexit.i.fold.split106 ], [ getelementptr inbounds nuw (i8, ptr @tape_alert_log_parameters, i64 1080), %.loopexit.i.fold.split125 ], [ getelementptr inbounds nuw (i8, ptr @tape_alert_log_parameters, i64 288), %.loopexit.i.fold.split92 ], [ getelementptr inbounds nuw (i8, ptr @tape_alert_log_parameters, i64 552), %.loopexit.i.fold.split103 ], [ getelementptr inbounds nuw (i8, ptr @tape_alert_log_parameters, i64 816), %.loopexit.i.fold.split114 ], [ getelementptr inbounds nuw (i8, ptr @tape_alert_log_parameters, i64 312), %.loopexit.i.fold.split93 ], [ getelementptr inbounds nuw (i8, ptr @tape_alert_log_parameters, i64 672), %.loopexit.i.fold.split108 ], [ getelementptr inbounds nuw (i8, ptr @tape_alert_log_parameters, i64 1032), %.loopexit.i.fold.split123 ], [ getelementptr inbounds nuw (i8, ptr @tape_alert_log_parameters, i64 336), %.loopexit.i.fold.split94 ], [ getelementptr inbounds nuw (i8, ptr @tape_alert_log_parameters, i64 888), %.loopexit.i.fold.split117 ], [ getelementptr inbounds nuw (i8, ptr @tape_alert_log_parameters, i64 1056), %.loopexit.i.fold.split124 ], [ getelementptr inbounds nuw (i8, ptr @tape_alert_log_parameters, i64 360), %.loopexit.i.fold.split95 ], [ getelementptr inbounds nuw (i8, ptr @tape_alert_log_parameters, i64 1176), %.loopexit.i.fold.split129 ]
  %.not75.i = icmp eq i8 %i.au, 0
  br i1 %.not75.i, label %bb.k, label %bb.f

bb.f:                                             ; preds = %.loopexit.i
  br i1 %.not76.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = getelementptr i8, ptr %.169.i, i64 16   ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8
  %.not77.i = icmp eq ptr %i.az, null
  br i1 %.not77.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = zext i8 %i.au to i32                    ; 2 uses
  %i.bb = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %i.ax, i32 noundef %i.ba)
  %i.bc = load ptr, ptr %i.ay, align 8
  call void %i.bc(ptr noundef %i.bb, ptr noundef %1, ptr noundef %i.aa), !inline_history !12
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.bd = load i32, ptr @hf_scsi_log_param_data, align 4
  %i.be = zext i8 %i.au to i32                    ; 2 uses
  %i.bf = call ptr @proto_tree_add_item(ptr noundef %i.aa, i32 noundef %i.bd, ptr noundef %0, i32 noundef %i.ax, i32 noundef %i.be, i32 noundef 0) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pre-phi.i = phi i32 [ %i.be, %bb.i ], [ %i.ba, %bb.h ]
  %i.bg = add i32 %.pre-phi.i, %i.ax
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.loopexit.i
  %.1.i = phi i32 [ %i.bg, %bb.j ], [ %i.ax, %.loopexit.i ] ; 3 uses
  %i.bh = icmp ult i32 %.1.i, %i.ak
  br i1 %i.bh, label %.lr.ph86.i.a, label %dissect_scsi_log_page.exit, !llvm.loop !13

dissect_scsi_log_page.exit:                       ; preds = %bb.k, %bb.e
  %.0.lcssa.i = phi i32 [ %i.ai, %bb.e ], [ %.1.i, %bb.k ]
  %i.bi = load ptr, ptr %i.a, align 8
  %i.bj = sub i32 %.0.lcssa.i, %3
  call void @proto_item_set_len(ptr noundef %i.bi, i32 noundef %i.bj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %dissect_scsi_log_page.exit, %bb.a, %bb.c
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @dissect_spc_modeselect6(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i32 noundef %6, ptr nofree noundef readonly captures(address_is_null) %7) #1 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %or.cond = and i1 %4, %5
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %3)
  %i.b = load i32, ptr @hf_scsi_modesel_flags, align 4
  %i.c = zext i8 %i.a to i32                      ; 3 uses
  %i.d = and i32 %i.c, 16
  %i.e = and i32 %i.c, 1
  %i.f = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef nonnull %2, i32 noundef %i.b, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef %i.c, ptr noundef nonnull @.str.32, i32 noundef %i.d, i32 noundef %i.e) ; 0 uses
  %i.g = load i32, ptr @hf_scsi_paramlen, align 4
  %i.h = add i32 %3, 3
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.g, ptr noundef %0, i32 noundef %i.h, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.j = add i32 %3, 4
  %i.k = load i32, ptr @hf_scsi_control, align 4
  %i.l = load i32, ptr @ett_scsi_control, align 4
  %i.m = tail call ptr @proto_tree_add_bitmask(ptr noundef nonnull %2, ptr noundef %0, i32 noundef %i.j, i32 noundef %i.k, i32 noundef %i.l, ptr noundef nonnull @cdb_control_fields, i32 noundef 0) ; 0 uses
  br label %.critedge

bb.d:                                             ; preds = %bb.b
  %i.n = icmp eq i32 %6, 0
  br i1 %i.n, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load i32, ptr @hf_scsi_modesel_mode_data_length8, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.o, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.q = icmp eq i32 %6, 1
  br i1 %i.q, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add i32 %3, 1
  %i.s = getelementptr i8, ptr %7, i64 16         ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = load i8, ptr %i.t, align 8
  %i.v = and i8 %i.u, 127
  %cond = icmp eq i8 %i.v, 0
  %hf_scsi_modesel_dev_sbc_medium_type.val = load i32, ptr @hf_scsi_modesel_dev_sbc_medium_type, align 4
  %hf_scsi_modesel_medium_type.val = load i32, ptr @hf_scsi_modesel_medium_type, align 4
  %i.w = select i1 %cond, i32 %hf_scsi_modesel_dev_sbc_medium_type.val, i32 %hf_scsi_modesel_medium_type.val
  %i.x = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.w, ptr noundef %0, i32 noundef %i.r, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.y = icmp eq i32 %6, 2
  br i1 %i.y, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = add i32 %3, 2
  %i.aa = load i32, ptr @hf_scsi_modesel_device_specific_parameter, align 4
  %i.ab = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.aa, ptr noundef %0, i32 noundef %i.z, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ac = icmp eq i32 %6, 3
  br i1 %i.ac, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = add i32 %3, 3                           ; 2 uses
  %i.ae = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ad)
  %i.af = zext i8 %i.ae to i32                    ; 3 uses
  %i.ag = load i32, ptr @hf_scsi_modesel_block_descriptor_length8, align 4
  %i.ah = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.ag, ptr noundef %0, i32 noundef %i.ad, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ai = add i32 %3, 4                           ; 3 uses
  %i.aj = add i32 %6, -4
  %i.ak = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.ai)
  %.not78 = icmp eq i32 %i.ak, 0
  br i1 %.not78, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = tail call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %i.ai, i32 noundef %i.af)
  tail call fastcc void @dissect_scsi_blockdescs(ptr noundef %i.al, ptr noundef %2, ptr noundef %7, i1 noundef zeroext false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.am = sub i32 %i.aj, %i.af                    ; 2 uses
  %.not7980 = icmp eq i32 %i.am, 0
  br i1 %.not7980, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.an = add i32 %i.ai, %i.af
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %.082 = phi i32 [ %i.au, %bb.k ], [ %i.an, %.lr.ph.preheader ] ; 3 uses
  %.07281 = phi i32 [ %i.av, %bb.k ], [ %i.am, %.lr.ph.preheader ]
  %i.ao = tail call zeroext i1 @tvb_bytes_exist(ptr noundef %0, i32 noundef %.082, i32 noundef 2)
  br i1 %i.ao, label %bb.k, label %.critedge

bb.k:                                             ; preds = %.lr.ph
  %i.ap = load ptr, ptr %i.s, align 8
  %i.aq = load i8, ptr %i.ap, align 8
  %i.ar = and i8 %i.aq, 127
  %i.as = zext nneg i8 %i.ar to i32
  %i.at = tail call fastcc i32 @dissect_scsi_modepage(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %.082, i32 noundef %i.as) ; 2 uses
  %i.au = add i32 %i.at, %.082
  %i.av = sub i32 %.07281, %i.at                  ; 2 uses
  %.not79 = icmp eq i32 %i.av, 0
  br i1 %.not79, label %.critedge, label %.lr.ph, !llvm.loop !14

.critedge:                                        ; preds = %.lr.ph, %bb.k, %bb.j, %bb.c, %bb.g, %bb.f, %bb.e, %bb.d, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_scsi_blockdescs(ptr noundef %0, ptr noundef nonnull %1, ptr nofree noundef readonly captures(address_is_null) %2, i1 noundef zeroext %3) unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 0)
  %.not551 = icmp eq i32 %i.a, 0
  br i1 %.not551, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr i8, ptr %2, i64 16
  br i1 %3, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.d
  %.02.us = phi i32 [ %i.q, %bb.d ], [ 0, %.lr.ph ] ; 5 uses
  %i.c = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.02.us)
  %i.d = icmp ult i32 %i.c, 8
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.e = load i32, ptr @hf_scsi_blockdescs_no_of_blocks64, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef nonnull %1, i32 noundef %i.e, ptr noundef %0, i32 noundef %.02.us, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.g = or disjoint i32 %.02.us, 8               ; 2 uses
  %i.h = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.g)
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr @hf_scsi_blockdescs_density_code, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef nonnull %1, i32 noundef %i.j, ptr noundef %0, i32 noundef %i.g, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.l = or disjoint i32 %.02.us, 12              ; 2 uses
  %i.m = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.l)
  %i.n = icmp ult i32 %i.m, 4
  br i1 %i.n, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load i32, ptr @hf_scsi_blockdescs_block_length32, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef nonnull %1, i32 noundef %i.o, ptr noundef %0, i32 noundef %i.l, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.q = add i32 %.02.us, 16                      ; 2 uses
  %i.r = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.q)
  %.not55.us = icmp eq i32 %i.r, 0
  br i1 %.not55.us, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !15

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.j
  %.02 = phi i32 [ %.1, %bb.j ], [ 0, %.lr.ph ]   ; 7 uses
  %i.s = load ptr, ptr %i.b, align 8
  %i.t = load i8, ptr %i.s, align 8
  %i.u = and i8 %i.t, 127
  %i.v = icmp eq i8 %i.u, 0
  %i.w = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.02) ; 2 uses
  br i1 %i.v, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph.split
  %i.x = icmp ult i32 %i.w, 4
  br i1 %i.x, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load i32, ptr @hf_scsi_blockdescs_no_of_blocks32, align 4
  %i.z = tail call ptr @proto_tree_add_item(ptr noundef nonnull %1, i32 noundef %i.y, ptr noundef %0, i32 noundef %.02, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.aa = or disjoint i32 %.02, 5                 ; 2 uses
  %i.ab = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.aa)
  %i.ac = icmp ult i32 %i.ab, 3
  br i1 %i.ac, label %.loopexit, label %bb.j

bb.g:                                             ; preds = %.lr.ph.split
  %i.ad = icmp eq i32 %i.w, 0
  br i1 %i.ad, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = load i32, ptr @hf_scsi_blockdescs_density_code, align 4
  %i.af = tail call ptr @proto_tree_add_item(ptr noundef nonnull %1, i32 noundef %i.ae, ptr noundef %0, i32 noundef %.02, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ag = or disjoint i32 %.02, 1                 ; 2 uses
  %i.ah = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.ag)
  %i.ai = icmp ult i32 %i.ah, 3
  br i1 %i.ai, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = load i32, ptr @hf_scsi_blockdescs_no_of_blocks24, align 4
  %i.ak = tail call ptr @proto_tree_add_item(ptr noundef nonnull %1, i32 noundef %i.aj, ptr noundef %0, i32 noundef %i.ag, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.al = or disjoint i32 %.02, 5                 ; 2 uses
  %i.am = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.al)
  %i.an = icmp ult i32 %i.am, 3
  br i1 %i.an, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %.sink13 = phi i32 [ %i.aa, %bb.f ], [ %i.al, %bb.i ]
  %i.ao = load i32, ptr @hf_scsi_blockdescs_block_length24, align 4
  %i.ap = tail call ptr @proto_tree_add_item(ptr noundef nonnull %1, i32 noundef %i.ao, ptr noundef %0, i32 noundef %.sink13, i32 noundef 3, i32 noundef 0) ; 0 uses
  %.1 = add i32 %.02, 8                           ; 2 uses
  %i.aq = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.1)
  %.not55 = icmp eq i32 %i.aq, 0
  br i1 %.not55, label %.loopexit, label %.lr.ph.split, !llvm.loop !15

.loopexit:                                        ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %.lr.ph.split.us, %bb.b, %bb.c, %bb.d, %.preheader, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @tvb_bytes_exist(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 2, 65538) i32 @dissect_scsi_modepage(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3, i32 noundef range(i32 0, 128) %4) unnamed_addr #1 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %3)
  %i.b = and i8 %i.a, 63                          ; 2 uses
  %i.c = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %3)
  %i.d = and i8 %i.c, 64                          ; 2 uses
  %.not = icmp eq i8 %i.d, 0                      ; 3 uses
  %i.e = add i32 %3, 1
  %i.f = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.e) ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %3, 2
  %i.h = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.g)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = zext i8 %i.f to i16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.062 = phi i16 [ %i.h, %bb.b ], [ %i.i, %bb.c ]
  %.061 = phi i8 [ %i.f, %bb.b ], [ 0, %bb.c ]
  %i.j = zext nneg i8 %i.b to i32                 ; 2 uses
  %i.k = tail call ptr @try_val_to_str(i32 noundef %i.j, ptr noundef nonnull @scsi_spc_modepage_val)
  %i.l = icmp eq ptr %i.k, null
  %i.m = icmp samesign ult i32 %4, 9
  %or.cond = and i1 %i.l, %i.m
  br i1 %or.cond, label %switch.lookup, label %bb.e

switch.lookup:                                    ; preds = %bb.d
  %i.n = zext nneg i32 %4 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dissect_scsi_modepage, i64 %i.n
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.o = zext nneg i32 %4 to i64
  %switch.gep65 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dissect_spc_modesense10, i64 %i.o
  %switch.load66 = load ptr, ptr %switch.gep65, align 8
  %i.p = zext nneg i32 %4 to i64
  %switch.gep67 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dissect_scsi_modepage.5, i64 %i.p
  %switch.load68 = load ptr, ptr %switch.gep67, align 8
  br label %bb.e

bb.e:                                             ; preds = %switch.lookup, %bb.d
  %.060 = phi ptr [ @scsi_spc_modepage_val, %bb.d ], [ %switch.load, %switch.lookup ]
  %.059.in = phi ptr [ @hf_scsi_spc_pagecode, %bb.d ], [ %switch.load66, %switch.lookup ]
  %.0 = phi ptr [ @dissect_scsi_spc_modepage, %bb.d ], [ %switch.load68, %switch.lookup ]
  %.059 = load i32, ptr %.059.in, align 4
  %i.q = zext i16 %.062 to i32                    ; 4 uses
  %i.r = select i1 %.not, i32 2, i32 4
  %i.s = add nuw nsw i32 %i.r, %i.q
  %i.t = load i32, ptr @ett_scsi_page, align 4
  %i.u = getelementptr i8, ptr %1, i64 416
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call ptr @val_to_str(ptr noundef %i.v, i32 noundef %i.j, ptr noundef nonnull %.060, ptr noundef nonnull @.str.1610)
  %i.x = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef nonnull %2, ptr noundef %0, i32 noundef %3, i32 noundef %i.s, i32 noundef %i.t, ptr noundef null, ptr noundef nonnull @.str.1618, ptr noundef %i.w) ; 8 uses
  %i.y = load i32, ptr @hf_scsi_modepage_ps, align 4
  %i.z = tail call ptr @proto_tree_add_item(ptr noundef %i.x, i32 noundef %i.y, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aa = load i32, ptr @hf_scsi_modepage_spf, align 4
  %i.ab = tail call ptr @proto_tree_add_item(ptr noundef %i.x, i32 noundef %i.aa, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ac = tail call ptr @proto_tree_add_item(ptr noundef %i.x, i32 noundef %.059, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ad = add i32 %3, 1                           ; 2 uses
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = load i32, ptr @hf_scsi_spc_subpagecode, align 4
  %i.af = tail call ptr @proto_tree_add_item(ptr noundef %i.x, i32 noundef %i.ae, ptr noundef %0, i32 noundef %i.ad, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ag = load i32, ptr @hf_scsi_modepage_plen, align 4
  %i.ah = add i32 %3, 2
  %i.ai = tail call ptr @proto_tree_add_item(ptr noundef %i.x, i32 noundef %i.ag, ptr noundef %0, i32 noundef %i.ah, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.aj = load i32, ptr @hf_scsi_modepage_plen, align 4
  %i.ak = tail call ptr @proto_tree_add_item(ptr noundef %i.x, i32 noundef %i.aj, ptr noundef %0, i32 noundef %i.ad, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.al = tail call zeroext i1 @tvb_bytes_exist(ptr noundef %0, i32 noundef %3, i32 noundef %i.q)
  br i1 %i.al, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.am = tail call zeroext i1 %.0(ptr noundef %0, ptr noundef %1, ptr noundef %i.x, i32 noundef %3, i8 noundef zeroext %i.b, i8 noundef zeroext %i.d, i8 noundef zeroext %.061)
  br i1 %i.am, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = add i32 %3, 2
  %i.ao = tail call ptr @proto_tree_add_expert(ptr noundef %i.x, ptr noundef %1, ptr noundef nonnull @ei_scsi_unknown_page, ptr noundef %0, i32 noundef %i.an, i32 noundef %i.q) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  %.063 = add nuw nsw i32 %i.q, 2
  ret i32 %.063
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @dissect_spc_modeselect10(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i32 noundef %6, ptr nofree noundef readonly captures(address_is_null) %7) #1 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %or.cond = and i1 %4, %5
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %3)
  %i.b = load i32, ptr @hf_scsi_modesel_flags, align 4
  %i.c = zext i8 %i.a to i32                      ; 3 uses
  %i.d = and i32 %i.c, 16
  %i.e = and i32 %i.c, 1
  %i.f = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef nonnull %2, i32 noundef %i.b, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef %i.c, ptr noundef nonnull @.str.32, i32 noundef %i.d, i32 noundef %i.e) ; 0 uses
  %i.g = load i32, ptr @hf_scsi_paramlen16, align 4
  %i.h = add i32 %3, 6
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.g, ptr noundef %0, i32 noundef %i.h, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.j = add i32 %3, 8
  %i.k = load i32, ptr @hf_scsi_control, align 4
  %i.l = load i32, ptr @ett_scsi_control, align 4
  %i.m = tail call ptr @proto_tree_add_bitmask(ptr noundef nonnull %2, ptr noundef %0, i32 noundef %i.j, i32 noundef %i.k, i32 noundef %i.l, ptr noundef nonnull @cdb_control_fields, i32 noundef 0) ; 0 uses
  br label %.critedge

bb.d:                                             ; preds = %bb.b
  %i.n = icmp eq i32 %6, 0
  br i1 %i.n, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load i32, ptr @hf_scsi_modesel_mode_data_length16, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.o, ptr noundef %0, i32 noundef %3, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.q = add i32 %3, 2
  %i.r = icmp eq i32 %6, 2
  br i1 %i.r, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr i8, ptr %7, i64 16         ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not90 = icmp eq ptr %i.t, null
  br i1 %.not90, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = load i8, ptr %i.t, align 8
  %i.v = and i8 %i.u, 127
  %cond = icmp eq i8 %i.v, 0
  %hf_scsi_modesel_dev_sbc_medium_type.val = load i32, ptr @hf_scsi_modesel_dev_sbc_medium_type, align 4
  %hf_scsi_modesel_medium_type.val = load i32, ptr @hf_scsi_modesel_medium_type, align 4
  %i.w = select i1 %cond, i32 %hf_scsi_modesel_dev_sbc_medium_type.val, i32 %hf_scsi_modesel_medium_type.val
  %i.x = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.w, ptr noundef %0, i32 noundef %i.q, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.y = icmp eq i32 %6, 3
  br i1 %i.y, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = add i32 %3, 3
  %i.aa = load i32, ptr @hf_scsi_modesel_device_specific_parameter, align 4
  %i.ab = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.aa, ptr noundef %0, i32 noundef %i.z, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ac = icmp eq i32 %6, 4
  br i1 %i.ac, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = add i32 %3, 4                           ; 2 uses
  %i.ae = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ad)
  %i.af = trunc i8 %i.ae to i1
  %i.ag = load i32, ptr @hf_scsi_modesel_longlba, align 4
  %i.ah = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.ag, ptr noundef %0, i32 noundef %i.ad, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ai = icmp eq i32 %6, 6
  br i1 %i.ai, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = add i32 %3, 6                           ; 2 uses
  %i.ak = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.aj)
  %i.al = zext i16 %i.ak to i32                   ; 3 uses
  %i.am = load i32, ptr @hf_scsi_modesel_block_descriptor_length16, align 4
  %i.an = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.am, ptr noundef %0, i32 noundef %i.aj, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ao = add i32 %3, 8                           ; 3 uses
  %i.ap = add i32 %6, -8
  %i.aq = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.ao)
  %.not91 = icmp eq i32 %i.aq, 0
  br i1 %.not91, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = tail call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %i.ao, i32 noundef %i.al)
  tail call fastcc void @dissect_scsi_blockdescs(ptr noundef %i.ar, ptr noundef %2, ptr noundef %7, i1 noundef zeroext %i.af)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.as = sub i32 %i.ap, %i.al                    ; 2 uses
  %.not9293 = icmp eq i32 %i.as, 0
  br i1 %.not9293, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.l
  %i.at = add i32 %i.ao, %i.al
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.m
  %.095 = phi i32 [ %i.ba, %bb.m ], [ %i.at, %.lr.ph.preheader ] ; 3 uses
  %.08294 = phi i32 [ %i.bb, %bb.m ], [ %i.as, %.lr.ph.preheader ]
  %i.au = tail call zeroext i1 @tvb_bytes_exist(ptr noundef %0, i32 noundef %.095, i32 noundef 2)
  br i1 %i.au, label %bb.m, label %.critedge

bb.m:                                             ; preds = %.lr.ph
  %i.av = load ptr, ptr %i.s, align 8
  %i.aw = load i8, ptr %i.av, align 8
  %i.ax = and i8 %i.aw, 127
  %i.ay = zext nneg i8 %i.ax to i32
  %i.az = tail call fastcc i32 @dissect_scsi_modepage(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %.095, i32 noundef %i.ay) ; 2 uses
  %i.ba = add i32 %i.az, %.095
  %i.bb = sub i32 %.08294, %i.az                  ; 2 uses
  %.not92 = icmp eq i32 %i.bb, 0
  br i1 %.not92, label %.critedge, label %.lr.ph, !llvm.loop !16

.critedge:                                        ; preds = %.lr.ph, %bb.m, %bb.l, %bb.c, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @dissect_spc_modesense6(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i32 noundef %6, ptr nofree noundef readonly captures(address_is_null) %7) #1 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %or.cond = and i1 %4, %5
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %3) ; 2 uses
  br i1 %or.cond, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.b = load i32, ptr @hf_scsi_modesns_flags, align 4
  %i.c = zext i8 %i.a to i32                      ; 2 uses
  %i.d = and i32 %i.c, 8
  %i.e = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef nonnull %2, i32 noundef %i.b, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef %i.c, ptr noundef nonnull @.str.33, i32 noundef %i.d) ; 0 uses
  %i.f = load i32, ptr @hf_scsi_modesns_pc, align 4
  %i.g = add i32 %3, 1                            ; 3 uses
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.f, ptr noundef %0, i32 noundef %i.g, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.not.i = icmp eq ptr %7, null
  br i1 %.not.i, label %dissect_scsi_pagecode.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.g)
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  %i.k = and i32 %i.j, 63
  %i.l = tail call ptr @try_val_to_str(i32 noundef %i.k, ptr noundef nonnull @scsi_spc_modepage_val)
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %7, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load i8, ptr %i.o, align 8
  %i.q = and i8 %i.p, 127                         ; 2 uses
  %i.r = icmp samesign ult i8 %i.q, 9
  br i1 %i.r, label %switch.lookup, label %bb.f

switch.lookup:                                    ; preds = %bb.e
  %i.s = zext nneg i8 %i.q to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dissect_spc_modesense10, i64 %i.s
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %switch.lookup, %bb.d
  %.0.in.i = phi ptr [ @hf_scsi_spc_pagecode, %bb.d ], [ %switch.load, %switch.lookup ], [ @hf_scsi_spc_pagecode, %bb.e ]
  %.0.i = load i32, ptr %.0.in.i, align 4
  %i.t = tail call ptr @proto_tree_add_uint(ptr noundef nonnull %2, i32 noundef %.0.i, ptr noundef %0, i32 noundef %i.g, i32 noundef 1, i32 noundef %i.j) ; 0 uses
  br label %dissect_scsi_pagecode.exit

dissect_scsi_pagecode.exit:                       ; preds = %bb.c, %bb.f
  %i.u = load i32, ptr @hf_scsi_alloclen, align 4
  %i.v = add i32 %3, 3
  %i.w = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.u, ptr noundef %0, i32 noundef %i.v, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.x = add i32 %3, 4
  %i.y = load i32, ptr @hf_scsi_control, align 4
  %i.z = load i32, ptr @ett_scsi_control, align 4
  %i.aa = tail call ptr @proto_tree_add_bitmask(ptr noundef nonnull %2, ptr noundef %0, i32 noundef %i.x, i32 noundef %i.y, i32 noundef %i.z, ptr noundef nonnull @cdb_control_fields, i32 noundef 0) ; 0 uses
  br label %.critedge

bb.g:                                             ; preds = %bb.b
  %i.ab = zext i8 %i.a to i32                     ; 2 uses
  %i.ac = load i32, ptr @hf_scsi_modesel_mode_data_length8, align 4
  %i.ad = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.ac, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.not85.not = icmp eq i32 %6, 0
  %i.ae = tail call i32 @llvm.smin.i32(i32 %6, i32 %i.ab)
  %.0 = select i1 %.not85.not, i32 %i.ab, i32 %i.ae ; 4 uses
  %i.af = icmp slt i32 %.0, 1
  br i1 %i.af, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = add i32 %3, 1
  %i.ah = load i32, ptr @hf_scsi_modesel_medium_type, align 4
  %i.ai = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.ah, ptr noundef %0, i32 noundef %i.ag, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aj = icmp eq i32 %.0, 1
  br i1 %i.aj, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = add i32 %3, 2
  %i.al = load i32, ptr @hf_scsi_modesel_device_specific_parameter, align 4
  %i.am = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.al, ptr noundef %0, i32 noundef %i.ak, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.an = icmp samesign ult i32 %.0, 3
  br i1 %i.an, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = add i32 %3, 3                           ; 2 uses
  %i.ap = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ao)
  %i.aq = zext i8 %i.ap to i32                    ; 3 uses
  %i.ar = load i32, ptr @hf_scsi_modesel_block_descriptor_length8, align 4
  %i.as = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.ar, ptr noundef %0, i32 noundef %i.ao, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.at = add i32 %3, 4                           ; 3 uses
  %i.au = add nsw i32 %.0, -3
  %i.av = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.at)
  %.not86 = icmp eq i32 %i.av, 0
  br i1 %.not86, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = tail call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %i.at, i32 noundef %i.aq)
  tail call fastcc void @dissect_scsi_blockdescs(ptr noundef %i.aw, ptr noundef %2, ptr noundef %7, i1 noundef zeroext false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ax = sub nsw i32 %i.au, %i.aq                ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.l
  %i.az = add i32 %i.at, %i.aq
  %i.ba = getelementptr i8, ptr %7, i64 16
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.n
  %.189 = phi i32 [ %i.ax, %.lr.ph ], [ %i.bi, %bb.n ]
  %.07988 = phi i32 [ %i.az, %.lr.ph ], [ %i.bh, %bb.n ] ; 3 uses
  %i.bb = tail call zeroext i1 @tvb_bytes_exist(ptr noundef %0, i32 noundef %.07988, i32 noundef 2)
  br i1 %i.bb, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.bc = load ptr, ptr %i.ba, align 8
  %i.bd = load i8, ptr %i.bc, align 8
  %i.be = and i8 %i.bd, 127
  %i.bf = zext nneg i8 %i.be to i32
  %i.bg = tail call fastcc i32 @dissect_scsi_modepage(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %.07988, i32 noundef %i.bf) ; 2 uses
  %i.bh = add i32 %i.bg, %.07988
  %i.bi = sub nsw i32 %.189, %i.bg                ; 2 uses
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %bb.m, label %.critedge, !llvm.loop !17

.critedge:                                        ; preds = %bb.m, %bb.n, %bb.l, %dissect_scsi_pagecode.exit, %bb.i, %bb.h, %bb.g, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @dissect_spc_modesense10(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i32 noundef %6, ptr nofree noundef readonly captures(address_is_null) %7) #1 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %or.cond = and i1 %4, %5
  br i1 %or.cond, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %3)
  %i.b = load i32, ptr @hf_scsi_modesns_flags, align 4
  %i.c = zext i8 %i.a to i32                      ; 3 uses
  %i.d = and i32 %i.c, 16
  %i.e = and i32 %i.c, 8
  %i.f = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef nonnull %2, i32 noundef %i.b, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef %i.c, ptr noundef nonnull @.str.34, i32 noundef %i.d, i32 noundef %i.e) ; 0 uses
  %i.g = load i32, ptr @hf_scsi_modesns_pc, align 4
  %i.h = add i32 %3, 1                            ; 3 uses
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.g, ptr noundef %0, i32 noundef %i.h, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.not.i = icmp eq ptr %7, null
  br i1 %.not.i, label %dissect_scsi_pagecode.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.h)
  %i.k = zext i8 %i.j to i32                      ; 2 uses
  %i.l = and i32 %i.k, 63
  %i.m = tail call ptr @try_val_to_str(i32 noundef %i.l, ptr noundef nonnull @scsi_spc_modepage_val)
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %7, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = load i8, ptr %i.p, align 8
  %i.r = and i8 %i.q, 127                         ; 2 uses
  %i.s = icmp samesign ult i8 %i.r, 9
  br i1 %i.s, label %switch.lookup, label %bb.f

switch.lookup:                                    ; preds = %bb.e
  %i.t = zext nneg i8 %i.r to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dissect_spc_modesense10, i64 %i.t
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %switch.lookup, %bb.d
  %.0.in.i = phi ptr [ @hf_scsi_spc_pagecode, %bb.d ], [ %switch.load, %switch.lookup ], [ @hf_scsi_spc_pagecode, %bb.e ]
  %.0.i = load i32, ptr %.0.in.i, align 4
  %i.u = tail call ptr @proto_tree_add_uint(ptr noundef nonnull %2, i32 noundef %.0.i, ptr noundef %0, i32 noundef %i.h, i32 noundef 1, i32 noundef %i.k) ; 0 uses
  br label %dissect_scsi_pagecode.exit

dissect_scsi_pagecode.exit:                       ; preds = %bb.c, %bb.f
  %i.v = load i32, ptr @hf_scsi_alloclen16, align 4
  %i.w = add i32 %3, 6
  %i.x = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.v, ptr noundef %0, i32 noundef %i.w, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.y = add i32 %3, 8
  %i.z = load i32, ptr @hf_scsi_control, align 4
  %i.aa = load i32, ptr @ett_scsi_control, align 4
  %i.ab = tail call ptr @proto_tree_add_bitmask(ptr noundef nonnull %2, ptr noundef %0, i32 noundef %i.y, i32 noundef %i.z, i32 noundef %i.aa, ptr noundef nonnull @cdb_control_fields, i32 noundef 0) ; 0 uses
  br label %.critedge

bb.g:                                             ; preds = %bb.b
  %i.ac = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %3)
  %i.ad = zext i16 %i.ac to i32                   ; 2 uses
  %i.ae = load i32, ptr @hf_scsi_modesel_mode_data_length16, align 4
  %i.af = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.ae, ptr noundef %0, i32 noundef %3, i32 noundef 2, i32 noundef 0) ; 0 uses
  %.not96.not = icmp eq i32 %6, 0
  %i.ag = tail call i32 @llvm.smin.i32(i32 %6, i32 %i.ad)
  %.0 = select i1 %.not96.not, i32 %i.ad, i32 %i.ag ; 5 uses
  %i.ah = icmp slt i32 %.0, 1
  br i1 %i.ah, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = add i32 %3, 2
  %i.aj = load i32, ptr @hf_scsi_modesel_medium_type, align 4
  %i.ak = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.aj, ptr noundef %0, i32 noundef %i.ai, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.al = icmp eq i32 %.0, 1
  br i1 %i.al, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = add i32 %3, 3
  %i.an = load i32, ptr @hf_scsi_modesel_device_specific_parameter, align 4
  %i.ao = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.an, ptr noundef %0, i32 noundef %i.am, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ap = icmp samesign ult i32 %.0, 3
  br i1 %i.ap, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = add i32 %3, 4                           ; 2 uses
  %i.ar = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.aq)
  %i.as = trunc i8 %i.ar to i1
  %i.at = load i32, ptr @hf_scsi_modesel_longlba, align 4
  %i.au = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.at, ptr noundef %0, i32 noundef %i.aq, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.av = icmp samesign ult i32 %.0, 6
  br i1 %i.av, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = add i32 %3, 6                           ; 2 uses
  %i.ax = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.aw)
  %i.ay = zext i16 %i.ax to i32                   ; 3 uses
  %i.az = load i32, ptr @hf_scsi_modesel_block_descriptor_length16, align 4
  %i.ba = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.az, ptr noundef %0, i32 noundef %i.aw, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bb = add i32 %3, 8                           ; 3 uses
  %i.bc = add nsw i32 %.0, -6
  %i.bd = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.bb)
  %.not97 = icmp eq i32 %i.bd, 0
  br i1 %.not97, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = tail call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %i.bb, i32 noundef %i.ay)
  tail call fastcc void @dissect_scsi_blockdescs(ptr noundef %i.be, ptr noundef %2, ptr noundef %7, i1 noundef zeroext %i.as)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bf = sub nsw i32 %i.bc, %i.ay                ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.m
  %i.bh = add i32 %i.bb, %i.ay
  %i.bi = getelementptr i8, ptr %7, i64 16
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.o
  %.1100 = phi i32 [ %i.bf, %.lr.ph ], [ %i.bq, %bb.o ]
  %.08999 = phi i32 [ %i.bh, %.lr.ph ], [ %i.bp, %bb.o ] ; 3 uses
  %i.bj = tail call zeroext i1 @tvb_bytes_exist(ptr noundef %0, i32 noundef %.08999, i32 noundef 2)
  br i1 %i.bj, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.bk = load ptr, ptr %i.bi, align 8
  %i.bl = load i8, ptr %i.bk, align 8
  %i.bm = and i8 %i.bl, 127
  %i.bn = zext nneg i8 %i.bm to i32
  %i.bo = tail call fastcc i32 @dissect_scsi_modepage(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %.08999, i32 noundef %i.bn) ; 2 uses
  %i.bp = add i32 %i.bo, %.08999
  %i.bq = sub nsw i32 %.1100, %i.bo               ; 2 uses
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %bb.n, label %.critedge, !llvm.loop !18

.critedge:                                        ; preds = %bb.n, %bb.o, %bb.m, %dissect_scsi_pagecode.exit, %bb.j, %bb.i, %bb.h, %bb.g, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @dissect_spc_preventallowmediaremoval(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i32 %6, ptr nofree readnone captures(none) %7) #1 {
bb.a:
  %or.cond = and i1 %4, %5
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %3, 3                            ; 2 uses
  %i.b = load i32, ptr @hf_scsi_prevent_allow_flags, align 4
  %i.c = load i32, ptr @ett_scsi_prevent_allow, align 4
  %i.d = tail call ptr @proto_tree_add_bitmask(ptr noundef %2, ptr noundef %0, i32 noundef %i.a, i32 noundef %i.b, i32 noundef %i.c, ptr noundef nonnull @dissect_spc_preventallowmediaremoval.prevent_allow_fields, i32 noundef 0) ; 0 uses
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.a)
  %i.f = and i8 %i.e, 1
  %.not = icmp eq i8 %i.f, 0
  %i.g = getelementptr i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %.str.36..str.35 = select i1 %.not, ptr @.str.36, ptr @.str.35
  tail call void @col_append_str(ptr noundef %i.h, i32 noundef 25, ptr noundef nonnull %.str.36..str.35)
  %i.i = add i32 %3, 4
  %i.j = load i32, ptr @hf_scsi_control, align 4
  %i.k = load i32, ptr @ett_scsi_control, align 4
  %i.l = tail call ptr @proto_tree_add_bitmask(ptr noundef %2, ptr noundef %0, i32 noundef %i.i, i32 noundef %i.j, i32 noundef %i.k, ptr noundef nonnull @cdb_control_fields, i32 noundef 0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @col_append_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @dissect_spc_persistentreservein(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i32 noundef %6, ptr nofree noundef readonly captures(address_is_null) %7) #1 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %or.cond = and i1 %4, %5
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.a = load i32, ptr @hf_scsi_persresvin_svcaction, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.a, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.c = load i32, ptr @hf_scsi_alloclen16, align 4
  %i.d = add i32 %3, 6
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.c, ptr noundef %0, i32 noundef %i.d, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.f = add i32 %3, 8
  %i.g = load i32, ptr @hf_scsi_control, align 4
  %i.h = load i32, ptr @ett_scsi_control, align 4
  %i.i = tail call ptr @proto_tree_add_bitmask(ptr noundef nonnull %2, ptr noundef %0, i32 noundef %i.f, i32 noundef %i.g, i32 noundef %i.h, ptr noundef nonnull @cdb_control_fields, i32 noundef 0) ; 0 uses
  %i.j = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %3)
  %i.k = zext i8 %i.j to i16
  %i.l = getelementptr i8, ptr %7, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr i8, ptr %i.m, i64 12
  store i16 %i.k, ptr %i.n, align 4
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %.not60 = icmp eq ptr %7, null
  br i1 %.not60, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %7, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr i8, ptr %i.p, i64 12
  %i.r = load i16, ptr %i.q, align 4
  %i.s = and i16 %i.r, 31
  %i.t = zext nneg i16 %i.s to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.055 = phi i32 [ %i.t, %bb.e ], [ 31, %bb.d ]  ; 2 uses
  %i.u = load i32, ptr @hf_scsi_persresvin_generation_number, align 4
  %i.v = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.u, ptr noundef %0, i32 noundef %3, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.w = add i32 %3, 4                            ; 2 uses
  %i.x = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.w)
  %i.y = load i32, ptr @hf_scsi_persresvin_additional_length, align 4
  %i.z = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.y, ptr noundef %0, i32 noundef %i.w, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.aa = tail call i32 @llvm.umin.i32(i32 %6, i32 %i.x) ; 2 uses
  %i.ab = icmp eq i32 %.055, 0
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = lshr i32 %i.aa, 3                       ; 2 uses
  %.not63 = icmp eq i32 %i.ac, 0
  br i1 %.not63, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %.lr.ph
  %.062 = phi i32 [ %i.af, %.lr.ph ], [ 0, %bb.g ]
  %.056.in61 = phi i32 [ %.056, %.lr.ph ], [ %3, %bb.g ]
  %.056 = add i32 %.056.in61, 8                   ; 2 uses
  %i.ad = load i32, ptr @hf_scsi_persresv_key, align 4
  %i.ae = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.ad, ptr noundef %0, i32 noundef %.056, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.af = add nuw nsw i32 %.062, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.af, %i.ac
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !19

bb.h:                                             ; preds = %bb.f
  %i.ag = icmp eq i32 %.055, 1
  %i.ah = icmp ne i32 %i.aa, 0
  %or.cond3 = select i1 %i.ag, i1 %i.ah, i1 false
  br i1 %or.cond3, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.ai = load i32, ptr @hf_scsi_persresv_key, align 4
  %i.aj = add i32 %3, 8
  %i.ak = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.ai, ptr noundef %0, i32 noundef %i.aj, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.al = load i32, ptr @hf_scsi_persresv_scopeaddr, align 4
  %i.am = add i32 %3, 16
  %i.an = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.al, ptr noundef %0, i32 noundef %i.am, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ao = load i32, ptr @hf_scsi_persresv_scope, align 4
  %i.ap = add i32 %3, 21                          ; 2 uses
  %i.aq = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.ao, ptr noundef %0, i32 noundef %i.ap, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ar = load i32, ptr @hf_scsi_persresv_type, align 4
  %i.as = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.ar, ptr noundef %0, i32 noundef %i.ap, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.g, %bb.c, %bb.h, %bb.i, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_ntohl(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @dissect_spc_persistentreserveout(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i32 %6, ptr nofree noundef readonly captures(none) %7) #1 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %.not62 = icmp eq ptr %2, null
  br i1 %.not62, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %or.cond = and i1 %4, %5
  br i1 %or.cond, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.b = load i32, ptr @hf_scsi_persresvout_svcaction, align 4
  %i.c = call ptr @proto_tree_add_item_ret_uint8(ptr noundef nonnull %2, i32 noundef %i.b, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.d = load i8, ptr %i.a, align 1
  switch i8 %i.d, label %bb.d [
    i8 6, label %bb.e
    i8 3, label %bb.e
    i8 0, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.e = load i32, ptr @hf_scsi_persresv_scope, align 4
  %i.f = add i32 %3, 1                            ; 2 uses
  %i.g = call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.e, ptr noundef %0, i32 noundef %i.f, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.h = load i32, ptr @hf_scsi_persresv_type, align 4
  %i.i = call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.h, ptr noundef %0, i32 noundef %i.f, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.d
  %i.j = load i32, ptr @hf_scsi_paramlen16, align 4
  %i.k = add i32 %3, 4
  %i.l = call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.j, ptr noundef %0, i32 noundef %i.k, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.m = add i32 %3, 8
  %i.n = load i32, ptr @hf_scsi_control, align 4
  %i.o = load i32, ptr @ett_scsi_control, align 4
  %i.p = call ptr @proto_tree_add_bitmask(ptr noundef nonnull %2, ptr noundef %0, i32 noundef %i.m, i32 noundef %i.n, i32 noundef %i.o, ptr noundef nonnull @cdb_control_fields, i32 noundef 0) ; 0 uses
  %i.q = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %3)
  %i.r = zext i8 %i.q to i16
  %i.s = getelementptr i8, ptr %7, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %i.t, i64 12
  store i16 %i.r, ptr %i.u, align 4
  br label %bb.j

bb.f:                                             ; preds = %bb.b
  %.not = xor i1 %4, true
  %or.cond9 = or i1 %5, %.not
  br i1 %or.cond9, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load i32, ptr @hf_scsi_persresvout_reskey, align 4
  %i.w = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.v, ptr noundef %0, i32 noundef %3, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.x = load i32, ptr @hf_scsi_persresvout_sareskey, align 4
  %i.y = add i32 %3, 8
  %i.z = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.x, ptr noundef %0, i32 noundef %i.y, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.aa = getelementptr i8, ptr %7, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr i8, ptr %i.ab, i64 12
  %i.ad = load i16, ptr %i.ac, align 4
  %i.ae = icmp eq i16 %i.ad, 7
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.af = add i32 %3, 20                          ; 2 uses
  %i.ag = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.af)
  %i.ah = load i32, ptr @hf_scsi_persresvout_obsolete, align 4
  %i.ai = add i32 %3, 16
  %i.aj = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.ah, ptr noundef %0, i32 noundef %i.ai, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ak = add i32 %3, 17
  %i.al = load i32, ptr @hf_scsi_persresvout_control, align 4
  %i.am = load i32, ptr @ett_persresv_control, align 4
  %i.an = tail call ptr @proto_tree_add_bitmask(ptr noundef nonnull %2, ptr noundef %0, i32 noundef %i.ak, i32 noundef %i.al, i32 noundef %i.am, ptr noundef nonnull @dissect_spc_persistentreserveout.persresv_fields, i32 noundef 0) ; 0 uses
  %i.ao = load i32, ptr @hf_scsi_persresvout_rel_tpi, align 4
  %i.ap = add i32 %3, 18
  %i.aq = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.ao, ptr noundef %0, i32 noundef %i.ap, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ar = load i32, ptr @hf_scsi_persresvout_transportid_len, align 4
  %i.as = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.ar, ptr noundef %0, i32 noundef %i.af, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.at = load i32, ptr @hf_scsi_persresvout_transportid, align 4
  %i.au = add i32 %3, 24
  %i.av = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.at, ptr noundef %0, i32 noundef %i.au, i32 noundef %i.ag, i32 noundef 0) ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.aw = load i32, ptr @hf_scsi_persresvout_obsolete, align 4
  %i.ax = add i32 %3, 16
  %i.ay = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.aw, ptr noundef %0, i32 noundef %i.ax, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.az = add i32 %3, 20
  %i.ba = load i32, ptr @hf_scsi_persresvout_control, align 4
  %i.bb = load i32, ptr @ett_persresv_control, align 4
  %i.bc = tail call ptr @proto_tree_add_bitmask(ptr noundef nonnull %2, ptr noundef %0, i32 noundef %i.az, i32 noundef %i.ba, i32 noundef %i.bb, ptr noundef nonnull @dissect_spc_persistentreserveout.persresv_fields.37, i32 noundef 0) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.f, %bb.h, %bb.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @dissect_spc_release6(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i32 %6, ptr nofree readnone captures(none) %7) #1 {
bb.a:
  %i.a = icmp ne ptr %2, null
  %or.cond = and i1 %i.a, %4
  %or.cond3 = and i1 %or.cond, %5
  br i1 %or.cond3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %3, 4
  %i.c = load i32, ptr @hf_scsi_control, align 4
  %i.d = load i32, ptr @ett_scsi_control, align 4
  %i.e = tail call ptr @proto_tree_add_bitmask(ptr noundef nonnull %2, ptr noundef %0, i32 noundef %i.b, i32 noundef %i.c, i32 noundef %i.d, ptr noundef nonnull @cdb_control_fields, i32 noundef 0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @dissect_spc_release10(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i32 %6, ptr nofree readnone captures(none) %7) #1 {
bb.a:
  %.not = icmp ne ptr %2, null
  %or.cond = and i1 %4, %5
  %or.cond21 = and i1 %.not, %or.cond
  br i1 %or.cond21, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %3)
  %i.b = load i32, ptr @hf_scsi_release_flags, align 4
  %i.c = zext i8 %i.a to i32                      ; 4 uses
  %i.d = and i32 %i.c, 16
  %i.e = and i32 %i.c, 2
  %i.f = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef nonnull %2, i32 noundef %i.b, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef %i.c, ptr noundef nonnull @.str.38, i32 noundef %i.d, i32 noundef %i.e) ; 0 uses
  %i.g = and i32 %i.c, 18
  %i.h = icmp eq i32 %i.g, 16
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr @hf_scsi_release_thirdpartyid, align 4
  %i.j = add i32 %3, 2
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.i, ptr noundef %0, i32 noundef %i.j, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = load i32, ptr @hf_scsi_paramlen16, align 4
  %i.m = add i32 %3, 6
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.l, ptr noundef %0, i32 noundef %i.m, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.o = add i32 %3, 8
  %i.p = load i32, ptr @hf_scsi_control, align 4
  %i.q = load i32, ptr @ett_scsi_control, align 4
  %i.r = tail call ptr @proto_tree_add_bitmask(ptr noundef nonnull %2, ptr noundef %0, i32 noundef %i.o, i32 noundef %i.p, i32 noundef %i.q, ptr noundef nonnull @cdb_control_fields, i32 noundef 0) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @dissect_scsi_lun(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = load i32, ptr @ett_scsi_lun, align 4
  %i.c = call ptr @proto_tree_add_subtree(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 8, i32 noundef %i.b, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.39) ; 3 uses
  %i.d = call i64 @tvb_get_ntoh48(ptr noundef %1, i32 noundef %2)
  %.mask = and i64 %i.d, 281474976710655
  %.not = icmp eq i64 %.mask, 0                   ; 2 uses
  br i1 %.not, label %.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.c, ptr noundef nonnull @.str.40)
  br label %.preheader

.preheader:                                       ; preds = %bb.b, %bb.a
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.v
  %.0112132 = phi i8 [ %.1113, %bb.v ], [ 0, %.preheader ] ; 3 uses
  %.0115131 = phi i32 [ %.1116, %bb.v ], [ 0, %.preheader ] ; 3 uses
  %i.e = add i32 %.0115131, %2                    ; 15 uses
  %i.f = call zeroext i16 @tvb_get_ntohs(ptr noundef %1, i32 noundef %i.e)
  %i.g = icmp eq i32 %.0115131, 0
  %i.h = icmp ne i16 %i.f, 0
  %or.cond = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.i = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.e) ; 5 uses
  %i.j = lshr i8 %i.i, 6                          ; 3 uses
  %i.k = zext nneg i8 %i.j to i32                 ; 2 uses
  %.not120 = icmp eq i8 %i.j, 3
  %i.l = lshr i8 %i.i, 3
  %i.m = and i8 %i.l, 6
  %narrow = add nuw nsw i8 %i.m, 2                ; 2 uses
  %.0114 = select i1 %.not120, i8 %narrow, i8 2   ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = zext nneg i8 %.0114 to i32
  %i.o = load i32, ptr @ett_scsi_lun_unit, align 4
  %i.p = call ptr @proto_tree_add_subtree(ptr noundef %i.c, ptr noundef %1, i32 noundef %i.e, i32 noundef %i.n, i32 noundef %i.o, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.39) ; 2 uses
  %i.q = add i8 %.0112132, 1
  %i.r = zext i8 %.0112132 to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.p, ptr noundef nonnull @.str.41, i32 noundef %i.r)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0117 = phi ptr [ %i.p, %bb.e ], [ %i.c, %bb.d ] ; 13 uses
  %.1113 = phi i8 [ %i.q, %bb.e ], [ %.0112132, %bb.d ]
  %.not122 = icmp eq i8 %i.i, 0
  %i.s = load i32, ptr @hf_scsi_lun_address_mode, align 4 ; 2 uses
  br i1 %.not122, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = call ptr @proto_tree_add_item(ptr noundef %.0117, i32 noundef %i.s, ptr noundef %1, i32 noundef %i.e, i32 noundef 1, i32 noundef 0) ; 0 uses
  switch i8 %i.j, label %default.unreachable133 [
    i8 0, label %bb.h
    i8 1, label %bb.j
    i8 2, label %bb.k
    i8 3, label %bb.l
  ]

bb.h:                                             ; preds = %bb.g
  %i.u = load i32, ptr @hf_scsi_bus, align 4
  %i.v = shl i32 %i.e, 3
  %i.w = or disjoint i32 %i.v, 2
  %i.x = call ptr @proto_tree_add_bits_item(ptr noundef %.0117, i32 noundef %i.u, ptr noundef %1, i32 noundef %i.w, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.y = add i32 %i.e, 1                          ; 2 uses
  %i.z = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.y)
  %i.aa = load i32, ptr @hf_scsi_lun, align 4
  %i.ab = zext i8 %i.z to i32
  %i.ac = call ptr @proto_tree_add_uint(ptr noundef %.0117, i32 noundef %i.aa, ptr noundef %1, i32 noundef %i.y, i32 noundef 1, i32 noundef %i.ab) ; 0 uses
  br label %bb.v

bb.i:                                             ; preds = %bb.f
  %i.ad = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %.0117, i32 noundef %i.s, ptr noundef %1, i32 noundef %i.e, i32 noundef 1, i32 noundef %i.k, ptr noundef nonnull @.str.42, i32 noundef %i.k) ; 0 uses
  %i.ae = load i32, ptr @hf_scsi_lun, align 4
  %i.af = shl i32 %i.e, 3
  %i.ag = or disjoint i32 %i.af, 2
  %i.ah = call ptr @proto_tree_add_bits_item(ptr noundef %.0117, i32 noundef %i.ae, ptr noundef %1, i32 noundef %i.ag, i32 noundef 14, i32 noundef 0) ; 0 uses
  br label %bb.v

bb.j:                                             ; preds = %bb.g
  %i.ai = load i32, ptr @hf_scsi_lun, align 4
  %i.aj = shl i32 %i.e, 3
  %i.ak = or disjoint i32 %i.aj, 2
  %i.al = call ptr @proto_tree_add_bits_item(ptr noundef %.0117, i32 noundef %i.ai, ptr noundef %1, i32 noundef %i.ak, i32 noundef 14, i32 noundef 0) ; 0 uses
  br label %bb.v

bb.k:                                             ; preds = %bb.g
  %i.am = load i32, ptr @hf_scsi_target, align 4
  %i.an = call ptr @proto_tree_add_item(ptr noundef %.0117, i32 noundef %i.am, ptr noundef %1, i32 noundef %i.e, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ao = load i32, ptr @hf_scsi_bus, align 4
  %i.ap = shl i32 %i.e, 3                         ; 2 uses
  %i.aq = add i32 %i.ap, 8
  %i.ar = call ptr @proto_tree_add_bits_item(ptr noundef %.0117, i32 noundef %i.ao, ptr noundef %1, i32 noundef %i.aq, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.as = load i32, ptr @hf_scsi_lun, align 4
  %i.at = add i32 %i.ap, 11
  %i.au = call ptr @proto_tree_add_bits_item(ptr noundef %.0117, i32 noundef %i.as, ptr noundef %1, i32 noundef %i.at, i32 noundef 5, i32 noundef 0) ; 0 uses
  br label %bb.v

bb.l:                                             ; preds = %bb.g
  %i.av = and i8 %i.i, 15
  %i.aw = lshr i8 %i.i, 4
  %i.ax = and i8 %i.aw, 3                         ; 4 uses
  %i.ay = load i32, ptr @hf_scsi_extended_add_method_len, align 4
  %i.az = call ptr @proto_tree_add_item(ptr noundef %.0117, i32 noundef %i.ay, ptr noundef %1, i32 noundef %i.e, i32 noundef 1, i32 noundef 0) ; 2 uses
  store ptr %i.az, ptr %i.a, align 8
  %i.ba = zext nneg i8 %narrow to i32             ; 2 uses
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.az, ptr noundef nonnull @.str.43, i32 noundef %i.ba)
  %i.bb = load i32, ptr @hf_scsi_extended_add_method, align 4
  %i.bc = call ptr @proto_tree_add_item(ptr noundef %.0117, i32 noundef %i.bb, ptr noundef %1, i32 noundef %i.e, i32 noundef 1, i32 noundef 0) ; 2 uses
  store ptr %i.bc, ptr %i.a, align 8
  switch i8 %i.av, label %bb.u [
    i8 1, label %bb.m
    i8 2, label %bb.o
    i8 14, label %bb.r
    i8 15, label %bb.s
  ]

bb.m:                                             ; preds = %bb.l
  %.not124 = icmp eq i8 %i.ax, 0
  br i1 %.not124, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.bd = load i32, ptr @hf_scsi_lun, align 4
  %i.be = add i32 %i.e, 1
  %i.bf = call ptr @proto_tree_add_item(ptr noundef %.0117, i32 noundef %i.bd, ptr noundef %1, i32 noundef %i.be, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.u

bb.o:                                             ; preds = %bb.l
  switch i8 %i.ax, label %bb.u [
    i8 1, label %bb.q
    i8 2, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.0.ph = phi ptr [ @.str.46, %bb.p ], [ @.str.45, %bb.o ]
  %i.bg = load i32, ptr @hf_scsi_lun_extended, align 4
  %i.bh = add i32 %i.e, 1
  %i.bi = add nsw i32 %i.ba, -1
  %i.bj = call ptr @proto_tree_add_item(ptr noundef %.0117, i32 noundef %i.bg, ptr noundef %1, i32 noundef %i.bh, i32 noundef %i.bi, i32 noundef 0) ; 0 uses
  br label %bb.u

bb.r:                                             ; preds = %bb.l
  %i.bk = icmp eq i8 %i.ax, 3
  %spec.select = select i1 %i.bk, ptr @.str.47, ptr null
  br label %bb.u

bb.s:                                             ; preds = %bb.l
  %i.bl = icmp eq i8 %i.ax, 3
  br i1 %i.bl, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bc, ptr noundef nonnull @.str.48)
  br label %.loopexit

bb.u:                                             ; preds = %bb.o, %bb.r, %bb.l, %bb.s, %bb.q, %bb.m, %bb.n
  %.1 = phi ptr [ @.str, %bb.l ], [ null, %bb.m ], [ @.str.44, %bb.n ], [ %.0.ph, %bb.q ], [ %spec.select, %bb.r ], [ null, %bb.s ], [ null, %bb.o ] ; 2 uses
  %.not125 = icmp eq ptr %.1, null
  %spec.store.select = select i1 %.not125, ptr @.str, ptr %.1
  %i.bm = load ptr, ptr %i.a, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bm, ptr noundef nonnull @.str.49, ptr noundef nonnull %spec.store.select)
  br label %bb.v

default.unreachable133:                           ; preds = %bb.g
  unreachable

bb.v:                                             ; preds = %bb.h, %bb.i, %bb.u, %bb.k, %bb.j
  %.pn = zext nneg i8 %.0114 to i32
  %.1116 = add nuw nsw i32 %.0115131, %.pn        ; 2 uses
  %i.bn = icmp samesign ult i32 %.1116, 8
  br i1 %i.bn, label %bb.c, label %.loopexit, !llvm.loop !20

.loopexit:                                        ; preds = %bb.v, %bb.c, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i64 @tvb_get_ntoh48(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare void @proto_item_append_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bits_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @dissect_spc_reportluns(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i32 %6, ptr nofree noundef readonly captures(address_is_null) %7) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %i.b = alloca ptr, align 8                      ; 12 uses
  %i.c = alloca i32, align 4                      ; 19 uses
  %8 = alloca %struct.except_stacknode, align 8   ; 3 uses
  %9 = alloca %struct.except_catch, align 8       ; 6 uses
  %or.cond = and i1 %4, %5
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr @hf_scsi_select_report, align 4
  %i.e = add i32 %3, 1
  %i.f = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.d, ptr noundef %0, i32 noundef %i.e, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.g = load i32, ptr @hf_scsi_alloclen32, align 4
  %i.h = add i32 %3, 5                            ; 2 uses
  %i.i = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.g, ptr noundef %0, i32 noundef %i.h, i32 noundef 4, i32 noundef 0) ; 0 uses
  %.not63 = icmp eq ptr %7, null
  br i1 %.not63, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.h)
  %i.k = getelementptr i8, ptr %7, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %i.l, i64 24
  store i32 %i.j, ptr %i.m, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = add i32 %3, 10
  %i.o = load i32, ptr @hf_scsi_control, align 4
  %i.p = load i32, ptr @ett_scsi_control, align 4
  %i.q = call ptr @proto_tree_add_bitmask(ptr noundef %2, ptr noundef %0, i32 noundef %i.n, i32 noundef %i.o, i32 noundef %i.p, ptr noundef nonnull @cdb_control_fields, i32 noundef 0) ; 0 uses
  br label %bb.z

bb.e:                                             ; preds = %bb.a
  %.not = icmp eq ptr %7, null
  %or.cond64 = or i1 %4, %.not
  br i1 %or.cond64, label %bb.z, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.r = getelementptr i8, ptr %7, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr i8, ptr %i.s, i64 24
  %i.u = load i32, ptr %i.t, align 8
  %i.v = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %3, i32 noundef %i.u) ; 3 uses
  store volatile i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store volatile i32 0, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  call void @except_setup_try(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull @dissect_spc_reportluns.catch_spec, i64 noundef 1)
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  %i.x = call i32 @_setjmp(ptr noundef nonnull %i.w) #12
  %.not56 = icmp eq i32 %i.x, 0
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sink = select i1 %.not56, ptr null, ptr %i.y
  store volatile ptr %.sink, ptr %i.b, align 8
  %.0..0..0..0. = load volatile i32, ptr %i.c, align 4
  %i.z = and i32 %.0..0..0..0., 1
  %.not57 = icmp eq i32 %i.z, 0
  br i1 %.not57, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.0..0..0..0.2 = load volatile i32, ptr %i.c, align 4
  %i.aa = or i32 %.0..0..0..0.2, 2
  store volatile i32 %i.aa, ptr %i.c, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0..0..0..0.3 = load volatile i32, ptr %i.c, align 4
  %i.ab = and i32 %.0..0..0..0.3, -2
  store volatile i32 %i.ab, ptr %i.c, align 4
  %.0..0..0..0.4 = load volatile i32, ptr %i.c, align 4
  %i.ac = icmp eq i32 %.0..0..0..0.4, 0
  br i1 %i.ac, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %.0..0..0..0.12 = load volatile ptr, ptr %i.b, align 8
  %i.ad = icmp eq ptr %.0..0..0..0.12, null
  br i1 %i.ad, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %.0..0..0..0.22 = load volatile i32, ptr %i.a, align 4
  %i.ae = call i32 @tvb_get_ntohl(ptr noundef %i.v, i32 noundef %.0..0..0..0.22) ; 2 uses
  %i.af = load i32, ptr @hf_scsi_reportluns_lun_list_length, align 4
  %.0..0..0..0.23 = load volatile i32, ptr %i.a, align 4
  %i.ag = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.af, ptr noundef %i.v, i32 noundef %.0..0..0..0.23, i32 noundef 4, i32 noundef 0) ; 0 uses
  %.0..0..0..0.24 = load volatile i32, ptr %i.a, align 4
  %i.ah = add i32 %.0..0..0..0.24, 8
  store volatile i32 %i.ah, ptr %i.a, align 4
  %i.ai = icmp sgt i32 %i.ae, 0
  br i1 %i.ai, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.j, %.lr.ph
  %.065 = phi i32 [ %i.ak, %.lr.ph ], [ %i.ae, %bb.j ] ; 2 uses
  %.0..0..0..0.25 = load volatile i32, ptr %i.a, align 4
  call void @dissect_scsi_lun(ptr noundef %2, ptr noundef %i.v, i32 noundef %.0..0..0..0.25)
  %.0..0..0..0.26 = load volatile i32, ptr %i.a, align 4
  %i.aj = add i32 %.0..0..0..0.26, 8
  store volatile i32 %i.aj, ptr %i.a, align 4
  %i.ak = add nsw i32 %.065, -8
  %i.al = icmp samesign ugt i32 %.065, 8
  br i1 %i.al, label %.lr.ph, label %.loopexit, !llvm.loop !21

.loopexit:                                        ; preds = %.lr.ph, %bb.j, %bb.i, %bb.h
  %.0..0..0..0.5 = load volatile i32, ptr %i.c, align 4
  %i.am = icmp eq i32 %.0..0..0..0.5, 0
  br i1 %i.am, label %bb.k, label %bb.n

bb.k:                                             ; preds = %.loopexit
  %.0..0..0..0.13 = load volatile ptr, ptr %i.b, align 8
  %.not58 = icmp eq ptr %.0..0..0..0.13, null
  br i1 %.not58, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.0..0..0..0.14 = load volatile ptr, ptr %i.b, align 8
  %i.an = getelementptr i8, ptr %.0..0..0..0.14, i64 8
  %i.ao = load volatile i64, ptr %i.an, align 8
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.0..0..0..0.6 = load volatile i32, ptr %i.c, align 4
  %i.aq = or i32 %.0..0..0..0.6, 1
  store volatile i32 %i.aq, ptr %i.c, align 4
  call void @__longjmp_chk(ptr noundef nonnull %i.w, i32 noundef 1) #13
  unreachable

bb.n:                                             ; preds = %bb.l, %bb.k, %.loopexit
  %.0..0..0..0.7 = load volatile i32, ptr %i.c, align 4
  %i.ar = icmp eq i32 %.0..0..0..0.7, 0
  br i1 %i.ar, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %.0..0..0..0.15 = load volatile ptr, ptr %i.b, align 8
  %.not59 = icmp eq ptr %.0..0..0..0.15, null
  br i1 %.not59, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.0..0..0..0.16 = load volatile ptr, ptr %i.b, align 8
  %i.as = getelementptr i8, ptr %.0..0..0..0.16, i64 8
  %i.at = load volatile i64, ptr %i.as, align 8
  %i.au = icmp eq i64 %i.at, 2
  br i1 %i.au, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %.0..0..0..0.8 = load volatile i32, ptr %i.c, align 4
  %i.av = or i32 %.0..0..0..0.8, 1
  store volatile i32 %i.av, ptr %i.c, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %.0..0..0..0.9 = load volatile i32, ptr %i.c, align 4
  %i.aw = icmp eq i32 %.0..0..0..0.9, 0
  br i1 %i.aw, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %.0..0..0..0.17 = load volatile ptr, ptr %i.b, align 8
  %.not60 = icmp eq ptr %.0..0..0..0.17, null
  br i1 %.not60, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.0..0..0..0.18 = load volatile ptr, ptr %i.b, align 8
  %i.ax = getelementptr i8, ptr %.0..0..0..0.18, i64 8
  %i.ay = load volatile i64, ptr %i.ax, align 8
  %i.az = icmp eq i64 %i.ay, 3
  br i1 %i.az, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %.0..0..0..0.10 = load volatile i32, ptr %i.c, align 4
  %i.ba = or i32 %.0..0..0..0.10, 1
  store volatile i32 %i.ba, ptr %i.c, align 4
  call void @except_throw(i64 noundef 1, i64 noundef 7, ptr noundef null) #14
  unreachable

bb.v:                                             ; preds = %bb.t, %bb.s, %bb.r
  %.0..0..0..0.11 = load volatile i32, ptr %i.c, align 4
  %i.bb = and i32 %.0..0..0..0.11, 1
  %.not61 = icmp eq i32 %i.bb, 0
  br i1 %.not61, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %.0..0..0..0.19 = load volatile ptr, ptr %i.b, align 8
  %.not62 = icmp eq ptr %.0..0..0..0.19, null
  br i1 %.not62, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.0..0..0..0.20 = load volatile ptr, ptr %i.b, align 8
  call void @except_rethrow(ptr noundef %.0..0..0..0.20) #14
  unreachable

bb.y:                                             ; preds = %bb.w, %bb.v
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.bd = load volatile ptr, ptr %i.bc, align 8
  call void @except_free(ptr noundef %i.bd)
  %i.be = call ptr @except_pop()                  ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.z

bb.z:                                             ; preds = %bb.d, %bb.y, %bb.e
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @dissect_spc_mgmt_protocol_in(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i32 noundef %6, ptr nofree noundef readonly captures(address_is_null) %7) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 34 uses
  %i.b = alloca ptr, align 8                      ; 12 uses
  %i.c = alloca i32, align 4                      ; 19 uses
  %8 = alloca %struct.except_stacknode, align 8   ; 3 uses
  %9 = alloca %struct.except_catch, align 8       ; 6 uses
  %or.cond = and i1 %4, %5
  br i1 %or.cond, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.d = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %3)
  %i.e = and i8 %i.d, 31                          ; 3 uses
  %.not184 = icmp eq ptr %7, null                 ; 2 uses
  br i1 %.not184, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = zext nneg i8 %i.e to i16
  %i.g = getelementptr i8, ptr %7, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %i.h, i64 12
  store i16 %i.f, ptr %i.i, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = zext nneg i8 %i.e to i32
  %i.m = call ptr @val_to_str_const(i32 noundef %i.l, ptr noundef nonnull @mpi_action_vals, ptr noundef nonnull @.str.50)
  call void @col_append_str(ptr noundef %i.k, i32 noundef 25, ptr noundef %i.m)
  %i.n = load i32, ptr @hf_scsi_mpi_service_action, align 4
  %i.o = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.n, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %cond2 = icmp eq i8 %i.e, 12
  br i1 %cond2, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.p = load i32, ptr @hf_scsi_report_opcodes_rctd, align 4
  %i.q = add i32 %3, 1                            ; 3 uses
  %i.r = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.p, ptr noundef %0, i32 noundef %i.q, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.s = load i32, ptr @hf_scsi_report_opcodes_options, align 4
  %i.t = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.s, ptr noundef %0, i32 noundef %i.q, i32 noundef 1, i32 noundef 0) ; 0 uses
  br i1 %.not184, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.q)
  %i.v = and i8 %i.u, 7
  %.not185 = icmp eq i8 %i.v, 0
  br i1 %.not185, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr i8, ptr %7, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr i8, ptr %i.x, i64 12       ; 2 uses
  %i.z = load i16, ptr %i.y, align 4
  %i.aa = or i16 %i.z, 128
  store i16 %i.aa, ptr %i.y, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ab = load i32, ptr @hf_scsi_report_opcodes_requested_o, align 4
  %i.ac = add i32 %3, 2
  %i.ad = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ab, ptr noundef %0, i32 noundef %i.ac, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ae = load i32, ptr @hf_scsi_report_opcodes_requested_sa, align 4
  %i.af = add i32 %3, 3
  %i.ag = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ae, ptr noundef %0, i32 noundef %i.af, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ah = load i32, ptr @hf_scsi_alloclen32, align 4
  %i.ai = add i32 %3, 5                           ; 2 uses
  %i.aj = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ah, ptr noundef %0, i32 noundef %i.ai, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ak = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.ai)
  %i.al = getelementptr i8, ptr %7, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr i8, ptr %i.am, i64 24
  store i32 %i.ak, ptr %i.an, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  %i.ao = add i32 %3, 1
  %i.ap = call ptr @proto_tree_add_expert(ptr noundef %2, ptr noundef %1, ptr noundef nonnull @ei_scsi_no_dissection_for_service_action, ptr noundef %0, i32 noundef %i.ao, i32 noundef 8) ; 0 uses
  br label %bb.j

.critedge:                                        ; preds = %bb.e
  %i.aq = load i32, ptr @hf_scsi_report_opcodes_requested_o, align 4
  %i.ar = add i32 %3, 2
  %i.as = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.aq, ptr noundef %0, i32 noundef %i.ar, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.at = load i32, ptr @hf_scsi_report_opcodes_requested_sa, align 4
  %i.au = add i32 %3, 3
  %i.av = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.at, ptr noundef %0, i32 noundef %i.au, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.aw = load i32, ptr @hf_scsi_alloclen32, align 4
  %i.ax = add i32 %3, 5
  %i.ay = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.aw, ptr noundef %0, i32 noundef %i.ax, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %.critedge, %bb.h, %bb.i
  %i.az = add i32 %3, 10
  %i.ba = load i32, ptr @hf_scsi_control, align 4
end_hunk_1
begin_hunk_2_@dissect_spc_mgmt_protocol_in:bb.a
  %i.bo = call noalias dereferenceable_or_null(24) ptr @wmem_alloc(ptr noundef %i.bi, i64 noundef 24) #15 ; 4 uses
  %i.bp = and i8 %.0.i, 127                       ; 4 uses
  %i.bq = icmp samesign ult i8 %i.bp, 18
  br i1 %i.bq, label %switch.lookup, label %get_cmdset_data.exit

switch.lookup:                                    ; preds = %bb.p
  %i.br = zext nneg i8 %i.bp to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dissect_scsi_payload, i64 %i.br
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.bs = zext nneg i8 %i.bp to i64
  %switch.gep198 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dissect_scsi_payload.11, i64 %i.bs
  %switch.load199 = load ptr, ptr %switch.gep198, align 8
  %i.bt = zext nneg i8 %i.bp to i64
  %switch.gep200 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dissect_scsi_payload.12, i64 %i.bt
  %switch.load201 = load ptr, ptr %switch.gep200, align 8
  br label %get_cmdset_data.exit

get_cmdset_data.exit:                             ; preds = %bb.p, %switch.lookup
  %hf_scsi_spcopcode.sink.i = phi ptr [ %switch.load, %switch.lookup ], [ @hf_scsi_spcopcode, %bb.p ]
  %scsi_spc_vals_ext.sink.i = phi ptr [ %switch.load199, %switch.lookup ], [ @scsi_spc_vals_ext, %bb.p ]
  %spc.sink.i = phi ptr [ %switch.load201, %switch.lookup ], [ @spc, %bb.p ]
  %i.bu = getelementptr i8, ptr %i.bo, i64 16
  %i.bv = getelementptr i8, ptr %i.bo, i64 8      ; 2 uses
  %i.bw = load i32, ptr %hf_scsi_spcopcode.sink.i, align 4
  store i32 %i.bw, ptr %i.bo, align 8
  store ptr %scsi_spc_vals_ext.sink.i, ptr %i.bv, align 8
  store ptr %spc.sink.i, ptr %i.bu, align 8
  %i.bx = load i32, ptr @hf_scsi_mpi_service_action, align 4
  %i.by = load ptr, ptr %i.bd, align 8
  %i.bz = getelementptr i8, ptr %i.by, i64 12
  %i.ca = load i16, ptr %i.bz, align 4
  %i.cb = and i16 %i.ca, 127
  %i.cc = zext nneg i16 %i.cb to i32
  %i.cd = call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.bx, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.cc) ; 2 uses
  %.not.i189 = icmp eq ptr %i.cd, null
  br i1 %.not.i189, label %proto_item_set_generated.exit, label %bb.q

bb.q:                                             ; preds = %get_cmdset_data.exit
  %i.ce = getelementptr i8, ptr %i.cd, i64 40
  %i.cf = load ptr, ptr %i.ce, align 8            ; 2 uses
  %.not5.i = icmp eq ptr %i.cf, null
  br i1 %.not5.i, label %proto_item_set_generated.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cg = getelementptr i8, ptr %i.cf, i64 28     ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = or i32 %i.ch, 2
  store i32 %i.ci, ptr %i.cg, align 4
  br label %proto_item_set_generated.exit

proto_item_set_generated.exit:                    ; preds = %get_cmdset_data.exit, %bb.q, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.cj = load ptr, ptr %i.bd, align 8
  %i.ck = getelementptr i8, ptr %i.cj, i64 24
  %i.cl = load i32, ptr %i.ck, align 8
  %i.cm = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %3, i32 noundef %i.cl) ; 25 uses
  store volatile i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store volatile i32 0, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  call void @except_setup_try(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull @dissect_spc_mgmt_protocol_in.catch_spec, i64 noundef 1)
  %i.cn = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  %i.co = call i32 @_setjmp(ptr noundef nonnull %i.cn) #12
  %.not174 = icmp eq i32 %i.co, 0
  %i.cp = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sink = select i1 %.not174, ptr null, ptr %i.cp
  store volatile ptr %.sink, ptr %i.b, align 8
  %.0..0..0..0.14 = load volatile i32, ptr %i.c, align 4
  %i.cq = and i32 %.0..0..0..0.14, 1
  %.not175 = icmp eq i32 %i.cq, 0
  br i1 %.not175, label %bb.t, label %bb.s

bb.s:                                             ; preds = %proto_item_set_generated.exit
  %.0..0..0..0.15 = load volatile i32, ptr %i.c, align 4
  %i.cr = or i32 %.0..0..0..0.15, 2
  store volatile i32 %i.cr, ptr %i.c, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %proto_item_set_generated.exit
  %.0..0..0..0.16 = load volatile i32, ptr %i.c, align 4
  %i.cs = and i32 %.0..0..0..0.16, -2
  store volatile i32 %i.cs, ptr %i.c, align 4
  %.0..0..0..0.17 = load volatile i32, ptr %i.c, align 4
  %i.ct = icmp eq i32 %.0..0..0..0.17, 0
  br i1 %i.ct, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t
  %.0..0..0..0.25 = load volatile ptr, ptr %i.b, align 8
  %i.cu = icmp eq ptr %.0..0..0..0.25, null
  br i1 %i.cu, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %bb.u
  %i.cv = load ptr, ptr %i.bd, align 8
  %i.cw = getelementptr i8, ptr %i.cv, i64 12
  %i.cx = load i16, ptr %i.cw, align 4
  %i.cy = zext i16 %i.cx to i32                   ; 2 uses
  %i.cz = and i32 %i.cy, 127
  %cond1 = icmp eq i32 %i.cz, 12
  br i1 %cond1, label %bb.w, label %bb.ac

bb.w:                                             ; preds = %bb.v
  %i.da = and i32 %i.cy, 128
  %.not176 = icmp eq i32 %i.da, 0
  br i1 %.not176, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.db = load i32, ptr @hf_scsi_report_opcodes_ctdp_one, align 4
  %.0..0..0..0.35 = load volatile i32, ptr %i.a, align 4
  %i.dc = add i32 %.0..0..0..0.35, 1
  %i.dd = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.db, ptr noundef %i.cm, i32 noundef %i.dc, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.0..0..0..0.36 = load volatile i32, ptr %i.a, align 4
  %i.de = add i32 %.0..0..0..0.36, 1
  %i.df = call zeroext i8 @tvb_get_uint8(ptr noundef %i.cm, i32 noundef %i.de)
  %i.dg = load i32, ptr @hf_scsi_report_opcodes_support, align 4
  %.0..0..0..0.37 = load volatile i32, ptr %i.a, align 4
  %i.dh = add i32 %.0..0..0..0.37, 1
  %i.di = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.dg, ptr noundef %i.cm, i32 noundef %i.dh, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dj = load i32, ptr @hf_scsi_report_opcodes_cdb_length, align 4
  %.0..0..0..0.38 = load volatile i32, ptr %i.a, align 4
  %i.dk = add i32 %.0..0..0..0.38, 2
  %i.dl = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.dj, ptr noundef %i.cm, i32 noundef %i.dk, i32 noundef 2, i32 noundef 0) ; 0 uses
  %.0..0..0..0.39 = load volatile i32, ptr %i.a, align 4
  %i.dm = add i32 %.0..0..0..0.39, 2
  %i.dn = call zeroext i16 @tvb_get_ntohs(ptr noundef %i.cm, i32 noundef %i.dm)
  %i.do = zext i16 %i.dn to i32
  %i.dp = load i32, ptr @hf_scsi_report_opcodes_cdb_usage_data, align 4
  %.0..0..0..0.40 = load volatile i32, ptr %i.a, align 4
  %i.dq = add i32 %.0..0..0..0.40, 4
  %i.dr = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.dp, ptr noundef %i.cm, i32 noundef %i.dq, i32 noundef %i.do, i32 noundef 0) ; 0 uses
  %.not178 = icmp sgt i8 %i.df, -1
  br i1 %.not178, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.0..0..0..0.41 = load volatile i32, ptr %i.a, align 4
  %i.ds = load i32, ptr @ett_timeout_descriptor, align 4
  %i.dt = call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %i.cm, i32 noundef %.0..0..0..0.41, i32 noundef 12, i32 noundef %i.ds, ptr noundef null, ptr noundef nonnull @.str.51) ; 3 uses
  %i.du = load i32, ptr @hf_scsi_report_opcodes_tdl, align 4
  %.0..0..0..0.42 = load volatile i32, ptr %i.a, align 4
  %i.dv = call ptr @proto_tree_add_item(ptr noundef %i.dt, i32 noundef %i.du, ptr noundef %i.cm, i32 noundef %.0..0..0..0.42, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.dw = load i32, ptr @hf_scsi_report_opcodes_npt, align 4
  %.0..0..0..0.43 = load volatile i32, ptr %i.a, align 4
  %i.dx = add i32 %.0..0..0..0.43, 4
  %i.dy = call ptr @proto_tree_add_item(ptr noundef %i.dt, i32 noundef %i.dw, ptr noundef %i.cm, i32 noundef %i.dx, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.dz = load i32, ptr @hf_scsi_report_opcodes_rct, align 4
  %.0..0..0..0.44 = load volatile i32, ptr %i.a, align 4
  %i.ea = add i32 %.0..0..0..0.44, 8
  %i.eb = call ptr @proto_tree_add_item(ptr noundef %i.dt, i32 noundef %i.dz, ptr noundef %i.cm, i32 noundef %i.ea, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.z:                                             ; preds = %bb.w
  %i.ec = load i32, ptr @hf_scsi_report_opcodes_cdl, align 4
  %.0..0..0..0.45 = load volatile i32, ptr %i.a, align 4
  %i.ed = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ec, ptr noundef %i.cm, i32 noundef %.0..0..0..0.45, i32 noundef 4, i32 noundef 0) ; 0 uses
  %.0..0..0..0.46 = load volatile i32, ptr %i.a, align 4
  %i.ee = call i32 @tvb_get_ntohl(ptr noundef %i.cm, i32 noundef %.0..0..0..0.46) ; 2 uses
  %.0..0..0..0.47 = load volatile i32, ptr %i.a, align 4
  %i.ef = add i32 %.0..0..0..0.47, 4
  store volatile i32 %i.ef, ptr %i.a, align 4
  %i.eg = icmp sgt i32 %i.ee, 19
  br i1 %i.eg, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.z, %bb.ab
  %.0167190 = phi i32 [ %i.fq, %bb.ab ], [ %i.ee, %bb.z ]
  %.0..0..0..0.48 = load volatile i32, ptr %i.a, align 4
  %i.eh = load i32, ptr @ett_command_descriptor, align 4
  %.0..0..0..0.49 = load volatile i32, ptr %i.a, align 4
  %i.ei = call zeroext i8 @tvb_get_uint8(ptr noundef %i.cm, i32 noundef %.0..0..0..0.49)
  %i.ej = zext i8 %i.ei to i32
  %i.ek = load ptr, ptr %i.bv, align 8
  %i.el = call ptr @val_to_str_ext_const(i32 noundef %i.ej, ptr noundef %i.ek, ptr noundef nonnull @.str.53)
  %i.em = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %2, ptr noundef %i.cm, i32 noundef %.0..0..0..0.48, i32 noundef 20, i32 noundef %i.eh, ptr noundef null, ptr noundef nonnull @.str.52, ptr noundef %i.el) ; 5 uses
  %i.en = load i32, ptr %i.bo, align 8
  %.0..0..0..0.50 = load volatile i32, ptr %i.a, align 4
  %i.eo = call ptr @proto_tree_add_item(ptr noundef %i.em, i32 noundef %i.en, ptr noundef %i.cm, i32 noundef %.0..0..0..0.50, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ep = load i32, ptr @hf_scsi_report_opcodes_sa, align 4
  %.0..0..0..0.51 = load volatile i32, ptr %i.a, align 4
  %i.eq = add i32 %.0..0..0..0.51, 2
  %i.er = call ptr @proto_tree_add_item(ptr noundef %i.em, i32 noundef %i.ep, ptr noundef %i.cm, i32 noundef %i.eq, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.es = load i32, ptr @hf_scsi_report_opcodes_ctdp, align 4
  %.0..0..0..0.52 = load volatile i32, ptr %i.a, align 4
  %i.et = add i32 %.0..0..0..0.52, 5
  %i.eu = call ptr @proto_tree_add_item(ptr noundef %i.em, i32 noundef %i.es, ptr noundef %i.cm, i32 noundef %i.et, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.0..0..0..0.53 = load volatile i32, ptr %i.a, align 4
  %i.ev = add i32 %.0..0..0..0.53, 5
  %i.ew = call zeroext i8 @tvb_get_uint8(ptr noundef %i.cm, i32 noundef %i.ev)
  %i.ex = and i8 %i.ew, 2
  %i.ey = load i32, ptr @hf_scsi_report_opcodes_servactv, align 4
  %.0..0..0..0.54 = load volatile i32, ptr %i.a, align 4
  %i.ez = add i32 %.0..0..0..0.54, 5
  %i.fa = call ptr @proto_tree_add_item(ptr noundef %i.em, i32 noundef %i.ey, ptr noundef %i.cm, i32 noundef %i.ez, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.fb = load i32, ptr @hf_scsi_report_opcodes_cdb_length, align 4
  %.0..0..0..0.55 = load volatile i32, ptr %i.a, align 4
  %i.fc = add i32 %.0..0..0..0.55, 6
  %i.fd = call ptr @proto_tree_add_item(ptr noundef %i.em, i32 noundef %i.fb, ptr noundef %i.cm, i32 noundef %i.fc, i32 noundef 2, i32 noundef 0) ; 0 uses
  %.0..0..0..0.56 = load volatile i32, ptr %i.a, align 4
  %i.fe = add i32 %.0..0..0..0.56, 8
  store volatile i32 %i.fe, ptr %i.a, align 4
  %.not177 = icmp eq i8 %i.ex, 0
  br i1 %.not177, label %bb.ab, label %bb.aa, !llvm.loop !22

bb.aa:                                            ; preds = %.lr.ph
  %.0..0..0..0.57 = load volatile i32, ptr %i.a, align 4
  %i.ff = load i32, ptr @ett_timeout_descriptor, align 4
  %i.fg = call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %i.cm, i32 noundef %.0..0..0..0.57, i32 noundef 12, i32 noundef %i.ff, ptr noundef null, ptr noundef nonnull @.str.51) ; 3 uses
  %i.fh = load i32, ptr @hf_scsi_report_opcodes_tdl, align 4
  %.0..0..0..0.58 = load volatile i32, ptr %i.a, align 4
  %i.fi = call ptr @proto_tree_add_item(ptr noundef %i.fg, i32 noundef %i.fh, ptr noundef %i.cm, i32 noundef %.0..0..0..0.58, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.fj = load i32, ptr @hf_scsi_report_opcodes_npt, align 4
  %.0..0..0..0.59 = load volatile i32, ptr %i.a, align 4
  %i.fk = add i32 %.0..0..0..0.59, 4
  %i.fl = call ptr @proto_tree_add_item(ptr noundef %i.fg, i32 noundef %i.fj, ptr noundef %i.cm, i32 noundef %i.fk, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.fm = load i32, ptr @hf_scsi_report_opcodes_rct, align 4
  %.0..0..0..0.60 = load volatile i32, ptr %i.a, align 4
  %i.fn = add i32 %.0..0..0..0.60, 8
  %i.fo = call ptr @proto_tree_add_item(ptr noundef %i.fg, i32 noundef %i.fm, ptr noundef %i.cm, i32 noundef %i.fn, i32 noundef 4, i32 noundef 0) ; 0 uses
  %.0..0..0..0.61 = load volatile i32, ptr %i.a, align 4
  %i.fp = add i32 %.0..0..0..0.61, 12
  store volatile i32 %i.fp, ptr %i.a, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph, %bb.aa
  %.sink197 = phi i32 [ -20, %bb.aa ], [ -8, %.lr.ph ]
  %i.fq = add nsw i32 %.0167190, %.sink197        ; 2 uses
  %i.fr = icmp sgt i32 %i.fq, 19
  br i1 %i.fr, label %.lr.ph, label %.loopexit

bb.ac:                                            ; preds = %bb.v
  %.0..0..0..0.62 = load volatile i32, ptr %i.a, align 4
  %i.fs = add i32 %.0..0..0..0.62, 1
  %i.ft = call ptr @proto_tree_add_expert(ptr noundef %2, ptr noundef %1, ptr noundef nonnull @ei_scsi_no_dissection_for_service_action, ptr noundef %i.cm, i32 noundef %i.fs, i32 noundef 8) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ab, %bb.z, %bb.ac, %bb.x, %bb.y, %bb.u, %bb.t
  %.0..0..0..0.18 = load volatile i32, ptr %i.c, align 4
  %i.fu = icmp eq i32 %.0..0..0..0.18, 0
  br i1 %i.fu, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %.loopexit
  %.0..0..0..0.26 = load volatile ptr, ptr %i.b, align 8
  %.not179 = icmp eq ptr %.0..0..0..0.26, null
  br i1 %.not179, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.0..0..0..0.27 = load volatile ptr, ptr %i.b, align 8
  %i.fv = getelementptr i8, ptr %.0..0..0..0.27, i64 8
  %i.fw = load volatile i64, ptr %i.fv, align 8
  %i.fx = icmp eq i64 %i.fw, 1
  br i1 %i.fx, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %.0..0..0..0.19 = load volatile i32, ptr %i.c, align 4
  %i.fy = or i32 %.0..0..0..0.19, 1
  store volatile i32 %i.fy, ptr %i.c, align 4
  call void @__longjmp_chk(ptr noundef nonnull %i.cn, i32 noundef 1) #13
  unreachable

bb.ag:                                            ; preds = %bb.ae, %bb.ad, %.loopexit
  %.0..0..0..0.20 = load volatile i32, ptr %i.c, align 4
  %i.fz = icmp eq i32 %.0..0..0..0.20, 0
  br i1 %i.fz, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %.0..0..0..0.28 = load volatile ptr, ptr %i.b, align 8
  %.not180 = icmp eq ptr %.0..0..0..0.28, null
  br i1 %.not180, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.0..0..0..0.29 = load volatile ptr, ptr %i.b, align 8
  %i.ga = getelementptr i8, ptr %.0..0..0..0.29, i64 8
  %i.gb = load volatile i64, ptr %i.ga, align 8
  %i.gc = icmp eq i64 %i.gb, 2
  br i1 %i.gc, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %.0..0..0..0.21 = load volatile i32, ptr %i.c, align 4
  %i.gd = or i32 %.0..0..0..0.21, 1
  store volatile i32 %i.gd, ptr %i.c, align 4
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %.0..0..0..0.22 = load volatile i32, ptr %i.c, align 4
  %i.ge = icmp eq i32 %.0..0..0..0.22, 0
  br i1 %i.ge, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %.0..0..0..0.30 = load volatile ptr, ptr %i.b, align 8
  %.not181 = icmp eq ptr %.0..0..0..0.30, null
  br i1 %.not181, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.0..0..0..0.31 = load volatile ptr, ptr %i.b, align 8
  %i.gf = getelementptr i8, ptr %.0..0..0..0.31, i64 8
  %i.gg = load volatile i64, ptr %i.gf, align 8
  %i.gh = icmp eq i64 %i.gg, 3
  br i1 %i.gh, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %.0..0..0..0.23 = load volatile i32, ptr %i.c, align 4
  %i.gi = or i32 %.0..0..0..0.23, 1
  store volatile i32 %i.gi, ptr %i.c, align 4
  call void @except_throw(i64 noundef 1, i64 noundef 7, ptr noundef null) #14
  unreachable

bb.ao:                                            ; preds = %bb.am, %bb.al, %bb.ak
  %.0..0..0..0.24 = load volatile i32, ptr %i.c, align 4
  %i.gj = and i32 %.0..0..0..0.24, 1
  %.not182 = icmp eq i32 %i.gj, 0
  br i1 %.not182, label %bb.ap, label %.critedge187

bb.ap:                                            ; preds = %bb.ao
  %.0..0..0..0.32 = load volatile ptr, ptr %i.b, align 8
  %.not183 = icmp eq ptr %.0..0..0..0.32, null
  br i1 %.not183, label %.critedge187, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.0..0..0..0.33 = load volatile ptr, ptr %i.b, align 8
  call void @except_rethrow(ptr noundef %.0..0..0..0.33) #14
  unreachable

.critedge187:                                     ; preds = %bb.ap, %bb.ao
  %i.gk = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.gl = load volatile ptr, ptr %i.gk, align 8
  call void @except_free(ptr noundef %i.gl)
  %i.gm = call ptr @except_pop()                  ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.j, %bb.k, %.critedge187, %bb.m, %bb.l
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_const(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_expert(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_ext_const(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @dissect_spc_requestsense(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i32 %6, ptr nofree readnone captures(none) %7) #1 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %or.cond = and i1 %4, %5
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.a = load i32, ptr @hf_scsi_alloclen, align 4
  %i.b = add i32 %3, 3
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.a, ptr noundef %0, i32 noundef %i.b, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.d = add i32 %3, 4
  %i.e = load i32, ptr @hf_scsi_control, align 4
  %i.f = load i32, ptr @ett_scsi_control, align 4
  %i.g = tail call ptr @proto_tree_add_bitmask(ptr noundef nonnull %2, ptr noundef %0, i32 noundef %i.d, i32 noundef %i.e, i32 noundef %i.f, ptr noundef nonnull @cdb_control_fields, i32 noundef 0) ; 0 uses
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  br i1 %4, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @dissect_scsi_sense(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a, %bb.c
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_scsi_sense(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr @hf_scsi_sns_errtype, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.c = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %3)
  %i.d = and i8 %i.c, 127
  switch i8 %i.d, label %dissect_scsi_descriptor_snsinfo.exit [
    i8 112, label %bb.b
    i8 113, label %bb.b
    i8 114, label %bb.g
    i8 115, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.e = load i32, ptr @hf_scsi_sns_valid, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.e, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.g = add i32 %3, 2                            ; 5 uses
  %i.h = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.g)
  %i.i = load i32, ptr @hf_scsi_sns_filemark, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.i, ptr noundef %0, i32 noundef %i.g, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.k = load i32, ptr @hf_scsi_sns_eom, align 4
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.k, ptr noundef %0, i32 noundef %i.g, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.m = load i32, ptr @hf_scsi_sns_ili, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.m, ptr noundef %0, i32 noundef %i.g, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.o = load i32, ptr @hf_scsi_snskey, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.o, ptr noundef %0, i32 noundef %i.g, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.q = load i32, ptr @hf_scsi_snsinfo, align 4
  %i.r = add i32 %3, 3
  %i.s = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.q, ptr noundef %0, i32 noundef %i.r, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.t = load i32, ptr @hf_scsi_addlsnslen, align 4
  %i.u = add i32 %3, 7
  %i.v = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.t, ptr noundef %0, i32 noundef %i.u, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.w = load i32, ptr @hf_scsi_sns_command_specific_information, align 4
  %i.x = add i32 %3, 8
  %i.y = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.w, ptr noundef %0, i32 noundef %i.x, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.z = load i32, ptr @hf_scsi_ascascq, align 4
  %i.aa = add i32 %3, 12                          ; 2 uses
  %i.ab = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.z, ptr noundef %0, i32 noundef %i.aa, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ac = load i32, ptr @hf_scsi_asc, align 4
  %i.ad = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ac, ptr noundef %0, i32 noundef %i.aa, i32 noundef 1, i32 noundef 0) ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %proto_item_set_hidden.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = getelementptr i8, ptr %i.ad, i64 40
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not5.i.i = icmp eq ptr %i.af, null
  br i1 %.not5.i.i, label %proto_item_set_hidden.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr i8, ptr %i.af, i64 28     ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = or i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 4
  br label %proto_item_set_hidden.exit.i

proto_item_set_hidden.exit.i:                     ; preds = %bb.d, %bb.c, %bb.b
  %i.aj = load i32, ptr @hf_scsi_ascq, align 4
  %i.ak = add i32 %3, 13
  %i.al = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.aj, ptr noundef %0, i32 noundef %i.ak, i32 noundef 1, i32 noundef 0) ; 2 uses
  %.not.i43.i = icmp eq ptr %i.al, null
  br i1 %.not.i43.i, label %dissect_scsi_fix_snsinfo.exit, label %bb.e

bb.e:                                             ; preds = %proto_item_set_hidden.exit.i
  %i.am = getelementptr i8, ptr %i.al, i64 40
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %.not5.i44.i = icmp eq ptr %i.an, null
  br i1 %.not5.i44.i, label %dissect_scsi_fix_snsinfo.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr i8, ptr %i.an, i64 28     ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = or i32 %i.ap, 1
  store i32 %i.aq, ptr %i.ao, align 4
  br label %dissect_scsi_fix_snsinfo.exit

dissect_scsi_fix_snsinfo.exit:                    ; preds = %proto_item_set_hidden.exit.i, %bb.e, %bb.f
  %i.ar = load i32, ptr @hf_scsi_fru, align 4
  %i.as = add i32 %3, 14
  %i.at = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ar, ptr noundef %0, i32 noundef %i.as, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.au = add i32 %3, 15
  %i.av = and i8 %i.h, 15
  tail call fastcc void @dissect_scsi_sns_specific_info(ptr noundef %0, ptr noundef %2, i32 noundef %i.au, i8 noundef zeroext %i.av)
  br label %dissect_scsi_descriptor_snsinfo.exit

bb.g:                                             ; preds = %bb.a, %bb.a
  %i.aw = load i32, ptr @hf_scsi_snskey, align 4
  %i.ax = add i32 %3, 1                           ; 2 uses
  %i.ay = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.aw, ptr noundef %0, i32 noundef %i.ax, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.az = load i32, ptr @hf_scsi_ascascq, align 4
  %i.ba = add i32 %3, 2
  %i.bb = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.az, ptr noundef %0, i32 noundef %i.ba, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bc = load i32, ptr @hf_scsi_addlsnslen, align 4
  %i.bd = add i32 %3, 7                           ; 2 uses
  %i.be = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bc, ptr noundef %0, i32 noundef %i.bd, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bf = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ax)
  %i.bg = and i8 %i.bf, 15
  %i.bh = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.bd)
  %i.bi = zext i8 %i.bh to i32
  %i.bj = add i32 %3, 8                           ; 2 uses
  %i.bk = add i32 %3, 5
  %i.bl = add i32 %i.bk, %i.bi                    ; 2 uses
  %i.bm = icmp ult i32 %i.bj, %i.bl
  br i1 %i.bm, label %.lr.ph84.i, label %dissect_scsi_descriptor_snsinfo.exit

.lr.ph84.i:                                       ; preds = %bb.g
  %i.bn = getelementptr i8, ptr %1, i64 416
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.i, %.lr.ph84.i
  %.083.i = phi i32 [ %i.bj, %.lr.ph84.i ], [ %i.dj, %.loopexit.i ] ; 18 uses
  %i.bo = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.083.i) ; 2 uses
  %i.bp = add nuw i32 %.083.i, 1                  ; 2 uses
  %i.bq = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.bp) ; 4 uses
  %i.br = zext i8 %i.bq to i32
  %i.bs = add nuw nsw i32 %i.br, 2                ; 2 uses
  %i.bt = load i32, ptr @ett_sense_descriptor, align 4
  %i.bu = load ptr, ptr %i.bn, align 8
  %i.bv = zext i8 %i.bo to i32
  %i.bw = tail call ptr @val_to_str(ptr noundef %i.bu, i32 noundef %i.bv, ptr noundef nonnull @scsi_sense_desc_type_val, ptr noundef nonnull @.str.1625)
  %i.bx = tail call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef %.083.i, i32 noundef %i.bs, i32 noundef %i.bt, ptr noundef null, ptr noundef %i.bw) ; 9 uses
  %i.by = load i32, ptr @hf_scsi_sns_desc_type, align 4
  %i.bz = tail call ptr @proto_tree_add_item(ptr noundef %i.bx, i32 noundef %i.by, ptr noundef %0, i32 noundef %.083.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ca = load i32, ptr @hf_scsi_sns_desc_length, align 4
  %i.cb = tail call ptr @proto_tree_add_item(ptr noundef %i.bx, i32 noundef %i.ca, ptr noundef %0, i32 noundef %i.bp, i32 noundef 1, i32 noundef 0) ; 0 uses
  switch i8 %i.bo, label %.loopexit.i [
    i8 2, label %bb.i
    i8 6, label %bb.k
    i8 8, label %.preheader.i
  ]

.preheader.i:                                     ; preds = %bb.h
  %i.cc = trunc i32 %.083.i to i8
  %i.cd = add i8 %i.cc, 2
  %i.ce = add i8 %i.cd, %i.bq
  %i.cf = zext i8 %i.ce to i32                    ; 2 uses
  %.179.i = add i32 %.083.i, 4                    ; 2 uses
  %i.cg = add i32 %.083.i, 12
  %.not80.i = icmp ugt i32 %i.cg, %i.cf
  br i1 %.not80.i, label %.loopexit.i, label %.lr.ph.i

bb.i:                                             ; preds = %bb.h
  %i.ch = icmp eq i8 %i.bq, 6
  br i1 %i.ch, label %bb.j, label %.loopexit.i

bb.j:                                             ; preds = %bb.i
  %i.ci = add i32 %.083.i, 4
  tail call fastcc void @dissect_scsi_sns_specific_info(ptr noundef %0, ptr noundef %i.bx, i32 noundef %i.ci, i8 noundef zeroext %i.bg)
  br label %.loopexit.i

bb.k:                                             ; preds = %bb.h
  %i.cj = icmp eq i8 %i.bq, 30
  br i1 %i.cj, label %bb.l, label %.loopexit.i

bb.l:                                             ; preds = %bb.k
  %i.ck = add i32 %.083.i, 8
  %i.cl = load i32, ptr @hf_scsi_sns_osd_object_not_initiated, align 4
  %i.cm = load i32, ptr @ett_sense_osd_not_initiated, align 4
  %i.cn = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.bx, ptr noundef %0, i32 noundef %i.ck, i32 noundef %i.cl, i32 noundef %i.cm, ptr noundef nonnull @dissect_scsi_descriptor_snsinfo.command_functions, i32 noundef 0) ; 0 uses
  %i.co = add i32 %.083.i, 12
  %i.cp = load i32, ptr @hf_scsi_sns_osd_object_completed, align 4
  %i.cq = load i32, ptr @ett_sense_osd_completed, align 4
  %i.cr = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.bx, ptr noundef %0, i32 noundef %i.co, i32 noundef %i.cp, i32 noundef %i.cq, ptr noundef nonnull @dissect_scsi_descriptor_snsinfo.command_functions, i32 noundef 0) ; 0 uses
  %i.cs = load i32, ptr @hf_scsi_sns_osd_partition_id, align 4
  %i.ct = add i32 %.083.i, 16
  %i.cu = tail call ptr @proto_tree_add_item(ptr noundef %i.bx, i32 noundef %i.cs, ptr noundef %0, i32 noundef %i.ct, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.cv = load i32, ptr @hf_scsi_sns_osd_object_id, align 4
  %i.cw = add i32 %.083.i, 24
  %i.cx = tail call ptr @proto_tree_add_item(ptr noundef %i.bx, i32 noundef %i.cv, ptr noundef %0, i32 noundef %i.cw, i32 noundef 8, i32 noundef 0) ; 0 uses
  br label %.loopexit.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.o
  %.182.i = phi i32 [ %.1.i, %bb.o ], [ %.179.i, %.preheader.i ] ; 2 uses
  %.1.in81.i = phi i32 [ %i.db, %bb.o ], [ %.083.i, %.preheader.i ] ; 3 uses
  %i.cy = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %.182.i)
  %i.cz = load i32, ptr @hf_scsi_sns_osd_attr_page, align 4
  %i.da = tail call ptr @proto_tree_add_item(ptr noundef %i.bx, i32 noundef %i.cz, ptr noundef %0, i32 noundef %.182.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.db = add nsw i32 %.1.in81.i, 8               ; 3 uses
  %i.dc = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.db)
  %i.dd = load i32, ptr @hf_scsi_sns_osd_attr_number, align 4
  %i.de = tail call ptr @proto_tree_add_item(ptr noundef %i.bx, i32 noundef %i.dd, ptr noundef %0, i32 noundef %i.db, i32 noundef 4, i32 noundef 0) ; 2 uses
  %i.df = tail call ptr @osd_lookup_attribute(i32 noundef %i.cy, i32 noundef %i.dc) ; 2 uses
  %.not78.i = icmp eq ptr %i.df, null
  br i1 %.not78.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i
  %i.dg = getelementptr i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.de, ptr noundef nonnull @.str.49, ptr noundef %i.dh)
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph.i
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.de, ptr noundef nonnull @.str.1626)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1.i = add i32 %.1.in81.i, 12                  ; 2 uses
  %i.di = add i32 %.1.in81.i, 20
  %.not.i = icmp ugt i32 %i.di, %i.cf
  br i1 %.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !23

.loopexit.i:                                      ; preds = %bb.o, %bb.l, %bb.k, %bb.j, %bb.i, %.preheader.i, %bb.h
  %.2.i = phi i32 [ %.083.i, %bb.h ], [ %.083.i, %bb.j ], [ %.083.i, %bb.i ], [ %.083.i, %bb.l ], [ %.083.i, %bb.k ], [ %.179.i, %.preheader.i ], [ %.1.i, %bb.o ]
  %i.dj = add i32 %.2.i, %i.bs                    ; 2 uses
  %i.dk = icmp ult i32 %i.dj, %i.bl
  br i1 %i.dk, label %bb.h, label %dissect_scsi_descriptor_snsinfo.exit, !llvm.loop !24

dissect_scsi_descriptor_snsinfo.exit:             ; preds = %.loopexit.i, %bb.g, %dissect_scsi_fix_snsinfo.exit, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @dissect_spc_reserve6(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i32 %6, ptr nofree readnone captures(none) %7) #1 {
bb.a:
  %i.a = icmp ne ptr %2, null
  %or.cond = and i1 %i.a, %4
  %or.cond3 = and i1 %or.cond, %5
  br i1 %or.cond3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %3, 4
  %i.c = load i32, ptr @hf_scsi_control, align 4
  %i.d = load i32, ptr @ett_scsi_control, align 4
  %i.e = tail call ptr @proto_tree_add_bitmask(ptr noundef nonnull %2, ptr noundef %0, i32 noundef %i.b, i32 noundef %i.c, i32 noundef %i.d, ptr noundef nonnull @cdb_control_fields, i32 noundef 0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @dissect_spc_reserve10(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i32 %6, ptr nofree readnone captures(none) %7) #1 {
bb.a:
  %.not = icmp ne ptr %2, null
  %or.cond = and i1 %4, %5
  %or.cond21 = and i1 %.not, %or.cond
  br i1 %or.cond21, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %3)
  %i.b = load i32, ptr @hf_scsi_release_flags, align 4
  %i.c = zext i8 %i.a to i32                      ; 4 uses
  %i.d = and i32 %i.c, 16
  %i.e = and i32 %i.c, 2
  %i.f = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef nonnull %2, i32 noundef %i.b, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef %i.c, ptr noundef nonnull @.str.38, i32 noundef %i.d, i32 noundef %i.e) ; 0 uses
  %i.g = and i32 %i.c, 18
  %i.h = icmp eq i32 %i.g, 16
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr @hf_scsi_release_thirdpartyid, align 4
  %i.j = add i32 %3, 2
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.i, ptr noundef %0, i32 noundef %i.j, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = load i32, ptr @hf_scsi_paramlen16, align 4
  %i.m = add i32 %3, 6
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.l, ptr noundef %0, i32 noundef %i.m, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.o = add i32 %3, 8
  %i.p = load i32, ptr @hf_scsi_control, align 4
  %i.q = load i32, ptr @ett_scsi_control, align 4
  %i.r = tail call ptr @proto_tree_add_bitmask(ptr noundef nonnull %2, ptr noundef %0, i32 noundef %i.o, i32 noundef %i.p, i32 noundef %i.q, ptr noundef nonnull @cdb_control_fields, i32 noundef 0) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @dissect_spc_testunitready(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i32 %6, ptr nofree readnone captures(none) %7) #1 {
bb.a:
  %i.a = icmp ne ptr %2, null
  %or.cond = and i1 %i.a, %4
  %or.cond3 = and i1 %or.cond, %5
  br i1 %or.cond3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %3, 4
  %i.c = load i32, ptr @hf_scsi_control, align 4
  %i.d = load i32, ptr @ett_scsi_control, align 4
  %i.e = tail call ptr @proto_tree_add_bitmask(ptr noundef nonnull %2, ptr noundef %0, i32 noundef %i.b, i32 noundef %i.c, i32 noundef %i.d, ptr noundef nonnull @cdb_control_fields, i32 noundef 0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @dissect_spc_senddiagnostic(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 zeroext %5, i32 %6, ptr nofree readnone captures(none) %7) #1 {
bb.a:
  %i.a = icmp ne ptr %2, null
  %or.cond = or i1 %i.a, %4
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @hf_scsi_senddiag_st_code, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.d = load i32, ptr @hf_scsi_senddiag_pf, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.d, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.f = load i32, ptr @hf_scsi_senddiag_st, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.f, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.h = load i32, ptr @hf_scsi_senddiag_devoff, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.h, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.j = load i32, ptr @hf_scsi_senddiag_unitoff, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.j, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.l = load i32, ptr @hf_scsi_paramlen16, align 4
  %i.m = add i32 %3, 2
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.l, ptr noundef %0, i32 noundef %i.m, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.o = add i32 %3, 4
  %i.p = load i32, ptr @hf_scsi_control, align 4
  %i.q = load i32, ptr @ett_scsi_control, align 4
  %i.r = tail call ptr @proto_tree_add_bitmask(ptr noundef %2, ptr noundef %0, i32 noundef %i.o, i32 noundef %i.p, i32 noundef %i.q, ptr noundef nonnull @cdb_control_fields, i32 noundef 0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @dissect_spc_writebuffer(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 zeroext %5, i32 %6, ptr nofree readnone captures(none) %7) #1 {
bb.a:
  %i.a = icmp ne ptr %2, null
  %or.cond = or i1 %i.a, %4
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @hf_scsi_wb_mode, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.d = load i32, ptr @hf_scsi_wb_bufferid, align 4
  %i.e = add i32 %3, 1
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.d, ptr noundef %0, i32 noundef %i.e, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.g = load i32, ptr @hf_scsi_wb_bufoffset, align 4
  %i.h = add i32 %3, 2
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.g, ptr noundef %0, i32 noundef %i.h, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.j = load i32, ptr @hf_scsi_paramlen24, align 4
  %i.k = add i32 %3, 5
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.j, ptr noundef %0, i32 noundef %i.k, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.m = add i32 %3, 8
  %i.n = load i32, ptr @hf_scsi_control, align 4
  %i.o = load i32, ptr @ett_scsi_control, align 4
  %i.p = tail call ptr @proto_tree_add_bitmask(ptr noundef %2, ptr noundef %0, i32 noundef %i.m, i32 noundef %i.n, i32 noundef %i.o, ptr noundef nonnull @cdb_control_fields, i32 noundef 0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @dissect_scsi_rsp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5) local_unnamed_addr #1 {
bb.a:
  %6 = alloca %struct.nstime_t, align 8           ; 4 uses
  %i.a = getelementptr i8, ptr %1, i64 416        ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noalias dereferenceable_or_null(24) ptr @wmem_alloc(ptr noundef %i.b, i64 noundef 24) #15 ; 4 uses
  %i.d = getelementptr i8, ptr %i.c, i64 16
  store ptr %4, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %i.c, i64 8
  store ptr %3, ptr %i.e, align 8
  store i32 4, ptr %i.c, align 8
  %i.f = load i32, ptr @scsi_tap, align 4
  tail call void @tap_queue_packet(i32 noundef %i.f, ptr noundef %1, ptr noundef %i.c)
  %i.g = load ptr, ptr %i.a, align 8
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.67, i32 noundef 6432) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not26.i = icmp eq ptr %4, null                ; 2 uses
  br i1 %.not26.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i8, ptr %4, align 8                 ; 2 uses
  %i.i = icmp eq i8 %i.h, -1
  br i1 %i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.j = load i32, ptr @scsi_def_devtype, align 4
  %i.k = trunc i32 %i.j to i8
  %i.l = or i8 %i.k, -128                         ; 2 uses
  store i8 %i.l, ptr %4, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.m = load i32, ptr @scsi_def_devtype, align 4
  %i.n = trunc i32 %i.m to i8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.0.i = phi i8 [ %i.n, %bb.f ], [ %i.l, %bb.e ], [ %i.h, %bb.d ]
  %i.o = tail call noalias dereferenceable_or_null(24) ptr @wmem_alloc(ptr noundef %i.g, i64 noundef 24) #15 ; 0 uses
  %i.p = and i8 %.0.i, 127                        ; 3 uses
  %i.q = icmp samesign ult i8 %i.p, 18
  br i1 %i.q, label %switch.lookup, label %get_cmdset_data.exit

switch.lookup:                                    ; preds = %bb.g
  %i.r = zext nneg i8 %i.p to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dissect_scsi_payload, i64 %i.r
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.s = zext nneg i8 %i.p to i64
  %switch.gep103 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dissect_scsi_payload.11, i64 %i.s
  %switch.load104 = load ptr, ptr %switch.gep103, align 8
  br label %get_cmdset_data.exit
end_hunk_2
begin_hunk_3_@dissect_scsi_payload:bb.a
  %i.k = load i32, ptr @scsi_tap, align 4
  tail call void @tap_queue_packet(i32 noundef %i.k, ptr noundef %1, ptr noundef %i.h)
  %i.l = load ptr, ptr %i.f, align 8
  %i.m = load i8, ptr %5, align 8                 ; 2 uses
  %i.n = icmp eq i8 %i.m, -1
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = load i32, ptr @scsi_def_devtype, align 4
  %i.p = trunc i32 %i.o to i8
  %i.q = or i8 %i.p, -128                         ; 2 uses
  store i8 %i.q, ptr %5, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i8 [ %i.m, %bb.c ], [ %i.q, %bb.d ]
  %i.r = tail call noalias dereferenceable_or_null(24) ptr @wmem_alloc(ptr noundef %i.l, i64 noundef 24) #15 ; 4 uses
  %i.s = and i8 %.0.i, 127                        ; 4 uses
  %i.t = icmp samesign ult i8 %i.s, 18
  br i1 %i.t, label %switch.lookup, label %get_cmdset_data.exit

switch.lookup:                                    ; preds = %bb.e
  %i.u = zext nneg i8 %i.s to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dissect_scsi_payload, i64 %i.u
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.v = zext nneg i8 %i.s to i64
  %switch.gep212 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dissect_scsi_payload.11, i64 %i.v
  %switch.load213 = load ptr, ptr %switch.gep212, align 8
  %i.w = zext nneg i8 %i.s to i64
  %switch.gep214 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dissect_scsi_payload.12, i64 %i.w
  %switch.load215 = load ptr, ptr %switch.gep214, align 8
  br label %get_cmdset_data.exit

get_cmdset_data.exit:                             ; preds = %bb.e, %switch.lookup
  %hf_scsi_spcopcode.sink.i = phi ptr [ %switch.load, %switch.lookup ], [ @hf_scsi_spcopcode, %bb.e ]
  %scsi_spc_vals_ext.sink.i = phi ptr [ %switch.load213, %switch.lookup ], [ @scsi_spc_vals_ext, %bb.e ] ; 2 uses
  %spc.sink.i = phi ptr [ %switch.load215, %switch.lookup ], [ @spc, %bb.e ]
  %i.x = getelementptr i8, ptr %i.r, i64 16       ; 2 uses
  %i.y = getelementptr i8, ptr %i.r, i64 8
  %i.z = load i32, ptr %hf_scsi_spcopcode.sink.i, align 4
  store i32 %i.z, ptr %i.r, align 8
  store ptr %scsi_spc_vals_ext.sink.i, ptr %i.y, align 8
  store ptr %spc.sink.i, ptr %i.x, align 8
  %i.aa = load ptr, ptr %1, align 8
  store ptr @.str.63, ptr %1, align 8
  %i.ab = load ptr, ptr %i.j, align 8
  %i.ac = getelementptr i8, ptr %i.ab, i64 10
  %i.ad = load i16, ptr %i.ac, align 2            ; 3 uses
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %get_cmdset_data.exit
  %i.ae = load i32, ptr @proto_scsi, align 4
  %i.af = load ptr, ptr %i.f, align 8
  %.mask = and i16 %i.ad, 255
  %i.ag = zext nneg i16 %.mask to i32
  %i.ah = tail call ptr @val_to_str_ext(ptr noundef %i.af, i32 noundef %i.ag, ptr noundef nonnull %scsi_spc_vals_ext.sink.i, ptr noundef nonnull @.str.56)
  %i.ai = select i1 %3, ptr @.str.74, ptr @.str.75
  %i.aj = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_protocol_format(ptr noundef nonnull %2, i32 noundef %i.ae, ptr noundef %0, i32 noundef 0, i32 noundef %i.e, ptr noundef nonnull @.str.73, ptr noundef %i.ah, ptr noundef nonnull %i.ai)
  %i.ak = load i32, ptr @ett_scsi, align 4
  %i.al = tail call ptr @proto_item_add_subtree(ptr noundef %i.aj, i32 noundef %i.ak)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %get_cmdset_data.exit
  %.0145 = phi ptr [ %i.al, %bb.f ], [ null, %get_cmdset_data.exit ] ; 12 uses
  %i.am = load i32, ptr @hf_scsi_lun, align 4
  %i.an = getelementptr i8, ptr %4, i64 8
  %i.ao = load i16, ptr %i.an, align 8
  %i.ap = zext i16 %i.ao to i32
  %i.aq = tail call ptr @proto_tree_add_uint(ptr noundef %.0145, i32 noundef %i.am, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.ap) ; 2 uses
  %.not.i175 = icmp eq ptr %i.aq, null
  br i1 %.not.i175, label %proto_item_set_generated.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr i8, ptr %i.aq, i64 40
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %.not5.i = icmp eq ptr %i.as, null
  br i1 %.not5.i, label %proto_item_set_generated.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr i8, ptr %i.as, i64 28     ; 2 uses
  %i.au = load i32, ptr %i.at, align 4
  %i.av = or i32 %i.au, 2
  store i32 %i.av, ptr %i.at, align 4
  br label %proto_item_set_generated.exit

proto_item_set_generated.exit:                    ; preds = %bb.g, %bb.h, %bb.i
  %i.aw = load i32, ptr @hf_scsi_inq_devtype, align 4
  %i.ax = load i8, ptr %5, align 8
  %i.ay = and i8 %i.ax, 127
  %i.az = zext nneg i8 %i.ay to i32               ; 2 uses
  %i.ba = load ptr, ptr %i.f, align 8
  %i.bb = tail call ptr @val_to_str(ptr noundef %i.ba, i32 noundef %i.az, ptr noundef nonnull @scsi_devtype_val, ptr noundef nonnull @.str.60)
  %i.bc = load i8, ptr %5, align 8                ; 2 uses
  %i.bd = and i8 %i.bc, 127
  %i.be = zext nneg i8 %i.bd to i32
  %.not157 = icmp sgt i8 %i.bc, -1
  %i.bf = select i1 %.not157, ptr @.str.62, ptr @.str.61
  %i.bg = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %.0145, i32 noundef %i.aw, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.az, ptr noundef nonnull @.str.59, ptr noundef %i.bb, i32 noundef %i.be, ptr noundef nonnull %i.bf) ; 2 uses
  %.not.i176 = icmp eq ptr %i.bg, null
  br i1 %.not.i176, label %proto_item_set_generated.exit178, label %bb.j

bb.j:                                             ; preds = %proto_item_set_generated.exit
  %i.bh = getelementptr i8, ptr %i.bg, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8            ; 2 uses
  %.not5.i177 = icmp eq ptr %i.bi, null
  br i1 %.not5.i177, label %proto_item_set_generated.exit178, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bj = getelementptr i8, ptr %i.bi, i64 28     ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = or i32 %i.bk, 2
  store i32 %i.bl, ptr %i.bj, align 4
  br label %proto_item_set_generated.exit178

proto_item_set_generated.exit178:                 ; preds = %proto_item_set_generated.exit, %bb.j, %bb.k
  %i.bm = getelementptr i8, ptr %4, i64 10
  %i.bn = load i16, ptr %i.bm, align 2            ; 2 uses
  %.not158 = icmp eq i16 %i.bn, -1
  br i1 %.not158, label %proto_item_set_generated.exit181, label %bb.l

bb.l:                                             ; preds = %proto_item_set_generated.exit178
  %i.bo = zext i16 %i.bn to i32
  %i.bp = load i32, ptr %i.r, align 8
  %i.bq = tail call ptr @proto_tree_add_uint(ptr noundef %.0145, i32 noundef %i.bp, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.bo) ; 2 uses
  %.not.i179 = icmp eq ptr %i.bq, null
  br i1 %.not.i179, label %proto_item_set_generated.exit181, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.br = getelementptr i8, ptr %i.bq, i64 40
  %i.bs = load ptr, ptr %i.br, align 8            ; 2 uses
  %.not5.i180 = icmp eq ptr %i.bs, null
  br i1 %.not5.i180, label %proto_item_set_generated.exit181, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bt = getelementptr i8, ptr %i.bs, i64 28     ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = or i32 %i.bu, 2
  store i32 %i.bv, ptr %i.bt, align 4
  br label %proto_item_set_generated.exit181

proto_item_set_generated.exit181:                 ; preds = %bb.n, %bb.m, %bb.l, %proto_item_set_generated.exit178
  %i.bw = load i32, ptr %4, align 8               ; 2 uses
  %.not159 = icmp eq i32 %i.bw, 0
  br i1 %.not159, label %proto_item_set_generated.exit184, label %bb.o

bb.o:                                             ; preds = %proto_item_set_generated.exit181
  %i.bx = load i32, ptr @hf_scsi_request_frame, align 4
  %i.by = tail call ptr @proto_tree_add_uint(ptr noundef %.0145, i32 noundef %i.bx, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.bw) ; 2 uses
  %.not.i182 = icmp eq ptr %i.by, null
  br i1 %.not.i182, label %proto_item_set_generated.exit184, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = getelementptr i8, ptr %i.by, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8            ; 2 uses
  %.not5.i183 = icmp eq ptr %i.ca, null
  br i1 %.not5.i183, label %proto_item_set_generated.exit184, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cb = getelementptr i8, ptr %i.ca, i64 28     ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4
  %i.cd = or i32 %i.cc, 2
  store i32 %i.cd, ptr %i.cb, align 4
  br label %proto_item_set_generated.exit184

proto_item_set_generated.exit184:                 ; preds = %bb.q, %bb.p, %bb.o, %proto_item_set_generated.exit181
  %i.ce = getelementptr i8, ptr %4, i64 4
  %i.cf = load i32, ptr %i.ce, align 4            ; 2 uses
  %.not160 = icmp eq i32 %i.cf, 0
  br i1 %.not160, label %proto_item_set_generated.exit187, label %bb.r

bb.r:                                             ; preds = %proto_item_set_generated.exit184
  %i.cg = load i32, ptr @hf_scsi_response_frame, align 4
  %i.ch = tail call ptr @proto_tree_add_uint(ptr noundef %.0145, i32 noundef %i.cg, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.cf) ; 2 uses
  %.not.i185 = icmp eq ptr %i.ch, null
  br i1 %.not.i185, label %proto_item_set_generated.exit187, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ci = getelementptr i8, ptr %i.ch, i64 40
  %i.cj = load ptr, ptr %i.ci, align 8            ; 2 uses
  %.not5.i186 = icmp eq ptr %i.cj, null
  br i1 %.not5.i186, label %proto_item_set_generated.exit187, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ck = getelementptr i8, ptr %i.cj, i64 28     ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = or i32 %i.cl, 2
  store i32 %i.cm, ptr %i.ck, align 4
  br label %proto_item_set_generated.exit187

proto_item_set_generated.exit187:                 ; preds = %bb.t, %bb.s, %bb.r, %proto_item_set_generated.exit184
  %i.cn = load i32, ptr %4, align 8
  %.not161 = icmp eq i32 %i.cn, 0
  br i1 %.not161, label %bb.u, label %bb.v

bb.u:                                             ; preds = %proto_item_set_generated.exit187
  %i.co = tail call i32 @call_data_dissector(ptr noundef %0, ptr noundef %1, ptr noundef %.0145) ; 0 uses
  br label %bb.aq

bb.v:                                             ; preds = %proto_item_set_generated.exit187
  %i.cp = load i8, ptr @scsi_defragment, align 1, !range !25, !noundef !26
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not162 = icmp eq i32 %6, 0
  br i1 %.not162, label %bb.ah, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cr = tail call i32 @call_data_dissector(ptr noundef %0, ptr noundef %1, ptr noundef %.0145) ; 0 uses
  br label %bb.aq

bb.y:                                             ; preds = %bb.v
  %i.cs = tail call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef 0)
  %i.ct = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 0)
  %.not163 = icmp eq i32 %i.cs, %i.ct
  br i1 %.not163, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.not168 = icmp eq i32 %6, 0
  br i1 %.not168, label %bb.ah, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cu = tail call i32 @call_data_dissector(ptr noundef %0, ptr noundef %1, ptr noundef %.0145) ; 0 uses
  br label %bb.aq

bb.ab:                                            ; preds = %bb.y
  %i.cv = getelementptr i8, ptr %4, i64 14
  %i.cw = load i16, ptr %i.cv, align 2
  %i.cx = and i16 %i.cw, 3
  %i.cy = icmp ne i16 %i.cx, 3
  %.not211 = or i1 %i.cy, %3
  %.sink = select i1 %.not211, i64 16, i64 20
  %i.cz = getelementptr i8, ptr %4, i64 %.sink
  %.0144 = load i32, ptr %i.cz, align 4           ; 2 uses
  %.not164 = icmp eq i32 %6, 0
  br i1 %.not164, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.da = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 0)
  %i.db = icmp eq i32 %i.da, %.0144
  br i1 %i.db, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.dc = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 0)
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %bb.aq, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.de = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 0)
  %i.df = add i32 %i.de, %6
  %.not165 = icmp ne i32 %i.df, %.0144
  %i.dg = load i32, ptr %4, align 8
  %i.dh = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 0)
  %i.di = tail call ptr @fragment_add_check(ptr noundef nonnull @scsi_reassembly_table, ptr noundef %0, i32 noundef 0, ptr noundef %1, i32 noundef %i.dg, ptr noundef null, i32 noundef %6, i32 noundef %i.dh, i1 noundef zeroext %.not165) ; 3 uses
  %i.dj = call ptr @process_reassembled_data(ptr noundef %0, i32 noundef 0, ptr noundef %1, ptr noundef nonnull @.str.76, ptr noundef %i.di, ptr noundef nonnull @scsi_frag_items, ptr noundef nonnull %i.a, ptr noundef %2) ; 3 uses
  %.not166 = icmp eq ptr %i.di, null
  br i1 %.not166, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dk = getelementptr i8, ptr %i.di, i64 40
  %i.dl = load i32, ptr %i.dk, align 8            ; 2 uses
  %i.dm = getelementptr i8, ptr %1, i64 20
  %i.dn = load i32, ptr %i.dm, align 4
  %.not167 = icmp eq i32 %i.dl, %i.dn
  br i1 %.not167, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.do = getelementptr i8, ptr %1, i64 8
  %i.dp = load ptr, ptr %i.do, align 8
  call void (ptr, i32, ptr, ...) @col_prepend_fstr(ptr noundef %i.dp, i32 noundef 25, ptr noundef nonnull @.str.77, i32 noundef %i.dl)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ae, %bb.af, %bb.ag, %bb.ac, %bb.z, %bb.w
  %.0143 = phi ptr [ %0, %bb.z ], [ %i.dj, %bb.ag ], [ %i.dj, %bb.af ], [ %i.dj, %bb.ae ], [ %0, %bb.ac ], [ %0, %bb.w ] ; 5 uses
  %.not169 = icmp eq ptr %.0143, null
  br i1 %.not169, label %bb.aq, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  br i1 %.not, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.dq = and i16 %i.ad, 255
  %i.dr = icmp eq i16 %i.dq, 18
  br i1 %i.dr, label %bb.ak, label %bb.aq

bb.ak:                                            ; preds = %bb.aj
  call void @dissect_spc_inquiry(ptr noundef nonnull %.0143, ptr noundef %1, ptr noundef %.0145, i32 noundef 0, i1 noundef zeroext %3, i1 noundef zeroext false, i32 poison, ptr noundef %i.h)
  br label %bb.aq

bb.al:                                            ; preds = %bb.ai
  %i.ds = load ptr, ptr %i.x, align 8             ; 2 uses
  %.not170 = icmp eq ptr %i.ds, null
  %.pre = and i16 %i.ad, 255
  %.pre188 = zext nneg i16 %.pre to i64           ; 2 uses
  br i1 %.not170, label %._crit_edge, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dt = getelementptr [8 x i8], ptr %i.ds, i64 %.pre188
  %i.du = load ptr, ptr %i.dt, align 8            ; 2 uses
  %.not172 = icmp eq ptr %i.du, null
  br i1 %.not172, label %._crit_edge, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void %i.du(ptr noundef nonnull %.0143, ptr noundef %1, ptr noundef %.0145, i32 noundef 0, i1 noundef zeroext %3, i1 noundef zeroext false, i32 noundef %i.e, ptr noundef %i.h)
  br label %bb.aq

._crit_edge:                                      ; preds = %bb.al, %bb.am
  %i.dv = getelementptr [8 x i8], ptr @spc, i64 %.pre188
  %i.dw = load ptr, ptr %i.dv, align 8            ; 2 uses
  %.not174 = icmp eq ptr %i.dw, null
  br i1 %.not174, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge
  call void %i.dw(ptr noundef nonnull %.0143, ptr noundef %1, ptr noundef %.0145, i32 noundef 0, i1 noundef zeroext %3, i1 noundef zeroext false, i32 noundef %i.e, ptr noundef %i.h)
  br label %bb.aq

bb.ap:                                            ; preds = %._crit_edge
  %i.dx = call i32 @call_data_dissector(ptr noundef nonnull %.0143, ptr noundef %1, ptr noundef %.0145) ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ak, %bb.aj, %bb.ao, %bb.ap, %bb.an, %bb.ah, %bb.ad, %bb.aa, %bb.x, %bb.u
  store ptr %i.aa, ptr %1, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @fragment_add_check(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @process_reassembled_data(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare void @col_prepend_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_scsi() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.1321) ; 2 uses
  store i32 %i.a, ptr @proto_scsi, align 4
  tail call void @proto_register_field_array(i32 noundef %i.a, ptr noundef nonnull @proto_register_scsi.hf, i32 noundef 632)
  tail call void @proto_register_subtree_array(ptr noundef nonnull @proto_register_scsi.ett, i32 noundef 36)
  %i.b = load i32, ptr @proto_scsi, align 4
  %i.c = tail call ptr @expert_register_protocol(i32 noundef %i.b)
  tail call void @expert_register_field_array(ptr noundef %i.c, ptr noundef nonnull @proto_register_scsi.ei, i32 noundef 5)
  %i.d = load i32, ptr @proto_scsi, align 4
  %i.e = tail call ptr @prefs_register_protocol(i32 noundef %i.d, ptr noundef null) ; 2 uses
  tail call void @prefs_register_enum_preference(ptr noundef %i.e, ptr noundef nonnull @.str.1322, ptr noundef nonnull @.str.1323, ptr noundef nonnull @.str.1324, ptr noundef nonnull @scsi_def_devtype, ptr noundef nonnull @scsi_devtype_options, i1 noundef zeroext false)
  tail call void @prefs_register_bool_preference(ptr noundef %i.e, ptr noundef nonnull @.str.1325, ptr noundef nonnull @.str.1326, ptr noundef nonnull @.str.1327, ptr noundef nonnull @scsi_defragment)
  tail call void @reassembly_table_register(ptr noundef nonnull @scsi_reassembly_table, ptr noundef nonnull @addresses_reassembly_table_functions)
  %i.f = load i32, ptr @proto_scsi, align 4
  tail call void @register_srt_table(i32 noundef %i.f, ptr noundef null, i32 noundef 1, ptr noundef nonnull @scsistat_packet, ptr noundef nonnull @scsistat_init, ptr noundef nonnull @scsistat_param)
  %i.g = tail call i32 @register_tap(ptr noundef nonnull @.str.1321)
  store i32 %i.g, ptr @scsi_tap, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare void @proto_register_field_array(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare void @proto_register_subtree_array(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @expert_register_protocol(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare void @expert_register_field_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @prefs_register_protocol(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare void @prefs_register_enum_preference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare void @prefs_register_bool_preference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare void @reassembly_table_register(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare void @register_srt_table(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 0, 2) i32 @scsistat_packet(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 %4) #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load i32, ptr %3, align 8
  %.not = icmp eq i32 %i.f, 4
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %3, i64 16
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not18 = icmp eq ptr %i.h, null
  br i1 %.not18, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i8, ptr %i.h, align 8
  %i.j = and i8 %i.i, 127
  %i.k = load i8, ptr %i.e, align 8
  %.not19 = icmp eq i8 %i.j, %i.k
  br i1 %.not19, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %3, i64 8
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %.not20 = icmp eq ptr %i.m, null
  br i1 %.not20, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %i.m, i64 10
  %i.o = load i16, ptr %i.n, align 2              ; 2 uses
  %i.p = icmp ugt i16 %i.o, 255
  br i1 %i.p, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = zext nneg i16 %i.o to i32
  %i.r = getelementptr i8, ptr %i.m, i64 32
  tail call void @add_srt_table_data(ptr noundef %i.c, i32 noundef %i.q, ptr noundef %i.r, ptr noundef %1)
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.b, %bb.c, %bb.a, %bb.f
  %.0 = phi i32 [ 1, %bb.f ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @scsistat_init(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = tail call ptr @get_srt_table_param_data(ptr noundef %0) ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.2449, ptr noundef nonnull @.str.67, i32 noundef 958, ptr noundef nonnull @.str.2450) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.a, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call ptr @init_srt_table(ptr noundef %i.c, ptr noundef null, ptr noundef %1, i32 noundef 256, ptr noundef null, ptr noundef %i.e, ptr noundef nonnull %i.a)
  %i.g = getelementptr i8, ptr %i.a, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.d
  %.012 = phi i32 [ 0, %bb.c ], [ %i.j, %bb.d ]   ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call ptr @val_to_str_ext_const(i32 noundef %.012, ptr noundef %i.h, ptr noundef nonnull @.str.53)
  tail call void @init_srt_table_row(ptr noundef %i.f, i32 noundef %.012, ptr noundef %i.i)
  %i.j = add nuw nsw i32 %.012, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.j, 256
  br i1 %exitcond.not, label %bb.e, label %bb.d, !llvm.loop !27

bb.e:                                             ; preds = %bb.d
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @scsistat_param(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.c = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %1, ptr noundef nonnull @.str.2451, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #11
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = call noalias dereferenceable_or_null(32) ptr @g_malloc0(i64 noundef 32) #16 ; 5 uses
  %i.f = load i32, ptr %i.b, align 4              ; 6 uses
  %i.g = trunc i32 %i.f to i8
  store i8 %i.g, ptr %i.e, align 8
  %i.h = icmp ult i32 %i.f, 18
  %switch.shifted = lshr i32 131363, %i.f
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond = select i1 %i.h, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.c

switch.lookup:                                    ; preds = %bb.b
  %i.i = zext nneg i32 %i.f to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.scsistat_param, i64 %i.i
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.j = zext nneg i32 %i.f to i64
  %switch.gep31 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.scsistat_param.13, i64 %i.j
  %switch.load32 = load ptr, ptr %switch.gep31, align 8
  %i.k = zext nneg i32 %i.f to i64
  %switch.gep33 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.scsistat_param.14, i64 %i.k
  %switch.load34 = load ptr, ptr %switch.gep33, align 8
  %i.l = getelementptr i8, ptr %i.e, i64 8
  store ptr %switch.load, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %i.e, i64 16
  store ptr %switch.load32, ptr %i.m, align 8
  %i.n = getelementptr i8, ptr %i.e, i64 24
  store ptr %switch.load34, ptr %i.n, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %switch.lookup
  call void @set_srt_table_param_data(ptr noundef %0, ptr noundef %i.e)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.o = call noalias dereferenceable_or_null(20) ptr @g_malloc(i64 noundef 20) #16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(20) %i.o, ptr noundef nonnull align 1 dereferenceable(20) @.str.2462, i64 noundef 20, i1 noundef false) #11
  store ptr %i.o, ptr %2, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = load i32, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %i.p
}

; Function Attrs: null_pointer_is_valid
declare i32 @register_tap(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare i64 @tvb_get_uint64(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare void @proto_item_set_len(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @log_parameter_2e_0001(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #1 {
bb.a:
  %i.a = load i32, ptr @hf_scsi_log_ta_rw, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @log_parameter_2e_0002(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #1 {
bb.a:
  %i.a = load i32, ptr @hf_scsi_log_ta_ww, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @log_parameter_2e_0003(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #1 {
bb.a:
  %i.a = load i32, ptr @hf_scsi_log_ta_he, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @log_parameter_2e_0004(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #1 {
bb.a:
  %i.a = load i32, ptr @hf_scsi_log_ta_media, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @log_parameter_2e_0005(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #1 {
bb.a:
  %i.a = load i32, ptr @hf_scsi_log_ta_rf, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @log_parameter_2e_0006(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #1 {
bb.a:
  %i.a = load i32, ptr @hf_scsi_log_ta_wf, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @log_parameter_2e_0007(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #1 {
bb.a:
  %i.a = load i32, ptr @hf_scsi_log_ta_ml, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @log_parameter_2e_0008(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #1 {
bb.a:
  %i.a = load i32, ptr @hf_scsi_log_ta_ndg, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @log_parameter_2e_0009(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #1 {
bb.a:
  %i.a = load i32, ptr @hf_scsi_log_ta_wp, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @log_parameter_2e_000a(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #1 {
bb.a:
  %i.a = load i32, ptr @hf_scsi_log_ta_nr, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @log_parameter_2e_000b(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #1 {
bb.a:
  %i.a = load i32, ptr @hf_scsi_log_ta_cm, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @log_parameter_2e_000c(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #1 {
bb.a:
  %i.a = load i32, ptr @hf_scsi_log_ta_uf, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @log_parameter_2e_000d(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #1 {
bb.a:
  %i.a = load i32, ptr @hf_scsi_log_ta_rmcf, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @log_parameter_2e_000e(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #1 {
bb.a:
  %i.a = load i32, ptr @hf_scsi_log_ta_umcf, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @log_parameter_2e_000f(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #1 {
bb.a:
  %i.a = load i32, ptr @hf_scsi_log_ta_mcicf, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @log_parameter_2e_0010(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #1 {
bb.a:
  %i.a = load i32, ptr @hf_scsi_log_ta_fe, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  ret void
}

end_hunk_3
begin_hunk_4_@dissect_scsi_spc_modepage:bb.a
  %i.dc = load i32, ptr %i.db, align 4
  %i.dd = or i32 %i.dc, 1
  store i32 %i.dd, ptr %i.db, align 4
  br label %proto_item_set_hidden.exit

proto_item_set_hidden.exit:                       ; preds = %bb.g, %bb.i, %bb.h
  %i.de = load i32, ptr @hf_scsi_spc_modepage_interval_timer, align 4
  %i.df = add i32 %3, 4
  %i.dg = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.de, ptr noundef %0, i32 noundef %i.df, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.dh = load i32, ptr @hf_scsi_spc_modepage_report_count, align 4
  %i.di = add i32 %3, 8
  %i.dj = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.dh, ptr noundef %0, i32 noundef %i.di, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.m

bb.j:                                             ; preds = %bb.a
  %i.dk = load i32, ptr @hf_scsi_spc_modepage_idle, align 4
  %i.dl = add i32 %3, 3                           ; 2 uses
  %i.dm = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.dk, ptr noundef %0, i32 noundef %i.dl, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dn = load i32, ptr @hf_scsi_spc_modepage_standby, align 4
  %i.do = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.dn, ptr noundef %0, i32 noundef %i.dl, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dp = add i32 %3, 4                           ; 2 uses
  %i.dq = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.dp)
  %i.dr = zext i16 %i.dq to i32
  %i.ds = mul nuw nsw i32 %i.dr, 100
  %i.dt = load i32, ptr @hf_scsi_spc_modepage_idle_condition_timer, align 4
  %i.du = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.dt, ptr noundef %0, i32 noundef %i.dp, i32 noundef 2, i32 noundef %i.ds) ; 0 uses
  %i.dv = add i32 %3, 6                           ; 2 uses
  %i.dw = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.dv)
  %i.dx = zext i16 %i.dw to i32
  %i.dy = mul nuw nsw i32 %i.dx, 100
  %i.dz = load i32, ptr @hf_scsi_spc_modepage_standby_condition_timer, align 4
  %i.ea = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.dz, ptr noundef %0, i32 noundef %i.dv, i32 noundef 2, i32 noundef %i.dy) ; 0 uses
  br label %bb.m

bb.k:                                             ; preds = %bb.a
  %i.eb = add i32 %3, 2                           ; 2 uses
  %i.ec = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.eb)
  %i.ed = and i8 %i.ec, 15
  %i.ee = load i32, ptr @hf_scsi_protocol, align 4
  %i.ef = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ee, ptr noundef %0, i32 noundef %i.eb, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.eg = icmp eq i8 %i.ed, 0
  br i1 %i.eg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.eh = load i32, ptr @hf_scsi_spc_modepage_dtfd, align 4
  %i.ei = add i32 %3, 3                           ; 8 uses
  %i.ej = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.eh, ptr noundef %0, i32 noundef %i.ei, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ek = load i32, ptr @hf_scsi_spc_modepage_plpb, align 4
  %i.el = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ek, ptr noundef %0, i32 noundef %i.ei, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.em = load i32, ptr @hf_scsi_spc_modepage_ddis, align 4
  %i.en = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.em, ptr noundef %0, i32 noundef %i.ei, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.eo = load i32, ptr @hf_scsi_spc_modepage_dlm, align 4
  %i.ep = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.eo, ptr noundef %0, i32 noundef %i.ei, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.eq = load i32, ptr @hf_scsi_spc_modepage_rha, align 4
  %i.er = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.eq, ptr noundef %0, i32 noundef %i.ei, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.es = load i32, ptr @hf_scsi_spc_modepage_alwi, align 4
  %i.et = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.es, ptr noundef %0, i32 noundef %i.ei, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.eu = load i32, ptr @hf_scsi_spc_modepage_dtipe, align 4
  %i.ev = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.eu, ptr noundef %0, i32 noundef %i.ei, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ew = load i32, ptr @hf_scsi_spc_modepage_dtoli, align 4
  %i.ex = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ew, ptr noundef %0, i32 noundef %i.ei, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ey = load i32, ptr @hf_scsi_spc_modepage_rr_tov_units, align 4
  %i.ez = add i32 %3, 6
  %i.fa = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ey, ptr noundef %0, i32 noundef %i.ez, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.fb = load i32, ptr @hf_scsi_spc_modepage_rr_tov, align 4
  %i.fc = add i32 %3, 7
  %i.fd = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.fb, ptr noundef %0, i32 noundef %i.fc, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %proto_item_set_hidden.exit, %bb.j, %bb.l, %bb.e, %bb.d, %bb.c, %bb.a, %bb.k
  %.0 = phi i1 [ false, %bb.k ], [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %bb.e ], [ true, %bb.l ], [ true, %bb.j ], [ true, %proto_item_set_hidden.exit ], [ true, %bb.f ]
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_scsi_sns_specific_info(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext range(i8 0, 16) %3) unnamed_addr #1 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %2)
  %i.b = load i32, ptr @hf_scsi_sksv, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.b, ptr noundef %0, i32 noundef %2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.d = load i32, ptr @hf_scsi_sks_info, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.d, ptr noundef %0, i32 noundef %2, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.f = icmp eq i8 %3, 5
  %i.g = icmp slt i8 %i.a, 0
  %or.cond = select i1 %i.f, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr @hf_scsi_sks_fp_cd, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.h, ptr noundef %0, i32 noundef %2, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.j = load i32, ptr @hf_scsi_sks_fp_bpv, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.j, ptr noundef %0, i32 noundef %2, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.l = load i32, ptr @hf_scsi_sks_fp_bit, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.l, ptr noundef %0, i32 noundef %2, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.n = load i32, ptr @hf_scsi_sks_fp_field, align 4
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.n, ptr noundef %0, i32 noundef %2, i32 noundef 3, i32 noundef 0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @osd_lookup_attribute(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_scsi_varlencdb(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i32 %6, ptr nofree readnone captures(none) %7) #1 {
bb.a:
  %i.a = icmp ne ptr %2, null
  %or.cond = and i1 %i.a, %4
  %or.cond3 = and i1 %or.cond, %5
  br i1 %or.cond3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @hf_scsi_control, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.b, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.d = load i32, ptr @hf_scsi_add_cdblen, align 4
  %i.e = add i32 %3, 6
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.d, ptr noundef %0, i32 noundef %i.e, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.g = load i32, ptr @hf_scsi_svcaction, align 4
  %i.h = add i32 %3, 7
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.g, ptr noundef %0, i32 noundef %i.h, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define internal void @dissect_spc_reportdeviceidentifier(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i32 %3, i1 zeroext %4, i1 zeroext %5, i32 %6, ptr nofree readnone captures(none) %7) #7 {
bb.a:
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @add_srt_table_data(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @get_srt_table_param_data(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @init_srt_table(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare void @init_srt_table_row(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare void @set_srt_table_param_data(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

attributes #0 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind null_pointer_is_valid returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { nounwind returns_twice }
attributes #13 = { noreturn nounwind }
attributes #14 = { noreturn }
attributes #15 = { allocsize(1) }
attributes #16 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{null}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6}
!21 = distinct !{!21, !6}
!22 = distinct !{!22, !6}
!23 = distinct !{!23, !6}
!24 = distinct !{!24, !6}
!25 = !{i8 0, i8 2}
!26 = !{}
!27 = distinct !{!27, !6}
end_hunk_4

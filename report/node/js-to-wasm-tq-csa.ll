Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/js-to-wasm-tq-csa?download=true
inline.NumInlined: 21543
inline.NumDeleted: 1125
begin_hunk_0_@_ZN2v88internal30JSToWasmHandleReturnsAssembler33GenerateJSToWasmHandleReturnsImplEv:bb.a
  %1472 = alloca %"class.v8::internal::TNode.22", align 8 ; 2 uses
  %1473 = alloca %"class.v8::internal::TNode.22", align 8 ; 2 uses
  %1474 = alloca %"class.v8::internal::TNode.20", align 8 ; 2 uses
  %1475 = alloca %"class.std::vector.0", align 8  ; 6 uses
  %1476 = alloca %"class.std::vector.0", align 8  ; 6 uses
  %1477 = alloca %"struct.v8::internal::TorqueStructReference_intptr_0", align 8 ; 5 uses
  %1478 = alloca %"class.v8::internal::TNode.25", align 8 ; 2 uses
  %1479 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1480 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1481 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1482 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1483 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1484 = alloca %"struct.v8::internal::TorqueStructReference_intptr_0", align 16 ; 4 uses
  %1485 = alloca %"class.v8::internal::TNode.25", align 8 ; 2 uses
  %1486 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1487 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1488 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1489 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1490 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1491 = alloca %"class.v8::internal::TNode.20", align 8 ; 2 uses
  %1492 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1493 = alloca %"class.v8::internal::TNode.22", align 8 ; 2 uses
  %1494 = alloca %"class.v8::internal::TNode.22", align 8 ; 2 uses
  %1495 = alloca %"class.v8::internal::TNode.20", align 8 ; 2 uses
  %1496 = alloca %"class.std::vector.0", align 8  ; 6 uses
  %1497 = alloca %"class.std::vector.0", align 8  ; 6 uses
  %1498 = alloca %"struct.v8::internal::TorqueStructReference_intptr_0", align 16 ; 4 uses
  %1499 = alloca %"class.v8::internal::TNode.25", align 8 ; 2 uses
  %1500 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1501 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1502 = alloca %"class.v8::internal::TNode.20", align 8 ; 2 uses
  %1503 = alloca %"struct.v8::internal::TorqueStructReference_intptr_0", align 16 ; 4 uses
  %1504 = alloca %"class.v8::internal::TNode.25", align 8 ; 2 uses
  %1505 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1506 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1507 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1508 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1509 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1510 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1511 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1512 = alloca %"class.v8::internal::TNode.20", align 8 ; 2 uses
  %1513 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 7 uses
  %1514 = alloca %"class.v8::internal::TNode.21", align 8 ; 2 uses
  %1515 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1516 = alloca %"class.v8::internal::TNode.22", align 8 ; 2 uses
  %1517 = alloca %"struct.v8::internal::TorqueStructSlice_Object_MutableReference_Object_0", align 8 ; 6 uses
  %1518 = alloca %"class.v8::internal::TNode.158", align 8 ; 2 uses
  %1519 = alloca %"class.v8::internal::TNode.23", align 8 ; 2 uses
  %1520 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1521 = alloca %"class.v8::internal::TNode.23", align 8 ; 2 uses
  %1522 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1523 = alloca %"class.v8::internal::TNode.20", align 8 ; 2 uses
  %1524 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1525 = alloca %"class.v8::internal::TNode.22", align 8 ; 2 uses
  %1526 = alloca %"class.v8::internal::TNode.22", align 8 ; 2 uses
  %1527 = alloca %"class.v8::internal::TNode.20", align 8 ; 2 uses
  %1528 = alloca %"class.std::vector.0", align 8  ; 6 uses
  %1529 = alloca %"class.std::vector.0", align 8  ; 6 uses
  %1530 = alloca %"class.v8::internal::TNode.15", align 8 ; 5 uses
  %1531 = alloca %"class.v8::internal::TNode.15", align 8 ; 5 uses
  %1532 = alloca %"class.v8::internal::TNode.15", align 8 ; 5 uses
  %1533 = alloca %"class.v8::internal::TNode.15", align 8 ; 5 uses
  %1534 = alloca %"class.v8::internal::TNode.15", align 8 ; 5 uses
  %1535 = alloca %"class.v8::internal::TNode.20", align 8 ; 5 uses
  %1536 = alloca %"class.v8::internal::TNode.15", align 8 ; 5 uses
  %1537 = alloca %"class.v8::internal::TNode.25", align 8 ; 4 uses
  %1538 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %1539 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %1540 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %1541 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %1542 = alloca %"class.v8::internal::TNode.15", align 8 ; 5 uses
  %1543 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1544 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1545 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1546 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1547 = alloca %"struct.v8::internal::TorqueStructReference_Object_0", align 16 ; 4 uses
  %1548 = alloca %"class.v8::internal::TNode.25", align 8 ; 2 uses
  %1549 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1550 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1551 = alloca %"struct.v8::internal::CodeStubAssembler::Reference", align 16 ; 2 uses
  %1552 = alloca %"class.v8::internal::TNode.21", align 8 ; 2 uses
  %1553 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %1554 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %1555 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %1556 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %1557 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %1558 = alloca %"class.v8::internal::TNode.20", align 8 ; 4 uses
  %1559 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %1560 = alloca %"class.v8::internal::TNode.25", align 8 ; 4 uses
  %1561 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %1562 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %1563 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %1564 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %1565 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %1566 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1567 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1568 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1569 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1570 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1571 = alloca %"class.v8::internal::TNode.20", align 8 ; 2 uses
  %1572 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1573 = alloca %"class.v8::internal::TNode.22", align 8 ; 2 uses
  %1574 = alloca %"class.v8::internal::TNode.22", align 8 ; 2 uses
  %1575 = alloca %"class.v8::internal::TNode.20", align 8 ; 2 uses
  %1576 = alloca %"class.std::vector.0", align 8  ; 6 uses
  %1577 = alloca %"class.std::vector.0", align 8  ; 6 uses
  %1578 = alloca %"class.v8::internal::TNode.20", align 8 ; 2 uses
  %1579 = alloca %"class.v8::internal::TNode.20", align 8 ; 2 uses
  %1580 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1581 = alloca %"class.v8::internal::TNode.22", align 8 ; 2 uses
  %1582 = alloca %"class.v8::internal::TNode.22", align 8 ; 2 uses
  %1583 = alloca %"class.v8::internal::TNode.20", align 8 ; 2 uses
  %1584 = alloca %"class.std::vector.0", align 8  ; 6 uses
  %1585 = alloca %"class.std::vector.0", align 8  ; 6 uses
  %1586 = alloca %"class.std::vector.106", align 8 ; 9 uses
  %1587 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1588 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1589 = alloca %"class.v8::internal::TNode.26", align 8 ; 2 uses
  %1590 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1591 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1592 = alloca %"class.v8::internal::TNode.26", align 8 ; 2 uses
  %1593 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1594 = alloca %"struct.v8::internal::TorqueStructLocationAllocator_0", align 8 ; 9 uses
  %1595 = alloca %"class.v8::internal::TNode.26", align 8 ; 2 uses
  %1596 = alloca %"class.v8::internal::TNode.26", align 8 ; 2 uses
  %1597 = alloca %"class.v8::internal::TNode.26", align 8 ; 2 uses
  %1598 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1599 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1600 = alloca %"class.v8::internal::TNode", align 8 ; 2 uses
  %1601 = alloca %"class.v8::internal::TNode.20", align 8 ; 2 uses
  %1602 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1603 = alloca %"class.v8::internal::TNode.22", align 8 ; 2 uses
  %1604 = alloca %"class.v8::internal::TNode.22", align 8 ; 2 uses
  %1605 = alloca %"class.v8::internal::TNode.20", align 8 ; 2 uses
  %1606 = alloca %"class.std::vector.0", align 8  ; 6 uses
  %1607 = alloca %"class.std::vector.0", align 8  ; 6 uses
  %1608 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1609 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1610 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1611 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1612 = alloca %"struct.v8::internal::TorqueStructReference_WasmCodePointer_0", align 8 ; 5 uses
  %1613 = alloca %"class.v8::internal::TNode.25", align 8 ; 2 uses
  %1614 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1615 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 7 uses
  %1616 = alloca %"class.v8::internal::TNode.13", align 8 ; 2 uses
  %1617 = alloca %"class.v8::internal::TNode.20", align 8 ; 2 uses
  %1618 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1619 = alloca %"class.v8::internal::TNode.24", align 8 ; 2 uses
  %1620 = alloca %"class.v8::internal::TNode.24", align 8 ; 2 uses
  %1621 = alloca %"class.v8::internal::TNode.20", align 8 ; 2 uses
  %1622 = alloca %"class.std::vector.0", align 8  ; 6 uses
  %1623 = alloca %"class.std::vector.0", align 8  ; 6 uses
  %1624 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1625 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1626 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1627 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1628 = alloca %"class.v8::internal::TNode.20", align 8 ; 2 uses
  %1629 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1630 = alloca %"class.v8::internal::TNode.22", align 8 ; 2 uses
  %1631 = alloca %"class.v8::internal::TNode.22", align 8 ; 2 uses
  %1632 = alloca %"class.v8::internal::TNode.20", align 8 ; 2 uses
  %1633 = alloca %"class.std::vector.0", align 8  ; 6 uses
  %1634 = alloca %"class.std::vector.0", align 8  ; 6 uses
  %1635 = alloca %"struct.v8::internal::TorqueStructReference_intptr_0", align 8 ; 5 uses
  %1636 = alloca %"class.v8::internal::TNode.25", align 8 ; 2 uses
  %1637 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1638 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1639 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1640 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1641 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1642 = alloca %"struct.v8::internal::TorqueStructReference_intptr_0", align 16 ; 4 uses
  %1643 = alloca %"class.v8::internal::TNode.25", align 8 ; 2 uses
  %1644 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1645 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1646 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1647 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1648 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1649 = alloca %"class.v8::internal::TNode.20", align 8 ; 2 uses
  %1650 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1651 = alloca %"class.v8::internal::TNode.22", align 8 ; 2 uses
  %1652 = alloca %"class.v8::internal::TNode.22", align 8 ; 2 uses
  %1653 = alloca %"class.v8::internal::TNode.20", align 8 ; 2 uses
  %1654 = alloca %"class.std::vector.0", align 8  ; 6 uses
  %1655 = alloca %"class.std::vector.0", align 8  ; 6 uses
  %1656 = alloca %"struct.v8::internal::TorqueStructReference_intptr_0", align 16 ; 4 uses
  %1657 = alloca %"class.v8::internal::TNode.25", align 8 ; 2 uses
  %1658 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1659 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1660 = alloca %"class.v8::internal::TNode.20", align 8 ; 2 uses
  %1661 = alloca %"struct.v8::internal::TorqueStructReference_intptr_0", align 16 ; 4 uses
  %1662 = alloca %"class.v8::internal::TNode.25", align 8 ; 2 uses
  %1663 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1664 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1665 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1666 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1667 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1668 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1669 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1670 = alloca %"class.v8::internal::TNode.20", align 8 ; 2 uses
  %1671 = alloca %"struct.v8::internal::TorqueStructReference_int64_0", align 8 ; 5 uses
  %1672 = alloca %"struct.v8::internal::TorqueStructReference_intptr_0", align 16 ; 2 uses
  %1673 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 7 uses
  %1674 = alloca %"class.v8::internal::TNode", align 8 ; 2 uses
  %1675 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1676 = alloca %"class.v8::internal::TNode.185", align 8 ; 2 uses
  %1677 = alloca %"struct.v8::internal::TorqueStructReference_int32_0", align 8 ; 5 uses
  %1678 = alloca %"struct.v8::internal::TorqueStructReference_intptr_0", align 16 ; 2 uses
  %1679 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 7 uses
  %1680 = alloca %"class.v8::internal::TNode.15", align 8 ; 6 uses
  %1681 = alloca %"class.v8::internal::TNode.15", align 8 ; 6 uses
  %1682 = alloca %"class.v8::internal::TNode.15", align 8 ; 6 uses
  %1683 = alloca %"class.v8::internal::TNode.15", align 8 ; 6 uses
  %1684 = alloca %"class.v8::internal::TNode.15", align 8 ; 6 uses
  %1685 = alloca %"class.v8::internal::TNode.20", align 8 ; 6 uses
  %1686 = alloca %"class.v8::internal::TNode.15", align 8 ; 7 uses
  %1687 = alloca %"class.v8::internal::TNode.25", align 8 ; 6 uses
  %1688 = alloca %"class.v8::internal::TNode.15", align 8 ; 6 uses
  %1689 = alloca %"class.v8::internal::TNode", align 8 ; 5 uses
  %1690 = alloca %"struct.v8::internal::TorqueStructSlice_Object_MutableReference_Object_0", align 8 ; 6 uses
  %1691 = alloca %"class.v8::internal::TNode.158", align 8 ; 2 uses
  %1692 = alloca %"class.v8::internal::TNode.23", align 8 ; 2 uses
  %1693 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1694 = alloca %"class.v8::internal::TNode.23", align 8 ; 2 uses
  %1695 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1696 = alloca %"class.v8::internal::TNode.20", align 8 ; 2 uses
  %1697 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1698 = alloca %"class.v8::internal::TNode.22", align 8 ; 2 uses
  %1699 = alloca %"class.v8::internal::TNode.22", align 8 ; 2 uses
  %1700 = alloca %"class.v8::internal::TNode.20", align 8 ; 2 uses
  %1701 = alloca %"class.std::vector.0", align 8  ; 5 uses
  %1702 = alloca %"class.std::vector.0", align 8  ; 5 uses
  %1703 = alloca %"class.v8::internal::TNode.15", align 8 ; 5 uses
  %1704 = alloca %"class.v8::internal::TNode.15", align 8 ; 5 uses
  %1705 = alloca %"class.v8::internal::TNode.15", align 8 ; 5 uses
  %1706 = alloca %"class.v8::internal::TNode.15", align 8 ; 5 uses
  %1707 = alloca %"class.v8::internal::TNode.15", align 8 ; 5 uses
  %1708 = alloca %"class.v8::internal::TNode.20", align 8 ; 5 uses
  %1709 = alloca %"class.v8::internal::TNode.15", align 8 ; 5 uses
  %1710 = alloca %"class.v8::internal::TNode.25", align 8 ; 4 uses
  %1711 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %1712 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %1713 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %1714 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %1715 = alloca %"class.v8::internal::TNode.15", align 8 ; 5 uses
  %1716 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1717 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1718 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1719 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1720 = alloca %"struct.v8::internal::TorqueStructReference_Object_0", align 16 ; 4 uses
  %1721 = alloca %"class.v8::internal::TNode.25", align 8 ; 2 uses
  %1722 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1723 = alloca %"class.v8::internal::TNode.186", align 8 ; 2 uses
  %1724 = alloca %"class.v8::internal::TNode", align 8 ; 2 uses
  %1725 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1726 = alloca %"struct.v8::internal::CodeStubAssembler::Reference", align 16 ; 2 uses
  %1727 = alloca %"class.v8::internal::TNode.21", align 8 ; 2 uses
  %1728 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %1729 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %1730 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %1731 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %1732 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %1733 = alloca %"class.v8::internal::TNode.20", align 8 ; 4 uses
  %1734 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %1735 = alloca %"class.v8::internal::TNode.25", align 8 ; 4 uses
  %1736 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %1737 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %1738 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %1739 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %1740 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %1741 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1742 = alloca %"class.v8::internal::TNode.13", align 8 ; 2 uses
  %1743 = alloca %"class.v8::internal::TNode.20", align 8 ; 2 uses
  %1744 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1745 = alloca %"class.v8::internal::TNode.24", align 8 ; 2 uses
  %1746 = alloca %"class.v8::internal::TNode.24", align 8 ; 2 uses
  %1747 = alloca %"class.v8::internal::TNode.20", align 8 ; 2 uses
  %1748 = alloca %"class.std::vector.0", align 8  ; 5 uses
  %1749 = alloca %"class.std::vector.0", align 8  ; 5 uses
  %1750 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1751 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1752 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1753 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1754 = alloca %"class.v8::internal::TNode.20", align 8 ; 2 uses
  %1755 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1756 = alloca %"class.v8::internal::TNode.22", align 8 ; 2 uses
  %1757 = alloca %"class.v8::internal::TNode.22", align 8 ; 2 uses
  %1758 = alloca %"class.v8::internal::TNode.20", align 8 ; 2 uses
  %1759 = alloca %"class.std::vector.0", align 8  ; 5 uses
  %1760 = alloca %"class.std::vector.0", align 8  ; 5 uses
  %1761 = alloca %"struct.v8::internal::TorqueStructReference_intptr_0", align 16 ; 4 uses
  %1762 = alloca %"class.v8::internal::TNode.25", align 8 ; 2 uses
  %1763 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1764 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1765 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1766 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1767 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1768 = alloca %"struct.v8::internal::TorqueStructReference_intptr_0", align 16 ; 4 uses
  %1769 = alloca %"class.v8::internal::TNode.25", align 8 ; 2 uses
  %1770 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1771 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1772 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1773 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1774 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1775 = alloca %"class.v8::internal::TNode.20", align 8 ; 2 uses
  %1776 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1777 = alloca %"class.v8::internal::TNode.22", align 8 ; 2 uses
  %1778 = alloca %"class.v8::internal::TNode.22", align 8 ; 2 uses
  %1779 = alloca %"class.v8::internal::TNode.20", align 8 ; 2 uses
  %1780 = alloca %"class.std::vector.0", align 8  ; 5 uses
  %1781 = alloca %"class.std::vector.0", align 8  ; 5 uses
  %1782 = alloca %"struct.v8::internal::TorqueStructReference_intptr_0", align 16 ; 4 uses
  %1783 = alloca %"class.v8::internal::TNode.25", align 8 ; 2 uses
  %1784 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1785 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1786 = alloca %"class.v8::internal::TNode.20", align 8 ; 2 uses
  %1787 = alloca %"struct.v8::internal::TorqueStructReference_intptr_0", align 16 ; 4 uses
  %1788 = alloca %"class.v8::internal::TNode.25", align 8 ; 2 uses
  %1789 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1790 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1791 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1792 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1793 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1794 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1795 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1796 = alloca %"class.v8::internal::TNode.20", align 8 ; 2 uses
  %1797 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1798 = alloca %"class.v8::internal::TNode.20", align 8 ; 2 uses
  %1799 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1800 = alloca %"class.v8::internal::TNode.22", align 8 ; 2 uses
  %1801 = alloca %"class.v8::internal::TNode.22", align 8 ; 2 uses
  %1802 = alloca %"class.v8::internal::TNode.20", align 8 ; 2 uses
  %1803 = alloca %"class.std::vector.0", align 8  ; 5 uses
  %1804 = alloca %"class.std::vector.0", align 8  ; 5 uses
  %1805 = alloca %"struct.v8::internal::TorqueStructReference_float64_0", align 8 ; 5 uses
  %1806 = alloca %"struct.v8::internal::TorqueStructReference_intptr_0", align 16 ; 2 uses
  %1807 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 7 uses
  %1808 = alloca %"class.v8::internal::TNode.14", align 8 ; 2 uses
  %1809 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1810 = alloca %"class.v8::internal::TNode.38", align 8 ; 2 uses
  %1811 = alloca %"struct.v8::internal::TorqueStructReference_float32_0", align 8 ; 5 uses
  %1812 = alloca %"struct.v8::internal::TorqueStructReference_intptr_0", align 16 ; 2 uses
  %1813 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 7 uses
  %1814 = alloca %"class.v8::internal::TNode.15", align 8 ; 5 uses
  %1815 = alloca %"class.v8::internal::TNode.15", align 8 ; 5 uses
  %1816 = alloca %"class.v8::internal::TNode.15", align 8 ; 5 uses
  %1817 = alloca %"class.v8::internal::TNode.15", align 8 ; 5 uses
  %1818 = alloca %"class.v8::internal::TNode.15", align 8 ; 5 uses
  %1819 = alloca %"class.v8::internal::TNode.20", align 8 ; 5 uses
  %1820 = alloca %"class.v8::internal::TNode.15", align 8 ; 5 uses
  %1821 = alloca %"class.v8::internal::TNode.25", align 8 ; 5 uses
  %1822 = alloca %"class.v8::internal::TNode.15", align 8 ; 5 uses
  %1823 = alloca %"class.v8::internal::TNode.14", align 8 ; 5 uses
  %1824 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1825 = alloca %"class.v8::internal::TNode.20", align 8 ; 2 uses
  %1826 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1827 = alloca %"class.v8::internal::TNode.22", align 8 ; 2 uses
  %1828 = alloca %"class.v8::internal::TNode.22", align 8 ; 2 uses
  %1829 = alloca %"class.v8::internal::TNode.20", align 8 ; 2 uses
  %1830 = alloca %"class.std::vector.0", align 8  ; 5 uses
  %1831 = alloca %"class.std::vector.0", align 8  ; 5 uses
  %1832 = alloca %"struct.v8::internal::TorqueStructReference_int64_0", align 8 ; 5 uses
  %1833 = alloca %"struct.v8::internal::TorqueStructReference_intptr_0", align 16 ; 2 uses
  %1834 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 7 uses
  %1835 = alloca %"class.v8::internal::TNode.185", align 8 ; 2 uses
  %1836 = alloca %"class.v8::internal::TNode.185", align 8 ; 2 uses
  %1837 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1838 = alloca %"class.v8::internal::TNode", align 8 ; 2 uses
  %1839 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1840 = alloca %"class.v8::internal::TNode.185", align 8 ; 2 uses
  %1841 = alloca %"class.v8::internal::TNode.14", align 8 ; 2 uses
  %1842 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1843 = alloca %"class.v8::internal::TNode.24", align 8 ; 2 uses
  %1844 = alloca %"struct.v8::internal::TorqueStructReference_float32_0", align 8 ; 5 uses
  %1845 = alloca %"struct.v8::internal::TorqueStructReference_intptr_0", align 16 ; 2 uses
  %1846 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 7 uses
  %1847 = alloca %"class.v8::internal::TNode.15", align 8 ; 5 uses
  %1848 = alloca %"class.v8::internal::TNode.15", align 8 ; 5 uses
  %1849 = alloca %"class.v8::internal::TNode.15", align 8 ; 5 uses
  %1850 = alloca %"class.v8::internal::TNode.15", align 8 ; 5 uses
  %1851 = alloca %"class.v8::internal::TNode.15", align 8 ; 5 uses
  %1852 = alloca %"class.v8::internal::TNode.20", align 8 ; 5 uses
  %1853 = alloca %"class.v8::internal::TNode.15", align 8 ; 5 uses
  %1854 = alloca %"class.v8::internal::TNode.25", align 8 ; 5 uses
  %1855 = alloca %"class.v8::internal::TNode.15", align 8 ; 5 uses
  %1856 = alloca %"class.v8::internal::TNode.14", align 8 ; 5 uses
  %1857 = alloca %"struct.v8::internal::TorqueStructReference_float32_0", align 8 ; 5 uses
  %1858 = alloca %"struct.v8::internal::TorqueStructReference_intptr_0", align 16 ; 2 uses
  %1859 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 7 uses
  %1860 = alloca %"class.v8::internal::TNode.15", align 8 ; 5 uses
  %1861 = alloca %"class.v8::internal::TNode.15", align 8 ; 5 uses
  %1862 = alloca %"class.v8::internal::TNode.15", align 8 ; 5 uses
  %1863 = alloca %"class.v8::internal::TNode.15", align 8 ; 5 uses
  %1864 = alloca %"class.v8::internal::TNode.15", align 8 ; 5 uses
  %1865 = alloca %"class.v8::internal::TNode.20", align 8 ; 5 uses
  %1866 = alloca %"class.v8::internal::TNode.15", align 8 ; 5 uses
  %1867 = alloca %"class.v8::internal::TNode.25", align 8 ; 5 uses
  %1868 = alloca %"class.v8::internal::TNode.15", align 8 ; 5 uses
  %1869 = alloca %"class.v8::internal::TNode.14", align 8 ; 5 uses
  %1870 = alloca %"class.v8::internal::TNode.15", align 8 ; 6 uses
  %1871 = alloca %"class.v8::internal::TNode.15", align 8 ; 6 uses
  %1872 = alloca %"class.v8::internal::TNode.15", align 8 ; 6 uses
  %1873 = alloca %"class.v8::internal::TNode.15", align 8 ; 6 uses
  %1874 = alloca %"class.v8::internal::TNode.15", align 8 ; 6 uses
  %1875 = alloca %"class.v8::internal::TNode.20", align 8 ; 6 uses
  %1876 = alloca %"class.v8::internal::TNode.15", align 8 ; 7 uses
  %1877 = alloca %"class.v8::internal::TNode.25", align 8 ; 6 uses
  %1878 = alloca %"class.v8::internal::TNode.15", align 8 ; 6 uses
  %1879 = alloca %"class.v8::internal::TNode.14", align 8 ; 5 uses
  %1880 = alloca %"struct.v8::internal::TorqueStructSlice_Object_MutableReference_Object_0", align 8 ; 6 uses
  %1881 = alloca %"class.v8::internal::TNode.158", align 8 ; 2 uses
  %1882 = alloca %"class.v8::internal::TNode.23", align 8 ; 2 uses
  %1883 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1884 = alloca %"class.v8::internal::TNode.23", align 8 ; 2 uses
  %1885 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1886 = alloca %"class.v8::internal::TNode.20", align 8 ; 2 uses
  %1887 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1888 = alloca %"class.v8::internal::TNode.22", align 8 ; 2 uses
  %1889 = alloca %"class.v8::internal::TNode.22", align 8 ; 2 uses
  %1890 = alloca %"class.v8::internal::TNode.20", align 8 ; 2 uses
  %1891 = alloca %"class.std::vector.0", align 8  ; 5 uses
  %1892 = alloca %"class.std::vector.0", align 8  ; 5 uses
  %1893 = alloca %"class.v8::internal::TNode.15", align 8 ; 5 uses
  %1894 = alloca %"class.v8::internal::TNode.15", align 8 ; 5 uses
  %1895 = alloca %"class.v8::internal::TNode.15", align 8 ; 5 uses
  %1896 = alloca %"class.v8::internal::TNode.15", align 8 ; 5 uses
  %1897 = alloca %"class.v8::internal::TNode.15", align 8 ; 5 uses
  %1898 = alloca %"class.v8::internal::TNode.20", align 8 ; 5 uses
  %1899 = alloca %"class.v8::internal::TNode.15", align 8 ; 5 uses
  %1900 = alloca %"class.v8::internal::TNode.25", align 8 ; 4 uses
  %1901 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %1902 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %1903 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %1904 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %1905 = alloca %"class.v8::internal::TNode.15", align 8 ; 5 uses
  %1906 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1907 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1908 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1909 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1910 = alloca %"struct.v8::internal::TorqueStructReference_Object_0", align 16 ; 4 uses
  %1911 = alloca %"class.v8::internal::TNode.25", align 8 ; 2 uses
  %1912 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1913 = alloca %"class.v8::internal::TNode.186", align 8 ; 2 uses
  %1914 = alloca %"class.v8::internal::TNode.14", align 8 ; 2 uses
  %1915 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1916 = alloca %"struct.v8::internal::CodeStubAssembler::Reference", align 16 ; 2 uses
  %1917 = alloca %"class.v8::internal::TNode.21", align 8 ; 2 uses
  %1918 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %1919 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %1920 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %1921 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %1922 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %1923 = alloca %"class.v8::internal::TNode.20", align 8 ; 4 uses
  %1924 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %1925 = alloca %"class.v8::internal::TNode.25", align 8 ; 4 uses
  %1926 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %1927 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %1928 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %1929 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %1930 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %1931 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1932 = alloca %"class.v8::internal::TNode.13", align 8 ; 2 uses
  %1933 = alloca %"class.v8::internal::TNode.20", align 8 ; 2 uses
  %1934 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1935 = alloca %"class.v8::internal::TNode.24", align 8 ; 2 uses
  %1936 = alloca %"class.v8::internal::TNode.24", align 8 ; 2 uses
  %1937 = alloca %"class.v8::internal::TNode.20", align 8 ; 2 uses
  %1938 = alloca %"class.std::vector.0", align 8  ; 5 uses
  %1939 = alloca %"class.std::vector.0", align 8  ; 5 uses
  %1940 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1941 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1942 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1943 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1944 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1945 = alloca %"class.v8::internal::TNode.20", align 8 ; 2 uses
  %1946 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1947 = alloca %"class.v8::internal::TNode.22", align 8 ; 2 uses
  %1948 = alloca %"class.v8::internal::TNode.22", align 8 ; 2 uses
  %1949 = alloca %"class.v8::internal::TNode.20", align 8 ; 2 uses
  %1950 = alloca %"class.std::vector.0", align 8  ; 5 uses
  %1951 = alloca %"class.std::vector.0", align 8  ; 5 uses
  %1952 = alloca %"struct.v8::internal::TorqueStructReference_intptr_0", align 8 ; 5 uses
  %1953 = alloca %"class.v8::internal::TNode.25", align 8 ; 2 uses
  %1954 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1955 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1956 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1957 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1958 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1959 = alloca %"struct.v8::internal::TorqueStructReference_intptr_0", align 16 ; 4 uses
  %1960 = alloca %"class.v8::internal::TNode.25", align 8 ; 2 uses
  %1961 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1962 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1963 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1964 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1965 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1966 = alloca %"class.v8::internal::TNode.20", align 8 ; 2 uses
  %1967 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1968 = alloca %"class.v8::internal::TNode.22", align 8 ; 2 uses
  %1969 = alloca %"class.v8::internal::TNode.22", align 8 ; 2 uses
  %1970 = alloca %"class.v8::internal::TNode.20", align 8 ; 2 uses
  %1971 = alloca %"class.std::vector.0", align 8  ; 5 uses
  %1972 = alloca %"class.std::vector.0", align 8  ; 5 uses
  %1973 = alloca %"struct.v8::internal::TorqueStructReference_intptr_0", align 16 ; 4 uses
  %1974 = alloca %"class.v8::internal::TNode.25", align 8 ; 2 uses
  %1975 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1976 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1977 = alloca %"class.v8::internal::TNode.20", align 8 ; 2 uses
  %1978 = alloca %"struct.v8::internal::TorqueStructReference_intptr_0", align 16 ; 4 uses
  %1979 = alloca %"class.v8::internal::TNode.25", align 8 ; 2 uses
  %1980 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1981 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1982 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1983 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1984 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1985 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1986 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1987 = alloca %"class.v8::internal::TNode.20", align 8 ; 2 uses
  %1988 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 7 uses
  %1989 = alloca %"struct.v8::internal::TorqueStructSlice_Object_MutableReference_Object_0", align 8 ; 6 uses
  %1990 = alloca %"class.v8::internal::TNode.158", align 8 ; 2 uses
  %1991 = alloca %"class.v8::internal::TNode.23", align 8 ; 2 uses
  %1992 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1993 = alloca %"class.v8::internal::TNode.23", align 8 ; 2 uses
  %1994 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %1995 = alloca %"class.v8::internal::TNode.20", align 8 ; 2 uses
  %1996 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %1997 = alloca %"class.v8::internal::TNode.22", align 8 ; 2 uses
  %1998 = alloca %"class.v8::internal::TNode.22", align 8 ; 2 uses
  %1999 = alloca %"class.v8::internal::TNode.20", align 8 ; 2 uses
  %2000 = alloca %"class.std::vector.0", align 8  ; 5 uses
  %2001 = alloca %"class.std::vector.0", align 8  ; 5 uses
  %2002 = alloca %"class.v8::internal::TNode.15", align 8 ; 5 uses
  %2003 = alloca %"class.v8::internal::TNode.15", align 8 ; 5 uses
  %2004 = alloca %"class.v8::internal::TNode.15", align 8 ; 5 uses
  %2005 = alloca %"class.v8::internal::TNode.15", align 8 ; 5 uses
  %2006 = alloca %"class.v8::internal::TNode.15", align 8 ; 5 uses
  %2007 = alloca %"class.v8::internal::TNode.20", align 8 ; 5 uses
  %2008 = alloca %"class.v8::internal::TNode.15", align 8 ; 5 uses
  %2009 = alloca %"class.v8::internal::TNode.25", align 8 ; 4 uses
  %2010 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %2011 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %2012 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %2013 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %2014 = alloca %"class.v8::internal::TNode.15", align 8 ; 5 uses
  %2015 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %2016 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %2017 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %2018 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %2019 = alloca %"struct.v8::internal::TorqueStructReference_Object_0", align 16 ; 4 uses
  %2020 = alloca %"class.v8::internal::TNode.25", align 8 ; 2 uses
  %2021 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %2022 = alloca %"class.v8::internal::TNode.19", align 8 ; 2 uses
  %2023 = alloca %"class.v8::internal::TNode.21", align 8 ; 2 uses
  %2024 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %2025 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %2026 = alloca %"struct.v8::internal::CodeStubAssembler::Reference", align 16 ; 2 uses
  %2027 = alloca %"class.v8::internal::TNode.21", align 8 ; 2 uses
  %2028 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %2029 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %2030 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %2031 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %2032 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %2033 = alloca %"class.v8::internal::TNode.20", align 8 ; 4 uses
  %2034 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %2035 = alloca %"class.v8::internal::TNode.25", align 8 ; 4 uses
  %2036 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %2037 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %2038 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %2039 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %2040 = alloca %"class.v8::internal::TNode.15", align 8 ; 4 uses
  %2041 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %2042 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %2043 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %2044 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %2045 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %2046 = alloca %"class.v8::internal::TNode.20", align 8 ; 2 uses
  %2047 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
  %2048 = alloca %"class.v8::internal::TNode.22", align 8 ; 2 uses
  %2049 = alloca %"class.v8::internal::TNode.22", align 8 ; 2 uses
  %2050 = alloca %"class.v8::internal::TNode.20", align 8 ; 2 uses
  %2051 = alloca %"class.std::vector.0", align 8  ; 5 uses
  %2052 = alloca %"class.std::vector.0", align 8  ; 5 uses
  %2053 = alloca %"struct.v8::internal::TorqueStructReference_intptr_0", align 8 ; 5 uses
  %2054 = alloca %"class.v8::internal::TNode.25", align 8 ; 2 uses
  %2055 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %2056 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %2057 = alloca %"class.v8::internal::TNode.15", align 8 ; 2 uses
  %2058 = alloca %"class.v8::internal::CodeStubAssembler", align 8 ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal30JSToWasmHandleReturnsAssembler33GenerateJSToWasmHandleReturnsImplEv:bb.a
  call void @_ZdlPvm(ptr noundef nonnull %i.hnm, i64 noundef %i.hnq) #11
  br label %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_EJNS0_5TNodeIS4_EESB_SB_SB_SB_NSA_IS5_EESB_NSA_IS9_EESB_EEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit1852

_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_EJNS0_5TNodeIS4_EESB_SB_SB_SB_NSA_IS5_EESB_NSA_IS9_EESB_EEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit1852: ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i6980, %bb.sb
  call void @llvm.lifetime.end.p0(ptr nonnull %362)
  call void @_ZN2v88internal8compiler13CodeAssembler4GotoEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %694, ptr noundef nonnull %i.aem) #10
  br label %bb.sc

bb.sc:                                            ; preds = %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_EJNS0_5TNodeIS4_EESB_SB_SB_SB_NSA_IS5_EESB_NSA_IS9_EESB_EEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit1852, %bb.ry
  %i.hnr = getelementptr inbounds nuw i8, ptr %811, i64 64
  %i.hns = load i64, ptr %i.hnr, align 8
  %.not14742 = icmp eq i64 %i.hns, 0
  br i1 %.not14742, label %bb.sg, label %bb.sd

bb.sd:                                            ; preds = %bb.sc
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %694, ptr noundef nonnull %i.aem) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %70)
  %i.hnt = call noalias noundef nonnull dereferenceable(9) ptr @_Znwm(i64 noundef 9) #12 ; 4 uses
  store ptr %i.hnt, ptr %70, align 8
  %i.hnu = getelementptr inbounds nuw i8, ptr %i.hnt, i64 9 ; 2 uses
  %i.hnv = getelementptr inbounds nuw i8, ptr %70, i64 16 ; 2 uses
  store ptr %i.hnu, ptr %i.hnv, align 8
  %.sroa.8.0..sroa_idx.i6995 = getelementptr inbounds nuw i8, ptr %i.hnt, i64 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.hnt, i8 5, i64 5, i1 false)
  store <4 x i8> <i8 4, i8 5, i8 9, i8 5>, ptr %.sroa.8.0..sroa_idx.i6995, align 1
  %i.hnw = getelementptr inbounds nuw i8, ptr %70, i64 8
  store ptr %i.hnu, ptr %i.hnw, align 8
  %i.hnx = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %811, ptr noundef nonnull %70) #10
  %i.hny = load ptr, ptr %70, align 8             ; 3 uses
  %.not.i.i.i.i6999 = icmp eq ptr %i.hny, null
  br i1 %.not.i.i.i.i6999, label %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7000, label %bb.se

bb.se:                                            ; preds = %bb.sd
  %i.hnz = load ptr, ptr %i.hnv, align 8
  %i.hoa = ptrtoint ptr %i.hnz to i64
  %i.hob = ptrtoint ptr %i.hny to i64
  %i.hoc = sub i64 %i.hoa, %i.hob
  call void @_ZdlPvm(ptr noundef nonnull %i.hny, i64 noundef %i.hoc) #11
  br label %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7000

_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7000: ; preds = %bb.se, %bb.sd
  %i.hod = load ptr, ptr %i.hnx, align 8          ; 5 uses
  %i.hoe = getelementptr inbounds nuw i8, ptr %i.hod, i64 16
  %i.hof = getelementptr inbounds nuw i8, ptr %i.hod, i64 32
  %i.hog = getelementptr inbounds nuw i8, ptr %i.hod, i64 48
  %i.hoh = getelementptr inbounds nuw i8, ptr %i.hod, i64 64
  %i.hoi = load ptr, ptr %i.hoh, align 8
  %i.hoj = getelementptr inbounds nuw i8, ptr %361, i64 16 ; 2 uses
  %i.hok = load <2 x ptr>, ptr %i.hod, align 8
  %i.hol = load <2 x ptr>, ptr %i.hoe, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %70)
  call void @llvm.lifetime.start.p0(ptr nonnull %361)
  %i.hom = load <2 x ptr>, ptr %i.hof, align 8
  %i.hon = load <2 x ptr>, ptr %i.hog, align 8
  %i.hoo = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #12 ; 7 uses
  store ptr %i.hoo, ptr %361, align 8
  %i.hop = getelementptr inbounds nuw i8, ptr %i.hoo, i64 72 ; 2 uses
  store ptr %i.hop, ptr %i.hoj, align 8
  store <2 x ptr> %i.hok, ptr %i.hoo, align 8
  %.sroa.5.0..sroa_idx.i.i1854 = getelementptr inbounds nuw i8, ptr %i.hoo, i64 16
  store <2 x ptr> %i.hol, ptr %.sroa.5.0..sroa_idx.i.i1854, align 8
  %.sroa.7.0..sroa_idx.i.i1856 = getelementptr inbounds nuw i8, ptr %i.hoo, i64 32
  store <2 x ptr> %i.hom, ptr %.sroa.7.0..sroa_idx.i.i1856, align 8
  %.sroa.9.0..sroa_idx.i.i1858 = getelementptr inbounds nuw i8, ptr %i.hoo, i64 48
  store <2 x ptr> %i.hon, ptr %.sroa.9.0..sroa_idx.i.i1858, align 8
  %.sroa.11.0..sroa_idx.i.i1860 = getelementptr inbounds nuw i8, ptr %i.hoo, i64 64
  store ptr %i.hoi, ptr %.sroa.11.0..sroa_idx.i.i1860, align 8
  %i.hoq = getelementptr inbounds nuw i8, ptr %361, i64 8
  store ptr %i.hop, ptr %i.hoq, align 8
  call void @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase9AddInputsESt6vectorIPNS1_4NodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(184) %812, ptr noundef nonnull %361) #10
  %i.hor = load ptr, ptr %361, align 8            ; 3 uses
  %.not.i.i.i.i.i1861 = icmp eq ptr %i.hor, null
  br i1 %.not.i.i.i.i.i1861, label %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_EJNS0_5TNodeIS4_EESB_SB_SB_SB_NSA_IS5_EESB_NSA_IS9_EESB_EEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit1862, label %bb.sf

bb.sf:                                            ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7000
  %i.hos = load ptr, ptr %i.hoj, align 8
  %i.hot = ptrtoint ptr %i.hos to i64
  %i.hou = ptrtoint ptr %i.hor to i64
  %i.hov = sub i64 %i.hot, %i.hou
  call void @_ZdlPvm(ptr noundef nonnull %i.hor, i64 noundef %i.hov) #11
  br label %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_EJNS0_5TNodeIS4_EESB_SB_SB_SB_NSA_IS5_EESB_NSA_IS9_EESB_EEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit1862

_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_EJNS0_5TNodeIS4_EESB_SB_SB_SB_NSA_IS5_EESB_NSA_IS9_EESB_EEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit1862: ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7000, %bb.sf
  call void @llvm.lifetime.end.p0(ptr nonnull %361)
  call void @_ZN2v88internal8compiler13CodeAssembler4GotoEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %694, ptr noundef nonnull %i.aeu) #10
  br label %bb.sg

bb.sg:                                            ; preds = %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_EJNS0_5TNodeIS4_EESB_SB_SB_SB_NSA_IS5_EESB_NSA_IS9_EESB_EEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit1862, %bb.sc
  %i.how = getelementptr inbounds nuw i8, ptr %812, i64 64
  %i.hox = load i64, ptr %i.how, align 8
  %.not14743 = icmp eq i64 %i.hox, 0
  br i1 %.not14743, label %bb.sk, label %bb.sh

bb.sh:                                            ; preds = %bb.sg
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %694, ptr noundef nonnull %i.aeu) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %69)
  %i.hoy = call noalias noundef nonnull dereferenceable(9) ptr @_Znwm(i64 noundef 9) #12 ; 4 uses
  store ptr %i.hoy, ptr %69, align 8
  %i.hoz = getelementptr inbounds nuw i8, ptr %i.hoy, i64 9 ; 2 uses
  %i.hpa = getelementptr inbounds nuw i8, ptr %69, i64 16 ; 2 uses
  store ptr %i.hoz, ptr %i.hpa, align 8
  %.sroa.8.0..sroa_idx.i7019 = getelementptr inbounds nuw i8, ptr %i.hoy, i64 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.hoy, i8 5, i64 5, i1 false)
  store <4 x i8> <i8 4, i8 5, i8 9, i8 5>, ptr %.sroa.8.0..sroa_idx.i7019, align 1
  %i.hpb = getelementptr inbounds nuw i8, ptr %69, i64 8
  store ptr %i.hoz, ptr %i.hpb, align 8
  %i.hpc = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %812, ptr noundef nonnull %69) #10
  %i.hpd = load ptr, ptr %69, align 8             ; 3 uses
  %.not.i.i.i.i7023 = icmp eq ptr %i.hpd, null
  br i1 %.not.i.i.i.i7023, label %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7024, label %bb.si

bb.si:                                            ; preds = %bb.sh
  %i.hpe = load ptr, ptr %i.hpa, align 8
  %i.hpf = ptrtoint ptr %i.hpe to i64
  %i.hpg = ptrtoint ptr %i.hpd to i64
  %i.hph = sub i64 %i.hpf, %i.hpg
  call void @_ZdlPvm(ptr noundef nonnull %i.hpd, i64 noundef %i.hph) #11
  br label %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7024

_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7024: ; preds = %bb.si, %bb.sh
  %i.hpi = load ptr, ptr %i.hpc, align 8          ; 5 uses
  %i.hpj = getelementptr inbounds nuw i8, ptr %i.hpi, i64 16
  %i.hpk = getelementptr inbounds nuw i8, ptr %i.hpi, i64 32
  %i.hpl = getelementptr inbounds nuw i8, ptr %i.hpi, i64 48
  %i.hpm = getelementptr inbounds nuw i8, ptr %i.hpi, i64 64
  %i.hpn = load ptr, ptr %i.hpm, align 8
  %i.hpo = getelementptr inbounds nuw i8, ptr %360, i64 16 ; 2 uses
  %i.hpp = load <2 x ptr>, ptr %i.hpi, align 8
  %i.hpq = load <2 x ptr>, ptr %i.hpj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %69)
  call void @llvm.lifetime.start.p0(ptr nonnull %360)
  %i.hpr = load <2 x ptr>, ptr %i.hpk, align 8
  %i.hps = load <2 x ptr>, ptr %i.hpl, align 8
  %i.hpt = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #12 ; 7 uses
  store ptr %i.hpt, ptr %360, align 8
  %i.hpu = getelementptr inbounds nuw i8, ptr %i.hpt, i64 72 ; 2 uses
  store ptr %i.hpu, ptr %i.hpo, align 8
  store <2 x ptr> %i.hpp, ptr %i.hpt, align 8
  %.sroa.5.0..sroa_idx.i.i1864 = getelementptr inbounds nuw i8, ptr %i.hpt, i64 16
  store <2 x ptr> %i.hpq, ptr %.sroa.5.0..sroa_idx.i.i1864, align 8
  %.sroa.7.0..sroa_idx.i.i1866 = getelementptr inbounds nuw i8, ptr %i.hpt, i64 32
  store <2 x ptr> %i.hpr, ptr %.sroa.7.0..sroa_idx.i.i1866, align 8
  %.sroa.9.0..sroa_idx.i.i1868 = getelementptr inbounds nuw i8, ptr %i.hpt, i64 48
  store <2 x ptr> %i.hps, ptr %.sroa.9.0..sroa_idx.i.i1868, align 8
  %.sroa.11.0..sroa_idx.i.i1870 = getelementptr inbounds nuw i8, ptr %i.hpt, i64 64
  store ptr %i.hpn, ptr %.sroa.11.0..sroa_idx.i.i1870, align 8
  %i.hpv = getelementptr inbounds nuw i8, ptr %360, i64 8
  store ptr %i.hpu, ptr %i.hpv, align 8
  call void @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase9AddInputsESt6vectorIPNS1_4NodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(184) %814, ptr noundef nonnull %360) #10
  %i.hpw = load ptr, ptr %360, align 8            ; 3 uses
  %.not.i.i.i.i.i1871 = icmp eq ptr %i.hpw, null
  br i1 %.not.i.i.i.i.i1871, label %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_EJNS0_5TNodeIS4_EESB_SB_SB_SB_NSA_IS5_EESB_NSA_IS9_EESB_EEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit1872, label %bb.sj

bb.sj:                                            ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7024
  %i.hpx = load ptr, ptr %i.hpo, align 8
  %i.hpy = ptrtoint ptr %i.hpx to i64
  %i.hpz = ptrtoint ptr %i.hpw to i64
  %i.hqa = sub i64 %i.hpy, %i.hpz
  call void @_ZdlPvm(ptr noundef nonnull %i.hpw, i64 noundef %i.hqa) #11
  br label %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_EJNS0_5TNodeIS4_EESB_SB_SB_SB_NSA_IS5_EESB_NSA_IS9_EESB_EEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit1872

_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_EJNS0_5TNodeIS4_EESB_SB_SB_SB_NSA_IS5_EESB_NSA_IS9_EESB_EEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit1872: ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7024, %bb.sj
  call void @llvm.lifetime.end.p0(ptr nonnull %360)
  call void @_ZN2v88internal8compiler13CodeAssembler4GotoEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %694, ptr noundef nonnull %i.afk) #10
  br label %bb.sk

bb.sk:                                            ; preds = %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_EJNS0_5TNodeIS4_EESB_SB_SB_SB_NSA_IS5_EESB_NSA_IS9_EESB_EEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit1872, %bb.sg
  %i.hqb = getelementptr inbounds nuw i8, ptr %813, i64 64
  %i.hqc = load i64, ptr %i.hqb, align 8
  %.not14744 = icmp eq i64 %i.hqc, 0
  br i1 %.not14744, label %bb.so, label %bb.sl

bb.sl:                                            ; preds = %bb.sk
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %694, ptr noundef nonnull %i.afc) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %68)
  %i.hqd = call noalias noundef nonnull dereferenceable(9) ptr @_Znwm(i64 noundef 9) #12 ; 4 uses
  store ptr %i.hqd, ptr %68, align 8
  %i.hqe = getelementptr inbounds nuw i8, ptr %i.hqd, i64 9 ; 2 uses
  %i.hqf = getelementptr inbounds nuw i8, ptr %68, i64 16 ; 2 uses
  store ptr %i.hqe, ptr %i.hqf, align 8
  %.sroa.8.0..sroa_idx.i7043 = getelementptr inbounds nuw i8, ptr %i.hqd, i64 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.hqd, i8 5, i64 5, i1 false)
  store <4 x i8> <i8 4, i8 5, i8 9, i8 5>, ptr %.sroa.8.0..sroa_idx.i7043, align 1
  %i.hqg = getelementptr inbounds nuw i8, ptr %68, i64 8
  store ptr %i.hqe, ptr %i.hqg, align 8
  %i.hqh = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %813, ptr noundef nonnull %68) #10
  %i.hqi = load ptr, ptr %68, align 8             ; 3 uses
  %.not.i.i.i.i7047 = icmp eq ptr %i.hqi, null
  br i1 %.not.i.i.i.i7047, label %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7048, label %bb.sm

bb.sm:                                            ; preds = %bb.sl
  %i.hqj = load ptr, ptr %i.hqf, align 8
  %i.hqk = ptrtoint ptr %i.hqj to i64
  %i.hql = ptrtoint ptr %i.hqi to i64
  %i.hqm = sub i64 %i.hqk, %i.hql
  call void @_ZdlPvm(ptr noundef nonnull %i.hqi, i64 noundef %i.hqm) #11
  br label %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7048

_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7048: ; preds = %bb.sm, %bb.sl
  %i.hqn = load ptr, ptr %i.hqh, align 8          ; 6 uses
  %i.hqo = getelementptr inbounds nuw i8, ptr %i.hqn, i64 16
  %i.hqp = getelementptr inbounds nuw i8, ptr %i.hqn, i64 32
  %i.hqq = getelementptr inbounds nuw i8, ptr %i.hqn, i64 48
  %i.hqr = getelementptr inbounds nuw i8, ptr %i.hqn, i64 56
  %i.hqs = getelementptr inbounds nuw i8, ptr %i.hqn, i64 64
  %i.hqt = getelementptr inbounds nuw i8, ptr %1671, i64 8
  %i.hqu = getelementptr inbounds nuw i8, ptr %353, i64 16 ; 2 uses
  %i.hqv = load <2 x ptr>, ptr %i.hqn, align 8
  %i.hqw = load <2 x ptr>, ptr %i.hqo, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %68)
  call void @llvm.lifetime.start.p0(ptr nonnull %1671) #10
  %2473 = load <2 x ptr>, ptr %i.hqp, align 8
  %i.hqx = load <2 x ptr>, ptr %i.hqq, align 8
  %i.hqy = load ptr, ptr %i.hqs, align 8
  %i.hqz = load <2 x ptr>, ptr %i.hqr, align 8
  store <2 x ptr> %i.hqz, ptr %1672, align 16
  call void @_ZN2v88internal15RefCast_int64_0EPNS0_8compiler18CodeAssemblerStateENS0_30TorqueStructReference_intptr_0E(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::TorqueStructReference_int64_0") align 8 %1671, ptr noundef %i.a, ptr noundef nonnull dead_on_return %1672)
  %i.hra = load ptr, ptr %i.hqt, align 8, !noalias !4550
  %i.hrb = load ptr, ptr %1671, align 8, !noalias !4550
  call void @llvm.lifetime.end.p0(ptr nonnull %1671) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %1673) #10
  call void @_ZN2v88internal17CodeStubAssemblerC1EPNS0_8compiler18CodeAssemblerStateE(ptr noundef nonnull align 8 dereferenceable(16) %1673, ptr noundef %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %357)
  call void @llvm.lifetime.start.p0(ptr nonnull %358)
  call void @llvm.lifetime.start.p0(ptr nonnull %359)
  call void @llvm.lifetime.start.p0(ptr nonnull %356) #10, !noalias !4551
  call void @_ZN2v88internal8compiler13CodeAssembler14IntPtrConstantEl(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.15") align 8 %357, ptr noundef nonnull align 8 dereferenceable(16) %1673, i64 noundef 1) #10, !noalias !4551
  call void @llvm.lifetime.start.p0(ptr nonnull %354), !noalias !4551
  call void @llvm.lifetime.start.p0(ptr nonnull %355), !noalias !4551
  store ptr %i.hra, ptr %354, align 8, !noalias !4552
  %i.hrc = load ptr, ptr %357, align 8, !noalias !4552
  store ptr %i.hrc, ptr %355, align 8, !noalias !4552
  call void @_ZN2v88internal8compiler13CodeAssembler9IntPtrSubENS0_5TNodeINS0_5WordTEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.22") align 8 %356, ptr noundef nonnull align 8 dereferenceable(16) %1673, ptr noundef nonnull dead_on_return %354, ptr noundef nonnull dead_on_return %355) #10, !noalias !4551
  call void @llvm.lifetime.end.p0(ptr nonnull %354), !noalias !4551
  call void @llvm.lifetime.end.p0(ptr nonnull %355), !noalias !4551
  store ptr %i.hrb, ptr %358, align 8, !noalias !4551
  %i.hrd = load ptr, ptr %356, align 8, !noalias !4551
  store ptr %i.hrd, ptr %359, align 8, !noalias !4551
  %i.hre = call noundef ptr @_ZN2v88internal8compiler13CodeAssembler14LoadFromObjectENS0_11MachineTypeENS0_5TNodeINS0_6ObjectEEENS4_INS0_7IntPtrTEEE(ptr noundef nonnull align 8 dereferenceable(16) %1673, i16 1029, ptr noundef nonnull dead_on_return %358, ptr noundef nonnull dead_on_return %359) #10, !noalias !4551
  call void @llvm.lifetime.end.p0(ptr nonnull %356) #10, !noalias !4551
  call void @llvm.lifetime.end.p0(ptr nonnull %357)
  call void @llvm.lifetime.end.p0(ptr nonnull %358)
  call void @llvm.lifetime.end.p0(ptr nonnull %359)
  call void @_ZN2v88internal8compiler13CodeAssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %1673) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1673) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %1675) #10
  call void @_ZN2v88internal17CodeStubAssemblerC1EPNS0_8compiler18CodeAssemblerStateE(ptr noundef nonnull align 8 dereferenceable(16) %1675, ptr noundef %i.a) #10
  store ptr %i.hre, ptr %1676, align 8
  call void @_ZN2v88internal8compiler13CodeAssembler20TruncateInt64ToInt32ENS0_5TNodeINS0_6Int64TEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode") align 8 %1674, ptr noundef nonnull align 8 dereferenceable(8) %1675, ptr noundef nonnull dead_on_return %1676) #10
  %i.hrf = load ptr, ptr %1674, align 8, !noalias !4553
  call void @_ZN2v88internal8compiler13CodeAssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %1675) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1675) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %353)
  %i.hrg = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #12 ; 8 uses
  store ptr %i.hrg, ptr %353, align 8
  %i.hrh = getelementptr inbounds nuw i8, ptr %i.hrg, i64 80 ; 2 uses
  store ptr %i.hrh, ptr %i.hqu, align 8
  store <2 x ptr> %i.hqv, ptr %i.hrg, align 8
  %.sroa.5.0..sroa_idx.i.i1874 = getelementptr inbounds nuw i8, ptr %i.hrg, i64 16
  store <2 x ptr> %i.hqw, ptr %.sroa.5.0..sroa_idx.i.i1874, align 8
  %.sroa.7.0..sroa_idx.i.i1876 = getelementptr inbounds nuw i8, ptr %i.hrg, i64 32
  store <2 x ptr> %2473, ptr %.sroa.7.0..sroa_idx.i.i1876, align 8
  %.sroa.9.0..sroa_idx.i.i1878 = getelementptr inbounds nuw i8, ptr %i.hrg, i64 48
  store <2 x ptr> %i.hqx, ptr %.sroa.9.0..sroa_idx.i.i1878, align 8
  %.sroa.11.0..sroa_idx.i.i1880 = getelementptr inbounds nuw i8, ptr %i.hrg, i64 64
  store ptr %i.hqy, ptr %.sroa.11.0..sroa_idx.i.i1880, align 8
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.hrg, i64 72
  store ptr %i.hrf, ptr %.sroa.12.0..sroa_idx.i.i, align 8
  %i.hri = getelementptr inbounds nuw i8, ptr %353, i64 8
  store ptr %i.hrh, ptr %i.hri, align 8
  call void @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase9AddInputsESt6vectorIPNS1_4NodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(184) %815, ptr noundef nonnull %353) #10
  %i.hrj = load ptr, ptr %353, align 8            ; 3 uses
  %.not.i.i.i.i.i1881 = icmp eq ptr %i.hrj, null
  br i1 %.not.i.i.i.i.i1881, label %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_NS0_6Int32TEEJNS0_5TNodeIS4_EESC_SC_SC_SC_NSB_IS5_EESC_NSB_IS9_EESC_NSB_ISA_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit, label %bb.sn

bb.sn:                                            ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7048
  %i.hrk = load ptr, ptr %i.hqu, align 8
  %i.hrl = ptrtoint ptr %i.hrk to i64
  %i.hrm = ptrtoint ptr %i.hrj to i64
  %i.hrn = sub i64 %i.hrl, %i.hrm
  call void @_ZdlPvm(ptr noundef nonnull %i.hrj, i64 noundef %i.hrn) #11
  br label %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_NS0_6Int32TEEJNS0_5TNodeIS4_EESC_SC_SC_SC_NSB_IS5_EESC_NSB_IS9_EESC_NSB_ISA_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit

_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_NS0_6Int32TEEJNS0_5TNodeIS4_EESC_SC_SC_SC_NSB_IS5_EESC_NSB_IS9_EESC_NSB_ISA_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit: ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7048, %bb.sn
  call void @llvm.lifetime.end.p0(ptr nonnull %353)
  call void @_ZN2v88internal8compiler13CodeAssembler4GotoEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %694, ptr noundef nonnull %i.afs) #10
  br label %bb.so

bb.so:                                            ; preds = %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_NS0_6Int32TEEJNS0_5TNodeIS4_EESC_SC_SC_SC_NSB_IS5_EESC_NSB_IS9_EESC_NSB_ISA_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit, %bb.sk
  %i.hro = getelementptr inbounds nuw i8, ptr %814, i64 64
  %i.hrp = load i64, ptr %i.hro, align 8
  %.not14745 = icmp eq i64 %i.hrp, 0
  br i1 %.not14745, label %bb.ss, label %bb.sp

bb.sp:                                            ; preds = %bb.so
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %694, ptr noundef nonnull %i.afk) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %67)
  %i.hrq = call noalias noundef nonnull dereferenceable(9) ptr @_Znwm(i64 noundef 9) #12 ; 4 uses
  store ptr %i.hrq, ptr %67, align 8
  %i.hrr = getelementptr inbounds nuw i8, ptr %i.hrq, i64 9 ; 2 uses
  %i.hrs = getelementptr inbounds nuw i8, ptr %67, i64 16 ; 2 uses
  store ptr %i.hrr, ptr %i.hrs, align 8
  %.sroa.8.0..sroa_idx.i7067 = getelementptr inbounds nuw i8, ptr %i.hrq, i64 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.hrq, i8 5, i64 5, i1 false)
  store <4 x i8> <i8 4, i8 5, i8 9, i8 5>, ptr %.sroa.8.0..sroa_idx.i7067, align 1
  %i.hrt = getelementptr inbounds nuw i8, ptr %67, i64 8
  store ptr %i.hrr, ptr %i.hrt, align 8
  %i.hru = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %814, ptr noundef nonnull %67) #10
  %i.hrv = load ptr, ptr %67, align 8             ; 3 uses
  %.not.i.i.i.i7071 = icmp eq ptr %i.hrv, null
  br i1 %.not.i.i.i.i7071, label %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7072, label %bb.sq

bb.sq:                                            ; preds = %bb.sp
  %i.hrw = load ptr, ptr %i.hrs, align 8
  %i.hrx = ptrtoint ptr %i.hrw to i64
  %i.hry = ptrtoint ptr %i.hrv to i64
  %i.hrz = sub i64 %i.hrx, %i.hry
  call void @_ZdlPvm(ptr noundef nonnull %i.hrv, i64 noundef %i.hrz) #11
  br label %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7072

_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7072: ; preds = %bb.sq, %bb.sp
  %i.hsa = load ptr, ptr %i.hru, align 8          ; 6 uses
  %i.hsb = getelementptr inbounds nuw i8, ptr %i.hsa, i64 16
  %i.hsc = getelementptr inbounds nuw i8, ptr %i.hsa, i64 32
  %i.hsd = getelementptr inbounds nuw i8, ptr %i.hsa, i64 48
  %i.hse = getelementptr inbounds nuw i8, ptr %i.hsa, i64 56
  %i.hsf = getelementptr inbounds nuw i8, ptr %i.hsa, i64 64
  %i.hsg = getelementptr inbounds nuw i8, ptr %1677, i64 8
  %i.hsh = getelementptr inbounds nuw i8, ptr %346, i64 16 ; 2 uses
  %i.hsi = load <2 x ptr>, ptr %i.hsa, align 8
  %i.hsj = load <2 x ptr>, ptr %i.hsb, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %67)
  call void @llvm.lifetime.start.p0(ptr nonnull %1677) #10
  %2474 = load <2 x ptr>, ptr %i.hsc, align 8
  %i.hsk = load <2 x ptr>, ptr %i.hsd, align 8
  %i.hsl = load ptr, ptr %i.hsf, align 8
  %i.hsm = load <2 x ptr>, ptr %i.hse, align 8
  store <2 x ptr> %i.hsm, ptr %1678, align 16
  call void @_ZN2v88internal15RefCast_int32_0EPNS0_8compiler18CodeAssemblerStateENS0_30TorqueStructReference_intptr_0E(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::TorqueStructReference_int32_0") align 8 %1677, ptr noundef %i.a, ptr noundef nonnull dead_on_return %1678)
  %i.hsn = load ptr, ptr %i.hsg, align 8, !noalias !4554
  %i.hso = load ptr, ptr %1677, align 8, !noalias !4554
  call void @llvm.lifetime.end.p0(ptr nonnull %1677) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %1679) #10
  call void @_ZN2v88internal17CodeStubAssemblerC1EPNS0_8compiler18CodeAssemblerStateE(ptr noundef nonnull align 8 dereferenceable(16) %1679, ptr noundef %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %350)
  call void @llvm.lifetime.start.p0(ptr nonnull %351)
  call void @llvm.lifetime.start.p0(ptr nonnull %352)
  call void @llvm.lifetime.start.p0(ptr nonnull %349) #10, !noalias !4555
  call void @_ZN2v88internal8compiler13CodeAssembler14IntPtrConstantEl(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.15") align 8 %350, ptr noundef nonnull align 8 dereferenceable(16) %1679, i64 noundef 1) #10, !noalias !4555
  call void @llvm.lifetime.start.p0(ptr nonnull %347), !noalias !4555
  call void @llvm.lifetime.start.p0(ptr nonnull %348), !noalias !4555
  store ptr %i.hsn, ptr %347, align 8, !noalias !4556
  %i.hsp = load ptr, ptr %350, align 8, !noalias !4556
  store ptr %i.hsp, ptr %348, align 8, !noalias !4556
  call void @_ZN2v88internal8compiler13CodeAssembler9IntPtrSubENS0_5TNodeINS0_5WordTEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.22") align 8 %349, ptr noundef nonnull align 8 dereferenceable(16) %1679, ptr noundef nonnull dead_on_return %347, ptr noundef nonnull dead_on_return %348) #10, !noalias !4555
  call void @llvm.lifetime.end.p0(ptr nonnull %347), !noalias !4555
  call void @llvm.lifetime.end.p0(ptr nonnull %348), !noalias !4555
  store ptr %i.hso, ptr %351, align 8, !noalias !4555
  %i.hsq = load ptr, ptr %349, align 8, !noalias !4555
  store ptr %i.hsq, ptr %352, align 8, !noalias !4555
  %i.hsr = call noundef ptr @_ZN2v88internal8compiler13CodeAssembler14LoadFromObjectENS0_11MachineTypeENS0_5TNodeINS0_6ObjectEEENS4_INS0_7IntPtrTEEE(ptr noundef nonnull align 8 dereferenceable(16) %1679, i16 516, ptr noundef nonnull dead_on_return %351, ptr noundef nonnull dead_on_return %352) #10, !noalias !4555
  call void @llvm.lifetime.end.p0(ptr nonnull %349) #10, !noalias !4555
  call void @llvm.lifetime.end.p0(ptr nonnull %350)
  call void @llvm.lifetime.end.p0(ptr nonnull %351)
  call void @llvm.lifetime.end.p0(ptr nonnull %352)
  call void @_ZN2v88internal8compiler13CodeAssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %1679) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1679) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %346)
  %i.hss = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #12 ; 8 uses
  store ptr %i.hss, ptr %346, align 8
  %i.hst = getelementptr inbounds nuw i8, ptr %i.hss, i64 80 ; 2 uses
  store ptr %i.hst, ptr %i.hsh, align 8
  store <2 x ptr> %i.hsi, ptr %i.hss, align 8
  %.sroa.5.0..sroa_idx.i.i1883 = getelementptr inbounds nuw i8, ptr %i.hss, i64 16
  store <2 x ptr> %i.hsj, ptr %.sroa.5.0..sroa_idx.i.i1883, align 8
  %.sroa.7.0..sroa_idx.i.i1885 = getelementptr inbounds nuw i8, ptr %i.hss, i64 32
  store <2 x ptr> %2474, ptr %.sroa.7.0..sroa_idx.i.i1885, align 8
  %.sroa.9.0..sroa_idx.i.i1887 = getelementptr inbounds nuw i8, ptr %i.hss, i64 48
  store <2 x ptr> %i.hsk, ptr %.sroa.9.0..sroa_idx.i.i1887, align 8
  %.sroa.11.0..sroa_idx.i.i1889 = getelementptr inbounds nuw i8, ptr %i.hss, i64 64
  store ptr %i.hsl, ptr %.sroa.11.0..sroa_idx.i.i1889, align 8
  %.sroa.12.0..sroa_idx.i.i1890 = getelementptr inbounds nuw i8, ptr %i.hss, i64 72
  store ptr %i.hsr, ptr %.sroa.12.0..sroa_idx.i.i1890, align 8
  %i.hsu = getelementptr inbounds nuw i8, ptr %346, i64 8
  store ptr %i.hst, ptr %i.hsu, align 8
  call void @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase9AddInputsESt6vectorIPNS1_4NodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(184) %815, ptr noundef nonnull %346) #10
  %i.hsv = load ptr, ptr %346, align 8            ; 3 uses
  %.not.i.i.i.i.i1891 = icmp eq ptr %i.hsv, null
  br i1 %.not.i.i.i.i.i1891, label %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_NS0_6Int32TEEJNS0_5TNodeIS4_EESC_SC_SC_SC_NSB_IS5_EESC_NSB_IS9_EESC_NSB_ISA_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit1892, label %bb.sr

bb.sr:                                            ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7072
  %i.hsw = load ptr, ptr %i.hsh, align 8
  %i.hsx = ptrtoint ptr %i.hsw to i64
  %i.hsy = ptrtoint ptr %i.hsv to i64
  %i.hsz = sub i64 %i.hsx, %i.hsy
  call void @_ZdlPvm(ptr noundef nonnull %i.hsv, i64 noundef %i.hsz) #11
  br label %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_NS0_6Int32TEEJNS0_5TNodeIS4_EESC_SC_SC_SC_NSB_IS5_EESC_NSB_IS9_EESC_NSB_ISA_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit1892

_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_NS0_6Int32TEEJNS0_5TNodeIS4_EESC_SC_SC_SC_NSB_IS5_EESC_NSB_IS9_EESC_NSB_ISA_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit1892: ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7072, %bb.sr
  call void @llvm.lifetime.end.p0(ptr nonnull %346)
  call void @_ZN2v88internal8compiler13CodeAssembler4GotoEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %694, ptr noundef nonnull %i.afs) #10
  br label %bb.ss

bb.ss:                                            ; preds = %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_NS0_6Int32TEEJNS0_5TNodeIS4_EESC_SC_SC_SC_NSB_IS5_EESC_NSB_IS9_EESC_NSB_ISA_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit1892, %bb.so
  call void @llvm.lifetime.start.p0(ptr nonnull %1680) #10
  store ptr null, ptr %1680, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1681) #10
  store ptr null, ptr %1681, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1682) #10
  store ptr null, ptr %1682, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1683) #10
  store ptr null, ptr %1683, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1684) #10
  store ptr null, ptr %1684, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1685) #10
  store ptr null, ptr %1685, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1686) #10
  store ptr null, ptr %1686, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1687) #10
  store ptr null, ptr %1687, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1688) #10
  store ptr null, ptr %1688, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1689) #10
  store ptr null, ptr %1689, align 8
  %i.hta = getelementptr inbounds nuw i8, ptr %815, i64 64
  %i.htb = load i64, ptr %i.hta, align 8
  %.not14746 = icmp eq i64 %i.htb, 0
  br i1 %.not14746, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit1896, label %bb.st

bb.st:                                            ; preds = %bb.ss
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %694, ptr noundef nonnull %i.afs) #10
  call void @_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_7IntPtrTES3_S3_S3_S3_NS0_5BoolTES3_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES3_NS0_6Int32TEEE10CreatePhisEPNS0_5TNodeIS3_EESD_SD_SD_SD_PNSB_IS4_EESD_PNSB_IS8_EESD_PNSB_IS9_EE(ptr noundef nonnull align 8 dereferenceable(184) %815, ptr noundef nonnull %1680, ptr noundef nonnull %1681, ptr noundef nonnull %1682, ptr noundef nonnull %1683, ptr noundef nonnull %1684, ptr noundef nonnull %1685, ptr noundef nonnull %1686, ptr noundef nonnull %1687, ptr noundef nonnull %1688, ptr noundef nonnull %1689)
  call void @llvm.lifetime.start.p0(ptr nonnull %1690) #10
  store ptr %.sroa.014042.0, ptr %1691, align 8
  call void @_ZN2v88internal29FieldSliceFixedArrayObjects_0EPNS0_8compiler18CodeAssemblerStateENS0_5TNodeINS0_10FixedArrayEEE(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::TorqueStructSlice_Object_MutableReference_Object_0") align 8 %1690, ptr noundef %i.a, ptr noundef nonnull dead_on_return %1691) #10
  %i.htc = getelementptr inbounds nuw i8, ptr %1690, i64 8
  %i.htd = getelementptr inbounds nuw i8, ptr %1690, i64 16
  %i.hte = load ptr, ptr %i.htd, align 8, !noalias !4557
  %i.htf = load ptr, ptr %i.htc, align 8, !noalias !4557 ; 2 uses
  %i.htg = load ptr, ptr %1690, align 8, !noalias !4557 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1690) #10
  %i.hth = load ptr, ptr %1686, align 8
  store ptr %i.hth, ptr %1693, align 8
  call void @_ZN2v88internal24Convert_uintptr_intptr_0EPNS0_8compiler18CodeAssemblerStateENS0_5TNodeINS0_7IntPtrTEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.23") align 8 %1692, ptr noundef %i.a, ptr noundef nonnull dead_on_return %1693) #10
  %i.hti = load ptr, ptr %1692, align 8, !noalias !4558
  store ptr %i.hte, ptr %1695, align 8
  call void @_ZN2v88internal24Convert_uintptr_intptr_0EPNS0_8compiler18CodeAssemblerStateENS0_5TNodeINS0_7IntPtrTEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.23") align 8 %1694, ptr noundef %i.a, ptr noundef nonnull dead_on_return %1695) #10
  %i.htj = load ptr, ptr %1694, align 8, !noalias !4559
  call void @llvm.lifetime.start.p0(ptr nonnull %1697) #10
  call void @_ZN2v88internal17CodeStubAssemblerC1EPNS0_8compiler18CodeAssemblerStateE(ptr noundef nonnull align 8 dereferenceable(16) %1697, ptr noundef %i.a) #10
  store ptr %i.hti, ptr %1698, align 8
  store ptr %i.htj, ptr %1699, align 8
  call void @_ZN2v88internal8compiler13CodeAssembler15UintPtrLessThanENS0_5TNodeINS0_5WordTEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.20") align 8 %1696, ptr noundef nonnull align 8 dereferenceable(8) %1697, ptr noundef nonnull dead_on_return %1698, ptr noundef nonnull dead_on_return %1699) #10
  %i.htk = load ptr, ptr %1696, align 8, !noalias !4560
  call void @_ZN2v88internal8compiler13CodeAssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %1697) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1697) #10
  store ptr %i.htk, ptr %1700, align 8
  %i.htl = load ptr, ptr %1680, align 8
  %i.htm = load ptr, ptr %1681, align 8
  %i.htn = load ptr, ptr %1682, align 8
  %i.hto = load ptr, ptr %1683, align 8
  %i.htp = load ptr, ptr %1684, align 8
  %i.htq = load ptr, ptr %1685, align 8
  %i.htr = load ptr, ptr %1686, align 8           ; 5 uses
  %i.hts = load ptr, ptr %1687, align 8
  %i.htt = load ptr, ptr %1688, align 8
  %i.htu = call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #12 ; 15 uses
  store ptr %i.htu, ptr %1701, align 8
  %i.htv = getelementptr inbounds nuw i8, ptr %i.htu, i64 104 ; 2 uses
  %i.htw = getelementptr inbounds nuw i8, ptr %1701, i64 16 ; 2 uses
  store ptr %i.htv, ptr %i.htw, align 8
  store ptr %i.htl, ptr %i.htu, align 8
  %.sroa.411030.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.htu, i64 8
  store ptr %i.htm, ptr %.sroa.411030.0..sroa_idx, align 8
  %.sroa.511031.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.htu, i64 16
  store ptr %i.htn, ptr %.sroa.511031.0..sroa_idx, align 8
  %.sroa.611032.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.htu, i64 24
  store ptr %i.hto, ptr %.sroa.611032.0..sroa_idx, align 8
  %.sroa.711033.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.htu, i64 32
  store ptr %i.htp, ptr %.sroa.711033.0..sroa_idx, align 8
  %.sroa.811034.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.htu, i64 40
  store ptr %i.htq, ptr %.sroa.811034.0..sroa_idx, align 8
  %.sroa.911035.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.htu, i64 48
  store ptr %i.htr, ptr %.sroa.911035.0..sroa_idx, align 8
  %.sroa.1011036.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.htu, i64 56
  store ptr %i.hts, ptr %.sroa.1011036.0..sroa_idx, align 8
  %.sroa.1111037.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.htu, i64 64
  store ptr %i.htt, ptr %.sroa.1111037.0..sroa_idx, align 8
  %.sroa.1211038.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.htu, i64 72
  store ptr %i.htr, ptr %.sroa.1211038.0..sroa_idx, align 8
  %.sroa.1311039.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.htu, i64 80
  store ptr %i.htr, ptr %.sroa.1311039.0..sroa_idx, align 8
  %.sroa.1411040.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.htu, i64 88
  store ptr %i.htr, ptr %.sroa.1411040.0..sroa_idx, align 8
  %.sroa.1511041.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.htu, i64 96
  store ptr %i.htr, ptr %.sroa.1511041.0..sroa_idx, align 8
  %i.htx = getelementptr inbounds nuw i8, ptr %1701, i64 8
  store ptr %i.htv, ptr %i.htx, align 8
  %i.hty = load ptr, ptr %1680, align 8
  %i.htz = load ptr, ptr %1681, align 8
  %i.hua = load ptr, ptr %1682, align 8
  %i.hub = load ptr, ptr %1683, align 8
  %i.huc = load ptr, ptr %1684, align 8
  %i.hud = load ptr, ptr %1685, align 8
  %i.hue = load ptr, ptr %1686, align 8           ; 5 uses
  %i.huf = load ptr, ptr %1687, align 8
  %i.hug = load ptr, ptr %1688, align 8
  %i.huh = call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #12 ; 15 uses
  store ptr %i.huh, ptr %1702, align 8
  %i.hui = getelementptr inbounds nuw i8, ptr %i.huh, i64 104 ; 2 uses
  %i.huj = getelementptr inbounds nuw i8, ptr %1702, i64 16 ; 2 uses
  store ptr %i.hui, ptr %i.huj, align 8
  store ptr %i.hty, ptr %i.huh, align 8
  %.sroa.411016.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.huh, i64 8
  store ptr %i.htz, ptr %.sroa.411016.0..sroa_idx, align 8
  %.sroa.511017.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.huh, i64 16
  store ptr %i.hua, ptr %.sroa.511017.0..sroa_idx, align 8
  %.sroa.611018.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.huh, i64 24
  store ptr %i.hub, ptr %.sroa.611018.0..sroa_idx, align 8
  %.sroa.711019.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.huh, i64 32
  store ptr %i.huc, ptr %.sroa.711019.0..sroa_idx, align 8
  %.sroa.811020.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.huh, i64 40
  store ptr %i.hud, ptr %.sroa.811020.0..sroa_idx, align 8
  %.sroa.911021.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.huh, i64 48
  store ptr %i.hue, ptr %.sroa.911021.0..sroa_idx, align 8
  %.sroa.1011022.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.huh, i64 56
  store ptr %i.huf, ptr %.sroa.1011022.0..sroa_idx, align 8
  %.sroa.1111023.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.huh, i64 64
  store ptr %i.hug, ptr %.sroa.1111023.0..sroa_idx, align 8
  %.sroa.1211024.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.huh, i64 72
  store ptr %i.hue, ptr %.sroa.1211024.0..sroa_idx, align 8
  %.sroa.1311025.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.huh, i64 80
  store ptr %i.hue, ptr %.sroa.1311025.0..sroa_idx, align 8
  %.sroa.1411026.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.huh, i64 88
  store ptr %i.hue, ptr %.sroa.1411026.0..sroa_idx, align 8
  %.sroa.1511027.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.huh, i64 96
  store ptr %i.hue, ptr %.sroa.1511027.0..sroa_idx, align 8
  %i.huk = getelementptr inbounds nuw i8, ptr %1702, i64 8
  store ptr %i.hui, ptr %i.huk, align 8
  call void @_ZN2v88internal8compiler13CodeAssembler6BranchIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_S4_S4_S4_S4_EJS4_S4_S4_S4_S4_S5_S4_S9_S4_S4_S4_S4_S4_EEEvNS0_5TNodeIS5_EEPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEESt6vectorIPNS1_4NodeESaISJ_EEPNSC_IJDpT0_EEESL_(ptr noundef nonnull align 8 dereferenceable(8) %694, ptr noundef nonnull dead_on_return %1700, ptr noundef nonnull %816, ptr noundef nonnull %1701, ptr noundef nonnull %817, ptr noundef nonnull %1702)
  %i.hul = load ptr, ptr %1702, align 8           ; 3 uses
  %.not.i.i.i1893 = icmp eq ptr %i.hul, null
  br i1 %.not.i.i.i1893, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit1894, label %bb.su

bb.su:                                            ; preds = %bb.st
  %i.hum = load ptr, ptr %i.huj, align 8
  %i.hun = ptrtoint ptr %i.hum to i64
  %i.huo = ptrtoint ptr %i.hul to i64
  %i.hup = sub i64 %i.hun, %i.huo
  call void @_ZdlPvm(ptr noundef nonnull %i.hul, i64 noundef %i.hup) #11
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit1894

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit1894: ; preds = %bb.st, %bb.su
  %i.huq = load ptr, ptr %1701, align 8           ; 3 uses
  %.not.i.i.i1895 = icmp eq ptr %i.huq, null
  br i1 %.not.i.i.i1895, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit1896, label %bb.sv

bb.sv:                                            ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit1894
  %i.hur = load ptr, ptr %i.htw, align 8
  %i.hus = ptrtoint ptr %i.hur to i64
  %i.hut = ptrtoint ptr %i.huq to i64
  %i.huu = sub i64 %i.hus, %i.hut
  call void @_ZdlPvm(ptr noundef nonnull %i.huq, i64 noundef %i.huu) #11
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit1896

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit1896: ; preds = %bb.sv, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit1894, %bb.ss
  %.sroa.014539.0 = phi ptr [ null, %bb.ss ], [ %i.htf, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit1894 ], [ %i.htf, %bb.sv ]
  %.sroa.014538.0 = phi ptr [ null, %bb.ss ], [ %i.htg, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit1894 ], [ %i.htg, %bb.sv ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1703) #10
  store ptr null, ptr %1703, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1704) #10
  store ptr null, ptr %1704, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1705) #10
  store ptr null, ptr %1705, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1706) #10
  store ptr null, ptr %1706, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1707) #10
  store ptr null, ptr %1707, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1708) #10
  store ptr null, ptr %1708, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1709) #10
end_hunk_1
begin_hunk_2_@_ZN2v88internal30JSToWasmHandleReturnsAssembler33GenerateJSToWasmHandleReturnsImplEv:bb.a
  store <2 x ptr> %i.ikr, ptr %i.ikv, align 8
  %.sroa.5.0..sroa_idx.i.i1985 = getelementptr inbounds nuw i8, ptr %i.ikv, i64 16
  store <2 x ptr> %i.iks, ptr %.sroa.5.0..sroa_idx.i.i1985, align 8
  %.sroa.7.0..sroa_idx.i.i1987 = getelementptr inbounds nuw i8, ptr %i.ikv, i64 32
  store <2 x ptr> %i.ikt, ptr %.sroa.7.0..sroa_idx.i.i1987, align 8
  %.sroa.9.0..sroa_idx.i.i1989 = getelementptr inbounds nuw i8, ptr %i.ikv, i64 48
  store <2 x ptr> %i.iku, ptr %.sroa.9.0..sroa_idx.i.i1989, align 8
  %.sroa.11.0..sroa_idx.i.i1991 = getelementptr inbounds nuw i8, ptr %i.ikv, i64 64
  store ptr %i.ikp, ptr %.sroa.11.0..sroa_idx.i.i1991, align 8
  %i.ikx = getelementptr inbounds nuw i8, ptr %325, i64 8
  store ptr %i.ikw, ptr %i.ikx, align 8
  call void @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase9AddInputsESt6vectorIPNS1_4NodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(184) %832, ptr noundef nonnull %325) #10
  %i.iky = load ptr, ptr %325, align 8            ; 3 uses
  %.not.i.i.i.i.i1992 = icmp eq ptr %i.iky, null
  br i1 %.not.i.i.i.i.i1992, label %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_EJNS0_5TNodeIS4_EESB_SB_SB_SB_NSA_IS5_EESB_NSA_IS9_EESB_EEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit1993, label %bb.uq

bb.uq:                                            ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7268
  %i.ikz = load ptr, ptr %i.ikq, align 8
  %i.ila = ptrtoint ptr %i.ikz to i64
  %i.ilb = ptrtoint ptr %i.iky to i64
  %i.ilc = sub i64 %i.ila, %i.ilb
  call void @_ZdlPvm(ptr noundef nonnull %i.iky, i64 noundef %i.ilc) #11
  br label %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_EJNS0_5TNodeIS4_EESB_SB_SB_SB_NSA_IS5_EESB_NSA_IS9_EESB_EEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit1993

_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_EJNS0_5TNodeIS4_EESB_SB_SB_SB_NSA_IS5_EESB_NSA_IS9_EESB_EEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit1993: ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7268, %bb.uq
  call void @llvm.lifetime.end.p0(ptr nonnull %325)
  call void @_ZN2v88internal8compiler13CodeAssembler4GotoEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %694, ptr noundef nonnull %i.aky) #10
  br label %bb.ur

bb.ur:                                            ; preds = %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_EJNS0_5TNodeIS4_EESB_SB_SB_SB_NSA_IS5_EESB_NSA_IS9_EESB_EEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit1993, %bb.un
  %i.ild = getelementptr inbounds nuw i8, ptr %828, i64 64
  %i.ile = load i64, ptr %i.ild, align 8
  %.not14759 = icmp eq i64 %i.ile, 0
  br i1 %.not14759, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit1997, label %bb.us

bb.us:                                            ; preds = %bb.ur
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %694, ptr noundef nonnull %i.ajs) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %56)
  %i.ilf = call noalias noundef nonnull dereferenceable(9) ptr @_Znwm(i64 noundef 9) #12 ; 4 uses
  store ptr %i.ilf, ptr %56, align 8
  %i.ilg = getelementptr inbounds nuw i8, ptr %i.ilf, i64 9 ; 2 uses
  %i.ilh = getelementptr inbounds nuw i8, ptr %56, i64 16 ; 2 uses
  store ptr %i.ilg, ptr %i.ilh, align 8
  %.sroa.8.0..sroa_idx.i7287 = getelementptr inbounds nuw i8, ptr %i.ilf, i64 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ilf, i8 5, i64 5, i1 false)
  store <4 x i8> <i8 4, i8 5, i8 9, i8 5>, ptr %.sroa.8.0..sroa_idx.i7287, align 1
  %i.ili = getelementptr inbounds nuw i8, ptr %56, i64 8
  store ptr %i.ilg, ptr %i.ili, align 8
  %i.ilj = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %828, ptr noundef nonnull %56) #10
  %i.ilk = load ptr, ptr %56, align 8             ; 3 uses
  %.not.i.i.i.i7291 = icmp eq ptr %i.ilk, null
  br i1 %.not.i.i.i.i7291, label %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7292, label %bb.ut

bb.ut:                                            ; preds = %bb.us
  %i.ill = load ptr, ptr %i.ilh, align 8
  %i.ilm = ptrtoint ptr %i.ill to i64
  %i.iln = ptrtoint ptr %i.ilk to i64
  %i.ilo = sub i64 %i.ilm, %i.iln
  call void @_ZdlPvm(ptr noundef nonnull %i.ilk, i64 noundef %i.ilo) #11
  br label %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7292

_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7292: ; preds = %bb.ut, %bb.us
  %i.ilp = load ptr, ptr %i.ilj, align 8          ; 9 uses
  %i.ilq = getelementptr inbounds nuw i8, ptr %i.ilp, i64 8
  %i.ilr = load ptr, ptr %i.ilp, align 8          ; 2 uses
  %i.ils = getelementptr inbounds nuw i8, ptr %i.ilp, i64 16
  %i.ilt = load ptr, ptr %i.ilq, align 8          ; 2 uses
  %i.ilu = getelementptr inbounds nuw i8, ptr %i.ilp, i64 24
  %i.ilv = load ptr, ptr %i.ils, align 8          ; 2 uses
  %i.ilw = getelementptr inbounds nuw i8, ptr %i.ilp, i64 32
  %i.ilx = load ptr, ptr %i.ilu, align 8          ; 2 uses
  %i.ily = getelementptr inbounds nuw i8, ptr %i.ilp, i64 40
  %i.ilz = load ptr, ptr %i.ilw, align 8          ; 2 uses
  %i.ima = getelementptr inbounds nuw i8, ptr %i.ilp, i64 48
  %i.imb = load ptr, ptr %i.ily, align 8          ; 2 uses
  %i.imc = getelementptr inbounds nuw i8, ptr %i.ilp, i64 56
  %i.imd = load ptr, ptr %i.ima, align 8          ; 2 uses
  %i.ime = getelementptr inbounds nuw i8, ptr %i.ilp, i64 64
  %i.imf = load ptr, ptr %i.imc, align 8          ; 2 uses
  %i.img = load ptr, ptr %i.ime, align 8          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %56)
  call void @_ZN2v88internal47FromConstexpr_intptr_constexpr_IntegerLiteral_0EPNS0_8compiler18CodeAssemblerStateENS0_14IntegerLiteralE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.15") align 8 %1797, ptr noundef %i.a, i8 0, i64 0) #10
  %i.imh = load ptr, ptr %1797, align 8, !noalias !4594
  call void @llvm.lifetime.start.p0(ptr nonnull %1799) #10
  call void @_ZN2v88internal17CodeStubAssemblerC1EPNS0_8compiler18CodeAssemblerStateE(ptr noundef nonnull align 8 dereferenceable(16) %1799, ptr noundef %i.a) #10
  store ptr %.sroa.010934.0, ptr %1800, align 8
  store ptr %i.imh, ptr %1801, align 8
  call void @_ZN2v88internal8compiler13CodeAssembler24IntPtrGreaterThanOrEqualENS0_5TNodeINS0_5WordTEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.20") align 8 %1798, ptr noundef nonnull align 8 dereferenceable(8) %1799, ptr noundef nonnull dead_on_return %1800, ptr noundef nonnull dead_on_return %1801) #10
  %i.imi = load ptr, ptr %1798, align 8, !noalias !4595
  call void @_ZN2v88internal8compiler13CodeAssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %1799) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1799) #10
  store ptr %i.imi, ptr %1802, align 8
  %i.imj = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #12 ; 11 uses
  store ptr %i.imj, ptr %1803, align 8
  %i.imk = getelementptr inbounds nuw i8, ptr %i.imj, i64 72 ; 2 uses
  %i.iml = getelementptr inbounds nuw i8, ptr %1803, i64 16 ; 2 uses
  store ptr %i.imk, ptr %i.iml, align 8
  store ptr %i.ilr, ptr %i.imj, align 8
  %.sroa.410652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.imj, i64 8
  store ptr %i.ilt, ptr %.sroa.410652.0..sroa_idx, align 8
  %.sroa.510653.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.imj, i64 16
  store ptr %i.ilv, ptr %.sroa.510653.0..sroa_idx, align 8
  %.sroa.610654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.imj, i64 24
  store ptr %i.ilx, ptr %.sroa.610654.0..sroa_idx, align 8
  %.sroa.710655.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.imj, i64 32
  store ptr %i.ilz, ptr %.sroa.710655.0..sroa_idx, align 8
  %.sroa.810656.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.imj, i64 40
  store ptr %i.imb, ptr %.sroa.810656.0..sroa_idx, align 8
  %.sroa.910657.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.imj, i64 48
  store ptr %i.imd, ptr %.sroa.910657.0..sroa_idx, align 8
  %.sroa.1010658.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.imj, i64 56
  store ptr %i.imf, ptr %.sroa.1010658.0..sroa_idx, align 8
  %.sroa.1110659.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.imj, i64 64
  store ptr %i.img, ptr %.sroa.1110659.0..sroa_idx, align 8
  %i.imm = getelementptr inbounds nuw i8, ptr %1803, i64 8
  store ptr %i.imk, ptr %i.imm, align 8
  %i.imn = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #12 ; 11 uses
  store ptr %i.imn, ptr %1804, align 8
  %i.imo = getelementptr inbounds nuw i8, ptr %i.imn, i64 72 ; 2 uses
  %i.imp = getelementptr inbounds nuw i8, ptr %1804, i64 16 ; 2 uses
  store ptr %i.imo, ptr %i.imp, align 8
  store ptr %i.ilr, ptr %i.imn, align 8
  %.sroa.410642.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.imn, i64 8
  store ptr %i.ilt, ptr %.sroa.410642.0..sroa_idx, align 8
  %.sroa.510643.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.imn, i64 16
  store ptr %i.ilv, ptr %.sroa.510643.0..sroa_idx, align 8
  %.sroa.610644.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.imn, i64 24
  store ptr %i.ilx, ptr %.sroa.610644.0..sroa_idx, align 8
  %.sroa.710645.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.imn, i64 32
  store ptr %i.ilz, ptr %.sroa.710645.0..sroa_idx, align 8
  %.sroa.810646.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.imn, i64 40
  store ptr %i.imb, ptr %.sroa.810646.0..sroa_idx, align 8
  %.sroa.910647.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.imn, i64 48
  store ptr %i.imd, ptr %.sroa.910647.0..sroa_idx, align 8
  %.sroa.1010648.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.imn, i64 56
  store ptr %i.imf, ptr %.sroa.1010648.0..sroa_idx, align 8
  %.sroa.1110649.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.imn, i64 64
  store ptr %i.img, ptr %.sroa.1110649.0..sroa_idx, align 8
  %i.imq = getelementptr inbounds nuw i8, ptr %1804, i64 8
  store ptr %i.imo, ptr %i.imq, align 8
  call void @_ZN2v88internal8compiler13CodeAssembler6BranchIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_EJS4_S4_S4_S4_S4_S5_S4_S9_S4_EEEvNS0_5TNodeIS5_EEPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEESt6vectorIPNS1_4NodeESaISJ_EEPNSC_IJDpT0_EEESL_(ptr noundef nonnull align 8 dereferenceable(8) %694, ptr noundef nonnull dead_on_return %1802, ptr noundef nonnull %829, ptr noundef nonnull %1803, ptr noundef nonnull %830, ptr noundef nonnull %1804)
  %i.imr = load ptr, ptr %1804, align 8           ; 3 uses
  %.not.i.i.i1994 = icmp eq ptr %i.imr, null
  br i1 %.not.i.i.i1994, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit1995, label %bb.uu

bb.uu:                                            ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7292
  %i.ims = load ptr, ptr %i.imp, align 8
  %i.imt = ptrtoint ptr %i.ims to i64
  %i.imu = ptrtoint ptr %i.imr to i64
  %i.imv = sub i64 %i.imt, %i.imu
  call void @_ZdlPvm(ptr noundef nonnull %i.imr, i64 noundef %i.imv) #11
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit1995

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit1995: ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7292, %bb.uu
  %i.imw = load ptr, ptr %1803, align 8           ; 3 uses
  %.not.i.i.i1996 = icmp eq ptr %i.imw, null
  br i1 %.not.i.i.i1996, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit1997, label %bb.uv

bb.uv:                                            ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit1995
  %i.imx = load ptr, ptr %i.iml, align 8
  %i.imy = ptrtoint ptr %i.imx to i64
  %i.imz = ptrtoint ptr %i.imw to i64
  %i.ina = sub i64 %i.imy, %i.imz
  call void @_ZdlPvm(ptr noundef nonnull %i.imw, i64 noundef %i.ina) #11
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit1997

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit1997: ; preds = %bb.uv, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit1995, %bb.ur
  %i.inb = getelementptr inbounds nuw i8, ptr %829, i64 64
  %i.inc = load i64, ptr %i.inb, align 8
  %.not14760 = icmp eq i64 %i.inc, 0
  br i1 %.not14760, label %bb.uz, label %bb.uw

bb.uw:                                            ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit1997
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %694, ptr noundef nonnull %i.aka) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %55)
  %i.ind = call noalias noundef nonnull dereferenceable(9) ptr @_Znwm(i64 noundef 9) #12 ; 4 uses
  store ptr %i.ind, ptr %55, align 8
  %i.ine = getelementptr inbounds nuw i8, ptr %i.ind, i64 9 ; 2 uses
  %i.inf = getelementptr inbounds nuw i8, ptr %55, i64 16 ; 2 uses
  store ptr %i.ine, ptr %i.inf, align 8
  %.sroa.8.0..sroa_idx.i7311 = getelementptr inbounds nuw i8, ptr %i.ind, i64 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ind, i8 5, i64 5, i1 false)
  store <4 x i8> <i8 4, i8 5, i8 9, i8 5>, ptr %.sroa.8.0..sroa_idx.i7311, align 1
  %i.ing = getelementptr inbounds nuw i8, ptr %55, i64 8
  store ptr %i.ine, ptr %i.ing, align 8
  %i.inh = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %829, ptr noundef nonnull %55) #10
  %i.ini = load ptr, ptr %55, align 8             ; 3 uses
  %.not.i.i.i.i7315 = icmp eq ptr %i.ini, null
  br i1 %.not.i.i.i.i7315, label %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7316, label %bb.ux

bb.ux:                                            ; preds = %bb.uw
  %i.inj = load ptr, ptr %i.inf, align 8
  %i.ink = ptrtoint ptr %i.inj to i64
  %i.inl = ptrtoint ptr %i.ini to i64
  %i.inm = sub i64 %i.ink, %i.inl
  call void @_ZdlPvm(ptr noundef nonnull %i.ini, i64 noundef %i.inm) #11
  br label %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7316

_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7316: ; preds = %bb.ux, %bb.uw
  %i.inn = load ptr, ptr %i.inh, align 8          ; 6 uses
  %i.ino = getelementptr inbounds nuw i8, ptr %i.inn, i64 16
  %i.inp = getelementptr inbounds nuw i8, ptr %i.inn, i64 32
  %i.inq = getelementptr inbounds nuw i8, ptr %i.inn, i64 48
  %i.inr = getelementptr inbounds nuw i8, ptr %i.inn, i64 56
  %i.ins = getelementptr inbounds nuw i8, ptr %i.inn, i64 64
  %i.int = getelementptr inbounds nuw i8, ptr %1805, i64 8
  %i.inu = getelementptr inbounds nuw i8, ptr %318, i64 16 ; 2 uses
  %i.inv = load <2 x ptr>, ptr %i.inn, align 8
  %i.inw = load <2 x ptr>, ptr %i.ino, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %55)
  call void @llvm.lifetime.start.p0(ptr nonnull %1805) #10
  %2475 = load <2 x ptr>, ptr %i.inp, align 8
  %i.inx = load <2 x ptr>, ptr %i.inq, align 8
  %i.iny = load ptr, ptr %i.ins, align 8
  %i.inz = load <2 x ptr>, ptr %i.inr, align 8
  store <2 x ptr> %i.inz, ptr %1806, align 16
  call void @_ZN2v88internal17RefCast_float64_0EPNS0_8compiler18CodeAssemblerStateENS0_30TorqueStructReference_intptr_0E(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::TorqueStructReference_float64_0") align 8 %1805, ptr noundef %i.a, ptr noundef nonnull dead_on_return %1806)
  %i.ioa = load ptr, ptr %i.int, align 8, !noalias !4596
  %i.iob = load ptr, ptr %1805, align 8, !noalias !4596
  call void @llvm.lifetime.end.p0(ptr nonnull %1805) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %1807) #10
  call void @_ZN2v88internal17CodeStubAssemblerC1EPNS0_8compiler18CodeAssemblerStateE(ptr noundef nonnull align 8 dereferenceable(16) %1807, ptr noundef %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %322)
  call void @llvm.lifetime.start.p0(ptr nonnull %323)
  call void @llvm.lifetime.start.p0(ptr nonnull %324)
  call void @llvm.lifetime.start.p0(ptr nonnull %321) #10, !noalias !4597
  call void @_ZN2v88internal8compiler13CodeAssembler14IntPtrConstantEl(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.15") align 8 %322, ptr noundef nonnull align 8 dereferenceable(16) %1807, i64 noundef 1) #10, !noalias !4597
  call void @llvm.lifetime.start.p0(ptr nonnull %319), !noalias !4597
  call void @llvm.lifetime.start.p0(ptr nonnull %320), !noalias !4597
  store ptr %i.ioa, ptr %319, align 8, !noalias !4598
  %i.ioc = load ptr, ptr %322, align 8, !noalias !4598
  store ptr %i.ioc, ptr %320, align 8, !noalias !4598
  call void @_ZN2v88internal8compiler13CodeAssembler9IntPtrSubENS0_5TNodeINS0_5WordTEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.22") align 8 %321, ptr noundef nonnull align 8 dereferenceable(16) %1807, ptr noundef nonnull dead_on_return %319, ptr noundef nonnull dead_on_return %320) #10, !noalias !4597
  call void @llvm.lifetime.end.p0(ptr nonnull %319), !noalias !4597
  call void @llvm.lifetime.end.p0(ptr nonnull %320), !noalias !4597
  store ptr %i.iob, ptr %323, align 8, !noalias !4597
  %i.iod = load ptr, ptr %321, align 8, !noalias !4597
  store ptr %i.iod, ptr %324, align 8, !noalias !4597
  %i.ioe = call noundef ptr @_ZN2v88internal8compiler13CodeAssembler14LoadFromObjectENS0_11MachineTypeENS0_5TNodeINS0_6ObjectEEENS4_INS0_7IntPtrTEEE(ptr noundef nonnull align 8 dereferenceable(16) %1807, i16 2066, ptr noundef nonnull dead_on_return %323, ptr noundef nonnull dead_on_return %324) #10, !noalias !4597
  call void @llvm.lifetime.end.p0(ptr nonnull %321) #10, !noalias !4597
  call void @llvm.lifetime.end.p0(ptr nonnull %322)
  call void @llvm.lifetime.end.p0(ptr nonnull %323)
  call void @llvm.lifetime.end.p0(ptr nonnull %324)
  call void @_ZN2v88internal8compiler13CodeAssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %1807) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1807) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %1809) #10
  call void @_ZN2v88internal17CodeStubAssemblerC1EPNS0_8compiler18CodeAssemblerStateE(ptr noundef nonnull align 8 dereferenceable(16) %1809, ptr noundef %i.a) #10
  store ptr %i.ioe, ptr %1810, align 8
  call void @_ZN2v88internal8compiler13CodeAssembler24TruncateFloat64ToFloat32ENS0_5TNodeINS0_8Float64TEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.14") align 8 %1808, ptr noundef nonnull align 8 dereferenceable(8) %1809, ptr noundef nonnull dead_on_return %1810) #10
  %i.iof = load ptr, ptr %1808, align 8, !noalias !4599
  call void @_ZN2v88internal8compiler13CodeAssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %1809) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1809) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %318)
  %i.iog = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #12 ; 8 uses
  store ptr %i.iog, ptr %318, align 8
  %i.ioh = getelementptr inbounds nuw i8, ptr %i.iog, i64 80 ; 2 uses
  store ptr %i.ioh, ptr %i.inu, align 8
  store <2 x ptr> %i.inv, ptr %i.iog, align 8
  %.sroa.5.0..sroa_idx.i.i1999 = getelementptr inbounds nuw i8, ptr %i.iog, i64 16
  store <2 x ptr> %i.inw, ptr %.sroa.5.0..sroa_idx.i.i1999, align 8
  %.sroa.7.0..sroa_idx.i.i2001 = getelementptr inbounds nuw i8, ptr %i.iog, i64 32
  store <2 x ptr> %2475, ptr %.sroa.7.0..sroa_idx.i.i2001, align 8
  %.sroa.9.0..sroa_idx.i.i2003 = getelementptr inbounds nuw i8, ptr %i.iog, i64 48
  store <2 x ptr> %i.inx, ptr %.sroa.9.0..sroa_idx.i.i2003, align 8
  %.sroa.11.0..sroa_idx.i.i2005 = getelementptr inbounds nuw i8, ptr %i.iog, i64 64
  store ptr %i.iny, ptr %.sroa.11.0..sroa_idx.i.i2005, align 8
  %.sroa.12.0..sroa_idx.i.i2006 = getelementptr inbounds nuw i8, ptr %i.iog, i64 72
  store ptr %i.iof, ptr %.sroa.12.0..sroa_idx.i.i2006, align 8
  %i.ioi = getelementptr inbounds nuw i8, ptr %318, i64 8
  store ptr %i.ioh, ptr %i.ioi, align 8
  call void @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase9AddInputsESt6vectorIPNS1_4NodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(184) %831, ptr noundef nonnull %318) #10
  %i.ioj = load ptr, ptr %318, align 8            ; 3 uses
  %.not.i.i.i.i.i2007 = icmp eq ptr %i.ioj, null
  br i1 %.not.i.i.i.i.i2007, label %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_NS0_8Float32TEEJNS0_5TNodeIS4_EESC_SC_SC_SC_NSB_IS5_EESC_NSB_IS9_EESC_NSB_ISA_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit, label %bb.uy

bb.uy:                                            ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7316
  %i.iok = load ptr, ptr %i.inu, align 8
  %i.iol = ptrtoint ptr %i.iok to i64
  %i.iom = ptrtoint ptr %i.ioj to i64
  %i.ion = sub i64 %i.iol, %i.iom
  call void @_ZdlPvm(ptr noundef nonnull %i.ioj, i64 noundef %i.ion) #11
  br label %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_NS0_8Float32TEEJNS0_5TNodeIS4_EESC_SC_SC_SC_NSB_IS5_EESC_NSB_IS9_EESC_NSB_ISA_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit

_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_NS0_8Float32TEEJNS0_5TNodeIS4_EESC_SC_SC_SC_NSB_IS5_EESC_NSB_IS9_EESC_NSB_ISA_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit: ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7316, %bb.uy
  call void @llvm.lifetime.end.p0(ptr nonnull %318)
  call void @_ZN2v88internal8compiler13CodeAssembler4GotoEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %694, ptr noundef nonnull %i.akq) #10
  br label %bb.uz

bb.uz:                                            ; preds = %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_NS0_8Float32TEEJNS0_5TNodeIS4_EESC_SC_SC_SC_NSB_IS5_EESC_NSB_IS9_EESC_NSB_ISA_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit1997
  %i.ioo = getelementptr inbounds nuw i8, ptr %830, i64 64
  %i.iop = load i64, ptr %i.ioo, align 8
  %.not14761 = icmp eq i64 %i.iop, 0
  br i1 %.not14761, label %bb.vd, label %bb.va

bb.va:                                            ; preds = %bb.uz
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %694, ptr noundef nonnull %i.aki) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %54)
  %i.ioq = call noalias noundef nonnull dereferenceable(9) ptr @_Znwm(i64 noundef 9) #12 ; 4 uses
  store ptr %i.ioq, ptr %54, align 8
  %i.ior = getelementptr inbounds nuw i8, ptr %i.ioq, i64 9 ; 2 uses
  %i.ios = getelementptr inbounds nuw i8, ptr %54, i64 16 ; 2 uses
  store ptr %i.ior, ptr %i.ios, align 8
  %.sroa.8.0..sroa_idx.i7335 = getelementptr inbounds nuw i8, ptr %i.ioq, i64 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ioq, i8 5, i64 5, i1 false)
  store <4 x i8> <i8 4, i8 5, i8 9, i8 5>, ptr %.sroa.8.0..sroa_idx.i7335, align 1
  %i.iot = getelementptr inbounds nuw i8, ptr %54, i64 8
  store ptr %i.ior, ptr %i.iot, align 8
  %i.iou = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %830, ptr noundef nonnull %54) #10
  %i.iov = load ptr, ptr %54, align 8             ; 3 uses
  %.not.i.i.i.i7339 = icmp eq ptr %i.iov, null
  br i1 %.not.i.i.i.i7339, label %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7340, label %bb.vb

bb.vb:                                            ; preds = %bb.va
  %i.iow = load ptr, ptr %i.ios, align 8
  %i.iox = ptrtoint ptr %i.iow to i64
  %i.ioy = ptrtoint ptr %i.iov to i64
  %i.ioz = sub i64 %i.iox, %i.ioy
  call void @_ZdlPvm(ptr noundef nonnull %i.iov, i64 noundef %i.ioz) #11
  br label %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7340

_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7340: ; preds = %bb.vb, %bb.va
  %i.ipa = load ptr, ptr %i.iou, align 8          ; 6 uses
  %i.ipb = getelementptr inbounds nuw i8, ptr %i.ipa, i64 16
  %i.ipc = getelementptr inbounds nuw i8, ptr %i.ipa, i64 32
  %i.ipd = getelementptr inbounds nuw i8, ptr %i.ipa, i64 48
  %i.ipe = getelementptr inbounds nuw i8, ptr %i.ipa, i64 56
  %i.ipf = getelementptr inbounds nuw i8, ptr %i.ipa, i64 64
  %i.ipg = getelementptr inbounds nuw i8, ptr %1811, i64 8
  %i.iph = getelementptr inbounds nuw i8, ptr %311, i64 16 ; 2 uses
  %i.ipi = load <2 x ptr>, ptr %i.ipa, align 8
  %i.ipj = load <2 x ptr>, ptr %i.ipb, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %54)
  call void @llvm.lifetime.start.p0(ptr nonnull %1811) #10
  %2476 = load <2 x ptr>, ptr %i.ipc, align 8
  %i.ipk = load <2 x ptr>, ptr %i.ipd, align 8
  %i.ipl = load ptr, ptr %i.ipf, align 8
  %i.ipm = load <2 x ptr>, ptr %i.ipe, align 8
  store <2 x ptr> %i.ipm, ptr %1812, align 16
  call void @_ZN2v88internal17RefCast_float32_0EPNS0_8compiler18CodeAssemblerStateENS0_30TorqueStructReference_intptr_0E(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::TorqueStructReference_float32_0") align 8 %1811, ptr noundef %i.a, ptr noundef nonnull dead_on_return %1812)
  %i.ipn = load ptr, ptr %i.ipg, align 8, !noalias !4600
  %i.ipo = load ptr, ptr %1811, align 8, !noalias !4600
  call void @llvm.lifetime.end.p0(ptr nonnull %1811) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %1813) #10
  call void @_ZN2v88internal17CodeStubAssemblerC1EPNS0_8compiler18CodeAssemblerStateE(ptr noundef nonnull align 8 dereferenceable(16) %1813, ptr noundef %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %315)
  call void @llvm.lifetime.start.p0(ptr nonnull %316)
  call void @llvm.lifetime.start.p0(ptr nonnull %317)
  call void @llvm.lifetime.start.p0(ptr nonnull %314) #10, !noalias !4601
  call void @_ZN2v88internal8compiler13CodeAssembler14IntPtrConstantEl(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.15") align 8 %315, ptr noundef nonnull align 8 dereferenceable(16) %1813, i64 noundef 1) #10, !noalias !4601
  call void @llvm.lifetime.start.p0(ptr nonnull %312), !noalias !4601
  call void @llvm.lifetime.start.p0(ptr nonnull %313), !noalias !4601
  store ptr %i.ipn, ptr %312, align 8, !noalias !4602
  %i.ipp = load ptr, ptr %315, align 8, !noalias !4602
  store ptr %i.ipp, ptr %313, align 8, !noalias !4602
  call void @_ZN2v88internal8compiler13CodeAssembler9IntPtrSubENS0_5TNodeINS0_5WordTEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.22") align 8 %314, ptr noundef nonnull align 8 dereferenceable(16) %1813, ptr noundef nonnull dead_on_return %312, ptr noundef nonnull dead_on_return %313) #10, !noalias !4601
  call void @llvm.lifetime.end.p0(ptr nonnull %312), !noalias !4601
  call void @llvm.lifetime.end.p0(ptr nonnull %313), !noalias !4601
  store ptr %i.ipo, ptr %316, align 8, !noalias !4601
  %i.ipq = load ptr, ptr %314, align 8, !noalias !4601
  store ptr %i.ipq, ptr %317, align 8, !noalias !4601
  %i.ipr = call noundef ptr @_ZN2v88internal8compiler13CodeAssembler14LoadFromObjectENS0_11MachineTypeENS0_5TNodeINS0_6ObjectEEENS4_INS0_7IntPtrTEEE(ptr noundef nonnull align 8 dereferenceable(16) %1813, i16 2065, ptr noundef nonnull dead_on_return %316, ptr noundef nonnull dead_on_return %317) #10, !noalias !4601
  call void @llvm.lifetime.end.p0(ptr nonnull %314) #10, !noalias !4601
  call void @llvm.lifetime.end.p0(ptr nonnull %315)
  call void @llvm.lifetime.end.p0(ptr nonnull %316)
  call void @llvm.lifetime.end.p0(ptr nonnull %317)
  call void @_ZN2v88internal8compiler13CodeAssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %1813) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1813) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %311)
  %i.ips = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #12 ; 8 uses
  store ptr %i.ips, ptr %311, align 8
  %i.ipt = getelementptr inbounds nuw i8, ptr %i.ips, i64 80 ; 2 uses
  store ptr %i.ipt, ptr %i.iph, align 8
  store <2 x ptr> %i.ipi, ptr %i.ips, align 8
  %.sroa.5.0..sroa_idx.i.i2009 = getelementptr inbounds nuw i8, ptr %i.ips, i64 16
  store <2 x ptr> %i.ipj, ptr %.sroa.5.0..sroa_idx.i.i2009, align 8
  %.sroa.7.0..sroa_idx.i.i2011 = getelementptr inbounds nuw i8, ptr %i.ips, i64 32
  store <2 x ptr> %2476, ptr %.sroa.7.0..sroa_idx.i.i2011, align 8
  %.sroa.9.0..sroa_idx.i.i2013 = getelementptr inbounds nuw i8, ptr %i.ips, i64 48
  store <2 x ptr> %i.ipk, ptr %.sroa.9.0..sroa_idx.i.i2013, align 8
  %.sroa.11.0..sroa_idx.i.i2015 = getelementptr inbounds nuw i8, ptr %i.ips, i64 64
  store ptr %i.ipl, ptr %.sroa.11.0..sroa_idx.i.i2015, align 8
  %.sroa.12.0..sroa_idx.i.i2016 = getelementptr inbounds nuw i8, ptr %i.ips, i64 72
  store ptr %i.ipr, ptr %.sroa.12.0..sroa_idx.i.i2016, align 8
  %i.ipu = getelementptr inbounds nuw i8, ptr %311, i64 8
  store ptr %i.ipt, ptr %i.ipu, align 8
  call void @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase9AddInputsESt6vectorIPNS1_4NodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(184) %831, ptr noundef nonnull %311) #10
  %i.ipv = load ptr, ptr %311, align 8            ; 3 uses
  %.not.i.i.i.i.i2017 = icmp eq ptr %i.ipv, null
  br i1 %.not.i.i.i.i.i2017, label %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_NS0_8Float32TEEJNS0_5TNodeIS4_EESC_SC_SC_SC_NSB_IS5_EESC_NSB_IS9_EESC_NSB_ISA_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit2018, label %bb.vc

bb.vc:                                            ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7340
  %i.ipw = load ptr, ptr %i.iph, align 8
  %i.ipx = ptrtoint ptr %i.ipw to i64
  %i.ipy = ptrtoint ptr %i.ipv to i64
  %i.ipz = sub i64 %i.ipx, %i.ipy
  call void @_ZdlPvm(ptr noundef nonnull %i.ipv, i64 noundef %i.ipz) #11
  br label %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_NS0_8Float32TEEJNS0_5TNodeIS4_EESC_SC_SC_SC_NSB_IS5_EESC_NSB_IS9_EESC_NSB_ISA_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit2018

_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_NS0_8Float32TEEJNS0_5TNodeIS4_EESC_SC_SC_SC_NSB_IS5_EESC_NSB_IS9_EESC_NSB_ISA_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit2018: ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7340, %bb.vc
  call void @llvm.lifetime.end.p0(ptr nonnull %311)
  call void @_ZN2v88internal8compiler13CodeAssembler4GotoEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %694, ptr noundef nonnull %i.akq) #10
  br label %bb.vd

bb.vd:                                            ; preds = %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_NS0_8Float32TEEJNS0_5TNodeIS4_EESC_SC_SC_SC_NSB_IS5_EESC_NSB_IS9_EESC_NSB_ISA_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit2018, %bb.uz
  call void @llvm.lifetime.start.p0(ptr nonnull %1814) #10
  store ptr null, ptr %1814, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1815) #10
  store ptr null, ptr %1815, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1816) #10
  store ptr null, ptr %1816, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1817) #10
  store ptr null, ptr %1817, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1818) #10
  store ptr null, ptr %1818, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1819) #10
  store ptr null, ptr %1819, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1820) #10
  store ptr null, ptr %1820, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1821) #10
  store ptr null, ptr %1821, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1822) #10
  store ptr null, ptr %1822, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1823) #10
  store ptr null, ptr %1823, align 8
  %i.iqa = getelementptr inbounds nuw i8, ptr %831, i64 64
  %i.iqb = load i64, ptr %i.iqa, align 8
  %.not14762 = icmp eq i64 %i.iqb, 0
  br i1 %.not14762, label %bb.vg, label %bb.ve

bb.ve:                                            ; preds = %bb.vd
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %694, ptr noundef nonnull %i.akq) #10
  call void @_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_7IntPtrTES3_S3_S3_S3_NS0_5BoolTES3_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES3_NS0_8Float32TEEE10CreatePhisEPNS0_5TNodeIS3_EESD_SD_SD_SD_PNSB_IS4_EESD_PNSB_IS8_EESD_PNSB_IS9_EE(ptr noundef nonnull align 8 dereferenceable(184) %831, ptr noundef nonnull %1814, ptr noundef nonnull %1815, ptr noundef nonnull %1816, ptr noundef nonnull %1817, ptr noundef nonnull %1818, ptr noundef nonnull %1819, ptr noundef nonnull %1820, ptr noundef nonnull %1821, ptr noundef nonnull %1822, ptr noundef nonnull %1823)
  %i.iqc = load ptr, ptr %1814, align 8
  %i.iqd = load ptr, ptr %1815, align 8
  %i.iqe = load ptr, ptr %1816, align 8
  %i.iqf = load ptr, ptr %1817, align 8
  %i.iqg = load ptr, ptr %1818, align 8
  %i.iqh = load ptr, ptr %1819, align 8
  %i.iqi = load ptr, ptr %1820, align 8
  %i.iqj = load ptr, ptr %1821, align 8
  %i.iqk = load ptr, ptr %1822, align 8
  %i.iql = load ptr, ptr %1823, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %310)
  %i.iqm = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #12 ; 12 uses
  store ptr %i.iqm, ptr %310, align 8
  %i.iqn = getelementptr inbounds nuw i8, ptr %i.iqm, i64 80 ; 2 uses
  %i.iqo = getelementptr inbounds nuw i8, ptr %310, i64 16 ; 2 uses
  store ptr %i.iqn, ptr %i.iqo, align 8
  store ptr %i.iqc, ptr %i.iqm, align 8
  %.sroa.4.0..sroa_idx.i.i2019 = getelementptr inbounds nuw i8, ptr %i.iqm, i64 8
  store ptr %i.iqd, ptr %.sroa.4.0..sroa_idx.i.i2019, align 8
  %.sroa.5.0..sroa_idx.i.i2020 = getelementptr inbounds nuw i8, ptr %i.iqm, i64 16
  store ptr %i.iqe, ptr %.sroa.5.0..sroa_idx.i.i2020, align 8
  %.sroa.6.0..sroa_idx.i.i2021 = getelementptr inbounds nuw i8, ptr %i.iqm, i64 24
  store ptr %i.iqf, ptr %.sroa.6.0..sroa_idx.i.i2021, align 8
  %.sroa.7.0..sroa_idx.i.i2022 = getelementptr inbounds nuw i8, ptr %i.iqm, i64 32
  store ptr %i.iqg, ptr %.sroa.7.0..sroa_idx.i.i2022, align 8
  %.sroa.8.0..sroa_idx.i.i2023 = getelementptr inbounds nuw i8, ptr %i.iqm, i64 40
  store ptr %i.iqh, ptr %.sroa.8.0..sroa_idx.i.i2023, align 8
  %.sroa.9.0..sroa_idx.i.i2024 = getelementptr inbounds nuw i8, ptr %i.iqm, i64 48
  store ptr %i.iqi, ptr %.sroa.9.0..sroa_idx.i.i2024, align 8
  %.sroa.10.0..sroa_idx.i.i2025 = getelementptr inbounds nuw i8, ptr %i.iqm, i64 56
  store ptr %i.iqj, ptr %.sroa.10.0..sroa_idx.i.i2025, align 8
  %.sroa.11.0..sroa_idx.i.i2026 = getelementptr inbounds nuw i8, ptr %i.iqm, i64 64
  store ptr %i.iqk, ptr %.sroa.11.0..sroa_idx.i.i2026, align 8
  %.sroa.12.0..sroa_idx.i.i2027 = getelementptr inbounds nuw i8, ptr %i.iqm, i64 72
  store ptr %i.iql, ptr %.sroa.12.0..sroa_idx.i.i2027, align 8
  %i.iqp = getelementptr inbounds nuw i8, ptr %310, i64 8
  store ptr %i.iqn, ptr %i.iqp, align 8
  call void @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase9AddInputsESt6vectorIPNS1_4NodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(184) %839, ptr noundef nonnull %310) #10
  %i.iqq = load ptr, ptr %310, align 8            ; 3 uses
  %.not.i.i.i.i.i2028 = icmp eq ptr %i.iqq, null
  br i1 %.not.i.i.i.i.i2028, label %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_NS0_8Float32TEEJNS0_5TNodeIS4_EESC_SC_SC_SC_NSB_IS5_EESC_NSB_IS9_EESC_NSB_ISA_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit2029, label %bb.vf

bb.vf:                                            ; preds = %bb.ve
  %i.iqr = load ptr, ptr %i.iqo, align 8
  %i.iqs = ptrtoint ptr %i.iqr to i64
  %i.iqt = ptrtoint ptr %i.iqq to i64
  %i.iqu = sub i64 %i.iqs, %i.iqt
  call void @_ZdlPvm(ptr noundef nonnull %i.iqq, i64 noundef %i.iqu) #11
  br label %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_NS0_8Float32TEEJNS0_5TNodeIS4_EESC_SC_SC_SC_NSB_IS5_EESC_NSB_IS9_EESC_NSB_ISA_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit2029

_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_NS0_8Float32TEEJNS0_5TNodeIS4_EESC_SC_SC_SC_NSB_IS5_EESC_NSB_IS9_EESC_NSB_ISA_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit2029: ; preds = %bb.ve, %bb.vf
  call void @llvm.lifetime.end.p0(ptr nonnull %310)
  call void @_ZN2v88internal8compiler13CodeAssembler4GotoEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %694, ptr noundef nonnull %i.anc) #10
  br label %bb.vg

bb.vg:                                            ; preds = %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_NS0_8Float32TEEJNS0_5TNodeIS4_EESC_SC_SC_SC_NSB_IS5_EESC_NSB_IS9_EESC_NSB_ISA_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit2029, %bb.vd
  %i.iqv = getelementptr inbounds nuw i8, ptr %832, i64 64
  %i.iqw = load i64, ptr %i.iqv, align 8
  %.not14763 = icmp eq i64 %i.iqw, 0
  br i1 %.not14763, label %bb.vk, label %bb.vh

bb.vh:                                            ; preds = %bb.vg
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %694, ptr noundef nonnull %i.aky) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %53)
  %i.iqx = call noalias noundef nonnull dereferenceable(9) ptr @_Znwm(i64 noundef 9) #12 ; 4 uses
  store ptr %i.iqx, ptr %53, align 8
  %i.iqy = getelementptr inbounds nuw i8, ptr %i.iqx, i64 9 ; 2 uses
  %i.iqz = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 2 uses
  store ptr %i.iqy, ptr %i.iqz, align 8
  %.sroa.8.0..sroa_idx.i7359 = getelementptr inbounds nuw i8, ptr %i.iqx, i64 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.iqx, i8 5, i64 5, i1 false)
  store <4 x i8> <i8 4, i8 5, i8 9, i8 5>, ptr %.sroa.8.0..sroa_idx.i7359, align 1
  %i.ira = getelementptr inbounds nuw i8, ptr %53, i64 8
  store ptr %i.iqy, ptr %i.ira, align 8
  %i.irb = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %832, ptr noundef nonnull %53) #10
  %i.irc = load ptr, ptr %53, align 8             ; 3 uses
  %.not.i.i.i.i7363 = icmp eq ptr %i.irc, null
  br i1 %.not.i.i.i.i7363, label %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7364, label %bb.vi

bb.vi:                                            ; preds = %bb.vh
  %i.ird = load ptr, ptr %i.iqz, align 8
  %i.ire = ptrtoint ptr %i.ird to i64
  %i.irf = ptrtoint ptr %i.irc to i64
  %i.irg = sub i64 %i.ire, %i.irf
  call void @_ZdlPvm(ptr noundef nonnull %i.irc, i64 noundef %i.irg) #11
  br label %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7364

_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7364: ; preds = %bb.vi, %bb.vh
  %i.irh = load ptr, ptr %i.irb, align 8          ; 5 uses
  %i.iri = getelementptr inbounds nuw i8, ptr %i.irh, i64 16
  %i.irj = getelementptr inbounds nuw i8, ptr %i.irh, i64 32
  %i.irk = getelementptr inbounds nuw i8, ptr %i.irh, i64 48
  %i.irl = getelementptr inbounds nuw i8, ptr %i.irh, i64 64
  %i.irm = load ptr, ptr %i.irl, align 8
  %i.irn = getelementptr inbounds nuw i8, ptr %309, i64 16 ; 2 uses
  %i.iro = load <2 x ptr>, ptr %i.irh, align 8
  %i.irp = load <2 x ptr>, ptr %i.iri, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %53)
  call void @llvm.lifetime.start.p0(ptr nonnull %309)
  %i.irq = load <2 x ptr>, ptr %i.irj, align 8
  %i.irr = load <2 x ptr>, ptr %i.irk, align 8
  %i.irs = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #12 ; 7 uses
  store ptr %i.irs, ptr %309, align 8
  %i.irt = getelementptr inbounds nuw i8, ptr %i.irs, i64 72 ; 2 uses
  store ptr %i.irt, ptr %i.irn, align 8
  store <2 x ptr> %i.iro, ptr %i.irs, align 8
  %.sroa.5.0..sroa_idx.i.i2031 = getelementptr inbounds nuw i8, ptr %i.irs, i64 16
  store <2 x ptr> %i.irp, ptr %.sroa.5.0..sroa_idx.i.i2031, align 8
  %.sroa.7.0..sroa_idx.i.i2033 = getelementptr inbounds nuw i8, ptr %i.irs, i64 32
  store <2 x ptr> %i.irq, ptr %.sroa.7.0..sroa_idx.i.i2033, align 8
  %.sroa.9.0..sroa_idx.i.i2035 = getelementptr inbounds nuw i8, ptr %i.irs, i64 48
  store <2 x ptr> %i.irr, ptr %.sroa.9.0..sroa_idx.i.i2035, align 8
  %.sroa.11.0..sroa_idx.i.i2037 = getelementptr inbounds nuw i8, ptr %i.irs, i64 64
  store ptr %i.irm, ptr %.sroa.11.0..sroa_idx.i.i2037, align 8
  %i.iru = getelementptr inbounds nuw i8, ptr %309, i64 8
  store ptr %i.irt, ptr %i.iru, align 8
  call void @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase9AddInputsESt6vectorIPNS1_4NodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(184) %837, ptr noundef nonnull %309) #10
  %i.irv = load ptr, ptr %309, align 8            ; 3 uses
  %.not.i.i.i.i.i2038 = icmp eq ptr %i.irv, null
  br i1 %.not.i.i.i.i.i2038, label %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_EJNS0_5TNodeIS4_EESB_SB_SB_SB_NSA_IS5_EESB_NSA_IS9_EESB_EEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit2039, label %bb.vj

bb.vj:                                            ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7364
  %i.irw = load ptr, ptr %i.irn, align 8
  %i.irx = ptrtoint ptr %i.irw to i64
  %i.iry = ptrtoint ptr %i.irv to i64
  %i.irz = sub i64 %i.irx, %i.iry
  call void @_ZdlPvm(ptr noundef nonnull %i.irv, i64 noundef %i.irz) #11
  br label %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_EJNS0_5TNodeIS4_EESB_SB_SB_SB_NSA_IS5_EESB_NSA_IS9_EESB_EEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit2039

_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_EJNS0_5TNodeIS4_EESB_SB_SB_SB_NSA_IS5_EESB_NSA_IS9_EESB_EEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit2039: ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7364, %bb.vj
  call void @llvm.lifetime.end.p0(ptr nonnull %309)
  call void @_ZN2v88internal8compiler13CodeAssembler4GotoEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %694, ptr noundef nonnull %i.amm) #10
  br label %bb.vk

bb.vk:                                            ; preds = %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_EJNS0_5TNodeIS4_EESB_SB_SB_SB_NSA_IS5_EESB_NSA_IS9_EESB_EEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit2039, %bb.vg
  %i.isa = getelementptr inbounds nuw i8, ptr %833, i64 64
  %i.isb = load i64, ptr %i.isa, align 8
  %.not14764 = icmp eq i64 %i.isb, 0
  br i1 %.not14764, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit2043, label %bb.vl

bb.vl:                                            ; preds = %bb.vk
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %694, ptr noundef nonnull %i.alg) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %52)
  %i.isc = call noalias noundef nonnull dereferenceable(9) ptr @_Znwm(i64 noundef 9) #12 ; 4 uses
  store ptr %i.isc, ptr %52, align 8
  %i.isd = getelementptr inbounds nuw i8, ptr %i.isc, i64 9 ; 2 uses
  %i.ise = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 2 uses
  store ptr %i.isd, ptr %i.ise, align 8
  %.sroa.8.0..sroa_idx.i7383 = getelementptr inbounds nuw i8, ptr %i.isc, i64 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.isc, i8 5, i64 5, i1 false)
  store <4 x i8> <i8 4, i8 5, i8 9, i8 5>, ptr %.sroa.8.0..sroa_idx.i7383, align 1
  %i.isf = getelementptr inbounds nuw i8, ptr %52, i64 8
  store ptr %i.isd, ptr %i.isf, align 8
  %i.isg = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %833, ptr noundef nonnull %52) #10
  %i.ish = load ptr, ptr %52, align 8             ; 3 uses
  %.not.i.i.i.i7387 = icmp eq ptr %i.ish, null
  br i1 %.not.i.i.i.i7387, label %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7388, label %bb.vm

bb.vm:                                            ; preds = %bb.vl
  %i.isi = load ptr, ptr %i.ise, align 8
  %i.isj = ptrtoint ptr %i.isi to i64
  %i.isk = ptrtoint ptr %i.ish to i64
  %i.isl = sub i64 %i.isj, %i.isk
  call void @_ZdlPvm(ptr noundef nonnull %i.ish, i64 noundef %i.isl) #11
  br label %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7388

_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7388: ; preds = %bb.vm, %bb.vl
  %i.ism = load ptr, ptr %i.isg, align 8          ; 9 uses
  %i.isn = getelementptr inbounds nuw i8, ptr %i.ism, i64 8
  %i.iso = load ptr, ptr %i.ism, align 8          ; 2 uses
  %i.isp = getelementptr inbounds nuw i8, ptr %i.ism, i64 16
  %i.isq = load ptr, ptr %i.isn, align 8          ; 2 uses
  %i.isr = getelementptr inbounds nuw i8, ptr %i.ism, i64 24
  %i.iss = load ptr, ptr %i.isp, align 8          ; 2 uses
  %i.ist = getelementptr inbounds nuw i8, ptr %i.ism, i64 32
  %i.isu = load ptr, ptr %i.isr, align 8          ; 2 uses
  %i.isv = getelementptr inbounds nuw i8, ptr %i.ism, i64 40
  %i.isw = load ptr, ptr %i.ist, align 8          ; 2 uses
  %i.isx = getelementptr inbounds nuw i8, ptr %i.ism, i64 48
  %i.isy = load ptr, ptr %i.isv, align 8          ; 2 uses
  %i.isz = getelementptr inbounds nuw i8, ptr %i.ism, i64 56
  %i.ita = load ptr, ptr %i.isx, align 8          ; 2 uses
  %i.itb = getelementptr inbounds nuw i8, ptr %i.ism, i64 64
  %i.itc = load ptr, ptr %i.isz, align 8          ; 2 uses
  %i.itd = load ptr, ptr %i.itb, align 8          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %52)
  call void @_ZN2v88internal47FromConstexpr_intptr_constexpr_IntegerLiteral_0EPNS0_8compiler18CodeAssemblerStateENS0_14IntegerLiteralE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.15") align 8 %1824, ptr noundef %i.a, i8 0, i64 0) #10
  %i.ite = load ptr, ptr %1824, align 8, !noalias !4603
  call void @llvm.lifetime.start.p0(ptr nonnull %1826) #10
  call void @_ZN2v88internal17CodeStubAssemblerC1EPNS0_8compiler18CodeAssemblerStateE(ptr noundef nonnull align 8 dereferenceable(16) %1826, ptr noundef %i.a) #10
  store ptr %.sroa.010934.0, ptr %1827, align 8
  store ptr %i.ite, ptr %1828, align 8
  call void @_ZN2v88internal8compiler13CodeAssembler24IntPtrGreaterThanOrEqualENS0_5TNodeINS0_5WordTEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.20") align 8 %1825, ptr noundef nonnull align 8 dereferenceable(8) %1826, ptr noundef nonnull dead_on_return %1827, ptr noundef nonnull dead_on_return %1828) #10
  %i.itf = load ptr, ptr %1825, align 8, !noalias !4604
  call void @_ZN2v88internal8compiler13CodeAssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %1826) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1826) #10
  store ptr %i.itf, ptr %1829, align 8
  %i.itg = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #12 ; 11 uses
  store ptr %i.itg, ptr %1830, align 8
  %i.ith = getelementptr inbounds nuw i8, ptr %i.itg, i64 72 ; 2 uses
  %i.iti = getelementptr inbounds nuw i8, ptr %1830, i64 16 ; 2 uses
  store ptr %i.ith, ptr %i.iti, align 8
  store ptr %i.iso, ptr %i.itg, align 8
  %.sroa.410516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.itg, i64 8
  store ptr %i.isq, ptr %.sroa.410516.0..sroa_idx, align 8
  %.sroa.510517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.itg, i64 16
  store ptr %i.iss, ptr %.sroa.510517.0..sroa_idx, align 8
  %.sroa.610518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.itg, i64 24
  store ptr %i.isu, ptr %.sroa.610518.0..sroa_idx, align 8
  %.sroa.710519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.itg, i64 32
  store ptr %i.isw, ptr %.sroa.710519.0..sroa_idx, align 8
  %.sroa.810520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.itg, i64 40
  store ptr %i.isy, ptr %.sroa.810520.0..sroa_idx, align 8
  %.sroa.910521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.itg, i64 48
  store ptr %i.ita, ptr %.sroa.910521.0..sroa_idx, align 8
  %.sroa.1010522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.itg, i64 56
  store ptr %i.itc, ptr %.sroa.1010522.0..sroa_idx, align 8
  %.sroa.1110523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.itg, i64 64
  store ptr %i.itd, ptr %.sroa.1110523.0..sroa_idx, align 8
  %i.itj = getelementptr inbounds nuw i8, ptr %1830, i64 8
  store ptr %i.ith, ptr %i.itj, align 8
  %i.itk = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #12 ; 11 uses
  store ptr %i.itk, ptr %1831, align 8
  %i.itl = getelementptr inbounds nuw i8, ptr %i.itk, i64 72 ; 2 uses
  %i.itm = getelementptr inbounds nuw i8, ptr %1831, i64 16 ; 2 uses
  store ptr %i.itl, ptr %i.itm, align 8
  store ptr %i.iso, ptr %i.itk, align 8
  %.sroa.410506.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.itk, i64 8
  store ptr %i.isq, ptr %.sroa.410506.0..sroa_idx, align 8
  %.sroa.510507.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.itk, i64 16
  store ptr %i.iss, ptr %.sroa.510507.0..sroa_idx, align 8
  %.sroa.610508.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.itk, i64 24
  store ptr %i.isu, ptr %.sroa.610508.0..sroa_idx, align 8
  %.sroa.710509.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.itk, i64 32
  store ptr %i.isw, ptr %.sroa.710509.0..sroa_idx, align 8
  %.sroa.810510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.itk, i64 40
  store ptr %i.isy, ptr %.sroa.810510.0..sroa_idx, align 8
  %.sroa.910511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.itk, i64 48
  store ptr %i.ita, ptr %.sroa.910511.0..sroa_idx, align 8
  %.sroa.1010512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.itk, i64 56
  store ptr %i.itc, ptr %.sroa.1010512.0..sroa_idx, align 8
  %.sroa.1110513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.itk, i64 64
  store ptr %i.itd, ptr %.sroa.1110513.0..sroa_idx, align 8
  %i.itn = getelementptr inbounds nuw i8, ptr %1831, i64 8
  store ptr %i.itl, ptr %i.itn, align 8
  call void @_ZN2v88internal8compiler13CodeAssembler6BranchIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_EJS4_S4_S4_S4_S4_S5_S4_S9_S4_EEEvNS0_5TNodeIS5_EEPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEESt6vectorIPNS1_4NodeESaISJ_EEPNSC_IJDpT0_EEESL_(ptr noundef nonnull align 8 dereferenceable(8) %694, ptr noundef nonnull dead_on_return %1829, ptr noundef nonnull %834, ptr noundef nonnull %1830, ptr noundef nonnull %835, ptr noundef nonnull %1831)
  %i.ito = load ptr, ptr %1831, align 8           ; 3 uses
  %.not.i.i.i2040 = icmp eq ptr %i.ito, null
  br i1 %.not.i.i.i2040, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit2041, label %bb.vn

bb.vn:                                            ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7388
  %i.itp = load ptr, ptr %i.itm, align 8
  %i.itq = ptrtoint ptr %i.itp to i64
  %i.itr = ptrtoint ptr %i.ito to i64
  %i.its = sub i64 %i.itq, %i.itr
  call void @_ZdlPvm(ptr noundef nonnull %i.ito, i64 noundef %i.its) #11
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit2041

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit2041: ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7388, %bb.vn
  %i.itt = load ptr, ptr %1830, align 8           ; 3 uses
  %.not.i.i.i2042 = icmp eq ptr %i.itt, null
  br i1 %.not.i.i.i2042, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit2043, label %bb.vo

bb.vo:                                            ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit2041
  %i.itu = load ptr, ptr %i.iti, align 8
  %i.itv = ptrtoint ptr %i.itu to i64
  %i.itw = ptrtoint ptr %i.itt to i64
  %i.itx = sub i64 %i.itv, %i.itw
  call void @_ZdlPvm(ptr noundef nonnull %i.itt, i64 noundef %i.itx) #11
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit2043

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit2043: ; preds = %bb.vo, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit2041, %bb.vk
  %i.ity = getelementptr inbounds nuw i8, ptr %834, i64 64
  %i.itz = load i64, ptr %i.ity, align 8
  %.not14765 = icmp eq i64 %i.itz, 0
  br i1 %.not14765, label %bb.vs, label %bb.vp

bb.vp:                                            ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit2043
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %694, ptr noundef nonnull %i.alo) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %51)
  %i.iua = call noalias noundef nonnull dereferenceable(9) ptr @_Znwm(i64 noundef 9) #12 ; 4 uses
  store ptr %i.iua, ptr %51, align 8
  %i.iub = getelementptr inbounds nuw i8, ptr %i.iua, i64 9 ; 2 uses
  %i.iuc = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 2 uses
  store ptr %i.iub, ptr %i.iuc, align 8
  %.sroa.8.0..sroa_idx.i7407 = getelementptr inbounds nuw i8, ptr %i.iua, i64 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.iua, i8 5, i64 5, i1 false)
  store <4 x i8> <i8 4, i8 5, i8 9, i8 5>, ptr %.sroa.8.0..sroa_idx.i7407, align 1
  %i.iud = getelementptr inbounds nuw i8, ptr %51, i64 8
  store ptr %i.iub, ptr %i.iud, align 8
  %i.iue = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %834, ptr noundef nonnull %51) #10
  %i.iuf = load ptr, ptr %51, align 8             ; 3 uses
  %.not.i.i.i.i7411 = icmp eq ptr %i.iuf, null
  br i1 %.not.i.i.i.i7411, label %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7412, label %bb.vq

bb.vq:                                            ; preds = %bb.vp
  %i.iug = load ptr, ptr %i.iuc, align 8
  %i.iuh = ptrtoint ptr %i.iug to i64
  %i.iui = ptrtoint ptr %i.iuf to i64
  %i.iuj = sub i64 %i.iuh, %i.iui
  call void @_ZdlPvm(ptr noundef nonnull %i.iuf, i64 noundef %i.iuj) #11
  br label %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7412

_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7412: ; preds = %bb.vq, %bb.vp
  %i.iuk = load ptr, ptr %i.iue, align 8          ; 6 uses
  %i.iul = getelementptr inbounds nuw i8, ptr %i.iuk, i64 16
  %i.ium = getelementptr inbounds nuw i8, ptr %i.iuk, i64 32
  %i.iun = getelementptr inbounds nuw i8, ptr %i.iuk, i64 48
  %i.iuo = getelementptr inbounds nuw i8, ptr %i.iuk, i64 56
  %i.iup = getelementptr inbounds nuw i8, ptr %i.iuk, i64 64
  %i.iuq = getelementptr inbounds nuw i8, ptr %1832, i64 8
  %i.iur = getelementptr inbounds nuw i8, ptr %300, i64 16 ; 2 uses
  %i.ius = load <2 x ptr>, ptr %i.iuk, align 8
  %i.iut = load <2 x ptr>, ptr %i.iul, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %51)
  call void @llvm.lifetime.start.p0(ptr nonnull %1832) #10
  %2477 = load <2 x ptr>, ptr %i.ium, align 8
  %i.iuu = load <2 x ptr>, ptr %i.iun, align 8
  %i.iuv = load ptr, ptr %i.iup, align 8
  %i.iuw = load <2 x ptr>, ptr %i.iuo, align 8
  store <2 x ptr> %i.iuw, ptr %1833, align 16
  call void @_ZN2v88internal15RefCast_int64_0EPNS0_8compiler18CodeAssemblerStateENS0_30TorqueStructReference_intptr_0E(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::TorqueStructReference_int64_0") align 8 %1832, ptr noundef %i.a, ptr noundef nonnull dead_on_return %1833)
  %i.iux = load ptr, ptr %i.iuq, align 8, !noalias !4605
  %i.iuy = load ptr, ptr %1832, align 8, !noalias !4605
  call void @llvm.lifetime.end.p0(ptr nonnull %1832) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %1834) #10
  call void @_ZN2v88internal17CodeStubAssemblerC1EPNS0_8compiler18CodeAssemblerStateE(ptr noundef nonnull align 8 dereferenceable(16) %1834, ptr noundef %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %306)
  call void @llvm.lifetime.start.p0(ptr nonnull %307)
  call void @llvm.lifetime.start.p0(ptr nonnull %308)
  call void @llvm.lifetime.start.p0(ptr nonnull %305) #10, !noalias !4606
  call void @_ZN2v88internal8compiler13CodeAssembler14IntPtrConstantEl(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.15") align 8 %306, ptr noundef nonnull align 8 dereferenceable(16) %1834, i64 noundef 1) #10, !noalias !4606
  call void @llvm.lifetime.start.p0(ptr nonnull %303), !noalias !4606
  call void @llvm.lifetime.start.p0(ptr nonnull %304), !noalias !4606
  store ptr %i.iux, ptr %303, align 8, !noalias !4607
  %i.iuz = load ptr, ptr %306, align 8, !noalias !4607
  store ptr %i.iuz, ptr %304, align 8, !noalias !4607
  call void @_ZN2v88internal8compiler13CodeAssembler9IntPtrSubENS0_5TNodeINS0_5WordTEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.22") align 8 %305, ptr noundef nonnull align 8 dereferenceable(16) %1834, ptr noundef nonnull dead_on_return %303, ptr noundef nonnull dead_on_return %304) #10, !noalias !4606
  call void @llvm.lifetime.end.p0(ptr nonnull %303), !noalias !4606
  call void @llvm.lifetime.end.p0(ptr nonnull %304), !noalias !4606
  store ptr %i.iuy, ptr %307, align 8, !noalias !4606
  %i.iva = load ptr, ptr %305, align 8, !noalias !4606
  store ptr %i.iva, ptr %308, align 8, !noalias !4606
  %i.ivb = call noundef ptr @_ZN2v88internal8compiler13CodeAssembler14LoadFromObjectENS0_11MachineTypeENS0_5TNodeINS0_6ObjectEEENS4_INS0_7IntPtrTEEE(ptr noundef nonnull align 8 dereferenceable(16) %1834, i16 1029, ptr noundef nonnull dead_on_return %307, ptr noundef nonnull dead_on_return %308) #10, !noalias !4606
  call void @llvm.lifetime.end.p0(ptr nonnull %305) #10, !noalias !4606
  call void @llvm.lifetime.end.p0(ptr nonnull %306)
  call void @llvm.lifetime.end.p0(ptr nonnull %307)
  call void @llvm.lifetime.end.p0(ptr nonnull %308)
  call void @_ZN2v88internal8compiler13CodeAssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %1834) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1834) #10
  call void @_ZN2v88internal46FromConstexpr_int64_constexpr_IntegerLiteral_0EPNS0_8compiler18CodeAssemblerStateENS0_14IntegerLiteralE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.185") align 8 %1835, ptr noundef %i.a, i8 0, i64 32) #10
  %i.ivc = load ptr, ptr %1835, align 8, !noalias !4608
  call void @llvm.lifetime.start.p0(ptr nonnull %1837) #10
  call void @_ZN2v88internal17CodeStubAssemblerC1EPNS0_8compiler18CodeAssemblerStateE(ptr noundef nonnull align 8 dereferenceable(16) %1837, ptr noundef %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %301)
  call void @llvm.lifetime.start.p0(ptr nonnull %302)
  store ptr %i.ivb, ptr %301, align 8, !noalias !4609
  store ptr %i.ivc, ptr %302, align 8, !noalias !4609
  call void @_ZN2v88internal8compiler13CodeAssembler9Word64SarENS0_5TNodeINS0_7Word64TEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.193") align 8 %1836, ptr noundef nonnull align 8 dereferenceable(8) %1837, ptr noundef nonnull dead_on_return %301, ptr noundef nonnull dead_on_return %302) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %301)
  call void @llvm.lifetime.end.p0(ptr nonnull %302)
  %i.ivd = load ptr, ptr %1836, align 8, !noalias !4610
  call void @_ZN2v88internal8compiler13CodeAssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %1837) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1837) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %1839) #10
  call void @_ZN2v88internal17CodeStubAssemblerC1EPNS0_8compiler18CodeAssemblerStateE(ptr noundef nonnull align 8 dereferenceable(16) %1839, ptr noundef %i.a) #10
  store ptr %i.ivd, ptr %1840, align 8
  call void @_ZN2v88internal8compiler13CodeAssembler20TruncateInt64ToInt32ENS0_5TNodeINS0_6Int64TEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode") align 8 %1838, ptr noundef nonnull align 8 dereferenceable(8) %1839, ptr noundef nonnull dead_on_return %1840) #10
  %i.ive = load ptr, ptr %1838, align 8, !noalias !4611
  call void @_ZN2v88internal8compiler13CodeAssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %1839) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1839) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %1842) #10
  call void @_ZN2v88internal17CodeStubAssemblerC1EPNS0_8compiler18CodeAssemblerStateE(ptr noundef nonnull align 8 dereferenceable(16) %1842, ptr noundef %i.a) #10
  store ptr %i.ive, ptr %1843, align 8
  call void @_ZN2v88internal8compiler13CodeAssembler21BitcastInt32ToFloat32ENS0_5TNodeINS0_7Word32TEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.14") align 8 %1841, ptr noundef nonnull align 8 dereferenceable(8) %1842, ptr noundef nonnull dead_on_return %1843) #10
  %i.ivf = load ptr, ptr %1841, align 8, !noalias !4612
  call void @_ZN2v88internal8compiler13CodeAssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %1842) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1842) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %300)
  %i.ivg = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #12 ; 8 uses
  store ptr %i.ivg, ptr %300, align 8
  %i.ivh = getelementptr inbounds nuw i8, ptr %i.ivg, i64 80 ; 2 uses
  store ptr %i.ivh, ptr %i.iur, align 8
  store <2 x ptr> %i.ius, ptr %i.ivg, align 8
  %.sroa.5.0..sroa_idx.i.i2045 = getelementptr inbounds nuw i8, ptr %i.ivg, i64 16
  store <2 x ptr> %i.iut, ptr %.sroa.5.0..sroa_idx.i.i2045, align 8
  %.sroa.7.0..sroa_idx.i.i2047 = getelementptr inbounds nuw i8, ptr %i.ivg, i64 32
  store <2 x ptr> %2477, ptr %.sroa.7.0..sroa_idx.i.i2047, align 8
  %.sroa.9.0..sroa_idx.i.i2049 = getelementptr inbounds nuw i8, ptr %i.ivg, i64 48
  store <2 x ptr> %i.iuu, ptr %.sroa.9.0..sroa_idx.i.i2049, align 8
  %.sroa.11.0..sroa_idx.i.i2051 = getelementptr inbounds nuw i8, ptr %i.ivg, i64 64
  store ptr %i.iuv, ptr %.sroa.11.0..sroa_idx.i.i2051, align 8
  %.sroa.12.0..sroa_idx.i.i2052 = getelementptr inbounds nuw i8, ptr %i.ivg, i64 72
  store ptr %i.ivf, ptr %.sroa.12.0..sroa_idx.i.i2052, align 8
  %i.ivi = getelementptr inbounds nuw i8, ptr %300, i64 8
  store ptr %i.ivh, ptr %i.ivi, align 8
  call void @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase9AddInputsESt6vectorIPNS1_4NodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(184) %836, ptr noundef nonnull %300) #10
  %i.ivj = load ptr, ptr %300, align 8            ; 3 uses
  %.not.i.i.i.i.i2053 = icmp eq ptr %i.ivj, null
  br i1 %.not.i.i.i.i.i2053, label %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_NS0_8Float32TEEJNS0_5TNodeIS4_EESC_SC_SC_SC_NSB_IS5_EESC_NSB_IS9_EESC_NSB_ISA_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit2054, label %bb.vr

bb.vr:                                            ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7412
  %i.ivk = load ptr, ptr %i.iur, align 8
  %i.ivl = ptrtoint ptr %i.ivk to i64
  %i.ivm = ptrtoint ptr %i.ivj to i64
  %i.ivn = sub i64 %i.ivl, %i.ivm
  call void @_ZdlPvm(ptr noundef nonnull %i.ivj, i64 noundef %i.ivn) #11
  br label %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_NS0_8Float32TEEJNS0_5TNodeIS4_EESC_SC_SC_SC_NSB_IS5_EESC_NSB_IS9_EESC_NSB_ISA_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit2054

_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_NS0_8Float32TEEJNS0_5TNodeIS4_EESC_SC_SC_SC_NSB_IS5_EESC_NSB_IS9_EESC_NSB_ISA_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit2054: ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7412, %bb.vr
  call void @llvm.lifetime.end.p0(ptr nonnull %300)
  call void @_ZN2v88internal8compiler13CodeAssembler4GotoEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %694, ptr noundef nonnull %i.ame) #10
  br label %bb.vs

bb.vs:                                            ; preds = %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_NS0_8Float32TEEJNS0_5TNodeIS4_EESC_SC_SC_SC_NSB_IS5_EESC_NSB_IS9_EESC_NSB_ISA_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit2054, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit2043
  %i.ivo = getelementptr inbounds nuw i8, ptr %835, i64 64
  %i.ivp = load i64, ptr %i.ivo, align 8
  %.not14766 = icmp eq i64 %i.ivp, 0
  br i1 %.not14766, label %bb.vw, label %bb.vt

bb.vt:                                            ; preds = %bb.vs
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %694, ptr noundef nonnull %i.alw) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %50)
  %i.ivq = call noalias noundef nonnull dereferenceable(9) ptr @_Znwm(i64 noundef 9) #12 ; 4 uses
  store ptr %i.ivq, ptr %50, align 8
  %i.ivr = getelementptr inbounds nuw i8, ptr %i.ivq, i64 9 ; 2 uses
  %i.ivs = getelementptr inbounds nuw i8, ptr %50, i64 16 ; 2 uses
  store ptr %i.ivr, ptr %i.ivs, align 8
  %.sroa.8.0..sroa_idx.i7431 = getelementptr inbounds nuw i8, ptr %i.ivq, i64 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ivq, i8 5, i64 5, i1 false)
  store <4 x i8> <i8 4, i8 5, i8 9, i8 5>, ptr %.sroa.8.0..sroa_idx.i7431, align 1
  %i.ivt = getelementptr inbounds nuw i8, ptr %50, i64 8
  store ptr %i.ivr, ptr %i.ivt, align 8
  %i.ivu = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %835, ptr noundef nonnull %50) #10
  %i.ivv = load ptr, ptr %50, align 8             ; 3 uses
  %.not.i.i.i.i7435 = icmp eq ptr %i.ivv, null
  br i1 %.not.i.i.i.i7435, label %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7436, label %bb.vu

bb.vu:                                            ; preds = %bb.vt
  %i.ivw = load ptr, ptr %i.ivs, align 8
  %i.ivx = ptrtoint ptr %i.ivw to i64
  %i.ivy = ptrtoint ptr %i.ivv to i64
  %i.ivz = sub i64 %i.ivx, %i.ivy
  call void @_ZdlPvm(ptr noundef nonnull %i.ivv, i64 noundef %i.ivz) #11
  br label %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7436

_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7436: ; preds = %bb.vu, %bb.vt
  %i.iwa = load ptr, ptr %i.ivu, align 8          ; 6 uses
  %i.iwb = getelementptr inbounds nuw i8, ptr %i.iwa, i64 16
  %i.iwc = getelementptr inbounds nuw i8, ptr %i.iwa, i64 32
  %i.iwd = getelementptr inbounds nuw i8, ptr %i.iwa, i64 48
  %i.iwe = getelementptr inbounds nuw i8, ptr %i.iwa, i64 56
  %i.iwf = getelementptr inbounds nuw i8, ptr %i.iwa, i64 64
  %i.iwg = getelementptr inbounds nuw i8, ptr %1844, i64 8
  %i.iwh = getelementptr inbounds nuw i8, ptr %293, i64 16 ; 2 uses
  %i.iwi = load <2 x ptr>, ptr %i.iwa, align 8
  %i.iwj = load <2 x ptr>, ptr %i.iwb, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %50)
  call void @llvm.lifetime.start.p0(ptr nonnull %1844) #10
  %2478 = load <2 x ptr>, ptr %i.iwc, align 8
  %i.iwk = load <2 x ptr>, ptr %i.iwd, align 8
  %i.iwl = load ptr, ptr %i.iwf, align 8
  %i.iwm = load <2 x ptr>, ptr %i.iwe, align 8
  store <2 x ptr> %i.iwm, ptr %1845, align 16
  call void @_ZN2v88internal17RefCast_float32_0EPNS0_8compiler18CodeAssemblerStateENS0_30TorqueStructReference_intptr_0E(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::TorqueStructReference_float32_0") align 8 %1844, ptr noundef %i.a, ptr noundef nonnull dead_on_return %1845)
  %i.iwn = load ptr, ptr %i.iwg, align 8, !noalias !4613
  %i.iwo = load ptr, ptr %1844, align 8, !noalias !4613
  call void @llvm.lifetime.end.p0(ptr nonnull %1844) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %1846) #10
  call void @_ZN2v88internal17CodeStubAssemblerC1EPNS0_8compiler18CodeAssemblerStateE(ptr noundef nonnull align 8 dereferenceable(16) %1846, ptr noundef %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %297)
  call void @llvm.lifetime.start.p0(ptr nonnull %298)
  call void @llvm.lifetime.start.p0(ptr nonnull %299)
  call void @llvm.lifetime.start.p0(ptr nonnull %296) #10, !noalias !4614
  call void @_ZN2v88internal8compiler13CodeAssembler14IntPtrConstantEl(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.15") align 8 %297, ptr noundef nonnull align 8 dereferenceable(16) %1846, i64 noundef 1) #10, !noalias !4614
  call void @llvm.lifetime.start.p0(ptr nonnull %294), !noalias !4614
  call void @llvm.lifetime.start.p0(ptr nonnull %295), !noalias !4614
  store ptr %i.iwn, ptr %294, align 8, !noalias !4615
  %i.iwp = load ptr, ptr %297, align 8, !noalias !4615
  store ptr %i.iwp, ptr %295, align 8, !noalias !4615
  call void @_ZN2v88internal8compiler13CodeAssembler9IntPtrSubENS0_5TNodeINS0_5WordTEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.22") align 8 %296, ptr noundef nonnull align 8 dereferenceable(16) %1846, ptr noundef nonnull dead_on_return %294, ptr noundef nonnull dead_on_return %295) #10, !noalias !4614
  call void @llvm.lifetime.end.p0(ptr nonnull %294), !noalias !4614
  call void @llvm.lifetime.end.p0(ptr nonnull %295), !noalias !4614
  store ptr %i.iwo, ptr %298, align 8, !noalias !4614
  %i.iwq = load ptr, ptr %296, align 8, !noalias !4614
  store ptr %i.iwq, ptr %299, align 8, !noalias !4614
  %i.iwr = call noundef ptr @_ZN2v88internal8compiler13CodeAssembler14LoadFromObjectENS0_11MachineTypeENS0_5TNodeINS0_6ObjectEEENS4_INS0_7IntPtrTEEE(ptr noundef nonnull align 8 dereferenceable(16) %1846, i16 2065, ptr noundef nonnull dead_on_return %298, ptr noundef nonnull dead_on_return %299) #10, !noalias !4614
  call void @llvm.lifetime.end.p0(ptr nonnull %296) #10, !noalias !4614
  call void @llvm.lifetime.end.p0(ptr nonnull %297)
  call void @llvm.lifetime.end.p0(ptr nonnull %298)
  call void @llvm.lifetime.end.p0(ptr nonnull %299)
  call void @_ZN2v88internal8compiler13CodeAssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %1846) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1846) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %293)
  %i.iws = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #12 ; 8 uses
  store ptr %i.iws, ptr %293, align 8
  %i.iwt = getelementptr inbounds nuw i8, ptr %i.iws, i64 80 ; 2 uses
  store ptr %i.iwt, ptr %i.iwh, align 8
  store <2 x ptr> %i.iwi, ptr %i.iws, align 8
  %.sroa.5.0..sroa_idx.i.i2056 = getelementptr inbounds nuw i8, ptr %i.iws, i64 16
  store <2 x ptr> %i.iwj, ptr %.sroa.5.0..sroa_idx.i.i2056, align 8
  %.sroa.7.0..sroa_idx.i.i2058 = getelementptr inbounds nuw i8, ptr %i.iws, i64 32
  store <2 x ptr> %2478, ptr %.sroa.7.0..sroa_idx.i.i2058, align 8
  %.sroa.9.0..sroa_idx.i.i2060 = getelementptr inbounds nuw i8, ptr %i.iws, i64 48
  store <2 x ptr> %i.iwk, ptr %.sroa.9.0..sroa_idx.i.i2060, align 8
  %.sroa.11.0..sroa_idx.i.i2062 = getelementptr inbounds nuw i8, ptr %i.iws, i64 64
  store ptr %i.iwl, ptr %.sroa.11.0..sroa_idx.i.i2062, align 8
  %.sroa.12.0..sroa_idx.i.i2063 = getelementptr inbounds nuw i8, ptr %i.iws, i64 72
  store ptr %i.iwr, ptr %.sroa.12.0..sroa_idx.i.i2063, align 8
  %i.iwu = getelementptr inbounds nuw i8, ptr %293, i64 8
  store ptr %i.iwt, ptr %i.iwu, align 8
  call void @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase9AddInputsESt6vectorIPNS1_4NodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(184) %836, ptr noundef nonnull %293) #10
  %i.iwv = load ptr, ptr %293, align 8            ; 3 uses
  %.not.i.i.i.i.i2064 = icmp eq ptr %i.iwv, null
  br i1 %.not.i.i.i.i.i2064, label %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_NS0_8Float32TEEJNS0_5TNodeIS4_EESC_SC_SC_SC_NSB_IS5_EESC_NSB_IS9_EESC_NSB_ISA_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit2065, label %bb.vv

bb.vv:                                            ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7436
  %i.iww = load ptr, ptr %i.iwh, align 8
  %i.iwx = ptrtoint ptr %i.iww to i64
  %i.iwy = ptrtoint ptr %i.iwv to i64
  %i.iwz = sub i64 %i.iwx, %i.iwy
  call void @_ZdlPvm(ptr noundef nonnull %i.iwv, i64 noundef %i.iwz) #11
  br label %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_NS0_8Float32TEEJNS0_5TNodeIS4_EESC_SC_SC_SC_NSB_IS5_EESC_NSB_IS9_EESC_NSB_ISA_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit2065

_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_NS0_8Float32TEEJNS0_5TNodeIS4_EESC_SC_SC_SC_NSB_IS5_EESC_NSB_IS9_EESC_NSB_ISA_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit2065: ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7436, %bb.vv
  call void @llvm.lifetime.end.p0(ptr nonnull %293)
  call void @_ZN2v88internal8compiler13CodeAssembler4GotoEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %694, ptr noundef nonnull %i.ame) #10
  br label %bb.vw

bb.vw:                                            ; preds = %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_NS0_8Float32TEEJNS0_5TNodeIS4_EESC_SC_SC_SC_NSB_IS5_EESC_NSB_IS9_EESC_NSB_ISA_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit2065, %bb.vs
  call void @llvm.lifetime.start.p0(ptr nonnull %1847) #10
  store ptr null, ptr %1847, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1848) #10
  store ptr null, ptr %1848, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1849) #10
  store ptr null, ptr %1849, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1850) #10
  store ptr null, ptr %1850, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1851) #10
  store ptr null, ptr %1851, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1852) #10
  store ptr null, ptr %1852, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1853) #10
  store ptr null, ptr %1853, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1854) #10
  store ptr null, ptr %1854, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1855) #10
  store ptr null, ptr %1855, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1856) #10
  store ptr null, ptr %1856, align 8
  %i.ixa = getelementptr inbounds nuw i8, ptr %836, i64 64
  %i.ixb = load i64, ptr %i.ixa, align 8
  %.not14767 = icmp eq i64 %i.ixb, 0
  br i1 %.not14767, label %bb.vz, label %bb.vx

bb.vx:                                            ; preds = %bb.vw
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %694, ptr noundef nonnull %i.ame) #10
  call void @_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_7IntPtrTES3_S3_S3_S3_NS0_5BoolTES3_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES3_NS0_8Float32TEEE10CreatePhisEPNS0_5TNodeIS3_EESD_SD_SD_SD_PNSB_IS4_EESD_PNSB_IS8_EESD_PNSB_IS9_EE(ptr noundef nonnull align 8 dereferenceable(184) %836, ptr noundef nonnull %1847, ptr noundef nonnull %1848, ptr noundef nonnull %1849, ptr noundef nonnull %1850, ptr noundef nonnull %1851, ptr noundef nonnull %1852, ptr noundef nonnull %1853, ptr noundef nonnull %1854, ptr noundef nonnull %1855, ptr noundef nonnull %1856)
  %i.ixc = load ptr, ptr %1847, align 8
  %i.ixd = load ptr, ptr %1848, align 8
  %i.ixe = load ptr, ptr %1849, align 8
  %i.ixf = load ptr, ptr %1850, align 8
  %i.ixg = load ptr, ptr %1851, align 8
  %i.ixh = load ptr, ptr %1852, align 8
  %i.ixi = load ptr, ptr %1853, align 8
  %i.ixj = load ptr, ptr %1854, align 8
  %i.ixk = load ptr, ptr %1855, align 8
  %i.ixl = load ptr, ptr %1856, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %292)
  %i.ixm = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #12 ; 12 uses
  store ptr %i.ixm, ptr %292, align 8
  %i.ixn = getelementptr inbounds nuw i8, ptr %i.ixm, i64 80 ; 2 uses
  %i.ixo = getelementptr inbounds nuw i8, ptr %292, i64 16 ; 2 uses
  store ptr %i.ixn, ptr %i.ixo, align 8
  store ptr %i.ixc, ptr %i.ixm, align 8
  %.sroa.4.0..sroa_idx.i.i2066 = getelementptr inbounds nuw i8, ptr %i.ixm, i64 8
  store ptr %i.ixd, ptr %.sroa.4.0..sroa_idx.i.i2066, align 8
  %.sroa.5.0..sroa_idx.i.i2067 = getelementptr inbounds nuw i8, ptr %i.ixm, i64 16
  store ptr %i.ixe, ptr %.sroa.5.0..sroa_idx.i.i2067, align 8
  %.sroa.6.0..sroa_idx.i.i2068 = getelementptr inbounds nuw i8, ptr %i.ixm, i64 24
  store ptr %i.ixf, ptr %.sroa.6.0..sroa_idx.i.i2068, align 8
  %.sroa.7.0..sroa_idx.i.i2069 = getelementptr inbounds nuw i8, ptr %i.ixm, i64 32
  store ptr %i.ixg, ptr %.sroa.7.0..sroa_idx.i.i2069, align 8
  %.sroa.8.0..sroa_idx.i.i2070 = getelementptr inbounds nuw i8, ptr %i.ixm, i64 40
  store ptr %i.ixh, ptr %.sroa.8.0..sroa_idx.i.i2070, align 8
  %.sroa.9.0..sroa_idx.i.i2071 = getelementptr inbounds nuw i8, ptr %i.ixm, i64 48
  store ptr %i.ixi, ptr %.sroa.9.0..sroa_idx.i.i2071, align 8
  %.sroa.10.0..sroa_idx.i.i2072 = getelementptr inbounds nuw i8, ptr %i.ixm, i64 56
  store ptr %i.ixj, ptr %.sroa.10.0..sroa_idx.i.i2072, align 8
  %.sroa.11.0..sroa_idx.i.i2073 = getelementptr inbounds nuw i8, ptr %i.ixm, i64 64
  store ptr %i.ixk, ptr %.sroa.11.0..sroa_idx.i.i2073, align 8
  %.sroa.12.0..sroa_idx.i.i2074 = getelementptr inbounds nuw i8, ptr %i.ixm, i64 72
  store ptr %i.ixl, ptr %.sroa.12.0..sroa_idx.i.i2074, align 8
  %i.ixp = getelementptr inbounds nuw i8, ptr %292, i64 8
  store ptr %i.ixn, ptr %i.ixp, align 8
  call void @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase9AddInputsESt6vectorIPNS1_4NodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(184) %838, ptr noundef nonnull %292) #10
  %i.ixq = load ptr, ptr %292, align 8            ; 3 uses
  %.not.i.i.i.i.i2075 = icmp eq ptr %i.ixq, null
  br i1 %.not.i.i.i.i.i2075, label %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_NS0_8Float32TEEJNS0_5TNodeIS4_EESC_SC_SC_SC_NSB_IS5_EESC_NSB_IS9_EESC_NSB_ISA_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit2076, label %bb.vy

bb.vy:                                            ; preds = %bb.vx
  %i.ixr = load ptr, ptr %i.ixo, align 8
  %i.ixs = ptrtoint ptr %i.ixr to i64
  %i.ixt = ptrtoint ptr %i.ixq to i64
  %i.ixu = sub i64 %i.ixs, %i.ixt
  call void @_ZdlPvm(ptr noundef nonnull %i.ixq, i64 noundef %i.ixu) #11
  br label %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_NS0_8Float32TEEJNS0_5TNodeIS4_EESC_SC_SC_SC_NSB_IS5_EESC_NSB_IS9_EESC_NSB_ISA_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit2076

_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_NS0_8Float32TEEJNS0_5TNodeIS4_EESC_SC_SC_SC_NSB_IS5_EESC_NSB_IS9_EESC_NSB_ISA_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit2076: ; preds = %bb.vx, %bb.vy
  call void @llvm.lifetime.end.p0(ptr nonnull %292)
  call void @_ZN2v88internal8compiler13CodeAssembler4GotoEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %694, ptr noundef nonnull %i.amu) #10
  br label %bb.vz

bb.vz:                                            ; preds = %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_NS0_8Float32TEEJNS0_5TNodeIS4_EESC_SC_SC_SC_NSB_IS5_EESC_NSB_IS9_EESC_NSB_ISA_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit2076, %bb.vw
  %i.ixv = getelementptr inbounds nuw i8, ptr %837, i64 64
  %i.ixw = load i64, ptr %i.ixv, align 8
  %.not14768 = icmp eq i64 %i.ixw, 0
  br i1 %.not14768, label %bb.wd, label %bb.wa

bb.wa:                                            ; preds = %bb.vz
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %694, ptr noundef nonnull %i.amm) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %49)
  %i.ixx = call noalias noundef nonnull dereferenceable(9) ptr @_Znwm(i64 noundef 9) #12 ; 4 uses
  store ptr %i.ixx, ptr %49, align 8
  %i.ixy = getelementptr inbounds nuw i8, ptr %i.ixx, i64 9 ; 2 uses
  %i.ixz = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 2 uses
  store ptr %i.ixy, ptr %i.ixz, align 8
  %.sroa.8.0..sroa_idx.i7455 = getelementptr inbounds nuw i8, ptr %i.ixx, i64 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ixx, i8 5, i64 5, i1 false)
  store <4 x i8> <i8 4, i8 5, i8 9, i8 5>, ptr %.sroa.8.0..sroa_idx.i7455, align 1
  %i.iya = getelementptr inbounds nuw i8, ptr %49, i64 8
  store ptr %i.ixy, ptr %i.iya, align 8
  %i.iyb = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %837, ptr noundef nonnull %49) #10
  %i.iyc = load ptr, ptr %49, align 8             ; 3 uses
  %.not.i.i.i.i7459 = icmp eq ptr %i.iyc, null
  br i1 %.not.i.i.i.i7459, label %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7460, label %bb.wb

bb.wb:                                            ; preds = %bb.wa
  %i.iyd = load ptr, ptr %i.ixz, align 8
  %i.iye = ptrtoint ptr %i.iyd to i64
  %i.iyf = ptrtoint ptr %i.iyc to i64
  %i.iyg = sub i64 %i.iye, %i.iyf
  call void @_ZdlPvm(ptr noundef nonnull %i.iyc, i64 noundef %i.iyg) #11
  br label %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7460

_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7460: ; preds = %bb.wb, %bb.wa
  %i.iyh = load ptr, ptr %i.iyb, align 8          ; 6 uses
  %i.iyi = getelementptr inbounds nuw i8, ptr %i.iyh, i64 16
  %i.iyj = getelementptr inbounds nuw i8, ptr %i.iyh, i64 32
  %i.iyk = getelementptr inbounds nuw i8, ptr %i.iyh, i64 48
  %i.iyl = getelementptr inbounds nuw i8, ptr %i.iyh, i64 56
  %i.iym = getelementptr inbounds nuw i8, ptr %i.iyh, i64 64
  %i.iyn = getelementptr inbounds nuw i8, ptr %1857, i64 8
  %i.iyo = getelementptr inbounds nuw i8, ptr %285, i64 16 ; 2 uses
  %i.iyp = load <2 x ptr>, ptr %i.iyh, align 8
  %i.iyq = load <2 x ptr>, ptr %i.iyi, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %49)
  call void @llvm.lifetime.start.p0(ptr nonnull %1857) #10
  %2479 = load <2 x ptr>, ptr %i.iyj, align 8
  %i.iyr = load <2 x ptr>, ptr %i.iyk, align 8
  %i.iys = load ptr, ptr %i.iym, align 8
  %i.iyt = load <2 x ptr>, ptr %i.iyl, align 8
  store <2 x ptr> %i.iyt, ptr %1858, align 16
  call void @_ZN2v88internal17RefCast_float32_0EPNS0_8compiler18CodeAssemblerStateENS0_30TorqueStructReference_intptr_0E(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::TorqueStructReference_float32_0") align 8 %1857, ptr noundef %i.a, ptr noundef nonnull dead_on_return %1858)
  %i.iyu = load ptr, ptr %i.iyn, align 8, !noalias !4616
  %i.iyv = load ptr, ptr %1857, align 8, !noalias !4616
  call void @llvm.lifetime.end.p0(ptr nonnull %1857) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %1859) #10
  call void @_ZN2v88internal17CodeStubAssemblerC1EPNS0_8compiler18CodeAssemblerStateE(ptr noundef nonnull align 8 dereferenceable(16) %1859, ptr noundef %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %289)
  call void @llvm.lifetime.start.p0(ptr nonnull %290)
  call void @llvm.lifetime.start.p0(ptr nonnull %291)
  call void @llvm.lifetime.start.p0(ptr nonnull %288) #10, !noalias !4617
  call void @_ZN2v88internal8compiler13CodeAssembler14IntPtrConstantEl(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.15") align 8 %289, ptr noundef nonnull align 8 dereferenceable(16) %1859, i64 noundef 1) #10, !noalias !4617
  call void @llvm.lifetime.start.p0(ptr nonnull %286), !noalias !4617
  call void @llvm.lifetime.start.p0(ptr nonnull %287), !noalias !4617
  store ptr %i.iyu, ptr %286, align 8, !noalias !4618
  %i.iyw = load ptr, ptr %289, align 8, !noalias !4618
  store ptr %i.iyw, ptr %287, align 8, !noalias !4618
  call void @_ZN2v88internal8compiler13CodeAssembler9IntPtrSubENS0_5TNodeINS0_5WordTEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.22") align 8 %288, ptr noundef nonnull align 8 dereferenceable(16) %1859, ptr noundef nonnull dead_on_return %286, ptr noundef nonnull dead_on_return %287) #10, !noalias !4617
  call void @llvm.lifetime.end.p0(ptr nonnull %286), !noalias !4617
  call void @llvm.lifetime.end.p0(ptr nonnull %287), !noalias !4617
  store ptr %i.iyv, ptr %290, align 8, !noalias !4617
  %i.iyx = load ptr, ptr %288, align 8, !noalias !4617
  store ptr %i.iyx, ptr %291, align 8, !noalias !4617
  %i.iyy = call noundef ptr @_ZN2v88internal8compiler13CodeAssembler14LoadFromObjectENS0_11MachineTypeENS0_5TNodeINS0_6ObjectEEENS4_INS0_7IntPtrTEEE(ptr noundef nonnull align 8 dereferenceable(16) %1859, i16 2065, ptr noundef nonnull dead_on_return %290, ptr noundef nonnull dead_on_return %291) #10, !noalias !4617
  call void @llvm.lifetime.end.p0(ptr nonnull %288) #10, !noalias !4617
  call void @llvm.lifetime.end.p0(ptr nonnull %289)
  call void @llvm.lifetime.end.p0(ptr nonnull %290)
  call void @llvm.lifetime.end.p0(ptr nonnull %291)
  call void @_ZN2v88internal8compiler13CodeAssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %1859) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1859) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %285)
  %i.iyz = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #12 ; 8 uses
  store ptr %i.iyz, ptr %285, align 8
  %i.iza = getelementptr inbounds nuw i8, ptr %i.iyz, i64 80 ; 2 uses
  store ptr %i.iza, ptr %i.iyo, align 8
  store <2 x ptr> %i.iyp, ptr %i.iyz, align 8
  %.sroa.5.0..sroa_idx.i.i2078 = getelementptr inbounds nuw i8, ptr %i.iyz, i64 16
  store <2 x ptr> %i.iyq, ptr %.sroa.5.0..sroa_idx.i.i2078, align 8
  %.sroa.7.0..sroa_idx.i.i2080 = getelementptr inbounds nuw i8, ptr %i.iyz, i64 32
  store <2 x ptr> %2479, ptr %.sroa.7.0..sroa_idx.i.i2080, align 8
  %.sroa.9.0..sroa_idx.i.i2082 = getelementptr inbounds nuw i8, ptr %i.iyz, i64 48
  store <2 x ptr> %i.iyr, ptr %.sroa.9.0..sroa_idx.i.i2082, align 8
  %.sroa.11.0..sroa_idx.i.i2084 = getelementptr inbounds nuw i8, ptr %i.iyz, i64 64
  store ptr %i.iys, ptr %.sroa.11.0..sroa_idx.i.i2084, align 8
  %.sroa.12.0..sroa_idx.i.i2085 = getelementptr inbounds nuw i8, ptr %i.iyz, i64 72
  store ptr %i.iyy, ptr %.sroa.12.0..sroa_idx.i.i2085, align 8
  %i.izb = getelementptr inbounds nuw i8, ptr %285, i64 8
  store ptr %i.iza, ptr %i.izb, align 8
  call void @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase9AddInputsESt6vectorIPNS1_4NodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(184) %838, ptr noundef nonnull %285) #10
  %i.izc = load ptr, ptr %285, align 8            ; 3 uses
  %.not.i.i.i.i.i2086 = icmp eq ptr %i.izc, null
  br i1 %.not.i.i.i.i.i2086, label %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_NS0_8Float32TEEJNS0_5TNodeIS4_EESC_SC_SC_SC_NSB_IS5_EESC_NSB_IS9_EESC_NSB_ISA_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit2087, label %bb.wc

bb.wc:                                            ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7460
  %i.izd = load ptr, ptr %i.iyo, align 8
  %i.ize = ptrtoint ptr %i.izd to i64
  %i.izf = ptrtoint ptr %i.izc to i64
  %i.izg = sub i64 %i.ize, %i.izf
  call void @_ZdlPvm(ptr noundef nonnull %i.izc, i64 noundef %i.izg) #11
  br label %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_NS0_8Float32TEEJNS0_5TNodeIS4_EESC_SC_SC_SC_NSB_IS5_EESC_NSB_IS9_EESC_NSB_ISA_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit2087

_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_NS0_8Float32TEEJNS0_5TNodeIS4_EESC_SC_SC_SC_NSB_IS5_EESC_NSB_IS9_EESC_NSB_ISA_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit2087: ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i7460, %bb.wc
  call void @llvm.lifetime.end.p0(ptr nonnull %285)
  call void @_ZN2v88internal8compiler13CodeAssembler4GotoEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %694, ptr noundef nonnull %i.amu) #10
  br label %bb.wd

bb.wd:                                            ; preds = %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_NS0_8Float32TEEJNS0_5TNodeIS4_EESC_SC_SC_SC_NSB_IS5_EESC_NSB_IS9_EESC_NSB_ISA_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit2087, %bb.vz
  call void @llvm.lifetime.start.p0(ptr nonnull %1860) #10
  store ptr null, ptr %1860, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1861) #10
  store ptr null, ptr %1861, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1862) #10
  store ptr null, ptr %1862, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1863) #10
  store ptr null, ptr %1863, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1864) #10
  store ptr null, ptr %1864, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1865) #10
  store ptr null, ptr %1865, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1866) #10
  store ptr null, ptr %1866, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1867) #10
  store ptr null, ptr %1867, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1868) #10
  store ptr null, ptr %1868, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1869) #10
  store ptr null, ptr %1869, align 8
  %i.izh = getelementptr inbounds nuw i8, ptr %838, i64 64
  %i.izi = load i64, ptr %i.izh, align 8
  %.not14769 = icmp eq i64 %i.izi, 0
  br i1 %.not14769, label %bb.wg, label %bb.we

bb.we:                                            ; preds = %bb.wd
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %694, ptr noundef nonnull %i.amu) #10
  call void @_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_7IntPtrTES3_S3_S3_S3_NS0_5BoolTES3_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES3_NS0_8Float32TEEE10CreatePhisEPNS0_5TNodeIS3_EESD_SD_SD_SD_PNSB_IS4_EESD_PNSB_IS8_EESD_PNSB_IS9_EE(ptr noundef nonnull align 8 dereferenceable(184) %838, ptr noundef nonnull %1860, ptr noundef nonnull %1861, ptr noundef nonnull %1862, ptr noundef nonnull %1863, ptr noundef nonnull %1864, ptr noundef nonnull %1865, ptr noundef nonnull %1866, ptr noundef nonnull %1867, ptr noundef nonnull %1868, ptr noundef nonnull %1869)
  %i.izj = load ptr, ptr %1860, align 8
  %i.izk = load ptr, ptr %1861, align 8
  %i.izl = load ptr, ptr %1862, align 8
  %i.izm = load ptr, ptr %1863, align 8
  %i.izn = load ptr, ptr %1864, align 8
  %i.izo = load ptr, ptr %1865, align 8
  %i.izp = load ptr, ptr %1866, align 8
  %i.izq = load ptr, ptr %1867, align 8
  %i.izr = load ptr, ptr %1868, align 8
  %i.izs = load ptr, ptr %1869, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %284)
  %i.izt = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #12 ; 12 uses
  store ptr %i.izt, ptr %284, align 8
  %i.izu = getelementptr inbounds nuw i8, ptr %i.izt, i64 80 ; 2 uses
  %i.izv = getelementptr inbounds nuw i8, ptr %284, i64 16 ; 2 uses
  store ptr %i.izu, ptr %i.izv, align 8
  store ptr %i.izj, ptr %i.izt, align 8
  %.sroa.4.0..sroa_idx.i.i2088 = getelementptr inbounds nuw i8, ptr %i.izt, i64 8
  store ptr %i.izk, ptr %.sroa.4.0..sroa_idx.i.i2088, align 8
  %.sroa.5.0..sroa_idx.i.i2089 = getelementptr inbounds nuw i8, ptr %i.izt, i64 16
  store ptr %i.izl, ptr %.sroa.5.0..sroa_idx.i.i2089, align 8
  %.sroa.6.0..sroa_idx.i.i2090 = getelementptr inbounds nuw i8, ptr %i.izt, i64 24
  store ptr %i.izm, ptr %.sroa.6.0..sroa_idx.i.i2090, align 8
  %.sroa.7.0..sroa_idx.i.i2091 = getelementptr inbounds nuw i8, ptr %i.izt, i64 32
  store ptr %i.izn, ptr %.sroa.7.0..sroa_idx.i.i2091, align 8
  %.sroa.8.0..sroa_idx.i.i2092 = getelementptr inbounds nuw i8, ptr %i.izt, i64 40
  store ptr %i.izo, ptr %.sroa.8.0..sroa_idx.i.i2092, align 8
  %.sroa.9.0..sroa_idx.i.i2093 = getelementptr inbounds nuw i8, ptr %i.izt, i64 48
  store ptr %i.izp, ptr %.sroa.9.0..sroa_idx.i.i2093, align 8
  %.sroa.10.0..sroa_idx.i.i2094 = getelementptr inbounds nuw i8, ptr %i.izt, i64 56
  store ptr %i.izq, ptr %.sroa.10.0..sroa_idx.i.i2094, align 8
  %.sroa.11.0..sroa_idx.i.i2095 = getelementptr inbounds nuw i8, ptr %i.izt, i64 64
  store ptr %i.izr, ptr %.sroa.11.0..sroa_idx.i.i2095, align 8
  %.sroa.12.0..sroa_idx.i.i2096 = getelementptr inbounds nuw i8, ptr %i.izt, i64 72
  store ptr %i.izs, ptr %.sroa.12.0..sroa_idx.i.i2096, align 8
  %i.izw = getelementptr inbounds nuw i8, ptr %284, i64 8
  store ptr %i.izu, ptr %i.izw, align 8
  call void @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase9AddInputsESt6vectorIPNS1_4NodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(184) %839, ptr noundef nonnull %284) #10
  %i.izx = load ptr, ptr %284, align 8            ; 3 uses
  %.not.i.i.i.i.i2097 = icmp eq ptr %i.izx, null
  br i1 %.not.i.i.i.i.i2097, label %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_NS0_8Float32TEEJNS0_5TNodeIS4_EESC_SC_SC_SC_NSB_IS5_EESC_NSB_IS9_EESC_NSB_ISA_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit2098, label %bb.wf

bb.wf:                                            ; preds = %bb.we
  %i.izy = load ptr, ptr %i.izv, align 8
  %i.izz = ptrtoint ptr %i.izy to i64
  %i.jaa = ptrtoint ptr %i.izx to i64
  %i.jab = sub i64 %i.izz, %i.jaa
  call void @_ZdlPvm(ptr noundef nonnull %i.izx, i64 noundef %i.jab) #11
  br label %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_NS0_8Float32TEEJNS0_5TNodeIS4_EESC_SC_SC_SC_NSB_IS5_EESC_NSB_IS9_EESC_NSB_ISA_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit2098

_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_NS0_8Float32TEEJNS0_5TNodeIS4_EESC_SC_SC_SC_NSB_IS5_EESC_NSB_IS9_EESC_NSB_ISA_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit2098: ; preds = %bb.we, %bb.wf
  call void @llvm.lifetime.end.p0(ptr nonnull %284)
  call void @_ZN2v88internal8compiler13CodeAssembler4GotoEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %694, ptr noundef nonnull %i.anc) #10
  br label %bb.wg

bb.wg:                                            ; preds = %_ZN2v88internal8compiler13CodeAssembler4GotoIJNS0_7IntPtrTES4_S4_S4_S4_NS0_5BoolTES4_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES4_NS0_8Float32TEEJNS0_5TNodeIS4_EESC_SC_SC_SC_NSB_IS5_EESC_NSB_IS9_EESC_NSB_ISA_EEEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit2098, %bb.wd
  call void @llvm.lifetime.start.p0(ptr nonnull %1870) #10
  store ptr null, ptr %1870, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1871) #10
  store ptr null, ptr %1871, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1872) #10
  store ptr null, ptr %1872, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1873) #10
  store ptr null, ptr %1873, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1874) #10
  store ptr null, ptr %1874, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1875) #10
  store ptr null, ptr %1875, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1876) #10
  store ptr null, ptr %1876, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1877) #10
  store ptr null, ptr %1877, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1878) #10
  store ptr null, ptr %1878, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1879) #10
  store ptr null, ptr %1879, align 8
  %i.jac = getelementptr inbounds nuw i8, ptr %839, i64 64
  %i.jad = load i64, ptr %i.jac, align 8
  %.not14770 = icmp eq i64 %i.jad, 0
  br i1 %.not14770, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit2102, label %bb.wh

bb.wh:                                            ; preds = %bb.wg
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %694, ptr noundef nonnull %i.anc) #10
  call void @_ZN2v88internal8compiler31CodeAssemblerParameterizedLabelIJNS0_7IntPtrTES3_S3_S3_S3_NS0_5BoolTES3_NS0_5UnionIJNS0_10HeapObjectENS0_11TaggedIndexEEEES3_NS0_8Float32TEEE10CreatePhisEPNS0_5TNodeIS3_EESD_SD_SD_SD_PNSB_IS4_EESD_PNSB_IS8_EESD_PNSB_IS9_EE(ptr noundef nonnull align 8 dereferenceable(184) %839, ptr noundef nonnull %1870, ptr noundef nonnull %1871, ptr noundef nonnull %1872, ptr noundef nonnull %1873, ptr noundef nonnull %1874, ptr noundef nonnull %1875, ptr noundef nonnull %1876, ptr noundef nonnull %1877, ptr noundef nonnull %1878, ptr noundef nonnull %1879)
  call void @llvm.lifetime.start.p0(ptr nonnull %1880) #10
  store ptr %.sroa.014042.0, ptr %1881, align 8
  call void @_ZN2v88internal29FieldSliceFixedArrayObjects_0EPNS0_8compiler18CodeAssemblerStateENS0_5TNodeINS0_10FixedArrayEEE(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::TorqueStructSlice_Object_MutableReference_Object_0") align 8 %1880, ptr noundef %i.a, ptr noundef nonnull dead_on_return %1881) #10
  %i.jae = getelementptr inbounds nuw i8, ptr %1880, i64 8
  %i.jaf = getelementptr inbounds nuw i8, ptr %1880, i64 16
  %i.jag = load ptr, ptr %i.jaf, align 8, !noalias !4619
  %i.jah = load ptr, ptr %i.jae, align 8, !noalias !4619 ; 2 uses
  %i.jai = load ptr, ptr %1880, align 8, !noalias !4619 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1880) #10
  %i.jaj = load ptr, ptr %1876, align 8
  store ptr %i.jaj, ptr %1883, align 8
  call void @_ZN2v88internal24Convert_uintptr_intptr_0EPNS0_8compiler18CodeAssemblerStateENS0_5TNodeINS0_7IntPtrTEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.23") align 8 %1882, ptr noundef %i.a, ptr noundef nonnull dead_on_return %1883) #10
  %i.jak = load ptr, ptr %1882, align 8, !noalias !4620
  store ptr %i.jag, ptr %1885, align 8
  call void @_ZN2v88internal24Convert_uintptr_intptr_0EPNS0_8compiler18CodeAssemblerStateENS0_5TNodeINS0_7IntPtrTEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.23") align 8 %1884, ptr noundef %i.a, ptr noundef nonnull dead_on_return %1885) #10
  %i.jal = load ptr, ptr %1884, align 8, !noalias !4621
  call void @llvm.lifetime.start.p0(ptr nonnull %1887) #10
  call void @_ZN2v88internal17CodeStubAssemblerC1EPNS0_8compiler18CodeAssemblerStateE(ptr noundef nonnull align 8 dereferenceable(16) %1887, ptr noundef %i.a) #10
  store ptr %i.jak, ptr %1888, align 8
  store ptr %i.jal, ptr %1889, align 8
  call void @_ZN2v88internal8compiler13CodeAssembler15UintPtrLessThanENS0_5TNodeINS0_5WordTEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.20") align 8 %1886, ptr noundef nonnull align 8 dereferenceable(8) %1887, ptr noundef nonnull dead_on_return %1888, ptr noundef nonnull dead_on_return %1889) #10
  %i.jam = load ptr, ptr %1886, align 8, !noalias !4622
  call void @_ZN2v88internal8compiler13CodeAssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %1887) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1887) #10
  store ptr %i.jam, ptr %1890, align 8
  %i.jan = load ptr, ptr %1870, align 8
  %i.jao = load ptr, ptr %1871, align 8
  %i.jap = load ptr, ptr %1872, align 8
  %i.jaq = load ptr, ptr %1873, align 8
  %i.jar = load ptr, ptr %1874, align 8
  %i.jas = load ptr, ptr %1875, align 8
  %i.jat = load ptr, ptr %1876, align 8           ; 5 uses
  %i.jau = load ptr, ptr %1877, align 8
  %i.jav = load ptr, ptr %1878, align 8
  %i.jaw = call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #12 ; 15 uses
  store ptr %i.jaw, ptr %1891, align 8
  %i.jax = getelementptr inbounds nuw i8, ptr %i.jaw, i64 104 ; 2 uses
  %i.jay = getelementptr inbounds nuw i8, ptr %1891, i64 16 ; 2 uses
  store ptr %i.jax, ptr %i.jay, align 8
  store ptr %i.jan, ptr %i.jaw, align 8
  %.sroa.410355.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jaw, i64 8
  store ptr %i.jao, ptr %.sroa.410355.0..sroa_idx, align 8
  %.sroa.510356.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jaw, i64 16
  store ptr %i.jap, ptr %.sroa.510356.0..sroa_idx, align 8
  %.sroa.610357.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jaw, i64 24
  store ptr %i.jaq, ptr %.sroa.610357.0..sroa_idx, align 8
  %.sroa.710358.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jaw, i64 32
  store ptr %i.jar, ptr %.sroa.710358.0..sroa_idx, align 8
  %.sroa.810359.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jaw, i64 40
  store ptr %i.jas, ptr %.sroa.810359.0..sroa_idx, align 8
  %.sroa.910360.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jaw, i64 48
  store ptr %i.jat, ptr %.sroa.910360.0..sroa_idx, align 8
  %.sroa.1010361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jaw, i64 56
  store ptr %i.jau, ptr %.sroa.1010361.0..sroa_idx, align 8
  %.sroa.1110362.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jaw, i64 64
  store ptr %i.jav, ptr %.sroa.1110362.0..sroa_idx, align 8
  %.sroa.1210363.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jaw, i64 72
  store ptr %i.jat, ptr %.sroa.1210363.0..sroa_idx, align 8
  %.sroa.1310364.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jaw, i64 80
  store ptr %i.jat, ptr %.sroa.1310364.0..sroa_idx, align 8
  %.sroa.1410365.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jaw, i64 88
  store ptr %i.jat, ptr %.sroa.1410365.0..sroa_idx, align 8
  %.sroa.1510366.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jaw, i64 96
  store ptr %i.jat, ptr %.sroa.1510366.0..sroa_idx, align 8
  %i.jaz = getelementptr inbounds nuw i8, ptr %1891, i64 8
end_hunk_2

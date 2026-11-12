Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-netlink-netfilter?download=true
inline.NumInlined: 11
inline.NumDeleted: 7
begin_hunk_0
@.str.448 = private unnamed_addr constant [8 x i8] c"Get set\00", align 1
@.str.449 = private unnamed_addr constant [11 x i8] c"Delete set\00", align 1
@.str.450 = private unnamed_addr constant [16 x i8] c"New set element\00", align 1
@.str.451 = private unnamed_addr constant [16 x i8] c"Get set element\00", align 1
@.str.452 = private unnamed_addr constant [19 x i8] c"Delete set element\00", align 1
@.str.453 = private unnamed_addr constant [24 x i8] c"New rule-set generation\00", align 1
@.str.454 = private unnamed_addr constant [24 x i8] c"Get rule-set generation\00", align 1
@.str.455 = private unnamed_addr constant [6 x i8] c"Trace\00", align 1
@.str.456 = private unnamed_addr constant [20 x i8] c"New stateful object\00", align 1
@.str.457 = private unnamed_addr constant [20 x i8] c"Get stateful object\00", align 1
@.str.458 = private unnamed_addr constant [23 x i8] c"Delete stateful object\00", align 1
@.str.459 = private unnamed_addr constant [30 x i8] c"Get and reset stateful object\00", align 1
@.str.460 = private unnamed_addr constant [15 x i8] c"New flow table\00", align 1
@.str.461 = private unnamed_addr constant [15 x i8] c"Get flow table\00", align 1
@.str.462 = private unnamed_addr constant [18 x i8] c"Delete flow table\00", align 1
@.str.463 = private unnamed_addr constant [41 x i8] c"Get rules and reset stateful expressions\00", align 1
@.str.464 = private unnamed_addr constant [14 x i8] c"Destroy table\00", align 1
@.str.465 = private unnamed_addr constant [14 x i8] c"Destroy chain\00", align 1
@.str.466 = private unnamed_addr constant [13 x i8] c"Destroy rule\00", align 1
@.str.467 = private unnamed_addr constant [12 x i8] c"Destroy set\00", align 1
@.str.468 = private unnamed_addr constant [20 x i8] c"Destroy set element\00", align 1
@.str.469 = private unnamed_addr constant [24 x i8] c"Destroy stateful object\00", align 1
@.str.470 = private unnamed_addr constant [19 x i8] c"Destroy flow table\00", align 1
@.str.471 = private unnamed_addr constant [48 x i8] c"Get set elements and reset stateful expressions\00", align 1
@nftables_command_vals = internal constant [35 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.438 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.439 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.440 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.441 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.442 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.443 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.444 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.445 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.446 }, { i32, [4 x i8], ptr } { i32 9, [4 x i8] zeroinitializer, ptr @.str.447 }, { i32, [4 x i8], ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.448 }, { i32, [4 x i8], ptr } { i32 11, [4 x i8] zeroinitializer, ptr @.str.449 }, { i32, [4 x i8], ptr } { i32 12, [4 x i8] zeroinitializer, ptr @.str.450 }, { i32, [4 x i8], ptr } { i32 13, [4 x i8] zeroinitializer, ptr @.str.451 }, { i32, [4 x i8], ptr } { i32 14, [4 x i8] zeroinitializer, ptr @.str.452 }, { i32, [4 x i8], ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.453 }, { i32, [4 x i8], ptr } { i32 16, [4 x i8] zeroinitializer, ptr @.str.454 }, { i32, [4 x i8], ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.455 }, { i32, [4 x i8], ptr } { i32 18, [4 x i8] zeroinitializer, ptr @.str.456 }, { i32, [4 x i8], ptr } { i32 19, [4 x i8] zeroinitializer, ptr @.str.457 }, { i32, [4 x i8], ptr } { i32 20, [4 x i8] zeroinitializer, ptr @.str.458 }, { i32, [4 x i8], ptr } { i32 21, [4 x i8] zeroinitializer, ptr @.str.459 }, { i32, [4 x i8], ptr } { i32 22, [4 x i8] zeroinitializer, ptr @.str.460 }, { i32, [4 x i8], ptr } { i32 23, [4 x i8] zeroinitializer, ptr @.str.461 }, { i32, [4 x i8], ptr } { i32 24, [4 x i8] zeroinitializer, ptr @.str.462 }, { i32, [4 x i8], ptr } { i32 25, [4 x i8] zeroinitializer, ptr @.str.463 }, { i32, [4 x i8], ptr } { i32 26, [4 x i8] zeroinitializer, ptr @.str.464 }, { i32, [4 x i8], ptr } { i32 27, [4 x i8] zeroinitializer, ptr @.str.465 }, { i32, [4 x i8], ptr } { i32 28, [4 x i8] zeroinitializer, ptr @.str.466 }, { i32, [4 x i8], ptr } { i32 29, [4 x i8] zeroinitializer, ptr @.str.467 }, { i32, [4 x i8], ptr } { i32 30, [4 x i8] zeroinitializer, ptr @.str.468 }, { i32, [4 x i8], ptr } { i32 31, [4 x i8] zeroinitializer, ptr @.str.469 }, { i32, [4 x i8], ptr } { i32 32, [4 x i8] zeroinitializer, ptr @.str.470 }, { i32, [4 x i8], ptr } { i32 33, [4 x i8] zeroinitializer, ptr @.str.471 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.473 = private unnamed_addr constant [12 x i8] c"Expressions\00", align 1
@.str.474 = private unnamed_addr constant [14 x i8] c"Compatibility\00", align 1
@.str.475 = private unnamed_addr constant [10 x i8] c"User data\00", align 1
@nft_rule_attr_vals = internal constant [13 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.6 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.200 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.202 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.204 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.473 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.474 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.98 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.475 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.266 }, { i32, [4 x i8], ptr } { i32 9, [4 x i8] zeroinitializer, ptr @.str.45 }, { i32, [4 x i8], ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.210 }, { i32, [4 x i8], ptr } { i32 11, [4 x i8] zeroinitializer, ptr @.str.212 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@nft_rule_compat_attr_vals = internal constant [4 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.6 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.28 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.122 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.478 = private unnamed_addr constant [5 x i8] c"Data\00", align 1
@nft_expr_attr_vals = internal constant [4 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.6 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.114 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.478 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.480 = private unnamed_addr constant [8 x i8] c"Element\00", align 1
@nft_list_attr_vals = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.6 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.480 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@nft_meta_attr_vals = internal constant [5 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.6 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.221 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.223 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.225 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.483 = private unnamed_addr constant [14 x i8] c"Packet length\00", align 1
@.str.484 = private unnamed_addr constant [19 x i8] c"Ethertype protocol\00", align 1
@.str.485 = private unnamed_addr constant [19 x i8] c"TC packet priority\00", align 1
@.str.486 = private unnamed_addr constant [22 x i8] c"Netfilter packet mark\00", align 1
@.str.487 = private unnamed_addr constant [22 x i8] c"Input interface index\00", align 1
@.str.488 = private unnamed_addr constant [23 x i8] c"Output interface index\00", align 1
@.str.489 = private unnamed_addr constant [21 x i8] c"Input interface name\00", align 1
@.str.490 = private unnamed_addr constant [22 x i8] c"Output interface name\00", align 1
@.str.491 = private unnamed_addr constant [21 x i8] c"Input interface type\00", align 1
@.str.492 = private unnamed_addr constant [22 x i8] c"Output interface type\00", align 1
@.str.493 = private unnamed_addr constant [23 x i8] c"Originating socket UID\00", align 1
@.str.494 = private unnamed_addr constant [23 x i8] c"Originating socket GID\00", align 1
@.str.495 = private unnamed_addr constant [19 x i8] c"Packet nftrace bit\00", align 1
@.str.496 = private unnamed_addr constant [14 x i8] c"Routing realm\00", align 1
@.str.497 = private unnamed_addr constant [15 x i8] c"Packet secmark\00", align 1
@.str.498 = private unnamed_addr constant [19 x i8] c"Netfilter protocol\00", align 1
@.str.499 = private unnamed_addr constant [17 x i8] c"Layer 4 protocol\00", align 1
@.str.500 = private unnamed_addr constant [28 x i8] c"Bridge input interface name\00", align 1
@.str.501 = private unnamed_addr constant [29 x i8] c"Bridge output interface name\00", align 1
@.str.502 = private unnamed_addr constant [12 x i8] c"Packet type\00", align 1
@.str.503 = private unnamed_addr constant [7 x i8] c"CPU ID\00", align 1
@.str.504 = private unnamed_addr constant [22 x i8] c"Input interface group\00", align 1
@.str.505 = private unnamed_addr constant [23 x i8] c"Output interface group\00", align 1
@.str.506 = private unnamed_addr constant [17 x i8] c"Control group ID\00", align 1
@.str.507 = private unnamed_addr constant [21 x i8] c"Pseudo-random number\00", align 1
@.str.508 = private unnamed_addr constant [18 x i8] c"Has security path\00", align 1
@.str.509 = private unnamed_addr constant [21 x i8] c"Input interface kind\00", align 1
@.str.510 = private unnamed_addr constant [22 x i8] c"Output interface kind\00", align 1
@.str.511 = private unnamed_addr constant [23 x i8] c"Bridge input port PVID\00", align 1
@.str.512 = private unnamed_addr constant [24 x i8] c"Bridge input VLAN proto\00", align 1
@.str.513 = private unnamed_addr constant [22 x i8] c"Time since epoch (ns)\00", align 1
@.str.514 = private unnamed_addr constant [12 x i8] c"Day of week\00", align 1
@.str.515 = private unnamed_addr constant [12 x i8] c"Hour of day\00", align 1
@.str.516 = private unnamed_addr constant [29 x i8] c"Slave device interface index\00", align 1
@.str.517 = private unnamed_addr constant [28 x i8] c"Slave device interface name\00", align 1
@.str.518 = private unnamed_addr constant [18 x i8] c"Bridge broute bit\00", align 1
@.str.519 = private unnamed_addr constant [40 x i8] c"Bridge input interface hardware address\00", align 1
@nft_meta_key_vals = internal constant [38 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.483 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.484 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.485 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.486 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.487 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.488 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.489 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.490 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.491 }, { i32, [4 x i8], ptr } { i32 9, [4 x i8] zeroinitializer, ptr @.str.492 }, { i32, [4 x i8], ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.493 }, { i32, [4 x i8], ptr } { i32 11, [4 x i8] zeroinitializer, ptr @.str.494 }, { i32, [4 x i8], ptr } { i32 12, [4 x i8] zeroinitializer, ptr @.str.495 }, { i32, [4 x i8], ptr } { i32 13, [4 x i8] zeroinitializer, ptr @.str.496 }, { i32, [4 x i8], ptr } { i32 14, [4 x i8] zeroinitializer, ptr @.str.497 }, { i32, [4 x i8], ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.498 }, { i32, [4 x i8], ptr } { i32 16, [4 x i8] zeroinitializer, ptr @.str.499 }, { i32, [4 x i8], ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.500 }, { i32, [4 x i8], ptr } { i32 18, [4 x i8] zeroinitializer, ptr @.str.501 }, { i32, [4 x i8], ptr } { i32 19, [4 x i8] zeroinitializer, ptr @.str.502 }, { i32, [4 x i8], ptr } { i32 20, [4 x i8] zeroinitializer, ptr @.str.503 }, { i32, [4 x i8], ptr } { i32 21, [4 x i8] zeroinitializer, ptr @.str.504 }, { i32, [4 x i8], ptr } { i32 22, [4 x i8] zeroinitializer, ptr @.str.505 }, { i32, [4 x i8], ptr } { i32 23, [4 x i8] zeroinitializer, ptr @.str.506 }, { i32, [4 x i8], ptr } { i32 24, [4 x i8] zeroinitializer, ptr @.str.507 }, { i32, [4 x i8], ptr } { i32 25, [4 x i8] zeroinitializer, ptr @.str.508 }, { i32, [4 x i8], ptr } { i32 26, [4 x i8] zeroinitializer, ptr @.str.509 }, { i32, [4 x i8], ptr } { i32 27, [4 x i8] zeroinitializer, ptr @.str.510 }, { i32, [4 x i8], ptr } { i32 28, [4 x i8] zeroinitializer, ptr @.str.511 }, { i32, [4 x i8], ptr } { i32 29, [4 x i8] zeroinitializer, ptr @.str.512 }, { i32, [4 x i8], ptr } { i32 30, [4 x i8] zeroinitializer, ptr @.str.513 }, { i32, [4 x i8], ptr } { i32 31, [4 x i8] zeroinitializer, ptr @.str.514 }, { i32, [4 x i8], ptr } { i32 32, [4 x i8] zeroinitializer, ptr @.str.515 }, { i32, [4 x i8], ptr } { i32 33, [4 x i8] zeroinitializer, ptr @.str.516 }, { i32, [4 x i8], ptr } { i32 34, [4 x i8] zeroinitializer, ptr @.str.517 }, { i32, [4 x i8], ptr } { i32 35, [4 x i8] zeroinitializer, ptr @.str.518 }, { i32, [4 x i8], ptr } { i32 37, [4 x i8] zeroinitializer, ptr @.str.519 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@nft_cmp_attr_vals = internal constant [5 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.6 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.225 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.229 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.478 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.522 = private unnamed_addr constant [6 x i8] c"Equal\00", align 1
@.str.523 = private unnamed_addr constant [10 x i8] c"Not equal\00", align 1
@.str.524 = private unnamed_addr constant [10 x i8] c"Less than\00", align 1
@.str.525 = private unnamed_addr constant [19 x i8] c"Less than or equal\00", align 1
@.str.526 = private unnamed_addr constant [13 x i8] c"Greater than\00", align 1
@.str.527 = private unnamed_addr constant [22 x i8] c"Greater than or equal\00", align 1
@nft_cmp_op_vals = internal constant [7 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.522 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.523 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.524 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.525 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.526 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.527 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@nft_payload_attr_vals = internal constant [10 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.6 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.221 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.233 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.100 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.236 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.225 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.239 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.241 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.243 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@nft_immediate_attr_vals = internal constant [4 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.6 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.221 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.478 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@nft_nat_attr_vals = internal constant [9 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.6 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.33 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.250 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.252 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.254 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.256 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.258 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.122 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@nft_nat_type_vals = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.59 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.62 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@nft_data_attr_vals = internal constant [4 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.6 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.262 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.138 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.534 = private unnamed_addr constant [10 x i8] c"Conntrack\00", align 1
@.str.535 = private unnamed_addr constant [17 x i8] c"Conntrack expect\00", align 1
@.str.536 = private unnamed_addr constant [23 x i8] c"Netfilter packet queue\00", align 1
@.str.537 = private unnamed_addr constant [28 x i8] c"Netfilter userspace logging\00", align 1
@.str.538 = private unnamed_addr constant [15 x i8] c"OS fingerprint\00", align 1
@.str.539 = private unnamed_addr constant [7 x i8] c"IP set\00", align 1
@.str.540 = private unnamed_addr constant [45 x i8] c"Extended Netfilter accounting infrastructure\00", align 1
@.str.541 = private unnamed_addr constant [54 x i8] c"Extended Netfilter Connection Tracking timeout tuning\00", align 1
@.str.542 = private unnamed_addr constant [28 x i8] c"Connection Tracking Helpers\00", align 1
@.str.543 = private unnamed_addr constant [17 x i8] c"Netfilter tables\00", align 1
@.str.544 = private unnamed_addr constant [43 x i8] c"x_tables compatibility layer for nf_tables\00", align 1
@.str.545 = private unnamed_addr constant [5 x i8] c"Hook\00", align 1
@.str.546 = private unnamed_addr constant [6 x i8] c"Count\00", align 1
@netlink_netfilter_subsystem_vals = internal constant [15 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.328 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.534 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.535 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.536 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.537 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.538 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.539 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.540 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.541 }, { i32, [4 x i8], ptr } { i32 9, [4 x i8] zeroinitializer, ptr @.str.542 }, { i32, [4 x i8], ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.543 }, { i32, [4 x i8], ptr } { i32 11, [4 x i8] zeroinitializer, ptr @.str.544 }, { i32, [4 x i8], ptr } { i32 12, [4 x i8] zeroinitializer, ptr @.str.545 }, { i32, [4 x i8], ptr } { i32 13, [4 x i8] zeroinitializer, ptr @.str.546 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.548 = private unnamed_addr constant [29 x i8] c"%s:%u: failed assertion \22%s\22\00", align 1
@.str.549 = private unnamed_addr constant [43 x i8] c"epan/dissectors/packet-netlink-netfilter.c\00", align 1
@.str.550 = private unnamed_addr constant [40 x i8] c"nl_data && nl_data->magic == 0x4A5ACCCE\00", align 1
@.str.551 = private unnamed_addr constant [18 x i8] c"Netlink netfilter\00", align 1
@hf_nfct_attr_status_flags = internal constant [17 x ptr] [ptr @hf_nfct_attr_status_flag_hw_offload, ptr @hf_nfct_attr_status_flag_offload, ptr @hf_nfct_attr_status_flag_helper, ptr @hf_nfct_attr_status_flag_untracked, ptr @hf_nfct_attr_status_flag_template, ptr @hf_nfct_attr_status_flag_fixed_timeout, ptr @hf_nfct_attr_status_flag_dying, ptr @hf_nfct_attr_status_flag_dst_nat_done, ptr @hf_nfct_attr_status_flag_src_nat_done, ptr @hf_nfct_attr_status_flag_seq_adjust, ptr @hf_nfct_attr_status_flag_dst_nat, ptr @hf_nfct_attr_status_flag_src_nat, ptr @hf_nfct_attr_status_flag_confirmed, ptr @hf_nfct_attr_status_flag_assured, ptr @hf_nfct_attr_status_flag_seen_reply, ptr @hf_nfct_attr_status_flag_expected, ptr null], align 16
@hf_nfexp_attr_flags_bitfield = internal constant [4 x ptr] [ptr @hf_nfexp_attr_flag_userspace, ptr @hf_nfexp_attr_flag_inactive, ptr @hf_nfexp_attr_flag_permanent, ptr null], align 16
@.str.552 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@.str.553 = private unnamed_addr constant [5 x i8] c"meta\00", align 1
@.str.554 = private unnamed_addr constant [29 x i8] c"  [ meta load %s => reg %u ]\00", align 1
@.str.555 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.556 = private unnamed_addr constant [30 x i8] c"  [ meta set %s with reg %u ]\00", align 1
@.str.557 = private unnamed_addr constant [4 x i8] c"cmp\00", align 1
@.str.558 = private unnamed_addr constant [21 x i8] c"  [ cmp %s reg %u 0x\00", align 1
@.str.559 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.560 = private unnamed_addr constant [3 x i8] c" ]\00", align 1
@.str.561 = private unnamed_addr constant [8 x i8] c"payload\00", align 1
@.str.562 = private unnamed_addr constant [49 x i8] c"  [ payload write reg %u => %ub @ %s header + %u\00", align 1
@.str.563 = private unnamed_addr constant [14 x i8] c" csum_type %u\00", align 1
@.str.564 = private unnamed_addr constant [13 x i8] c" csum_off %u\00", align 1
@.str.565 = private unnamed_addr constant [17 x i8] c" csum_flags 0x%x\00", align 1
@.str.566 = private unnamed_addr constant [50 x i8] c"  [ payload load %ub @ %s header + %u => reg %u ]\00", align 1
@.str.567 = private unnamed_addr constant [10 x i8] c"immediate\00", align 1
@.str.568 = private unnamed_addr constant [24 x i8] c"  [ immediate reg %u 0x\00", align 1
@.str.569 = private unnamed_addr constant [4 x i8] c"nat\00", align 1
@.str.570 = private unnamed_addr constant [14 x i8] c"  [ nat %s %s\00", align 1
@.str.571 = private unnamed_addr constant [17 x i8] c" addr_min reg %u\00", align 1
@.str.572 = private unnamed_addr constant [18 x i8] c" proto_min reg %u\00", align 1
@.str.573 = private unnamed_addr constant [17 x i8] c" addr_max reg %u\00", align 1
@.str.574 = private unnamed_addr constant [18 x i8] c" proto_max reg %u\00", align 1
@.str.575 = private unnamed_addr constant [12 x i8] c" flags 0x%x\00", align 1
@.str.576 = private unnamed_addr constant [11 x i8] c"link layer\00", align 1
@.str.577 = private unnamed_addr constant [8 x i8] c"network\00", align 1
@.str.578 = private unnamed_addr constant [10 x i8] c"transport\00", align 1
@nft_payload_base_vals = internal constant [4 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.576 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.577 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.578 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@switch.table.dissect_netlink_netfilter = private unnamed_addr constant [9 x ptr] [ptr @hf_nfexp_type, ptr @hf_nfq_type, ptr @hf_netlink_netfilter_ulog_type, ptr poison, ptr @hf_ipset_command, ptr poison, ptr poison, ptr poison, ptr @hf_nftables_command], align 8
@switch.table.dissect_netlink_netfilter.2 = private unnamed_addr constant [3 x ptr] [ptr @hf_nfq_attr, ptr @hf_nfq_attr, ptr @hf_nfq_config_attr], align 8
@switch.table.dissect_netlink_netfilter.3 = private unnamed_addr constant [3 x ptr] [ptr @ett_nfq_attr, ptr @ett_nfq_attr, ptr @ett_nfq_config_attr], align 8
@switch.table.dissect_netlink_netfilter.4 = private unnamed_addr constant [3 x ptr] [ptr @dissect_nfq_attrs, ptr @dissect_nfq_attrs, ptr @dissect_nfq_config_attrs], align 8
@switch.table.dissect_nfct_seqadj_attrs = private unnamed_addr constant [3 x ptr] [ptr @hf_nfct_seqadj_attr_correction_pos, ptr @hf_nfct_seqadj_attr_offset_before, ptr @hf_nfct_seqadj_attr_offset_after], align 8
@switch.table.dissect_nfct_tuple_ip_attrs = private unnamed_addr constant [4 x ptr] [ptr @hf_nfct_tuple_ip_attr_ipv4, ptr @hf_nfct_tuple_ip_attr_ipv4, ptr @hf_nfct_tuple_ip_attr_ipv6, ptr @hf_nfct_tuple_ip_attr_ipv6], align 8
@switch.table.dissect_nfct_tuple_proto_attrs = private unnamed_addr constant [3 x ptr] [ptr @hf_nfct_tuple_proto_num_attr, ptr @hf_nfct_tuple_proto_src_port_attr, ptr @hf_nfct_tuple_proto_dst_port_attr], align 8

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_netlink_netfilter() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef @.str.268, ptr noundef @.str.269, ptr noundef @.str.270) ; 2 uses
  store i32 %i.a, ptr @proto_netlink_netfilter, align 4
  tail call void @proto_register_field_array(i32 noundef %i.a, ptr noundef @proto_register_netlink_netfilter.hf, i32 noundef 140)
  tail call void @proto_register_subtree_array(ptr noundef @proto_register_netlink_netfilter.ett, i32 noundef 27)
  %i.b = load i32, ptr @proto_netlink_netfilter, align 4
  %i.c = tail call ptr @register_dissector(ptr noundef @.str.269, ptr noundef @dissect_netlink_netfilter, i32 noundef %i.b)
  store ptr %i.c, ptr @netlink_netfilter, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_register_field_array(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_register_subtree_array(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_netlink_netfilter(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %4 = alloca %struct.netlink_netfilter_info_t, align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %3, align 4
  %i.b = icmp eq i32 %i.a, 1247464654
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.548, ptr noundef @.str.549, i32 noundef 2612, ptr noundef @.str.550) #8
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @col_set_str(ptr noundef %i.d, i32 noundef 35, ptr noundef @.str.551)
  %i.e = load ptr, ptr %i.c, align 8
  tail call void @col_clear(ptr noundef %i.e, i32 noundef 25)
  %i.f = load i32, ptr @proto_netlink_netfilter, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.f, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.h = load i32, ptr @ett_netlink_netfilter, align 4
  %i.i = tail call ptr @proto_item_add_subtree(ptr noundef %i.g, i32 noundef %i.h) ; 25 uses
  %i.j = getelementptr i8, ptr %3, i64 4          ; 3 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = tail call i32 @dissect_netlink_header(ptr noundef %0, ptr noundef %1, ptr noundef %i.i, i32 noundef 0, i32 noundef %i.k, i32 noundef -1, ptr noundef null) ; 23 uses
  %i.m = load i32, ptr @hf_netlink_netfilter_subsys, align 4
  %i.n = load i32, ptr %i.j, align 4
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.m, ptr noundef %0, i32 noundef 4, i32 noundef 2, i32 noundef %i.n) ; 0 uses
  %i.p = getelementptr i8, ptr %3, i64 8          ; 2 uses
  %5 = load i16, ptr %i.p, align 4
  %6 = lshr i16 %5, 8
  %trunc = trunc nuw i16 %6 to i8
  %switch.tableidx = add i8 %trunc, -2            ; 3 uses
  %i.q = icmp ult i8 %switch.tableidx, 9
  br i1 %i.q, label %switch.hole_check, label %bb.e

switch.hole_check:                                ; preds = %bb.d
  %switch.maskindex = zext nneg i8 %switch.tableidx to i16
  %switch.shifted = lshr i16 279, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.e

switch.lookup:                                    ; preds = %switch.hole_check
  %i.r = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dissect_netlink_netfilter, i64 %i.r
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.s = load i32, ptr %switch.load, align 4
  %i.t = load i32, ptr %i.j, align 4
  %i.u = tail call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.s, ptr noundef %0, i32 noundef 4, i32 noundef 2, i32 noundef %i.t) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %switch.hole_check, %bb.d, %switch.lookup
  store ptr %1, ptr %4, align 8
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 0, ptr %7, align 8
  %8 = load i16, ptr %i.p, align 4                ; 7 uses
  %9 = lshr i16 %8, 8
  %trunc64 = trunc nuw i16 %9 to i8
  switch i8 %trunc64, label %bb.n [
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
    i8 4, label %bb.i
    i8 6, label %bb.k
    i8 10, label %bb.l
  ]

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr @hf_netlink_netfilter_family, align 4
  %i.w = tail call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.v, ptr noundef %0, i32 noundef %i.l, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.x = add i32 %i.l, 1
  %i.y = load i32, ptr @hf_netlink_netfilter_version, align 4
  %i.z = tail call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.y, ptr noundef %0, i32 noundef %i.x, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aa = add i32 %i.l, 2
  %i.ab = load i32, ptr @hf_netlink_netfilter_resid, align 4
  %i.ac = tail call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.ab, ptr noundef %0, i32 noundef %i.aa, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ad = add i32 %i.l, 4
  %i.ae = load i32, ptr @hf_nfct_attr, align 4
  %i.af = load i32, ptr @ett_nfct_attr, align 4
  %i.ag = call i32 @dissect_netlink_attributes_to_end(ptr noundef %0, i32 noundef %i.ae, i32 noundef %i.af, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef %i.i, i32 noundef %i.ad, ptr noundef @dissect_nfct_attrs)
  br label %dissect_netfilter_queue.exit

bb.g:                                             ; preds = %bb.e
  %i.ah = load i32, ptr @hf_netlink_netfilter_family, align 4
  %i.ai = tail call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.ah, ptr noundef %0, i32 noundef %i.l, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aj = add i32 %i.l, 1
  %i.ak = load i32, ptr @hf_netlink_netfilter_version, align 4
  %i.al = tail call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.ak, ptr noundef %0, i32 noundef %i.aj, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.am = add i32 %i.l, 2
  %i.an = load i32, ptr @hf_netlink_netfilter_resid, align 4
  %i.ao = tail call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.an, ptr noundef %0, i32 noundef %i.am, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ap = add i32 %i.l, 4
  %i.aq = load i32, ptr @hf_nfexp_attr, align 4
  %i.ar = load i32, ptr @ett_nfexp_attr, align 4
  %i.as = call i32 @dissect_netlink_attributes_to_end(ptr noundef %0, i32 noundef %i.aq, i32 noundef %i.ar, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef %i.i, i32 noundef %i.ap, ptr noundef @dissect_nfexp_attrs)
  br label %dissect_netfilter_queue.exit

bb.h:                                             ; preds = %bb.e
  %i.at = load i32, ptr @hf_netlink_netfilter_family, align 4
  %i.au = tail call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.at, ptr noundef %0, i32 noundef %i.l, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.av = add i32 %i.l, 1
  %i.aw = load i32, ptr @hf_netlink_netfilter_version, align 4
  %i.ax = tail call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.aw, ptr noundef %0, i32 noundef %i.av, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ay = add i32 %i.l, 2
  %i.az = load i32, ptr @hf_netlink_netfilter_resid, align 4
  %i.ba = tail call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.az, ptr noundef %0, i32 noundef %i.ay, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bb = add i32 %i.l, 4                         ; 2 uses
  %trunc.i = trunc i16 %8 to i8
  %i.bc = icmp ult i8 %trunc.i, 3
  br i1 %i.bc, label %switch.lookup70, label %dissect_netfilter_queue.exit

switch.lookup70:                                  ; preds = %bb.h
  %trunc.i.mask = and i16 %8, 3
  %i.bd = zext nneg i16 %trunc.i.mask to i64
  %switch.gep71 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dissect_netlink_netfilter.2, i64 %i.bd
  %switch.load72 = load ptr, ptr %switch.gep71, align 8
  %trunc.i.mask77 = and i16 %8, 3
  %i.be = zext nneg i16 %trunc.i.mask77 to i64
  %switch.gep73 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dissect_netlink_netfilter.3, i64 %i.be
  %switch.load74 = load ptr, ptr %switch.gep73, align 8
  %trunc.i.mask78 = and i16 %8, 3
  %i.bf = zext nneg i16 %trunc.i.mask78 to i64
  %switch.gep75 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dissect_netlink_netfilter.4, i64 %i.bf
  %switch.load76 = load ptr, ptr %switch.gep75, align 8
  %i.bg = load i32, ptr %switch.load72, align 4
  %i.bh = load i32, ptr %switch.load74, align 4
  %i.bi = call i32 @dissect_netlink_attributes_to_end(ptr noundef %0, i32 noundef %i.bg, i32 noundef %i.bh, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef %i.i, i32 noundef %i.bb, ptr noundef nonnull %switch.load76)
  br label %dissect_netfilter_queue.exit

bb.i:                                             ; preds = %bb.e
  %i.bj = and i16 %8, 255
  %cond.i = icmp eq i16 %i.bj, 0
  br i1 %cond.i, label %bb.j, label %dissect_netfilter_queue.exit

bb.j:                                             ; preds = %bb.i
  %i.bk = tail call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %i.l)
  %i.bl = load ptr, ptr @nflog_handle, align 8
  %i.bm = tail call i32 @call_dissector(ptr noundef %i.bl, ptr noundef %i.bk, ptr noundef %1, ptr noundef %i.i) ; 0 uses
  %i.bn = tail call i32 @tvb_reported_length(ptr noundef %0)
  br label %dissect_netfilter_queue.exit

bb.k:                                             ; preds = %bb.e
  %i.bo = load i32, ptr @hf_netlink_netfilter_family, align 4
  %i.bp = tail call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.bo, ptr noundef %0, i32 noundef %i.l, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bq = add i32 %i.l, 1
  %i.br = load i32, ptr @hf_netlink_netfilter_version, align 4
  %i.bs = tail call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.br, ptr noundef %0, i32 noundef %i.bq, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bt = add i32 %i.l, 2
  %i.bu = load i32, ptr @hf_netlink_netfilter_resid, align 4
  %i.bv = tail call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.bu, ptr noundef %0, i32 noundef %i.bt, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bw = add i32 %i.l, 4
  %i.bx = load i32, ptr @hf_ipset_attr, align 4
  %i.by = load i32, ptr @ett_ipset_attr, align 4
  %i.bz = call i32 @dissect_netlink_attributes_to_end(ptr noundef %0, i32 noundef %i.bx, i32 noundef %i.by, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef %i.i, i32 noundef %i.bw, ptr noundef @dissect_ipset_attrs)
  br label %dissect_netfilter_queue.exit

bb.l:                                             ; preds = %bb.e
  %i.ca = load i32, ptr @hf_netlink_netfilter_family, align 4
  %i.cb = tail call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.ca, ptr noundef %0, i32 noundef %i.l, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cc = add i32 %i.l, 1
  %i.cd = load i32, ptr @hf_netlink_netfilter_version, align 4
  %i.ce = tail call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.cd, ptr noundef %0, i32 noundef %i.cc, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cf = add i32 %i.l, 2
  %i.cg = load i32, ptr @hf_netlink_netfilter_resid, align 4
  %i.ch = tail call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.cg, ptr noundef %0, i32 noundef %i.cf, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ci = add i32 %i.l, 4                         ; 2 uses
  %trunc.i66 = trunc i16 %8 to i8
  switch i8 %trunc.i66, label %dissect_netfilter_queue.exit [
    i8 6, label %bb.m
    i8 7, label %bb.m
    i8 8, label %bb.m
    i8 25, label %bb.m
    i8 28, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l, %bb.l, %bb.l, %bb.l, %bb.l
  %i.cj = load i32, ptr @hf_nft_rule_attr, align 4
  %i.ck = load i32, ptr @ett_nft_rule_attr, align 4
  %i.cl = call i32 @dissect_netlink_attributes_to_end(ptr noundef %0, i32 noundef %i.cj, i32 noundef %i.ck, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef %i.i, i32 noundef %i.ci, ptr noundef @dissect_nft_rule_attrs)
  br label %dissect_netfilter_queue.exit

bb.n:                                             ; preds = %bb.e
  %i.cm = tail call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %i.l)
  %i.cn = tail call i32 @call_data_dissector(ptr noundef %i.cm, ptr noundef %1, ptr noundef %i.i) ; 0 uses
  %i.co = tail call i32 @tvb_reported_length(ptr noundef %0)
  br label %dissect_netfilter_queue.exit

dissect_netfilter_queue.exit:                     ; preds = %bb.h, %bb.m, %bb.l, %bb.j, %bb.i, %switch.lookup70, %bb.n, %bb.k, %bb.g, %bb.f
  %.0 = phi i32 [ %i.co, %bb.n ], [ %i.ag, %bb.f ], [ %i.as, %bb.g ], [ %i.l, %bb.i ], [ %i.bi, %switch.lookup70 ], [ %i.bz, %bb.k ], [ %i.bb, %bb.h ], [ %i.bn, %bb.j ], [ %i.cl, %bb.m ], [ %i.ci, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_netlink_netfilter() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @netlink_netfilter, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.271, i32 noundef 12, ptr noundef %i.a)
  %i.b = load i32, ptr @proto_netlink_netfilter, align 4
  %i.c = tail call ptr @find_dissector_add_dependency(ptr noundef @.str.272, i32 noundef %i.b)
  store ptr %i.c, ptr @nflog_handle, align 8
  %i.d = tail call ptr @find_dissector_table(ptr noundef @.str.273)
  store ptr %i.d, ptr @ethertype_table, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @find_dissector_add_dependency(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @find_dissector_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: noreturn null_pointer_is_valid
declare void @proto_report_dissector_bug(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_clear(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @dissect_netlink_header(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @call_data_dissector(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_remaining(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: null_pointer_is_valid
declare i32 @dissect_netlink_attributes_to_end(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_nfct_attrs(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
bb.a:
  %i.a = and i32 %4, 16383
  switch i32 %i.a, label %bb.k [
    i32 3, label %bb.b
    i32 7, label %bb.c
    i32 12, label %bb.d
    i32 5, label %bb.e
    i32 15, label %bb.g
    i32 16, label %bb.g
    i32 1, label %bb.i
    i32 2, label %bb.i
    i32 14, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @hf_nfct_attr_status, align 4
  %i.c = load i32, ptr @ett_nfct_status_attr, align 4
  %i.d = tail call ptr @proto_tree_add_bitmask(ptr noundef %3, ptr noundef %0, i32 noundef %5, i32 noundef %i.b, i32 noundef %i.c, ptr noundef @hf_nfct_attr_status_flags, i32 noundef 0) ; 0 uses
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr @hf_nfct_attr_timeout, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.e, ptr noundef %0, i32 noundef %5, i32 noundef %6, i32 noundef 0) ; 0 uses
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  %i.g = load i32, ptr @hf_nfct_attr_id, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.g, ptr noundef %0, i32 noundef %5, i32 noundef %6, i32 noundef 0) ; 0 uses
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  %i.i = and i32 %4, 32768
  %.not36 = icmp eq i32 %i.i, 0
  br i1 %.not36, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load i32, ptr @hf_nfct_help_attr, align 4
  %i.k = load i32, ptr @ett_nfct_help_attr, align 4
  %i.l = tail call i32 @dissect_netlink_attributes(ptr noundef %0, i32 noundef %i.j, i32 noundef %i.k, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %5, i32 noundef %6, ptr noundef @dissect_nfct_help_attrs)
  br label %bb.k

bb.g:                                             ; preds = %bb.a, %bb.a
  %i.m = and i32 %4, 32768
  %.not35 = icmp eq i32 %i.m, 0
  br i1 %.not35, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = load i32, ptr @hf_nfct_seqadj_attr, align 4
  %i.o = load i32, ptr @ett_nfct_seqadj_attr, align 4
  %i.p = tail call i32 @dissect_netlink_attributes(ptr noundef %0, i32 noundef %i.n, i32 noundef %i.o, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %5, i32 noundef %6, ptr noundef @dissect_nfct_seqadj_attrs)
  br label %bb.k

bb.i:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.q = and i32 %4, 32768
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = load i32, ptr @hf_nfct_tuple_attr, align 4
  %i.s = load i32, ptr @ett_nfct_tuple_attr, align 4
  %i.t = tail call i32 @dissect_netlink_attributes(ptr noundef %0, i32 noundef %i.r, i32 noundef %i.s, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %5, i32 noundef %6, ptr noundef @dissect_nfct_tuple_attrs)
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.i, %bb.g, %bb.e, %bb.j, %bb.h, %bb.f, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.i ], [ 1, %bb.b ], [ 1, %bb.c ], [ 1, %bb.d ], [ %i.l, %bb.f ], [ 0, %bb.g ], [ %i.p, %bb.h ], [ 0, %bb.e ], [ %i.t, %bb.j ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bitmask(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @dissect_netlink_attributes(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 0, 2) i32 @dissect_nfct_help_attrs(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
bb.a:
  %i.a = and i32 %4, 16383
  %cond = icmp eq i32 %i.a, 1
  br i1 %cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @hf_nfct_help_attr_help_name, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.b, ptr noundef %0, i32 noundef %5, i32 noundef %6, i32 noundef 2) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 0, 2) i32 @dissect_nfct_seqadj_attrs(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
bb.a:
  %i.a = and i32 %4, 16383
  %switch.tableidx = add nsw i32 %i.a, -1         ; 2 uses
  %i.b = icmp ult i32 %switch.tableidx, 3
  br i1 %i.b, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.c = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dissect_nfct_seqadj_attrs, i64 %i.c
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.d = load i32, ptr %switch.load, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.d, ptr noundef %0, i32 noundef %5, i32 noundef %6, i32 noundef 0) ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %switch.lookup ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_nfct_tuple_attrs(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
end_hunk_0

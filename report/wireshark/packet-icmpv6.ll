Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-icmpv6?download=true
inline.NumInlined: 34
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
@.str.1450 = private unnamed_addr constant [27 x i8] c"Destination Cleanup Object\00", align 1
@.str.1451 = private unnamed_addr constant [42 x i8] c"Destination Cleanup Object Acknowledgment\00", align 1
@.str.1452 = private unnamed_addr constant [38 x i8] c"Secure DODAG Information Solicitation\00", align 1
@.str.1453 = private unnamed_addr constant [32 x i8] c"Secure DODAG Information Object\00", align 1
@.str.1454 = private unnamed_addr constant [40 x i8] c"Secure Destination Advertisement Object\00", align 1
@.str.1455 = private unnamed_addr constant [55 x i8] c"Secure Destination Advertisement Object Acknowledgment\00", align 1
@.str.1456 = private unnamed_addr constant [18 x i8] c"Consistency Check\00", align 1
@.str.1457 = private unnamed_addr constant [27 x i8] c"P2P Discovery Reply Object\00", align 1
@.str.1458 = private unnamed_addr constant [34 x i8] c"P2P Secure Discovery Reply Object\00", align 1
@.str.1459 = private unnamed_addr constant [43 x i8] c"P2P Discovery Reply Object Acknowledgement\00", align 1
@.str.1460 = private unnamed_addr constant [50 x i8] c"P2P Secure Discovery Reply Object Acknowledgement\00", align 1
@rpl_code_val = internal constant [16 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.1446 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.1447 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.1448 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.1449 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.1450 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.1451 }, { i32, [4 x i8], ptr } { i32 128, [4 x i8] zeroinitializer, ptr @.str.1452 }, { i32, [4 x i8], ptr } { i32 129, [4 x i8] zeroinitializer, ptr @.str.1453 }, { i32, [4 x i8], ptr } { i32 130, [4 x i8] zeroinitializer, ptr @.str.1454 }, { i32, [4 x i8], ptr } { i32 131, [4 x i8] zeroinitializer, ptr @.str.1455 }, { i32, [4 x i8], ptr } { i32 138, [4 x i8] zeroinitializer, ptr @.str.1456 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.1457 }, { i32, [4 x i8], ptr } { i32 132, [4 x i8] zeroinitializer, ptr @.str.1458 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.1459 }, { i32, [4 x i8], ptr } { i32 133, [4 x i8] zeroinitializer, ptr @.str.1460 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.1462 = private unnamed_addr constant [9 x i8] c"No error\00", align 1
@ext_echo_req_code_str = internal constant [2 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.1462 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.1464 = private unnamed_addr constant [16 x i8] c"Malformed Query\00", align 1
@.str.1465 = private unnamed_addr constant [18 x i8] c"No Such Interface\00", align 1
@.str.1466 = private unnamed_addr constant [20 x i8] c"No Such Table Entry\00", align 1
@.str.1467 = private unnamed_addr constant [34 x i8] c"Multiple Interfaces Satisfy Query\00", align 1
@ext_echo_reply_code_str = internal constant [6 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.1462 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.1464 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.1465 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.1466 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.1467 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.1469 = private unnamed_addr constant [13 x i8] c" (multicast)\00", align 1
@.str.1470 = private unnamed_addr constant [22 x i8] c" (no response found!)\00", align 1
@.str.1471 = private unnamed_addr constant [47 x i8] c"No response seen to ICMPv6 request in frame %u\00", align 1
@.str.1472 = private unnamed_addr constant [15 x i8] c" (reply in %d)\00", align 1
@.str.1473 = private unnamed_addr constant [8 x i8] c"%.3f ms\00", align 1
@.str.1474 = private unnamed_addr constant [17 x i8] c" (request in %d)\00", align 1
@.str.1475 = private unnamed_addr constant [5 x i8] c" (%s\00", align 1
@.str.1476 = private unnamed_addr constant [12 x i8] c" (%i bytes)\00", align 1
@.str.1477 = private unnamed_addr constant [29 x i8] c"Invalid option length (Zero)\00", align 1
@.str.1478 = private unnamed_addr constant [9 x i8] c" from %s\00", align 1
@.str.1479 = private unnamed_addr constant [6 x i8] c" : %s\00", align 1
@.str.1480 = private unnamed_addr constant [10 x i8] c" is at %s\00", align 1
@dissect_icmpv6_nd_opt.prefix_flag = internal constant [6 x ptr] [ptr @hf_icmpv6_opt_prefix_flag_l, ptr @hf_icmpv6_opt_prefix_flag_a, ptr @hf_icmpv6_opt_prefix_flag_r, ptr @hf_icmpv6_opt_prefix_flag_p, ptr @hf_icmpv6_opt_prefix_flag_reserved, ptr null], align 16
@.str.1481 = private unnamed_addr constant [9 x i8] c" : %s/%d\00", align 1
@.str.1482 = private unnamed_addr constant [6 x i8] c" : %d\00", align 1
@.str.1483 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.1484 = private unnamed_addr constant [7 x i8] c" %s/%d\00", align 1
@.str.1485 = private unnamed_addr constant [7 x i8] c" %s/%u\00", align 1
@dissect_icmpv6_nd_opt.pvd_id_flags = internal constant [5 x ptr] [ptr @hf_icmpv6_opt_pvd_id_flags_h, ptr @hf_icmpv6_opt_pvd_id_flags_l, ptr @hf_icmpv6_opt_pvd_id_flags_r, ptr @hf_icmpv6_opt_pvd_id_flags_reserved, ptr null], align 16
@dissect_icmpv6_nd_opt.map_flags = internal constant [3 x ptr] [ptr @hf_icmpv6_opt_map_flag_r, ptr @hf_icmpv6_opt_map_flag_reserved, ptr null], align 16
@dissect_icmpv6_nd_opt.route_flags = internal constant [3 x ptr] [ptr @hf_icmpv6_opt_route_info_flag_route_preference, ptr @hf_icmpv6_opt_route_info_flag_reserved, ptr null], align 16
@.str.1486 = private unnamed_addr constant [7 x i8] c" ::/%d\00", align 1
@dissect_icmpv6_nd_opt.extension_flags = internal constant [3 x ptr] [ptr @hf_icmpv6_opt_efo_rsv, ptr @hf_icmpv6_opt_efo_pex, ptr null], align 16
@dissect_icmpv6_nd_opt.earo_prefix_flags = internal constant [2 x ptr] [ptr @hf_icmpv6_opt_earo_flag_f, ptr null], align 16
@dissect_icmpv6_nd_opt.earo_flags = internal constant [7 x ptr] [ptr @hf_icmpv6_opt_earo_flag_reserved, ptr @hf_icmpv6_opt_earo_flag_c, ptr @hf_icmpv6_opt_earo_flag_p, ptr @hf_icmpv6_opt_earo_flag_i, ptr @hf_icmpv6_opt_earo_flag_r, ptr @hf_icmpv6_opt_earo_flag_t, ptr null], align 16
@.str.1487 = private unnamed_addr constant [25 x i8] c"Invalid ROVR length (%i)\00", align 1
@.str.1488 = private unnamed_addr constant [18 x i8] c" : Register %s %s\00", align 1
@dissect_icmpv6_nd_opt._6lowpan_context_flags = internal constant [4 x ptr] [ptr @hf_icmpv6_opt_6co_flag_c, ptr @hf_icmpv6_opt_6co_flag_cid, ptr @hf_icmpv6_opt_6co_flag_reserved, ptr null], align 16
@.str.1489 = private unnamed_addr constant [49 x i8] c" : Version %d.%d, Valid Lifetime : %d, 6LBR : %s\00", align 1
@dissect_icmpv6_nd_opt.opt_6cio_flags = internal constant [12 x ptr] [ptr @hf_icmpv6_opt_6cio_flag_reserved, ptr @hf_icmpv6_opt_6cio_flag_f, ptr @hf_icmpv6_opt_6cio_flag_g, ptr @hf_icmpv6_opt_6cio_flag_e, ptr @hf_icmpv6_opt_6cio_flag_p, ptr @hf_icmpv6_opt_6cio_flag_b, ptr @hf_icmpv6_opt_6cio_flag_l, ptr @hf_icmpv6_opt_6cio_flag_d, ptr @hf_icmpv6_opt_6cio_flag_a, ptr @hf_icmpv6_opt_6cio_flag_x, ptr @hf_icmpv6_opt_6cio_flag_experimental, ptr null], align 16
@.str.1490 = private unnamed_addr constant [38 x i8] c"DNR: truncated option (no ADN length)\00", align 1
@.str.1491 = private unnamed_addr constant [37 x i8] c"DNR: truncated option (ADN too long)\00", align 1
@.str.1492 = private unnamed_addr constant [43 x i8] c"DNR: truncated option (addrs_len too long)\00", align 1
@.str.1493 = private unnamed_addr constant [48 x i8] c"DNR: invalid addrs_len %d (not divisible by 16)\00", align 1
@.str.1494 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.1495 = private unnamed_addr constant [5 x i8] c"%c%s\00", align 1
@.str.1496 = private unnamed_addr constant [48 x i8] c"DNR: truncated option (svc_params_len too long)\00", align 1
@.str.1497 = private unnamed_addr constant [111 x i8] c"Dissector for ICMPv6 Option (%d) code not implemented, Contact Wireshark developers if you want this supported\00", align 1
@.str.1498 = private unnamed_addr constant [2 x i8] c")\00", align 1
@dissect_rrenum.rr_flags = internal constant [7 x ptr] [ptr @hf_icmpv6_rr_flag_t, ptr @hf_icmpv6_rr_flag_r, ptr @hf_icmpv6_rr_flag_a, ptr @hf_icmpv6_rr_flag_s, ptr @hf_icmpv6_rr_flag_p, ptr @hf_icmpv6_rr_flag_rsv, ptr null], align 16
@.str.1499 = private unnamed_addr constant [19 x i8] c": %s %s/%u (%u-%u)\00", align 1
@dissect_rrenum.mask_flags = internal constant [4 x ptr] [ptr @hf_icmpv6_rr_pco_up_flagmask_l, ptr @hf_icmpv6_rr_pco_up_flagmask_a, ptr @hf_icmpv6_rr_pco_up_flagmask_reserved, ptr null], align 16
@dissect_rrenum.ra_flags = internal constant [4 x ptr] [ptr @hf_icmpv6_rr_pco_up_raflags_l, ptr @hf_icmpv6_rr_pco_up_raflags_a, ptr @hf_icmpv6_rr_pco_up_raflags_reserved, ptr null], align 16
@dissect_rrenum.up_flags = internal constant [4 x ptr] [ptr @hf_icmpv6_rr_pco_up_flag_v, ptr @hf_icmpv6_rr_pco_up_flag_p, ptr @hf_icmpv6_rr_pco_up_flag_reserved, ptr null], align 16
@.str.1500 = private unnamed_addr constant [18 x i8] c": %s/%u (keep %u)\00", align 1
@dissect_rrenum.rm_flags = internal constant [4 x ptr] [ptr @hf_icmpv6_rr_rm_flag_reserved, ptr @hf_icmpv6_rr_rm_flag_b, ptr @hf_icmpv6_rr_rm_flag_f, ptr null], align 16
@.str.1501 = private unnamed_addr constant [23 x i8] c": %s/%u (interface %u)\00", align 1
@dissect_nodeinfo.ni_flags = internal constant [8 x ptr] [ptr @hf_icmpv6_ni_flag_g, ptr @hf_icmpv6_ni_flag_s, ptr @hf_icmpv6_ni_flag_l, ptr @hf_icmpv6_ni_flag_c, ptr @hf_icmpv6_ni_flag_a, ptr @hf_icmpv6_ni_flag_t, ptr @hf_icmpv6_ni_flag_rsv, ptr null], align 16
@.str.1502 = private unnamed_addr constant [8 x i8] c" %s: %s\00", align 1
@.str.1503 = private unnamed_addr constant [25 x i8] c"Unknown Record Type (%d)\00", align 1
@.str.1504 = private unnamed_addr constant [35 x i8] c"MN should use AP-ID, AR-info tuple\00", align 1
@.str.1505 = private unnamed_addr constant [35 x i8] c"Network Initiated Handover trigger\00", align 1
@.str.1506 = private unnamed_addr constant [26 x i8] c"No new router information\00", align 1
@.str.1507 = private unnamed_addr constant [31 x i8] c"Limited new router information\00", align 1
@.str.1508 = private unnamed_addr constant [12 x i8] c"Unsolicited\00", align 1
@fmip6_prrtadv_code_val = internal constant [6 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.1504 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.1505 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.1506 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.1507 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.1508 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.1510 = private unnamed_addr constant [28 x i8] c"FBU sent from previous link\00", align 1
@.str.1511 = private unnamed_addr constant [23 x i8] c"FBU sent from new link\00", align 1
@fmip6_hi_code_val = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.1510 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.1511 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.1513 = private unnamed_addr constant [30 x i8] c"Handover Accepted, NCoA valid\00", align 1
@.str.1514 = private unnamed_addr constant [34 x i8] c"Handover Accepted, NCoA not valid\00", align 1
@.str.1515 = private unnamed_addr constant [31 x i8] c"Handover Accepted, NCoA in use\00", align 1
@.str.1516 = private unnamed_addr constant [33 x i8] c"Handover Accepted, NCoA assigned\00", align 1
@.str.1517 = private unnamed_addr constant [37 x i8] c"Handover Accepted, NCoA not assigned\00", align 1
@.str.1518 = private unnamed_addr constant [42 x i8] c"Handover Not Accepted, reason unspecified\00", align 1
@.str.1519 = private unnamed_addr constant [23 x i8] c"Insufficient resources\00", align 1
@fmip6_hack_code_val = internal constant [9 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.1513 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.1514 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.1515 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.1516 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.1517 }, { i32, [4 x i8], ptr } { i32 128, [4 x i8] zeroinitializer, ptr @.str.1518 }, { i32, [4 x i8], ptr } { i32 129, [4 x i8] zeroinitializer, ptr @.str.1410 }, { i32, [4 x i8], ptr } { i32 130, [4 x i8] zeroinitializer, ptr @.str.1519 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@dissect_rpl_control.rpl_secure_flags = internal constant [3 x ptr] [ptr @hf_icmpv6_rpl_secure_flag_t, ptr @hf_icmpv6_rpl_secure_flag_rsv, ptr null], align 16
@dissect_rpl_control.rpl_secure_flags2 = internal constant [4 x ptr] [ptr @hf_icmpv6_rpl_secure_kim, ptr @hf_icmpv6_rpl_secure_lvl, ptr @hf_icmpv6_rpl_secure_rsv, ptr null], align 16
@dissect_rpl_control.rpl_dio_flags = internal constant [5 x ptr] [ptr @hf_icmpv6_rpl_dio_flag_g, ptr @hf_icmpv6_rpl_dio_flag_0, ptr @hf_icmpv6_rpl_dio_flag_mop, ptr @hf_icmpv6_rpl_dio_flag_prf, ptr null], align 16
@dissect_rpl_control.rpl_dao_flags = internal constant [4 x ptr] [ptr @hf_icmpv6_rpl_dao_flag_k, ptr @hf_icmpv6_rpl_dao_flag_d, ptr @hf_icmpv6_rpl_dao_flag_rsv, ptr null], align 16
@dissect_rpl_control.rpl_daoack_flags = internal constant [3 x ptr] [ptr @hf_icmpv6_rpl_daoack_flag_d, ptr @hf_icmpv6_rpl_daoack_flag_rsv, ptr null], align 16
@dissect_rpl_control.rpl_dco_flags = internal constant [4 x ptr] [ptr @hf_icmpv6_rpl_dco_flag_k, ptr @hf_icmpv6_rpl_dco_flag_d, ptr @hf_icmpv6_rpl_dco_flag_rsv, ptr null], align 16
@dissect_rpl_control.rpl_dcoack_flags = internal constant [3 x ptr] [ptr @hf_icmpv6_rpl_dcoack_flag_d, ptr @hf_icmpv6_rpl_dcoack_flag_rsv, ptr null], align 16
@dissect_rpl_control.rpl_cc_flags = internal constant [3 x ptr] [ptr @hf_icmpv6_rpl_cc_flag_r, ptr @hf_icmpv6_rpl_cc_flag_rsv, ptr null], align 16
@dissect_rpl_control.rpl_p2p_dro_flags = internal constant [5 x ptr] [ptr @hf_icmpv6_rpl_p2p_dro_flag_stop, ptr @hf_icmpv6_rpl_p2p_dro_flag_ack, ptr @hf_icmpv6_rpl_p2p_dro_flag_seq, ptr @hf_icmpv6_rpl_p2p_dro_flag_reserved, ptr null], align 16
@dissect_rpl_control.rpl_p2p_droack_flags = internal constant [3 x ptr] [ptr @hf_icmpv6_rpl_p2p_droack_flag_seq, ptr @hf_icmpv6_rpl_p2p_droack_flag_reserved, ptr null], align 16
@.str.1521 = private unnamed_addr constant [21 x i8] c" (Length : %i bytes)\00", align 1
@dissect_icmpv6_rpl_opt.rpl_metric_flags = internal constant [8 x ptr] [ptr @hf_icmpv6_rpl_opt_metric_reserved, ptr @hf_icmpv6_rpl_opt_metric_flag_p, ptr @hf_icmpv6_rpl_opt_metric_flag_c, ptr @hf_icmpv6_rpl_opt_metric_flag_o, ptr @hf_icmpv6_rpl_opt_metric_flag_r, ptr @hf_icmpv6_rpl_opt_metric_a, ptr @hf_icmpv6_rpl_opt_metric_prec, ptr null], align 16
@dissect_icmpv6_rpl_opt.metric_nsa_flags = internal constant [5 x ptr] [ptr @hf_icmpv6_rpl_opt_metric_nsa_object_reserved, ptr @hf_icmpv6_rpl_opt_metric_nsa_object_flags, ptr @hf_icmpv6_rpl_opt_metric_nsa_object_flag_a, ptr @hf_icmpv6_rpl_opt_metric_nsa_object_flag_o, ptr null], align 16
@dissect_icmpv6_rpl_opt.metric_ne_flags = internal constant [6 x ptr] [ptr @hf_icmpv6_rpl_opt_metric_ne_object_flags, ptr @hf_icmpv6_rpl_opt_metric_ne_object_flag_i, ptr @hf_icmpv6_rpl_opt_metric_ne_object_type, ptr @hf_icmpv6_rpl_opt_metric_ne_object_flag_e, ptr @hf_icmpv6_rpl_opt_metric_ne_object_energy, ptr null], align 16
@dissect_icmpv6_rpl_opt.metric_hp_flags = internal constant [4 x ptr] [ptr @hf_icmpv6_rpl_opt_metric_hp_object_reserved, ptr @hf_icmpv6_rpl_opt_metric_hp_object_flags, ptr @hf_icmpv6_rpl_opt_metric_hp_object_hp, ptr null], align 16
@dissect_icmpv6_rpl_opt.metric_lql_flags = internal constant [3 x ptr] [ptr @hf_icmpv6_rpl_opt_metric_lql_object_val, ptr @hf_icmpv6_rpl_opt_metric_lql_object_counter, ptr null], align 16
@dissect_icmpv6_rpl_opt.rpl_flags = internal constant [3 x ptr] [ptr @hf_icmpv6_rpl_opt_route_pref, ptr @hf_icmpv6_rpl_opt_route_reserved, ptr null], align 16
@dissect_icmpv6_rpl_opt.rpl_config_flags = internal constant [4 x ptr] [ptr @hf_icmpv6_rpl_opt_config_reserved, ptr @hf_icmpv6_rpl_opt_config_auth, ptr @hf_icmpv6_rpl_opt_config_pcs, ptr null], align 16
@.str.1522 = private unnamed_addr constant [15 x i8] c" (Imax=%.0fms)\00", align 1
@.str.1523 = private unnamed_addr constant [15 x i8] c" (Imin=%.0fms)\00", align 1
@.str.1524 = private unnamed_addr constant [7 x i8] c" (%us)\00", align 1
@dissect_icmpv6_rpl_opt.rpl_transit_flags = internal constant [4 x ptr] [ptr @hf_icmpv6_rpl_opt_transit_flag_e, ptr @hf_icmpv6_rpl_opt_transit_flag_i, ptr @hf_icmpv6_rpl_opt_transit_flag_rsv, ptr null], align 16
@dissect_icmpv6_rpl_opt.rpl_transit_pathctl = internal constant [5 x ptr] [ptr @hf_icmpv6_rpl_opt_transit_pathctl_pc1, ptr @hf_icmpv6_rpl_opt_transit_pathctl_pc2, ptr @hf_icmpv6_rpl_opt_transit_pathctl_pc3, ptr @hf_icmpv6_rpl_opt_transit_pathctl_pc4, ptr null], align 16
@dissect_icmpv6_rpl_opt.rpl_solicited_flags = internal constant [5 x ptr] [ptr @hf_icmpv6_rpl_opt_solicited_flag_v, ptr @hf_icmpv6_rpl_opt_solicited_flag_i, ptr @hf_icmpv6_rpl_opt_solicited_flag_d, ptr @hf_icmpv6_rpl_opt_solicited_flag_rsv, ptr null], align 16
@dissect_icmpv6_rpl_opt.rpl_prefix_flags = internal constant [5 x ptr] [ptr @hf_icmpv6_rpl_opt_prefix_flag_l, ptr @hf_icmpv6_rpl_opt_prefix_flag_a, ptr @hf_icmpv6_rpl_opt_prefix_flag_r, ptr @hf_icmpv6_rpl_opt_prefix_flag_rsv, ptr null], align 16
@.str.1525 = private unnamed_addr constant [10 x i8] c" (%u sec)\00", align 1
@.str.1526 = private unnamed_addr constant [12 x i8] c" (Infinity)\00", align 1
@.str.1527 = private unnamed_addr constant [16 x i8] c" (%d Address%s)\00", align 1
@.str.1528 = private unnamed_addr constant [3 x i8] c"es\00", align 1
@.str.1529 = private unnamed_addr constant [115 x i8] c"Dissector for ICMPv6 RPL Option (%d) code not implemented, Contact Wireshark developers if you want this supported\00", align 1
@.str.1530 = private unnamed_addr constant [15 x i8] c"Code must be 0\00", align 1
@.str.1531 = private unnamed_addr constant [20 x i8] c"MPL Seed Info: [%u]\00", align 1
@mpl_seed_id_code_to_length = internal unnamed_addr constant [4 x i8] c"\00\02\08\10", align 1
@.str.1532 = private unnamed_addr constant [63 x i8] c"Remaining data, %u bytes, is too short for Seed ID of %u bytes\00", align 1
@.str.1533 = private unnamed_addr constant [5 x i8] c"%04x\00", align 1
@.str.1534 = private unnamed_addr constant [73 x i8] c"Remaining data, %u bytes, is too short for Buffered Messages of %u bytes\00", align 1
@.str.1535 = private unnamed_addr constant [18 x i8] c"Buffered Messages\00", align 1
@.str.1536 = private unnamed_addr constant [59 x i8] c"%u bytes data is left after dissecting MPL Control Message\00", align 1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_icmpv6() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str.1149, ptr noundef nonnull @.str.1150, ptr noundef nonnull @.str.1151) ; 2 uses
  store i32 %i.a, ptr @proto_icmpv6, align 4
  tail call void @proto_register_field_array(i32 noundef %i.a, ptr noundef nonnull @proto_register_icmpv6.hf, i32 noundef 498)
  tail call void @proto_register_subtree_array(ptr noundef nonnull @proto_register_icmpv6.ett, i32 noundef 56)
  %i.b = load i32, ptr @proto_icmpv6, align 4
  %i.c = tail call ptr @expert_register_protocol(i32 noundef %i.b)
  tail call void @expert_register_field_array(ptr noundef %i.c, ptr noundef nonnull @proto_register_icmpv6.ei, i32 noundef 16)
  %i.d = load i32, ptr @proto_icmpv6, align 4
  tail call void @register_seq_analysis(ptr noundef nonnull @.str.1151, ptr noundef nonnull @.str.1152, i32 noundef %i.d, ptr noundef null, i32 noundef 2, ptr noundef nonnull @icmpv6_seq_analysis_packet)
  %i.e = load i32, ptr @proto_icmpv6, align 4
  %i.f = tail call ptr @register_dissector(ptr noundef nonnull @.str.1151, ptr noundef nonnull @dissect_icmpv6, i32 noundef %i.e)
  store ptr %i.f, ptr @icmpv6_handle, align 8
  %i.g = load i32, ptr @proto_icmpv6, align 4
  %i.h = tail call ptr @register_heur_dissector_list_with_description(ptr noundef nonnull @.str.1151, ptr noundef nonnull @.str.1153, i32 noundef %i.g)
  store ptr %i.h, ptr @icmpv6_heur_subdissector_list, align 8
  %i.i = tail call i32 @register_tap(ptr noundef nonnull @.str.1151)
  store i32 %i.i, ptr @icmpv6_tap, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_register_field_array(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_register_subtree_array(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @expert_register_protocol(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @expert_register_field_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @register_seq_analysis(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 0, 2) i32 @icmpv6_seq_analysis_packet(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, i32 %4) #0 {
bb.a:
  %i.a = tail call ptr @sequence_analysis_create_sai_with_addresses(ptr noundef %1, ptr noundef %0) ; 10 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 20
  %i.c = load i32, ptr %i.b, align 4
  store i32 %i.c, ptr %i.a, align 8
  tail call void @sequence_analysis_use_color_filter(ptr noundef %1, ptr noundef nonnull %i.a)
  %i.d = getelementptr i8, ptr %1, i64 288
  %i.e = load i32, ptr %i.d, align 8
  %i.f = trunc i32 %i.e to i16
  %i.g = getelementptr i8, ptr %i.a, i64 32       ; 2 uses
  store i16 %i.f, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %1, i64 292
  %i.i = load i32, ptr %i.h, align 4
  %i.j = trunc i32 %i.i to i16
  %i.k = getelementptr i8, ptr %i.a, i64 64       ; 2 uses
  store i16 %i.j, ptr %i.k, align 8
  tail call void @sequence_analysis_use_col_info_as_label_comment(ptr noundef %1, ptr noundef nonnull %i.a)
  %i.l = getelementptr i8, ptr %1, i64 284
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.o = tail call ptr @wmem_file_scope()
  %i.p = load i32, ptr @proto_icmpv6, align 4
  %i.q = tail call ptr @p_get_proto_data(ptr noundef %i.o, ptr noundef %1, i32 noundef %i.p, i32 noundef 0) ; 2 uses
  %.not28 = icmp eq ptr %i.q, null
  br i1 %.not28, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i16 0, ptr %i.g, align 8
  %5 = load i16, ptr %i.q, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  store i16 %6, ptr %i.k, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.r = getelementptr i8, ptr %i.a, i64 120
  store i16 1, ptr %i.r, align 8
  %i.s = getelementptr i8, ptr %i.a, i64 96
  store i16 0, ptr %i.s, align 8
  %i.t = getelementptr i8, ptr %i.a, i64 109
  store i8 1, ptr %i.t, align 1
  %i.u = getelementptr i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  tail call void @g_queue_push_tail(ptr noundef %i.v, ptr noundef nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.0 = phi i32 [ 1, %bb.e ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_icmpv6(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address) %3) #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i16, align 2                      ; 6 uses
  %i.d = alloca i16, align 2                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca i8, align 1                       ; 4 uses
  %i.j = alloca i8, align 1                       ; 5 uses
  %i.k = alloca i8, align 1                       ; 4 uses
  %i.l = alloca i8, align 1                       ; 4 uses
  %i.m = alloca i8, align 1                       ; 4 uses
  %i.n = alloca i8, align 1                       ; 4 uses
  %i.o = alloca i32, align 4                      ; 6 uses
  %i.p = alloca i8, align 1                       ; 5 uses
  %i.q = alloca i32, align 4                      ; 4 uses
  %4 = alloca [3 x %struct._wmem_tree_key_t], align 16 ; 19 uses
  %5 = alloca %struct.nstime_t, align 8           ; 8 uses
  %i.r = alloca i32, align 4                      ; 6 uses
  %i.s = alloca i32, align 4                      ; 4 uses
  %6 = alloca [3 x %struct._wmem_tree_key_t], align 16 ; 14 uses
  %i.t = alloca i32, align 4                      ; 4 uses
  %7 = alloca [4 x %struct.vec_t], align 16       ; 14 uses
  %i.u = alloca [2 x i32], align 4                ; 5 uses
  %i.v = alloca i16, align 2                      ; 5 uses
  %i.w = alloca [3 x i32], align 4                ; 12 uses
  %i.x = alloca [2 x i16], align 2                ; 5 uses
  %8 = alloca %struct.nstime_t, align 8           ; 5 uses
  %9 = alloca %struct.nstime_t, align 8           ; 4 uses
  %i.y = alloca ptr, align 8                      ; 3 uses
  %i.z = alloca i16, align 2                      ; 5 uses
  %i.aa = alloca i8, align 1                      ; 5 uses
  %i.ab = alloca i8, align 1                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #7
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ac = load i8, ptr %3, align 1
  %i.ad = icmp eq i8 %i.ac, 6
  %spec.select = select i1 %i.ad, ptr %3, ptr null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ae = phi ptr [ null, %bb.a ], [ %spec.select, %bb.b ] ; 2 uses
  %i.af = getelementptr i8, ptr %1, i64 8         ; 13 uses
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void @col_set_str(ptr noundef %i.ag, i32 noundef 35, ptr noundef nonnull @.str.1150)
  %i.ah = load ptr, ptr %i.af, align 8
  tail call void @col_clear(ptr noundef %i.ah, i32 noundef 25)
  %.not731 = icmp eq ptr %2, null                 ; 2 uses
  br i1 %.not731, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = load i32, ptr @proto_icmpv6, align 4
  %i.aj = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.ai, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.ak = load i32, ptr @ett_icmpv6, align 4
  %i.al = tail call ptr @proto_item_add_subtree(ptr noundef %i.aj, i32 noundef %i.ak) ; 2 uses
  %i.am = load i32, ptr @hf_icmpv6_type, align 4
  %i.an = tail call ptr @proto_tree_add_item(ptr noundef %i.al, i32 noundef %i.am, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0704 = phi ptr [ %i.an, %bb.d ], [ null, %bb.c ] ; 4 uses
  %.0 = phi ptr [ %i.al, %bb.d ], [ null, %bb.c ] ; 200 uses
  %i.ao = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 12 uses
  %i.ap = zext i8 %i.ao to i32                    ; 2 uses
  %.not732 = icmp sgt i8 %i.ao, -1
  br i1 %.not732, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aq = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %.0704, ptr noundef nonnull @ei_icmpv6_type_error) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ar = load ptr, ptr %i.af, align 8
  %i.as = getelementptr i8, ptr %1, i64 416       ; 29 uses
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = tail call ptr @val_to_str(ptr noundef %i.at, i32 noundef %i.ap, ptr noundef nonnull @icmpv6_type_val, ptr noundef nonnull @.str.1390)
  tail call void @col_add_str(ptr noundef %i.ar, i32 noundef 25, ptr noundef %i.au)
  switch i8 %i.ao, label %bb.i [
    i8 -105, label %.thread
    i8 -104, label %bb.h
    i8 -103, label %bb.h
  ]

.thread:                                          ; preds = %bb.g
  %i.av = load i32, ptr @hf_icmpv6_mcast_ra_ad_interval, align 4
  %i.aw = tail call ptr @proto_tree_add_item(ptr noundef %.0, i32 noundef %i.av, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ax = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1) ; 3 uses
  %i.ay = zext i8 %i.ax to i32
  %i.az = and i8 %i.ax, 15
  br label %.thread794

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.ba = load i32, ptr @hf_icmpv6_mcast_ra_reserved, align 4
  %i.bb = tail call ptr @proto_tree_add_item(ptr noundef %.0, i32 noundef %i.ba, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bc = load i32, ptr @hf_icmpv6_code, align 4
  %i.bd = tail call ptr @proto_tree_add_item(ptr noundef %.0, i32 noundef %i.bc, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0709 = phi ptr [ %i.bd, %bb.i ], [ null, %bb.h ] ; 11 uses
  %i.be = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1) ; 12 uses
  %i.bf = zext i8 %i.be to i32                    ; 18 uses
  %i.bg = lshr i8 %i.be, 4                        ; 2 uses
  %i.bh = and i8 %i.be, 15                        ; 11 uses
  switch i8 %i.ao, label %bb.aa [
    i8 -99, label %bb.k
    i8 -98, label %bb.n
    i8 1, label %bb.q
    i8 3, label %bb.r
    i8 4, label %bb.s
    i8 -118, label %bb.t
    i8 -117, label %bb.u
    i8 -116, label %bb.v
    i8 -101, label %bb.w
    i8 -96, label %bb.x
    i8 -95, label %bb.y
  ]

bb.k:                                             ; preds = %bb.j
  %i.bi = load i32, ptr @hf_icmpv6_da_code_prefix, align 4
  %i.bj = zext nneg i8 %i.bg to i32
  %i.bk = tail call ptr @proto_tree_add_uint(ptr noundef %.0, i32 noundef %i.bi, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef %i.bj) ; 0 uses
  %i.bl = load i32, ptr @hf_icmpv6_dar_code_suffix, align 4
  %i.bm = zext nneg i8 %i.bh to i32               ; 2 uses
  %i.bn = tail call ptr @proto_tree_add_uint(ptr noundef %.0, i32 noundef %i.bl, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef %i.bm) ; 0 uses
  %i.bo = load i32, ptr @hf_icmpv6_da_code_suffix, align 4
  %i.bp = tail call ptr @proto_tree_add_uint(ptr noundef %.0, i32 noundef %i.bo, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef %i.bm) ; 2 uses
  %.not.i = icmp eq ptr %i.bp, null
  br i1 %.not.i, label %.thread794, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bq = getelementptr i8, ptr %i.bp, i64 40
  %i.br = load ptr, ptr %i.bq, align 8            ; 2 uses
  %.not5.i = icmp eq ptr %i.br, null
  br i1 %.not5.i, label %.thread794, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bs = getelementptr i8, ptr %i.br, i64 28     ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = or i32 %i.bt, 1
  store i32 %i.bu, ptr %i.bs, align 4
  br label %.thread794

bb.n:                                             ; preds = %bb.j
  %i.bv = load i32, ptr @hf_icmpv6_da_code_prefix, align 4
  %i.bw = zext nneg i8 %i.bg to i32
  %i.bx = tail call ptr @proto_tree_add_uint(ptr noundef %.0, i32 noundef %i.bv, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef %i.bw) ; 0 uses
  %i.by = load i32, ptr @hf_icmpv6_dac_code_suffix, align 4
  %i.bz = zext nneg i8 %i.bh to i32               ; 2 uses
  %i.ca = tail call ptr @proto_tree_add_uint(ptr noundef %.0, i32 noundef %i.by, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef %i.bz) ; 0 uses
  %i.cb = load i32, ptr @hf_icmpv6_da_code_suffix, align 4
  %i.cc = tail call ptr @proto_tree_add_uint(ptr noundef %.0, i32 noundef %i.cb, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef %i.bz) ; 2 uses
  %.not.i747 = icmp eq ptr %i.cc, null
  br i1 %.not.i747, label %.thread794, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cd = getelementptr i8, ptr %i.cc, i64 40
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  %.not5.i748 = icmp eq ptr %i.ce, null
  br i1 %.not5.i748, label %.thread794, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cf = getelementptr i8, ptr %i.ce, i64 28     ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4
  %i.ch = or i32 %i.cg, 1
  store i32 %i.ch, ptr %i.cf, align 4
  br label %.thread794
end_hunk_0
begin_hunk_1_@dissect_icmpv6_rpl_opt:bb.a
  %i.kw = call ptr @proto_tree_add_item(ptr noundef %i.s, i32 noundef %i.kv, ptr noundef %0, i32 noundef %i.aj, i32 noundef 1, i32 noundef 0)
  %i.kx = load i32, ptr @ett_icmpv6_rpl_route_discovery_flag, align 4
  %i.ky = call ptr @proto_item_add_subtree(ptr noundef %i.kw, i32 noundef %i.kx) ; 4 uses
  %i.kz = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.aj) ; 4 uses
  %i.la = zext i8 %i.kz to i32                    ; 3 uses
  %i.lb = and i8 %i.kz, 15                        ; 2 uses
  %i.lc = load i32, ptr @hf_icmpv6_rpl_opt_route_discovery_reply, align 4
  %i.ld = call ptr @proto_tree_add_item(ptr noundef %i.ky, i32 noundef %i.lc, ptr noundef %0, i32 noundef %i.aj, i32 noundef 1, i32 noundef 0)
  %i.le = load i32, ptr @hf_icmpv6_rpl_opt_route_discovery_hop_by_hop, align 4
  %i.lf = call ptr @proto_tree_add_item(ptr noundef %i.ky, i32 noundef %i.le, ptr noundef %0, i32 noundef %i.aj, i32 noundef 1, i32 noundef 0)
  %i.lg = load i32, ptr @hf_icmpv6_rpl_opt_route_discovery_num_of_routes, align 4
  %i.lh = call ptr @proto_tree_add_item(ptr noundef %i.ky, i32 noundef %i.lg, ptr noundef %0, i32 noundef %i.aj, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.li = load i32, ptr @hf_icmpv6_rpl_opt_route_discovery_compr, align 4
  %i.lj = call ptr @proto_tree_add_item(ptr noundef %i.ky, i32 noundef %i.li, ptr noundef %0, i32 noundef %i.aj, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.lk = add i32 %.0465510, 3                    ; 4 uses
  %i.ll = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.lk) ; 2 uses
  %i.lm = load i32, ptr @hf_icmpv6_rpl_opt_route_discovery_lifetime, align 4
  %i.ln = call ptr @proto_tree_add_item(ptr noundef %i.s, i32 noundef %i.lm, ptr noundef %0, i32 noundef %i.lk, i32 noundef 1, i32 noundef 0) ; 2 uses
  br i1 %or.cond, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.lo = load i32, ptr @hf_icmpv6_rpl_opt_route_discovery_nh, align 4
  %i.lp = call ptr @proto_tree_add_item(ptr noundef %i.s, i32 noundef %i.lo, ptr noundef %0, i32 noundef %i.lk, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.lq = load i32, ptr @hf_icmpv6_rpl_opt_route_discovery_maxrank, align 4
  %i.lr = call ptr @proto_tree_add_item(ptr noundef %i.s, i32 noundef %i.lq, ptr noundef %0, i32 noundef %i.lk, i32 noundef 1, i32 noundef 0)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.1475 = phi ptr [ %.0474.ph553, %bb.ap ], [ %i.lr, %bb.aq ] ; 2 uses
  %i.ls = add i32 %.0465510, 4
  switch i8 %4, label %bb.ay [
    i8 -124, label %bb.as
    i8 4, label %bb.as
  ]

bb.as:                                            ; preds = %bb.ar, %bb.ar
  %.not = icmp sgt i8 %i.kz, -1
  br i1 %.not, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.lt = call ptr @expert_add_info(ptr noundef %2, ptr noundef %i.ld, ptr noundef nonnull @ei_icmpv6_rpl_p2p_dro_rdo_zero) ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.lu = and i32 %i.la, 48
  %.not481 = icmp eq i32 %i.lu, 0
  br i1 %.not481, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.lv = call ptr @expert_add_info(ptr noundef %2, ptr noundef %i.lh, ptr noundef nonnull @ei_icmpv6_rpl_p2p_dro_rdo_zero) ; 0 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.not482 = icmp ult i8 %i.ll, 64
  br i1 %.not482, label %bb.bf, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.lw = call ptr @expert_add_info(ptr noundef %2, ptr noundef %i.ln, ptr noundef nonnull @ei_icmpv6_rpl_p2p_dro_rdo_zero) ; 0 uses
  br label %bb.bf

bb.ay:                                            ; preds = %bb.ar
  %i.lx = and i32 %i.la, 64
  %.not483 = icmp eq i32 %i.lx, 0
  br i1 %.not483, label %bb.bd, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.not484 = icmp sgt i8 %i.kz, -1
  br i1 %.not484, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ly = call ptr @expert_add_info(ptr noundef %2, ptr noundef %i.lf, ptr noundef nonnull @ei_icmpv6_rpl_p2p_hop_by_hop) ; 0 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.lz = and i32 %i.la, 48
  %.not485 = icmp eq i32 %i.lz, 0
  br i1 %.not485, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ma = call ptr @expert_add_info(ptr noundef %2, ptr noundef %i.lh, ptr noundef nonnull @ei_icmpv6_rpl_p2p_num_of_routes) ; 0 uses
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bb, %bb.bc, %bb.ay
  %i.mb = zext i8 %i.ll to i32                    ; 2 uses
  %i.mc = lshr i32 %i.mb, 5
  %i.md = and i32 %i.mc, 6
  %i.me = shl nuw nsw i32 1, %i.md
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ln, ptr noundef nonnull @.str.1525, i32 noundef %i.me)
  %i.mf = and i32 %i.mb, 63
  %.not486 = icmp eq i32 %i.mf, 0
  br i1 %.not486, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.1475, ptr noundef nonnull @.str.1526)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bd, %bb.be, %bb.aw, %bb.ax
  %i.mg = load i32, ptr @hf_icmpv6_rpl_opt_route_discovery_target_addr, align 4
  %i.mh = call ptr @proto_tree_add_item(ptr noundef %i.s, i32 noundef %i.mg, ptr noundef %0, i32 noundef %i.ls, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.mi = add i32 %.0465510, 20                   ; 3 uses
  %i.mj = sub nuw nsw i8 16, %i.lb                ; 3 uses
  %i.mk = add nsw i32 %i.ah, -18                  ; 2 uses
  %i.ml = zext nneg i8 %i.mj to i32               ; 2 uses
  %.lhs.trunc = trunc nsw i32 %i.mk to i16
  %.rhs.trunc = zext nneg i8 %i.mj to i16
  %i.mm = sdiv i16 %.lhs.trunc, %.rhs.trunc       ; 3 uses
  %.sext = sext i16 %i.mm to i32                  ; 2 uses
  %i.mn = load i32, ptr @hf_icmpv6_rpl_opt_route_discovery_addr_vec, align 4
  %i.mo = call ptr @proto_tree_add_item(ptr noundef %i.s, i32 noundef %i.mn, ptr noundef %0, i32 noundef %i.mi, i32 noundef %i.mk, i32 noundef 0)
  %i.mp = load i32, ptr @ett_icmpv6_rpl_route_discovery_addr_vec, align 4
  %i.mq = call ptr @proto_item_add_subtree(ptr noundef %i.mo, i32 noundef %i.mp) ; 2 uses
  %.not487 = icmp eq i16 %i.mm, 1
  %i.mr = select i1 %.not487, ptr @.str.1401, ptr @.str.1528
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.mq, ptr noundef nonnull @.str.1527, i32 noundef %.sext, ptr noundef nonnull %i.mr)
  %.not488512 = icmp eq i16 %i.mm, 0
  br i1 %.not488512, label %._crit_edge517, label %.lr.ph516

.lr.ph516:                                        ; preds = %bb.bf
  %i.ms = zext nneg i8 %i.lb to i64
  %i.mt = getelementptr i8, ptr %i.e, i64 %i.ms
  %i.mu = zext nneg i8 %i.mj to i64
  br label %bb.bg

bb.bg:                                            ; preds = %.lr.ph516, %bb.bg
  %.0514 = phi i32 [ %.sext, %.lr.ph516 ], [ %i.mv, %bb.bg ]
  %.11513 = phi i32 [ %i.mi, %.lr.ph516 ], [ %i.mz, %bb.bg ] ; 3 uses
  %i.mv = add i32 %.0514, -1                      ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.e, i8 noundef 0, i64 noundef 16, i1 noundef false) #7
  %i.mw = call ptr @tvb_memcpy(ptr noundef %0, ptr noundef %i.mt, i32 noundef %.11513, i64 noundef %i.mu) ; 0 uses
  %i.mx = load i32, ptr @hf_icmpv6_rpl_opt_route_discovery_addr_vec_addr, align 4
  %i.my = call ptr @proto_tree_add_ipv6(ptr noundef %i.mq, i32 noundef %i.mx, ptr noundef %0, i32 noundef %.11513, i32 noundef %i.ml, ptr noundef nonnull %i.e) ; 0 uses
  %i.mz = add i32 %.11513, %i.ml                  ; 2 uses
  %.not488 = icmp eq i32 %i.mv, 0
  br i1 %.not488, label %._crit_edge517, label %bb.bg, !llvm.loop !37

._crit_edge517:                                   ; preds = %bb.bg, %bb.bf
  %.11.lcssa = phi i32 [ %i.mi, %bb.bf ], [ %i.mz, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  br label %.loopexit504

bb.bh:                                            ; preds = %bb.d
  %i.na = zext i8 %i.ak to i32
  %i.nb = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %2, ptr noundef %i.q, ptr noundef nonnull @ei_icmpv6_undecoded_rpl_option, ptr noundef nonnull @.str.1529, i32 noundef %i.na) ; 0 uses
  %i.nc = load i32, ptr @hf_icmpv6_data, align 4
  %i.nd = call ptr @proto_tree_add_item(ptr noundef %i.s, i32 noundef %i.nc, ptr noundef %0, i32 noundef %i.aj, i32 noundef %i.ah, i32 noundef 0) ; 0 uses
  %i.ne = add i32 %i.aj, %i.ah
  br label %.loopexit504

.loopexit504:                                     ; preds = %.loopexit, %.preheader503, %bb.af, %bb.ag, %bb.bh, %._crit_edge517, %bb.an, %bb.am, %bb.ah, %bb.ae, %bb.y, %bb.x, %bb.e
  %.2476 = phi ptr [ %.0474.ph553, %bb.bh ], [ %.0474.ph553, %bb.e ], [ %.1475, %._crit_edge517 ], [ %.0474.ph553, %bb.x ], [ %.0474.ph553, %bb.y ], [ %.0474.ph553, %bb.ae ], [ %.0474.ph553, %bb.ag ], [ %.0474.ph553, %bb.af ], [ %.0474.ph553, %bb.ah ], [ %.0474.ph553, %bb.am ], [ %.0474.ph553, %bb.an ], [ %.0474.ph553, %.preheader503 ], [ %.0474.ph553, %.loopexit ]
  %.12 = phi i32 [ %i.ne, %bb.bh ], [ %i.ap, %bb.e ], [ %.11.lcssa, %._crit_edge517 ], [ %.9, %bb.x ], [ %i.hk, %bb.y ], [ %.10, %bb.ae ], [ %i.ja, %bb.ag ], [ %i.iu, %bb.af ], [ %i.jn, %bb.ah ], [ %i.kr, %bb.am ], [ %i.ku, %bb.an ], [ %i.aj, %.preheader503 ], [ %.8, %.loopexit ] ; 3 uses
  %i.nf = add i32 %i.ai, %.0465510                ; 5 uses
  %i.ng = icmp sgt i32 %i.nf, %.12
  br i1 %i.ng, label %bb.bi, label %.outer

bb.bi:                                            ; preds = %.loopexit504
  %i.nh = load i32, ptr @hf_icmpv6_unknown_data, align 4
  %i.ni = sub i32 %i.nf, %.12
  %i.nj = call ptr @proto_tree_add_item(ptr noundef %i.s, i32 noundef %i.nh, ptr noundef %0, i32 noundef %.12, i32 noundef %i.ni, i32 noundef 0)
  %i.nk = call ptr @expert_add_info(ptr noundef %2, ptr noundef %i.nj, ptr noundef nonnull @ei_icmpv6_unknown_data) ; 0 uses
  br label %.outer

.outer:                                           ; preds = %bb.bi, %.loopexit504
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.q, ptr noundef nonnull @.str.1498)
  %i.nl = call i32 @tvb_reported_length(ptr noundef %0)
  %i.nm = icmp sgt i32 %i.nl, %i.nf
  br i1 %i.nm, label %.lr.ph, label %.outer._crit_edge, !llvm.loop !28

.outer._crit_edge:                                ; preds = %.outer, %bb.c, %bb.a
  %.0465.lcssa = phi i32 [ %i.v, %bb.c ], [ %1, %bb.a ], [ %i.nf, %.outer ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0465.lcssa
}

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_uint16(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree_format(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strdup_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @capture_dissector_increment_count(ptr noundef, i32 noundef) local_unnamed_addr #2

declare double @exp2(double) local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @ldexp(double, i32) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #4

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(errnomem: write) }
attributes #7 = { nounwind }
attributes #8 = { nounwind memory(none) }
attributes #9 = { allocsize(1) }

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
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = !{i8 0, i8 2}
!20 = !{}
!21 = !{i64 2152874650}
!22 = distinct !{!22, !6}
!23 = distinct !{!23, !6}
!24 = distinct !{!24, !6}
!25 = distinct !{!25, !6}
!26 = distinct !{!26, !6}
!27 = distinct !{!27, !6}
!28 = distinct !{!28, !6}
!29 = distinct !{!29, !6}
!30 = distinct !{!30, !6}
!31 = distinct !{!31, !6}
!32 = distinct !{!32, !6}
!33 = distinct !{!33, !6}
!34 = distinct !{!34, !6}
!35 = distinct !{!35, !6}
!36 = distinct !{!36, !6}
!37 = distinct !{!37, !6}
end_hunk_1

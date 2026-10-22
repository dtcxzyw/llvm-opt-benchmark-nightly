Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-aim?download=true
inline.NumInlined: 79
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@dissect_aim_generic_migration_req:bb.a
.lr.ph.i:                                         ; preds = %._crit_edge, %.lr.ph.i
  %.08.i = phi i32 [ %i.m, %.lr.ph.i ], [ %.021.lcssa, %._crit_edge ]
  %i.m = tail call fastcc i32 @dissect_aim_tlv(ptr noundef %0, ptr noundef %1, i32 noundef %.08.i, ptr noundef %2, ptr noundef @aim_client_tlvs) ; 3 uses
  %i.n = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.m)
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %dissect_aim_tlv_sequence.exit, label %.lr.ph.i, !llvm.loop !0

dissect_aim_tlv_sequence.exit:                    ; preds = %.lr.ph.i, %._crit_edge
  %.0.lcssa.i = phi i32 [ %.021.lcssa, %._crit_edge ], [ %i.m, %.lr.ph.i ]
  ret i32 %.0.lcssa.i
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_aim_generic_motd(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_generic_motd_motdtype, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.c = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 2)
  %.not7.i = icmp eq i32 %i.c, 0
  br i1 %.not7.i, label %dissect_aim_tlv_sequence.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.08.i = phi i32 [ %i.d, %.lr.ph.i ], [ 2, %bb.a ]
  %i.d = tail call fastcc i32 @dissect_aim_tlv(ptr noundef %0, ptr noundef %1, i32 noundef %.08.i, ptr noundef %2, ptr noundef @aim_motd_tlvs) ; 3 uses
  %i.e = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.d)
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %dissect_aim_tlv_sequence.exit, label %.lr.ph.i, !llvm.loop !0

dissect_aim_tlv_sequence.exit:                    ; preds = %.lr.ph.i, %bb.a
  %.0.lcssa.i = phi i32 [ 2, %bb.a ], [ %i.d, %.lr.ph.i ]
  ret i32 %.0.lcssa.i
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_aim_generic_setprivflags(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_generic_priv_flags, align 4
  %i.b = load i32, ptr @ett_generic_priv_flags, align 4
  %i.c = tail call ptr @proto_tree_add_bitmask(ptr noundef %2, ptr noundef %0, i32 noundef 0, i32 noundef %i.a, i32 noundef %i.b, ptr noundef @dissect_aim_generic_setprivflags.flags, i32 noundef 0) ; 0 uses
  ret i32 4
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_aim_generic_capabilities(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @ett_generic_clientready, align 4
  %i.b = tail call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef %i.a, ptr noundef null, ptr noundef @.str.758) ; 2 uses
  %i.c = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 0)
  %.not13 = icmp eq i32 %i.c, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.014 = phi i32 [ %i.i, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.d = load i32, ptr @hf_generic_family, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.d, ptr noundef %0, i32 noundef %.014, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.f = or disjoint i32 %.014, 2
  %i.g = load i32, ptr @hf_generic_version, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.g, ptr noundef %0, i32 noundef %i.f, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.i = add i32 %.014, 4                         ; 3 uses
  %i.j = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.i)
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !33

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.i, %.lr.ph ]
  ret i32 %.0.lcssa
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_aim_generic_capack(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @ett_generic_clientready, align 4
  %i.b = tail call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef %i.a, ptr noundef null, ptr noundef @.str.759) ; 2 uses
  %i.c = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 0)
  %.not13 = icmp eq i32 %i.c, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.014 = phi i32 [ %i.i, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.d = load i32, ptr @hf_generic_family, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.d, ptr noundef %0, i32 noundef %.014, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.f = or disjoint i32 %.014, 2
  %i.g = load i32, ptr @hf_generic_version, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.g, ptr noundef %0, i32 noundef %i.f, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.i = add i32 %.014, 4                         ; 3 uses
  %i.j = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.i)
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !34

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.i, %.lr.ph ]
  ret i32 %.0.lcssa
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_aim_generic_ext_status_req(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 0)
  %.not7.i = icmp eq i32 %i.a, 0
  br i1 %.not7.i, label %dissect_aim_tlv_sequence.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.08.i = phi i32 [ %i.b, %.lr.ph.i ], [ 0, %bb.a ]
  %i.b = tail call fastcc i32 @dissect_aim_tlv(ptr noundef %0, ptr noundef %1, i32 noundef %.08.i, ptr noundef %2, ptr noundef @aim_onlinebuddy_tlvs) ; 3 uses
  %i.c = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.b)
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %dissect_aim_tlv_sequence.exit, label %.lr.ph.i, !llvm.loop !0

dissect_aim_tlv_sequence.exit:                    ; preds = %.lr.ph.i, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.b, %.lr.ph.i ]
  ret i32 %.0.lcssa.i
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_aim_generic_clientver_req(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_generic_client_ver_req_offset, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.c = load i32, ptr @hf_generic_client_ver_req_length, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 4, i32 noundef 4, i32 noundef 0) ; 0 uses
  ret i32 8
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_aim_generic_clientver_repl(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_generic_client_ver_req_hash, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 16, i32 noundef 0) ; 0 uses
  ret i32 16
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_aim_generic_ext_status_repl(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = load i32, ptr @hf_generic_ext_status_type, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.d = load i32, ptr @hf_generic_ext_status_flags, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.d, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.f = load i32, ptr @hf_generic_ext_status_length, align 4
  %i.g = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %2, i32 noundef %i.f, ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.h = load i32, ptr @hf_generic_ext_status_data, align 4
  %i.i = load i8, ptr %i.a, align 1
  %i.j = zext i8 %i.i to i32
  %i.k = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.h, ptr noundef %0, i32 noundef 4, i32 noundef %i.j, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 5
}

; Function Attrs: null_pointer_is_valid
declare void @proto_item_set_len(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef i32 @dissect_rate_class(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @hf_generic_rateinfo_classid, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef %1, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.c = add i32 %1, 2
  %i.d = load i32, ptr @hf_generic_rateinfo_windowsize, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.d, ptr noundef %0, i32 noundef %i.c, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.f = add i32 %1, 6
  %i.g = load i32, ptr @hf_generic_rateinfo_clearlevel, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.g, ptr noundef %0, i32 noundef %i.f, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.i = add i32 %1, 10
  %i.j = load i32, ptr @hf_generic_rateinfo_alertlevel, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.j, ptr noundef %0, i32 noundef %i.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.l = add i32 %1, 14
  %i.m = load i32, ptr @hf_generic_rateinfo_limitlevel, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.m, ptr noundef %0, i32 noundef %i.l, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.o = add i32 %1, 18
  %i.p = load i32, ptr @hf_generic_rateinfo_disconnectlevel, align 4
  %i.q = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.p, ptr noundef %0, i32 noundef %i.o, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.r = add i32 %1, 22
  %i.s = load i32, ptr @hf_generic_rateinfo_currentlevel, align 4
  %i.t = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.s, ptr noundef %0, i32 noundef %i.r, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.u = add i32 %1, 26
  %i.v = load i32, ptr @hf_generic_rateinfo_maxlevel, align 4
  %i.w = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.v, ptr noundef %0, i32 noundef %i.u, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.x = add i32 %1, 30
  %i.y = load i32, ptr @hf_generic_rateinfo_lasttime, align 4
  %i.z = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.y, ptr noundef %0, i32 noundef %i.x, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.aa = add i32 %1, 34
  %i.ab = load i32, ptr @hf_generic_rateinfo_curstate, align 4
  %i.ac = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ab, ptr noundef %0, i32 noundef %i.aa, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ad = add i32 %1, 35
  ret i32 %i.ad
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint8(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_aim_icq_tlv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call fastcc i32 @dissect_aim_tlv(ptr noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef %2, ptr noundef @icq_tlv)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 10, 13) i32 @dissect_aim_tlv_value_icq(ptr noundef %0, i16 zeroext %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = load i32, ptr @ett_aim_icq_tlv, align 4
  %i.b = tail call ptr @proto_item_add_subtree(ptr noundef %0, i32 noundef %i.a) ; 6 uses
  %i.c = load i32, ptr @hf_icq_tlv_data_chunk_size, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.c, ptr noundef %2, i32 noundef 0, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.e = load i32, ptr @hf_icq_tlv_request_owner_uid, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.e, ptr noundef %2, i32 noundef 2, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.g = load i32, ptr @hf_icq_tlv_request_type, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.g, ptr noundef %2, i32 noundef 6, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.i = tail call zeroext i16 @tvb_get_letohs(ptr noundef %2, i32 noundef 6)
  %i.j = load i32, ptr @hf_icq_tlv_request_seq_num, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.j, ptr noundef %2, i32 noundef 8, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  switch i16 %i.i, label %bb.g [
    i16 2000, label %bb.c
    i16 66, label %bb.b
    i16 2010, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr @hf_icq_dropped_msg_flag, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.l, ptr noundef %2, i32 noundef 10, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %bb.g

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.n = tail call zeroext i16 @tvb_get_letohs(ptr noundef %2, i32 noundef 10) ; 2 uses
  %i.o = load i32, ptr @hf_icq_meta_subtype, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.o, ptr noundef %2, i32 noundef 10, i32 noundef 2, i32 noundef -2147483648)
  switch i16 %i.n, label %bb.d [
    i16 1, label %bb.e
    i16 100, label %.fold.split
    i16 110, label %.fold.split62
    i16 120, label %.fold.split63
    i16 130, label %.fold.split64
    i16 135, label %.fold.split65
    i16 140, label %.fold.split66
    i16 150, label %.fold.split67
    i16 160, label %.fold.split68
    i16 170, label %.fold.split69
    i16 180, label %.fold.split70
    i16 190, label %.fold.split71
    i16 200, label %.fold.split72
    i16 210, label %.fold.split73
    i16 220, label %.fold.split74
    i16 230, label %.fold.split75
    i16 235, label %.fold.split76
    i16 240, label %.fold.split77
    i16 250, label %.fold.split78
    i16 260, label %.fold.split79
    i16 270, label %.fold.split80
    i16 420, label %.fold.split81
    i16 770, label %.fold.split82
    i16 870, label %.fold.split83
    i16 1002, label %.fold.split84
    i16 1011, label %.fold.split85
    i16 1021, label %.fold.split86
    i16 1030, label %.fold.split87
    i16 1035, label %.fold.split88
    i16 1040, label %.fold.split89
    i16 1050, label %.fold.split90
    i16 1060, label %.fold.split91
    i16 1070, label %.fold.split92
    i16 1090, label %.fold.split93
    i16 1202, label %.fold.split94
    i16 1210, label %.fold.split95
    i16 1220, label %.fold.split96
    i16 1301, label %.fold.split97
    i16 1385, label %.fold.split98
    i16 1375, label %.fold.split99
    i16 1395, label %.fold.split100
    i16 1870, label %.fold.split101
  ]

bb.d:                                             ; preds = %bb.c
  switch i16 %i.n, label %.thread57 [
    i16 2200, label %bb.e
    i16 2725, label %.fold.split102
    i16 2735, label %.fold.split103
    i16 3130, label %.fold.split104
    i16 5250, label %.fold.split105
    i16 8200, label %.fold.split106
    i16 2210, label %.fold.split107
    i16 3135, label %.fold.split108
    i16 8210, label %.fold.split109
  ]

.thread57:                                        ; preds = %bb.d
  %4 = getelementptr i8, ptr %3, i64 8
  %5 = load ptr, ptr %4, align 8
  tail call void @col_set_str(ptr noundef %5, i32 noundef 25, ptr noundef @.str.767)
  br label %bb.f

.fold.split:                                      ; preds = %bb.c
  br label %bb.e

.fold.split62:                                    ; preds = %bb.c
  br label %bb.e

.fold.split63:                                    ; preds = %bb.c
  br label %bb.e

.fold.split64:                                    ; preds = %bb.c
  br label %bb.e

.fold.split65:                                    ; preds = %bb.c
  br label %bb.e

.fold.split66:                                    ; preds = %bb.c
  br label %bb.e

.fold.split67:                                    ; preds = %bb.c
  br label %bb.e

.fold.split68:                                    ; preds = %bb.c
  br label %bb.e

.fold.split69:                                    ; preds = %bb.c
  br label %bb.e

.fold.split70:                                    ; preds = %bb.c
  br label %bb.e

.fold.split71:                                    ; preds = %bb.c
  br label %bb.e

.fold.split72:                                    ; preds = %bb.c
  br label %bb.e

.fold.split73:                                    ; preds = %bb.c
  br label %bb.e

.fold.split74:                                    ; preds = %bb.c
  br label %bb.e

.fold.split75:                                    ; preds = %bb.c
  br label %bb.e

.fold.split76:                                    ; preds = %bb.c
  br label %bb.e

.fold.split77:                                    ; preds = %bb.c
  br label %bb.e

.fold.split78:                                    ; preds = %bb.c
  br label %bb.e

.fold.split79:                                    ; preds = %bb.c
  br label %bb.e

.fold.split80:                                    ; preds = %bb.c
  br label %bb.e

.fold.split81:                                    ; preds = %bb.c
  br label %bb.e

.fold.split82:                                    ; preds = %bb.c
  br label %bb.e

.fold.split83:                                    ; preds = %bb.c
  br label %bb.e

.fold.split84:                                    ; preds = %bb.c
  br label %bb.e

.fold.split85:                                    ; preds = %bb.c
  br label %bb.e

.fold.split86:                                    ; preds = %bb.c
  br label %bb.e

.fold.split87:                                    ; preds = %bb.c
  br label %bb.e

.fold.split88:                                    ; preds = %bb.c
  br label %bb.e

.fold.split89:                                    ; preds = %bb.c
  br label %bb.e

.fold.split90:                                    ; preds = %bb.c
  br label %bb.e

.fold.split91:                                    ; preds = %bb.c
  br label %bb.e

.fold.split92:                                    ; preds = %bb.c
  br label %bb.e

.fold.split93:                                    ; preds = %bb.c
  br label %bb.e

.fold.split94:                                    ; preds = %bb.c
  br label %bb.e

.fold.split95:                                    ; preds = %bb.c
  br label %bb.e

.fold.split96:                                    ; preds = %bb.c
  br label %bb.e

.fold.split97:                                    ; preds = %bb.c
  br label %bb.e

.fold.split98:                                    ; preds = %bb.c
  br label %bb.e

.fold.split99:                                    ; preds = %bb.c
  br label %bb.e

.fold.split100:                                   ; preds = %bb.c
  br label %bb.e

.fold.split101:                                   ; preds = %bb.c
  br label %bb.e

.fold.split102:                                   ; preds = %bb.d
  br label %bb.e

.fold.split103:                                   ; preds = %bb.d
  br label %bb.e

.fold.split104:                                   ; preds = %bb.d
  br label %bb.e

.fold.split105:                                   ; preds = %bb.d
  br label %bb.e

.fold.split106:                                   ; preds = %bb.d
  br label %bb.e

.fold.split107:                                   ; preds = %bb.d
  br label %bb.e

.fold.split108:                                   ; preds = %bb.d
  br label %bb.e

.fold.split109:                                   ; preds = %bb.d
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.fold.split109, %.fold.split108, %.fold.split107, %.fold.split106, %.fold.split105, %.fold.split104, %.fold.split103, %.fold.split102, %bb.c, %.fold.split101, %.fold.split100, %.fold.split99, %.fold.split98, %.fold.split97, %.fold.split96, %.fold.split95, %.fold.split94, %.fold.split93, %.fold.split92, %.fold.split91, %.fold.split90, %.fold.split89, %.fold.split88, %.fold.split87, %.fold.split86, %.fold.split85, %.fold.split84, %.fold.split83, %.fold.split82, %.fold.split81, %.fold.split80, %.fold.split79, %.fold.split78, %.fold.split77, %.fold.split76, %.fold.split75, %.fold.split74, %.fold.split73, %.fold.split72, %.fold.split71, %.fold.split70, %.fold.split69, %.fold.split68, %.fold.split67, %.fold.split66, %.fold.split65, %.fold.split64, %.fold.split63, %.fold.split62, %.fold.split
  %.lcssa = phi ptr [ @icq_calls, %bb.c ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 1176), %.fold.split108 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 24), %.fold.split ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 48), %.fold.split62 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 72), %.fold.split63 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 96), %.fold.split64 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 120), %.fold.split65 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 144), %.fold.split66 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 168), %.fold.split67 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 192), %.fold.split68 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 216), %.fold.split69 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 240), %.fold.split70 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 264), %.fold.split71 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 288), %.fold.split72 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 312), %.fold.split73 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 336), %.fold.split74 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 360), %.fold.split75 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 384), %.fold.split76 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 408), %.fold.split77 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 432), %.fold.split78 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 456), %.fold.split79 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 480), %.fold.split80 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 504), %.fold.split81 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 528), %.fold.split82 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 552), %.fold.split83 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 576), %.fold.split84 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 600), %.fold.split85 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 624), %.fold.split86 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 648), %.fold.split87 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 672), %.fold.split88 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 696), %.fold.split89 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 720), %.fold.split90 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 744), %.fold.split91 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 768), %.fold.split92 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 792), %.fold.split93 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 816), %.fold.split94 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 840), %.fold.split95 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 864), %.fold.split96 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 888), %.fold.split97 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 912), %.fold.split98 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 936), %.fold.split99 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 960), %.fold.split100 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 1008), %bb.d ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 984), %.fold.split101 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 1032), %.fold.split102 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 1056), %.fold.split103 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 1080), %.fold.split104 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 1104), %.fold.split105 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 1128), %.fold.split106 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 1152), %.fold.split107 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 1200), %.fold.split109 ]
  %6 = getelementptr i8, ptr %.lcssa, i64 8
  %i.q = getelementptr i8, ptr %3, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = load ptr, ptr %6, align 8                ; 2 uses
  tail call void @col_set_str(ptr noundef %i.r, i32 noundef 25, ptr noundef %i.s)
  br label %bb.f

bb.f:                                             ; preds = %.thread57, %bb.e
  %7 = phi ptr [ %i.s, %bb.e ], [ @.str.110, %.thread57 ]
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.p, ptr noundef @.str.768, ptr noundef %7)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.b
  %.050 = phi i32 [ 12, %bb.f ], [ 11, %bb.b ], [ 10, %bb.a ]
  ret i32 %.050
}

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_letohs(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_aim_invitation_req(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 0)
  %.not7.i = icmp eq i32 %i.a, 0
  br i1 %.not7.i, label %dissect_aim_tlv_sequence.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.08.i = phi i32 [ %i.b, %.lr.ph.i ], [ 0, %bb.a ]
  %i.b = tail call fastcc i32 @dissect_aim_tlv(ptr noundef %0, ptr noundef %1, i32 noundef %.08.i, ptr noundef %2, ptr noundef @aim_onlinebuddy_tlvs) ; 3 uses
  %i.c = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.b)
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %dissect_aim_tlv_sequence.exit, label %.lr.ph.i, !llvm.loop !0

dissect_aim_tlv_sequence.exit:                    ; preds = %.lr.ph.i, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.b, %.lr.ph.i ]
  ret i32 %.0.lcssa.i
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_aim_location_rightsinfo(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 0)
  %.not7.i = icmp eq i32 %i.a, 0
  br i1 %.not7.i, label %dissect_aim_tlv_sequence.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.08.i = phi i32 [ %i.b, %.lr.ph.i ], [ 0, %bb.a ]
  %i.b = tail call fastcc i32 @dissect_aim_tlv(ptr noundef %0, ptr noundef %1, i32 noundef %.08.i, ptr noundef %2, ptr noundef @aim_location_rights_tlvs) ; 3 uses
  %i.c = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.b)
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %dissect_aim_tlv_sequence.exit, label %.lr.ph.i, !llvm.loop !0

dissect_aim_tlv_sequence.exit:                    ; preds = %.lr.ph.i, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.b, %.lr.ph.i ]
  ret i32 %.0.lcssa.i
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_aim_location_setuserinfo(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 0)
  %.not7.i = icmp eq i32 %i.a, 0
  br i1 %.not7.i, label %dissect_aim_tlv_sequence.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.08.i = phi i32 [ %i.b, %.lr.ph.i ], [ 0, %bb.a ]
  %i.b = tail call fastcc i32 @dissect_aim_tlv(ptr noundef %0, ptr noundef %1, i32 noundef %.08.i, ptr noundef %2, ptr noundef @aim_locate_tags_tlvs) ; 3 uses
  %i.c = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.b)
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %dissect_aim_tlv_sequence.exit, label %.lr.ph.i, !llvm.loop !0

dissect_aim_tlv_sequence.exit:                    ; preds = %.lr.ph.i, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.b, %.lr.ph.i ]
  ret i32 %.0.lcssa.i
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 3, 259) i32 @dissect_aim_snac_location_request_user_information(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_aim_snac_location_request_user_info_infotype, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.c = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 2)
  %i.d = load i32, ptr @hf_aim_location_buddyname_len, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.d, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.f = load i32, ptr @hf_aim_location_buddyname, align 4
  %i.g = zext i8 %i.c to i32                      ; 2 uses
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.f, ptr noundef %0, i32 noundef 3, i32 noundef %i.g, i32 noundef 2) ; 0 uses
  %i.i = add nuw nsw i32 %i.g, 3
  ret i32 %i.i
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_aim_snac_location_user_information(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.b = load i32, ptr @hf_aim_location_buddyname_len, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.d = load i32, ptr @hf_aim_location_buddyname, align 4
  %i.e = zext i8 %i.a to i32                      ; 4 uses
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.d, ptr noundef %0, i32 noundef 1, i32 noundef %i.e, i32 noundef 2) ; 0 uses
  %i.g = add nuw nsw i32 %i.e, 1
  %i.h = load i32, ptr @hf_aim_location_userinfo_warninglevel, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.h, ptr noundef %0, i32 noundef %i.g, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.j = add nuw nsw i32 %i.e, 3                  ; 2 uses
  %i.k = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.j) ; 2 uses
  %i.l = load i32, ptr @hf_aim_tlvcount, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.l, ptr noundef %0, i32 noundef %i.j, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.n = add nuw nsw i32 %i.e, 5                  ; 2 uses
  %.not.i = icmp eq i16 %i.k, 0
  br i1 %.not.i, label %dissect_aim_tlv_list.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.016.i = phi i16 [ %i.p, %.lr.ph.i ], [ 0, %bb.a ]
  %.01415.i = phi i32 [ %i.o, %.lr.ph.i ], [ %i.n, %bb.a ]
  %i.o = tail call fastcc i32 @dissect_aim_tlv(ptr noundef %0, ptr noundef %1, i32 noundef %.01415.i, ptr noundef %2, ptr noundef @aim_onlinebuddy_tlvs) ; 2 uses
  %i.p = add nuw i16 %.016.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i16 %i.p, %i.k
  br i1 %exitcond.not.i, label %dissect_aim_tlv_list.exit, label %.lr.ph.i, !llvm.loop !3

dissect_aim_tlv_list.exit:                        ; preds = %.lr.ph.i, %bb.a
  %.014.lcssa.i = phi i32 [ %i.n, %bb.a ], [ %i.o, %.lr.ph.i ] ; 3 uses
  %i.q = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.014.lcssa.i)
  %.not7.i = icmp eq i32 %i.q, 0
  br i1 %.not7.i, label %dissect_aim_tlv_sequence.exit, label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %dissect_aim_tlv_list.exit, %.lr.ph.i23
  %.08.i = phi i32 [ %i.r, %.lr.ph.i23 ], [ %.014.lcssa.i, %dissect_aim_tlv_list.exit ]
  %i.r = tail call fastcc i32 @dissect_aim_tlv(ptr noundef %0, ptr noundef %1, i32 noundef %.08.i, ptr noundef %2, ptr noundef @aim_locate_tags_tlvs) ; 3 uses
  %i.s = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.r)
  %.not.i24 = icmp eq i32 %i.s, 0
  br i1 %.not.i24, label %dissect_aim_tlv_sequence.exit, label %.lr.ph.i23, !llvm.loop !0

dissect_aim_tlv_sequence.exit:                    ; preds = %.lr.ph.i23, %dissect_aim_tlv_list.exit
  %.0.lcssa.i = phi i32 [ %.014.lcssa.i, %dissect_aim_tlv_list.exit ], [ %i.r, %.lr.ph.i23 ]
  ret i32 %.0.lcssa.i
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_aim_location_watcher_notification(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 0)
  %.not6 = icmp eq i32 %i.a, 0
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi i32 [ %i.b, %.lr.ph ], [ 0, %bb.a ]
  %i.b = tail call fastcc i32 @dissect_aim_buddyname(ptr noundef %0, ptr noundef %1, i32 noundef %.07, ptr noundef %2) ; 3 uses
  %i.c = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.b)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !35

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.b, %.lr.ph ]
  ret i32 %.0.lcssa
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_aim_location_user_info_query(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call fastcc i32 @dissect_aim_buddyname(ptr noundef %0, ptr noundef %1, i32 noundef 4, ptr noundef %2)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_aim_msg_params(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_aim_icbm_channel, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.c = load i32, ptr @hf_aim_icbm_msg_flags, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 2, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.e = load i32, ptr @hf_aim_icbm_max_snac_size, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.e, ptr noundef %0, i32 noundef 6, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.g = load i32, ptr @hf_aim_icbm_max_sender_warnlevel, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.g, ptr noundef %0, i32 noundef 8, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.i = load i32, ptr @hf_aim_icbm_max_receiver_warnlevel, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.i, ptr noundef %0, i32 noundef 10, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.k = load i32, ptr @hf_aim_icbm_min_msg_interval, align 4
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.k, ptr noundef %0, i32 noundef 12, i32 noundef 4, i32 noundef 0) ; 0 uses
  ret i32 16
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_aim_msg_outgoing(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_aim_icbm_cookie, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.c = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 8)
  %i.d = load i32, ptr @hf_aim_message_channel_id, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.d, ptr noundef %0, i32 noundef 8, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.f = getelementptr i8, ptr %1, i64 416        ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 10) ; 2 uses
  %i.i = zext i8 %i.h to i32
  %i.j = tail call ptr @tvb_get_string_enc(ptr noundef %i.g, ptr noundef %0, i32 noundef 11, i32 noundef %i.i, i32 noundef 2)
  %i.k = getelementptr i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load ptr, ptr %i.f, align 8
  %i.n = zext i8 %i.h to i64
  %i.o = tail call ptr @format_text(ptr noundef %i.m, ptr noundef %i.j, i64 noundef %i.n)
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.l, i32 noundef 25, ptr noundef @.str.859, ptr noundef %i.o)
  %i.p = tail call fastcc i32 @dissect_aim_buddyname(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) ; 7 uses
  switch i16 %i.c, label %dissect_aim_tlv_sequence.exit [
    i16 1, label %.split29
    i16 2, label %.split
  ]

.split29:                                         ; preds = %bb.a
  %i.q = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.p)
  %.not7.i = icmp eq i32 %i.q, 0
  br i1 %.not7.i, label %dissect_aim_tlv_sequence.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split29, %.lr.ph.i
  %.08.i = phi i32 [ %i.r, %.lr.ph.i ], [ %i.p, %.split29 ]
  %i.r = tail call fastcc i32 @dissect_aim_tlv(ptr noundef %0, ptr noundef %1, i32 noundef %.08.i, ptr noundef %2, ptr noundef @aim_messaging_incoming_ch1_tlvs) ; 3 uses
  %i.s = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.r)
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %dissect_aim_tlv_sequence.exit, label %.lr.ph.i, !llvm.loop !0

.split:                                           ; preds = %bb.a
  %i.t = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.p)
  %.not7.i30 = icmp eq i32 %i.t, 0
  br i1 %.not7.i30, label %dissect_aim_tlv_sequence.exit, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %.split, %.lr.ph.i31
  %.08.i32 = phi i32 [ %i.u, %.lr.ph.i31 ], [ %i.p, %.split ]
  %i.u = tail call fastcc i32 @dissect_aim_tlv(ptr noundef %0, ptr noundef %1, i32 noundef %.08.i32, ptr noundef %2, ptr noundef @aim_messaging_incoming_ch2_tlvs) ; 3 uses
  %i.v = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.u)
  %.not.i33 = icmp eq i32 %i.v, 0
  br i1 %.not.i33, label %dissect_aim_tlv_sequence.exit, label %.lr.ph.i31, !llvm.loop !0

dissect_aim_tlv_sequence.exit:                    ; preds = %.lr.ph.i31, %.lr.ph.i, %.split, %.split29, %bb.a
  %.027 = phi i32 [ %i.p, %bb.a ], [ %i.r, %.lr.ph.i ], [ %i.p, %.split29 ], [ %i.p, %.split ], [ %i.u, %.lr.ph.i31 ]
  ret i32 %.027
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_aim_msg_incoming(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_aim_icbm_cookie, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.c = load i32, ptr @hf_aim_message_channel_id, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 8, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.e = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 8)
  %i.f = tail call fastcc i32 @dissect_aim_userinfo(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) ; 7 uses
  switch i16 %i.e, label %dissect_aim_tlv_sequence.exit [
    i16 1, label %.split23
    i16 2, label %.split
  ]

.split23:                                         ; preds = %bb.a
  %i.g = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.f)
  %.not7.i = icmp eq i32 %i.g, 0
  br i1 %.not7.i, label %dissect_aim_tlv_sequence.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split23, %.lr.ph.i
  %.08.i = phi i32 [ %i.h, %.lr.ph.i ], [ %i.f, %.split23 ]
  %i.h = tail call fastcc i32 @dissect_aim_tlv(ptr noundef %0, ptr noundef %1, i32 noundef %.08.i, ptr noundef %2, ptr noundef @aim_messaging_incoming_ch1_tlvs) ; 3 uses
  %i.i = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.h)
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %dissect_aim_tlv_sequence.exit, label %.lr.ph.i, !llvm.loop !0

.split:                                           ; preds = %bb.a
  %i.j = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.f)
  %.not7.i24 = icmp eq i32 %i.j, 0
  br i1 %.not7.i24, label %dissect_aim_tlv_sequence.exit, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %.split, %.lr.ph.i25
  %.08.i26 = phi i32 [ %i.k, %.lr.ph.i25 ], [ %i.f, %.split ]
  %i.k = tail call fastcc i32 @dissect_aim_tlv(ptr noundef %0, ptr noundef %1, i32 noundef %.08.i26, ptr noundef %2, ptr noundef @aim_messaging_incoming_ch2_tlvs) ; 3 uses
  %i.l = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.k)
  %.not.i27 = icmp eq i32 %i.l, 0
  br i1 %.not.i27, label %dissect_aim_tlv_sequence.exit, label %.lr.ph.i25, !llvm.loop !0

dissect_aim_tlv_sequence.exit:                    ; preds = %.lr.ph.i25, %.lr.ph.i, %.split, %.split23, %bb.a
  %.021 = phi i32 [ %i.f, %bb.a ], [ %i.h, %.lr.ph.i ], [ %i.f, %.split23 ], [ %i.f, %.split ], [ %i.k, %.lr.ph.i25 ]
  ret i32 %.021
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_aim_msg_evil_req(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_aim_icbm_evil, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.c = tail call fastcc i32 @dissect_aim_buddyname(ptr noundef %0, ptr noundef %1, i32 noundef 2, ptr noundef %2)
  ret i32 %i.c
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_aim_msg_evil_repl(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_aim_evil_warn_level, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.c = load i32, ptr @hf_aim_evil_new_warn_level, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  ret i32 4
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_aim_msg_client_err(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %3 = alloca %struct._e_guid_t, align 8          ; 7 uses
  %4 = alloca %struct._e_guid_t, align 8          ; 7 uses
  %i.b = load i32, ptr @hf_aim_icbm_cookie, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef 0, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.d = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 8)
  %i.e = load i32, ptr @hf_aim_icbm_channel, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.e, ptr noundef %0, i32 noundef 8, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.g = tail call fastcc i32 @dissect_aim_buddyname(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) ; 5 uses
  %i.h = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.g)
  %i.i = load i32, ptr @hf_aim_icbm_client_err_reason, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.i, ptr noundef %0, i32 noundef %i.g, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.k = add i32 %i.g, 2                          ; 7 uses
  %i.l = icmp eq i16 %i.h, 3
  br i1 %i.l, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.m = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.k)
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %cond = icmp eq i16 %i.d, 2
  br i1 %cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr @hf_aim_icbm_rendezvous_nak_length, align 4
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.n, ptr noundef %0, i32 noundef %i.k, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.p = add i32 %i.g, 4
  %i.q = load i32, ptr @hf_aim_icbm_rendezvous_nak, align 4
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.q, ptr noundef %0, i32 noundef %i.p, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.s = add i32 %i.g, 6
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.t = tail call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %i.k) ; 20 uses
  %i.u = load i32, ptr @ett_aim_extended_data, align 4
  %i.v = tail call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef %i.k, i32 noundef -1, i32 noundef %i.u, ptr noundef null, ptr noundef @.str.892) ; 18 uses
  %i.w = tail call zeroext i16 @tvb_get_letohs(ptr noundef %i.t, i32 noundef 0)
  %i.x = load i32, ptr @hf_aim_icbm_client_err_length, align 4
  %i.y = tail call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.x, ptr noundef %i.t, i32 noundef 0, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.z = load i32, ptr @hf_aim_icbm_client_err_protocol_version, align 4
  %i.aa = tail call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.z, ptr noundef %i.t, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.ab = tail call i32 @tvb_get_ntohl(ptr noundef %i.t, i32 noundef 4)
  store i32 %i.ab, ptr %4, align 8
  %i.ac = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %i.t, i32 noundef 8)
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i16 %i.ac, ptr %i.ad, align 4
  %i.ae = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %i.t, i32 noundef 10)
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.ae, ptr %i.af, align 2
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ah = call ptr @tvb_memcpy(ptr noundef %i.t, ptr noundef nonnull %i.ag, i32 noundef 12, i64 noundef 8) ; 0 uses
  %.sroa.0.0.copyload.i = load i64, ptr %4, align 8 ; 2 uses
  %.sroa.4.0.copyload.i = load i64, ptr %i.ag, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.sroa.0.0.copyload.i, ptr %3, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.4.0.copyload.i, ptr %i.ai, align 8
  %i.aj = load i128, ptr %3, align 8
  %i.ak = icmp ne i128 0, %i.aj
  %i.al = zext i1 %i.ak to i32
  %.not8.i.i.i = icmp eq i32 %i.al, 0
  br i1 %.not8.i.i.i, label %select.unfold.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = load i128, ptr %3, align 8
  %i.an = icmp ne i128 -139747613957541450212349354918163722480, %i.am
  %i.ao = zext i1 %i.an to i32
  %.not8.1.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not8.1.i.i.i, label %select.unfold.i.i, label %aim_find_plugin.exit.i.i

aim_find_plugin.exit.i.i:                         ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ap = load i32, ptr @hf_aim_messaging_plugin, align 4
  %i.aq = call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.ap, ptr noundef %i.t, i32 noundef 4, i32 noundef 16, i32 noundef 0)
  br label %dissect_aim_plugin.exit.i

select.unfold.i.i:                                ; preds = %bb.f, %bb.e
  %.2.i.ph.i.i = phi ptr [ @known_client_plugins, %bb.e ], [ getelementptr inbounds nuw (i8, ptr @known_client_plugins, i64 24), %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ar = load i32, ptr @hf_aim_messaging_plugin, align 4
  %i.as = call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.ar, ptr noundef %i.t, i32 noundef 4, i32 noundef 16, i32 noundef 0)
  %i.at = load ptr, ptr %.2.i.ph.i.i, align 8
  br label %dissect_aim_plugin.exit.i

dissect_aim_plugin.exit.i:                        ; preds = %select.unfold.i.i, %aim_find_plugin.exit.i.i
  %i.au = phi ptr [ %i.as, %select.unfold.i.i ], [ %i.aq, %aim_find_plugin.exit.i.i ]
  %i.av = phi ptr [ %i.at, %select.unfold.i.i ], [ @.str.110, %aim_find_plugin.exit.i.i ]
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.au, ptr noundef @.str.768, ptr noundef %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %i.aw = load i32, ptr @hf_aim_messaging_unknown_uint16, align 4
  %i.ax = call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.aw, ptr noundef %i.t, i32 noundef 20, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.ay = load i32, ptr @hf_aim_icbm_client_err_client_caps_flags, align 4
  %i.az = call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.ay, ptr noundef %i.t, i32 noundef 22, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ba = load i32, ptr @hf_aim_messaging_unknown_uint8, align 4
  %i.bb = call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.ba, ptr noundef %i.t, i32 noundef 26, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bc = load i32, ptr @hf_aim_icbm_client_err_downcounter, align 4
  %i.bd = call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.bc, ptr noundef %i.t, i32 noundef 27, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.be = zext i16 %i.w to i32                    ; 3 uses
  %i.bf = add nuw nsw i32 %i.be, 2                ; 2 uses
  %i.bg = call zeroext i16 @tvb_get_letohs(ptr noundef %i.t, i32 noundef %i.bf)
  %i.bh = load i32, ptr @hf_aim_icbm_client_err_length, align 4
  %i.bi = call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.bh, ptr noundef %i.t, i32 noundef %i.bf, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.bj = add nuw nsw i32 %i.be, 4                ; 2 uses
  %i.bk = load i32, ptr @hf_aim_icbm_client_err_downcounter, align 4
  %i.bl = call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.bk, ptr noundef %i.t, i32 noundef %i.bj, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.bm = add nuw nsw i32 %i.be, 6
  %i.bn = load i32, ptr @hf_aim_messaging_unknown_data, align 4
  %i.bo = zext i16 %i.bg to i32                   ; 2 uses
  %i.bp = add nsw i32 %i.bo, -2
  %i.bq = call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.bn, ptr noundef %i.t, i32 noundef %i.bm, i32 noundef %i.bp, i32 noundef 0) ; 0 uses
  %i.br = add nuw nsw i32 %i.bj, %i.bo            ; 2 uses
  %or.cond7.i.i = icmp ne i64 %.sroa.0.0.copyload.i, 0
  %i.bs = icmp ne i64 %.sroa.4.0.copyload.i, 0
  %narrow.i.not.i = select i1 %or.cond7.i.i, i1 true, i1 %i.bs
  br i1 %narrow.i.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %dissect_aim_plugin.exit.i
  %i.bt = call ptr @tvb_new_subset_remaining(ptr noundef %i.t, i32 noundef %i.br) ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.bu = load i32, ptr @hf_aim_rendezvous_extended_data_message_type, align 4
  %i.bv = call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.bu, ptr noundef %i.bt, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bw = load i32, ptr @hf_aim_rendezvous_extended_data_message_flags, align 4
  %i.bx = load i32, ptr @ett_aim_extended_data_message_flags, align 4
  %i.by = call ptr @proto_tree_add_bitmask(ptr noundef %i.v, ptr noundef %i.bt, i32 noundef 1, i32 noundef %i.bw, i32 noundef %i.bx, ptr noundef @dissect_aim_rendezvous_extended_message.flags, i32 noundef 0) ; 0 uses
  %i.bz = load i32, ptr @hf_aim_rendezvous_extended_data_message_status_code, align 4
  %i.ca = call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.bz, ptr noundef %i.bt, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.cb = load i32, ptr @hf_aim_rendezvous_extended_data_message_priority_code, align 4
  %i.cc = call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.cb, ptr noundef %i.bt, i32 noundef 4, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.cd = call zeroext i16 @tvb_get_letohs(ptr noundef %i.bt, i32 noundef 6)
  %i.ce = zext i16 %i.cd to i32
  store i32 %i.ce, ptr %i.a, align 4
  %i.cf = load i32, ptr @hf_aim_rendezvous_extended_data_message_text_length, align 4
  %i.cg = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.v, i32 noundef %i.cf, ptr noundef %i.bt, i32 noundef 6, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.ch = load i32, ptr @hf_aim_rendezvous_extended_data_message_text, align 4
  %i.ci = load i32, ptr %i.a, align 4
  %i.cj = call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.ch, ptr noundef %i.bt, i32 noundef 8, i32 noundef %i.ci, i32 noundef 0) ; 0 uses
  %i.ck = call i32 @tvb_reported_length(ptr noundef %i.bt) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %dissect_aim_tlv_value_extended_data.exit

bb.h:                                             ; preds = %dissect_aim_plugin.exit.i
  %i.cl = load i32, ptr @hf_aim_messaging_plugin_specific_data, align 4
  %i.cm = call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.cl, ptr noundef %i.t, i32 noundef %i.br, i32 noundef -1, i32 noundef 0) ; 0 uses
  br label %dissect_aim_tlv_value_extended_data.exit

dissect_aim_tlv_value_extended_data.exit:         ; preds = %bb.g, %bb.h
  %i.cn = call i32 @tvb_reported_length(ptr noundef %i.t) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %dissect_aim_tlv_value_extended_data.exit, %bb.b, %bb.a
  %.0 = phi i32 [ %i.s, %bb.d ], [ %i.k, %dissect_aim_tlv_value_extended_data.exit ], [ %i.k, %bb.b ], [ %i.k, %bb.a ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_aim_msg_ack(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_aim_icbm_cookie, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.c = load i32, ptr @hf_aim_message_channel_id, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 8, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.e = tail call fastcc i32 @dissect_aim_buddyname(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2)
  ret i32 %i.e
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_aim_msg_minityping(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_aim_icbm_notification_cookie, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.c = load i32, ptr @hf_aim_icbm_notification_channel, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 8, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.e = tail call fastcc i32 @dissect_aim_buddyname(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) ; 2 uses
  %i.f = load i32, ptr @hf_aim_icbm_notification_type, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.f, ptr noundef %0, i32 noundef %i.e, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.h = add i32 %i.e, 2
  ret i32 %i.h
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_aim_tlv_value_messageblock(ptr noundef %0, i16 zeroext %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = load i32, ptr @ett_aim_messageblock, align 4
  %i.c = tail call ptr @proto_item_add_subtree(ptr noundef %0, i32 noundef %i.b) ; 8 uses
  %i.d = load i32, ptr @hf_aim_messageblock_featuresdes, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.d, ptr noundef %2, i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.f = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %2, i32 noundef 2)
  %i.g = load i32, ptr @hf_aim_messageblock_featureslen, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.g, ptr noundef %2, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.i = load i32, ptr @hf_aim_messageblock_features, align 4
  %i.j = zext i16 %i.f to i32                     ; 2 uses
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.i, ptr noundef %2, i32 noundef 4, i32 noundef %i.j, i32 noundef 0) ; 0 uses
  %i.l = add nuw nsw i32 %i.j, 4                  ; 3 uses
  %i.m = tail call i32 @tvb_reported_length_remaining(ptr noundef %2, i32 noundef %i.l)
  %.not49 = icmp eq i32 %i.m, 0
  br i1 %.not49, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr i8, ptr %3, i64 416        ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.050 = phi i32 [ %i.l, %.lr.ph ], [ %i.ar, %bb.d ] ; 5 uses
  %i.o = load i32, ptr @hf_aim_messageblock_info, align 4
  %i.p = call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.o, ptr noundef %2, i32 noundef %.050, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.q = add i32 %.050, 2                         ; 2 uses
  %i.r = load i32, ptr @hf_aim_messageblock_len, align 4
  %i.s = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.c, i32 noundef %i.r, ptr noundef %2, i32 noundef %i.q, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.a)
  %i.t = load i32, ptr %i.a, align 4
  %i.u = icmp ult i32 %i.t, 5
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = call ptr @expert_add_info(ptr noundef %3, ptr noundef %i.s, ptr noundef @ei_aim_messageblock_len) ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.w = add i32 %.050, 4                         ; 2 uses
  %i.x = load i32, ptr @hf_aim_messageblock_charset, align 4
  %i.y = call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.x, ptr noundef %2, i32 noundef %i.w, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.z = add i32 %.050, 6
  %i.aa = load i32, ptr @hf_aim_messageblock_charsubset, align 4
  %i.ab = call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.aa, ptr noundef %2, i32 noundef %i.z, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ac = add i32 %.050, 8                        ; 2 uses
  %i.ad = load ptr, ptr %i.n, align 8
  %i.ae = load i32, ptr %i.a, align 4
  %i.af = add i32 %i.ae, -4
  %i.ag = call ptr @tvb_get_string_enc(ptr noundef %i.ad, ptr noundef %2, i32 noundef %i.ac, i32 noundef %i.af, i32 noundef 0)
  %i.ah = load ptr, ptr %i.n, align 8
  %i.ai = load i32, ptr %i.a, align 4
  %i.aj = add i32 %i.ai, -4
  %i.ak = zext i32 %i.aj to i64
  %i.al = call ptr @format_text(ptr noundef %i.ah, ptr noundef %i.ag, i64 noundef %i.ak)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %0, ptr noundef @.str.868, ptr noundef %i.al)
  %i.am = load i32, ptr @hf_aim_messageblock_message, align 4
  %i.an = load i32, ptr %i.a, align 4
  %i.ao = add i32 %i.an, -4
  %i.ap = call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.am, ptr noundef %2, i32 noundef %i.ac, i32 noundef %i.ao, i32 noundef 0) ; 0 uses
  %i.aq = load i32, ptr %i.a, align 4
  %i.ar = add i32 %i.w, %i.aq                     ; 3 uses
  %i.as = call i32 @tvb_reported_length_remaining(ptr noundef %2, i32 noundef %i.ar)
  %.not = icmp eq i32 %i.as, 0
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !36

.loopexit:                                        ; preds = %bb.d, %bb.a, %bb.c
  %.1 = phi i32 [ %i.q, %bb.c ], [ %i.l, %bb.a ], [ %i.ar, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.1
}

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_aim_tlv_value_rendezvous(ptr noundef %0, i16 zeroext %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = load i32, ptr @ett_aim_rendezvous_data, align 4
  %i.b = tail call ptr @proto_item_add_subtree(ptr noundef %0, i32 noundef %i.a) ; 4 uses
  %i.c = load i32, ptr @hf_aim_rendezvous_msg_type, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.c, ptr noundef %2, i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.e = load i32, ptr @hf_aim_icbm_cookie, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.e, ptr noundef %2, i32 noundef 2, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.g = tail call fastcc i32 @dissect_aim_capability(ptr noundef %i.b, ptr noundef %2, i32 noundef 10) ; 3 uses
  %i.h = tail call i32 @tvb_reported_length_remaining(ptr noundef %2, i32 noundef %i.g)
  %.not7.i = icmp eq i32 %i.h, 0
  br i1 %.not7.i, label %dissect_aim_tlv_sequence.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.08.i = phi i32 [ %i.i, %.lr.ph.i ], [ %i.g, %bb.a ]
  %i.i = tail call fastcc i32 @dissect_aim_tlv(ptr noundef %2, ptr noundef %3, i32 noundef %.08.i, ptr noundef %i.b, ptr noundef @aim_rendezvous_tlvs) ; 3 uses
  %i.j = tail call i32 @tvb_reported_length_remaining(ptr noundef %2, i32 noundef %i.i)
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %dissect_aim_tlv_sequence.exit, label %.lr.ph.i, !llvm.loop !0

dissect_aim_tlv_sequence.exit:                    ; preds = %.lr.ph.i, %bb.a
  %.0.lcssa.i = phi i32 [ %i.g, %bb.a ], [ %i.i, %.lr.ph.i ]
  ret i32 %.0.lcssa.i
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_aim_tlv_value_string08_array(ptr noundef %0, i16 zeroext %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = load i32, ptr @ett_aim_string08_array, align 4
  %i.b = tail call ptr @proto_item_add_subtree(ptr noundef %0, i32 noundef %i.a)
  %i.c = tail call i32 @tvb_reported_length_remaining(ptr noundef %2, i32 noundef 0)
  %i.d = icmp ugt i32 %i.c, 1
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.010 = phi i32 [ %i.j, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %.010)
  %i.f = load i32, ptr @hf_aim_string08, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.f, ptr noundef %2, i32 noundef %.010, i32 noundef 1, i32 noundef 2) ; 0 uses
  %i.h = zext i8 %i.e to i32
  %i.i = add i32 %.010, 1
  %i.j = add i32 %i.i, %i.h                       ; 3 uses
  %i.k = tail call i32 @tvb_reported_length_remaining(ptr noundef %2, i32 noundef %i.j)
  %i.l = icmp ugt i32 %i.k, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge, !llvm.loop !37

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.j, %.lr.ph ]
  ret i32 %.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_memcpy(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_aim_popup(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call fastcc i32 @dissect_aim_tlv(ptr noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef %2, ptr noundef @aim_popup_tlvs)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_aim_snac_signon_logon(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 0)
  %.not6 = icmp eq i32 %i.a, 0
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi i32 [ %i.b, %.lr.ph ], [ 0, %bb.a ]
  %i.b = tail call fastcc i32 @dissect_aim_tlv(ptr noundef %0, ptr noundef %1, i32 noundef %.07, ptr noundef %2, ptr noundef @aim_client_tlvs) ; 3 uses
  %i.c = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.b)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !38

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.b, %.lr.ph ]
  ret i32 %.0.lcssa
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_aim_snac_signon_logon_reply(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 0)
  %.not6 = icmp eq i32 %i.a, 0
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi i32 [ %i.b, %.lr.ph ], [ 0, %bb.a ]
  %i.b = tail call fastcc i32 @dissect_aim_tlv(ptr noundef %0, ptr noundef %1, i32 noundef %.07, ptr noundef %2, ptr noundef @aim_client_tlvs) ; 3 uses
  %i.c = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.b)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !39

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.b, %.lr.ph ]
  ret i32 %.0.lcssa
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_aim_snac_register(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call fastcc i32 @dissect_aim_tlv(ptr noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef %2, ptr noundef @aim_registration_tlvs)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 3, 263) i32 @dissect_aim_snac_signon_signon(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_aim_infotype, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.c = getelementptr i8, ptr %1, i64 416        ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 3) ; 2 uses
  %i.f = zext i8 %i.e to i32
  %i.g = tail call ptr @tvb_get_string_enc(ptr noundef %i.d, ptr noundef %0, i32 noundef 4, i32 noundef %i.f, i32 noundef 2)
  %i.h = zext i8 %i.e to i64
  %i.i = getelementptr i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load ptr, ptr %i.c, align 8
  %i.l = tail call ptr @format_text(ptr noundef %i.k, ptr noundef %i.g, i64 noundef %i.h)
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.j, i32 noundef 25, ptr noundef @.str.916, ptr noundef %i.l)
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %dissect_aim_buddyname.exit

dissect_aim_buddyname.exit:                       ; preds = %bb.a
  %i.m = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 3)
  %.pre.i = zext i8 %i.m to i32                   ; 4 uses
  %i.n = add nuw nsw i32 %.pre.i, 1
  %i.o = load i32, ptr @ett_aim_buddyname, align 4
  %i.p = load ptr, ptr %i.c, align 8
  %i.q = tail call ptr @tvb_format_text(ptr noundef %i.p, ptr noundef %0, i32 noundef 4, i32 noundef %.pre.i)
  %i.r = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef nonnull %2, ptr noundef %0, i32 noundef 3, i32 noundef %i.n, i32 noundef %i.o, ptr noundef null, ptr noundef @.str.624, ptr noundef %i.q) ; 2 uses
  %i.s = load i32, ptr @hf_aim_buddyname_len, align 4
  %i.t = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.s, ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.u = load i32, ptr @hf_aim_buddyname, align 4
  %i.v = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.u, ptr noundef %0, i32 noundef 4, i32 noundef %.pre.i, i32 noundef 2) ; 0 uses
  %i.w = add nuw nsw i32 %.pre.i, 7
  br label %bb.b

bb.b:                                             ; preds = %dissect_aim_buddyname.exit, %bb.a
  %.0 = phi i32 [ %i.w, %dissect_aim_buddyname.exit ], [ 3, %bb.a ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 2, 65538) i32 @dissect_aim_snac_signon_signon_reply(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 0)
  %i.b = load i32, ptr @hf_aim_signon_challenge_len, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.d = load i32, ptr @hf_aim_signon_challenge, align 4
  %i.e = zext i16 %i.a to i32                     ; 2 uses
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.d, ptr noundef %0, i32 noundef 2, i32 noundef %i.e, i32 noundef 2) ; 0 uses
  %i.g = add nuw nsw i32 %i.e, 2
  ret i32 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define internal noundef i32 @dissect_aim_tlv_value_registration(ptr nofree readnone captures(none) %0, i16 zeroext %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3) #6 {
bb.a:
  ret i32 0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_aim_ssi_rightsinfo(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 0)
  %.not7.i = icmp eq i32 %i.a, 0
  br i1 %.not7.i, label %dissect_aim_tlv_sequence.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.08.i = phi i32 [ %i.b, %.lr.ph.i ], [ 0, %bb.a ]
  %i.b = tail call fastcc i32 @dissect_aim_tlv(ptr noundef %0, ptr noundef %1, i32 noundef %.08.i, ptr noundef %2, ptr noundef @aim_ssi_rightsinfo_tlvs) ; 3 uses
  %i.c = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.b)
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %dissect_aim_tlv_sequence.exit, label %.lr.ph.i, !llvm.loop !0

dissect_aim_tlv_sequence.exit:                    ; preds = %.lr.ph.i, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.b, %.lr.ph.i ]
  ret i32 %.0.lcssa.i
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_aim_snac_ssi_time_and_items_num(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_aim_fnac_subtype_ssi_last_change_time, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 4, i32 noundef 18) ; 0 uses
  %i.c = load i32, ptr @hf_aim_fnac_subtype_ssi_numitems, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 4, i32 noundef 2, i32 noundef 0) ; 0 uses
  ret i32 6
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_aim_snac_ssi_list(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_aim_fnac_subtype_ssi_version, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.c = load i32, ptr @hf_aim_fnac_subtype_ssi_numitems, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 1, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.e = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 1) ; 2 uses
  %.not = icmp eq i16 %i.e, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i16 %i.e to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i32 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.02729 = phi i32 [ 3, %.lr.ph.preheader ], [ %i.p, %.lr.ph ] ; 4 uses
  %i.f = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %.02729)
  %i.g = zext i16 %i.f to i32
  %i.h = add nuw nsw i32 %i.g, 8                  ; 2 uses
  %i.i = add i32 %i.h, %.02729
  %i.j = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.i)
  %i.k = zext i16 %i.j to i32
  %i.l = add nuw nsw i32 %i.k, 2
  %i.m = add nuw nsw i32 %i.l, %i.h
  %i.n = load i32, ptr @ett_aim_ssi, align 4
  %i.o = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %2, ptr noundef %0, i32 noundef %.02729, i32 noundef %i.m, i32 noundef %i.n, ptr noundef null, ptr noundef @.str.937, i32 noundef %indvars.iv)
  %i.p = tail call fastcc i32 @dissect_ssi_item(ptr noundef %0, ptr noundef %1, i32 noundef %.02729, ptr noundef %i.o) ; 2 uses
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !40

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.027.lcssa = phi i32 [ 3, %bb.a ], [ %i.p, %.lr.ph ] ; 2 uses
  %i.q = load i32, ptr @hf_aim_fnac_subtype_ssi_last_change_time, align 4
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.q, ptr noundef %0, i32 noundef %.027.lcssa, i32 noundef 4, i32 noundef 18) ; 0 uses
  ret i32 %.027.lcssa
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_ssi_ssi_item(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call fastcc i32 @dissect_ssi_item(ptr noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef %2)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_ssi_ssi_items(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length(ptr noundef %0) ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.013 = phi i32 [ %i.l, %.lr.ph ], [ 0, %bb.a ] ; 4 uses
  %i.b = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %.013)
  %i.c = zext i16 %i.b to i32
  %i.d = add nuw nsw i32 %i.c, 8                  ; 2 uses
  %i.e = add i32 %i.d, %.013
  %i.f = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.e)
  %i.g = zext i16 %i.f to i32
  %i.h = add nuw nsw i32 %i.g, 2
  %i.i = add nuw nsw i32 %i.h, %i.d
  %i.j = load i32, ptr @ett_aim_ssi, align 4
  %i.k = tail call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef %.013, i32 noundef %i.i, i32 noundef %i.j, ptr noundef null, ptr noundef @.str.938)
  %i.l = tail call fastcc i32 @dissect_ssi_item(ptr noundef %0, ptr noundef %1, i32 noundef %.013, ptr noundef %i.k) ; 3 uses
  %i.m = icmp ugt i32 %i.a, %i.l
  br i1 %i.m, label %.lr.ph, label %._crit_edge, !llvm.loop !41

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.l, %.lr.ph ]
  ret i32 %.0.lcssa
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_aim_ssi_result(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = load i32, ptr @hf_aim_ssi_result_code, align 4
  %i.c = call ptr @proto_tree_add_item_ret_uint(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %1, i64 416
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = load i32, ptr %i.a, align 4
  %i.i = call ptr @val_to_str(ptr noundef %i.g, i32 noundef %i.h, ptr noundef @aim_ssi_result_codes, ptr noundef @.str.939)
  call void @col_add_str(ptr noundef %i.e, i32 noundef 25, ptr noundef %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 2
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 5, 65796) i32 @dissect_aim_snac_ssi_auth_request(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 2 uses
  %i.b = load i32, ptr @hf_aim_fnac_subtype_ssi_buddyname_len8, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = zext i8 %i.a to i32                      ; 2 uses
  %i.e = load i32, ptr @hf_aim_fnac_subtype_ssi_buddyname, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.e, ptr noundef %0, i32 noundef 1, i32 noundef %i.d, i32 noundef 2) ; 0 uses
  %i.g = add nuw nsw i32 %i.d, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.g, %bb.b ], [ 1, %bb.a ]     ; 3 uses
  %i.h = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %.0) ; 2 uses
  %i.i = load i32, ptr @hf_aim_fnac_subtype_ssi_reason_str_len, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.i, ptr noundef %0, i32 noundef %.0, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.k = add nuw nsw i32 %.0, 2                   ; 3 uses
  %.not32 = icmp eq i16 %i.h, 0
  br i1 %.not32, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = zext i16 %i.h to i32                     ; 2 uses
  %i.m = load i32, ptr @hf_aim_fnac_subtype_ssi_reason_str, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.m, ptr noundef %0, i32 noundef %i.k, i32 noundef %i.l, i32 noundef 2) ; 0 uses
  %i.o = add nuw nsw i32 %i.k, %i.l
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i32 [ %i.o, %bb.d ], [ %i.k, %bb.c ]  ; 2 uses
  %i.p = load i32, ptr @hf_aim_fnac_subtype_ssi_grant_auth_unkn, align 4
  %i.q = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.p, ptr noundef %0, i32 noundef %.1, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.r = add nuw nsw i32 %.1, 2
  ret i32 %i.r
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 4, 65795) i32 @dissect_aim_snac_ssi_auth_reply(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 2 uses
  %i.b = load i32, ptr @hf_aim_fnac_subtype_ssi_buddyname_len8, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = zext i8 %i.a to i32                      ; 2 uses
  %i.e = load i32, ptr @hf_aim_fnac_subtype_ssi_buddyname, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.e, ptr noundef %0, i32 noundef 1, i32 noundef %i.d, i32 noundef 2) ; 0 uses
  %i.g = add nuw nsw i32 %i.d, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.g, %bb.b ], [ 1, %bb.a ]     ; 3 uses
  %i.h = load i32, ptr @hf_aim_fnac_subtype_ssi_allow_auth, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.h, ptr noundef %0, i32 noundef %.0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.j = add nuw nsw i32 %.0, 1                   ; 2 uses
  %i.k = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.j) ; 2 uses
  %i.l = load i32, ptr @hf_aim_fnac_subtype_ssi_reason_str_len, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.l, ptr noundef %0, i32 noundef %i.j, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.n = add nuw nsw i32 %.0, 3                   ; 3 uses
  %.not32 = icmp eq i16 %i.k, 0
  br i1 %.not32, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = zext i16 %i.k to i32                     ; 2 uses
  %i.p = load i32, ptr @hf_aim_fnac_subtype_ssi_reason_str, align 4
  %i.q = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.p, ptr noundef %0, i32 noundef %i.n, i32 noundef %i.o, i32 noundef 2) ; 0 uses
  %i.r = add nuw nsw i32 %i.n, %i.o
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i32 [ %i.r, %bb.d ], [ %i.n, %bb.c ]
  ret i32 %.1
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_aim_ssi_was_added(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call fastcc i32 @dissect_aim_buddyname(ptr noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef %2)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @dissect_ssi_item(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %2) ; 2 uses
  %i.b = load i32, ptr @hf_aim_fnac_subtype_ssi_buddyname_len, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.b, ptr noundef %0, i32 noundef %2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.d = add i32 %2, 2                            ; 3 uses
  %.not = icmp eq i16 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = zext i16 %i.a to i32                     ; 2 uses
  %i.f = load i32, ptr @hf_aim_fnac_subtype_ssi_buddyname, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.f, ptr noundef %0, i32 noundef %i.d, i32 noundef %i.e, i32 noundef 2) ; 0 uses
  %i.h = add i32 %i.d, %i.e
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.039 = phi i32 [ %i.h, %bb.b ], [ %i.d, %bb.a ] ; 5 uses
  %i.i = load i32, ptr @hf_aim_fnac_subtype_ssi_gid, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.i, ptr noundef %0, i32 noundef %.039, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.k = add i32 %.039, 2
  %i.l = load i32, ptr @hf_aim_fnac_subtype_ssi_bid, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.l, ptr noundef %0, i32 noundef %i.k, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.n = add i32 %.039, 4
  %i.o = load i32, ptr @hf_aim_fnac_subtype_ssi_type, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.o, ptr noundef %0, i32 noundef %i.n, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.q = add i32 %.039, 6                         ; 2 uses
  %i.r = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.q)
  %i.s = load i32, ptr @hf_aim_fnac_subtype_ssi_tlvlen, align 4
  %i.t = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.s, ptr noundef %0, i32 noundef %i.q, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.u = add i32 %.039, 8                         ; 4 uses
  %i.v = zext i16 %i.r to i32
  %i.w = add i32 %i.u, %i.v                       ; 2 uses
  %i.x = icmp slt i32 %i.u, %i.w
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.041 = phi i32 [ %i.y, %.lr.ph ], [ %i.u, %bb.c ]
  %i.y = tail call fastcc i32 @dissect_aim_tlv(ptr noundef %0, ptr noundef %1, i32 noundef %.041, ptr noundef %3, ptr noundef @aim_client_tlvs) ; 3 uses
  %i.z = icmp slt i32 %i.y, %i.w
  br i1 %i.z, label %.lr.ph, label %._crit_edge, !llvm.loop !42

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.0.lcssa = phi i32 [ %i.u, %bb.c ], [ %i.y, %.lr.ph ]
  ret i32 %.0.lcssa
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 4, 65540) i32 @dissect_aim_sst_buddy_up_req(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = load i32, ptr @hf_aim_sst_ref_num, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.d = load i32, ptr @hf_aim_sst_icon_size, align 4
  %i.e = call ptr @proto_tree_add_item_ret_uint16(ptr noundef %2, i32 noundef %i.d, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.f = load i16, ptr %i.a, align 2              ; 2 uses
  %.not = icmp eq i16 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr @hf_aim_sst_icon, align 4
  %i.h = zext i16 %i.f to i32
  %i.i = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.g, ptr noundef %0, i32 noundef 4, i32 noundef %i.h, i32 noundef 0) ; 0 uses
  %.pre = load i16, ptr %i.a, align 2
  %i.j = zext i16 %.pre to i32
  %i.k = add nuw nsw i32 %i.j, 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = phi i32 [ %i.k, %bb.b ], [ 4, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %i.l
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 5, 261) i32 @dissect_aim_sst_buddy_up_repl(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_aim_sst_unknown, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.c = load i32, ptr @hf_aim_sst_md5_hash_size, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 4)
  %i.f = load i32, ptr @hf_aim_sst_md5_hash, align 4
  %i.g = zext i8 %i.e to i32                      ; 2 uses
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.f, ptr noundef %0, i32 noundef 5, i32 noundef %i.g, i32 noundef 0) ; 0 uses
  %i.i = add nuw nsw i32 %i.g, 5
  ret i32 %i.i
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_aim_sst_buddy_down_req(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = tail call fastcc i32 @dissect_aim_buddyname(ptr noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef %2) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.c = load i32, ptr @hf_aim_sst_unknown, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef %i.b, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.e = add i32 %i.b, 4
  %i.f = load i32, ptr @hf_aim_sst_md5_hash_size, align 4
  %i.g = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %2, i32 noundef %i.f, ptr noundef %0, i32 noundef %i.e, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.h = add i32 %i.b, 5                          ; 2 uses
  %i.i = load i32, ptr @hf_aim_sst_md5_hash, align 4
  %i.j = load i8, ptr %i.a, align 1
  %i.k = zext i8 %i.j to i32
  %i.l = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.i, ptr noundef %0, i32 noundef %i.h, i32 noundef %i.k, i32 noundef 0) ; 0 uses
  %i.m = load i8, ptr %i.a, align 1
  %i.n = zext i8 %i.m to i32
  %i.o = add i32 %i.h, %i.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %i.o
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_aim_sst_buddy_down_repl(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i16, align 2                      ; 5 uses
  %i.c = tail call fastcc i32 @dissect_aim_buddyname(ptr noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef %2) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.d = load i32, ptr @hf_aim_sst_unknown, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.d, ptr noundef %0, i32 noundef %i.c, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.f = add i32 %i.c, 3
  %i.g = load i32, ptr @hf_aim_sst_md5_hash_size, align 4
  %i.h = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %2, i32 noundef %i.g, ptr noundef %0, i32 noundef %i.f, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.i = add i32 %i.c, 4                          ; 2 uses
  %i.j = load i32, ptr @hf_aim_sst_md5_hash, align 4
  %i.k = load i8, ptr %i.a, align 1
  %i.l = zext i8 %i.k to i32
  %i.m = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.j, ptr noundef %0, i32 noundef %i.i, i32 noundef %i.l, i32 noundef 0) ; 0 uses
  %i.n = load i8, ptr %i.a, align 1
  %i.o = zext i8 %i.n to i32
  %i.p = add i32 %i.i, %i.o                       ; 2 uses
  %i.q = load i32, ptr @hf_aim_sst_icon_size, align 4
  %i.r = call ptr @proto_tree_add_item_ret_uint16(ptr noundef %2, i32 noundef %i.q, ptr noundef %0, i32 noundef %i.p, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.b) ; 0 uses
  %i.s = add i32 %i.p, 2                          ; 2 uses
  %i.t = load i16, ptr %i.b, align 2              ; 2 uses
  %.not = icmp eq i16 %i.t, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = load i32, ptr @hf_aim_sst_icon, align 4
  %i.v = zext i16 %i.t to i32
  %i.w = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.u, ptr noundef %0, i32 noundef %i.s, i32 noundef %i.v, i32 noundef 0) ; 0 uses
  %.pre = load i16, ptr %i.b, align 2
  %i.x = zext i16 %.pre to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.y = phi i32 [ %i.x, %bb.b ], [ 0, %bb.a ]
  %i.z = add i32 %i.s, %i.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %i.z
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint16(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_aim_userlookup_search(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_aim_userlookup_email, align 4
  %i.b = tail call i32 @tvb_reported_length(ptr noundef %0)
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef %i.b, i32 noundef 2) ; 0 uses
  %i.d = tail call i32 @tvb_reported_length(ptr noundef %0)
  ret i32 %i.d
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_aim_userlookup_result(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 0)
  %.not7.i = icmp eq i32 %i.a, 0
  br i1 %.not7.i, label %dissect_aim_tlv_sequence.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.08.i = phi i32 [ %i.b, %.lr.ph.i ], [ 0, %bb.a ]
  %i.b = tail call fastcc i32 @dissect_aim_tlv(ptr noundef %0, ptr noundef %1, i32 noundef %.08.i, ptr noundef %2, ptr noundef @aim_client_tlvs) ; 3 uses
  %i.c = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.b)
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %dissect_aim_tlv_sequence.exit, label %.lr.ph.i, !llvm.loop !0

dissect_aim_tlv_sequence.exit:                    ; preds = %.lr.ph.i, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.b, %.lr.ph.i ]
  ret i32 %.0.lcssa.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { allocsize(0) }
attributes #10 = { nounwind }
attributes #11 = { allocsize(1) }

!llvm.module.flags = !{!4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !{!0, !12}
!1 = distinct !{!1, !12}
!2 = distinct !{!2, !12}
!3 = distinct !{!3, !12}
!4 = !{i32 8, !"cf-protection-return", i32 1}
!5 = !{i32 8, !"cf-protection-branch", i32 1}
!6 = !{i32 4, !"probe-stack", !"inline-asm"}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!10 = !{i8 0, i8 2}
!11 = !{}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{null}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !12}
!25 = distinct !{!25, !12}
!26 = distinct !{!26, !12}
!27 = distinct !{!27, !12}
!28 = distinct !{!28, !12}
!29 = distinct !{!29, !12}
!30 = distinct !{!30, !12}
!31 = distinct !{!31, !12}
!32 = distinct !{!32, !12}
!33 = distinct !{!33, !12}
!34 = distinct !{!34, !12}
!35 = distinct !{!35, !12}
!36 = distinct !{!36, !12}
!37 = distinct !{!37, !12}
!38 = distinct !{!38, !12}
!39 = distinct !{!39, !12}
!40 = distinct !{!40, !12}
!41 = distinct !{!41, !12}
!42 = distinct !{!42, !12}
end_hunk_0

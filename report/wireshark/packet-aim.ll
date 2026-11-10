Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-aim?download=true
inline.NumInlined: 79
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@dissect_aim_generic_motd:bb.a
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
define internal i32 @dissect_aim_tlv_value_icq(ptr noundef %0, i16 zeroext %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = load i32, ptr @ett_aim_icq_tlv, align 4
  %i.b = tail call ptr @proto_item_add_subtree(ptr noundef %0, i32 noundef %i.a) ; 7 uses
  %i.c = load i32, ptr @hf_icq_tlv_data_chunk_size, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.c, ptr noundef %2, i32 noundef 0, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.e = load i32, ptr @hf_icq_tlv_request_owner_uid, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.e, ptr noundef %2, i32 noundef 2, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.g = load i32, ptr @hf_icq_tlv_request_type, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.g, ptr noundef %2, i32 noundef 6, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.i = tail call zeroext i16 @tvb_get_letohs(ptr noundef %2, i32 noundef 6)
  %i.j = load i32, ptr @hf_icq_tlv_request_seq_num, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.j, ptr noundef %2, i32 noundef 8, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  switch i16 %i.i, label %bb.e [
    i16 2000, label %bb.c
    i16 66, label %bb.b
    i16 2010, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr @hf_icq_dropped_msg_flag, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.l, ptr noundef %2, i32 noundef 10, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.n = tail call zeroext i16 @tvb_get_letohs(ptr noundef %2, i32 noundef 10) ; 2 uses
  %i.o = load i32, ptr @hf_icq_meta_subtype, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.o, ptr noundef %2, i32 noundef 10, i32 noundef 2, i32 noundef -2147483648)
  switch i16 %i.n, label %.lr.ph.41 [
    i16 1, label %._crit_edge62.a
    i16 100, label %._crit_edge
    i16 110, label %._crit_edge.fold.split
    i16 120, label %._crit_edge.fold.split68
    i16 130, label %._crit_edge.fold.split69
    i16 135, label %._crit_edge.fold.split70
    i16 140, label %._crit_edge.fold.split71
    i16 150, label %._crit_edge.fold.split72
    i16 160, label %._crit_edge.fold.split73
    i16 170, label %._crit_edge.fold.split74
    i16 180, label %._crit_edge.fold.split75
    i16 190, label %._crit_edge.fold.split76
    i16 200, label %._crit_edge.fold.split77
    i16 210, label %._crit_edge.fold.split78
    i16 220, label %._crit_edge.fold.split79
    i16 230, label %._crit_edge.fold.split80
    i16 235, label %._crit_edge.fold.split81
    i16 240, label %._crit_edge.fold.split82
    i16 250, label %._crit_edge.fold.split83
    i16 260, label %._crit_edge.fold.split84
    i16 270, label %._crit_edge.fold.split85
    i16 420, label %._crit_edge.fold.split86
    i16 770, label %._crit_edge.fold.split87
    i16 870, label %._crit_edge.fold.split88
    i16 1002, label %._crit_edge.fold.split89
    i16 1011, label %._crit_edge.fold.split90
    i16 1021, label %._crit_edge.fold.split91
    i16 1030, label %._crit_edge.fold.split92
    i16 1035, label %._crit_edge.fold.split93
    i16 1040, label %._crit_edge.fold.split94
    i16 1050, label %._crit_edge.fold.split95
    i16 1060, label %._crit_edge.fold.split96
    i16 1070, label %._crit_edge.fold.split97
    i16 1090, label %._crit_edge.fold.split98
    i16 1202, label %._crit_edge.fold.split99
    i16 1210, label %._crit_edge.fold.split100
    i16 1220, label %._crit_edge.fold.split101
    i16 1301, label %._crit_edge.fold.split102
    i16 1385, label %._crit_edge.fold.split103
    i16 1375, label %._crit_edge.fold.split104
    i16 1395, label %._crit_edge.fold.split105
    i16 1870, label %._crit_edge.fold.split106
  ]

.lr.ph.41:                                        ; preds = %bb.c
  switch i16 %i.n, label %._crit_edge62.a [
    i16 2200, label %._crit_edge
    i16 2725, label %._crit_edge.fold.split107
    i16 2735, label %._crit_edge.fold.split108
    i16 3130, label %._crit_edge.fold.split109
    i16 5250, label %._crit_edge.fold.split110
    i16 8200, label %._crit_edge.fold.split111
    i16 2210, label %._crit_edge.fold.split112
    i16 3135, label %._crit_edge.fold.split113
    i16 8210, label %._crit_edge.fold.split114
  ], !llvm.loop !35

._crit_edge.fold.split:                           ; preds = %bb.c
  br label %._crit_edge

._crit_edge.fold.split68:                         ; preds = %bb.c
  br label %._crit_edge

._crit_edge.fold.split69:                         ; preds = %bb.c
  br label %._crit_edge

._crit_edge.fold.split70:                         ; preds = %bb.c
  br label %._crit_edge

._crit_edge.fold.split71:                         ; preds = %bb.c
  br label %._crit_edge

._crit_edge.fold.split72:                         ; preds = %bb.c
  br label %._crit_edge

._crit_edge.fold.split73:                         ; preds = %bb.c
  br label %._crit_edge

._crit_edge.fold.split74:                         ; preds = %bb.c
  br label %._crit_edge

._crit_edge.fold.split75:                         ; preds = %bb.c
  br label %._crit_edge

._crit_edge.fold.split76:                         ; preds = %bb.c
  br label %._crit_edge

._crit_edge.fold.split77:                         ; preds = %bb.c
  br label %._crit_edge

._crit_edge.fold.split78:                         ; preds = %bb.c
  br label %._crit_edge

._crit_edge.fold.split79:                         ; preds = %bb.c
  br label %._crit_edge

._crit_edge.fold.split80:                         ; preds = %bb.c
  br label %._crit_edge

._crit_edge.fold.split81:                         ; preds = %bb.c
  br label %._crit_edge

._crit_edge.fold.split82:                         ; preds = %bb.c
  br label %._crit_edge

._crit_edge.fold.split83:                         ; preds = %bb.c
  br label %._crit_edge

._crit_edge.fold.split84:                         ; preds = %bb.c
  br label %._crit_edge

._crit_edge.fold.split85:                         ; preds = %bb.c
  br label %._crit_edge

._crit_edge.fold.split86:                         ; preds = %bb.c
  br label %._crit_edge

._crit_edge.fold.split87:                         ; preds = %bb.c
  br label %._crit_edge

._crit_edge.fold.split88:                         ; preds = %bb.c
  br label %._crit_edge

._crit_edge.fold.split89:                         ; preds = %bb.c
  br label %._crit_edge

._crit_edge.fold.split90:                         ; preds = %bb.c
  br label %._crit_edge

._crit_edge.fold.split91:                         ; preds = %bb.c
  br label %._crit_edge

._crit_edge.fold.split92:                         ; preds = %bb.c
  br label %._crit_edge

._crit_edge.fold.split93:                         ; preds = %bb.c
  br label %._crit_edge

._crit_edge.fold.split94:                         ; preds = %bb.c
  br label %._crit_edge

._crit_edge.fold.split95:                         ; preds = %bb.c
  br label %._crit_edge

._crit_edge.fold.split96:                         ; preds = %bb.c
  br label %._crit_edge

._crit_edge.fold.split97:                         ; preds = %bb.c
  br label %._crit_edge

._crit_edge.fold.split98:                         ; preds = %bb.c
  br label %._crit_edge

._crit_edge.fold.split99:                         ; preds = %bb.c
  br label %._crit_edge

._crit_edge.fold.split100:                        ; preds = %bb.c
  br label %._crit_edge

._crit_edge.fold.split101:                        ; preds = %bb.c
  br label %._crit_edge

._crit_edge.fold.split102:                        ; preds = %bb.c
  br label %._crit_edge

._crit_edge.fold.split103:                        ; preds = %bb.c
  br label %._crit_edge

._crit_edge.fold.split104:                        ; preds = %bb.c
  br label %._crit_edge

._crit_edge.fold.split105:                        ; preds = %bb.c
  br label %._crit_edge

._crit_edge.fold.split106:                        ; preds = %bb.c
  br label %._crit_edge

._crit_edge.fold.split107:                        ; preds = %.lr.ph.41
  br label %._crit_edge

._crit_edge.fold.split108:                        ; preds = %.lr.ph.41
  br label %._crit_edge

._crit_edge.fold.split109:                        ; preds = %.lr.ph.41
  br label %._crit_edge

._crit_edge.fold.split110:                        ; preds = %.lr.ph.41
  br label %._crit_edge

._crit_edge.fold.split111:                        ; preds = %.lr.ph.41
  br label %._crit_edge

._crit_edge.fold.split112:                        ; preds = %.lr.ph.41
  br label %._crit_edge

._crit_edge.fold.split113:                        ; preds = %.lr.ph.41
  br label %._crit_edge

._crit_edge.fold.split114:                        ; preds = %.lr.ph.41
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.41, %._crit_edge.fold.split114, %._crit_edge.fold.split113, %._crit_edge.fold.split112, %._crit_edge.fold.split111, %._crit_edge.fold.split110, %._crit_edge.fold.split109, %._crit_edge.fold.split108, %._crit_edge.fold.split107, %bb.c, %._crit_edge.fold.split106, %._crit_edge.fold.split105, %._crit_edge.fold.split104, %._crit_edge.fold.split103, %._crit_edge.fold.split102, %._crit_edge.fold.split101, %._crit_edge.fold.split100, %._crit_edge.fold.split99, %._crit_edge.fold.split98, %._crit_edge.fold.split97, %._crit_edge.fold.split96, %._crit_edge.fold.split95, %._crit_edge.fold.split94, %._crit_edge.fold.split93, %._crit_edge.fold.split92, %._crit_edge.fold.split91, %._crit_edge.fold.split90, %._crit_edge.fold.split89, %._crit_edge.fold.split88, %._crit_edge.fold.split87, %._crit_edge.fold.split86, %._crit_edge.fold.split85, %._crit_edge.fold.split84, %._crit_edge.fold.split83, %._crit_edge.fold.split82, %._crit_edge.fold.split81, %._crit_edge.fold.split80, %._crit_edge.fold.split79, %._crit_edge.fold.split78, %._crit_edge.fold.split77, %._crit_edge.fold.split76, %._crit_edge.fold.split75, %._crit_edge.fold.split74, %._crit_edge.fold.split73, %._crit_edge.fold.split72, %._crit_edge.fold.split71, %._crit_edge.fold.split70, %._crit_edge.fold.split69, %._crit_edge.fold.split68, %._crit_edge.fold.split
  %.lcssa67 = phi ptr [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 24), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 1176), %._crit_edge.fold.split113 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 48), %._crit_edge.fold.split ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 72), %._crit_edge.fold.split68 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 96), %._crit_edge.fold.split69 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 120), %._crit_edge.fold.split70 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 144), %._crit_edge.fold.split71 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 168), %._crit_edge.fold.split72 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 192), %._crit_edge.fold.split73 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 216), %._crit_edge.fold.split74 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 240), %._crit_edge.fold.split75 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 264), %._crit_edge.fold.split76 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 288), %._crit_edge.fold.split77 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 312), %._crit_edge.fold.split78 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 336), %._crit_edge.fold.split79 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 360), %._crit_edge.fold.split80 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 384), %._crit_edge.fold.split81 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 408), %._crit_edge.fold.split82 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 432), %._crit_edge.fold.split83 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 456), %._crit_edge.fold.split84 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 480), %._crit_edge.fold.split85 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 504), %._crit_edge.fold.split86 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 528), %._crit_edge.fold.split87 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 552), %._crit_edge.fold.split88 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 576), %._crit_edge.fold.split89 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 600), %._crit_edge.fold.split90 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 624), %._crit_edge.fold.split91 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 648), %._crit_edge.fold.split92 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 672), %._crit_edge.fold.split93 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 696), %._crit_edge.fold.split94 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 720), %._crit_edge.fold.split95 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 744), %._crit_edge.fold.split96 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 768), %._crit_edge.fold.split97 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 792), %._crit_edge.fold.split98 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 816), %._crit_edge.fold.split99 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 840), %._crit_edge.fold.split100 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 864), %._crit_edge.fold.split101 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 888), %._crit_edge.fold.split102 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 912), %._crit_edge.fold.split103 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 936), %._crit_edge.fold.split104 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 960), %._crit_edge.fold.split105 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 1008), %.lr.ph.41 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 984), %._crit_edge.fold.split106 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 1032), %._crit_edge.fold.split107 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 1056), %._crit_edge.fold.split108 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 1080), %._crit_edge.fold.split109 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 1104), %._crit_edge.fold.split110 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 1128), %._crit_edge.fold.split111 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 1152), %._crit_edge.fold.split112 ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 1200), %._crit_edge.fold.split114 ]
  %indvars.iv.next.lcssa66 = phi i64 [ 1, %bb.c ], [ 49, %._crit_edge.fold.split113 ], [ 2, %._crit_edge.fold.split ], [ 3, %._crit_edge.fold.split68 ], [ 4, %._crit_edge.fold.split69 ], [ 5, %._crit_edge.fold.split70 ], [ 6, %._crit_edge.fold.split71 ], [ 7, %._crit_edge.fold.split72 ], [ 8, %._crit_edge.fold.split73 ], [ 9, %._crit_edge.fold.split74 ], [ 10, %._crit_edge.fold.split75 ], [ 11, %._crit_edge.fold.split76 ], [ 12, %._crit_edge.fold.split77 ], [ 13, %._crit_edge.fold.split78 ], [ 14, %._crit_edge.fold.split79 ], [ 15, %._crit_edge.fold.split80 ], [ 16, %._crit_edge.fold.split81 ], [ 17, %._crit_edge.fold.split82 ], [ 18, %._crit_edge.fold.split83 ], [ 19, %._crit_edge.fold.split84 ], [ 20, %._crit_edge.fold.split85 ], [ 21, %._crit_edge.fold.split86 ], [ 22, %._crit_edge.fold.split87 ], [ 23, %._crit_edge.fold.split88 ], [ 24, %._crit_edge.fold.split89 ], [ 25, %._crit_edge.fold.split90 ], [ 26, %._crit_edge.fold.split91 ], [ 27, %._crit_edge.fold.split92 ], [ 28, %._crit_edge.fold.split93 ], [ 29, %._crit_edge.fold.split94 ], [ 30, %._crit_edge.fold.split95 ], [ 31, %._crit_edge.fold.split96 ], [ 32, %._crit_edge.fold.split97 ], [ 33, %._crit_edge.fold.split98 ], [ 34, %._crit_edge.fold.split99 ], [ 35, %._crit_edge.fold.split100 ], [ 36, %._crit_edge.fold.split101 ], [ 37, %._crit_edge.fold.split102 ], [ 38, %._crit_edge.fold.split103 ], [ 39, %._crit_edge.fold.split104 ], [ 40, %._crit_edge.fold.split105 ], [ 42, %.lr.ph.41 ], [ 41, %._crit_edge.fold.split106 ], [ 43, %._crit_edge.fold.split107 ], [ 44, %._crit_edge.fold.split108 ], [ 45, %._crit_edge.fold.split109 ], [ 46, %._crit_edge.fold.split110 ], [ 47, %._crit_edge.fold.split111 ], [ 48, %._crit_edge.fold.split112 ], [ 50, %._crit_edge.fold.split114 ]
  %i.q = getelementptr [24 x i8], ptr @icq_calls, i64 %indvars.iv.next.lcssa66
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  br label %._crit_edge62.a

._crit_edge62.a:                                  ; preds = %.lr.ph.41, %bb.c, %._crit_edge
  %.lcssa = phi ptr [ %.lcssa67, %._crit_edge ], [ @icq_calls, %bb.c ], [ getelementptr inbounds nuw (i8, ptr @icq_calls, i64 1224), %.lr.ph.41 ]
  %i.t = phi ptr [ %i.s, %._crit_edge ], [ @.str.769, %bb.c ], [ @.str.110, %.lr.ph.41 ]
  %spec.select = phi ptr [ %i.s, %._crit_edge ], [ @.str.769, %bb.c ], [ @.str.767, %.lr.ph.41 ]
  %i.u = getelementptr i8, ptr %3, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  tail call void @col_set_str(ptr noundef %i.v, i32 noundef 25, ptr noundef nonnull %spec.select)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.p, ptr noundef @.str.768, ptr noundef nonnull %i.t)
  %i.w = getelementptr i8, ptr %.lcssa, i64 16
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not56 = icmp eq ptr %i.x, null
  br i1 %.not56, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge62.a
  %i.y = tail call ptr @tvb_new_subset_remaining(ptr noundef %2, i32 noundef 12)
  %i.z = tail call i32 %i.x(ptr noundef %i.y, ptr noundef %3, ptr noundef %i.b)
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge62.a, %bb.a, %bb.d, %bb.b
  %.050 = phi i32 [ 12, %._crit_edge62.a ], [ %i.z, %bb.d ], [ 10, %bb.a ], [ 11, %bb.b ]
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
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !36

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
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-ppp?download=true
inline.NumInlined: 62
inline.NumDeleted: 25
begin_hunk_0_@dissect_ppp_raw_hdlc:bb.a
  %i.bz = call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %i.by) ; 4 uses
  %i.ca = load i32, ptr %i.a, align 4
  %.val87 = load ptr, ptr %i.bp, align 8
  %i.cb = sext i32 %i.bz to i64
  %i.cc = call noalias ptr @wmem_alloc(ptr noundef %.val87, i64 noundef %i.cb) #8 ; 2 uses
  %i.cd = icmp sgt i32 %i.bz, 0
  br i1 %i.cd, label %.lr.ph.i103, label %remove_escape_chars.exit.thread

.lr.ph.i103:                                      ; preds = %bb.o, %bb.r
  %.03.i104 = phi i32 [ %i.cn, %bb.r ], [ 0, %bb.o ] ; 2 uses
  %.0282.i105 = phi i32 [ %i.co, %bb.r ], [ 0, %bb.o ] ; 3 uses
  %.0301.i106 = phi i32 [ %i.cm, %bb.r ], [ %i.ca, %bb.o ] ; 3 uses
  %i.ce = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.0301.i106) ; 2 uses
  %i.cf = icmp eq i8 %i.ce, 125
  br i1 %i.cf, label %bb.p, label %bb.r

bb.p:                                             ; preds = %.lr.ph.i103
  %i.cg = add nsw i32 %.03.i104, 1                ; 2 uses
  %.not.i112 = icmp slt i32 %i.cg, %i.bz
  br i1 %.not.i112, label %bb.q, label %._crit_edge.i110

bb.q:                                             ; preds = %bb.p
  %i.ch = add i32 %.0301.i106, 1                  ; 2 uses
  %i.ci = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ch)
  %i.cj = xor i8 %i.ci, 32
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.i103
  %.sink.i107 = phi i8 [ %i.cj, %bb.q ], [ %i.ce, %.lr.ph.i103 ]
  %.131.i108 = phi i32 [ %i.ch, %bb.q ], [ %.0301.i106, %.lr.ph.i103 ]
  %.1.i109 = phi i32 [ %i.cg, %bb.q ], [ %.03.i104, %.lr.ph.i103 ]
  %i.ck = sext i32 %.0282.i105 to i64
  %i.cl = getelementptr i8, ptr %i.cc, i64 %i.ck
  store i8 %.sink.i107, ptr %i.cl, align 1
  %i.cm = add i32 %.131.i108, 1
  %i.cn = add nsw i32 %.1.i109, 1                 ; 2 uses
  %i.co = add i32 %.0282.i105, 1                  ; 2 uses
  %i.cp = icmp slt i32 %i.cn, %i.bz
  br i1 %i.cp, label %.lr.ph.i103, label %._crit_edge.i110, !llvm.loop !9

._crit_edge.i110:                                 ; preds = %bb.r, %bb.p
  %.028.lcssa.i111 = phi i32 [ %.0282.i105, %bb.p ], [ %i.co, %bb.r ] ; 3 uses
  %i.cq = icmp eq i32 %.028.lcssa.i111, 0
  br i1 %i.cq, label %remove_escape_chars.exit.thread, label %remove_escape_chars.exit113

remove_escape_chars.exit113:                      ; preds = %._crit_edge.i110
  %i.cr = call ptr @tvb_new_child_real_data(ptr noundef %0, ptr noundef %i.cc, i32 noundef %.028.lcssa.i111, i32 noundef %.028.lcssa.i111) ; 2 uses
  %.not85 = icmp eq ptr %i.cr, null
  br i1 %.not85, label %remove_escape_chars.exit.thread, label %remove_escape_chars.exit.thread.sink.split

bb.s:                                             ; preds = %bb.l
  %i.cs = load i32, ptr %i.a, align 4
  %i.ct = add i32 %i.cs, 1                        ; 2 uses
  %i.cu = load i32, ptr %i.b, align 4             ; 2 uses
  %i.cv = sub i32 %i.cu, %i.ct                    ; 4 uses
  %i.cw = add i32 %i.cu, 1
  %i.cx = call zeroext i1 @tvb_offset_exists(ptr noundef %0, i32 noundef %i.cw)
  %.pre138 = load i32, ptr %i.b, align 4          ; 2 uses
  br i1 %i.cx, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.cy = add i32 %.pre138, 1
  %i.cz = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.cy)
  %i.da = icmp eq i8 %i.cz, 126
  %.pre = load i32, ptr %i.b, align 4             ; 2 uses
  br i1 %i.da, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.db = add i32 %.pre, 1                        ; 2 uses
  store i32 %i.db, ptr %i.b, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %i.dc = phi i32 [ %i.db, %bb.u ], [ %.pre, %bb.t ], [ %.pre138, %bb.s ]
  %i.dd = load i32, ptr %i.a, align 4             ; 2 uses
  %i.de = sub i32 %i.dc, %i.dd                    ; 2 uses
  %i.df = load i32, ptr @hf_ppp_hdlc_data, align 4
  %i.dg = call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.df, ptr noundef %0, i32 noundef %i.dd, i32 noundef %i.de, i32 noundef 0) ; 0 uses
  %i.dh = icmp ugt i32 %i.de, 1
  br i1 %i.dh, label %bb.w, label %remove_escape_chars.exit125.thread

bb.w:                                             ; preds = %bb.v
  %.val = load ptr, ptr %i.bp, align 8
  %i.di = sext i32 %i.cv to i64
  %i.dj = call noalias ptr @wmem_alloc(ptr noundef %.val, i64 noundef %i.di) #8 ; 2 uses
  %i.dk = icmp sgt i32 %i.cv, 0
  br i1 %i.dk, label %.lr.ph.i115, label %remove_escape_chars.exit125.thread

.lr.ph.i115:                                      ; preds = %bb.w, %bb.z
  %.03.i116 = phi i32 [ %i.du, %bb.z ], [ 0, %bb.w ] ; 2 uses
  %.0282.i117 = phi i32 [ %i.dv, %bb.z ], [ 0, %bb.w ] ; 3 uses
  %.0301.i118 = phi i32 [ %i.dt, %bb.z ], [ %i.ct, %bb.w ] ; 3 uses
  %i.dl = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.0301.i118) ; 2 uses
  %i.dm = icmp eq i8 %i.dl, 125
  br i1 %i.dm, label %bb.x, label %bb.z

bb.x:                                             ; preds = %.lr.ph.i115
  %i.dn = add nsw i32 %.03.i116, 1                ; 2 uses
  %.not.i124 = icmp slt i32 %i.dn, %i.cv
  br i1 %.not.i124, label %bb.y, label %._crit_edge.i122

bb.y:                                             ; preds = %bb.x
  %i.do = add i32 %.0301.i118, 1                  ; 2 uses
  %i.dp = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.do)
  %i.dq = xor i8 %i.dp, 32
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph.i115
  %.sink.i119 = phi i8 [ %i.dq, %bb.y ], [ %i.dl, %.lr.ph.i115 ]
  %.131.i120 = phi i32 [ %i.do, %bb.y ], [ %.0301.i118, %.lr.ph.i115 ]
  %.1.i121 = phi i32 [ %i.dn, %bb.y ], [ %.03.i116, %.lr.ph.i115 ]
  %i.dr = sext i32 %.0282.i117 to i64
  %i.ds = getelementptr i8, ptr %i.dj, i64 %i.dr
  store i8 %.sink.i119, ptr %i.ds, align 1
  %i.dt = add i32 %.131.i120, 1
  %i.du = add nsw i32 %.1.i121, 1                 ; 2 uses
  %i.dv = add i32 %.0282.i117, 1                  ; 2 uses
  %i.dw = icmp slt i32 %i.du, %i.cv
  br i1 %i.dw, label %.lr.ph.i115, label %._crit_edge.i122, !llvm.loop !9

._crit_edge.i122:                                 ; preds = %bb.z, %bb.x
  %.028.lcssa.i123 = phi i32 [ %.0282.i117, %bb.x ], [ %i.dv, %bb.z ] ; 3 uses
  %i.dx = icmp eq i32 %.028.lcssa.i123, 0
  br i1 %i.dx, label %remove_escape_chars.exit125.thread, label %remove_escape_chars.exit125

remove_escape_chars.exit125:                      ; preds = %._crit_edge.i122
  %i.dy = call ptr @tvb_new_child_real_data(ptr noundef %0, ptr noundef %i.dj, i32 noundef %.028.lcssa.i123, i32 noundef %.028.lcssa.i123) ; 3 uses
  %.not86 = icmp eq ptr %i.dy, null
  br i1 %.not86, label %remove_escape_chars.exit125.thread, label %bb.aa

bb.aa:                                            ; preds = %remove_escape_chars.exit125
  store i8 %i.bk, ptr %i.bj, align 8
  store <2 x ptr> %i.bm, ptr %i.bl, align 8
  %i.dz = call ptr @add_new_data_source(ptr noundef %1, ptr noundef nonnull %i.dy, ptr noundef nonnull @.str.994) ; 0 uses
  call fastcc void @dissect_ppp_hdlc_common(ptr noundef nonnull %i.dy, ptr noundef %1, ptr noundef %2)
  br label %remove_escape_chars.exit125.thread

remove_escape_chars.exit125.thread:               ; preds = %bb.w, %._crit_edge.i122, %remove_escape_chars.exit125, %bb.aa, %bb.v
  %.1 = phi i1 [ false, %bb.aa ], [ %.0136, %remove_escape_chars.exit125 ], [ %.0136, %bb.v ], [ %.0136, %._crit_edge.i122 ], [ %.0136, %bb.w ]
  %i.ea = load i32, ptr %i.b, align 4             ; 2 uses
  store i32 %i.ea, ptr %i.a, align 4
  %i.eb = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.ea)
  %.not84 = icmp eq i32 %i.eb, 0
  br i1 %.not84, label %remove_escape_chars.exit.thread, label %bb.l, !llvm.loop !10

remove_escape_chars.exit.thread.sink.split:       ; preds = %remove_escape_chars.exit113, %remove_escape_chars.exit
  %.sink159 = phi ptr [ %i.ai, %remove_escape_chars.exit ], [ %i.cr, %remove_escape_chars.exit113 ] ; 2 uses
  %i.ec = call ptr @add_new_data_source(ptr noundef %1, ptr noundef nonnull %.sink159, ptr noundef nonnull @.str.16) ; 0 uses
  %i.ed = call i32 @call_data_dissector(ptr noundef nonnull %.sink159, ptr noundef %1, ptr noundef %2) ; 0 uses
  br label %remove_escape_chars.exit.thread

remove_escape_chars.exit.thread:                  ; preds = %remove_escape_chars.exit125.thread, %remove_escape_chars.exit.thread.sink.split, %remove_escape_chars.exit101.thread, %remove_escape_chars.exit113, %._crit_edge.i110, %bb.o, %remove_escape_chars.exit, %._crit_edge.i, %bb.b
  %i.ee = call i32 @tvb_captured_length(ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %i.ee
}

; Function Attrs: null_pointer_is_valid
declare void @proto_register_subtree_array(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare void @proto_register_field_array(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare void @register_capture_dissector_table(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @register_capture_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal zeroext i1 @capture_ppp_hdlc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #1 {
bb.a:
  %i.a = add i32 %1, 2                            ; 2 uses
  %i.b = icmp ugt i32 %1, -3
  %.not = icmp ugt i32 %i.a, %2
  %or.cond = or i1 %i.b, %.not
  br i1 %or.cond, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 1
  switch i8 %i.c, label %bb.d [
    i8 15, label %bb.c
    i8 -113, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.d = load ptr, ptr @chdlc_cap_handle, align 8
  %i.e = tail call zeroext i1 @call_capture_dissector(ptr noundef %i.d, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = add i32 %1, 4                            ; 2 uses
  %i.g = icmp ugt i32 %1, -5
  %.not27 = icmp ugt i32 %i.f, %2
  %or.cond28 = or i1 %i.g, %.not27
  br i1 %or.cond28, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = sext i32 %i.a to i64
  %i.i = getelementptr i8, ptr %0, i64 %i.h
  %.val = load i16, ptr %i.i, align 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %.val)
  %i.j = zext i16 %5 to i32
  %i.k = tail call zeroext i1 @try_capture_dissector(ptr noundef nonnull @.str.22, i32 noundef %i.j, ptr noundef %0, i32 noundef %i.f, i32 noundef %2, ptr noundef %3, ptr noundef %4)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.a, %bb.e, %bb.c
  %.0 = phi i1 [ %i.e, %bb.c ], [ %i.k, %bb.e ], [ false, %bb.a ], [ false, %bb.d ]
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_ppp_raw_hdlc() local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @ppp_raw_hdlc_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.24, i32 noundef 34945, ptr noundef %i.a)
  %i.b = load ptr, ptr @ppp_raw_hdlc_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.24, i32 noundef 35026, ptr noundef %i.b)
  %i.c = load i32, ptr @proto_ppp, align 4
  tail call void @heur_dissector_add(ptr noundef nonnull @.str.25, ptr noundef nonnull @dissect_ppp_usb, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef %i.c, i32 noundef 0)
  %i.d = tail call ptr @find_capture_dissector(ptr noundef nonnull @.str.22) ; 3 uses
  tail call void @capture_dissector_add_uint(ptr noundef nonnull @.str.28, i32 noundef 4, ptr noundef %i.d)
  tail call void @capture_dissector_add_uint(ptr noundef nonnull @.str.29, i32 noundef 7, ptr noundef %i.d)
  tail call void @capture_dissector_add_uint(ptr noundef nonnull @.str.30, i32 noundef 207, ptr noundef %i.d)
  %i.e = tail call ptr @find_capture_dissector(ptr noundef nonnull @.str.31)
  store ptr %i.e, ptr @chdlc_cap_handle, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare void @heur_dissector_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @dissect_ppp_usb(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #1 {
bb.a:
  %i.a = tail call i32 @tvb_memeql(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @dissect_ppp_usb.buf2, i64 noundef 4)
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @tvb_memeql(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @dissect_ppp_usb.buf1, i64 noundef 3)
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = tail call i32 @dissect_ppp_raw_hdlc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr poison) ; 0 uses
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.f = tail call i32 @tvb_memeql(ptr noundef %0, i32 noundef 0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @dissect_ppp_usb.buf1, i64 1), i64 noundef 2)
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i32 @tvb_memeql(ptr noundef %0, i32 noundef 0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @dissect_ppp_usb.buf2, i64 1), i64 noundef 3)
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  %i.k = icmp eq i8 %i.j, 3
  %. = select i1 %i.k, i32 2, i32 3
  %i.l = tail call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %.) ; 3 uses
  %i.m = load i32, ptr @proto_ppp, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.m, ptr noundef %i.l, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 2 uses
  %i.o = load i32, ptr @ett_ppp, align 4
  %i.p = tail call ptr @proto_item_add_subtree(ptr noundef %i.n, i32 noundef %i.o)
  tail call fastcc void @dissect_ppp_common(ptr noundef %i.l, ptr noundef %1, ptr noundef %2, ptr noundef %i.p, ptr noundef %i.n, i32 noundef 0)
  %i.q = tail call i32 @tvb_captured_length(ptr noundef %i.l) ; 0 uses
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.r = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.s = icmp eq i8 %i.r, 126
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = tail call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef 1)
  tail call fastcc void @dissect_ppp_hdlc_common(ptr noundef %i.t, ptr noundef %1, ptr noundef %2)
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.h, %bb.f, %bb.g
  %.021 = phi i1 [ false, %bb.g ], [ true, %bb.f ], [ true, %bb.h ], [ true, %bb.c ]
  ret i1 %.021
}

; Function Attrs: null_pointer_is_valid
declare ptr @find_capture_dissector(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare void @capture_dissector_add_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_ppp() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.67) ; 2 uses
  store i32 %i.a, ptr @proto_ppp, align 4
  tail call void @proto_register_field_array(i32 noundef %i.a, ptr noundef nonnull @proto_register_ppp.hf, i32 noundef 14)
  tail call void @proto_register_subtree_array(ptr noundef nonnull @proto_register_ppp.ett, i32 noundef 3)
  %i.b = load i32, ptr @proto_ppp, align 4
  %i.c = tail call ptr @expert_register_protocol(i32 noundef %i.b)
  tail call void @expert_register_field_array(ptr noundef %i.c, ptr noundef nonnull @proto_register_ppp.ei, i32 noundef 2)
  %i.d = load i32, ptr @proto_ppp, align 4
  %i.e = tail call ptr @register_dissector_table(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.68, i32 noundef %i.d, i32 noundef 5, i32 noundef 2)
  store ptr %i.e, ptr @ppp_subdissector_table, align 8
  %i.f = load i32, ptr @proto_ppp, align 4
  %i.g = tail call ptr @register_dissector(ptr noundef nonnull @.str.22, ptr noundef nonnull @dissect_ppp_hdlc, i32 noundef %i.f)
  store ptr %i.g, ptr @ppp_hdlc_handle, align 8
  %i.h = load i32, ptr @proto_ppp, align 4
  %i.i = tail call ptr @register_dissector(ptr noundef nonnull @.str.69, ptr noundef nonnull @dissect_lcp_options, i32 noundef %i.h) ; 0 uses
  %i.j = load i32, ptr @proto_ppp, align 4
  %i.k = tail call ptr @register_dissector(ptr noundef nonnull @.str.67, ptr noundef nonnull @dissect_ppp, i32 noundef %i.j)
  store ptr %i.k, ptr @ppp_handle, align 8
  %i.l = load i32, ptr @proto_ppp, align 4
  %i.m = tail call ptr @prefs_register_protocol(i32 noundef %i.l, ptr noundef null) ; 3 uses
  tail call void @prefs_register_enum_preference(ptr noundef %i.m, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, ptr noundef nonnull @ppp_fcs_decode, ptr noundef nonnull @fcs_options, i1 noundef zeroext false)
  tail call void @prefs_register_obsolete_preference(ptr noundef %i.m, ptr noundef nonnull @.str.73)
  tail call void @prefs_register_uint_preference(ptr noundef %i.m, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76, i32 noundef 16, ptr noundef nonnull @pppmux_def_prot_id)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @expert_register_protocol(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare void @expert_register_field_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector_table(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_ppp_hdlc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #1 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.b = and i8 %i.a, 127
  %or.cond = icmp eq i8 %i.b, 15
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @chdlc_handle, align 8
  %i.d = tail call i32 @call_dissector(ptr noundef %i.c, ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8
  tail call void @col_set_str(ptr noundef %i.f, i32 noundef 35, ptr noundef nonnull @.str.66)
  %i.g = getelementptr i8, ptr %1, i64 356
  %i.h = load i32, ptr %i.g, align 4
  %i.i = load ptr, ptr %i.e, align 8
  switch i32 %i.h, label %bb.e [
    i32 0, label %bb.f
    i32 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d
  %.str.1002.sink20 = phi ptr [ @.str.1002, %bb.e ], [ @.str.1001, %bb.d ], [ @.str.1000, %bb.c ]
  %.str.1002.sink = phi ptr [ @.str.1002, %bb.e ], [ @.str.1000, %bb.d ], [ @.str.1001, %bb.c ]
  tail call void @col_set_str(ptr noundef %i.i, i32 noundef 20, ptr noundef nonnull %.str.1002.sink20)
  %i.j = load ptr, ptr %i.e, align 8
  tail call void @col_set_str(ptr noundef %i.j, i32 noundef 18, ptr noundef nonnull %.str.1002.sink)
  tail call fastcc void @dissect_ppp_hdlc_common(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %i.k = tail call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ %i.k, %bb.f ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_lcp_options(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #1 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length(ptr noundef %0)
  %i.b = load ptr, ptr @lcp_option_table, align 8
  tail call fastcc void @ppp_dissect_options(ptr noundef %0, i32 noundef 0, i32 noundef %i.a, ptr noundef %i.b, ptr noundef %1, ptr noundef %2)
  %i.c = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.c
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_ppp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #1 {
bb.a:
  %i.a = load i32, ptr @proto_ppp, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 2 uses
  %i.c = load i32, ptr @ett_ppp, align 4
  %i.d = tail call ptr @proto_item_add_subtree(ptr noundef %i.b, i32 noundef %i.c)
  tail call fastcc void @dissect_ppp_common(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %i.d, ptr noundef %i.b, i32 noundef 0)
  %i.e = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.e
}

; Function Attrs: null_pointer_is_valid
declare ptr @prefs_register_protocol(i32 noundef, ptr noundef) local_unnamed_addr #0

end_hunk_0
begin_hunk_1_@dissect_ccp_other_opt:bb.a
  %i.f = load i32, ptr @hf_ccp_opt_type, align 4
  %i.g = zext i8 %i.e to i32                      ; 2 uses
  %i.h = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.c, i32 noundef %i.f, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef %i.g, ptr noundef nonnull @.str.1295, ptr noundef %i.d, i32 noundef %i.g) ; 0 uses
  %i.i = load i32, ptr @hf_ccp_opt_length, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.i, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.k = icmp sgt i32 %i.a, 2
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr @hf_ccp_opt_data, align 4
  %i.m = add nsw i32 %i.a, -2
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.l, ptr noundef %0, i32 noundef 2, i32 noundef %i.m, i32 noundef 0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.o
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef zeroext i1 @dissect_ccp_fixed_opt(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef range(i32 3, 7) %5, ptr nofree noundef writeonly captures(none) %6, ptr nofree noundef writeonly captures(none) %7) unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length(ptr noundef %0) ; 4 uses
  %.not.i = icmp eq i32 %i.a, %5                  ; 2 uses
  br i1 %.not.i, label %bb.b, label %ppp_option_len_check.exit

ppp_option_len_check.exit:                        ; preds = %bb.a
  %i.b = tail call ptr @find_protocol_by_id(i32 noundef %3)
  %i.c = tail call ptr @proto_get_protocol_short_name(ptr noundef %i.b)
  %i.d = icmp eq i32 %i.a, 1
  %i.e = select i1 %i.d, ptr @.str.1006, ptr @.str.1007
  %i.f = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %2, ptr noundef %1, ptr noundef nonnull @ei_ppp_opt_len_invalid, ptr noundef %0, i32 noundef 0, i32 noundef %i.a, ptr noundef nonnull @.str.1318, ptr noundef %i.c, i32 noundef %i.a, ptr noundef nonnull %i.e, i32 noundef range(i32 2, 11) %5) ; 0 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %3, ptr noundef %0, i32 noundef 0, i32 noundef %5, i32 noundef 0) ; 2 uses
  store ptr %i.g, ptr %7, align 8
  %i.h = tail call ptr @proto_item_add_subtree(ptr noundef %i.g, i32 noundef %4) ; 3 uses
  store ptr %i.h, ptr %6, align 8
  %i.i = tail call ptr @proto_registrar_get_name(i32 noundef %3)
  %i.j = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.k = load i32, ptr @hf_ccp_opt_type, align 4
  %i.l = zext i8 %i.j to i32                      ; 2 uses
  %i.m = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.h, i32 noundef %i.k, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef %i.l, ptr noundef nonnull @.str.1295, ptr noundef %i.i, i32 noundef %i.l) ; 0 uses
  %i.n = load i32, ptr @hf_ccp_opt_length, align 4
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.n, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %ppp_option_len_check.exit, %bb.b
  ret i1 %.not.i
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @dissect_cbcp_callback_opt_common(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr @hf_cbcp_callback_delay, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.c = add i32 %3, -3                           ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.038 = phi i32 [ %i.u, %bb.c ], [ %i.c, %bb.a ] ; 2 uses
  %.03437 = phi i32 [ %i.t, %bb.c ], [ 3, %bb.a ] ; 4 uses
  %i.e = load i32, ptr @ett_cbcp_callback_opt_addr, align 4
  %i.f = tail call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef %.03437, i32 noundef %.038, i32 noundef %i.e, ptr noundef null, ptr noundef nonnull @.str.1448) ; 2 uses
  %i.g = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.03437) ; 2 uses
  %i.h = load i32, ptr @hf_cbcp_address_type, align 4
  %i.i = zext i8 %i.g to i32                      ; 2 uses
  %i.j = icmp eq i8 %i.g, 1
  %i.k = select i1 %i.j, ptr @.str.1449, ptr @.str.1450
  %i.l = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.f, i32 noundef %i.h, ptr noundef %0, i32 noundef %.03437, i32 noundef 1, i32 noundef %i.i, ptr noundef nonnull @.str.1295, ptr noundef nonnull %i.k, i32 noundef %i.i)
  %i.m = add i32 %.03437, 1                       ; 3 uses
  %i.n = add nsw i32 %.038, -1                    ; 2 uses
  %i.o = tail call i32 @tvb_strsize(ptr noundef %0, i32 noundef %i.m) ; 4 uses
  %i.p = icmp ugt i32 %i.o, %i.n
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.q = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.l, ptr noundef nonnull @ei_cbcp_address) ; 0 uses
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.r = load i32, ptr @hf_cbcp_address, align 4
  %i.s = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.r, ptr noundef %0, i32 noundef %i.m, i32 noundef %i.o, i32 noundef 0) ; 0 uses
  %i.t = add i32 %i.o, %i.m
  %i.u = sub nuw nsw i32 %i.n, %i.o               ; 2 uses
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !22

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %i.v = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.v
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_strsize(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef zeroext i1 @dissect_bap_fixed_opt(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef range(i32 2, 6) %5, ptr nofree noundef writeonly captures(none) %6, ptr nofree noundef writeonly captures(none) %7) unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length(ptr noundef %0) ; 4 uses
  %.not.i = icmp eq i32 %i.a, %5                  ; 2 uses
  br i1 %.not.i, label %bb.b, label %ppp_option_len_check.exit

ppp_option_len_check.exit:                        ; preds = %bb.a
  %i.b = tail call ptr @find_protocol_by_id(i32 noundef %3)
  %i.c = tail call ptr @proto_get_protocol_short_name(ptr noundef %i.b)
  %i.d = icmp eq i32 %i.a, 1
  %i.e = select i1 %i.d, ptr @.str.1006, ptr @.str.1007
  %i.f = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %2, ptr noundef %1, ptr noundef nonnull @ei_ppp_opt_len_invalid, ptr noundef %0, i32 noundef 0, i32 noundef %i.a, ptr noundef nonnull @.str.1318, ptr noundef %i.c, i32 noundef %i.a, ptr noundef nonnull %i.e, i32 noundef range(i32 2, 11) %5) ; 0 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %3, ptr noundef %0, i32 noundef 0, i32 noundef %5, i32 noundef 0) ; 2 uses
  store ptr %i.g, ptr %7, align 8
  %i.h = tail call ptr @proto_item_add_subtree(ptr noundef %i.g, i32 noundef %4) ; 3 uses
  store ptr %i.h, ptr %6, align 8
  %i.i = tail call ptr @proto_registrar_get_name(i32 noundef %3)
  %i.j = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.k = load i32, ptr @hf_bap_opt_type, align 4
  %i.l = zext i8 %i.j to i32                      ; 2 uses
  %i.m = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.h, i32 noundef %i.k, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef %i.l, ptr noundef nonnull @.str.1295, ptr noundef %i.i, i32 noundef %i.l) ; 0 uses
  %i.n = load i32, ptr @hf_bap_opt_length, align 4
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.n, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %ppp_option_len_check.exit, %bb.b
  ret i1 %.not.i
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef zeroext i1 @dissect_bap_var_opt(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef range(i32 2, 5) %5, ptr nofree noundef writeonly captures(none) %6, ptr nofree noundef writeonly captures(none) %7) unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length(ptr noundef %0) ; 4 uses
  %i.b = icmp sge i32 %i.a, %5                    ; 2 uses
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @find_protocol_by_id(i32 noundef %3)
  %i.d = tail call ptr @proto_get_protocol_short_name(ptr noundef %i.c)
  %i.e = icmp eq i32 %i.a, 1
  %i.f = select i1 %i.e, ptr @.str.1006, ptr @.str.1007
  %i.g = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %2, ptr noundef %1, ptr noundef nonnull @ei_ppp_opt_len_invalid, ptr noundef %0, i32 noundef 0, i32 noundef %i.a, ptr noundef nonnull @.str.1316, ptr noundef %i.d, i32 noundef %i.a, ptr noundef nonnull %i.f, i32 noundef %5) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %3, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 2 uses
  store ptr %i.h, ptr %7, align 8
  %i.i = tail call ptr @proto_item_add_subtree(ptr noundef %i.h, i32 noundef %4) ; 3 uses
  store ptr %i.i, ptr %6, align 8
  %i.j = tail call ptr @proto_registrar_get_name(i32 noundef %3)
  %i.k = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.l = load i32, ptr @hf_bap_opt_type, align 4
  %i.m = zext i8 %i.k to i32                      ; 2 uses
  %i.n = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.i, i32 noundef %i.l, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef %i.m, ptr noundef nonnull @.str.1295, ptr noundef %i.j, i32 noundef %i.m) ; 0 uses
  %i.o = load i32, ptr @hf_bap_opt_length, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.o, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret i1 %i.b
}

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info_format(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare void @tvb_ensure_bytes_exist(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_protocol_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bitmask_with_flags(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_expert_format_remaining(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @ipprotostr(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_memdup(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_split_bits_item_ret_val(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #5

attributes #0 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { noreturn }
attributes #7 = { nounwind }
attributes #8 = { allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{i8 0, i8 2}
!8 = !{}
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
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6}
!21 = distinct !{!21, !6}
!22 = distinct !{!22, !6}
end_hunk_1

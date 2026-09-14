Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-aim?download=true
inline.NumInlined: 79
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@aim_get_message:bb.a
  %.1122 = phi i32 [ %i.aw, %bb.t ], [ %.0121140, %bb.s ], [ %.0121140, %bb.r ]
  %i.ax = add nuw nsw i32 %.0120141, 1            ; 2 uses
  %i.ay = icmp slt i32 %i.ax, %i.s
  %i.az = icmp slt i32 %.3, 7
  %i.ba = select i1 %i.ay, i1 %i.az, i1 false
  br i1 %i.ba, label %bb.j, label %.loopexit, !llvm.loop !22

.loopexit:                                        ; preds = %bb.u, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_aim_directory_user_repl(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 0)
  %.not6 = icmp eq i32 %i.a, 0
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi i32 [ %i.b, %.lr.ph ], [ 0, %bb.a ]
  %i.b = tail call fastcc i32 @dissect_aim_tlv(ptr noundef %0, ptr noundef %1, i32 noundef %.07, ptr noundef %2, ptr noundef nonnull @aim_client_tlvs) ; 3 uses
  %i.c = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.b)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !23

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.b, %.lr.ph ]
  ret i32 %.0.lcssa
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_aim_generic_clientready(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @ett_generic_clientready, align 4
  %i.b = tail call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef %i.a, ptr noundef null, ptr noundef nonnull @.str.749)
  %i.c = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 0)
  %.not18 = icmp eq i32 %i.c, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.019 = phi i32 [ %i.n, %.lr.ph ], [ 0, %bb.a ] ; 4 uses
  %i.d = load i32, ptr @hf_generic_family, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.d, ptr noundef %0, i32 noundef %.019, i32 noundef 2, i32 noundef 0) ; 2 uses
  %i.f = load i32, ptr @ett_generic_clientready_item, align 4
  %i.g = tail call ptr @proto_item_add_subtree(ptr noundef %i.e, i32 noundef %i.f) ; 2 uses
  %i.h = or disjoint i32 %.019, 2
  %i.i = load i32, ptr @hf_generic_version, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.i, ptr noundef %0, i32 noundef %i.h, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.k = or disjoint i32 %.019, 4
  %i.l = load i32, ptr @hf_generic_dll_version, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.l, ptr noundef %0, i32 noundef %i.k, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.n = add i32 %.019, 8                         ; 3 uses
  tail call void @proto_item_set_len(ptr noundef %i.e, i32 noundef 8)
  %i.o = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.n)
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !24

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.n, %.lr.ph ]
  ret i32 %.0.lcssa
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_aim_generic_serverready(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @ett_generic_clientready, align 4
  %i.b = tail call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef %i.a, ptr noundef null, ptr noundef nonnull @.str.749)
  %i.c = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 0)
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.010 = phi i32 [ %i.f, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.d = load i32, ptr @hf_generic_family, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.d, ptr noundef %0, i32 noundef %.010, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.f = add i32 %.010, 2                         ; 3 uses
  %i.g = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.f)
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !25

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.f, %.lr.ph ]
  ret i32 %.0.lcssa
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_aim_generic_service_req(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 0)
  %.0713.i = load ptr, ptr @families, align 8     ; 2 uses
  %.not14.i = icmp eq ptr %.0713.i, null
  br i1 %.not14.i, label %aim_get_family.exit.thread, label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.b = getelementptr i8, ptr %.0715.i, i64 8
  %.07.i = load ptr, ptr %i.b, align 8            ; 2 uses
  %.not.i = icmp eq ptr %.07.i, null
  br i1 %.not.i, label %aim_get_family.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.0715.i = phi ptr [ %.07.i, %bb.b ], [ %.0713.i, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.0715.i, align 8          ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 16
  %i.e = load i16, ptr %i.d, align 8
  %.not10.i = icmp eq i16 %i.e, %i.a
  br i1 %.not10.i, label %aim_get_family.exit, label %bb.b

aim_get_family.exit.thread:                       ; preds = %bb.b, %bb.a
  %i.f = load i32, ptr @hf_generic_servicereq_service, align 4
  %i.g = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 0)
  br label %bb.d

aim_get_family.exit:                              ; preds = %.lr.ph.i
  %i.h = load i32, ptr @hf_generic_servicereq_service, align 4 ; 2 uses
  %i.i = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 0) ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %aim_get_family.exit
  %i.j = getelementptr i8, ptr %i.c, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  br label %bb.d

bb.d:                                             ; preds = %aim_get_family.exit.thread, %aim_get_family.exit, %bb.c
  %i.l = phi i16 [ %i.i, %bb.c ], [ %i.i, %aim_get_family.exit ], [ %i.g, %aim_get_family.exit.thread ]
  %i.m = phi i32 [ %i.h, %bb.c ], [ %i.h, %aim_get_family.exit ], [ %i.f, %aim_get_family.exit.thread ]
  %i.n = phi ptr [ %i.k, %bb.c ], [ @.str.110, %aim_get_family.exit ], [ @.str.110, %aim_get_family.exit.thread ]
  %i.o = zext i16 %i.l to i32
  %i.p = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 0)
  %i.q = zext i16 %i.p to i32
  %i.r = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %2, i32 noundef %i.m, ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef %i.o, ptr noundef nonnull @.str.535, ptr noundef %i.n, i32 noundef %i.q) ; 0 uses
  ret i32 2
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_aim_generic_redirect(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 0)
  %.not7.i = icmp eq i32 %i.a, 0
  br i1 %.not7.i, label %dissect_aim_tlv_sequence.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.08.i = phi i32 [ %i.b, %.lr.ph.i ], [ 0, %bb.a ]
  %i.b = tail call fastcc i32 @dissect_aim_tlv(ptr noundef %0, ptr noundef %1, i32 noundef %.08.i, ptr noundef %2, ptr noundef nonnull @aim_client_tlvs) ; 3 uses
  %i.c = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.b)
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %dissect_aim_tlv_sequence.exit, label %.lr.ph.i, !llvm.loop !0

dissect_aim_tlv_sequence.exit:                    ; preds = %.lr.ph.i, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.b, %.lr.ph.i ]
  ret i32 %.0.lcssa.i
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_generic_rateinfo(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 0) ; 4 uses
  %i.b = load i32, ptr @hf_generic_rateinfo_numclasses, align 4
  %i.c = zext i16 %i.a to i32                     ; 2 uses
  %i.d = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef %i.c) ; 0 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = mul nuw nsw i32 %i.c, 35
  %i.f = load i32, ptr @ett_generic_rateinfo_classes, align 4
  %i.g = tail call ptr @proto_tree_add_subtree(ptr noundef nonnull %2, ptr noundef %0, i32 noundef 2, i32 noundef %i.e, i32 noundef %i.f, ptr noundef null, ptr noundef nonnull @.str.750)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.072 = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  %.not107 = icmp eq i16 %i.a, 0
  br i1 %.not107, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.c
  %i.h = load i32, ptr @ett_generic_rateinfo_groups, align 4
  %i.i = tail call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef 2, i32 noundef -1, i32 noundef %i.h, ptr noundef null, ptr noundef nonnull @.str.752) ; 0 uses
  br label %._crit_edge105

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.06992 = phi i32 [ %i.n, %.lr.ph ], [ 2, %bb.c ] ; 3 uses
  %.07091 = phi i16 [ %i.o, %.lr.ph ], [ 0, %bb.c ]
  %i.j = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %.06992)
  %i.k = load i32, ptr @ett_generic_rateinfo_class, align 4
  %i.l = zext i16 %i.j to i32
  %i.m = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %.072, ptr noundef %0, i32 noundef %.06992, i32 noundef 35, i32 noundef %i.k, ptr noundef null, ptr noundef nonnull @.str.751, i32 noundef %i.l)
  %i.n = tail call fastcc i32 @dissect_rate_class(ptr noundef %0, i32 noundef %.06992, ptr noundef %i.m) ; 3 uses
  %i.o = add nuw i16 %.07091, 1                   ; 2 uses
  %exitcond.not = icmp eq i16 %i.o, %i.a
  br i1 %exitcond.not, label %.lr.ph104.preheader, label %.lr.ph, !llvm.loop !26

.lr.ph104.preheader:                              ; preds = %.lr.ph
  %i.p = load i32, ptr @ett_generic_rateinfo_groups, align 4
  %i.q = tail call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef %i.n, i32 noundef -1, i32 noundef %i.p, ptr noundef null, ptr noundef nonnull @.str.752)
  br label %.lr.ph104

.lr.ph104:                                        ; preds = %.lr.ph104.preheader, %._crit_edge99
  %.1102 = phi i32 [ %.2.lcssa, %._crit_edge99 ], [ %i.n, %.lr.ph104.preheader ] ; 5 uses
  %.171101 = phi i16 [ %i.bq, %._crit_edge99 ], [ 0, %.lr.ph104.preheader ]
  %i.r = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %.1102)
  %i.s = add i32 %.1102, 2                        ; 2 uses
  %i.t = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.s) ; 3 uses
  %i.u = zext i16 %i.t to i32                     ; 2 uses
  %i.v = shl nuw nsw i32 %i.u, 2
  %i.w = add nuw nsw i32 %i.v, 4
  %i.x = load i32, ptr @ett_generic_rateinfo_group, align 4
  %i.y = zext i16 %i.r to i32                     ; 2 uses
  %i.z = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.q, ptr noundef %0, i32 noundef %.1102, i32 noundef %i.w, i32 noundef %i.x, ptr noundef null, ptr noundef nonnull @.str.753, i32 noundef %i.y) ; 3 uses
  %i.aa = load i32, ptr @hf_generic_rateinfo_classid, align 4
  %i.ab = tail call ptr @proto_tree_add_uint(ptr noundef %i.z, i32 noundef %i.aa, ptr noundef %0, i32 noundef %.1102, i32 noundef 2, i32 noundef %i.y) ; 0 uses
  %i.ac = load i32, ptr @hf_generic_rateinfo_numpairs, align 4
  %i.ad = tail call ptr @proto_tree_add_uint(ptr noundef %i.z, i32 noundef %i.ac, ptr noundef %0, i32 noundef %i.s, i32 noundef 2, i32 noundef %i.u) ; 0 uses
  %.293 = add i32 %.1102, 4                       ; 2 uses
  %.not109 = icmp eq i16 %i.t, 0
  br i1 %.not109, label %._crit_edge99, label %.lr.ph98

.lr.ph98:                                         ; preds = %.lr.ph104, %bb.i
  %.296 = phi i32 [ %.2, %bb.i ], [ %.293, %.lr.ph104 ] ; 4 uses
  %.095 = phi i16 [ %i.bp, %bb.i ], [ 0, %.lr.ph104 ]
  %i.ae = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %.296) ; 3 uses
  %i.af = add i32 %.296, 2
  %i.ag = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.af) ; 2 uses
  %.0713.i = load ptr, ptr @families, align 8     ; 3 uses
  %.not14.i = icmp eq ptr %.0713.i, null
  br i1 %.not14.i, label %.thread, label %.lr.ph.i

.thread:                                          ; preds = %.lr.ph98
  %i.ah = load i32, ptr @hf_generic_family, align 4
  br label %bb.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.ai = getelementptr i8, ptr %.0715.i, i64 8
  %.07.i = load ptr, ptr %i.ai, align 8           ; 2 uses
  %.not.i = icmp eq ptr %.07.i, null
  br i1 %.not.i, label %aim_get_family.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph98, %bb.d
  %.0715.i = phi ptr [ %.07.i, %bb.d ], [ %.0713.i, %.lr.ph98 ] ; 2 uses
  %i.aj = load ptr, ptr %.0715.i, align 8         ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 16
  %i.al = load i16, ptr %i.ak, align 8
  %.not10.i = icmp eq i16 %i.al, %i.ae
  br i1 %.not10.i, label %aim_get_family.exit, label %bb.d

aim_get_family.exit:                              ; preds = %bb.d, %.lr.ph.i
  %.2.i = phi ptr [ null, %bb.d ], [ %i.aj, %.lr.ph.i ] ; 2 uses
  br label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %aim_get_family.exit, %.thread.i
  %.01733.i = phi ptr [ %.017.i, %.thread.i ], [ %.0713.i, %aim_get_family.exit ] ; 2 uses
  %i.am = load ptr, ptr %.01733.i, align 8        ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 16
  %i.ao = load i16, ptr %i.an, align 8
  %i.ap = icmp eq i16 %i.ao, %i.ae
  br i1 %i.ap, label %.preheader.i, label %.thread.i

.preheader.i:                                     ; preds = %.lr.ph34.i
  %i.aq = getelementptr i8, ptr %i.am, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8            ; 3 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  %.not2129.i = icmp eq ptr %i.at, null
  br i1 %.not2129.i, label %.thread.i, label %.lr.ph.i80

bb.e:                                             ; preds = %.lr.ph.i80
  %i.au = add i32 %.01630.i, 1                    ; 2 uses
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr [24 x i8], ptr %i.ar, i64 %i.av ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  %.not21.i = icmp eq ptr %i.ay, null
  br i1 %.not21.i, label %.thread.i, label %.lr.ph.i80, !llvm.loop !1

.lr.ph.i80:                                       ; preds = %.preheader.i, %bb.e
  %i.az = phi ptr [ %i.aw, %bb.e ], [ %i.ar, %.preheader.i ] ; 2 uses
  %.01630.i = phi i32 [ %i.au, %bb.e ], [ 0, %.preheader.i ]
  %i.ba = load i16, ptr %i.az, align 8
  %i.bb = icmp eq i16 %i.ba, %i.ag
  br i1 %i.bb, label %aim_get_subtype.exit, label %bb.e

.thread.i:                                        ; preds = %bb.e, %.preheader.i, %.lr.ph34.i
  %i.bc = getelementptr i8, ptr %.01733.i, i64 8
  %.017.i = load ptr, ptr %i.bc, align 8          ; 2 uses
  %.not.i79 = icmp eq ptr %.017.i, null
  br i1 %.not.i79, label %aim_get_subtype.exit, label %.lr.ph34.i, !llvm.loop !2

aim_get_subtype.exit:                             ; preds = %.thread.i, %.lr.ph.i80
  %.4.i = phi ptr [ %i.az, %.lr.ph.i80 ], [ null, %.thread.i ] ; 2 uses
  %i.bd = load i32, ptr @hf_generic_family, align 4 ; 2 uses
  %.not77 = icmp eq ptr %.2.i, null
  br i1 %.not77, label %bb.g, label %bb.f

bb.f:                                             ; preds = %aim_get_subtype.exit
  %i.be = getelementptr i8, ptr %.2.i, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  br label %bb.g

bb.g:                                             ; preds = %aim_get_subtype.exit, %bb.f
  %i.bg = phi ptr [ %i.bf, %bb.f ], [ @.str.110, %aim_get_subtype.exit ] ; 2 uses
  %.not78 = icmp eq ptr %.4.i, null
  br i1 %.not78, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = getelementptr i8, ptr %.4.i, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  br label %bb.i

bb.i:                                             ; preds = %.thread, %bb.g, %bb.h
  %i.bj = phi ptr [ %i.bg, %bb.h ], [ %i.bg, %bb.g ], [ @.str.110, %.thread ]
  %i.bk = phi i32 [ %i.bd, %bb.h ], [ %i.bd, %bb.g ], [ %i.ah, %.thread ]
  %i.bl = phi ptr [ %i.bi, %bb.h ], [ @.str.110, %bb.g ], [ @.str.110, %.thread ]
  %i.bm = zext i16 %i.ae to i32                   ; 2 uses
  %i.bn = zext i16 %i.ag to i32
  %i.bo = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.z, i32 noundef %i.bk, ptr noundef %0, i32 noundef %.296, i32 noundef 4, i32 noundef %i.bm, ptr noundef nonnull @.str.754, ptr noundef %i.bj, i32 noundef %i.bm, ptr noundef %i.bl, i32 noundef %i.bn) ; 0 uses
  %i.bp = add nuw i16 %.095, 1                    ; 2 uses
  %.2 = add i32 %.296, 4                          ; 2 uses
  %exitcond114.not = icmp eq i16 %i.bp, %i.t
  br i1 %exitcond114.not, label %._crit_edge99, label %.lr.ph98, !llvm.loop !27

._crit_edge99:                                    ; preds = %bb.i, %.lr.ph104
  %.2.lcssa = phi i32 [ %.293, %.lr.ph104 ], [ %.2, %bb.i ] ; 2 uses
  %i.bq = add nuw i16 %.171101, 1                 ; 2 uses
  %exitcond115.not = icmp eq i16 %i.bq, %i.a
  br i1 %exitcond115.not, label %._crit_edge105, label %.lr.ph104, !llvm.loop !28

._crit_edge105:                                   ; preds = %._crit_edge99, %._crit_edge.thread
  %.1.lcssa = phi i32 [ 2, %._crit_edge.thread ], [ %.2.lcssa, %._crit_edge99 ]
  ret i32 %.1.lcssa
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_aim_generic_rateinfoack(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 0)
  %.not6 = icmp eq i32 %i.a, 0
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi i32 [ %i.d, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  %i.b = load i32, ptr @hf_generic_rateinfoack_group, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef %.07, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.d = add i32 %.07, 2                          ; 3 uses
  %i.e = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.d)
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !29

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.d, %.lr.ph ]
  ret i32 %.0.lcssa
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_aim_generic_ratechange(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_generic_ratechange_msg, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.c = tail call fastcc i32 @dissect_rate_class(ptr noundef %0, i32 noundef 2, ptr noundef %2)
  ret i32 %i.c
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_aim_generic_clientpauseack(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 0)
  %.not6 = icmp eq i32 %i.a, 0
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi i32 [ %i.d, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  %i.b = load i32, ptr @hf_generic_family, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef %.07, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.d = add i32 %.07, 2                          ; 3 uses
  %i.e = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.d)
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !30

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.d, %.lr.ph ]
  ret i32 %.0.lcssa
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_aim_generic_selfinfo_repl(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call fastcc i32 @dissect_aim_buddyname(ptr noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef %2) ; 3 uses
  %i.b = load i32, ptr @hf_generic_selfinfo_warninglevel, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef %i.a, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.d = add i32 %i.a, 2                          ; 2 uses
  %i.e = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.d) ; 2 uses
  %i.f = load i32, ptr @hf_aim_tlvcount, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.f, ptr noundef %0, i32 noundef %i.d, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.h = add i32 %i.a, 4                          ; 2 uses
  %.not.i = icmp eq i16 %i.e, 0
  br i1 %.not.i, label %dissect_aim_tlv_list.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.016.i = phi i16 [ %i.j, %.lr.ph.i ], [ 0, %bb.a ]
  %.01415.i = phi i32 [ %i.i, %.lr.ph.i ], [ %i.h, %bb.a ]
  %i.i = tail call fastcc i32 @dissect_aim_tlv(ptr noundef %0, ptr noundef %1, i32 noundef %.01415.i, ptr noundef %2, ptr noundef nonnull @aim_onlinebuddy_tlvs) ; 2 uses
  %i.j = add nuw i16 %.016.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i16 %i.j, %i.e
  br i1 %exitcond.not.i, label %dissect_aim_tlv_list.exit, label %.lr.ph.i, !llvm.loop !3

dissect_aim_tlv_list.exit:                        ; preds = %.lr.ph.i, %bb.a
  %.014.lcssa.i = phi i32 [ %i.h, %bb.a ], [ %i.i, %.lr.ph.i ]
  ret i32 %.014.lcssa.i
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_aim_generic_evil(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_generic_evil_new_warn_level, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.c = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 0)
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.010 = phi i32 [ %i.d, %.lr.ph ], [ 0, %bb.a ]
  %i.d = tail call fastcc i32 @dissect_aim_userinfo(ptr noundef %0, ptr noundef %1, i32 noundef %.010, ptr noundef %2) ; 3 uses
  %i.e = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.d)
end_hunk_0

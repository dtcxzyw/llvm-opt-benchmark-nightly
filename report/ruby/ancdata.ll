inline.NumInlined: 213
inline.NumDeleted: 54
begin_hunk_0_@rsock_init_ancdata:bb.a
  %i.l = load i64, ptr @rb_cAncillaryData, align 8, !tbaa !10
  tail call void @rb_define_singleton_method(i64 noundef %i.l, ptr noundef nonnull @.str.9, ptr noundef nonnull @ancillary_s_unix_rights, i32 noundef -1) #10
  %i.m = load i64, ptr @rb_cAncillaryData, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.m, ptr noundef nonnull @.str.9, ptr noundef nonnull @ancillary_unix_rights, i32 noundef 0) #10
  %i.n = load i64, ptr @rb_cAncillaryData, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.n, ptr noundef nonnull @.str.10, ptr noundef nonnull @ancillary_timestamp, i32 noundef 0) #10
  %i.o = load i64, ptr @rb_cAncillaryData, align 8, !tbaa !10
  tail call void @rb_define_singleton_method(i64 noundef %i.o, ptr noundef nonnull @.str.11, ptr noundef nonnull @ancillary_s_ip_pktinfo, i32 noundef -1) #10
  %i.p = load i64, ptr @rb_cAncillaryData, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.p, ptr noundef nonnull @.str.11, ptr noundef nonnull @ancillary_ip_pktinfo, i32 noundef 0) #10
  %i.q = load i64, ptr @rb_cAncillaryData, align 8, !tbaa !10
  tail call void @rb_define_singleton_method(i64 noundef %i.q, ptr noundef nonnull @.str.12, ptr noundef nonnull @ancillary_s_ipv6_pktinfo, i32 noundef 2) #10
  %i.r = load i64, ptr @rb_cAncillaryData, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.r, ptr noundef nonnull @.str.12, ptr noundef nonnull @ancillary_ipv6_pktinfo, i32 noundef 0) #10
  %i.s = load i64, ptr @rb_cAncillaryData, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.s, ptr noundef nonnull @.str.13, ptr noundef nonnull @ancillary_ipv6_pktinfo_addr, i32 noundef 0) #10
  %i.t = load i64, ptr @rb_cAncillaryData, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.t, ptr noundef nonnull @.str.14, ptr noundef nonnull @ancillary_ipv6_pktinfo_ifindex, i32 noundef 0) #10
  %i.u = tail call i64 @rb_intern(ptr noundef nonnull @.str.15) #10
  %i.v = tail call i64 @rb_id2sym(i64 noundef %i.u) #10
  store i64 %i.v, ptr @sym_wait_readable, align 8, !tbaa !10
  %i.w = tail call i64 @rb_intern(ptr noundef nonnull @.str.16) #10
  %i.x = tail call i64 @rb_id2sym(i64 noundef %i.w) #10
  store i64 %i.x, ptr @sym_wait_writable, align 8, !tbaa !10
  ret void
}

declare i64 @rb_define_class_under(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare extern_weak void @rb_define_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i64 @ancillary_initialize(i64 noundef returned %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  store i64 %4, ptr %i.a, align 8, !tbaa !10
  %i.b = tail call i32 @rsock_family_arg(i64 noundef %1) #10 ; 3 uses
  %i.c = tail call i32 @rsock_level_arg(i32 noundef %i.b, i64 noundef %2) #10 ; 2 uses
  %i.d = tail call i32 @rsock_cmsg_type_arg(i32 noundef %i.b, i32 noundef %i.c, i64 noundef %3) #10
  %i.e = call i64 @rb_string_value(ptr noundef nonnull %i.a) #10 ; 0 uses
  %.pr.i = load i64, ptr @ancillary_initialize.rbimpl_id, align 8, !tbaa !10 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.f = call i64 @rb_intern2(ptr noundef nonnull @.str.3, i64 noundef 6) #10 ; 3 uses
  store i64 %i.f, ptr @ancillary_initialize.rbimpl_id, align 8, !tbaa !10
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !19

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.a
  %.lcssa.i = phi i64 [ %.pr.i, %bb.a ], [ %i.f, %.lr.ph.i ]
  %i.g = sext i32 %i.b to i64
  %i.h = shl nsw i64 %i.g, 1
  %i.i = or disjoint i64 %i.h, 1
  %i.j = call i64 @rb_ivar_set(i64 noundef %0, i64 noundef %.lcssa.i, i64 noundef %i.i) #10 ; 0 uses
  %.pr.i18 = load i64, ptr @ancillary_initialize.rbimpl_id.32, align 8, !tbaa !10 ; 2 uses
  %.not4.i19 = icmp eq i64 %.pr.i18, 0
  br i1 %.not4.i19, label %.lr.ph.i21, label %rbimpl_intern_const.exit23

.lr.ph.i21:                                       ; preds = %rbimpl_intern_const.exit, %.lr.ph.i21
  %i.k = call i64 @rb_intern2(ptr noundef nonnull @.str.4, i64 noundef 5) #10 ; 3 uses
  store i64 %i.k, ptr @ancillary_initialize.rbimpl_id.32, align 8, !tbaa !10
  %.not.i22 = icmp eq i64 %i.k, 0
  br i1 %.not.i22, label %.lr.ph.i21, label %rbimpl_intern_const.exit23, !llvm.loop !19

rbimpl_intern_const.exit23:                       ; preds = %.lr.ph.i21, %rbimpl_intern_const.exit
  %.lcssa.i20 = phi i64 [ %.pr.i18, %rbimpl_intern_const.exit ], [ %i.k, %.lr.ph.i21 ]
  %i.l = sext i32 %i.c to i64
  %i.m = shl nsw i64 %i.l, 1
  %i.n = or disjoint i64 %i.m, 1
  %i.o = call i64 @rb_ivar_set(i64 noundef %0, i64 noundef %.lcssa.i20, i64 noundef %i.n) #10 ; 0 uses
  %.pr.i24 = load i64, ptr @ancillary_initialize.rbimpl_id.33, align 8, !tbaa !10 ; 2 uses
  %.not4.i25 = icmp eq i64 %.pr.i24, 0
  br i1 %.not4.i25, label %.lr.ph.i27, label %rbimpl_intern_const.exit29

.lr.ph.i27:                                       ; preds = %rbimpl_intern_const.exit23, %.lr.ph.i27
  %i.p = call i64 @rb_intern2(ptr noundef nonnull @.str.5, i64 noundef 4) #10 ; 3 uses
  store i64 %i.p, ptr @ancillary_initialize.rbimpl_id.33, align 8, !tbaa !10
  %.not.i28 = icmp eq i64 %i.p, 0
  br i1 %.not.i28, label %.lr.ph.i27, label %rbimpl_intern_const.exit29, !llvm.loop !19

rbimpl_intern_const.exit29:                       ; preds = %.lr.ph.i27, %rbimpl_intern_const.exit23
  %.lcssa.i26 = phi i64 [ %.pr.i24, %rbimpl_intern_const.exit23 ], [ %i.p, %.lr.ph.i27 ]
  %i.q = sext i32 %i.d to i64
  %i.r = shl nsw i64 %i.q, 1
  %i.s = or disjoint i64 %i.r, 1
  %i.t = call i64 @rb_ivar_set(i64 noundef %0, i64 noundef %.lcssa.i26, i64 noundef %i.s) #10 ; 0 uses
  %.pr.i30 = load i64, ptr @ancillary_initialize.rbimpl_id.34, align 8, !tbaa !10 ; 2 uses
  %.not4.i31 = icmp eq i64 %.pr.i30, 0
  br i1 %.not4.i31, label %.lr.ph.i33, label %rbimpl_intern_const.exit35

.lr.ph.i33:                                       ; preds = %rbimpl_intern_const.exit29, %.lr.ph.i33
  %i.u = call i64 @rb_intern2(ptr noundef nonnull @.str.6, i64 noundef 4) #10 ; 3 uses
  store i64 %i.u, ptr @ancillary_initialize.rbimpl_id.34, align 8, !tbaa !10
  %.not.i34 = icmp eq i64 %i.u, 0
  br i1 %.not.i34, label %.lr.ph.i33, label %rbimpl_intern_const.exit35, !llvm.loop !19

rbimpl_intern_const.exit35:                       ; preds = %.lr.ph.i33, %rbimpl_intern_const.exit29
  %.lcssa.i32 = phi i64 [ %.pr.i30, %rbimpl_intern_const.exit29 ], [ %i.u, %.lr.ph.i33 ]
  %i.v = load i64, ptr %i.a, align 8, !tbaa !10
  %i.w = call i64 @rb_ivar_set(i64 noundef %0, i64 noundef %.lcssa.i32, i64 noundef %i.v) #10 ; 0 uses
  ret i64 %0
}

; Function Attrs: nounwind uwtable
define internal i64 @ancillary_inspect(i64 noundef %0) #0 {
bb.a:
  %1 = alloca %struct.in6_addr, align 4           ; 4 uses
  %i.a = alloca [46 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %2 = alloca %struct.in_pktinfo, align 4         ; 7 uses
  %i.c = alloca [16 x i8], align 16               ; 8 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.tm, align 8                 ; 4 uses
  %i.d = alloca [32 x i8], align 16               ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %5 = alloca %struct.tm, align 8                 ; 4 uses
  %i.f = alloca [32 x i8], align 16               ; 4 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %.pr.i.i = load i64, ptr @ancillary_family.rbimpl_id, align 8, !tbaa !10 ; 2 uses
  %.not4.i.i = icmp eq i64 %.pr.i.i, 0
  br i1 %.not4.i.i, label %.lr.ph.i.i, label %rbimpl_intern_const.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %i.h = tail call i64 @rb_intern2(ptr noundef nonnull @.str.3, i64 noundef 6) #10 ; 3 uses
  store i64 %i.h, ptr @ancillary_family.rbimpl_id, align 8, !tbaa !10
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %rbimpl_intern_const.exit.i, !llvm.loop !19

rbimpl_intern_const.exit.i:                       ; preds = %.lr.ph.i.i, %bb.a
  %.lcssa.i.i = phi i64 [ %.pr.i.i, %bb.a ], [ %i.h, %.lr.ph.i.i ]
  %i.i = tail call i64 @rb_attr_get(i64 noundef %0, i64 noundef %.lcssa.i.i) #10 ; 3 uses
  %i.j = trunc i64 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %rbimpl_intern_const.exit.i
  %i.k = tail call i64 @rb_fix2int(i64 noundef %i.i) #10
  br label %ancillary_family.exit

bb.c:                                             ; preds = %rbimpl_intern_const.exit.i
  %i.l = tail call i64 @rb_num2int(i64 noundef %i.i) #10
  br label %ancillary_family.exit

ancillary_family.exit:                            ; preds = %bb.b, %bb.c
  %.0.i.i = phi i64 [ %i.k, %bb.b ], [ %i.l, %bb.c ]
  %i.m = trunc i64 %.0.i.i to i32                 ; 4 uses
  %.pr.i.i90 = load i64, ptr @ancillary_level.rbimpl_id, align 8, !tbaa !10 ; 2 uses
  %.not4.i.i91 = icmp eq i64 %.pr.i.i90, 0
  br i1 %.not4.i.i91, label %.lr.ph.i.i95, label %rbimpl_intern_const.exit.i92

.lr.ph.i.i95:                                     ; preds = %ancillary_family.exit, %.lr.ph.i.i95
  %i.n = tail call i64 @rb_intern2(ptr noundef nonnull @.str.4, i64 noundef 5) #10 ; 3 uses
  store i64 %i.n, ptr @ancillary_level.rbimpl_id, align 8, !tbaa !10
  %.not.i.i96 = icmp eq i64 %i.n, 0
  br i1 %.not.i.i96, label %.lr.ph.i.i95, label %rbimpl_intern_const.exit.i92, !llvm.loop !19

rbimpl_intern_const.exit.i92:                     ; preds = %.lr.ph.i.i95, %ancillary_family.exit
  %.lcssa.i.i93 = phi i64 [ %.pr.i.i90, %ancillary_family.exit ], [ %i.n, %.lr.ph.i.i95 ]
  %i.o = tail call i64 @rb_attr_get(i64 noundef %0, i64 noundef %.lcssa.i.i93) #10 ; 3 uses
  %i.p = trunc i64 %i.o to i1
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %rbimpl_intern_const.exit.i92
  %i.q = tail call i64 @rb_fix2int(i64 noundef %i.o) #10
  br label %ancillary_level.exit

bb.e:                                             ; preds = %rbimpl_intern_const.exit.i92
  %i.r = tail call i64 @rb_num2int(i64 noundef %i.o) #10
  br label %ancillary_level.exit

ancillary_level.exit:                             ; preds = %bb.d, %bb.e
  %.0.i.i94 = phi i64 [ %i.q, %bb.d ], [ %i.r, %bb.e ]
  %i.s = trunc i64 %.0.i.i94 to i32               ; 6 uses
  %.pr.i.i97 = load i64, ptr @ancillary_type.rbimpl_id, align 8, !tbaa !10 ; 2 uses
  %.not4.i.i98 = icmp eq i64 %.pr.i.i97, 0
  br i1 %.not4.i.i98, label %.lr.ph.i.i102, label %rbimpl_intern_const.exit.i99

.lr.ph.i.i102:                                    ; preds = %ancillary_level.exit, %.lr.ph.i.i102
  %i.t = tail call i64 @rb_intern2(ptr noundef nonnull @.str.5, i64 noundef 4) #10 ; 3 uses
  store i64 %i.t, ptr @ancillary_type.rbimpl_id, align 8, !tbaa !10
  %.not.i.i103 = icmp eq i64 %i.t, 0
  br i1 %.not.i.i103, label %.lr.ph.i.i102, label %rbimpl_intern_const.exit.i99, !llvm.loop !19

rbimpl_intern_const.exit.i99:                     ; preds = %.lr.ph.i.i102, %ancillary_level.exit
  %.lcssa.i.i100 = phi i64 [ %.pr.i.i97, %ancillary_level.exit ], [ %i.t, %.lr.ph.i.i102 ]
  %i.u = tail call i64 @rb_attr_get(i64 noundef %0, i64 noundef %.lcssa.i.i100) #10 ; 3 uses
  %i.v = trunc i64 %i.u to i1
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %rbimpl_intern_const.exit.i99
  %i.w = tail call i64 @rb_fix2int(i64 noundef %i.u) #10
  br label %ancillary_type.exit

bb.g:                                             ; preds = %rbimpl_intern_const.exit.i99
  %i.x = tail call i64 @rb_num2int(i64 noundef %i.u) #10
  br label %ancillary_type.exit

ancillary_type.exit:                              ; preds = %bb.f, %bb.g
  %.0.i.i101 = phi i64 [ %i.w, %bb.f ], [ %i.x, %bb.g ] ; 6 uses
  %i.y = trunc i64 %.0.i.i101 to i32              ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  %.pr.i.i104 = load i64, ptr @ancillary_data.rbimpl_id, align 8, !tbaa !10 ; 2 uses
  %.not4.i.i105 = icmp eq i64 %.pr.i.i104, 0
  br i1 %.not4.i.i105, label %.lr.ph.i.i108, label %ancillary_data.exit

.lr.ph.i.i108:                                    ; preds = %ancillary_type.exit, %.lr.ph.i.i108
  %i.z = tail call i64 @rb_intern2(ptr noundef nonnull @.str.6, i64 noundef 4) #10 ; 3 uses
  store i64 %i.z, ptr @ancillary_data.rbimpl_id, align 8, !tbaa !10
  %.not.i.i109 = icmp eq i64 %i.z, 0
  br i1 %.not.i.i109, label %.lr.ph.i.i108, label %ancillary_data.exit, !llvm.loop !19

ancillary_data.exit:                              ; preds = %.lr.ph.i.i108, %ancillary_type.exit
  %.lcssa.i.i107 = phi i64 [ %.pr.i.i104, %ancillary_type.exit ], [ %i.z, %.lr.ph.i.i108 ]
  %i.aa = tail call i64 @rb_attr_get(i64 noundef %0, i64 noundef %.lcssa.i.i107) #10
  store i64 %i.aa, ptr %i.g, align 8, !tbaa !10
  %i.ab = call i64 @rb_string_value(ptr noundef nonnull %i.g) #10 ; 0 uses
  %i.ac = load i64, ptr %i.g, align 8, !tbaa !10  ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  %i.ad = call ptr @rb_obj_classname(i64 noundef %0) #10
  %i.ae = call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.35, ptr noundef %i.ad) #10 ; 30 uses
  %i.af = call i64 @rsock_intern_family_noprefix(i32 noundef %i.m) #10 ; 2 uses
  %.not = icmp eq i64 %i.af, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %ancillary_data.exit
  %i.ag = call ptr @rb_id2name(i64 noundef %i.af) #10
  %i.ah = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.ae, ptr noundef nonnull @.str.36, ptr noundef %i.ag) #10 ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %ancillary_data.exit
  %i.ai = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.ae, ptr noundef nonnull @.str.37, i32 noundef %i.m) #10 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aj = icmp eq i32 %i.s, 1
  br i1 %i.aj, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ak = call i64 @rb_str_cat(i64 noundef %i.ae, ptr noundef nonnull @.str.38, i64 noundef 7) #10 ; 0 uses
  %i.al = call i64 @rsock_intern_scm_optname(i32 noundef %i.y) #10 ; 2 uses
  %.not88 = icmp eq i64 %i.al, 0
  br i1 %.not88, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = call ptr @rb_id2name(i64 noundef %i.al) #10
  %i.an = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.ae, ptr noundef nonnull @.str.36, ptr noundef %i.am) #10 ; 0 uses
  br label %bb.ai

bb.m:                                             ; preds = %bb.k
  %i.ao = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.ae, ptr noundef nonnull @.str.39, i32 noundef %i.y) #10 ; 0 uses
  br label %bb.ai

bb.n:                                             ; preds = %bb.j
  %i.ap = and i32 %i.m, -9
  %or.cond = icmp eq i32 %i.ap, 2
  br i1 %or.cond, label %bb.o, label %bb.ag

bb.o:                                             ; preds = %bb.n
  %i.aq = call i64 @rsock_intern_iplevel(i32 noundef %i.s) #10 ; 2 uses
  %.not87 = icmp eq i64 %i.aq, 0
  br i1 %.not87, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ar = call ptr @rb_id2name(i64 noundef %i.aq) #10
  %i.as = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.ae, ptr noundef nonnull @.str.36, ptr noundef %i.ar) #10 ; 0 uses
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.at = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.ae, ptr noundef nonnull @.str.40, i32 noundef %i.s) #10 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  switch i32 %i.s, label %bb.ae [
    i32 17, label %bb.ab
    i32 0, label %bb.s
    i32 41, label %bb.v
    i32 6, label %bb.y
  ]

bb.s:                                             ; preds = %bb.r
  %i.au = call i64 @rsock_intern_ip_optname(i32 noundef %i.y) #10, !callees !71, !inline_history !72 ; 2 uses
  %.not.i.i110 = icmp eq i64 %i.au, 0
  br i1 %.not.i.i110, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.av = call i64 @rb_id2sym(i64 noundef %i.au) #10
  br label %ip_cmsg_type_to_sym.exit

bb.u:                                             ; preds = %bb.s
  %sext137 = shl i64 %.0.i.i101, 32
  %i.aw = ashr exact i64 %sext137, 31
  %i.ax = or disjoint i64 %i.aw, 1
  br label %ip_cmsg_type_to_sym.exit

bb.v:                                             ; preds = %bb.r
  %i.ay = call i64 @rsock_intern_ipv6_optname(i32 noundef %i.y) #10, !callees !71, !inline_history !72 ; 2 uses
  %.not.i8.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i8.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.az = call i64 @rb_id2sym(i64 noundef %i.ay) #10
  br label %ip_cmsg_type_to_sym.exit

bb.x:                                             ; preds = %bb.v
  %sext136 = shl i64 %.0.i.i101, 32
  %i.ba = ashr exact i64 %sext136, 31
  %i.bb = or disjoint i64 %i.ba, 1
  br label %ip_cmsg_type_to_sym.exit

bb.y:                                             ; preds = %bb.r
  %i.bc = call i64 @rsock_intern_tcp_optname(i32 noundef %i.y) #10, !callees !71, !inline_history !72 ; 2 uses
  %.not.i11.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i11.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bd = call i64 @rb_id2sym(i64 noundef %i.bc) #10
  br label %ip_cmsg_type_to_sym.exit

bb.aa:                                            ; preds = %bb.y
  %sext = shl i64 %.0.i.i101, 32
  %i.be = ashr exact i64 %sext, 31
  %i.bf = or disjoint i64 %i.be, 1
  br label %ip_cmsg_type_to_sym.exit

bb.ab:                                            ; preds = %bb.r
  %i.bg = call i64 @rsock_intern_udp_optname(i32 noundef %i.y) #10, !callees !71, !inline_history !72 ; 2 uses
  %.not.i14.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i14.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bh = call i64 @rb_id2sym(i64 noundef %i.bg) #10
  br label %ip_cmsg_type_to_sym.exit

bb.ad:                                            ; preds = %bb.ab
  %sext138 = shl i64 %.0.i.i101, 32
  %i.bi = ashr exact i64 %sext138, 31
  %i.bj = or disjoint i64 %i.bi, 1
  br label %ip_cmsg_type_to_sym.exit

bb.ae:                                            ; preds = %bb.r
  %sext139 = shl i64 %.0.i.i101, 32
  %i.bk = ashr exact i64 %sext139, 31
  %i.bl = or disjoint i64 %i.bk, 1
  br label %ip_cmsg_type_to_sym.exit

ip_cmsg_type_to_sym.exit:                         ; preds = %bb.t, %bb.u, %bb.w, %bb.x, %bb.z, %bb.aa, %bb.ac, %bb.ad, %bb.ae
  %.0.i = phi i64 [ %i.bl, %bb.ae ], [ %i.bf, %bb.aa ], [ %i.bb, %bb.x ], [ %i.ax, %bb.u ], [ %i.av, %bb.t ], [ %i.az, %bb.w ], [ %i.bd, %bb.z ], [ %i.bh, %bb.ac ], [ %i.bj, %bb.ad ] ; 5 uses
  %i.bm = and i64 %.0.i, 255
  %i.bn = icmp eq i64 %i.bm, 12
  br i1 %i.bn, label %RB_SYMBOL_P.exit.thread, label %bb.af

bb.af:                                            ; preds = %ip_cmsg_type_to_sym.exit
  %i.bo = icmp eq i64 %.0.i, 0
  %i.bp = and i64 %.0.i, 7
  %i.bq = icmp ne i64 %i.bp, 0
  %i.br = or i1 %i.bo, %i.bq
  br i1 %i.br, label %RB_SYMBOL_P.exit.thread131, label %RB_SYMBOL_P.exit

RB_SYMBOL_P.exit:                                 ; preds = %bb.af
  %i.bs = inttoptr i64 %.0.i to ptr
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !17
  %i.bu = and i64 %i.bt, 31
  %i.bv = icmp eq i64 %i.bu, 20
  br i1 %i.bv, label %RB_SYMBOL_P.exit.thread, label %RB_SYMBOL_P.exit.thread131

RB_SYMBOL_P.exit.thread:                          ; preds = %ip_cmsg_type_to_sym.exit, %RB_SYMBOL_P.exit
  %i.bw = call i64 @rb_sym2str(i64 noundef %.0.i) #10
  %i.bx = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.ae, ptr noundef nonnull @.str.41, i64 noundef %i.bw) #10 ; 0 uses
  br label %bb.ah

RB_SYMBOL_P.exit.thread131:                       ; preds = %bb.af, %RB_SYMBOL_P.exit
  %i.by = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.ae, ptr noundef nonnull @.str.39, i32 noundef %i.y) #10 ; 0 uses
  br label %bb.ah

bb.ag:                                            ; preds = %bb.n
  %6 = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.ae, ptr noundef nonnull @.str.40, i32 noundef %i.s) #10 ; 0 uses
  %i.bz = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.ae, ptr noundef nonnull @.str.39, i32 noundef %i.y) #10 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %RB_SYMBOL_P.exit.thread131, %RB_SYMBOL_P.exit.thread
  switch i32 %i.m, label %bb.bt [
    i32 10, label %bb.av
    i32 2, label %bb.av
  ]

bb.ai:                                            ; preds = %bb.l, %bb.m
  switch i32 %i.y, label %bb.bt [
    i32 29, label %bb.aj
    i32 35, label %bb.am
    i32 1, label %bb.ap
    i32 2, label %bb.as
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.ca = inttoptr i64 %i.ac to ptr               ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !21
  %i.cd = icmp eq i64 %i.cc, 16
  br i1 %i.cd, label %bb.ak, label %bb.bt

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  %i.ce = load i64, ptr %i.ca, align 8, !tbaa !17
  %i.cf = and i64 %i.ce, 8192
  %.not.i.i112 = icmp eq i64 %i.cf, 0
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 24 ; 2 uses
  br i1 %.not.i.i112, label %RSTRING_PTR.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !18
  br label %RSTRING_PTR.exit.i

RSTRING_PTR.exit.i:                               ; preds = %bb.al, %bb.ak
  %i.ci = phi ptr [ %i.ch, %bb.al ], [ %i.cg, %bb.ak ] ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.ci, align 1
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 1
  store i64 %.sroa.0.0.copyload.i, ptr %i.e, align 8, !tbaa !10
  %i.cj = call ptr @localtime_r(ptr noundef nonnull %i.e, ptr noundef nonnull %5) #10 ; 0 uses
  %i.ck = call i64 @strftime(ptr noundef nonnull %i.f, i64 noundef 32, ptr noundef nonnull @.str.44, ptr noundef nonnull %5) #10 ; 0 uses
  %i.cl = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.ae, ptr noundef nonnull @.str.45, ptr noundef nonnull %i.f, i64 noundef %.sroa.4.0.copyload.i) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  br label %inspect_timeval_as_abstime.exit

bb.am:                                            ; preds = %bb.ai
  %i.cm = inttoptr i64 %i.ac to ptr               ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !21
  %i.cp = icmp eq i64 %i.co, 16
  br i1 %i.cp, label %bb.an, label %bb.bt

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.cq = load i64, ptr %i.cm, align 8, !tbaa !17
  %i.cr = and i64 %i.cq, 8192
  %.not.i.i114 = icmp eq i64 %i.cr, 0
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 24 ; 2 uses
  br i1 %.not.i.i114, label %RSTRING_PTR.exit.i115, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !18
  br label %RSTRING_PTR.exit.i115

RSTRING_PTR.exit.i115:                            ; preds = %bb.ao, %bb.an
  %i.cu = phi ptr [ %i.ct, %bb.ao ], [ %i.cs, %bb.an ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.cu, i64 16, i1 false)
  %i.cv = call ptr @localtime_r(ptr noundef nonnull %3, ptr noundef nonnull %4) #10 ; 0 uses
  %i.cw = call i64 @strftime(ptr noundef nonnull %i.d, i64 noundef 32, ptr noundef nonnull @.str.44, ptr noundef nonnull %4) #10 ; 0 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !73
  %i.cz = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.ae, ptr noundef nonnull @.str.46, ptr noundef nonnull %i.d, i64 noundef %i.cy) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %inspect_timeval_as_abstime.exit

bb.ap:                                            ; preds = %bb.ai
  %i.da = inttoptr i64 %i.ac to ptr               ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !21 ; 2 uses
  %i.dd = icmp sgt i64 %i.dc, 0
  %i.de = and i64 %i.dc, 3
  %i.df = icmp eq i64 %i.de, 0
  %or.cond.i = and i1 %i.dd, %i.df
  br i1 %or.cond.i, label %.lr.ph.i, label %bb.bt

.lr.ph.i:                                         ; preds = %bb.ap
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 24 ; 2 uses
  br label %bb.aq

bb.aq:                                            ; preds = %RSTRING_PTR.exit.i117, %.lr.ph.i
  %.015.i = phi i64 [ 0, %.lr.ph.i ], [ %i.dn, %RSTRING_PTR.exit.i117 ] ; 2 uses
  %i.dh = load i64, ptr %i.da, align 8, !tbaa !17
  %i.di = and i64 %i.dh, 8192
  %.not.i.i116 = icmp eq i64 %i.di, 0
  br i1 %.not.i.i116, label %RSTRING_PTR.exit.i117, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dj = load ptr, ptr %i.dg, align 8, !tbaa !18
  br label %RSTRING_PTR.exit.i117

RSTRING_PTR.exit.i117:                            ; preds = %bb.ar, %bb.aq
  %i.dk = phi ptr [ %i.dj, %bb.ar ], [ %i.dg, %bb.aq ]
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 %.015.i
  %.0.copyload.i = load i32, ptr %i.dl, align 1
  %i.dm = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.ae, ptr noundef nonnull @.str.47, i32 noundef %.0.copyload.i) #10 ; 0 uses
  %i.dn = add i64 %.015.i, 4                      ; 2 uses
  %i.do = load i64, ptr %i.db, align 8, !tbaa !21
  %i.dp = icmp slt i64 %i.dn, %i.do
  br i1 %i.dp, label %bb.aq, label %inspect_timeval_as_abstime.exit, !llvm.loop !74

bb.as:                                            ; preds = %bb.ai
  %i.dq = inttoptr i64 %i.ac to ptr               ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !21
  %i.dt = icmp eq i64 %i.ds, 12
  br i1 %i.dt, label %bb.at, label %bb.bt

bb.at:                                            ; preds = %bb.as
  %i.du = load i64, ptr %i.dq, align 8, !tbaa !17
  %i.dv = and i64 %i.du, 8192
  %.not.i.i119 = icmp eq i64 %i.dv, 0
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dq, i64 24 ; 2 uses
  br i1 %.not.i.i119, label %RSTRING_PTR.exit.i120, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !18
  br label %RSTRING_PTR.exit.i120

RSTRING_PTR.exit.i120:                            ; preds = %bb.au, %bb.at
  %i.dy = phi ptr [ %i.dx, %bb.au ], [ %i.dw, %bb.at ] ; 3 uses
  %.sroa.0.0.copyload.i121 = load i32, ptr %i.dy, align 1
  %.sroa.4.0..sroa_idx.i122 = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %.sroa.4.0.copyload.i123 = load i32, ptr %.sroa.4.0..sroa_idx.i122, align 1
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 1
  %i.dz = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.ae, ptr noundef nonnull @.str.48, i32 noundef %.sroa.0.0.copyload.i121, i32 noundef %.sroa.4.0.copyload.i123, i32 noundef %.sroa.5.0.copyload.i) #10 ; 0 uses
  %i.ea = call i64 @rb_str_cat(i64 noundef %i.ae, ptr noundef nonnull @.str.49, i64 noundef 8) #10 ; 0 uses
  br label %inspect_timeval_as_abstime.exit

bb.av:                                            ; preds = %bb.ah, %bb.ah
  switch i32 %i.s, label %bb.bt [
    i32 0, label %bb.aw
    i32 41, label %bb.bj
  ]

bb.aw:                                            ; preds = %bb.av
  %cond1 = icmp eq i32 %i.y, 8
  br i1 %cond1, label %bb.ax, label %bb.bt

bb.ax:                                            ; preds = %bb.aw
  %i.eb = inttoptr i64 %i.ac to ptr               ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !21
  %i.ee = icmp eq i64 %i.ed, 12
  br i1 %i.ee, label %bb.ay, label %bb.bt

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.ef = load i64, ptr %i.eb, align 8, !tbaa !17
  %i.eg = and i64 %i.ef, 8192
  %.not.i.i125 = icmp eq i64 %i.eg, 0
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 24 ; 2 uses
  br i1 %.not.i.i125, label %RSTRING_PTR.exit.i126, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !18
  br label %RSTRING_PTR.exit.i126

RSTRING_PTR.exit.i126:                            ; preds = %bb.az, %bb.ay
  %i.ej = phi ptr [ %i.ei, %bb.az ], [ %i.eh, %bb.ay ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull readonly align 1 dereferenceable(12) %i.ej, i64 12, i1 false)
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.el = call ptr @inet_ntop(i32 noundef 2, ptr noundef nonnull %i.ek, ptr noundef nonnull %i.c, i32 noundef 16) #10
  %i.em = icmp eq ptr %i.el, null
  br i1 %i.em, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %RSTRING_PTR.exit.i126
  %i.en = call i64 @rb_str_cat(i64 noundef %i.ae, ptr noundef nonnull @.str.50, i64 noundef 16) #10 ; 0 uses
  br label %bb.bc

bb.bb:                                            ; preds = %RSTRING_PTR.exit.i126
  %i.eo = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.ae, ptr noundef nonnull @.str.36, ptr noundef nonnull %i.c) #10 ; 0 uses
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.ep = load i32, ptr %2, align 4, !tbaa !75
  %i.eq = call ptr @if_indextoname(i32 noundef %i.ep, ptr noundef nonnull %i.c) #10
  %i.er = icmp eq ptr %i.eq, null
  br i1 %i.er, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.es = load i32, ptr %2, align 4, !tbaa !75
end_hunk_0

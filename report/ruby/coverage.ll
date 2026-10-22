Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/coverage?download=true
inline.NumInlined: 75
inline.NumDeleted: 16
begin_hunk_0_@rb_coverage_supported:bb.a
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !0

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.a
  %.lcssa.i = phi i64 [ %.pr.i, %bb.a ], [ %i.b, %.lr.ph.i ]
  %i.c = icmp eq i64 %i.a, %.lcssa.i
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %rbimpl_intern_const.exit
  %.pr.i11 = load i64, ptr @rb_coverage_supported.rbimpl_id.14, align 8, !tbaa !12 ; 2 uses
  %.not4.i12 = icmp eq i64 %.pr.i11, 0
  br i1 %.not4.i12, label %.lr.ph.i14, label %rbimpl_intern_const.exit16

.lr.ph.i14:                                       ; preds = %bb.b, %.lr.ph.i14
  %i.d = tail call i64 @rb_intern2(ptr noundef nonnull @.str.15, i64 noundef 13) #9 ; 3 uses
  store i64 %i.d, ptr @rb_coverage_supported.rbimpl_id.14, align 8, !tbaa !12
  %.not.i15 = icmp eq i64 %i.d, 0
  br i1 %.not.i15, label %.lr.ph.i14, label %rbimpl_intern_const.exit16, !llvm.loop !0

rbimpl_intern_const.exit16:                       ; preds = %.lr.ph.i14, %bb.b
  %.lcssa.i13 = phi i64 [ %.pr.i11, %bb.b ], [ %i.d, %.lr.ph.i14 ]
  %i.e = icmp eq i64 %i.a, %.lcssa.i13
  br i1 %i.e, label %bb.f, label %bb.c

bb.c:                                             ; preds = %rbimpl_intern_const.exit16
  %.pr.i17 = load i64, ptr @rb_coverage_supported.rbimpl_id.16, align 8, !tbaa !12 ; 2 uses
  %.not4.i18 = icmp eq i64 %.pr.i17, 0
  br i1 %.not4.i18, label %.lr.ph.i20, label %rbimpl_intern_const.exit22

.lr.ph.i20:                                       ; preds = %bb.c, %.lr.ph.i20
  %i.f = tail call i64 @rb_intern2(ptr noundef nonnull @.str.17, i64 noundef 8) #9 ; 3 uses
  store i64 %i.f, ptr @rb_coverage_supported.rbimpl_id.16, align 8, !tbaa !12
  %.not.i21 = icmp eq i64 %i.f, 0
  br i1 %.not.i21, label %.lr.ph.i20, label %rbimpl_intern_const.exit22, !llvm.loop !0

rbimpl_intern_const.exit22:                       ; preds = %.lr.ph.i20, %bb.c
  %.lcssa.i19 = phi i64 [ %.pr.i17, %bb.c ], [ %i.f, %.lr.ph.i20 ]
  %i.g = icmp eq i64 %i.a, %.lcssa.i19
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %rbimpl_intern_const.exit22
  %.pr.i23 = load i64, ptr @rb_coverage_supported.rbimpl_id.18, align 8, !tbaa !12 ; 2 uses
  %.not4.i24 = icmp eq i64 %.pr.i23, 0
  br i1 %.not4.i24, label %.lr.ph.i26, label %rbimpl_intern_const.exit28

.lr.ph.i26:                                       ; preds = %bb.d, %.lr.ph.i26
  %i.h = tail call i64 @rb_intern2(ptr noundef nonnull @.str.19, i64 noundef 7) #9 ; 3 uses
  store i64 %i.h, ptr @rb_coverage_supported.rbimpl_id.18, align 8, !tbaa !12
  %.not.i27 = icmp eq i64 %i.h, 0
  br i1 %.not.i27, label %.lr.ph.i26, label %rbimpl_intern_const.exit28, !llvm.loop !0

rbimpl_intern_const.exit28:                       ; preds = %.lr.ph.i26, %bb.d
  %.lcssa.i25 = phi i64 [ %.pr.i23, %bb.d ], [ %i.h, %.lr.ph.i26 ]
  %i.i = icmp eq i64 %i.a, %.lcssa.i25
  br i1 %i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %rbimpl_intern_const.exit28
  %.pr.i29 = load i64, ptr @rb_coverage_supported.rbimpl_id.20, align 8, !tbaa !12 ; 2 uses
  %.not4.i30 = icmp eq i64 %.pr.i29, 0
  br i1 %.not4.i30, label %.lr.ph.i32, label %rbimpl_intern_const.exit34

.lr.ph.i32:                                       ; preds = %bb.e, %.lr.ph.i32
  %i.j = tail call i64 @rb_intern2(ptr noundef nonnull @.str.21, i64 noundef 4) #9 ; 3 uses
  store i64 %i.j, ptr @rb_coverage_supported.rbimpl_id.20, align 8, !tbaa !12
  %.not.i33 = icmp eq i64 %i.j, 0
  br i1 %.not.i33, label %.lr.ph.i32, label %rbimpl_intern_const.exit34, !llvm.loop !0

rbimpl_intern_const.exit34:                       ; preds = %.lr.ph.i32, %bb.e
  %.lcssa.i31 = phi i64 [ %.pr.i29, %bb.e ], [ %i.j, %.lr.ph.i32 ]
  %i.k = icmp eq i64 %i.a, %.lcssa.i31
  %i.l = select i1 %i.k, i64 20, i64 0
  br label %bb.f

bb.f:                                             ; preds = %rbimpl_intern_const.exit34, %rbimpl_intern_const.exit28, %rbimpl_intern_const.exit22, %rbimpl_intern_const.exit16, %rbimpl_intern_const.exit
  %i.m = phi i64 [ 20, %rbimpl_intern_const.exit28 ], [ 20, %rbimpl_intern_const.exit22 ], [ 20, %rbimpl_intern_const.exit16 ], [ 20, %rbimpl_intern_const.exit ], [ %i.l, %rbimpl_intern_const.exit34 ]
  ret i64 %i.m
}

declare extern_weak void @rb_define_module_function(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i64 @rb_coverage_setup(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %i.a = load i32, ptr @current_state, align 4, !tbaa !10
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !12
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.b, ptr noundef nonnull @.str.22) #8
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %0, 0
  br i1 %i.c, label %bb.d, label %.preheader.split.split

.preheader.split.split:                           ; preds = %bb.c
  %.not83 = icmp eq i32 %0, 0
  br i1 %.not83, label %.thread, label %.split.us

.split.us:                                        ; preds = %.preheader.split.split
  %i.d = load i64, ptr %1, align 8, !tbaa !12     ; 2 uses
  %i.e = icmp eq i32 %0, 1
  br i1 %i.e, label %rb_scan_args_set.exit, label %bb.d

bb.d:                                             ; preds = %.split.us, %bb.c
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #8
  unreachable

rb_scan_args_set.exit:                            ; preds = %.split.us
  %.pr.i = load i64, ptr @rb_coverage_setup.rbimpl_id, align 8, !tbaa !12 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %rb_scan_args_set.exit, %.lr.ph.i
  %i.f = tail call i64 @rb_intern2(ptr noundef nonnull @.str.24, i64 noundef 3) #9 ; 3 uses
  store i64 %i.f, ptr @rb_coverage_setup.rbimpl_id, align 8, !tbaa !12
  %.not.i27 = icmp eq i64 %i.f, 0
  br i1 %.not.i27, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !0

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %rb_scan_args_set.exit
  %.lcssa.i = phi i64 [ %.pr.i, %rb_scan_args_set.exit ], [ %i.f, %.lr.ph.i ]
  %i.g = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i) #9
  %i.h = icmp eq i64 %i.d, %i.g
  br i1 %i.h, label %.thread61, label %bb.e

bb.e:                                             ; preds = %rbimpl_intern_const.exit
  %i.i = tail call i64 @rb_convert_type(i64 noundef %i.d, i32 noundef 8, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) #9 ; 5 uses
  %.pr.i28 = load i64, ptr @rb_coverage_setup.rbimpl_id.27, align 8, !tbaa !12 ; 2 uses
  %.not4.i29 = icmp eq i64 %.pr.i28, 0
  br i1 %.not4.i29, label %.lr.ph.i31, label %rbimpl_intern_const.exit33

.lr.ph.i31:                                       ; preds = %bb.e, %.lr.ph.i31
  %i.j = tail call i64 @rb_intern2(ptr noundef nonnull @.str.13, i64 noundef 5) #9 ; 3 uses
  store i64 %i.j, ptr @rb_coverage_setup.rbimpl_id.27, align 8, !tbaa !12
  %.not.i32 = icmp eq i64 %i.j, 0
  br i1 %.not.i32, label %.lr.ph.i31, label %rbimpl_intern_const.exit33, !llvm.loop !0

rbimpl_intern_const.exit33:                       ; preds = %.lr.ph.i31, %bb.e
  %.lcssa.i30 = phi i64 [ %.pr.i28, %bb.e ], [ %i.j, %.lr.ph.i31 ]
  %i.k = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i30) #9
  %i.l = tail call i64 @rb_hash_lookup(i64 noundef %i.i, i64 noundef %i.k) #9
  %i.m = and i64 %i.l, -5
  %.not65 = icmp ne i64 %i.m, 0
  %spec.select = zext i1 %.not65 to i32           ; 2 uses
  %.pr.i34 = load i64, ptr @rb_coverage_setup.rbimpl_id.28, align 8, !tbaa !12 ; 2 uses
  %.not4.i35 = icmp eq i64 %.pr.i34, 0
  br i1 %.not4.i35, label %.lr.ph.i37, label %rbimpl_intern_const.exit39

.lr.ph.i37:                                       ; preds = %rbimpl_intern_const.exit33, %.lr.ph.i37
  %i.n = tail call i64 @rb_intern2(ptr noundef nonnull @.str.17, i64 noundef 8) #9 ; 3 uses
  store i64 %i.n, ptr @rb_coverage_setup.rbimpl_id.28, align 8, !tbaa !12
  %.not.i38 = icmp eq i64 %i.n, 0
  br i1 %.not.i38, label %.lr.ph.i37, label %rbimpl_intern_const.exit39, !llvm.loop !0

rbimpl_intern_const.exit39:                       ; preds = %.lr.ph.i37, %rbimpl_intern_const.exit33
  %.lcssa.i36 = phi i64 [ %.pr.i34, %rbimpl_intern_const.exit33 ], [ %i.n, %.lr.ph.i37 ]
  %i.o = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i36) #9
  %i.p = tail call i64 @rb_hash_lookup(i64 noundef %i.i, i64 noundef %i.o) #9
  %i.q = and i64 %i.p, -5
  %.not66 = icmp eq i64 %i.q, 0
  %i.r = or disjoint i32 %spec.select, 2
  %.1 = select i1 %.not66, i32 %spec.select, i32 %i.r ; 2 uses
  %.pr.i40 = load i64, ptr @rb_coverage_setup.rbimpl_id.29, align 8, !tbaa !12 ; 2 uses
  %.not4.i41 = icmp eq i64 %.pr.i40, 0
  br i1 %.not4.i41, label %.lr.ph.i43, label %rbimpl_intern_const.exit45

.lr.ph.i43:                                       ; preds = %rbimpl_intern_const.exit39, %.lr.ph.i43
  %i.s = tail call i64 @rb_intern2(ptr noundef nonnull @.str.19, i64 noundef 7) #9 ; 3 uses
  store i64 %i.s, ptr @rb_coverage_setup.rbimpl_id.29, align 8, !tbaa !12
  %.not.i44 = icmp eq i64 %i.s, 0
  br i1 %.not.i44, label %.lr.ph.i43, label %rbimpl_intern_const.exit45, !llvm.loop !0

rbimpl_intern_const.exit45:                       ; preds = %.lr.ph.i43, %rbimpl_intern_const.exit39
  %.lcssa.i42 = phi i64 [ %.pr.i40, %rbimpl_intern_const.exit39 ], [ %i.s, %.lr.ph.i43 ]
  %i.t = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i42) #9
  %i.u = tail call i64 @rb_hash_lookup(i64 noundef %i.i, i64 noundef %i.t) #9
  %i.v = and i64 %i.u, -5
  %.not67 = icmp eq i64 %i.v, 0
  %i.w = or disjoint i32 %.1, 4
  %.2 = select i1 %.not67, i32 %.1, i32 %i.w      ; 3 uses
  %.pr.i46 = load i64, ptr @rb_coverage_setup.rbimpl_id.30, align 8, !tbaa !12 ; 2 uses
  %.not4.i47 = icmp eq i64 %.pr.i46, 0
  br i1 %.not4.i47, label %.lr.ph.i49, label %rbimpl_intern_const.exit51

.lr.ph.i49:                                       ; preds = %rbimpl_intern_const.exit45, %.lr.ph.i49
  %i.x = tail call i64 @rb_intern2(ptr noundef nonnull @.str.15, i64 noundef 13) #9 ; 3 uses
  store i64 %i.x, ptr @rb_coverage_setup.rbimpl_id.30, align 8, !tbaa !12
  %.not.i50 = icmp eq i64 %i.x, 0
  br i1 %.not.i50, label %.lr.ph.i49, label %rbimpl_intern_const.exit51, !llvm.loop !0

rbimpl_intern_const.exit51:                       ; preds = %.lr.ph.i49, %rbimpl_intern_const.exit45
  %.lcssa.i48 = phi i64 [ %.pr.i46, %rbimpl_intern_const.exit45 ], [ %i.x, %.lr.ph.i49 ]
  %i.y = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i48) #9
  %i.z = tail call i64 @rb_hash_lookup(i64 noundef %i.i, i64 noundef %i.y) #9
  %i.aa = and i64 %i.z, -5
  %.not68 = icmp eq i64 %i.aa, 0
  br i1 %.not68, label %bb.i, label %bb.f

bb.f:                                             ; preds = %rbimpl_intern_const.exit51
  %3 = and i32 %.2, 1
  %.not23 = icmp eq i32 %3, 0
  br i1 %.not23, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !12
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ab, ptr noundef nonnull @.str.31) #8
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ac = or disjoint i32 %.2, 9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %rbimpl_intern_const.exit51
  %.3 = phi i32 [ %i.ac, %bb.h ], [ %.2, %rbimpl_intern_const.exit51 ] ; 2 uses
  %.pr.i52 = load i64, ptr @rb_coverage_setup.rbimpl_id.32, align 8, !tbaa !12 ; 2 uses
  %.not4.i53 = icmp eq i64 %.pr.i52, 0
  br i1 %.not4.i53, label %.lr.ph.i55, label %.loopexit

.lr.ph.i55:                                       ; preds = %bb.i, %.lr.ph.i55
  %i.ad = tail call i64 @rb_intern2(ptr noundef nonnull @.str.21, i64 noundef 4) #9 ; 3 uses
  store i64 %i.ad, ptr @rb_coverage_setup.rbimpl_id.32, align 8, !tbaa !12
  %.not.i56 = icmp eq i64 %i.ad, 0
  br i1 %.not.i56, label %.lr.ph.i55, label %.loopexit, !llvm.loop !0

.loopexit:                                        ; preds = %.lr.ph.i55, %bb.i
  %.lcssa.i54 = phi i64 [ %.pr.i52, %bb.i ], [ %i.ad, %.lr.ph.i55 ]
  %i.ae = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i54) #9
  %i.af = tail call i64 @rb_hash_lookup(i64 noundef %i.i, i64 noundef %i.ae) #9
  %i.ag = and i64 %i.af, -5
  %.not69 = icmp eq i64 %i.ag, 0
  %i.ah = or i32 %.3, 16
  %spec.select26 = select i1 %.not69, i32 %.3, i32 %i.ah ; 3 uses
  %i.ai = and i32 %spec.select26, 4
  %.not24 = icmp eq i32 %i.ai, 0
  br i1 %.not24, label %.thread, label %.thread61

.thread61:                                        ; preds = %rbimpl_intern_const.exit, %.loopexit
  %.464 = phi i32 [ %spec.select26, %.loopexit ], [ 23, %rbimpl_intern_const.exit ]
  %i.aj = tail call i64 @rb_ident_hash_new() #9
  br label %.thread

.thread:                                          ; preds = %.preheader.split.split, %.loopexit, %.thread61
  %.460 = phi i32 [ %.464, %.thread61 ], [ %spec.select26, %.loopexit ], [ 0, %.preheader.split.split ] ; 3 uses
  %storemerge = phi i64 [ %i.aj, %.thread61 ], [ 4, %.loopexit ], [ 4, %.preheader.split.split ]
  store i64 %storemerge, ptr @me2counter, align 8, !tbaa !12
  %i.ak = tail call i64 @rb_get_coverages() #9
  %i.al = and i64 %i.ak, -5
  %.not70 = icmp eq i64 %i.al, 0
  br i1 %.not70, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.thread
  %i.am = tail call i64 @rb_hash_new() #9         ; 2 uses
  %i.an = tail call i64 @rb_obj_hide(i64 noundef %i.am) #9 ; 0 uses
  store i32 %.460, ptr @current_mode, align 4, !tbaa !10
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %.460, i32 1)
  %i.ao = load i64, ptr @me2counter, align 8, !tbaa !12
  tail call void @rb_set_coverages(i64 noundef %i.am, i32 noundef %spec.store.select, i64 noundef %i.ao) #9
  store i32 1, ptr @current_state, align 4, !tbaa !10
  br label %bb.m

bb.k:                                             ; preds = %.thread
  %i.ap = load i32, ptr @current_mode, align 4, !tbaa !10
  %.not25 = icmp eq i32 %i.ap, %.460
  br i1 %.not25, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !12
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aq, ptr noundef nonnull @.str.33) #8
  unreachable

bb.m:                                             ; preds = %bb.k, %bb.j
  ret i64 4
}

; Function Attrs: nounwind uwtable
define internal noundef i64 @rb_coverage_start(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %i.a = tail call i64 @rb_coverage_setup(i32 noundef %0, ptr noundef %1, i64 poison) ; 0 uses
  %i.b = load i32, ptr @current_state, align 4, !tbaa !10
  switch i32 %i.b, label %rb_coverage_resume.exit [
    i32 0, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !12
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.c, ptr noundef nonnull @.str) #8
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !12
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.d, ptr noundef nonnull @.str.1) #8
  unreachable

rb_coverage_resume.exit:                          ; preds = %bb.a
  tail call void @rb_resume_coverages() #9
  store i32 2, ptr @current_state, align 4, !tbaa !10
  ret i64 4
}

; Function Attrs: nounwind uwtable
define internal i64 @rb_coverage_result(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load i32, ptr @current_state, align 4, !tbaa !10
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !12
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.d, ptr noundef nonnull @.str.34) #8
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = icmp slt i32 %0, 0
  br i1 %i.e, label %bb.d, label %.preheader.split.split

.preheader.split.split:                           ; preds = %bb.c
  switch i32 %0, label %bb.d [
    i32 0, label %rb_scan_args_set.exit
    i32 1, label %bb.e
  ]

bb.d:                                             ; preds = %.preheader.split.split, %bb.c
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #8
  unreachable

bb.e:                                             ; preds = %.preheader.split.split
  %i.f = load i64, ptr %1, align 8, !tbaa !12
  %i.g = tail call i64 @rb_convert_type(i64 noundef %i.f, i32 noundef 8, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) #9 ; 2 uses
  %.pr.i = load i64, ptr @rb_coverage_result.rbimpl_id, align 8, !tbaa !12 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %i.h = tail call i64 @rb_intern2(ptr noundef nonnull @.str.35, i64 noundef 4) #9 ; 3 uses
  store i64 %i.h, ptr @rb_coverage_result.rbimpl_id, align 8, !tbaa !12
  %.not.i14 = icmp eq i64 %i.h, 0
  br i1 %.not.i14, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !0

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.e
  %.lcssa.i = phi i64 [ %.pr.i, %bb.e ], [ %i.h, %.lr.ph.i ]
  %i.i = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i) #9
  %i.j = tail call i64 @rb_hash_lookup(i64 noundef %i.g, i64 noundef %i.i) #9
  %i.k = and i64 %i.j, -5
  %.not25 = icmp eq i64 %i.k, 0
  %.pr.i15 = load i64, ptr @rb_coverage_result.rbimpl_id.36, align 8, !tbaa !12 ; 2 uses
  %.not4.i16 = icmp eq i64 %.pr.i15, 0
  br i1 %.not4.i16, label %.lr.ph.i18, label %rbimpl_intern_const.exit20

.lr.ph.i18:                                       ; preds = %rbimpl_intern_const.exit, %.lr.ph.i18
  %i.l = tail call i64 @rb_intern2(ptr noundef nonnull @.str.37, i64 noundef 5) #9 ; 3 uses
  store i64 %i.l, ptr @rb_coverage_result.rbimpl_id.36, align 8, !tbaa !12
  %.not.i19 = icmp eq i64 %i.l, 0
  br i1 %.not.i19, label %.lr.ph.i18, label %rbimpl_intern_const.exit20, !llvm.loop !0

rbimpl_intern_const.exit20:                       ; preds = %.lr.ph.i18, %rbimpl_intern_const.exit
  %.lcssa.i17 = phi i64 [ %.pr.i15, %rbimpl_intern_const.exit ], [ %i.l, %.lr.ph.i18 ]
  %i.m = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i17) #9
  %i.n = tail call i64 @rb_hash_lookup(i64 noundef %i.g, i64 noundef %i.m) #9
  %i.o = and i64 %i.n, -5
  %i.p = icmp ne i64 %i.o, 0
  br label %rb_scan_args_set.exit

rb_scan_args_set.exit:                            ; preds = %.preheader.split.split, %rbimpl_intern_const.exit20
  %.012 = phi i1 [ %i.p, %rbimpl_intern_const.exit20 ], [ true, %.preheader.split.split ] ; 2 uses
  %.0 = phi i1 [ %.not25, %rbimpl_intern_const.exit20 ], [ false, %.preheader.split.split ] ; 2 uses
  %i.q = tail call i64 @rb_get_coverages() #9     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.r = tail call i64 @rb_hash_new() #9          ; 3 uses
  store i64 %i.r, ptr %i.a, align 8, !tbaa !12
  %i.s = and i64 %i.q, -5
  %.not2.i = icmp eq i64 %i.s, 0
  br i1 %.not2.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %rb_scan_args_set.exit
  %i.t = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !12
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.t, ptr noundef nonnull @.str.34) #8
  unreachable

bb.g:                                             ; preds = %rb_scan_args_set.exit
  tail call void @rb_hash_foreach(i64 noundef %i.q, ptr noundef nonnull @coverage_peek_result_i, i64 noundef %i.r) #9
  %i.u = load i32, ptr @current_mode, align 4, !tbaa !10
  %i.v = and i32 %i.u, 4
  %.not.i21 = icmp eq i32 %i.v, 0
  br i1 %.not.i21, label %rb_coverage_peek_result.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @rb_objspace_each_objects(ptr noundef nonnull @method_coverage_i, ptr noundef nonnull %i.a) #9
  %.pre.i = load i64, ptr %i.a, align 8, !tbaa !12
  br label %rb_coverage_peek_result.exit

rb_coverage_peek_result.exit:                     ; preds = %bb.g, %bb.h
  %i.w = phi i64 [ %.pre.i, %bb.h ], [ %i.r, %bb.g ]
  %i.x = call i64 @rb_hash_freeze(i64 noundef %i.w) #9 ; 0 uses
  %i.y = load i64, ptr %i.a, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %or.cond = select i1 %.0, i1 true, i1 %.012
  br i1 %or.cond, label %bb.i, label %.thread

.thread:                                          ; preds = %rb_coverage_peek_result.exit
  call void (ptr, ...) @rb_warn(ptr noundef nonnull @.str.38) #10
  br label %bb.j

bb.i:                                             ; preds = %rb_coverage_peek_result.exit
  br i1 %.012, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.thread, %bb.i
  call void @rb_clear_coverages() #9
  %i.z = load i64, ptr @me2counter, align 8, !tbaa !12 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4
  br i1 %i.aa, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @rb_hash_foreach(i64 noundef %i.z, ptr noundef nonnull @clear_me2counter_i, i64 noundef 4) #9
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i
  br i1 %.0, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = load i32, ptr @current_state, align 4, !tbaa !10
  %i.ac = icmp eq i32 %i.ab, 2
  br i1 %i.ac, label %rb_coverage_suspend.exit, label %bb.n

rb_coverage_suspend.exit:                         ; preds = %bb.m
  call void @rb_suspend_coverages() #9
  store i32 1, ptr @current_state, align 4, !tbaa !10
  br label %bb.n

bb.n:                                             ; preds = %rb_coverage_suspend.exit, %bb.m
  call void @rb_reset_coverages() #9
  store i64 4, ptr @me2counter, align 8, !tbaa !12
  store i32 0, ptr @current_state, align 4, !tbaa !10
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  ret i64 %i.y
}

; Function Attrs: nounwind uwtable
define internal i64 @rb_coverage_peek_result(i64 %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call i64 @rb_get_coverages() #9     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.c = tail call i64 @rb_hash_new() #9          ; 3 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !12
  %i.d = and i64 %i.b, -5
  %.not2 = icmp eq i64 %i.d, 0
  br i1 %.not2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !12
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.e, ptr noundef nonnull @.str.34) #8
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @rb_hash_foreach(i64 noundef %i.b, ptr noundef nonnull @coverage_peek_result_i, i64 noundef %i.c) #9
  %i.f = load i32, ptr @current_mode, align 4, !tbaa !10
  %i.g = and i32 %i.f, 4
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @rb_objspace_each_objects(ptr noundef nonnull @method_coverage_i, ptr noundef nonnull %i.a) #9
  %.pre = load i64, ptr %i.a, align 8, !tbaa !12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = phi i64 [ %.pre, %bb.d ], [ %i.c, %bb.c ]
  %i.i = call i64 @rb_hash_freeze(i64 noundef %i.h) #9 ; 0 uses
  %i.j = load i64, ptr %i.a, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i64 %i.j
}

; Function Attrs: nounwind uwtable
define internal i64 @rb_coverage_state(i64 %0) #0 {
bb.a:
  %i.a = load i32, ptr @current_state, align 4, !tbaa !10
  switch i32 %i.a, label %default.unreachable [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %.pr.i = load i64, ptr @rb_coverage_state.rbimpl_id, align 8, !tbaa !12 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %i.b = tail call i64 @rb_intern2(ptr noundef nonnull @.str.42, i64 noundef 4) #9 ; 3 uses
  store i64 %i.b, ptr @rb_coverage_state.rbimpl_id, align 8, !tbaa !12
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !0

bb.c:                                             ; preds = %bb.a
  %.pr.i4 = load i64, ptr @rb_coverage_state.rbimpl_id.43, align 8, !tbaa !12 ; 2 uses
  %.not4.i5 = icmp eq i64 %.pr.i4, 0
  br i1 %.not4.i5, label %.lr.ph.i7, label %rbimpl_intern_const.exit

.lr.ph.i7:                                        ; preds = %bb.c, %.lr.ph.i7
  %i.c = tail call i64 @rb_intern2(ptr noundef nonnull @.str.44, i64 noundef 9) #9 ; 3 uses
  store i64 %i.c, ptr @rb_coverage_state.rbimpl_id.43, align 8, !tbaa !12
  %.not.i8 = icmp eq i64 %i.c, 0
  br i1 %.not.i8, label %.lr.ph.i7, label %rbimpl_intern_const.exit, !llvm.loop !0

bb.d:                                             ; preds = %bb.a
  %.pr.i10 = load i64, ptr @rb_coverage_state.rbimpl_id.45, align 8, !tbaa !12 ; 2 uses
  %.not4.i11 = icmp eq i64 %.pr.i10, 0
  br i1 %.not4.i11, label %.lr.ph.i13, label %rbimpl_intern_const.exit

.lr.ph.i13:                                       ; preds = %bb.d, %.lr.ph.i13
  %i.d = tail call i64 @rb_intern2(ptr noundef nonnull @.str.46, i64 noundef 7) #9 ; 3 uses
  store i64 %i.d, ptr @rb_coverage_state.rbimpl_id.45, align 8, !tbaa !12
  %.not.i14 = icmp eq i64 %i.d, 0
  br i1 %.not.i14, label %.lr.ph.i13, label %rbimpl_intern_const.exit, !llvm.loop !0

default.unreachable:                              ; preds = %bb.a
  unreachable

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i13, %.lr.ph.i7, %.lr.ph.i, %bb.d, %bb.c, %bb.b
  %.lcssa.i12.sink = phi i64 [ %i.c, %.lr.ph.i7 ], [ %i.b, %.lr.ph.i ], [ %.pr.i, %bb.b ], [ %.pr.i4, %bb.c ], [ %.pr.i10, %bb.d ], [ %i.d, %.lr.ph.i13 ]
  %i.e = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i12.sink) #9
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i64 0, 21) i64 @rb_coverage_running(i64 %0) #4 {
bb.a:
  %i.a = load i32, ptr @current_state, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 2
  %i.c = select i1 %i.b, i64 20, i64 0
  ret i64 %i.c
}

declare void @rb_global_variable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare i64 @rb_sym2id(i64 noundef) local_unnamed_addr #2

declare i64 @rb_intern2(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_id2sym(i64 noundef) local_unnamed_addr #2

declare i64 @rb_convert_type(i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @rb_hash_lookup(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_ident_hash_new() local_unnamed_addr #2

declare i64 @rb_get_coverages() local_unnamed_addr #2

declare i64 @rb_hash_new() local_unnamed_addr #2

declare i64 @rb_obj_hide(i64 noundef) local_unnamed_addr #2

declare void @rb_set_coverages(i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @rb_error_arity(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold
declare void @rb_warn(ptr noundef, ...) local_unnamed_addr #5

declare void @rb_clear_coverages() local_unnamed_addr #2

declare void @rb_hash_foreach(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @clear_me2counter_i(i64 noundef %0, i64 %1, i64 %2) #0 {
bb.a:
  %i.a = load i64, ptr @me2counter, align 8, !tbaa !12
  %i.b = tail call i64 @rb_hash_aset(i64 noundef %i.a, i64 noundef %0, i64 noundef 1) #9 ; 0 uses
  ret i32 0
}

declare void @rb_reset_coverages() local_unnamed_addr #2

declare i64 @rb_hash_aset(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @coverage_peek_result_i(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %3 = alloca %struct.branch_coverage_result_builder, align 8 ; 6 uses
  %i.a = load i32, ptr @current_mode, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15
  %i.e = and i64 %i.d, 8192
  %.not.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %RARRAY_AREF.exit

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.f, %bb.c ], [ %i.h, %bb.d ]
  %i.i = load i64, ptr %.0.i.i, align 8, !tbaa !12
  %i.j = tail call i64 @rb_ary_dup(i64 noundef %i.i) #9 ; 2 uses
  %i.k = tail call i64 @rb_ary_freeze(i64 noundef %i.j) #9 ; 0 uses
  br label %bb.s

bb.e:                                             ; preds = %bb.a
  %i.l = tail call i64 @rb_hash_new() #9          ; 5 uses
  %i.m = load i32, ptr @current_mode, align 4, !tbaa !10 ; 3 uses
  %4 = and i32 %i.m, 1
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !15
  %i.p = and i64 %i.o, 8192
  %.not.i.i24 = icmp eq i64 %i.p, 0
  br i1 %.not.i.i24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  br label %RARRAY_AREF.exit26

bb.h:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !16
  br label %RARRAY_AREF.exit26

RARRAY_AREF.exit26:                               ; preds = %bb.g, %bb.h
  %.0.i.i25 = phi ptr [ %i.q, %bb.g ], [ %i.s, %bb.h ]
  %i.t = load i64, ptr %.0.i.i25, align 8, !tbaa !12
  %i.u = and i32 %i.m, 8
  %.not21 = icmp eq i32 %i.u, 0
  %i.v = select i1 %.not21, ptr @.str.13, ptr @.str.15
  %i.w = tail call i64 @rb_ary_dup(i64 noundef %i.t) #9 ; 2 uses
  %i.x = tail call i64 @rb_ary_freeze(i64 noundef %i.w) #9 ; 0 uses
  %i.y = tail call i64 @rb_intern(ptr noundef nonnull %i.v) #9
  %i.z = tail call i64 @rb_id2sym(i64 noundef %i.y) #9
  %i.aa = tail call i64 @rb_hash_aset(i64 noundef %i.l, i64 noundef %i.z, i64 noundef %i.w) #9 ; 0 uses
  %.pre = load i32, ptr @current_mode, align 4, !tbaa !10
  br label %bb.i

bb.i:                                             ; preds = %RARRAY_AREF.exit26, %bb.e
  %i.ab = phi i32 [ %.pre, %RARRAY_AREF.exit26 ], [ %i.m, %bb.e ] ; 2 uses
  %i.ac = and i32 %i.ab, 2
  %.not22 = icmp eq i32 %i.ac, 0
  br i1 %.not22, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = inttoptr i64 %1 to ptr                  ; 3 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !15
  %i.af = and i64 %i.ae, 8192
  %.not.i.i27 = icmp eq i64 %i.af, 0
  br i1 %.not.i.i27, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  br label %RARRAY_AREF.exit29

bb.l:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !16
  br label %RARRAY_AREF.exit29

RARRAY_AREF.exit29:                               ; preds = %bb.k, %bb.l
  %.0.i.i28 = phi ptr [ %i.ag, %bb.k ], [ %i.ai, %bb.l ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i28, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !12
  %.pr.i = load i64, ptr @coverage_peek_result_i.rbimpl_id.39, align 8, !tbaa !12 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %RARRAY_AREF.exit29, %.lr.ph.i
  %i.al = tail call i64 @rb_intern2(ptr noundef nonnull @.str.17, i64 noundef 8) #9 ; 3 uses
  store i64 %i.al, ptr @coverage_peek_result_i.rbimpl_id.39, align 8, !tbaa !12
  %.not.i = icmp eq i64 %i.al, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !0

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %RARRAY_AREF.exit29
  %.lcssa.i = phi i64 [ %.pr.i, %RARRAY_AREF.exit29 ], [ %i.al, %.lr.ph.i ]
  %i.am = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i) #9
  %i.an = inttoptr i64 %i.ak to ptr               ; 6 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !15
  %i.ap = and i64 %i.ao, 8192
  %.not.i.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %rbimpl_intern_const.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  br label %RARRAY_AREF.exit.i

bb.n:                                             ; preds = %rbimpl_intern_const.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !16
  br label %RARRAY_AREF.exit.i

RARRAY_AREF.exit.i:                               ; preds = %bb.n, %bb.m
  %.0.i.i.i = phi ptr [ %i.aq, %bb.m ], [ %i.as, %bb.n ]
  %i.at = load i64, ptr %.0.i.i.i, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  store i32 0, ptr %3, align 8, !tbaa !18
  %i.au = tail call i64 @rb_hash_new() #9
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.au, ptr %i.av, align 8, !tbaa !19
  %i.aw = load i64, ptr %i.an, align 8, !tbaa !15
  %i.ax = and i64 %i.aw, 8192
  %.not.i.i3.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i3.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %RARRAY_AREF.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  br label %branch_coverage.exit

bb.p:                                             ; preds = %RARRAY_AREF.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !16
  br label %branch_coverage.exit

branch_coverage.exit:                             ; preds = %bb.o, %bb.p
  %.0.i.i4.i = phi ptr [ %i.ay, %bb.o ], [ %i.ba, %bb.p ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i.i4.i, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !12
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !20
  %i.be = ptrtoint ptr %3 to i64
  call void @rb_hash_foreach(i64 noundef %i.at, ptr noundef nonnull @branch_coverage_i, i64 noundef %i.be) #9
  %i.bf = load i64, ptr %i.av, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  %i.bg = call i64 @rb_hash_aset(i64 noundef %i.l, i64 noundef %i.am, i64 noundef %i.bf) #9 ; 0 uses
  %.pre38 = load i32, ptr @current_mode, align 4, !tbaa !10
  br label %bb.q

bb.q:                                             ; preds = %branch_coverage.exit, %bb.i
  %i.bh = phi i32 [ %.pre38, %branch_coverage.exit ], [ %i.ab, %bb.i ]
  %i.bi = and i32 %i.bh, 4
  %.not23 = icmp eq i32 %i.bi, 0
  br i1 %.not23, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.pr.i30 = load i64, ptr @coverage_peek_result_i.rbimpl_id.40, align 8, !tbaa !12 ; 2 uses
  %.not4.i31 = icmp eq i64 %.pr.i30, 0
  br i1 %.not4.i31, label %.lr.ph.i33, label %rbimpl_intern_const.exit35

.lr.ph.i33:                                       ; preds = %bb.r, %.lr.ph.i33
  %i.bj = call i64 @rb_intern2(ptr noundef nonnull @.str.19, i64 noundef 7) #9 ; 3 uses
  store i64 %i.bj, ptr @coverage_peek_result_i.rbimpl_id.40, align 8, !tbaa !12
  %.not.i34 = icmp eq i64 %i.bj, 0
  br i1 %.not.i34, label %.lr.ph.i33, label %rbimpl_intern_const.exit35, !llvm.loop !0

rbimpl_intern_const.exit35:                       ; preds = %.lr.ph.i33, %bb.r
  %.lcssa.i32 = phi i64 [ %.pr.i30, %bb.r ], [ %i.bj, %.lr.ph.i33 ]
  %i.bk = call i64 @rb_id2sym(i64 noundef %.lcssa.i32) #9
  %i.bl = call i64 @rb_hash_new() #9
  %i.bm = call i64 @rb_hash_aset(i64 noundef %i.l, i64 noundef %i.bk, i64 noundef %i.bl) #9 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %rbimpl_intern_const.exit35, %RARRAY_AREF.exit
  %.0 = phi i64 [ %i.j, %RARRAY_AREF.exit ], [ %i.l, %rbimpl_intern_const.exit35 ], [ %i.l, %bb.q ]
  %i.bn = call i64 @rb_hash_aset(i64 noundef %2, i64 noundef %0, i64 noundef %.0) #9 ; 0 uses
  ret i32 0
}

declare void @rb_objspace_each_objects(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @method_coverage_i(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = alloca [5 x i64], align 16               ; 8 uses
  %i.b = load i64, ptr %3, align 8, !tbaa !12
  %i.c = ptrtoint ptr %1 to i64
  %.not51 = icmp eq ptr %0, %1
  br i1 %.not51, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %rbimpl_RB_TYPE_P_fastpath.exit48.thread
  %.04352 = phi i64 [ %i.d, %.lr.ph ], [ %i.bf, %rbimpl_RB_TYPE_P_fastpath.exit48.thread ] ; 5 uses
  %i.i = icmp eq i64 %.04352, 0
  %i.j = and i64 %.04352, 7
  %i.k = icmp ne i64 %i.j, 0
  %i.l = or i1 %i.i, %i.k
  br i1 %i.l, label %rbimpl_RB_TYPE_P_fastpath.exit48.thread, label %rbimpl_RB_TYPE_P_fastpath.exit48

rbimpl_RB_TYPE_P_fastpath.exit48:                 ; preds = %bb.b
  %i.m = inttoptr i64 %.04352 to ptr              ; 5 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !15
  %i.o = and i64 %i.n, 61471
  %or.cond = icmp eq i64 %i.o, 24602
  br i1 %or.cond, label %bb.c, label %rbimpl_RB_TYPE_P_fastpath.exit48.thread

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %.pr.i = load i64, ptr @method_coverage_i.rbimpl_id, align 8, !tbaa !12 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.p = call i64 @rb_intern2(ptr noundef nonnull @.str.19, i64 noundef 7) #9 ; 3 uses
  store i64 %i.p, ptr @method_coverage_i.rbimpl_id, align 8, !tbaa !12
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !0

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.c
  %.lcssa.i = phi i64 [ %.pr.i, %bb.c ], [ %i.p, %.lr.ph.i ]
  %i.q = call i64 @rb_id2sym(i64 noundef %.lcssa.i) #9
end_hunk_0

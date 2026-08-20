inline.NumInlined: 467
inline.NumDeleted: 204
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZL14acc_emit_conicP13hb_gpu_draw_tdddd:bb.a
  %i.ae = getelementptr inbounds nuw [56 x i8], ptr %i.ab, i64 %i.ad ; 8 uses
  store double %i.b, ptr %i.ae, align 8, !tbaa !40
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store double %i.n, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !40
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store double %1, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !40
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store double %2, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !40
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store double %3, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !40
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  store double %4, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !40
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  store i8 %i.h, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !41
  %.not.i = icmp eq ptr %i.ae, @_hb_CrapPool
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(56) @_hb_NullPool, i64 56, i1 false)
  br i1 %.not.i, label %bb.i, label %bb.j, !prof !42

bb.i:                                             ; preds = %_ZN11hb_vector_tI14hb_gpu_curve_tLb0EE12push_or_failIJRS0_EEEbDpOT_.exit.i, %_ZN11hb_vector_tI14hb_gpu_curve_tLb0EE12push_or_failIJRS0_EEEbDpOT_.exit.thread.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %i.af, align 8, !tbaa !8
  br label %_ZL8acc_emitP13hb_gpu_draw_tbdddddd.exit

bb.j:                                             ; preds = %_ZN11hb_vector_tI14hb_gpu_curve_tLb0EE12push_or_failIJRS0_EEEbDpOT_.exit.i
  %i.ag = load i32, ptr %i.p, align 4, !tbaa !35
  %i.ah = add i32 %i.ag, 1
  store i32 %i.ah, ptr %i.p, align 4, !tbaa !35
  store double %3, ptr %i.a, align 8, !tbaa !31
  store double %4, ptr %i.o, align 8, !tbaa !32
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.aj = load <4 x double>, ptr %i.ai, align 8, !tbaa !40 ; 3 uses
  %i.ak = insertelement <4 x double> %i.aj, double %i.b, i64 2
  %i.al = insertelement <4 x double> %i.ak, double %i.n, i64 3 ; 3 uses
  %i.am = shufflevector <4 x double> %i.al, <4 x double> %i.aj, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.an = fcmp ole <4 x double> %i.al, %i.am
  %i.ao = shufflevector <4 x double> %i.al, <4 x double> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.ap = select <4 x i1> %i.an, <4 x double> %i.aj, <4 x double> %i.ao ; 3 uses
  %i.aq = insertelement <4 x double> poison, double %1, i64 0
  %i.ar = insertelement <4 x double> %i.aq, double %2, i64 1
  %i.as = shufflevector <4 x double> %i.ar, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.at = fcmp ole <4 x double> %i.ap, %i.as
  %i.au = fcmp oge <4 x double> %i.ap, %i.as
  %i.av = shufflevector <4 x i1> %i.at, <4 x i1> %i.au, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aw = select <4 x i1> %i.av, <4 x double> %i.ap, <4 x double> %i.as ; 3 uses
  %i.ax = insertelement <4 x double> poison, double %3, i64 0
  %i.ay = insertelement <4 x double> %i.ax, double %4, i64 1
  %i.az = shufflevector <4 x double> %i.ay, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.ba = fcmp ole <4 x double> %i.aw, %i.az
  %i.bb = fcmp oge <4 x double> %i.aw, %i.az
  %i.bc = shufflevector <4 x i1> %i.ba, <4 x i1> %i.bb, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bd = select <4 x i1> %i.bc, <4 x double> %i.aw, <4 x double> %i.az
  store <4 x double> %i.bd, ptr %i.ai, align 8, !tbaa !40
  br label %_ZL8acc_emitP13hb_gpu_draw_tbdddddd.exit

_ZL8acc_emitP13hb_gpu_draw_tbdddddd.exit:         ; preds = %bb.j, %bb.i, %bb.f, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN13hb_gpu_draw_t12acc_conic_toEdddd(ptr noundef nonnull align 8 dereferenceable(320) %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i8, ptr %i.a, align 8, !tbaa !8, !range !27, !noundef !28
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !29

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZL14acc_emit_conicP13hb_gpu_draw_tdddd(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN13hb_gpu_draw_t14acc_close_pathEv(ptr noundef nonnull align 8 dereferenceable(320) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i8, ptr %i.a, align 8, !tbaa !8, !range !27, !noundef !28
  %i.c = trunc nuw i8 %i.b to i1
  %.not = xor i1 %i.c, true
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i8, ptr %i.d, align 8, !range !27
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.f, !prof !43
  br i1 %or.cond, label %bb.d, label %bb.b, !prof !43

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load double, ptr %i.g, align 8, !tbaa !31 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load double, ptr %i.i, align 8, !tbaa !33 ; 2 uses
  %i.k = fcmp une double %i.h, %i.j
  br i1 %i.k, label %._ZN13hb_gpu_draw_t11acc_line_toEdd.exit_crit_edge, label %bb.c

._ZN13hb_gpu_draw_t11acc_line_toEdd.exit_crit_edge: ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !34
  %.phi.trans.insert3 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre4 = load double, ptr %.phi.trans.insert3, align 8, !tbaa !32
  br label %_ZN13hb_gpu_draw_t11acc_line_toEdd.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load double, ptr %i.l, align 8, !tbaa !32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load double, ptr %i.n, align 8, !tbaa !34 ; 2 uses
  %i.p = fcmp une double %i.m, %i.o
  br i1 %i.p, label %_ZN13hb_gpu_draw_t11acc_line_toEdd.exit, label %bb.d

_ZN13hb_gpu_draw_t11acc_line_toEdd.exit:          ; preds = %._ZN13hb_gpu_draw_t11acc_line_toEdd.exit_crit_edge, %bb.c
  %i.q = phi double [ %.pre4, %._ZN13hb_gpu_draw_t11acc_line_toEdd.exit_crit_edge ], [ %i.m, %bb.c ]
  %i.r = phi double [ %.pre, %._ZN13hb_gpu_draw_t11acc_line_toEdd.exit_crit_edge ], [ %i.o, %bb.c ]
  tail call fastcc void @_ZL14acc_emit_conicP13hb_gpu_draw_tdddd(ptr noundef nonnull align 8 dereferenceable(320) %0, double noundef %i.h, double noundef %i.q, double noundef %i.j, double noundef %i.r)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN13hb_gpu_draw_t11acc_line_toEdd.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN13hb_gpu_draw_t12acc_cubic_toEdddddd(ptr noundef nonnull align 8 dereferenceable(320) %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i8, ptr %i.a, align 8, !tbaa !8, !range !27, !noundef !28
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.g, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load double, ptr %i.d, align 8, !tbaa !31 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load double, ptr %i.f, align 8, !tbaa !32 ; 6 uses
  %i.h = fcmp oeq double %i.e, %5
  %i.i = fcmp oeq double %i.g, %6
  %or.cond = select i1 %i.h, i1 %i.i, i1 false
  %i.j = fcmp oeq double %1, %5
  %or.cond60 = and i1 %i.j, %or.cond
  %i.k = fcmp oeq double %2, %6
  %or.cond61 = and i1 %i.k, %or.cond60
  %i.l = fcmp oeq double %3, %5
  %or.cond62 = and i1 %i.l, %or.cond61
  %i.m = fcmp oeq double %4, %6
  %or.cond63 = and i1 %i.m, %or.cond62
  br i1 %or.cond63, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = fsub double %5, %i.e                     ; 3 uses
  %i.o = fsub double %6, %i.g                     ; 4 uses
  %i.p = fmul double %i.o, %i.o
  %i.q = tail call double @llvm.fmuladd.f64(double %i.n, double %i.n, double %i.p) ; 2 uses
  %i.r = fcmp ogt double %i.q, 0.000000e+00
  br i1 %i.r, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.s = fdiv double 1.000000e+00, %i.q           ; 2 uses
  %i.t = fsub double %1, %i.e
  %i.u = fsub double %2, %i.g
  %i.v = fneg double %i.n                         ; 2 uses
  %i.w = fmul double %i.u, %i.v
  %i.x = tail call double @llvm.fmuladd.f64(double %i.t, double %i.o, double %i.w) ; 2 uses
  %i.y = fmul double %i.x, %i.x
  %i.z = fmul double %i.y, %i.s
  %i.aa = fcmp ugt double %i.z, 2.500000e-01
  br i1 %i.aa, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = fsub double %3, %i.e
  %i.ac = fsub double %4, %i.g
  %i.ad = fmul double %i.ac, %i.v
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.o, double %i.ad) ; 2 uses
  %i.af = fmul double %i.ae, %i.ae
  %i.ag = fmul double %i.af, %i.s
  %i.ah = fcmp ugt double %i.ag, 2.500000e-01
  br i1 %i.ah, label %bb.f, label %_ZN13hb_gpu_draw_t11acc_line_toEdd.exit

_ZN13hb_gpu_draw_t11acc_line_toEdd.exit:          ; preds = %bb.e
  tail call fastcc void @_ZL14acc_emit_conicP13hb_gpu_draw_tdddd(ptr noundef nonnull align 8 dereferenceable(320) %0, double noundef %i.e, double noundef %i.g, double noundef %5, double noundef %6)
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  tail call fastcc void @_ZL26hb_gpu_cubic_to_quadraticsP13hb_gpu_draw_t20hb_gpu_cu2qu_point_tS1_S1_S1_dj(ptr noundef %0, double %i.e, double %i.g, double %1, double %2, double %3, double %4, double %5, double %6, i32 noundef 0)
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %_ZN13hb_gpu_draw_t11acc_line_toEdd.exit, %bb.f, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL26hb_gpu_cubic_to_quadraticsP13hb_gpu_draw_t20hb_gpu_cu2qu_point_tS1_S1_S1_dj(ptr noundef nonnull %0, double %1, double %2, double %3, double %4, double %5, double %6, double %7, double %8, i32 noundef range(i32 0, 11) %9) unnamed_addr #1 {
bb.a:
  %i.a = insertelement <2 x double> poison, double %6, i64 0
  %i.b = insertelement <2 x double> %i.a, double %1, i64 1
  %i.c = insertelement <2 x double> poison, double %7, i64 1
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.f, %bb.a
  %.tr52 = phi double [ %1, %bb.a ], [ %i.bg, %bb.f ] ; 4 uses
  %.tr53 = phi double [ %2, %bb.a ], [ %29, %bb.f ] ; 5 uses
  %.tr54 = phi double [ %3, %bb.a ], [ %23, %bb.f ] ; 4 uses
  %.tr55 = phi double [ %4, %bb.a ], [ %27, %bb.f ] ; 4 uses
  %.tr56 = phi double [ %5, %bb.a ], [ %20, %bb.f ] ; 6 uses
  %.tr57 = phi double [ %6, %bb.a ], [ %i.bh, %bb.f ] ; 4 uses
  %.tr61 = phi i32 [ %9, %bb.a ], [ %30, %bb.f ]  ; 2 uses
  %i.d = phi <2 x double> [ %i.b, %bb.a ], [ %i.bf, %bb.f ] ; 3 uses
  %10 = fsub double %.tr54, %.tr52                ; 3 uses
  %i.e = fsub double %.tr55, %.tr53               ; 2 uses
  %i.f = fsub double %7, %.tr56                   ; 3 uses
  %11 = fsub double %8, %.tr57                    ; 3 uses
  %i.g = fneg double %i.e                         ; 2 uses
  %i.h = fmul double %10, %11
  %i.i = tail call double @llvm.fmuladd.f64(double %i.g, double %i.f, double %i.h) ; 2 uses
  %i.j = tail call double @llvm.fabs.f64(double %i.i)
  %i.k = fcmp olt double %i.j, f0x3D719799812DEA11
  br i1 %i.k, label %_ZL29hb_gpu_cubic_approx_quadratic20hb_gpu_cu2qu_point_tS_S_S_dPS_.exit.thread, label %_ZL29hb_gpu_cubic_approx_quadratic20hb_gpu_cu2qu_point_tS_S_S_dPS_.exit

_ZL29hb_gpu_cubic_approx_quadratic20hb_gpu_cu2qu_point_tS_S_S_dPS_.exit: ; preds = %tailrecurse
  %i.l = fsub double %.tr52, %.tr56
  %i.m = fsub double %.tr53, %.tr57
  %i.n = fmul double %10, %i.m
  %i.o = tail call double @llvm.fmuladd.f64(double %i.g, double %i.l, double %i.n)
  %i.p = fdiv double %i.o, %i.i                   ; 2 uses
  %12 = insertelement <2 x double> <double poison, double f0x3FE5555555555555>, double %11, i64 0
  %i.q = insertelement <2 x double> poison, double %i.p, i64 0
  %i.r = tail call double @llvm.fmuladd.f64(double %i.f, double %i.p, double %.tr56) ; 3 uses
  %i.s = fsub double %i.r, %.tr52
  %i.t = insertelement <2 x double> %i.q, double %i.s, i64 1
  %i.u = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %12, <2 x double> %i.t, <2 x double> %i.d) ; 3 uses
  %i.v = extractelement <2 x double> %i.u, i64 1
  %i.w = fsub double %i.v, %.tr54
  %i.x = extractelement <2 x double> %i.u, i64 0  ; 2 uses
  %i.y = insertelement <2 x double> %i.u, double %i.r, i64 1
  %i.z = insertelement <2 x double> %i.c, double %.tr53, i64 0 ; 2 uses
  %i.aa = fsub <2 x double> %i.y, %i.z
  %i.ab = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aa, <2 x double> splat (double f0x3FE5555555555555), <2 x double> %i.z)
  %i.ac = insertelement <2 x double> poison, double %.tr55, i64 0
  %i.ad = insertelement <2 x double> %i.ac, double %.tr56, i64 1
  %i.ae = fsub <2 x double> %i.ab, %i.ad          ; 2 uses
  %i.af = fsub double %i.x, %8
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.af, double f0x3FE5555555555555, double %8)
  %i.ah = fsub double %i.ag, %.tr57
  %i.ai = extractelement <2 x double> %i.ae, i64 0
  %i.aj = extractelement <2 x double> %i.ae, i64 1
  %i.ak = tail call fastcc noundef zeroext i1 @_ZL32hb_gpu_cubic_farthest_fit_inside20hb_gpu_cu2qu_point_tS_S_S_dj(double 0.000000e+00, double 0.000000e+00, double %i.w, double %i.ai, double %i.aj, double %i.ah, double 0.000000e+00, double 0.000000e+00, i32 noundef 0)
  br i1 %i.ak, label %bb.b, label %_ZL29hb_gpu_cubic_approx_quadratic20hb_gpu_cu2qu_point_tS_S_S_dPS_.exit.thread

bb.b:                                             ; preds = %_ZL29hb_gpu_cubic_approx_quadratic20hb_gpu_cu2qu_point_tS_S_S_dPS_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.am = load i8, ptr %i.al, align 8, !tbaa !8, !range !27, !noundef !28
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.c, label %_ZN13hb_gpu_draw_t12acc_conic_toEdddd.exit, !prof !29

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZL14acc_emit_conicP13hb_gpu_draw_tdddd(ptr noundef nonnull align 8 dereferenceable(320) %0, double noundef %i.r, double noundef %i.x, double noundef %7, double noundef %8)
  br label %_ZN13hb_gpu_draw_t12acc_conic_toEdddd.exit

_ZL29hb_gpu_cubic_approx_quadratic20hb_gpu_cu2qu_point_tS_S_S_dPS_.exit.thread: ; preds = %tailrecurse, %_ZL29hb_gpu_cubic_approx_quadratic20hb_gpu_cu2qu_point_tS_S_S_dPS_.exit
  %exitcond = icmp eq i32 %.tr61, 10
  br i1 %exitcond, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZL29hb_gpu_cubic_approx_quadratic20hb_gpu_cu2qu_point_tS_S_S_dPS_.exit.thread
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !8, !range !27, !noundef !28
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.e, label %_ZN13hb_gpu_draw_t12acc_conic_toEdddd.exit, !prof !29

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.as = load double, ptr %i.ar, align 8, !tbaa !31
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.au = load double, ptr %i.at, align 8, !tbaa !32
  tail call fastcc void @_ZL14acc_emit_conicP13hb_gpu_draw_tdddd(ptr noundef nonnull align 8 dereferenceable(320) %0, double noundef %i.as, double noundef %i.au, double noundef %7, double noundef %8)
  br label %_ZN13hb_gpu_draw_t12acc_conic_toEdddd.exit

bb.f:                                             ; preds = %_ZL29hb_gpu_cubic_approx_quadratic20hb_gpu_cu2qu_point_tS_S_S_dPS_.exit.thread
  %13 = fsub double %.tr56, %.tr54
  %14 = fsub double %.tr57, %.tr55
  %i.av = insertelement <2 x double> poison, double %13, i64 0
  %i.aw = insertelement <2 x double> %i.av, double %10, i64 1
  %15 = insertelement <2 x double> %i.d, double %.tr54, i64 0
  %i.ax = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aw, <2 x double> splat (double 5.000000e-01), <2 x double> %15) ; 4 uses
  %i.ay = extractelement <2 x double> %i.ax, i64 1
  %16 = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.az = insertelement <2 x double> poison, double %14, i64 0
  %i.ba = insertelement <2 x double> %i.az, double %i.e, i64 1
  %17 = insertelement <2 x double> poison, double %.tr55, i64 0
  %18 = insertelement <2 x double> %17, double %.tr53, i64 1
  %i.bb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ba, <2 x double> splat (double 5.000000e-01), <2 x double> %18) ; 4 uses
  %i.bc = extractelement <2 x double> %i.bb, i64 1
  %19 = insertelement <2 x double> poison, double %11, i64 0
  %20 = tail call double @llvm.fmuladd.f64(double %i.f, double 5.000000e-01, double %.tr56) ; 2 uses
  %i.bd = insertelement <2 x double> %16, double %20, i64 0
  %21 = fsub <2 x double> %i.bd, %i.ax
  %22 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %21, <2 x double> splat (double 5.000000e-01), <2 x double> %i.ax) ; 3 uses
  %23 = extractelement <2 x double> %22, i64 0    ; 2 uses
  %i.be = extractelement <2 x double> %22, i64 1  ; 2 uses
  %24 = fsub double %23, %i.be
  %25 = insertelement <2 x double> %19, double %24, i64 1
  %26 = shufflevector <2 x double> %i.d, <2 x double> %22, <2 x i32> <i32 0, i32 3>
  %i.bf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %25, <2 x double> splat (double 5.000000e-01), <2 x double> %26) ; 4 uses
  %i.bg = extractelement <2 x double> %i.bf, i64 1 ; 2 uses
  %i.bh = extractelement <2 x double> %i.bf, i64 0
  %i.bi = shufflevector <2 x double> %i.bf, <2 x double> %i.bb, <2 x i32> <i32 0, i32 2>
  %i.bj = fsub <2 x double> %i.bi, %i.bb
  %i.bk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> splat (double 5.000000e-01), <2 x double> %i.bb) ; 2 uses
  %27 = extractelement <2 x double> %i.bk, i64 0  ; 2 uses
  %i.bl = extractelement <2 x double> %i.bk, i64 1 ; 3 uses
  %28 = fsub double %27, %i.bl
  %29 = tail call double @llvm.fmuladd.f64(double %28, double 5.000000e-01, double %i.bl) ; 2 uses
  %30 = add nuw nsw i32 %.tr61, 1                 ; 2 uses
  tail call fastcc void @_ZL26hb_gpu_cubic_to_quadraticsP13hb_gpu_draw_t20hb_gpu_cu2qu_point_tS1_S1_S1_dj(ptr noundef %0, double %.tr52, double %.tr53, double %i.ay, double %i.bc, double %i.be, double %i.bl, double %i.bg, double %29, i32 noundef %30)
  br label %tailrecurse

_ZN13hb_gpu_draw_t12acc_conic_toEdddd.exit:       ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define ptr @hb_gpu_draw_encode(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_ZL24_hb_gpu_draw_get_extentsP13hb_gpu_draw_tP18hb_glyph_extents_t.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i8, ptr %i.c, align 8, !tbaa !8, !range !27, !noundef !28
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.e, !prof !29

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.g = load i32, ptr %i.f, align 4, !tbaa !35
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = load double, ptr %i.i, align 8, !tbaa !44 ; 2 uses
  %i.k = fcmp oeq double %i.j, +inf
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %_ZL24_hb_gpu_draw_get_extentsP13hb_gpu_draw_tP18hb_glyph_extents_t.exit

bb.f:                                             ; preds = %bb.d
  %i.l = tail call double @llvm.floor.f64(double %i.j) ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.n = load double, ptr %i.m, align 8, !tbaa !45
  %i.o = tail call double @llvm.floor.f64(double %i.n) ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.q = load double, ptr %i.p, align 8, !tbaa !46
  %i.r = tail call double @llvm.ceil.f64(double %i.q) ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.t = load double, ptr %i.s, align 8, !tbaa !47
  %i.u = tail call double @llvm.ceil.f64(double %i.t) ; 3 uses
  %i.v = tail call double @llvm.fabs.f64(double %i.l)
  %i.w = fcmp ueq double %i.v, +inf
  %i.x = tail call double @llvm.fabs.f64(double %i.o)
  %i.y = fcmp ueq double %i.x, +inf
  %or.cond.not40.i = select i1 %i.w, i1 true, i1 %i.y, !prof !48
  %i.z = tail call double @llvm.fabs.f64(double %i.r)
  %i.aa = fcmp ueq double %i.z, +inf
  %or.cond34.not37.i = select i1 %or.cond.not40.i, i1 true, i1 %i.aa, !prof !49
  %i.ab = tail call double @llvm.fabs.f64(double %i.u)
  %i.ac = fcmp ueq double %i.ab, +inf
  %or.cond36.i = select i1 %or.cond34.not37.i, i1 true, i1 %i.ac, !prof !50
  br i1 %or.cond36.i, label %.critedge.i, label %bb.g, !prof !50

.critedge.i:                                      ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %_ZL24_hb_gpu_draw_get_extentsP13hb_gpu_draw_tP18hb_glyph_extents_t.exit

bb.g:                                             ; preds = %bb.f
  %i.ad = fsub double %i.r, %i.l
  %i.ae = fsub double %i.o, %i.u
  %i.af = insertelement <4 x double> poison, double %i.l, i64 0
  %i.ag = insertelement <4 x double> %i.af, double %i.u, i64 1
  %i.ah = insertelement <4 x double> %i.ag, double %i.ad, i64 2
  %i.ai = insertelement <4 x double> %i.ah, double %i.ae, i64 3 ; 2 uses
  %i.aj = fcmp oge <4 x double> %i.ai, splat (double f0xC1E0000000000000)
  %i.ak = select <4 x i1> %i.aj, <4 x double> %i.ai, <4 x double> splat (double f0xC1E0000000000000) ; 2 uses
  %i.al = fcmp ole <4 x double> %i.ak, splat (double f0x41DFFFFFFFC00000)
  %i.am = select <4 x i1> %i.al, <4 x double> %i.ak, <4 x double> splat (double f0x41DFFFFFFFC00000)
  %i.an = fptosi <4 x double> %i.am to <4 x i32>
  store <4 x i32> %i.an, ptr %1, align 4, !tbaa !51
  br label %_ZL24_hb_gpu_draw_get_extentsP13hb_gpu_draw_tP18hb_glyph_extents_t.exit

_ZL24_hb_gpu_draw_get_extentsP13hb_gpu_draw_tP18hb_glyph_extents_t.exit: ; preds = %bb.g, %.critedge.i, %bb.e, %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !8, !range !27, !noundef !28
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.h, label %.critedge501, !prof !29

bb.h:                                             ; preds = %_ZL24_hb_gpu_draw_get_extentsP13hb_gpu_draw_tP18hb_glyph_extents_t.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !52 ; 9 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.au = load i32, ptr %i.at, align 4, !tbaa !53 ; 12 uses
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aw = tail call ptr @hb_blob_get_empty() #16
  br label %.critedge501

bb.j:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !54 ; 2 uses
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %_ZN11hb_vector_tI26hb_gpu_encode_curve_info_tLb0EE5resetEv.exit.i, label %_ZN11hb_vector_tI26hb_gpu_encode_curve_info_tLb0EE14reset_if_errorEv.exit, !prof !36

_ZN11hb_vector_tI26hb_gpu_encode_curve_info_tLb0EE5resetEv.exit.i: ; preds = %bb.j
  %i.ba = xor i32 %i.ay, -1
  store i32 %i.ba, ptr %i.ax, align 8, !tbaa !54
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 0, ptr %i.bb, align 4, !tbaa !55
  br label %_ZN11hb_vector_tI26hb_gpu_encode_curve_info_tLb0EE14reset_if_errorEv.exit

_ZN11hb_vector_tI26hb_gpu_encode_curve_info_tLb0EE14reset_if_errorEv.exit: ; preds = %bb.j, %_ZN11hb_vector_tI26hb_gpu_encode_curve_info_tLb0EE5resetEv.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !56 ; 2 uses
  %i.be = icmp slt i32 %i.bd, 0
  br i1 %i.be, label %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i, label %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit, !prof !36

_ZN11hb_vector_tIjLb0EE5resetEv.exit.i:           ; preds = %_ZN11hb_vector_tI26hb_gpu_encode_curve_info_tLb0EE14reset_if_errorEv.exit
  %i.bf = xor i32 %i.bd, -1
  store i32 %i.bf, ptr %i.bc, align 8, !tbaa !56
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 0, ptr %i.bg, align 4, !tbaa !57
  br label %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit

_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit:   ; preds = %_ZN11hb_vector_tI26hb_gpu_encode_curve_info_tLb0EE14reset_if_errorEv.exit, %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !56 ; 2 uses
  %i.bj = icmp slt i32 %i.bi, 0
  br i1 %i.bj, label %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i521, label %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit522, !prof !36

_ZN11hb_vector_tIjLb0EE5resetEv.exit.i521:        ; preds = %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit
  %i.bk = xor i32 %i.bi, -1
  store i32 %i.bk, ptr %i.bh, align 8, !tbaa !56
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 0, ptr %i.bl, align 4, !tbaa !57
  br label %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit522

_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit522: ; preds = %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit, %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i521
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !56 ; 2 uses
  %i.bo = icmp slt i32 %i.bn, 0
  br i1 %i.bo, label %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i523, label %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit524, !prof !36

_ZN11hb_vector_tIjLb0EE5resetEv.exit.i523:        ; preds = %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit522
  %i.bp = xor i32 %i.bn, -1
  store i32 %i.bp, ptr %i.bm, align 8, !tbaa !56
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i32 0, ptr %i.bq, align 4, !tbaa !57
  br label %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit524

_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit524: ; preds = %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit522, %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i523
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !56 ; 2 uses
  %i.bt = icmp slt i32 %i.bs, 0
  br i1 %i.bt, label %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i525, label %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit526, !prof !36

_ZN11hb_vector_tIjLb0EE5resetEv.exit.i525:        ; preds = %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit524
  %i.bu = xor i32 %i.bs, -1
  store i32 %i.bu, ptr %i.br, align 8, !tbaa !56
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 0, ptr %i.bv, align 4, !tbaa !57
  br label %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit526

_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit526: ; preds = %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit524, %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i525
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !56 ; 2 uses
  %i.by = icmp slt i32 %i.bx, 0
  br i1 %i.by, label %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i527, label %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit528, !prof !36

_ZN11hb_vector_tIjLb0EE5resetEv.exit.i527:        ; preds = %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit526
  %i.bz = xor i32 %i.bx, -1
  store i32 %i.bz, ptr %i.bw, align 8, !tbaa !56
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 204
  store i32 0, ptr %i.ca, align 4, !tbaa !57
  br label %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit528

_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit528: ; preds = %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit526, %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i527
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !56 ; 2 uses
  %i.cd = icmp slt i32 %i.cc, 0
  br i1 %i.cd, label %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i529, label %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit530, !prof !36

_ZN11hb_vector_tIjLb0EE5resetEv.exit.i529:        ; preds = %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit528
  %i.ce = xor i32 %i.cc, -1
  store i32 %i.ce, ptr %i.cb, align 8, !tbaa !56
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 220
  store i32 0, ptr %i.cf, align 4, !tbaa !57
  br label %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit530

_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit530: ; preds = %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit528, %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i529
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !56 ; 2 uses
  %i.ci = icmp slt i32 %i.ch, 0
  br i1 %i.ci, label %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i531, label %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit532, !prof !36

_ZN11hb_vector_tIjLb0EE5resetEv.exit.i531:        ; preds = %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit530
  %i.cj = xor i32 %i.ch, -1
  store i32 %i.cj, ptr %i.cg, align 8, !tbaa !56
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 236
  store i32 0, ptr %i.ck, align 4, !tbaa !57
  br label %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit532
end_hunk_0

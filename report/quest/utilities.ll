Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/utilities?download=true
inline.NumInlined: 1369
inline.NumDeleted: 580
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_Z12util_setConj8DiagMatr:bb.a
  %i.v = fneg double %i.u
  store double %i.v, ptr %i.t, align 8, !tbaa !52
  %i.w = add nuw nsw i64 %.06.i, 4                ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_Z16setDiagElemsConjPSt7complexIdEx.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !3

_Z16setDiagElemsConjPSt7complexIdEx.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_Z16setDiagElemsConjPSt7complexIdEx.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_Z16setDiagElemsConjPSt7complexIdEx.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.06.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.w, %_Z16setDiagElemsConjPSt7complexIdEx.exit.loopexit.unr-lcssa ]
  %lcmp.mod1 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.06.i.epil = phi i64 [ %i.ab, %.lr.ph.i.epil ], [ %.06.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.06.i.epil
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.z = load double, ptr %i.y, align 8, !tbaa !57
  %i.aa = fneg double %i.z
  store double %i.aa, ptr %i.y, align 8, !tbaa !52
  %i.ab = add nuw nsw i64 %.06.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_Z16setDiagElemsConjPSt7complexIdEx.exit, label %.lr.ph.i.epil, !llvm.loop !166

_Z16setDiagElemsConjPSt7complexIdEx.exit:         ; preds = %_Z16setDiagElemsConjPSt7complexIdEx.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_Z17util_getTranspose9CompMatr1(ptr dead_on_unwind noalias nofree writable sret(%struct.CompMatr1) align 8 captures(none) initializes((0, 80)) %0, ptr nofree noundef readonly byval(%struct.CompMatr1) align 8 captures(none) %1) local_unnamed_addr #15 {
bb.a:
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false), !tbaa.struct !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !60   ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.preheader.i, label %_Z22setDenseElemsTransposeIPA2_St7complexIdEEvT_x.exit

.preheader.i:                                     ; preds = %bb.a, %._crit_edge.i
  %.01719.i = phi i64 [ %i.f, %._crit_edge.i ], [ 0, %bb.a ] ; 5 uses
  %invariant.gep.i = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.01719.i
  %.not.i = icmp eq i64 %.01719.i, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.e = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %.01719.i
  br label %bb.b

._crit_edge.i:                                    ; preds = %bb.b, %.preheader.i
  %i.f = add nuw nsw i64 %.01719.i, 1             ; 2 uses
  %exitcond21.not.i = icmp eq i64 %i.f, %i.c
  br i1 %exitcond21.not.i, label %_Z22setDenseElemsTransposeIPA2_St7complexIdEEvT_x.exit, label %.preheader.i, !llvm.loop !167

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.018.i = phi i64 [ 0, %.lr.ph.i ], [ %i.h, %bb.b ] ; 3 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %.018.i ; 2 uses
  %.sroa.0.i.sroa.0.0.copyload = load <2 x double>, ptr %i.g, align 8, !tbaa !52
  %gep.i = getelementptr inbounds nuw [32 x i8], ptr %invariant.gep.i, i64 %.018.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %gep.i, i64 16, i1 false), !tbaa.struct !76
  store <2 x double> %.sroa.0.i.sroa.0.0.copyload, ptr %gep.i, align 8, !tbaa !52
  %i.h = add nuw nsw i64 %.018.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.h, %.01719.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.b, !llvm.loop !168

_Z22setDenseElemsTransposeIPA2_St7complexIdEEvT_x.exit: ; preds = %._crit_edge.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_Z17util_getTranspose9CompMatr2(ptr dead_on_unwind noalias nofree writable sret(%struct.CompMatr2) align 8 captures(none) initializes((0, 272)) %0, ptr nofree noundef readonly byval(%struct.CompMatr2) align 8 captures(none) %1) local_unnamed_addr #15 {
bb.a:
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(272) %1, i64 272, i1 false), !tbaa.struct !61
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !63   ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.preheader.i, label %_Z22setDenseElemsTransposeIPA4_St7complexIdEEvT_x.exit

.preheader.i:                                     ; preds = %bb.a, %._crit_edge.i
  %.01719.i = phi i64 [ %i.f, %._crit_edge.i ], [ 0, %bb.a ] ; 5 uses
  %invariant.gep.i = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.01719.i
  %.not.i = icmp eq i64 %.01719.i, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.e = getelementptr inbounds nuw [64 x i8], ptr %i.a, i64 %.01719.i
  br label %bb.b

._crit_edge.i:                                    ; preds = %bb.b, %.preheader.i
  %i.f = add nuw nsw i64 %.01719.i, 1             ; 2 uses
  %exitcond21.not.i = icmp eq i64 %i.f, %i.c
  br i1 %exitcond21.not.i, label %_Z22setDenseElemsTransposeIPA4_St7complexIdEEvT_x.exit, label %.preheader.i, !llvm.loop !169

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.018.i = phi i64 [ 0, %.lr.ph.i ], [ %i.h, %bb.b ] ; 3 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %.018.i ; 2 uses
  %.sroa.0.i.sroa.0.0.copyload = load <2 x double>, ptr %i.g, align 8, !tbaa !52
  %gep.i = getelementptr inbounds nuw [64 x i8], ptr %invariant.gep.i, i64 %.018.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %gep.i, i64 16, i1 false), !tbaa.struct !76
  store <2 x double> %.sroa.0.i.sroa.0.0.copyload, ptr %gep.i, align 8, !tbaa !52
  %i.h = add nuw nsw i64 %.018.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.h, %.01719.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.b, !llvm.loop !170

_Z22setDenseElemsTransposeIPA4_St7complexIdEEvT_x.exit: ; preds = %._crit_edge.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_Z8isApproxddd(double noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #14 {
bb.a:
  %i.a = fsub double %0, %1
  %i.b = tail call noundef double @llvm.fabs.f64(double %i.a)
  %i.c = fcmp ole double %i.b, %2
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_Z8isApproxSt7complexIdES0_d(double %0, double %1, double %2, double %3, double noundef %4) local_unnamed_addr #14 {
bb.a:
  %i.a = fsub double %0, %2                       ; 2 uses
  %i.b = fsub double %1, %3                       ; 2 uses
  %i.c = fmul double %i.b, %i.b
  %i.d = tail call noundef double @llvm.fmuladd.f64(double %i.a, double %i.a, double %i.c)
  %i.e = fcmp ole double %i.d, %4
  ret i1 %i.e
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #12

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z12getUnitarityPSt7complexIdExd(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, double noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call void @_Z31assert_utilsGivenNonZeroEpsilond(double noundef %2)
  %i.a = icmp slt i64 %1, 1
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0810 = phi i64 [ %i.j, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0810 ; 2 uses
  %i.c = load double, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load double, ptr %i.d, align 8
  %i.f = tail call noundef double @cabs(double noundef %i.c, double noundef %i.e) #32
  %i.g = fadd double %i.f, -1.000000e+00
  %i.h = tail call noundef double @llvm.fabs.f64(double %i.g)
  %i.i = fcmp ole double %i.h, %2                 ; 2 uses
  %i.j = add nuw nsw i64 %.0810, 1                ; 2 uses
  %exitcond.not = icmp ne i64 %i.j, %1
  %or.cond.not = select i1 %i.i, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %._crit_edge, !llvm.loop !4

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ %i.i, %.lr.ph ]
  ret i1 %.lcssa
}

declare void @_Z31assert_utilsGivenNonZeroEpsilond(double noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare double @cabs(double noundef, double noundef) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z14util_isUnitary9CompMatr1d(ptr nofree noundef readonly byval(%struct.CompMatr1) align 8 captures(none) %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !60   ; 4 uses
  tail call void @_Z31assert_utilsGivenNonZeroEpsilond(double noundef %1)
  %i.d = icmp slt i64 %i.c, 1
  br i1 %i.d, label %_Z12getUnitarityIPA2_St7complexIdEEbT_xd.exit, label %.preheader37.us.i

.preheader37.us.i:                                ; preds = %bb.a, %..thread_crit_edge.split.us.us.i
  %.02346.us.i = phi i64 [ %i.ak, %..thread_crit_edge.split.us.us.i ], [ 0, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %.02346.us.i
  br label %.preheader.us.us.i

.preheader.us.us.i:                               ; preds = %bb.e, %.preheader37.us.i
  %.02545.us.us.i = phi i64 [ 0, %.preheader37.us.i ], [ %i.aj, %bb.e ] ; 3 uses
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %.02545.us.us.i
  br label %bb.b

bb.b:                                             ; preds = %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.us.us.i, %.preheader.us.us.i
  %.02442.us.us.i = phi i64 [ 0, %.preheader.us.us.i ], [ %i.ac, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.us.us.i ] ; 3 uses
  %.sroa.6.041.us.us.i = phi double [ 0.000000e+00, %.preheader.us.us.i ], [ %i.ab, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.us.us.i ]
  %.sroa.035.040.us.us.i = phi double [ 0.000000e+00, %.preheader.us.us.i ], [ %i.aa, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.us.us.i ]
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %.02442.us.us.i
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.02442.us.us.i
  %i.i = load <2 x double>, ptr %i.h, align 8, !tbaa !57 ; 4 uses
  %i.j = extractelement <2 x double> %i.i, i64 1
  %i.k = fneg double %i.j
  %i.l = load <2 x double>, ptr %i.g, align 8     ; 4 uses
  %i.m = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.n = fmul <2 x double> %i.i, %i.l             ; 2 uses
  %shift = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.n, %shift
  %2 = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 3 uses
  %i.o = fmul <2 x double> %i.i, %i.m             ; 2 uses
  %shift15 = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop16 = fsub <2 x double> %i.o, %shift15
  %i.p = extractelement <2 x double> %foldExtExtBinop16, i64 0 ; 3 uses
  %i.q = fcmp uno double %2, 0.000000e+00
  br i1 %i.q, label %bb.c, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.us.us.i, !prof !77

bb.c:                                             ; preds = %bb.b
  %i.r = fcmp uno double %i.p, 0.000000e+00
  br i1 %i.r, label %bb.d, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.us.us.i, !prof !77

bb.d:                                             ; preds = %bb.c
  %i.s = extractelement <2 x double> %i.i, i64 0
  %i.t = extractelement <2 x double> %i.l, i64 0
  %i.u = extractelement <2 x double> %i.l, i64 1
  %i.v = tail call noundef { double, double } @__muldc3(double noundef %i.t, double noundef %i.u, double noundef %i.s, double noundef %i.k) #32 ; 2 uses
  %i.w = extractvalue { double, double } %i.v, 0
  %i.x = extractvalue { double, double } %i.v, 1
  br label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.us.us.i

_ZStmlIdESt7complexIT_ERKS2_S4_.exit.us.us.i:     ; preds = %bb.d, %bb.c, %bb.b
  %i.y = phi double [ %2, %bb.b ], [ %2, %bb.c ], [ %i.w, %bb.d ]
  %i.z = phi double [ %i.p, %bb.b ], [ %i.p, %bb.c ], [ %i.x, %bb.d ]
  %i.aa = fadd double %.sroa.035.040.us.us.i, %i.y ; 2 uses
  %i.ab = fadd double %.sroa.6.041.us.us.i, %i.z  ; 3 uses
  %i.ac = add nuw nsw i64 %.02442.us.us.i, 1      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ac, %i.c
  br i1 %exitcond.not.i, label %._crit_edge.us.us.i, label %bb.b, !llvm.loop !171

._crit_edge.us.us.i:                              ; preds = %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.us.us.i
  %i.ad = icmp eq i64 %.02346.us.i, %.02545.us.us.i
  %i.ae = uitofp i1 %i.ad to double
  %i.af = fsub double %i.aa, %i.ae                ; 2 uses
  %i.ag = fmul double %i.ab, %i.ab
  %i.ah = tail call noundef double @llvm.fmuladd.f64(double %i.af, double %i.af, double %i.ag)
  %i.ai = fcmp ugt double %i.ah, %1
  br i1 %i.ai, label %_Z12getUnitarityIPA2_St7complexIdEEbT_xd.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge.us.us.i
  %i.aj = add nuw nsw i64 %.02545.us.us.i, 1      ; 2 uses
  %exitcond52.not.i = icmp eq i64 %i.aj, %i.c
  br i1 %exitcond52.not.i, label %..thread_crit_edge.split.us.us.i, label %.preheader.us.us.i, !llvm.loop !172

..thread_crit_edge.split.us.us.i:                 ; preds = %bb.e
  %i.ak = add nuw nsw i64 %.02346.us.i, 1         ; 2 uses
  %exitcond53.not.i = icmp eq i64 %i.ak, %i.c
  br i1 %exitcond53.not.i, label %_Z12getUnitarityIPA2_St7complexIdEEbT_xd.exit, label %.preheader37.us.i, !llvm.loop !173

_Z12getUnitarityIPA2_St7complexIdEEbT_xd.exit:    ; preds = %..thread_crit_edge.split.us.us.i, %._crit_edge.us.us.i, %bb.a
  %i.al = phi i1 [ false, %._crit_edge.us.us.i ], [ true, %bb.a ], [ true, %..thread_crit_edge.split.us.us.i ]
  ret i1 %i.al
}

declare { double, double } @__muldc3(double, double, double, double) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z14util_isUnitary9CompMatr2d(ptr nofree noundef readonly byval(%struct.CompMatr2) align 8 captures(none) %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !63   ; 4 uses
  tail call void @_Z31assert_utilsGivenNonZeroEpsilond(double noundef %1)
  %i.d = icmp slt i64 %i.c, 1
  br i1 %i.d, label %_Z12getUnitarityIPA4_St7complexIdEEbT_xd.exit, label %.preheader37.us.i

.preheader37.us.i:                                ; preds = %bb.a, %..thread_crit_edge.split.us.us.i
  %.02346.us.i = phi i64 [ %i.ak, %..thread_crit_edge.split.us.us.i ], [ 0, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw [64 x i8], ptr %i.a, i64 %.02346.us.i
  br label %.preheader.us.us.i

.preheader.us.us.i:                               ; preds = %bb.e, %.preheader37.us.i
  %.02545.us.us.i = phi i64 [ 0, %.preheader37.us.i ], [ %i.aj, %bb.e ] ; 3 uses
  %i.f = getelementptr inbounds nuw [64 x i8], ptr %i.a, i64 %.02545.us.us.i
  br label %bb.b

bb.b:                                             ; preds = %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.us.us.i, %.preheader.us.us.i
  %.02442.us.us.i = phi i64 [ 0, %.preheader.us.us.i ], [ %i.ac, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.us.us.i ] ; 3 uses
  %.sroa.6.041.us.us.i = phi double [ 0.000000e+00, %.preheader.us.us.i ], [ %i.ab, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.us.us.i ]
  %.sroa.035.040.us.us.i = phi double [ 0.000000e+00, %.preheader.us.us.i ], [ %i.aa, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.us.us.i ]
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %.02442.us.us.i
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.02442.us.us.i
  %i.i = load <2 x double>, ptr %i.h, align 8, !tbaa !57 ; 4 uses
  %i.j = extractelement <2 x double> %i.i, i64 1
  %i.k = fneg double %i.j
  %i.l = load <2 x double>, ptr %i.g, align 8     ; 4 uses
  %i.m = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.n = fmul <2 x double> %i.i, %i.l             ; 2 uses
  %shift = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.n, %shift
  %2 = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 3 uses
  %i.o = fmul <2 x double> %i.i, %i.m             ; 2 uses
  %shift15 = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop16 = fsub <2 x double> %i.o, %shift15
  %i.p = extractelement <2 x double> %foldExtExtBinop16, i64 0 ; 3 uses
  %i.q = fcmp uno double %2, 0.000000e+00
  br i1 %i.q, label %bb.c, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.us.us.i, !prof !77

bb.c:                                             ; preds = %bb.b
  %i.r = fcmp uno double %i.p, 0.000000e+00
  br i1 %i.r, label %bb.d, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.us.us.i, !prof !77

bb.d:                                             ; preds = %bb.c
  %i.s = extractelement <2 x double> %i.i, i64 0
  %i.t = extractelement <2 x double> %i.l, i64 0
  %i.u = extractelement <2 x double> %i.l, i64 1
  %i.v = tail call noundef { double, double } @__muldc3(double noundef %i.t, double noundef %i.u, double noundef %i.s, double noundef %i.k) #32 ; 2 uses
  %i.w = extractvalue { double, double } %i.v, 0
  %i.x = extractvalue { double, double } %i.v, 1
  br label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.us.us.i

_ZStmlIdESt7complexIT_ERKS2_S4_.exit.us.us.i:     ; preds = %bb.d, %bb.c, %bb.b
  %i.y = phi double [ %2, %bb.b ], [ %2, %bb.c ], [ %i.w, %bb.d ]
  %i.z = phi double [ %i.p, %bb.b ], [ %i.p, %bb.c ], [ %i.x, %bb.d ]
  %i.aa = fadd double %.sroa.035.040.us.us.i, %i.y ; 2 uses
  %i.ab = fadd double %.sroa.6.041.us.us.i, %i.z  ; 3 uses
  %i.ac = add nuw nsw i64 %.02442.us.us.i, 1      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ac, %i.c
  br i1 %exitcond.not.i, label %._crit_edge.us.us.i, label %bb.b, !llvm.loop !174

._crit_edge.us.us.i:                              ; preds = %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.us.us.i
  %i.ad = icmp eq i64 %.02346.us.i, %.02545.us.us.i
  %i.ae = uitofp i1 %i.ad to double
  %i.af = fsub double %i.aa, %i.ae                ; 2 uses
  %i.ag = fmul double %i.ab, %i.ab
  %i.ah = tail call noundef double @llvm.fmuladd.f64(double %i.af, double %i.af, double %i.ag)
  %i.ai = fcmp ugt double %i.ah, %1
  br i1 %i.ai, label %_Z12getUnitarityIPA4_St7complexIdEEbT_xd.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge.us.us.i
  %i.aj = add nuw nsw i64 %.02545.us.us.i, 1      ; 2 uses
  %exitcond52.not.i = icmp eq i64 %i.aj, %i.c
  br i1 %exitcond52.not.i, label %..thread_crit_edge.split.us.us.i, label %.preheader.us.us.i, !llvm.loop !175

..thread_crit_edge.split.us.us.i:                 ; preds = %bb.e
  %i.ak = add nuw nsw i64 %.02346.us.i, 1         ; 2 uses
  %exitcond53.not.i = icmp eq i64 %i.ak, %i.c
  br i1 %exitcond53.not.i, label %_Z12getUnitarityIPA4_St7complexIdEEbT_xd.exit, label %.preheader37.us.i, !llvm.loop !176

_Z12getUnitarityIPA4_St7complexIdEEbT_xd.exit:    ; preds = %..thread_crit_edge.split.us.us.i, %._crit_edge.us.us.i, %bb.a
  %i.al = phi i1 [ false, %._crit_edge.us.us.i ], [ true, %bb.a ], [ true, %..thread_crit_edge.split.us.us.i ]
  ret i1 %i.al
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z14util_isUnitary9DiagMatr1d(ptr nofree noundef readonly byval(%struct.DiagMatr1) align 8 captures(none) %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !65   ; 2 uses
  tail call void @_Z31assert_utilsGivenNonZeroEpsilond(double noundef %1)
  %i.d = icmp slt i64 %i.c, 1
  br i1 %i.d, label %_Z12getUnitarityPSt7complexIdExd.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.0810.i = phi i64 [ %i.m, %.lr.ph.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.0810.i ; 2 uses
  %i.f = load double, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load double, ptr %i.g, align 8
  %i.i = tail call noundef double @cabs(double noundef %i.f, double noundef %i.h) #32
  %i.j = fadd double %i.i, -1.000000e+00
  %i.k = tail call noundef double @llvm.fabs.f64(double %i.j)
  %i.l = fcmp ole double %i.k, %1                 ; 2 uses
  %i.m = add nuw nsw i64 %.0810.i, 1              ; 2 uses
  %exitcond.not.i = icmp ne i64 %i.m, %i.c
  %or.cond.not = select i1 %i.l, i1 %exitcond.not.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %_Z12getUnitarityPSt7complexIdExd.exit, !llvm.loop !4

_Z12getUnitarityPSt7complexIdExd.exit:            ; preds = %.lr.ph.i, %bb.a
  %.lcssa.i = phi i1 [ true, %bb.a ], [ %i.l, %.lr.ph.i ]
  ret i1 %.lcssa.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z14util_isUnitary9DiagMatr2d(ptr nofree noundef readonly byval(%struct.DiagMatr2) align 8 captures(none) %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !67   ; 2 uses
  tail call void @_Z31assert_utilsGivenNonZeroEpsilond(double noundef %1)
  %i.d = icmp slt i64 %i.c, 1
  br i1 %i.d, label %_Z12getUnitarityPSt7complexIdExd.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.0810.i = phi i64 [ %i.m, %.lr.ph.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.0810.i ; 2 uses
  %i.f = load double, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load double, ptr %i.g, align 8
  %i.i = tail call noundef double @cabs(double noundef %i.f, double noundef %i.h) #32
  %i.j = fadd double %i.i, -1.000000e+00
  %i.k = tail call noundef double @llvm.fabs.f64(double %i.j)
  %i.l = fcmp ole double %i.k, %1                 ; 2 uses
  %i.m = add nuw nsw i64 %.0810.i, 1              ; 2 uses
  %exitcond.not.i = icmp ne i64 %i.m, %i.c
  %or.cond.not = select i1 %i.l, i1 %exitcond.not.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %_Z12getUnitarityPSt7complexIdExd.exit, !llvm.loop !4

_Z12getUnitarityPSt7complexIdExd.exit:            ; preds = %.lr.ph.i, %bb.a
  %.lcssa.i = phi i1 [ true, %bb.a ], [ %i.l, %.lr.ph.i ]
  ret i1 %.lcssa.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z14util_isUnitary8CompMatrd(ptr nofree noundef readonly byval(%struct.CompMatr) align 8 captures(none) %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !180  ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !33   ; 2 uses
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !72   ; 4 uses
  tail call void @_Z31assert_utilsGivenNonZeroEpsilond(double noundef %1)
  %i.i = icmp slt i64 %i.h, 1
  br i1 %i.i, label %_Z12getUnitarityIPPSt7complexIdEEbT_xd.exit, label %.preheader37.us.i

.preheader37.us.i:                                ; preds = %bb.b, %..thread_crit_edge.split.us.us.i
  %.02346.us.i = phi i64 [ %i.ar, %..thread_crit_edge.split.us.us.i ], [ 0, %bb.b ] ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.02346.us.i
  br label %.preheader.us.us.i

.preheader.us.us.i:                               ; preds = %bb.f, %.preheader37.us.i
  %.02545.us.us.i = phi i64 [ 0, %.preheader37.us.i ], [ %i.aq, %bb.f ] ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.02545.us.us.i
  br label %bb.c

bb.c:                                             ; preds = %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.us.us.i, %.preheader.us.us.i
  %.02442.us.us.i = phi i64 [ 0, %.preheader.us.us.i ], [ %i.aj, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.us.us.i ] ; 3 uses
  %.sroa.6.041.us.us.i = phi double [ 0.000000e+00, %.preheader.us.us.i ], [ %i.ai, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.us.us.i ]
  %.sroa.035.040.us.us.i = phi double [ 0.000000e+00, %.preheader.us.us.i ], [ %i.ah, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.us.us.i ]
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !50
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.02442.us.us.i
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !50
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.02442.us.us.i
  %i.p = load <2 x double>, ptr %i.o, align 8, !tbaa !57 ; 4 uses
  %i.q = extractelement <2 x double> %i.p, i64 1
  %i.r = fneg double %i.q
  %i.s = load <2 x double>, ptr %i.m, align 8     ; 4 uses
  %i.t = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.u = fmul <2 x double> %i.p, %i.s             ; 2 uses
  %shift = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.u, %shift
  %2 = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 3 uses
  %i.v = fmul <2 x double> %i.p, %i.t             ; 2 uses
  %shift16 = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop17 = fsub <2 x double> %i.v, %shift16
  %i.w = extractelement <2 x double> %foldExtExtBinop17, i64 0 ; 3 uses
  %i.x = fcmp uno double %2, 0.000000e+00
  br i1 %i.x, label %bb.d, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.us.us.i, !prof !77

bb.d:                                             ; preds = %bb.c
  %i.y = fcmp uno double %i.w, 0.000000e+00
  br i1 %i.y, label %bb.e, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.us.us.i, !prof !77

bb.e:                                             ; preds = %bb.d
  %i.z = extractelement <2 x double> %i.p, i64 0
  %i.aa = extractelement <2 x double> %i.s, i64 0
  %i.ab = extractelement <2 x double> %i.s, i64 1
  %i.ac = tail call noundef { double, double } @__muldc3(double noundef %i.aa, double noundef %i.ab, double noundef %i.z, double noundef %i.r) #32 ; 2 uses
  %i.ad = extractvalue { double, double } %i.ac, 0
  %i.ae = extractvalue { double, double } %i.ac, 1
  br label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.us.us.i

_ZStmlIdESt7complexIT_ERKS2_S4_.exit.us.us.i:     ; preds = %bb.e, %bb.d, %bb.c
  %i.af = phi double [ %2, %bb.c ], [ %2, %bb.d ], [ %i.ad, %bb.e ]
  %i.ag = phi double [ %i.w, %bb.c ], [ %i.w, %bb.d ], [ %i.ae, %bb.e ]
  %i.ah = fadd double %.sroa.035.040.us.us.i, %i.af ; 2 uses
  %i.ai = fadd double %.sroa.6.041.us.us.i, %i.ag ; 3 uses
  %i.aj = add nuw nsw i64 %.02442.us.us.i, 1      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aj, %i.h
  br i1 %exitcond.not.i, label %._crit_edge.us.us.i, label %bb.c, !llvm.loop !177

._crit_edge.us.us.i:                              ; preds = %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.us.us.i
  %i.ak = icmp eq i64 %.02346.us.i, %.02545.us.us.i
  %i.al = uitofp i1 %i.ak to double
  %i.am = fsub double %i.ah, %i.al                ; 2 uses
  %i.an = fmul double %i.ai, %i.ai
  %i.ao = tail call noundef double @llvm.fmuladd.f64(double %i.am, double %i.am, double %i.an)
  %i.ap = fcmp ugt double %i.ao, %1
  br i1 %i.ap, label %_Z12getUnitarityIPPSt7complexIdEEbT_xd.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.us.us.i
  %i.aq = add nuw nsw i64 %.02545.us.us.i, 1      ; 2 uses
  %exitcond52.not.i = icmp eq i64 %i.aq, %i.h
  br i1 %exitcond52.not.i, label %..thread_crit_edge.split.us.us.i, label %.preheader.us.us.i, !llvm.loop !178

..thread_crit_edge.split.us.us.i:                 ; preds = %bb.f
  %i.ar = add nuw nsw i64 %.02346.us.i, 1         ; 2 uses
  %exitcond53.not.i = icmp eq i64 %i.ar, %i.h
  br i1 %exitcond53.not.i, label %_Z12getUnitarityIPPSt7complexIdEEbT_xd.exit, label %.preheader37.us.i, !llvm.loop !179

_Z12getUnitarityIPPSt7complexIdEEbT_xd.exit:      ; preds = %..thread_crit_edge.split.us.us.i, %._crit_edge.us.us.i, %bb.b
  %i.as = phi i32 [ 0, %._crit_edge.us.us.i ], [ 1, %bb.b ], [ 1, %..thread_crit_edge.split.us.us.i ] ; 2 uses
  store i32 %i.as, ptr %i.b, align 4, !tbaa !33
  br label %bb.g

bb.g:                                             ; preds = %_Z12getUnitarityIPPSt7complexIdEEbT_xd.exit, %bb.a
  %i.at = phi i32 [ %i.as, %_Z12getUnitarityIPPSt7complexIdEEbT_xd.exit ], [ %i.c, %bb.a ]
  %i.au = icmp ne i32 %i.at, 0
  ret i1 %i.au
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z14util_isUnitary8DiagMatrd(ptr nofree noundef readonly byval(%struct.DiagMatr) align 8 captures(none) %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !181  ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !33   ; 2 uses
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !74
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !75   ; 2 uses
  tail call void @_Z31assert_utilsGivenNonZeroEpsilond(double noundef %1)
  %i.i = icmp slt i64 %i.h, 1
  br i1 %i.i, label %_Z12getUnitarityPSt7complexIdExd.exit, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.j = add nuw nsw i64 %.0810.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.j, %i.h
  br i1 %exitcond.not.i, label %_Z12getUnitarityPSt7complexIdExd.exit, label %.lr.ph.i, !llvm.loop !4

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.0810.i = phi i64 [ %i.j, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.0810.i ; 2 uses
  %i.l = load double, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load double, ptr %i.m, align 8
  %i.o = tail call noundef double @cabs(double noundef %i.l, double noundef %i.n) #32
  %i.p = fadd double %i.o, -1.000000e+00
  %i.q = tail call noundef double @llvm.fabs.f64(double %i.p)
  %i.r = fcmp ugt double %i.q, %1
  br i1 %i.r, label %_Z12getUnitarityPSt7complexIdExd.exit, label %bb.c

_Z12getUnitarityPSt7complexIdExd.exit:            ; preds = %bb.c, %.lr.ph.i, %bb.b
  %.lcssa.i = phi i32 [ 1, %bb.b ], [ 0, %.lr.ph.i ], [ 1, %bb.c ] ; 2 uses
  store i32 %.lcssa.i, ptr %i.b, align 4, !tbaa !33
  br label %bb.d

bb.d:                                             ; preds = %_Z12getUnitarityPSt7complexIdExd.exit, %bb.a
  %i.s = phi i32 [ %.lcssa.i, %_Z12getUnitarityPSt7complexIdExd.exit ], [ %i.c, %bb.a ]
  %i.t = icmp ne i32 %i.s, 0
  ret i1 %i.t
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z14util_isUnitary17FullStateDiagMatrd(ptr nofree noundef readonly byval(%struct.FullStateDiagMatr) align 8 captures(none) %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !182  ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !33   ; 2 uses
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !78
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !49   ; 2 uses
  tail call void @_Z31assert_utilsGivenNonZeroEpsilond(double noundef %1)
  %i.i = icmp slt i64 %i.h, 1
  br i1 %i.i, label %_Z12getUnitarityPSt7complexIdExd.exit, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.j = add nuw nsw i64 %.0810.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.j, %i.h
  br i1 %exitcond.not.i, label %_Z12getUnitarityPSt7complexIdExd.exit, label %.lr.ph.i, !llvm.loop !4

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.0810.i = phi i64 [ %i.j, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.0810.i ; 2 uses
  %i.l = load double, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load double, ptr %i.m, align 8
  %i.o = tail call noundef double @cabs(double noundef %i.l, double noundef %i.n) #32
  %i.p = fadd double %i.o, -1.000000e+00
  %i.q = tail call noundef double @llvm.fabs.f64(double %i.p)
  %i.r = fcmp ugt double %i.q, %1
  br i1 %i.r, label %_Z12getUnitarityPSt7complexIdExd.exit, label %bb.c

_Z12getUnitarityPSt7complexIdExd.exit:            ; preds = %bb.c, %.lr.ph.i, %bb.b
  %.lcssa.i = phi i32 [ 1, %bb.b ], [ 0, %.lr.ph.i ], [ 1, %bb.c ] ; 2 uses
  store i32 %.lcssa.i, ptr %i.b, align 4, !tbaa !33
  br label %bb.d

bb.d:                                             ; preds = %_Z12getUnitarityPSt7complexIdExd.exit, %bb.a
  %i.s = phi i32 [ %.lcssa.i, %_Z12getUnitarityPSt7complexIdExd.exit ], [ %i.c, %bb.a ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !48
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = icmp ne i32 %i.s, 0
  %i.w = tail call noundef zeroext i1 @_Z21comm_isTrueOnAllNodesb(i1 noundef zeroext %i.v)
  %i.x = zext i1 %i.w to i32                      ; 2 uses
  store i32 %i.x, ptr %i.b, align 4, !tbaa !33
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = phi i32 [ %i.x, %bb.e ], [ %i.s, %bb.d ]
  %i.z = icmp ne i32 %i.y, 0
  ret i1 %i.z
}

declare noundef zeroext i1 @_Z21comm_isTrueOnAllNodesb(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z14getHermiticityPSt7complexIdExd(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, double noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call void @_Z31assert_utilsGivenNonZeroEpsilond(double noundef %2)
  %i.a = icmp slt i64 %1, 1
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0810 = phi i64 [ %i.g, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0810
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !57
  %i.e = tail call noundef double @llvm.fabs.f64(double %i.d)
  %i.f = fcmp ole double %i.e, %2                 ; 2 uses
  %i.g = add nuw nsw i64 %.0810, 1                ; 2 uses
  %exitcond.not = icmp ne i64 %i.g, %1
  %or.cond.not = select i1 %i.f, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %._crit_edge, !llvm.loop !5

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ %i.f, %.lr.ph ]
  ret i1 %.lcssa
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z16util_isHermitian9CompMatr1d(ptr nofree noundef readonly byval(%struct.CompMatr1) align 8 captures(none) %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !60   ; 2 uses
  tail call void @_Z31assert_utilsGivenNonZeroEpsilond(double noundef %1)
  %i.d = icmp slt i64 %i.c, 1
  br i1 %i.d, label %_Z14getHermiticityIPA2_St7complexIdEEbT_xd.exit, label %.preheader.i
end_hunk_0
begin_hunk_1_@_Z26util_isStrictlyNonNegative8DiagMatr:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !194  ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !33   ; 2 uses
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !74
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !75   ; 2 uses
  %i.i = icmp slt i64 %i.h, 1
  br i1 %i.i, label %_Z37getWhetherRealsAreStrictlyNonNegativePSt7complexIdEx.exit, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.j = add nuw nsw i64 %.068.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.j, %i.h
  br i1 %exitcond.not.i, label %_Z37getWhetherRealsAreStrictlyNonNegativePSt7complexIdEx.exit, label %.lr.ph.i, !llvm.loop !7

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.068.i = phi i64 [ %i.j, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.068.i
  %i.l = load double, ptr %i.k, align 8, !tbaa !57
  %i.m = fcmp uge double %i.l, 0.000000e+00
  br i1 %i.m, label %bb.c, label %_Z37getWhetherRealsAreStrictlyNonNegativePSt7complexIdEx.exit

_Z37getWhetherRealsAreStrictlyNonNegativePSt7complexIdEx.exit: ; preds = %bb.c, %.lr.ph.i, %bb.b
  %.lcssa.i = phi i32 [ 1, %bb.b ], [ 0, %.lr.ph.i ], [ 1, %bb.c ] ; 2 uses
  store i32 %.lcssa.i, ptr %i.b, align 4, !tbaa !33
  br label %bb.d

bb.d:                                             ; preds = %_Z37getWhetherRealsAreStrictlyNonNegativePSt7complexIdEx.exit, %bb.a
  %i.n = phi i32 [ %.lcssa.i, %_Z37getWhetherRealsAreStrictlyNonNegativePSt7complexIdEx.exit ], [ %i.c, %bb.a ]
  %i.o = icmp ne i32 %i.n, 0
  ret i1 %i.o
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z26util_isStrictlyNonNegative17FullStateDiagMatr(ptr nofree noundef readonly byval(%struct.FullStateDiagMatr) align 8 captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !195  ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !33   ; 2 uses
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !78
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !49   ; 2 uses
  %i.i = icmp slt i64 %i.h, 1
  br i1 %i.i, label %_Z37getWhetherRealsAreStrictlyNonNegativePSt7complexIdEx.exit, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.j = add nuw nsw i64 %.068.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.j, %i.h
  br i1 %exitcond.not.i, label %_Z37getWhetherRealsAreStrictlyNonNegativePSt7complexIdEx.exit, label %.lr.ph.i, !llvm.loop !7

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.068.i = phi i64 [ %i.j, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.068.i
  %i.l = load double, ptr %i.k, align 8, !tbaa !57
  %i.m = fcmp uge double %i.l, 0.000000e+00
  br i1 %i.m, label %bb.c, label %_Z37getWhetherRealsAreStrictlyNonNegativePSt7complexIdEx.exit

_Z37getWhetherRealsAreStrictlyNonNegativePSt7complexIdEx.exit: ; preds = %bb.c, %.lr.ph.i, %bb.b
  %.lcssa.i = phi i32 [ 1, %bb.b ], [ 0, %.lr.ph.i ], [ 1, %bb.c ] ; 2 uses
  store i32 %.lcssa.i, ptr %i.b, align 4, !tbaa !33
  br label %bb.d

bb.d:                                             ; preds = %_Z37getWhetherRealsAreStrictlyNonNegativePSt7complexIdEx.exit, %bb.a
  %i.n = phi i32 [ %.lcssa.i, %_Z37getWhetherRealsAreStrictlyNonNegativePSt7complexIdEx.exit ], [ %i.c, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !48
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = icmp ne i32 %i.n, 0
  %i.r = tail call noundef zeroext i1 @_Z21comm_isTrueOnAllNodesb(i1 noundef zeroext %i.q)
  %i.s = zext i1 %i.r to i32                      ; 2 uses
  store i32 %i.s, ptr %i.b, align 4, !tbaa !33
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = phi i32 [ %i.s, %bb.e ], [ %i.n, %bb.d ]
  %i.u = icmp ne i32 %i.t, 0
  ret i1 %i.u
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z16util_isHermitian11PauliStrSumd(ptr nofree noundef readonly byval(%struct.PauliStrSum) align 8 captures(none) %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !197  ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !33   ; 2 uses
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !198
  %i.g = load i64, ptr %0, align 8, !tbaa !199    ; 2 uses
  tail call void @_Z31assert_utilsGivenNonZeroEpsilond(double noundef %1)
  %i.h = icmp slt i64 %i.g, 1
  br i1 %i.h, label %_Z14getHermiticityPSt7complexIdExd.exit, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.i = add nuw nsw i64 %.0810.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.i, %i.g
  br i1 %exitcond.not.i, label %_Z14getHermiticityPSt7complexIdExd.exit, label %.lr.ph.i, !llvm.loop !5

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.0810.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.0810.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load double, ptr %i.k, align 8, !tbaa !57
  %i.m = tail call noundef double @llvm.fabs.f64(double %i.l)
  %i.n = fcmp ugt double %i.m, %1
  br i1 %i.n, label %_Z14getHermiticityPSt7complexIdExd.exit, label %bb.c

_Z14getHermiticityPSt7complexIdExd.exit:          ; preds = %bb.c, %.lr.ph.i, %bb.b
  %.lcssa.i = phi i32 [ 1, %bb.b ], [ 0, %.lr.ph.i ], [ 1, %bb.c ] ; 2 uses
  store i32 %.lcssa.i, ptr %i.b, align 4, !tbaa !33
  br label %bb.d

bb.d:                                             ; preds = %_Z14getHermiticityPSt7complexIdExd.exit, %bb.a
  %i.o = phi i32 [ %.lcssa.i, %_Z14getHermiticityPSt7complexIdExd.exit ], [ %i.c, %bb.a ]
  %i.p = icmp ne i32 %i.o, 0
  ret i1 %i.p
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z11util_isCPTP8KrausMapd(ptr nofree noundef readonly byval(%struct.KrausMap) align 8 captures(none) %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call void @_Z31assert_utilsGivenNonZeroEpsilond(double noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !210  ; 4 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !33   ; 2 uses
  %.not = icmp eq i32 %i.c, -1
  br i1 %.not, label %.split70, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ne i32 %i.c, 0
  br label %._crit_edge.split

.split70:                                         ; preds = %bb.a
  store i32 1, ptr %i.b, align 4, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !211  ; 9 uses
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %.preheader51.lr.ph, label %._crit_edge.split

.preheader51.lr.ph:                               ; preds = %.split70
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  br i1 %i.j, label %.preheader51.us.preheader, label %.preheader51.preheader

.preheader51.preheader:                           ; preds = %.preheader51.lr.ph
  %min.iters.check = icmp ult i64 %i.f, 16
  %n.vec = and i64 %i.f, 9223372036854775792      ; 3 uses
  %broadcast.splatinsert99 = insertelement <16 x double> poison, double %1, i64 0
  %broadcast.splat100 = shufflevector <16 x double> %broadcast.splatinsert99, <16 x double> poison, <16 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br label %.preheader51

.preheader51.us.preheader:                        ; preds = %.preheader51.lr.ph
  %wide.trip.count = zext nneg i32 %i.i to i64
  br label %.preheader51.us

.preheader51.us:                                  ; preds = %.preheader51.us.preheader, %..thread43_crit_edge.split.us.split.us.us
  %.02671.us = phi i64 [ %i.ax, %..thread43_crit_edge.split.us.split.us.us ], [ 0, %.preheader51.us.preheader ] ; 3 uses
  br label %.preheader50.us.us.us

.preheader50.us.us.us:                            ; preds = %bb.f, %.preheader51.us
  %.02464.us.us.us = phi i64 [ 0, %.preheader51.us ], [ %i.aw, %bb.f ] ; 3 uses
  br label %.preheader.us.us.us.us

.preheader.us.us.us.us:                           ; preds = %._crit_edge.us.us.us.us, %.preheader50.us.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge.us.us.us.us ], [ 0, %.preheader50.us.us.us ] ; 2 uses
  %i.m = phi <2 x double> [ %i.an, %._crit_edge.us.us.us.us ], [ zeroinitializer, %.preheader50.us.us.us ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  br label %bb.c

bb.c:                                             ; preds = %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.us.us.us.us, %.preheader.us.us.us.us
  %.054.us.us.us.us = phi i64 [ 0, %.preheader.us.us.us.us ], [ %i.ao, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.us.us.us.us ] ; 2 uses
  %i.o = phi <2 x double> [ %i.m, %.preheader.us.us.us.us ], [ %i.an, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.us.us.us.us ]
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !79
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.054.us.us.us.us
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !50   ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.02671.us
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.02464.us.us.us
  %i.u = load <2 x double>, ptr %i.s, align 8, !tbaa !57 ; 4 uses
  %i.v = extractelement <2 x double> %i.u, i64 1
  %i.w = fneg double %i.v
  %i.x = load <2 x double>, ptr %i.t, align 8     ; 4 uses
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %2 = fmul <2 x double> %i.u, %i.x               ; 2 uses
  %i.z = fmul <2 x double> %i.u, %i.y             ; 2 uses
  %shift = shufflevector <2 x double> %2, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %2, %shift
  %3 = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 3 uses
  %shift105 = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop106 = fsub <2 x double> %i.z, %shift105
  %i.aa = extractelement <2 x double> %foldExtExtBinop106, i64 0 ; 3 uses
  %i.ab = fcmp uno double %3, 0.000000e+00
  br i1 %i.ab, label %bb.d, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.us.us.us.us, !prof !77

bb.d:                                             ; preds = %bb.c
  %i.ac = fcmp uno double %i.aa, 0.000000e+00
  br i1 %i.ac, label %bb.e, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.us.us.us.us, !prof !77

bb.e:                                             ; preds = %bb.d
  %i.ad = extractelement <2 x double> %i.u, i64 0
  %i.ae = extractelement <2 x double> %i.x, i64 0
  %i.af = extractelement <2 x double> %i.x, i64 1
  %i.ag = tail call noundef { double, double } @__muldc3(double noundef %i.ad, double noundef %i.w, double noundef %i.ae, double noundef %i.af) #32 ; 2 uses
  %i.ah = extractvalue { double, double } %i.ag, 0
  %i.ai = extractvalue { double, double } %i.ag, 1
  br label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.us.us.us.us

_ZStmlIdESt7complexIT_ERKS2_S4_.exit.us.us.us.us: ; preds = %bb.e, %bb.d, %bb.c
  %i.aj = phi double [ %3, %bb.c ], [ %3, %bb.d ], [ %i.ah, %bb.e ]
  %i.ak = phi double [ %i.aa, %bb.c ], [ %i.aa, %bb.d ], [ %i.ai, %bb.e ]
  %i.al = insertelement <2 x double> poison, double %i.ak, i64 0
  %i.am = insertelement <2 x double> %i.al, double %i.aj, i64 1
  %i.an = fadd <2 x double> %i.o, %i.am           ; 5 uses
  %i.ao = add nuw nsw i64 %.054.us.us.us.us, 1    ; 2 uses
  %exitcond79.not = icmp eq i64 %i.ao, %i.f
  br i1 %exitcond79.not, label %._crit_edge.us.us.us.us, label %bb.c, !llvm.loop !200

._crit_edge.us.us.us.us:                          ; preds = %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.us.us.us.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond81.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond81.not, label %._crit_edge59.split.us.us.us.us, label %.preheader.us.us.us.us, !llvm.loop !201

._crit_edge59.split.us.us.us.us:                  ; preds = %._crit_edge.us.us.us.us
  %i.ap = icmp eq i64 %.02671.us, %.02464.us.us.us
  %i.aq = uitofp i1 %i.ap to double
  %i.ar = extractelement <2 x double> %i.an, i64 1
  %i.as = fsub double %i.ar, %i.aq                ; 2 uses
  %foldExtExtBinop108 = fmul <2 x double> %i.an, %i.an
  %i.at = extractelement <2 x double> %foldExtExtBinop108, i64 0
  %i.au = tail call noundef double @llvm.fmuladd.f64(double %i.as, double %i.as, double %i.at)
  %i.av = fcmp ule double %i.au, %1
  br i1 %i.av, label %bb.f, label %.split.us

bb.f:                                             ; preds = %._crit_edge59.split.us.us.us.us
  %i.aw = add nuw nsw i64 %.02464.us.us.us, 1     ; 2 uses
  %exitcond82.not = icmp eq i64 %i.aw, %i.f
  br i1 %exitcond82.not, label %..thread43_crit_edge.split.us.split.us.us, label %.preheader50.us.us.us, !llvm.loop !202

..thread43_crit_edge.split.us.split.us.us:        ; preds = %bb.f
  %i.ax = add nuw nsw i64 %.02671.us, 1           ; 2 uses
  %exitcond83.not = icmp eq i64 %i.ax, %i.f
  br i1 %exitcond83.not, label %._crit_edge.split.loopexit, label %.preheader51.us, !llvm.loop !203

.preheader51:                                     ; preds = %.preheader51.preheader, %..thread43_crit_edge.split
  %.02671 = phi i64 [ %i.bl, %..thread43_crit_edge.split ], [ 0, %.preheader51.preheader ] ; 3 uses
  br i1 %min.iters.check, label %.preheader50.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader51
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %.02671, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ]
  %vec.ind = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.ay = icmp eq <16 x i64> %broadcast.splat, %vec.ind
  %.fr102 = freeze <16 x i1> %i.ay
  %i.az = uitofp <16 x i1> %.fr102 to <16 x double>
  %i.ba = fsub <16 x double> zeroinitializer, %i.az ; 2 uses
  %i.bb = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %i.ba, <16 x double> %i.ba, <16 x double> zeroinitializer)
  %i.bc = fcmp ogt <16 x double> %i.bb, %broadcast.splat100
  %i.bd = bitcast <16 x i1> %i.bc to i16
  %.not103 = icmp eq i16 %i.bd, 0
  br i1 %.not103, label %vector.body.interim, label %.split.us

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add nuw nsw <16 x i64> %vec.ind, splat (i64 16)
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !204

middle.block:                                     ; preds = %vector.body.interim
  br i1 %cmp.n, label %..thread43_crit_edge.split, label %.preheader50.preheader

.preheader50.preheader:                           ; preds = %.preheader51, %middle.block
  %.02464.ph = phi i64 [ 0, %.preheader51 ], [ %n.vec, %middle.block ]
  br label %.preheader50

bb.g:                                             ; preds = %.preheader50
  %i.bf = add nuw nsw i64 %.02464, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bf, %i.f
  br i1 %exitcond.not, label %..thread43_crit_edge.split, label %.preheader50, !llvm.loop !205

.preheader50:                                     ; preds = %.preheader50.preheader, %bb.g
  %.02464 = phi i64 [ %i.bf, %bb.g ], [ %.02464.ph, %.preheader50.preheader ] ; 2 uses
  %i.bg = icmp eq i64 %.02671, %.02464
  %i.bh = uitofp i1 %i.bg to double
  %i.bi = fsub double 0.000000e+00, %i.bh         ; 2 uses
  %i.bj = tail call noundef double @llvm.fmuladd.f64(double %i.bi, double %i.bi, double 0.000000e+00)
  %i.bk = fcmp ule double %i.bj, %1
  br i1 %i.bk, label %bb.g, label %.split.us

.split.us:                                        ; preds = %vector.body, %.preheader50, %._crit_edge59.split.us.us.us.us
  store i32 0, ptr %i.b, align 4, !tbaa !33
  br label %._crit_edge.split

..thread43_crit_edge.split:                       ; preds = %bb.g, %middle.block
  %i.bl = add nuw nsw i64 %.02671, 1              ; 2 uses
  %exitcond78.not = icmp eq i64 %i.bl, %i.f
  br i1 %exitcond78.not, label %._crit_edge.split, label %.preheader51, !llvm.loop !203

._crit_edge.split.loopexit:                       ; preds = %..thread43_crit_edge.split.us.split.us.us
  %.pre = load i32, ptr %i.b, align 4, !tbaa !33
  %i.bm = icmp ne i32 %.pre, 0
  br label %._crit_edge.split

._crit_edge.split:                                ; preds = %..thread43_crit_edge.split, %.split70, %._crit_edge.split.loopexit, %.split.us, %bb.b
  %.5 = phi i1 [ %i.d, %bb.b ], [ false, %.split.us ], [ true, %.split70 ], [ %i.bm, %._crit_edge.split.loopexit ], [ true, %..thread43_crit_edge.split ]
  ret i1 %.5
}

; Function Attrs: mustprogress uwtable
define void @_Z21util_setSuperoperatorPPSt7complexIdESt6vectorIS3_IS3_IS0_SaIS0_EESaIS5_EESaIS7_EEii(ptr noundef %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.13", align 8    ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82   ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !83     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv exact i64 %i.f, 24
  %i.h = icmp ugt i64 %i.g, 384307168202282325
  br i1 %i.h, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i, !prof !38

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #30
  %.pre = load ptr, ptr %1, align 8, !tbaa !212
  %.pre6 = load ptr, ptr %i.a, align 8, !tbaa !212
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.j = phi ptr [ %i.b, %bb.a ], [ %.pre6, %_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i ]
  %i.k = phi ptr [ %i.c, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i ]
  %i.l = phi ptr [ null, %bb.a ], [ %i.i, %_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  store ptr %i.l, ptr %4, align 8, !tbaa !83
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !84
  %i.p = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIS2_ISt7complexIdESaIS4_EESaIS6_EES2_IS8_SaIS8_EEEEPS8_ET0_T_SG_SF_(ptr %i.k, ptr %i.j, ptr noundef %i.l)
          to label %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EEC2ERKS7_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.f) #31
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.e, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.aq, %bb.j ], [ %i.q, %bb.e ], [ %i.q, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EEC2ERKS7_.exit: ; preds = %bb.c
  store ptr %i.p, ptr %i.m, align 8, !tbaa !82
  %i.r = sext i32 %3 to i64
  invoke void @_Z16setSuperoperatorISt6vectorIS0_IS0_ISt7complexIdESaIS2_EESaIS4_EESaIS6_EEEvPPS2_T_ix(ptr noundef %0, ptr nofree noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %2, i64 noundef %i.r)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EEC2ERKS7_.exit
  %i.s = load ptr, ptr %4, align 8, !tbaa !83     ; 3 uses
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !82   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ak, %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i ], [ %i.s, %bb.f ] ; 5 uses
  %i.u = load ptr, ptr %.05.i.i.i, align 8, !tbaa !87 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !88   ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.u, %i.w
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.ad, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.u, %.lr.ph.i.i.i ] ; 3 uses
  %i.x = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !90 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !91
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #31
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ad, %i.w
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %.05.i.i.i, align 8, !tbaa !87
  br label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i

end_hunk_1
begin_hunk_2_@_Z19util_tryAllocMatrixRSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EExxSt8functionIFvvEE:bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !115
  %.not.i.i23 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i23, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt25__throw_bad_function_callv() #29
          to label %.noexc24 unwind label %bb.u

.noexc24:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !118
  invoke void %i.ar(ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.loopexit.sink.split unwind label %bb.u, !inline_history !12

.loopexit.sink.split:                             ; preds = %bb.o, %bb.s
  tail call void @__cxa_end_catch()
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt6vectorISt7complexIdESaIS1_EE6resizeEm.exit, %.loopexit.sink.split, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE6resizeEm.exit, %bb.a
  ret void

bb.p:                                             ; preds = %bb.l
  %i.as = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt12length_error) #32
  %i.at = icmp eq i32 %.015, %i.as
  br i1 %i.at, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.au = tail call ptr @__cxa_begin_catch(ptr %.016) #32 ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !115
  %.not.i.i26 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i26, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt25__throw_bad_function_callv() #29
          to label %.noexc27 unwind label %bb.t

.noexc27:                                         ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !118
  invoke void %i.ay(ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.loopexit.sink.split unwind label %bb.t, !inline_history !12

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.v unwind label %bb.w

bb.u:                                             ; preds = %bb.o, %bb.n
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.p
  %.merged = phi { ptr, i32 } [ %i.az, %bb.t ], [ %.pn, %bb.p ], [ %i.ba, %bb.u ]
  resume { ptr, i32 } %.merged

bb.w:                                             ; preds = %bb.u, %bb.t
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  tail call void @__clang_call_terminate(ptr %i.bc) #33
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !87     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !92
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 24                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 384307168202282325, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPSt6vectorISt7complexIdESaIS2_EEmS4_ET_S6_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPSt6vectorISt7complexIdESaIS2_EEmS4_ET_S6_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 24                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !88
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #29
  unreachable

_ZNKSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 384307168202282325) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 24
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #30 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  %i.x = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !50, !alias.scope !273, !noalias !272
  store <2 x ptr> %i.x, ptr %.012.i.i.i, align 8, !tbaa !50, !alias.scope !272, !noalias !273
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !91, !alias.scope !273, !noalias !272
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !91, !alias.scope !272, !noalias !273
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !273, !noalias !272
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.ab, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !271

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt6vectorISt7complexIdESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !92
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #31
  br label %_ZNSt12_Vector_baseISt6vectorISt7complexIdESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit37

_ZNSt12_Vector_baseISt6vectorISt7complexIdESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit37: ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !87
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !88
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !92
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt6vectorISt7complexIdESaIS2_EEmS4_ET_S6_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt6vectorISt7complexIdESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit37, %bb.a
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @_GLOBAL__sub_I_utilities.cpp() #26 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr @_Z21globalStructFieldPtrsB5cxx11, ptr getelementptr inbounds nuw (i8, ptr @_Z21globalStructFieldPtrsB5cxx11, i64 8), align 8, !tbaa !103
  store ptr @_Z21globalStructFieldPtrsB5cxx11, ptr @_Z21globalStructFieldPtrsB5cxx11, align 8, !tbaa !97
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_Z21globalStructFieldPtrsB5cxx11, i64 16), align 8, !tbaa !104
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1110_List_baseIPiSaIS1_EED2Ev, ptr nonnull @_Z21globalStructFieldPtrsB5cxx11, ptr nonnull @__dso_handle) #32 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.xor.v2i64(<2 x i64>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x double> @llvm.fmuladd.v16f64(<16 x double>, <16 x double>, <16 x double>) #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind }
attributes #21 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #25 = { nounwind memory(none) }
attributes #26 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { noreturn }
attributes #30 = { builtin allocsize(0) }
attributes #31 = { builtin nounwind }
attributes #32 = { nounwind }
attributes #33 = { noreturn nounwind }

!llvm.module.flags = !{!13, !14, !15}
!llvm.ident = !{!16}
!llvm.errno.tbaa = !{!21}

!0 = distinct !{!0, !41}
!1 = distinct !{!1, !41}
!2 = distinct !{!2, !41}
!3 = distinct !{!3, !41}
!4 = distinct !{!4, !41}
!5 = distinct !{!5, !41}
!6 = distinct !{!6, !41}
!7 = distinct !{!7, !41}
!8 = distinct !{!8, !41}
!9 = distinct !{!9, !41}
!10 = distinct !{!10, !41}
!11 = distinct !{!11, !41}
!12 = distinct !{null}
!13 = !{i32 7, !"openmp", i32 51}
!14 = !{i32 8, !"PIC Level", i32 2}
!15 = !{i32 7, !"uwtable", i32 2}
!16 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!17 = !{!"Simple C++ TBAA"}
!18 = !{!"omnipotent char", !17, i64 0}
!19 = !{!"int", !18, i64 0}
!20 = !{!"__libc_errno", !19, i64 0}
!21 = !{!20, !19, i64 0}
!22 = !{!"long long", !18, i64 0}
!23 = !{!"any pointer", !18, i64 0}
!24 = !{!"p1 _ZTSSt7complexIdE", !23, i64 0}
!25 = !{!"_ZTS5Qureg", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !19, i64 16, !19, i64 20, !19, i64 24, !19, i64 28, !22, i64 32, !22, i64 40, !22, i64 48, !22, i64 56, !22, i64 64, !24, i64 72, !24, i64 80, !24, i64 88, !24, i64 96}
!26 = !{!25, !22, i64 56}
!27 = !{!25, !19, i64 24}
!28 = !{!25, !19, i64 28}
!29 = !{!25, !22, i64 64}
!30 = !{!"p1 int", !23, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{!22, !22, i64 0}
!33 = !{!19, !19, i64 0}
!34 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !30, i64 0, !30, i64 8, !30, i64 16}
!35 = !{!34, !30, i64 8}
!36 = !{!34, !30, i64 0}
!37 = !{!34, !30, i64 16}
!38 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!39 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!40 = !{!25, !19, i64 12}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!"llvm.loop.isvectorized", i32 1}
!43 = !{!"llvm.loop.unroll.runtime.disable"}
!44 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!45 = !{!25, !22, i64 48}
!46 = !{!25, !19, i64 8}
!47 = !{!"_ZTS17FullStateDiagMatr", !19, i64 0, !22, i64 8, !19, i64 16, !19, i64 20, !19, i64 24, !22, i64 32, !30, i64 40, !30, i64 48, !30, i64 56, !30, i64 64, !30, i64 72, !24, i64 80, !24, i64 88}
!48 = !{!47, !19, i64 24}
!49 = !{!47, !22, i64 32}
!50 = !{!24, !24, i64 0}
!51 = !{!"llvm.loop.unroll.disable"}
!52 = !{!18, !18, i64 0}
!53 = !{!"p1 long long", !23, i64 0}
!54 = !{!53, !53, i64 0}
!55 = !{!"p1 double", !23, i64 0}
!56 = !{!"double", !18, i64 0}
!57 = !{!56, !56, i64 0}
!58 = !{i64 0, i64 4, !33, i64 8, i64 8, !32, i64 16, i64 64, !52}
!59 = !{!"_ZTS9CompMatr1", !19, i64 0, !22, i64 8, !18, i64 16}
!60 = !{!59, !22, i64 8}
!61 = !{i64 0, i64 4, !33, i64 8, i64 8, !32, i64 16, i64 256, !52}
!62 = !{!"_ZTS9CompMatr2", !19, i64 0, !22, i64 8, !18, i64 16}
!63 = !{!62, !22, i64 8}
!64 = !{!"_ZTS9DiagMatr1", !19, i64 0, !22, i64 8, !18, i64 16}
!65 = !{!64, !22, i64 8}
!66 = !{!"_ZTS9DiagMatr2", !19, i64 0, !22, i64 8, !18, i64 16}
!67 = !{!66, !22, i64 8}
!68 = !{!"any p2 pointer", !23, i64 0}
!69 = !{!"p2 _ZTSSt7complexIdE", !68, i64 0}
!70 = !{!"_ZTS8CompMatr", !19, i64 0, !22, i64 8, !30, i64 16, !30, i64 24, !30, i64 32, !69, i64 40, !24, i64 48, !24, i64 56}
!71 = !{!70, !69, i64 40}
!72 = !{!70, !22, i64 8}
!73 = !{!"_ZTS8DiagMatr", !19, i64 0, !22, i64 8, !30, i64 16, !30, i64 24, !30, i64 32, !30, i64 40, !30, i64 48, !24, i64 56, !24, i64 64}
!74 = !{!73, !24, i64 56}
!75 = !{!73, !22, i64 8}
!76 = !{i64 0, i64 16, !52}
!77 = !{!"branch_weights", i32 1, i32 1048575}
!78 = !{!47, !24, i64 80}
!79 = !{!69, !69, i64 0}
!80 = !{!"p1 _ZTSSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE", !23, i64 0}
!81 = !{!"_ZTSNSt12_Vector_baseISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EESaIS6_EE17_Vector_impl_dataE", !80, i64 0, !80, i64 8, !80, i64 16}
!82 = !{!81, !80, i64 8}
!83 = !{!81, !80, i64 0}
!84 = !{!81, !80, i64 16}
!85 = !{!"p1 _ZTSSt6vectorISt7complexIdESaIS1_EE", !23, i64 0}
!86 = !{!"_ZTSNSt12_Vector_baseISt6vectorISt7complexIdESaIS2_EESaIS4_EE17_Vector_impl_dataE", !85, i64 0, !85, i64 8, !85, i64 16}
!87 = !{!86, !85, i64 0}
!88 = !{!86, !85, i64 8}
!89 = !{!"_ZTSNSt12_Vector_baseISt7complexIdESaIS1_EE17_Vector_impl_dataE", !24, i64 0, !24, i64 8, !24, i64 16}
!90 = !{!89, !24, i64 0}
!91 = !{!89, !24, i64 16}
!92 = !{!86, !85, i64 16}
!93 = !{!85, !85, i64 0}
!94 = !{!89, !24, i64 8}
!95 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !23, i64 0}
!96 = !{!"_ZTSNSt8__detail15_List_node_baseE", !95, i64 0, !95, i64 8}
!97 = !{!96, !95, i64 0}
!98 = !{!"long", !18, i64 0}
!99 = !{!"_ZTSNSt8__detail17_List_node_headerE", !96, i64 0, !98, i64 16}
!100 = !{!"_ZTSNSt7__cxx1110_List_baseIPiSaIS1_EE10_List_implE", !99, i64 0}
!101 = !{!"_ZTSNSt7__cxx1110_List_baseIPiSaIS1_EEE", !100, i64 0}
!102 = !{!101, !98, i64 16}
!103 = !{!96, !95, i64 8}
!104 = !{!99, !98, i64 16}
!105 = !{!"_ZTS12util_Scalars", !56, i64 0, !56, i64 8, !56, i64 16, !56, i64 24}
!106 = !{!105, !56, i64 0}
!107 = !{!105, !56, i64 8}
!108 = !{!105, !56, i64 16}
!109 = !{!105, !56, i64 24}
!110 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !55, i64 0, !55, i64 8, !55, i64 16}
!111 = !{!110, !55, i64 16}
!112 = !{!110, !55, i64 0}
!113 = !{!110, !55, i64 8}
!114 = !{!"_ZTSSt14_Function_base", !18, i64 0, !23, i64 16}
!115 = !{!114, !23, i64 16}
!116 = !{!23, !23, i64 0}
!117 = !{!"_ZTSSt8functionIFvvEE", !114, i64 0, !23, i64 24}
!118 = !{!117, !23, i64 24}
!119 = !{!"_ZTSNSt12_Vector_baseIPSt7complexIdESaIS2_EE17_Vector_impl_dataE", !69, i64 0, !69, i64 8, !69, i64 16}
!120 = !{!119, !69, i64 8}
!121 = !{!119, !69, i64 0}
!122 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !30, i64 0, !30, i64 8, !30, i64 16}
!123 = !{!122, !30, i64 8}
!124 = !{!122, !30, i64 0}
!125 = !{!"_ZTSNSt12_Vector_baseI8PauliStrSaIS0_EE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!126 = !{!125, !23, i64 8}
!127 = !{!125, !23, i64 0}
!128 = distinct !{!128, !41, !42, !43}
!129 = distinct !{!129, !41, !43, !42}
!130 = distinct !{!130, !41}
!131 = distinct !{!131, !41}
!132 = distinct !{!132, !41}
!133 = distinct !{!133, !41}
!134 = distinct !{!134, !41}
!135 = distinct !{!135, !41}
!136 = distinct !{!136, !41}
!137 = distinct !{!137, !41}
!138 = distinct !{!138, !41}
!139 = distinct !{!139, !41}
!140 = distinct !{!140, !"_Z20util_getConcatenatedSt6vectorIiSaIiEES1_"}
!141 = distinct !{!141, !140, !"_Z20util_getConcatenatedSt6vectorIiSaIiEES1_: argument 0"}
!142 = !{!141}
!143 = distinct !{!143, !41, !42, !43}
!144 = distinct !{!144, !41, !43, !42}
!145 = distinct !{!145, !"_Z20util_getConcatenatedSt6vectorIiSaIiEES1_"}
!146 = distinct !{!146, !145, !"_Z20util_getConcatenatedSt6vectorIiSaIiEES1_: argument 0"}
!147 = distinct !{!147, !"_Z20util_getConcatenatedSt6vectorIiSaIiEES1_"}
!148 = distinct !{!148, !147, !"_Z20util_getConcatenatedSt6vectorIiSaIiEES1_: argument 0"}
!149 = !{!146}
!150 = !{!148}
!151 = distinct !{!151, !51}
!152 = !{!55, !55, i64 0}
!153 = distinct !{!153, !51}
!154 = distinct !{!154, !51}
!155 = distinct !{!155, !41}
!156 = distinct !{!156, !41}
!157 = distinct !{!157, !51}
!158 = distinct !{!158, !41}
end_hunk_2

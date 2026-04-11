inline.NumInlined: 219
inline.NumDeleted: 124
begin_hunk_0_@_ZNK4geos5index7strtree13BoundablePair8distanceEv:bb.a
  %i.s = load ptr, ptr %0, align 8, !tbaa !7      ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !16
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef ptr %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.s) ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !13   ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef ptr %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.x) ; 5 uses
  %i.ab = icmp ne ptr %i.v, null
  %i.ac = icmp ne ptr %i.aa, null
  %or.cond = and i1 %i.ab, %i.ac
end_hunk_0
begin_hunk_1_@_ZNK4geos5index7strtree13BoundablePair8distanceEv:bb.a
  resume { ptr, i32 } %.pn17

bb.i:                                             ; preds = %_ZNK4geos5index7strtree13BoundablePair8isLeavesEv.exit.thread
  %3 = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %4 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %5 = load double, ptr %3, align 8, !tbaa !24    ; 3 uses
  %6 = load double, ptr %4, align 8, !tbaa !24    ; 3 uses
  %7 = fcmp olt double %5, %6
  %8 = select i1 %7, double %6, double %5
  %9 = load double, ptr %i.aa, align 8, !tbaa !24 ; 3 uses
  %10 = load double, ptr %i.v, align 8, !tbaa !24 ; 3 uses
  %11 = fcmp olt double %9, %10
  %12 = select i1 %11, double %9, double %10
  %13 = fsub double %8, %12
  %14 = fsub double %5, %10
  %15 = fsub double %13, %14
  %16 = fsub double %6, %9
  %17 = fsub double %15, %16                      ; 2 uses
  %18 = fcmp ogt double %17, 0.000000e+00
  %.sroa.speculated19.i.i = select i1 %18, double %17, double 0.000000e+00 ; 2 uses
  %19 = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %20 = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %21 = load double, ptr %19, align 8, !tbaa !24  ; 3 uses
  %22 = load double, ptr %20, align 8, !tbaa !24  ; 3 uses
  %23 = fcmp olt double %21, %22
  %24 = select i1 %23, double %22, double %21
  %25 = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %26 = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %27 = load double, ptr %26, align 8, !tbaa !24  ; 3 uses
  %28 = load double, ptr %25, align 8, !tbaa !24  ; 3 uses
  %29 = fcmp olt double %27, %28
  %30 = select i1 %29, double %27, double %28
  %31 = fsub double %24, %30
  %32 = fsub double %21, %28
  %33 = fsub double %31, %32
  %34 = fsub double %22, %27
  %35 = fsub double %33, %34                      ; 2 uses
  %36 = fcmp ogt double %35, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %36, double %35, double 0.000000e+00 ; 2 uses
  %37 = fmul double %.sroa.speculated19.i.i, %.sroa.speculated19.i.i
  %38 = fmul double %.sroa.speculated.i.i, %.sroa.speculated.i.i
  %39 = fadd double %37, %38
  %sqrt.i = tail call noundef double @llvm.sqrt.f64(double %39)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b
end_hunk_1
begin_hunk_2_@_ZN4geos5index7strtree13BoundablePair13expandToQueueERSt14priority_queueIPS2_St6vectorIS4_SaIS4_EENS2_25BoundablePairQueueCompareEEd:bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !7      ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.l), !inline_history !29 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %5 = load double, ptr %i.p, align 8, !tbaa !27  ; 2 uses
  %6 = fcmp uno double %5, 0.000000e+00
  %7 = load double, ptr %i.o, align 8
  %8 = fsub double %5, %7
  %9 = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %10 = load double, ptr %9, align 8
  %11 = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %12 = load double, ptr %11, align 8
  %13 = fsub double %10, %12
  %14 = fmul double %8, %13
  %15 = select i1 %6, double 0.000000e+00, double %14
  %16 = load ptr, ptr %i.f, align 8, !tbaa !13    ; 2 uses
  %17 = load ptr, ptr %16, align 8, !tbaa !16
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %16), !inline_history !29 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %19, i64 8
  %20 = load double, ptr %i.q, align 8, !tbaa !27 ; 2 uses
  %21 = fcmp uno double %20, 0.000000e+00
  %22 = load double, ptr %19, align 8
  %23 = fsub double %20, %22
  %24 = getelementptr inbounds nuw i8, ptr %19, i64 24
  %25 = load double, ptr %24, align 8
  %26 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %27 = load double, ptr %26, align 8
  %28 = fsub double %25, %27
  %29 = fmul double %23, %28
  %30 = select i1 %21, double 0.000000e+00, double %29
  %31 = fcmp ogt double %15, %30
  br i1 %31, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %0, align 8, !tbaa !7
end_hunk_2

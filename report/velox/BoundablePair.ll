inline.NumInlined: 219
inline.NumDeleted: 124
begin_hunk_0_@_ZNK4geos5index7strtree13BoundablePair8distanceEv:bb.a
  %i.s = load ptr, ptr %0, align 8, !tbaa !7      ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !16
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef ptr %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.s) ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !13   ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef ptr %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.x) ; 2 uses
  %i.ab = icmp ne ptr %i.v, null
  %i.ac = icmp ne ptr %i.aa, null
  %or.cond = and i1 %i.ab, %i.ac
end_hunk_0
begin_hunk_1_@_ZNK4geos5index7strtree13BoundablePair8distanceEv:bb.a
  resume { ptr, i32 } %.pn17

bb.i:                                             ; preds = %_ZNK4geos5index7strtree13BoundablePair8isLeavesEv.exit.thread
  %3 = load <4 x double>, ptr %i.aa, align 8, !tbaa !24 ; 2 uses
  %4 = load <4 x double>, ptr %i.v, align 8, !tbaa !24 ; 2 uses
  %5 = shufflevector <4 x double> %4, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 3 uses
  %6 = shufflevector <4 x double> %3, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 3 uses
  %7 = fcmp olt <2 x double> %5, %6
  %8 = select <2 x i1> %7, <2 x double> %6, <2 x double> %5
  %9 = shufflevector <4 x double> %3, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 3 uses
  %10 = shufflevector <4 x double> %4, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 3 uses
  %11 = fcmp olt <2 x double> %9, %10
  %12 = select <2 x i1> %11, <2 x double> %9, <2 x double> %10
  %13 = fsub <2 x double> %8, %12
  %14 = fsub <2 x double> %5, %10
  %15 = fsub <2 x double> %13, %14
  %16 = fsub <2 x double> %6, %9
  %17 = fsub <2 x double> %15, %16                ; 2 uses
  %18 = fcmp ogt <2 x double> %17, zeroinitializer
  %19 = select <2 x i1> %18, <2 x double> %17, <2 x double> zeroinitializer ; 2 uses
  %20 = fmul <2 x double> %19, %19                ; 2 uses
  %shift = shufflevector <2 x double> %20, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %20, %shift
  %21 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %sqrt.i = tail call noundef double @llvm.sqrt.f64(double %21)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b
end_hunk_1
begin_hunk_2_@_ZN4geos5index7strtree13BoundablePair13expandToQueueERSt14priority_queueIPS2_St6vectorIS4_SaIS4_EENS2_25BoundablePairQueueCompareEEd:bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !7      ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.l), !inline_history !29 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %5 = load ptr, ptr %i.f, align 8, !tbaa !13     ; 2 uses
  %6 = load ptr, ptr %5, align 8, !tbaa !16
  %7 = load ptr, ptr %6, align 8
  %8 = load <2 x double>, ptr %i.o, align 8       ; 2 uses
  %9 = load <2 x double>, ptr %i.p, align 8       ; 2 uses
  %10 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %5), !inline_history !29 ; 2 uses
  %11 = load <2 x double>, ptr %10, align 8       ; 2 uses
  %12 = shufflevector <2 x double> %8, <2 x double> %11, <2 x i32> <i32 1, i32 3> ; 2 uses
  %13 = fcmp uno <2 x double> %12, zeroinitializer
  %14 = shufflevector <2 x double> %8, <2 x double> %11, <2 x i32> <i32 0, i32 2>
  %15 = fsub <2 x double> %12, %14
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 16
  %16 = load <2 x double>, ptr %i.q, align 8      ; 2 uses
  %17 = shufflevector <2 x double> %9, <2 x double> %16, <2 x i32> <i32 1, i32 3>
  %18 = shufflevector <2 x double> %9, <2 x double> %16, <2 x i32> <i32 0, i32 2>
  %19 = fsub <2 x double> %17, %18
  %20 = fmul <2 x double> %15, %19
  %21 = select <2 x i1> %13, <2 x double> zeroinitializer, <2 x double> %20 ; 2 uses
  %shift = shufflevector <2 x double> %21, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %22 = fcmp ogt <2 x double> %21, %shift
  %23 = extractelement <2 x i1> %22, i64 0
  br i1 %23, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %0, align 8, !tbaa !7
end_hunk_2

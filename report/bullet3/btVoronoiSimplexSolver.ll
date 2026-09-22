Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btVoronoiSimplexSolver?download=true
inline.NumInlined: 154
inline.NumDeleted: 20
begin_hunk_0_@_ZN22btVoronoiSimplexSolver25closestPtPointTetrahedronERK9btVector3S2_S2_S2_S2_R25btSubSimplexClosestResult:bb.a
  %i.jc = load <2 x float>, ptr %i.iy, align 8, !tbaa !21
  %i.jd = shufflevector <2 x float> %i.jc, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.jd, ptr %i.jb, align 4, !tbaa !21
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.o, %bb.n, %bb.c, %bb.b
  %.1117 = phi i1 [ false, %bb.b ], [ false, %bb.c ], [ true, %bb.n ], [ true, %bb.o ], [ true, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  ret i1 %.1117
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i1 @_ZN22btVoronoiSimplexSolver7closestER9btVector3(ptr noundef nonnull align 4 dereferenceable(357) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN22btVoronoiSimplexSolver28updateClosestVectorAndPointsEv(ptr noundef nonnull align 4 dereferenceable(357) %0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 276
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !18
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef float @_ZN22btVoronoiSimplexSolver9maxVertexEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(357) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !16     ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.011 = phi float [ 0.000000e+00, %.lr.ph ], [ %.1, %bb.b ] ; 2 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %indvars.iv ; 3 uses
  %i.e = load float, ptr %i.d, align 4, !tbaa !21 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.g = load float, ptr %i.f, align 4, !tbaa !21 ; 2 uses
  %i.h = fmul float %i.g, %i.g
  %i.i = tail call float @llvm.fmuladd.f32(float %i.e, float %i.e, float %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load float, ptr %i.j, align 4, !tbaa !21 ; 2 uses
  %i.l = tail call noundef float @llvm.fmuladd.f32(float %i.k, float %i.k, float %i.i) ; 2 uses
  %i.m = fcmp olt float %.011, %i.l
  %.1 = select i1 %i.m, float %i.l, float %.011   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !27

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.1, %bb.b ]
  ret float %.0.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_ZNK22btVoronoiSimplexSolver10getSimplexEP9btVector3S1_S1_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(357) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !16     ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 164
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 7 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %indvars.iv
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !18
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !18
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, ptr noundef nonnull align 4 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.l = load i32, ptr %0, align 4, !tbaa !16     ; 2 uses
  %i.m = sext i32 %i.l to i64
  %i.n = icmp slt i64 %indvars.iv.next, %i.m
  br i1 %i.n, label %bb.b, label %._crit_edge, !llvm.loop !28

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.lcssa = phi i32 [ %i.a, %bb.a ], [ %i.l, %bb.b ]
  ret i32 %.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN22btVoronoiSimplexSolver9inSimplexERK9btVector3(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(357) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !16     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = icmp sgt i32 %i.a, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load float, ptr %1, align 4, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load float, ptr %i.e, align 4, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load float, ptr %i.g, align 4, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.j = load float, ptr %i.i, align 4, !tbaa !30
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %indvars.iv ; 3 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !21
  %i.m = fsub float %i.d, %i.l                    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !21
  %i.p = fsub float %i.f, %i.o                    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.r = load float, ptr %i.q, align 4, !tbaa !21
  %i.s = fsub float %i.h, %i.r                    ; 2 uses
  %i.t = fmul float %i.p, %i.p
  %i.u = tail call float @llvm.fmuladd.f32(float %i.m, float %i.m, float %i.t)
  %i.v = tail call noundef float @llvm.fmuladd.f32(float %i.s, float %i.s, float %i.u)
  %i.w = fcmp ole float %i.v, %i.j                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %or.cond = select i1 %i.w, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %._crit_edge, label %bb.b, !llvm.loop !29

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.lcssa = phi i1 [ false, %bb.a ], [ %i.w, %bb.b ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.z = load float, ptr %i.y, align 4, !tbaa !21
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !21
  %i.ac = fcmp oeq float %i.z, %i.ab
  br i1 %i.ac, label %bb.c, label %_ZNK9btVector3eqERKS_.exit

bb.c:                                             ; preds = %._crit_edge
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !21
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.ag = load float, ptr %i.af, align 4, !tbaa !21
  %i.ah = fcmp oeq float %i.ae, %i.ag
  br i1 %i.ah, label %bb.d, label %_ZNK9btVector3eqERKS_.exit

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !21
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.al = load float, ptr %i.ak, align 4, !tbaa !21
  %i.am = fcmp oeq float %i.aj, %i.al
  br i1 %i.am, label %bb.e, label %_ZNK9btVector3eqERKS_.exit

bb.e:                                             ; preds = %bb.d
  %i.an = load float, ptr %1, align 4, !tbaa !21
  %i.ao = load float, ptr %i.x, align 4, !tbaa !21
  %i.ap = fcmp oeq float %i.an, %i.ao
  %i.aq = or i1 %.lcssa, %i.ap
  br label %_ZNK9btVector3eqERKS_.exit

_ZNK9btVector3eqERKS_.exit:                       ; preds = %._crit_edge, %bb.c, %bb.d, %bb.e
  %. = phi i1 [ %.lcssa, %bb.d ], [ %.lcssa, %bb.c ], [ %.lcssa, %._crit_edge ], [ %i.aq, %bb.e ]
  ret i1 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN22btVoronoiSimplexSolver14backup_closestER9btVector3(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(357) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 276
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK22btVoronoiSimplexSolver12emptySimplexEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(357) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !16
  %i.b = icmp eq i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN22btVoronoiSimplexSolver14compute_pointsER9btVector3S1_(ptr noundef nonnull align 4 dereferenceable(357) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN22btVoronoiSimplexSolver28updateClosestVectorAndPointsEv(ptr noundef nonnull align 4 dereferenceable(357) %0) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 244
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 260
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !18
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 -1, 2) i32 @_ZN22btVoronoiSimplexSolver19pointOutsideOfPlaneERK9btVector3S2_S2_S2_S2_(ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(357) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %5) local_unnamed_addr #5 align 2 {
bb.a:
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.a = load <4 x float>, ptr %1, align 4
  %i.b = shufflevector <4 x float> %i.a, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.d = load float, ptr %i.c, align 4, !tbaa !21
  %i.e = load <3 x float>, ptr %3, align 4, !tbaa !21
  %7 = load float, ptr %2, align 4, !tbaa !21     ; 2 uses
  %8 = load <2 x float>, ptr %6, align 4, !tbaa !21 ; 3 uses
  %9 = insertelement <3 x float> poison, float %7, i64 0
  %10 = shufflevector <2 x float> %8, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %11 = shufflevector <3 x float> %9, <3 x float> %10, <3 x i32> <i32 0, i32 3, i32 4> ; 2 uses
  %i.f = fsub <3 x float> %i.e, %11               ; 2 uses
  %i.g = shufflevector <3 x float> %i.f, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.h = load <3 x float>, ptr %4, align 4, !tbaa !21
  %i.i = fsub <3 x float> %i.h, %11               ; 2 uses
  %i.j = fneg <3 x float> %i.i
  %i.k = shufflevector <3 x float> %i.j, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.l = fmul <3 x float> %i.f, %i.k
  %i.m = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.g, <3 x float> %i.i, <3 x float> %i.l) ; 3 uses
  %i.n = load <2 x float>, ptr %1, align 4, !tbaa !21 ; 2 uses
  %i.o = load <2 x float>, ptr %5, align 4, !tbaa !21 ; 2 uses
  %i.p = shufflevector <2 x float> %i.n, <2 x float> %i.o, <2 x i32> <i32 0, i32 2>
  %12 = insertelement <2 x float> poison, float %7, i64 0
  %i.q = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = fsub <2 x float> %i.p, %i.q
  %i.s = shufflevector <2 x float> %i.n, <2 x float> %i.o, <2 x i32> <i32 1, i32 3>
  %13 = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = fsub <2 x float> %i.s, %13
  %i.u = insertelement <2 x float> %i.b, float %i.d, i64 1
  %14 = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.v = fsub <2 x float> %i.u, %14
  %i.w = shufflevector <3 x float> %i.m, <3 x float> poison, <2 x i32> zeroinitializer
  %i.x = fmul <2 x float> %i.t, %i.w
  %i.y = shufflevector <3 x float> %i.m, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.z = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.r, <2 x float> %i.y, <2 x float> %i.x)
  %i.aa = shufflevector <3 x float> %i.m, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ab = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> %i.aa, <2 x float> %i.z) ; 2 uses
  %i.ac = extractelement <2 x float> %i.ab, i64 1 ; 3 uses
  %i.ad = fmul float %i.ac, %i.ac
  %i.ae = fcmp olt float %i.ad, f0x322BCC76
  %i.af = extractelement <2 x float> %i.ab, i64 0
  %i.ag = fmul float %i.af, %i.ac
  %i.ah = fcmp olt float %i.ag, 0.000000e+00
  %i.ai = zext i1 %i.ah to i32
  %.0 = select i1 %i.ae, i32 -1, i32 %i.ai
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"_ZTS9btVector3", !5, i64 0}
!10 = !{!"float", !5, i64 0}
!11 = !{!"bool", !5, i64 0}
!12 = !{!"short", !5, i64 0}
!13 = !{!"_ZTS15btUsageBitfield", !12, i64 0, !12, i64 0, !12, i64 0, !12, i64 0, !12, i64 0, !12, i64 0, !12, i64 0, !12, i64 0}
!14 = !{!"_ZTS25btSubSimplexClosestResult", !9, i64 0, !13, i64 16, !5, i64 20, !11, i64 36}
!15 = !{!"_ZTS22btVoronoiSimplexSolver", !6, i64 0, !5, i64 4, !5, i64 84, !5, i64 164, !9, i64 244, !9, i64 260, !9, i64 276, !9, i64 292, !10, i64 308, !11, i64 312, !14, i64 316, !11, i64 356}
!16 = !{!15, !6, i64 0}
!17 = !{!5, !5, i64 0}
!18 = !{i64 0, i64 16, !17}
!19 = !{!15, !11, i64 312}
!20 = !{!15, !11, i64 356}
!21 = !{!10, !10, i64 0}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{i8 0, i8 2}
!24 = !{}
!25 = !{!15, !11, i64 352}
!26 = !{!14, !11, i64 36}
!27 = distinct !{!27, !22}
!28 = distinct !{!28, !22}
!29 = distinct !{!29, !22}
!30 = !{!15, !10, i64 308}
end_hunk_0

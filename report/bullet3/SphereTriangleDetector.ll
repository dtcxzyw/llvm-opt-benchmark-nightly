Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/SphereTriangleDetector?download=true
inline.NumInlined: 207
inline.NumDeleted: 42
begin_hunk_0_@_ZN22SphereTriangleDetector7collideERK9btVector3RS0_S3_RfS4_f:bb.a
  store float %i.fb, ptr %4, align 4, !tbaa !20
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %._crit_edge, %bb.a, %bb.m, %bb.d, %bb.q
  %.1 = phi i1 [ true, %bb.q ], [ false, %bb.d ], [ false, %bb.m ], [ false, %bb.a ], [ false, %._crit_edge ], [ false, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  ret i1 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef float @_Z18SegmentSqrDistanceRK9btVector3S1_S1_RS_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load float, ptr %i.a, align 4, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load float, ptr %i.c, align 4, !tbaa !20 ; 3 uses
  %i.e = fsub float %i.b, %i.d                    ; 4 uses
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.e, i64 0 ; 3 uses
  %i.f = load <2 x float>, ptr %0, align 4, !tbaa !20 ; 3 uses
  %i.g = load <2 x float>, ptr %2, align 4, !tbaa !20
  %i.h = fsub <2 x float> %i.g, %i.f              ; 5 uses
  %i.i = load <2 x float>, ptr %1, align 4, !tbaa !20
  %i.j = fsub <2 x float> %i.i, %i.f              ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load float, ptr %i.k, align 4, !tbaa !20
  %i.m = fsub float %i.l, %i.d                    ; 6 uses
  %foldExtExtBinop = fmul <2 x float> %i.h, %i.j
  %i.n = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.o = extractelement <2 x float> %i.j, i64 0   ; 3 uses
  %i.p = extractelement <2 x float> %i.h, i64 0
  %i.q = tail call float @llvm.fmuladd.f32(float %i.o, float %i.p, float %i.n)
  %i.r = tail call noundef float @llvm.fmuladd.f32(float %i.m, float %i.e, float %i.q) ; 3 uses
  %i.s = fcmp ogt float %i.r, 0.000000e+00
  br i1 %i.s, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %foldExtExtBinop96 = fmul <2 x float> %i.j, %i.j
  %i.t = extractelement <2 x float> %foldExtExtBinop96, i64 1
  %i.u = tail call float @llvm.fmuladd.f32(float %i.o, float %i.o, float %i.t)
  %i.v = tail call noundef float @llvm.fmuladd.f32(float %i.m, float %i.m, float %i.u) ; 2 uses
  %i.w = fcmp olt float %i.r, %i.v
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = fdiv float %i.r, %i.v                    ; 3 uses
  %i.y = fmul float %i.m, %i.x
  %i.z = insertelement <2 x float> poison, float %i.x, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = fmul <2 x float> %i.j, %i.aa
  %i.ac = fsub <2 x float> %i.h, %i.ab
  %i.ad = fsub float %i.e, %i.y
  %.sroa.17.8.vec.insert = insertelement <2 x float> %.sroa.3.12.vec.insert.i, float %i.ad, i64 0
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ae = fsub <2 x float> %i.h, %i.j
  %i.af = fsub float %i.e, %i.m
  %.sroa.17.8.vec.insert88 = insertelement <2 x float> %.sroa.3.12.vec.insert.i, float %i.af, i64 0
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.d
  %.0 = phi float [ %i.x, %bb.c ], [ 1.000000e+00, %bb.d ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %.sroa.059.0 = phi <2 x float> [ %i.ac, %bb.c ], [ %i.ae, %bb.d ], [ %i.h, %bb.a ] ; 3 uses
  %.sroa.17.0 = phi <2 x float> [ %.sroa.17.8.vec.insert, %bb.c ], [ %.sroa.17.8.vec.insert88, %bb.d ], [ %.sroa.3.12.vec.insert.i, %bb.a ]
  %i.ag = insertelement <2 x float> poison, float %.0, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = fmul <2 x float> %i.j, %i.ah
  %i.aj = fmul float %i.m, %.0
  %i.ak = fadd <2 x float> %i.f, %i.ai
  %i.al = fadd float %i.d, %i.aj
  %.sroa.3.12.vec.insert.i21 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.al, i64 0
  store <2 x float> %i.ak, ptr %3, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i21, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !27
  %.sroa.059.0.vec.extract68 = extractelement <2 x float> %.sroa.059.0, i64 0 ; 2 uses
  %foldExtExtBinop98 = fmul <2 x float> %.sroa.059.0, %.sroa.059.0
  %i.am = extractelement <2 x float> %foldExtExtBinop98, i64 1
  %i.an = tail call float @llvm.fmuladd.f32(float %.sroa.059.0.vec.extract68, float %.sroa.059.0.vec.extract68, float %i.am)
  %.sroa.17.8.vec.extract90 = extractelement <2 x float> %.sroa.17.0, i64 0 ; 2 uses
  %i.ao = tail call noundef float @llvm.fmuladd.f32(float %.sroa.17.8.vec.extract90, float %.sroa.17.8.vec.extract90, float %i.an)
  ret float %i.ao
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN22SphereTriangleDetector12facecontainsERK9btVector3PS1_RS0_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(28) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN22SphereTriangleDetector15pointInTriangleEPK9btVector3RS1_PS0_(ptr nonnull align 8 poison, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN22SphereTriangleDetector15pointInTriangleEPK9btVector3RS1_PS0_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load float, ptr %i.d, align 4, !tbaa !20 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !20 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load float, ptr %i.i, align 4, !tbaa !20 ; 3 uses
  %i.k = fsub float %i.g, %i.j                    ; 2 uses
  %i.l = load float, ptr %3, align 4, !tbaa !20   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.n = load float, ptr %i.m, align 4, !tbaa !20 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = load float, ptr %i.o, align 4, !tbaa !20 ; 2 uses
  %i.q = fsub float %i.p, %i.j
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load float, ptr %i.r, align 4, !tbaa !20 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.u = load float, ptr %i.t, align 4, !tbaa !20 ; 3 uses
  %i.v = fneg float %i.u                          ; 2 uses
  %i.w = load float, ptr %2, align 4, !tbaa !20   ; 3 uses
  %i.x = fneg float %i.s                          ; 2 uses
  %i.y = fneg float %i.w                          ; 2 uses
  %i.z = fmul float %i.k, %i.v
  %i.aa = load <2 x float>, ptr %i.a, align 4, !tbaa !20 ; 4 uses
  %i.ab = load <2 x float>, ptr %1, align 4, !tbaa !20 ; 3 uses
  %i.ac = load float, ptr %i.c, align 4, !tbaa !20
  %i.ad = load <2 x float>, ptr %i.b, align 4, !tbaa !20 ; 4 uses
  %i.ae = load float, ptr %i.h, align 4, !tbaa !20 ; 2 uses
  %i.af = shufflevector <2 x float> %i.aa, <2 x float> %i.ad, <2 x i32> <i32 0, i32 2>
  %i.ag = shufflevector <2 x float> %i.ab, <2 x float> %i.aa, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ah = fsub <2 x float> %i.af, %i.ag           ; 2 uses
  %i.ai = shufflevector <2 x float> %i.aa, <2 x float> %i.ad, <2 x i32> <i32 1, i32 3>
  %i.aj = shufflevector <2 x float> %i.ab, <2 x float> %i.aa, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ak = fsub <2 x float> %i.ai, %i.aj           ; 2 uses
  %i.al = insertelement <2 x float> poison, float %i.e, i64 0
  %i.am = insertelement <2 x float> %i.al, float %i.j, i64 1
  %i.an = insertelement <2 x float> poison, float %i.g, i64 0
  %i.ao = insertelement <2 x float> %i.an, float %i.e, i64 1 ; 2 uses
  %i.ap = fsub <2 x float> %i.am, %i.ao           ; 2 uses
  %i.aq = extractelement <2 x float> %i.ad, i64 0
  %foldExtExtBinop = fsub <2 x float> %i.ab, %i.ad
  %i.ar = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.as = fsub float %i.ac, %i.ae                 ; 2 uses
  %i.at = insertelement <2 x float> poison, float %i.l, i64 0
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = fsub <2 x float> %i.au, %i.ag
  %i.aw = insertelement <2 x float> poison, float %i.n, i64 0
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ay = fsub <2 x float> %i.ax, %i.aj
  %i.az = insertelement <2 x float> poison, float %i.p, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = fsub <2 x float> %i.ba, %i.ao
  %i.bc = fsub float %i.l, %i.aq
  %i.bd = fsub float %i.n, %i.ae
  %i.be = insertelement <2 x float> poison, float %i.v, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bg = fmul <2 x float> %i.ap, %i.bf
  %i.bh = insertelement <2 x float> poison, float %i.s, i64 0
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> %i.bi, <2 x float> %i.bg)
  %i.bk = insertelement <2 x float> poison, float %i.x, i64 0
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = fmul <2 x float> %i.ah, %i.bl
  %i.bn = insertelement <2 x float> poison, float %i.w, i64 0
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ap, <2 x float> %i.bo, <2 x float> %i.bm)
  %i.bq = insertelement <2 x float> poison, float %i.y, i64 0
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bs = fmul <2 x float> %i.ak, %i.br
  %i.bt = insertelement <2 x float> poison, float %i.u, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ah, <2 x float> %i.bu, <2 x float> %i.bs)
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.as, float %i.s, float %i.z)
  %i.bx = fmul float %i.ar, %i.x
  %i.by = tail call float @llvm.fmuladd.f32(float %i.k, float %i.w, float %i.bx)
  %i.bz = fmul float %i.as, %i.y
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.u, float %i.bz)
  %i.cb = fmul <2 x float> %i.ay, %i.bp
  %i.cc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bj, <2 x float> %i.av, <2 x float> %i.cb)
  %i.cd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> %i.bb, <2 x float> %i.cc) ; 3 uses
  %i.ce = fmul float %i.bd, %i.by
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.bc, float %i.ce)
  %i.cg = tail call noundef float @llvm.fmuladd.f32(float %i.ca, float %i.q, float %i.cf) ; 2 uses
  %i.ch = extractelement <2 x float> %i.cd, i64 0
  %i.ci = fcmp ogt float %i.ch, 0.000000e+00
  %i.cj = extractelement <2 x float> %i.cd, i64 1
  %i.ck = fcmp ogt float %i.cj, 0.000000e+00
  %or.cond = and i1 %i.ci, %i.ck
  %i.cl = fcmp ogt float %i.cg, 0.000000e+00
  %or.cond3 = and i1 %i.cl, %or.cond
  br i1 %or.cond3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.cm = fcmp ugt <2 x float> %i.cd, zeroinitializer
  %i.cn = bitcast <2 x i1> %i.cm to i2
  %or.cond5 = icmp eq i2 %i.cn, 0
  %i.co = fcmp ole float %i.cg, 0.000000e+00
  %or.cond7 = and i1 %i.co, %or.cond5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ %or.cond7, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN36btDiscreteCollisionDetectorInterfaceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN22SphereTriangleDetectorD0Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #11
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { nounwind }
attributes #11 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !8, i64 0}
!11 = !{!12, !14, i64 8}
!12 = !{!"_ZTS22SphereTriangleDetector", !13, i64 0, !14, i64 8, !16, i64 16, !17, i64 24}
!13 = !{!"_ZTS36btDiscreteCollisionDetectorInterface"}
!14 = !{!"p1 _ZTS13btSphereShape", !15, i64 0}
!15 = !{!"any pointer", !7, i64 0}
!16 = !{!"p1 _ZTS15btTriangleShape", !15, i64 0}
!17 = !{!"float", !7, i64 0}
!18 = !{!12, !16, i64 16}
!19 = !{!12, !17, i64 24}
!20 = !{!17, !17, i64 0}
!21 = !{!22}
!22 = distinct !{!22, !23, !"_ZNK11btTransform12inverseTimesERKS_: argument 0"}
!23 = distinct !{!23, !"_ZNK11btTransform12inverseTimesERKS_"}
!24 = !{!25, !22}
!25 = distinct !{!25, !26, !"_ZNK11btMatrix3x314transposeTimesERKS_: argument 0"}
!26 = distinct !{!26, !"_ZNK11btMatrix3x314transposeTimesERKS_"}
!27 = !{!7, !7, i64 0}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{i64 0, i64 16, !27}
end_hunk_0

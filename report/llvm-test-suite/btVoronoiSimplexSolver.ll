inline.NumInlined: 152
inline.NumDeleted: 19
begin_hunk_0_@_ZN22btVoronoiSimplexSolver25closestPtPointTetrahedronERK9btVector3S2_S2_S2_S2_R25btSubSimplexClosestResult:bb.a
  %i.e = or i8 %i.c, 15
  store i8 %i.e, ptr %i.b, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !21 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !21 ; 3 uses
  %i.k = load float, ptr %1, align 4, !tbaa !21   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.m = load float, ptr %i.l, align 4, !tbaa !21 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.o = load float, ptr %i.n, align 4, !tbaa !21 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = load <2 x float>, ptr %3, align 4, !tbaa !21 ; 9 uses
  %i.r = load <2 x float>, ptr %2, align 4, !tbaa !21 ; 8 uses
  %8 = load float, ptr %i.h, align 4, !tbaa !21   ; 3 uses
  %9 = load <4 x float>, ptr %4, align 4          ; 4 uses
  %i.s = load <2 x float>, ptr %5, align 4, !tbaa !21 ; 2 uses
  %10 = load float, ptr %i.p, align 4, !tbaa !21  ; 2 uses
  %11 = shufflevector <2 x float> %i.q, <2 x float> %i.s, <4 x i32> <i32 0, i32 1, i32 3, i32 2> ; 2 uses
  %12 = shufflevector <2 x float> %i.r, <2 x float> %i.q, <4 x i32> <i32 0, i32 1, i32 1, i32 2> ; 2 uses
  %13 = fsub <4 x float> %11, %12                 ; 4 uses
  %14 = shufflevector <2 x float> %i.s, <2 x float> %i.q, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison> ; 2 uses
  %i.t = shufflevector <4 x float> %14, <4 x float> %9, <4 x i32> <i32 0, i32 1, i32 4, i32 poison> ; 2 uses
  %15 = shufflevector <4 x float> %i.t, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 0>
  %16 = shufflevector <2 x float> %i.r, <2 x float> %i.q, <4 x i32> <i32 0, i32 0, i32 0, i32 2> ; 2 uses
  %i.u = fsub <4 x float> %15, %16
  %17 = shufflevector <4 x float> %11, <4 x float> %9, <4 x i32> <i32 1, i32 2, i32 5, i32 2> ; 4 uses
  %i.v = shufflevector <2 x float> %i.r, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %18 = shufflevector <2 x float> %i.r, <2 x float> %i.q, <4 x i32> <i32 1, i32 1, i32 1, i32 3> ; 3 uses
  %i.w = fsub <4 x float> %17, %18                ; 2 uses
  %i.x = insertelement <4 x float> poison, float %10, i64 0 ; 2 uses
  %i.y = insertelement <4 x float> %i.x, float %i.g, i64 1
  %i.z = insertelement <4 x float> %i.y, float %i.j, i64 2 ; 3 uses
  %19 = shufflevector <4 x float> %i.z, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 0>
  %20 = insertelement <4 x float> poison, float %8, i64 0 ; 2 uses
  %21 = insertelement <4 x float> %20, float %i.g, i64 1
  %22 = shufflevector <4 x float> %21, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 4 uses
  %i.aa = fsub <4 x float> %19, %22               ; 2 uses
  %23 = shufflevector <4 x float> %i.t, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 2>
  %i.ab = fsub <4 x float> %23, %16
  %24 = shufflevector <4 x float> %9, <4 x float> %i.z, <4 x i32> <i32 0, i32 4, i32 6, i32 0>
  %25 = shufflevector <4 x float> %20, <4 x float> %12, <4 x i32> <i32 4, i32 0, i32 0, i32 7>
  %i.ac = fsub <4 x float> %24, %25
  %26 = shufflevector <4 x float> %9, <4 x float> %14, <4 x i32> <i32 1, i32 4, i32 0, i32 1>
  %27 = shufflevector <2 x float> %i.r, <2 x float> %i.q, <4 x i32> <i32 1, i32 0, i32 0, i32 3>
  %i.ad = fsub <4 x float> %26, %27               ; 3 uses
  %28 = shufflevector <4 x float> %17, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2>
  %i.ae = fsub <4 x float> %28, %18
  %29 = shufflevector <4 x float> %17, <4 x float> %i.z, <4 x i32> <i32 6, i32 1, i32 2, i32 6>
  %30 = shufflevector <4 x float> %i.v, <4 x float> %22, <4 x i32> <i32 4, i32 1, i32 1, i32 7>
  %i.af = fsub <4 x float> %29, %30
  %31 = insertelement <4 x float> poison, float %i.g, i64 0
  %32 = insertelement <4 x float> %31, float %i.j, i64 1
  %33 = insertelement <4 x float> %32, float %10, i64 2
  %34 = shufflevector <4 x float> %33, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 1>
  %i.ag = fsub <4 x float> %34, %22
  %35 = shufflevector <4 x float> %17, <4 x float> %i.v, <4 x i32> <i32 1, i32 2, i32 0, i32 5>
  %36 = fsub <4 x float> %35, %18
  %37 = fneg <4 x float> %i.ae
  %i.ah = insertelement <4 x float> %i.x, float %i.j, i64 1
  %i.ai = insertelement <4 x float> %i.ah, float %i.g, i64 2
  %i.aj = insertelement <4 x float> %i.ai, float %8, i64 3
  %i.ak = fsub <4 x float> %i.aj, %22             ; 3 uses
  %38 = fmul <4 x float> %i.aa, %37
  %39 = shufflevector <4 x float> %13, <4 x float> %i.ak, <4 x i32> <i32 1, i32 6, i32 4, i32 poison>
  %40 = shufflevector <4 x float> %39, <4 x float> %i.w, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.al = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %40, <4 x float> %38) ; 2 uses
  %i.am = fneg <4 x float> %i.ag
  %foldExtExtBinop = fsub <2 x float> %i.r, %i.q
  %41 = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.an = fmul <4 x float> %i.u, %i.am
  %42 = shufflevector <4 x float> %i.ak, <4 x float> %13, <4 x i32> <i32 2, i32 4, i32 poison, i32 poison>
  %43 = shufflevector <4 x float> %42, <4 x float> %i.ad, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %44 = shufflevector <4 x float> %43, <4 x float> %i.aa, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %45 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ac, <4 x float> %44, <4 x float> %i.an) ; 2 uses
  %46 = fneg <4 x float> %i.ab
  %i.ao = fmul <4 x float> %i.w, %46
  %i.ap = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ad, <4 x float> %13, <4 x float> %i.ao) ; 2 uses
  %i.aq = insertelement <2 x float> poison, float %i.k, i64 0
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <4 x i32> zeroinitializer
  %47 = shufflevector <2 x float> %i.r, <2 x float> %i.q, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.as = fsub <4 x float> %i.ar, %47
  %i.at = insertelement <2 x float> poison, float %i.m, i64 0
  %48 = shufflevector <2 x float> %i.at, <2 x float> poison, <4 x i32> zeroinitializer
  %49 = shufflevector <2 x float> %i.r, <2 x float> %i.q, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %50 = fsub <4 x float> %48, %49
  %i.au = insertelement <2 x float> poison, float %i.o, i64 0
  %i.av = insertelement <2 x float> poison, float %8, i64 0
  %i.aw = insertelement <2 x float> %i.av, float %i.g, i64 1
  %i.ax = shufflevector <2 x float> %i.au, <2 x float> poison, <4 x i32> zeroinitializer
  %51 = shufflevector <2 x float> %i.aw, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ay = fsub <4 x float> %i.ax, %51
  %i.az = fmul <4 x float> %50, %45
  %i.ba = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.as, <4 x float> %i.al, <4 x float> %i.az)
  %i.bb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ay, <4 x float> %i.ap, <4 x float> %i.ba)
  %i.bc = fmul <4 x float> %45, %36
  %52 = shufflevector <4 x float> %i.ad, <4 x float> %13, <4 x i32> <i32 1, i32 2, i32 4, i32 poison>
  %53 = shufflevector <4 x float> %52, <4 x float> %41, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.bd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %53, <4 x float> %i.al, <4 x float> %i.bc)
  %i.be = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ak, <4 x float> %i.ap, <4 x float> %i.bd) ; 3 uses
  %i.bf = fmul <4 x float> %i.be, %i.be
end_hunk_0
begin_hunk_1_@_ZN22btVoronoiSimplexSolver25closestPtPointTetrahedronERK9btVector3S2_S2_S2_S2_R25btSubSimplexClosestResult:bb.a
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.bn = extractelement <4 x i8> %i.bk, i64 2
  %.not124 = icmp eq i8 %i.bn, 0
  %i.bo = extractelement <4 x i8> %i.bk, i64 1
  %.not125 = icmp eq i8 %i.bo, 0
  %i.bp = extractelement <4 x i8> %i.bk, i64 3
  %.not126 = icmp eq i8 %i.bp, 0
  %or.cond11.not = icmp eq i8 %i.bl, 0
  br i1 %or.cond11.not, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bq = extractelement <4 x i8> %i.bk, i64 0
  %.not = icmp eq i8 %i.bq, 0
  br i1 %.not, label %bb.g, label %bb.e

end_hunk_1

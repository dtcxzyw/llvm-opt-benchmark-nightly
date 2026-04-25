inline.NumInlined: 152
inline.NumDeleted: 19
begin_hunk_0_@_ZN22btVoronoiSimplexSolver25closestPtPointTetrahedronERK9btVector3S2_S2_S2_S2_R25btSubSimplexClosestResult:bb.a
  %i.e = or i8 %i.c, 15
  store i8 %i.e, ptr %i.b, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !21 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %8 = load float, ptr %i.h, align 4, !tbaa !21   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !21 ; 2 uses
  %i.k = load float, ptr %1, align 4, !tbaa !21   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.m = load float, ptr %i.l, align 4, !tbaa !21 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.o = load float, ptr %i.n, align 4, !tbaa !21 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %9 = load float, ptr %i.p, align 4, !tbaa !21   ; 2 uses
  %i.q = load <2 x float>, ptr %3, align 4, !tbaa !21 ; 10 uses
  %i.r = load <2 x float>, ptr %2, align 4, !tbaa !21 ; 7 uses
  %10 = load <2 x float>, ptr %4, align 4, !tbaa !21 ; 2 uses
  %i.s = load <2 x float>, ptr %5, align 4, !tbaa !21 ; 3 uses
  %11 = shufflevector <2 x float> %i.s, <2 x float> %i.q, <4 x i32> <i32 1, i32 3, i32 0, i32 2> ; 4 uses
  %12 = shufflevector <2 x float> %i.r, <2 x float> %i.q, <4 x i32> <i32 1, i32 1, i32 2, i32 0> ; 3 uses
  %13 = fsub <4 x float> %11, %12
  %14 = shufflevector <2 x float> %i.q, <2 x float> %10, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison> ; 3 uses
  %15 = shufflevector <2 x float> %i.s, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.t = shufflevector <4 x float> %14, <4 x float> %15, <4 x i32> <i32 0, i32 1, i32 4, i32 poison> ; 2 uses
  %16 = shufflevector <4 x float> %14, <4 x float> %15, <4 x i32> <i32 4, i32 4, i32 0, i32 1>
  %17 = shufflevector <2 x float> %i.r, <2 x float> %i.q, <4 x i32> <i32 0, i32 2, i32 0, i32 0>
  %i.u = fsub <4 x float> %16, %17
  %18 = shufflevector <2 x float> %10, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %19 = shufflevector <4 x float> %11, <4 x float> %18, <4 x i32> <i32 1, i32 5, i32 0, i32 0> ; 4 uses
  %i.v = shufflevector <2 x float> %i.q, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %20 = shufflevector <4 x float> %12, <4 x float> %i.v, <2 x i32> <i32 0, i32 5> ; 3 uses
  %21 = shufflevector <2 x float> %20, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0> ; 2 uses
  %i.w = fsub <4 x float> %19, %21
  %22 = shufflevector <2 x float> %i.s, <2 x float> %i.q, <4 x i32> <i32 poison, i32 poison, i32 1, i32 3>
  %i.x = insertelement <4 x float> %22, float %9, i64 0 ; 2 uses
  %i.y = insertelement <4 x float> %i.x, float %i.g, i64 1 ; 4 uses
  %i.z = insertelement <4 x float> poison, float %8, i64 0 ; 2 uses
  %23 = shufflevector <4 x float> %i.z, <4 x float> %i.v, <4 x i32> <i32 0, i32 poison, i32 5, i32 poison>
  %24 = shufflevector <2 x float> %i.r, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %25 = shufflevector <4 x float> %23, <4 x float> %24, <4 x i32> <i32 0, i32 poison, i32 2, i32 5> ; 2 uses
  %26 = shufflevector <4 x float> %25, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.aa = fsub <4 x float> %i.y, %26
  %27 = shufflevector <4 x float> %11, <4 x float> %i.y, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %28 = shufflevector <4 x float> %12, <4 x float> %i.y, <4 x i32> <i32 3, i32 3, i32 5, i32 poison>
  %29 = insertelement <4 x float> %28, float %8, i64 3 ; 2 uses
  %i.ab = fsub <4 x float> %27, %29               ; 2 uses
  %30 = shufflevector <4 x float> %i.t, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 2> ; 2 uses
  %31 = shufflevector <2 x float> %i.r, <2 x float> %i.q, <4 x i32> <i32 0, i32 2, i32 0, i32 0>
  %i.ac = fsub <4 x float> %30, %31
  %32 = shufflevector <4 x float> %i.x, <4 x float> %14, <4 x i32> <i32 poison, i32 0, i32 5, i32 5>
  %33 = insertelement <4 x float> %32, float %i.j, i64 0 ; 2 uses
  %34 = shufflevector <4 x float> %29, <4 x float> %11, <4 x i32> <i32 3, i32 3, i32 7, i32 0>
  %i.ad = fsub <4 x float> %33, %34
  %35 = shufflevector <4 x float> %i.t, <4 x float> %18, <4 x i32> <i32 1, i32 2, i32 5, i32 5>
  %36 = shufflevector <2 x float> %i.r, <2 x float> %i.q, <4 x i32> <i32 0, i32 0, i32 3, i32 1> ; 3 uses
  %i.ae = fsub <4 x float> %35, %36
  %37 = shufflevector <4 x float> %19, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 1, i32 0>
  %38 = shufflevector <2 x float> %20, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.af = fsub <4 x float> %37, %38
  %39 = shufflevector <4 x float> %19, <4 x float> %33, <4 x i32> <i32 1, i32 2, i32 4, i32 4>
  %40 = shufflevector <4 x float> %25, <4 x float> %i.y, <4 x i32> <i32 3, i32 3, i32 5, i32 0>
  %41 = fsub <4 x float> %39, %40                 ; 2 uses
  %42 = shufflevector <4 x float> %19, <4 x float> %36, <4 x i32> <i32 0, i32 1, i32 7, i32 2>
  %i.ag = fsub <4 x float> %42, %21
  %43 = fneg <4 x float> %i.af
  %44 = insertelement <4 x float> poison, float %i.g, i64 0
  %45 = insertelement <4 x float> %44, float %i.j, i64 1
  %i.ah = insertelement <4 x float> %45, float %8, i64 2
  %i.ai = insertelement <4 x float> %i.ah, float %9, i64 3
  %i.aj = insertelement <4 x float> %i.z, float %i.g, i64 1
  %46 = shufflevector <4 x float> %i.aj, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.ak = fsub <4 x float> %i.ai, %46             ; 3 uses
  %47 = shufflevector <4 x float> %i.ab, <4 x float> %i.ak, <4 x i32> <i32 5, i32 7, i32 2, i32 3>
  %48 = shufflevector <4 x float> %43, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 0, i32 2>
  %49 = fmul <4 x float> %47, %48
  %i.al = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %41, <4 x float> %i.aa, <4 x float> %49) ; 2 uses
  %50 = shufflevector <4 x float> %i.ak, <4 x float> %41, <4 x i32> <i32 0, i32 6, i32 1, i32 3>
  %i.am = fneg <4 x float> %50
  %51 = shufflevector <4 x float> %30, <4 x float> %36, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %52 = shufflevector <2 x float> %i.r, <2 x float> %i.q, <4 x i32> <i32 0, i32 0, i32 2, i32 0>
  %53 = fsub <4 x float> %51, %52
  %i.an = fmul <4 x float> %i.u, %i.am
  %54 = shufflevector <4 x float> %i.an, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %55 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ad, <4 x float> %i.ab, <4 x float> %54) ; 2 uses
  %56 = fneg <4 x float> %i.ac
  %57 = shufflevector <4 x float> %i.w, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 2, i32 0>
  %58 = shufflevector <4 x float> %56, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.ao = fmul <4 x float> %57, %58
  %i.ap = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ae, <4 x float> %13, <4 x float> %i.ao) ; 2 uses
  %i.aq = insertelement <2 x float> poison, float %i.k, i64 0
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <4 x i32> zeroinitializer
  %59 = shufflevector <2 x float> %i.r, <2 x float> %i.q, <4 x i32> <i32 0, i32 0, i32 2, i32 0>
  %i.as = fsub <4 x float> %i.ar, %59
  %i.at = insertelement <2 x float> poison, float %i.m, i64 0
  %60 = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> zeroinitializer
  %61 = fsub <2 x float> %60, %20
  %62 = shufflevector <2 x float> %61, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.au = insertelement <2 x float> poison, float %i.o, i64 0
  %i.av = insertelement <2 x float> poison, float %8, i64 0
  %i.aw = insertelement <2 x float> %i.av, float %i.g, i64 1
  %i.ax = shufflevector <2 x float> %i.au, <2 x float> poison, <4 x i32> zeroinitializer
  %63 = shufflevector <2 x float> %i.aw, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.ay = fsub <4 x float> %i.ax, %63
  %i.az = fmul <4 x float> %62, %55
  %i.ba = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.as, <4 x float> %i.al, <4 x float> %i.az)
  %i.bb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ay, <4 x float> %i.ap, <4 x float> %i.ba)
  %i.bc = fmul <4 x float> %55, %i.ag
  %i.bd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %53, <4 x float> %i.al, <4 x float> %i.bc)
  %i.be = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ak, <4 x float> %i.ap, <4 x float> %i.bd) ; 3 uses
  %i.bf = fmul <4 x float> %i.be, %i.be
end_hunk_0
begin_hunk_1_@_ZN22btVoronoiSimplexSolver25closestPtPointTetrahedronERK9btVector3S2_S2_S2_S2_R25btSubSimplexClosestResult:bb.a
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.bn = extractelement <4 x i8> %i.bk, i64 0
  %.not124 = icmp eq i8 %i.bn, 0
  %i.bo = extractelement <4 x i8> %i.bk, i64 1
  %.not125 = icmp eq i8 %i.bo, 0
  %i.bp = extractelement <4 x i8> %i.bk, i64 2
  %.not126 = icmp eq i8 %i.bp, 0
  %or.cond11.not = icmp eq i8 %i.bl, 0
  br i1 %or.cond11.not, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bq = extractelement <4 x i8> %i.bk, i64 3
  %.not = icmp eq i8 %i.bq, 0
  br i1 %.not, label %bb.g, label %bb.e

end_hunk_1

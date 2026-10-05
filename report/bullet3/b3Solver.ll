Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3Solver?download=true
inline.NumInlined: 615
inline.NumDeleted: 215
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_Z19setLinearAndAngularRK9b3Vector3S1_S1_PS_S2_S2_:bb.a
  %i.ai = fmul float %i.ah, %i.x
  %i.aj = extractelement <2 x float> %i.z, i64 0
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.w, float %i.aj, float %i.ai)
  %i.al = fneg <2 x float> %i.ag
  %i.am = fneg float %i.ak
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.am, i64 0
  store <2 x float> %i.al, ptr %5, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef float @_Z10calcRelVelRK9b3Vector3S1_S1_S1_S1_S1_S1_S1_(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %5, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %6, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %7) local_unnamed_addr #4 {
bb.a:
  %i.a = load <4 x float>, ptr %0, align 16
  %i.b = shufflevector <4 x float> %i.a, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.c = load <4 x float>, ptr %4, align 16
  %i.d = shufflevector <4 x float> %i.c, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load float, ptr %i.e, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = load float, ptr %i.g, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load float, ptr %i.i, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.l = load float, ptr %i.k, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load float, ptr %i.m, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.p = load float, ptr %i.o, align 8, !tbaa !20
  %i.q = load <2 x float>, ptr %0, align 16, !tbaa !20 ; 2 uses
  %i.r = load <2 x float>, ptr %4, align 16, !tbaa !20 ; 2 uses
  %i.s = load <2 x float>, ptr %2, align 16, !tbaa !20 ; 2 uses
  %i.t = load <2 x float>, ptr %5, align 16, !tbaa !20 ; 2 uses
  %i.u = load <4 x float>, ptr %1, align 16       ; 2 uses
  %i.v = load <4 x float>, ptr %6, align 16       ; 2 uses
  %i.w = load <4 x float>, ptr %3, align 16       ; 2 uses
  %i.x = load <4 x float>, ptr %7, align 16       ; 2 uses
  %i.y = shufflevector <2 x float> %i.q, <2 x float> %i.s, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.z = shufflevector <4 x float> %i.y, <4 x float> %i.u, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.aa = shufflevector <4 x float> %i.z, <4 x float> %i.w, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ab = shufflevector <2 x float> %i.r, <2 x float> %i.t, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.ac = shufflevector <4 x float> %i.ab, <4 x float> %i.v, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> %i.x, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ae = fmul <4 x float> %i.aa, %i.ad
  %i.af = shufflevector <2 x float> %i.q, <2 x float> %i.s, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ag = shufflevector <4 x float> %i.af, <4 x float> %i.u, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ah = shufflevector <4 x float> %i.ag, <4 x float> %i.w, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ai = shufflevector <2 x float> %i.r, <2 x float> %i.t, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.aj = shufflevector <4 x float> %i.ai, <4 x float> %i.v, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ak = shufflevector <4 x float> %i.aj, <4 x float> %i.x, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.al = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ah, <4 x float> %i.ak, <4 x float> %i.ae)
  %i.am = insertelement <4 x float> %i.b, float %i.f, i64 1
  %i.an = insertelement <4 x float> %i.am, float %i.j, i64 2
  %i.ao = insertelement <4 x float> %i.an, float %i.n, i64 3
  %i.ap = insertelement <4 x float> %i.d, float %i.h, i64 1
  %i.aq = insertelement <4 x float> %i.ap, float %i.l, i64 2
  %i.ar = insertelement <4 x float> %i.aq, float %i.p, i64 3
  %i.as = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ao, <4 x float> %i.ar, <4 x float> %i.al) ; 4 uses
  %shift = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.as, %shift
  %shift9 = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop10 = fadd <4 x float> %foldExtExtBinop, %shift9
  %shift12 = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop13 = fadd <4 x float> %foldExtExtBinop10, %shift12
  %i.at = extractelement <4 x float> %foldExtExtBinop13, i64 0
  ret float %i.at
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef float @_Z12calcJacCoeffRK9b3Vector3S1_S1_S1_fPK11b3Matrix3x3fS4_(ptr nofree noundef nonnull readnone align 16 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readnone align 16 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %3, float noundef %4, ptr nofree noundef readonly captures(none) %5, float noundef %6, ptr nofree noundef readonly captures(none) %7) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.d = load float, ptr %i.c, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load float, ptr %i.e, align 8, !tbaa !20 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.j = load float, ptr %i.i, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.n = load float, ptr %i.m, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.q = load float, ptr %i.p, align 8, !tbaa !20
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = load float, ptr %i.r, align 8, !tbaa !20 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.u = load float, ptr %5, align 16, !tbaa !20
  %i.v = load float, ptr %i.a, align 4, !tbaa !20
  %i.w = load <2 x float>, ptr %2, align 16, !tbaa !20 ; 3 uses
  %i.x = load float, ptr %i.b, align 4, !tbaa !20 ; 2 uses
  %i.y = fmul float %i.v, %i.x
  %i.z = extractelement <2 x float> %i.w, i64 0   ; 2 uses
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.u, float %i.z, float %i.y)
  %i.ab = tail call noundef float @llvm.fmuladd.f32(float %i.d, float %i.f, float %i.aa)
  %i.ac = load float, ptr %i.g, align 16, !tbaa !20
  %i.ad = load float, ptr %i.h, align 4, !tbaa !20
  %i.ae = fmul float %i.x, %i.ad
  %i.af = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.z, float %i.ae)
  %i.ag = tail call noundef float @llvm.fmuladd.f32(float %i.j, float %i.f, float %i.af)
  %i.ah = load float, ptr %i.k, align 16, !tbaa !20
  %i.ai = load float, ptr %i.l, align 4, !tbaa !20
  %i.aj = load <2 x float>, ptr %7, align 16, !tbaa !20 ; 2 uses
  %i.ak = load <2 x float>, ptr %3, align 16, !tbaa !20 ; 3 uses
  %i.al = load float, ptr %i.o, align 4, !tbaa !20 ; 2 uses
  %i.am = load <2 x float>, ptr %i.t, align 16, !tbaa !20
  %i.an = shufflevector <2 x float> %i.w, <2 x float> %i.aj, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.ao = shufflevector <2 x float> %i.am, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ap = shufflevector <4 x float> %i.an, <4 x float> %i.ao, <4 x i32> <i32 0, i32 1, i32 0, i32 5>
  %i.aq = shufflevector <2 x float> %i.ak, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 0, i32 1> ; 2 uses
  %i.ar = insertelement <4 x float> %i.aq, float %i.ai, i64 0
  %i.as = insertelement <4 x float> %i.ar, float %i.ag, i64 2
  %i.at = fmul <4 x float> %i.ap, %i.as
  %i.au = insertelement <4 x float> poison, float %i.ah, i64 0
  %i.av = shufflevector <2 x float> %i.aj, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.aw = shufflevector <4 x float> %i.au, <4 x float> %i.av, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.ax = shufflevector <4 x float> %i.aw, <4 x float> %i.ao, <4 x i32> <i32 0, i32 1, i32 poison, i32 4>
  %i.ay = insertelement <4 x float> %i.ax, float %i.ab, i64 2
  %i.az = shufflevector <2 x float> %i.w, <2 x float> %i.ak, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.ba = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ay, <4 x float> %i.az, <4 x float> %i.at) ; 2 uses
  %i.bb = extractelement <4 x float> %i.ba, i64 2
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bd = load float, ptr %i.bc, align 8, !tbaa !20
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.bf = load float, ptr %i.be, align 16, !tbaa !20
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 36
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !20
  %i.bi = extractelement <2 x float> %i.ak, i64 0
  %i.bj = fmul float %i.al, %i.bh
  %i.bk = insertelement <4 x float> poison, float %i.n, i64 0
  %i.bl = insertelement <4 x float> %i.bk, float %i.q, i64 1
  %i.bm = insertelement <4 x float> %i.bl, float %i.bf, i64 2
  %i.bn = insertelement <4 x float> %i.bm, float %i.bd, i64 3
  %i.bo = insertelement <4 x float> %i.aq, float %i.f, i64 0
  %i.bp = insertelement <4 x float> %i.bo, float %i.s, i64 1
  %i.bq = shufflevector <4 x float> %i.bp, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.br = insertelement <4 x float> %i.ba, float %i.bj, i64 2
  %i.bs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bn, <4 x float> %i.bq, <4 x float> %i.br) ; 4 uses
  %i.bt = extractelement <4 x float> %i.bs, i64 0
  %i.bu = tail call noundef float @llvm.fmuladd.f32(float %i.bt, float %i.f, float %i.bb)
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.bw = load float, ptr %i.bv, align 8, !tbaa !20
  %i.bx = extractelement <4 x float> %i.bs, i64 2
  %i.by = tail call noundef float @llvm.fmuladd.f32(float %i.bw, float %i.s, float %i.bx)
  %i.bz = extractelement <4 x float> %i.bs, i64 3
  %i.ca = fmul float %i.al, %i.bz
  %i.cb = extractelement <4 x float> %i.bs, i64 1
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.cb, float %i.bi, float %i.ca)
  %i.cd = tail call noundef float @llvm.fmuladd.f32(float %i.by, float %i.s, float %i.cc)
  %i.ce = fadd float %4, %i.bu
  %i.cf = fadd float %6, %i.ce
  %i.cg = fadd float %i.cf, %i.cd
  %i.ch = fdiv float -1.000000e+00, %i.cg
  ret float %i.ch
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_Z14setConstraint4RK9b3Vector3S1_S1_fRK11b3Matrix3x3S1_S1_S1_fS4_P14b3Contact4DatafffP20b3ContactConstraint4(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %2, float noundef %3, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(48) %4, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %5, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %6, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %7, float noundef %8, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(48) %9, ptr nofree noundef readonly captures(none) %10, float noundef %11, float noundef %12, float noundef %13, ptr nofree noundef writeonly captures(none) initializes((0, 16), (128, 152), (160, 168)) %14) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 88
  %i.b = getelementptr inbounds nuw i8, ptr %14, i64 160
  %i.c = load <2 x i32>, ptr %i.a, align 8, !tbaa !21
  %i.d = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.c, i1 true)
  store <2 x i32> %i.d, ptr %i.b, align 16, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %14, i64 128
  %i.f = fdiv float 1.000000e+00, %11
  %i.g = getelementptr inbounds nuw i8, ptr %14, i64 144
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %14, ptr noundef nonnull align 16 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !22
  %i.i = getelementptr inbounds nuw i8, ptr %14, i64 12
  store float f0x3F333333, ptr %i.i, align 4, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 76 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %14, i64 96
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 68 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 36 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 36
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %14, i64 112
  br label %bb.c

bb.b:                                             ; preds = %bb.e
  %i.an = load float, ptr %i.j, align 4, !tbaa !20 ; 4 uses
  %i.ao = fcmp ogt float %i.an, 0.000000e+00
  br i1 %i.ao, label %.preheader, label %bb.i

bb.c:                                             ; preds = %bb.a, %bb.e
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.e ] ; 6 uses
  %i.ap = trunc nuw nsw i64 %indvars.iv to i32
  %i.aq = uitofp nneg i32 %i.ap to float
  %i.ar = load float, ptr %i.j, align 4, !tbaa !20
  %i.as = fcmp ugt float %i.ar, %i.aq
  br i1 %i.as, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %10, i64 %indvars.iv ; 2 uses
  %i.au = load float, ptr %5, align 16, !tbaa !20
  %i.av = load float, ptr %i.n, align 8, !tbaa !20
  %i.aw = load <4 x float>, ptr %i.h, align 16    ; 6 uses
  %i.ax = extractelement <4 x float> %i.aw, i64 2 ; 2 uses
  %i.ay = load <2 x float>, ptr %i.m, align 4, !tbaa !20
  %i.az = load float, ptr %i.l, align 8, !tbaa !20
  %i.ba = load <3 x float>, ptr %i.at, align 16, !tbaa !20 ; 2 uses
  %i.bb = shufflevector <3 x float> %i.ba, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1> ; 2 uses
  %i.bc = extractelement <3 x float> %i.ba, i64 2
  %i.bd = fsub float %i.bc, %i.az                 ; 2 uses
  %i.be = load <4 x float>, ptr %0, align 16
  %i.bf = insertelement <4 x float> poison, float %i.av, i64 2
  %i.bg = shufflevector <2 x float> %i.ay, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bh = shufflevector <4 x float> %i.bf, <4 x float> %i.bg, <4 x i32> <i32 poison, i32 poison, i32 2, i32 4>
  %i.bi = shufflevector <4 x float> %i.be, <4 x float> %i.bh, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bj = fsub <4 x float> %i.bb, %i.bi           ; 3 uses
  %i.bk = shufflevector <4 x float> %i.bj, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 3>
  %i.bl = fneg <4 x float> %i.aw                  ; 2 uses
  %i.bm = shufflevector <4 x float> %i.bl, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.bn = shufflevector <4 x float> %i.bm, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 3>
  %i.bo = insertelement <4 x float> %i.bj, float %i.bd, i64 3
  %i.bp = fmul <4 x float> %i.bo, %i.bn
  %i.bq = shufflevector <4 x float> %i.aw, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.br = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bk, <4 x float> %i.bq, <4 x float> %i.bp) ; 9 uses
  %i.bs = extractelement <4 x float> %i.br, i64 3
  %i.bt = fneg float %i.bs                        ; 3 uses
  %.sroa.0189.0.vec.extract = extractelement <4 x float> %i.aw, i64 0 ; 2 uses
  %i.bu = fneg float %.sroa.0189.0.vec.extract
  %.sroa.0189.4.vec.extract = extractelement <4 x float> %i.aw, i64 1 ; 2 uses
  %i.bv = fneg float %.sroa.0189.4.vec.extract
  %i.bw = fneg float %i.ax
  %i.bx = extractelement <4 x float> %i.br, i64 0 ; 2 uses
  %i.by = extractelement <4 x float> %i.br, i64 2 ; 2 uses
  %i.bz = load float, ptr %i.r, align 8, !tbaa !20
  %i.ca = extractelement <4 x float> %i.br, i64 1 ; 4 uses
  %i.cb = load <4 x float>, ptr %4, align 16      ; 2 uses
  %i.cc = load <4 x float>, ptr %i.s, align 16    ; 2 uses
  %i.cd = shufflevector <4 x float> %i.bb, <4 x float> %i.bj, <4 x i32> <i32 0, i32 7, i32 poison, i32 poison>
  %i.ce = shufflevector <4 x float> %i.cd, <4 x float> %i.cb, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.cf = shufflevector <4 x float> %i.ce, <4 x float> %i.cc, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.cg = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.au, i64 0
  %i.ch = fsub <4 x float> %i.cf, %i.cg           ; 2 uses
  %i.ci = shufflevector <4 x float> %i.bl, <4 x float> %i.br, <4 x i32> <i32 2, i32 0, i32 4, i32 4>
  %i.cj = fmul <4 x float> %i.ch, %i.ci
  %i.ck = insertelement <4 x float> poison, float %i.bd, i64 0
  %i.cl = shufflevector <4 x float> %i.ck, <4 x float> %i.ch, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.cm = shufflevector <4 x float> %i.cl, <4 x float> %i.cb, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.cn = shufflevector <4 x float> %i.cm, <4 x float> %i.cc, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.co = shufflevector <4 x float> %i.aw, <4 x float> %i.br, <4 x i32> <i32 0, i32 1, i32 6, i32 6>
  %i.cp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cn, <4 x float> %i.co, <4 x float> %i.cj) ; 4 uses
  %i.cq = extractelement <4 x float> %i.cp, i64 0
  %i.cr = extractelement <4 x float> %i.cp, i64 1
  %i.cs = fneg float %i.cr                        ; 3 uses
  %i.ct = extractelement <4 x float> %i.cp, i64 2
  %i.cu = load float, ptr %i.u, align 8, !tbaa !20
  %15 = extractelement <4 x float> %i.cp, i64 3
  %i.cv = load float, ptr %i.x, align 8, !tbaa !20
  %i.cw = load float, ptr %i.y, align 8, !tbaa !20
  %16 = load float, ptr %i.aa, align 8, !tbaa !20
  %17 = fneg float %i.cq                          ; 3 uses
  %18 = tail call noundef float @llvm.fmuladd.f32(float %i.bz, float %i.ca, float %i.ct)
  %19 = tail call noundef float @llvm.fmuladd.f32(float %i.cu, float %i.ca, float %15)
  %20 = load <4 x float>, ptr %9, align 16        ; 2 uses
  %i.cx = load <4 x float>, ptr %i.z, align 16    ; 2 uses
  %i.cy = load <4 x float>, ptr %i.ab, align 16   ; 2 uses
  %21 = shufflevector <4 x float> %i.br, <4 x float> %20, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.cz = shufflevector <4 x float> %21, <4 x float> %i.cx, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.da = shufflevector <4 x float> %i.cz, <4 x float> %i.cy, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.db = insertelement <4 x float> poison, float %19, i64 0
  %22 = insertelement <4 x float> %i.db, float %17, i64 1
  %23 = shufflevector <4 x float> %22, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.dc = fmul <4 x float> %i.da, %23
  %i.dd = insertelement <4 x float> poison, float %18, i64 0
  %24 = shufflevector <4 x float> %i.dd, <4 x float> %20, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.de = shufflevector <4 x float> %24, <4 x float> %i.cx, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.df = shufflevector <4 x float> %i.de, <4 x float> %i.cy, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.dg = insertelement <4 x float> poison, float %i.bt, i64 0
  %25 = shufflevector <4 x float> %i.br, <4 x float> %i.dg, <4 x i32> <i32 2, i32 4, i32 4, i32 4>
  %i.dh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.df, <4 x float> %25, <4 x float> %i.dc)
  %i.di = load float, ptr %i.ad, align 8, !tbaa !20
  %i.dj = load float, ptr %i.v, align 16, !tbaa !20
  %i.dk = load float, ptr %i.w, align 4, !tbaa !20
  %i.dl = fmul float %i.bx, %i.dk
  %26 = tail call float @llvm.fmuladd.f32(float %i.dj, float %i.by, float %i.dl)
  %27 = tail call noundef float @llvm.fmuladd.f32(float %i.cv, float %i.ca, float %26)
  %i.dm = insertelement <4 x float> poison, float %27, i64 0
  %i.dn = insertelement <4 x float> %i.dm, float %i.cw, i64 1
  %i.do = insertelement <4 x float> %i.dn, float %16, i64 2
  %i.dp = insertelement <4 x float> %i.do, float %i.di, i64 3
  %i.dq = insertelement <4 x float> poison, float %i.cs, i64 0
  %28 = shufflevector <4 x float> %i.br, <4 x float> %i.dq, <4 x i32> <i32 1, i32 4, i32 4, i32 4>
  %29 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dp, <4 x float> %28, <4 x float> %i.dh) ; 4 uses
  %i.dr = extractelement <4 x float> %29, i64 2
  %30 = fmul float %i.dr, %17
  %i.ds = extractelement <4 x float> %29, i64 1
  %31 = tail call float @llvm.fmuladd.f32(float %i.ds, float %i.bt, float %30)
  %i.dt = extractelement <4 x float> %29, i64 3
  %i.du = tail call noundef float @llvm.fmuladd.f32(float %i.dt, float %i.cs, float %31)
  %i.dv = extractelement <4 x float> %29, i64 0
  %i.dw = fadd float %3, %i.dv
  %i.dx = fadd float %8, %i.dw
  %i.dy = fadd float %i.dx, %i.du
  %i.dz = fdiv float -1.000000e+00, %i.dy
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  store float %i.dz, ptr %i.ea, align 4, !tbaa !24
  %i.eb = load float, ptr %1, align 16, !tbaa !20
  %i.ec = load float, ptr %i.ae, align 4, !tbaa !20
  %i.ed = fmul float %.sroa.0189.4.vec.extract, %i.ec
  %i.ee = tail call float @llvm.fmuladd.f32(float %.sroa.0189.0.vec.extract, float %i.eb, float %i.ed)
  %i.ef = load float, ptr %i.af, align 8, !tbaa !20
  %i.eg = tail call noundef float @llvm.fmuladd.f32(float %i.ax, float %i.ef, float %i.ee)
  %i.eh = load float, ptr %2, align 16, !tbaa !20
  %i.ei = load float, ptr %i.ag, align 4, !tbaa !20
  %i.ej = fmul float %i.bx, %i.ei
  %i.ek = tail call float @llvm.fmuladd.f32(float %i.by, float %i.eh, float %i.ej)
  %i.el = load float, ptr %i.ah, align 8, !tbaa !20
  %i.em = tail call noundef float @llvm.fmuladd.f32(float %i.ca, float %i.el, float %i.ek)
  %i.en = fadd float %i.eg, %i.em
  %i.eo = load float, ptr %6, align 16, !tbaa !20
  %i.ep = load float, ptr %i.ai, align 4, !tbaa !20
  %i.eq = fmul float %i.ep, %i.bv
  %i.er = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.eo, float %i.eq)
  %i.es = load float, ptr %i.aj, align 8, !tbaa !20
  %i.et = tail call noundef float @llvm.fmuladd.f32(float %i.bw, float %i.es, float %i.er)
  %i.eu = fadd float %i.en, %i.et
  %i.ev = load float, ptr %7, align 16, !tbaa !20
  %i.ew = load float, ptr %i.ak, align 4, !tbaa !20
  %i.ex = fmul float %i.ew, %17
  %i.ey = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.ev, float %i.ex)
  %i.ez = load float, ptr %i.al, align 8, !tbaa !20
  %i.fa = tail call noundef float @llvm.fmuladd.f32(float %i.cs, float %i.ez, float %i.ey)
  %i.fb = fadd float %i.eu, %i.fa
  %i.fc = fmul float %i.fb, 0.000000e+00          ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv ; 2 uses
  store float %i.fc, ptr %i.fd, align 4, !tbaa !24
  %i.fe = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !20
  %i.fg = fadd float %12, %i.ff
  %i.fh = fmul float %13, %i.fg
  %i.fi = tail call float @llvm.fmuladd.f32(float %i.fh, float %i.f, float %i.fc)
  store float %i.fi, ptr %i.fd, align 4, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.fj = phi i64 [ 128, %bb.d ], [ 96, %bb.c ]
  %i.fk = getelementptr inbounds nuw i8, ptr %14, i64 %i.fj
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %indvars.iv
  store float 0.000000e+00, ptr %i.fl, align 4, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !183

bb.f:                                             ; preds = %.preheader
  %i.fm = fdiv nnan float 1.000000e+00, %i.an
  %i.fn = insertelement <4 x float> poison, float %i.fm, i64 0
  %i.fo = shufflevector <4 x float> %i.fn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fp = fmul <4 x float> %i.fo, %i.oe           ; 5 uses
  %i.fq = shufflevector <4 x float> %i.fp, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.fr = shufflevector <4 x float> %i.fp, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.fs = shufflevector <2 x float> %i.fr, <2 x float> %i.oh, <2 x i32> <i32 0, i32 3>
  %i.ft = load float, ptr %i.p, align 8, !tbaa !20 ; 6 uses
  %i.fu = tail call noundef float @llvm.fabs.f32(float %i.ft)
  %i.fv = fcmp ogt float %i.fu, f0x3F3504F3
  br i1 %i.fv, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.fw = load float, ptr %i.o, align 4, !tbaa !20 ; 3 uses
  %i.fx = fmul nnan float %i.ft, %i.ft
  %i.fy = tail call float @llvm.fmuladd.f32(float %i.fw, float %i.fw, float %i.fx) ; 2 uses
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.fy)
  %i.fz = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %i.ga = fneg float %i.ft
  %i.gb = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %i.fz, i64 0 ; 2 uses
  %i.gc = insertelement <4 x float> %i.gb, float %i.fw, i64 1
  %i.gd = shufflevector <4 x float> %i.gc, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.ge = shufflevector <4 x float> %i.gb, <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, <4 x i32> <i32 poison, i32 0, i32 6, i32 0>
  %i.gf = insertelement <4 x float> %i.ge, float %i.ga, i64 0
  %i.gg = fmul <4 x float> %i.gd, %i.gf           ; 3 uses
  %i.gh = extractelement <4 x float> %i.gg, i64 0 ; 2 uses
  %i.gi = fmul float %i.fy, %i.fz
  %i.gj = load float, ptr %i.h, align 16, !tbaa !20 ; 2 uses
  %i.gk = fneg float %i.gj
  %i.gl = extractelement <4 x float> %i.gg, i64 1
  %i.gm = fmul float %i.gl, %i.gk
  %i.gn = fmul float %i.gh, %i.gj
  br label %_Z13b3PlaneSpace1RK9b3Vector3PS_S2_.exit

bb.h:                                             ; preds = %bb.f
  %i.go = load float, ptr %i.h, align 16, !tbaa !20 ; 3 uses
  %i.gp = load float, ptr %i.o, align 4, !tbaa !20 ; 3 uses
  %i.gq = fmul float %i.gp, %i.gp
  %i.gr = tail call float @llvm.fmuladd.f32(float %i.go, float %i.go, float %i.gq) ; 2 uses
  %sqrt43.i = tail call float @llvm.sqrt.f32(float %i.gr)
  %i.gs = fdiv float 1.000000e+00, %sqrt43.i      ; 3 uses
  %i.gt = fneg float %i.gp
  %i.gu = fmul float %i.gs, %i.gt                 ; 3 uses
  %i.gv = fmul float %i.go, %i.gs                 ; 3 uses
  %i.gw = fneg float %i.ft
  %i.gx = fmul float %i.gv, %i.gw
  %i.gy = fmul float %i.ft, %i.gu
  %i.gz = fmul float %i.gr, %i.gs
  %i.ha = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float 0.000000e+00>, float %i.gv, i64 0
  %i.hb = insertelement <4 x float> %i.ha, float %i.gu, i64 2
  br label %_Z13b3PlaneSpace1RK9b3Vector3PS_S2_.exit

_Z13b3PlaneSpace1RK9b3Vector3PS_S2_.exit:         ; preds = %bb.g, %bb.h
  %.sroa.14.0 = phi float [ %i.gm, %bb.g ], [ %i.gy, %bb.h ] ; 2 uses
  %.sroa.11227.0 = phi float [ %i.gi, %bb.g ], [ %i.gx, %bb.h ] ; 2 uses
  %.sroa.5.0 = phi float [ %i.gh, %bb.g ], [ %i.gv, %bb.h ]
  %.sroa.0.0 = phi float [ 0.000000e+00, %bb.g ], [ %i.gu, %bb.h ]
  %.sink.i = phi float [ %i.gn, %bb.g ], [ %i.gz, %bb.h ] ; 2 uses
  %i.hc = phi <4 x float> [ %i.gg, %bb.g ], [ %i.hb, %bb.h ] ; 2 uses
  %i.hd = load float, ptr %i.n, align 8, !tbaa !20
  %i.he = load float, ptr %5, align 16, !tbaa !20
  %i.hf = extractelement <4 x float> %i.fp, i64 0
  %i.hg = fsub float %i.hf, %i.he                 ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %14, i64 152
  %i.hi = fneg <4 x float> %i.hc                  ; 2 uses
  %i.hj = shufflevector <4 x float> %i.hi, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.hk = load <2 x float>, ptr %0, align 16, !tbaa !20
  %i.hl = load <2 x float>, ptr %i.m, align 4, !tbaa !20 ; 2 uses
  %i.hm = shufflevector <2 x float> %i.hk, <2 x float> %i.hl, <4 x i32> <i32 0, i32 1, i32 poison, i32 2>
  %i.hn = insertelement <4 x float> %i.hm, float %i.hd, i64 2 ; 2 uses
  %i.ho = fsub <4 x float> %i.fp, %i.hn           ; 6 uses
  %i.hp = shufflevector <4 x float> %i.fp, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.hq = shufflevector <2 x float> %i.hl, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.hr = shufflevector <4 x float> %i.hn, <4 x float> %i.hq, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.hs = fsub <4 x float> %i.hp, %i.hr           ; 3 uses
  %i.ht = shufflevector <4 x float> %i.hs, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 3>
  %i.hu = fmul <4 x float> %i.ht, %i.hj
  %i.hv = shufflevector <4 x float> %i.hu, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 3>
  %i.hw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ho, <4 x float> %i.hc, <4 x float> %i.hv) ; 7 uses
  %i.hx = extractelement <4 x float> %i.hi, i64 1
  %i.hy = fmul float %i.hg, %i.hx
  %i.hz = extractelement <4 x float> %i.hs, i64 3
  %i.ia = tail call float @llvm.fmuladd.f32(float %i.hz, float %.sroa.0.0, float %i.hy)
  %shift = shufflevector <4 x float> %i.ho, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop = fmul <4 x float> %shift, %i.hj
  %i.ib = extractelement <4 x float> %foldExtExtBinop, i64 2
  %i.ic = tail call float @llvm.fmuladd.f32(float %i.hg, float %.sroa.5.0, float %i.ib)
  %i.id = extractelement <4 x float> %i.hw, i64 3
  %i.ie = fneg float %i.id
  %i.if = fneg float %i.ic
  %i.ig = extractelement <4 x float> %i.hw, i64 2 ; 3 uses
  %i.ih = extractelement <4 x float> %i.hw, i64 1 ; 3 uses
  %i.ii = load float, ptr %i.r, align 8, !tbaa !20
  %i.ij = extractelement <4 x float> %i.hw, i64 0 ; 3 uses
  %i.ik = load float, ptr %i.s, align 16, !tbaa !20
  %i.il = load float, ptr %i.t, align 4, !tbaa !20
  %i.im = fmul float %i.ig, %i.il
  %i.in = load float, ptr %i.u, align 8, !tbaa !20
  %i.io = load float, ptr %i.x, align 8, !tbaa !20
  %i.ip = load float, ptr %i.y, align 8, !tbaa !20
  %i.iq = load float, ptr %i.aa, align 8, !tbaa !20
  %i.ir = load float, ptr %4, align 16, !tbaa !20
  %i.is = load float, ptr %i.q, align 4, !tbaa !20
  %i.it = fmul float %i.ig, %i.is
  %i.iu = tail call float @llvm.fmuladd.f32(float %i.ir, float %i.ih, float %i.it)
  %i.iv = tail call noundef float @llvm.fmuladd.f32(float %i.ii, float %i.ij, float %i.iu)
  %i.iw = tail call float @llvm.fmuladd.f32(float %i.ik, float %i.ih, float %i.im)
  %i.ix = tail call noundef float @llvm.fmuladd.f32(float %i.in, float %i.ij, float %i.iw)
  %i.iy = load <4 x float>, ptr %9, align 16      ; 2 uses
  %i.iz = load <4 x float>, ptr %i.z, align 16    ; 2 uses
  %i.ja = load <4 x float>, ptr %i.ab, align 16   ; 2 uses
  %i.jb = shufflevector <4 x float> %i.hw, <4 x float> %i.iy, <4 x i32> <i32 2, i32 5, i32 poison, i32 poison>
  %i.jc = shufflevector <4 x float> %i.jb, <4 x float> %i.iz, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.jd = shufflevector <4 x float> %i.jc, <4 x float> %i.ja, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.je = insertelement <4 x float> poison, float %i.ix, i64 0
  %i.jf = insertelement <4 x float> poison, float %i.iv, i64 0
  %i.jg = shufflevector <4 x float> %i.jf, <4 x float> %i.iy, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.jh = shufflevector <4 x float> %i.jg, <4 x float> %i.iz, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ji = shufflevector <4 x float> %i.jh, <4 x float> %i.ja, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.jj = insertelement <4 x float> poison, float %i.ie, i64 0 ; 2 uses
  %i.jk = shufflevector <4 x float> %i.hw, <4 x float> %i.jj, <4 x i32> <i32 1, i32 4, i32 4, i32 4>
  %i.jl = load float, ptr %i.ad, align 8, !tbaa !20
  %i.jm = load float, ptr %i.v, align 16, !tbaa !20
  %i.jn = load float, ptr %i.w, align 4, !tbaa !20
  %i.jo = fmul float %i.ig, %i.jn
  %i.jp = tail call float @llvm.fmuladd.f32(float %i.jm, float %i.ih, float %i.jo)
  %i.jq = tail call noundef float @llvm.fmuladd.f32(float %i.io, float %i.ij, float %i.jp)
  %i.jr = insertelement <4 x float> poison, float %i.jq, i64 0
  %i.js = insertelement <4 x float> %i.jr, float %i.ip, i64 1
  %i.jt = insertelement <4 x float> %i.js, float %i.iq, i64 2
  %i.ju = insertelement <4 x float> %i.jt, float %i.jl, i64 3
  %i.jv = insertelement <4 x float> poison, float %i.if, i64 0 ; 2 uses
  %i.jw = shufflevector <4 x float> %i.hw, <4 x float> %i.jv, <4 x i32> <i32 0, i32 4, i32 4, i32 4>
  store float 0.000000e+00, ptr %i.hh, align 8, !tbaa !24
  %i.jx = insertelement <4 x float> poison, float %i.ia, i64 0
  %i.jy = insertelement <4 x float> %i.jx, float %.sroa.11227.0, i64 1
  %i.jz = insertelement <4 x float> %i.jy, float %.sroa.14.0, i64 2
  %i.ka = insertelement <4 x float> %i.jz, float %.sink.i, i64 3 ; 2 uses
  %i.kb = fneg <4 x float> %i.ka                  ; 3 uses
  %i.kc = shufflevector <4 x float> %i.je, <4 x float> %i.kb, <4 x i32> <i32 0, i32 4, i32 4, i32 4>
  %i.kd = fmul <4 x float> %i.jd, %i.kc
  %i.ke = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ji, <4 x float> %i.jk, <4 x float> %i.kd)
  %i.kf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ju, <4 x float> %i.jw, <4 x float> %i.ke) ; 4 uses
  %i.kg = shufflevector <4 x float> %i.kf, <4 x float> %i.ho, <4 x i32> <i32 2, i32 5, i32 6, i32 4>
  %i.kh = fmul <4 x float> %i.kg, %i.kb
  %i.ki = shufflevector <4 x float> %i.kf, <4 x float> %i.ho, <4 x i32> <i32 1, i32 4, i32 5, i32 6>
  %i.kj = shufflevector <4 x float> %i.jj, <4 x float> %i.ka, <4 x i32> <i32 0, i32 6, i32 7, i32 5>
  %i.kk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ki, <4 x float> %i.kj, <4 x float> %i.kh) ; 8 uses
  %i.kl = extractelement <4 x float> %i.kf, i64 0
  %i.km = fadd float %3, %i.kl
  %i.kn = fadd float %8, %i.km
  %i.ko = shufflevector <4 x float> %i.hs, <4 x float> %i.ho, <4 x i32> <i32 poison, i32 3, i32 poison, i32 7>
  %i.kp = insertelement <4 x float> %i.ko, float 1.000000e+00, i64 0
  %i.kq = insertelement <4 x float> %i.kp, float %i.hg, i64 2 ; 2 uses
  %i.kr = shufflevector <4 x float> %i.kk, <4 x float> %i.kb, <4 x i32> <i32 0, i32 6, i32 7, i32 5>
  %i.ks = fmul <4 x float> %i.kq, %i.kr
  %i.kt = shufflevector <4 x float> %i.kf, <4 x float> %i.ho, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.ku = shufflevector <4 x float> %i.kt, <4 x float> %i.kq, <4 x i32> <i32 0, i32 1, i32 5, i32 6>
  %i.kv = insertelement <4 x float> %i.jv, float %.sink.i, i64 1
  %i.kw = insertelement <4 x float> %i.kv, float %.sroa.11227.0, i64 2
  %i.kx = insertelement <4 x float> %i.kw, float %.sroa.14.0, i64 3
  %i.ky = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ku, <4 x float> %i.kx, <4 x float> %i.ks) ; 4 uses
  %i.kz = extractelement <4 x float> %i.ky, i64 0
  %i.la = fadd float %i.kn, %i.kz
  %i.lb = fdiv float -1.000000e+00, %i.la
  store float %i.lb, ptr %i.g, align 16, !tbaa !24
  %i.lc = extractelement <4 x float> %i.ky, i64 1
  %i.ld = fneg float %i.lc                        ; 3 uses
  %i.le = extractelement <4 x float> %i.ky, i64 2
  %i.lf = fneg float %i.le                        ; 3 uses
  %i.lg = extractelement <4 x float> %i.ky, i64 3
  %i.lh = fneg float %i.lg                        ; 3 uses
  %i.li = extractelement <4 x float> %i.kk, i64 3 ; 3 uses
  %i.lj = extractelement <4 x float> %i.kk, i64 2 ; 2 uses
  %i.lk = load float, ptr %i.r, align 8, !tbaa !20
end_hunk_0

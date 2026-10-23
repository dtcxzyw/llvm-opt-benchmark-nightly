Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3Solver?download=true
inline.NumInlined: 615
inline.NumDeleted: 215
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 29
begin_hunk_0_@llvm.memcpy.p0.p0.i64

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef float @_Z10calcRelVelRK9b3Vector3S1_S1_S1_S1_S1_S1_S1_(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %5, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %6, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %7) local_unnamed_addr #4 {
bb.a:
  %i.a = load <3 x float>, ptr %0, align 16
  %i.b = shufflevector <3 x float> %i.a, <3 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.c = load <3 x float>, ptr %4, align 16
  %i.d = shufflevector <3 x float> %i.c, <3 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
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
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %14, ptr noundef nonnull align 16 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !22
  %i.i = getelementptr inbounds nuw i8, ptr %14, i64 12
  store float f0x3F333333, ptr %i.i, align 4, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 76 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %14, i64 96
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 68 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 72 ; 3 uses
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
  br i1 %i.ao, label %.preheader.a, label %bb.i

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
  %i.cv = extractelement <4 x float> %i.cp, i64 3
  %i.cw = load float, ptr %i.x, align 8, !tbaa !20
  %i.cx = fneg float %i.cq                        ; 3 uses
  %i.cy = tail call noundef float @llvm.fmuladd.f32(float %i.bz, float %i.ca, float %i.ct)
  %i.cz = tail call noundef float @llvm.fmuladd.f32(float %i.cu, float %i.ca, float %i.cv)
  %i.da = load <4 x float>, ptr %9, align 16      ; 2 uses
  %i.db = load <4 x float>, ptr %i.z, align 16    ; 2 uses
  %i.dc = load <4 x float>, ptr %i.ab, align 16   ; 2 uses
  %i.dd = shufflevector <4 x float> %i.br, <4 x float> %i.da, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.de = shufflevector <4 x float> %i.dd, <4 x float> %i.db, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.df = shufflevector <4 x float> %i.de, <4 x float> %i.dc, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.dg = insertelement <4 x float> poison, float %i.cz, i64 0
  %i.dh = insertelement <4 x float> %i.dg, float %i.cx, i64 1
  %i.di = shufflevector <4 x float> %i.dh, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.dj = fmul <4 x float> %i.df, %i.di
  %i.dk = insertelement <4 x float> poison, float %i.cy, i64 0
  %i.dl = shufflevector <4 x float> %i.dk, <4 x float> %i.da, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.dm = shufflevector <4 x float> %i.dl, <4 x float> %i.db, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.dn = shufflevector <4 x float> %i.dm, <4 x float> %i.dc, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.do = insertelement <4 x float> poison, float %i.bt, i64 0
  %i.dp = shufflevector <4 x float> %i.br, <4 x float> %i.do, <4 x i32> <i32 2, i32 4, i32 4, i32 4>
  %i.dq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dn, <4 x float> %i.dp, <4 x float> %i.dj)
  %i.dr = load float, ptr %i.v, align 16, !tbaa !20
  %i.ds = load float, ptr %i.w, align 4, !tbaa !20
  %i.dt = fmul float %i.bx, %i.ds
  %i.du = tail call float @llvm.fmuladd.f32(float %i.dr, float %i.by, float %i.dt)
  %i.dv = tail call noundef float @llvm.fmuladd.f32(float %i.cw, float %i.ca, float %i.du)
  %i.dw = load float, ptr %i.y, align 8, !tbaa !20
  %i.dx = load float, ptr %i.aa, align 8, !tbaa !20
  %i.dy = load float, ptr %i.ad, align 8, !tbaa !20
  %i.dz = insertelement <4 x float> poison, float %i.dv, i64 0
  %i.ea = insertelement <4 x float> %i.dz, float %i.dw, i64 1
  %i.eb = insertelement <4 x float> %i.ea, float %i.dx, i64 2
  %i.ec = insertelement <4 x float> %i.eb, float %i.dy, i64 3
  %i.ed = insertelement <4 x float> poison, float %i.cs, i64 0
  %i.ee = shufflevector <4 x float> %i.br, <4 x float> %i.ed, <4 x i32> <i32 1, i32 4, i32 4, i32 4>
  %i.ef = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ec, <4 x float> %i.ee, <4 x float> %i.dq) ; 4 uses
  %i.eg = extractelement <4 x float> %i.ef, i64 2
  %i.eh = fmul float %i.eg, %i.cx
  %i.ei = extractelement <4 x float> %i.ef, i64 1
  %i.ej = tail call float @llvm.fmuladd.f32(float %i.ei, float %i.bt, float %i.eh)
  %i.ek = extractelement <4 x float> %i.ef, i64 3
  %i.el = tail call noundef float @llvm.fmuladd.f32(float %i.ek, float %i.cs, float %i.ej)
  %i.em = extractelement <4 x float> %i.ef, i64 0
  %i.en = fadd float %3, %i.em
  %i.eo = fadd float %8, %i.en
  %i.ep = fadd float %i.eo, %i.el
  %i.eq = fdiv float -1.000000e+00, %i.ep
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  store float %i.eq, ptr %i.er, align 4, !tbaa !24
  %i.es = load float, ptr %1, align 16, !tbaa !20
  %i.et = load float, ptr %i.ae, align 4, !tbaa !20
  %i.eu = fmul float %.sroa.0189.4.vec.extract, %i.et
  %i.ev = tail call float @llvm.fmuladd.f32(float %.sroa.0189.0.vec.extract, float %i.es, float %i.eu)
  %i.ew = load float, ptr %i.af, align 8, !tbaa !20
  %i.ex = tail call noundef float @llvm.fmuladd.f32(float %i.ax, float %i.ew, float %i.ev)
  %i.ey = load float, ptr %2, align 16, !tbaa !20
  %i.ez = load float, ptr %i.ag, align 4, !tbaa !20
  %i.fa = fmul float %i.bx, %i.ez
  %i.fb = tail call float @llvm.fmuladd.f32(float %i.by, float %i.ey, float %i.fa)
  %i.fc = load float, ptr %i.ah, align 8, !tbaa !20
  %i.fd = tail call noundef float @llvm.fmuladd.f32(float %i.ca, float %i.fc, float %i.fb)
  %i.fe = fadd float %i.ex, %i.fd
  %i.ff = load float, ptr %6, align 16, !tbaa !20
  %i.fg = load float, ptr %i.ai, align 4, !tbaa !20
  %i.fh = fmul float %i.fg, %i.bv
  %i.fi = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.ff, float %i.fh)
  %i.fj = load float, ptr %i.aj, align 8, !tbaa !20
  %i.fk = tail call noundef float @llvm.fmuladd.f32(float %i.bw, float %i.fj, float %i.fi)
  %i.fl = fadd float %i.fe, %i.fk
  %i.fm = load float, ptr %7, align 16, !tbaa !20
  %i.fn = load float, ptr %i.ak, align 4, !tbaa !20
  %i.fo = fmul float %i.fn, %i.cx
  %i.fp = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.fm, float %i.fo)
  %i.fq = load float, ptr %i.al, align 8, !tbaa !20
  %i.fr = tail call noundef float @llvm.fmuladd.f32(float %i.cs, float %i.fq, float %i.fp)
  %i.fs = fadd float %i.fl, %i.fr
  %i.ft = fmul float %i.fs, 0.000000e+00          ; 2 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv ; 2 uses
  store float %i.ft, ptr %i.fu, align 4, !tbaa !24
  %i.fv = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !20
  %i.fx = fadd float %12, %i.fw
  %i.fy = fmul float %13, %i.fx
  %i.fz = tail call float @llvm.fmuladd.f32(float %i.fy, float %i.f, float %i.ft)
  store float %i.fz, ptr %i.fu, align 4, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.ga = phi i64 [ 128, %bb.d ], [ 96, %bb.c ]
  %i.gb = getelementptr inbounds nuw i8, ptr %14, i64 %i.ga
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %indvars.iv
  store float 0.000000e+00, ptr %i.gc, align 4, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !183

bb.f:                                             ; preds = %.preheader.a
  %i.gd = fdiv nnan float 1.000000e+00, %i.an
  %i.ge = insertelement <4 x float> poison, float %i.gd, i64 0
  %i.gf = shufflevector <4 x float> %i.ge, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gg = fmul <4 x float> %i.gf, %19             ; 5 uses
  %i.gh = shufflevector <4 x float> %i.gg, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.gi = shufflevector <4 x float> %i.gg, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.gj = shufflevector <2 x float> %i.gi, <2 x float> %22, <2 x i32> <i32 0, i32 3>
  %i.gk = load float, ptr %i.p, align 8, !tbaa !20 ; 3 uses
  %i.gl = tail call noundef float @llvm.fabs.f32(float %i.gk)
  %i.gm = fcmp ogt float %i.gl, f0x3F3504F3
  br i1 %i.gm, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.gn = load float, ptr %i.o, align 4, !tbaa !20 ; 2 uses
  %i.go = fmul nnan float %i.gk, %i.gk
  %i.gp = tail call float @llvm.fmuladd.f32(float %i.gn, float %i.gn, float %i.go) ; 2 uses
  %i.gq = tail call noundef float @sqrtf(float noundef %i.gp) #23
  %i.gr = fdiv float 1.000000e+00, %i.gq          ; 2 uses
  %i.gs = load float, ptr %i.p, align 8, !tbaa !20
  %i.gt = fneg float %i.gs
  %i.gu = load float, ptr %i.o, align 4, !tbaa !20
  %i.gv = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %i.gr, i64 0 ; 2 uses
  %i.gw = insertelement <4 x float> %i.gv, float %i.gu, i64 1
  %i.gx = shufflevector <4 x float> %i.gw, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.gy = shufflevector <4 x float> %i.gv, <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, <4 x i32> <i32 poison, i32 0, i32 6, i32 0>
  %i.gz = insertelement <4 x float> %i.gy, float %i.gt, i64 0
  %i.ha = fmul <4 x float> %i.gx, %i.gz           ; 3 uses
  %i.hb = extractelement <4 x float> %i.ha, i64 0 ; 2 uses
  %i.hc = fmul float %i.gp, %i.gr
  %i.hd = load float, ptr %i.h, align 16, !tbaa !20 ; 2 uses
  %i.he = fneg float %i.hd
  %i.hf = extractelement <4 x float> %i.ha, i64 1
  %i.hg = fmul float %i.hf, %i.he
  %i.hh = fmul float %i.hb, %i.hd
  br label %_Z13b3PlaneSpace1RK9b3Vector3PS_S2_.exit

bb.h:                                             ; preds = %bb.f
  %i.hi = load float, ptr %i.h, align 16, !tbaa !20 ; 2 uses
  %i.hj = load float, ptr %i.o, align 4, !tbaa !20 ; 2 uses
  %i.hk = fmul float %i.hj, %i.hj
  %i.hl = tail call float @llvm.fmuladd.f32(float %i.hi, float %i.hi, float %i.hk) ; 2 uses
  %i.hm = tail call noundef float @sqrtf(float noundef %i.hl) #23
  %i.hn = fdiv float 1.000000e+00, %i.hm          ; 3 uses
  %i.ho = load float, ptr %i.o, align 4, !tbaa !20
  %i.hp = fneg float %i.ho
  %i.hq = fmul float %i.hn, %i.hp                 ; 3 uses
  %i.hr = load float, ptr %i.h, align 16, !tbaa !20
  %i.hs = fmul float %i.hn, %i.hr                 ; 3 uses
  %i.ht = load float, ptr %i.p, align 8, !tbaa !20 ; 2 uses
  %i.hu = fneg float %i.ht
  %i.hv = fmul float %i.hs, %i.hu
  %i.hw = fmul float %i.hq, %i.ht
  %i.hx = fmul float %i.hl, %i.hn
  %i.hy = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float 0.000000e+00>, float %i.hs, i64 0
  %i.hz = insertelement <4 x float> %i.hy, float %i.hq, i64 2
  br label %_Z13b3PlaneSpace1RK9b3Vector3PS_S2_.exit

_Z13b3PlaneSpace1RK9b3Vector3PS_S2_.exit:         ; preds = %bb.g, %bb.h
  %.sroa.14.0 = phi float [ %i.hg, %bb.g ], [ %i.hw, %bb.h ] ; 2 uses
  %.sroa.11227.0 = phi float [ %i.hc, %bb.g ], [ %i.hv, %bb.h ] ; 2 uses
  %.sroa.5.0 = phi float [ %i.hb, %bb.g ], [ %i.hs, %bb.h ]
  %.sroa.0.0 = phi float [ 0.000000e+00, %bb.g ], [ %i.hq, %bb.h ]
  %.sink.i = phi float [ %i.hh, %bb.g ], [ %i.hx, %bb.h ] ; 2 uses
  %i.ia = phi <4 x float> [ %i.ha, %bb.g ], [ %i.hz, %bb.h ] ; 2 uses
  %i.ib = load float, ptr %i.n, align 8, !tbaa !20
  %i.ic = load float, ptr %5, align 16, !tbaa !20
  %i.id = extractelement <4 x float> %i.gg, i64 0
  %i.ie = fsub float %i.id, %i.ic                 ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %14, i64 152
  %i.ig = fneg <4 x float> %i.ia                  ; 2 uses
  %i.ih = shufflevector <4 x float> %i.ig, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.ii = load <2 x float>, ptr %0, align 16, !tbaa !20
  %i.ij = load <2 x float>, ptr %i.m, align 4, !tbaa !20 ; 2 uses
  %i.ik = shufflevector <2 x float> %i.ii, <2 x float> %i.ij, <4 x i32> <i32 0, i32 1, i32 poison, i32 2>
  %i.il = insertelement <4 x float> %i.ik, float %i.ib, i64 2 ; 2 uses
  %i.im = fsub <4 x float> %i.gg, %i.il           ; 6 uses
  %i.in = shufflevector <4 x float> %i.gg, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.io = shufflevector <2 x float> %i.ij, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ip = shufflevector <4 x float> %i.il, <4 x float> %i.io, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.iq = fsub <4 x float> %i.in, %i.ip           ; 3 uses
  %i.ir = shufflevector <4 x float> %i.iq, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 3>
  %i.is = fmul <4 x float> %i.ir, %i.ih
  %i.it = shufflevector <4 x float> %i.is, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 3>
  %i.iu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.im, <4 x float> %i.ia, <4 x float> %i.it) ; 7 uses
  %i.iv = extractelement <4 x float> %i.ig, i64 1
  %i.iw = fmul float %i.ie, %i.iv
  %i.ix = extractelement <4 x float> %i.iq, i64 3
  %i.iy = tail call float @llvm.fmuladd.f32(float %i.ix, float %.sroa.0.0, float %i.iw)
  %shift = shufflevector <4 x float> %i.im, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop = fmul <4 x float> %shift, %i.ih
  %i.iz = extractelement <4 x float> %foldExtExtBinop, i64 2
  %i.ja = tail call float @llvm.fmuladd.f32(float %i.ie, float %.sroa.5.0, float %i.iz)
  %i.jb = extractelement <4 x float> %i.iu, i64 3
  %i.jc = fneg float %i.jb
  %i.jd = fneg float %i.ja
  %i.je = extractelement <4 x float> %i.iu, i64 2 ; 3 uses
  %i.jf = extractelement <4 x float> %i.iu, i64 1 ; 3 uses
  %i.jg = load float, ptr %i.r, align 8, !tbaa !20
  %i.jh = extractelement <4 x float> %i.iu, i64 0 ; 3 uses
  %i.ji = load float, ptr %i.s, align 16, !tbaa !20
  %i.jj = load float, ptr %i.t, align 4, !tbaa !20
  %i.jk = fmul float %i.je, %i.jj
  %i.jl = load float, ptr %i.u, align 8, !tbaa !20
  %i.jm = load float, ptr %i.x, align 8, !tbaa !20
  %i.jn = load float, ptr %4, align 16, !tbaa !20
  %i.jo = load float, ptr %i.q, align 4, !tbaa !20
  %i.jp = fmul float %i.je, %i.jo
  %i.jq = tail call float @llvm.fmuladd.f32(float %i.jn, float %i.jf, float %i.jp)
  %i.jr = tail call noundef float @llvm.fmuladd.f32(float %i.jg, float %i.jh, float %i.jq)
  %i.js = tail call float @llvm.fmuladd.f32(float %i.ji, float %i.jf, float %i.jk)
  %i.jt = tail call noundef float @llvm.fmuladd.f32(float %i.jl, float %i.jh, float %i.js)
  %i.ju = load <4 x float>, ptr %9, align 16      ; 2 uses
  %i.jv = load <4 x float>, ptr %i.z, align 16    ; 2 uses
  %i.jw = load <4 x float>, ptr %i.ab, align 16   ; 2 uses
  %i.jx = shufflevector <4 x float> %i.iu, <4 x float> %i.ju, <4 x i32> <i32 2, i32 5, i32 poison, i32 poison>
  %i.jy = shufflevector <4 x float> %i.jx, <4 x float> %i.jv, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.jz = shufflevector <4 x float> %i.jy, <4 x float> %i.jw, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ka = insertelement <4 x float> poison, float %i.jt, i64 0
  %i.kb = insertelement <4 x float> poison, float %i.jr, i64 0
  %i.kc = shufflevector <4 x float> %i.kb, <4 x float> %i.ju, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.kd = shufflevector <4 x float> %i.kc, <4 x float> %i.jv, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ke = shufflevector <4 x float> %i.kd, <4 x float> %i.jw, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.kf = insertelement <4 x float> poison, float %i.jc, i64 0 ; 2 uses
  %i.kg = shufflevector <4 x float> %i.iu, <4 x float> %i.kf, <4 x i32> <i32 1, i32 4, i32 4, i32 4>
  %i.kh = load float, ptr %i.v, align 16, !tbaa !20
  %i.ki = load float, ptr %i.w, align 4, !tbaa !20
  %i.kj = fmul float %i.je, %i.ki
  %i.kk = tail call float @llvm.fmuladd.f32(float %i.kh, float %i.jf, float %i.kj)
  %i.kl = tail call noundef float @llvm.fmuladd.f32(float %i.jm, float %i.jh, float %i.kk)
  %i.km = load float, ptr %i.y, align 8, !tbaa !20
  %i.kn = load float, ptr %i.aa, align 8, !tbaa !20
  %i.ko = load float, ptr %i.ad, align 8, !tbaa !20
  %i.kp = insertelement <4 x float> poison, float %i.kl, i64 0
  %i.kq = insertelement <4 x float> %i.kp, float %i.km, i64 1
  %i.kr = insertelement <4 x float> %i.kq, float %i.kn, i64 2
  %i.ks = insertelement <4 x float> %i.kr, float %i.ko, i64 3
  %i.kt = insertelement <4 x float> poison, float %i.jd, i64 0 ; 2 uses
  %i.ku = shufflevector <4 x float> %i.iu, <4 x float> %i.kt, <4 x i32> <i32 0, i32 4, i32 4, i32 4>
  store float 0.000000e+00, ptr %i.if, align 8, !tbaa !24
  %i.kv = insertelement <4 x float> poison, float %i.iy, i64 0
  %i.kw = insertelement <4 x float> %i.kv, float %.sroa.11227.0, i64 1
  %i.kx = insertelement <4 x float> %i.kw, float %.sroa.14.0, i64 2
  %i.ky = insertelement <4 x float> %i.kx, float %.sink.i, i64 3 ; 2 uses
  %i.kz = fneg <4 x float> %i.ky                  ; 3 uses
  %i.la = shufflevector <4 x float> %i.ka, <4 x float> %i.kz, <4 x i32> <i32 0, i32 4, i32 4, i32 4>
  %i.lb = fmul <4 x float> %i.jz, %i.la
  %i.lc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ke, <4 x float> %i.kg, <4 x float> %i.lb)
  %i.ld = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ks, <4 x float> %i.ku, <4 x float> %i.lc) ; 4 uses
  %i.le = shufflevector <4 x float> %i.ld, <4 x float> %i.im, <4 x i32> <i32 2, i32 5, i32 6, i32 4>
  %i.lf = fmul <4 x float> %i.le, %i.kz
  %i.lg = shufflevector <4 x float> %i.ld, <4 x float> %i.im, <4 x i32> <i32 1, i32 4, i32 5, i32 6>
  %i.lh = shufflevector <4 x float> %i.kf, <4 x float> %i.ky, <4 x i32> <i32 0, i32 6, i32 7, i32 5>
  %i.li = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lg, <4 x float> %i.lh, <4 x float> %i.lf) ; 8 uses
  %i.lj = extractelement <4 x float> %i.ld, i64 0
  %i.lk = fadd float %3, %i.lj
  %i.ll = fadd float %8, %i.lk
  %i.lm = shufflevector <4 x float> %i.iq, <4 x float> %i.im, <4 x i32> <i32 poison, i32 3, i32 poison, i32 7>
  %i.ln = insertelement <4 x float> %i.lm, float 1.000000e+00, i64 0
  %i.lo = insertelement <4 x float> %i.ln, float %i.ie, i64 2 ; 2 uses
  %i.lp = shufflevector <4 x float> %i.li, <4 x float> %i.kz, <4 x i32> <i32 0, i32 6, i32 7, i32 5>
  %i.lq = fmul <4 x float> %i.lo, %i.lp
  %i.lr = shufflevector <4 x float> %i.ld, <4 x float> %i.im, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.ls = shufflevector <4 x float> %i.lr, <4 x float> %i.lo, <4 x i32> <i32 0, i32 1, i32 5, i32 6>
  %i.lt = insertelement <4 x float> %i.kt, float %.sink.i, i64 1
  %i.lu = insertelement <4 x float> %i.lt, float %.sroa.11227.0, i64 2
  %i.lv = insertelement <4 x float> %i.lu, float %.sroa.14.0, i64 3
  %i.lw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ls, <4 x float> %i.lv, <4 x float> %i.lq) ; 4 uses
  %i.lx = extractelement <4 x float> %i.lw, i64 0
  %i.ly = fadd float %i.ll, %i.lx
  %i.lz = fdiv float -1.000000e+00, %i.ly
  store float %i.lz, ptr %i.g, align 16, !tbaa !24
  %i.ma = extractelement <4 x float> %i.lw, i64 1
  %i.mb = fneg float %i.ma                        ; 3 uses
  %i.mc = extractelement <4 x float> %i.lw, i64 2
  %i.md = fneg float %i.mc                        ; 3 uses
  %i.me = extractelement <4 x float> %i.lw, i64 3
  %i.mf = fneg float %i.me                        ; 3 uses
  %i.mg = extractelement <4 x float> %i.li, i64 3 ; 3 uses
  %i.mh = extractelement <4 x float> %i.li, i64 2 ; 2 uses
  %i.mi = load float, ptr %i.r, align 8, !tbaa !20
  %i.mj = extractelement <4 x float> %i.li, i64 1
  %i.mk = load float, ptr %i.s, align 16, !tbaa !20
  %i.ml = load float, ptr %i.t, align 4, !tbaa !20
  %i.mm = fmul float %i.mg, %i.ml
  %i.mn = load float, ptr %i.u, align 8, !tbaa !20
  %i.mo = load float, ptr %i.y, align 8, !tbaa !20
  %i.mp = load float, ptr %4, align 16, !tbaa !20
  %i.mq = load float, ptr %i.q, align 4, !tbaa !20
  %i.mr = fmul float %i.mg, %i.mq
  %i.ms = tail call float @llvm.fmuladd.f32(float %i.mp, float %i.mh, float %i.mr)
  %i.mt = tail call noundef float @llvm.fmuladd.f32(float %i.mi, float %i.mj, float %i.ms)
  %i.mu = tail call float @llvm.fmuladd.f32(float %i.mk, float %i.mh, float %i.mm)
  %i.mv = load <2 x float>, ptr %i.v, align 16, !tbaa !20
  %i.mw = load float, ptr %i.w, align 4, !tbaa !20
  %i.mx = fmul float %i.mg, %i.mw
  %i.my = insertelement <2 x float> %i.mv, float %i.mn, i64 1
  %i.mz = shufflevector <4 x float> %i.li, <4 x float> poison, <2 x i32> <i32 2, i32 1>
  %i.na = insertelement <2 x float> poison, float %i.mx, i64 0
  %i.nb = insertelement <2 x float> %i.na, float %i.mu, i64 1
  %i.nc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.my, <2 x float> %i.mz, <2 x float> %i.nb)
  %i.nd = load float, ptr %i.x, align 8, !tbaa !20
  %i.ne = load <4 x float>, ptr %9, align 16      ; 2 uses
  %i.nf = load <4 x float>, ptr %i.z, align 16    ; 2 uses
  %i.ng = shufflevector <4 x float> %i.li, <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 3, i32 poison, i32 poison>
  %i.nh = shufflevector <4 x float> %i.ng, <4 x float> %i.ne, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.ni = shufflevector <4 x float> %i.nh, <4 x float> %i.nf, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.nj = insertelement <4 x float> poison, float %i.md, i64 0
  %i.nk = shufflevector <4 x float> %i.nj, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>
  %i.nl = shufflevector <2 x float> %i.nc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.nm = shufflevector <4 x float> %i.nl, <4 x float> %i.nk, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.nn = fmul <4 x float> %i.ni, %i.nm
  %i.no = insertelement <4 x float> poison, float %i.nd, i64 0
  %i.np = insertelement <4 x float> %i.no, float %i.mt, i64 1
  %i.nq = shufflevector <4 x float> %i.np, <4 x float> %i.ne, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.nr = shufflevector <4 x float> %i.nq, <4 x float> %i.nf, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ns = insertelement <4 x float> poison, float %i.mb, i64 0
  %i.nt = shufflevector <4 x float> %i.li, <4 x float> %i.ns, <4 x i32> <i32 1, i32 2, i32 4, i32 4>
  %i.nu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.nr, <4 x float> %i.nt, <4 x float> %i.nn) ; 2 uses
  %i.nv = load float, ptr %i.aa, align 8, !tbaa !20
  %i.nw = load float, ptr %i.ab, align 16, !tbaa !20
  %i.nx = load float, ptr %i.ac, align 4, !tbaa !20
  %i.ny = fmul float %i.nx, %i.md
  %i.nz = shufflevector <4 x float> %i.nu, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>
  %i.oa = insertelement <4 x float> %i.nz, float %i.nw, i64 0
  %i.ob = insertelement <4 x float> %i.oa, float %i.mo, i64 2
  %i.oc = insertelement <4 x float> %i.ob, float %i.nv, i64 3
  %i.od = insertelement <4 x float> %i.li, float %i.mb, i64 0
  %i.oe = insertelement <4 x float> %i.od, float %i.mf, i64 2
  %i.of = shufflevector <4 x float> %i.oe, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.og = insertelement <4 x float> %i.nu, float %i.ny, i64 0
  %i.oh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.oc, <4 x float> %i.of, <4 x float> %i.og) ; 4 uses
  %i.oi = load float, ptr %i.ad, align 8, !tbaa !20
  %i.oj = extractelement <4 x float> %i.oh, i64 0
  %i.ok = tail call noundef float @llvm.fmuladd.f32(float %i.oi, float %i.mf, float %i.oj)
  %i.ol = extractelement <4 x float> %i.oh, i64 3
  %i.om = fmul float %i.ol, %i.md
  %i.on = extractelement <4 x float> %i.oh, i64 2
  %i.oo = tail call float @llvm.fmuladd.f32(float %i.on, float %i.mb, float %i.om)
  %i.op = tail call noundef float @llvm.fmuladd.f32(float %i.ok, float %i.mf, float %i.oo)
  %i.oq = extractelement <4 x float> %i.oh, i64 1
  %i.or = fadd float %3, %i.oq
  %i.os = fadd float %8, %i.or
  %i.ot = fadd float %i.os, %i.op
  %i.ou = fdiv float -1.000000e+00, %i.ot
  %i.ov = getelementptr inbounds nuw i8, ptr %14, i64 148
  store float %i.ou, ptr %i.ov, align 4, !tbaa !24
  %i.ow = getelementptr inbounds nuw i8, ptr %14, i64 156
  store float 0.000000e+00, ptr %i.ow, align 4, !tbaa !24
  %i.ox = getelementptr inbounds nuw i8, ptr %14, i64 80
  store <2 x float> %i.gh, ptr %i.ox, align 16
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 88
  store <2 x float> %i.gj, ptr %.sroa.16.0..sroa_idx, align 8, !tbaa !20
  %.pre = load float, ptr %i.j, align 4, !tbaa !20
  br label %bb.i

.preheader.a:                                     ; preds = %bb.b, %.preheader.a
  %indvars.iv217 = phi i64 [ %indvars.iv.next218, %.preheader.a ], [ 0, %bb.b ] ; 2 uses
  %.sroa.16.0209 = phi <2 x float> [ %22, %.preheader.a ], [ zeroinitializer, %bb.b ] ; 2 uses
  %.sroa.0141.0208 = phi <2 x float> [ %20, %.preheader.a ], [ zeroinitializer, %bb.b ]
  %15 = getelementptr inbounds nuw [16 x i8], ptr %10, i64 %indvars.iv217
  %16 = load <3 x float>, ptr %15, align 16, !tbaa !20
  %17 = shufflevector <3 x float> %16, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %18 = shufflevector <2 x float> %.sroa.0141.0208, <2 x float> %.sroa.16.0209, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %19 = fadd <4 x float> %18, %17                 ; 3 uses
  %20 = shufflevector <4 x float> %19, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %21 = shufflevector <4 x float> %19, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %22 = shufflevector <2 x float> %21, <2 x float> %.sroa.16.0209, <2 x i32> <i32 0, i32 3> ; 2 uses
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 1 ; 2 uses
  %23 = trunc nuw nsw i64 %indvars.iv.next218 to i32
  %24 = uitofp nneg i32 %23 to float
  %25 = fcmp ogt float %i.an, %24
  br i1 %25, label %.preheader.a, label %bb.f, !llvm.loop !184

bb.i:                                             ; preds = %_Z13b3PlaneSpace1RK9b3Vector3PS_S2_.exit, %bb.b
  %26 = phi float [ %.pre, %_Z13b3PlaneSpace1RK9b3Vector3PS_S2_.exit ], [ %i.an, %bb.b ]
  %i.oy = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %27 = fcmp ogt float %26, 0.000000e+00
  br i1 %27, label %28, label %29

28:                                               ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.oy, ptr noundef nonnull align 16 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !22
  br label %bb.j

29:                                               ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.oy, i8 0, i64 16, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %28, %29
  %i.oz = load float, ptr %i.j, align 4, !tbaa !20
  %i.pa = fcmp ogt float %i.oz, 1.000000e+00
  br i1 %i.pa, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.pb = getelementptr inbounds nuw i8, ptr %14, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.pb, i8 0, i64 16, i1 false)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.pc = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.pd = getelementptr inbounds nuw i8, ptr %14, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.pd, ptr noundef nonnull align 16 dereferenceable(16) %i.pc, i64 16, i1 false), !tbaa.struct !22
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.pe = load float, ptr %i.j, align 4, !tbaa !20
  %i.pf = fcmp ogt float %i.pe, 2.000000e+00
  br i1 %i.pf, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.pg = getelementptr inbounds nuw i8, ptr %14, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.pg, i8 0, i64 16, i1 false)
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ph = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.pi = getelementptr inbounds nuw i8, ptr %14, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.pi, ptr noundef nonnull align 16 dereferenceable(16) %i.ph, i64 16, i1 false), !tbaa.struct !22
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.pj = load float, ptr %i.j, align 4, !tbaa !20
  %i.pk = fcmp ogt float %i.pj, 3.000000e+00
  br i1 %i.pk, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.pl = getelementptr inbounds nuw i8, ptr %14, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.pl, i8 0, i64 16, i1 false)
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.pm = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.pn = getelementptr inbounds nuw i8, ptr %14, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.pn, ptr noundef nonnull align 16 dereferenceable(16) %i.pm, i64 16, i1 false), !tbaa.struct !22
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8b3SolverC2EP11_cl_contextP13_cl_device_idP17_cl_command_queuei(ptr noundef nonnull align 8 dereferenceable(216) initializes((0, 32), (48, 98), (104, 108)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 17 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV8b3Solver, i64 16), ptr %0, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !185
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.c, align 8, !tbaa !186
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %3, ptr %i.d, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13b3OpenCLArrayIiE, i64 16), ptr %i.e, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  store ptr %1, ptr %i.g, align 8, !tbaa !45
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %3, ptr %i.h, align 8, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 1, ptr %i.i, align 8, !tbaa !187
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 97
  store i8 1, ptr %i.j, align 1, !tbaa !47
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 4, ptr %i.k, align 8, !tbaa !48
  %i.l = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #24
          to label %bb.b unwind label %bb.t       ; 3 uses

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN15b3RadixSort32CLC1EP11_cl_contextP13_cl_device_idP17_cl_command_queuei(ptr noundef nonnull align 8 dereferenceable(128) %i.l, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0)
          to label %bb.c unwind label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.l, ptr %i.m, align 8, !tbaa !49
  %i.n = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #24
          to label %bb.d unwind label %bb.t       ; 3 uses

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN14b3PrefixScanCLC1EP11_cl_contextP13_cl_device_idP17_cl_command_queuei(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 256)
          to label %bb.e unwind label %bb.r

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.n, ptr %i.o, align 8, !tbaa !50
  %i.p = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #24
          to label %bb.f unwind label %bb.t       ; 3 uses

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN15b3BoundSearchCLC1EP11_cl_contextP13_cl_device_idP17_cl_command_queuei(ptr noundef nonnull align 8 dereferenceable(88) %i.p, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 256)
          to label %bb.g unwind label %bb.s

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %i.p, ptr %i.q, align 8, !tbaa !51
  %i.r = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #24
          to label %bb.h unwind label %bb.t       ; 3 uses

bb.h:                                             ; preds = %bb.g
  %i.s = sdiv i32 %4, 512
  %i.t = and i32 %4, 511
  %i.u = icmp ne i32 %i.t, 0
  %i.v = zext i1 %i.u to i32
  %i.w = add nsw i32 %i.s, %i.v
  %i.x = shl nsw i32 %i.w, 9
  %i.y = sext i32 %i.x to i64
  invoke void @_ZN13b3OpenCLArrayI10b3SortDataEC2EP11_cl_contextP17_cl_command_queuemb(ptr noundef nonnull align 8 dereferenceable(50) %i.r, ptr noundef %1, ptr noundef %3, i64 noundef %i.y, i1 noundef zeroext true)
          to label %bb.i unwind label %bb.u

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %i.r, ptr %i.z, align 8, !tbaa !52
  %i.aa = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #24
          to label %bb.j unwind label %bb.t       ; 7 uses

bb.j:                                             ; preds = %bb.i
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13b3OpenCLArrayI10b3Contact4E, i64 16), ptr %i.aa, align 8, !tbaa !27
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false)
  store ptr %1, ptr %i.ac, align 8, !tbaa !188
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store ptr %3, ptr %i.ad, align 8, !tbaa !54
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store i8 1, ptr %i.ae, align 8, !tbaa !189
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 49
  store i8 1, ptr %i.af, align 1, !tbaa !190
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.aa, ptr %i.ag, align 8, !tbaa !55
  %i.ah = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #24
          to label %bb.k unwind label %bb.t       ; 4 uses

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN13b3OpenCLArrayIjEC2EP11_cl_contextP17_cl_command_queuemb(ptr noundef nonnull align 8 dereferenceable(50) %i.ah, ptr noundef %1, ptr noundef %3, i64 noundef 256, i1 noundef zeroext true)
          to label %bb.l unwind label %bb.v

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !56
  %i.aj = invoke noundef zeroext i1 @_ZN13b3OpenCLArrayIjE6resizeEmb(ptr noundef nonnull align 8 dereferenceable(50) %i.ah, i64 noundef 256, i1 noundef zeroext true)
          to label %bb.m unwind label %bb.t       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ak = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #24
          to label %bb.n unwind label %bb.t       ; 4 uses

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN13b3OpenCLArrayIjEC2EP11_cl_contextP17_cl_command_queuemb(ptr noundef nonnull align 8 dereferenceable(50) %i.ak, ptr noundef %1, ptr noundef %3, i64 noundef 256, i1 noundef zeroext true)
          to label %bb.o unwind label %bb.w

bb.o:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !57
  %i.am = invoke noundef zeroext i1 @_ZN13b3OpenCLArrayIjE6resizeEmb(ptr noundef nonnull align 8 dereferenceable(50) %i.ak, i64 noundef 256, i1 noundef zeroext true)
          to label %bb.p unwind label %bb.t       ; 0 uses

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.an = invoke noundef ptr @b3OpenCLUtils_compileCLProgramFromString(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.33, ptr noundef nonnull %i.a, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i1 noundef zeroext false)
          to label %_ZN13b3OpenCLUtils26compileCLProgramFromStringEP11_cl_contextP13_cl_device_idPKcPiS5_S5_b.exit unwind label %bb.x

_ZN13b3OpenCLUtils26compileCLProgramFromStringEP11_cl_contextP13_cl_device_idPKcPiS5_S5_b.exit: ; preds = %bb.p
  %i.ao = invoke noundef ptr @b3OpenCLUtils_compileCLProgramFromString(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.34, ptr noundef nonnull %i.a, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i1 noundef zeroext false)
          to label %_ZN13b3OpenCLUtils26compileCLProgramFromStringEP11_cl_contextP13_cl_device_idPKcPiS5_S5_b.exit104 unwind label %bb.x

_ZN13b3OpenCLUtils26compileCLProgramFromStringEP11_cl_contextP13_cl_device_idPKcPiS5_S5_b.exit104: ; preds = %_ZN13b3OpenCLUtils26compileCLProgramFromStringEP11_cl_contextP13_cl_device_idPKcPiS5_S5_b.exit
  %i.ap = invoke noundef ptr @b3OpenCLUtils_compileCLProgramFromString(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.32, ptr noundef nonnull %i.a, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i1 noundef zeroext false)
          to label %_ZN13b3OpenCLUtils26compileCLProgramFromStringEP11_cl_contextP13_cl_device_idPKcPiS5_S5_b.exit105 unwind label %bb.x ; 3 uses

_ZN13b3OpenCLUtils26compileCLProgramFromStringEP11_cl_contextP13_cl_device_idPKcPiS5_S5_b.exit105: ; preds = %_ZN13b3OpenCLUtils26compileCLProgramFromStringEP11_cl_contextP13_cl_device_idPKcPiS5_S5_b.exit104
  %i.aq = invoke noundef ptr @b3OpenCLUtils_compileCLProgramFromString(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.31, ptr noundef nonnull %i.a, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i1 noundef zeroext false)
          to label %_ZN13b3OpenCLUtils26compileCLProgramFromStringEP11_cl_contextP13_cl_device_idPKcPiS5_S5_b.exit106 unwind label %bb.x

_ZN13b3OpenCLUtils26compileCLProgramFromStringEP11_cl_contextP13_cl_device_idPKcPiS5_S5_b.exit106: ; preds = %_ZN13b3OpenCLUtils26compileCLProgramFromStringEP11_cl_contextP13_cl_device_idPKcPiS5_S5_b.exit105
  %i.ar = invoke noundef ptr @b3OpenCLUtils_compileCLKernelFromString(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.a, ptr noundef %i.ao, ptr noundef nonnull @.str)
          to label %_ZN13b3OpenCLUtils25compileCLKernelFromStringEP11_cl_contextP13_cl_device_idPKcS5_PiP11_cl_programS5_.exit unwind label %bb.x

_ZN13b3OpenCLUtils25compileCLKernelFromStringEP11_cl_contextP13_cl_device_idPKcS5_PiP11_cl_programS5_.exit: ; preds = %_ZN13b3OpenCLUtils26compileCLProgramFromStringEP11_cl_contextP13_cl_device_idPKcPiS5_S5_b.exit106
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !58
  %i.at = invoke noundef ptr @b3OpenCLUtils_compileCLKernelFromString(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.a, ptr noundef %i.an, ptr noundef nonnull @.str)
          to label %_ZN13b3OpenCLUtils25compileCLKernelFromStringEP11_cl_contextP13_cl_device_idPKcS5_PiP11_cl_programS5_.exit107 unwind label %bb.x

_ZN13b3OpenCLUtils25compileCLKernelFromStringEP11_cl_contextP13_cl_device_idPKcS5_PiP11_cl_programS5_.exit107: ; preds = %_ZN13b3OpenCLUtils25compileCLKernelFromStringEP11_cl_contextP13_cl_device_idPKcS5_PiP11_cl_programS5_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.at, ptr %i.au, align 8, !tbaa !59
end_hunk_0

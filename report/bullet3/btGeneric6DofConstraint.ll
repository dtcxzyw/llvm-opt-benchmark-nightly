Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btGeneric6DofConstraint?download=true
inline.NumInlined: 495
inline.NumDeleted: 82
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN23btGeneric6DofConstraint19calculateLinearInfoEv:bb.a

bb.o:                                             ; preds = %bb.n
  %i.dc = fcmp ogt float %i.bs, %i.cz
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 2 uses
  br i1 %i.dc, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.dd, align 8, !tbaa !47
  br label %_ZN25btTranslationalLimitMotor14testLimitValueEif.exit.2

bb.q:                                             ; preds = %bb.o
  store i32 1, ptr %i.dd, align 8, !tbaa !47
  %i.de = fsub float %i.bs, %i.cz
  br label %_ZN25btTranslationalLimitMotor14testLimitValueEif.exit.2

bb.r:                                             ; preds = %bb.n
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 888
  store i32 2, ptr %i.df, align 8, !tbaa !47
  %i.dg = fsub float %i.bs, %i.cx
  br label %_ZN25btTranslationalLimitMotor14testLimitValueEif.exit.2

bb.s:                                             ; preds = %_ZN25btTranslationalLimitMotor14testLimitValueEif.exit.1
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 888
  store i32 0, ptr %i.dh, align 8, !tbaa !47
  br label %_ZN25btTranslationalLimitMotor14testLimitValueEif.exit.2

_ZN25btTranslationalLimitMotor14testLimitValueEif.exit.2: ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.sink.i.2 = phi float [ 0.000000e+00, %bb.p ], [ %i.de, %bb.q ], [ %i.dg, %bb.r ], [ 0.000000e+00, %bb.s ]
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 856
  store float %.sink.i.2, ptr %i.di, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN23btGeneric6DofConstraint19buildLinearJacobianER15btJacobianEntryRK9btVector3S4_S4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1333) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(84) initializes((0, 84)) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38, !nonnull !39, !align !40 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.i = load float, ptr %i.f, align 8, !tbaa !14, !noalias !111
  %i.j = load float, ptr %i.g, align 8, !tbaa !14, !noalias !111
  %i.k = load float, ptr %i.h, align 8, !tbaa !14, !noalias !111
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !41, !nonnull !39, !align !40 ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.t = load float, ptr %i.q, align 8, !tbaa !14, !noalias !112
  %i.u = load float, ptr %i.r, align 8, !tbaa !14, !noalias !112
  %i.v = load float, ptr %i.s, align 8, !tbaa !14, !noalias !112
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 504
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 452
  %i.aa = load float, ptr %i.z, align 4, !tbaa !60
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 504
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 452
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !60
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ai = load <2 x float>, ptr %i.c, align 8, !tbaa !14, !noalias !111
  %i.aj = load <2 x float>, ptr %i.d, align 8, !tbaa !14, !noalias !111
  %i.ak = load <2 x float>, ptr %i.e, align 8, !tbaa !14, !noalias !111
  %i.al = load <3 x float>, ptr %3, align 4, !tbaa !14
  %i.am = load <3 x float>, ptr %i.w, align 8, !tbaa !14
  %i.an = fsub <3 x float> %i.al, %i.am           ; 2 uses
  %i.ao = shufflevector <3 x float> %i.an, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ap = load <2 x float>, ptr %i.n, align 8, !tbaa !14, !noalias !112
  %i.aq = load <2 x float>, ptr %i.o, align 8, !tbaa !14, !noalias !112
  %i.ar = load <2 x float>, ptr %i.p, align 8, !tbaa !14, !noalias !112
  %i.as = load <3 x float>, ptr %4, align 4, !tbaa !14
  %i.at = load <3 x float>, ptr %i.x, align 8, !tbaa !14
  %i.au = fsub <3 x float> %i.as, %i.at           ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !12
  %i.av = load float, ptr %1, align 4, !tbaa !14
  %i.aw = load <3 x float>, ptr %1, align 4, !tbaa !14 ; 4 uses
  %i.ax = shufflevector <3 x float> %i.aw, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  %i.ay = extractelement <3 x float> %i.aw, i64 1
  %i.az = fneg <3 x float> %i.aw                  ; 2 uses
  %i.ba = fneg float %i.ay
  %i.bb = fmul <3 x float> %i.ao, %i.az
  %i.bc = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.an, <3 x float> %i.ax, <3 x float> %i.bb) ; 6 uses
  %i.bd = shufflevector <3 x float> %i.bc, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.be = fmul <2 x float> %i.aj, %i.bd
  %i.bf = shufflevector <3 x float> %i.bc, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.bf, <2 x float> %i.be)
  %i.bh = shufflevector <3 x float> %i.bc, <3 x float> poison, <2 x i32> zeroinitializer
  %i.bi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> %i.bh, <2 x float> %i.bg) ; 4 uses
  %i.bj = extractelement <3 x float> %i.bc, i64 2
  %i.bk = fmul float %i.j, %i.bj
  %i.bl = extractelement <3 x float> %i.bc, i64 1
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.i, float %i.bl, float %i.bk)
  %i.bn = extractelement <3 x float> %i.bc, i64 0
  %i.bo = tail call noundef float @llvm.fmuladd.f32(float %i.k, float %i.bn, float %i.bm) ; 3 uses
  %.sroa.3.12.vec.insert.i18.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bo, i64 0
  store <2 x float> %i.bi, ptr %i.ae, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i18.i, ptr %.sroa.46.0..sroa_idx.i, align 4, !tbaa !11
  %i.bp = shufflevector <3 x float> %i.aw, <3 x float> poison, <3 x i32> <i32 2, i32 poison, i32 1>
  %i.bq = insertelement <3 x float> %i.bp, float %i.av, i64 1
  %i.br = fmul <3 x float> %i.au, %i.bq
  %i.bs = shufflevector <3 x float> %i.br, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  %i.bt = insertelement <3 x float> poison, float %i.ba, i64 0
  %i.bu = shufflevector <3 x float> %i.bt, <3 x float> %i.az, <3 x i32> <i32 0, i32 5, i32 3>
  %i.bv = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.au, <3 x float> %i.bu, <3 x float> %i.bs) ; 6 uses
  %i.bw = shufflevector <3 x float> %i.bv, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.bx = fmul <2 x float> %i.aq, %i.bw
  %i.by = shufflevector <3 x float> %i.bv, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ap, <2 x float> %i.by, <2 x float> %i.bx)
  %i.ca = shufflevector <3 x float> %i.bv, <3 x float> poison, <2 x i32> zeroinitializer
  %i.cb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ar, <2 x float> %i.ca, <2 x float> %i.bz) ; 4 uses
  %i.cc = extractelement <3 x float> %i.bv, i64 2
  %i.cd = fmul float %i.u, %i.cc
  %i.ce = extractelement <3 x float> %i.bv, i64 1
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.t, float %i.ce, float %i.cd)
  %i.cg = extractelement <3 x float> %i.bv, i64 0
  %i.ch = tail call noundef float @llvm.fmuladd.f32(float %i.v, float %i.cg, float %i.cf) ; 3 uses
  %.sroa.3.12.vec.insert.i33.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ch, i64 0
  store <2 x float> %i.cb, ptr %i.af, align 4
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  store <2 x float> %.sroa.3.12.vec.insert.i33.i, ptr %.sroa.44.0..sroa_idx.i, align 4, !tbaa !11
  %i.ci = extractelement <2 x float> %i.bi, i64 0
  %i.cj = load <2 x float>, ptr %i.y, align 8, !tbaa !14
  %i.ck = fmul <2 x float> %i.bi, %i.cj           ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %i.cm = load float, ptr %i.cl, align 8, !tbaa !14
  %i.cn = fmul float %i.bo, %i.cm                 ; 2 uses
  %.sroa.3.12.vec.insert.i38.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cn, i64 0
  store <2 x float> %i.ck, ptr %i.ag, align 4
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i38.i, ptr %.sroa.42.0..sroa_idx.i, align 4, !tbaa !11
  %i.co = extractelement <2 x float> %i.cb, i64 0
  %i.cp = load <2 x float>, ptr %i.ab, align 8, !tbaa !14
  %i.cq = fmul <2 x float> %i.cb, %i.cp           ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.m, i64 512
  %i.cs = load float, ptr %i.cr, align 8, !tbaa !14
  %i.ct = fmul float %i.ch, %i.cs                 ; 2 uses
  %.sroa.3.12.vec.insert.i43.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ct, i64 0
  store <2 x float> %i.cq, ptr %i.ah, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  store <2 x float> %.sroa.3.12.vec.insert.i43.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !11
  %foldExtExtBinop = fmul <2 x float> %i.bi, %i.ck
  %i.cu = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.cv = extractelement <2 x float> %i.ck, i64 0
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.ci, float %i.cu)
  %i.cx = tail call noundef float @llvm.fmuladd.f32(float %i.cn, float %i.bo, float %i.cw)
  %i.cy = fadd float %i.aa, %i.cx
  %i.cz = fadd float %i.ad, %i.cy
  %foldExtExtBinop26 = fmul <2 x float> %i.cb, %i.cq
  %i.da = extractelement <2 x float> %foldExtExtBinop26, i64 1
  %i.db = extractelement <2 x float> %i.cq, i64 0
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.db, float %i.co, float %i.da)
  %i.dd = tail call noundef float @llvm.fmuladd.f32(float %i.ct, float %i.ch, float %i.dc)
  %i.de = fadd float %i.cz, %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 80
  store float %i.de, ptr %i.df, align 4, !tbaa !63
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN23btGeneric6DofConstraint20buildAngularJacobianER15btJacobianEntryRK9btVector3(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1333) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(84) initializes((0, 84)) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38, !nonnull !39, !align !40 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.i = load float, ptr %i.f, align 8, !tbaa !14, !noalias !117
  %i.j = load float, ptr %i.g, align 8, !tbaa !14, !noalias !117
  %i.k = load float, ptr %i.h, align 8, !tbaa !14, !noalias !117
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !41, !nonnull !39, !align !40 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.t = load float, ptr %i.q, align 8, !tbaa !14, !noalias !118
  %i.u = load float, ptr %i.r, align 8, !tbaa !14, !noalias !118
  %i.v = load float, ptr %i.s, align 8, !tbaa !14, !noalias !118
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 504
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 504
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = load <2 x float>, ptr %i.c, align 8, !tbaa !14, !noalias !117
  %i.ad = load <2 x float>, ptr %i.d, align 8, !tbaa !14, !noalias !117
  %i.ae = load <2 x float>, ptr %i.e, align 8, !tbaa !14, !noalias !117
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = load <2 x float>, ptr %i.n, align 8, !tbaa !14, !noalias !118
  %i.ag = load <2 x float>, ptr %i.o, align 8, !tbaa !14, !noalias !118
  %i.ah = load <2 x float>, ptr %i.p, align 8, !tbaa !14, !noalias !118
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %1, i8 0, i64 16, i1 false)
  %5 = load float, ptr %3, align 4, !tbaa !14     ; 2 uses
  %i.ai = load float, ptr %2, align 4, !tbaa !14  ; 2 uses
  %6 = load float, ptr %4, align 4, !tbaa !14     ; 2 uses
  %7 = insertelement <2 x float> poison, float %5, i64 0
  %8 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aj = fmul <2 x float> %i.ad, %8
  %9 = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.ak = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer
  %i.al = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.ak, <2 x float> %i.aj)
  %10 = insertelement <2 x float> poison, float %6, i64 0
  %11 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  %12 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %11, <2 x float> %i.al) ; 4 uses
  %i.am = fmul float %i.j, %5
  %i.an = tail call float @llvm.fmuladd.f32(float %i.i, float %i.ai, float %i.am)
  store <2 x float> %12, ptr %i.y, align 4
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 512
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aq = tail call noundef float @llvm.fmuladd.f32(float %i.k, float %6, float %i.an) ; 3 uses
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aq, i64 0
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.46.0..sroa_idx.i, align 4, !tbaa !11
  %i.ar = load <3 x float>, ptr %2, align 4, !tbaa !14
  %i.as = fneg <3 x float> %i.ar                  ; 6 uses
  %i.at = shufflevector <3 x float> %i.as, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.au = fmul <2 x float> %i.ag, %i.at
  %i.av = shufflevector <3 x float> %i.as, <3 x float> poison, <2 x i32> zeroinitializer
  %i.aw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.af, <2 x float> %i.av, <2 x float> %i.au)
  %i.ax = shufflevector <3 x float> %i.as, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ay = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ah, <2 x float> %i.ax, <2 x float> %i.aw) ; 4 uses
  %i.az = extractelement <3 x float> %i.as, i64 1
  %i.ba = fmul float %i.u, %i.az
  %i.bb = extractelement <3 x float> %i.as, i64 0
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.t, float %i.bb, float %i.ba)
  %i.bd = extractelement <3 x float> %i.as, i64 2
  %i.be = tail call noundef float @llvm.fmuladd.f32(float %i.v, float %i.bd, float %i.bc) ; 3 uses
  %.sroa.3.12.vec.insert.i20.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.be, i64 0
  store <2 x float> %i.ay, ptr %i.z, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i20.i, ptr %.sroa.44.0..sroa_idx.i, align 4, !tbaa !11
  %i.bf = load <2 x float>, ptr %i.w, align 8, !tbaa !14
  %i.bg = fmul <2 x float> %12, %i.bf             ; 3 uses
  %i.bh = load float, ptr %i.ao, align 8, !tbaa !14
  %i.bi = fmul float %i.aq, %i.bh                 ; 2 uses
  %.sroa.3.12.vec.insert.i25.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bi, i64 0
  store <2 x float> %i.bg, ptr %i.aa, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i25.i, ptr %.sroa.42.0..sroa_idx.i, align 4, !tbaa !11
  %i.bj = load <2 x float>, ptr %i.x, align 8, !tbaa !14
  %i.bk = fmul <2 x float> %i.ay, %i.bj           ; 3 uses
  %i.bl = load float, ptr %i.ap, align 8, !tbaa !14
  %i.bm = fmul float %i.be, %i.bl                 ; 2 uses
  %.sroa.3.12.vec.insert.i30.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bm, i64 0
  store <2 x float> %i.bk, ptr %i.ab, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i30.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !11
  %i.bn = shufflevector <2 x float> %12, <2 x float> %i.ay, <2 x i32> <i32 1, i32 3>
  %i.bo = shufflevector <2 x float> %i.bg, <2 x float> %i.bk, <2 x i32> <i32 1, i32 3>
  %i.bp = fmul <2 x float> %i.bn, %i.bo
  %i.bq = shufflevector <2 x float> %i.bg, <2 x float> %i.bk, <2 x i32> <i32 0, i32 2>
  %i.br = shufflevector <2 x float> %12, <2 x float> %i.ay, <2 x i32> <i32 0, i32 2>
  %i.bs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> %i.br, <2 x float> %i.bp)
  %i.bt = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bu = insertelement <2 x float> %i.bt, float %i.bm, i64 1
  %i.bv = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.bw = insertelement <2 x float> %i.bv, float %i.be, i64 1
  %i.bx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.bw, <2 x float> %i.bs) ; 2 uses
  %shift = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.bx, %shift
  %i.by = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 80
  store float %i.by, ptr %i.bz, align 4, !tbaa !63
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1333) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %i.c = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.b
  %i.d = load float, ptr %i.c, align 4, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 892
  %i.f = getelementptr inbounds [64 x i8], ptr %i.e, i64 %i.b ; 10 uses
  %i.g = load float, ptr %i.f, align 4, !tbaa !42
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %i.i = load float, ptr %i.h, align 8, !tbaa !43
  %i.j = tail call noundef float @_Z21btAdjustAngleToLimitsfff(float noundef %i.d, float noundef %i.g, float noundef %i.i) ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  store float %i.j, ptr %i.k, align 8, !tbaa !64
  %i.l = load float, ptr %i.f, align 4, !tbaa !42 ; 3 uses
  %i.m = load float, ptr %i.h, align 8, !tbaa !43 ; 3 uses
  %i.n = fcmp ogt float %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i32 0, ptr %i.o, align 4, !tbaa !22
  br label %_ZN22btRotationalLimitMotor14testLimitValueEf.exit

bb.c:                                             ; preds = %bb.a
  %i.p = fcmp olt float %i.j, %i.l
  br i1 %i.p, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i32 1, ptr %i.q, align 4, !tbaa !22
  %i.r = fsub float %i.j, %i.l                    ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 3 uses
  store float %i.r, ptr %i.s, align 4, !tbaa !23
  %i.t = fcmp ogt float %i.r, f0x40490FDB
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = fadd float %i.r, f0xC0C90FDB
  store float %i.u, ptr %i.s, align 4, !tbaa !23
  br label %_ZN22btRotationalLimitMotor14testLimitValueEf.exit

bb.f:                                             ; preds = %bb.d
  %i.v = fcmp olt float %i.r, f0xC0490FDB
  br i1 %i.v, label %bb.g, label %_ZN22btRotationalLimitMotor14testLimitValueEf.exit

bb.g:                                             ; preds = %bb.f
  %i.w = fadd float %i.r, f0x40C90FDB
  store float %i.w, ptr %i.s, align 4, !tbaa !23
  br label %_ZN22btRotationalLimitMotor14testLimitValueEf.exit

bb.h:                                             ; preds = %bb.c
  %i.x = fcmp ogt float %i.j, %i.m
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 2 uses
  br i1 %i.x, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  store i32 2, ptr %i.y, align 4, !tbaa !22
  %i.z = fsub float %i.j, %i.m                    ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 3 uses
  store float %i.z, ptr %i.aa, align 4, !tbaa !23
  %i.ab = fcmp ogt float %i.z, f0x40490FDB
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ac = fadd float %i.z, f0xC0C90FDB
  store float %i.ac, ptr %i.aa, align 4, !tbaa !23
  br label %_ZN22btRotationalLimitMotor14testLimitValueEf.exit

bb.k:                                             ; preds = %bb.i
  %i.ad = fcmp olt float %i.z, f0xC0490FDB
  br i1 %i.ad, label %bb.l, label %_ZN22btRotationalLimitMotor14testLimitValueEf.exit

bb.l:                                             ; preds = %bb.k
  %i.ae = fadd float %i.z, f0x40C90FDB
  store float %i.ae, ptr %i.aa, align 4, !tbaa !23
  br label %_ZN22btRotationalLimitMotor14testLimitValueEf.exit

bb.m:                                             ; preds = %bb.h
  store i32 0, ptr %i.y, align 4, !tbaa !22
  br label %_ZN22btRotationalLimitMotor14testLimitValueEf.exit

_ZN22btRotationalLimitMotor14testLimitValueEf.exit: ; preds = %bb.b, %bb.e, %bb.f, %bb.g, %bb.j, %bb.k, %bb.l, %bb.m
  %i.af = phi i1 [ false, %bb.b ], [ true, %bb.e ], [ true, %bb.f ], [ true, %bb.g ], [ true, %bb.j ], [ true, %bb.k ], [ true, %bb.l ], [ false, %bb.m ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.ah = load i8, ptr %i.ag, align 8, !range !44
  %i.ai = icmp ne i8 %i.ah, 0
  %or.cond.not.i = select i1 %i.af, i1 true, i1 %i.ai
  ret i1 %or.cond.not.i
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef float @_Z21btAdjustAngleToLimitsfff(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #13 comdat {
bb.a:
  %i.a = fcmp ult float %1, %2
  br i1 %i.a, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp olt float %0, %1
  br i1 %i.b, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.c = fsub float %1, %0
  %i.d = tail call noundef float @fmodf(float noundef %i.c, float noundef f0x40C90FDB) #22 ; 5 uses
  %i.e = fcmp olt float %i.d, f0xC0490FDB
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = fadd float %i.d, f0x40C90FDB
  br label %_Z16btNormalizeAnglef.exit

bb.e:                                             ; preds = %bb.c
  %i.g = fcmp ogt float %i.d, f0x40490FDB
  br i1 %i.g, label %bb.f, label %_Z16btNormalizeAnglef.exit

bb.f:                                             ; preds = %bb.e
  %i.h = fadd float %i.d, f0xC0C90FDB
  br label %_Z16btNormalizeAnglef.exit

_Z16btNormalizeAnglef.exit:                       ; preds = %bb.d, %bb.e, %bb.f
  %.0.i = phi float [ %i.f, %bb.d ], [ %i.h, %bb.f ], [ %i.d, %bb.e ]
  %i.i = tail call noundef float @llvm.fabs.f32(float %.0.i)
  %i.j = fsub float %2, %0
  %i.k = tail call noundef float @fmodf(float noundef %i.j, float noundef f0x40C90FDB) #22 ; 5 uses
  %i.l = fcmp olt float %i.k, f0xC0490FDB
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_Z16btNormalizeAnglef.exit
  %i.m = fadd float %i.k, f0x40C90FDB
  br label %_Z16btNormalizeAnglef.exit29

bb.h:                                             ; preds = %_Z16btNormalizeAnglef.exit
  %i.n = fcmp ogt float %i.k, f0x40490FDB
  br i1 %i.n, label %bb.i, label %_Z16btNormalizeAnglef.exit29

bb.i:                                             ; preds = %bb.h
  %i.o = fadd float %i.k, f0xC0C90FDB
  br label %_Z16btNormalizeAnglef.exit29

_Z16btNormalizeAnglef.exit29:                     ; preds = %bb.g, %bb.h, %bb.i
  %.0.i28 = phi float [ %i.m, %bb.g ], [ %i.o, %bb.i ], [ %i.k, %bb.h ]
  %i.p = tail call noundef float @llvm.fabs.f32(float %.0.i28)
  %i.q = fcmp olt float %i.i, %i.p
  %i.r = fadd float %0, f0x40C90FDB
  %i.s = select i1 %i.q, float %0, float %i.r
  br label %bb.r

bb.j:                                             ; preds = %bb.b
  %i.t = fcmp ogt float %0, %2
  br i1 %i.t, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.u = fsub float %0, %2
  %i.v = tail call noundef float @fmodf(float noundef %i.u, float noundef f0x40C90FDB) #22 ; 5 uses
  %i.w = fcmp olt float %i.v, f0xC0490FDB
  br i1 %i.w, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.x = fadd float %i.v, f0x40C90FDB
  br label %_Z16btNormalizeAnglef.exit31

bb.m:                                             ; preds = %bb.k
  %i.y = fcmp ogt float %i.v, f0x40490FDB
  br i1 %i.y, label %bb.n, label %_Z16btNormalizeAnglef.exit31

bb.n:                                             ; preds = %bb.m
  %i.z = fadd float %i.v, f0xC0C90FDB
  br label %_Z16btNormalizeAnglef.exit31

_Z16btNormalizeAnglef.exit31:                     ; preds = %bb.l, %bb.m, %bb.n
  %.0.i30 = phi float [ %i.x, %bb.l ], [ %i.z, %bb.n ], [ %i.v, %bb.m ]
  %i.aa = tail call noundef float @llvm.fabs.f32(float %.0.i30)
  %i.ab = fsub float %0, %1
  %i.ac = tail call noundef float @fmodf(float noundef %i.ab, float noundef f0x40C90FDB) #22 ; 5 uses
  %i.ad = fcmp olt float %i.ac, f0xC0490FDB
  br i1 %i.ad, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_Z16btNormalizeAnglef.exit31
  %i.ae = fadd float %i.ac, f0x40C90FDB
  br label %_Z16btNormalizeAnglef.exit33

bb.p:                                             ; preds = %_Z16btNormalizeAnglef.exit31
  %i.af = fcmp ogt float %i.ac, f0x40490FDB
  br i1 %i.af, label %bb.q, label %_Z16btNormalizeAnglef.exit33

end_hunk_0

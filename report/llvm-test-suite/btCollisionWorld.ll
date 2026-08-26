Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btCollisionWorld?download=true
inline.NumInlined: 505
inline.NumDeleted: 142
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEf:bb.a
  %i.da = shufflevector <2 x float> %i.cm, <2 x float> %i.ct, <2 x i32> <i32 0, i32 2>
  %i.db = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cz, <2 x float> %i.da, <2 x float> %i.cx)
  %i.dc = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.dd = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.de = insertelement <2 x float> %i.ce, float %i.cj, i64 1
  %i.df = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dd, <2 x float> %i.de, <2 x float> %i.db)
  %i.dg = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.dh = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.di = fadd <2 x float> %i.dh, %i.df           ; 2 uses
  %i.dj = insertelement <2 x float> %i.di, float 0.000000e+00, i64 1
  store <2 x float> %i.cs, ptr %13, align 8
  store <2 x float> %i.dj, ptr %i.cg, align 8
  %i.dk = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dl = fmul <2 x float> %i.bn, %i.dk
  %i.dm = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> %i.dm, <2 x float> %i.dl)
  %i.do = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bo, <2 x float> %i.cl, <2 x float> %i.dn)
  %i.dp = fadd <2 x float> %i.bx, %i.do
  %i.dq = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.di, <2 x i32> <i32 3, i32 1>
  store <2 x float> %i.dp, ptr %14, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %14, i64 8
  store <2 x float> %i.dq, ptr %i.dr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #14
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ea = load <2 x float>, ptr %2, align 4, !tbaa !68, !noalias !121 ; 3 uses
  %i.eb = load <2 x float>, ptr %i.ds, align 4, !tbaa !68, !noalias !121 ; 3 uses
  %i.ec = load <2 x float>, ptr %i.dt, align 4, !tbaa !68, !noalias !121 ; 3 uses
  %i.ed = shufflevector <2 x float> %i.bn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ee = shufflevector <4 x float> %i.ed, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.ef = shufflevector <2 x float> %i.eb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.eg = insertelement <4 x float> %i.ef, float 1.000000e+00, i64 3
  %i.eh = shufflevector <2 x float> %i.ea, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ei = insertelement <4 x float> %i.eh, float 0.000000e+00, i64 3
  %i.ej = shufflevector <2 x float> %i.bm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ek = shufflevector <4 x float> %i.ej, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.el = shufflevector <2 x float> %i.ec, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.em = insertelement <4 x float> %i.el, float 0.000000e+00, i64 3
  %i.en = shufflevector <2 x float> %i.bo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.eo = shufflevector <4 x float> %i.en, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.ep = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.eq = load <2 x float>, ptr %i.dv, align 4, !tbaa !68, !noalias !121 ; 3 uses
  %i.er = load float, ptr %i.dy, align 4, !tbaa !68, !noalias !121
  %i.es = fmul float %i.bb, %i.er
  %i.et = load <2 x float>, ptr %i.du, align 4, !tbaa !68, !noalias !121 ; 3 uses
  %i.eu = load float, ptr %i.dx, align 4, !tbaa !68, !noalias !121
  %i.ev = tail call float @llvm.fmuladd.f32(float %i.eu, float %i.ba, float %i.es)
  %i.ew = load <2 x float>, ptr %i.dw, align 4, !tbaa !68, !noalias !121 ; 3 uses
  %i.ex = load float, ptr %i.dz, align 4, !tbaa !68, !noalias !121
  %i.ey = tail call noundef float @llvm.fmuladd.f32(float %i.ex, float %i.bc, float %i.ev)
  %i.ez = shufflevector <2 x float> %i.eq, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fa = shufflevector <4 x float> %i.eg, <4 x float> %i.ez, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.fb = fmul <4 x float> %i.ee, %i.fa
  %i.fc = shufflevector <2 x float> %i.et, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fd = shufflevector <4 x float> %i.ei, <4 x float> %i.fc, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.fe = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fd, <4 x float> %i.ek, <4 x float> %i.fb)
  %i.ff = shufflevector <2 x float> %i.ew, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fg = shufflevector <4 x float> %i.em, <4 x float> %i.ff, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.fh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fg, <4 x float> %i.eo, <4 x float> %i.fe)
  %i.fi = shufflevector <4 x float> %i.ed, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.fj = shufflevector <2 x float> %i.eb, <2 x float> %i.eq, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.fk = insertelement <4 x float> %i.fj, float 1.000000e+00, i64 3
  %i.fl = fmul <4 x float> %i.fi, %i.fk
  %i.fm = shufflevector <2 x float> %i.ea, <2 x float> %i.et, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.fn = insertelement <4 x float> %i.fm, float 0.000000e+00, i64 3
  %i.fo = shufflevector <4 x float> %i.ej, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.fp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fn, <4 x float> %i.fo, <4 x float> %i.fl)
  %i.fq = shufflevector <2 x float> %i.ec, <2 x float> %i.ew, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.fr = insertelement <4 x float> %i.fq, float 0.000000e+00, i64 3
  %i.fs = shufflevector <4 x float> %i.en, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.ft = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fr, <4 x float> %i.fs, <4 x float> %i.fp)
  store <4 x float> %i.fh, ptr %15, align 16
  store <4 x float> %i.ft, ptr %i.ep, align 16
  %i.fu = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.fv = shufflevector <2 x float> %i.eb, <2 x float> %i.eq, <2 x i32> <i32 0, i32 2>
  %i.fw = fmul <2 x float> %i.cv, %i.fv
  %i.fx = shufflevector <2 x float> %i.ea, <2 x float> %i.et, <2 x i32> <i32 0, i32 2>
  %i.fy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fx, <2 x float> %i.cz, <2 x float> %i.fw)
  %i.fz = shufflevector <2 x float> %i.ec, <2 x float> %i.ew, <2 x i32> <i32 0, i32 2>
  %i.ga = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fz, <2 x float> %i.dd, <2 x float> %i.fy)
  store <2 x float> %i.ga, ptr %i.fu, align 16
  %.sroa.15202.32..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 40
  store float %i.ey, ptr %.sroa.15202.32..sroa_idx, align 8
  %.sroa.16203.32..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.16203.32..sroa_idx, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #14
  %i.gb = load ptr, ptr %4, align 8, !tbaa !8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 88
  %i.gd = load ptr, ptr %i.gc, align 8
  %i.ge = tail call noundef float %i.gd(ptr noundef nonnull align 8 dereferenceable(28) %4), !inline_history !124
  call void @_ZN28btTriangleConvexcastCallbackC2EPK13btConvexShapeRK11btTransformS5_S5_f(ptr noundef nonnull align 8 dereferenceable(240) %16, ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) %5, float noundef %i.ge)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfE32BridgeTriangleConvexcastCallback, i64 16), ptr %16, align 8, !tbaa !8
  %i.gf = getelementptr inbounds nuw i8, ptr %16, i64 216
  store ptr %6, ptr %i.gf, align 8, !tbaa !125
  %i.gg = getelementptr inbounds nuw i8, ptr %16, i64 224
  store ptr %3, ptr %i.gg, align 8, !tbaa !130
  %i.gh = getelementptr inbounds nuw i8, ptr %16, i64 232
  store ptr %4, ptr %i.gh, align 8, !tbaa !131
  %i.gi = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.gj = load float, ptr %i.gi, align 8, !tbaa !115
  %i.gk = getelementptr inbounds nuw i8, ptr %16, i64 208
  store float %i.gj, ptr %i.gk, align 8, !tbaa !132
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #14
  %i.gl = load ptr, ptr %0, align 8, !tbaa !8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gn = load ptr, ptr %i.gm, align 8
  invoke void %i.gn(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(64) %15, ptr noundef nonnull align 4 dereferenceable(16) %17, ptr noundef nonnull align 4 dereferenceable(16) %18)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN22btBvhTriangleMeshShape17performConvexcastEP18btTriangleCallbackRK9btVector3S4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(93) %4, ptr noundef nonnull %16, ptr noundef nonnull align 4 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(16) %14, ptr noundef nonnull align 4 dereferenceable(16) %17, ptr noundef nonnull align 4 dereferenceable(16) %18)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14
  call void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(240) %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  br label %bb.ak

bb.u:                                             ; preds = %bb.s, %bb.r
  %i.go = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14
  invoke void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(240) %16)
          to label %bb.v unwind label %bb.al

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  br label %_ZN14CProfileSampleD2Ev.exit

bb.w:                                             ; preds = %bb.q
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !68 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.gt = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !68
  %i.gv = insertelement <2 x float> poison, float %i.gr, i64 0
  %i.gw = shufflevector <2 x float> %i.gv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gx = insertelement <2 x float> poison, float %i.gu, i64 0 ; 2 uses
  %i.gy = shufflevector <2 x float> %i.gx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gz = load <2 x float>, ptr %i.gp, align 4, !tbaa !68 ; 4 uses
  %i.ha = load <2 x float>, ptr %i.gs, align 4, !tbaa !68 ; 4 uses
  %i.hb = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.hc = shufflevector <2 x float> %i.hb, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hd = shufflevector <2 x float> %i.ha, <2 x float> %i.gz, <2 x i32> <i32 1, i32 3>
  %i.he = fmul <2 x float> %i.hc, %i.hd
  %i.hf = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.hg = shufflevector <2 x float> %i.hf, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hh = shufflevector <2 x float> %i.ha, <2 x float> %i.gz, <2 x i32> <i32 0, i32 2>
  %i.hi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hg, <2 x float> %i.hh, <2 x float> %i.he)
  %i.hj = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.hk = shufflevector <2 x float> %i.hj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hl = insertelement <2 x float> %i.gx, float %i.gr, i64 1
  %i.hm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hk, <2 x float> %i.hl, <2 x float> %i.hi)
  %i.hn = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.ho = shufflevector <2 x float> %i.hn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hp = fadd <2 x float> %i.ho, %i.hm           ; 5 uses
  %i.hq = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.hp, <2 x i32> <i32 3, i32 1> ; 2 uses
  %i.hr = shufflevector <2 x float> %i.gz, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hs = fmul <2 x float> %i.bn, %i.hr
  %i.ht = shufflevector <2 x float> %i.gz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> %i.ht, <2 x float> %i.hs)
  %i.hv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bo, <2 x float> %i.gw, <2 x float> %i.hu)
  %i.hw = fadd <2 x float> %i.bx, %i.hv           ; 5 uses
  %i.hx = shufflevector <2 x float> %i.ha, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hy = fmul <2 x float> %i.bn, %i.hx
  %i.hz = shufflevector <2 x float> %i.ha, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ia = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> %i.hz, <2 x float> %i.hy)
  %i.ib = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bo, <2 x float> %i.gy, <2 x float> %i.ia)
  %i.ic = fadd <2 x float> %i.bx, %i.ib           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #14
  %i.id = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ie = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.if = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ig = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ih = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ii = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ij = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ik = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.il = load <2 x float>, ptr %2, align 4, !tbaa !68, !noalias !133 ; 3 uses
  %i.im = load <2 x float>, ptr %i.id, align 4, !tbaa !68, !noalias !133 ; 3 uses
  %i.in = load <2 x float>, ptr %i.ie, align 4, !tbaa !68, !noalias !133 ; 3 uses
  %i.io = shufflevector <2 x float> %i.im, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ip = insertelement <4 x float> %i.io, float 0.000000e+00, i64 3
  %26 = shufflevector <2 x float> %i.bn, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.iq = shufflevector <2 x float> %i.il, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ir = insertelement <4 x float> %i.iq, float 0.000000e+00, i64 3
  %27 = shufflevector <2 x float> %i.bm, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.is = shufflevector <2 x float> %i.in, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.it = insertelement <4 x float> %i.is, float 0.000000e+00, i64 3
  %28 = shufflevector <2 x float> %i.bo, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.iu = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.iv = load <2 x float>, ptr %i.ig, align 4, !tbaa !68, !noalias !133 ; 3 uses
  %i.iw = load float, ptr %i.ij, align 4, !tbaa !68, !noalias !133
  %i.ix = fmul float %i.bb, %i.iw
  %i.iy = load <2 x float>, ptr %i.if, align 4, !tbaa !68, !noalias !133 ; 3 uses
  %i.iz = load float, ptr %i.ii, align 4, !tbaa !68, !noalias !133
  %i.ja = tail call float @llvm.fmuladd.f32(float %i.iz, float %i.ba, float %i.ix)
  %i.jb = load <2 x float>, ptr %i.ih, align 4, !tbaa !68, !noalias !133 ; 3 uses
  %i.jc = load float, ptr %i.ik, align 4, !tbaa !68, !noalias !133
  %i.jd = tail call noundef float @llvm.fmuladd.f32(float %i.jc, float %i.bc, float %i.ja)
  %i.je = shufflevector <2 x float> %i.iv, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.jf = shufflevector <4 x float> %i.ip, <4 x float> %i.je, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.jg = fmul <4 x float> %i.jf, %26
  %i.jh = shufflevector <2 x float> %i.iy, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ji = shufflevector <4 x float> %i.ir, <4 x float> %i.jh, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.jj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ji, <4 x float> %27, <4 x float> %i.jg)
  %i.jk = shufflevector <2 x float> %i.jb, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.jl = shufflevector <4 x float> %i.it, <4 x float> %i.jk, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.jm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jl, <4 x float> %28, <4 x float> %i.jj)
  %i.jn = shufflevector <2 x float> %i.bn, <2 x float> %i.iv, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.jo = insertelement <4 x float> %i.jn, float 0.000000e+00, i64 3
  %i.jp = shufflevector <2 x float> %i.im, <2 x float> %i.bn, <4 x i32> <i32 0, i32 3, i32 3, i32 poison>
  %i.jq = insertelement <4 x float> %i.jp, float 1.000000e+00, i64 3
  %i.jr = fmul <4 x float> %i.jo, %i.jq
  %i.js = shufflevector <2 x float> %i.il, <2 x float> %i.iy, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.jt = insertelement <4 x float> %i.js, float 0.000000e+00, i64 3
  %29 = shufflevector <2 x float> %i.bm, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.ju = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jt, <4 x float> %29, <4 x float> %i.jr)
  %i.jv = shufflevector <2 x float> %i.in, <2 x float> %i.jb, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.jw = insertelement <4 x float> %i.jv, float 0.000000e+00, i64 3
  %30 = shufflevector <2 x float> %i.bo, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.jx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jw, <4 x float> %30, <4 x float> %i.ju)
  store <4 x float> %i.jm, ptr %19, align 16
  store <4 x float> %i.jx, ptr %i.iu, align 16
  %i.jy = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.jz = shufflevector <2 x float> %i.im, <2 x float> %i.iv, <2 x i32> <i32 0, i32 2>
  %i.ka = fmul <2 x float> %i.hc, %i.jz
  %i.kb = shufflevector <2 x float> %i.il, <2 x float> %i.iy, <2 x i32> <i32 0, i32 2>
  %i.kc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kb, <2 x float> %i.hg, <2 x float> %i.ka)
  %i.kd = shufflevector <2 x float> %i.in, <2 x float> %i.jb, <2 x i32> <i32 0, i32 2>
  %i.ke = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kd, <2 x float> %i.hk, <2 x float> %i.kc)
  store <2 x float> %i.ke, ptr %i.jy, align 16
  %.sroa.15146.32..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 40
  store float %i.jd, ptr %.sroa.15146.32..sroa_idx, align 8
  %.sroa.16.32..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.16.32..sroa_idx, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #14
  %i.kf = load ptr, ptr %4, align 8, !tbaa !8
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 88
  %i.kh = load ptr, ptr %i.kg, align 8
  %i.ki = tail call noundef float %i.kh(ptr noundef nonnull align 8 dereferenceable(28) %4), !inline_history !136
  call void @_ZN28btTriangleConvexcastCallbackC2EPK13btConvexShapeRK11btTransformS5_S5_f(ptr noundef nonnull align 8 dereferenceable(240) %20, ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) %5, float noundef %i.ki)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfE32BridgeTriangleConvexcastCallback_0, i64 16), ptr %20, align 8, !tbaa !8
  %i.kj = getelementptr inbounds nuw i8, ptr %20, i64 216
  store ptr %6, ptr %i.kj, align 8, !tbaa !137
  %i.kk = getelementptr inbounds nuw i8, ptr %20, i64 224
  store ptr %3, ptr %i.kk, align 8, !tbaa !139
  %i.kl = getelementptr inbounds nuw i8, ptr %20, i64 232
  store ptr %4, ptr %i.kl, align 8, !tbaa !140
  %i.km = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.kn = load float, ptr %i.km, align 8, !tbaa !115
  %i.ko = getelementptr inbounds nuw i8, ptr %20, i64 208
  store float %i.kn, ptr %i.ko, align 8, !tbaa !132
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #14
  %i.kp = load ptr, ptr %0, align 8, !tbaa !8
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  %i.kr = load ptr, ptr %i.kq, align 8
  invoke void %i.kr(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(64) %19, ptr noundef nonnull align 4 dereferenceable(16) %21, ptr noundef nonnull align 4 dereferenceable(16) %22)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #14
  store <2 x float> %i.hw, ptr %23, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  store <2 x float> %i.hq, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !64
  %i.ks = extractelement <2 x float> %i.hw, i64 0 ; 2 uses
  %i.kt = extractelement <2 x float> %i.ic, i64 0 ; 3 uses
  %i.ku = fcmp olt float %i.kt, %i.ks
  br i1 %i.ku, label %bb.y, label %_Z8btSetMinIfEvRT_RKS0_.exit.i

bb.y:                                             ; preds = %bb.x
  store float %i.kt, ptr %23, align 8, !tbaa !68
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i

_Z8btSetMinIfEvRT_RKS0_.exit.i:                   ; preds = %bb.y, %bb.x
  %i.kv = phi float [ %i.kt, %bb.y ], [ %i.ks, %bb.x ]
  %i.kw = extractelement <2 x float> %i.hw, i64 1 ; 2 uses
  %i.kx = extractelement <2 x float> %i.ic, i64 1 ; 3 uses
  %i.ky = fcmp olt float %i.kx, %i.kw
  br i1 %i.ky, label %bb.z, label %_Z8btSetMinIfEvRT_RKS0_.exit5.i

bb.z:                                             ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.i
  %i.kz = getelementptr inbounds nuw i8, ptr %23, i64 4
  store float %i.kx, ptr %i.kz, align 4, !tbaa !68
  br label %_Z8btSetMinIfEvRT_RKS0_.exit5.i

_Z8btSetMinIfEvRT_RKS0_.exit5.i:                  ; preds = %bb.z, %_Z8btSetMinIfEvRT_RKS0_.exit.i
  %i.la = phi float [ %i.kx, %bb.z ], [ %i.kw, %_Z8btSetMinIfEvRT_RKS0_.exit.i ]
  %i.lb = shufflevector <2 x float> %i.hp, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.lc = fcmp olt <2 x float> %i.hp, %i.lb
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #14
  %.sroa.6.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  store <2 x float> %i.hq, ptr %.sroa.6.0..sroa_idx10, align 8, !tbaa !64
  %i.ld = fcmp olt <2 x float> %i.hw, %i.ic
  %i.le = load <2 x float>, ptr %21, align 16, !tbaa !68
  %i.lf = insertelement <2 x float> poison, float %i.kv, i64 0
  %i.lg = insertelement <2 x float> %i.lf, float %i.la, i64 1
  %i.lh = fadd <2 x float> %i.le, %i.lg
  store <2 x float> %i.lh, ptr %23, align 8, !tbaa !68
  %i.li = load <4 x float>, ptr %21, align 16
  %i.lj = shufflevector <4 x float> %i.li, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.lk = select <2 x i1> %i.ld, <2 x float> %i.ic, <2 x float> %i.hw
  %i.ll = load <2 x float>, ptr %22, align 8, !tbaa !68
  %i.lm = fadd <2 x float> %i.ll, %i.lk
  store <2 x float> %i.lm, ptr %24, align 8, !tbaa !68
  %i.ln = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.lo = load float, ptr %i.ln, align 8, !tbaa !68
  %i.lp = shufflevector <2 x float> %i.hp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lq = shufflevector <2 x float> %i.hp, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.lr = select <2 x i1> %i.lc, <2 x float> %i.lp, <2 x float> %i.lq
  %i.ls = insertelement <2 x float> %i.lj, float %i.lo, i64 1
  %i.lt = fadd <2 x float> %i.ls, %i.lr           ; 2 uses
  %i.lu = extractelement <2 x float> %i.lt, i64 0
  store float %i.lu, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !68
  %i.lv = extractelement <2 x float> %i.lt, i64 1
  store float %i.lv, ptr %.sroa.6.0..sroa_idx10, align 8, !tbaa !68
  %i.lw = load ptr, ptr %4, align 8, !tbaa !8
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 96
  %i.ly = load ptr, ptr %i.lx, align 8
  invoke void %i.ly(ptr noundef nonnull align 8 dereferenceable(28) %4, ptr noundef nonnull %20, ptr noundef nonnull align 4 dereferenceable(16) %23, ptr noundef nonnull align 4 dereferenceable(16) %24)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #14
  call void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(240) %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #14
  br label %bb.ak

bb.ab:                                            ; preds = %bb.w
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ac:                                            ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit5.i
  %i.ma = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #14
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.pn86.pn = phi { ptr, i32 } [ %i.ma, %bb.ac ], [ %i.lz, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #14
  invoke void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(240) %20)
          to label %bb.ae unwind label %bb.al

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #14
  br label %_ZN14CProfileSampleD2Ev.exit

bb.af:                                            ; preds = %bb.p
  %i.mb = icmp eq i32 %i.b, 31
  br i1 %i.mb, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  tail call void @_ZN15CProfileManager13Start_ProfileEPKc(ptr noundef nonnull @.str.8)
  %i.mc = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 2 uses
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !101
  %i.me = icmp sgt i32 %i.md, 0
  br i1 %i.me, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.ag
  %i.mf = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.mg = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.mh = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.mi = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.mj = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.mk = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.ml = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.mm = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.mn = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.mo = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.mp = getelementptr inbounds nuw i8, ptr %25, i64 32
  %i.mq = getelementptr inbounds nuw i8, ptr %25, i64 48
  %.sroa.4.0..sroa_idx.i126 = getelementptr inbounds nuw i8, ptr %25, i64 56
  %i.mr = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 3 uses
  %.pre = load ptr, ptr %i.mr, align 8, !tbaa !65
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph, %bb.ai
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ai ] ; 2 uses
  %i.ms = load ptr, ptr %i.mf, align 8, !tbaa !105
  %i.mt = getelementptr inbounds nuw [88 x i8], ptr %i.ms, i64 %indvars.iv ; 13 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mt, i64 4
  %.sroa.6.0..sroa_idx127 = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 16
  %.sroa.9.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mt, i64 20
  %.sroa.10.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mt, i64 24
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mt, i64 32
  %.sroa.13.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mt, i64 36
  %.sroa.14.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mt, i64 40
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mt, i64 48
  %.sroa.15130.48.copyload = load float, ptr %i.mw, align 4 ; 2 uses
  %.sroa.17.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mt, i64 52
  %.sroa.17.48.copyload = load float, ptr %.sroa.17.48..sroa_idx, align 4 ; 2 uses
  %.sroa.18.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mt, i64 56
  %.sroa.18.48.copyload = load float, ptr %.sroa.18.48..sroa_idx, align 4 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mt, i64 64
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !106 ; 2 uses
  %i.mz = load <2 x float>, ptr %i.mt, align 8    ; 2 uses
  %i.na = load <2 x float>, ptr %i.mu, align 8    ; 2 uses
  %i.nb = load <2 x float>, ptr %i.mv, align 8    ; 2 uses
  %i.nc = shufflevector <2 x float> %i.na, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.nd = insertelement <4 x float> %i.nc, float 0.000000e+00, i64 3
  %i.ne = shufflevector <2 x float> %i.mz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.nf = insertelement <4 x float> %i.ne, float 0.000000e+00, i64 3
  %i.ng = shufflevector <2 x float> %i.nb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.nh = insertelement <4 x float> %i.ng, float 0.000000e+00, i64 3
  %i.ni = load <2 x float>, ptr %.sroa.5.0..sroa_idx, align 4 ; 2 uses
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx127, align 8
  %i.nj = load <2 x float>, ptr %.sroa.9.16..sroa_idx, align 4 ; 2 uses
  %.sroa.10.16.copyload = load float, ptr %.sroa.10.16..sroa_idx, align 8
  %i.nk = load <2 x float>, ptr %.sroa.13.32..sroa_idx, align 4 ; 2 uses
  %.sroa.14.32.copyload = load float, ptr %.sroa.14.32..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #14
end_hunk_0
begin_hunk_1_@_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load float, ptr %i.h, align 4, !tbaa !68, !noalias !165
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load float, ptr %i.k, align 4, !tbaa !68, !noalias !165
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = load float, ptr %i.n, align 4, !tbaa !68, !noalias !165
  %i.p = load <2 x float>, ptr %i.c, align 4, !tbaa !68, !noalias !168 ; 3 uses
  %i.q = load <2 x float>, ptr %i.a, align 4, !tbaa !68, !noalias !168 ; 5 uses
  %i.r = fneg <2 x float> %i.p                    ; 2 uses
  %i.s = load <2 x float>, ptr %0, align 4, !tbaa !68, !noalias !168 ; 4 uses
  %i.t = extractelement <2 x float> %i.s, i64 0
  %i.u = extractelement <2 x float> %i.q, i64 0
  %i.v = shufflevector <2 x float> %i.s, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.w = shufflevector <2 x float> %i.p, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.x = insertelement <4 x float> %i.w, float -0.000000e+00, i64 3
  %i.y = shufflevector <2 x float> %i.q, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.z = shufflevector <4 x float> %i.x, <4 x float> %i.y, <4 x i32> <i32 0, i32 poison, i32 4, i32 3>
  %i.aa = load <2 x float>, ptr %i.b, align 4, !tbaa !68, !noalias !168 ; 4 uses
  %i.ab = load float, ptr %i.e, align 4, !tbaa !68, !noalias !168 ; 2 uses
  %i.ac = fneg float %i.ab
  %i.ad = load <2 x float>, ptr %i.f, align 4, !tbaa !68, !noalias !168 ; 3 uses
  %i.ae = load float, ptr %i.d, align 4, !tbaa !68, !noalias !168
  %i.af = load <2 x float>, ptr %i.g, align 4, !tbaa !68, !noalias !168 ; 6 uses
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ah = shufflevector <2 x float> %i.ad, <2 x float> %i.aa, <2 x i32> <i32 1, i32 2>
  %i.ai = fneg <2 x float> %i.ah                  ; 2 uses
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ak = fmul <2 x float> %i.af, %i.ai
  %i.al = extractelement <2 x float> %i.af, i64 1
  %i.am = shufflevector <2 x float> %i.af, <2 x float> %i.q, <4 x i32> <i32 poison, i32 poison, i32 1, i32 2>
  %i.an = insertelement <4 x float> %i.am, float %i.ab, i64 0
  %i.ao = insertelement <4 x float> %i.an, float %i.ac, i64 1
  %i.ap = shufflevector <2 x float> %i.r, <2 x float> %i.s, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.aq = shufflevector <4 x float> %i.ap, <4 x float> %i.aj, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ar = fmul <4 x float> %i.ao, %i.aq           ; 2 uses
  %i.as = shufflevector <2 x float> %i.aa, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.at = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.as, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.au = shufflevector <4 x float> %i.at, <4 x float> %i.v, <4 x i32> <i32 0, i32 4, i32 poison, i32 3>
  %i.av = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.aw = shufflevector <4 x float> %i.au, <4 x float> %i.av, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.ax = shufflevector <2 x float> %i.ad, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ay = shufflevector <4 x float> %i.z, <4 x float> %i.ax, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %i.az = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.ar, <4 x i32> <i32 7, i32 6, i32 5, i32 3>
  %i.ba = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aw, <4 x float> %i.ay, <4 x float> %i.az) ; 2 uses
  %i.bb = extractelement <4 x float> %i.ba, i64 0
  %i.bc = extractelement <2 x float> %i.af, i64 0
  %i.bd = fmul float %i.bc, %i.bb
  %i.be = shufflevector <2 x float> %i.ad, <2 x float> %i.aa, <2 x i32> <i32 0, i32 3>
  %i.bf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.be, <2 x float> %i.ak)
  %i.bg = extractelement <2 x float> %i.aa, i64 0
  %i.bh = extractelement <4 x float> %i.ar, i64 0
  %i.bi = tail call noundef float @llvm.fmuladd.f32(float %i.bg, float %i.ae, float %i.bh) ; 2 uses
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.t, float %i.bi, float %i.bd)
  %i.bk = fneg float %i.u
  %i.bl = shufflevector <2 x float> %i.q, <2 x float> %i.s, <4 x i32> <i32 1, i32 2, i32 3, i32 poison> ; 2 uses
  %i.bm = insertelement <4 x float> %i.bl, float 0.000000e+00, i64 3
  %i.bn = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.bk, i64 2
  %i.bo = shufflevector <2 x float> %i.r, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bp = shufflevector <4 x float> %i.bo, <4 x float> %i.bn, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bq = fmul <4 x float> %i.bm, %i.bp
  %i.br = shufflevector <4 x float> %i.ay, <4 x float> %i.bl, <4 x i32> <i32 2, i32 6, i32 5, i32 poison>
  %i.bs = insertelement <4 x float> %i.br, float 0.000000e+00, i64 3
  %i.bt = shufflevector <2 x float> %i.p, <2 x float> %i.q, <4 x i32> <i32 1, i32 0, i32 3, i32 poison>
  %i.bu = insertelement <4 x float> %i.bt, float -0.000000e+00, i64 3
  %i.bv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bs, <4 x float> %i.bu, <4 x float> %i.bq) ; 2 uses
  %i.bw = extractelement <4 x float> %i.bv, i64 0
  %i.bx = tail call noundef float @llvm.fmuladd.f32(float %i.al, float %i.bw, float %i.bj)
  %i.by = fdiv float 1.000000e+00, %i.bx
  %i.bz = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.bi, i64 0
  %i.ca = shufflevector <2 x float> %i.bf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cb = shufflevector <4 x float> %i.bz, <4 x float> %i.ca, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.cc = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.by, i64 0
  %i.cd = shufflevector <4 x float> %i.cc, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 3 uses
  %i.ce = fmul <4 x float> %i.cb, %i.cd           ; 2 uses
  %i.cf = fmul <4 x float> %i.ba, %i.cd           ; 2 uses
  %i.cg = fmul <4 x float> %i.bv, %i.cd           ; 2 uses
  %i.ch = load <2 x float>, ptr %1, align 4, !tbaa !68, !noalias !165 ; 2 uses
  %i.ci = shufflevector <2 x float> %i.ch, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.cj = fmul <4 x float> %i.ci, %i.cf
  %i.ck = shufflevector <2 x float> %i.ch, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.cl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ce, <4 x float> %i.ck, <4 x float> %i.cj)
  %i.cm = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.i, i64 0
  %i.cn = shufflevector <4 x float> %i.cm, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.co = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cg, <4 x float> %i.cn, <4 x float> %i.cl)
  store <4 x float> %i.co, ptr %4, align 16, !tbaa !68, !alias.scope !165
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cq = load <2 x float>, ptr %i.j, align 4, !tbaa !68, !noalias !165 ; 2 uses
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.cs = insertelement <4 x float> %i.cf, float 1.000000e+00, i64 3 ; 2 uses
  %i.ct = fmul <4 x float> %i.cr, %i.cs
  %i.cu = insertelement <4 x float> %i.ce, float 0.000000e+00, i64 3 ; 2 uses
  %i.cv = shufflevector <2 x float> %i.cq, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.cw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cu, <4 x float> %i.cv, <4 x float> %i.ct)
  %i.cx = insertelement <4 x float> %i.cg, float 0.000000e+00, i64 3 ; 2 uses
  %i.cy = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.l, i64 0
  %i.cz = shufflevector <4 x float> %i.cy, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.da = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cx, <4 x float> %i.cz, <4 x float> %i.cw)
  store <4 x float> %i.da, ptr %i.cp, align 16, !tbaa !68, !alias.scope !165
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.dc = load <2 x float>, ptr %i.m, align 4, !tbaa !68, !noalias !165 ; 2 uses
  %i.dd = shufflevector <2 x float> %i.dc, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.de = fmul <4 x float> %i.dd, %i.cs
  %i.df = shufflevector <2 x float> %i.dc, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.dg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cu, <4 x float> %i.df, <4 x float> %i.de)
  %i.dh = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.o, i64 0
  %i.di = shufflevector <4 x float> %i.dh, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cx, <4 x float> %i.di, <4 x float> %i.dg)
  store <4 x float> %i.dj, ptr %i.db, align 16, !tbaa !68, !alias.scope !165
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(48) %4, ptr noundef nonnull align 4 dereferenceable(16) %5)
  %i.dk = load float, ptr %5, align 4, !tbaa !68  ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !68 ; 3 uses
  %i.dn = fmul float %i.dm, %i.dm
  %i.do = call float @llvm.fmuladd.f32(float %i.dk, float %i.dk, float %i.dn)
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !68 ; 3 uses
  %i.dr = call float @llvm.fmuladd.f32(float %i.dq, float %i.dq, float %i.do)
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !68 ; 3 uses
  %i.du = call noundef float @llvm.fmuladd.f32(float %i.dt, float %i.dt, float %i.dr)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.du)
  %i.dv = fdiv float 1.000000e+00, %sqrt.i.i      ; 4 uses
  %i.dw = fmul float %i.dk, %i.dv                 ; 3 uses
  %i.dx = fmul float %i.dm, %i.dv                 ; 3 uses
  %i.dy = fmul float %i.dq, %i.dv                 ; 3 uses
  %i.dz = fmul float %i.dt, %i.dv
  %i.ea = call noundef float @acosf(float noundef %i.dz) #14, !tbaa !4
  %i.eb = fmul float %i.ea, 2.000000e+00
  store float %i.eb, ptr %3, align 4, !tbaa !68
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  store float 0.000000e+00, ptr %.sroa.616.0..sroa_idx, align 4, !tbaa !68
  %i.ec = fmul float %i.dx, %i.dx
  %i.ed = call float @llvm.fmuladd.f32(float %i.dw, float %i.dw, float %i.ec)
  %i.ee = call noundef float @llvm.fmuladd.f32(float %i.dy, float %i.dy, float %i.ed) ; 2 uses
  %i.ef = fcmp olt float %i.ee, f0x28800000
  br i1 %i.ef, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %sqrt = call float @llvm.sqrt.f32(float %i.ee)
  %i.eg = fdiv float 1.000000e+00, %sqrt          ; 3 uses
  %i.eh = fmul float %i.dw, %i.eg
  %i.ei = fmul float %i.dx, %i.eg
  %i.ej = fmul float %i.dy, %i.eg
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink21 = phi float [ %i.eh, %bb.b ], [ 1.000000e+00, %bb.a ]
  %.sink20 = phi float [ %i.ei, %bb.b ], [ 0.000000e+00, %bb.a ]
  %.sink = phi float [ %i.ej, %bb.b ], [ 0.000000e+00, %bb.a ]
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %.sink21, ptr %2, align 4
  store float %.sink20, ptr %.sroa.414.0..sroa_idx, align 4
  store float %.sink, ptr %.sroa.515.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 7 uses
  %i.b = load float, ptr %0, align 4, !tbaa !68   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load float, ptr %i.c, align 4, !tbaa !68 ; 3 uses
  %i.e = fadd float %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load float, ptr %i.f, align 4, !tbaa !68 ; 3 uses
  %i.h = fadd float %i.e, %i.g                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.i = fcmp ogt float %i.h, 0.000000e+00
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = fadd float %i.h, 1.000000e+00
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = tail call noundef float @sqrtf(float noundef %i.l) #14, !tbaa !4 ; 2 uses
  %i.r = fdiv float 5.000000e-01, %i.q
  %i.s = load float, ptr %i.n, align 4, !tbaa !68
  %i.t = load float, ptr %i.m, align 4, !tbaa !68
  %i.u = load float, ptr %i.j, align 4, !tbaa !68
  %i.v = load float, ptr %i.k, align 4, !tbaa !68
  %i.w = load float, ptr %i.o, align 4, !tbaa !68
  %i.x = load float, ptr %i.p, align 4, !tbaa !68
  %i.y = fsub float %i.v, %i.x
  %i.z = fsub float %i.w, %i.u
  %i.aa = fsub float %i.t, %i.s
  %i.ab = insertelement <4 x float> poison, float %i.r, i64 0
  %i.ac = insertelement <4 x float> %i.ab, float %i.q, i64 1
  %2 = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ad = insertelement <4 x float> <float poison, float poison, float poison, float 5.000000e-01>, float %i.aa, i64 0
  %i.ae = insertelement <4 x float> %i.ad, float %i.z, i64 1
  %i.af = insertelement <4 x float> %i.ae, float %i.y, i64 2
  %i.ag = fmul <4 x float> %2, %i.af
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ah = fcmp olt float %i.b, %i.d
  %i.ai = fcmp olt float %i.d, %i.g
  %i.aj = select i1 %i.ai, i32 2, i32 1
  %i.ak = fcmp olt float %i.b, %i.g
  %i.al = select i1 %i.ak, i32 2, i32 0
  %i.am = select i1 %i.ah, i32 %i.aj, i32 %i.al
  %.fr = freeze i32 %i.am                         ; 3 uses
  %i.an = add nuw nsw i32 %.fr, 1                 ; 2 uses
  %i.ao = icmp eq i32 %i.an, 3
  %i.ap = select i1 %i.ao, i32 0, i32 %i.an
  %i.aq = add nuw nsw i32 %.fr, 2
  %i.ar = urem i32 %i.aq, 3
  %i.as = zext nneg i32 %.fr to i64               ; 5 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.as ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.as
  %i.av = load float, ptr %i.au, align 4, !tbaa !68
  %i.aw = sext i32 %i.ap to i64                   ; 5 uses
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.aw ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.aw
  %i.az = load float, ptr %i.ay, align 4, !tbaa !68
  %i.ba = fsub float %i.av, %i.az
  %i.bb = zext nneg i32 %i.ar to i64              ; 5 uses
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bb ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.bb
  %i.be = load float, ptr %i.bd, align 4, !tbaa !68
  %i.bf = fsub float %i.ba, %i.be
  %i.bg = fadd float %i.bf, 1.000000e+00
  %i.bh = tail call noundef float @sqrtf(float noundef %i.bg) #14, !tbaa !4 ; 2 uses
  %i.bi = fmul float %i.bh, 5.000000e-01
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.as
  store float %i.bi, ptr %i.bj, align 4, !tbaa !68
  %i.bk = fdiv float 5.000000e-01, %i.bh          ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.aw
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !68
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bb
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !68
  %i.bp = fsub float %i.bm, %i.bo
  %i.bq = fmul float %i.bk, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float %i.bq, ptr %i.br, align 4, !tbaa !68
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.as
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !68
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.aw
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !68
  %i.bw = fadd float %i.bt, %i.bv
  %i.bx = fmul float %i.bk, %i.bw
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.aw
  store float %i.bx, ptr %i.by, align 4, !tbaa !68
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.as
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !68
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.bb
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !68
  %i.cd = fadd float %i.ca, %i.cc
  %i.ce = fmul float %i.bk, %i.cd
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bb
  store float %i.ce, ptr %i.cf, align 4, !tbaa !68
  %i.cg = load <4 x float>, ptr %i.a, align 16, !tbaa !68
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ch = phi <4 x float> [ %i.cg, %bb.c ], [ %i.ag, %bb.b ]
  store <4 x float> %i.ch, ptr %1, align 4, !tbaa !68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @acosf(float noundef) local_unnamed_addr #9

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN21btSingleSweepCallbackD0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN21btSingleSweepCallback7processEPK17btBroadphaseProxy(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !171, !nonnull !62, !align !162 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load float, ptr %i.c, align 8, !tbaa !115
  %i.e = fcmp une float %i.d, 0.000000e+00        ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !163    ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 192
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !49
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef %i.h)
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !157
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !65
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !171, !nonnull !62, !align !162
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.v = load float, ptr %i.u, align 8, !tbaa !156
  tail call void @_ZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEf(ptr noundef %i.n, ptr noundef nonnull align 4 dereferenceable(64) %i.o, ptr noundef nonnull align 4 dereferenceable(64) %i.p, ptr noundef nonnull %i.f, ptr noundef %i.r, ptr noundef nonnull align 4 dereferenceable(64) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.t, float noundef %i.v)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret i1 %i.e
}

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #6

declare noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #8

attributes #0 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind }
attributes #15 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11, !16, i64 24}
!11 = !{!"_ZTS20btAlignedObjectArrayIP17btCollisionObjectE", !12, i64 0, !5, i64 4, !5, i64 8, !13, i64 16, !16, i64 24}
!12 = !{!"_ZTS18btAlignedAllocatorIP17btCollisionObjectLj16EE"}
!13 = !{!"p2 _ZTS17btCollisionObject", !14, i64 0}
!14 = !{!"any p2 pointer", !15, i64 0}
!15 = !{!"any pointer", !6, i64 0}
!16 = !{!"bool", !6, i64 0}
!17 = !{!11, !13, i64 16}
!18 = !{!11, !5, i64 4}
!19 = !{!11, !5, i64 8}
!20 = !{!21, !22, i64 40}
!21 = !{!"_ZTS16btCollisionWorld", !11, i64 8, !22, i64 40, !23, i64 48, !26, i64 104, !27, i64 112, !25, i64 120, !16, i64 128}
!22 = !{!"p1 _ZTS12btDispatcher", !15, i64 0}
!23 = !{!"_ZTS16btDispatcherInfo", !24, i64 0, !5, i64 4, !5, i64 8, !24, i64 12, !16, i64 16, !25, i64 24, !16, i64 32, !16, i64 33, !16, i64 34, !24, i64 36, !16, i64 40, !24, i64 44, !26, i64 48}
!24 = !{!"float", !6, i64 0}
!25 = !{!"p1 _ZTS12btIDebugDraw", !15, i64 0}
!26 = !{!"p1 _ZTS12btStackAlloc", !15, i64 0}
!27 = !{!"p1 _ZTS21btBroadphaseInterface", !15, i64 0}
!28 = !{!23, !24, i64 0}
!29 = !{!23, !5, i64 4}
!30 = !{!23, !5, i64 8}
!31 = !{!23, !24, i64 12}
!32 = !{!23, !16, i64 16}
!33 = !{!23, !25, i64 24}
!34 = !{!23, !16, i64 32}
!35 = !{!23, !16, i64 33}
!36 = !{!23, !16, i64 34}
!37 = !{!23, !24, i64 36}
!38 = !{!23, !16, i64 40}
end_hunk_1

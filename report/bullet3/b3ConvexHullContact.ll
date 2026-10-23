Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3ConvexHullContact?download=true
inline.NumInlined: 2655
inline.NumDeleted: 497
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 94
begin_hunk_0_@_Z23findCompoundPairsKerneliiiiiPK15b3RigidBodyDataPK12b3CollidablePK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3Vector3ERKS8_I6b3AabbESG_PK15b3GpuChildShapeP6b3Int4PiiRS8_I18b3QuantizedBvhNodeERS8_I16b3BvhSubtreeInfoERS8_I9b3BvhInfoE:bb.a
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fa
  %.phi.trans.insert37.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.fn = fadd float %i.eh, 1.000000e+00          ; 2 uses
  %i.fo = fsub <2 x float> %i.du, %i.dt           ; 2 uses
  %i.fp = fsub float %i.dq, %i.dp                 ; 2 uses
  %.sroa.25.48..sroa_idx.i.i370 = getelementptr inbounds nuw i8, ptr %22, i64 52
  %i.fq = load <2 x float>, ptr %i.bm, align 16   ; 2 uses
  %.sroa.25.48.copyload.i.i371 = load float, ptr %.sroa.25.48..sroa_idx.i.i370, align 4
  %.sroa.26.48..sroa_idx.i.i372 = getelementptr inbounds nuw i8, ptr %22, i64 56
  %.sroa.26.48.copyload.i.i373 = load float, ptr %.sroa.26.48..sroa_idx.i.i372, align 8 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %23, i64 24 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 7 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %23, i64 4 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.fw = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %.phi.trans.insert.i606 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.eu
  %i.fy = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ex
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fa
  %.sroa.2.0.insert.ext.i468 = zext i32 %2 to i64
  %.sroa.2.0.insert.shift.i469 = shl nuw i64 %.sroa.2.0.insert.ext.i468, 32
  %.sroa.0.0.insert.ext.i470 = zext i32 %1 to i64
  %.sroa.0.0.insert.insert.i471 = or disjoint i64 %.sroa.2.0.insert.shift.i469, %.sroa.0.0.insert.ext.i470
  %i.gb = sext i32 %i.ao to i64
  %i.gc = sext i32 %i.ak to i64
  %wide.trip.count870 = zext nneg i32 %i.ai to i64
  %wide.trip.count = zext nneg i32 %i.aq to i64
  %i.gd = insertelement <2 x float> %i.fq, float %.sroa.26.48.copyload.i.i373, i64 1
  %i.ge = insertelement <4 x float> poison, float %i.fp, i64 0
  %i.gf = shufflevector <2 x float> %i.fq, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %i.gg = insertelement <4 x float> %i.gf, float -0.000000e+00, i64 3
  %i.gh = insertelement <4 x float> %i.gg, float %.sroa.26.48.copyload.i.i373, i64 1
  %i.gi = shufflevector <2 x float> %i.fo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gj = shufflevector <4 x float> %i.ge, <4 x float> %i.gi, <4 x i32> <i32 0, i32 poison, i32 4, i32 5>
  br label %bb.f

._crit_edge860:                                   ; preds = %._crit_edge, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  br label %.loopexit848

bb.f:                                             ; preds = %.lr.ph859, %._crit_edge
  %indvars.iv867 = phi i64 [ 0, %.lr.ph859 ], [ %indvars.iv.next868, %._crit_edge ] ; 2 uses
  %i.gk = load ptr, ptr %i.ee, align 8, !tbaa !163
  %i.gl = getelementptr [32 x i8], ptr %i.gk, i64 %indvars.iv867
  %i.gm = getelementptr [32 x i8], ptr %i.gl, i64 %i.gc ; 3 uses
  %.sroa.7816.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gm, i64 6
  %.sroa.10819.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gm, i64 12
  %.sroa.10819.0.copyload = load i32, ptr %.sroa.10819.0..sroa_idx, align 4
  %i.gn = load ptr, ptr %i.ad, align 8, !tbaa !159
  %i.go = getelementptr inbounds [64 x i8], ptr %i.gn, i64 %i.af ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 32
  %i.gq = load <3 x i16>, ptr %i.gm, align 16
  %i.gr = load <3 x i16>, ptr %.sroa.7816.0..sroa_idx, align 2
  %i.gs = uitofp <3 x i16> %i.gq to <3 x float>
  %i.gt = load <3 x float>, ptr %i.gp, align 16, !tbaa !37 ; 2 uses
  %i.gu = fdiv <3 x float> %i.gs, %i.gt
  %i.gv = load <3 x float>, ptr %i.go, align 16, !tbaa !37 ; 2 uses
  %i.gw = fadd <3 x float> %i.gu, %i.gv           ; 2 uses
  %i.gx = uitofp <3 x i16> %i.gr to <3 x float>
  %i.gy = fdiv <3 x float> %i.gx, %i.gt
  %i.gz = fadd <3 x float> %i.gy, %i.gv           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @_ZNK11b3Matrix3x311getRotationER12b3Quaternion(ptr noundef nonnull align 16 dereferenceable(64) %21, ptr noundef nonnull align 16 dereferenceable(16) %20)
  %.fca.0.load.i = load <2 x float>, ptr %20, align 16 ; 8 uses
  %.fca.1.load.i = load <2 x float>, ptr %.fca.1.gep.i, align 8 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  %i.ha = fsub <3 x float> %i.gz, %i.gw
  %i.hb = fmul <3 x float> %i.ha, splat (float 5.000000e-01)
  %i.hc = fadd <3 x float> %i.hb, zeroinitializer ; 6 uses
  %i.hd = fadd <3 x float> %i.gz, %i.gw
  %i.he = fmul <3 x float> %i.hd, splat (float 5.000000e-01) ; 6 uses
  %.sroa.0803.0.vec.extract = extractelement <2 x float> %.fca.0.load.i, i64 0 ; 3 uses
  %foldExtExtBinop944 = fmul <2 x float> %.fca.0.load.i, %.fca.0.load.i
  %i.hf = extractelement <2 x float> %foldExtExtBinop944, i64 1
  %i.hg = call float @llvm.fmuladd.f32(float %.sroa.0803.0.vec.extract, float %.sroa.0803.0.vec.extract, float %i.hf)
  %.sroa.5804.8.vec.extract = extractelement <2 x float> %.fca.1.load.i, i64 0 ; 3 uses
  %i.hh = call float @llvm.fmuladd.f32(float %.sroa.5804.8.vec.extract, float %.sroa.5804.8.vec.extract, float %i.hg)
  %.sroa.5804.12.vec.extract = extractelement <2 x float> %.fca.1.load.i, i64 1 ; 2 uses
  %i.hi = call noundef float @llvm.fmuladd.f32(float %.sroa.5804.12.vec.extract, float %.sroa.5804.12.vec.extract, float %i.hh)
  %i.hj = fdiv float 2.000000e+00, %i.hi          ; 2 uses
  %i.hk = shufflevector <2 x float> %.fca.0.load.i, <2 x float> %.fca.1.load.i, <2 x i32> <i32 1, i32 2>
  %i.hl = insertelement <2 x float> poison, float %i.hj, i64 0
  %i.hm = shufflevector <2 x float> %i.hl, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hn = fmul <2 x float> %i.hk, %i.hm           ; 2 uses
  %i.ho = shufflevector <2 x float> %.fca.1.load.i, <2 x float> %.fca.0.load.i, <2 x i32> <i32 0, i32 2>
  %i.hp = fmul <2 x float> %i.ho, %i.hm           ; 2 uses
  %i.hq = shufflevector <2 x float> %.fca.1.load.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hr = fmul <2 x float> %i.hq, %i.hp           ; 4 uses
  %i.hs = shufflevector <2 x float> %i.hp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ht = insertelement <2 x float> %i.hs, float %i.hj, i64 1
  %i.hu = fmul <2 x float> %.fca.0.load.i, %i.ht  ; 4 uses
  %i.hv = extractelement <2 x float> %i.hn, i64 1 ; 2 uses
  %i.hw = fmul float %.sroa.0803.0.vec.extract, %i.hv
  %foldExtExtBinop912 = fmul <2 x float> %.fca.0.load.i, %i.hu ; 2 uses
  %i.hx = extractelement <2 x float> %foldExtExtBinop912, i64 1
  %i.hy = fmul <2 x float> %.fca.0.load.i, %i.hn  ; 4 uses
  %i.hz = fmul float %.sroa.5804.8.vec.extract, %i.hv ; 2 uses
  %i.ia = fadd float %i.hx, %i.hz
  %foldExtExtBinop914 = fadd <2 x float> %i.hy, %i.hr
  %i.ib = extractelement <2 x float> %foldExtExtBinop914, i64 0 ; 2 uses
  %i.ic = extractelement <2 x float> %i.hu, i64 0
  %i.id = fadd float %i.ic, %i.hz
  %i.ie = shufflevector <2 x float> %.fca.1.load.i, <2 x float> %foldExtExtBinop912, <2 x i32> <i32 3, i32 1> ; 2 uses
  %i.if = fadd <2 x float> %i.ie, %i.hu
  %i.ig = fmul <2 x float> %i.ie, %i.hu
  %i.ih = shufflevector <2 x float> %i.if, <2 x float> %i.ig, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.ii = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.hw, i64 1 ; 3 uses
  %i.ij = insertelement <2 x float> %i.ih, float %i.ia, i64 0
  %i.ik = fsub <2 x float> %i.ii, %i.ij           ; 2 uses
  %i.il = fadd <2 x float> %i.hy, %i.hr
  %i.im = fsub <2 x float> %i.hy, %i.hr
  %i.in = shufflevector <2 x float> %i.im, <2 x float> %i.il, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.io = fsub <2 x float> %i.ii, %i.ih
  %i.ip = fadd <2 x float> %i.ii, %i.ih
  %i.iq = shufflevector <2 x float> %i.io, <2 x float> %i.ip, <2 x i32> <i32 3, i32 0> ; 2 uses
  %i.ir = call noundef float @llvm.fabs.f32(float %i.ib)
  %i.is = insertelement <2 x float> %i.hy, float 1.000000e+00, i64 0
  %i.it = insertelement <2 x float> %i.hr, float %i.id, i64 0
  %i.iu = fsub <2 x float> %i.is, %i.it           ; 3 uses
  %i.iv = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.iu) ; 2 uses
  %i.iw = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ik)
  %i.ix = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.in)
  %i.iy = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.iq)
  %.sroa.25.48.copyload.i.i = load float, ptr %.sroa.25.48..sroa_idx.i.i, align 4
  %i.iz = load <3 x float>, ptr %i.ax, align 16
  %i.ja = shufflevector <3 x float> %i.iz, <3 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.jb = extractelement <3 x float> %i.he, i64 1
  %i.jc = extractelement <2 x float> %i.iu, i64 0
  %i.jd = fmul float %i.jb, %i.jc
  %i.je = extractelement <3 x float> %i.he, i64 0
  %i.jf = call float @llvm.fmuladd.f32(float %i.je, float %i.ib, float %i.jd)
  %i.jg = extractelement <3 x float> %i.he, i64 2
  %i.jh = extractelement <2 x float> %i.iu, i64 1
  %i.ji = call noundef float @llvm.fmuladd.f32(float %i.jg, float %i.jh, float %i.jf)
  %i.jj = shufflevector <3 x float> %i.he, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jk = fmul <2 x float> %i.jj, %i.in
  %i.jl = shufflevector <3 x float> %i.he, <3 x float> poison, <2 x i32> zeroinitializer
  %i.jm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jl, <2 x float> %i.ik, <2 x float> %i.jk)
  %i.jn = shufflevector <3 x float> %i.he, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.jo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jn, <2 x float> %i.iq, <2 x float> %i.jm)
  %i.jp = fadd float %.sroa.25.48.copyload.i.i, %i.ji ; 2 uses
  %i.jq = fadd <2 x float> %i.ja, %i.jo           ; 2 uses
  %i.jr = extractelement <3 x float> %i.hc, i64 1
  %i.js = extractelement <2 x float> %i.iv, i64 0
  %i.jt = fmul float %i.jr, %i.js
  %i.ju = extractelement <3 x float> %i.hc, i64 0
  %i.jv = call float @llvm.fmuladd.f32(float %i.ju, float %i.ir, float %i.jt)
  %i.jw = extractelement <3 x float> %i.hc, i64 2
  %i.jx = extractelement <2 x float> %i.iv, i64 1
  %i.jy = call noundef float @llvm.fmuladd.f32(float %i.jw, float %i.jx, float %i.jv) ; 2 uses
  %i.jz = shufflevector <3 x float> %i.hc, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ka = fmul <2 x float> %i.jz, %i.ix
  %i.kb = shufflevector <3 x float> %i.hc, <3 x float> poison, <2 x i32> zeroinitializer
  %i.kc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kb, <2 x float> %i.iw, <2 x float> %i.ka)
  %i.kd = shufflevector <3 x float> %i.hc, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ke = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kd, <2 x float> %i.iy, <2 x float> %i.kc) ; 2 uses
  %i.kf = fsub float %i.jp, %i.jy
  %i.kg = fsub <2 x float> %i.jq, %i.ke
  %i.kh = fadd float %i.jp, %i.jy
  %i.ki = fadd <2 x float> %i.jq, %i.ke
  br i1 %i.ef, label %.lr.ph856, label %._crit_edge

._crit_edge:                                      ; preds = %bb.ah, %bb.f
  %indvars.iv.next868 = add nuw nsw i64 %indvars.iv867, 1 ; 2 uses
  %exitcond871.not = icmp eq i64 %indvars.iv.next868, %wide.trip.count870
  br i1 %exitcond871.not, label %._crit_edge860, label %bb.f, !llvm.loop !310

.lr.ph856:                                        ; preds = %bb.f, %bb.ah
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ah ], [ 0, %bb.f ] ; 2 uses
  %i.kj = load ptr, ptr %i.ee, align 8, !tbaa !163
  %i.kk = getelementptr [32 x i8], ptr %i.kj, i64 %indvars.iv
  %i.kl = getelementptr [32 x i8], ptr %i.kk, i64 %i.gb ; 3 uses
  %.sroa.7800.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kl, i64 6
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kl, i64 12
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 4
  %i.km = load ptr, ptr %i.ad, align 8, !tbaa !159 ; 2 uses
  %i.kn = getelementptr inbounds [64 x i8], ptr %i.km, i64 %i.al ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 32
  %i.kp = load <3 x i16>, ptr %i.kl, align 16
  %i.kq = load <3 x i16>, ptr %.sroa.7800.0..sroa_idx, align 2
  %i.kr = uitofp <3 x i16> %i.kp to <3 x float>
  %i.ks = load <3 x float>, ptr %i.ko, align 16, !tbaa !37 ; 2 uses
  %i.kt = fdiv <3 x float> %i.kr, %i.ks
  %i.ku = load <3 x float>, ptr %i.kn, align 16, !tbaa !37 ; 2 uses
  %i.kv = fadd <3 x float> %i.kt, %i.ku           ; 2 uses
  %i.kw = uitofp <3 x i16> %i.kq to <3 x float>
  %i.kx = fdiv <3 x float> %i.kw, %i.ks
  %i.ky = fadd <3 x float> %i.kx, %i.ku           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  br i1 %i.ei, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph856
  %i.kz = call noundef float @sqrtf(float noundef %i.fn) #28 ; 2 uses
  %i.la = fmul float %i.kz, 5.000000e-01
  %i.lb = fdiv float 5.000000e-01, %i.kz          ; 2 uses
  %i.lc = insertelement <2 x float> poison, float %i.lb, i64 0
  %i.ld = shufflevector <2 x float> %i.lc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.le = fmul <2 x float> %i.fo, %i.ld
  %i.lf = fmul float %i.fp, %i.lb
  br label %_ZNK11b3Matrix3x311getRotationER12b3Quaternion.exit

bb.h:                                             ; preds = %.lr.ph856
  %i.lg = load float, ptr %i.ew, align 4, !tbaa !44
  %i.lh = load float, ptr %i.ez, align 4, !tbaa !44
  %i.li = fsub float %i.lg, %i.lh
  %i.lj = load float, ptr %i.fc, align 4, !tbaa !44
  %i.lk = fsub float %i.li, %i.lj
  %i.ll = fadd float %i.lk, 1.000000e+00
  %i.lm = call noundef float @sqrtf(float noundef %i.ll) #28 ; 2 uses
  %i.ln = fmul float %i.lm, 5.000000e-01
  store float %i.ln, ptr %i.fd, align 4, !tbaa !44
  %i.lo = fdiv float 5.000000e-01, %i.lm          ; 3 uses
  %i.lp = load float, ptr %i.fe, align 4, !tbaa !44
  %i.lq = load float, ptr %i.ff, align 4, !tbaa !44
  %i.lr = fsub float %i.lp, %i.lq
  %i.ls = fmul float %i.lo, %i.lr
  store float %i.ls, ptr %i.fg, align 4, !tbaa !44
  %i.lt = load float, ptr %i.fh, align 4, !tbaa !44
  %i.lu = load float, ptr %i.fi, align 4, !tbaa !44
  %i.lv = fadd float %i.lt, %i.lu
  %i.lw = fmul float %i.lo, %i.lv
  store float %i.lw, ptr %i.fj, align 4, !tbaa !44
  %i.lx = load float, ptr %i.fk, align 4, !tbaa !44
  %i.ly = load float, ptr %i.fl, align 4, !tbaa !44
  %i.lz = fadd float %i.lx, %i.ly
  %i.ma = fmul float %i.lo, %i.lz
  store float %i.ma, ptr %i.fm, align 4, !tbaa !44
  %i.mb = load <2 x float>, ptr %i.c, align 16, !tbaa !44
  %i.mc = shufflevector <2 x float> %i.mb, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.pre38.i = load float, ptr %.phi.trans.insert37.i, align 8, !tbaa !44
  %.pre40.i = load float, ptr %i.fg, align 4, !tbaa !44
  br label %_ZNK11b3Matrix3x311getRotationER12b3Quaternion.exit

_ZNK11b3Matrix3x311getRotationER12b3Quaternion.exit: ; preds = %bb.g, %bb.h
  %i.md = phi float [ %.pre40.i, %bb.h ], [ %i.la, %bb.g ] ; 3 uses
  %i.me = phi float [ %.pre38.i, %bb.h ], [ %i.lf, %bb.g ] ; 4 uses
  %i.mf = phi <2 x float> [ %i.mc, %bb.h ], [ %i.le, %bb.g ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.mg = fsub <3 x float> %i.ky, %i.kv
  %i.mh = fadd <3 x float> %i.ky, %i.kv
  %foldExtExtBinop916 = fmul <2 x float> %i.mf, %i.mf
  %i.mi = extractelement <2 x float> %foldExtExtBinop916, i64 0
  %i.mj = extractelement <2 x float> %i.mf, i64 1 ; 3 uses
  %i.mk = call float @llvm.fmuladd.f32(float %i.mj, float %i.mj, float %i.mi)
  %i.ml = call float @llvm.fmuladd.f32(float %i.me, float %i.me, float %i.mk)
  %i.mm = call noundef float @llvm.fmuladd.f32(float %i.md, float %i.md, float %i.ml)
  %i.mn = fdiv float 2.000000e+00, %i.mm          ; 2 uses
  %i.mo = insertelement <2 x float> poison, float %i.mn, i64 0
  %i.mp = shufflevector <2 x float> %i.mo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mq = fmul <2 x float> %i.mf, %i.mp           ; 4 uses
  %i.mr = fmul <2 x float> %i.mf, %i.mq           ; 3 uses
  %i.ms = extractelement <2 x float> %i.mr, i64 1
  %i.mt = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.mr)
  store i32 0, ptr @numAabbChecks, align 4, !tbaa !38
  %i.mu = fmul <3 x float> %i.mg, splat (float 5.000000e-01)
  %i.mv = fadd <3 x float> %i.mu, zeroinitializer ; 6 uses
  %i.mw = fmul <3 x float> %i.mh, splat (float 5.000000e-01) ; 6 uses
  %i.mx = fmul float %i.me, %i.mn                 ; 4 uses
  %i.my = fmul float %i.mj, %i.mx                 ; 2 uses
  %i.mz = insertelement <2 x float> poison, float %i.md, i64 0
  %i.na = shufflevector <2 x float> %i.mz, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.nb = insertelement <2 x float> %i.mq, float %i.mx, i64 0
  %i.nc = fmul <2 x float> %i.na, %i.nb           ; 4 uses
  %i.nd = shufflevector <2 x float> %i.mq, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ne = insertelement <2 x float> %i.nd, float %i.mx, i64 0
  %i.nf = fmul <2 x float> %i.mf, %i.ne
  %i.ng = shufflevector <2 x float> %i.nf, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.nh = fmul float %i.me, %i.mx                 ; 2 uses
  %i.ni = insertelement <2 x float> %i.na, float %i.nh, i64 0 ; 2 uses
  %i.nj = shufflevector <2 x float> %i.mr, <2 x float> %i.mq, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.nk = fmul <2 x float> %i.ni, %i.nj           ; 2 uses
  %i.nl = fadd <2 x float> %i.ni, %i.nj
  %i.nm = shufflevector <2 x float> %i.nl, <2 x float> %i.nk, <2 x i32> <i32 0, i32 3>
  %foldExtExtBinop918 = fadd <2 x float> %i.ng, %i.nc
  %i.nn = extractelement <2 x float> %foldExtExtBinop918, i64 0 ; 2 uses
  %i.no = fadd float %i.ms, %i.nh
  %i.np = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.my, i64 1
  %i.nq = fsub <2 x float> %i.np, %i.nm           ; 2 uses
  %i.nr = fadd <2 x float> %i.ng, %i.nc
  %i.ns = fsub <2 x float> %i.ng, %i.nc
  %i.nt = shufflevector <2 x float> %i.ns, <2 x float> %i.nr, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.nu = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.my, i64 0 ; 2 uses
  %i.nv = shufflevector <2 x float> %i.nk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.nw = insertelement <2 x float> %i.nv, float %i.mt, i64 1 ; 2 uses
  %i.nx = fsub <2 x float> %i.nu, %i.nw
  %i.ny = fadd <2 x float> %i.nu, %i.nw
  %i.nz = shufflevector <2 x float> %i.ny, <2 x float> %i.nx, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.oa = call noundef float @llvm.fabs.f32(float %i.nn)
  %i.ob = insertelement <2 x float> %i.ng, float 1.000000e+00, i64 0
  %i.oc = insertelement <2 x float> %i.nc, float %i.no, i64 0
  %i.od = fsub <2 x float> %i.ob, %i.oc           ; 3 uses
  %i.oe = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.od) ; 2 uses
  %i.of = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.nq)
  %i.og = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.nt)
  %i.oh = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.nz)
  %i.oi = extractelement <3 x float> %i.mw, i64 1
  %i.oj = extractelement <2 x float> %i.od, i64 0
  %i.ok = fmul float %i.oi, %i.oj
  %i.ol = extractelement <3 x float> %i.mw, i64 0
  %i.om = call float @llvm.fmuladd.f32(float %i.ol, float %i.nn, float %i.ok)
  %i.on = extractelement <3 x float> %i.mw, i64 2
  %i.oo = extractelement <2 x float> %i.od, i64 1
  %i.op = call noundef float @llvm.fmuladd.f32(float %i.on, float %i.oo, float %i.om)
  %i.oq = shufflevector <3 x float> %i.mw, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.or = fmul <2 x float> %i.oq, %i.nt
  %i.os = shufflevector <3 x float> %i.mw, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ot = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.os, <2 x float> %i.nq, <2 x float> %i.or)
  %i.ou = shufflevector <3 x float> %i.mw, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ov = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ou, <2 x float> %i.nz, <2 x float> %i.ot)
  %i.ow = fadd float %.sroa.25.48.copyload.i.i371, %i.op ; 2 uses
  %i.ox = fadd <2 x float> %i.gd, %i.ov           ; 2 uses
  %i.oy = extractelement <3 x float> %i.mv, i64 1
  %i.oz = extractelement <2 x float> %i.oe, i64 0
  %i.pa = fmul float %i.oy, %i.oz
  %i.pb = extractelement <3 x float> %i.mv, i64 0
  %i.pc = call float @llvm.fmuladd.f32(float %i.pb, float %i.oa, float %i.pa)
  %i.pd = extractelement <3 x float> %i.mv, i64 2
  %i.pe = extractelement <2 x float> %i.oe, i64 1
  %i.pf = call noundef float @llvm.fmuladd.f32(float %i.pd, float %i.pe, float %i.pc) ; 2 uses
  %i.pg = shufflevector <3 x float> %i.mv, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ph = fmul <2 x float> %i.pg, %i.og
  %i.pi = shufflevector <3 x float> %i.mv, <3 x float> poison, <2 x i32> zeroinitializer
  %i.pj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pi, <2 x float> %i.of, <2 x float> %i.ph)
  %i.pk = shufflevector <3 x float> %i.mv, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.pl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pk, <2 x float> %i.oh, <2 x float> %i.pj) ; 2 uses
  %i.pm = fsub float %i.ow, %i.pf
  %i.pn = fadd float %i.ow, %i.pf
  %i.po = fadd <2 x float> %i.ox, %i.pl
  %i.pp = fcmp ule <2 x float> %i.kg, %i.po
  %i.pq = fcmp ule float %i.kf, %i.pn
  %i.pr = fcmp uge float %i.kh, %i.pm
  %i.ps = and i1 %i.pq, %i.pr
  %i.pt = fsub <2 x float> %i.ox, %i.pl
  %i.pu = fcmp uge <2 x float> %i.ki, %i.pt
  %i.pv = and <2 x i1> %i.pp, %i.pu               ; 2 uses
  %i.pw = extractelement <2 x i1> %i.pv, i64 1
  %i.px = select i1 %i.ps, i1 %i.pw, i1 false
  %i.py = extractelement <2 x i1> %i.pv, i64 0
  %i.pz = select i1 %i.px, i1 %i.py, i1 false
  br i1 %i.pz, label %bb.i, label %bb.ah

bb.i:                                             ; preds = %_ZNK11b3Matrix3x311getRotationER12b3Quaternion.exit
  %i.qa = getelementptr inbounds [64 x i8], ptr %i.km, i64 %i.af
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 56
  %i.qc = load i32, ptr %i.qb, align 8, !tbaa !320
  %i.qd = getelementptr inbounds nuw i8, ptr %i.kn, i64 56
  %i.qe = load i32, ptr %i.qd, align 8, !tbaa !320
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #28
  store i8 1, ptr %i.fr, align 8, !tbaa !321
  store ptr null, ptr %i.fs, align 8, !tbaa !167
  store i32 0, ptr %i.ft, align 4, !tbaa !322
  store i32 0, ptr %i.fu, align 8, !tbaa !323
  %i.qf = invoke noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef 8192, i32 noundef 16)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 8 uses

.noexc:                                           ; preds = %bb.i
  %i.qg = icmp eq ptr %i.qf, null
  br i1 %i.qg, label %.split7.i.i, label %.lr.ph.i

.split7.i.i:                                      ; preds = %.noexc
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.78, i32 noundef 301)
          to label %.noexc382 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc382:                                        ; preds = %.split7.i.i
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.79)
          to label %.lr.ph.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph.i:                                         ; preds = %.noexc382, %.noexc
  %.0.i.i = phi i32 [ 1024, %.noexc ], [ 0, %.noexc382 ]
  store i8 1, ptr %i.fr, align 8, !tbaa !321
  store ptr %i.qf, ptr %i.fs, align 8, !tbaa !167
  store i32 %.0.i.i, ptr %i.fu, align 8, !tbaa !323
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph.i
  %index = phi i64 [ 0, %.lr.ph.i ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.qh = getelementptr inbounds nuw [8 x i8], ptr %i.qf, i64 %index ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 16
  store <2 x i64> zeroinitializer, ptr %i.qh, align 4, !tbaa !37
  store <2 x i64> zeroinitializer, ptr %i.qi, align 4, !tbaa !37
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %i.qf, i64 %index ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 32
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qj, i64 48
  store <2 x i64> zeroinitializer, ptr %i.qk, align 4, !tbaa !37
  store <2 x i64> zeroinitializer, ptr %i.ql, align 4, !tbaa !37
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %i.qf, i64 %index ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 64
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qm, i64 80
  store <2 x i64> zeroinitializer, ptr %i.qn, align 4, !tbaa !37
  store <2 x i64> zeroinitializer, ptr %i.qo, align 4, !tbaa !37
  %i.qp = getelementptr inbounds nuw [8 x i8], ptr %i.qf, i64 %index ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 96
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qp, i64 112
  store <2 x i64> zeroinitializer, ptr %i.qq, align 4, !tbaa !37
  store <2 x i64> zeroinitializer, ptr %i.qr, align 4, !tbaa !37
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.qs = icmp eq i64 %index.next.3, 1024
  br i1 %i.qs, label %middle.block, label %vector.body, !llvm.loop !311

end_hunk_0
begin_hunk_1_@_Z23findCompoundPairsKerneliiiiiPK15b3RigidBodyDataPK12b3CollidablePK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3Vector3ERKS8_I6b3AabbESG_PK15b3GpuChildShapeP6b3Int4PiiRS8_I18b3QuantizedBvhNodeERS8_I16b3BvhSubtreeInfoERS8_I9b3BvhInfoE:bb.a
  %i.sx = fadd float %i.sb, %i.sw                 ; 2 uses
  %i.sy = load float, ptr %21, align 16, !tbaa !44 ; 3 uses
  %i.sz = load float, ptr %i.at, align 4, !tbaa !44 ; 3 uses
  %i.ta = fadd float %i.sy, %i.sz
  %i.tb = load float, ptr %i.av, align 8, !tbaa !44 ; 3 uses
  %i.tc = fadd float %i.ta, %i.tb                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.td = fcmp ogt float %i.tc, 0.000000e+00
  br i1 %i.td, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.te = fadd float %i.tc, 1.000000e+00
  %i.tf = call noundef float @sqrtf(float noundef %i.te) #28 ; 2 uses
  %i.tg = fmul float %i.tf, 5.000000e-01
  %i.th = fdiv float 5.000000e-01, %i.tf
  %i.ti = load float, ptr %i.au, align 8, !tbaa !44
  %i.tj = load float, ptr %i.ba, align 16, !tbaa !44
  %i.tk = load <2 x float>, ptr %i.bc, align 16, !tbaa !44 ; 2 uses
  %i.tl = load <2 x float>, ptr %i.as, align 4, !tbaa !44 ; 2 uses
  %i.tm = shufflevector <2 x float> %i.tk, <2 x float> %i.tl, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.tn = shufflevector <2 x float> %i.tk, <2 x float> poison, <2 x i32> <i32 poison, i32 0> ; 2 uses
  %i.to = insertelement <2 x float> %i.tn, float %i.ti, i64 0
  %i.tp = fsub <2 x float> %i.tm, %i.to
  %i.tq = insertelement <2 x float> %i.tm, float %i.tj, i64 0
  %i.tr = shufflevector <2 x float> %i.tl, <2 x float> %i.tn, <2 x i32> <i32 0, i32 3>
  %i.ts = fsub <2 x float> %i.tq, %i.tr
  %i.tt = insertelement <2 x float> poison, float %i.th, i64 0
  %i.tu = shufflevector <2 x float> %i.tt, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.tv = fmul <2 x float> %i.tu, %i.tp
  %i.tw = fmul <2 x float> %i.tu, %i.ts
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.tx = fcmp olt float %i.sy, %i.sz
  %i.ty = fcmp olt float %i.sz, %i.tb
  %i.tz = select i1 %i.ty, i32 2, i32 1
  %i.ua = fcmp olt float %i.sy, %i.tb
  %i.ub = select i1 %i.ua, i32 2, i32 0
  %i.uc = select i1 %i.tx, i32 %i.tz, i32 %i.ub
  %.fr.i604 = freeze i32 %i.uc                    ; 3 uses
  %i.ud = add nuw nsw i32 %.fr.i604, 1            ; 2 uses
  %i.ue = icmp eq i32 %i.ud, 3
  %i.uf = select i1 %i.ue, i32 0, i32 %i.ud
  %i.ug = add nuw nsw i32 %.fr.i604, 2
  %i.uh = urem i32 %i.ug, 3
  %i.ui = zext nneg i32 %.fr.i604 to i64          ; 5 uses
  %i.uj = getelementptr inbounds nuw [16 x i8], ptr %21, i64 %i.ui ; 3 uses
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.uj, i64 %i.ui
  %i.ul = load float, ptr %i.uk, align 4, !tbaa !44
  %i.um = sext i32 %i.uf to i64                   ; 5 uses
  %i.un = getelementptr inbounds nuw [16 x i8], ptr %21, i64 %i.um ; 3 uses
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %i.un, i64 %i.um
  %i.up = load float, ptr %i.uo, align 4, !tbaa !44
  %i.uq = fsub float %i.ul, %i.up
  %i.ur = zext nneg i32 %i.uh to i64              ; 5 uses
  %i.us = getelementptr inbounds nuw [16 x i8], ptr %21, i64 %i.ur ; 3 uses
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %i.us, i64 %i.ur
  %i.uu = load float, ptr %i.ut, align 4, !tbaa !44
  %i.uv = fsub float %i.uq, %i.uu
  %i.uw = fadd float %i.uv, 1.000000e+00
  %i.ux = call noundef float @sqrtf(float noundef %i.uw) #28 ; 2 uses
  %i.uy = fmul float %i.ux, 5.000000e-01
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ui
  store float %i.uy, ptr %i.uz, align 4, !tbaa !44
  %i.va = fdiv float 5.000000e-01, %i.ux          ; 3 uses
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.us, i64 %i.um
  %i.vc = load float, ptr %i.vb, align 4, !tbaa !44
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %i.un, i64 %i.ur
  %i.ve = load float, ptr %i.vd, align 4, !tbaa !44
  %i.vf = fsub float %i.vc, %i.ve
  %i.vg = fmul float %i.va, %i.vf
  store float %i.vg, ptr %i.fw, align 4, !tbaa !44
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %i.un, i64 %i.ui
  %i.vi = load float, ptr %i.vh, align 4, !tbaa !44
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %i.uj, i64 %i.um
  %i.vk = load float, ptr %i.vj, align 4, !tbaa !44
  %i.vl = fadd float %i.vi, %i.vk
  %i.vm = fmul float %i.va, %i.vl
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.um
  store float %i.vm, ptr %i.vn, align 4, !tbaa !44
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.us, i64 %i.ui
  %i.vp = load float, ptr %i.vo, align 4, !tbaa !44
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.uj, i64 %i.ur
  %i.vr = load float, ptr %i.vq, align 4, !tbaa !44
  %i.vs = fadd float %i.vp, %i.vr
  %i.vt = fmul float %i.va, %i.vs
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ur
  store float %i.vt, ptr %i.vu, align 4, !tbaa !44
  %i.vv = load <2 x float>, ptr %i.b, align 16, !tbaa !44
  %i.vw = load <2 x float>, ptr %.phi.trans.insert.i606, align 4, !tbaa !44
  %i.vx = shufflevector <2 x float> %i.vw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.pre40.i610 = load float, ptr %i.fw, align 4, !tbaa !44
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.vy = phi float [ %.pre40.i610, %bb.n ], [ %i.tg, %bb.m ] ; 3 uses
  %i.vz = phi <2 x float> [ %i.vv, %bb.n ], [ %i.tv, %bb.m ] ; 8 uses
  %i.wa = phi <2 x float> [ %i.vx, %bb.n ], [ %i.tw, %bb.m ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.wb = fsub <3 x float> %i.rs, %i.ro
  %i.wc = fadd <3 x float> %i.ro, %i.rs
  %foldExtExtBinop942 = fmul <2 x float> %i.vz, %i.vz
  %i.wd = extractelement <2 x float> %foldExtExtBinop942, i64 1
  %i.we = extractelement <2 x float> %i.vz, i64 0 ; 2 uses
  %i.wf = call float @llvm.fmuladd.f32(float %i.we, float %i.we, float %i.wd)
  %i.wg = extractelement <2 x float> %i.wa, i64 0 ; 2 uses
  %i.wh = call float @llvm.fmuladd.f32(float %i.wg, float %i.wg, float %i.wf)
  %i.wi = call noundef float @llvm.fmuladd.f32(float %i.vy, float %i.vy, float %i.wh)
  %i.wj = fdiv float 2.000000e+00, %i.wi          ; 2 uses
  %.sroa.25.48.copyload.i.i409 = load float, ptr %.sroa.25.48..sroa_idx.i.i, align 4
  %i.wk = fmul <3 x float> %i.wb, splat (float 5.000000e-01)
  %i.wl = fadd <3 x float> %i.wk, zeroinitializer ; 6 uses
  %i.wm = fmul <3 x float> %i.wc, splat (float 5.000000e-01) ; 6 uses
  %i.wn = insertelement <2 x float> poison, float %i.wj, i64 0
  %i.wo = shufflevector <2 x float> %i.wn, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.wp = fmul <2 x float> %i.wa, %i.wo           ; 3 uses
  %i.wq = shufflevector <2 x float> %i.vz, <2 x float> %i.wa, <2 x i32> <i32 0, i32 2>
  %i.wr = fmul <2 x float> %i.wq, %i.wo           ; 2 uses
  %i.ws = insertelement <2 x float> poison, float %i.vy, i64 0
  %i.wt = shufflevector <2 x float> %i.ws, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.wu = fmul <2 x float> %i.wt, %i.wr           ; 4 uses
  %i.wv = insertelement <2 x float> %i.wr, float %i.wj, i64 1
  %i.ww = fmul <2 x float> %i.vz, %i.wv           ; 4 uses
  %foldExtExtBinop920 = fmul <2 x float> %i.vz, %i.wp ; 2 uses
  %foldExtExtBinop922 = fmul <2 x float> %i.vz, %i.ww ; 2 uses
  %i.wx = extractelement <2 x float> %foldExtExtBinop922, i64 1
  %i.wy = shufflevector <2 x float> %i.vz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.wz = fmul <2 x float> %i.wy, %i.wp           ; 4 uses
  %foldExtExtBinop924 = fmul <2 x float> %i.wa, %i.wp ; 2 uses
  %i.xa = extractelement <2 x float> %foldExtExtBinop924, i64 0
  %i.xb = fadd float %i.wx, %i.xa
  %foldExtExtBinop926 = fadd <2 x float> %i.wz, %i.wu
  %i.xc = extractelement <2 x float> %foldExtExtBinop926, i64 1 ; 2 uses
  %foldExtExtBinop928 = fadd <2 x float> %i.ww, %foldExtExtBinop924
  %i.xd = extractelement <2 x float> %foldExtExtBinop928, i64 0
  %i.xe = fsub float 1.000000e+00, %i.xd          ; 2 uses
  %foldExtExtBinop930 = fsub <2 x float> %i.wz, %i.wu
  %i.xf = extractelement <2 x float> %foldExtExtBinop930, i64 0 ; 2 uses
  %i.xg = shufflevector <2 x float> %i.wt, <2 x float> %foldExtExtBinop922, <2 x i32> <i32 3, i32 1> ; 2 uses
  %i.xh = fadd <2 x float> %i.xg, %i.ww
  %i.xi = fmul <2 x float> %i.xg, %i.ww           ; 2 uses
  %i.xj = shufflevector <2 x float> %i.xh, <2 x float> %i.xi, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.xk = insertelement <2 x float> %foldExtExtBinop920, float 1.000000e+00, i64 1
  %i.xl = shufflevector <2 x float> %i.xi, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.xm = insertelement <2 x float> %i.xl, float %i.xb, i64 1
  %i.xn = fsub <2 x float> %i.xk, %i.xm           ; 2 uses
  %i.xo = fadd <2 x float> %i.wz, %i.wu
  %i.xp = fsub <2 x float> %i.wz, %i.wu
  %i.xq = shufflevector <2 x float> %i.xo, <2 x float> %i.xp, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.xr = shufflevector <2 x float> %foldExtExtBinop920, <2 x float> <float 1.000000e+00, float poison>, <2 x i32> <i32 2, i32 0> ; 2 uses
  %i.xs = fsub <2 x float> %i.xr, %i.xj
  %i.xt = fadd <2 x float> %i.xr, %i.xj
  %i.xu = shufflevector <2 x float> %i.xs, <2 x float> %i.xt, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.xv = call noundef float @llvm.fabs.f32(float %i.xc)
  %i.xw = call noundef float @llvm.fabs.f32(float %i.xe)
  %i.xx = call noundef float @llvm.fabs.f32(float %i.xf)
  %i.xy = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.xn)
  %i.xz = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.xq)
  %i.ya = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.xu)
  %i.yb = load <3 x float>, ptr %i.ax, align 16
  %i.yc = shufflevector <3 x float> %i.yb, <3 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.yd = extractelement <3 x float> %i.wm, i64 1
  %i.ye = fmul float %i.yd, %i.xe
  %i.yf = extractelement <3 x float> %i.wm, i64 0
  %i.yg = call float @llvm.fmuladd.f32(float %i.yf, float %i.xc, float %i.ye)
  %i.yh = extractelement <3 x float> %i.wm, i64 2
  %i.yi = call noundef float @llvm.fmuladd.f32(float %i.yh, float %i.xf, float %i.yg)
  %i.yj = shufflevector <3 x float> %i.wm, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.yk = fmul <2 x float> %i.yj, %i.xq
  %i.yl = shufflevector <3 x float> %i.wm, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ym = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yl, <2 x float> %i.xn, <2 x float> %i.yk)
  %i.yn = shufflevector <3 x float> %i.wm, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.yo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yn, <2 x float> %i.xu, <2 x float> %i.ym)
  %i.yp = fadd float %.sroa.25.48.copyload.i.i409, %i.yi ; 2 uses
  %i.yq = fadd <2 x float> %i.yc, %i.yo           ; 2 uses
  %i.yr = extractelement <3 x float> %i.wl, i64 1
  %i.ys = fmul float %i.yr, %i.xw
  %i.yt = extractelement <3 x float> %i.wl, i64 0
  %i.yu = call float @llvm.fmuladd.f32(float %i.yt, float %i.xv, float %i.ys)
  %i.yv = extractelement <3 x float> %i.wl, i64 2
  %i.yw = call noundef float @llvm.fmuladd.f32(float %i.yv, float %i.xx, float %i.yu) ; 2 uses
  %i.yx = shufflevector <3 x float> %i.wl, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.yy = fmul <2 x float> %i.yx, %i.xz
  %i.yz = shufflevector <3 x float> %i.wl, <3 x float> poison, <2 x i32> zeroinitializer
  %i.za = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yz, <2 x float> %i.xy, <2 x float> %i.yy)
  %i.zb = shufflevector <3 x float> %i.wl, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.zc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zb, <2 x float> %i.ya, <2 x float> %i.za) ; 2 uses
  %i.zd = fsub float %i.yp, %i.yw
  %i.ze = fsub <2 x float> %i.yq, %i.zc
  %i.zf = fadd float %i.yp, %i.yw
  %i.zg = fadd <2 x float> %i.yq, %i.zc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  br i1 %i.ei, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.zh = call noundef float @sqrtf(float noundef %i.fn) #28 ; 2 uses
  %i.zi = fdiv float 5.000000e-01, %i.zh
  %i.zj = insertelement <4 x float> %i.gj, float %i.zh, i64 1
  %i.zk = insertelement <4 x float> <float poison, float 5.000000e-01, float poison, float poison>, float %i.zi, i64 0
  %i.zl = shufflevector <4 x float> %i.zk, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.zm = fmul <4 x float> %i.zj, %i.zl
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.zn = load float, ptr %i.ew, align 4, !tbaa !44
  %i.zo = load float, ptr %i.ez, align 4, !tbaa !44
  %i.zp = fsub float %i.zn, %i.zo
  %i.zq = load float, ptr %i.fc, align 4, !tbaa !44
  %i.zr = fsub float %i.zp, %i.zq
  %i.zs = fadd float %i.zr, 1.000000e+00
  %i.zt = call noundef float @sqrtf(float noundef %i.zs) #28 ; 2 uses
  %i.zu = fmul float %i.zt, 5.000000e-01
  store float %i.zu, ptr %i.fx, align 4, !tbaa !44
  %i.zv = fdiv float 5.000000e-01, %i.zt          ; 3 uses
  %i.zw = load float, ptr %i.fe, align 4, !tbaa !44
  %i.zx = load float, ptr %i.ff, align 4, !tbaa !44
  %i.zy = fsub float %i.zw, %i.zx
  %i.zz = fmul float %i.zv, %i.zy
  store float %i.zz, ptr %i.fy, align 4, !tbaa !44
  %i.aaa = load float, ptr %i.fh, align 4, !tbaa !44
  %i.aab = load float, ptr %i.fi, align 4, !tbaa !44
  %i.aac = fadd float %i.aaa, %i.aab
  %i.aad = fmul float %i.zv, %i.aac
  store float %i.aad, ptr %i.fz, align 4, !tbaa !44
  %i.aae = load float, ptr %i.fk, align 4, !tbaa !44
  %i.aaf = load float, ptr %i.fl, align 4, !tbaa !44
  %i.aag = fadd float %i.aae, %i.aaf
  %i.aah = fmul float %i.zv, %i.aag
  store float %i.aah, ptr %i.ga, align 4, !tbaa !44
  %i.aai = load <4 x float>, ptr %i.a, align 16, !tbaa !44
  %i.aaj = shufflevector <4 x float> %i.aai, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 1, i32 0>
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.aak = phi <4 x float> [ %i.aaj, %bb.q ], [ %i.zm, %bb.p ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.aal = extractelement <4 x float> %i.aak, i64 2 ; 4 uses
  %i.aam = fmul float %i.aal, %i.aal
  %i.aan = extractelement <4 x float> %i.aak, i64 3 ; 5 uses
  %i.aao = call float @llvm.fmuladd.f32(float %i.aan, float %i.aan, float %i.aam)
  %i.aap = extractelement <4 x float> %i.aak, i64 0 ; 4 uses
  %i.aaq = call float @llvm.fmuladd.f32(float %i.aap, float %i.aap, float %i.aao)
  %i.aar = extractelement <4 x float> %i.aak, i64 1 ; 4 uses
  %i.aas = call noundef float @llvm.fmuladd.f32(float %i.aar, float %i.aar, float %i.aaq)
  %i.aat = fdiv float 2.000000e+00, %i.aas        ; 3 uses
  %i.aau = load i32, ptr @numAabbChecks, align 4, !tbaa !38
  %i.aav = add nsw i32 %i.aau, 1
  store i32 %i.aav, ptr @numAabbChecks, align 4, !tbaa !38
  %i.aaw = fsub float %i.st, %i.si
  %i.aax = fsub float %i.sv, %i.sk
  %i.aay = fsub float %i.sx, %i.sm
  %i.aaz = fmul float %i.aaw, 5.000000e-01
  %i.aba = fmul float %i.aax, 5.000000e-01
  %i.abb = fmul float %i.aay, 5.000000e-01
  %i.abc = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.aaz, i64 0
  %i.abd = fadd <4 x float> %i.abc, <float 0.000000e+00, float poison, float poison, float 0.000000e+00>
  %i.abe = shufflevector <4 x float> %i.abd, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.abf = fadd float %i.aba, 0.000000e+00        ; 3 uses
  %i.abg = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.abb, i64 0
  %i.abh = fadd <4 x float> %i.abg, <float 0.000000e+00, float poison, float poison, float 0.000000e+00>
  %i.abi = shufflevector <4 x float> %i.abh, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.abj = fmul float %i.aal, %i.aat              ; 3 uses
  %i.abk = fmul float %i.aap, %i.aat              ; 4 uses
  %i.abl = fmul float %i.aar, %i.abj              ; 2 uses
  %i.abm = fmul float %i.aar, %i.abk              ; 2 uses
  %i.abn = fmul float %i.aan, %i.abj              ; 2 uses
  %i.abo = fmul float %i.aan, %i.abk              ; 2 uses
  %i.abp = fmul float %i.aal, %i.abk              ; 2 uses
  %i.abq = fmul float %i.aap, %i.abk              ; 2 uses
  %i.abr = fsub float %i.abn, %i.abm              ; 2 uses
  %i.abs = fadd float %i.abn, %i.abm              ; 2 uses
  %i.abt = fsub float %i.abo, %i.abl              ; 2 uses
  %i.abu = call noundef float @llvm.fabs.f32(float %i.abr)
  %i.abv = insertelement <4 x float> poison, float %i.abs, i64 0
  %i.abw = insertelement <4 x float> %i.abv, float %i.abt, i64 1
  %i.abx = shufflevector <4 x float> %i.aak, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.aby = insertelement <2 x float> poison, float %i.abj, i64 0
  %i.abz = insertelement <2 x float> %i.aby, float %i.aat, i64 1
  %i.aca = fmul <2 x float> %i.abx, %i.abz        ; 4 uses
  %i.acb = extractelement <2 x float> %i.aca, i64 1
  %i.acc = fmul float %i.aan, %i.acb              ; 2 uses
  %i.acd = extractelement <2 x float> %i.aca, i64 0
  %i.ace = fadd float %i.acd, %i.abq
  %i.acf = fsub float 1.000000e+00, %i.ace        ; 2 uses
  %i.acg = fadd float %i.acc, %i.abq
  %i.ach = fsub float 1.000000e+00, %i.acg        ; 2 uses
  %i.aci = shufflevector <4 x float> %i.aak, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.acj = insertelement <2 x float> %i.aci, float %i.acc, i64 0 ; 2 uses
  %i.ack = fmul <2 x float> %i.acj, %i.aca        ; 2 uses
  %i.acl = fadd <2 x float> %i.acj, %i.aca
  %i.acm = shufflevector <2 x float> %i.ack, <2 x float> %i.acl, <2 x i32> <i32 1, i32 2>
  %i.acn = extractelement <2 x float> %i.ack, i64 1
  %i.aco = fadd float %i.abp, %i.acn              ; 2 uses
  %i.acp = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.abp, i64 0
  %i.acq = fsub <2 x float> %i.acp, %i.acm        ; 2 uses
  %i.acr = call noundef float @llvm.fabs.f32(float %i.acf)
  %i.acs = call noundef float @llvm.fabs.f32(float %i.ach)
  %i.act = call noundef float @llvm.fabs.f32(float %i.aco)
  %i.acu = fadd float %i.si, %i.st
  %i.acv = fadd float %i.sk, %i.sv
  %i.acw = fadd float %i.sm, %i.sx
  %i.acx = fmul float %i.acu, 5.000000e-01
  %i.acy = fmul float %i.acv, 5.000000e-01        ; 3 uses
  %i.acz = fmul float %i.acw, 5.000000e-01
  %i.ada = fadd float %i.abo, %i.abl              ; 2 uses
  %i.adb = call noundef float @llvm.fabs.f32(float %i.ada)
  %i.adc = fmul float %i.acy, %i.abr
  %i.add = fmul float %i.acy, %i.ach
  %i.ade = fmul float %i.acy, %i.aco
  %i.adf = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.acx, i64 0
  %i.adg = shufflevector <4 x float> %i.adf, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.adh = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.abs, i64 0
  %i.adi = insertelement <4 x float> %i.adh, float %i.abt, i64 1
  %i.adj = insertelement <4 x float> %i.adi, float %i.acf, i64 2
  %i.adk = insertelement <4 x float> poison, float %i.add, i64 0
  %i.adl = insertelement <4 x float> %i.adk, float %i.ade, i64 1
  %i.adm = insertelement <4 x float> %i.adl, float %i.adc, i64 2
  %i.adn = insertelement <4 x float> %i.adm, float %i.zd, i64 3
  %i.ado = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.adg, <4 x float> %i.adj, <4 x float> %i.adn)
  %i.adp = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.acz, i64 0
  %i.adq = shufflevector <4 x float> %i.adp, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.adr = shufflevector <2 x float> %i.acq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ads = insertelement <4 x float> %i.adr, float -0.000000e+00, i64 3
  %i.adt = insertelement <4 x float> %i.ads, float %i.ada, i64 2
  %i.adu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.adq, <4 x float> %i.adt, <4 x float> %i.ado)
  %i.adv = fadd <4 x float> %i.adu, %i.gh         ; 3 uses
  %i.adw = fmul float %i.abf, %i.abu
  %i.adx = fmul float %i.abf, %i.acs
  %i.ady = fmul float %i.abf, %i.act
  %i.adz = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.acr, i64 2
  %i.aea = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.abw)
  %i.aeb = shufflevector <4 x float> %i.aea, <4 x float> %i.adz, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aec = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.adx, i64 0
  %i.aed = insertelement <4 x float> %i.aec, float %i.ady, i64 1
  %i.aee = insertelement <4 x float> %i.aed, float %i.adw, i64 2
  %i.aef = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.abe, <4 x float> %i.aeb, <4 x float> %i.aee)
  %i.aeg = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.acq)
  %i.aeh = shufflevector <2 x float> %i.aeg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aei = insertelement <4 x float> %i.aeh, float -0.000000e+00, i64 3
  %i.aej = insertelement <4 x float> %i.aei, float %i.adb, i64 2
  %i.aek = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.abi, <4 x float> %i.aej, <4 x float> %i.aef) ; 3 uses
  %i.ael = fsub <4 x float> %i.adv, %i.aek
  %foldExtExtBinop932 = fadd <4 x float> %i.adv, %i.aek
  %i.aem = shufflevector <4 x float> %i.adv, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.aen = shufflevector <4 x float> %i.aek, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.aeo = fadd <2 x float> %i.aem, %i.aen
  %i.aep = fcmp ule <2 x float> %i.ze, %i.aeo
  %.fr949 = freeze <2 x i1> %i.aep                ; 2 uses
  %i.aeq = insertelement <4 x float> poison, float %i.zf, i64 0
  %i.aer = shufflevector <2 x float> %i.zg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aes = shufflevector <4 x float> %i.aeq, <4 x float> %i.aer, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.aet = shufflevector <4 x float> %i.aes, <4 x float> %foldExtExtBinop932, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.aeu = fcmp uge <4 x float> %i.aet, %i.ael
  %i.aev = freeze <4 x i1> %i.aeu
  %i.aew = bitcast <4 x i1> %i.aev to i4
  %i.aex = icmp eq i4 %i.aew, -1
  %i.aey = extractelement <2 x i1> %.fr949, i64 0
  %op.rdx = and i1 %i.aex, %i.aey
  %i.aez = extractelement <2 x i1> %.fr949, i64 1
  %op.rdx890 = and i1 %op.rdx, %i.aez
  br i1 %op.rdx890, label %bb.s, label %bb.ad

bb.s:                                             ; preds = %bb.r
  %i.afa = getelementptr inbounds nuw i8, ptr %i.re, i64 12 ; 2 uses
  %i.afb = load i32, ptr %i.afa, align 4, !tbaa !326 ; 2 uses
  %i.afc = getelementptr inbounds nuw i8, ptr %i.ru, i64 12 ; 2 uses
  %i.afd = load i32, ptr %i.afc, align 4, !tbaa !326 ; 2 uses
  %i.afe = icmp sgt i32 %i.afd, -1                ; 2 uses
  %i.aff = icmp slt i32 %.0337, 1022
  %i.afg = or i32 %i.afd, %i.afb
  %or.cond = icmp sgt i32 %i.afg, -1
  %or.cond349 = or i1 %i.aff, %or.cond
  br i1 %or.cond349, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 1554)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.36)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.u, %bb.t, %bb.i, %.split7.i.i, %.noexc382
  %lpad.loopexit.split-lp950 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN20b3AlignedObjectArrayI6b3Int2ED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %23) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  resume { ptr, i32 } %lpad.loopexit.split-lp950

bb.v:                                             ; preds = %bb.s
  %i.afh = icmp sgt i32 %i.afb, -1
  br i1 %i.afh, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.afi = add nsw i32 %.sroa.0100.0.copyload, 1  ; 4 uses
  %i.afj = sext i32 %i.afi to i64
  %i.afk = getelementptr inbounds [16 x i8], ptr %i.rc, i64 %i.afj
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afk, i64 12
  %i.afm = load i32, ptr %i.afl, align 4, !tbaa !326 ; 2 uses
end_hunk_1

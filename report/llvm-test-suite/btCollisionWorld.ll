inline.NumInlined: 505
inline.NumDeleted: 142
begin_hunk_0_@_ZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEf:bb.a
  %16 = alloca %struct.BridgeTriangleConvexcastCallback, align 8 ; 12 uses
  %17 = alloca %class.btVector3, align 4          ; 5 uses
  %18 = alloca %class.btVector3, align 4          ; 5 uses
  %19 = alloca %class.btTransform, align 4        ; 14 uses
  %20 = alloca %struct.BridgeTriangleConvexcastCallback.3, align 8 ; 12 uses
  %21 = alloca %class.btVector3, align 8          ; 6 uses
  %22 = alloca %class.btVector3, align 4          ; 7 uses
end_hunk_0
begin_hunk_1_@_ZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEf:bb.a

bb.q:                                             ; preds = %bb.p
  %i.as = icmp eq i32 %i.b, 21
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.aw = load float, ptr %i.av, align 4, !tbaa !68, !noalias !62
  %i.ax = fneg float %i.aw
end_hunk_1
begin_hunk_2_@_ZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEf:bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !68, !noalias !62
  %i.bd = fneg float %i.bc
  %i.be = load float, ptr %5, align 4, !tbaa !68, !noalias !62 ; 8 uses
  %26 = load <3 x float>, ptr %5, align 4, !tbaa !68, !noalias !62 ; 7 uses
  %27 = shufflevector <3 x float> %26, <3 x float> poison, <4 x i32> <i32 2, i32 1, i32 2, i32 0> ; 3 uses
  %28 = load float, ptr %i.at, align 4, !tbaa !68, !noalias !62 ; 8 uses
  %29 = load <3 x float>, ptr %i.at, align 4, !tbaa !68, !noalias !62 ; 7 uses
  %30 = shufflevector <3 x float> %29, <3 x float> poison, <4 x i32> <i32 2, i32 1, i32 2, i32 0> ; 3 uses
  %31 = load float, ptr %i.au, align 4, !tbaa !68, !noalias !62 ; 8 uses
  %32 = load <3 x float>, ptr %i.au, align 4, !tbaa !68, !noalias !62 ; 7 uses
  %33 = shufflevector <3 x float> %32, <3 x float> poison, <4 x i32> <i32 2, i32 1, i32 2, i32 0> ; 3 uses
  %i.bf = insertelement <4 x float> poison, float %i.ba, i64 0
  %i.bg = shufflevector <4 x float> %i.bf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bh = fmul <4 x float> %30, %i.bg
  %i.bi = insertelement <4 x float> poison, float %i.ax, i64 0
  %i.bj = shufflevector <4 x float> %i.bi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %27, <4 x float> %i.bj, <4 x float> %i.bh)
  %i.bl = insertelement <4 x float> poison, float %i.bd, i64 0
  %i.bm = shufflevector <4 x float> %i.bl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %33, <4 x float> %i.bm, <4 x float> %i.bk) ; 5 uses
  br i1 %i.as, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
end_hunk_2
begin_hunk_3_@_ZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEf:bb.a
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !68 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.br = load float, ptr %i.bq, align 4, !tbaa !68 ; 3 uses
  %i.bs = fmul float %28, %i.br
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.be, float %i.bp, float %i.bs)
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !68 ; 3 uses
  %i.bw = tail call noundef float @llvm.fmuladd.f32(float %31, float %i.bv, float %i.bt)
  %i.bx = extractelement <4 x float> %i.bn, i64 3 ; 2 uses
  %i.by = fadd float %i.bx, %i.bw
  %34 = extractelement <3 x float> %29, i64 1     ; 5 uses
  %i.bz = fmul float %34, %i.br
  %35 = extractelement <3 x float> %26, i64 1     ; 5 uses
  %i.ca = tail call float @llvm.fmuladd.f32(float %35, float %i.bp, float %i.bz)
  %36 = extractelement <3 x float> %32, i64 1     ; 5 uses
  %i.cb = tail call noundef float @llvm.fmuladd.f32(float %36, float %i.bv, float %i.ca)
  %i.cc = extractelement <4 x float> %i.bn, i64 1 ; 2 uses
  %i.cd = fadd float %i.cc, %i.cb
  %37 = extractelement <3 x float> %29, i64 2     ; 5 uses
  %i.ce = fmul float %37, %i.br
  %38 = extractelement <3 x float> %26, i64 2     ; 5 uses
  %i.cf = tail call float @llvm.fmuladd.f32(float %38, float %i.bp, float %i.ce)
  %39 = extractelement <3 x float> %32, i64 2     ; 5 uses
  %i.cg = tail call noundef float @llvm.fmuladd.f32(float %39, float %i.bv, float %i.cf)
  %i.ch = extractelement <4 x float> %i.bn, i64 0 ; 2 uses
  %i.ci = fadd float %i.ch, %i.cg
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.by, i64 0
end_hunk_3
begin_hunk_4_@_ZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEf:bb.a
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !68 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !68 ; 3 uses
  %i.co = fmul float %28, %i.cn
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.be, float %i.cl, float %i.co)
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !68 ; 3 uses
  %i.cs = tail call noundef float @llvm.fmuladd.f32(float %31, float %i.cr, float %i.cp)
  %i.ct = fadd float %i.bx, %i.cs
  %i.cu = fmul float %34, %i.cn
  %i.cv = tail call float @llvm.fmuladd.f32(float %35, float %i.cl, float %i.cu)
  %i.cw = tail call noundef float @llvm.fmuladd.f32(float %36, float %i.cr, float %i.cv)
  %i.cx = fadd float %i.cc, %i.cw
  %i.cy = fmul float %37, %i.cn
  %i.cz = tail call float @llvm.fmuladd.f32(float %38, float %i.cl, float %i.cy)
  %i.da = tail call noundef float @llvm.fmuladd.f32(float %39, float %i.cr, float %i.cz)
  %i.db = fadd float %i.ch, %i.da
  %.sroa.0.0.vec.insert.i.i95 = insertelement <2 x float> poison, float %i.ct, i64 0
  %.sroa.0.4.vec.insert.i.i96 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i95, float %i.cx, i64 1
end_hunk_4
begin_hunk_5_@_ZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEf:bb.a
  %i.dd = load float, ptr %2, align 4, !tbaa !68, !noalias !121 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.df = load float, ptr %i.de, align 4, !tbaa !68, !noalias !121 ; 3 uses
  %i.dg = fmul float %28, %i.df
  %i.dh = tail call float @llvm.fmuladd.f32(float %i.dd, float %i.be, float %i.dg)
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dj = load float, ptr %i.di, align 4, !tbaa !68, !noalias !121 ; 3 uses
  %i.dk = tail call noundef float @llvm.fmuladd.f32(float %i.dj, float %31, float %i.dh)
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !68, !noalias !121 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.do = load float, ptr %i.dn, align 4, !tbaa !68, !noalias !121 ; 3 uses
  %i.dp = fmul float %28, %i.do
  %i.dq = tail call float @llvm.fmuladd.f32(float %i.dm, float %i.be, float %i.dp)
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !68, !noalias !121 ; 3 uses
  %i.dt = tail call noundef float @llvm.fmuladd.f32(float %i.ds, float %31, float %i.dq)
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dv = load float, ptr %i.du, align 4, !tbaa !68, !noalias !121 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !68, !noalias !121 ; 3 uses
  %i.dy = fmul float %28, %i.dx
  %i.dz = tail call float @llvm.fmuladd.f32(float %i.dv, float %i.be, float %i.dy)
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !68, !noalias !121 ; 3 uses
  %i.ec = tail call noundef float @llvm.fmuladd.f32(float %i.eb, float %31, float %i.dz)
  %i.ed = fmul float %34, %i.df
  %i.ee = tail call float @llvm.fmuladd.f32(float %i.dd, float %35, float %i.ed)
  %i.ef = tail call noundef float @llvm.fmuladd.f32(float %i.dj, float %36, float %i.ee)
  %i.eg = fmul float %34, %i.do
  %i.eh = tail call float @llvm.fmuladd.f32(float %i.dm, float %35, float %i.eg)
  %i.ei = tail call noundef float @llvm.fmuladd.f32(float %i.ds, float %36, float %i.eh)
  %i.ej = fmul float %34, %i.dx
  %i.ek = tail call float @llvm.fmuladd.f32(float %i.dv, float %35, float %i.ej)
  %i.el = tail call noundef float @llvm.fmuladd.f32(float %i.eb, float %36, float %i.ek)
  %i.em = fmul float %37, %i.df
  %i.en = tail call float @llvm.fmuladd.f32(float %i.dd, float %38, float %i.em)
  %i.eo = tail call noundef float @llvm.fmuladd.f32(float %i.dj, float %39, float %i.en)
  %i.ep = fmul float %37, %i.do
  %i.eq = tail call float @llvm.fmuladd.f32(float %i.dm, float %38, float %i.ep)
  %i.er = tail call noundef float @llvm.fmuladd.f32(float %i.ds, float %39, float %i.eq)
  %i.es = fmul float %37, %i.dx
  %i.et = tail call float @llvm.fmuladd.f32(float %i.dv, float %38, float %i.es)
  %i.eu = tail call noundef float @llvm.fmuladd.f32(float %i.eb, float %39, float %i.et)
  store float %i.dk, ptr %15, align 4
  %.sroa.4193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 4
  store float %i.dt, ptr %.sroa.4193.0..sroa_idx, align 4
end_hunk_5
begin_hunk_6_@_ZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEf:bb.a
  %i.fr = load <2 x float>, ptr %i.fl, align 4, !tbaa !68 ; 4 uses
  %i.fs = load <2 x float>, ptr %i.fo, align 4, !tbaa !68 ; 4 uses
  %i.ft = shufflevector <2 x float> %i.fr, <2 x float> %i.fs, <4 x i32> <i32 1, i32 1, i32 3, i32 1>
  %i.fu = fmul <4 x float> %30, %i.ft
  %i.fv = shufflevector <2 x float> %i.fs, <2 x float> %i.fr, <4 x i32> <i32 1, i32 1, i32 3, i32 1>
  %i.fw = fmul <4 x float> %30, %i.fv
  %i.fx = shufflevector <2 x float> %i.fr, <2 x float> %i.fs, <4 x i32> <i32 0, i32 0, i32 2, i32 0>
  %i.fy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %27, <4 x float> %i.fx, <4 x float> %i.fu)
  %i.fz = shufflevector <2 x float> %i.fs, <2 x float> %i.fr, <4 x i32> <i32 0, i32 0, i32 2, i32 0>
  %i.ga = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %27, <4 x float> %i.fz, <4 x float> %i.fw)
  %i.gb = insertelement <4 x float> poison, float %i.fn, i64 0
  %i.gc = insertelement <4 x float> %i.gb, float %i.fq, i64 1
  %i.gd = shufflevector <4 x float> %i.gc, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.ge = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %33, <4 x float> %i.gd, <4 x float> %i.fy)
  %i.gf = insertelement <4 x float> poison, float %i.fq, i64 0
  %i.gg = insertelement <4 x float> %i.gf, float %i.fn, i64 1
  %i.gh = shufflevector <4 x float> %i.gg, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.gi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %33, <4 x float> %i.gh, <4 x float> %i.ga)
  %i.gj = fadd <4 x float> %i.bn, %i.ge           ; 7 uses
  %i.gk = fadd <4 x float> %i.bn, %i.gi           ; 3 uses
  %i.gl = shufflevector <4 x float> %i.gj, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.gm = insertelement <2 x float> %i.gl, float 0.000000e+00, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #15
  %i.gn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.go = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.gp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !68, !noalias !133 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !68, !noalias !133 ; 3 uses
  %i.gt = fmul float %28, %i.gs
  %i.gu = tail call float @llvm.fmuladd.f32(float %i.gq, float %i.be, float %i.gt)
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !68, !noalias !133 ; 3 uses
  %i.gx = tail call noundef float @llvm.fmuladd.f32(float %i.gw, float %31, float %i.gu)
  %40 = extractelement <3 x float> %29, i64 1
  %41 = extractelement <3 x float> %26, i64 1
  %42 = extractelement <3 x float> %32, i64 1
  %i.gy = fmul float %40, %i.gs
  %i.gz = tail call float @llvm.fmuladd.f32(float %i.gq, float %41, float %i.gy)
  %i.ha = tail call noundef float @llvm.fmuladd.f32(float %i.gw, float %42, float %i.gz)
  %43 = extractelement <3 x float> %29, i64 2
  %44 = extractelement <3 x float> %26, i64 2
  %45 = extractelement <3 x float> %32, i64 2
  %i.hb = fmul float %43, %i.gs
  %i.hc = tail call float @llvm.fmuladd.f32(float %i.gq, float %44, float %i.hb)
  %i.hd = tail call noundef float @llvm.fmuladd.f32(float %i.gw, float %45, float %i.hc)
  %.sroa.4138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 4
  %.sroa.5139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 8
  store float %i.gx, ptr %.sroa.5139.0..sroa_idx, align 4
  %.sroa.6140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 12
  store float 0.000000e+00, ptr %.sroa.6140.0..sroa_idx, align 4, !tbaa !64
  %46 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.he = load <2 x float>, ptr %i.gn, align 4, !tbaa !68, !noalias !133 ; 4 uses
  %47 = extractelement <2 x float> %i.he, i64 0
  %48 = fmul float %28, %47
  %49 = load <2 x float>, ptr %2, align 4, !tbaa !68, !noalias !133 ; 4 uses
  %50 = extractelement <2 x float> %49, i64 0
  %51 = tail call float @llvm.fmuladd.f32(float %50, float %i.be, float %48)
  %52 = load <2 x float>, ptr %i.go, align 4, !tbaa !68, !noalias !133 ; 4 uses
  %i.hf = extractelement <2 x float> %52, i64 0
  %i.hg = tail call noundef float @llvm.fmuladd.f32(float %i.hf, float %31, float %51)
  %i.hh = extractelement <2 x float> %i.he, i64 1
  %i.hi = fmul float %28, %i.hh
  %i.hj = extractelement <2 x float> %49, i64 1
  %i.hk = tail call float @llvm.fmuladd.f32(float %i.hj, float %i.be, float %i.hi)
  %i.hl = extractelement <2 x float> %52, i64 1
  %i.hm = tail call noundef float @llvm.fmuladd.f32(float %i.hl, float %31, float %i.hk)
  %53 = shufflevector <3 x float> %29, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %54 = fmul <2 x float> %53, %i.he
  %55 = shufflevector <3 x float> %26, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %56 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %49, <2 x float> %55, <2 x float> %54)
  %57 = shufflevector <3 x float> %32, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %58 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %52, <2 x float> %57, <2 x float> %56)
  store float %i.hg, ptr %19, align 4
  store float %i.hm, ptr %.sroa.4138.0..sroa_idx, align 4
  store <2 x float> %58, ptr %46, align 4
  %i.hn = getelementptr inbounds nuw i8, ptr %19, i64 24
  store float %i.ha, ptr %i.hn, align 4
  %.sroa.9142.16..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 28
  store float 0.000000e+00, ptr %.sroa.9142.16..sroa_idx, align 4, !tbaa !64
  %.sroa.10143.16..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 32
  %59 = shufflevector <3 x float> %29, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %60 = fmul <2 x float> %59, %i.he
  %61 = shufflevector <3 x float> %26, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %62 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %49, <2 x float> %61, <2 x float> %60)
  %63 = shufflevector <3 x float> %32, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %64 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %52, <2 x float> %63, <2 x float> %62)
  store <2 x float> %64, ptr %.sroa.10143.16..sroa_idx, align 4
  %.sroa.15146.32..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 40
  store float %i.hd, ptr %.sroa.15146.32..sroa_idx, align 4
  %.sroa.16.32..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.16.32..sroa_idx, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #15
end_hunk_6

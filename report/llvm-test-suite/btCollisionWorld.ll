inline.NumInlined: 505
inline.NumDeleted: 142
begin_hunk_0_@_ZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEf:bb.a
  %16 = alloca %struct.BridgeTriangleConvexcastCallback, align 8 ; 12 uses
  %17 = alloca %class.btVector3, align 4          ; 5 uses
  %18 = alloca %class.btVector3, align 4          ; 5 uses
  %19 = alloca %class.btTransform, align 8        ; 15 uses
  %20 = alloca %struct.BridgeTriangleConvexcastCallback.3, align 8 ; 12 uses
  %21 = alloca %class.btVector3, align 8          ; 6 uses
  %22 = alloca %class.btVector3, align 4          ; 7 uses
end_hunk_0
begin_hunk_1_@_ZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEf:bb.a

bb.q:                                             ; preds = %bb.p
  %i.as = icmp eq i32 %i.b, 21
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 32
  %26 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %27 = getelementptr inbounds nuw i8, ptr %5, i64 20
  %28 = getelementptr inbounds nuw i8, ptr %5, i64 36
  %29 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %30 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %31 = getelementptr inbounds nuw i8, ptr %5, i64 40
  %32 = load float, ptr %29, align 4, !tbaa !68, !noalias !62 ; 9 uses
  %33 = load float, ptr %30, align 4, !tbaa !68, !noalias !62 ; 9 uses
  %34 = load float, ptr %31, align 4, !tbaa !68, !noalias !62 ; 9 uses
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.aw = load float, ptr %i.av, align 4, !tbaa !68, !noalias !62
  %i.ax = fneg float %i.aw
end_hunk_1
begin_hunk_2_@_ZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEf:bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !68, !noalias !62
  %i.bd = fneg float %i.bc
  %35 = load <2 x float>, ptr %5, align 4, !tbaa !68, !noalias !62 ; 4 uses
  %i.be = load float, ptr %26, align 4, !tbaa !68, !noalias !62 ; 8 uses
  %36 = load <2 x float>, ptr %i.at, align 4, !tbaa !68, !noalias !62 ; 4 uses
  %37 = load float, ptr %27, align 4, !tbaa !68, !noalias !62 ; 8 uses
  %38 = load <2 x float>, ptr %i.au, align 4, !tbaa !68, !noalias !62 ; 4 uses
  %39 = load float, ptr %28, align 4, !tbaa !68, !noalias !62 ; 8 uses
  %40 = shufflevector <2 x float> %36, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 0>
  %41 = insertelement <4 x float> poison, float %33, i64 0
  %42 = shufflevector <4 x float> %41, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>
  %43 = shufflevector <4 x float> %42, <4 x float> %40, <4 x i32> <i32 0, i32 5, i32 2, i32 7> ; 3 uses
  %i.bf = insertelement <4 x float> poison, float %i.ba, i64 0
  %i.bg = shufflevector <4 x float> %i.bf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bh = fmul <4 x float> %43, %i.bg
  %44 = shufflevector <2 x float> %35, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 0>
  %45 = insertelement <4 x float> poison, float %32, i64 0
  %46 = shufflevector <4 x float> %45, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>
  %47 = shufflevector <4 x float> %46, <4 x float> %44, <4 x i32> <i32 0, i32 5, i32 2, i32 7> ; 3 uses
  %i.bi = insertelement <4 x float> poison, float %i.ax, i64 0
  %i.bj = shufflevector <4 x float> %i.bi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %47, <4 x float> %i.bj, <4 x float> %i.bh)
  %48 = shufflevector <2 x float> %38, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 0>
  %49 = insertelement <4 x float> poison, float %34, i64 0
  %50 = shufflevector <4 x float> %49, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>
  %51 = shufflevector <4 x float> %50, <4 x float> %48, <4 x i32> <i32 0, i32 5, i32 2, i32 7> ; 3 uses
  %i.bl = insertelement <4 x float> poison, float %i.bd, i64 0
  %i.bm = shufflevector <4 x float> %i.bl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %51, <4 x float> %i.bm, <4 x float> %i.bk) ; 5 uses
  br i1 %i.as, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
end_hunk_2
begin_hunk_3_@_ZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEf:bb.a
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !68 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.br = load float, ptr %i.bq, align 4, !tbaa !68 ; 3 uses
  %52 = extractelement <2 x float> %36, i64 0     ; 5 uses
  %i.bs = fmul float %52, %i.br
  %53 = extractelement <2 x float> %35, i64 0     ; 5 uses
  %i.bt = tail call float @llvm.fmuladd.f32(float %53, float %i.bp, float %i.bs)
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !68 ; 3 uses
  %54 = extractelement <2 x float> %38, i64 0     ; 5 uses
  %i.bw = tail call noundef float @llvm.fmuladd.f32(float %54, float %i.bv, float %i.bt)
  %i.bx = extractelement <4 x float> %i.bn, i64 3 ; 2 uses
  %i.by = fadd float %i.bx, %i.bw
  %i.bz = fmul float %37, %i.br
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.be, float %i.bp, float %i.bz)
  %i.cb = tail call noundef float @llvm.fmuladd.f32(float %39, float %i.bv, float %i.ca)
  %i.cc = extractelement <4 x float> %i.bn, i64 1 ; 2 uses
  %i.cd = fadd float %i.cc, %i.cb
  %i.ce = fmul float %33, %i.br
  %i.cf = tail call float @llvm.fmuladd.f32(float %32, float %i.bp, float %i.ce)
  %i.cg = tail call noundef float @llvm.fmuladd.f32(float %34, float %i.bv, float %i.cf)
  %i.ch = extractelement <4 x float> %i.bn, i64 0 ; 2 uses
  %i.ci = fadd float %i.ch, %i.cg
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.by, i64 0
end_hunk_3
begin_hunk_4_@_ZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEf:bb.a
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !68 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !68 ; 3 uses
  %i.co = fmul float %52, %i.cn
  %i.cp = tail call float @llvm.fmuladd.f32(float %53, float %i.cl, float %i.co)
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !68 ; 3 uses
  %i.cs = tail call noundef float @llvm.fmuladd.f32(float %54, float %i.cr, float %i.cp)
  %i.ct = fadd float %i.bx, %i.cs
  %i.cu = fmul float %37, %i.cn
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.be, float %i.cl, float %i.cu)
  %i.cw = tail call noundef float @llvm.fmuladd.f32(float %39, float %i.cr, float %i.cv)
  %i.cx = fadd float %i.cc, %i.cw
  %i.cy = fmul float %33, %i.cn
  %i.cz = tail call float @llvm.fmuladd.f32(float %32, float %i.cl, float %i.cy)
  %i.da = tail call noundef float @llvm.fmuladd.f32(float %34, float %i.cr, float %i.cz)
  %i.db = fadd float %i.ch, %i.da
  %.sroa.0.0.vec.insert.i.i95 = insertelement <2 x float> poison, float %i.ct, i64 0
  %.sroa.0.4.vec.insert.i.i96 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i95, float %i.cx, i64 1
end_hunk_4
begin_hunk_5_@_ZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEf:bb.a
  %i.dd = load float, ptr %2, align 4, !tbaa !68, !noalias !121 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.df = load float, ptr %i.de, align 4, !tbaa !68, !noalias !121 ; 3 uses
  %i.dg = fmul float %52, %i.df
  %i.dh = tail call float @llvm.fmuladd.f32(float %i.dd, float %53, float %i.dg)
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dj = load float, ptr %i.di, align 4, !tbaa !68, !noalias !121 ; 3 uses
  %i.dk = tail call noundef float @llvm.fmuladd.f32(float %i.dj, float %54, float %i.dh)
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !68, !noalias !121 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.do = load float, ptr %i.dn, align 4, !tbaa !68, !noalias !121 ; 3 uses
  %i.dp = fmul float %52, %i.do
  %i.dq = tail call float @llvm.fmuladd.f32(float %i.dm, float %53, float %i.dp)
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !68, !noalias !121 ; 3 uses
  %i.dt = tail call noundef float @llvm.fmuladd.f32(float %i.ds, float %54, float %i.dq)
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dv = load float, ptr %i.du, align 4, !tbaa !68, !noalias !121 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !68, !noalias !121 ; 3 uses
  %i.dy = fmul float %52, %i.dx
  %i.dz = tail call float @llvm.fmuladd.f32(float %i.dv, float %53, float %i.dy)
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !68, !noalias !121 ; 3 uses
  %i.ec = tail call noundef float @llvm.fmuladd.f32(float %i.eb, float %54, float %i.dz)
  %i.ed = fmul float %37, %i.df
  %i.ee = tail call float @llvm.fmuladd.f32(float %i.dd, float %i.be, float %i.ed)
  %i.ef = tail call noundef float @llvm.fmuladd.f32(float %i.dj, float %39, float %i.ee)
  %i.eg = fmul float %37, %i.do
  %i.eh = tail call float @llvm.fmuladd.f32(float %i.dm, float %i.be, float %i.eg)
  %i.ei = tail call noundef float @llvm.fmuladd.f32(float %i.ds, float %39, float %i.eh)
  %i.ej = fmul float %37, %i.dx
  %i.ek = tail call float @llvm.fmuladd.f32(float %i.dv, float %i.be, float %i.ej)
  %i.el = tail call noundef float @llvm.fmuladd.f32(float %i.eb, float %39, float %i.ek)
  %i.em = fmul float %33, %i.df
  %i.en = tail call float @llvm.fmuladd.f32(float %i.dd, float %32, float %i.em)
  %i.eo = tail call noundef float @llvm.fmuladd.f32(float %i.dj, float %34, float %i.en)
  %i.ep = fmul float %33, %i.do
  %i.eq = tail call float @llvm.fmuladd.f32(float %i.dm, float %32, float %i.ep)
  %i.er = tail call noundef float @llvm.fmuladd.f32(float %i.ds, float %34, float %i.eq)
  %i.es = fmul float %33, %i.dx
  %i.et = tail call float @llvm.fmuladd.f32(float %i.dv, float %32, float %i.es)
  %i.eu = tail call noundef float @llvm.fmuladd.f32(float %i.eb, float %34, float %i.et)
  store float %i.dk, ptr %15, align 4
  %.sroa.4193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 4
  store float %i.dt, ptr %.sroa.4193.0..sroa_idx, align 4
end_hunk_5
begin_hunk_6_@_ZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEf:bb.a
  %i.fr = load <2 x float>, ptr %i.fl, align 4, !tbaa !68 ; 4 uses
  %i.fs = load <2 x float>, ptr %i.fo, align 4, !tbaa !68 ; 4 uses
  %i.ft = shufflevector <2 x float> %i.fr, <2 x float> %i.fs, <4 x i32> <i32 1, i32 1, i32 3, i32 1>
  %i.fu = fmul <4 x float> %43, %i.ft
  %i.fv = shufflevector <2 x float> %i.fs, <2 x float> %i.fr, <4 x i32> <i32 1, i32 1, i32 3, i32 1>
  %i.fw = fmul <4 x float> %43, %i.fv
  %i.fx = shufflevector <2 x float> %i.fr, <2 x float> %i.fs, <4 x i32> <i32 0, i32 0, i32 2, i32 0>
  %i.fy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %47, <4 x float> %i.fx, <4 x float> %i.fu)
  %i.fz = shufflevector <2 x float> %i.fs, <2 x float> %i.fr, <4 x i32> <i32 0, i32 0, i32 2, i32 0>
  %i.ga = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %47, <4 x float> %i.fz, <4 x float> %i.fw)
  %i.gb = insertelement <4 x float> poison, float %i.fn, i64 0
  %i.gc = insertelement <4 x float> %i.gb, float %i.fq, i64 1
  %i.gd = shufflevector <4 x float> %i.gc, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.ge = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %51, <4 x float> %i.gd, <4 x float> %i.fy)
  %i.gf = insertelement <4 x float> poison, float %i.fq, i64 0
  %i.gg = insertelement <4 x float> %i.gf, float %i.fn, i64 1
  %i.gh = shufflevector <4 x float> %i.gg, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.gi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %51, <4 x float> %i.gh, <4 x float> %i.ga)
  %i.gj = fadd <4 x float> %i.bn, %i.ge           ; 7 uses
  %i.gk = fadd <4 x float> %i.bn, %i.gi           ; 3 uses
  %i.gl = shufflevector <4 x float> %i.gj, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.gm = insertelement <2 x float> %i.gl, float 0.000000e+00, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #15
  %i.gn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %55 = extractelement <2 x float> %36, i64 0
  %56 = extractelement <2 x float> %35, i64 0
  %i.go = getelementptr inbounds nuw i8, ptr %2, i64 32
  %57 = extractelement <2 x float> %38, i64 0
  %i.gp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !68, !noalias !133 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !68, !noalias !133 ; 3 uses
  %i.gt = fmul float %55, %i.gs
  %i.gu = tail call float @llvm.fmuladd.f32(float %i.gq, float %56, float %i.gt)
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !68, !noalias !133 ; 3 uses
  %i.gx = tail call noundef float @llvm.fmuladd.f32(float %i.gw, float %57, float %i.gu)
  %i.gy = fmul float %37, %i.gs
  %i.gz = tail call float @llvm.fmuladd.f32(float %i.gq, float %i.be, float %i.gy)
  %i.ha = tail call noundef float @llvm.fmuladd.f32(float %i.gw, float %39, float %i.gz)
  %i.hb = fmul float %33, %i.gs
  %i.hc = tail call float @llvm.fmuladd.f32(float %i.gq, float %32, float %i.hb)
  %i.hd = tail call noundef float @llvm.fmuladd.f32(float %i.gw, float %34, float %i.hc)
  %58 = load <2 x float>, ptr %2, align 4, !tbaa !68, !noalias !133 ; 3 uses
  %59 = load <2 x float>, ptr %i.gn, align 4, !tbaa !68, !noalias !133 ; 3 uses
  %60 = shufflevector <2 x float> %36, <2 x float> poison, <2 x i32> zeroinitializer
  %61 = fmul <2 x float> %60, %59
  %62 = shufflevector <2 x float> %35, <2 x float> poison, <2 x i32> zeroinitializer
  %63 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %58, <2 x float> %62, <2 x float> %61)
  %i.he = load <2 x float>, ptr %i.go, align 4, !tbaa !68, !noalias !133 ; 3 uses
  %64 = shufflevector <2 x float> %38, <2 x float> poison, <2 x i32> zeroinitializer
  %65 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.he, <2 x float> %64, <2 x float> %63)
  %66 = extractelement <2 x float> %59, i64 0     ; 2 uses
  %67 = fmul float %37, %66
  %68 = extractelement <2 x float> %58, i64 0     ; 2 uses
  %69 = tail call float @llvm.fmuladd.f32(float %68, float %i.be, float %67)
  %i.hf = extractelement <2 x float> %i.he, i64 0 ; 2 uses
  %i.hg = tail call noundef float @llvm.fmuladd.f32(float %i.hf, float %39, float %69)
  %i.hh = extractelement <2 x float> %59, i64 1   ; 2 uses
  %i.hi = fmul float %37, %i.hh
  %i.hj = extractelement <2 x float> %58, i64 1   ; 2 uses
  %i.hk = tail call float @llvm.fmuladd.f32(float %i.hj, float %i.be, float %i.hi)
  %i.hl = extractelement <2 x float> %i.he, i64 1 ; 2 uses
  %i.hm = tail call noundef float @llvm.fmuladd.f32(float %i.hl, float %39, float %i.hk)
  %70 = fmul float %33, %66
  %71 = tail call float @llvm.fmuladd.f32(float %68, float %32, float %70)
  %72 = tail call noundef float @llvm.fmuladd.f32(float %i.hf, float %34, float %71)
  %73 = fmul float %33, %i.hh
  %74 = tail call float @llvm.fmuladd.f32(float %i.hj, float %32, float %73)
  %75 = tail call noundef float @llvm.fmuladd.f32(float %i.hl, float %34, float %74)
  store <2 x float> %65, ptr %19, align 8
  %.sroa.5139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 8
  store float %i.gx, ptr %.sroa.5139.0..sroa_idx, align 8
  %.sroa.6140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 12
  store float 0.000000e+00, ptr %.sroa.6140.0..sroa_idx, align 4, !tbaa !64
  %.sroa.10143.16..sroa_idx.a = getelementptr inbounds nuw i8, ptr %19, i64 16
  store float %i.hg, ptr %.sroa.10143.16..sroa_idx.a, align 8
  %.sroa.11144.16..sroa_idx.a = getelementptr inbounds nuw i8, ptr %19, i64 20
  store float %i.hm, ptr %.sroa.11144.16..sroa_idx.a, align 4
  %i.hn = getelementptr inbounds nuw i8, ptr %19, i64 24
  store float %i.ha, ptr %i.hn, align 8
  %.sroa.11144.16..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 28
  store float 0.000000e+00, ptr %.sroa.11144.16..sroa_idx, align 4, !tbaa !64
  %76 = getelementptr inbounds nuw i8, ptr %19, i64 32
  store float %72, ptr %76, align 8
  %.sroa.14145.32..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 36
  store float %75, ptr %.sroa.14145.32..sroa_idx, align 4
  %.sroa.15146.32..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 40
  store float %i.hd, ptr %.sroa.15146.32..sroa_idx, align 8
  %.sroa.16.32..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.16.32..sroa_idx, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #15
end_hunk_6

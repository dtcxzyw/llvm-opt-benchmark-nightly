Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/convex_manifold?download=true
inline.NumInlined: 436
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@b3BuildHullAndCapsuleEdgeContact:bb.a
  %i.n = fmul <2 x float> %i.l, %i.m
  %i.o = fmul <2 x float> %i.g, %i.m
  %i.p = fadd <2 x float> %i.n, %i.k              ; 2 uses
  %i.q = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.r = insertelement <2 x float> %i.q, float %i.e, i64 0
  %i.s = fadd <2 x float> %i.o, %i.r              ; 2 uses
  %i.t = fmul <2 x float> %i.i, %i.p
  %i.u = shufflevector <2 x float> %.sroa.6184.0.copyload, <2 x float> %.sroa.5183.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.v = fmul <2 x float> %i.u, %i.s
  %i.w = fsub <2 x float> %i.t, %i.v
  %i.x = fmul <2 x float> %i.w, splat (float 2.000000e+00)
  %i.y = fadd <2 x float> %.sroa.098.0.copyload, %i.x
  %i.z = fadd <2 x float> %.sroa.0181.0.copyload, %i.y ; 2 uses
  %foldExtExtBinop2 = fmul <2 x float> %.sroa.6184.0.copyload, %.sroa.090.0.copyload
  %i.aa = extractelement <2 x float> %foldExtExtBinop2, i64 0
  %i.ab = fmul float %.sroa.011.0.vec.extract.i.i, %.sroa.291.0.copyload
  %i.ac = fsub float %i.aa, %i.ab
  %i.ad = shufflevector <2 x float> %.sroa.090.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ae = insertelement <2 x float> %i.ad, float %.sroa.291.0.copyload, i64 1 ; 2 uses
  %i.af = fmul <2 x float> %.sroa.5183.0.copyload, %i.ae
  %i.ag = fmul <2 x float> %i.i, %.sroa.090.0.copyload
  %i.ah = fsub <2 x float> %i.af, %i.ag           ; 2 uses
  %i.ai = insertelement <2 x float> %i.ad, float %.sroa.291.0.copyload, i64 0
  %i.aj = fmul <2 x float> %i.m, %i.ai
  %i.ak = fmul <2 x float> %i.m, %i.ae
  %i.al = fadd <2 x float> %i.aj, %i.ah           ; 2 uses
  %i.am = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.an = insertelement <2 x float> %i.am, float %i.ac, i64 0
  %i.ao = fadd <2 x float> %i.ak, %i.an           ; 2 uses
  %i.ap = fmul <2 x float> %i.i, %i.al
  %i.aq = fmul <2 x float> %i.u, %i.ao
  %i.ar = fsub <2 x float> %i.ap, %i.aq
  %i.as = fmul <2 x float> %i.ar, splat (float 2.000000e+00)
  %i.at = fadd <2 x float> %.sroa.090.0.copyload, %i.as
  %i.au = fadd <2 x float> %.sroa.0181.0.copyload, %i.at
  %i.av = shufflevector <2 x float> %.sroa.5183.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = shufflevector <2 x float> %i.ao, <2 x float> %i.s, <2 x i32> <i32 0, i32 2>
  %i.ax = fmul <2 x float> %i.av, %i.aw
  %i.ay = shufflevector <2 x float> %.sroa.5183.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.az = shufflevector <2 x float> %i.al, <2 x float> %i.p, <2 x i32> <i32 1, i32 3>
  %i.ba = fmul <2 x float> %i.ay, %i.az
  %i.bb = fsub <2 x float> %i.ax, %i.ba
  %i.bc = fmul <2 x float> %i.bb, splat (float 2.000000e+00)
  %i.bd = insertelement <2 x float> poison, float %.sroa.291.0.copyload, i64 0
  %i.be = insertelement <2 x float> %i.bd, float %.sroa.299.0.copyload, i64 1
  %i.bf = fadd <2 x float> %i.be, %i.bc
  %i.bg = shufflevector <1 x float> %i.a, <1 x float> poison, <2 x i32> zeroinitializer
  %i.bh = fadd <2 x float> %i.bg, %i.bf           ; 2 uses
  %i.bi = fsub <2 x float> %i.au, %i.z
  %i.bj = extractelement <2 x float> %i.bh, i64 0
  %i.bk = extractelement <2 x float> %i.bh, i64 1 ; 2 uses
  %i.bl = fsub float %i.bj, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !47 ; 2 uses
  %i.bo = icmp eq i32 %i.bn, 0
  %i.bp = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bq = sext i32 %i.bn to i64
  %i.br = add nsw i64 %i.bq, %i.bp
  %i.bs = inttoptr i64 %i.br to ptr               ; 2 uses
  %.0.i = select i1 %i.bo, ptr null, ptr %i.bs
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !28 ; 2 uses
  %i.bv = icmp eq i32 %i.bu, 0
  %i.bw = sext i32 %i.bu to i64
  %i.bx = add nsw i64 %i.bw, %i.bp
  %i.by = inttoptr i64 %i.bx to ptr
  %.0.i145 = select i1 %i.bv, ptr null, ptr %i.by ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !55 ; 2 uses
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %.0.i, i64 %i.cb ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 1
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !61
  %i.cf = zext i8 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 2
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !50
  %i.cj = zext i8 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [12 x i8], ptr %.0.i145, i64 %i.cj ; 2 uses
  %.sroa.067.0.copyload = load <2 x float>, ptr %i.ck, align 4, !tbaa !9 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !9 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 2
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !50
  %i.cn = zext i8 %i.cm to i64
  %i.co = getelementptr inbounds nuw [12 x i8], ptr %.0.i145, i64 %i.cn ; 2 uses
  %.sroa.065.0.copyload = load <2 x float>, ptr %i.co, align 4, !tbaa !9
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %.sroa.466.0.copyload = load float, ptr %.sroa.466.0..sroa_idx, align 4, !tbaa !9
  %i.cp = fsub <2 x float> %.sroa.065.0.copyload, %.sroa.067.0.copyload
  %i.cq = fsub float %.sroa.466.0.copyload, %.sroa.5.0.copyload
  %.sroa.050.0.copyload = load <2 x float>, ptr %4, align 8, !tbaa !9 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !9 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @b3LineDistance(ptr dead_on_unwind nonnull writable sret(%struct.b3SegmentDistanceResult) align 4 %5, <2 x float> %.sroa.067.0.copyload, float %.sroa.5.0.copyload, <2 x float> %i.cp, float %i.cq, <2 x float> %i.z, float %i.bk, <2 x float> %i.bi, float %i.bl) #11
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 12
  %.val = load float, ptr %i.cr, align 4, !tbaa !63 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 28
  %.val118 = load float, ptr %i.cs, align 4       ; 2 uses
  %i.ct = fcmp oge float %.val, 0.000000e+00
  %i.cu = fcmp ole float %.val, 1.000000e+00
  %or.cond.not.i = and i1 %i.ct, %i.cu
  %i.cv = fcmp oge float %.val118, 0.000000e+00
  %i.cw = fcmp ole float %.val118, 1.000000e+00
  %spec.select.i = and i1 %i.cv, %i.cw
  %i.cx = select i1 %or.cond.not.i, i1 %spec.select.i, i1 false
  br i1 %i.cx, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !23 ; 2 uses
  %.sroa.035.0.copyload = load <2 x float>, ptr %5, align 8 ; 3 uses
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.236.0.copyload = load float, ptr %.sroa.236.0..sroa_idx, align 8 ; 2 uses
  %i.da = fmul float %.sroa.6.0.copyload, %i.cz
  %i.db = fsub float %.sroa.236.0.copyload, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.025.0.copyload = load <2 x float>, ptr %i.dc, align 8 ; 3 uses
  %.sroa.226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.226.0.copyload = load float, ptr %.sroa.226.0..sroa_idx, align 8 ; 2 uses
  %i.dd = fadd float %i.db, %.sroa.226.0.copyload
  %i.de = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.df = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dg = fmul <2 x float> %.sroa.050.0.copyload, %i.df
  %i.dh = fsub <2 x float> %.sroa.035.0.copyload, %i.dg
  %i.di = fadd <2 x float> %i.dh, %.sroa.025.0.copyload
  %i.dj = fmul <2 x float> %i.di, splat (float 5.000000e-01)
  %i.dk = fmul float %i.dd, 5.000000e-01
  %foldExtExtBinop4 = fsub <2 x float> %.sroa.025.0.copyload, %.sroa.035.0.copyload
  %foldExtExtBinop6 = fsub <2 x float> %.sroa.025.0.copyload, %.sroa.035.0.copyload
  %i.dl = fsub float %.sroa.226.0.copyload, %.sroa.236.0.copyload
  %foldExtExtBinop8 = fmul <2 x float> %.sroa.050.0.copyload, %foldExtExtBinop4
  %foldExtExtBinop10 = fmul <2 x float> %.sroa.050.0.copyload, %foldExtExtBinop6
  %shift = shufflevector <2 x float> %foldExtExtBinop10, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop12 = fadd <2 x float> %foldExtExtBinop8, %shift
  %i.dm = extractelement <2 x float> %foldExtExtBinop12, i64 0
  %i.dn = fmul float %.sroa.6.0.copyload, %i.dl
  %i.do = fadd float %i.dn, %i.dm
  store <2 x float> %.sroa.050.0.copyload, ptr %0, align 8, !tbaa !9
  %.sroa.6.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx53, align 8, !tbaa !9
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %i.dp, align 8, !tbaa !16
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !17 ; 4 uses
  store <2 x float> %i.dj, ptr %i.dr, align 4, !tbaa !9
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store float %i.dk, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !9
  %i.ds = load float, ptr %i.cy, align 4, !tbaa !23
  %i.dt = fsub float %i.do, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 12
  store float %i.dt, ptr %i.du, align 4, !tbaa !20
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !54
  %i.dy = call i32 @b3MakeFeaturePair(i32 noundef 0, i32 noundef %i.dx, i32 noundef 1, i32 noundef %i.ca) #11
  store i32 %i.dy, ptr %i.dv, align 4, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @b3ComputeSeparatingAxis(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b3AxisQuery) align 4 captures(none) initializes((0, 88)) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %3, i1 noundef zeroext %4) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [132 x float], align 16           ; 5 uses
  %i.b = alloca [132 x float], align 16           ; 5 uses
  %i.c = alloca [132 x float], align 16           ; 5 uses
  %i.d = alloca [132 x float], align 16           ; 5 uses
  %i.e = alloca [132 x float], align 16           ; 5 uses
  %i.f = alloca [132 x float], align 16           ; 5 uses
  %i.g = alloca [132 x float], align 16           ; 4 uses
  %i.h = alloca [132 x float], align 16           ; 4 uses
  %i.i = alloca [132 x float], align 16           ; 4 uses
  %i.j = alloca [132 x float], align 16           ; 4 uses
  %i.k = alloca [132 x float], align 16           ; 4 uses
  %i.l = alloca [132 x float], align 16           ; 4 uses
  %i.m = alloca [132 x float], align 16           ; 4 uses
  %i.n = alloca [132 x float], align 16           ; 4 uses
  %i.o = alloca [132 x float], align 16           ; 4 uses
  %i.p = alloca [132 x float], align 16           ; 4 uses
  %i.q = alloca [132 x float], align 16           ; 4 uses
  %i.r = alloca [132 x float], align 16           ; 4 uses
  %i.s = alloca [132 x float], align 16           ; 5 uses
  %i.t = alloca [132 x float], align 16           ; 5 uses
  %i.u = alloca [132 x float], align 16           ; 5 uses
  %i.v = alloca [132 x float], align 16           ; 5 uses
  %i.w = alloca [132 x float], align 16           ; 5 uses
  %i.x = alloca [132 x float], align 16           ; 5 uses
  %i.y = alloca [132 x float], align 16           ; 5 uses
  %i.z = alloca [132 x float], align 16           ; 5 uses
  %i.aa = alloca [132 x float], align 16          ; 5 uses
  %i.ab = alloca [132 x float], align 16          ; 5 uses
  %i.ac = alloca [132 x float], align 16          ; 5 uses
  %i.ad = alloca [132 x float], align 16          ; 5 uses
  %i.ae = alloca [132 x float], align 16          ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ag = load <2 x float>, ptr %i.af, align 4    ; 8 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ai = load <2 x float>, ptr %i.ah, align 4    ; 6 uses
  %5 = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %foldExtExtBinop = fmul <2 x float> %i.ag, %i.ag ; 2 uses
  %6 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.aj = fmul <2 x float> %i.ag, %i.ag
  %7 = extractelement <2 x float> %i.aj, i64 1    ; 2 uses
  %i.ak = fmul <2 x float> %i.ai, %i.ai           ; 2 uses
  %8 = extractelement <2 x float> %i.ak, i64 0
  %9 = fmul <2 x float> %5, %i.ai                 ; 2 uses
  %10 = fadd float %7, %8
  %11 = fmul float %10, 2.000000e+00
  %foldExtExtBinop990 = fadd <2 x float> %foldExtExtBinop, %i.ak
  %i.al = extractelement <2 x float> %foldExtExtBinop990, i64 0
  %i.am = fmul float %i.al, 2.000000e+00
  %i.an = fsub float 1.000000e+00, %i.am          ; 3 uses
  %12 = extractelement <2 x float> %9, i64 0      ; 2 uses
  %i.ao = extractelement <2 x float> %9, i64 1    ; 2 uses
  %13 = fsub float %12, %i.ao
  %i.ap = fmul float %13, 2.000000e+00            ; 3 uses
  %14 = shufflevector <2 x float> %i.ai, <2 x float> %i.ag, <2 x i32> <i32 0, i32 3>
  %15 = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aq = fmul <2 x float> %14, %15               ; 2 uses
  %16 = fadd float %12, %i.ao
  %17 = insertelement <2 x float> poison, float %11, i64 0
  %18 = insertelement <2 x float> %17, float %16, i64 1 ; 2 uses
  %i.ar = fsub <2 x float> <float 1.000000e+00, float 2.000000e+00>, %18 ; 2 uses
  %i.as = fmul <2 x float> %18, <float poison, float 2.000000e+00> ; 3 uses
  %i.at = shufflevector <2 x float> %i.ar, <2 x float> %i.as, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.au = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %19 = shufflevector <2 x float> %i.ag, <2 x float> %i.ai, <2 x i32> <i32 1, i32 2>
  %i.av = fmul <2 x float> %i.au, %19             ; 2 uses
  %i.aw = fadd <2 x float> %i.av, %i.aq
  %i.ax = fsub <2 x float> %i.av, %i.aq
  %i.ay = fmul <2 x float> %i.ax, splat (float 2.000000e+00) ; 5 uses
  %i.az = fmul <2 x float> %i.aw, splat (float 2.000000e+00) ; 5 uses
  %20 = fadd float %6, %7
  %i.ba = fmul float %20, 2.000000e+00
  %i.bb = fsub float 1.000000e+00, %i.ba          ; 3 uses
  %i.bc = tail call float @b3GetLengthUnitsPerMeter() #11
  %i.bd = fmul float %i.bc, 5.000000e-03
  %i.be = fmul float %i.bd, 4.000000e+00          ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(88) %0, ptr noundef nonnull align 4 dereferenceable(88) @__const.b3ComputeSeparatingAxis.res, i64 88, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !43 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !42 ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  %i.bk = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.bl = sext i32 %i.bi to i64
  %i.bm = add nsw i64 %i.bl, %i.bk
  %i.bn = inttoptr i64 %i.bm to ptr
  %.0.i = select i1 %i.bj, ptr null, ptr %i.bn    ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !29 ; 3 uses
  %i.bq = add nsw i32 %i.bp, 3
  %i.br = and i32 %i.bq, -4                       ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 132
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !90 ; 2 uses
  %i.bu = icmp eq i32 %i.bt, 0
  %i.bv = ptrtoint ptr %2 to i64                  ; 4 uses
  %i.bw = sext i32 %i.bt to i64
  %i.bx = add nsw i64 %i.bw, %i.bv
  %i.by = inttoptr i64 %i.bx to ptr               ; 4 uses
  %.0.i508 = select i1 %i.bu, ptr null, ptr %i.by
  %i.bz = sext i32 %i.br to i64                   ; 2 uses
  %i.ca = getelementptr inbounds [4 x i8], ptr %.0.i508, i64 %i.bz ; 4 uses
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.bz ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0652.0.copyload = load <2 x float>, ptr %i.cc, align 8 ; 3 uses
  %.sroa.4653.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.4653.0.copyload = load float, ptr %.sroa.4653.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx654 = getelementptr inbounds nuw i8, ptr %2, i64 28
  %.sroa.5.0.copyload655 = load <2 x float>, ptr %.sroa.5.0..sroa_idx654, align 4 ; 3 uses
  %.sroa.6656.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 36
  %.sroa.6656.0.copyload = load float, ptr %.sroa.6656.0..sroa_idx, align 4 ; 2 uses
  %.sroa.06.4.vec.extract.i.i = extractelement <2 x float> %.sroa.5.0.copyload655, i64 1 ; 2 uses
  %.sroa.03.4.vec.extract.i.i = extractelement <2 x float> %.sroa.0652.0.copyload, i64 1 ; 2 uses
  %i.cd = fadd float %.sroa.03.4.vec.extract.i.i, %.sroa.06.4.vec.extract.i.i
  %foldExtExtBinop996 = fadd <2 x float> %.sroa.0652.0.copyload, %.sroa.5.0.copyload655
  %i.ce = fadd float %.sroa.4653.0.copyload, %.sroa.6656.0.copyload
  %i.cf = fmul float %i.cd, 5.000000e-01
  %i.cg = insertelement <2 x float> %foldExtExtBinop996, float %i.ce, i64 1
  %i.ch = fmul <2 x float> %i.cg, splat (float 5.000000e-01)
  %i.ci = fsub float %.sroa.06.4.vec.extract.i.i, %.sroa.03.4.vec.extract.i.i
  %foldExtExtBinop998 = fsub <2 x float> %.sroa.5.0.copyload655, %.sroa.0652.0.copyload
  %i.cj = fsub float %.sroa.6656.0.copyload, %.sroa.4653.0.copyload
  %i.ck = fmul float %i.ci, 5.000000e-01
  %i.cl = insertelement <2 x float> %foldExtExtBinop998, float %i.cj, i64 1
  %i.cm = fmul <2 x float> %i.cl, splat (float 5.000000e-01)
  %.not679 = icmp sgt i32 %i.bg, 0
  %.sroa.0265.0.copyload.pre.pre = load <2 x float>, ptr %3, align 8 ; 6 uses
  br i1 %.not679, label %.lr.ph, label %.critedge489

.lr.ph:                                           ; preds = %bb.a
  %.sroa.2380.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2380.0.copyload = load float, ptr %.sroa.2380.0..sroa_idx, align 8
  %i.cn = icmp sgt i32 %i.bp, 0
  %i.co = zext nneg i32 %i.br to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %.sroa.6404.0..sroa_idx405 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.bg to i64
  %i.cs = extractelement <2 x float> %i.as, i64 1
  %i.ct = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cu = insertelement <2 x float> %i.ct, float %i.bb, i64 1
  %i.cv = insertelement <2 x float> %i.at, float %i.ap, i64 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.cw = phi i32 [ -1, %.lr.ph ], [ %i.gp, %bb.d ]
  %.0475681688 = phi i32 [ -1, %.lr.ph ], [ %.0475681689, %bb.d ]
  %.sroa.6404.0.copyload685 = phi float [ 0.000000e+00, %.lr.ph ], [ %.sroa.6404.0.copyload686, %bb.d ]
  %i.cx = phi float [ -inf, %.lr.ph ], [ %i.gq, %bb.d ] ; 2 uses
  %.sroa.0401.0.copyload678680 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0401.0.copyload677, %bb.d ]
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %.0.i, i64 %indvars.iv ; 3 uses
  %.sroa.0401.0.copyload = load <2 x float>, ptr %i.cy, align 4, !tbaa !9 ; 8 uses
  %.sroa.6404.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %.sroa.6404.0.copyload = load float, ptr %.sroa.6404.0..sroa_idx, align 4, !tbaa !9 ; 5 uses
  %.sroa.8407.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  %.sroa.8407.0.copyload = load float, ptr %.sroa.8407.0..sroa_idx, align 4, !tbaa !9
  %i.cz = shufflevector <2 x float> %.sroa.0401.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %foldExtExtBinop1000 = fmul <2 x float> %i.ay, %.sroa.0401.0.copyload
  %i.da = extractelement <2 x float> %foldExtExtBinop1000, i64 0
  %i.db = extractelement <2 x float> %.sroa.0401.0.copyload, i64 1
  %i.dc = fmul float %i.an, %i.db
  %i.dd = fadd float %i.da, %i.dc
  %i.de = fmul float %i.cs, %.sroa.6404.0.copyload
  %i.df = fadd float %i.de, %i.dd                 ; 3 uses
  %i.dg = fmul <2 x float> %i.az, %i.cz
  %i.dh = fmul <2 x float> %i.cv, %.sroa.0401.0.copyload
  %i.di = fadd <2 x float> %i.dg, %i.dh
  %i.dj = insertelement <2 x float> poison, float %.sroa.6404.0.copyload, i64 0
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dl = fmul <2 x float> %i.cu, %i.dk
  %i.dm = fadd <2 x float> %i.dl, %i.di           ; 5 uses
  %i.dn = fneg float %i.df                        ; 4 uses
  %foldExtExtBinop1002 = fmul <2 x float> %.sroa.0401.0.copyload, %.sroa.0265.0.copyload.pre.pre
  %foldExtExtBinop1004 = fmul <2 x float> %.sroa.0401.0.copyload, %.sroa.0265.0.copyload.pre.pre
  %shift = shufflevector <2 x float> %foldExtExtBinop1004, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1006 = fadd <2 x float> %foldExtExtBinop1002, %shift
  %i.do = extractelement <2 x float> %foldExtExtBinop1006, i64 0
  %i.dp = fmul float %.sroa.6404.0.copyload, %.sroa.2380.0.copyload
  %i.dq = fadd float %i.dp, %i.do
  %i.dr = fsub float %i.dq, %.sroa.8407.0.copyload
  %i.ds = fmul float %i.cf, %i.dn
  %i.dt = fmul <2 x float> %i.ch, %i.dm           ; 2 uses
  %i.du = extractelement <2 x float> %i.dt, i64 0
  %i.dv = fsub float %i.ds, %i.du
  %i.dw = extractelement <2 x float> %i.dt, i64 1
  %i.dx = fsub float %i.dv, %i.dw
  %i.dy = fcmp ogt float %i.df, 0.000000e+00
  %i.dz = select i1 %i.dy, float %i.df, float %i.dn
  %i.ea = fmul float %i.ck, %i.dz
  %i.eb = fneg <2 x float> %i.dm                  ; 3 uses
  %i.ec = fcmp ogt <2 x float> %i.dm, zeroinitializer
  %i.ed = select <2 x i1> %i.ec, <2 x float> %i.dm, <2 x float> %i.eb
  %i.ee = fmul <2 x float> %i.cm, %i.ed           ; 2 uses
  %i.ef = extractelement <2 x float> %i.ee, i64 0
  %i.eg = fadd float %i.ef, %i.ea
  %i.eh = extractelement <2 x float> %i.ee, i64 1
  %i.ei = fadd float %i.eh, %i.eg
  %i.ej = fmul float %i.ei, 1.062500e+00
  %i.ek = fadd float %i.dx, %i.ej
  %i.el = shufflevector <2 x float> %i.eb, <2 x float> poison, <4 x i32> zeroinitializer
  %i.em = insertelement <4 x float> poison, float %i.dn, i64 0
  %i.en = shufflevector <4 x float> %i.em, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eo = shufflevector <2 x float> %i.eb, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ep = insertelement <4 x float> poison, float %i.ek, i64 0
  %i.eq = shufflevector <4 x float> %i.ep, <4 x float> poison, <4 x i32> zeroinitializer
  %i.er = tail call float @b3GetLengthUnitsPerMeter() #11
  %i.es = fmul float %i.er, 1.000000e+05
  %i.et = insertelement <4 x float> poison, float %i.es, i64 0
  %i.eu = shufflevector <4 x float> %i.et, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br i1 %i.cn, label %.lr.ph.i, label %b3GetSupportWide.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.b ] ; 5 uses
  %.041.i = phi <4 x float> [ %i.fm, %.lr.ph.i ], [ %i.eu, %bb.b ]
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i
  %.val39.i = load <4 x float>, ptr %i.ev, align 1, !tbaa !21
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv.i
  %.val38.i = load <4 x float>, ptr %i.ew, align 1, !tbaa !21
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv.i
  %.val.i = load <4 x float>, ptr %i.ex, align 1, !tbaa !21
  %i.ey = fmul <4 x float> %i.eo, %.val.i
  %i.ez = fmul <4 x float> %i.en, %.val38.i
  %i.fa = fmul <4 x float> %i.el, %.val39.i
  %i.fb = fadd <4 x float> %i.fa, %i.ez
  %i.fc = fadd <4 x float> %i.ey, %i.fb
  %i.fd = fsub <4 x float> %i.eq, %i.fc
  %i.fe = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ff = insertelement <4 x i32> poison, i32 %i.fe, i64 0
  %i.fg = shufflevector <4 x i32> %i.ff, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.fh = or disjoint <4 x i32> %i.fg, <i32 0, i32 1, i32 2, i32 3>
  %i.fi = bitcast <4 x float> %i.fd to <4 x i32>
  %i.fj = and <4 x i32> %i.fi, splat (i32 -128)
  %i.fk = or <4 x i32> %i.fh, %i.fj
  %i.fl = bitcast <4 x i32> %i.fk to <4 x float>
  %i.fm = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.041.i, <4 x float> %i.fl) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.fn = icmp samesign ult i64 %indvars.iv.next.i, %i.co
  br i1 %i.fn, label %.lr.ph.i, label %b3GetSupportWide.exit, !llvm.loop !82

b3GetSupportWide.exit:                            ; preds = %.lr.ph.i, %bb.b
  %.0.lcssa.i = phi <4 x float> [ %i.eu, %bb.b ], [ %i.fm, %.lr.ph.i ] ; 2 uses
  %i.fo = shufflevector <4 x float> %.0.lcssa.i, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.fp = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.0.lcssa.i, <4 x float> %i.fo) ; 2 uses
  %i.fq = shufflevector <4 x float> %i.fp, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.fr = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.fp, <4 x float> %i.fq)
  %i.fs = bitcast <4 x float> %i.fr to <4 x i32>
  %i.ft = extractelement <4 x i32> %i.fs, i64 0
  %i.fu = and i32 %i.ft, 127                      ; 3 uses
  %i.fv = zext nneg i32 %i.fu to i64              ; 3 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.fv
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !9
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.fv
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !9
  %i.ga = fmul float %i.fz, %i.dn
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.fv
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !9
  %i.gd = insertelement <2 x float> poison, float %i.fx, i64 0
  %i.ge = insertelement <2 x float> %i.gd, float %i.gc, i64 1
  %i.gf = fmul <2 x float> %i.dm, %i.ge           ; 2 uses
  %i.gg = extractelement <2 x float> %i.gf, i64 0
  %i.gh = fsub float %i.ga, %i.gg
  %i.gi = extractelement <2 x float> %i.gf, i64 1
  %i.gj = fsub float %i.gh, %i.gi
  %i.gk = fsub float %i.dr, %i.gj                 ; 4 uses
  %i.gl = fcmp ogt float %i.gk, %i.cx
  br i1 %i.gl, label %bb.c, label %bb.d

bb.c:                                             ; preds = %b3GetSupportWide.exit
  %i.gm = fcmp ogt float %i.gk, %i.be
  %or.cond = and i1 %4, %i.gm
  %i.gn = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
end_hunk_0
begin_hunk_1_@b3BuildFaceAContact:bb.a
  store i32 %i.dy, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !21
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ea = load i8, ptr %i.cc, align 1, !tbaa !59
  %i.eb = icmp ne i8 %i.cw, %i.ea
  %i.ec = icmp samesign ult i64 %indvars.iv.i, 63
  %i.ed = select i1 %i.eb, i1 %i.ec, i1 false
  br i1 %i.ed, label %bb.b, label %b3BuildPolygon.exit, !llvm.loop !105

b3BuildPolygon.exit:                              ; preds = %bb.b
  %i.ee = icmp eq i32 %i.b, 0
  %i.ef = sext i32 %i.b to i64
  %i.eg = add nsw i64 %i.ef, %i.c
  %i.eh = inttoptr i64 %i.eg to ptr
  %.0.i = select i1 %i.ee, ptr null, ptr %i.eh
  %i.ei = icmp eq i32 %i.e, 0
  %i.ej = sext i32 %i.e to i64
  %i.ek = add nsw i64 %i.ej, %i.c
  %i.el = inttoptr i64 %i.ek to ptr               ; 2 uses
  %.0.i146 = select i1 %i.ei, ptr null, ptr %i.el
  %i.em = icmp eq i32 %i.m, 0
  %i.en = sext i32 %i.m to i64
  %i.eo = add nsw i64 %i.en, %i.c
  %i.ep = inttoptr i64 %i.eo to ptr
  %.0.i148 = select i1 %i.em, ptr null, ptr %i.ep ; 2 uses
  %i.eq = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.er = getelementptr inbounds i8, ptr %.0.i, i64 %i.n ; 2 uses
  %i.es = load i8, ptr %i.er, align 1, !tbaa !59
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %b3BuildPolygon.exit
  %.0143.in = phi i8 [ %i.es, %b3BuildPolygon.exit ], [ %i.ev, %bb.f ] ; 2 uses
  %.0139 = phi ptr [ %6, %b3BuildPolygon.exit ], [ %.0138, %bb.f ] ; 3 uses
  %.0138 = phi ptr [ %5, %b3BuildPolygon.exit ], [ %.0139, %bb.f ] ; 2 uses
  %.0137 = phi i32 [ %i.eq, %b3BuildPolygon.exit ], [ %i.gf, %bb.f ]
  %.0143 = zext i8 %.0143.in to i32
  %i.et = zext i8 %.0143.in to i64
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.0.i146, i64 %i.et ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !60  ; 3 uses
  %i.ew = zext i8 %i.ev to i64
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 2
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !50
  %i.fa = zext i8 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [12 x i8], ptr %.0.i148, i64 %i.fa ; 2 uses
  %.sroa.067.0.copyload = load <2 x float>, ptr %i.fb, align 4, !tbaa !9 ; 3 uses
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %.sroa.569.0.copyload = load float, ptr %.sroa.569.0..sroa_idx, align 4, !tbaa !9 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 2
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !50
  %i.fe = zext i8 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [12 x i8], ptr %.0.i148, i64 %i.fe ; 2 uses
  %.sroa.065.0.copyload = load <2 x float>, ptr %i.ff, align 4, !tbaa !9
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %.sroa.466.0.copyload = load float, ptr %.sroa.466.0..sroa_idx, align 4, !tbaa !9
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %.sroa.067.0.copyload, i64 0
  %.sroa.03.4.vec.extract.i = extractelement <2 x float> %.sroa.067.0.copyload, i64 1
  %i.fg = fsub <2 x float> %.sroa.065.0.copyload, %.sroa.067.0.copyload ; 3 uses
  %i.fh = fsub float %.sroa.466.0.copyload, %.sroa.569.0.copyload ; 3 uses
  %i.fi = fmul <2 x float> %i.fg, %i.fg           ; 2 uses
  %shift11 = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop12 = fadd <2 x float> %i.fi, %shift11
  %i.fj = extractelement <2 x float> %foldExtExtBinop12, i64 0
  %i.fk = fmul float %i.fh, %i.fh
  %i.fl = fadd float %i.fk, %i.fj                 ; 2 uses
  %i.fm = fcmp ogt float %i.fl, f0x057A0000
  br i1 %i.fm, label %bb.d, label %b3Normalize.exit

bb.d:                                             ; preds = %bb.c
  %sqrt = call float @llvm.sqrt.f32(float %i.fl)
  %i.fn = fdiv float 1.000000e+00, %sqrt          ; 2 uses
  %i.fo = insertelement <2 x float> poison, float %i.fn, i64 0
  %i.fp = shufflevector <2 x float> %i.fo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fq = fmul <2 x float> %i.fg, %i.fp
  %i.fr = fmul float %i.fh, %i.fn
  br label %b3Normalize.exit

b3Normalize.exit:                                 ; preds = %bb.c, %bb.d
  %.sroa.018.0.i = phi <2 x float> [ %i.fq, %bb.d ], [ zeroinitializer, %bb.c ] ; 3 uses
  %.sroa.5.0.i = phi float [ %i.fr, %bb.d ], [ 0.000000e+00, %bb.c ] ; 2 uses
  %shift14 = shufflevector <2 x float> %.sroa.018.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop15 = fmul <2 x float> %.sroa.9.0.copyload, %shift14
  %i.fs = extractelement <2 x float> %foldExtExtBinop15, i64 0
  %i.ft = fmul float %i.v, %.sroa.5.0.i
  %i.fu = fsub float %i.fs, %i.ft                 ; 2 uses
  %.sroa.018.0.vec.insert.i155 = insertelement <2 x float> poison, float %i.fu, i64 0
  %i.fv = fmul float %.sroa.03.0.vec.extract.i.i, %.sroa.5.0.i
  %foldExtExtBinop17 = fmul <2 x float> %.sroa.9.0.copyload, %.sroa.018.0.i
  %i.fw = extractelement <2 x float> %foldExtExtBinop17, i64 0
  %i.fx = fsub float %i.fv, %i.fw                 ; 2 uses
  %.sroa.018.4.vec.insert.i157 = insertelement <2 x float> %.sroa.018.0.vec.insert.i155, float %i.fx, i64 1
  %i.fy = fmul <2 x float> %i.u, %.sroa.018.0.i   ; 2 uses
  %shift19 = shufflevector <2 x float> %i.fy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop20 = fsub <2 x float> %i.fy, %shift19 ; 2 uses
  %i.fz = extractelement <2 x float> %foldExtExtBinop20, i64 0
  %i.ga = fmul float %.sroa.03.0.vec.extract.i, %i.fu
  %i.gb = fmul float %.sroa.03.4.vec.extract.i, %i.fx
  %i.gc = fadd float %i.ga, %i.gb
  %i.gd = fmul float %.sroa.569.0.copyload, %i.fz
  %i.ge = fadd float %i.gd, %i.gc
  %.sroa.211.12.vec.insert.i = insertelement <2 x float> %foldExtExtBinop20, float %i.ge, i64 1
  %i.gf = call i32 @b3ClipPolygon(ptr noundef %.0139, ptr noundef %.0138, i32 noundef %.0137, <2 x float> %.sroa.018.4.vec.insert.i157, <2 x float> %.sroa.211.12.vec.insert.i, i32 noundef %.0143, <2 x float> %.sroa.0100.0.copyload, <2 x float> %.sroa.9.0.copyload) #11 ; 5 uses
  %i.gg = icmp sgt i32 %i.gf, 2
  br i1 %i.gg, label %bb.f, label %bb.e

bb.e:                                             ; preds = %b3Normalize.exit
  store i64 0, ptr %4, align 4
  br label %bb.ab

bb.f:                                             ; preds = %b3Normalize.exit
  %i.gh = load i8, ptr %i.er, align 1, !tbaa !59
  %.not = icmp eq i8 %i.ev, %i.gh
  br i1 %.not, label %bb.g, label %bb.c, !llvm.loop !106

bb.g:                                             ; preds = %bb.f
  %i.gi = call i32 @llvm.umin.i32(i32 %i.gf, i32 64) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  store <2 x float> %.sroa.0100.0.copyload, ptr %0, align 8, !tbaa !9
  %.sroa.9.0..sroa_idx106 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store float %.sroa.9.8.vec.extract, ptr %.sroa.9.0..sroa_idx106, align 8, !tbaa !9
  %wide.trip.count = zext nneg i32 %i.gi to i64   ; 2 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %i.gj = call float @b3GetLengthUnitsPerMeter() #11
  %i.gk = fmul float %i.gj, 5.000000e-03
  %i.gl = fmul float %i.gk, 4.000000e+00
  %i.gm = fcmp ult float %i.hf, %i.gl             ; 2 uses
  br i1 %i.gm, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.i
  %indvars.iv = phi i64 [ 0, %bb.g ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %.01417 = phi float [ f0x7F7FFFFF, %bb.g ], [ %i.hf, %bb.i ] ; 2 uses
  %i.gn = getelementptr inbounds nuw [20 x i8], ptr %.0139, i64 %indvars.iv ; 4 uses
  %i.go = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %indvars.iv ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.go, i8 0, i64 24, i1 false)
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 12 ; 3 uses
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !46
  %i.gr = fmul float %i.gq, 5.000000e-01          ; 2 uses
  %.sroa.05.0.copyload = load <2 x float>, ptr %i.gn, align 4
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %.sroa.26.0.copyload = load float, ptr %.sroa.26.0..sroa_idx, align 4
  %i.gs = insertelement <2 x float> poison, float %i.gr, i64 0
  %i.gt = shufflevector <2 x float> %i.gs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gu = fmul <2 x float> %.sroa.0100.0.copyload, %i.gt
  %i.gv = fsub <2 x float> %.sroa.05.0.copyload, %i.gu
  %i.gw = fmul float %.sroa.9.8.vec.extract, %i.gr
  %i.gx = fsub float %.sroa.26.0.copyload, %i.gw
  store <2 x float> %i.gv, ptr %i.go, align 8, !tbaa !9
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  store float %i.gx, ptr %.sroa.48.0..sroa_idx, align 8, !tbaa !9
  %i.gy = load float, ptr %i.gp, align 4, !tbaa !46
  %i.gz = getelementptr inbounds nuw i8, ptr %i.go, i64 12
  store float %i.gy, ptr %i.gz, align 4, !tbaa !20
  %i.ha = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !21
  store i32 %i.hc, ptr %i.ha, align 8, !tbaa !21
  %i.hd = load float, ptr %i.gp, align 4, !tbaa !46 ; 2 uses
  %i.he = fcmp olt float %.01417, %i.hd
  %i.hf = select i1 %i.he, float %.01417, float %i.hd ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.h, label %bb.i, !llvm.loop !107

bb.j:                                             ; preds = %bb.h
  store i64 0, ptr %4, align 4
  br label %bb.aa

bb.k:                                             ; preds = %bb.h
  %i.hg = icmp samesign ult i32 %i.gf, 5
  br i1 %i.hg, label %.lr.ph459.i, label %bb.m

.lr.ph459.i:                                      ; preds = %bb.k
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.hi, ptr noundef nonnull align 16 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !71
  %i.hj = load ptr, ptr %i.hh, align 8, !tbaa !17
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hl = getelementptr inbounds nuw i8, ptr %7, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.hk, ptr noundef nonnull align 8 dereferenceable(24) %i.hl, i64 24, i1 false), !tbaa.struct !71
  %i.hm = load ptr, ptr %i.hh, align 8, !tbaa !17
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 48
  %i.ho = getelementptr inbounds nuw i8, ptr %7, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.hn, ptr noundef nonnull align 16 dereferenceable(24) %i.ho, i64 24, i1 false), !tbaa.struct !71
  %exitcond481.not.i.2 = icmp eq i32 %i.gf, 3
  br i1 %exitcond481.not.i.2, label %._crit_edge460.i, label %bb.l

._crit_edge460.i:                                 ; preds = %bb.l, %.lr.ph459.i
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.gi, ptr %i.hp, align 8, !tbaa !16
  br label %b3ReduceManifoldPoints.exit

bb.l:                                             ; preds = %.lr.ph459.i
  %i.hq = load ptr, ptr %i.hh, align 8, !tbaa !17
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 72
  %i.hs = getelementptr inbounds nuw i8, ptr %7, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.hr, ptr noundef nonnull align 8 dereferenceable(24) %i.hs, i64 24, i1 false), !tbaa.struct !71
  br label %._crit_edge460.i

bb.m:                                             ; preds = %bb.k
  %.sroa.0244.0.copyload.i = load <2 x float>, ptr %0, align 8, !tbaa !9 ; 7 uses
  %.sroa.10.0.copyload.i = load float, ptr %.sroa.9.0..sroa_idx106, align 8, !tbaa !9 ; 8 uses
  %i.ht = call float @b3GetLengthUnitsPerMeter() #11
  %i.hu = fmul float %i.ht, 5.000000e-03
  %i.hv = fmul float %i.hu, 4.000000e+00          ; 3 uses
  %i.hw = fmul float %i.hv, %i.hv                 ; 3 uses
  %i.hx = shufflevector <2 x float> %.sroa.0244.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %.sroa.041.0.vec.extract.i.i = extractelement <2 x float> %.sroa.0244.0.copyload.i, i64 0 ; 6 uses
  %i.hy = call float @llvm.fabs.f32(float %.sroa.041.0.vec.extract.i.i)
  %or.cond.i.i = fcmp ogt float %i.hy, 5.000000e-01
  br i1 %or.cond.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.hz = extractelement <2 x float> %.sroa.0244.0.copyload.i, i64 1
  %i.ia = fmul float %i.hz, 6.700000e-01
  %i.ib = fmul float %.sroa.10.0.copyload.i, 4.200000e-01
  %i.ic = fsub float %i.ia, %i.ib
  %i.id = fmul nnan float %.sroa.041.0.vec.extract.i.i, -6.700000e-01
  %i.ie = fmul nnan float %.sroa.041.0.vec.extract.i.i, 4.200000e-01
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.if = extractelement <2 x float> %.sroa.0244.0.copyload.i, i64 1 ; 3 uses
  %i.ig = call float @llvm.fabs.f32(float %i.if)
  %or.cond5.i.i = fcmp ogt float %i.ig, 5.000000e-01
  br i1 %or.cond5.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ih = fmul nnan float %i.if, 6.700000e-01
  %i.ii = fmul float %.sroa.041.0.vec.extract.i.i, -6.700000e-01
  %i.ij = fmul float %.sroa.10.0.copyload.i, 4.200000e-01
  %i.ik = fsub float %i.ii, %i.ij
  %i.il = fmul nnan float %i.if, 4.200000e-01
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.im = fmul float %.sroa.10.0.copyload.i, 6.700000e-01
  %i.in = fmul float %.sroa.10.0.copyload.i, -4.200000e-01
  %i.io = fmul <2 x float> %.sroa.0244.0.copyload.i, <float 6.700000e-01, float 4.200000e-01> ; 2 uses
  %shift22 = shufflevector <2 x float> %i.io, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop23 = fsub <2 x float> %shift22, %i.io
  %i.ip = extractelement <2 x float> %foldExtExtBinop23, i64 0
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.n
  %.sink67.i.i = phi float [ %i.ih, %bb.p ], [ %i.im, %bb.q ], [ %i.ic, %bb.n ] ; 3 uses
  %.sink.i.i = phi float [ %i.ik, %bb.p ], [ %i.in, %bb.q ], [ %i.id, %bb.n ] ; 3 uses
  %.sroa.9.0.i.i = phi float [ %i.il, %bb.p ], [ %i.ip, %bb.q ], [ %i.ie, %bb.n ] ; 3 uses
  %i.iq = fmul float %.sink67.i.i, %.sink67.i.i
  %i.ir = fmul float %.sink.i.i, %.sink.i.i
  %i.is = fadd float %i.iq, %i.ir
  %i.it = fmul float %.sroa.9.0.i.i, %.sroa.9.0.i.i
  %i.iu = fadd float %i.it, %i.is                 ; 2 uses
  %i.iv = fcmp ogt float %i.iu, f0x057A0000
  br i1 %i.iv, label %bb.s, label %.lr.ph.i

bb.s:                                             ; preds = %bb.r
  %sqrt.i.i = call float @llvm.sqrt.f32(float %i.iu)
  %i.iw = fdiv float 1.000000e+00, %sqrt.i.i      ; 3 uses
  %i.ix = fmul float %.sink67.i.i, %i.iw
  %.sroa.018.0.vec.insert.i.i.i = insertelement <2 x float> poison, float %i.ix, i64 0
  %i.iy = fmul float %.sink.i.i, %i.iw
  %.sroa.018.4.vec.insert.i.i.i = insertelement <2 x float> %.sroa.018.0.vec.insert.i.i.i, float %i.iy, i64 1
  %i.iz = fmul float %.sroa.9.0.i.i, %i.iw
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.s, %bb.r
  %.sroa.018.0.i.i.i = phi <2 x float> [ %.sroa.018.4.vec.insert.i.i.i, %bb.s ], [ zeroinitializer, %bb.r ]
  %.sroa.5.0.i.i.i = phi float [ %i.iz, %bb.s ], [ 0.000000e+00, %bb.r ]
  br label %bb.t

._crit_edge.i:                                    ; preds = %bb.v
  %i.ja = icmp eq i32 %.2.i, -1
  br i1 %i.ja, label %bb.w, label %.lr.ph438.i

bb.t:                                             ; preds = %bb.v, %.lr.ph.i
  %indvars.iv.i166 = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i169, %bb.v ] ; 3 uses
  %.0301433.i = phi i32 [ -1, %.lr.ph.i ], [ %.2.i, %bb.v ] ; 2 uses
  %.0302432.i = phi float [ f0xFF7FFFFF, %.lr.ph.i ], [ %.2304.i, %bb.v ] ; 3 uses
  %i.jb = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %indvars.iv.i166 ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 12
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !20 ; 2 uses
  %i.je = fcmp ogt float %i.jd, %i.hv
  br i1 %i.je, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.sroa.0198.0.copyload.i = load <2 x float>, ptr %i.jb, align 8
  %.sroa.2199.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  %.sroa.2199.0.copyload.i = load float, ptr %.sroa.2199.0..sroa_idx.i, align 8
  %i.jf = fmul <2 x float> %.sroa.018.0.i.i.i, %.sroa.0198.0.copyload.i ; 2 uses
  %shift25 = shufflevector <2 x float> %i.jf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop26 = fadd <2 x float> %i.jf, %shift25
  %i.jg = extractelement <2 x float> %foldExtExtBinop26, i64 0
  %i.jh = fmul float %.sroa.5.0.i.i.i, %.sroa.2199.0.copyload.i
  %i.ji = fadd float %i.jh, %i.jg
  %i.jj = fsub float %i.ji, %i.jd                 ; 2 uses
  %i.jk = fmul float %i.jj, f0x3F733333
  %i.jl = fcmp ogt float %i.jk, %.0302432.i       ; 2 uses
  %.1303.i = select i1 %i.jl, float %i.jj, float %.0302432.i
  %i.jm = trunc nuw nsw i64 %indvars.iv.i166 to i32
  %.1.i = select i1 %i.jl, i32 %i.jm, i32 %.0301433.i
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.2304.i = phi float [ %.1303.i, %bb.u ], [ %.0302432.i, %bb.t ]
  %.2.i = phi i32 [ %.1.i, %bb.u ], [ %.0301433.i, %bb.t ] ; 3 uses
  %indvars.iv.next.i169 = add nuw nsw i64 %indvars.iv.i166, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i169, %wide.trip.count
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.t, !llvm.loop !108

bb.w:                                             ; preds = %._crit_edge.i
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.jn, align 8, !tbaa !16
  br label %b3ReduceManifoldPoints.exit

.lr.ph438.i:                                      ; preds = %._crit_edge.i
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !17
  %i.jq = sext i32 %.2.i to i64
  %i.jr = getelementptr inbounds [24 x i8], ptr %7, i64 %i.jq ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.jp, ptr noundef nonnull align 8 dereferenceable(24) %i.jr, i64 24, i1 false), !tbaa.struct !71
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  store i32 1, ptr %i.js, align 8, !tbaa !16
  %i.jt = add nsw i32 %i.gi, -1
  %i.ju = zext nneg i32 %i.jt to i64              ; 2 uses
  %i.jv = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %i.ju
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jr, ptr noundef nonnull align 8 dereferenceable(24) %i.jv, i64 24, i1 false), !tbaa.struct !71
  %i.jw = load ptr, ptr %i.jo, align 8, !tbaa !17 ; 3 uses
  %.sroa.0193.0.copyload.i = load <2 x float>, ptr %i.jw, align 4, !tbaa !9 ; 6 uses
  %.sroa.8.0..sroa_idx.i170 = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %.sroa.8.0.copyload.i = load float, ptr %.sroa.8.0..sroa_idx.i170, align 4, !tbaa !9 ; 5 uses
  %8 = extractelement <2 x float> %.sroa.0244.0.copyload.i, i64 1 ; 4 uses
  %9 = shufflevector <2 x float> %.sroa.0193.0.copyload.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %10 = insertelement <2 x float> %9, float %.sroa.8.0.copyload.i, i64 0
  %11 = insertelement <2 x float> %i.hx, float %.sroa.10.0.copyload.i, i64 0 ; 2 uses
  br label %bb.x

._crit_edge439.i:                                 ; preds = %bb.x
  %i.jx = fcmp olt float %.4306.i, %i.hw
  br i1 %i.jx, label %b3ReduceManifoldPoints.exit, label %.lr.ph447.preheader.i

bb.x:                                             ; preds = %bb.x, %.lr.ph438.i
  %indvars.iv462.i = phi i64 [ 0, %.lr.ph438.i ], [ %indvars.iv.next463.i, %bb.x ] ; 3 uses
  %.3436.i = phi i32 [ -1, %.lr.ph438.i ], [ %.4.i, %bb.x ]
  %.3305435.i = phi float [ 0.000000e+00, %.lr.ph438.i ], [ %.4306.i, %bb.x ] ; 2 uses
  %i.jy = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %indvars.iv462.i ; 3 uses
  %.sroa.0186.0.copyload.i = load <2 x float>, ptr %i.jy, align 8, !tbaa !9 ; 2 uses
  %.sroa.4187.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %.sroa.4187.0.copyload.i = load float, ptr %.sroa.4187.0..sroa_idx.i, align 8, !tbaa !9
  %foldExtExtBinop28 = fsub <2 x float> %.sroa.0186.0.copyload.i, %.sroa.0193.0.copyload.i
  %12 = extractelement <2 x float> %foldExtExtBinop28, i64 1 ; 2 uses
  %13 = fmul float %8, %12
  %14 = shufflevector <2 x float> %.sroa.0186.0.copyload.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %15 = insertelement <2 x float> %14, float %.sroa.4187.0.copyload.i, i64 0
  %16 = fsub <2 x float> %15, %10                 ; 2 uses
  %17 = fmul <2 x float> %11, %16                 ; 2 uses
  %18 = extractelement <2 x float> %17, i64 1
  %19 = fadd float %18, %13
  %20 = extractelement <2 x float> %17, i64 0
  %21 = fadd float %20, %19                       ; 2 uses
  %22 = fmul float %8, %21
  %23 = fsub float %12, %22                       ; 2 uses
  %24 = insertelement <2 x float> poison, float %21, i64 0
  %25 = shufflevector <2 x float> %24, <2 x float> poison, <2 x i32> zeroinitializer
  %26 = fmul <2 x float> %11, %25
  %27 = fsub <2 x float> %16, %26                 ; 2 uses
  %28 = fmul float %23, %23
  %29 = fmul <2 x float> %27, %27                 ; 2 uses
  %30 = extractelement <2 x float> %29, i64 1
  %31 = fadd float %30, %28
  %32 = extractelement <2 x float> %29, i64 0
  %33 = fadd float %32, %31
  %34 = getelementptr inbounds nuw i8, ptr %i.jy, i64 12
  %35 = load float, ptr %34, align 4, !tbaa !20   ; 2 uses
  %36 = fneg float %35
  %37 = fcmp ogt float %35, 0.000000e+00
  %38 = select i1 %37, float 0.000000e+00, float %36 ; 2 uses
  %39 = fmul float %38, 4.000000e+00
  %40 = fmul float %38, %39
  %41 = fadd float %40, %33                       ; 2 uses
  %i.jz = fmul float %41, f0x3F733333
  %i.ka = fcmp ogt float %i.jz, %.3305435.i       ; 2 uses
  %.4306.i = select i1 %i.ka, float %41, float %.3305435.i ; 2 uses
  %i.kb = trunc nuw nsw i64 %indvars.iv462.i to i32
  %.4.i = select i1 %i.ka, i32 %i.kb, i32 %.3436.i ; 2 uses
  %indvars.iv.next463.i = add nuw nsw i64 %indvars.iv462.i, 1 ; 2 uses
  %exitcond466.not.i = icmp eq i64 %indvars.iv.next463.i, %i.ju
  br i1 %exitcond466.not.i, label %._crit_edge439.i, label %bb.x, !llvm.loop !109

.lr.ph447.preheader.i:                            ; preds = %._crit_edge439.i
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jw, i64 24
  %i.kd = sext i32 %.4.i to i64
  %i.ke = getelementptr inbounds [24 x i8], ptr %7, i64 %i.kd ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.kc, ptr noundef nonnull align 8 dereferenceable(24) %i.ke, i64 24, i1 false), !tbaa.struct !71
  store i32 2, ptr %i.js, align 8, !tbaa !16
  %i.kf = add nsw i32 %i.gi, -2
  %i.kg = zext nneg i32 %i.kf to i64              ; 2 uses
  %i.kh = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %i.kg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ke, ptr noundef nonnull align 8 dereferenceable(24) %i.kh, i64 24, i1 false), !tbaa.struct !71
  %i.ki = load ptr, ptr %i.jo, align 8, !tbaa !17 ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 24
  %.sroa.0150.0.copyload.i = load <2 x float>, ptr %i.kj, align 4, !tbaa !9 ; 3 uses
  %.sroa.6153.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ki, i64 32
  %.sroa.6153.0.copyload.i = load float, ptr %.sroa.6153.0..sroa_idx.i, align 4, !tbaa !9 ; 3 uses
  %i.kk = fsub <2 x float> %.sroa.0150.0.copyload.i, %.sroa.0193.0.copyload.i ; 3 uses
  %i.kl = shufflevector <2 x float> %i.kk, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.km = fsub float %.sroa.6153.0.copyload.i, %.sroa.8.0.copyload.i ; 4 uses
  %i.kn = extractelement <2 x float> %i.kk, i64 0 ; 2 uses
  %i.ko = extractelement <2 x float> %i.kk, i64 1 ; 2 uses
  br label %.lr.ph447.i

._crit_edge448.i:                                 ; preds = %.lr.ph447.i
  %i.kp = icmp eq i32 %.6.i, -1
  br i1 %i.kp, label %b3ReduceManifoldPoints.exit, label %.lr.ph455.i

.lr.ph447.i:                                      ; preds = %.lr.ph447.i, %.lr.ph447.preheader.i
  %indvars.iv467.i = phi i64 [ 0, %.lr.ph447.preheader.i ], [ %indvars.iv.next468.i, %.lr.ph447.i ] ; 3 uses
  %.5445.i = phi i32 [ -1, %.lr.ph447.preheader.i ], [ %.6.i, %.lr.ph447.i ]
  %.5307444.i = phi float [ %i.hw, %.lr.ph447.preheader.i ], [ %.6308.i, %.lr.ph447.i ] ; 2 uses
  %.0313443.i = phi float [ 0.000000e+00, %.lr.ph447.preheader.i ], [ %.1314.i, %.lr.ph447.i ]
  %i.kq = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %indvars.iv467.i ; 2 uses
  %.sroa.0134.0.copyload.i = load <2 x float>, ptr %i.kq, align 8, !tbaa !9
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %.sroa.4.0.copyload.i = load float, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !9
  %i.kr = fsub float %.sroa.4.0.copyload.i, %.sroa.8.0.copyload.i ; 2 uses
  %i.ks = fmul float %i.ko, %i.kr
  %i.kt = fmul float %i.kn, %i.kr
  %i.ku = fsub <2 x float> %.sroa.0134.0.copyload.i, %.sroa.0193.0.copyload.i ; 3 uses
  %i.kv = extractelement <2 x float> %i.ku, i64 1
  %i.kw = fmul float %i.km, %i.kv
  %i.kx = fsub float %i.ks, %i.kw
  %i.ky = extractelement <2 x float> %i.ku, i64 0
  %i.kz = fmul float %i.km, %i.ky
  %i.la = fsub float %i.kz, %i.kt
  %i.lb = fmul <2 x float> %i.kl, %i.ku           ; 2 uses
  %shift40 = shufflevector <2 x float> %i.lb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop41 = fsub <2 x float> %shift40, %i.lb
  %i.lc = extractelement <2 x float> %foldExtExtBinop41, i64 0
  %i.ld = fmul float %.sroa.041.0.vec.extract.i.i, %i.kx
  %i.le = fmul float %8, %i.la
  %i.lf = fadd float %i.ld, %i.le
  %i.lg = fmul float %.sroa.10.0.copyload.i, %i.lc
  %i.lh = fadd float %i.lg, %i.lf                 ; 4 uses
  %i.li = fcmp olt float %i.lh, 0.000000e+00
  %i.lj = fneg float %i.lh
  %i.lk = select i1 %i.li, float %i.lj, float %i.lh ; 2 uses
  %i.ll = fmul float %i.lk, f0x3F733333
  %i.lm = fcmp ult float %i.ll, %.5307444.i       ; 3 uses
  %.1314.i = select i1 %i.lm, float %.0313443.i, float %i.lh ; 2 uses
  %.6308.i = select i1 %i.lm, float %.5307444.i, float %i.lk
  %i.ln = trunc nuw nsw i64 %indvars.iv467.i to i32
  %.6.i = select i1 %i.lm, i32 %.5445.i, i32 %i.ln ; 3 uses
  %indvars.iv.next468.i = add nuw nsw i64 %indvars.iv467.i, 1 ; 2 uses
  %exitcond471.not.i = icmp eq i64 %indvars.iv.next468.i, %i.kg
  br i1 %exitcond471.not.i, label %._crit_edge448.i, label %.lr.ph447.i, !llvm.loop !110

.lr.ph455.i:                                      ; preds = %._crit_edge448.i
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ki, i64 48
  %i.lp = sext i32 %.6.i to i64
  %i.lq = getelementptr inbounds [24 x i8], ptr %7, i64 %i.lp ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.lo, ptr noundef nonnull align 8 dereferenceable(24) %i.lq, i64 24, i1 false), !tbaa.struct !71
  store i32 3, ptr %i.js, align 8, !tbaa !16
  %i.lr = add nsw i32 %i.gi, -3
  %i.ls = zext nneg i32 %i.lr to i64              ; 2 uses
  %i.lt = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %i.ls
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lq, ptr noundef nonnull align 8 dereferenceable(24) %i.lt, i64 24, i1 false), !tbaa.struct !71
  %i.lu = load ptr, ptr %i.jo, align 8, !tbaa !17 ; 3 uses
  %.sroa.6105.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lu, i64 56
  %.sroa.6105.0.copyload.i = load float, ptr %.sroa.6105.0..sroa_idx.i, align 4, !tbaa !9 ; 3 uses
  %i.lv = fcmp olt float %.1314.i, 0.000000e+00
  %i.lw = select i1 %i.lv, float -1.000000e+00, float 1.000000e+00 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lu, i64 48
  %.sroa.0102.0.copyload.i = load <2 x float>, ptr %i.lx, align 4, !tbaa !9 ; 3 uses
  %i.ly = fsub <2 x float> %.sroa.0102.0.copyload.i, %.sroa.0150.0.copyload.i ; 3 uses
  %i.lz = shufflevector <2 x float> %i.ly, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ma = fsub float %.sroa.6105.0.copyload.i, %.sroa.6153.0.copyload.i
  %i.mb = fsub <2 x float> %.sroa.0193.0.copyload.i, %.sroa.0102.0.copyload.i ; 3 uses
  %i.mc = shufflevector <2 x float> %i.mb, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.md = fsub float %.sroa.8.0.copyload.i, %.sroa.6105.0.copyload.i
  %i.me = insertelement <2 x float> poison, float %i.lw, i64 0
  %i.mf = shufflevector <2 x float> %i.me, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mg = insertelement <2 x float> poison, float %.sroa.10.0.copyload.i, i64 0
  %i.mh = shufflevector <2 x float> %i.mg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mi = insertelement <2 x float> poison, float %i.ma, i64 0
  %i.mj = insertelement <2 x float> poison, float %i.md, i64 1
  br label %bb.y

._crit_edge456.i:                                 ; preds = %bb.y
  %.not.i = icmp eq i32 %.8.i, -1
  br i1 %.not.i, label %b3ReduceManifoldPoints.exit, label %bb.z

bb.y:                                             ; preds = %bb.y, %.lr.ph455.i
  %indvars.iv472.i = phi i64 [ 0, %.lr.ph455.i ], [ %indvars.iv.next473.i, %bb.y ] ; 3 uses
  %.7453.i = phi i32 [ -1, %.lr.ph455.i ], [ %.8.i, %bb.y ]
  %.7309452.i = phi float [ %i.hw, %.lr.ph455.i ], [ %.8310.i, %bb.y ] ; 2 uses
  %i.mk = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %indvars.iv472.i ; 2 uses
  %.sroa.093.0.copyload.i = load <2 x float>, ptr %i.mk, align 8, !tbaa !9 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  %.sroa.6.0.copyload.i = load float, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !9 ; 3 uses
  %i.ml = fsub float %.sroa.6.0.copyload.i, %.sroa.8.0.copyload.i ; 2 uses
  %i.mm = fmul float %i.ko, %i.ml
  %i.mn = fmul float %i.kn, %i.ml
  %i.mo = fsub <2 x float> %.sroa.093.0.copyload.i, %.sroa.0193.0.copyload.i ; 3 uses
  %i.mp = extractelement <2 x float> %i.mo, i64 1
  %i.mq = fmul float %i.km, %i.mp
  %i.mr = fsub float %i.mq, %i.mm
  %i.ms = extractelement <2 x float> %i.mo, i64 0
  %i.mt = fmul float %i.km, %i.ms
  %i.mu = fsub float %i.mn, %i.mt
  %i.mv = fmul <2 x float> %i.kl, %i.mo           ; 2 uses
  %shift43 = shufflevector <2 x float> %i.mv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop44 = fsub <2 x float> %i.mv, %shift43
  %i.mw = extractelement <2 x float> %foldExtExtBinop44, i64 0
  %i.mx = fmul float %.sroa.041.0.vec.extract.i.i, %i.mr
  %i.my = fmul float %8, %i.mu
  %i.mz = fadd float %i.mx, %i.my
  %i.na = fmul float %.sroa.10.0.copyload.i, %i.mw
  %i.nb = fadd float %i.na, %i.mz
  %i.nc = fmul float %i.lw, %i.nb                 ; 2 uses
  %i.nd = fsub float %.sroa.6.0.copyload.i, %.sroa.6153.0.copyload.i
  %i.ne = fsub <2 x float> %.sroa.093.0.copyload.i, %.sroa.0150.0.copyload.i ; 3 uses
  %i.nf = fmul <2 x float> %i.lz, %i.ne           ; 2 uses
  %i.ng = fsub float %.sroa.6.0.copyload.i, %.sroa.6105.0.copyload.i
  %i.nh = fsub <2 x float> %.sroa.093.0.copyload.i, %.sroa.0102.0.copyload.i ; 3 uses
  %i.ni = fmul <2 x float> %i.mc, %i.nh           ; 2 uses
  %i.nj = insertelement <2 x float> %i.mi, float %i.ng, i64 1 ; 2 uses
  %i.nk = shufflevector <2 x float> %i.ne, <2 x float> %i.mb, <2 x i32> <i32 0, i32 3>
  %i.nl = fmul <2 x float> %i.nj, %i.nk
  %i.nm = shufflevector <2 x float> %i.ne, <2 x float> %i.mb, <2 x i32> <i32 1, i32 2>
  %i.nn = fmul <2 x float> %i.nj, %i.nm
  %i.no = shufflevector <2 x float> %i.ly, <2 x float> %i.nh, <2 x i32> <i32 0, i32 3>
  %i.np = insertelement <2 x float> %i.mj, float %i.nd, i64 0 ; 2 uses
  %i.nq = fmul <2 x float> %i.no, %i.np
  %i.nr = fsub <2 x float> %i.nq, %i.nl
  %i.ns = shufflevector <2 x float> %i.ly, <2 x float> %i.nh, <2 x i32> <i32 1, i32 2>
  %i.nt = fmul <2 x float> %i.ns, %i.np
  %i.nu = fsub <2 x float> %i.nn, %i.nt
  %i.nv = shufflevector <2 x float> %i.nf, <2 x float> %i.ni, <2 x i32> <i32 0, i32 2>
  %i.nw = shufflevector <2 x float> %i.nf, <2 x float> %i.ni, <2 x i32> <i32 1, i32 3>
  %i.nx = fsub <2 x float> %i.nv, %i.nw
  %i.ny = fmul <2 x float> %i.hx, %i.nr
  %i.nz = fmul <2 x float> %.sroa.0244.0.copyload.i, %i.nu
  %i.oa = fadd <2 x float> %i.ny, %i.nz
  %i.ob = fmul <2 x float> %i.mh, %i.nx
  %i.oc = fadd <2 x float> %i.ob, %i.oa
  %i.od = fmul <2 x float> %i.mf, %i.oc           ; 2 uses
  %i.oe = extractelement <2 x float> %i.od, i64 0 ; 2 uses
  %i.of = extractelement <2 x float> %i.od, i64 1 ; 2 uses
  %i.og = fcmp ogt float %i.oe, %i.of
  %i.oh = select i1 %i.og, float %i.oe, float %i.of ; 2 uses
  %i.oi = fcmp ogt float %i.nc, %i.oh
  %i.oj = select i1 %i.oi, float %i.nc, float %i.oh ; 2 uses
  %i.ok = fmul float %i.oj, f0x3F733333
  %i.ol = fcmp ogt float %i.ok, %.7309452.i       ; 2 uses
  %.8310.i = select i1 %i.ol, float %i.oj, float %.7309452.i
  %i.om = trunc nuw nsw i64 %indvars.iv472.i to i32
  %.8.i = select i1 %i.ol, i32 %i.om, i32 %.7453.i ; 3 uses
  %indvars.iv.next473.i = add nuw nsw i64 %indvars.iv472.i, 1 ; 2 uses
  %exitcond476.not.i = icmp eq i64 %indvars.iv.next473.i, %i.ls
  br i1 %exitcond476.not.i, label %._crit_edge456.i, label %bb.y, !llvm.loop !111

bb.z:                                             ; preds = %._crit_edge456.i
  %i.on = getelementptr inbounds nuw i8, ptr %i.lu, i64 72
  %i.oo = sext i32 %.8.i to i64
  %i.op = getelementptr inbounds [24 x i8], ptr %7, i64 %i.oo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.on, ptr noundef nonnull align 8 dereferenceable(24) %i.op, i64 24, i1 false), !tbaa.struct !71
  %i.oq = load i32, ptr %i.js, align 8, !tbaa !16
  %i.or = add nsw i32 %i.oq, 1
  store i32 %i.or, ptr %i.js, align 8, !tbaa !16
  br label %b3ReduceManifoldPoints.exit

b3ReduceManifoldPoints.exit:                      ; preds = %._crit_edge460.i, %bb.w, %._crit_edge439.i, %._crit_edge448.i, %._crit_edge456.i, %bb.z
  store float %i.hf, ptr %4, align 4, !tbaa !69
  %i.os = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i8 2, ptr %i.os, align 4, !tbaa !67
  %i.ot = trunc i32 %.16.val to i8
  %i.ou = getelementptr inbounds nuw i8, ptr %4, i64 5
  store i8 %i.ot, ptr %i.ou, align 1, !tbaa !68
  %i.ov = trunc i32 %.20.val to i8
  %i.ow = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i8 %i.ov, ptr %i.ow, align 2, !tbaa !70
  br label %bb.aa

bb.aa:                                            ; preds = %b3ReduceManifoldPoints.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %bb.ab

bb.ab:                                            ; preds = %bb.e, %bb.aa
  %.3 = phi i1 [ %i.gm, %bb.aa ], [ false, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret i1 %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @b3BuildFaceBContact(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %3, ptr nofree noundef readonly byval(%struct.b3SeparatingAxis) align 8 captures(none) %4, ptr nofree noundef writeonly captures(none) %5) unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.b3Transform, align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %.sroa.093.0.copyload = load <2 x float>, ptr %3, align 8 ; 5 uses
  %.sroa.494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.494.0.copyload = load float, ptr %.sroa.494.0..sroa_idx, align 8 ; 5 uses
  %.sroa.595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.595.0.copyload = load <2 x float>, ptr %.sroa.595.0..sroa_idx, align 4 ; 11 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 20
  %.sroa.6.0.copyload = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 4 ; 10 uses
  %.sroa.3.8.vec.extract.i.i = extractelement <2 x float> %.sroa.6.0.copyload, i64 0 ; 3 uses
  %.sroa.011.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.595.0.copyload, i64 0 ; 3 uses
  %i.a = fmul float %.sroa.494.0.copyload, %.sroa.011.0.vec.extract.i.i.i
  %foldExtExtBinop = fmul <2 x float> %.sroa.093.0.copyload, %.sroa.6.0.copyload
  %i.b = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.c = fsub float %i.a, %i.b
  %i.d = shufflevector <2 x float> %.sroa.595.0.copyload, <2 x float> %.sroa.6.0.copyload, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.e = fmul <2 x float> %.sroa.093.0.copyload, %i.d
  %i.f = shufflevector <2 x float> %.sroa.093.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.g = insertelement <2 x float> %i.f, float %.sroa.494.0.copyload, i64 1 ; 2 uses
  %i.h = fmul <2 x float> %i.g, %.sroa.595.0.copyload
  %i.i = fsub <2 x float> %i.e, %i.h              ; 2 uses
  %i.j = insertelement <2 x float> %i.f, float %.sroa.494.0.copyload, i64 0
  %i.k = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.l = fmul <2 x float> %i.j, %i.k
  %i.m = fmul <2 x float> %i.g, %i.k
  %i.n = fadd <2 x float> %i.i, %i.l              ; 2 uses
  %i.o = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.p = insertelement <2 x float> %i.o, float %i.c, i64 0
  %i.q = fadd <2 x float> %i.m, %i.p              ; 2 uses
  %i.r = fmul <2 x float> %i.d, %i.n
  %i.s = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> %.sroa.595.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.t = fmul <2 x float> %i.s, %i.q
  %i.u = fsub <2 x float> %i.r, %i.t
  %foldExtExtBinop2 = fmul <2 x float> %.sroa.595.0.copyload, %i.q
  %foldExtExtBinop4 = fmul <2 x float> %.sroa.595.0.copyload, %i.n
  %shift = shufflevector <2 x float> %foldExtExtBinop4, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop6 = fsub <2 x float> %foldExtExtBinop2, %shift
  %i.v = extractelement <2 x float> %foldExtExtBinop6, i64 0
  %i.w = fmul <2 x float> %i.u, splat (float 2.000000e+00)
  %i.x = fsub <2 x float> %i.w, %.sroa.093.0.copyload
  %i.y = fmul float %i.v, 2.000000e+00
  %i.z = fsub float %i.y, %.sroa.494.0.copyload
  store <2 x float> %i.x, ptr %6, align 8, !tbaa !9, !alias.scope !115
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.z, ptr %.sroa.413.0..sroa_idx.i, align 8, !tbaa !9, !alias.scope !115
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.ab = fneg <2 x float> %.sroa.595.0.copyload
  %i.ac = fneg float %.sroa.3.8.vec.extract.i.i
  %.sroa.33.12.vec.insert.i.i = insertelement <2 x float> %.sroa.6.0.copyload, float %i.ac, i64 0
  store <2 x float> %i.ab, ptr %i.aa, align 4, !tbaa !9, !alias.scope !115
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 20
  store <2 x float> %.sroa.33.12.vec.insert.i.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !9, !alias.scope !115
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !55 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !54 ; 2 uses
  %i.ah = tail call fastcc zeroext i1 @b3BuildFaceAContact(ptr noundef %0, ptr noundef %2, ptr noundef %1, ptr noundef nonnull byval(%struct.b3Transform) align 8 %6, i32 %i.ae, i32 %i.ag, ptr noundef %5) ; 2 uses
  br i1 %i.ah, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %5, align 4
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %.sroa.3.12.vec.extract.i.i = extractelement <2 x float> %.sroa.6.0.copyload, i64 1 ; 3 uses
  %.sroa.011.4.vec.extract.i.i.i = extractelement <2 x float> %.sroa.595.0.copyload, i64 1 ; 3 uses
  %i.ai = fmul <2 x float> %.sroa.595.0.copyload, %.sroa.595.0.copyload ; 2 uses
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %foldExtExtBinop8 = fmul <2 x float> %.sroa.6.0.copyload, %.sroa.6.0.copyload
  %i.ak = fmul float %.sroa.011.0.vec.extract.i.i.i, %.sroa.011.4.vec.extract.i.i.i ; 2 uses
  %foldExtExtBinop10 = fmul <2 x float> %.sroa.595.0.copyload, %.sroa.6.0.copyload
  %i.al = extractelement <2 x float> %foldExtExtBinop10, i64 0 ; 2 uses
  %i.am = fmul float %.sroa.011.0.vec.extract.i.i.i, %.sroa.3.12.vec.extract.i.i ; 2 uses
  %i.an = fmul float %.sroa.011.4.vec.extract.i.i.i, %.sroa.3.8.vec.extract.i.i ; 2 uses
  %i.ao = fmul float %.sroa.011.4.vec.extract.i.i.i, %.sroa.3.12.vec.extract.i.i ; 2 uses
  %i.ap = fmul float %.sroa.3.8.vec.extract.i.i, %.sroa.3.12.vec.extract.i.i ; 2 uses
  %i.aq = fsub float %i.al, %i.ao
  %i.ar = fmul float %i.aq, 2.000000e+00          ; 2 uses
  %i.as = fadd float %i.an, %i.am
  %i.at = fmul float %i.as, 2.000000e+00          ; 2 uses
  %i.au = fadd float %i.ak, %i.ap
  %i.av = fsub float %i.ak, %i.ap
  %i.aw = insertelement <2 x float> poison, float %i.av, i64 0
  %i.ax = insertelement <2 x float> %i.aw, float %i.au, i64 1
  %i.ay = fmul <2 x float> %i.ax, splat (float 2.000000e+00) ; 2 uses
  %i.az = shufflevector <2 x float> %foldExtExtBinop8, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ba = fadd <2 x float> %i.aj, %i.az
  %i.bb = fmul <2 x float> %i.ba, splat (float 2.000000e+00)
  %i.bc = fsub <2 x float> splat (float 1.000000e+00), %i.bb ; 2 uses
  %i.bd = fadd float %i.al, %i.ao
  %i.be = fsub float %i.an, %i.am
  %i.bf = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.bg = insertelement <2 x float> %i.bf, float %i.be, i64 1
  %i.bh = fmul <2 x float> %i.bg, splat (float 2.000000e+00) ; 2 uses
  %i.bi = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ai)
  %i.bj = fmul float %i.bi, 2.000000e+00
  %i.bk = fsub float 1.000000e+00, %i.bj          ; 2 uses
  %.sroa.030.0.copyload = load <2 x float>, ptr %0, align 8 ; 4 uses
  %.sroa.231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.231.0.copyload = load float, ptr %.sroa.231.0..sroa_idx, align 8 ; 2 uses
  %i.bl = shufflevector <2 x float> %.sroa.030.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.03.0.vec.extract.i62 = extractelement <2 x float> %.sroa.030.0.copyload, i64 0
  %i.bm = fmul float %i.ar, %.sroa.03.0.vec.extract.i62
  %i.bn = extractelement <2 x float> %.sroa.030.0.copyload, i64 1
  %i.bo = fmul float %i.at, %i.bn
  %i.bp = fadd float %i.bm, %i.bo
  %i.bq = fmul float %i.bk, %.sroa.231.0.copyload
  %i.br = fadd float %i.bq, %i.bp
  %i.bs = fmul <2 x float> %i.ay, %i.bl
  %i.bt = fmul <2 x float> %i.bc, %.sroa.030.0.copyload
  %i.bu = fadd <2 x float> %i.bs, %i.bt
  %i.bv = insertelement <2 x float> poison, float %.sroa.231.0.copyload, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = fmul <2 x float> %i.bh, %i.bw
  %i.by = fadd <2 x float> %i.bx, %i.bu
  %i.bz = fneg <2 x float> %i.by
  %i.ca = fneg float %i.br
  store <2 x float> %i.bz, ptr %0, align 8, !tbaa !9
end_hunk_1

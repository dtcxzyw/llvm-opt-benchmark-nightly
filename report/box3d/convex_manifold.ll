Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/convex_manifold?download=true
inline.NumInlined: 436
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@b3BuildHullAndCapsuleEdgeContact:bb.a
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
  %i.bg = shufflevector <4 x float> %i.a, <4 x float> poison, <2 x i32> zeroinitializer
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
  %i.ag = load <2 x float>, ptr %i.af, align 4    ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ai = load <2 x float>, ptr %i.ah, align 4    ; 5 uses
  %foldExtExtBinop = fmul <2 x float> %i.ag, %i.ag ; 2 uses
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> %i.ag, <2 x i32> <i32 0, i32 3>
  %i.ak = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.al = fmul <2 x float> %i.aj, %i.ak           ; 2 uses
  %i.am = shufflevector <2 x float> %i.ai, <2 x float> %i.ag, <2 x i32> <i32 0, i32 2>
  %i.an = fmul <2 x float> %i.am, %i.ai           ; 3 uses
  %i.ao = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ap = shufflevector <2 x float> %i.ag, <2 x float> %i.ai, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.aq = fmul <2 x float> %i.ao, %i.ap           ; 3 uses
  %foldExtExtBinop990 = fadd <2 x float> %foldExtExtBinop, %i.an
  %i.ar = extractelement <2 x float> %foldExtExtBinop990, i64 0
  %i.as = fmul float %i.ar, 2.000000e+00
  %i.at = fsub float 1.000000e+00, %i.as          ; 3 uses
  %foldExtExtBinop992 = fsub <2 x float> %i.aq, %i.an
  %i.au = extractelement <2 x float> %foldExtExtBinop992, i64 1
  %i.av = fmul float %i.au, 2.000000e+00          ; 3 uses
  %i.aw = fadd <2 x float> %i.aq, %i.an
  %i.ax = fmul <2 x float> %i.aw, <float 2.000000e+00, float 1.000000e+00> ; 2 uses
  %i.ay = fsub <2 x float> <float 1.000000e+00, float 2.000000e+00>, %i.ax ; 2 uses
  %i.az = fmul <2 x float> %i.ax, <float poison, float 2.000000e+00> ; 3 uses
  %i.ba = shufflevector <2 x float> %i.ay, <2 x float> %i.az, <2 x i32> <i32 0, i32 3> ; 2 uses
  %5 = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %5, %i.ap                 ; 2 uses
  %7 = fadd <2 x float> %6, %i.al
  %8 = fsub <2 x float> %6, %i.al
  %9 = fmul <2 x float> %8, splat (float 2.000000e+00) ; 5 uses
  %10 = fmul <2 x float> %7, splat (float 2.000000e+00) ; 5 uses
  %foldExtExtBinop994 = fadd <2 x float> %foldExtExtBinop, %i.aq
  %i.bb = extractelement <2 x float> %foldExtExtBinop994, i64 0
  %i.bc = fmul float %i.bb, 2.000000e+00
  %11 = fsub float 1.000000e+00, %i.bc            ; 3 uses
  %i.bd = tail call float @b3GetLengthUnitsPerMeter() #11
  %i.be = fmul float %i.bd, 5.000000e-03
  %i.bf = fmul float %i.be, 4.000000e+00          ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(88) %0, ptr noundef nonnull align 4 dereferenceable(88) @__const.b3ComputeSeparatingAxis.res, i64 88, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !43 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !42 ; 2 uses
  %i.bk = icmp eq i32 %i.bj, 0
  %i.bl = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.bm = sext i32 %i.bj to i64
  %i.bn = add nsw i64 %i.bm, %i.bl
  %i.bo = inttoptr i64 %i.bn to ptr
  %.0.i = select i1 %i.bk, ptr null, ptr %i.bo    ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !29 ; 3 uses
  %i.br = add nsw i32 %i.bq, 3
  %i.bs = and i32 %i.br, -4                       ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 132
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !90 ; 2 uses
  %i.bv = icmp eq i32 %i.bu, 0
  %i.bw = ptrtoint ptr %2 to i64                  ; 4 uses
  %i.bx = sext i32 %i.bu to i64
  %i.by = add nsw i64 %i.bx, %i.bw
  %i.bz = inttoptr i64 %i.by to ptr               ; 4 uses
  %.0.i508 = select i1 %i.bv, ptr null, ptr %i.bz
  %i.ca = sext i32 %i.bs to i64                   ; 2 uses
  %i.cb = getelementptr inbounds [4 x i8], ptr %.0.i508, i64 %i.ca ; 4 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.ca ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0652.0.copyload = load <2 x float>, ptr %i.cd, align 8 ; 3 uses
  %.sroa.4653.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.4653.0.copyload = load float, ptr %.sroa.4653.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx654 = getelementptr inbounds nuw i8, ptr %2, i64 28
  %.sroa.5.0.copyload655 = load <2 x float>, ptr %.sroa.5.0..sroa_idx654, align 4 ; 3 uses
  %.sroa.6656.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 36
  %.sroa.6656.0.copyload = load float, ptr %.sroa.6656.0..sroa_idx, align 4 ; 2 uses
  %.sroa.06.4.vec.extract.i.i = extractelement <2 x float> %.sroa.5.0.copyload655, i64 1 ; 2 uses
  %.sroa.03.4.vec.extract.i.i = extractelement <2 x float> %.sroa.0652.0.copyload, i64 1 ; 2 uses
  %i.ce = fadd float %.sroa.03.4.vec.extract.i.i, %.sroa.06.4.vec.extract.i.i
  %foldExtExtBinop996 = fadd <2 x float> %.sroa.0652.0.copyload, %.sroa.5.0.copyload655
  %i.cf = fadd float %.sroa.4653.0.copyload, %.sroa.6656.0.copyload
  %i.cg = fmul float %i.ce, 5.000000e-01
  %i.ch = insertelement <2 x float> %foldExtExtBinop996, float %i.cf, i64 1
  %i.ci = fmul <2 x float> %i.ch, splat (float 5.000000e-01)
  %i.cj = fsub float %.sroa.06.4.vec.extract.i.i, %.sroa.03.4.vec.extract.i.i
  %foldExtExtBinop998 = fsub <2 x float> %.sroa.5.0.copyload655, %.sroa.0652.0.copyload
  %i.ck = fsub float %.sroa.6656.0.copyload, %.sroa.4653.0.copyload
  %i.cl = fmul float %i.cj, 5.000000e-01
  %i.cm = insertelement <2 x float> %foldExtExtBinop998, float %i.ck, i64 1
  %i.cn = fmul <2 x float> %i.cm, splat (float 5.000000e-01)
  %.not679 = icmp sgt i32 %i.bh, 0
  %.sroa.0265.0.copyload.pre.pre = load <2 x float>, ptr %3, align 8 ; 6 uses
  br i1 %.not679, label %.lr.ph, label %.critedge489

.lr.ph:                                           ; preds = %bb.a
  %.sroa.2380.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2380.0.copyload = load float, ptr %.sroa.2380.0..sroa_idx, align 8
  %i.co = icmp sgt i32 %i.bq, 0
  %i.cp = zext nneg i32 %i.bs to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %.sroa.6404.0..sroa_idx405 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.bh to i64
  %i.ct = extractelement <2 x float> %i.az, i64 1
  %12 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %13 = insertelement <2 x float> %12, float %11, i64 1
  %i.cu = insertelement <2 x float> %i.ba, float %i.av, i64 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.cv = phi i32 [ -1, %.lr.ph ], [ %i.fx, %bb.d ]
  %.0475681688 = phi i32 [ -1, %.lr.ph ], [ %.0475681689, %bb.d ]
  %.sroa.6404.0.copyload685 = phi float [ 0.000000e+00, %.lr.ph ], [ %.sroa.6404.0.copyload686, %bb.d ]
  %i.cw = phi float [ -inf, %.lr.ph ], [ %i.fy, %bb.d ] ; 2 uses
  %.sroa.0401.0.copyload678680 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0401.0.copyload677, %bb.d ]
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %.0.i, i64 %indvars.iv ; 3 uses
  %.sroa.0401.0.copyload = load <2 x float>, ptr %i.cx, align 4, !tbaa !9 ; 8 uses
  %.sroa.6404.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %.sroa.6404.0.copyload = load float, ptr %.sroa.6404.0..sroa_idx, align 4, !tbaa !9 ; 5 uses
  %.sroa.8407.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 12
  %.sroa.8407.0.copyload = load float, ptr %.sroa.8407.0..sroa_idx, align 4, !tbaa !9
  %i.cy = shufflevector <2 x float> %.sroa.0401.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %foldExtExtBinop1000 = fmul <2 x float> %9, %.sroa.0401.0.copyload
  %i.cz = extractelement <2 x float> %foldExtExtBinop1000, i64 0
  %i.da = extractelement <2 x float> %.sroa.0401.0.copyload, i64 1
  %i.db = fmul float %i.at, %i.da
  %i.dc = fadd float %i.cz, %i.db
  %i.dd = fmul float %i.ct, %.sroa.6404.0.copyload
  %i.de = fadd float %i.dd, %i.dc                 ; 3 uses
  %foldExtExtBinop1002.a = fmul <2 x float> %10, %i.cy
  %foldExtExtBinop1004.a = fmul <2 x float> %i.cu, %.sroa.0401.0.copyload
  %foldExtExtBinop1006.a = fadd <2 x float> %foldExtExtBinop1002.a, %foldExtExtBinop1004.a
  %14 = insertelement <2 x float> poison, float %.sroa.6404.0.copyload, i64 0
  %15 = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> zeroinitializer
  %16 = fmul <2 x float> %13, %15
  %17 = fadd <2 x float> %16, %foldExtExtBinop1006.a ; 5 uses
  %18 = fneg float %i.de                          ; 4 uses
  %foldExtExtBinop1002 = fmul <2 x float> %.sroa.0401.0.copyload, %.sroa.0265.0.copyload.pre.pre
  %i.df = fmul <2 x float> %.sroa.0401.0.copyload, %.sroa.0265.0.copyload.pre.pre
  %shift = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dg = fadd <2 x float> %foldExtExtBinop1002, %shift
  %19 = extractelement <2 x float> %i.dg, i64 0
  %i.dh = fmul float %.sroa.6404.0.copyload, %.sroa.2380.0.copyload
  %20 = fadd float %i.dh, %19
  %21 = fsub float %20, %.sroa.8407.0.copyload
  %22 = fmul float %i.cg, %18
  %i.di = fmul <2 x float> %i.ci, %17             ; 2 uses
  %i.dj = extractelement <2 x float> %i.di, i64 0
  %i.dk = fsub float %22, %i.dj
  %i.dl = extractelement <2 x float> %i.di, i64 1
  %i.dm = fsub float %i.dk, %i.dl
  %i.dn = fcmp ogt float %i.de, 0.000000e+00
  %i.do = select i1 %i.dn, float %i.de, float %18
  %i.dp = fmul float %i.cl, %i.do
  %i.dq = fneg <2 x float> %17                    ; 3 uses
  %i.dr = fcmp ogt <2 x float> %17, zeroinitializer
  %i.ds = select <2 x i1> %i.dr, <2 x float> %17, <2 x float> %i.dq
  %i.dt = fmul <2 x float> %i.cn, %i.ds           ; 2 uses
  %i.du = extractelement <2 x float> %i.dt, i64 0
  %i.dv = fadd float %i.du, %i.dp
  %i.dw = extractelement <2 x float> %i.dt, i64 1
  %i.dx = fadd float %i.dw, %i.dv
  %i.dy = fmul float %i.dx, 1.062500e+00
  %i.dz = fadd float %i.dm, %i.dy
  %i.ea = shufflevector <2 x float> %i.dq, <2 x float> poison, <4 x i32> zeroinitializer
  %i.eb = insertelement <4 x float> poison, float %18, i64 0
  %i.ec = shufflevector <4 x float> %i.eb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ed = shufflevector <2 x float> %i.dq, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ee = insertelement <4 x float> poison, float %i.dz, i64 0
  %i.ef = shufflevector <4 x float> %i.ee, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eg = tail call float @b3GetLengthUnitsPerMeter() #11
  %i.eh = fmul float %i.eg, 1.000000e+05
  %i.ei = insertelement <4 x float> poison, float %i.eh, i64 0
  %i.ej = shufflevector <4 x float> %i.ei, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br i1 %i.co, label %.lr.ph.i, label %b3GetSupportWide.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.b ] ; 5 uses
  %.041.i = phi <4 x float> [ %i.fb, %.lr.ph.i ], [ %i.ej, %bb.b ]
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.i
  %.val39.i = load <4 x float>, ptr %i.ek, align 1, !tbaa !21
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv.i
  %.val38.i = load <4 x float>, ptr %i.el, align 1, !tbaa !21
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv.i
  %.val.i = load <4 x float>, ptr %i.em, align 1, !tbaa !21
  %i.en = fmul <4 x float> %i.ed, %.val.i
  %i.eo = fmul <4 x float> %i.ec, %.val38.i
  %i.ep = fmul <4 x float> %i.ea, %.val39.i
  %i.eq = fadd <4 x float> %i.ep, %i.eo
  %i.er = fadd <4 x float> %i.en, %i.eq
  %i.es = fsub <4 x float> %i.ef, %i.er
  %i.et = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.eu = insertelement <4 x i32> poison, i32 %i.et, i64 0
  %i.ev = shufflevector <4 x i32> %i.eu, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ew = or disjoint <4 x i32> %i.ev, <i32 0, i32 1, i32 2, i32 3>
  %i.ex = bitcast <4 x float> %i.es to <4 x i32>
  %i.ey = and <4 x i32> %i.ex, splat (i32 -128)
  %i.ez = or <4 x i32> %i.ew, %i.ey
  %i.fa = bitcast <4 x i32> %i.ez to <4 x float>
  %i.fb = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.041.i, <4 x float> %i.fa) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.fc = icmp samesign ult i64 %indvars.iv.next.i, %i.cp
  br i1 %i.fc, label %.lr.ph.i, label %b3GetSupportWide.exit, !llvm.loop !82

b3GetSupportWide.exit:                            ; preds = %.lr.ph.i, %bb.b
  %.0.lcssa.i = phi <4 x float> [ %i.ej, %bb.b ], [ %i.fb, %.lr.ph.i ] ; 2 uses
  %i.fd = shufflevector <4 x float> %.0.lcssa.i, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.fe = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.0.lcssa.i, <4 x float> %i.fd) ; 2 uses
  %i.ff = shufflevector <4 x float> %i.fe, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.fg = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.fe, <4 x float> %i.ff)
  %i.fh = bitcast <4 x float> %i.fg to <4 x i32>
  %i.fi = extractelement <4 x i32> %i.fh, i64 0
  %i.fj = and i32 %i.fi, 127                      ; 3 uses
  %i.fk = zext nneg i32 %i.fj to i64              ; 3 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.fk
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !9
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.fk
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !9
  %i.fp = fmul float %i.fo, %18
  %23 = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.fk
  %24 = load float, ptr %23, align 4, !tbaa !9
  %25 = insertelement <2 x float> poison, float %i.fm, i64 0
  %26 = insertelement <2 x float> %25, float %24, i64 1
  %27 = fmul <2 x float> %17, %26                 ; 2 uses
  %i.fq = extractelement <2 x float> %27, i64 0
  %28 = fsub float %i.fp, %i.fq
  %29 = extractelement <2 x float> %27, i64 1
  %i.fr = fsub float %28, %29
  %i.fs = fsub float %21, %i.fr                   ; 4 uses
  %i.ft = fcmp ogt float %i.fs, %i.cw
  br i1 %i.ft, label %bb.c, label %bb.d

bb.c:                                             ; preds = %b3GetSupportWide.exit
  %i.fu = fcmp ogt float %i.fs, %i.bf
  %or.cond = and i1 %4, %i.fu
  %i.fv = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  br i1 %or.cond, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.c
  store float %i.fs, ptr %i.cq, align 4
  store float %.sroa.6404.0.copyload, ptr %.sroa.6404.0..sroa_idx405, align 4
  store i32 %i.fv, ptr %i.cr, align 4
  store i32 %i.fj, ptr %i.cs, align 4
  store <2 x float> %.sroa.0401.0.copyload, ptr %0, align 4
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 2, ptr %i.fw, align 4, !tbaa !65
  br label %bb.t

bb.d:                                             ; preds = %b3GetSupportWide.exit, %bb.c
  %i.fx = phi i32 [ %i.cv, %b3GetSupportWide.exit ], [ %i.fj, %bb.c ] ; 2 uses
  %.0475681689 = phi i32 [ %.0475681688, %b3GetSupportWide.exit ], [ %i.fv, %bb.c ] ; 2 uses
  %.sroa.6404.0.copyload686 = phi float [ %.sroa.6404.0.copyload685, %b3GetSupportWide.exit ], [ %.sroa.6404.0.copyload, %bb.c ] ; 2 uses
  %i.fy = phi float [ %i.cw, %b3GetSupportWide.exit ], [ %i.fs, %bb.c ] ; 2 uses
  %.sroa.0401.0.copyload677 = phi <2 x float> [ %.sroa.0401.0.copyload678680, %b3GetSupportWide.exit ], [ %.sroa.0401.0.copyload, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..critedge489_crit_edge, label %bb.b, !llvm.loop !83

..critedge489_crit_edge:                          ; preds = %bb.d
  store float %i.fy, ptr %i.cq, align 4
  store float %.sroa.6404.0.copyload686, ptr %.sroa.6404.0..sroa_idx405, align 4
  store i32 %.0475681689, ptr %i.cr, align 4
  store i32 %i.fx, ptr %i.cs, align 4
  br label %.critedge489

.critedge489:                                     ; preds = %..critedge489_crit_edge, %bb.a
  %.sroa.0401.0.copyload678.lcssa = phi <2 x float> [ %.sroa.0401.0.copyload677, %..critedge489_crit_edge ], [ zeroinitializer, %bb.a ]
  store <2 x float> %.sroa.0401.0.copyload678.lcssa, ptr %0, align 4
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !43 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !42 ; 2 uses
  %i.gd = icmp eq i32 %i.gc, 0
  %i.ge = sext i32 %i.gc to i64
  %i.gf = add nsw i64 %i.ge, %i.bw
  %i.gg = inttoptr i64 %i.gf to ptr
  %.0.i541 = select i1 %i.gd, ptr null, ptr %i.gg
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !29 ; 2 uses
  %i.gj = add nsw i32 %i.gi, 3
  %i.gk = and i32 %i.gj, -4                       ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !90 ; 2 uses
  %i.gn = icmp eq i32 %i.gm, 0
  %i.go = sext i32 %i.gm to i64
  %i.gp = add nsw i64 %i.go, %i.bl
  %i.gq = inttoptr i64 %i.gp to ptr               ; 5 uses
  %.0.i542 = select i1 %i.gn, ptr null, ptr %i.gq
  %i.gr = sext i32 %i.gk to i64                   ; 2 uses
  %i.gs = getelementptr inbounds [4 x i8], ptr %.0.i542, i64 %i.gr ; 5 uses
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.gs, i64 %i.gr ; 4 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0661.0.copyload = load <2 x float>, ptr %i.gu, align 8 ; 3 uses
  %.sroa.4662.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.4662.0.copyload = load float, ptr %.sroa.4662.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5663.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.5663.0.copyload = load <2 x float>, ptr %.sroa.5663.0..sroa_idx, align 4 ; 3 uses
  %.sroa.6664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.6664.0.copyload = load float, ptr %.sroa.6664.0..sroa_idx, align 4 ; 2 uses
  %.sroa.06.4.vec.extract.i.i551 = extractelement <2 x float> %.sroa.5663.0.copyload, i64 1 ; 2 uses
  %.sroa.03.4.vec.extract.i.i552 = extractelement <2 x float> %.sroa.0661.0.copyload, i64 1 ; 2 uses
  %i.gv = fadd float %.sroa.03.4.vec.extract.i.i552, %.sroa.06.4.vec.extract.i.i551
  %foldExtExtBinop1008 = fadd <2 x float> %.sroa.0661.0.copyload, %.sroa.5663.0.copyload
  %i.gw = fadd float %.sroa.4662.0.copyload, %.sroa.6664.0.copyload
  %i.gx = fmul float %i.gv, 5.000000e-01
  %i.gy = insertelement <2 x float> %foldExtExtBinop1008, float %i.gw, i64 1
  %i.gz = fmul <2 x float> %i.gy, splat (float 5.000000e-01)
  %i.ha = fsub float %.sroa.06.4.vec.extract.i.i551, %.sroa.03.4.vec.extract.i.i552
  %foldExtExtBinop1010 = fsub <2 x float> %.sroa.5663.0.copyload, %.sroa.0661.0.copyload
  %i.hb = fsub float %.sroa.6664.0.copyload, %.sroa.4662.0.copyload
  %i.hc = fmul float %i.ha, 5.000000e-01
  %i.hd = insertelement <2 x float> %foldExtExtBinop1010, float %i.hb, i64 1
  %i.he = fmul <2 x float> %i.hd, splat (float 5.000000e-01)
  %.not486693 = icmp sgt i32 %i.ga, 0             ; 2 uses
  br i1 %.not486693, label %.lr.ph695, label %.critedge493

.lr.ph695:                                        ; preds = %.critedge489
  %.sroa.2296.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2296.0.copyload = load float, ptr %.sroa.2296.0..sroa_idx, align 8
  %.sroa.01.4.vec.extract.i586 = extractelement <2 x float> %.sroa.0265.0.copyload.pre.pre, i64 1
  %i.hf = icmp sgt i32 %i.gi, 0
  %i.hg = zext nneg i32 %i.gk to i64
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %wide.trip.count854 = zext nneg i32 %i.ga to i64
  %i.hl = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hm = insertelement <2 x float> %i.hl, float %11, i64 1
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph695, %bb.g
  %indvars.iv851 = phi i64 [ 0, %.lr.ph695 ], [ %indvars.iv.next852, %bb.g ] ; 3 uses
  %.0481694708 = phi i32 [ -1, %.lr.ph695 ], [ %.0481694709, %bb.g ]
  %i.hn = phi i32 [ -1, %.lr.ph695 ], [ %i.lk, %bb.g ]
  %i.ho = phi float [ 0.000000e+00, %.lr.ph695 ], [ %i.ll, %bb.g ]
  %.sroa.04.4.vec.insert.i580700 = phi <2 x float> [ zeroinitializer, %.lr.ph695 ], [ %.sroa.04.4.vec.insert.i580701, %bb.g ]
  %i.hp = phi float [ -inf, %.lr.ph695 ], [ %i.lm, %bb.g ] ; 2 uses
  %i.hq = getelementptr inbounds nuw [16 x i8], ptr %.0.i541, i64 %indvars.iv851 ; 3 uses
  %.sroa.0318.0.copyload = load <2 x float>, ptr %i.hq, align 4, !tbaa !9 ; 4 uses
  %.sroa.4319.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %.sroa.4319.0.copyload = load float, ptr %.sroa.4319.0..sroa_idx, align 4, !tbaa !9 ; 2 uses
  %.sroa.5320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hq, i64 12
  %.sroa.5320.0.copyload = load float, ptr %.sroa.5320.0..sroa_idx, align 4, !tbaa !9
  %i.hr = shufflevector <2 x float> %.sroa.0318.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %foldExtExtBinop1012 = fmul <2 x float> %10, %.sroa.0318.0.copyload
  %i.hs = extractelement <2 x float> %foldExtExtBinop1012, i64 0
  %i.ht = extractelement <2 x float> %.sroa.0318.0.copyload, i64 1
  %i.hu = fmul float %i.at, %i.ht
  %i.hv = fadd float %i.hs, %i.hu
  %i.hw = fmul float %i.av, %.sroa.4319.0.copyload
  %i.hx = fadd float %i.hw, %i.hv                 ; 3 uses
  %i.hy = fmul <2 x float> %9, %i.hr
  %i.hz = fmul <2 x float> %i.ba, %.sroa.0318.0.copyload
  %i.ia = fadd <2 x float> %i.hy, %i.hz
  %i.ib = insertelement <2 x float> poison, float %.sroa.4319.0.copyload, i64 0
  %i.ic = shufflevector <2 x float> %i.ib, <2 x float> poison, <2 x i32> zeroinitializer
  %i.id = fmul <2 x float> %i.hm, %i.ic
  %i.ie = fadd <2 x float> %i.id, %i.ia           ; 7 uses
  %i.if = fneg float %i.hx                        ; 5 uses
  %i.ig = extractelement <2 x float> %i.ie, i64 1
  %i.ih = fmul float %.sroa.01.4.vec.extract.i586, %i.if
  %foldExtExtBinop1014 = fmul <2 x float> %i.ie, %.sroa.0265.0.copyload.pre.pre
  %i.ii = extractelement <2 x float> %foldExtExtBinop1014, i64 0
  %i.ij = fsub float %i.ih, %i.ii
  %i.ik = fmul float %i.ig, %.sroa.2296.0.copyload
  %i.il = fsub float %i.ij, %i.ik
  %i.im = fsub float %i.il, %.sroa.5320.0.copyload
  %i.in = fmul float %i.gx, %i.if
  %i.io = fmul <2 x float> %i.gz, %i.ie           ; 2 uses
  %i.ip = extractelement <2 x float> %i.io, i64 0
  %i.iq = fsub float %i.in, %i.ip
  %i.ir = extractelement <2 x float> %i.io, i64 1
  %i.is = fsub float %i.iq, %i.ir
  %i.it = fcmp ogt float %i.hx, 0.000000e+00
  %i.iu = select i1 %i.it, float %i.hx, float %i.if
  %i.iv = fmul float %i.hc, %i.iu
  %i.iw = fneg <2 x float> %i.ie                  ; 5 uses
  %.sroa.04.4.vec.insert.i580 = insertelement <2 x float> %i.iw, float %i.if, i64 1 ; 3 uses
  %i.ix = fcmp ogt <2 x float> %i.ie, zeroinitializer
  %i.iy = select <2 x i1> %i.ix, <2 x float> %i.ie, <2 x float> %i.iw
  %i.iz = fmul <2 x float> %i.he, %i.iy           ; 2 uses
  %i.ja = extractelement <2 x float> %i.iz, i64 0
  %i.jb = fadd float %i.ja, %i.iv
  %i.jc = extractelement <2 x float> %i.iz, i64 1
  %i.jd = fadd float %i.jc, %i.jb
  %i.je = fmul float %i.jd, 1.062500e+00
  %i.jf = fadd float %i.is, %i.je
  %i.jg = shufflevector <2 x float> %i.iw, <2 x float> poison, <4 x i32> zeroinitializer
  %i.jh = shufflevector <2 x float> %.sroa.04.4.vec.insert.i580, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ji = shufflevector <2 x float> %i.iw, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.jj = insertelement <4 x float> poison, float %i.jf, i64 0
  %i.jk = shufflevector <4 x float> %i.jj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jl = tail call float @b3GetLengthUnitsPerMeter() #11
  %i.jm = fmul float %i.jl, 1.000000e+05
  %i.jn = insertelement <4 x float> poison, float %i.jm, i64 0
  %i.jo = shufflevector <4 x float> %i.jn, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br i1 %i.hf, label %.lr.ph.i605, label %b3GetSupportWide.exit612

.lr.ph.i605:                                      ; preds = %bb.e, %.lr.ph.i605
  %indvars.iv.i606 = phi i64 [ %indvars.iv.next.i611, %.lr.ph.i605 ], [ 0, %bb.e ] ; 5 uses
  %.041.i607 = phi <4 x float> [ %i.kg, %.lr.ph.i605 ], [ %i.jo, %bb.e ]
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv.i606
  %.val39.i608 = load <4 x float>, ptr %i.jp, align 1, !tbaa !21
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %indvars.iv.i606
  %.val38.i609 = load <4 x float>, ptr %i.jq, align 1, !tbaa !21
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %indvars.iv.i606
  %.val.i610 = load <4 x float>, ptr %i.jr, align 1, !tbaa !21
  %i.js = fmul <4 x float> %i.ji, %.val.i610
  %i.jt = fmul <4 x float> %i.jh, %.val38.i609
  %i.ju = fmul <4 x float> %i.jg, %.val39.i608
  %i.jv = fadd <4 x float> %i.ju, %i.jt
  %i.jw = fadd <4 x float> %i.js, %i.jv
  %i.jx = fsub <4 x float> %i.jk, %i.jw
  %i.jy = trunc nuw nsw i64 %indvars.iv.i606 to i32
  %i.jz = insertelement <4 x i32> poison, i32 %i.jy, i64 0
  %i.ka = shufflevector <4 x i32> %i.jz, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.kb = or disjoint <4 x i32> %i.ka, <i32 0, i32 1, i32 2, i32 3>
  %i.kc = bitcast <4 x float> %i.jx to <4 x i32>
  %i.kd = and <4 x i32> %i.kc, splat (i32 -128)
  %i.ke = or <4 x i32> %i.kb, %i.kd
  %i.kf = bitcast <4 x i32> %i.ke to <4 x float>
  %i.kg = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.041.i607, <4 x float> %i.kf) ; 2 uses
  %indvars.iv.next.i611 = add nuw nsw i64 %indvars.iv.i606, 4 ; 2 uses
  %i.kh = icmp samesign ult i64 %indvars.iv.next.i611, %i.hg
  br i1 %i.kh, label %.lr.ph.i605, label %b3GetSupportWide.exit612, !llvm.loop !82

b3GetSupportWide.exit612:                         ; preds = %.lr.ph.i605, %bb.e
end_hunk_0

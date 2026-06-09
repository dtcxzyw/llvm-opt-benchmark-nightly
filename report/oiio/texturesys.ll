inline.NumInlined: 5129
inline.NumDeleted: 1476
begin_hunk_0_@_ZN11OpenImageIO4v3_117TextureSystemImpl14sample_bicubicEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_:bb.a
  %27 = alloca %"class.OpenImageIO::v3_1::simd::vint4", align 16 ; 10 uses
  %28 = alloca %"class.OpenImageIO::v3_1::simd::vint4", align 16 ; 10 uses
  %29 = alloca %"class.OpenImageIO::v3_1::simd::vbool4", align 16 ; 13 uses
  %30 = alloca %"class.OpenImageIO::v3_1::simd::vbool4", align 16 ; 12 uses
  %31 = alloca [4 x [4 x %"class.OpenImageIO::v3_1::simd::vfloat4"]], align 16 ; 66 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %33 = alloca %"class.OpenImageIO::v3_1::simd::vint4", align 16 ; 8 uses
  %34 = alloca %"class.OpenImageIO::v3_1::simd::vint4", align 16 ; 8 uses
  %35 = alloca %"class.OpenImageIO::v3_1::simd::vint4", align 16 ; 6 uses
  %36 = alloca %"class.OpenImageIO::v3_1::simd::vint4", align 16 ; 6 uses
  %37 = alloca %"class.OpenImageIO::v3_1::simd::vint4", align 16 ; 6 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %.sroa.01449 = alloca double, align 16          ; 5 uses
  %.sroa.51450 = alloca double, align 8           ; 5 uses
  %.sroa.01412 = alloca double, align 16          ; 5 uses
  %.sroa.5 = alloca double, align 8               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !197  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.e = sext i32 %i.c to i64
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !198
  %i.g = getelementptr inbounds nuw [128 x i8], ptr %i.f, i64 %i.e ; 4 uses
  %i.h = sext i32 %4 to i64
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !300
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.h ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !301  ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = select i1 %.not.i, ptr %i.m, ptr %i.k    ; 11 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.p = load i8, ptr %i.o, align 8, !tbaa !485   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !245
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @_ZN11OpenImageIO4v3_13pvtL19wrap_functions_simdE, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !51
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 17
  %i.w = load i8, ptr %i.v, align 1, !tbaa !248
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr @_ZN11OpenImageIO4v3_13pvtL19wrap_functions_simdE, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #3
  %i.aa = load i32, ptr %i.n, align 4, !tbaa !329
  %i.ab = insertelement <4 x i32> poison, i32 %i.aa, i64 0
  %i.ac = shufflevector <4 x i32> %i.ab, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  store <4 x i32> %i.ac, ptr %17, align 16, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 4 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !326
  %i.af = insertelement <4 x i32> poison, i32 %i.ae, i64 0
  %i.ag = shufflevector <4 x i32> %i.af, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  store <4 x i32> %i.ag, ptr %18, align 16, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #3
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 12 ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !330
  %i.aj = insertelement <4 x i32> poison, i32 %i.ai, i64 0
  %i.ak = shufflevector <4 x i32> %i.aj, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  store <4 x i32> %i.ak, ptr %19, align 16, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #3
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 4 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !327
  %i.an = insertelement <4 x i32> poison, i32 %i.am, i64 0
  %i.ao = shufflevector <4 x i32> %i.an, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  store <4 x i32> %i.ao, ptr %20, align 16, !tbaa !34
  %i.ap = add <4 x i32> %i.ak, %i.ac
  %i.aq = add <4 x i32> %i.ao, %i.ag
  %i.ar = icmp sle i32 %8, %9
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.at = load float, ptr %i.as, align 8
  %i.au = fcmp oeq float %i.at, 0.000000e+00
  %.not2181 = select i1 %i.ar, i1 true, i1 %i.au  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 8 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !331 ; 4 uses
  %i.ax = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.aw)
  %i.ay = icmp samesign ult i32 %i.ax, 2
  %i.az = icmp sgt i32 %i.aw, -1
  %i.ba = and i1 %i.az, %i.ay
  %i.bb = getelementptr inbounds nuw i8, ptr %i.n, i64 52
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !328 ; 4 uses
  br i1 %i.ba, label %bb.b, label %._crit_edge2373

bb.b:                                             ; preds = %bb.a
  %i.bd = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.bc)
  %i.be = icmp samesign ult i32 %i.bd, 2
  %i.bf = icmp sgt i32 %i.bc, -1
  %i.bg = and i1 %i.bf, %i.be
  br label %._crit_edge2373

._crit_edge2373:                                  ; preds = %bb.a, %bb.b
  %i.bh = phi i1 [ %i.bg, %bb.b ], [ false, %bb.a ]
  %i.bi = add nsw i32 %i.aw, -1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.n, i64 52 ; 2 uses
  %i.bk = add nsw i32 %i.bc, -1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !497 ; 2 uses
  %i.bn = zext i32 %i.bm to i64
  %i.bo = load i32, ptr %7, align 8, !tbaa !187   ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !270
  %i.br = icmp eq i32 %i.bq, 1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.j, i64 38 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 2
  %i.bu = and i8 %i.bt, 2
  %i.bv = icmp ne i8 %i.bu, 0
  %i.bw = select i1 %i.br, i1 %i.bv, i1 false
  %i.bx = getelementptr inbounds nuw i8, ptr %i.n, i64 60
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !311 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !113
  %i.cb = icmp sgt i32 %i.by, %i.ca               ; 2 uses
  %i.cc = add nsw i32 %i.bo, %9
  %.0318 = select i1 %i.cb, i32 %i.cc, i32 %i.by  ; 3 uses
  %.0317 = select i1 %i.cb, i32 %i.bo, i32 0      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #3
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 68
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !285
  store i32 0, ptr %21, align 8, !tbaa !313
  %i.cf = getelementptr inbounds nuw i8, ptr %21, i64 4 ; 3 uses
  store i32 0, ptr %i.cf, align 4, !tbaa !315
  %i.cg = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  store i32 0, ptr %i.cg, align 8, !tbaa !316
  %i.ch = getelementptr inbounds nuw i8, ptr %21, i64 12 ; 3 uses
  store i32 %i.c, ptr %i.ch, align 4, !tbaa !317
  %i.ci = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 3 uses
  store i32 %4, ptr %i.ci, align 8, !tbaa !318
  %i.cj = getelementptr inbounds nuw i8, ptr %21, i64 20 ; 3 uses
  %i.ck = trunc i32 %.0317 to i16
  store i16 %i.ck, ptr %i.cj, align 4, !tbaa !319
  %i.cl = getelementptr inbounds nuw i8, ptr %21, i64 22 ; 4 uses
  %i.cm = trunc i32 %.0318 to i16
  store i16 %i.cm, ptr %i.cl, align 2, !tbaa !320
  %i.cn = getelementptr inbounds nuw i8, ptr %21, i64 24 ; 3 uses
  store i32 %i.ce, ptr %i.cn, align 8, !tbaa !321
  %i.co = getelementptr inbounds nuw i8, ptr %21, i64 28
  store i32 0, ptr %i.co, align 4, !tbaa !322
  %i.cp = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 3 uses
  store ptr %5, ptr %i.cp, align 8, !tbaa !323
  %i.cq = icmp slt i32 %.0318, %.0317
  br i1 %i.cq, label %bb.c, label %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit

bb.c:                                             ; preds = %._crit_edge2373
  %i.cr = getelementptr inbounds nuw i8, ptr %i.m, i64 60
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !227 ; 2 uses
  %i.ct = trunc i32 %i.cs to i16
  store i16 %i.ct, ptr %i.cl, align 2, !tbaa !320
  br label %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit

_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit: ; preds = %._crit_edge2373, %bb.c
  %i.cu = phi i32 [ %.0318, %._crit_edge2373 ], [ %i.cs, %bb.c ]
  %sext2403 = shl i32 %i.cu, 16
  %i.cv = ashr exact i32 %sext2403, 16
  %sext = shl i32 %.0317, 16
  %i.cw = ashr exact i32 %sext, 16                ; 2 uses
  %i.cx = sub nsw i32 %i.cv, %i.cw
  %i.cy = mul i32 %i.cx, %i.bm                    ; 7 uses
  %i.cz = sub nsw i32 %i.bo, %i.cw
  %i.da = sext i32 %i.cz to i64
  %i.db = mul nsw i64 %i.da, %i.bn                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #3
  store <4 x float> zeroinitializer, ptr %22, align 16, !tbaa !34
  %.not370 = icmp eq ptr %12, null                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #3
  %i.dc = icmp slt i32 %1, 1
  br i1 %i.dc, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 165 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  %i.dg = add nsw i32 %i.aw, -4
  %i.dh = add nsw i32 %i.bc, -4
  %.sroa.487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %33, i64 8
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.di = insertelement <4 x i32> poison, i32 %i.cy, i64 0
  %i.dj = shufflevector <4 x i32> %i.di, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.dk = bitcast <4 x i32> %i.dj to <2 x i64>
  %i.dl = and <2 x i64> %i.dk, splat (i64 4294967295) ; 2 uses
  %i.dm = trunc i64 %i.db to i32
  %i.dn = insertelement <4 x i32> poison, i32 %i.dm, i64 0
  %i.do = shufflevector <4 x i32> %i.dn, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 10 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.dv = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.dw = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 7 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 4 uses
  %i.ed = icmp sgt i32 %9, 0
  %wide.trip.count.i = zext i32 %9 to i64         ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %31, i64 64 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %31, i64 128 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %31, i64 192 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %31, i64 32 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %31, i64 48 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %29, i64 4
  %i.el = getelementptr inbounds nuw i8, ptr %29, i64 12
  %i.em = sext i32 %i.cy to i64                   ; 33 uses
  %wide.trip.count = zext nneg i32 %1 to i64
  %indvars.iv.next2328.1 = shl nsw i64 %i.em, 1
  %indvars.iv.next2328.2 = mul nsw i64 %i.em, 3
  %i.en = getelementptr inbounds nuw i8, ptr %31, i64 80
  %i.eo = getelementptr inbounds nuw i8, ptr %31, i64 96
  %i.ep = getelementptr inbounds nuw i8, ptr %31, i64 112
  %i.eq = getelementptr inbounds nuw i8, ptr %31, i64 144
  %i.er = getelementptr inbounds nuw i8, ptr %31, i64 160
  %i.es = getelementptr inbounds nuw i8, ptr %31, i64 176
  %i.et = getelementptr inbounds nuw i8, ptr %31, i64 208
  %i.eu = getelementptr inbounds nuw i8, ptr %31, i64 224
  %i.ev = getelementptr inbounds nuw i8, ptr %31, i64 240
  %i.ew = getelementptr inbounds nuw i8, ptr %31, i64 80
  %i.ex = getelementptr inbounds nuw i8, ptr %31, i64 96
  %i.ey = getelementptr inbounds nuw i8, ptr %31, i64 112
  %i.ez = getelementptr inbounds nuw i8, ptr %31, i64 144
  %i.fa = getelementptr inbounds nuw i8, ptr %31, i64 160
  %i.fb = getelementptr inbounds nuw i8, ptr %31, i64 176
  %i.fc = getelementptr inbounds nuw i8, ptr %31, i64 208
  %i.fd = getelementptr inbounds nuw i8, ptr %31, i64 224
  %i.fe = getelementptr inbounds nuw i8, ptr %31, i64 240
  %i.ff = getelementptr inbounds nuw i8, ptr %30, i64 4
  %i.fg = getelementptr inbounds nuw i8, ptr %30, i64 12
  %i.fh = getelementptr inbounds nuw i8, ptr %31, i64 16
  %indvars.iv.next2280.1 = shl nsw i64 %i.em, 1   ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %31, i64 32
  %i.fj = getelementptr inbounds nuw i8, ptr %31, i64 48
  %i.fk = getelementptr inbounds nuw i8, ptr %31, i64 64
  %i.fl = getelementptr inbounds nuw i8, ptr %31, i64 80
  %i.fm = getelementptr inbounds nuw i8, ptr %31, i64 96
  %i.fn = getelementptr inbounds nuw i8, ptr %31, i64 112
  %i.fo = getelementptr inbounds nuw i8, ptr %31, i64 128
  %i.fp = getelementptr inbounds nuw i8, ptr %31, i64 144
  %i.fq = getelementptr inbounds nuw i8, ptr %31, i64 160
  %i.fr = getelementptr inbounds nuw i8, ptr %31, i64 176
  %i.fs = getelementptr inbounds nuw i8, ptr %31, i64 192
  %i.ft = getelementptr inbounds nuw i8, ptr %31, i64 208
  %i.fu = getelementptr inbounds nuw i8, ptr %31, i64 224
  %i.fv = getelementptr inbounds nuw i8, ptr %31, i64 240
  %i.fw = getelementptr inbounds nuw i8, ptr %31, i64 16
  %indvars.iv.next2296.1 = shl nsw i64 %i.em, 1   ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %31, i64 32
  %i.fy = getelementptr inbounds nuw i8, ptr %31, i64 48
  %i.fz = getelementptr inbounds nuw i8, ptr %31, i64 64
  %i.ga = getelementptr inbounds nuw i8, ptr %31, i64 80
  %i.gb = getelementptr inbounds nuw i8, ptr %31, i64 96
  %i.gc = getelementptr inbounds nuw i8, ptr %31, i64 112
  %i.gd = getelementptr inbounds nuw i8, ptr %31, i64 128
  %i.ge = getelementptr inbounds nuw i8, ptr %31, i64 144
  %i.gf = getelementptr inbounds nuw i8, ptr %31, i64 160
  %i.gg = getelementptr inbounds nuw i8, ptr %31, i64 176
  %i.gh = getelementptr inbounds nuw i8, ptr %31, i64 192
  %i.gi = getelementptr inbounds nuw i8, ptr %31, i64 208
  %i.gj = getelementptr inbounds nuw i8, ptr %31, i64 224
  %i.gk = getelementptr inbounds nuw i8, ptr %31, i64 240
  %min.iters.check = icmp ult i32 %9, 8
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %.sroa.01449.4..sroa_idx2450 = getelementptr inbounds nuw i8, ptr %.sroa.01449, i64 4
  %.sroa.51450.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.51450, i64 4
  %.sroa.01412.4..sroa_idx2449 = getelementptr inbounds nuw i8, ptr %.sroa.01412, i64 4
  %.sroa.5.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5, i64 4
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.bz
  %indvars.iv2349 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next2350, %bb.bz ] ; 9 uses
  %.03122255 = phi float [ 0.000000e+00, %.lr.ph ], [ %.33152419, %bb.bz ] ; 3 uses
  %.sroa.01536.12251 = phi <4 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.01536.42418, %bb.bz ] ; 3 uses
  %.sroa.01538.12250 = phi <4 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.01538.42417, %bb.bz ] ; 3 uses
  %i.gl = and i64 %indvars.iv2349, 3
  %i.gm = icmp eq i64 %i.gl, 0
  br i1 %i.gm, label %.split359, label %.split

.split:                                           ; preds = %bb.d
  %i.gn = and i64 %indvars.iv2349, 3              ; 4 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %i.gn
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %24, i64 %i.gn
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %25, i64 %i.gn
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %26, i64 %i.gn
  %.pre2374 = load i32, ptr %i.go, align 4, !tbaa !3
  %.pre2375 = load i32, ptr %i.gp, align 4, !tbaa !3
  %.pre2376 = load float, ptr %i.gq, align 4, !tbaa !26
  %.pre2377 = load float, ptr %i.gr, align 4, !tbaa !26
  br label %bb.g

.split359:                                        ; preds = %bb.d
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv2349
  %i.gt = load <4 x float>, ptr %i.gs, align 1, !tbaa !34 ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv2349
  %i.gv = load <4 x float>, ptr %i.gu, align 1, !tbaa !34
  %i.gw = load i8, ptr %i.dd, align 1, !tbaa !486, !range !62, !noundef !63
  %i.gx = trunc nuw i8 %i.gw to i1
  %i.gy = load i32, ptr %i.ah, align 4, !tbaa !330 ; 2 uses
  %i.gz = load i32, ptr %i.al, align 4, !tbaa !327 ; 2 uses
  br i1 %i.gx, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.split359
  %i.ha = sitofp i32 %i.gy to float
  %i.hb = insertelement <4 x float> poison, float %i.ha, i64 0
  %i.hc = shufflevector <4 x float> %i.hb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hd = fmul <4 x float> %i.gt, %i.hc
  %i.he = load i32, ptr %i.n, align 4, !tbaa !329
  %i.hf = sitofp i32 %i.he to float
  %i.hg = fadd float %i.hf, -5.000000e-01
  %i.hh = insertelement <4 x float> poison, float %i.hg, i64 0
  %i.hi = shufflevector <4 x float> %i.hh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hj = fadd <4 x float> %i.hd, %i.hi
  %bc.i = bitcast <4 x float> %i.hj to <2 x double> ; 2 uses
  %i.hk = extractelement <2 x double> %bc.i, i64 0
  %i.hl = extractelement <2 x double> %bc.i, i64 1
  %i.hm = bitcast double %i.hk to <2 x i32>
  %i.hn = bitcast double %i.hl to <2 x i32>
  %.sroa.096.8.vecblend104.i = shufflevector <2 x i32> %i.hm, <2 x i32> %i.hn, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ho = sitofp i32 %i.gz to float
  %i.hp = insertelement <4 x float> poison, float %i.ho, i64 0
  %i.hq = shufflevector <4 x float> %i.hp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hr = load i32, ptr %i.ad, align 4, !tbaa !326
  %i.hs = sitofp i32 %i.hr to float
  %i.ht = fadd float %i.hs, -5.000000e-01
  br label %_ZN11OpenImageIO4v3_116st_to_texel_simdERKNS0_4simd7vfloat4ES4_RNS0_14ImageCacheFileERKNS5_9ImageDimsERNS1_5vint4ESB_RS2_SC_.exit

bb.f:                                             ; preds = %.split359
  %i.hu = add nsw i32 %i.gy, -1
  %i.hv = sitofp i32 %i.hu to float
  %i.hw = insertelement <4 x float> poison, float %i.hv, i64 0
  %i.hx = shufflevector <4 x float> %i.hw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hy = fmul <4 x float> %i.gt, %i.hx
  %i.hz = load i32, ptr %i.n, align 4, !tbaa !329
  %i.ia = sitofp i32 %i.hz to float
  %i.ib = insertelement <4 x float> poison, float %i.ia, i64 0
  %i.ic = shufflevector <4 x float> %i.ib, <4 x float> poison, <4 x i32> zeroinitializer
  %i.id = fadd <4 x float> %i.hy, %i.ic
  %bc132.i = bitcast <4 x float> %i.id to <2 x double> ; 2 uses
  %i.ie = extractelement <2 x double> %bc132.i, i64 0
  %i.if = extractelement <2 x double> %bc132.i, i64 1
  %i.ig = bitcast double %i.ie to <2 x i32>
  %i.ih = bitcast double %i.if to <2 x i32>
  %.sroa.096.8.vecblend.i = shufflevector <2 x i32> %i.ig, <2 x i32> %i.ih, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ii = add nsw i32 %i.gz, -1
  %i.ij = sitofp i32 %i.ii to float
  %i.ik = insertelement <4 x float> poison, float %i.ij, i64 0
  %i.il = shufflevector <4 x float> %i.ik, <4 x float> poison, <4 x i32> zeroinitializer
  %i.im = load i32, ptr %i.ad, align 4, !tbaa !326
  %i.in = sitofp i32 %i.im to float
  br label %_ZN11OpenImageIO4v3_116st_to_texel_simdERKNS0_4simd7vfloat4ES4_RNS0_14ImageCacheFileERKNS5_9ImageDimsERNS1_5vint4ESB_RS2_SC_.exit

_ZN11OpenImageIO4v3_116st_to_texel_simdERKNS0_4simd7vfloat4ES4_RNS0_14ImageCacheFileERKNS5_9ImageDimsERNS1_5vint4ESB_RS2_SC_.exit: ; preds = %bb.e, %bb.f
  %.sink149.i = phi float [ %i.in, %bb.f ], [ %i.ht, %bb.e ]
  %.pn2157 = phi <4 x float> [ %i.il, %bb.f ], [ %i.hq, %bb.e ]
  %.sroa.096.0.i = phi <4 x i32> [ %.sroa.096.8.vecblend.i, %bb.f ], [ %.sroa.096.8.vecblend104.i, %bb.e ]
  %.sink147.i = fmul <4 x float> %i.gv, %.pn2157
  %i.io = insertelement <4 x float> poison, float %.sink149.i, i64 0
  %i.ip = shufflevector <4 x float> %i.io, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iq = fadd <4 x float> %.sink147.i, %i.ip
  %bc134.i = bitcast <4 x float> %i.iq to <2 x double> ; 2 uses
  %i.ir = extractelement <2 x double> %bc134.i, i64 0
  %i.is = extractelement <2 x double> %bc134.i, i64 1
  %i.it = bitcast double %i.ir to <2 x i32>
  %i.iu = bitcast double %i.is to <2 x i32>
  %.sroa.086.8.vecblend.i = shufflevector <2 x i32> %i.it, <2 x i32> %i.iu, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %bc136.i = bitcast <4 x i32> %.sroa.096.0.i to <4 x float> ; 5 uses
  %i.iv = extractelement <4 x float> %bc136.i, i64 0
  %i.iw = call float @llvm.floor.f32(float %i.iv)
  %i.ix = extractelement <4 x float> %bc136.i, i64 1
  %i.iy = call float @llvm.floor.f32(float %i.ix)
  %i.iz = extractelement <4 x float> %bc136.i, i64 2
  %i.ja = call float @llvm.floor.f32(float %i.iz)
  %i.jb = extractelement <4 x float> %bc136.i, i64 3
  %i.jc = call float @llvm.floor.f32(float %i.jb)
  %i.jd = insertelement <2 x float> poison, float %i.iw, i64 0
  %i.je = insertelement <2 x float> %i.jd, float %i.ja, i64 1
  %i.jf = bitcast <2 x float> %i.je to <2 x i32>
  %i.jg = insertelement <2 x float> poison, float %i.iy, i64 0
  %i.jh = insertelement <2 x float> %i.jg, float %i.jc, i64 1
  %i.ji = bitcast <2 x float> %i.jh to <2 x i32>
  %i.jj = zext <2 x i32> %i.ji to <2 x i64>
  %i.jk = shl nuw <2 x i64> %i.jj, splat (i64 32)
  %i.jl = zext <2 x i32> %i.jf to <2 x i64>
  %i.jm = or disjoint <2 x i64> %i.jk, %i.jl
  %i.jn = bitcast <2 x i64> %i.jm to <4 x float>  ; 2 uses
  %i.jo = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.jn) ; 2 uses
  store <4 x i32> %i.jo, ptr %23, align 16, !tbaa !34
  %i.jp = fsub <4 x float> %bc136.i, %i.jn        ; 2 uses
  store <4 x float> %i.jp, ptr %25, align 16
  %bc140.i = bitcast <4 x i32> %.sroa.086.8.vecblend.i to <4 x float> ; 5 uses
  %i.jq = extractelement <4 x float> %bc140.i, i64 0
  %i.jr = call float @llvm.floor.f32(float %i.jq)
  %i.js = extractelement <4 x float> %bc140.i, i64 1
  %i.jt = call float @llvm.floor.f32(float %i.js)
  %i.ju = extractelement <4 x float> %bc140.i, i64 2
  %i.jv = call float @llvm.floor.f32(float %i.ju)
  %i.jw = extractelement <4 x float> %bc140.i, i64 3
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_117TextureSystemImpl14sample_bicubicEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_:bb.a
  %or.cond380 = or i1 %i.alj, %i.all
  br i1 %or.cond380, label %bb.bn, label %bb.br

bb.bn:                                            ; preds = %bb.bm
  br i1 %i.alj, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.alm = fsub float 1.000000e+00, %i.ali
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  %i.aln = call float @llvm.floor.f32(float %i.ali)
  %i.alo = fsub float %i.ali, %i.aln
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.sink36.i = phi i32 [ 1, %bb.bp ], [ 0, %bb.bo ]
  %.031.i = phi float [ %i.alo, %bb.bp ], [ %i.alm, %bb.bo ] ; 2 uses
  %i.alp = load i32, ptr %i.b, align 4, !tbaa !197
  %i.alq = call noundef ptr @_ZN11OpenImageIO4v3_117TextureSystemImpl10pole_colorERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13intrusive_ptrINS0_14ImageCacheTileEEEiii(ptr nonnull readnone align 8 poison, ptr noundef nonnull readonly align 8 dereferenceable(400) %5, ptr readonly poison, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.dr, i32 noundef %i.alp, i32 noundef %4, i32 noundef %.sink36.i)
  %.inv.i = fcmp oge float %.031.i, 0.000000e+00
  %.0.i.i = select i1 %.inv.i, float %.031.i, float 0.000000e+00 ; 2 uses
  %i.alr = fcmp ogt float %.0.i.i, 1.000000e+00
  %.1.i.i = select i1 %i.alr, float 1.000000e+00, float %.0.i.i ; 2 uses
  %i.als = fmul float %.1.i.i, %.1.i.i            ; 2 uses
  %i.alt = load i32, ptr %7, align 8, !tbaa !187
  %i.alu = sext i32 %i.alt to i64
  %i.alv = getelementptr inbounds [4 x i8], ptr %i.alq, i64 %i.alu ; 2 uses
  br i1 %i.ed, label %.lr.ph.preheader.i, label %_ZN11OpenImageIO4v3_117TextureSystemImpl12fade_to_poleEfPfRfRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2Eii.exit

.lr.ph.preheader.i:                               ; preds = %bb.bq
  %i.alw = fmul float %i.ku, %i.als               ; 2 uses
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.alw, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.alx = getelementptr inbounds nuw [4 x i8], ptr %i.alv, i64 %index ; 2 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alx, i64 16
  %wide.load = load <4 x float>, ptr %i.alx, align 4, !tbaa !26
  %wide.load2433 = load <4 x float>, ptr %i.aly, align 4, !tbaa !26
  %i.alz = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %index ; 3 uses
  %i.ama = getelementptr inbounds nuw i8, ptr %i.alz, i64 16 ; 2 uses
  %wide.load2434 = load <4 x float>, ptr %i.alz, align 16, !tbaa !26
  %wide.load2435 = load <4 x float>, ptr %i.ama, align 16, !tbaa !26
  %i.amb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load, <4 x float> %wide.load2434)
  %i.amc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load2433, <4 x float> %wide.load2435)
  store <4 x float> %i.amb, ptr %i.alz, align 16, !tbaa !26
  store <4 x float> %i.amc, ptr %i.ama, align 16, !tbaa !26
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.amd = icmp eq i64 %index.next, %n.vec
  br i1 %i.amd, label %middle.block, label %vector.body, !llvm.loop !538

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN11OpenImageIO4v3_117TextureSystemImpl12fade_to_poleEfPfRfRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2Eii.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.ame = getelementptr inbounds nuw [4 x i8], ptr %i.alv, i64 %indvars.iv.i
  %i.amf = load float, ptr %i.ame, align 4, !tbaa !26
  %i.amg = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %indvars.iv.i ; 2 uses
  %i.amh = load float, ptr %i.amg, align 4, !tbaa !26
  %i.ami = call float @llvm.fmuladd.f32(float %i.alw, float %i.amf, float %i.amh)
  store float %i.ami, ptr %i.amg, align 4, !tbaa !26
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN11OpenImageIO4v3_117TextureSystemImpl12fade_to_poleEfPfRfRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2Eii.exit, label %.lr.ph.i, !llvm.loop !539

_ZN11OpenImageIO4v3_117TextureSystemImpl12fade_to_poleEfPfRfRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2Eii.exit: ; preds = %.lr.ph.i, %middle.block, %bb.bq
  %i.amj = fsub float 1.000000e+00, %i.als
  %i.amk = fmul float %i.ku, %i.amj
  br label %bb.br

bb.br:                                            ; preds = %_ZN11OpenImageIO4v3_117TextureSystemImpl12fade_to_poleEfPfRfRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2Eii.exit, %bb.bm, %.loopexit2190
  %.0 = phi float [ %i.amk, %_ZN11OpenImageIO4v3_117TextureSystemImpl12fade_to_poleEfPfRfRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2Eii.exit ], [ %i.ku, %bb.bm ], [ %i.ku, %.loopexit2190 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01449)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.51450)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01412)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  br i1 %.not370, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.aml = fsub float 1.000000e+00, %i.kq         ; 3 uses
  %i.amm = insertelement <4 x float> poison, float %i.aml, i64 0 ; 2 uses
  %i.amn = insertelement <4 x float> %i.amm, float %i.kq, i64 1
  %i.amo = insertelement <4 x float> %i.amn, float %i.aml, i64 2
  %i.amp = insertelement <4 x float> %i.amo, float %i.kq, i64 3 ; 4 uses
  %i.amq = insertelement <2 x float> poison, float %i.kq, i64 0
  %i.amr = insertelement <2 x float> %i.amq, float %i.aml, i64 1
  %i.ams = fsub <2 x float> splat (float 2.000000e+00), %i.amr
  %i.amt = shufflevector <2 x float> %i.ams, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.amu = shufflevector <4 x float> %i.amm, <4 x float> %i.amt, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.amv = insertelement <4 x float> %i.amu, float %i.kq, i64 3
  %i.amw = fmul <4 x float> %i.amp, <float f0x3E2AAAAB, float -5.000000e-01, float -5.000000e-01, float f0x3E2AAAAB>
  %i.amx = fmul <4 x float> %i.amp, %i.amw
  %i.amy = fmul <4 x float> %i.amv, %i.amx
  %i.amz = fadd <4 x float> %i.amy, <float 0.000000e+00, float f0x3F2AAAAB, float f0x3F2AAAAB, float 0.000000e+00>
  %bc.i1162 = bitcast <4 x float> %i.amz to <2 x double> ; 2 uses
  %i.ana = extractelement <2 x double> %bc.i1162, i64 0
  %i.anb = extractelement <2 x double> %bc.i1162, i64 1
  %i.anc = bitcast double %i.ana to <2 x i32>
  %i.and = bitcast double %i.anb to <2 x i32>
  %.sroa.01452.8.vecblend1473 = shufflevector <2 x i32> %i.anc, <2 x i32> %i.and, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ane = fmul <4 x float> %i.amp, <float -5.000000e-01, float 5.000000e-01, float -5.000000e-01, float 5.000000e-01>
  %i.anf = fmul <4 x float> %i.amp, <float 1.000000e+00, float 3.000000e+00, float 3.000000e+00, float 1.000000e+00>
  %i.ang = fadd <4 x float> %i.anf, <float -0.000000e+00, float -4.000000e+00, float -4.000000e+00, float -0.000000e+00>
  %i.anh = fmul <4 x float> %i.ane, %i.ang
  %bc92.i = bitcast <4 x float> %i.anh to <2 x double> ; 2 uses
  %i.ani = extractelement <2 x double> %bc92.i, i64 0
  %i.anj = extractelement <2 x double> %bc92.i, i64 1
  store double %i.ani, ptr %.sroa.01449, align 16
  store double %i.anj, ptr %.sroa.51450, align 8, !tbaa !34
  %i.ank = fsub float 1.000000e+00, %i.kp         ; 3 uses
  %i.anl = insertelement <4 x float> poison, float %i.ank, i64 0 ; 2 uses
  %i.anm = insertelement <4 x float> %i.anl, float %i.kp, i64 1
  %i.ann = insertelement <4 x float> %i.anm, float %i.ank, i64 2
  %i.ano = insertelement <4 x float> %i.ann, float %i.kp, i64 3 ; 4 uses
  %i.anp = insertelement <2 x float> poison, float %i.kp, i64 0
  %i.anq = insertelement <2 x float> %i.anp, float %i.ank, i64 1
  %i.anr = fsub <2 x float> splat (float 2.000000e+00), %i.anq
  %i.ans = shufflevector <2 x float> %i.anr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ant = shufflevector <4 x float> %i.anl, <4 x float> %i.ans, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.anu = insertelement <4 x float> %i.ant, float %i.kp, i64 3
  %i.anv = fmul <4 x float> %i.ano, <float f0x3E2AAAAB, float -5.000000e-01, float -5.000000e-01, float f0x3E2AAAAB>
  %i.anw = fmul <4 x float> %i.ano, %i.anv
  %i.anx = fmul <4 x float> %i.anu, %i.anw
  %i.any = fadd <4 x float> %i.anx, <float 0.000000e+00, float f0x3F2AAAAB, float f0x3F2AAAAB, float 0.000000e+00>
  %bc.i1165 = bitcast <4 x float> %i.any to <2 x double> ; 2 uses
  %i.anz = extractelement <2 x double> %bc.i1165, i64 0
  %i.aoa = extractelement <2 x double> %bc.i1165, i64 1
  %i.aob = bitcast double %i.anz to <2 x i32>
  %i.aoc = bitcast double %i.aoa to <2 x i32>
  %.sroa.01414.8.vecblend1435 = shufflevector <2 x i32> %i.aob, <2 x i32> %i.aoc, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aod = fmul <4 x float> %i.ano, <float -5.000000e-01, float 5.000000e-01, float -5.000000e-01, float 5.000000e-01>
  %i.aoe = fmul <4 x float> %i.ano, <float 1.000000e+00, float 3.000000e+00, float 3.000000e+00, float 1.000000e+00>
  %i.aof = fadd <4 x float> %i.aoe, <float -0.000000e+00, float -4.000000e+00, float -4.000000e+00, float -0.000000e+00>
  %i.aog = fmul <4 x float> %i.aod, %i.aof
  %bc92.i1167 = bitcast <4 x float> %i.aog to <2 x double> ; 2 uses
  %i.aoh = extractelement <2 x double> %bc92.i1167, i64 0
  %i.aoi = extractelement <2 x double> %bc92.i1167, i64 1
  store double %i.aoh, ptr %.sroa.01412, align 16
  store double %i.aoi, ptr %.sroa.5, align 8, !tbaa !34
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %i.aoj = insertelement <4 x float> poison, float %i.kq, i64 0 ; 2 uses
  %i.aok = fsub <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, %i.aoj
  %i.aol = shufflevector <4 x float> %i.aok, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.aom = shufflevector <4 x float> %i.aol, <4 x float> %i.aoj, <4 x i32> <i32 0, i32 4, i32 1, i32 4> ; 3 uses
  %i.aon = fmul <4 x float> %i.aom, <float 1.000000e+00, float -1.000000e+00, float -1.000000e+00, float 1.000000e+00>
  %i.aoo = fadd <4 x float> %i.aon, <float 0.000000e+00, float 2.000000e+00, float 2.000000e+00, float 0.000000e+00>
  %i.aop = fmul <4 x float> %i.aom, <float f0x3E2AAAAB, float -5.000000e-01, float -5.000000e-01, float f0x3E2AAAAB>
  %i.aoq = fmul <4 x float> %i.aom, %i.aop
  %i.aor = fmul <4 x float> %i.aoq, %i.aoo
  %i.aos = fadd <4 x float> %i.aor, <float 0.000000e+00, float f0x3F2AAAAB, float f0x3F2AAAAB, float 0.000000e+00>
  %bc.i1169 = bitcast <4 x float> %i.aos to <2 x double> ; 2 uses
  %i.aot = extractelement <2 x double> %bc.i1169, i64 0
  %i.aou = extractelement <2 x double> %bc.i1169, i64 1
  %i.aov = bitcast double %i.aot to <2 x i32>
  %i.aow = bitcast double %i.aou to <2 x i32>
  %.sroa.01452.8.vecblend = shufflevector <2 x i32> %i.aov, <2 x i32> %i.aow, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aox = insertelement <4 x float> poison, float %i.kp, i64 0 ; 2 uses
  %i.aoy = fsub <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, %i.aox
  %i.aoz = shufflevector <4 x float> %i.aoy, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.apa = shufflevector <4 x float> %i.aoz, <4 x float> %i.aox, <4 x i32> <i32 0, i32 4, i32 1, i32 4> ; 3 uses
  %i.apb = fmul <4 x float> %i.apa, <float 1.000000e+00, float -1.000000e+00, float -1.000000e+00, float 1.000000e+00>
  %i.apc = fadd <4 x float> %i.apb, <float 0.000000e+00, float 2.000000e+00, float 2.000000e+00, float 0.000000e+00>
  %i.apd = fmul <4 x float> %i.apa, <float f0x3E2AAAAB, float -5.000000e-01, float -5.000000e-01, float f0x3E2AAAAB>
  %i.ape = fmul <4 x float> %i.apa, %i.apd
  %i.apf = fmul <4 x float> %i.ape, %i.apc
  %i.apg = fadd <4 x float> %i.apf, <float 0.000000e+00, float f0x3F2AAAAB, float f0x3F2AAAAB, float 0.000000e+00>
  %bc.i1170 = bitcast <4 x float> %i.apg to <2 x double> ; 2 uses
  %i.aph = extractelement <2 x double> %bc.i1170, i64 0
  %i.api = extractelement <2 x double> %bc.i1170, i64 1
  %i.apj = bitcast double %i.aph to <2 x i32>
  %i.apk = bitcast double %i.api to <2 x i32>
  %.sroa.01414.8.vecblend = shufflevector <2 x i32> %i.apj, <2 x i32> %i.apk, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.sroa.01452.1 = phi <4 x i32> [ %.sroa.01452.8.vecblend, %bb.bt ], [ %.sroa.01452.8.vecblend1473, %bb.bs ]
  %.sroa.01414.1 = phi <4 x i32> [ %.sroa.01414.8.vecblend, %bb.bt ], [ %.sroa.01414.8.vecblend1435, %bb.bs ]
  %i.apl = bitcast <4 x i32> %.sroa.01452.1 to <4 x float> ; 7 uses
  %i.apm = shufflevector <4 x float> %i.apl, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.apn = shufflevector <4 x float> %i.apl, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.apo = fadd <4 x float> %i.apm, %i.apn        ; 3 uses
  %i.app = bitcast <4 x i32> %.sroa.01414.1 to <4 x float> ; 7 uses
  %i.apq = shufflevector <4 x float> %i.app, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.apr = shufflevector <4 x float> %i.app, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.aps = fadd <4 x float> %i.apq, %i.apr        ; 3 uses
  %i.apt = shufflevector <4 x float> %i.apo, <4 x float> %i.aps, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.apu = shufflevector <4 x float> %i.apl, <4 x float> %i.app, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.apv = fdiv <4 x float> %i.apu, %i.apt
  %bc2170 = bitcast <4 x float> %i.apv to <2 x double> ; 2 uses
  %39 = extractelement <2 x double> %bc2170, i64 0 ; 4 uses
  %40 = bitcast double %39 to <2 x float>
  %i.apw = shufflevector <2 x float> %40, <2 x float> poison, <4 x i32> zeroinitializer ; 5 uses
  %i.apx = fsub <4 x float> splat (float 1.000000e+00), %i.apw ; 4 uses
  %41 = bitcast double %39 to <2 x float>
  %i.apy = shufflevector <2 x float> %41, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 5 uses
  %i.apz = fsub <4 x float> splat (float 1.000000e+00), %i.apy ; 4 uses
  %i.aqa = shufflevector <4 x float> %i.apo, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 5 uses
  %i.aqb = fsub <4 x float> splat (float 1.000000e+00), %i.aqa ; 4 uses
  %i.aqc = load <4 x float>, ptr %31, align 16, !tbaa !34
  %i.aqd = fmul <4 x float> %i.apx, %i.aqc
  %i.aqe = load <4 x float>, ptr %i.eh, align 16, !tbaa !34
  %i.aqf = fmul <4 x float> %i.aqe, %i.apw
  %i.aqg = fadd <4 x float> %i.aqd, %i.aqf
  %i.aqh = load <4 x float>, ptr %i.ei, align 16, !tbaa !34
  %i.aqi = fmul <4 x float> %i.apz, %i.aqh
  %i.aqj = load <4 x float>, ptr %i.ej, align 16, !tbaa !34
  %i.aqk = fmul <4 x float> %i.aqj, %i.apy
  %i.aql = fadd <4 x float> %i.aqi, %i.aqk
  %i.aqm = fmul <4 x float> %i.aqb, %i.aqg
  %i.aqn = fmul <4 x float> %i.aqa, %i.aql
  %i.aqo = fadd <4 x float> %i.aqm, %i.aqn
  %i.aqp = load <4 x float>, ptr %i.ee, align 16, !tbaa !34
  %i.aqq = fmul <4 x float> %i.apx, %i.aqp
  %i.aqr = load <4 x float>, ptr %i.ew, align 16, !tbaa !34 ; 3 uses
  %i.aqs = fmul <4 x float> %i.aqr, %i.apw
  %i.aqt = fadd <4 x float> %i.aqq, %i.aqs
  %i.aqu = load <4 x float>, ptr %i.ex, align 16, !tbaa !34 ; 3 uses
  %i.aqv = fmul <4 x float> %i.apz, %i.aqu
  %i.aqw = load <4 x float>, ptr %i.ey, align 16, !tbaa !34 ; 3 uses
  %i.aqx = fmul <4 x float> %i.aqw, %i.apy
  %i.aqy = fadd <4 x float> %i.aqv, %i.aqx
  %i.aqz = fmul <4 x float> %i.aqb, %i.aqt
  %i.ara = fmul <4 x float> %i.aqa, %i.aqy
  %i.arb = fadd <4 x float> %i.aqz, %i.ara
  %i.arc = load <4 x float>, ptr %i.ef, align 16, !tbaa !34 ; 3 uses
  %i.ard = fmul <4 x float> %i.apx, %i.arc
  %i.are = load <4 x float>, ptr %i.ez, align 16, !tbaa !34 ; 3 uses
  %i.arf = fmul <4 x float> %i.are, %i.apw
  %i.arg = fadd <4 x float> %i.ard, %i.arf
  %i.arh = load <4 x float>, ptr %i.fa, align 16, !tbaa !34 ; 3 uses
  %i.ari = fmul <4 x float> %i.apz, %i.arh
  %i.arj = load <4 x float>, ptr %i.fb, align 16, !tbaa !34 ; 3 uses
  %i.ark = fmul <4 x float> %i.arj, %i.apy
  %i.arl = fadd <4 x float> %i.ari, %i.ark
  %i.arm = fmul <4 x float> %i.aqb, %i.arg
  %i.arn = fmul <4 x float> %i.aqa, %i.arl
  %i.aro = fadd <4 x float> %i.arm, %i.arn
  %i.arp = load <4 x float>, ptr %i.eg, align 16, !tbaa !34 ; 3 uses
  %i.arq = fmul <4 x float> %i.apx, %i.arp
  %i.arr = load <4 x float>, ptr %i.fc, align 16, !tbaa !34 ; 3 uses
  %i.ars = fmul <4 x float> %i.arr, %i.apw
  %i.art = fadd <4 x float> %i.arq, %i.ars
  %i.aru = load <4 x float>, ptr %i.fd, align 16, !tbaa !34 ; 3 uses
  %i.arv = fmul <4 x float> %i.apz, %i.aru
  %i.arw = load <4 x float>, ptr %i.fe, align 16, !tbaa !34 ; 3 uses
  %i.arx = fmul <4 x float> %i.arw, %i.apy
  %i.ary = fadd <4 x float> %i.arv, %i.arx
  %i.arz = fmul <4 x float> %i.aqb, %i.art
  %i.asa = fmul <4 x float> %i.aqa, %i.ary
  %i.asb = fadd <4 x float> %i.arz, %i.asa
  %42 = extractelement <2 x double> %bc2170, i64 1 ; 2 uses
  %43 = bitcast double %42 to <2 x float>         ; 2 uses
  %44 = shufflevector <2 x float> %43, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.asc = fsub <4 x float> splat (float 1.000000e+00), %44
  %i.asd = fmul <4 x float> %i.asc, %i.aqo
  %i.ase = fmul <4 x float> %i.arb, %44
  %i.asf = fadd <4 x float> %i.asd, %i.ase
  %45 = bitcast double %42 to <2 x float>         ; 2 uses
  %46 = shufflevector <2 x float> %45, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.asg = fsub <4 x float> splat (float 1.000000e+00), %46
  %i.ash = fmul <4 x float> %i.asg, %i.aro
  %i.asi = fmul <4 x float> %i.asb, %46
  %i.asj = fadd <4 x float> %i.ash, %i.asi
  %i.ask = insertelement <4 x float> poison, float %.0, i64 0
  %i.asl = shufflevector <4 x float> %i.ask, <4 x float> poison, <4 x i32> zeroinitializer
  %i.asm = shufflevector <4 x float> %i.aps, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.asn = fsub <4 x float> splat (float 1.000000e+00), %i.asm
  %i.aso = fmul <4 x float> %i.asn, %i.asf
  %i.asp = fmul <4 x float> %i.asj, %i.asm
  %i.asq = fadd <4 x float> %i.aso, %i.asp
  %i.asr = fmul <4 x float> %i.asl, %i.asq
  %i.ass = load <4 x float>, ptr %22, align 16, !tbaa !34
  %i.ast = fadd <4 x float> %i.ass, %i.asr
  store <4 x float> %i.ast, ptr %22, align 16, !tbaa !34
  br i1 %.not370, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.asu = load i32, ptr %i.ah, align 4, !tbaa !330
  %i.asv = sitofp i32 %i.asu to float
  %.scalar = fmul float %.0, %i.asv
  %i.asw = insertelement <4 x float> poison, float %.scalar, i64 0
  %i.asx = shufflevector <4 x float> %i.asw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.asy = load i32, ptr %i.al, align 4, !tbaa !327
  %i.asz = sitofp i32 %i.asy to float
  %.scalar2372 = fmul float %.0, %i.asz
  %i.ata = insertelement <4 x float> poison, float %.scalar2372, i64 0
  %i.atb = shufflevector <4 x float> %i.ata, <4 x float> poison, <4 x i32> zeroinitializer
  %.sroa.01449.0..sroa.01449.0..sroa.01449.0..sroa.01449.0. = load float, ptr %.sroa.01449, align 16, !tbaa !26
  %i.atc = load <4 x float>, ptr %31, align 16, !tbaa !34 ; 2 uses
  %i.atd = shufflevector <4 x float> %i.app, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.ate = fmul <4 x float> %i.atd, %i.atc
  %47 = load <4 x float>, ptr %i.ee, align 16, !tbaa !34 ; 2 uses
  %i.atf = shufflevector <4 x float> %i.app, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 4 uses
  %i.atg = fmul <4 x float> %i.atf, %47
  %i.ath = fadd <4 x float> %i.ate, %i.atg
  %i.ati = shufflevector <4 x float> %i.app, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2> ; 4 uses
  %i.atj = fmul <4 x float> %i.ati, %i.arc
  %i.atk = fadd <4 x float> %i.ath, %i.atj
  %i.atl = shufflevector <4 x float> %i.app, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3> ; 4 uses
  %i.atm = fmul <4 x float> %i.atl, %i.arp
  %i.atn = fadd <4 x float> %i.atk, %i.atm
  %i.ato = insertelement <4 x float> poison, float %.sroa.01449.0..sroa.01449.0..sroa.01449.0..sroa.01449.0., i64 0
  %i.atp = shufflevector <4 x float> %i.ato, <4 x float> poison, <4 x i32> zeroinitializer
  %i.atq = fmul <4 x float> %i.atp, %i.atn
  %.sroa.01449.4..sroa.01449.4..sroa.01449.4..sroa.01449.4. = load float, ptr %.sroa.01449.4..sroa_idx2450, align 4, !tbaa !26
  %i.atr = load <4 x float>, ptr %i.eh, align 16, !tbaa !34 ; 2 uses
  %i.ats = fmul <4 x float> %i.atd, %i.atr
  %i.att = fmul <4 x float> %i.atf, %i.aqr
  %i.atu = fadd <4 x float> %i.ats, %i.att
  %i.atv = fmul <4 x float> %i.ati, %i.are
  %i.atw = fadd <4 x float> %i.atu, %i.atv
  %i.atx = fmul <4 x float> %i.atl, %i.arr
  %i.aty = fadd <4 x float> %i.atw, %i.atx
  %i.atz = insertelement <4 x float> poison, float %.sroa.01449.4..sroa.01449.4..sroa.01449.4..sroa.01449.4., i64 0
  %i.aua = shufflevector <4 x float> %i.atz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aub = fmul <4 x float> %i.aua, %i.aty
  %i.auc = fadd <4 x float> %i.atq, %i.aub
  %.sroa.51450.0..sroa.51450.0..sroa.51450.0..sroa.51450.8. = load float, ptr %.sroa.51450, align 8, !tbaa !26
  %i.aud = load <4 x float>, ptr %i.ei, align 16, !tbaa !34 ; 2 uses
  %i.aue = fmul <4 x float> %i.atd, %i.aud
  %i.auf = fmul <4 x float> %i.atf, %i.aqu
  %i.aug = fadd <4 x float> %i.aue, %i.auf
  %i.auh = fmul <4 x float> %i.ati, %i.arh
  %i.aui = fadd <4 x float> %i.aug, %i.auh
  %i.auj = fmul <4 x float> %i.atl, %i.aru
  %i.auk = fadd <4 x float> %i.aui, %i.auj
  %i.aul = insertelement <4 x float> poison, float %.sroa.51450.0..sroa.51450.0..sroa.51450.0..sroa.51450.8., i64 0
  %i.aum = shufflevector <4 x float> %i.aul, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aun = fmul <4 x float> %i.aum, %i.auk
  %i.auo = fadd <4 x float> %i.auc, %i.aun
  %.sroa.51450.4..sroa.51450.4..sroa.51450.4..sroa.51450.12. = load float, ptr %.sroa.51450.4..sroa_idx, align 4, !tbaa !26
  %i.aup = load <4 x float>, ptr %i.ej, align 16, !tbaa !34 ; 2 uses
  %i.auq = fmul <4 x float> %i.atd, %i.aup
  %i.aur = fmul <4 x float> %i.atf, %i.aqw
  %i.aus = fadd <4 x float> %i.auq, %i.aur
  %i.aut = fmul <4 x float> %i.ati, %i.arj
  %i.auu = fadd <4 x float> %i.aus, %i.aut
  %i.auv = fmul <4 x float> %i.atl, %i.arw
  %i.auw = fadd <4 x float> %i.auu, %i.auv
  %i.aux = insertelement <4 x float> poison, float %.sroa.51450.4..sroa.51450.4..sroa.51450.4..sroa.51450.12., i64 0
  %i.auy = shufflevector <4 x float> %i.aux, <4 x float> poison, <4 x i32> zeroinitializer
  %i.auz = fmul <4 x float> %i.auy, %i.auw
  %i.ava = fadd <4 x float> %i.auo, %i.auz
  %i.avb = fmul <4 x float> %i.asx, %i.ava
  %i.avc = fadd <4 x float> %.sroa.01538.12250, %i.avb
  %.sroa.01412.0..sroa.01412.0..sroa.01412.0..sroa.01412.0. = load float, ptr %.sroa.01412, align 16, !tbaa !26
  %i.avd = shufflevector <4 x float> %i.apl, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.ave = fmul <4 x float> %i.avd, %i.atc
  %i.avf = shufflevector <4 x float> %i.apl, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 4 uses
  %i.avg = fmul <4 x float> %i.avf, %i.atr
  %i.avh = fadd <4 x float> %i.ave, %i.avg
  %i.avi = shufflevector <4 x float> %i.apl, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2> ; 4 uses
  %i.avj = fmul <4 x float> %i.avi, %i.aud
  %i.avk = fadd <4 x float> %i.avh, %i.avj
  %i.avl = shufflevector <4 x float> %i.apl, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3> ; 4 uses
  %i.avm = fmul <4 x float> %i.avl, %i.aup
  %i.avn = fadd <4 x float> %i.avk, %i.avm
  %i.avo = insertelement <4 x float> poison, float %.sroa.01412.0..sroa.01412.0..sroa.01412.0..sroa.01412.0., i64 0
  %i.avp = shufflevector <4 x float> %i.avo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.avq = fmul <4 x float> %i.avn, %i.avp
  %.sroa.01412.4..sroa.01412.4..sroa.01412.4..sroa.01412.4. = load float, ptr %.sroa.01412.4..sroa_idx2449, align 4, !tbaa !26
  %i.avr = fmul <4 x float> %i.avd, %47
  %i.avs = fmul <4 x float> %i.avf, %i.aqr
  %i.avt = fadd <4 x float> %i.avr, %i.avs
  %i.avu = fmul <4 x float> %i.avi, %i.aqu
  %i.avv = fadd <4 x float> %i.avt, %i.avu
  %i.avw = fmul <4 x float> %i.avl, %i.aqw
  %i.avx = fadd <4 x float> %i.avv, %i.avw
  %i.avy = insertelement <4 x float> poison, float %.sroa.01412.4..sroa.01412.4..sroa.01412.4..sroa.01412.4., i64 0
  %i.avz = shufflevector <4 x float> %i.avy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.awa = fmul <4 x float> %i.avx, %i.avz
  %i.awb = fadd <4 x float> %i.avq, %i.awa
  %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.8. = load float, ptr %.sroa.5, align 8, !tbaa !26
  %i.awc = fmul <4 x float> %i.avd, %i.arc
  %i.awd = fmul <4 x float> %i.avf, %i.are
  %i.awe = fadd <4 x float> %i.awc, %i.awd
  %i.awf = fmul <4 x float> %i.avi, %i.arh
  %i.awg = fadd <4 x float> %i.awe, %i.awf
  %i.awh = fmul <4 x float> %i.avl, %i.arj
  %i.awi = fadd <4 x float> %i.awg, %i.awh
  %i.awj = insertelement <4 x float> poison, float %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.8., i64 0
  %i.awk = shufflevector <4 x float> %i.awj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.awl = fmul <4 x float> %i.awi, %i.awk
  %i.awm = fadd <4 x float> %i.awb, %i.awl
  %.sroa.5.4..sroa.5.4..sroa.5.4..sroa.5.12. = load float, ptr %.sroa.5.4..sroa_idx, align 4, !tbaa !26
  %i.awn = fmul <4 x float> %i.avd, %i.arp
  %i.awo = fmul <4 x float> %i.avf, %i.arr
  %i.awp = fadd <4 x float> %i.awn, %i.awo
  %i.awq = fmul <4 x float> %i.avi, %i.aru
  %i.awr = fadd <4 x float> %i.awp, %i.awq
  %i.aws = fmul <4 x float> %i.avl, %i.arw
  %i.awt = fadd <4 x float> %i.awr, %i.aws
  %i.awu = insertelement <4 x float> poison, float %.sroa.5.4..sroa.5.4..sroa.5.4..sroa.5.12., i64 0
  %i.awv = shufflevector <4 x float> %i.awu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aww = fmul <4 x float> %i.awt, %i.awv
  %i.awx = fadd <4 x float> %i.awm, %i.aww
  %i.awy = fmul <4 x float> %i.atb, %i.awx
  %i.awz = fadd <4 x float> %.sroa.01536.12251, %i.awy
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %.sroa.01538.2 = phi <4 x float> [ %.sroa.01538.12250, %bb.bu ], [ %i.avc, %bb.bv ]
  %.sroa.01536.2 = phi <4 x float> [ %.sroa.01536.12251, %bb.bu ], [ %i.awz, %bb.bv ]
  %or.cond11.not = select i1 %.0329.in2124, i1 true, i1 %.not2181
  br i1 %or.cond11.not, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.axa = load i32, ptr %29, align 16, !tbaa !3
  %i.axb = sitofp i32 %i.axa to float             ; 4 uses
  %i.axc = load i32, ptr %i.ek, align 4, !tbaa !3
  %i.axd = sitofp i32 %i.axc to float             ; 4 uses
  %bc2184 = bitcast double %39 to <2 x float>
  %i.axe = extractelement <2 x float> %bc2184, i64 0 ; 5 uses
  %i.axf = fsub float 1.000000e+00, %i.axe        ; 4 uses
  %i.axg = load i32, ptr %i.de, align 8, !tbaa !3
  %i.axh = sitofp i32 %i.axg to float             ; 4 uses
  %i.axi = load i32, ptr %i.el, align 4, !tbaa !3
  %i.axj = sitofp i32 %i.axi to float             ; 4 uses
  %48 = bitcast double %39 to <2 x float>
  %i.axk = extractelement <2 x float> %48, i64 1  ; 5 uses
  %i.axl = fsub float 1.000000e+00, %i.axk        ; 4 uses
  %i.axm = extractelement <4 x float> %i.apo, i64 1 ; 5 uses
  %i.axn = fsub float 1.000000e+00, %i.axm        ; 4 uses
  %i.axo = load i32, ptr %30, align 16, !tbaa !3
  %i.axp = sitofp i32 %i.axo to float             ; 4 uses
  %i.axq = fmul nnan float %i.axp, %i.axb
  %i.axr = fmul nnan float %i.axp, %i.axd
  %i.axs = fmul float %i.axe, %i.axr
  %i.axt = call noundef float @llvm.fmuladd.f32(float %i.axq, float %i.axf, float %i.axs)
  %i.axu = fmul nnan float %i.axp, %i.axh
  %i.axv = fmul nnan float %i.axp, %i.axj
  %i.axw = fmul float %i.axk, %i.axv
  %i.axx = call noundef float @llvm.fmuladd.f32(float %i.axu, float %i.axl, float %i.axw)
  %i.axy = fmul float %i.axm, %i.axx
  %i.axz = call noundef float @llvm.fmuladd.f32(float %i.axt, float %i.axn, float %i.axy)
  %i.aya = load i32, ptr %i.ff, align 4, !tbaa !3
  %i.ayb = sitofp i32 %i.aya to float             ; 4 uses
  %i.ayc = fmul nnan float %i.ayb, %i.axb
  %i.ayd = fmul nnan float %i.ayb, %i.axd
  %i.aye = fmul float %i.axe, %i.ayd
  %i.ayf = call noundef float @llvm.fmuladd.f32(float %i.ayc, float %i.axf, float %i.aye)
  %i.ayg = fmul nnan float %i.ayb, %i.axh
  %i.ayh = fmul nnan float %i.ayb, %i.axj
  %i.ayi = fmul float %i.axk, %i.ayh
  %i.ayj = call noundef float @llvm.fmuladd.f32(float %i.ayg, float %i.axl, float %i.ayi)
  %i.ayk = fmul float %i.axm, %i.ayj
  %i.ayl = call noundef float @llvm.fmuladd.f32(float %i.ayf, float %i.axn, float %i.ayk)
  %i.aym = load i32, ptr %i.df, align 8, !tbaa !3
  %i.ayn = sitofp i32 %i.aym to float             ; 4 uses
  %i.ayo = fmul nnan float %i.ayn, %i.axb
  %i.ayp = fmul nnan float %i.ayn, %i.axd
  %i.ayq = fmul float %i.axe, %i.ayp
  %i.ayr = call noundef float @llvm.fmuladd.f32(float %i.ayo, float %i.axf, float %i.ayq)
  %i.ays = fmul nnan float %i.ayn, %i.axh
  %i.ayt = fmul nnan float %i.ayn, %i.axj
  %i.ayu = fmul float %i.axk, %i.ayt
  %i.ayv = call noundef float @llvm.fmuladd.f32(float %i.ays, float %i.axl, float %i.ayu)
  %i.ayw = fmul float %i.axm, %i.ayv
  %i.ayx = call noundef float @llvm.fmuladd.f32(float %i.ayr, float %i.axn, float %i.ayw)
  %i.ayy = load i32, ptr %i.fg, align 4, !tbaa !3
  %i.ayz = sitofp i32 %i.ayy to float             ; 4 uses
  %i.aza = fmul nnan float %i.ayz, %i.axb
  %i.azb = fmul nnan float %i.ayz, %i.axd
  %i.azc = fmul float %i.axe, %i.azb
  %i.azd = call noundef float @llvm.fmuladd.f32(float %i.aza, float %i.axf, float %i.azc)
  %i.aze = fmul nnan float %i.ayz, %i.axh
  %i.azf = fmul nnan float %i.ayz, %i.axj
  %i.azg = fmul float %i.axk, %i.azf
  %i.azh = call noundef float @llvm.fmuladd.f32(float %i.aze, float %i.axl, float %i.azg)
  %i.azi = fmul float %i.axm, %i.azh
  %i.azj = call noundef float @llvm.fmuladd.f32(float %i.azd, float %i.axn, float %i.azi)
  %i.azk = extractelement <2 x float> %43, i64 0  ; 2 uses
  %i.azl = fsub float 1.000000e+00, %i.azk
  %i.azm = fmul float %i.azk, %i.ayl
  %i.azn = call noundef float @llvm.fmuladd.f32(float %i.axz, float %i.azl, float %i.azm)
  %i.azo = extractelement <2 x float> %45, i64 1  ; 2 uses
  %i.azp = fsub float 1.000000e+00, %i.azo
  %i.azq = fmul float %i.azo, %i.azj
  %i.azr = call noundef float @llvm.fmuladd.f32(float %i.ayx, float %i.azp, float %i.azq)
  %i.azs = extractelement <4 x float> %i.aps, i64 1 ; 2 uses
  %i.azt = fsub float 1.000000e+00, %i.azs
  %i.azu = fmul float %i.azs, %i.azr
  %i.azv = call noundef float @llvm.fmuladd.f32(float %i.azn, float %i.azt, float %i.azu)
  %i.azw = fsub float 1.000000e+00, %i.azv
  %i.azx = call float @llvm.fmuladd.f32(float %.0, float %i.azw, float %.03122255)
  br label %bb.by

bb.by:                                            ; preds = %bb.bw, %bb.bx
  %.1313 = phi float [ %i.azx, %bb.bx ], [ %.03122255, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01412)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01449)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.51450)
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #3
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %.thread2412
  %.33152419 = phi float [ %i.ml, %.thread2412 ], [ %.1313, %bb.by ] ; 2 uses
  %.sroa.01536.42418 = phi <4 x float> [ %.sroa.01536.12251, %.thread2412 ], [ %.sroa.01536.2, %bb.by ] ; 2 uses
  %.sroa.01538.42417 = phi <4 x float> [ %.sroa.01538.12250, %.thread2412 ], [ %.sroa.01538.2, %bb.by ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #3
  %indvars.iv.next2350 = add nuw nsw i64 %indvars.iv2349, 1 ; 2 uses
  %exitcond2352.not = icmp eq i64 %indvars.iv.next2350, %wide.trip.count
  br i1 %exitcond2352.not, label %._crit_edge.loopexit, label %bb.d, !llvm.loop !540

bb.ca:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1153, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1143
  %.pn = phi { ptr, i32 } [ %i.ob, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1143 ], [ %eh.lpad-body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1153 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #3
  resume { ptr, i32 } %.pn

._crit_edge.loopexit:                             ; preds = %bb.bz
  %.pre2381 = load <4 x i32>, ptr %22, align 16, !tbaa !34
  %i.azy = bitcast <4 x float> %.sroa.01538.42417 to <4 x i32>
  %i.azz = bitcast <4 x float> %.sroa.01536.42418 to <4 x i32>
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit
  %i.baa = phi <4 x i32> [ zeroinitializer, %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit ], [ %.pre2381, %._crit_edge.loopexit ]
  %.sroa.01538.1.lcssa = phi <4 x i32> [ zeroinitializer, %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit ], [ %i.azy, %._crit_edge.loopexit ]
  %.sroa.01536.1.lcssa = phi <4 x i32> [ zeroinitializer, %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit ], [ %i.azz, %._crit_edge.loopexit ]
  %.0312.lcssa = phi float [ 0.000000e+00, %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit ], [ %.33152419, %._crit_edge.loopexit ]
  %i.bab = sext i32 %9 to i64
  %i.bac = getelementptr inbounds [16 x i8], ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_113channel_masksE, i64 %i.bab
  %.sroa.01181.0.copyload2151 = load <4 x i32>, ptr %i.bac, align 16, !tbaa !34 ; 4 uses
  %i.bad = and <4 x i32> %i.baa, %.sroa.01181.0.copyload2151
  store <4 x i32> %i.bad, ptr %22, align 16
  br i1 %.not2181, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %._crit_edge
  %i.bae = fsub float 1.000000e+00, %.0312.lcssa
  %i.baf = load float, ptr %i.as, align 8, !tbaa !258
  %i.bag = fmul float %i.bae, %i.baf
  %i.bah = insertelement <4 x float> poison, float %i.bag, i64 0
  %i.bai = xor <4 x i32> %.sroa.01181.0.copyload2151, splat (i32 -1)
  %i.baj = bitcast <4 x float> %i.bah to <4 x i32>
  %i.bak = shufflevector <4 x i32> %i.baj, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bal = and <4 x i32> %i.bak, %i.bai
  %i.bam = load <4 x float>, ptr %22, align 16, !tbaa !34
  %i.ban = bitcast <4 x i32> %i.bal to <4 x float>
  %i.bao = fadd <4 x float> %i.bam, %i.ban
  store <4 x float> %i.bao, ptr %22, align 16, !tbaa !34
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %11, ptr noundef nonnull align 16 dereferenceable(16) %22, i64 16, i1 false), !tbaa.struct !524
  br i1 %.not370, label %.loopexit2197, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.bap = and <4 x i32> %.sroa.01181.0.copyload2151, %.sroa.01538.1.lcssa
  store <4 x i32> %i.bap, ptr %12, align 16
  %i.baq = and <4 x i32> %.sroa.01181.0.copyload2151, %.sroa.01536.1.lcssa
  store <4 x i32> %i.baq, ptr %13, align 16
  br label %.loopexit2197

.loopexit2197.loopexit:                           ; preds = %bb.u, %bb.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #3
  br label %.loopexit2197

.loopexit2197:                                    ; preds = %.loopexit2197.loopexit, %bb.cc, %bb.cd
  %i.bar = phi i1 [ true, %bb.cd ], [ true, %bb.cc ], [ false, %.loopexit2197.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #3
  ret i1 %i.bar
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #25

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_112ellipse_axesEffffRfS1_S1_Pf(float noundef %0, float noundef %1, float noundef %2, float noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef %7) local_unnamed_addr #23 {
_ZN11OpenImageIO4v3_19safe_sqrtIfEET_S2_.exit50:
  %i.a = fmul float %0, %0
  %i.b = fmul float %1, %1
  %i.c = fmul float %2, %2
  %i.d = fmul float %3, %3
  %i.e = fadd float %i.b, %i.d
  %i.f = fpext float %i.e to double               ; 4 uses
  %i.g = fmul float %2, %3
  %i.h = tail call float @llvm.fmuladd.f32(float %0, float %1, float %i.g)
  %i.i = fpext float %i.h to double
  %i.j = fmul double %i.i, -2.000000e+00          ; 5 uses
  %i.k = fadd float %i.a, %i.c
  %i.l = fpext float %i.k to double               ; 4 uses
  %i.m = fsub double %i.f, %i.l                   ; 3 uses
  %i.n = tail call double @hypot(double noundef %i.m, double noundef %i.j) #50 ; 2 uses
  %i.o = fadd double %i.l, %i.f                   ; 2 uses
  %i.p = fadd double %i.o, %i.n
  %i.q = fsub double %i.o, %i.n
  %i.r = insertelement <2 x double> poison, double %i.q, i64 0
  %i.s = insertelement <2 x double> %i.r, double %i.p, i64 1
  %i.t = fmul <2 x double> %i.s, splat (double 5.000000e-01) ; 2 uses
  %i.u = fptrunc <2 x double> %i.t to <2 x float>
  %i.v = fcmp ult <2 x double> %i.t, splat (double f0xB690000000000000)
  %i.w = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.u)
  %i.x = select <2 x i1> %i.v, <2 x float> zeroinitializer, <2 x float> %i.w ; 2 uses
  %i.y = fcmp ogt <2 x float> %i.x, splat (float 1.000000e+03)
  %i.z = select <2 x i1> %i.y, <2 x float> splat (float 1.000000e+03), <2 x float> %i.x ; 2 uses
  %i.aa = extractelement <2 x float> %i.z, i64 1
  store float %i.aa, ptr %4, align 4, !tbaa !26
  %i.ab = extractelement <2 x float> %i.z, i64 0
  store float %i.ab, ptr %5, align 4, !tbaa !26
  %i.ac = fptrunc double %i.j to float            ; 3 uses
  %i.ad = fptrunc double %i.m to float
  %i.ae = tail call float @llvm.fabs.f32(float %i.ad) ; 4 uses
  %i.af = tail call float @llvm.fabs.f32(float %i.ac) ; 4 uses
  %i.ag = fcmp ogt float %i.af, %i.ae             ; 2 uses
  %i.ah = fcmp oeq float %i.ac, 0.000000e+00
  br i1 %i.ah, label %_ZN11OpenImageIO4v3_110fast_atan2Eff.exit, label %bb.a

bb.a:                                             ; preds = %_ZN11OpenImageIO4v3_19safe_sqrtIfEET_S2_.exit50
  %i.ai = fcmp oeq float %i.ae, %i.af
  br i1 %i.ai, label %_ZN11OpenImageIO4v3_110fast_atan2Eff.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.ag, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aj = fdiv float %i.ae, %i.af
  br label %_ZN11OpenImageIO4v3_110fast_atan2Eff.exit

bb.d:                                             ; preds = %bb.b
  %i.ak = fdiv float %i.af, %i.ae
  br label %_ZN11OpenImageIO4v3_110fast_atan2Eff.exit

_ZN11OpenImageIO4v3_110fast_atan2Eff.exit:        ; preds = %_ZN11OpenImageIO4v3_19safe_sqrtIfEET_S2_.exit50, %bb.a, %bb.c, %bb.d
  %i.al = phi float [ 0.000000e+00, %_ZN11OpenImageIO4v3_19safe_sqrtIfEET_S2_.exit50 ], [ 1.000000e+00, %bb.a ], [ %i.aj, %bb.c ], [ %i.ak, %bb.d ]
  %i.am = fadd float %i.al, -1.000000e+00
  %i.an = fadd float %i.am, 1.000000e+00          ; 3 uses
  %i.ao = fmul float %i.an, %i.an                 ; 3 uses
  %i.ap = fmul contract float %i.ao, f0x3EDC3EAD
  %i.aq = fadd contract float %i.ap, 1.000000e+00
  %i.ar = fmul float %i.an, %i.aq
  %i.as = fmul contract float %i.ao, 5.793550e-02
  %i.at = fadd contract float %i.as, f0x3F43547E
  %i.au = fmul contract float %i.ao, %i.at
  %i.av = fadd contract float %i.au, 1.000000e+00
  %i.aw = fdiv float %i.ar, %i.av                 ; 2 uses
  %i.ax = fsub float f0x3FC90FDB, %i.aw
  %.0.i = select i1 %i.ag, float %i.ax, float %i.aw ; 2 uses
  %i.ay = bitcast double %i.m to i64
  %i.az = fsub float f0x40490FDB, %.0.i
  %.not.i57 = icmp slt i64 %i.ay, 0
  %.1.i = select i1 %.not.i57, float %i.az, float %.0.i
  %i.ba = tail call noundef float @llvm.copysign.f32(float %.1.i, float %i.ac)
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.ba, float 5.000000e-01, float f0x3FC90FDB)
  store float %i.bb, ptr %6, align 4, !tbaa !26
  %.not = icmp eq ptr %7, null
end_hunk_1

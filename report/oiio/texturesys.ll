inline.NumInlined: 5129
inline.NumDeleted: 1476
begin_hunk_0_@_ZN11OpenImageIO4v3_117TextureSystemImpl15sample_bilinearEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_:bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %i.n, i64 60
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !311 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !270
  %i.bq = icmp eq i32 %i.bp, 1
  %i.br = getelementptr inbounds nuw i8, ptr %i.j, i64 38 ; 2 uses
  %i.bs = load i8, ptr %i.br, align 2
  %i.bt = and i8 %i.bs, 2
  %i.bu = icmp ne i8 %i.bt, 0
  %i.bv = select i1 %i.bq, i1 %i.bu, i1 false     ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !113
  %i.by = icmp sle i32 %i.bn, %i.bx
  %or.cond = select i1 %i.by, i1 true, i1 %i.bv   ; 2 uses
  %i.bz = add nsw i32 %i.bl, %9
  %.0263 = select i1 %or.cond, i32 %i.bn, i32 %i.bz ; 2 uses
  %.0262 = select i1 %or.cond, i32 0, i32 %i.bl   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #3
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 68
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !285
  store i32 0, ptr %19, align 8, !tbaa !313
  %i.cc = getelementptr inbounds nuw i8, ptr %19, i64 4 ; 3 uses
  store i32 0, ptr %i.cc, align 4, !tbaa !315
  %i.cd = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  store i32 0, ptr %i.cd, align 8, !tbaa !316
  %i.ce = getelementptr inbounds nuw i8, ptr %19, i64 12 ; 3 uses
  store i32 %i.c, ptr %i.ce, align 4, !tbaa !317
  %i.cf = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 3 uses
  store i32 %4, ptr %i.cf, align 8, !tbaa !318
  %i.cg = getelementptr inbounds nuw i8, ptr %19, i64 20 ; 5 uses
  %i.ch = trunc i32 %.0262 to i16
  store i16 %i.ch, ptr %i.cg, align 4, !tbaa !319
  %i.ci = getelementptr inbounds nuw i8, ptr %19, i64 22 ; 4 uses
  %i.cj = trunc i32 %.0263 to i16
  store i16 %i.cj, ptr %i.ci, align 2, !tbaa !320
  %i.ck = getelementptr inbounds nuw i8, ptr %19, i64 24 ; 3 uses
  store i32 %i.cb, ptr %i.ck, align 8, !tbaa !321
  %i.cl = getelementptr inbounds nuw i8, ptr %19, i64 28
  store i32 0, ptr %i.cl, align 4, !tbaa !322
  %i.cm = getelementptr inbounds nuw i8, ptr %19, i64 32 ; 3 uses
  store ptr %5, ptr %i.cm, align 8, !tbaa !323
  %i.cn = icmp slt i32 %.0263, %.0262
  br i1 %i.cn, label %bb.f, label %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit

bb.f:                                             ; preds = %bb.e
  %i.co = getelementptr inbounds nuw i8, ptr %i.m, i64 60
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !227
  %i.cq = trunc i32 %i.cp to i16
  store i16 %i.cq, ptr %i.ci, align 2, !tbaa !320
  br label %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit

_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #3
  store <4 x float> zeroinitializer, ptr %20, align 16, !tbaa !34
  %.not = icmp eq ptr %12, null                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #3
  %i.cr = icmp slt i32 %1, 1
  br i1 %i.cr, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 165 ; 2 uses
  %.not293 = icmp eq ptr %i.ad, null
  %.sroa.4125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %25, i64 4
  %i.cu = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %25, i64 12
  %.sroa.0637.0.vec.extract = extractelement <2 x i32> %i.as, i64 0
  %.sroa.0637.8.vec.extract = extractelement <2 x i32> %i.at, i64 0
  %i.cw = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 6 uses
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.dd = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.de = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 7 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %27, i64 32 ; 5 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %27, i64 48 ; 5 uses
  %i.do = icmp sgt i32 %9, 0
  %wide.trip.count.i = zext i32 %9 to i64         ; 3 uses
  %wide.trip.count = zext nneg i32 %1 to i64
  %min.iters.check = icmp ult i32 %9, 8
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.cd
  %i.dp = phi <4 x i32> [ zeroinitializer, %.lr.ph ], [ %i.act, %bb.cd ]
  %indvars.iv1124 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next1125, %bb.cd ] ; 9 uses
  %.02641112 = phi float [ 0.000000e+00, %.lr.ph ], [ %.3267965, %bb.cd ] ; 4 uses
  %.sroa.0632.11110 = phi <4 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0632.4938, %bb.cd ] ; 3 uses
  %.sroa.0634.11109 = phi <4 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0634.4937, %bb.cd ] ; 3 uses
  %i.dq = and i64 %indvars.iv1124, 3
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %.split284, label %.split

.split:                                           ; preds = %bb.g
  %i.ds = and i64 %indvars.iv1124, 3              ; 4 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %21, i64 %i.ds
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %i.ds
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %i.ds
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %24, i64 %i.ds
  %.pre = load i32, ptr %i.dt, align 4, !tbaa !3
  %.pre1156 = load i32, ptr %i.du, align 4, !tbaa !3
  %.0825.pre = load float, ptr %i.dv, align 4, !tbaa !26
  %.pre1158 = load float, ptr %i.dw, align 4, !tbaa !26
  %i.dx = insertelement <2 x float> poison, float %.pre1158, i64 0
  %i.dy = insertelement <2 x float> %i.dx, float %.0825.pre, i64 1
  %i.dz = insertelement <2 x i32> poison, i32 %.pre, i64 0
  %i.ea = insertelement <2 x i32> %i.dz, i32 %.pre1156, i64 1
  br label %bb.j

.split284:                                        ; preds = %bb.g
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv1124
  %i.ec = load <4 x float>, ptr %i.eb, align 1, !tbaa !34 ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv1124
  %i.ee = load <4 x float>, ptr %i.ed, align 1, !tbaa !34
  %i.ef = load i8, ptr %i.cs, align 1, !tbaa !486, !range !62, !noundef !63
  %i.eg = trunc nuw i8 %i.ef to i1
  %i.eh = load i32, ptr %i.ah, align 4, !tbaa !330 ; 2 uses
  %i.ei = load i32, ptr %i.ai, align 4, !tbaa !327 ; 2 uses
  br i1 %i.eg, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.split284
  %i.ej = sitofp i32 %i.eh to float
  %i.ek = insertelement <4 x float> poison, float %i.ej, i64 0
  %i.el = shufflevector <4 x float> %i.ek, <4 x float> poison, <4 x i32> zeroinitializer
  %i.em = fmul <4 x float> %i.ec, %i.el
  %i.en = load i32, ptr %i.n, align 4, !tbaa !329
  %i.eo = sitofp i32 %i.en to float
  %i.ep = fadd float %i.eo, -5.000000e-01
  %i.eq = insertelement <4 x float> poison, float %i.ep, i64 0
  %i.er = shufflevector <4 x float> %i.eq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.es = fadd <4 x float> %i.em, %i.er
  %bc.i = bitcast <4 x float> %i.es to <2 x double> ; 2 uses
  %i.et = extractelement <2 x double> %bc.i, i64 0
  %i.eu = extractelement <2 x double> %bc.i, i64 1
  %i.ev = bitcast double %i.et to <2 x i32>
  %i.ew = bitcast double %i.eu to <2 x i32>
  %.sroa.096.8.vecblend104.i = shufflevector <2 x i32> %i.ev, <2 x i32> %i.ew, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ex = sitofp i32 %i.ei to float
  %i.ey = insertelement <4 x float> poison, float %i.ex, i64 0
  %i.ez = shufflevector <4 x float> %i.ey, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fa = load i32, ptr %i.ae, align 4, !tbaa !326
  %i.fb = sitofp i32 %i.fa to float
  %i.fc = fadd float %i.fb, -5.000000e-01
  br label %_ZN11OpenImageIO4v3_116st_to_texel_simdERKNS0_4simd7vfloat4ES4_RNS0_14ImageCacheFileERKNS5_9ImageDimsERNS1_5vint4ESB_RS2_SC_.exit

bb.i:                                             ; preds = %.split284
  %i.fd = add nsw i32 %i.eh, -1
  %i.fe = sitofp i32 %i.fd to float
  %i.ff = insertelement <4 x float> poison, float %i.fe, i64 0
  %i.fg = shufflevector <4 x float> %i.ff, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fh = fmul <4 x float> %i.ec, %i.fg
  %i.fi = load i32, ptr %i.n, align 4, !tbaa !329
  %i.fj = sitofp i32 %i.fi to float
  %i.fk = insertelement <4 x float> poison, float %i.fj, i64 0
  %i.fl = shufflevector <4 x float> %i.fk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fm = fadd <4 x float> %i.fh, %i.fl
  %bc132.i = bitcast <4 x float> %i.fm to <2 x double> ; 2 uses
  %i.fn = extractelement <2 x double> %bc132.i, i64 0
  %i.fo = extractelement <2 x double> %bc132.i, i64 1
  %i.fp = bitcast double %i.fn to <2 x i32>
  %i.fq = bitcast double %i.fo to <2 x i32>
  %.sroa.096.8.vecblend.i = shufflevector <2 x i32> %i.fp, <2 x i32> %i.fq, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fr = add nsw i32 %i.ei, -1
  %i.fs = sitofp i32 %i.fr to float
  %i.ft = insertelement <4 x float> poison, float %i.fs, i64 0
  %i.fu = shufflevector <4 x float> %i.ft, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fv = load i32, ptr %i.ae, align 4, !tbaa !326
  %i.fw = sitofp i32 %i.fv to float
  br label %_ZN11OpenImageIO4v3_116st_to_texel_simdERKNS0_4simd7vfloat4ES4_RNS0_14ImageCacheFileERKNS5_9ImageDimsERNS1_5vint4ESB_RS2_SC_.exit

_ZN11OpenImageIO4v3_116st_to_texel_simdERKNS0_4simd7vfloat4ES4_RNS0_14ImageCacheFileERKNS5_9ImageDimsERNS1_5vint4ESB_RS2_SC_.exit: ; preds = %bb.h, %bb.i
  %.sink149.i = phi float [ %i.fw, %bb.i ], [ %i.fc, %bb.h ]
  %.pn1047 = phi <4 x float> [ %i.fu, %bb.i ], [ %i.ez, %bb.h ]
  %.sroa.096.0.i = phi <4 x i32> [ %.sroa.096.8.vecblend.i, %bb.i ], [ %.sroa.096.8.vecblend104.i, %bb.h ]
  %.sink147.i = fmul <4 x float> %i.ee, %.pn1047
  %i.fx = insertelement <4 x float> poison, float %.sink149.i, i64 0
  %i.fy = shufflevector <4 x float> %i.fx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fz = fadd <4 x float> %.sink147.i, %i.fy
  %bc134.i = bitcast <4 x float> %i.fz to <2 x double> ; 2 uses
  %i.ga = extractelement <2 x double> %bc134.i, i64 0
  %i.gb = extractelement <2 x double> %bc134.i, i64 1
  %i.gc = bitcast double %i.ga to <2 x i32>
  %i.gd = bitcast double %i.gb to <2 x i32>
  %.sroa.086.8.vecblend.i = shufflevector <2 x i32> %i.gc, <2 x i32> %i.gd, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %bc136.i = bitcast <4 x i32> %.sroa.096.0.i to <4 x float> ; 5 uses
  %i.ge = extractelement <4 x float> %bc136.i, i64 0
  %32 = call float @llvm.floor.f32(float %i.ge)
  %i.gf = extractelement <4 x float> %bc136.i, i64 1
  %33 = call float @llvm.floor.f32(float %i.gf)
  %34 = extractelement <4 x float> %bc136.i, i64 2
  %i.gg = call float @llvm.floor.f32(float %34)
  %35 = extractelement <4 x float> %bc136.i, i64 3
  %i.gh = call float @llvm.floor.f32(float %35)
  %i.gi = insertelement <2 x float> poison, float %32, i64 0
  %i.gj = insertelement <2 x float> %i.gi, float %i.gg, i64 1
  %i.gk = bitcast <2 x float> %i.gj to <2 x i32>
  %i.gl = insertelement <2 x float> poison, float %33, i64 0
  %i.gm = insertelement <2 x float> %i.gl, float %i.gh, i64 1
  %i.gn = bitcast <2 x float> %i.gm to <2 x i32>
  %i.go = zext <2 x i32> %i.gn to <2 x i64>
  %i.gp = shl nuw <2 x i64> %i.go, splat (i64 32)
  %i.gq = zext <2 x i32> %i.gk to <2 x i64>
  %i.gr = or disjoint <2 x i64> %i.gp, %i.gq
  %i.gs = bitcast <2 x i64> %i.gr to <4 x float>  ; 2 uses
  %i.gt = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.gs) ; 2 uses
  store <4 x i32> %i.gt, ptr %21, align 16, !tbaa !34
  %i.gu = fsub <4 x float> %bc136.i, %i.gs        ; 2 uses
  store <4 x float> %i.gu, ptr %23, align 16
  %bc140.i = bitcast <4 x i32> %.sroa.086.8.vecblend.i to <4 x float> ; 5 uses
  %i.gv = extractelement <4 x float> %bc140.i, i64 0
  %36 = call float @llvm.floor.f32(float %i.gv)
  %i.gw = extractelement <4 x float> %bc140.i, i64 1
  %37 = call float @llvm.floor.f32(float %i.gw)
  %38 = extractelement <4 x float> %bc140.i, i64 2
  %i.gx = call float @llvm.floor.f32(float %38)
  %39 = extractelement <4 x float> %bc140.i, i64 3
  %i.gy = call float @llvm.floor.f32(float %39)
  %i.gz = insertelement <2 x float> poison, float %36, i64 0
  %i.ha = insertelement <2 x float> %i.gz, float %i.gx, i64 1
  %i.hb = bitcast <2 x float> %i.ha to <2 x i32>
  %i.hc = insertelement <2 x float> poison, float %37, i64 0
  %i.hd = insertelement <2 x float> %i.hc, float %i.gy, i64 1
  %i.he = bitcast <2 x float> %i.hd to <2 x i32>
  %i.hf = zext <2 x i32> %i.he to <2 x i64>
  %i.hg = shl nuw <2 x i64> %i.hf, splat (i64 32)
  %i.hh = zext <2 x i32> %i.hb to <2 x i64>
  %i.hi = or disjoint <2 x i64> %i.hg, %i.hh
  %i.hj = bitcast <2 x i64> %i.hi to <4 x float>  ; 2 uses
  %i.hk = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.hj) ; 2 uses
  store <4 x i32> %i.hk, ptr %22, align 16, !tbaa !34
  %i.hl = fsub <4 x float> %bc140.i, %i.hj        ; 2 uses
  store <4 x float> %i.hl, ptr %24, align 16
  %i.hm = shufflevector <4 x float> %i.hl, <4 x float> %i.gu, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.hn = bitcast <4 x float> %i.hm to <2 x i64>
  %i.ho = trunc <2 x i64> %i.hn to <2 x i32>
  %i.hp = bitcast <2 x i32> %i.ho to <2 x float>
  %i.hq = shufflevector <4 x i32> %i.gt, <4 x i32> %i.hk, <2 x i32> <i32 0, i32 4>
  br label %bb.j

bb.j:                                             ; preds = %.split, %_ZN11OpenImageIO4v3_116st_to_texel_simdERKNS0_4simd7vfloat4ES4_RNS0_14ImageCacheFileERKNS5_9ImageDimsERNS1_5vint4ESB_RS2_SC_.exit
  %i.hr = phi <2 x float> [ %i.hp, %_ZN11OpenImageIO4v3_116st_to_texel_simdERKNS0_4simd7vfloat4ES4_RNS0_14ImageCacheFileERKNS5_9ImageDimsERNS1_5vint4ESB_RS2_SC_.exit ], [ %i.dy, %.split ] ; 4 uses
  %i.hs = phi <2 x i32> [ %i.hq, %_ZN11OpenImageIO4v3_116st_to_texel_simdERKNS0_4simd7vfloat4ES4_RNS0_14ImageCacheFileERKNS5_9ImageDimsERNS1_5vint4ESB_RS2_SC_.exit ], [ %i.ea, %.split ]
  %i.ht = shufflevector <2 x i32> %i.hs, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv1124
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !26 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #3
  %i.hw = add nsw <4 x i32> %i.ht, <i32 0, i32 1, i32 0, i32 1>
  store <4 x i32> %i.hw, ptr %25, align 16, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #3
  br i1 %.not293, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.hx = call { i64, i64 } %i.ad(ptr noundef nonnull align 16 dereferenceable(16) %25, ptr noundef nonnull align 16 dereferenceable(16) %17, ptr noundef nonnull align 16 dereferenceable(16) %18) ; 2 uses
  %i.hy = extractvalue { i64, i64 } %i.hx, 0
  %i.hz = extractvalue { i64, i64 } %i.hx, 1
  store i64 %i.hy, ptr %26, align 16
  store i64 %i.hz, ptr %.sroa.4125.0..sroa_idx, align 8, !tbaa !34
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ia = load i32, ptr %i.n, align 4, !tbaa !329
  %i.ib = load i32, ptr %i.ah, align 4, !tbaa !330
  %i.ic = call noundef zeroext i1 %i.u(ptr noundef nonnull align 4 dereferenceable(4) %25, i32 noundef %i.ia, i32 noundef %i.ib)
  %i.id = load i32, ptr %i.n, align 4, !tbaa !329
  %i.ie = load i32, ptr %i.ah, align 4, !tbaa !330
  %i.if = call noundef zeroext i1 %i.u(ptr noundef nonnull align 4 dereferenceable(4) %i.ct, i32 noundef %i.id, i32 noundef %i.ie)
  %i.ig = load i32, ptr %i.ae, align 4, !tbaa !326
  %i.ih = load i32, ptr %i.ai, align 4, !tbaa !327
  %i.ii = call noundef zeroext i1 %i.z(ptr noundef nonnull align 4 dereferenceable(4) %i.cu, i32 noundef %i.ig, i32 noundef %i.ih)
  %i.ij = load i32, ptr %i.ae, align 4, !tbaa !326
  %i.ik = load i32, ptr %i.ai, align 4, !tbaa !327
  %i.il = call noundef zeroext i1 %i.z(ptr noundef nonnull align 4 dereferenceable(4) %i.cv, i32 noundef %i.ij, i32 noundef %i.ik)
  %i.im = insertelement <4 x i1> poison, i1 %i.ic, i64 0
  %i.in = insertelement <4 x i1> %i.im, i1 %i.if, i64 1
  %i.io = insertelement <4 x i1> %i.in, i1 %i.ii, i64 2
  %i.ip = insertelement <4 x i1> %i.io, i1 %i.il, i64 3
  %i.iq = sext <4 x i1> %i.ip to <4 x i32>
  store <4 x i32> %i.iq, ptr %26, align 16, !tbaa !34
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ir = load i8, ptr %i.br, align 2
  %i.is = trunc i8 %i.ir to i1
  br i1 %i.is, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.it = load <4 x i32>, ptr %17, align 16, !tbaa !34 ; 2 uses
  %i.iu = load <4 x i32>, ptr %25, align 16, !tbaa !34 ; 2 uses
  %i.iv = icmp sge <4 x i32> %i.iu, %i.it
  %i.iw = load <4 x i32>, ptr %18, align 16, !tbaa !34
  %i.ix = add <4 x i32> %i.iw, %i.it
  %i.iy = icmp sgt <4 x i32> %i.ix, %i.iu
  %i.iz = and <4 x i1> %i.iv, %i.iy
  %i.ja = load <4 x float>, ptr %26, align 16, !tbaa !34
  %i.jb = select <4 x i1> %i.iz, <4 x float> %i.ja, <4 x float> zeroinitializer
  store <4 x float> %i.jb, ptr %26, align 16
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.jc = load <4 x i32>, ptr %26, align 16, !tbaa !34
  %i.jd = icmp slt <4 x i32> %i.jc, zeroinitializer
  %i.je = bitcast <4 x i1> %i.jd to i4            ; 2 uses
  %.not1049 = icmp eq i4 %i.je, 0
  br i1 %.not1049, label %.thread, label %bb.p

.thread:                                          ; preds = %bb.o
  %i.jf = fadd float %.02641112, %i.hv
  br label %bb.cd

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #3
  %i.jg = load <4 x i32>, ptr %25, align 16       ; 7 uses
  %i.jh = shufflevector <4 x i32> %i.jg, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.ji = load <4 x i32>, ptr %17, align 16, !tbaa !34 ; 2 uses
  %i.jj = sub <4 x i32> %i.jh, %i.ji
  %i.jk = bitcast <4 x i32> %i.jj to <2 x i64>    ; 2 uses
  %.sroa.0660.0.vec.extract = extractelement <2 x i64> %i.jk, i64 0
  %.sroa.0660.8.vec.extract = extractelement <2 x i64> %i.jk, i64 1
  %i.jl = bitcast i64 %.sroa.0660.0.vec.extract to <2 x i32> ; 3 uses
  %i.jm = bitcast i64 %.sroa.0660.8.vec.extract to <2 x i32> ; 3 uses
  %i.jn = extractelement <4 x i32> %i.jg, i64 0
  %i.jo = extractelement <4 x i32> %i.jg, i64 2
  br i1 %i.bh, label %bb.q, label %_ZN11OpenImageIO4v3_14simdrMERNS1_5vint4ERKS2_.exit

bb.q:                                             ; preds = %bb.p
  %i.jp = and <2 x i32> %i.jl, %i.as
  %i.jq = and <2 x i32> %i.jm, %i.at
  %i.jr = shufflevector <2 x i32> %i.jp, <2 x i32> %i.jq, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.js = bitcast <4 x i32> %i.jr to <2 x i64>    ; 2 uses
  %.sroa.0736.0.vec.extract = extractelement <2 x i64> %i.js, i64 0
  %.sroa.0736.8.vec.extract = extractelement <2 x i64> %i.js, i64 1
  br label %bb.r

_ZN11OpenImageIO4v3_14simdrMERNS1_5vint4ERKS2_.exit: ; preds = %bb.p
  %.sroa.01127.0.vec.extract1134 = extractelement <2 x i32> %i.jl, i64 0
  %i.jt = srem i32 %.sroa.01127.0.vec.extract1134, %i.ap
  %.sroa.01152.0.insert.ext = zext i32 %i.jt to i64
  %.sroa.01127.4.vec.extract = extractelement <2 x i32> %i.jl, i64 1
  %i.ju = srem i32 %.sroa.01127.4.vec.extract, %i.ap
  %.sroa.01152.4.insert.ext = zext i32 %i.ju to i64
  %.sroa.01152.4.insert.shift = shl nuw i64 %.sroa.01152.4.insert.ext, 32
  %.sroa.01152.4.insert.insert = or disjoint i64 %.sroa.01152.4.insert.shift, %.sroa.01152.0.insert.ext
  %.sroa.01127.8.vec.extract1140 = extractelement <2 x i32> %i.jm, i64 0
  %i.jv = srem i32 %.sroa.01127.8.vec.extract1140, %i.ao
  %.sroa.51153.8.insert.ext = zext i32 %i.jv to i64
  %.sroa.01127.12.vec.extract = extractelement <2 x i32> %i.jm, i64 1
  %i.jw = srem i32 %.sroa.01127.12.vec.extract, %i.ao
  %.sroa.51153.12.insert.ext = zext i32 %i.jw to i64
  %.sroa.51153.12.insert.shift = shl nuw i64 %.sroa.51153.12.insert.ext, 32
  %.sroa.51153.12.insert.insert = or disjoint i64 %.sroa.51153.12.insert.shift, %.sroa.51153.8.insert.ext
  br label %bb.r

bb.r:                                             ; preds = %_ZN11OpenImageIO4v3_14simdrMERNS1_5vint4ERKS2_.exit, %bb.q
  %storemerge1050 = phi i64 [ %.sroa.01152.4.insert.insert, %_ZN11OpenImageIO4v3_14simdrMERNS1_5vint4ERKS2_.exit ], [ %.sroa.0736.0.vec.extract, %bb.q ] ; 2 uses
  %storemerge = phi i64 [ %.sroa.51153.12.insert.insert, %_ZN11OpenImageIO4v3_14simdrMERNS1_5vint4ERKS2_.exit ], [ %.sroa.0736.8.vec.extract, %bb.q ] ; 2 uses
  %.sroa.01127.0.vec.extract = trunc i64 %storemerge1050 to i32 ; 2 uses
  %i.jx = icmp ne i32 %.sroa.0637.0.vec.extract, %.sroa.01127.0.vec.extract
  %i.jy = shufflevector <4 x i32> %i.jg, <4 x i32> poison, <2 x i32> <i32 2, i32 0>
  %i.jz = add nsw <2 x i32> %i.jy, splat (i32 1)
  %.sroa.01127.8.vec.extract = trunc i64 %storemerge to i32 ; 2 uses
  %i.ka = icmp ne i32 %.sroa.0637.8.vec.extract, %.sroa.01127.8.vec.extract
  %i.kb = shufflevector <4 x i32> %i.jg, <4 x i32> poison, <2 x i32> <i32 3, i32 1>
  %i.kc = icmp eq <2 x i32> %i.jz, %i.kb          ; 2 uses
  %i.kd = extractelement <2 x i1> %i.kc, i64 1
  %i.ke = and i1 %i.jx, %i.kd
  %i.kf = extractelement <2 x i1> %i.kc, i64 0
  %i.kg = and i1 %i.ka, %i.kf
  %i.kh = and i1 %i.ke, %i.kg
  %i.ki = icmp eq i4 %i.je, -1
  %or.cond1040 = and i1 %i.ki, %i.kh
  br i1 %or.cond1040, label %bb.s, label %_ZN11OpenImageIO4v3_14simdrmERKNS1_5vint4ES4_.exit

bb.s:                                             ; preds = %bb.r
  %i.kj = sub nsw i32 %i.jn, %.sroa.01127.0.vec.extract
  %i.kk = sub nsw i32 %i.jo, %.sroa.01127.8.vec.extract
  store i32 %i.kj, ptr %19, align 8, !tbaa !313
  store i32 %i.kk, ptr %i.cc, align 4, !tbaa !315
  %i.kl = icmp eq i64 %indvars.iv1124, 0
  %i.km = load ptr, ptr %i.cx, align 8, !tbaa !92
  %i.kn = call noundef zeroext i1 @_ZN11OpenImageIO4v3_114ImageCacheImpl9find_tileERKNS0_6TileIDEPNS0_23ImageCachePerThreadInfoEb(ptr noundef nonnull align 64 dereferenceable(25240) %i.km, ptr noundef nonnull align 8 dereferenceable(40) %19, ptr noundef %6, i1 noundef zeroext %i.kl)
  br i1 %i.kn, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #3
  %i.ko = load ptr, ptr %i.cx, align 8, !tbaa !92
  call void @_ZNK11OpenImageIO4v3_114ImageCacheImpl8geterrorB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %28, ptr noundef nonnull align 64 dereferenceable(25240) %i.ko, i1 noundef zeroext true)
  invoke void @_ZNK11OpenImageIO4v3_117TextureSystemImpl5errorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull @.str.53, ptr noundef nonnull align 8 dereferenceable(32) %28)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.kp = load ptr, ptr %28, align 8, !tbaa !30   ; 2 uses
  %i.kq = icmp eq ptr %i.kp, %i.dk
  br i1 %i.kq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.u
  %i.kr = load i64, ptr %i.dk, align 8, !tbaa !34
  %i.ks = add i64 %i.kr, 1
  call void @_ZdlPvm(ptr noundef %i.kp, i64 noundef %i.ks) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #3
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.kt = landingpad { ptr, i32 }
          cleanup
  %i.ku = load ptr, ptr %28, align 8, !tbaa !30   ; 2 uses
  %i.kv = icmp eq ptr %i.ku, %i.dk
  br i1 %i.kv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit511, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i509

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i509: ; preds = %bb.v
  %i.kw = load i64, ptr %i.dk, align 8, !tbaa !34
  %i.kx = add i64 %i.kw, 1
  call void @_ZdlPvm(ptr noundef %i.ku, i64 noundef %i.kx) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit511

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit511: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i509
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #3
  br label %bb.ce

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.s
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_117TextureSystemImpl14sample_bicubicEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_:bb.a
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
  %i.ee = getelementptr inbounds nuw i8, ptr %31, i64 64 ; 2 uses
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
  %39 = call float @llvm.floor.f32(float %i.iv)
  %i.iw = extractelement <4 x float> %bc136.i, i64 1
  %40 = call float @llvm.floor.f32(float %i.iw)
  %41 = extractelement <4 x float> %bc136.i, i64 2
  %i.ix = call float @llvm.floor.f32(float %41)
  %42 = extractelement <4 x float> %bc136.i, i64 3
  %i.iy = call float @llvm.floor.f32(float %42)
  %i.iz = insertelement <2 x float> poison, float %39, i64 0
  %i.ja = insertelement <2 x float> %i.iz, float %i.ix, i64 1
  %i.jb = bitcast <2 x float> %i.ja to <2 x i32>
  %i.jc = insertelement <2 x float> poison, float %40, i64 0
  %i.jd = insertelement <2 x float> %i.jc, float %i.iy, i64 1
  %i.je = bitcast <2 x float> %i.jd to <2 x i32>
  %i.jf = zext <2 x i32> %i.je to <2 x i64>
  %i.jg = shl nuw <2 x i64> %i.jf, splat (i64 32)
  %i.jh = zext <2 x i32> %i.jb to <2 x i64>
  %i.ji = or disjoint <2 x i64> %i.jg, %i.jh
  %i.jj = bitcast <2 x i64> %i.ji to <4 x float>  ; 2 uses
  %i.jk = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.jj) ; 2 uses
  store <4 x i32> %i.jk, ptr %23, align 16, !tbaa !34
  %i.jl = fsub <4 x float> %bc136.i, %i.jj        ; 2 uses
  store <4 x float> %i.jl, ptr %25, align 16
  %bc140.i = bitcast <4 x i32> %.sroa.086.8.vecblend.i to <4 x float> ; 5 uses
  %i.jm = extractelement <4 x float> %bc140.i, i64 0
  %43 = call float @llvm.floor.f32(float %i.jm)
  %i.jn = extractelement <4 x float> %bc140.i, i64 1
  %44 = call float @llvm.floor.f32(float %i.jn)
  %45 = extractelement <4 x float> %bc140.i, i64 2
  %i.jo = call float @llvm.floor.f32(float %45)
  %46 = extractelement <4 x float> %bc140.i, i64 3
  %i.jp = call float @llvm.floor.f32(float %46)
  %i.jq = insertelement <2 x float> poison, float %43, i64 0
  %i.jr = insertelement <2 x float> %i.jq, float %i.jo, i64 1
  %i.js = bitcast <2 x float> %i.jr to <2 x i32>
  %i.jt = insertelement <2 x float> poison, float %44, i64 0
  %i.ju = insertelement <2 x float> %i.jt, float %i.jp, i64 1
  %i.jv = bitcast <2 x float> %i.ju to <2 x i32>
  %i.jw = zext <2 x i32> %i.jv to <2 x i64>
  %i.jx = shl nuw <2 x i64> %i.jw, splat (i64 32)
  %i.jy = zext <2 x i32> %i.js to <2 x i64>
  %i.jz = or disjoint <2 x i64> %i.jx, %i.jy
  %i.ka = bitcast <2 x i64> %i.jz to <4 x float>  ; 2 uses
  %i.kb = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.ka) ; 2 uses
  store <4 x i32> %i.kb, ptr %24, align 16, !tbaa !34
  %i.kc = fsub <4 x float> %bc140.i, %i.ka        ; 2 uses
  store <4 x float> %i.kc, ptr %26, align 16
  %i.kd = extractelement <4 x i32> %i.jk, i64 0
  %i.ke = extractelement <4 x i32> %i.kb, i64 0
  %i.kf = extractelement <4 x float> %i.jl, i64 0
  %i.kg = extractelement <4 x float> %i.kc, i64 0
  br label %bb.g

bb.g:                                             ; preds = %.split, %_ZN11OpenImageIO4v3_116st_to_texel_simdERKNS0_4simd7vfloat4ES4_RNS0_14ImageCacheFileERKNS5_9ImageDimsERNS1_5vint4ESB_RS2_SC_.exit
  %i.kh = phi float [ %i.kg, %_ZN11OpenImageIO4v3_116st_to_texel_simdERKNS0_4simd7vfloat4ES4_RNS0_14ImageCacheFileERKNS5_9ImageDimsERNS1_5vint4ESB_RS2_SC_.exit ], [ %.pre2377, %.split ] ; 6 uses
  %i.ki = phi float [ %i.kf, %_ZN11OpenImageIO4v3_116st_to_texel_simdERKNS0_4simd7vfloat4ES4_RNS0_14ImageCacheFileERKNS5_9ImageDimsERNS1_5vint4ESB_RS2_SC_.exit ], [ %.pre2376, %.split ] ; 6 uses
  %i.kj = phi i32 [ %i.ke, %_ZN11OpenImageIO4v3_116st_to_texel_simdERKNS0_4simd7vfloat4ES4_RNS0_14ImageCacheFileERKNS5_9ImageDimsERNS1_5vint4ESB_RS2_SC_.exit ], [ %.pre2375, %.split ]
  %i.kk = phi i32 [ %i.kd, %_ZN11OpenImageIO4v3_116st_to_texel_simdERKNS0_4simd7vfloat4ES4_RNS0_14ImageCacheFileERKNS5_9ImageDimsERNS1_5vint4ESB_RS2_SC_.exit ], [ %.pre2374, %.split ]
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv2349
  %i.km = load float, ptr %i.kl, align 4, !tbaa !26 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #3
  %i.kn = insertelement <4 x i32> poison, i32 %i.kk, i64 0
  %i.ko = shufflevector <4 x i32> %i.kn, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.kp = add <4 x i32> %i.ko, <i32 -1, i32 0, i32 1, i32 2>
  store <4 x i32> %i.kp, ptr %27, align 16
  %i.kq = insertelement <4 x i32> poison, i32 %i.kj, i64 0
  %i.kr = shufflevector <4 x i32> %i.kq, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ks = add <4 x i32> %i.kr, <i32 -1, i32 0, i32 1, i32 2>
  store <4 x i32> %i.ks, ptr %28, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #3
  %i.kt = call { i64, i64 } %i.u(ptr noundef nonnull align 16 dereferenceable(16) %27, ptr noundef nonnull align 16 dereferenceable(16) %17, ptr noundef nonnull align 16 dereferenceable(16) %19) ; 2 uses
  %i.ku = extractvalue { i64, i64 } %i.kt, 0
  store i64 %i.ku, ptr %29, align 16
  %i.kv = extractvalue { i64, i64 } %i.kt, 1
  store i64 %i.kv, ptr %i.de, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #3
  %i.kw = call { i64, i64 } %i.z(ptr noundef nonnull align 16 dereferenceable(16) %28, ptr noundef nonnull align 16 dereferenceable(16) %18, ptr noundef nonnull align 16 dereferenceable(16) %20) ; 2 uses
  %i.kx = extractvalue { i64, i64 } %i.kw, 0
  store i64 %i.kx, ptr %30, align 16
  %i.ky = extractvalue { i64, i64 } %i.kw, 1
  store i64 %i.ky, ptr %i.df, align 8
  %i.kz = load <4 x i32>, ptr %29, align 16, !tbaa !34 ; 3 uses
  %i.la = load <4 x i32>, ptr %30, align 16, !tbaa !34 ; 3 uses
  %i.lb = or <4 x i32> %i.la, %i.kz
  %i.lc = icmp slt <4 x i32> %i.lb, zeroinitializer
  %i.ld = bitcast <4 x i1> %i.lc to i4
  %i.le = icmp eq i4 %i.ld, 0                     ; 2 uses
  %i.lf = load i8, ptr %i.bs, align 2
  %i.lg = trunc i8 %i.lf to i1
  %or.cond.not = or i1 %i.le, %i.lg
  br i1 %or.cond.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.lh = load <4 x i32>, ptr %17, align 16, !tbaa !34
  %i.li = load <4 x i32>, ptr %27, align 16       ; 3 uses
  %i.lj = icmp sge <4 x i32> %i.li, %i.lh
  %i.lk = icmp sgt <4 x i32> %i.ap, %i.li
  %i.ll = and <4 x i1> %i.lj, %i.lk
  %i.lm = bitcast <4 x i32> %i.kz to <4 x float>
  %i.ln = select <4 x i1> %i.ll, <4 x float> %i.lm, <4 x float> zeroinitializer
  store <4 x float> %i.ln, ptr %29, align 16
  %i.lo = load <4 x i32>, ptr %18, align 16, !tbaa !34
  %i.lp = load <4 x i32>, ptr %28, align 16       ; 3 uses
  %i.lq = icmp sge <4 x i32> %i.lp, %i.lo
  %i.lr = icmp sgt <4 x i32> %i.aq, %i.lp
  %i.ls = and <4 x i1> %i.lq, %i.lr
  %i.lt = bitcast <4 x i32> %i.la to <4 x float>
  %i.lu = select <4 x i1> %i.ls, <4 x float> %i.lt, <4 x float> zeroinitializer ; 2 uses
  store <4 x float> %i.lu, ptr %30, align 16
  %i.lv = load <4 x i32>, ptr %29, align 16, !tbaa !34 ; 2 uses
  %.cast = bitcast <4 x float> %i.lu to <4 x i32> ; 2 uses
  %i.lw = and <4 x i32> %i.lv, %.cast
  %i.lx = or <4 x i32> %i.lv, %.cast
  %i.ly = icmp slt <4 x i32> %i.lx, zeroinitializer
  %i.lz = bitcast <4 x i1> %i.ly to i4
  %.not = icmp eq i4 %i.lz, 0
  %i.ma = extractelement <4 x i32> %i.li, i64 0
  %i.mb = extractelement <4 x i32> %i.lp, i64 0
  br i1 %.not, label %.thread2412, label %bb.j

bb.i:                                             ; preds = %bb.g
  br i1 %i.le, label %.thread2412, label %._crit_edge2378

._crit_edge2378:                                  ; preds = %bb.i
  %i.mc = and <4 x i32> %i.la, %i.kz
  %.pre2379 = load i32, ptr %27, align 16, !tbaa !3
  %.pre2380 = load i32, ptr %28, align 16, !tbaa !3
  br label %bb.j

.thread2412:                                      ; preds = %bb.i, %bb.h
  %i.md = fadd float %.03122255, %i.km
  br label %bb.bz

bb.j:                                             ; preds = %._crit_edge2378, %bb.h
  %i.me = phi i32 [ %i.mb, %bb.h ], [ %.pre2380, %._crit_edge2378 ] ; 2 uses
  %i.mf = phi i32 [ %i.ma, %bb.h ], [ %.pre2379, %._crit_edge2378 ] ; 2 uses
  %.0329.in2124.in.in.in = phi <4 x i32> [ %i.lw, %bb.h ], [ %i.mc, %._crit_edge2378 ]
  %.0329.in2124.in.in = icmp sgt <4 x i32> %.0329.in2124.in.in.in, splat (i32 -1)
  %.0329.in2124.in = bitcast <4 x i1> %.0329.in2124.in.in to i4
  %.0329.in2124 = icmp eq i4 %.0329.in2124.in, 0  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #3
  %i.mg = load i32, ptr %i.n, align 4, !tbaa !329
  %i.mh = sub nsw i32 %i.mf, %i.mg                ; 2 uses
  %i.mi = load i32, ptr %i.ad, align 4, !tbaa !326
  %i.mj = sub nsw i32 %i.me, %i.mi                ; 2 uses
  br i1 %i.bh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.mk = and i32 %i.mh, %i.bi
  %i.ml = and i32 %i.mj, %i.bk
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.mm = load i32, ptr %i.av, align 4, !tbaa !331
  %i.mn = srem i32 %i.mh, %i.mm
  %i.mo = load i32, ptr %i.bj, align 4, !tbaa !328
  %i.mp = srem i32 %i.mj, %i.mo
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0333 = phi i32 [ %i.ml, %bb.k ], [ %i.mp, %bb.l ] ; 3 uses
  %.0332 = phi i32 [ %i.mk, %bb.k ], [ %i.mn, %bb.l ] ; 3 uses
  %i.mq = icmp sle i32 %.0332, %i.dg              ; 2 uses
  %i.mr = icmp sle i32 %.0333, %i.dh              ; 2 uses
  %i.ms = and i1 %i.mr, %i.mq
  br i1 %i.ms, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.mt = load <4 x i32>, ptr %27, align 16, !tbaa !34 ; 2 uses
  %i.mu = shufflevector <4 x i32> %i.mt, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.mv = add <4 x i32> %i.mu, <i32 0, i32 1, i32 2, i32 3>
  %i.mw = icmp ne <4 x i32> %i.mt, %i.mv
  %i.mx = bitcast <4 x i1> %i.mw to i4
  %i.my = icmp eq i4 %i.mx, 0
  %i.mz = load <4 x i32>, ptr %28, align 16, !tbaa !34 ; 2 uses
  %i.na = shufflevector <4 x i32> %i.mz, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.nb = add <4 x i32> %i.na, <i32 0, i32 1, i32 2, i32 3>
  %i.nc = icmp ne <4 x i32> %i.mz, %i.nb
  %i.nd = bitcast <4 x i1> %i.nc to i4
  %i.ne = icmp eq i4 %i.nd, 0
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0335.in = phi i1 [ %i.ne, %bb.n ], [ %i.mr, %bb.m ]
  %.0334.in = phi i1 [ %i.my, %bb.n ], [ %i.mq, %bb.m ]
  %i.nf = and i1 %.0335.in, %.0334.in
  %i.ng = and i1 %.0329.in2124, %i.nf
  br i1 %i.ng, label %bb.p, label %_ZN11OpenImageIO4v3_14simdrmERKNS1_5vint4Ei.exit958

bb.p:                                             ; preds = %bb.o
  %i.nh = sub nsw i32 %i.mf, %.0332
  %i.ni = sub nsw i32 %i.me, %.0333
  store i32 %i.nh, ptr %21, align 8, !tbaa !313
  store i32 %i.ni, ptr %i.cf, align 4, !tbaa !315
  %i.nj = icmp eq i64 %indvars.iv2349, 0
  %i.nk = load ptr, ptr %i.dp, align 8, !tbaa !92
  %i.nl = call noundef zeroext i1 @_ZN11OpenImageIO4v3_114ImageCacheImpl9find_tileERKNS0_6TileIDEPNS0_23ImageCachePerThreadInfoEb(ptr noundef nonnull align 64 dereferenceable(25240) %i.nk, ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef %6, i1 noundef zeroext %i.nj)
  br i1 %i.nl, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.nm = load ptr, ptr %i.dp, align 8, !tbaa !92
  %i.nn = call noundef zeroext i1 @_ZNK11OpenImageIO4v3_114ImageCacheImpl9has_errorEv(ptr noundef nonnull align 64 dereferenceable(25240) %i.nm)
  br i1 %i.nn, label %bb.r, label %.loopexit2197.loopexit

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #3
  %i.no = load ptr, ptr %i.dp, align 8, !tbaa !92
  call void @_ZNK11OpenImageIO4v3_114ImageCacheImpl8geterrorB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %32, ptr noundef nonnull align 64 dereferenceable(25240) %i.no, i1 noundef zeroext true)
  invoke void @_ZNK11OpenImageIO4v3_117TextureSystemImpl5errorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull @.str.53, ptr noundef nonnull align 8 dereferenceable(32) %32)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.np = load ptr, ptr %32, align 8, !tbaa !30   ; 2 uses
  %i.nq = icmp eq ptr %i.np, %i.ec
  br i1 %i.nq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.s
  %i.nr = load i64, ptr %i.ec, align 8, !tbaa !34
  %i.ns = add i64 %i.nr, 1
  call void @_ZdlPvm(ptr noundef %i.np, i64 noundef %i.ns) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #3
  br label %.loopexit2197.loopexit

bb.t:                                             ; preds = %bb.r
  %i.nt = landingpad { ptr, i32 }
          cleanup
  %i.nu = load ptr, ptr %32, align 8, !tbaa !30   ; 2 uses
  %i.nv = icmp eq ptr %i.nu, %i.ec
  br i1 %i.nv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1141: ; preds = %bb.t
  %i.nw = load i64, ptr %i.ec, align 8, !tbaa !34
  %i.nx = add i64 %i.nw, 1
end_hunk_1

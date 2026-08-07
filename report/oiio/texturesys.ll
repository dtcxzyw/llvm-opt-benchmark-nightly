inline.NumInlined: 5128
inline.NumDeleted: 1476
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 52
loop-unroll.NumUnrolled: 108
begin_hunk_0_@_ZN11OpenImageIO4v3_117TextureSystemImpl14sample_closestEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_:bb.a
  %i.fm = sub nsw i32 %i.ab, %i.fb
  %i.fn = sext i32 %i.fm to i64
  %i.fo = add i64 %i.fl, %i.fn                    ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ex, i64 48
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !108 ; 4 uses
  switch i8 %i.q, label %bb.z [
    i8 2, label %bb.w
    i8 4, label %bb.x
    i8 10, label %bb.y
  ]

bb.w:                                             ; preds = %bb.v
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fo
  %i.fs = load float, ptr %i.fr, align 1, !tbaa !34
  %i.ft = insertelement <4 x float> poison, float %i.fs, i64 0
  %i.fu = bitcast <4 x float> %i.ft to <16 x i8>
  %i.fv = shufflevector <16 x i8> %i.fu, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fw = bitcast <16 x i8> %i.fv to <8 x i16>
  %i.fx = shufflevector <8 x i16> %i.fw, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fy = bitcast <8 x i16> %i.fx to <4 x i32>
  %i.fz = uitofp nneg <4 x i32> %i.fy to <4 x float>
  %i.ga = load <4 x float>, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_17u8scaleE.0, align 16, !tbaa !34
  %i.gb = fmul <4 x float> %i.ga, %i.fz
  %i.gc = bitcast <4 x float> %i.gb to <2 x i64>
  br label %bb.aa

bb.x:                                             ; preds = %bb.v
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %i.fq, i64 %i.fo
  %i.ge = load <4 x i16>, ptr %i.gd, align 2, !tbaa !489
  %i.gf = uitofp <4 x i16> %i.ge to <4 x float>
  %i.gg = load <4 x float>, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_18u16scaleE.0, align 16, !tbaa !34
  %i.gh = fmul <4 x float> %i.gg, %i.gf
  %i.gi = bitcast <4 x float> %i.gh to <2 x i64>
  br label %bb.aa

bb.y:                                             ; preds = %bb.v
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %i.fq, i64 %i.fo
  %i.gk = load <4 x i16>, ptr %i.gj, align 2, !tbaa !489 ; 2 uses
  %i.gl = and <4 x i16> %i.gk, splat (i16 32767)  ; 2 uses
  %i.gm = zext nneg <4 x i16> %i.gl to <4 x i32>
  %i.gn = shl nuw nsw <4 x i32> %i.gm, splat (i32 13)
  %i.go = bitcast <4 x i32> %i.gn to <4 x float>
  %i.gp = fmul nnan <4 x float> %i.go, splat (float f0x77800000)
  %i.gq = icmp samesign ugt <4 x i16> %i.gl, splat (i16 31743)
  %i.gr = select <4 x i1> %i.gq, <4 x i32> splat (i32 2139095040), <4 x i32> zeroinitializer
  %.signext = sext <4 x i16> %i.gk to <4 x i32>
  %i.gs = and <4 x i32> %.signext, splat (i32 -2147483648)
  %i.gt = or disjoint <4 x i32> %i.gr, %i.gs
  %i.gu = bitcast <4 x float> %i.gp to <4 x i32>
  %i.gv = or <4 x i32> %i.gt, %i.gu
  %i.gw = bitcast <4 x i32> %i.gv to <2 x i64>
  br label %bb.aa

bb.z:                                             ; preds = %bb.v
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.fo
  %i.gy = load <2 x i64>, ptr %i.gx, align 1, !tbaa !34
  br label %bb.aa

bb.aa:                                            ; preds = %bb.x, %bb.z, %bb.y, %bb.w
  %.sroa.0148.1 = phi <2 x i64> [ %i.gy, %bb.z ], [ %i.gc, %bb.w ], [ %i.gi, %bb.x ], [ %i.gw, %bb.y ]
  %i.gz = bitcast <2 x i64> %.sroa.0148.1 to <4 x float>
  %i.ha = insertelement <4 x float> poison, float %i.bv, i64 0
  %i.hb = shufflevector <4 x float> %i.ha, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hc = fmul <4 x float> %i.hb, %i.gz
  %i.hd = bitcast <2 x i64> %.sroa.0157.0186 to <4 x float>
  %i.he = fadd <4 x float> %i.hc, %i.hd
  %i.hf = bitcast <4 x float> %i.he to <2 x i64>
  br label %bb.ab

bb.ab:                                            ; preds = %.thread, %bb.aa, %bb.u, %bb.p
  %.sroa.0157.1 = phi <2 x i64> [ %i.hf, %bb.aa ], [ %.sroa.0157.0186, %bb.u ], [ %.sroa.0157.0186, %bb.p ], [ %.sroa.0157.0186, %.thread ] ; 2 uses
  %.1102 = phi float [ %.0101188, %bb.aa ], [ %.0101188, %bb.u ], [ %i.dx, %bb.p ], [ %.0101188, %.thread ] ; 2 uses
  %.2 = phi i1 [ %.0189, %bb.aa ], [ false, %bb.u ], [ %.0189, %bb.p ], [ false, %.thread ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !490

bb.ac:                                            ; preds = %._crit_edge
  %i.hg = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.hh = load float, ptr %i.hg, align 8, !tbaa !259 ; 2 uses
  %i.hi = fcmp une float %i.hh, 0.000000e+00
  br i1 %i.hi, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.hj = fsub nnan float 1.000000e+00, %.0101.lcssa
  %i.hk = fmul float %i.hj, %i.hh
  %i.hl = insertelement <4 x float> poison, float %i.hk, i64 0
  %i.hm = xor <4 x i32> %.sroa.0143.0.copyload181, splat (i32 -1)
  %i.hn = bitcast <4 x float> %i.hl to <4 x i32>
  %i.ho = shufflevector <4 x i32> %i.hn, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.hp = and <4 x i32> %i.ho, %i.hm
  %i.hq = bitcast <2 x i64> %i.bn to <4 x float>
  %i.hr = bitcast <4 x i32> %i.hp to <4 x float>
  %i.hs = fadd <4 x float> %i.hq, %i.hr
  %i.ht = bitcast <4 x float> %i.hs to <2 x i64>
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %._crit_edge
  %.sroa.0157.2 = phi <2 x i64> [ %i.ht, %bb.ad ], [ %i.bn, %bb.ac ], [ %i.bn, %._crit_edge ]
  store <2 x i64> %.sroa.0157.2, ptr %11, align 16, !tbaa !34
  %.not = icmp eq ptr %12, null
  br i1 %.not, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store <4 x float> zeroinitializer, ptr %12, align 16, !tbaa !34
  store <4 x float> zeroinitializer, ptr %13, align 16, !tbaa !34
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #3
  ret i1 %.0.lcssa
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl15sample_bilinearEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(400) %5, ptr noundef %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(76) %7, i32 noundef %8, i32 noundef %9, ptr nofree noundef readonly captures(none) %10, ptr nofree noundef writeonly captures(none) %11, ptr nofree noundef writeonly captures(address_is_null) %12, ptr nofree noundef writeonly captures(none) %13) #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %14 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 12 uses
  %15 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %17 = alloca %"class.OpenImageIO::v3_1::simd::vint4", align 16 ; 7 uses
  %18 = alloca %"class.OpenImageIO::v3_1::simd::vint4", align 16 ; 6 uses
  %19 = alloca %"struct.OpenImageIO::v3_1::TileID", align 8 ; 17 uses
  %20 = alloca %"class.OpenImageIO::v3_1::simd::vfloat4", align 16 ; 12 uses
  %21 = alloca %"class.OpenImageIO::v3_1::simd::vint4", align 16 ; 5 uses
  %22 = alloca %"class.OpenImageIO::v3_1::simd::vint4", align 16 ; 5 uses
  %23 = alloca %"class.OpenImageIO::v3_1::simd::vfloat4", align 16 ; 5 uses
  %24 = alloca %"class.OpenImageIO::v3_1::simd::vfloat4", align 16 ; 5 uses
  %25 = alloca %"class.OpenImageIO::v3_1::simd::vint4", align 16 ; 12 uses
  %26 = alloca %"class.OpenImageIO::v3_1::simd::vbool4", align 16 ; 14 uses
  %27 = alloca [2 x [2 x %"class.OpenImageIO::v3_1::simd::vfloat4"]], align 16 ; 16 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %29 = alloca %"class.OpenImageIO::v3_1::simd::vint4", align 16 ; 10 uses
  %30 = alloca %"class.OpenImageIO::v3_1::simd::vint4", align 16 ; 8 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !197  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.e = sext i32 %i.c to i64
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !198
  %i.g = getelementptr inbounds nuw [128 x i8], ptr %i.f, i64 %i.e ; 4 uses
  %i.h = sext i32 %4 to i64
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !294
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.h ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !295  ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = select i1 %.not.i, ptr %i.m, ptr %i.k    ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.p = load i8, ptr %i.o, align 8, !tbaa !479   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !245
  %i.s = zext i8 %i.r to i64                      ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @_ZN11OpenImageIO4v3_117TextureSystemImpl14wrap_functionsE, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !51   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 17
  %i.w = load i8, ptr %i.v, align 1, !tbaa !248
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr @_ZN11OpenImageIO4v3_117TextureSystemImpl14wrap_functionsE, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !51   ; 3 uses
  %i.aa = icmp eq ptr %i.u, %i.z
  %indvars.iv.sroa.gep1190 = getelementptr inbounds nuw i8, ptr %30, i64 4
  %indvars.iv.sroa.gep1193 = getelementptr inbounds nuw i8, ptr %29, i64 4
  %indvars.iv1122.sroa.gep1194 = getelementptr inbounds nuw i8, ptr %27, i64 32
  %indvars.iv1122.sroa.gep1197 = getelementptr inbounds nuw i8, ptr %27, i64 32
  %indvars.iv.sroa.gep1200 = getelementptr inbounds nuw i8, ptr %26, i64 4
  br i1 %i.aa, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr @_ZN11OpenImageIO4v3_13pvtL19wrap_functions_simdE, i64 %i.s
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !51
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.ad = phi ptr [ %i.ac, %bb.b ], [ null, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.n, align 4, !tbaa !3
  %i.ag = shufflevector <2 x i32> %i.af, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  store <4 x i32> %i.ag, ptr %17, align 16, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #3
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 12 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  %i.aj = load <2 x i32>, ptr %i.ah, align 4, !tbaa !3
  %i.ak = shufflevector <2 x i32> %i.aj, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  store <4 x i32> %i.ak, ptr %18, align 16, !tbaa !34
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 5 uses
  %i.am = load <2 x i32>, ptr %i.al, align 4, !tbaa !3 ; 3 uses
  %i.an = shufflevector <2 x i32> %i.am, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ao = extractelement <2 x i32> %i.am, i64 1   ; 6 uses
  %i.ap = extractelement <2 x i32> %i.am, i64 0   ; 6 uses
  %i.aq = add <4 x i32> %i.an, splat (i32 -1)
  %i.ar = bitcast <4 x i32> %i.aq to <2 x i64>    ; 2 uses
  %.sroa.0662.0.vec.extract = extractelement <2 x i64> %i.ar, i64 0
  %.sroa.0662.8.vec.extract = extractelement <2 x i64> %i.ar, i64 1
  %i.as = bitcast i64 %.sroa.0662.0.vec.extract to <2 x i32> ; 2 uses
  %i.at = bitcast i64 %.sroa.0662.8.vec.extract to <2 x i32> ; 2 uses
  %i.au = icmp sgt i32 %8, %9
  br i1 %i.au, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.aw = load float, ptr %i.av, align 8, !tbaa !259
  %i.ax = fcmp une float %i.aw, 0.000000e+00
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ay = phi i1 [ false, %bb.c ], [ %i.ax, %bb.d ] ; 2 uses
  %i.az = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ap)
  %i.ba = icmp samesign ult i32 %i.az, 2
  %i.bb = icmp sgt i32 %i.ap, -1
  %i.bc = and i1 %i.bb, %i.ba
  br i1 %i.bc, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bd = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ao)
  %i.be = icmp samesign ult i32 %i.bd, 2
  %i.bf = icmp sgt i32 %i.ao, -1
  %i.bg = and i1 %i.bf, %i.be
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bh = phi i1 [ false, %bb.e ], [ %i.bg, %bb.f ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !491
  %i.bk = zext i32 %i.bj to i64                   ; 2 uses
  %i.bl = load i32, ptr %7, align 8, !tbaa !187   ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.n, i64 60
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !305 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !265
  %i.bq = icmp eq i32 %i.bp, 1
  br i1 %i.bq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.br = getelementptr inbounds nuw i8, ptr %i.j, i64 38
  %i.bs = load i8, ptr %i.br, align 2
  %i.bt = and i8 %i.bs, 2
  %i.bu = icmp ne i8 %i.bt, 0
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bv = phi i1 [ false, %bb.g ], [ %i.bu, %bb.h ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !113
  %i.by = icmp sle i32 %i.bn, %i.bx
  %or.cond = select i1 %i.by, i1 true, i1 %i.bv   ; 2 uses
  %i.bz = add nsw i32 %i.bl, %9
  %spec.select = select i1 %or.cond, i32 %i.bn, i32 %i.bz ; 2 uses
  %spec.select1040 = select i1 %or.cond, i32 0, i32 %i.bl ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #3
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 68
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !252
  store i32 0, ptr %19, align 8, !tbaa !307
  %i.cc = getelementptr inbounds nuw i8, ptr %19, i64 4 ; 3 uses
  store i32 0, ptr %i.cc, align 4, !tbaa !309
  %i.cd = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  store i32 0, ptr %i.cd, align 8, !tbaa !310
  %i.ce = getelementptr inbounds nuw i8, ptr %19, i64 12 ; 3 uses
  store i32 %i.c, ptr %i.ce, align 4, !tbaa !311
  %i.cf = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 3 uses
  store i32 %4, ptr %i.cf, align 8, !tbaa !312
  %i.cg = getelementptr inbounds nuw i8, ptr %19, i64 20 ; 5 uses
  %i.ch = trunc i32 %spec.select1040 to i16
  store i16 %i.ch, ptr %i.cg, align 4, !tbaa !313
  %i.ci = getelementptr inbounds nuw i8, ptr %19, i64 22 ; 4 uses
  %i.cj = trunc i32 %spec.select to i16
  store i16 %i.cj, ptr %i.ci, align 2, !tbaa !314
  %i.ck = getelementptr inbounds nuw i8, ptr %19, i64 24 ; 3 uses
  store i32 %i.cb, ptr %i.ck, align 8, !tbaa !315
  %i.cl = getelementptr inbounds nuw i8, ptr %19, i64 28
  store i32 0, ptr %i.cl, align 4, !tbaa !316
  %i.cm = getelementptr inbounds nuw i8, ptr %19, i64 32 ; 3 uses
  store ptr %5, ptr %i.cm, align 8, !tbaa !317
  %i.cn = icmp slt i32 %spec.select, %spec.select1040
  br i1 %i.cn, label %bb.j, label %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit

bb.j:                                             ; preds = %bb.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.m, i64 60
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !227
  %i.cq = trunc i32 %i.cp to i16
  store i16 %i.cq, ptr %i.ci, align 2, !tbaa !314
  br label %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit

_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit: ; preds = %bb.i, %bb.j
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
  %i.cw = getelementptr inbounds nuw i8, ptr %i.j, i64 38
  %.sroa.0637.0.vec.extract = extractelement <2 x i32> %i.as, i64 0
  %.sroa.0637.8.vec.extract = extractelement <2 x i32> %i.at, i64 0
  %i.cx = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 6 uses
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.df = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 7 uses
  %i.di = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 5 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %27, i64 32 ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %27, i64 48 ; 5 uses
  %i.dp = icmp sgt i32 %9, 0
  %wide.trip.count.i = zext i32 %9 to i64         ; 3 uses
  %wide.trip.count = zext nneg i32 %1 to i64
  %min.iters.check = icmp ult i32 %9, 8
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.ch
  %i.dq = phi <4 x i32> [ zeroinitializer, %.lr.ph ], [ %i.ach, %bb.ch ]
  %indvars.iv1125 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next1126, %bb.ch ] ; 9 uses
  %.02641113 = phi float [ 0.000000e+00, %.lr.ph ], [ %.3267965, %bb.ch ] ; 4 uses
  %.sroa.0632.11111 = phi <4 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0632.4938, %bb.ch ] ; 3 uses
  %.sroa.0634.11110 = phi <4 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0634.4937, %bb.ch ] ; 3 uses
  %i.dr = and i64 %indvars.iv1125, 3
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %.split284, label %.split

.split:                                           ; preds = %bb.k
  %i.dt = and i64 %indvars.iv1125, 3              ; 4 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %21, i64 %i.dt
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %i.dt
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %i.dt
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %24, i64 %i.dt
  %.pre = load i32, ptr %i.du, align 4, !tbaa !3
  %.pre1157 = load i32, ptr %i.dv, align 4, !tbaa !3
  %.0825.pre = load float, ptr %i.dw, align 4, !tbaa !26
  %.pre1159 = load float, ptr %i.dx, align 4, !tbaa !26
  %i.dy = insertelement <2 x float> poison, float %.pre1159, i64 0
  %i.dz = insertelement <2 x float> %i.dy, float %.0825.pre, i64 1
  %i.ea = insertelement <2 x i32> poison, i32 %.pre, i64 0
  %i.eb = insertelement <2 x i32> %i.ea, i32 %.pre1157, i64 1
  br label %bb.n

.split284:                                        ; preds = %bb.k
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv1125
  %i.ed = load <4 x float>, ptr %i.ec, align 1, !tbaa !34 ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv1125
  %i.ef = load <4 x float>, ptr %i.ee, align 1, !tbaa !34
  %i.eg = load i8, ptr %i.cs, align 1, !tbaa !480, !range !62, !noundef !63
  %i.eh = trunc nuw i8 %i.eg to i1
  %i.ei = load <2 x i32>, ptr %i.ah, align 4, !tbaa !3 ; 2 uses
  br i1 %i.eh, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.split284
  %i.ej = sitofp <2 x i32> %i.ei to <2 x float>   ; 2 uses
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> poison, <4 x i32> zeroinitializer
  %i.el = fmul <4 x float> %i.ed, %i.ek
  %i.em = shufflevector <2 x float> %i.ej, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.en = load <2 x i32>, ptr %i.n, align 4, !tbaa !3
  %i.eo = sitofp <2 x i32> %i.en to <2 x float>
  %i.ep = fadd <2 x float> %i.eo, splat (float -5.000000e-01) ; 2 uses
  %i.eq = shufflevector <2 x float> %i.ep, <2 x float> poison, <4 x i32> zeroinitializer
  %i.er = fadd <4 x float> %i.el, %i.eq
  %bc.i = bitcast <4 x float> %i.er to <2 x double> ; 2 uses
  %i.es = extractelement <2 x double> %bc.i, i64 0
  %i.et = extractelement <2 x double> %bc.i, i64 1
  %i.eu = bitcast double %i.es to <2 x i32>
  %i.ev = bitcast double %i.et to <2 x i32>
  %.sroa.096.8.vecblend104.i = shufflevector <2 x i32> %i.eu, <2 x i32> %i.ev, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ew = extractelement <2 x float> %i.ep, i64 1
  br label %_ZN11OpenImageIO4v3_116st_to_texel_simdERKNS0_4simd7vfloat4ES4_RNS0_14ImageCacheFileERKNS5_9ImageDimsERNS1_5vint4ESB_RS2_SC_.exit

bb.m:                                             ; preds = %.split284
  %i.ex = add nsw <2 x i32> %i.ei, splat (i32 -1)
  %i.ey = sitofp <2 x i32> %i.ex to <2 x float>   ; 2 uses
  %i.ez = shufflevector <2 x float> %i.ey, <2 x float> poison, <4 x i32> zeroinitializer
  %i.fa = fmul <4 x float> %i.ed, %i.ez
  %i.fb = shufflevector <2 x float> %i.ey, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fc = load <2 x i32>, ptr %i.n, align 4, !tbaa !3
  %i.fd = sitofp <2 x i32> %i.fc to <2 x float>   ; 2 uses
  %i.fe = shufflevector <2 x float> %i.fd, <2 x float> poison, <4 x i32> zeroinitializer
  %i.ff = fadd <4 x float> %i.fa, %i.fe
  %bc132.i = bitcast <4 x float> %i.ff to <2 x double> ; 2 uses
  %i.fg = extractelement <2 x double> %bc132.i, i64 0
  %i.fh = extractelement <2 x double> %bc132.i, i64 1
  %i.fi = bitcast double %i.fg to <2 x i32>
  %i.fj = bitcast double %i.fh to <2 x i32>
  %.sroa.096.8.vecblend.i = shufflevector <2 x i32> %i.fi, <2 x i32> %i.fj, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fk = extractelement <2 x float> %i.fd, i64 1
  br label %_ZN11OpenImageIO4v3_116st_to_texel_simdERKNS0_4simd7vfloat4ES4_RNS0_14ImageCacheFileERKNS5_9ImageDimsERNS1_5vint4ESB_RS2_SC_.exit

_ZN11OpenImageIO4v3_116st_to_texel_simdERKNS0_4simd7vfloat4ES4_RNS0_14ImageCacheFileERKNS5_9ImageDimsERNS1_5vint4ESB_RS2_SC_.exit: ; preds = %bb.l, %bb.m
  %.sink149.i = phi float [ %i.fk, %bb.m ], [ %i.ew, %bb.l ]
  %.pn1048 = phi <4 x float> [ %i.fb, %bb.m ], [ %i.em, %bb.l ]
  %.sroa.096.0.i = phi <4 x i32> [ %.sroa.096.8.vecblend.i, %bb.m ], [ %.sroa.096.8.vecblend104.i, %bb.l ]
  %.sink147.i = fmul <4 x float> %i.ef, %.pn1048
  %i.fl = insertelement <4 x float> poison, float %.sink149.i, i64 0
  %i.fm = shufflevector <4 x float> %i.fl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fn = fadd <4 x float> %.sink147.i, %i.fm
  %bc134.i = bitcast <4 x float> %i.fn to <2 x double> ; 2 uses
  %i.fo = extractelement <2 x double> %bc134.i, i64 0
  %i.fp = extractelement <2 x double> %bc134.i, i64 1
  %i.fq = bitcast double %i.fo to <2 x i32>
  %i.fr = bitcast double %i.fp to <2 x i32>
  %.sroa.086.8.vecblend.i = shufflevector <2 x i32> %i.fq, <2 x i32> %i.fr, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %bc136.i = bitcast <4 x i32> %.sroa.096.0.i to <4 x float> ; 5 uses
  %i.fs = extractelement <4 x float> %bc136.i, i64 0
  %i.ft = extractelement <4 x float> %bc136.i, i64 1
  %i.fu = extractelement <4 x float> %bc136.i, i64 2
  %i.fv = extractelement <4 x float> %bc136.i, i64 3
  %i.fw = call float @llvm.floor.f32(float %i.fu)
  %i.fx = call float @llvm.floor.f32(float %i.fs)
  %i.fy = call float @llvm.floor.f32(float %i.fv)
  %i.fz = call float @llvm.floor.f32(float %i.ft)
  %i.ga = insertelement <2 x float> poison, float %i.fx, i64 0
  %i.gb = insertelement <2 x float> %i.ga, float %i.fw, i64 1
  %i.gc = bitcast <2 x float> %i.gb to <2 x i32>
  %i.gd = insertelement <2 x float> poison, float %i.fz, i64 0
  %i.ge = insertelement <2 x float> %i.gd, float %i.fy, i64 1
  %i.gf = bitcast <2 x float> %i.ge to <2 x i32>
  %i.gg = zext <2 x i32> %i.gf to <2 x i64>
  %i.gh = shl nuw <2 x i64> %i.gg, splat (i64 32)
  %i.gi = zext <2 x i32> %i.gc to <2 x i64>
  %i.gj = or disjoint <2 x i64> %i.gh, %i.gi
  %i.gk = bitcast <2 x i64> %i.gj to <4 x float>  ; 2 uses
  %i.gl = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.gk) ; 2 uses
  store <4 x i32> %i.gl, ptr %21, align 16, !tbaa !34
  %i.gm = fsub <4 x float> %bc136.i, %i.gk        ; 2 uses
  store <4 x float> %i.gm, ptr %23, align 16
  %bc140.i = bitcast <4 x i32> %.sroa.086.8.vecblend.i to <4 x float> ; 5 uses
  %i.gn = extractelement <4 x float> %bc140.i, i64 0
  %i.go = extractelement <4 x float> %bc140.i, i64 1
  %i.gp = extractelement <4 x float> %bc140.i, i64 2
  %i.gq = extractelement <4 x float> %bc140.i, i64 3
  %i.gr = call float @llvm.floor.f32(float %i.gp)
  %i.gs = call float @llvm.floor.f32(float %i.gn)
  %i.gt = call float @llvm.floor.f32(float %i.gq)
  %i.gu = call float @llvm.floor.f32(float %i.go)
  %i.gv = insertelement <2 x float> poison, float %i.gs, i64 0
  %i.gw = insertelement <2 x float> %i.gv, float %i.gr, i64 1
  %i.gx = bitcast <2 x float> %i.gw to <2 x i32>
  %i.gy = insertelement <2 x float> poison, float %i.gu, i64 0
  %i.gz = insertelement <2 x float> %i.gy, float %i.gt, i64 1
  %i.ha = bitcast <2 x float> %i.gz to <2 x i32>
  %i.hb = zext <2 x i32> %i.ha to <2 x i64>
  %i.hc = shl nuw <2 x i64> %i.hb, splat (i64 32)
  %i.hd = zext <2 x i32> %i.gx to <2 x i64>
  %i.he = or disjoint <2 x i64> %i.hc, %i.hd
  %i.hf = bitcast <2 x i64> %i.he to <4 x float>  ; 2 uses
  %i.hg = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.hf) ; 2 uses
  store <4 x i32> %i.hg, ptr %22, align 16, !tbaa !34
  %i.hh = fsub <4 x float> %bc140.i, %i.hf        ; 2 uses
  store <4 x float> %i.hh, ptr %24, align 16
  %i.hi = shufflevector <4 x float> %i.hh, <4 x float> %i.gm, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.hj = bitcast <4 x float> %i.hi to <2 x i64>
  %i.hk = trunc <2 x i64> %i.hj to <2 x i32>
  %i.hl = bitcast <2 x i32> %i.hk to <2 x float>
  %i.hm = shufflevector <4 x i32> %i.gl, <4 x i32> %i.hg, <2 x i32> <i32 0, i32 4>
  br label %bb.n

bb.n:                                             ; preds = %.split, %_ZN11OpenImageIO4v3_116st_to_texel_simdERKNS0_4simd7vfloat4ES4_RNS0_14ImageCacheFileERKNS5_9ImageDimsERNS1_5vint4ESB_RS2_SC_.exit
  %i.hn = phi <2 x float> [ %i.hl, %_ZN11OpenImageIO4v3_116st_to_texel_simdERKNS0_4simd7vfloat4ES4_RNS0_14ImageCacheFileERKNS5_9ImageDimsERNS1_5vint4ESB_RS2_SC_.exit ], [ %i.dz, %.split ] ; 4 uses
  %i.ho = phi <2 x i32> [ %i.hm, %_ZN11OpenImageIO4v3_116st_to_texel_simdERKNS0_4simd7vfloat4ES4_RNS0_14ImageCacheFileERKNS5_9ImageDimsERNS1_5vint4ESB_RS2_SC_.exit ], [ %i.eb, %.split ]
  %i.hp = shufflevector <2 x i32> %i.ho, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv1125
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !26 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #3
  %i.hs = add nsw <4 x i32> %i.hp, <i32 0, i32 1, i32 0, i32 1>
  store <4 x i32> %i.hs, ptr %25, align 16, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #3
  br i1 %.not293, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ht = call { i64, i64 } %i.ad(ptr noundef nonnull align 16 dereferenceable(16) %25, ptr noundef nonnull align 16 dereferenceable(16) %17, ptr noundef nonnull align 16 dereferenceable(16) %18) ; 2 uses
  %i.hu = extractvalue { i64, i64 } %i.ht, 0
  %i.hv = extractvalue { i64, i64 } %i.ht, 1
  store i64 %i.hu, ptr %26, align 16
  store i64 %i.hv, ptr %.sroa.4125.0..sroa_idx, align 8, !tbaa !34
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.hw = load i32, ptr %i.n, align 4, !tbaa !323
  %i.hx = load i32, ptr %i.ah, align 4, !tbaa !324
  %i.hy = call noundef zeroext i1 %i.u(ptr noundef nonnull align 4 dereferenceable(4) %25, i32 noundef %i.hw, i32 noundef %i.hx)
  %i.hz = load i32, ptr %i.n, align 4, !tbaa !323
  %i.ia = load i32, ptr %i.ah, align 4, !tbaa !324
  %i.ib = call noundef zeroext i1 %i.u(ptr noundef nonnull align 4 dereferenceable(4) %i.ct, i32 noundef %i.hz, i32 noundef %i.ia)
  %i.ic = load i32, ptr %i.ae, align 4, !tbaa !320
  %i.id = load i32, ptr %i.ai, align 4, !tbaa !321
  %i.ie = call noundef zeroext i1 %i.z(ptr noundef nonnull align 4 dereferenceable(4) %i.cu, i32 noundef %i.ic, i32 noundef %i.id)
  %i.if = load i32, ptr %i.ae, align 4, !tbaa !320
  %i.ig = load i32, ptr %i.ai, align 4, !tbaa !321
  %i.ih = call noundef zeroext i1 %i.z(ptr noundef nonnull align 4 dereferenceable(4) %i.cv, i32 noundef %i.if, i32 noundef %i.ig)
  %i.ii = insertelement <4 x i1> poison, i1 %i.hy, i64 0
  %i.ij = insertelement <4 x i1> %i.ii, i1 %i.ib, i64 1
  %i.ik = insertelement <4 x i1> %i.ij, i1 %i.ie, i64 2
  %i.il = insertelement <4 x i1> %i.ik, i1 %i.ih, i64 3
  %i.im = sext <4 x i1> %i.il to <4 x i32>
  store <4 x i32> %i.im, ptr %26, align 16, !tbaa !34
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.in = load i8, ptr %i.cw, align 2
  %i.io = trunc i8 %i.in to i1
  br i1 %i.io, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ip = load <4 x i32>, ptr %17, align 16, !tbaa !34 ; 2 uses
  %i.iq = load <4 x i32>, ptr %25, align 16, !tbaa !34 ; 2 uses
  %i.ir = icmp sge <4 x i32> %i.iq, %i.ip
  %i.is = load <4 x i32>, ptr %18, align 16, !tbaa !34
  %i.it = add <4 x i32> %i.is, %i.ip
  %i.iu = icmp sgt <4 x i32> %i.it, %i.iq
  %i.iv = and <4 x i1> %i.ir, %i.iu
  %i.iw = load <4 x float>, ptr %26, align 16, !tbaa !34
  %i.ix = select <4 x i1> %i.iv, <4 x float> %i.iw, <4 x float> zeroinitializer
  store <4 x float> %i.ix, ptr %26, align 16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.iy = load <4 x i32>, ptr %26, align 16, !tbaa !34
  %i.iz = icmp slt <4 x i32> %i.iy, zeroinitializer
  %i.ja = bitcast <4 x i1> %i.iz to i4            ; 2 uses
  %.not1050 = icmp eq i4 %i.ja, 0
  br i1 %.not1050, label %.thread, label %bb.t

.thread:                                          ; preds = %bb.s
  %i.jb = fadd float %.02641113, %i.hr
  br label %bb.ch

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #3
  %i.jc = load <4 x i32>, ptr %25, align 16       ; 7 uses
  %i.jd = shufflevector <4 x i32> %i.jc, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.je = load <4 x i32>, ptr %17, align 16, !tbaa !34 ; 2 uses
  %i.jf = sub <4 x i32> %i.jd, %i.je
  %i.jg = bitcast <4 x i32> %i.jf to <2 x i64>    ; 2 uses
  %.sroa.0660.0.vec.extract = extractelement <2 x i64> %i.jg, i64 0
  %.sroa.0660.8.vec.extract = extractelement <2 x i64> %i.jg, i64 1
  %i.jh = bitcast i64 %.sroa.0660.0.vec.extract to <2 x i32> ; 3 uses
  %i.ji = bitcast i64 %.sroa.0660.8.vec.extract to <2 x i32> ; 3 uses
  %i.jj = extractelement <4 x i32> %i.jc, i64 0
  %i.jk = extractelement <4 x i32> %i.jc, i64 2
  br i1 %i.bh, label %bb.u, label %_ZN11OpenImageIO4v3_14simdrMERNS1_5vint4ERKS2_.exit

bb.u:                                             ; preds = %bb.t
  %32 = and <2 x i32> %i.jh, %i.as
  %33 = and <2 x i32> %i.ji, %i.at
  %34 = shufflevector <2 x i32> %32, <2 x i32> %33, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.jl = bitcast <4 x i32> %34 to <2 x i64>      ; 2 uses
  %.sroa.0736.0.vec.extract = extractelement <2 x i64> %i.jl, i64 0
  %.sroa.0736.8.vec.extract = extractelement <2 x i64> %i.jl, i64 1
  br label %bb.v

_ZN11OpenImageIO4v3_14simdrMERNS1_5vint4ERKS2_.exit: ; preds = %bb.t
  %.sroa.01128.0.vec.extract1135 = extractelement <2 x i32> %i.jh, i64 0
  %i.jm = srem i32 %.sroa.01128.0.vec.extract1135, %i.ap
  %.sroa.01153.0.insert.ext = zext i32 %i.jm to i64
  %.sroa.01128.4.vec.extract = extractelement <2 x i32> %i.jh, i64 1
  %i.jn = srem i32 %.sroa.01128.4.vec.extract, %i.ap
  %.sroa.01153.4.insert.ext = zext i32 %i.jn to i64
  %.sroa.01153.4.insert.shift = shl nuw i64 %.sroa.01153.4.insert.ext, 32
  %.sroa.01153.4.insert.insert = or disjoint i64 %.sroa.01153.4.insert.shift, %.sroa.01153.0.insert.ext
  %.sroa.01128.8.vec.extract1141 = extractelement <2 x i32> %i.ji, i64 0
  %i.jo = srem i32 %.sroa.01128.8.vec.extract1141, %i.ao
  %.sroa.51154.8.insert.ext = zext i32 %i.jo to i64
  %.sroa.01128.12.vec.extract = extractelement <2 x i32> %i.ji, i64 1
  %i.jp = srem i32 %.sroa.01128.12.vec.extract, %i.ao
  %.sroa.51154.12.insert.ext = zext i32 %i.jp to i64
  %.sroa.51154.12.insert.shift = shl nuw i64 %.sroa.51154.12.insert.ext, 32
  %.sroa.51154.12.insert.insert = or disjoint i64 %.sroa.51154.12.insert.shift, %.sroa.51154.8.insert.ext
  br label %bb.v

bb.v:                                             ; preds = %_ZN11OpenImageIO4v3_14simdrMERNS1_5vint4ERKS2_.exit, %bb.u
  %storemerge1051 = phi i64 [ %.sroa.01153.4.insert.insert, %_ZN11OpenImageIO4v3_14simdrMERNS1_5vint4ERKS2_.exit ], [ %.sroa.0736.0.vec.extract, %bb.u ] ; 2 uses
  %storemerge = phi i64 [ %.sroa.51154.12.insert.insert, %_ZN11OpenImageIO4v3_14simdrMERNS1_5vint4ERKS2_.exit ], [ %.sroa.0736.8.vec.extract, %bb.u ] ; 2 uses
  %.sroa.01128.0.vec.extract = trunc i64 %storemerge1051 to i32 ; 2 uses
  %i.jq = icmp ne i32 %.sroa.0637.0.vec.extract, %.sroa.01128.0.vec.extract
  %i.jr = shufflevector <4 x i32> %i.jc, <4 x i32> poison, <2 x i32> <i32 2, i32 0>
  %i.js = add nsw <2 x i32> %i.jr, splat (i32 1)
  %.sroa.01128.8.vec.extract = trunc i64 %storemerge to i32 ; 2 uses
  %i.jt = icmp ne i32 %.sroa.0637.8.vec.extract, %.sroa.01128.8.vec.extract
  %i.ju = shufflevector <4 x i32> %i.jc, <4 x i32> poison, <2 x i32> <i32 3, i32 1>
  %i.jv = icmp eq <2 x i32> %i.js, %i.ju          ; 2 uses
  %i.jw = extractelement <2 x i1> %i.jv, i64 1
  %i.jx = and i1 %i.jq, %i.jw
  %i.jy = extractelement <2 x i1> %i.jv, i64 0
  %i.jz = and i1 %i.jt, %i.jy
  %i.ka = and i1 %i.jx, %i.jz
  %i.kb = icmp eq i4 %i.ja, -1
  %or.cond1041 = and i1 %i.kb, %i.ka
  br i1 %or.cond1041, label %bb.w, label %_ZN11OpenImageIO4v3_14simdrmERKNS1_5vint4ES4_.exit

bb.w:                                             ; preds = %bb.v
  %i.kc = sub nsw i32 %i.jj, %.sroa.01128.0.vec.extract
  %i.kd = sub nsw i32 %i.jk, %.sroa.01128.8.vec.extract
  store i32 %i.kc, ptr %19, align 8, !tbaa !307
  store i32 %i.kd, ptr %i.cc, align 4, !tbaa !309
  %i.ke = icmp eq i64 %indvars.iv1125, 0
  %i.kf = load ptr, ptr %i.cy, align 8, !tbaa !92
  %i.kg = call noundef zeroext i1 @_ZN11OpenImageIO4v3_114ImageCacheImpl9find_tileERKNS0_6TileIDEPNS0_23ImageCachePerThreadInfoEb(ptr noundef nonnull align 64 dereferenceable(25240) %i.kf, ptr noundef nonnull align 8 dereferenceable(40) %19, ptr noundef %6, i1 noundef zeroext %i.ke)
  br i1 %i.kg, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #3
  %i.kh = load ptr, ptr %i.cy, align 8, !tbaa !92
  call void @_ZNK11OpenImageIO4v3_114ImageCacheImpl8geterrorB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %28, ptr noundef nonnull align 64 dereferenceable(25240) %i.kh, i1 noundef zeroext true)
  invoke void @_ZNK11OpenImageIO4v3_117TextureSystemImpl5errorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull @.str.53, ptr noundef nonnull align 8 dereferenceable(32) %28)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ki = load ptr, ptr %28, align 8, !tbaa !30   ; 2 uses
  %i.kj = icmp eq ptr %i.ki, %i.dl
  br i1 %i.kj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.y
  %i.kk = load i64, ptr %i.dl, align 8, !tbaa !34
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.ki, i64 noundef %i.kl) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #3
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.km = landingpad { ptr, i32 }
          cleanup
  %i.kn = load ptr, ptr %28, align 8, !tbaa !30   ; 2 uses
  %i.ko = icmp eq ptr %i.kn, %i.dl
  br i1 %i.ko, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit511, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i509

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i509: ; preds = %bb.z
  %i.kp = load i64, ptr %i.dl, align 8, !tbaa !34
  %i.kq = add i64 %i.kp, 1
  call void @_ZdlPvm(ptr noundef %i.kn, i64 noundef %i.kq) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit511

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit511: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i509
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #3
  br label %bb.ci

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.w
  %i.kr = load ptr, ptr %i.da, align 8, !tbaa !326 ; 4 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 76
  %i.kt = load i8, ptr %i.ks, align 4, !tbaa !492, !range !62, !noundef !63
  %i.ku = trunc nuw i8 %i.kt to i1
  br i1 %i.ku, label %bb.ab, label %.loopexit1072

bb.ab:                                            ; preds = %bb.aa
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kr, i64 68
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !493 ; 5 uses
  %i.kx = sext i32 %i.kw to i64                   ; 9 uses
  %sext = shl i64 %storemerge, 32
  %i.ky = ashr exact i64 %sext, 32
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kr, i64 72
  %i.la = load i32, ptr %i.kz, align 8, !tbaa !481
  %i.lb = sext i32 %i.la to i64
  %i.lc = mul nsw i64 %i.ky, %i.lb
  %sext1182 = shl i64 %storemerge1051, 32
  %i.ld = ashr exact i64 %sext1182, 32
  %i.le = add nsw i64 %i.lc, %i.ld
  %i.lf = mul i64 %i.le, %i.kx
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kr, i64 48
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !108
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.lf
  %i.lj = load i16, ptr %i.cg, align 4, !tbaa !313
  %i.lk = sext i16 %i.lj to i32
  %i.ll = sub nsw i32 %i.bl, %i.lk
  %i.lm = sext i32 %i.ll to i64
  %i.ln = mul nsw i64 %i.lm, %i.bk
  %i.lo = getelementptr inbounds nuw i8, ptr %i.li, i64 %i.ln ; 12 uses
  switch i8 %i.p, label %bb.af [
    i8 2, label %bb.ac
    i8 4, label %bb.ad
    i8 10, label %bb.ae
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.lp = load float, ptr %i.lo, align 1, !tbaa !34
  %i.lq = insertelement <4 x float> poison, float %i.lp, i64 0
  %i.lr = bitcast <4 x float> %i.lq to <16 x i8>
  %i.ls = shufflevector <16 x i8> %i.lr, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lt = bitcast <16 x i8> %i.ls to <8 x i16>
  %i.lu = shufflevector <8 x i16> %i.lt, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.lv = bitcast <8 x i16> %i.lu to <4 x i32>
  %i.lw = uitofp nneg <4 x i32> %i.lv to <4 x float>
  %i.lx = load <4 x float>, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_17u8scaleE.0, align 16, !tbaa !34 ; 4 uses
  %i.ly = fmul <4 x float> %i.lx, %i.lw
  store <4 x float> %i.ly, ptr %27, align 16
  %i.lz = getelementptr inbounds i8, ptr %i.lo, i64 %i.kx
  %i.ma = load float, ptr %i.lz, align 1, !tbaa !34
  %i.mb = insertelement <4 x float> poison, float %i.ma, i64 0
  %i.mc = bitcast <4 x float> %i.mb to <16 x i8>
  %i.md = shufflevector <16 x i8> %i.mc, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.me = bitcast <16 x i8> %i.md to <8 x i16>
  %i.mf = shufflevector <8 x i16> %i.me, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.mg = bitcast <8 x i16> %i.mf to <4 x i32>
  %i.mh = uitofp nneg <4 x i32> %i.mg to <4 x float>
  %i.mi = fmul <4 x float> %i.lx, %i.mh
  store <4 x float> %i.mi, ptr %i.dm, align 16
  %i.mj = load i32, ptr %i.al, align 4, !tbaa !325
  %i.mk = mul nsw i32 %i.mj, %i.kw
  %i.ml = sext i32 %i.mk to i64
  %i.mm = getelementptr inbounds i8, ptr %i.lo, i64 %i.ml ; 2 uses
  %i.mn = load float, ptr %i.mm, align 1, !tbaa !34
  %i.mo = insertelement <4 x float> poison, float %i.mn, i64 0
  %i.mp = bitcast <4 x float> %i.mo to <16 x i8>
  %i.mq = shufflevector <16 x i8> %i.mp, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mr = bitcast <16 x i8> %i.mq to <8 x i16>
  %i.ms = shufflevector <8 x i16> %i.mr, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.mt = bitcast <8 x i16> %i.ms to <4 x i32>
  %i.mu = uitofp nneg <4 x i32> %i.mt to <4 x float>
  %i.mv = fmul <4 x float> %i.lx, %i.mu
  store <4 x float> %i.mv, ptr %i.dn, align 16
  %i.mw = getelementptr inbounds i8, ptr %i.mm, i64 %i.kx
  %i.mx = load float, ptr %i.mw, align 1, !tbaa !34
  %i.my = insertelement <4 x float> poison, float %i.mx, i64 0
  %i.mz = bitcast <4 x float> %i.my to <16 x i8>
  %i.na = shufflevector <16 x i8> %i.mz, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.nb = bitcast <16 x i8> %i.na to <8 x i16>
  %i.nc = shufflevector <8 x i16> %i.nb, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.nd = bitcast <8 x i16> %i.nc to <4 x i32>
  %i.ne = uitofp nneg <4 x i32> %i.nd to <4 x float>
  %i.nf = fmul <4 x float> %i.lx, %i.ne
  store <4 x float> %i.nf, ptr %i.do, align 16
  br label %bb.bw

bb.ad:                                            ; preds = %bb.ab
  %i.ng = load <4 x i16>, ptr %i.lo, align 2, !tbaa !489
  %i.nh = uitofp <4 x i16> %i.ng to <4 x float>
  %i.ni = load <4 x float>, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_18u16scaleE.0, align 16, !tbaa !34 ; 4 uses
  %i.nj = fmul <4 x float> %i.ni, %i.nh
  store <4 x float> %i.nj, ptr %27, align 16
  %i.nk = getelementptr inbounds i8, ptr %i.lo, i64 %i.kx
  %i.nl = load <4 x i16>, ptr %i.nk, align 2, !tbaa !489
  %i.nm = uitofp <4 x i16> %i.nl to <4 x float>
  %i.nn = fmul <4 x float> %i.ni, %i.nm
  store <4 x float> %i.nn, ptr %i.dm, align 16
  %i.no = load i32, ptr %i.al, align 4, !tbaa !325
  %i.np = mul nsw i32 %i.no, %i.kw
  %i.nq = sext i32 %i.np to i64
  %i.nr = getelementptr inbounds i8, ptr %i.lo, i64 %i.nq ; 2 uses
  %i.ns = load <4 x i16>, ptr %i.nr, align 2, !tbaa !489
  %i.nt = uitofp <4 x i16> %i.ns to <4 x float>
  %i.nu = fmul <4 x float> %i.ni, %i.nt
  store <4 x float> %i.nu, ptr %i.dn, align 16
  %i.nv = getelementptr inbounds i8, ptr %i.nr, i64 %i.kx
  %i.nw = load <4 x i16>, ptr %i.nv, align 2, !tbaa !489
  %i.nx = uitofp <4 x i16> %i.nw to <4 x float>
end_hunk_0

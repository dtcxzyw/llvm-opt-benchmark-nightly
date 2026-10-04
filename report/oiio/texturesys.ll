Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/texturesys?download=true
inline.NumInlined: 5128
inline.NumDeleted: 1476
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 52
loop-unroll.NumUnrolled: 108
begin_hunk_0_@_ZN11OpenImageIO4v3_117TextureSystemImpl15sample_bilinearEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_:bb.a
  %i.zy = shufflevector <4 x float> %i.zx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zz = extractelement <2 x float> %i.hn, i64 1 ; 3 uses
  %i.aaa = fsub float 1.000000e+00, %i.zz         ; 3 uses
  %i.aab = extractelement <2 x float> %i.hn, i64 0 ; 2 uses
  %i.aac = fsub float 1.000000e+00, %i.aab        ; 2 uses
  %i.aad = load <4 x float>, ptr %27, align 16, !tbaa !83 ; 3 uses
  %i.aae = insertelement <4 x float> poison, float %i.aaa, i64 0
  %i.aaf = shufflevector <4 x float> %i.aae, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.aag = fmul <4 x float> %i.aaf, %i.aad
  %i.aah = load <4 x float>, ptr %i.dl, align 16, !tbaa !83 ; 3 uses
  %i.aai = shufflevector <2 x float> %i.hn, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 3 uses
  %i.aaj = fmul <4 x float> %i.aai, %i.aah
  %i.aak = fadd <4 x float> %i.aag, %i.aaj
  %i.aal = insertelement <4 x float> poison, float %i.aac, i64 0
  %i.aam = shufflevector <4 x float> %i.aal, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aan = fmul <4 x float> %i.aam, %i.aak
  %i.aao = load <4 x float>, ptr %i.dm, align 16, !tbaa !83 ; 3 uses
  %i.aap = fmul <4 x float> %i.aaf, %i.aao
  %i.aaq = load <4 x float>, ptr %i.dn, align 16, !tbaa !83 ; 3 uses
  %i.aar = fmul <4 x float> %i.aai, %i.aaq
  %i.aas = fadd <4 x float> %i.aap, %i.aar
  %i.aat = shufflevector <2 x float> %i.hn, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aau = fmul <4 x float> %i.aat, %i.aas
  %i.aav = fadd <4 x float> %i.aan, %i.aau
  %i.aaw = fmul <4 x float> %i.zy, %i.aav
  %i.aax = load <4 x float>, ptr %20, align 16, !tbaa !83
  %i.aay = fadd <4 x float> %i.aax, %i.aaw        ; 2 uses
  store <4 x float> %i.aay, ptr %20, align 16, !tbaa !83
  %i.aaz = bitcast <4 x float> %i.aay to <4 x i32>
  br i1 %.not, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.aba = load <2 x i32>, ptr %i.ah, align 4, !tbaa !55
  %i.abb = sitofp <2 x i32> %i.aba to <2 x float>
  %i.abc = insertelement <2 x float> poison, float %.0825, i64 0
  %i.abd = shufflevector <2 x float> %i.abc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abe = fmul <2 x float> %i.abd, %i.abb        ; 2 uses
  %i.abf = shufflevector <2 x float> %i.abe, <2 x float> poison, <4 x i32> zeroinitializer
  %i.abg = shufflevector <2 x float> %i.abe, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.abh = fsub <4 x float> %i.aah, %i.aad
  %i.abi = fsub <4 x float> %i.aaq, %i.aao
  %i.abj = fmul <4 x float> %i.aam, %i.abh
  %i.abk = fmul <4 x float> %i.aat, %i.abi
  %i.abl = fadd <4 x float> %i.abj, %i.abk
  %i.abm = fmul <4 x float> %i.abl, %i.abf
  %i.abn = fadd <4 x float> %.sroa.0634.1927, %i.abm
  %i.abo = fsub <4 x float> %i.aao, %i.aad
  %i.abp = fsub <4 x float> %i.aaq, %i.aah
  %i.abq = fmul <4 x float> %i.aaf, %i.abo
  %i.abr = fmul <4 x float> %i.aai, %i.abp
  %i.abs = fadd <4 x float> %i.abq, %i.abr
  %i.abt = fmul <4 x float> %i.abs, %i.abg
  %i.abu = fadd <4 x float> %.sroa.0632.1926, %i.abt
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.sroa.0632.2 = phi <4 x float> [ %.sroa.0632.1926, %bb.cc ], [ %i.abu, %bb.cd ]
  %.sroa.0634.2 = phi <4 x float> [ %.sroa.0634.1927, %bb.cc ], [ %i.abn, %bb.cd ]
  br i1 %i.aw, label %bb.cf, label %.thread840

bb.cf:                                            ; preds = %bb.ce
  %i.abv = load <4 x i32>, ptr %26, align 16      ; 3 uses
  %i.abw = icmp sgt <4 x i32> %i.abv, splat (i32 -1)
  %i.abx = bitcast <4 x i1> %i.abw to i4
  %i.aby = icmp eq i4 %i.abx, 0
  br i1 %i.aby, label %.thread840, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.abz = shufflevector <4 x i32> %i.abv, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.aca = shufflevector <4 x i32> %i.abv, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 3, i32 1>
  %i.acb = mul nsw <4 x i32> %i.abz, %i.aca
  %i.acc = sitofp <4 x i32> %i.acb to <4 x float> ; 4 uses
  %i.acd = extractelement <4 x float> %i.acc, i64 1
  %i.ace = fmul float %i.zz, %i.acd
  %i.acf = extractelement <4 x float> %i.acc, i64 0
  %i.acg = call float @llvm.fmuladd.f32(float %i.acf, float %i.aaa, float %i.ace)
  %i.ach = extractelement <4 x float> %i.acc, i64 3
  %i.aci = fmul float %i.zz, %i.ach
  %i.acj = extractelement <4 x float> %i.acc, i64 2
  %i.ack = call float @llvm.fmuladd.f32(float %i.acj, float %i.aaa, float %i.aci)
  %i.acl = fmul float %i.aab, %i.ack
  %i.acm = call noundef float @llvm.fmuladd.f32(float %i.aac, float %i.acg, float %i.acl)
  %i.acn = fsub float 1.000000e+00, %i.acm
  %i.aco = call float @llvm.fmuladd.f32(float %i.acn, float %.0825, float %.0267929)
  br label %.thread840

.thread840:                                       ; preds = %bb.cg, %bb.cf, %bb.ce
  %.2269.ph = phi float [ %.0267929, %bb.ce ], [ %i.aco, %bb.cg ], [ %.0267929, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #3
  br label %bb.ch

bb.ch:                                            ; preds = %.thread840, %.thread
  %i.acp = phi <4 x i32> [ %i.dq, %.thread ], [ %i.aaz, %.thread840 ] ; 2 uses
  %.3270839 = phi float [ %i.jb, %.thread ], [ %.2269.ph, %.thread840 ] ; 2 uses
  %.sroa.0634.4838 = phi <4 x float> [ %.sroa.0634.1927, %.thread ], [ %.sroa.0634.2, %.thread840 ] ; 2 uses
  %.sroa.0632.4837 = phi <4 x float> [ %.sroa.0632.1926, %.thread ], [ %.sroa.0632.2, %.thread840 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #3
  %indvars.iv.next942 = add nuw nsw i64 %indvars.iv941, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next942, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.k, !llvm.loop !725

bb.ci:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit545, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit511
  %.pn = phi { ptr, i32 } [ %i.ko, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit511 ], [ %eh.lpad-body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit545 ]
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

.loopexit888:                                     ; preds = %bb.aa, %.critedge298
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #3
  br label %bb.cm

._crit_edge.loopexit:                             ; preds = %bb.ch
  %i.acq = bitcast <4 x float> %.sroa.0634.4838 to <4 x i32>
  %i.acr = bitcast <4 x float> %.sroa.0632.4837 to <4 x i32>
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit
  %i.acs = phi <4 x i32> [ zeroinitializer, %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit ], [ %i.acp, %._crit_edge.loopexit ]
  %.sroa.0632.1.lcssa = phi <4 x i32> [ zeroinitializer, %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit ], [ %i.acr, %._crit_edge.loopexit ]
  %.sroa.0634.1.lcssa = phi <4 x i32> [ zeroinitializer, %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit ], [ %i.acq, %._crit_edge.loopexit ]
  %.0267.lcssa = phi float [ 0.000000e+00, %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit ], [ %.3270839, %._crit_edge.loopexit ]
  %i.act = sext i32 %9 to i64
  %i.acu = getelementptr inbounds [16 x i8], ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_113channel_masksE, i64 %i.act
  %.sroa.0563.0.copyload858 = load <4 x i32>, ptr %i.acu, align 16, !tbaa !83 ; 4 uses
  %i.acv = and <4 x i32> %i.acs, %.sroa.0563.0.copyload858
  store <4 x i32> %i.acv, ptr %20, align 16
  br i1 %i.aw, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %._crit_edge
  %i.acw = fsub float 1.000000e+00, %.0267.lcssa
  %i.acx = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.acy = load float, ptr %i.acx, align 8, !tbaa !256
  %i.acz = fmul float %i.acw, %i.acy
  %i.ada = insertelement <4 x float> poison, float %i.acz, i64 0
  %i.adb = xor <4 x i32> %.sroa.0563.0.copyload858, splat (i32 -1)
  %i.adc = bitcast <4 x float> %i.ada to <4 x i32>
  %i.add = shufflevector <4 x i32> %i.adc, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ade = and <4 x i32> %i.add, %i.adb
  %i.adf = load <4 x float>, ptr %20, align 16, !tbaa !83
  %i.adg = bitcast <4 x i32> %i.ade to <4 x float>
  %i.adh = fadd <4 x float> %i.adf, %i.adg
  store <4 x float> %i.adh, ptr %20, align 16, !tbaa !83
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %11, ptr noundef nonnull align 16 dereferenceable(16) %20, i64 16, i1 false), !tbaa.struct !368
  br i1 %.not, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.adi = and <4 x i32> %.sroa.0563.0.copyload858, %.sroa.0634.1.lcssa
  store <4 x i32> %i.adi, ptr %12, align 16
  %i.adj = and <4 x i32> %.sroa.0563.0.copyload858, %.sroa.0632.1.lcssa
  store <4 x i32> %i.adj, ptr %13, align 16
  br label %bb.cm

bb.cm:                                            ; preds = %bb.ck, %bb.cl, %.loopexit888
  %i.adk = phi i1 [ true, %bb.ck ], [ true, %bb.cl ], [ false, %.loopexit888 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #3
  ret i1 %i.adk
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl14sample_bicubicEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(400) %5, ptr noundef %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(76) %7, i32 noundef %8, i32 noundef %9, ptr nofree noundef readonly captures(none) %10, ptr nofree noundef writeonly captures(none) %11, ptr nofree noundef writeonly captures(address_is_null) %12, ptr nofree noundef writeonly captures(none) %13) #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %14 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 12 uses
  %15 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %17 = alloca %"class.OpenImageIO::v3_1::simd::vint4", align 16 ; 7 uses
  %18 = alloca %"class.OpenImageIO::v3_1::simd::vint4", align 16 ; 7 uses
  %19 = alloca %"class.OpenImageIO::v3_1::simd::vint4", align 16 ; 5 uses
  %20 = alloca %"class.OpenImageIO::v3_1::simd::vint4", align 16 ; 5 uses
  %21 = alloca %"struct.OpenImageIO::v3_1::TileID", align 8 ; 17 uses
  %22 = alloca %"class.OpenImageIO::v3_1::simd::vfloat4", align 16 ; 13 uses
  %23 = alloca %"class.OpenImageIO::v3_1::simd::vint4", align 16 ; 5 uses
  %24 = alloca %"class.OpenImageIO::v3_1::simd::vint4", align 16 ; 5 uses
  %25 = alloca %"class.OpenImageIO::v3_1::simd::vfloat4", align 16 ; 5 uses
  %26 = alloca %"class.OpenImageIO::v3_1::simd::vfloat4", align 16 ; 5 uses
  %27 = alloca %"class.OpenImageIO::v3_1::simd::vint4", align 16 ; 10 uses
  %28 = alloca %"class.OpenImageIO::v3_1::simd::vint4", align 16 ; 10 uses
  %29 = alloca %"class.OpenImageIO::v3_1::simd::vbool4", align 16 ; 11 uses
  %30 = alloca %"class.OpenImageIO::v3_1::simd::vbool4", align 16 ; 11 uses
  %31 = alloca [4 x [4 x %"class.OpenImageIO::v3_1::simd::vfloat4"]], align 16 ; 66 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %33 = alloca %"class.OpenImageIO::v3_1::simd::vint4", align 16 ; 6 uses
  %34 = alloca %"class.OpenImageIO::v3_1::simd::vint4", align 16 ; 6 uses
  %35 = alloca %"class.OpenImageIO::v3_1::simd::vint4", align 16 ; 6 uses
  %36 = alloca %"class.OpenImageIO::v3_1::simd::vint4", align 16 ; 6 uses
  %37 = alloca %"class.OpenImageIO::v3_1::simd::vint4", align 16 ; 6 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %.sroa.01447 = alloca double, align 16          ; 5 uses
  %.sroa.51448 = alloca double, align 8           ; 5 uses
  %.sroa.01410 = alloca double, align 16          ; 5 uses
  %.sroa.5 = alloca double, align 8               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !202  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.e = sext i32 %i.c to i64
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !203
  %i.g = getelementptr inbounds nuw [128 x i8], ptr %i.f, i64 %i.e ; 4 uses
  %i.h = sext i32 %4 to i64
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !263
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.h ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !273  ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = select i1 %.not.i, ptr %i.m, ptr %i.k    ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.p = load i8, ptr %i.o, align 8, !tbaa !345   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !250
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @_ZN11OpenImageIO4v3_13pvtL19wrap_functions_simdE, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !97
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 17
  %i.w = load i8, ptr %i.v, align 1, !tbaa !251
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr @_ZN11OpenImageIO4v3_13pvtL19wrap_functions_simdE, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #3
  %i.aa = load i32, ptr %i.n, align 4, !tbaa !290
  %i.ab = insertelement <4 x i32> poison, i32 %i.aa, i64 0
  %i.ac = shufflevector <4 x i32> %i.ab, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  store <4 x i32> %i.ac, ptr %17, align 16, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !287
  %i.af = insertelement <4 x i32> poison, i32 %i.ae, i64 0
  %i.ag = shufflevector <4 x i32> %i.af, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  store <4 x i32> %i.ag, ptr %18, align 16, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #3
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 12 ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !291
  %i.aj = insertelement <4 x i32> poison, i32 %i.ai, i64 0
  %i.ak = shufflevector <4 x i32> %i.aj, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  store <4 x i32> %i.ak, ptr %19, align 16, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #3
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !288
  %i.an = insertelement <4 x i32> poison, i32 %i.am, i64 0
  %i.ao = shufflevector <4 x i32> %i.an, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  store <4 x i32> %i.ao, ptr %20, align 16, !tbaa !83
  %i.ap = add <4 x i32> %i.ak, %i.ac
  %i.aq = add <4 x i32> %i.ao, %i.ag
  %i.ar = icmp sgt i32 %8, %9
  br i1 %i.ar, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.at = load float, ptr %i.as, align 8, !tbaa !256
  %i.au = fcmp une float %i.at, 0.000000e+00
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.av = phi i1 [ false, %bb.a ], [ %i.au, %bb.b ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 8 uses
  %i.ax = load <2 x i32>, ptr %i.aw, align 4, !tbaa !55 ; 4 uses
  %i.ay = extractelement <2 x i32> %i.ax, i64 0   ; 2 uses
  %i.az = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ay)
  %i.ba = icmp samesign ult i32 %i.az, 2
  %i.bb = icmp sgt i32 %i.ay, -1
  %i.bc = and i1 %i.bb, %i.ba
  br i1 %i.bc, label %bb.d, label %._crit_edge2294

bb.d:                                             ; preds = %bb.c
  %i.bd = extractelement <2 x i32> %i.ax, i64 1   ; 2 uses
  %i.be = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.bd)
  %i.bf = icmp samesign ult i32 %i.be, 2
  %i.bg = icmp sgt i32 %i.bd, -1
  %i.bh = and i1 %i.bg, %i.bf
  br label %._crit_edge2294

._crit_edge2294:                                  ; preds = %bb.c, %bb.d
  %i.bi = phi i1 [ %i.bh, %bb.d ], [ false, %bb.c ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.n, i64 52
  %i.bk = add nsw <2 x i32> %i.ax, splat (i32 -1)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !356 ; 2 uses
  %i.bn = zext i32 %i.bm to i64
  %i.bo = load i32, ptr %7, align 8, !tbaa !197   ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !257
  %i.br = icmp eq i32 %i.bq, 1
  br i1 %i.br, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge2294
  %i.bs = getelementptr inbounds nuw i8, ptr %i.j, i64 38
  %i.bt = load i8, ptr %i.bs, align 2
  %i.bu = and i8 %i.bt, 2
  %i.bv = icmp ne i8 %i.bu, 0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge2294
  %i.bw = phi i1 [ false, %._crit_edge2294 ], [ %i.bv, %bb.e ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.n, i64 60
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !275 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !137
  %i.cb = icmp sgt i32 %i.by, %i.ca               ; 2 uses
  %i.cc = add nsw i32 %i.bo, %9
  %spec.select = select i1 %i.cb, i32 %i.cc, i32 %i.by ; 3 uses
  %spec.select2071 = select i1 %i.cb, i32 %i.bo, i32 0 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #3
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 68
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !252
  store i32 0, ptr %21, align 8, !tbaa !277
  %i.cf = getelementptr inbounds nuw i8, ptr %21, i64 4 ; 2 uses
  store i32 0, ptr %i.cf, align 4, !tbaa !278
  %i.cg = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  store i32 0, ptr %i.cg, align 8, !tbaa !279
  %i.ch = getelementptr inbounds nuw i8, ptr %21, i64 12 ; 3 uses
  store i32 %i.c, ptr %i.ch, align 4, !tbaa !280
  %i.ci = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 3 uses
  store i32 %4, ptr %i.ci, align 8, !tbaa !281
  %i.cj = getelementptr inbounds nuw i8, ptr %21, i64 20 ; 3 uses
  %i.ck = trunc i32 %spec.select2071 to i16
  store i16 %i.ck, ptr %i.cj, align 4, !tbaa !282
  %i.cl = getelementptr inbounds nuw i8, ptr %21, i64 22 ; 4 uses
  %i.cm = trunc i32 %spec.select to i16
  store i16 %i.cm, ptr %i.cl, align 2, !tbaa !283
  %i.cn = getelementptr inbounds nuw i8, ptr %21, i64 24 ; 3 uses
  store i32 %i.ce, ptr %i.cn, align 8, !tbaa !284
  %i.co = getelementptr inbounds nuw i8, ptr %21, i64 28
  store i32 0, ptr %i.co, align 4, !tbaa !285
  %i.cp = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 3 uses
  store ptr %5, ptr %i.cp, align 8, !tbaa !286
  %i.cq = icmp slt i32 %spec.select, %spec.select2071
  br i1 %i.cq, label %bb.g, label %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit

bb.g:                                             ; preds = %bb.f
  %i.cr = getelementptr inbounds nuw i8, ptr %i.m, i64 60
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !249 ; 2 uses
  %i.ct = trunc i32 %i.cs to i16
  store i16 %i.ct, ptr %i.cl, align 2, !tbaa !283
  br label %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit

_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit: ; preds = %bb.f, %bb.g
  %i.cu = phi i32 [ %spec.select, %bb.f ], [ %i.cs, %bb.g ]
  %sext2324 = shl i32 %i.cu, 16
  %i.cv = ashr exact i32 %sext2324, 16
  %sext = shl i32 %spec.select2071, 16
  %i.cw = ashr exact i32 %sext, 16                ; 2 uses
  %i.cx = sub nsw i32 %i.cv, %i.cw
  %i.cy = mul i32 %i.cx, %i.bm                    ; 7 uses
  %i.cz = sub nsw i32 %i.bo, %i.cw
  %i.da = sext i32 %i.cz to i64
  %i.db = mul nsw i64 %i.da, %i.bn                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #3
  store <4 x float> zeroinitializer, ptr %22, align 16, !tbaa !83
  %.not370 = icmp eq ptr %12, null                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #3
  %i.dc = icmp slt i32 %1, 1
  br i1 %i.dc, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 165 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.j, i64 38
  %i.dh = add nsw <2 x i32> %i.ax, splat (i32 -4)
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
  %i.ec = icmp sgt i32 %9, 0
  %wide.trip.count.i = zext i32 %9 to i64         ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %31, i64 64 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %31, i64 128 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %31, i64 192 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %31, i64 32 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %31, i64 48 ; 3 uses
  %i.ej = sext i32 %i.cy to i64                   ; 33 uses
  %wide.trip.count = zext nneg i32 %1 to i64
  %indvars.iv.next2247.1 = shl nsw i64 %i.ej, 1
  %indvars.iv.next2247.2 = mul nsw i64 %i.ej, 3
  %39 = getelementptr inbounds nuw i8, ptr %31, i64 80
  %i.ek = getelementptr inbounds nuw i8, ptr %31, i64 96
  %i.el = getelementptr inbounds nuw i8, ptr %31, i64 112
  %i.em = getelementptr inbounds nuw i8, ptr %31, i64 144
  %i.en = getelementptr inbounds nuw i8, ptr %31, i64 160
  %i.eo = getelementptr inbounds nuw i8, ptr %31, i64 176
  %i.ep = getelementptr inbounds nuw i8, ptr %31, i64 208
  %i.eq = getelementptr inbounds nuw i8, ptr %31, i64 224
  %i.er = getelementptr inbounds nuw i8, ptr %31, i64 240
  %i.es = getelementptr inbounds nuw i8, ptr %31, i64 80
  %i.et = getelementptr inbounds nuw i8, ptr %31, i64 96
  %i.eu = getelementptr inbounds nuw i8, ptr %31, i64 112
  %i.ev = getelementptr inbounds nuw i8, ptr %31, i64 144
  %i.ew = getelementptr inbounds nuw i8, ptr %31, i64 160
  %i.ex = getelementptr inbounds nuw i8, ptr %31, i64 176
  %i.ey = getelementptr inbounds nuw i8, ptr %31, i64 208
  %i.ez = getelementptr inbounds nuw i8, ptr %31, i64 224
  %i.fa = getelementptr inbounds nuw i8, ptr %31, i64 240
  %i.fb = getelementptr inbounds nuw i8, ptr %30, i64 12
  %i.fc = getelementptr inbounds nuw i8, ptr %31, i64 16
  %indvars.iv.next2199.1 = shl nsw i64 %i.ej, 1   ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %31, i64 32
  %i.fe = getelementptr inbounds nuw i8, ptr %31, i64 48
  %i.ff = getelementptr inbounds nuw i8, ptr %31, i64 64
  %i.fg = getelementptr inbounds nuw i8, ptr %31, i64 80
  %i.fh = getelementptr inbounds nuw i8, ptr %31, i64 96
  %i.fi = getelementptr inbounds nuw i8, ptr %31, i64 112
  %i.fj = getelementptr inbounds nuw i8, ptr %31, i64 128
  %i.fk = getelementptr inbounds nuw i8, ptr %31, i64 144
  %i.fl = getelementptr inbounds nuw i8, ptr %31, i64 160
  %i.fm = getelementptr inbounds nuw i8, ptr %31, i64 176
  %i.fn = getelementptr inbounds nuw i8, ptr %31, i64 192
  %i.fo = getelementptr inbounds nuw i8, ptr %31, i64 208
  %i.fp = getelementptr inbounds nuw i8, ptr %31, i64 224
  %i.fq = getelementptr inbounds nuw i8, ptr %31, i64 240
  %i.fr = getelementptr inbounds nuw i8, ptr %31, i64 16
  %indvars.iv.next2215.1 = shl nsw i64 %i.ej, 1   ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %31, i64 32
  %i.ft = getelementptr inbounds nuw i8, ptr %31, i64 48
  %i.fu = getelementptr inbounds nuw i8, ptr %31, i64 64
  %i.fv = getelementptr inbounds nuw i8, ptr %31, i64 80
  %i.fw = getelementptr inbounds nuw i8, ptr %31, i64 96
  %i.fx = getelementptr inbounds nuw i8, ptr %31, i64 112
  %i.fy = getelementptr inbounds nuw i8, ptr %31, i64 128
  %i.fz = getelementptr inbounds nuw i8, ptr %31, i64 144
  %i.ga = getelementptr inbounds nuw i8, ptr %31, i64 160
  %i.gb = getelementptr inbounds nuw i8, ptr %31, i64 176
  %i.gc = getelementptr inbounds nuw i8, ptr %31, i64 192
  %i.gd = getelementptr inbounds nuw i8, ptr %31, i64 208
  %i.ge = getelementptr inbounds nuw i8, ptr %31, i64 224
  %i.gf = getelementptr inbounds nuw i8, ptr %31, i64 240
  %min.iters.check = icmp ult i32 %9, 8
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %.sroa.01447.4..sroa_idx2363 = getelementptr inbounds nuw i8, ptr %.sroa.01447, i64 4
  %.sroa.51448.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.51448, i64 4
  %.sroa.01410.4..sroa_idx2362 = getelementptr inbounds nuw i8, ptr %.sroa.01410, i64 4
  %.sroa.5.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5, i64 4
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.cd
  %indvars.iv2270 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next2271, %bb.cd ] ; 9 uses
  %.03152177 = phi float [ 0.000000e+00, %.lr.ph ], [ %.33182060, %bb.cd ] ; 3 uses
  %.sroa.01536.12174 = phi <4 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.01536.42059, %bb.cd ] ; 3 uses
  %.sroa.01534.12173 = phi <4 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.01534.42058, %bb.cd ] ; 3 uses
  %i.gg = and i64 %indvars.iv2270, 3
  %i.gh = icmp eq i64 %i.gg, 0
  br i1 %i.gh, label %.split359, label %.split

.split:                                           ; preds = %bb.h
  %i.gi = and i64 %indvars.iv2270, 3              ; 4 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %i.gi
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %24, i64 %i.gi
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %25, i64 %i.gi
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %26, i64 %i.gi
  %.pre2295 = load i32, ptr %i.gj, align 4, !tbaa !55
  %.pre2296 = load i32, ptr %i.gk, align 4, !tbaa !55
  %.pre2297 = load float, ptr %i.gl, align 4, !tbaa !75
  %.pre2298 = load float, ptr %i.gm, align 4, !tbaa !75
  br label %bb.k

.split359:                                        ; preds = %bb.h
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv2270
  %i.go = load <4 x float>, ptr %i.gn, align 1, !tbaa !83 ; 2 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv2270
  %i.gq = load <4 x float>, ptr %i.gp, align 1, !tbaa !83
  %i.gr = load i8, ptr %i.dd, align 1, !tbaa !346, !range !102, !noundef !103
  %i.gs = trunc nuw i8 %i.gr to i1
  %i.gt = load <2 x i32>, ptr %i.ah, align 4, !tbaa !55 ; 2 uses
  br i1 %i.gs, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.split359
  %i.gu = sitofp <2 x i32> %i.gt to <2 x float>   ; 2 uses
  %i.gv = shufflevector <2 x float> %i.gu, <2 x float> poison, <4 x i32> zeroinitializer
  %i.gw = fmul <4 x float> %i.go, %i.gv
  %i.gx = shufflevector <2 x float> %i.gu, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gy = load <2 x i32>, ptr %i.n, align 4, !tbaa !55
  %i.gz = sitofp <2 x i32> %i.gy to <2 x float>
  %i.ha = fadd <2 x float> %i.gz, splat (float -5.000000e-01) ; 2 uses
  %i.hb = shufflevector <2 x float> %i.ha, <2 x float> poison, <4 x i32> zeroinitializer
  %i.hc = fadd <4 x float> %i.gw, %i.hb
  %bc.i = bitcast <4 x float> %i.hc to <2 x double> ; 2 uses
  %i.hd = extractelement <2 x double> %bc.i, i64 0
  %i.he = extractelement <2 x double> %bc.i, i64 1
  %i.hf = bitcast double %i.hd to <2 x i32>
  %i.hg = bitcast double %i.he to <2 x i32>
  %.sroa.096.8.vecblend104.i = shufflevector <2 x i32> %i.hf, <2 x i32> %i.hg, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hh = extractelement <2 x float> %i.ha, i64 1
  br label %_ZN11OpenImageIO4v3_116st_to_texel_simdERKNS0_4simd7vfloat4ES4_RNS0_14ImageCacheFileERKNS5_9ImageDimsERNS1_5vint4ESB_RS2_SC_.exit

bb.j:                                             ; preds = %.split359
  %i.hi = add nsw <2 x i32> %i.gt, splat (i32 -1)
  %i.hj = sitofp <2 x i32> %i.hi to <2 x float>   ; 2 uses
  %i.hk = shufflevector <2 x float> %i.hj, <2 x float> poison, <4 x i32> zeroinitializer
  %i.hl = fmul <4 x float> %i.go, %i.hk
  %i.hm = shufflevector <2 x float> %i.hj, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.hn = load <2 x i32>, ptr %i.n, align 4, !tbaa !55
  %i.ho = sitofp <2 x i32> %i.hn to <2 x float>   ; 2 uses
  %i.hp = shufflevector <2 x float> %i.ho, <2 x float> poison, <4 x i32> zeroinitializer
  %i.hq = fadd <4 x float> %i.hl, %i.hp
  %bc132.i = bitcast <4 x float> %i.hq to <2 x double> ; 2 uses
  %i.hr = extractelement <2 x double> %bc132.i, i64 0
  %i.hs = extractelement <2 x double> %bc132.i, i64 1
  %i.ht = bitcast double %i.hr to <2 x i32>
  %i.hu = bitcast double %i.hs to <2 x i32>
  %.sroa.096.8.vecblend.i = shufflevector <2 x i32> %i.ht, <2 x i32> %i.hu, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hv = extractelement <2 x float> %i.ho, i64 1
  br label %_ZN11OpenImageIO4v3_116st_to_texel_simdERKNS0_4simd7vfloat4ES4_RNS0_14ImageCacheFileERKNS5_9ImageDimsERNS1_5vint4ESB_RS2_SC_.exit

_ZN11OpenImageIO4v3_116st_to_texel_simdERKNS0_4simd7vfloat4ES4_RNS0_14ImageCacheFileERKNS5_9ImageDimsERNS1_5vint4ESB_RS2_SC_.exit: ; preds = %bb.i, %bb.j
  %.sink149.i = phi float [ %i.hv, %bb.j ], [ %i.hh, %bb.i ]
  %.pn2078 = phi <4 x float> [ %i.hm, %bb.j ], [ %i.gx, %bb.i ]
  %.sroa.096.0.i = phi <4 x i32> [ %.sroa.096.8.vecblend.i, %bb.j ], [ %.sroa.096.8.vecblend104.i, %bb.i ]
  %.sink147.i = fmul <4 x float> %i.gq, %.pn2078
  %i.hw = insertelement <4 x float> poison, float %.sink149.i, i64 0
  %i.hx = shufflevector <4 x float> %i.hw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hy = fadd <4 x float> %.sink147.i, %i.hx
  %bc134.i = bitcast <4 x float> %i.hy to <2 x double> ; 2 uses
  %i.hz = extractelement <2 x double> %bc134.i, i64 0
  %i.ia = extractelement <2 x double> %bc134.i, i64 1
  %i.ib = bitcast double %i.hz to <2 x i32>
  %i.ic = bitcast double %i.ia to <2 x i32>
  %.sroa.086.8.vecblend.i = shufflevector <2 x i32> %i.ib, <2 x i32> %i.ic, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %bc136.i = bitcast <4 x i32> %.sroa.096.0.i to <4 x float> ; 5 uses
  %i.id = extractelement <4 x float> %bc136.i, i64 0
  %i.ie = extractelement <4 x float> %bc136.i, i64 1
  %i.if = extractelement <4 x float> %bc136.i, i64 2
  %i.ig = extractelement <4 x float> %bc136.i, i64 3
  %i.ih = call float @llvm.floor.f32(float %i.id)
  %i.ii = call float @llvm.floor.f32(float %i.ie)
  %i.ij = call float @llvm.floor.f32(float %i.if)
  %i.ik = call float @llvm.floor.f32(float %i.ig)
  %i.il = insertelement <2 x float> poison, float %i.ih, i64 0
  %i.im = insertelement <2 x float> %i.il, float %i.ij, i64 1
  %i.in = bitcast <2 x float> %i.im to <2 x i32>
  %i.io = insertelement <2 x float> poison, float %i.ii, i64 0
  %i.ip = insertelement <2 x float> %i.io, float %i.ik, i64 1
  %i.iq = bitcast <2 x float> %i.ip to <2 x i32>
  %i.ir = zext <2 x i32> %i.iq to <2 x i64>
  %i.is = shl nuw <2 x i64> %i.ir, splat (i64 32)
  %i.it = zext <2 x i32> %i.in to <2 x i64>
  %i.iu = or disjoint <2 x i64> %i.is, %i.it
  %i.iv = bitcast <2 x i64> %i.iu to <4 x float>  ; 2 uses
  %i.iw = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.iv) ; 2 uses
  store <4 x i32> %i.iw, ptr %23, align 16, !tbaa !83
  %i.ix = fsub <4 x float> %bc136.i, %i.iv        ; 2 uses
  store <4 x float> %i.ix, ptr %25, align 16
  %bc140.i = bitcast <4 x i32> %.sroa.086.8.vecblend.i to <4 x float> ; 5 uses
  %i.iy = extractelement <4 x float> %bc140.i, i64 0
  %i.iz = extractelement <4 x float> %bc140.i, i64 1
  %i.ja = extractelement <4 x float> %bc140.i, i64 2
  %i.jb = extractelement <4 x float> %bc140.i, i64 3
  %i.jc = call float @llvm.floor.f32(float %i.iy)
  %i.jd = call float @llvm.floor.f32(float %i.iz)
  %i.je = call float @llvm.floor.f32(float %i.ja)
  %i.jf = call float @llvm.floor.f32(float %i.jb)
  %i.jg = insertelement <2 x float> poison, float %i.jc, i64 0
  %i.jh = insertelement <2 x float> %i.jg, float %i.je, i64 1
  %i.ji = bitcast <2 x float> %i.jh to <2 x i32>
  %i.jj = insertelement <2 x float> poison, float %i.jd, i64 0
  %i.jk = insertelement <2 x float> %i.jj, float %i.jf, i64 1
  %i.jl = bitcast <2 x float> %i.jk to <2 x i32>
  %i.jm = zext <2 x i32> %i.jl to <2 x i64>
  %i.jn = shl nuw <2 x i64> %i.jm, splat (i64 32)
  %i.jo = zext <2 x i32> %i.ji to <2 x i64>
  %i.jp = or disjoint <2 x i64> %i.jn, %i.jo
  %i.jq = bitcast <2 x i64> %i.jp to <4 x float>  ; 2 uses
  %i.jr = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.jq) ; 2 uses
  store <4 x i32> %i.jr, ptr %24, align 16, !tbaa !83
  %i.js = fsub <4 x float> %bc140.i, %i.jq        ; 2 uses
  store <4 x float> %i.js, ptr %26, align 16
  %i.jt = extractelement <4 x i32> %i.iw, i64 0
  %i.ju = extractelement <4 x i32> %i.jr, i64 0
  %i.jv = extractelement <4 x float> %i.ix, i64 0
  %i.jw = extractelement <4 x float> %i.js, i64 0
  br label %bb.k

bb.k:                                             ; preds = %.split, %_ZN11OpenImageIO4v3_116st_to_texel_simdERKNS0_4simd7vfloat4ES4_RNS0_14ImageCacheFileERKNS5_9ImageDimsERNS1_5vint4ESB_RS2_SC_.exit
  %i.jx = phi float [ %i.jw, %_ZN11OpenImageIO4v3_116st_to_texel_simdERKNS0_4simd7vfloat4ES4_RNS0_14ImageCacheFileERKNS5_9ImageDimsERNS1_5vint4ESB_RS2_SC_.exit ], [ %.pre2298, %.split ] ; 6 uses
  %i.jy = phi float [ %i.jv, %_ZN11OpenImageIO4v3_116st_to_texel_simdERKNS0_4simd7vfloat4ES4_RNS0_14ImageCacheFileERKNS5_9ImageDimsERNS1_5vint4ESB_RS2_SC_.exit ], [ %.pre2297, %.split ] ; 6 uses
  %i.jz = phi i32 [ %i.ju, %_ZN11OpenImageIO4v3_116st_to_texel_simdERKNS0_4simd7vfloat4ES4_RNS0_14ImageCacheFileERKNS5_9ImageDimsERNS1_5vint4ESB_RS2_SC_.exit ], [ %.pre2296, %.split ]
  %i.ka = phi i32 [ %i.jt, %_ZN11OpenImageIO4v3_116st_to_texel_simdERKNS0_4simd7vfloat4ES4_RNS0_14ImageCacheFileERKNS5_9ImageDimsERNS1_5vint4ESB_RS2_SC_.exit ], [ %.pre2295, %.split ]
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv2270
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !75 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #3
  %i.kd = insertelement <4 x i32> poison, i32 %i.ka, i64 0
  %i.ke = shufflevector <4 x i32> %i.kd, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.kf = add <4 x i32> %i.ke, <i32 -1, i32 0, i32 1, i32 2>
  store <4 x i32> %i.kf, ptr %27, align 16
  %i.kg = insertelement <4 x i32> poison, i32 %i.jz, i64 0
  %i.kh = shufflevector <4 x i32> %i.kg, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ki = add <4 x i32> %i.kh, <i32 -1, i32 0, i32 1, i32 2>
  store <4 x i32> %i.ki, ptr %28, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #3
  %i.kj = call { i64, i64 } %i.u(ptr noundef nonnull align 16 dereferenceable(16) %27, ptr noundef nonnull align 16 dereferenceable(16) %17, ptr noundef nonnull align 16 dereferenceable(16) %19) ; 2 uses
  %i.kk = extractvalue { i64, i64 } %i.kj, 0
  store i64 %i.kk, ptr %29, align 16
  %i.kl = extractvalue { i64, i64 } %i.kj, 1
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_117TextureSystemImpl14sample_bicubicEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_:bb.a
  %i.lb = and <4 x i1> %i.kz, %i.la
  %i.lc = bitcast <4 x i32> %i.kp to <4 x float>
  %i.ld = select <4 x i1> %i.lb, <4 x float> %i.lc, <4 x float> zeroinitializer
  store <4 x float> %i.ld, ptr %29, align 16
  %i.le = load <4 x i32>, ptr %18, align 16, !tbaa !83
  %i.lf = load <4 x i32>, ptr %28, align 16       ; 3 uses
  %i.lg = icmp sge <4 x i32> %i.lf, %i.le
  %i.lh = icmp sgt <4 x i32> %i.aq, %i.lf
  %i.li = and <4 x i1> %i.lg, %i.lh
  %i.lj = bitcast <4 x i32> %i.kq to <4 x float>
  %i.lk = select <4 x i1> %i.li, <4 x float> %i.lj, <4 x float> zeroinitializer ; 2 uses
  store <4 x float> %i.lk, ptr %30, align 16
  %i.ll = load <4 x i32>, ptr %29, align 16, !tbaa !83 ; 2 uses
  %.cast = bitcast <4 x float> %i.lk to <4 x i32> ; 2 uses
  %i.lm = and <4 x i32> %i.ll, %.cast
  %i.ln = or <4 x i32> %i.ll, %.cast
  %i.lo = icmp slt <4 x i32> %i.ln, zeroinitializer
  %i.lp = bitcast <4 x i1> %i.lo to i4
  %.not = icmp eq i4 %i.lp, 0
  %i.lq = shufflevector <4 x i32> %i.ky, <4 x i32> %i.lf, <2 x i32> <i32 0, i32 4>
  br i1 %.not, label %.thread2053, label %bb.m

bb.l:                                             ; preds = %bb.k
  br i1 %i.ku, label %.thread2053, label %._crit_edge2299

._crit_edge2299:                                  ; preds = %bb.l
  %i.lr = and <4 x i32> %i.kq, %i.kp
  %i.ls = load <4 x i32>, ptr %27, align 16
  %i.lt = shufflevector <4 x i32> %i.ls, <4 x i32> poison, <2 x i32> <i32 0, i32 poison>
  %.pre2301 = load i32, ptr %28, align 16, !tbaa !55
  %i.lu = insertelement <2 x i32> %i.lt, i32 %.pre2301, i64 1
  br label %bb.m

.thread2053:                                      ; preds = %bb.l, %.split2044
  %i.lv = fadd float %.03152177, %i.kc
  br label %bb.cd

bb.m:                                             ; preds = %._crit_edge2299, %.split2044
  %.0346.in2045.in.in.in = phi <4 x i32> [ %i.lm, %.split2044 ], [ %i.lr, %._crit_edge2299 ]
  %i.lw = phi <2 x i32> [ %i.lq, %.split2044 ], [ %i.lu, %._crit_edge2299 ] ; 2 uses
  %.0346.in2045.in.in = icmp sgt <4 x i32> %.0346.in2045.in.in.in, splat (i32 -1)
  %.0346.in2045.in = bitcast <4 x i1> %.0346.in2045.in.in to i4
  %.0346.in2045 = icmp eq i4 %.0346.in2045.in, 0  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #3
  %i.lx = load <2 x i32>, ptr %i.n, align 4, !tbaa !55
  %i.ly = sub nsw <2 x i32> %i.lw, %i.lx          ; 2 uses
  br i1 %i.bi, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.lz = and <2 x i32> %i.ly, %i.bk
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ma = load <2 x i32>, ptr %i.aw, align 4, !tbaa !55
  %i.mb = srem <2 x i32> %i.ly, %i.ma
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.mc = phi <2 x i32> [ %i.lz, %bb.n ], [ %i.mb, %bb.o ] ; 4 uses
  %i.md = icmp sle <2 x i32> %i.mc, %i.dh         ; 3 uses
  %i.me = bitcast <2 x i1> %i.md to i2
  %i.mf = icmp eq i2 %i.me, -1
  %i.mg = extractelement <2 x i1> %i.md, i64 0
  %i.mh = extractelement <2 x i1> %i.md, i64 1
  br i1 %i.mf, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.mi = load <4 x i32>, ptr %27, align 16, !tbaa !83 ; 2 uses
  %i.mj = shufflevector <4 x i32> %i.mi, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.mk = add <4 x i32> %i.mj, <i32 0, i32 1, i32 2, i32 3>
  %i.ml = icmp ne <4 x i32> %i.mi, %i.mk
  %i.mm = bitcast <4 x i1> %i.ml to i4
  %i.mn = icmp eq i4 %i.mm, 0
  %i.mo = load <4 x i32>, ptr %28, align 16, !tbaa !83 ; 2 uses
  %i.mp = shufflevector <4 x i32> %i.mo, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.mq = add <4 x i32> %i.mp, <i32 0, i32 1, i32 2, i32 3>
  %i.mr = icmp ne <4 x i32> %i.mo, %i.mq
  %i.ms = bitcast <4 x i1> %i.mr to i4
  %i.mt = icmp eq i4 %i.ms, 0
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0355.in = phi i1 [ %i.mn, %bb.q ], [ %i.mg, %bb.p ]
  %.0354.in = phi i1 [ %i.mt, %bb.q ], [ %i.mh, %bb.p ]
  %i.mu = and i1 %.0355.in, %.0354.in
  %i.mv = and i1 %.0346.in2045, %i.mu
  br i1 %i.mv, label %bb.s, label %_ZN11OpenImageIO4v3_14simdrmERKNS1_5vint4Ei.exit956

bb.s:                                             ; preds = %bb.r
  %i.mw = sub nsw <2 x i32> %i.lw, %i.mc
  store <2 x i32> %i.mw, ptr %21, align 8, !tbaa !55
  %i.mx = icmp eq i64 %indvars.iv2270, 0
  %i.my = load ptr, ptr %i.dp, align 8, !tbaa !122
  %i.mz = call noundef zeroext i1 @_ZN11OpenImageIO4v3_114ImageCacheImpl9find_tileERKNS0_6TileIDEPNS0_23ImageCachePerThreadInfoEb(ptr noundef nonnull align 64 dereferenceable(25240) %i.my, ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef %6, i1 noundef zeroext %i.mx)
  br i1 %i.mz, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.na = load ptr, ptr %i.dp, align 8, !tbaa !122
  %i.nb = call noundef zeroext i1 @_ZNK11OpenImageIO4v3_114ImageCacheImpl9has_errorEv(ptr noundef nonnull align 64 dereferenceable(25240) %i.na)
  br i1 %i.nb, label %bb.u, label %.loopexit2114

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #3
  %i.nc = load ptr, ptr %i.dp, align 8, !tbaa !122
  call void @_ZNK11OpenImageIO4v3_114ImageCacheImpl8geterrorB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %32, ptr noundef nonnull align 64 dereferenceable(25240) %i.nc, i1 noundef zeroext true)
  invoke void @_ZNK11OpenImageIO4v3_117TextureSystemImpl5errorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull @.str.53, ptr noundef nonnull align 8 dereferenceable(32) %32)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.nd = load ptr, ptr %32, align 8, !tbaa !82   ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.nf = icmp eq ptr %i.nd, %i.ne
  br i1 %i.nf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.v
  %i.ng = load i64, ptr %i.ne, align 8, !tbaa !83
  %i.nh = add i64 %i.ng, 1
  call void @_ZdlPvm(ptr noundef %i.nd, i64 noundef %i.nh) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #3
  br label %.loopexit2114

bb.w:                                             ; preds = %bb.u
  %i.ni = landingpad { ptr, i32 }
          cleanup
  %i.nj = load ptr, ptr %32, align 8, !tbaa !82   ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.nl = icmp eq ptr %i.nj, %i.nk
  br i1 %i.nl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1139: ; preds = %bb.w
  %i.nm = load i64, ptr %i.nk, align 8, !tbaa !83
  %i.nn = add i64 %i.nm, 1
  call void @_ZdlPvm(ptr noundef %i.nj, i64 noundef %i.nn) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1141: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1139
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #3
  br label %bb.ce

bb.x:                                             ; preds = %bb.s
  %i.no = load ptr, ptr %i.dr, align 8, !tbaa !295 ; 4 uses
  %.not2086 = icmp eq ptr %i.no, null
  br i1 %.not2086, label %.loopexit2114, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 68
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !358
  %i.nr = sext i32 %i.nq to i64
  %i.ns = extractelement <2 x i32> %i.mc, i64 1
  %i.nt = sext i32 %i.ns to i64
  %i.nu = getelementptr inbounds nuw i8, ptr %i.no, i64 72
  %i.nv = load i32, ptr %i.nu, align 8, !tbaa !354
  %i.nw = sext i32 %i.nv to i64
  %i.nx = mul nsw i64 %i.nw, %i.nt
  %i.ny = extractelement <2 x i32> %i.mc, i64 0
  %i.nz = sext i32 %i.ny to i64
  %i.oa = add nsw i64 %i.nx, %i.nz
  %i.ob = mul i64 %i.oa, %i.nr
  %i.oc = getelementptr inbounds nuw i8, ptr %i.no, i64 48
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !132
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 %i.ob
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.db ; 46 uses
  switch i8 %i.p, label %.preheader2106 [
    i8 2, label %.preheader2108
    i8 4, label %.preheader2102
    i8 10, label %.preheader2103
  ]

.preheader2108:                                   ; preds = %bb.y
  %i.og = load <4 x float>, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_17u8scaleE.0, align 16, !tbaa !83 ; 4 uses
  %i.oh = load i32, ptr %i.aw, align 4, !tbaa !292
  %i.oi = mul i32 %i.oh, %i.cy
  %i.oj = sext i32 %i.oi to i64
  %invariant.gep2341 = getelementptr i8, ptr %i.of, i64 %i.ej
  br label %.preheader2101

.preheader2106:                                   ; preds = %bb.y
  %i.ok = load i32, ptr %i.aw, align 4, !tbaa !292
  %i.ol = mul i32 %i.ok, %i.cy
  %i.om = sext i32 %i.ol to i64                   ; 4 uses
  %i.on = load <4 x float>, ptr %i.of, align 1, !tbaa !83
  store <4 x float> %i.on, ptr %31, align 16, !tbaa !83
  %i.oo = getelementptr inbounds i8, ptr %i.of, i64 %i.ej
  %i.op = load <4 x float>, ptr %i.oo, align 1, !tbaa !83
  store <4 x float> %i.op, ptr %i.eg, align 16, !tbaa !83
  %i.oq = getelementptr inbounds i8, ptr %i.of, i64 %indvars.iv.next2247.1
  %i.or = load <4 x float>, ptr %i.oq, align 1, !tbaa !83
  store <4 x float> %i.or, ptr %i.eh, align 16, !tbaa !83
  %i.os = getelementptr inbounds i8, ptr %i.of, i64 %indvars.iv.next2247.2
  %i.ot = load <4 x float>, ptr %i.os, align 1, !tbaa !83
  store <4 x float> %i.ot, ptr %i.ei, align 16, !tbaa !83
  %i.ou = getelementptr inbounds i8, ptr %i.of, i64 %i.om
  %i.ov = load <4 x float>, ptr %i.ou, align 1, !tbaa !83
  store <4 x float> %i.ov, ptr %i.ed, align 16, !tbaa !83
  %indvars.iv.next2247.12260 = add nsw i64 %i.om, %i.ej ; 2 uses
  %i.ow = getelementptr inbounds i8, ptr %i.of, i64 %indvars.iv.next2247.12260
  %i.ox = load <4 x float>, ptr %i.ow, align 1, !tbaa !83
  store <4 x float> %i.ox, ptr %39, align 16, !tbaa !83
  %indvars.iv.next2247.1.1 = add nsw i64 %indvars.iv.next2247.12260, %i.ej ; 2 uses
  %i.oy = getelementptr inbounds i8, ptr %i.of, i64 %indvars.iv.next2247.1.1
  %i.oz = load <4 x float>, ptr %i.oy, align 1, !tbaa !83
  store <4 x float> %i.oz, ptr %i.ek, align 16, !tbaa !83
  %i.pa = getelementptr i8, ptr %i.of, i64 %indvars.iv.next2247.1.1
  %i.pb = getelementptr i8, ptr %i.pa, i64 %i.ej
  %i.pc = load <4 x float>, ptr %i.pb, align 1, !tbaa !83
  store <4 x float> %i.pc, ptr %i.el, align 16, !tbaa !83
  %indvars.iv.next2245.1 = shl nsw i64 %i.om, 1   ; 2 uses
  %i.pd = getelementptr inbounds i8, ptr %i.of, i64 %indvars.iv.next2245.1
  %i.pe = load <4 x float>, ptr %i.pd, align 1, !tbaa !83
  store <4 x float> %i.pe, ptr %i.ee, align 16, !tbaa !83
  %indvars.iv.next2247.22261 = add nsw i64 %indvars.iv.next2245.1, %i.ej ; 2 uses
  %i.pf = getelementptr inbounds i8, ptr %i.of, i64 %indvars.iv.next2247.22261
  %i.pg = load <4 x float>, ptr %i.pf, align 1, !tbaa !83
  store <4 x float> %i.pg, ptr %i.em, align 16, !tbaa !83
  %indvars.iv.next2247.1.2 = add nsw i64 %indvars.iv.next2247.22261, %i.ej ; 2 uses
  %i.ph = getelementptr inbounds i8, ptr %i.of, i64 %indvars.iv.next2247.1.2
  %i.pi = load <4 x float>, ptr %i.ph, align 1, !tbaa !83
  store <4 x float> %i.pi, ptr %i.en, align 16, !tbaa !83
  %i.pj = getelementptr i8, ptr %i.of, i64 %indvars.iv.next2247.1.2
  %i.pk = getelementptr i8, ptr %i.pj, i64 %i.ej
  %i.pl = load <4 x float>, ptr %i.pk, align 1, !tbaa !83
  store <4 x float> %i.pl, ptr %i.eo, align 16, !tbaa !83
  %indvars.iv.next2245.2 = mul nsw i64 %i.om, 3   ; 2 uses
  %i.pm = getelementptr inbounds i8, ptr %i.of, i64 %indvars.iv.next2245.2
  %i.pn = load <4 x float>, ptr %i.pm, align 1, !tbaa !83
  store <4 x float> %i.pn, ptr %i.ef, align 16, !tbaa !83
  %indvars.iv.next2247.3 = add nsw i64 %indvars.iv.next2245.2, %i.ej ; 2 uses
  %i.po = getelementptr inbounds i8, ptr %i.of, i64 %indvars.iv.next2247.3
  %i.pp = load <4 x float>, ptr %i.po, align 1, !tbaa !83
  store <4 x float> %i.pp, ptr %i.ep, align 16, !tbaa !83
  %indvars.iv.next2247.1.3 = add nsw i64 %indvars.iv.next2247.3, %i.ej ; 2 uses
  %i.pq = getelementptr inbounds i8, ptr %i.of, i64 %indvars.iv.next2247.1.3
  %i.pr = load <4 x float>, ptr %i.pq, align 1, !tbaa !83
  store <4 x float> %i.pr, ptr %i.eq, align 16, !tbaa !83
  %i.ps = getelementptr i8, ptr %i.of, i64 %indvars.iv.next2247.1.3
  %i.pt = getelementptr i8, ptr %i.ps, i64 %i.ej
  %i.pu = load <4 x float>, ptr %i.pt, align 1, !tbaa !83
  store <4 x float> %i.pu, ptr %i.er, align 16, !tbaa !83
  br label %.loopexit2107

.preheader2101:                                   ; preds = %.preheader2108, %.preheader2101
  %indvars.iv2238 = phi i64 [ 0, %.preheader2108 ], [ %indvars.iv.next2239, %.preheader2101 ] ; 2 uses
  %indvars.iv2228 = phi i64 [ 0, %.preheader2108 ], [ %indvars.iv.next2229, %.preheader2101 ] ; 3 uses
  %i.pv = getelementptr inbounds nuw [64 x i8], ptr %31, i64 %indvars.iv2238 ; 4 uses
  %i.pw = getelementptr inbounds i8, ptr %i.of, i64 %indvars.iv2228
  %i.px = load float, ptr %i.pw, align 1, !tbaa !83
  %i.py = insertelement <4 x float> poison, float %i.px, i64 0
  %i.pz = bitcast <4 x float> %i.py to <16 x i8>
  %i.qa = shufflevector <16 x i8> %i.pz, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qb = bitcast <16 x i8> %i.qa to <8 x i16>
  %i.qc = shufflevector <8 x i16> %i.qb, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.qd = bitcast <8 x i16> %i.qc to <4 x i32>
  %i.qe = uitofp nneg <4 x i32> %i.qd to <4 x float>
  %i.qf = fmul <4 x float> %i.og, %i.qe
  store <4 x float> %i.qf, ptr %i.pv, align 16
  %indvars.iv.next2231 = add nsw i64 %indvars.iv2228, %i.ej ; 2 uses
  %i.qg = getelementptr inbounds i8, ptr %i.of, i64 %indvars.iv.next2231
  %i.qh = load float, ptr %i.qg, align 1, !tbaa !83
  %i.qi = insertelement <4 x float> poison, float %i.qh, i64 0
  %i.qj = bitcast <4 x float> %i.qi to <16 x i8>
  %i.qk = shufflevector <16 x i8> %i.qj, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ql = bitcast <16 x i8> %i.qk to <8 x i16>
  %i.qm = shufflevector <8 x i16> %i.ql, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.qn = bitcast <8 x i16> %i.qm to <4 x i32>
  %i.qo = uitofp nneg <4 x i32> %i.qn to <4 x float>
  %i.qp = fmul <4 x float> %i.og, %i.qo
  %i.qq = getelementptr inbounds nuw i8, ptr %i.pv, i64 16
  store <4 x float> %i.qp, ptr %i.qq, align 16
  %indvars.iv.next2231.1 = add nsw i64 %indvars.iv.next2231, %i.ej ; 2 uses
  %i.qr = getelementptr inbounds i8, ptr %i.of, i64 %indvars.iv.next2231.1
  %i.qs = load float, ptr %i.qr, align 1, !tbaa !83
  %i.qt = insertelement <4 x float> poison, float %i.qs, i64 0
  %i.qu = bitcast <4 x float> %i.qt to <16 x i8>
  %i.qv = shufflevector <16 x i8> %i.qu, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qw = bitcast <16 x i8> %i.qv to <8 x i16>
  %i.qx = shufflevector <8 x i16> %i.qw, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.qy = bitcast <8 x i16> %i.qx to <4 x i32>
  %i.qz = uitofp nneg <4 x i32> %i.qy to <4 x float>
  %i.ra = fmul <4 x float> %i.og, %i.qz
  %i.rb = getelementptr inbounds nuw i8, ptr %i.pv, i64 32
  store <4 x float> %i.ra, ptr %i.rb, align 16
  %gep2342 = getelementptr i8, ptr %invariant.gep2341, i64 %indvars.iv.next2231.1
  %i.rc = load float, ptr %gep2342, align 1, !tbaa !83
  %i.rd = insertelement <4 x float> poison, float %i.rc, i64 0
  %i.re = bitcast <4 x float> %i.rd to <16 x i8>
  %i.rf = shufflevector <16 x i8> %i.re, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rg = bitcast <16 x i8> %i.rf to <8 x i16>
  %i.rh = shufflevector <8 x i16> %i.rg, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ri = bitcast <8 x i16> %i.rh to <4 x i32>
  %i.rj = uitofp nneg <4 x i32> %i.ri to <4 x float>
  %i.rk = fmul <4 x float> %i.og, %i.rj
  %i.rl = getelementptr inbounds nuw i8, ptr %i.pv, i64 48
  store <4 x float> %i.rk, ptr %i.rl, align 16
  %indvars.iv.next2239 = add nuw nsw i64 %indvars.iv2238, 1 ; 2 uses
  %indvars.iv.next2229 = add nsw i64 %indvars.iv2228, %i.oj
  %exitcond2243.not = icmp eq i64 %indvars.iv.next2239, 4
  br i1 %exitcond2243.not, label %.loopexit2107, label %.preheader2101, !llvm.loop !730

.preheader2102:                                   ; preds = %bb.y
  %invariant.gep2339 = getelementptr i8, ptr %i.of, i64 %i.ej ; 4 uses
  %i.rm = load i32, ptr %i.aw, align 4, !tbaa !292
  %i.rn = mul i32 %i.rm, %i.cy
  %i.ro = sext i32 %i.rn to i64                   ; 4 uses
  %i.rp = load <4 x float>, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_18u16scaleE.0, align 16, !tbaa !83 ; 16 uses
  %i.rq = load <4 x i16>, ptr %i.of, align 2, !tbaa !355
  %i.rr = uitofp <4 x i16> %i.rq to <4 x float>
  %i.rs = fmul <4 x float> %i.rp, %i.rr
  store <4 x float> %i.rs, ptr %31, align 16
  %i.rt = getelementptr inbounds i8, ptr %i.of, i64 %i.ej
  %i.ru = load <4 x i16>, ptr %i.rt, align 2, !tbaa !355
  %i.rv = uitofp <4 x i16> %i.ru to <4 x float>
  %i.rw = fmul <4 x float> %i.rp, %i.rv
  store <4 x float> %i.rw, ptr %i.fr, align 16
  %i.rx = getelementptr inbounds i8, ptr %i.of, i64 %indvars.iv.next2215.1
  %i.ry = load <4 x i16>, ptr %i.rx, align 2, !tbaa !355
  %i.rz = uitofp <4 x i16> %i.ry to <4 x float>
  %i.sa = fmul <4 x float> %i.rp, %i.rz
  store <4 x float> %i.sa, ptr %i.fs, align 16
  %gep2340 = getelementptr i8, ptr %invariant.gep2339, i64 %indvars.iv.next2215.1
  %i.sb = load <4 x i16>, ptr %gep2340, align 2, !tbaa !355
  %i.sc = uitofp <4 x i16> %i.sb to <4 x float>
  %i.sd = fmul <4 x float> %i.rp, %i.sc
  store <4 x float> %i.sd, ptr %i.ft, align 16
  %i.se = getelementptr inbounds i8, ptr %i.of, i64 %i.ro
  %i.sf = load <4 x i16>, ptr %i.se, align 2, !tbaa !355
  %i.sg = uitofp <4 x i16> %i.sf to <4 x float>
  %i.sh = fmul <4 x float> %i.rp, %i.sg
  store <4 x float> %i.sh, ptr %i.fu, align 16
  %indvars.iv.next2215.12361 = add nsw i64 %i.ro, %i.ej ; 2 uses
  %i.si = getelementptr inbounds i8, ptr %i.of, i64 %indvars.iv.next2215.12361
  %i.sj = load <4 x i16>, ptr %i.si, align 2, !tbaa !355
  %i.sk = uitofp <4 x i16> %i.sj to <4 x float>
  %i.sl = fmul <4 x float> %i.rp, %i.sk
  store <4 x float> %i.sl, ptr %i.fv, align 16
  %indvars.iv.next2215.1.1 = add nsw i64 %indvars.iv.next2215.12361, %i.ej ; 2 uses
  %i.sm = getelementptr inbounds i8, ptr %i.of, i64 %indvars.iv.next2215.1.1
  %i.sn = load <4 x i16>, ptr %i.sm, align 2, !tbaa !355
  %i.so = uitofp <4 x i16> %i.sn to <4 x float>
  %i.sp = fmul <4 x float> %i.rp, %i.so
  store <4 x float> %i.sp, ptr %i.fw, align 16
  %gep2340.1 = getelementptr i8, ptr %invariant.gep2339, i64 %indvars.iv.next2215.1.1
  %i.sq = load <4 x i16>, ptr %gep2340.1, align 2, !tbaa !355
  %i.sr = uitofp <4 x i16> %i.sq to <4 x float>
  %i.ss = fmul <4 x float> %i.rp, %i.sr
  store <4 x float> %i.ss, ptr %i.fx, align 16
  %indvars.iv.next2213.1 = shl nsw i64 %i.ro, 1   ; 2 uses
  %i.st = getelementptr inbounds i8, ptr %i.of, i64 %indvars.iv.next2213.1
  %i.su = load <4 x i16>, ptr %i.st, align 2, !tbaa !355
  %i.sv = uitofp <4 x i16> %i.su to <4 x float>
  %i.sw = fmul <4 x float> %i.rp, %i.sv
  store <4 x float> %i.sw, ptr %i.fy, align 16
  %indvars.iv.next2215.2 = add nsw i64 %indvars.iv.next2213.1, %i.ej ; 2 uses
  %i.sx = getelementptr inbounds i8, ptr %i.of, i64 %indvars.iv.next2215.2
  %i.sy = load <4 x i16>, ptr %i.sx, align 2, !tbaa !355
  %i.sz = uitofp <4 x i16> %i.sy to <4 x float>
  %i.ta = fmul <4 x float> %i.rp, %i.sz
  store <4 x float> %i.ta, ptr %i.fz, align 16
  %indvars.iv.next2215.1.2 = add nsw i64 %indvars.iv.next2215.2, %i.ej ; 2 uses
  %i.tb = getelementptr inbounds i8, ptr %i.of, i64 %indvars.iv.next2215.1.2
  %i.tc = load <4 x i16>, ptr %i.tb, align 2, !tbaa !355
  %i.td = uitofp <4 x i16> %i.tc to <4 x float>
  %i.te = fmul <4 x float> %i.rp, %i.td
  store <4 x float> %i.te, ptr %i.ga, align 16
  %gep2340.2 = getelementptr i8, ptr %invariant.gep2339, i64 %indvars.iv.next2215.1.2
  %i.tf = load <4 x i16>, ptr %gep2340.2, align 2, !tbaa !355
  %i.tg = uitofp <4 x i16> %i.tf to <4 x float>
  %i.th = fmul <4 x float> %i.rp, %i.tg
  store <4 x float> %i.th, ptr %i.gb, align 16
  %indvars.iv.next2213.2 = mul nsw i64 %i.ro, 3   ; 2 uses
  %i.ti = getelementptr inbounds i8, ptr %i.of, i64 %indvars.iv.next2213.2
  %i.tj = load <4 x i16>, ptr %i.ti, align 2, !tbaa !355
  %i.tk = uitofp <4 x i16> %i.tj to <4 x float>
  %i.tl = fmul <4 x float> %i.rp, %i.tk
  store <4 x float> %i.tl, ptr %i.gc, align 16
  %indvars.iv.next2215.3 = add nsw i64 %indvars.iv.next2213.2, %i.ej ; 2 uses
  %i.tm = getelementptr inbounds i8, ptr %i.of, i64 %indvars.iv.next2215.3
  %i.tn = load <4 x i16>, ptr %i.tm, align 2, !tbaa !355
  %i.to = uitofp <4 x i16> %i.tn to <4 x float>
  %i.tp = fmul <4 x float> %i.rp, %i.to
  store <4 x float> %i.tp, ptr %i.gd, align 16
  %indvars.iv.next2215.1.3 = add nsw i64 %indvars.iv.next2215.3, %i.ej ; 2 uses
  %i.tq = getelementptr inbounds i8, ptr %i.of, i64 %indvars.iv.next2215.1.3
  %i.tr = load <4 x i16>, ptr %i.tq, align 2, !tbaa !355
  %i.ts = uitofp <4 x i16> %i.tr to <4 x float>
  %i.tt = fmul <4 x float> %i.rp, %i.ts
  store <4 x float> %i.tt, ptr %i.ge, align 16
  %gep2340.3 = getelementptr i8, ptr %invariant.gep2339, i64 %indvars.iv.next2215.1.3
  %i.tu = load <4 x i16>, ptr %gep2340.3, align 2, !tbaa !355
  %i.tv = uitofp <4 x i16> %i.tu to <4 x float>
  %i.tw = fmul <4 x float> %i.rp, %i.tv
  store <4 x float> %i.tw, ptr %i.gf, align 16
  br label %.loopexit2107

.preheader2103:                                   ; preds = %bb.y
  %invariant.gep = getelementptr i8, ptr %i.of, i64 %i.ej ; 4 uses
  %i.tx = load i32, ptr %i.aw, align 4, !tbaa !292
  %i.ty = mul i32 %i.tx, %i.cy
  %i.tz = sext i32 %i.ty to i64                   ; 4 uses
  %i.ua = load <4 x i16>, ptr %i.of, align 2, !tbaa !355 ; 2 uses
  %i.ub = and <4 x i16> %i.ua, splat (i16 32767)  ; 2 uses
  %i.uc = zext nneg <4 x i16> %i.ub to <4 x i32>
  %i.ud = shl nuw nsw <4 x i32> %i.uc, splat (i32 13)
  %i.ue = bitcast <4 x i32> %i.ud to <4 x float>
  %i.uf = fmul nnan <4 x float> %i.ue, splat (float f0x77800000)
  %i.ug = icmp samesign ugt <4 x i16> %i.ub, splat (i16 31743)
  %i.uh = select <4 x i1> %i.ug, <4 x i32> splat (i32 2139095040), <4 x i32> zeroinitializer
  %.signext2354 = sext <4 x i16> %i.ua to <4 x i32>
  %i.ui = and <4 x i32> %.signext2354, splat (i32 -2147483648)
  %i.uj = or disjoint <4 x i32> %i.uh, %i.ui
  %i.uk = bitcast <4 x float> %i.uf to <4 x i32>
  %i.ul = or <4 x i32> %i.uj, %i.uk
  store <4 x i32> %i.ul, ptr %31, align 16, !tbaa !83
  %i.um = getelementptr inbounds i8, ptr %i.of, i64 %i.ej
  %i.un = load <4 x i16>, ptr %i.um, align 2, !tbaa !355 ; 2 uses
  %i.uo = and <4 x i16> %i.un, splat (i16 32767)  ; 2 uses
  %i.up = zext nneg <4 x i16> %i.uo to <4 x i32>
  %i.uq = shl nuw nsw <4 x i32> %i.up, splat (i32 13)
  %i.ur = bitcast <4 x i32> %i.uq to <4 x float>
  %i.us = fmul nnan <4 x float> %i.ur, splat (float f0x77800000)
  %i.ut = icmp samesign ugt <4 x i16> %i.uo, splat (i16 31743)
  %i.uu = select <4 x i1> %i.ut, <4 x i32> splat (i32 2139095040), <4 x i32> zeroinitializer
  %.signext2355 = sext <4 x i16> %i.un to <4 x i32>
  %i.uv = and <4 x i32> %.signext2355, splat (i32 -2147483648)
  %i.uw = or disjoint <4 x i32> %i.uu, %i.uv
  %i.ux = bitcast <4 x float> %i.us to <4 x i32>
  %i.uy = or <4 x i32> %i.uw, %i.ux
  store <4 x i32> %i.uy, ptr %i.fc, align 16, !tbaa !83
  %i.uz = getelementptr inbounds i8, ptr %i.of, i64 %indvars.iv.next2199.1
  %i.va = load <4 x i16>, ptr %i.uz, align 2, !tbaa !355 ; 2 uses
  %i.vb = and <4 x i16> %i.va, splat (i16 32767)  ; 2 uses
  %i.vc = zext nneg <4 x i16> %i.vb to <4 x i32>
  %i.vd = shl nuw nsw <4 x i32> %i.vc, splat (i32 13)
  %i.ve = bitcast <4 x i32> %i.vd to <4 x float>
  %i.vf = fmul nnan <4 x float> %i.ve, splat (float f0x77800000)
  %i.vg = icmp samesign ugt <4 x i16> %i.vb, splat (i16 31743)
  %i.vh = select <4 x i1> %i.vg, <4 x i32> splat (i32 2139095040), <4 x i32> zeroinitializer
  %.signext2356 = sext <4 x i16> %i.va to <4 x i32>
  %i.vi = and <4 x i32> %.signext2356, splat (i32 -2147483648)
end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_117TextureSystemImpl14sample_bicubicEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_:bb.a
  %i.aky = fadd float %i.akv, -1.000000e+00
  %.0314 = select i1 %i.akx, float %i.aky, float %i.akv ; 2 uses
  %i.akz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv2270
  %i.ala = load float, ptr %i.akz, align 4, !tbaa !75
  %i.alb = fmul float %i.ala, %.0314              ; 5 uses
  %i.alc = fcmp olt float %i.alb, 1.000000e+00    ; 2 uses
  %i.ald = fadd float %.0314, -1.000000e+00
  %i.ale = fcmp ogt float %i.alb, %i.ald
  %or.cond378 = or i1 %i.alc, %i.ale
  br i1 %or.cond378, label %bb.br, label %bb.bv

bb.br:                                            ; preds = %bb.bq
  br i1 %i.alc, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.alf = fsub float 1.000000e+00, %i.alb
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %i.alg = call float @llvm.floor.f32(float %i.alb)
  %i.alh = fsub float %i.alb, %i.alg
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.sink36.i = phi i32 [ 1, %bb.bt ], [ 0, %bb.bs ]
  %.031.i = phi float [ %i.alh, %bb.bt ], [ %i.alf, %bb.bs ] ; 2 uses
  %i.ali = load i32, ptr %i.b, align 4, !tbaa !202
  %i.alj = call noundef ptr @_ZN11OpenImageIO4v3_117TextureSystemImpl10pole_colorERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13intrusive_ptrINS0_14ImageCacheTileEEEiii(ptr nonnull readnone align 8 poison, ptr noundef nonnull readonly align 8 dereferenceable(400) %5, ptr readonly poison, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.dr, i32 noundef %i.ali, i32 noundef %4, i32 noundef %.sink36.i)
  %.inv.i = fcmp oge float %.031.i, 0.000000e+00
  %.0.i.i = select i1 %.inv.i, float %.031.i, float 0.000000e+00 ; 2 uses
  %i.alk = fcmp ogt float %.0.i.i, 1.000000e+00
  %.1.i.i = select i1 %i.alk, float 1.000000e+00, float %.0.i.i ; 2 uses
  %i.all = fmul float %.1.i.i, %.1.i.i            ; 2 uses
  %i.alm = load i32, ptr %7, align 8, !tbaa !197
  %i.aln = sext i32 %i.alm to i64
  %i.alo = getelementptr inbounds [4 x i8], ptr %i.alj, i64 %i.aln ; 2 uses
  br i1 %i.ec, label %.lr.ph.preheader.i, label %_ZN11OpenImageIO4v3_117TextureSystemImpl12fade_to_poleEfPfRfRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2Eii.exit

.lr.ph.preheader.i:                               ; preds = %bb.bu
  %i.alp = fmul float %i.kc, %i.all               ; 2 uses
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.alp, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.alq = getelementptr inbounds nuw [4 x i8], ptr %i.alo, i64 %index ; 2 uses
  %i.alr = getelementptr inbounds nuw i8, ptr %i.alq, i64 16
  %wide.load = load <4 x float>, ptr %i.alq, align 4, !tbaa !75
  %wide.load2345 = load <4 x float>, ptr %i.alr, align 4, !tbaa !75
  %i.als = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %index ; 3 uses
  %i.alt = getelementptr inbounds nuw i8, ptr %i.als, i64 16 ; 2 uses
  %wide.load2346 = load <4 x float>, ptr %i.als, align 16, !tbaa !75
  %wide.load2347 = load <4 x float>, ptr %i.alt, align 16, !tbaa !75
  %i.alu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load, <4 x float> %wide.load2346)
  %i.alv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load2345, <4 x float> %wide.load2347)
  store <4 x float> %i.alu, ptr %i.als, align 16, !tbaa !75
  store <4 x float> %i.alv, ptr %i.alt, align 16, !tbaa !75
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.alw = icmp eq i64 %index.next, %n.vec
  br i1 %i.alw, label %middle.block, label %vector.body, !llvm.loop !739

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN11OpenImageIO4v3_117TextureSystemImpl12fade_to_poleEfPfRfRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2Eii.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.alx = getelementptr inbounds nuw [4 x i8], ptr %i.alo, i64 %indvars.iv.i
  %i.aly = load float, ptr %i.alx, align 4, !tbaa !75
  %i.alz = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %indvars.iv.i ; 2 uses
  %i.ama = load float, ptr %i.alz, align 4, !tbaa !75
  %i.amb = call float @llvm.fmuladd.f32(float %i.alp, float %i.aly, float %i.ama)
  store float %i.amb, ptr %i.alz, align 4, !tbaa !75
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN11OpenImageIO4v3_117TextureSystemImpl12fade_to_poleEfPfRfRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2Eii.exit, label %.lr.ph.i, !llvm.loop !740

_ZN11OpenImageIO4v3_117TextureSystemImpl12fade_to_poleEfPfRfRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2Eii.exit: ; preds = %.lr.ph.i, %middle.block, %bb.bu
  %i.amc = fsub float 1.000000e+00, %i.all
  %i.amd = fmul float %i.kc, %i.amc
  br label %bb.bv

bb.bv:                                            ; preds = %_ZN11OpenImageIO4v3_117TextureSystemImpl12fade_to_poleEfPfRfRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2Eii.exit, %bb.bq, %.loopexit2107
  %.0 = phi float [ %i.amd, %_ZN11OpenImageIO4v3_117TextureSystemImpl12fade_to_poleEfPfRfRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2Eii.exit ], [ %i.kc, %bb.bq ], [ %i.kc, %.loopexit2107 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01447)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.51448)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01410)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  br i1 %.not370, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ame = fsub float 1.000000e+00, %i.jy         ; 3 uses
  %i.amf = insertelement <4 x float> poison, float %i.ame, i64 0 ; 2 uses
  %i.amg = insertelement <4 x float> %i.amf, float %i.jy, i64 1
  %i.amh = insertelement <4 x float> %i.amg, float %i.ame, i64 2
  %i.ami = insertelement <4 x float> %i.amh, float %i.jy, i64 3 ; 4 uses
  %i.amj = insertelement <2 x float> poison, float %i.jy, i64 0
  %i.amk = insertelement <2 x float> %i.amj, float %i.ame, i64 1
  %i.aml = fsub <2 x float> splat (float 2.000000e+00), %i.amk
  %i.amm = shufflevector <2 x float> %i.aml, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.amn = shufflevector <4 x float> %i.amf, <4 x float> %i.amm, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.amo = insertelement <4 x float> %i.amn, float %i.jy, i64 3
  %i.amp = fmul <4 x float> %i.ami, <float f0x3E2AAAAB, float -5.000000e-01, float -5.000000e-01, float f0x3E2AAAAB>
  %i.amq = fmul <4 x float> %i.ami, %i.amp
  %i.amr = fmul <4 x float> %i.amo, %i.amq
  %i.ams = fadd <4 x float> %i.amr, <float 0.000000e+00, float f0x3F2AAAAB, float f0x3F2AAAAB, float 0.000000e+00>
  %bc.i1160 = bitcast <4 x float> %i.ams to <2 x double> ; 2 uses
  %i.amt = extractelement <2 x double> %bc.i1160, i64 0
  %i.amu = extractelement <2 x double> %bc.i1160, i64 1
  %i.amv = bitcast double %i.amt to <2 x i32>
  %i.amw = bitcast double %i.amu to <2 x i32>
  %.sroa.01450.8.vecblend1471 = shufflevector <2 x i32> %i.amv, <2 x i32> %i.amw, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.amx = fmul <4 x float> %i.ami, <float -5.000000e-01, float 5.000000e-01, float -5.000000e-01, float 5.000000e-01>
  %i.amy = fmul <4 x float> %i.ami, <float 1.000000e+00, float 3.000000e+00, float 3.000000e+00, float 1.000000e+00>
  %i.amz = fadd <4 x float> %i.amy, <float -0.000000e+00, float -4.000000e+00, float -4.000000e+00, float -0.000000e+00>
  %i.ana = fmul <4 x float> %i.amx, %i.amz
  %bc92.i = bitcast <4 x float> %i.ana to <2 x double> ; 2 uses
  %i.anb = extractelement <2 x double> %bc92.i, i64 0
  %i.anc = extractelement <2 x double> %bc92.i, i64 1
  store double %i.anb, ptr %.sroa.01447, align 16
  store double %i.anc, ptr %.sroa.51448, align 8, !tbaa !83
  %i.and = fsub float 1.000000e+00, %i.jx         ; 3 uses
  %i.ane = insertelement <4 x float> poison, float %i.and, i64 0 ; 2 uses
  %i.anf = insertelement <4 x float> %i.ane, float %i.jx, i64 1
  %i.ang = insertelement <4 x float> %i.anf, float %i.and, i64 2
  %i.anh = insertelement <4 x float> %i.ang, float %i.jx, i64 3 ; 4 uses
  %i.ani = insertelement <2 x float> poison, float %i.jx, i64 0
  %i.anj = insertelement <2 x float> %i.ani, float %i.and, i64 1
  %i.ank = fsub <2 x float> splat (float 2.000000e+00), %i.anj
  %i.anl = shufflevector <2 x float> %i.ank, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.anm = shufflevector <4 x float> %i.ane, <4 x float> %i.anl, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.ann = insertelement <4 x float> %i.anm, float %i.jx, i64 3
  %i.ano = fmul <4 x float> %i.anh, <float f0x3E2AAAAB, float -5.000000e-01, float -5.000000e-01, float f0x3E2AAAAB>
  %i.anp = fmul <4 x float> %i.anh, %i.ano
  %i.anq = fmul <4 x float> %i.ann, %i.anp
  %i.anr = fadd <4 x float> %i.anq, <float 0.000000e+00, float f0x3F2AAAAB, float f0x3F2AAAAB, float 0.000000e+00>
  %bc.i1163 = bitcast <4 x float> %i.anr to <2 x double> ; 2 uses
  %i.ans = extractelement <2 x double> %bc.i1163, i64 0
  %i.ant = extractelement <2 x double> %bc.i1163, i64 1
  %i.anu = bitcast double %i.ans to <2 x i32>
  %i.anv = bitcast double %i.ant to <2 x i32>
  %.sroa.01412.8.vecblend1433 = shufflevector <2 x i32> %i.anu, <2 x i32> %i.anv, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.anw = fmul <4 x float> %i.anh, <float -5.000000e-01, float 5.000000e-01, float -5.000000e-01, float 5.000000e-01>
  %i.anx = fmul <4 x float> %i.anh, <float 1.000000e+00, float 3.000000e+00, float 3.000000e+00, float 1.000000e+00>
  %i.any = fadd <4 x float> %i.anx, <float -0.000000e+00, float -4.000000e+00, float -4.000000e+00, float -0.000000e+00>
  %i.anz = fmul <4 x float> %i.anw, %i.any
  %bc92.i1165 = bitcast <4 x float> %i.anz to <2 x double> ; 2 uses
  %i.aoa = extractelement <2 x double> %bc92.i1165, i64 0
  %i.aob = extractelement <2 x double> %bc92.i1165, i64 1
  store double %i.aoa, ptr %.sroa.01410, align 16
  store double %i.aob, ptr %.sroa.5, align 8, !tbaa !83
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv
  %i.aoc = insertelement <4 x float> poison, float %i.jy, i64 0 ; 2 uses
  %i.aod = fsub <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, %i.aoc
  %i.aoe = shufflevector <4 x float> %i.aod, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.aof = shufflevector <4 x float> %i.aoe, <4 x float> %i.aoc, <4 x i32> <i32 0, i32 4, i32 1, i32 4> ; 3 uses
  %i.aog = fmul <4 x float> %i.aof, <float 1.000000e+00, float -1.000000e+00, float -1.000000e+00, float 1.000000e+00>
  %i.aoh = fadd <4 x float> %i.aog, <float 0.000000e+00, float 2.000000e+00, float 2.000000e+00, float 0.000000e+00>
  %i.aoi = fmul <4 x float> %i.aof, <float f0x3E2AAAAB, float -5.000000e-01, float -5.000000e-01, float f0x3E2AAAAB>
  %i.aoj = fmul <4 x float> %i.aof, %i.aoi
  %i.aok = fmul <4 x float> %i.aoj, %i.aoh
  %i.aol = fadd <4 x float> %i.aok, <float 0.000000e+00, float f0x3F2AAAAB, float f0x3F2AAAAB, float 0.000000e+00>
  %bc.i1167 = bitcast <4 x float> %i.aol to <2 x double> ; 2 uses
  %i.aom = extractelement <2 x double> %bc.i1167, i64 0
  %i.aon = extractelement <2 x double> %bc.i1167, i64 1
  %i.aoo = bitcast double %i.aom to <2 x i32>
  %i.aop = bitcast double %i.aon to <2 x i32>
  %.sroa.01450.8.vecblend = shufflevector <2 x i32> %i.aoo, <2 x i32> %i.aop, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aoq = insertelement <4 x float> poison, float %i.jx, i64 0 ; 2 uses
  %i.aor = fsub <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, %i.aoq
  %i.aos = shufflevector <4 x float> %i.aor, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.aot = shufflevector <4 x float> %i.aos, <4 x float> %i.aoq, <4 x i32> <i32 0, i32 4, i32 1, i32 4> ; 3 uses
  %i.aou = fmul <4 x float> %i.aot, <float 1.000000e+00, float -1.000000e+00, float -1.000000e+00, float 1.000000e+00>
  %i.aov = fadd <4 x float> %i.aou, <float 0.000000e+00, float 2.000000e+00, float 2.000000e+00, float 0.000000e+00>
  %i.aow = fmul <4 x float> %i.aot, <float f0x3E2AAAAB, float -5.000000e-01, float -5.000000e-01, float f0x3E2AAAAB>
  %i.aox = fmul <4 x float> %i.aot, %i.aow
  %i.aoy = fmul <4 x float> %i.aox, %i.aov
  %i.aoz = fadd <4 x float> %i.aoy, <float 0.000000e+00, float f0x3F2AAAAB, float f0x3F2AAAAB, float 0.000000e+00>
  %bc.i1168 = bitcast <4 x float> %i.aoz to <2 x double> ; 2 uses
  %i.apa = extractelement <2 x double> %bc.i1168, i64 0
  %i.apb = extractelement <2 x double> %bc.i1168, i64 1
  %i.apc = bitcast double %i.apa to <2 x i32>
  %i.apd = bitcast double %i.apb to <2 x i32>
  %.sroa.01412.8.vecblend = shufflevector <2 x i32> %i.apc, <2 x i32> %i.apd, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.sroa.01412.0 = phi <4 x i32> [ %.sroa.01412.8.vecblend, %bb.bx ], [ %.sroa.01412.8.vecblend1433, %bb.bw ]
  %.sroa.01450.0 = phi <4 x i32> [ %.sroa.01450.8.vecblend, %bb.bx ], [ %.sroa.01450.8.vecblend1471, %bb.bw ]
  %i.ape = bitcast <4 x i32> %.sroa.01450.0 to <4 x float> ; 7 uses
  %i.apf = shufflevector <4 x float> %i.ape, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %40 = shufflevector <4 x float> %i.ape, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.apg = fadd <4 x float> %i.apf, %40           ; 5 uses
  %i.aph = bitcast <4 x i32> %.sroa.01412.0 to <4 x float> ; 7 uses
  %i.api = shufflevector <4 x float> %i.aph, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.apj = shufflevector <4 x float> %i.aph, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.apk = fadd <4 x float> %i.api, %i.apj        ; 3 uses
  %i.apl = shufflevector <4 x float> %i.apg, <4 x float> %i.apk, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.apm = shufflevector <4 x float> %i.ape, <4 x float> %i.aph, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.apn = fdiv <4 x float> %i.apm, %i.apl        ; 10 uses
  %i.apo = shufflevector <4 x float> %i.apn, <4 x float> poison, <4 x i32> zeroinitializer ; 5 uses
  %i.app = fsub <4 x float> splat (float 1.000000e+00), %i.apo ; 4 uses
  %i.apq = shufflevector <4 x float> %i.apn, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 5 uses
  %i.apr = fsub <4 x float> splat (float 1.000000e+00), %i.apq ; 4 uses
  %i.aps = shufflevector <4 x float> %i.apg, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 5 uses
  %i.apt = fsub <4 x float> splat (float 1.000000e+00), %i.aps ; 4 uses
  %i.apu = load <4 x float>, ptr %31, align 16, !tbaa !83
  %i.apv = fmul <4 x float> %i.app, %i.apu
  %i.apw = load <4 x float>, ptr %i.eg, align 16, !tbaa !83
  %i.apx = fmul <4 x float> %i.apo, %i.apw
  %i.apy = fadd <4 x float> %i.apv, %i.apx
  %i.apz = load <4 x float>, ptr %i.eh, align 16, !tbaa !83
  %i.aqa = fmul <4 x float> %i.apr, %i.apz
  %i.aqb = load <4 x float>, ptr %i.ei, align 16, !tbaa !83
  %i.aqc = fmul <4 x float> %i.apq, %i.aqb
  %i.aqd = fadd <4 x float> %i.aqa, %i.aqc
  %i.aqe = fmul <4 x float> %i.apt, %i.apy
  %i.aqf = fmul <4 x float> %i.aps, %i.aqd
  %i.aqg = fadd <4 x float> %i.aqe, %i.aqf
  %i.aqh = load <4 x float>, ptr %i.ed, align 16, !tbaa !83 ; 3 uses
  %i.aqi = fmul <4 x float> %i.app, %i.aqh
  %i.aqj = load <4 x float>, ptr %i.es, align 16, !tbaa !83 ; 3 uses
  %i.aqk = fmul <4 x float> %i.apo, %i.aqj
  %i.aql = fadd <4 x float> %i.aqi, %i.aqk
  %i.aqm = load <4 x float>, ptr %i.et, align 16, !tbaa !83 ; 3 uses
  %i.aqn = fmul <4 x float> %i.apr, %i.aqm
  %i.aqo = load <4 x float>, ptr %i.eu, align 16, !tbaa !83 ; 3 uses
  %i.aqp = fmul <4 x float> %i.apq, %i.aqo
  %i.aqq = fadd <4 x float> %i.aqn, %i.aqp
  %i.aqr = fmul <4 x float> %i.apt, %i.aql
  %i.aqs = fmul <4 x float> %i.aps, %i.aqq
  %i.aqt = fadd <4 x float> %i.aqr, %i.aqs
  %i.aqu = load <4 x float>, ptr %i.ee, align 16, !tbaa !83 ; 3 uses
  %i.aqv = fmul <4 x float> %i.app, %i.aqu
  %i.aqw = load <4 x float>, ptr %i.ev, align 16, !tbaa !83 ; 3 uses
  %i.aqx = fmul <4 x float> %i.apo, %i.aqw
  %i.aqy = fadd <4 x float> %i.aqv, %i.aqx
  %i.aqz = load <4 x float>, ptr %i.ew, align 16, !tbaa !83 ; 3 uses
  %i.ara = fmul <4 x float> %i.apr, %i.aqz
  %i.arb = load <4 x float>, ptr %i.ex, align 16, !tbaa !83 ; 3 uses
  %i.arc = fmul <4 x float> %i.apq, %i.arb
  %i.ard = fadd <4 x float> %i.ara, %i.arc
  %i.are = fmul <4 x float> %i.apt, %i.aqy
  %i.arf = fmul <4 x float> %i.aps, %i.ard
  %i.arg = fadd <4 x float> %i.are, %i.arf
  %i.arh = load <4 x float>, ptr %i.ef, align 16, !tbaa !83 ; 3 uses
  %i.ari = fmul <4 x float> %i.app, %i.arh
  %i.arj = load <4 x float>, ptr %i.ey, align 16, !tbaa !83 ; 3 uses
  %i.ark = fmul <4 x float> %i.apo, %i.arj
  %i.arl = fadd <4 x float> %i.ari, %i.ark
  %i.arm = load <4 x float>, ptr %i.ez, align 16, !tbaa !83 ; 3 uses
  %i.arn = fmul <4 x float> %i.apr, %i.arm
  %i.aro = load <4 x float>, ptr %i.fa, align 16, !tbaa !83 ; 3 uses
  %i.arp = fmul <4 x float> %i.apq, %i.aro
  %i.arq = fadd <4 x float> %i.arn, %i.arp
  %i.arr = fmul <4 x float> %i.apt, %i.arl
  %i.ars = fmul <4 x float> %i.aps, %i.arq
  %i.art = fadd <4 x float> %i.arr, %i.ars
  %i.aru = shufflevector <4 x float> %i.apn, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %i.arv = fsub <4 x float> splat (float 1.000000e+00), %i.aru
  %i.arw = fmul <4 x float> %i.arv, %i.aqg
  %i.arx = fmul <4 x float> %i.aru, %i.aqt
  %i.ary = fadd <4 x float> %i.arw, %i.arx
  %i.arz = shufflevector <4 x float> %i.apn, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3> ; 2 uses
  %i.asa = fsub <4 x float> splat (float 1.000000e+00), %i.arz
  %i.asb = fmul <4 x float> %i.asa, %i.arg
  %i.asc = fmul <4 x float> %i.arz, %i.art
  %i.asd = fadd <4 x float> %i.asb, %i.asc
  %i.ase = insertelement <4 x float> poison, float %.0, i64 0
  %i.asf = shufflevector <4 x float> %i.ase, <4 x float> poison, <4 x i32> zeroinitializer
  %i.asg = shufflevector <4 x float> %i.apk, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.ash = fsub <4 x float> splat (float 1.000000e+00), %i.asg
  %i.asi = fmul <4 x float> %i.ash, %i.ary
  %i.asj = fmul <4 x float> %i.asd, %i.asg
  %i.ask = fadd <4 x float> %i.asi, %i.asj
  %i.asl = fmul <4 x float> %i.asf, %i.ask
  %i.asm = load <4 x float>, ptr %22, align 16, !tbaa !83
  %i.asn = fadd <4 x float> %i.asm, %i.asl
  store <4 x float> %i.asn, ptr %22, align 16, !tbaa !83
  br i1 %.not370, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.aso = load <2 x i32>, ptr %i.ah, align 4, !tbaa !55
  %i.asp = sitofp <2 x i32> %i.aso to <2 x float>
  %i.asq = insertelement <2 x float> poison, float %.0, i64 0
  %i.asr = shufflevector <2 x float> %i.asq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ass = fmul <2 x float> %i.asr, %i.asp        ; 2 uses
  %i.ast = shufflevector <2 x float> %i.ass, <2 x float> poison, <4 x i32> zeroinitializer
  %i.asu = shufflevector <2 x float> %i.ass, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %.sroa.01447.0..sroa.01447.0..sroa.01447.0..sroa.01447.0. = load float, ptr %.sroa.01447, align 16, !tbaa !75
  %i.asv = load <4 x float>, ptr %31, align 16, !tbaa !83 ; 2 uses
  %i.asw = shufflevector <4 x float> %i.aph, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.asx = fmul <4 x float> %i.asw, %i.asv
  %i.asy = shufflevector <4 x float> %i.aph, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 4 uses
  %i.asz = fmul <4 x float> %i.asy, %i.aqh
  %i.ata = fadd <4 x float> %i.asx, %i.asz
  %i.atb = shufflevector <4 x float> %i.aph, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2> ; 4 uses
  %i.atc = fmul <4 x float> %i.atb, %i.aqu
  %i.atd = fadd <4 x float> %i.ata, %i.atc
  %i.ate = shufflevector <4 x float> %i.aph, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3> ; 4 uses
  %i.atf = fmul <4 x float> %i.ate, %i.arh
  %i.atg = fadd <4 x float> %i.atd, %i.atf
  %i.ath = insertelement <4 x float> poison, float %.sroa.01447.0..sroa.01447.0..sroa.01447.0..sroa.01447.0., i64 0
  %i.ati = shufflevector <4 x float> %i.ath, <4 x float> poison, <4 x i32> zeroinitializer
  %i.atj = fmul <4 x float> %i.ati, %i.atg
  %.sroa.01447.4..sroa.01447.4..sroa.01447.4..sroa.01447.4. = load float, ptr %.sroa.01447.4..sroa_idx2363, align 4, !tbaa !75
  %i.atk = load <4 x float>, ptr %i.eg, align 16, !tbaa !83 ; 2 uses
  %i.atl = fmul <4 x float> %i.asw, %i.atk
  %i.atm = fmul <4 x float> %i.asy, %i.aqj
  %i.atn = fadd <4 x float> %i.atl, %i.atm
  %i.ato = fmul <4 x float> %i.atb, %i.aqw
  %i.atp = fadd <4 x float> %i.atn, %i.ato
  %i.atq = fmul <4 x float> %i.ate, %i.arj
  %i.atr = fadd <4 x float> %i.atp, %i.atq
  %i.ats = insertelement <4 x float> poison, float %.sroa.01447.4..sroa.01447.4..sroa.01447.4..sroa.01447.4., i64 0
  %i.att = shufflevector <4 x float> %i.ats, <4 x float> poison, <4 x i32> zeroinitializer
  %i.atu = fmul <4 x float> %i.att, %i.atr
  %i.atv = fadd <4 x float> %i.atj, %i.atu
  %.sroa.51448.0..sroa.51448.0..sroa.51448.0..sroa.51448.8. = load float, ptr %.sroa.51448, align 8, !tbaa !75
  %i.atw = load <4 x float>, ptr %i.eh, align 16, !tbaa !83 ; 2 uses
  %i.atx = fmul <4 x float> %i.asw, %i.atw
  %i.aty = fmul <4 x float> %i.asy, %i.aqm
  %i.atz = fadd <4 x float> %i.atx, %i.aty
  %i.aua = fmul <4 x float> %i.atb, %i.aqz
  %i.aub = fadd <4 x float> %i.atz, %i.aua
  %i.auc = fmul <4 x float> %i.ate, %i.arm
  %i.aud = fadd <4 x float> %i.aub, %i.auc
  %i.aue = insertelement <4 x float> poison, float %.sroa.51448.0..sroa.51448.0..sroa.51448.0..sroa.51448.8., i64 0
  %i.auf = shufflevector <4 x float> %i.aue, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aug = fmul <4 x float> %i.auf, %i.aud
  %i.auh = fadd <4 x float> %i.atv, %i.aug
  %.sroa.51448.4..sroa.51448.4..sroa.51448.4..sroa.51448.12. = load float, ptr %.sroa.51448.4..sroa_idx, align 4, !tbaa !75
  %i.aui = load <4 x float>, ptr %i.ei, align 16, !tbaa !83 ; 2 uses
  %i.auj = fmul <4 x float> %i.asw, %i.aui
  %i.auk = fmul <4 x float> %i.asy, %i.aqo
  %i.aul = fadd <4 x float> %i.auj, %i.auk
  %i.aum = fmul <4 x float> %i.atb, %i.arb
  %i.aun = fadd <4 x float> %i.aul, %i.aum
  %i.auo = fmul <4 x float> %i.ate, %i.aro
  %i.aup = fadd <4 x float> %i.aun, %i.auo
  %i.auq = insertelement <4 x float> poison, float %.sroa.51448.4..sroa.51448.4..sroa.51448.4..sroa.51448.12., i64 0
  %i.aur = shufflevector <4 x float> %i.auq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aus = fmul <4 x float> %i.aur, %i.aup
  %i.aut = fadd <4 x float> %i.auh, %i.aus
  %i.auu = fmul <4 x float> %i.ast, %i.aut
  %i.auv = fadd <4 x float> %.sroa.01536.12174, %i.auu
  %.sroa.01410.0..sroa.01410.0..sroa.01410.0..sroa.01410.0. = load float, ptr %.sroa.01410, align 16, !tbaa !75
  %i.auw = shufflevector <4 x float> %i.ape, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.aux = fmul <4 x float> %i.auw, %i.asv
  %i.auy = shufflevector <4 x float> %i.ape, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 4 uses
  %i.auz = fmul <4 x float> %i.auy, %i.atk
  %i.ava = fadd <4 x float> %i.aux, %i.auz
  %i.avb = shufflevector <4 x float> %i.ape, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2> ; 4 uses
  %i.avc = fmul <4 x float> %i.avb, %i.atw
  %i.avd = fadd <4 x float> %i.ava, %i.avc
  %i.ave = shufflevector <4 x float> %i.ape, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3> ; 4 uses
  %i.avf = fmul <4 x float> %i.ave, %i.aui
  %i.avg = fadd <4 x float> %i.avd, %i.avf
  %i.avh = insertelement <4 x float> poison, float %.sroa.01410.0..sroa.01410.0..sroa.01410.0..sroa.01410.0., i64 0
  %i.avi = shufflevector <4 x float> %i.avh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.avj = fmul <4 x float> %i.avg, %i.avi
  %.sroa.01410.4..sroa.01410.4..sroa.01410.4..sroa.01410.4. = load float, ptr %.sroa.01410.4..sroa_idx2362, align 4, !tbaa !75
  %i.avk = fmul <4 x float> %i.auw, %i.aqh
  %i.avl = fmul <4 x float> %i.auy, %i.aqj
  %i.avm = fadd <4 x float> %i.avk, %i.avl
  %i.avn = fmul <4 x float> %i.avb, %i.aqm
  %i.avo = fadd <4 x float> %i.avm, %i.avn
  %i.avp = fmul <4 x float> %i.ave, %i.aqo
  %i.avq = fadd <4 x float> %i.avo, %i.avp
  %i.avr = insertelement <4 x float> poison, float %.sroa.01410.4..sroa.01410.4..sroa.01410.4..sroa.01410.4., i64 0
  %i.avs = shufflevector <4 x float> %i.avr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.avt = fmul <4 x float> %i.avq, %i.avs
  %i.avu = fadd <4 x float> %i.avj, %i.avt
  %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.8. = load float, ptr %.sroa.5, align 8, !tbaa !75
  %i.avv = fmul <4 x float> %i.auw, %i.aqu
  %i.avw = fmul <4 x float> %i.auy, %i.aqw
  %i.avx = fadd <4 x float> %i.avv, %i.avw
  %i.avy = fmul <4 x float> %i.avb, %i.aqz
  %i.avz = fadd <4 x float> %i.avx, %i.avy
  %i.awa = fmul <4 x float> %i.ave, %i.arb
  %i.awb = fadd <4 x float> %i.avz, %i.awa
  %i.awc = insertelement <4 x float> poison, float %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.8., i64 0
  %i.awd = shufflevector <4 x float> %i.awc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.awe = fmul <4 x float> %i.awb, %i.awd
  %i.awf = fadd <4 x float> %i.avu, %i.awe
  %.sroa.5.4..sroa.5.4..sroa.5.4..sroa.5.12. = load float, ptr %.sroa.5.4..sroa_idx, align 4, !tbaa !75
  %i.awg = fmul <4 x float> %i.auw, %i.arh
  %i.awh = fmul <4 x float> %i.auy, %i.arj
  %i.awi = fadd <4 x float> %i.awg, %i.awh
  %i.awj = fmul <4 x float> %i.avb, %i.arm
  %i.awk = fadd <4 x float> %i.awi, %i.awj
  %i.awl = fmul <4 x float> %i.ave, %i.aro
  %i.awm = fadd <4 x float> %i.awk, %i.awl
  %i.awn = insertelement <4 x float> poison, float %.sroa.5.4..sroa.5.4..sroa.5.4..sroa.5.12., i64 0
  %i.awo = shufflevector <4 x float> %i.awn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.awp = fmul <4 x float> %i.awm, %i.awo
  %i.awq = fadd <4 x float> %i.awf, %i.awp
  %i.awr = fmul <4 x float> %i.asu, %i.awq
  %i.aws = fadd <4 x float> %.sroa.01534.12173, %i.awr
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.sroa.01534.2 = phi <4 x float> [ %.sroa.01534.12173, %bb.by ], [ %i.aws, %bb.bz ]
  %.sroa.01536.2 = phi <4 x float> [ %.sroa.01536.12174, %bb.by ], [ %i.auv, %bb.bz ]
  %.not9 = xor i1 %.0346.in2045, true
  %or.cond11 = select i1 %.not9, i1 %i.av, i1 false
  br i1 %or.cond11, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %41 = extractelement <4 x float> %i.apn, i64 1
  %42 = extractelement <4 x float> %i.apg, i64 1  ; 3 uses
  %i.awt = load <4 x i32>, ptr %29, align 16, !tbaa !55 ; 2 uses
  %i.awu = sitofp <4 x i32> %i.awt to <4 x float> ; 3 uses
  %i.awv = shufflevector <4 x float> %i.awu, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.aww = sitofp <4 x i32> %i.awt to <4 x float> ; 2 uses
  %i.awx = shufflevector <4 x float> %i.aww, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3> ; 2 uses
  %i.awy = shufflevector <4 x float> %i.apn, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.awz = fsub <2 x float> splat (float 1.000000e+00), %i.awy ; 3 uses
  %i.axa = shufflevector <2 x float> %i.awz, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.axb = load <2 x i32>, ptr %30, align 16, !tbaa !55
  %i.axc = shufflevector <2 x i32> %i.axb, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.axd = sitofp <4 x i32> %i.axc to <4 x float> ; 2 uses
  %i.axe = fmul nnan <4 x float> %i.awv, %i.axd
  %i.axf = fmul nnan <4 x float> %i.awx, %i.axd
  %i.axg = shufflevector <4 x float> %i.apn, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.axh = fmul <4 x float> %i.axg, %i.axf
  %i.axi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.axe, <4 x float> %i.axa, <4 x float> %i.axh) ; 4 uses
  %43 = extractelement <4 x float> %i.axi, i64 2
  %44 = fmul float %42, %43
  %i.axj = extractelement <4 x float> %i.axi, i64 0
  %45 = load i32, ptr %i.df, align 8, !tbaa !55
  %46 = sitofp i32 %45 to float
  %i.axk = extractelement <4 x float> %i.awu, i64 2
  %47 = extractelement <4 x float> %i.aww, i64 3
  %48 = extractelement <2 x float> %i.awz, i64 1
  %49 = load i32, ptr %i.fb, align 4, !tbaa !55
  %50 = sitofp i32 %49 to float                   ; 3 uses
  %51 = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %46, i64 1
  %52 = insertelement <4 x float> %51, float %50, i64 3
  %53 = shufflevector <4 x float> %52, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3> ; 3 uses
  %54 = shufflevector <4 x float> %i.apg, <4 x float> %i.awu, <4 x i32> <i32 1, i32 4, i32 6, i32 4> ; 2 uses
  %i.axl = fsub <4 x float> %53, %54              ; 2 uses
  %i.axm = fmul nnan <4 x float> %53, %54
  %55 = shufflevector <4 x float> %i.axl, <4 x float> %i.axm, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %56 = extractelement <4 x float> %i.axl, i64 0  ; 3 uses
  %57 = call noundef float @llvm.fmuladd.f32(float %i.axj, float %56, float %44)
  %58 = shufflevector <4 x float> %i.axi, <4 x float> %i.awx, <4 x i32> <i32 3, i32 4, i32 6, i32 4>
  %i.axn = fmul <4 x float> %53, %58
  %59 = shufflevector <4 x float> %i.apg, <4 x float> %i.apn, <4 x i32> <i32 1, i32 4, i32 5, i32 4>
  %60 = fmul <4 x float> %59, %i.axn
  %61 = shufflevector <2 x float> %i.awz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %62 = shufflevector <4 x float> %i.axi, <4 x float> %61, <4 x i32> <i32 1, i32 4, i32 5, i32 4>
  %63 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %62, <4 x float> %55, <4 x float> %60) ; 4 uses
  %i.axo = extractelement <4 x float> %63, i64 2
  %64 = fmul float %42, %i.axo
  %65 = extractelement <4 x float> %63, i64 1
  %66 = call noundef float @llvm.fmuladd.f32(float %65, float %56, float %64)
  %67 = fmul nnan float %i.axk, %50
  %68 = fmul nnan float %47, %50
  %69 = fmul float %41, %68
  %70 = call noundef float @llvm.fmuladd.f32(float %67, float %48, float %69)
  %71 = fmul float %42, %70
  %72 = extractelement <4 x float> %63, i64 3
  %73 = call noundef float @llvm.fmuladd.f32(float %72, float %56, float %71)
  %74 = extractelement <4 x float> %i.apn, i64 2  ; 2 uses
  %75 = fsub float 1.000000e+00, %74
  %i.axp = extractelement <4 x float> %63, i64 0
  %76 = fmul float %74, %i.axp
  %i.axq = call noundef float @llvm.fmuladd.f32(float %57, float %75, float %76)
  %i.axr = extractelement <4 x float> %i.apn, i64 3 ; 2 uses
  %i.axs = fsub float 1.000000e+00, %i.axr
  %i.axt = fmul float %i.axr, %73
  %i.axu = call noundef float @llvm.fmuladd.f32(float %66, float %i.axs, float %i.axt)
  %i.axv = extractelement <4 x float> %i.apk, i64 1 ; 2 uses
  %i.axw = fsub float 1.000000e+00, %i.axv
  %i.axx = fmul float %i.axv, %i.axu
  %i.axy = call noundef float @llvm.fmuladd.f32(float %i.axq, float %i.axw, float %i.axx)
  %i.axz = fsub float 1.000000e+00, %i.axy
  %i.aya = call float @llvm.fmuladd.f32(float %.0, float %i.axz, float %.03152177)
  br label %bb.cc

bb.cc:                                            ; preds = %bb.ca, %bb.cb
  %.1316 = phi float [ %i.aya, %bb.cb ], [ %.03152177, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01410)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01447)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.51448)
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #3
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %.thread2053
  %.33182060 = phi float [ %i.lv, %.thread2053 ], [ %.1316, %bb.cc ] ; 2 uses
  %.sroa.01536.42059 = phi <4 x float> [ %.sroa.01536.12174, %.thread2053 ], [ %.sroa.01536.2, %bb.cc ] ; 2 uses
  %.sroa.01534.42058 = phi <4 x float> [ %.sroa.01534.12173, %.thread2053 ], [ %.sroa.01534.2, %bb.cc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #3
  %indvars.iv.next2271 = add nuw nsw i64 %indvars.iv2270, 1 ; 2 uses
  %exitcond2273.not = icmp eq i64 %indvars.iv.next2271, %wide.trip.count
  br i1 %exitcond2273.not, label %._crit_edge.loopexit, label %bb.h, !llvm.loop !741

bb.ce:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1151, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1141
  %.pn = phi { ptr, i32 } [ %i.ni, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1141 ], [ %eh.lpad-body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1151 ]
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

.loopexit2114:                                    ; preds = %bb.x, %bb.bp, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #3
  br label %bb.ci

._crit_edge.loopexit:                             ; preds = %bb.cd
  %.pre2302 = load <4 x i32>, ptr %22, align 16, !tbaa !83
  %i.ayb = bitcast <4 x float> %.sroa.01536.42059 to <4 x i32>
  %i.ayc = bitcast <4 x float> %.sroa.01534.42058 to <4 x i32>
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit
  %i.ayd = phi <4 x i32> [ zeroinitializer, %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit ], [ %.pre2302, %._crit_edge.loopexit ]
  %.sroa.01534.1.lcssa = phi <4 x i32> [ zeroinitializer, %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit ], [ %i.ayc, %._crit_edge.loopexit ]
  %.sroa.01536.1.lcssa = phi <4 x i32> [ zeroinitializer, %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit ], [ %i.ayb, %._crit_edge.loopexit ]
  %.0315.lcssa = phi float [ 0.000000e+00, %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit ], [ %.33182060, %._crit_edge.loopexit ]
  %i.aye = sext i32 %9 to i64
  %i.ayf = getelementptr inbounds [16 x i8], ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_113channel_masksE, i64 %i.aye
  %.sroa.01179.0.copyload2072 = load <4 x i32>, ptr %i.ayf, align 16, !tbaa !83 ; 4 uses
  %i.ayg = and <4 x i32> %i.ayd, %.sroa.01179.0.copyload2072
  store <4 x i32> %i.ayg, ptr %22, align 16
  br i1 %i.av, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %._crit_edge
  %i.ayh = fsub float 1.000000e+00, %.0315.lcssa
  %i.ayi = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ayj = load float, ptr %i.ayi, align 8, !tbaa !256
  %i.ayk = fmul float %i.ayh, %i.ayj
  %i.ayl = insertelement <4 x float> poison, float %i.ayk, i64 0
  %i.aym = xor <4 x i32> %.sroa.01179.0.copyload2072, splat (i32 -1)
  %i.ayn = bitcast <4 x float> %i.ayl to <4 x i32>
  %i.ayo = shufflevector <4 x i32> %i.ayn, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ayp = and <4 x i32> %i.ayo, %i.aym
  %i.ayq = load <4 x float>, ptr %22, align 16, !tbaa !83
  %i.ayr = bitcast <4 x i32> %i.ayp to <4 x float>
  %i.ays = fadd <4 x float> %i.ayq, %i.ayr
  store <4 x float> %i.ays, ptr %22, align 16, !tbaa !83
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %11, ptr noundef nonnull align 16 dereferenceable(16) %22, i64 16, i1 false), !tbaa.struct !368
  br i1 %.not370, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ayt = and <4 x i32> %.sroa.01179.0.copyload2072, %.sroa.01536.1.lcssa
  store <4 x i32> %i.ayt, ptr %12, align 16
  %i.ayu = and <4 x i32> %.sroa.01179.0.copyload2072, %.sroa.01534.1.lcssa
  store <4 x i32> %i.ayu, ptr %13, align 16
  br label %bb.ci

bb.ci:                                            ; preds = %bb.cg, %bb.ch, %.loopexit2114
  %i.ayv = phi i1 [ true, %bb.cg ], [ true, %bb.ch ], [ false, %.loopexit2114 ]
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
  ret i1 %i.ayv
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
  %i.p = fsub double %i.o, %i.n
  %i.q = fadd double %i.o, %i.n
  %i.r = insertelement <2 x double> poison, double %i.p, i64 0
  %i.s = insertelement <2 x double> %i.r, double %i.q, i64 1
  %i.t = fmul <2 x double> %i.s, splat (double 5.000000e-01) ; 2 uses
  %i.u = fptrunc <2 x double> %i.t to <2 x float>
  %i.v = fcmp ult <2 x double> %i.t, splat (double f0xB690000000000000)
  %i.w = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.u)
  %i.x = select <2 x i1> %i.v, <2 x float> zeroinitializer, <2 x float> %i.w ; 2 uses
  %i.y = fcmp ogt <2 x float> %i.x, splat (float 1.000000e+03)
  %i.z = select <2 x i1> %i.y, <2 x float> splat (float 1.000000e+03), <2 x float> %i.x ; 2 uses
  %i.aa = extractelement <2 x float> %i.z, i64 1
  store float %i.aa, ptr %4, align 4, !tbaa !75
  %i.ab = extractelement <2 x float> %i.z, i64 0
  store float %i.ab, ptr %5, align 4, !tbaa !75
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
  store float %i.bb, ptr %6, align 4, !tbaa !75
  %.not = icmp eq ptr %7, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN11OpenImageIO4v3_110fast_atan2Eff.exit
  %i.bc = fmul double %i.j, %i.j
  %i.bd = fmul double %i.bc, -2.500000e-01
  %i.be = tail call double @llvm.fmuladd.f64(double %i.f, double %i.l, double %i.bd) ; 2 uses
end_hunk_2

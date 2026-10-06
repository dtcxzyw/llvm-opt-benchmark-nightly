Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/dec_group?download=true
inline.NumInlined: 2848
inline.NumDeleted: 1074
loop-unroll.NumCompletelyUnrolled: 609
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 661
begin_hunk_0_@_ZN3jxl6N_AVX212DequantBlockILNS_6ACTypeE0EEEvfiffN3hwy6N_AVX26Vec256IfEES6_NS_14AcStrategyTypeEmRKNS_9QuantizerEmPKmPrPKfmSE_PNS_5ACPtrEPfSJ_:bb.a
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.03839
  %i.bm = load <8 x float>, ptr %i.bl, align 32, !tbaa !222, !alias.scope !3842, !noalias !3845
  %i.bn = fmul <8 x float> %i.e, %i.bm
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.03839
  %i.bp = load <8 x float>, ptr %i.bo, align 32, !tbaa !222, !alias.scope !3842, !noalias !3845
  %i.bq = fmul <8 x float> %i.g, %i.bp
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.03839
  %i.bs = load <8 x float>, ptr %i.br, align 32, !tbaa !222, !alias.scope !3842, !noalias !3845
  %i.bt = fmul <8 x float> %i.j, %i.bs
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %.03839
  %i.bv = load <8 x i16>, ptr %i.bu, align 16, !tbaa !222, !alias.scope !3846, !noalias !3837 ; 2 uses
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %.03839
  %i.bx = load <8 x i16>, ptr %i.bw, align 16, !tbaa !222, !alias.scope !3847, !noalias !3837 ; 2 uses
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %.03839
  %i.bz = load <8 x i16>, ptr %i.by, align 16, !tbaa !222, !alias.scope !3848, !noalias !3837 ; 2 uses
  %i.ca = sitofp <8 x i16> %i.bv to <8 x float>   ; 4 uses
  %i.cb = bitcast <8 x float> %i.ca to <8 x i32>
  %i.cc = and <8 x i32> %i.cb, splat (i32 -2147483648)
  %i.cd = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ca)
  %i.ce = fcmp olt <8 x float> %i.cd, splat (float 1.125000e+00)
  %.not.i = icmp eq <8 x i16> %i.bv, zeroinitializer
  %i.cf = xor <8 x i32> %i.af, %i.cc
  %i.cg = bitcast <8 x i32> %i.cf to <8 x float>
  %i.ch = select <8 x i1> %.not.i, <8 x float> zeroinitializer, <8 x float> %i.cg
  %i.ci = tail call noundef <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> %i.ca)
  %i.cj = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.aj, <8 x float> %i.ci, <8 x float> %i.ca)
  %i.ck = select <8 x i1> %i.ce, <8 x float> %i.ch, <8 x float> %i.cj
  %i.cl = fmul <8 x float> %i.bn, %i.ck
  %i.cm = sitofp <8 x i16> %i.bx to <8 x float>   ; 4 uses
  %i.cn = bitcast <8 x float> %i.cm to <8 x i32>
  %i.co = and <8 x i32> %i.cn, splat (i32 -2147483648)
  %i.cp = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.cm)
  %i.cq = fcmp olt <8 x float> %i.cp, splat (float 1.125000e+00)
  %.not73.i = icmp eq <8 x i16> %i.bx, zeroinitializer
  %i.cr = xor <8 x i32> %i.ao, %i.co
  %i.cs = bitcast <8 x i32> %i.cr to <8 x float>
  %i.ct = select <8 x i1> %.not73.i, <8 x float> zeroinitializer, <8 x float> %i.cs
  %i.cu = tail call noundef <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> %i.cm)
  %i.cv = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.aj, <8 x float> %i.cu, <8 x float> %i.cm)
  %i.cw = select <8 x i1> %i.cq, <8 x float> %i.ct, <8 x float> %i.cv
  %i.cx = fmul <8 x float> %i.bq, %i.cw           ; 3 uses
  %i.cy = sitofp <8 x i16> %i.bz to <8 x float>   ; 4 uses
  %i.cz = bitcast <8 x float> %i.cy to <8 x i32>
  %i.da = and <8 x i32> %i.cz, splat (i32 -2147483648)
  %i.db = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.cy)
  %i.dc = fcmp olt <8 x float> %i.db, splat (float 1.125000e+00)
  %.not74.i = icmp eq <8 x i16> %i.bz, zeroinitializer
  %i.dd = xor <8 x i32> %i.at, %i.da
  %i.de = bitcast <8 x i32> %i.dd to <8 x float>
  %i.df = select <8 x i1> %.not74.i, <8 x float> zeroinitializer, <8 x float> %i.de
  %i.dg = tail call noundef <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> %i.cy)
  %i.dh = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.aj, <8 x float> %i.dg, <8 x float> %i.cy)
  %i.di = select <8 x i1> %i.dc, <8 x float> %i.df, <8 x float> %i.dh
  %i.dj = fmul <8 x float> %i.bt, %i.di
  %i.dk = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %4, <8 x float> %i.cx, <8 x float> %i.cl)
  %i.dl = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %5, <8 x float> %i.cx, <8 x float> %i.dj)
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %.03839
  store <8 x float> %i.dk, ptr %i.dm, align 32, !tbaa !222, !alias.scope !3844, !noalias !3849
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %.03839
  store <8 x float> %i.cx, ptr %i.dn, align 32, !tbaa !222, !alias.scope !3844, !noalias !3849
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %.03839
  store <8 x float> %i.dl, ptr %i.do, align 32, !tbaa !222, !alias.scope !3844, !noalias !3849
  %i.dp = add nuw i64 %.03839, 8                  ; 2 uses
  %i.dq = icmp ult i64 %i.dp, %i.t
  br i1 %i.dq, label %bb.b, label %.preheader, !llvm.loop !3836
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN3jxl6N_AVX212_GLOBAL__N_123LowestFrequenciesFromDCENS_14AcStrategyTypeEPKfmPfS5_(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr noalias noundef %4) unnamed_addr #5 {
bb.a:
  %5 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %6 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %7 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %8 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %9 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %10 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %11 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %12 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %13 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %14 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %15 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %16 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %17 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %18 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %19 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %20 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %21 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %22 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %23 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %24 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %25 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %26 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %27 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %28 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %29 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %30 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %31 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %32 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  switch i32 %0, label %_ZN3jxl6N_AVX212_GLOBAL__N_117ReinterpretingDCTILm16ELm8ELm2ELm1ELm2ELm1EEEvPKfmPfmS5_S5_.exit [
    i32 6, label %.preheader
    i32 7, label %.preheader389
    i32 4, label %.preheader392
    i32 8, label %.preheader394
    i32 9, label %.preheader397
    i32 10, label %.preheader400
    i32 11, label %.preheader402
    i32 5, label %.preheader404
    i32 19, label %.preheader406
    i32 20, label %.preheader408
    i32 18, label %.preheader410
    i32 22, label %.preheader412
    i32 23, label %.preheader414
    i32 21, label %.preheader416
    i32 25, label %bb.b
    i32 26, label %bb.c
    i32 24, label %bb.d
    i32 0, label %bb.e
    i32 2, label %bb.e
    i32 3, label %bb.e
    i32 12, label %bb.e
    i32 13, label %bb.e
    i32 14, label %bb.e
    i32 15, label %bb.e
    i32 16, label %bb.e
    i32 17, label %bb.e
    i32 1, label %bb.e
  ]

.preheader:                                       ; preds = %bb.a
  %i.a = load float, ptr %1, align 1, !tbaa !222, !alias.scope !4192, !noalias !4193 ; 2 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2
  %i.c = load float, ptr %i.b, align 1, !tbaa !222, !alias.scope !4192, !noalias !4193 ; 2 uses
  %i.d = fadd float %i.a, %i.c
  %i.e = fsub float %i.a, %i.c
  %i.f = fmul float %i.d, 5.000000e-01
  %i.g = fmul float %i.e, 5.000000e-01
  store float %i.f, ptr %3, align 4, !tbaa !256, !noalias !4194
  %i.h = fmul float %i.g, f0x3F8DF1A9
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %i.h, ptr %i.i, align 4, !tbaa !256, !noalias !4194
  br label %_ZN3jxl6N_AVX212_GLOBAL__N_117ReinterpretingDCTILm16ELm8ELm2ELm1ELm2ELm1EEEvPKfmPfmS5_S5_.exit

.preheader389:                                    ; preds = %bb.a
  %.val125.val = load <2 x float>, ptr %1, align 1, !tbaa !222, !alias.scope !4195, !noalias !4196 ; 2 uses
  %i.j = extractelement <2 x float> %.val125.val, i64 0 ; 2 uses
  %i.k = extractelement <2 x float> %.val125.val, i64 1 ; 2 uses
  %i.l = fadd float %i.k, %i.j
  %i.m = fsub float %i.j, %i.k
  %i.n = insertelement <2 x float> poison, float %i.l, i64 0
  %i.o = insertelement <2 x float> %i.n, float %i.m, i64 1
  %i.p = fmul <2 x float> %i.o, <float 1.000000e+00, float 5.000000e-01>
  %i.q = fmul <2 x float> %i.p, <float 5.000000e-01, float f0x3F8DF1A9>
  store <2 x float> %i.q, ptr %3, align 4, !tbaa !256, !noalias !4197
  br label %_ZN3jxl6N_AVX212_GLOBAL__N_117ReinterpretingDCTILm16ELm8ELm2ELm1ELm2ELm1EEEvPKfmPfmS5_S5_.exit

.preheader392:                                    ; preds = %bb.a
  %i.r = load <2 x float>, ptr %1, align 1, !tbaa !222, !alias.scope !4198, !noalias !4199 ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2
  %i.t = load <2 x float>, ptr %i.s, align 1, !tbaa !222, !alias.scope !4198, !noalias !4199 ; 2 uses
  %i.u = fadd <2 x float> %i.r, %i.t
  %i.v = fsub <2 x float> %i.r, %i.t
  %i.w = fmul <2 x float> %i.u, splat (float 5.000000e-01) ; 2 uses
  %i.x = fmul <2 x float> %i.v, splat (float 5.000000e-01) ; 2 uses
  %i.y = shufflevector <2 x float> %i.w, <2 x float> %i.x, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison> ; 2 uses
  %i.z = shufflevector <2 x float> %i.w, <2 x float> %i.x, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison> ; 2 uses
  %i.aa = shufflevector <4 x float> %i.y, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ab = shufflevector <4 x float> %i.z, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ac = fadd <2 x float> %i.aa, %i.ab
  %i.ad = shufflevector <4 x float> %i.y, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ae = shufflevector <4 x float> %i.z, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.af = fsub <2 x float> %i.ad, %i.ae
  %i.ag = fmul <2 x float> %i.ac, splat (float 5.000000e-01)
  %i.ah = fmul <2 x float> %i.af, splat (float 5.000000e-01)
  %i.ai = fmul <2 x float> %i.ag, <float 1.000000e+00, float f0x3F8DF1A9>
  store <2 x float> %i.ai, ptr %3, align 4, !tbaa !256, !noalias !4200
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ak = fmul <2 x float> %i.ah, <float 1.000000e+00, float f0x3F8DF1A9>
  %i.al = fmul <2 x float> %i.ak, splat (float f0x3F8DF1A9)
  store <2 x float> %i.al, ptr %i.aj, align 4, !tbaa !256, !noalias !4200
  br label %_ZN3jxl6N_AVX212_GLOBAL__N_117ReinterpretingDCTILm16ELm8ELm2ELm1ELm2ELm1EEEvPKfmPfmS5_S5_.exit

.preheader394:                                    ; preds = %bb.a
  %i.am = load float, ptr %1, align 1, !tbaa !222, !alias.scope !4201, !noalias !4202 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2
  %i.ao = load float, ptr %i.an, align 1, !tbaa !222, !alias.scope !4201, !noalias !4202 ; 2 uses
  %.idx.i.i.i.i.i = shl i64 %2, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i.i.i.i.i
  %i.aq = load float, ptr %i.ap, align 1, !tbaa !222, !alias.scope !4201, !noalias !4202 ; 2 uses
  %.idx2.i.i.i.i.i = mul i64 %2, 12
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %.idx2.i.i.i.i.i
  %i.as = load float, ptr %i.ar, align 1, !tbaa !222, !alias.scope !4201, !noalias !4202 ; 2 uses
  %i.at = fadd float %i.am, %i.as                 ; 2 uses
  %i.au = fadd float %i.ao, %i.aq                 ; 2 uses
  %i.av = fsub float %i.at, %i.au
  %i.aw = fsub float %i.am, %i.as
  %i.ax = fsub float %i.ao, %i.aq
  %i.ay = fmul float %i.aw, f0x3F0A8BD4           ; 2 uses
  %i.az = fmul float %i.ax, f0x3FA73D75           ; 2 uses
  %i.ba = fadd float %i.az, %i.ay
  %i.bb = fsub float %i.ay, %i.az                 ; 2 uses
  %.scalar.i.i.i.i.i.i = tail call float @llvm.fma.f32(float %i.ba, float f0x3FB504F3, float %i.bb)
  %i.bc = fadd float %i.au, %i.at
  %33 = insertelement <4 x float> poison, float %i.bc, i64 0
  %i.bd = insertelement <4 x float> %33, float %.scalar.i.i.i.i.i.i, i64 1
  %i.be = insertelement <4 x float> %i.bd, float %i.av, i64 2
  %i.bf = insertelement <4 x float> %i.be, float %i.bb, i64 3
  %i.bg = fmul <4 x float> %i.bf, <float 1.000000e+00, float 2.500000e-01, float 2.500000e-01, float 2.500000e-01>
  %i.bh = fmul <4 x float> %i.bg, <float 2.500000e-01, float 1.025760e+00, float f0x3F8DF1A9, float f0x3FA2A1B0>
  store <4 x float> %i.bh, ptr %3, align 4, !tbaa !256, !noalias !4203
  br label %_ZN3jxl6N_AVX212_GLOBAL__N_117ReinterpretingDCTILm16ELm8ELm2ELm1ELm2ELm1EEEvPKfmPfmS5_S5_.exit

.preheader397:                                    ; preds = %bb.a
  %.val131.val = load <4 x float>, ptr %1, align 1, !tbaa !222, !alias.scope !4204, !noalias !4205 ; 4 uses
  %i.bi = extractelement <4 x float> %.val131.val, i64 0 ; 2 uses
  %i.bj = extractelement <4 x float> %.val131.val, i64 1 ; 2 uses
  %i.bk = extractelement <4 x float> %.val131.val, i64 2 ; 2 uses
  %i.bl = extractelement <4 x float> %.val131.val, i64 3 ; 2 uses
  %i.bm = fadd float %i.bl, %i.bi                 ; 2 uses
  %i.bn = fadd float %i.bj, %i.bk                 ; 2 uses
  %i.bo = fsub float %i.bm, %i.bn
  %i.bp = fsub float %i.bi, %i.bl
  %i.bq = fsub float %i.bj, %i.bk
  %i.br = fmul float %i.bp, f0x3F0A8BD4           ; 2 uses
  %i.bs = fmul float %i.bq, f0x3FA73D75           ; 2 uses
  %i.bt = fadd float %i.bs, %i.br
  %i.bu = fsub float %i.br, %i.bs                 ; 2 uses
  %.scalar.i.i.i.i.i.i147 = tail call float @llvm.fma.f32(float %i.bt, float f0x3FB504F3, float %i.bu)
  %i.bv = fadd float %i.bn, %i.bm
  %34 = insertelement <4 x float> poison, float %i.bv, i64 0
  %i.bw = insertelement <4 x float> %34, float %.scalar.i.i.i.i.i.i147, i64 1
  %i.bx = insertelement <4 x float> %i.bw, float %i.bo, i64 2
  %i.by = insertelement <4 x float> %i.bx, float %i.bu, i64 3
  %i.bz = fmul <4 x float> %i.by, <float 1.000000e+00, float 2.500000e-01, float 2.500000e-01, float 2.500000e-01>
  %i.ca = fmul <4 x float> %i.bz, <float 2.500000e-01, float 1.025760e+00, float f0x3F8DF1A9, float f0x3FA2A1B0>
  store <4 x float> %i.ca, ptr %3, align 4, !tbaa !256, !noalias !4206
  br label %_ZN3jxl6N_AVX212_GLOBAL__N_117ReinterpretingDCTILm16ELm8ELm2ELm1ELm2ELm1EEEvPKfmPfmS5_S5_.exit

.preheader400:                                    ; preds = %bb.a
  %i.cb = load <2 x float>, ptr %1, align 1, !tbaa !222, !alias.scope !4207, !noalias !4208 ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2
  %i.cd = load <2 x float>, ptr %i.cc, align 1, !tbaa !222, !alias.scope !4207, !noalias !4208 ; 2 uses
  %.idx.i.i.i.i.i147 = shl i64 %2, 3
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i.i.i.i.i147
  %i.cf = load <2 x float>, ptr %i.ce, align 1, !tbaa !222, !alias.scope !4207, !noalias !4208 ; 2 uses
  %.idx2.i.i.i.i.i148 = mul i64 %2, 12
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 %.idx2.i.i.i.i.i148
  %i.ch = load <2 x float>, ptr %i.cg, align 1, !tbaa !222, !alias.scope !4207, !noalias !4208 ; 2 uses
  %i.ci = shufflevector <2 x float> %i.cb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cj = shufflevector <2 x float> %i.ch, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ck = fadd <4 x float> %i.ci, %i.cj           ; 2 uses
  %i.cl = shufflevector <2 x float> %i.cd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cm = shufflevector <2 x float> %i.cf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cn = fadd <4 x float> %i.cl, %i.cm           ; 2 uses
  %i.co = shufflevector <4 x float> %i.cn, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.cp = shufflevector <4 x float> %i.ck, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.cq = fadd <2 x float> %i.co, %i.cp
  %i.cr = shufflevector <4 x float> %i.ck, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.cs = shufflevector <4 x float> %i.cn, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ct = fsub <2 x float> %i.cr, %i.cs
  %i.cu = fsub <2 x float> %i.cb, %i.ch
  %i.cv = fsub <2 x float> %i.cd, %i.cf
  %i.cw = fmul <2 x float> %i.cu, splat (float f0x3F0A8BD4) ; 2 uses
  %i.cx = fmul <2 x float> %i.cv, splat (float f0x3FA73D75) ; 2 uses
  %i.cy = fadd <2 x float> %i.cx, %i.cw
  %35 = fsub <2 x float> %i.cw, %i.cx             ; 2 uses
  %i.cz = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.cy, <2 x float> splat (float f0x3FB504F3), <2 x float> %35)
  %i.da = fmul <2 x float> %i.cq, splat (float 2.500000e-01) ; 2 uses
  %i.db = fmul <2 x float> %i.cz, splat (float 2.500000e-01) ; 2 uses
  %i.dc = fmul <2 x float> %i.ct, splat (float 2.500000e-01) ; 2 uses
  %i.dd = shufflevector <2 x float> %i.dc, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.de = shufflevector <2 x float> %i.dc, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %36 = fmul <2 x float> %35, splat (float 2.500000e-01) ; 2 uses
  %37 = shufflevector <2 x float> %36, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %38 = shufflevector <2 x float> %36, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %.sroa.0.4.vec.insert259 = shufflevector <2 x float> %i.da, <2 x float> %i.db, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %.sroa.37.20.vec.insert298 = shufflevector <2 x float> %i.da, <2 x float> %i.db, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %.sroa.0.8.vec.insert274 = shufflevector <4 x float> %.sroa.0.4.vec.insert259, <4 x float> %i.de, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %.sroa.37.24.vec.insert306 = shufflevector <4 x float> %.sroa.37.20.vec.insert298, <4 x float> %i.dd, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %.sroa.0.12.vec.insert284 = shufflevector <4 x float> %.sroa.0.8.vec.insert274, <4 x float> %38, <4 x i32> <i32 0, i32 1, i32 2, i32 4> ; 2 uses
  %.sroa.37.28.vec.insert310 = shufflevector <4 x float> %.sroa.37.24.vec.insert306, <4 x float> %37, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 2 uses
  %i.df = fadd <4 x float> %.sroa.0.12.vec.insert284, %.sroa.37.28.vec.insert310
  %i.dg = fsub <4 x float> %.sroa.0.12.vec.insert284, %.sroa.37.28.vec.insert310
  %i.dh = fmul <4 x float> %i.df, splat (float 5.000000e-01)
  %i.di = fmul <4 x float> %i.dg, splat (float 5.000000e-01)
  %i.dj = fmul <4 x float> %i.dh, <float 1.000000e+00, float 1.025760e+00, float f0x3F8DF1A9, float f0x3FA2A1B0>
  store <4 x float> %i.dj, ptr %3, align 4, !tbaa !256, !noalias !4209
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.dl = fmul <4 x float> %i.di, <float 1.000000e+00, float f0x3F8DF1A9, float f0x3F8DF1A9, float f0x3F8DF1A9>
  %i.dm = fmul <4 x float> %i.dl, <float f0x3F8DF1A9, float 1.025760e+00, float f0x3F8DF1A9, float f0x3FA2A1B0>
  store <4 x float> %i.dm, ptr %i.dk, align 4, !tbaa !256, !noalias !4209
  br label %_ZN3jxl6N_AVX212_GLOBAL__N_117ReinterpretingDCTILm16ELm8ELm2ELm1ELm2ELm1EEEvPKfmPfmS5_S5_.exit

.preheader402:                                    ; preds = %bb.a
  %i.dn = load <4 x float>, ptr %1, align 1, !tbaa !222, !alias.scope !4210, !noalias !4211 ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2
  %i.dp = load <4 x float>, ptr %i.do, align 1, !tbaa !222, !alias.scope !4210, !noalias !4211 ; 2 uses
  %i.dq = fadd <4 x float> %i.dn, %i.dp
  %i.dr = fsub <4 x float> %i.dn, %i.dp
  %i.ds = fmul <4 x float> %i.dq, splat (float 5.000000e-01) ; 4 uses
  %i.dt = fmul <4 x float> %i.dr, splat (float 5.000000e-01) ; 4 uses
  %i.du = shufflevector <4 x float> %i.ds, <4 x float> %i.dt, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison> ; 2 uses
  %i.dv = shufflevector <4 x float> %i.ds, <4 x float> %i.dt, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison> ; 2 uses
  %i.dw = fadd <4 x float> %i.du, %i.dv           ; 2 uses
  %i.dx = shufflevector <4 x float> %i.ds, <4 x float> %i.dt, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison> ; 2 uses
  %i.dy = shufflevector <4 x float> %i.ds, <4 x float> %i.dt, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison> ; 2 uses
  %i.dz = fadd <4 x float> %i.dx, %i.dy           ; 2 uses
  %i.ea = shufflevector <4 x float> %i.dz, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.eb = shufflevector <4 x float> %i.dw, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ec = fadd <2 x float> %i.ea, %i.eb
  %i.ed = shufflevector <4 x float> %i.dw, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ee = shufflevector <4 x float> %i.dz, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ef = fsub <2 x float> %i.ed, %i.ee
  %i.eg = fsub <4 x float> %i.du, %i.dv
  %i.eh = fsub <4 x float> %i.dx, %i.dy
  %i.ei = fmul <4 x float> %i.eg, <float f0x3F0A8BD4, float f0x3F0A8BD4, float undef, float undef> ; 2 uses
  %i.ej = fmul <4 x float> %i.eh, <float f0x3FA73D75, float f0x3FA73D75, float undef, float undef> ; 2 uses
  %39 = shufflevector <4 x float> %i.ej, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ek = shufflevector <4 x float> %i.ei, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %40 = fadd <2 x float> %39, %i.ek
  %i.el = shufflevector <4 x float> %i.ei, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %41 = shufflevector <4 x float> %i.ej, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %42 = fsub <2 x float> %i.el, %41               ; 2 uses
  %i.em = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %40, <2 x float> splat (float f0x3FB504F3), <2 x float> %42)
  %i.en = fmul <2 x float> %i.ec, splat (float 2.500000e-01) ; 2 uses
  %i.eo = fmul <2 x float> %i.em, splat (float 2.500000e-01) ; 2 uses
  %i.ep = fmul <2 x float> %i.ef, splat (float 2.500000e-01) ; 2 uses
  %i.eq = shufflevector <2 x float> %i.ep, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.er = shufflevector <2 x float> %i.ep, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.es = fmul <2 x float> %42, splat (float 2.500000e-01) ; 2 uses
  %i.et = shufflevector <2 x float> %i.es, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.eu = shufflevector <2 x float> %i.es, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ev = shufflevector <2 x float> %i.en, <2 x float> %i.eo, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ew = shufflevector <4 x float> %i.ev, <4 x float> %i.er, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ex = shufflevector <4 x float> %i.ew, <4 x float> %i.eu, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ey = fmul <4 x float> %i.ex, <float 1.000000e+00, float 1.025760e+00, float f0x3F8DF1A9, float f0x3FA2A1B0>
  store <4 x float> %i.ey, ptr %3, align 4, !tbaa !256, !noalias !4212
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.fa = shufflevector <2 x float> %i.en, <2 x float> %i.eo, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.fb = shufflevector <4 x float> %i.fa, <4 x float> %i.eq, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.fc = shufflevector <4 x float> %i.fb, <4 x float> %i.et, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.fd = fmul <4 x float> %i.fc, <float 1.000000e+00, float f0x3F8DF1A9, float f0x3F8DF1A9, float f0x3F8DF1A9>
  %i.fe = fmul <4 x float> %i.fd, <float f0x3F8DF1A9, float 1.025760e+00, float f0x3F8DF1A9, float f0x3FA2A1B0>
  store <4 x float> %i.fe, ptr %i.ez, align 4, !tbaa !256, !noalias !4212
  br label %_ZN3jxl6N_AVX212_GLOBAL__N_117ReinterpretingDCTILm16ELm8ELm2ELm1ELm2ELm1EEEvPKfmPfmS5_S5_.exit

.preheader404:                                    ; preds = %bb.a
  %i.ff = load <4 x float>, ptr %1, align 1, !tbaa !222, !alias.scope !4213, !noalias !4214 ; 2 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2
  %i.fh = load <4 x float>, ptr %i.fg, align 1, !tbaa !222, !alias.scope !4213, !noalias !4214 ; 2 uses
  %.idx.i.i.i.i.i158 = shl i64 %2, 3
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i.i.i.i.i158
  %i.fj = load <4 x float>, ptr %i.fi, align 1, !tbaa !222, !alias.scope !4213, !noalias !4214 ; 2 uses
  %.idx2.i.i.i.i.i159 = mul i64 %2, 12
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 %.idx2.i.i.i.i.i159
  %i.fl = load <4 x float>, ptr %i.fk, align 1, !tbaa !222, !alias.scope !4213, !noalias !4214 ; 2 uses
  %i.fm = fadd <4 x float> %i.ff, %i.fl           ; 2 uses
  %i.fn = fadd <4 x float> %i.fh, %i.fj           ; 2 uses
  %i.fo = fadd <4 x float> %i.fn, %i.fm
  %i.fp = fsub <4 x float> %i.fm, %i.fn
  %i.fq = fsub <4 x float> %i.ff, %i.fl
  %i.fr = fsub <4 x float> %i.fh, %i.fj
  %i.fs = fmul <4 x float> %i.fq, splat (float f0x3F0A8BD4) ; 2 uses
  %i.ft = fmul <4 x float> %i.fr, splat (float f0x3FA73D75) ; 2 uses
  %i.fu = fadd <4 x float> %i.ft, %i.fs
  %i.fv = fsub <4 x float> %i.fs, %i.ft           ; 2 uses
  %i.fw = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.fu, <4 x float> splat (float f0x3FB504F3), <4 x float> %i.fv)
  %i.fx = fmul <4 x float> %i.fo, splat (float 2.500000e-01) ; 4 uses
  %i.fy = fmul <4 x float> %i.fw, splat (float 2.500000e-01) ; 4 uses
  %i.fz = fmul <4 x float> %i.fp, splat (float 2.500000e-01) ; 4 uses
  %i.ga = fmul <4 x float> %i.fv, splat (float 2.500000e-01) ; 4 uses
  %.sroa.0.4.vec.insert261 = shufflevector <4 x float> %i.fx, <4 x float> %i.fy, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %.sroa.37.20.vec.insert300 = shufflevector <4 x float> %i.fx, <4 x float> %i.fy, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %.sroa.56.36.vec.insert322 = shufflevector <4 x float> %i.fx, <4 x float> %i.fy, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %.sroa.72.52.vec.insert = shufflevector <4 x float> %i.fx, <4 x float> %i.fy, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %.sroa.0.8.vec.insert276 = shufflevector <4 x float> %.sroa.0.4.vec.insert261, <4 x float> %i.fz, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %.sroa.37.24.vec.insert308 = shufflevector <4 x float> %.sroa.37.20.vec.insert300, <4 x float> %i.fz, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %.sroa.56.40.vec.insert327 = shufflevector <4 x float> %.sroa.56.36.vec.insert322, <4 x float> %i.fz, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %.sroa.72.56.vec.insert = shufflevector <4 x float> %.sroa.72.52.vec.insert, <4 x float> %i.fz, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %.sroa.0.12.vec.insert286 = shufflevector <4 x float> %.sroa.0.8.vec.insert276, <4 x float> %i.ga, <4 x i32> <i32 0, i32 1, i32 2, i32 4> ; 2 uses
  %.sroa.37.28.vec.insert312 = shufflevector <4 x float> %.sroa.37.24.vec.insert308, <4 x float> %i.ga, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 2 uses
  %.sroa.56.44.vec.insert331 = shufflevector <4 x float> %.sroa.56.40.vec.insert327, <4 x float> %i.ga, <4 x i32> <i32 0, i32 1, i32 2, i32 6> ; 2 uses
  %.sroa.72.60.vec.insert = shufflevector <4 x float> %.sroa.72.56.vec.insert, <4 x float> %i.ga, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.gb = fadd <4 x float> %.sroa.0.12.vec.insert286, %.sroa.72.60.vec.insert ; 2 uses
  %i.gc = fadd <4 x float> %.sroa.37.28.vec.insert312, %.sroa.56.44.vec.insert331 ; 2 uses
  %i.gd = fadd <4 x float> %i.gc, %i.gb
  %i.ge = fsub <4 x float> %i.gb, %i.gc
  %i.gf = fsub <4 x float> %.sroa.0.12.vec.insert286, %.sroa.72.60.vec.insert
  %i.gg = fsub <4 x float> %.sroa.37.28.vec.insert312, %.sroa.56.44.vec.insert331
  %i.gh = fmul <4 x float> %i.gf, splat (float f0x3F0A8BD4) ; 2 uses
  %i.gi = fmul <4 x float> %i.gg, splat (float f0x3FA73D75) ; 2 uses
  %i.gj = fadd <4 x float> %i.gi, %i.gh
  %i.gk = fsub <4 x float> %i.gh, %i.gi           ; 2 uses
  %i.gl = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.gj, <4 x float> splat (float f0x3FB504F3), <4 x float> %i.gk)
  %i.gm = fmul <4 x float> %i.gd, splat (float 2.500000e-01)
  %i.gn = fmul <4 x float> %i.gl, splat (float 2.500000e-01)
  %i.go = fmul <4 x float> %i.ge, splat (float 2.500000e-01)
  %i.gp = fmul <4 x float> %i.gk, splat (float 2.500000e-01)
  %i.gq = fmul <4 x float> %i.gm, <float 1.000000e+00, float 1.025760e+00, float f0x3F8DF1A9, float f0x3FA2A1B0>
  store <4 x float> %i.gq, ptr %3, align 4, !tbaa !256, !noalias !4215
  %i.gr = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.gs = fmul <4 x float> %i.gn, <float 1.000000e+00, float 1.025760e+00, float 1.025760e+00, float 1.025760e+00>
  %i.gt = fmul <4 x float> %i.gs, <float 1.025760e+00, float 1.025760e+00, float f0x3F8DF1A9, float f0x3FA2A1B0>
  store <4 x float> %i.gt, ptr %i.gr, align 4, !tbaa !256, !noalias !4215
  %i.gu = getelementptr inbounds nuw i8, ptr %3, i64 256
  %i.gv = fmul <4 x float> %i.go, <float 1.000000e+00, float f0x3F8DF1A9, float f0x3F8DF1A9, float f0x3F8DF1A9>
  %i.gw = fmul <4 x float> %i.gv, <float f0x3F8DF1A9, float 1.025760e+00, float f0x3F8DF1A9, float f0x3FA2A1B0>
  store <4 x float> %i.gw, ptr %i.gu, align 4, !tbaa !256, !noalias !4215
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 384
  %i.gy = fmul <4 x float> %i.gp, <float 1.000000e+00, float f0x3FA2A1B0, float f0x3FA2A1B0, float f0x3FA2A1B0>
  %i.gz = fmul <4 x float> %i.gy, <float f0x3FA2A1B0, float 1.025760e+00, float f0x3F8DF1A9, float f0x3FA2A1B0>
  store <4 x float> %i.gz, ptr %i.gx, align 4, !tbaa !256, !noalias !4215
  br label %_ZN3jxl6N_AVX212_GLOBAL__N_117ReinterpretingDCTILm16ELm8ELm2ELm1ELm2ELm1EEEvPKfmPfmS5_S5_.exit

.preheader406:                                    ; preds = %bb.a
  %i.ha = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4217)
  %i.hb = getelementptr inbounds nuw i8, ptr %4, i64 256
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4219)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4220)
  %i.hc = load <4 x float>, ptr %1, align 1, !tbaa !222, !alias.scope !4221, !noalias !4222 ; 2 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2
  %i.he = load <4 x float>, ptr %i.hd, align 1, !tbaa !222, !alias.scope !4221, !noalias !4222 ; 2 uses
  %.idx.i.i.i.i.i175 = shl i64 %2, 3
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i.i.i.i.i175
  %i.hg = load <4 x float>, ptr %i.hf, align 1, !tbaa !222, !alias.scope !4221, !noalias !4222 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %4, i64 288
  %.idx2.i.i.i.i.i176 = mul i64 %2, 12
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 %.idx2.i.i.i.i.i176
  %i.hj = load <4 x float>, ptr %i.hi, align 1, !tbaa !222, !alias.scope !4221, !noalias !4222 ; 2 uses
  %.idx3.i.i.i.i.i = shl i64 %2, 4
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 %.idx3.i.i.i.i.i
  %i.hl = load <4 x float>, ptr %i.hk, align 1, !tbaa !222, !alias.scope !4221, !noalias !4222 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %4, i64 320
  %.idx4.i.i.i.i.i = mul i64 %2, 20
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 %.idx4.i.i.i.i.i
  %i.ho = load <4 x float>, ptr %i.hn, align 1, !tbaa !222, !alias.scope !4221, !noalias !4222 ; 2 uses
  %.idx5.i.i.i.i.i = mul i64 %2, 24
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 %.idx5.i.i.i.i.i
  %i.hq = load <4 x float>, ptr %i.hp, align 1, !tbaa !222, !alias.scope !4221, !noalias !4222 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %4, i64 352
  %.idx6.i.i.i.i.i = mul i64 %2, 28
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 %.idx6.i.i.i.i.i
  %i.ht = load <4 x float>, ptr %i.hs, align 1, !tbaa !222, !alias.scope !4221, !noalias !4222 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %4, i64 384
  %i.hv = fadd <4 x float> %i.hc, %i.ht           ; 2 uses
  %i.hw = fadd <4 x float> %i.he, %i.hq           ; 2 uses
  %i.hx = fadd <4 x float> %i.hg, %i.ho           ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %4, i64 416
  %i.hz = fadd <4 x float> %i.hj, %i.hl           ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %4, i64 512
  %i.ib = fadd <4 x float> %i.hz, %i.hv           ; 2 uses
  %i.ic = fadd <4 x float> %i.hx, %i.hw           ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %4, i64 528
  %i.ie = fadd <4 x float> %i.ic, %i.ib
  %i.if = fsub <4 x float> %i.ib, %i.ic
  %i.ig = getelementptr inbounds nuw i8, ptr %4, i64 544
  %i.ih = fsub <4 x float> %i.hv, %i.hz
  %i.ii = fsub <4 x float> %i.hw, %i.hx
  %i.ij = getelementptr inbounds nuw i8, ptr %4, i64 560
  %i.ik = fmul <4 x float> %i.ih, splat (float f0x3F0A8BD4) ; 2 uses
  %i.il = fmul <4 x float> %i.ii, splat (float f0x3FA73D75) ; 2 uses
  %i.im = fadd <4 x float> %i.il, %i.ik
  %i.in = fsub <4 x float> %i.ik, %i.il           ; 2 uses
  %i.io = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.im, <4 x float> splat (float f0x3FB504F3), <4 x float> %i.in)
  %i.ip = getelementptr inbounds nuw i8, ptr %4, i64 448
  %i.iq = fsub <4 x float> %i.hc, %i.ht
  %i.ir = fsub <4 x float> %i.he, %i.hq
  %i.is = fsub <4 x float> %i.hg, %i.ho
  %i.it = getelementptr inbounds nuw i8, ptr %4, i64 480
  %i.iu = fsub <4 x float> %i.hj, %i.hl
  %i.iv = fmul <4 x float> %i.iq, splat (float f0x3F0281F7) ; 2 uses
  %i.iw = fmul <4 x float> %i.ir, splat (float f0x3F19F1BD) ; 2 uses
  %i.ix = fmul <4 x float> %i.is, splat (float f0x3F6664D7) ; 2 uses
  %i.iy = fmul <4 x float> %i.iu, splat (float f0x402406CF) ; 2 uses
  %i.iz = fadd <4 x float> %i.iy, %i.iv           ; 2 uses
  %i.ja = fadd <4 x float> %i.ix, %i.iw           ; 2 uses
  %i.jb = fadd <4 x float> %i.ja, %i.iz           ; 2 uses
  store <4 x float> %i.jb, ptr %i.ia, align 16, !tbaa !222, !alias.scope !4223, !noalias !4224
  %i.jc = fsub <4 x float> %i.iz, %i.ja           ; 3 uses
  store <4 x float> %i.jc, ptr %i.id, align 16, !tbaa !222, !alias.scope !4225, !noalias !4224
  %i.jd = fsub <4 x float> %i.iv, %i.iy
  %i.je = fsub <4 x float> %i.iw, %i.ix
  %i.jf = fmul <4 x float> %i.jd, splat (float f0x3F0A8BD4) ; 2 uses
  %i.jg = fmul <4 x float> %i.je, splat (float f0x3FA73D75) ; 2 uses
  %i.jh = fadd <4 x float> %i.jg, %i.jf
  %i.ji = fsub <4 x float> %i.jf, %i.jg           ; 4 uses
  store <4 x float> %i.ji, ptr %i.ij, align 16, !tbaa !222, !alias.scope !4226, !noalias !4224
  %i.jj = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.jh, <4 x float> splat (float f0x3FB504F3), <4 x float> %i.ji) ; 3 uses
  store <4 x float> %i.jj, ptr %i.ig, align 16, !tbaa !222, !alias.scope !4227, !noalias !4224
  %i.jk = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.jb, <4 x float> splat (float f0x3FB504F3), <4 x float> %i.jj)
  %i.jl = fadd <4 x float> %i.jc, %i.jj
  %i.jm = fadd <4 x float> %i.jc, %i.ji
  %i.jn = fmul <4 x float> %i.ie, splat (float 1.250000e-01) ; 4 uses
  %i.jo = fmul <4 x float> %i.jk, splat (float 1.250000e-01) ; 4 uses
  %i.jp = fmul <4 x float> %i.io, splat (float 1.250000e-01) ; 4 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.jr = fmul <4 x float> %i.jl, splat (float 1.250000e-01) ; 4 uses
  %i.js = fmul <4 x float> %i.if, splat (float 1.250000e-01) ; 5 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 3 uses
  store <4 x float> %i.js, ptr %i.jt, align 16, !tbaa !222, !alias.scope !4228, !noalias !4229
  %i.ju = fmul <4 x float> %i.jm, splat (float 1.250000e-01) ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %4, i64 80
  store <4 x float> %i.ju, ptr %i.jv, align 16, !tbaa !222, !alias.scope !4228, !noalias !4229
  %i.jw = fmul <4 x float> %i.in, splat (float 1.250000e-01)
  %i.jx = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 4 uses
  store <4 x float> %i.jw, ptr %i.jx, align 16, !tbaa !222, !alias.scope !4228, !noalias !4229
  %i.jy = fmul <4 x float> %i.ji, splat (float 1.250000e-01)
  %i.jz = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  store <4 x float> %i.jy, ptr %i.jz, align 16, !tbaa !222, !alias.scope !4228, !noalias !4229
  %gep.1.i.i178 = getelementptr i8, ptr %4, i64 160 ; 2 uses
  %gep.2.i.i179 = getelementptr i8, ptr %4, i64 192 ; 2 uses
  %gep.3.i.i180 = getelementptr i8, ptr %4, i64 224 ; 2 uses
  %i.ka = shufflevector <4 x float> %i.jn, <4 x float> %i.jo, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.kb = shufflevector <4 x float> %i.ka, <4 x float> %i.jp, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.kc = shufflevector <4 x float> %i.kb, <4 x float> %i.jr, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  store <4 x float> %i.kc, ptr %i.ha, align 16, !tbaa !256, !alias.scope !4217
  %i.kd = shufflevector <4 x float> %i.jn, <4 x float> %i.jo, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.ke = shufflevector <4 x float> %i.kd, <4 x float> %i.jp, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.kf = shufflevector <4 x float> %i.ke, <4 x float> %i.jr, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  store <4 x float> %i.kf, ptr %gep.1.i.i178, align 16, !tbaa !256, !alias.scope !4217
  %i.kg = shufflevector <4 x float> %i.jn, <4 x float> %i.jo, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.kh = shufflevector <4 x float> %i.kg, <4 x float> %i.jp, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.ki = shufflevector <4 x float> %i.kh, <4 x float> %i.jr, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  store <4 x float> %i.ki, ptr %gep.2.i.i179, align 16, !tbaa !256, !alias.scope !4217
  %i.kj = shufflevector <4 x float> %i.jn, <4 x float> %i.jo, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.kk = shufflevector <4 x float> %i.kj, <4 x float> %i.jp, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.kl = shufflevector <4 x float> %i.kk, <4 x float> %i.jr, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
end_hunk_0
begin_hunk_1_@_ZN3jxl15ANSSymbolReader23ReadHybridUintClusteredILb0EEEmmPNS_9BitReaderE:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i8, ptr %i.o, align 8, !tbaa !341, !range !342, !noalias !5396, !noundef !343
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.d, label %bb.f, !prof !316

bb.d:                                             ; preds = %_ZN3jxl9BitReader6RefillEv.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !344, !noalias !5397
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %1
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !349
  %i.v = load i64, ptr %2, align 8, !tbaa !317, !alias.scope !5395 ; 3 uses
  %i.w = and i64 %i.v, 255
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.w ; 4 uses
  %i.y = load i8, ptr %i.x, align 2, !tbaa !351   ; 3 uses
  %i.z = icmp ugt i8 %i.y, 8
  br i1 %i.z, label %bb.e, label %._ZNK3jxl19HuffmanDecodingData10ReadSymbolEPNS_9BitReaderE.exit.i_crit_edge

._ZNK3jxl19HuffmanDecodingData10ReadSymbolEPNS_9BitReaderE.exit.i_crit_edge: ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre2 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !318, !alias.scope !5395
  br label %_ZNK3jxl19HuffmanDecodingData10ReadSymbolEPNS_9BitReaderE.exit.i

bb.e:                                             ; preds = %bb.d
  %i.aa = zext i8 %i.y to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !318, !alias.scope !5395
  %i.ad = add i64 %i.ac, -8
  %i.ae = lshr i64 %i.v, 8                        ; 2 uses
  %i.af = add nsw i64 %i.aa, -8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !352
  %i.ai = zext i16 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ai
  %notmask.i.i9.i = shl nsw i64 -1, %i.af
  %i.ak = xor i64 %notmask.i.i9.i, -1
  %i.al = and i64 %i.ae, %i.ak
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.al ; 2 uses
  %.pre = load i8, ptr %i.am, align 2, !tbaa !351
  br label %_ZNK3jxl19HuffmanDecodingData10ReadSymbolEPNS_9BitReaderE.exit.i

_ZNK3jxl19HuffmanDecodingData10ReadSymbolEPNS_9BitReaderE.exit.i: ; preds = %._ZNK3jxl19HuffmanDecodingData10ReadSymbolEPNS_9BitReaderE.exit.i_crit_edge, %bb.e
  %i.an = phi i64 [ %i.ae, %bb.e ], [ %i.v, %._ZNK3jxl19HuffmanDecodingData10ReadSymbolEPNS_9BitReaderE.exit.i_crit_edge ]
  %i.ao = phi i64 [ %i.ad, %bb.e ], [ %.pre2, %._ZNK3jxl19HuffmanDecodingData10ReadSymbolEPNS_9BitReaderE.exit.i_crit_edge ]
  %i.ap = phi i8 [ %.pre, %bb.e ], [ %i.y, %._ZNK3jxl19HuffmanDecodingData10ReadSymbolEPNS_9BitReaderE.exit.i_crit_edge ]
  %.0.i8.i = phi ptr [ %i.am, %bb.e ], [ %i.x, %._ZNK3jxl19HuffmanDecodingData10ReadSymbolEPNS_9BitReaderE.exit.i_crit_edge ]
  %i.aq = zext i8 %i.ap to i64                    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.as = sub i64 %i.ao, %i.aq                    ; 2 uses
  store i64 %i.as, ptr %i.ar, align 8, !tbaa !318, !alias.scope !5395
  %i.at = lshr i64 %i.an, %i.aq                   ; 2 uses
  store i64 %i.at, ptr %2, align 8, !tbaa !317, !alias.scope !5395
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i8.i, i64 2
  %i.av = load i16, ptr %i.au, align 2, !tbaa !352
  %i.aw = zext i16 %i.av to i64
  br label %_ZN3jxl15ANSSymbolReader23ReadSymbolWithoutRefillEmPNS_9BitReaderE.exit.i

bb.f:                                             ; preds = %_ZN3jxl9BitReader6RefillEv.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5398)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !298, !noalias !5399 ; 2 uses
  %i.az = and i32 %i.ay, 4095                     ; 2 uses
  %i.ba = load ptr, ptr %0, align 8, !tbaa !353, !noalias !5399
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !354, !noalias !5399
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = shl i64 %1, %i.bd
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.be ; 2 uses
  %i.bg = zext nneg i32 %i.az to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !299, !noalias !5399
  %i.bj = zext i32 %i.bi to i64                   ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !355, !noalias !5399
  %i.bm = lshr i64 %i.bg, %i.bj                   ; 2 uses
  %i.bn = and i32 %i.bl, %i.az
  %i.bo = zext nneg i32 %i.bn to i64              ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bm
  %.0.copyload.i10.i = load i64, ptr %i.bp, align 1, !alias.scope !5400, !noalias !5401 ; 4 uses
  %i.bq = and i64 %.0.copyload.i10.i, 255
  %i.br = lshr i64 %.0.copyload.i10.i, 8
  %i.bs = and i64 %i.br, 255
  %i.bt = lshr i64 %.0.copyload.i10.i, 16
  %i.bu = and i64 %i.bt, 65535
  %.not.i.i = icmp samesign ugt i64 %i.bq, %i.bo  ; 2 uses
  %i.bv = select i1 %.not.i.i, i64 0, i64 %.0.copyload.i10.i ; 2 uses
  %i.bw = lshr i64 %i.bv, 32
  %i.bx = and i64 %i.bw, 65535
  %i.by = lshr i64 %i.bv, 48
  %i.bz = select i1 %.not.i.i, i64 %i.bm, i64 %i.bs
  %i.ca = add nuw nsw i64 %i.bx, %i.bo
  %i.cb = xor i64 %i.by, %i.bu
  %i.cc = lshr i32 %i.ay, 12
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = mul nuw nsw i64 %i.cb, %i.cd
  %i.cf = add nuw nsw i64 %i.ca, %i.ce
  %i.cg = trunc i64 %i.cf to i32                  ; 3 uses
  %i.ch = load i64, ptr %2, align 8, !tbaa !317, !alias.scope !5395 ; 2 uses
  %i.ci = icmp ult i32 %i.cg, 65536               ; 2 uses
  %i.cj = shl i32 %i.cg, 16
  %i.ck = trunc i64 %i.ch to i32
  %i.cl = and i32 %i.ck, 65535
  %i.cm = or disjoint i32 %i.cj, %i.cl
  %i.cn = select i1 %i.ci, i64 16, i64 0          ; 2 uses
  %i.co = select i1 %i.ci, i32 %i.cm, i32 %i.cg   ; 2 uses
  store i32 %i.co, ptr %i.ax, align 4, !tbaa !298, !noalias !5399
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !318, !alias.scope !5399
  %i.cr = sub i64 %i.cq, %i.cn                    ; 2 uses
  store i64 %i.cr, ptr %i.cp, align 8, !tbaa !318, !alias.scope !5399
  %i.cs = lshr i64 %i.ch, %i.cn                   ; 2 uses
  store i64 %i.cs, ptr %2, align 8, !tbaa !317, !alias.scope !5399
  %i.ct = and i32 %i.co, 4095
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = lshr i64 %i.cu, %i.bj
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.cv
  tail call void @llvm.prefetch.p0(ptr %i.cw, i32 0, i32 3, i32 1)
  br label %_ZN3jxl15ANSSymbolReader23ReadSymbolWithoutRefillEmPNS_9BitReaderE.exit.i

_ZN3jxl15ANSSymbolReader23ReadSymbolWithoutRefillEmPNS_9BitReaderE.exit.i: ; preds = %bb.f, %_ZNK3jxl19HuffmanDecodingData10ReadSymbolEPNS_9BitReaderE.exit.i
  %i.cx = phi i64 [ %i.as, %_ZNK3jxl19HuffmanDecodingData10ReadSymbolEPNS_9BitReaderE.exit.i ], [ %i.cr, %bb.f ]
  %i.cy = phi i64 [ %i.at, %_ZNK3jxl19HuffmanDecodingData10ReadSymbolEPNS_9BitReaderE.exit.i ], [ %i.cs, %bb.f ] ; 2 uses
  %.0.i.i = phi i64 [ %i.aw, %_ZNK3jxl19HuffmanDecodingData10ReadSymbolEPNS_9BitReaderE.exit.i ], [ %i.bz, %bb.f ] ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !360, !noalias !5395
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %1 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !356
  %i.de = zext i32 %i.dd to i64                   ; 2 uses
  %i.df = icmp samesign ult i64 %.0.i.i, %i.de
  br i1 %i.df, label %_ZN3jxl15ANSSymbolReader30ReadHybridUintClusteredInlinedILb0EEEmmPNS_9BitReaderE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN3jxl15ANSSymbolReader23ReadSymbolWithoutRefillEmPNS_9BitReaderE.exit.i
  %i.dg = load i32, ptr %i.db, align 4, !tbaa !357
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr %i.db, i64 12
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !358 ; 2 uses
  %i.dk = zext i32 %i.dj to i64                   ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !359 ; 2 uses
  %i.dn = zext i32 %i.dm to i64
  %i.do = add nuw nsw i64 %i.dn, %i.dk            ; 2 uses
  %i.dp = sub nsw i64 %i.dh, %i.do
  %i.dq = sub nuw nsw i64 %.0.i.i, %i.de
  %i.dr = lshr i64 %i.dq, %i.do
  %i.ds = add nsw i64 %i.dp, %i.dr
  %i.dt = and i64 %i.ds, 31                       ; 4 uses
  %notmask.i.i = shl nsw i32 -1, %i.dj
  %i.du = xor i32 %notmask.i.i, -1
  %i.dv = trunc nuw nsw i64 %.0.i.i to i32
  %i.dw = and i32 %i.du, %i.dv
  %i.dx = lshr i64 %.0.i.i, %i.dk
  %notmask.i.i.i = shl nsw i64 -1, %i.dt
  %i.dy = xor i64 %notmask.i.i.i, -1
  %i.dz = and i64 %i.cy, %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eb = sub i64 %i.cx, %i.dt
  store i64 %i.eb, ptr %i.ea, align 8, !tbaa !318, !alias.scope !5395
  %i.ec = lshr i64 %i.cy, %i.dt
  store i64 %i.ec, ptr %2, align 8, !tbaa !317, !alias.scope !5395
  %i.ed = shl nuw i32 1, %i.dm                    ; 2 uses
  %i.ee = zext i32 %i.ed to i64
  %i.ef = add nsw i32 %i.ed, -1
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = and i64 %i.dx, %i.eg
  %i.ei = or i64 %i.eh, %i.ee
  %i.ej = shl nuw nsw i64 %i.ei, %i.dt
  %i.ek = or i64 %i.dz, %i.ej
  %i.el = shl i64 %i.ek, %i.dk
  %i.em = trunc i64 %i.el to i32
  %i.en = or i32 %i.dw, %i.em
  %i.eo = zext i32 %i.en to i64
  br label %_ZN3jxl15ANSSymbolReader30ReadHybridUintClusteredInlinedILb0EEEmmPNS_9BitReaderE.exit

_ZN3jxl15ANSSymbolReader30ReadHybridUintClusteredInlinedILb0EEEmmPNS_9BitReaderE.exit: ; preds = %_ZN3jxl15ANSSymbolReader23ReadSymbolWithoutRefillEmPNS_9BitReaderE.exit.i, %bb.g
  %.0.i7.i = phi i64 [ %i.eo, %bb.g ], [ %.0.i.i, %_ZN3jxl15ANSSymbolReader23ReadSymbolWithoutRefillEmPNS_9BitReaderE.exit.i ]
  ret i64 %.0.i7.i
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #46

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fma.f32(float, float, float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fma.v2f32(<2 x float>, <2 x float>, <2 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <7 x float> @llvm.masked.load.v7f32.p0(ptr captures(none), <7 x i1>, <7 x float>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #5 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #7 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #8 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #9 = { "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #18 = { alwaysinline mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #20 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #24 = { alwaysinline mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #26 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #29 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #30 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #31 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #32 = { alwaysinline mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #33 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #34 = { nounwind "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #36 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #37 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #38 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #39 = { nobuiltin nounwind "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #41 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #42 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #43 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #44 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #45 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #46 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #47 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #48 = { nounwind }
attributes #49 = { nounwind "no-builtin-fread" "no-builtin-fwrite" }
attributes #50 = { "no-builtin-fread" "no-builtin-fwrite" }
attributes #51 = { builtin nounwind allocsize(0) "no-builtin-fread" "no-builtin-fwrite" }
attributes #52 = { builtin nounwind "no-builtin-fread" "no-builtin-fwrite" }

!llvm.module.flags = !{!14, !15, !16}
!llvm.ident = !{!17}
!llvm.errno.tbaa = !{!22}

!0 = distinct !{!0, !228}
!1 = distinct !{!1, !228}
!2 = distinct !{!2, !228}
!3 = distinct !{!3, !228}
!4 = distinct !{!4, !228}
!5 = distinct !{!5, !228}
!6 = distinct !{!6, !228}
!7 = distinct !{!7, !228}
!8 = distinct !{!8, !228}
!9 = distinct !{!9, !228}
!10 = distinct !{!10, !228}
!11 = distinct !{!11, !228}
!12 = distinct !{!12, !228}
!13 = distinct !{!13, !228}
!14 = !{i32 8, !"PIC Level", i32 2}
!15 = !{i32 7, !"uwtable", i32 2}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!18 = !{!"Simple C++ TBAA"}
!19 = !{!"omnipotent char", !18, i64 0}
!20 = !{!"int", !19, i64 0}
!21 = !{!"__libc_errno", !20, i64 0}
!22 = !{!21, !20, i64 0}
!23 = !{!20, !20, i64 0}
!24 = !{!"any pointer", !19, i64 0}
!25 = !{!"p1 _ZTS22JxlMemoryManagerStruct", !24, i64 0}
!26 = !{!"p1 _ZTSN3jxl13CodecMetadataE", !24, i64 0}
!27 = !{!"long", !19, i64 0}
!28 = !{!"_ZTSN3jxl15FrameDimensionsE", !27, i64 0, !27, i64 8, !27, i64 16, !27, i64 24, !27, i64 32, !27, i64 40, !27, i64 48, !27, i64 56, !27, i64 64, !27, i64 72, !27, i64 80, !27, i64 88, !27, i64 96, !27, i64 104, !27, i64 112, !27, i64 120, !27, i64 128, !27, i64 136}
!29 = !{!"_ZTSN3jxl13AlignedMemoryE", !24, i64 0, !25, i64 8, !24, i64 16}
!30 = !{!"_ZTSN3jxl6detail9PlaneBaseE", !20, i64 0, !20, i64 4, !20, i64 8, !20, i64 12, !27, i64 16, !29, i64 24, !27, i64 48}
!31 = !{!"_ZTSN3jxl5PlaneIhEE", !30, i64 0}
!32 = !{!"p1 omnipotent char", !24, i64 0}
!33 = !{!"_ZTSN3jxl15AcStrategyImageE", !31, i64 0, !32, i64 56, !27, i64 64}
!34 = !{!"p1 float", !24, i64 0}
!35 = !{!"p1 _ZTSN3jxl13QuantEncodingE", !24, i64 0}
!36 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl13QuantEncodingELi0ELb0EEE", !35, i64 0}
!37 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl13QuantEncodingENS_9allocatorIS2_EEEE", !36, i64 0}
!38 = !{!"_ZTSNSt3__16vectorIN3jxl13QuantEncodingENS_9allocatorIS2_EEEE", !35, i64 0, !35, i64 8, !37, i64 16}
!39 = !{!"_ZTSN3jxl15DequantMatricesE", !20, i64 0, !29, i64 8, !34, i64 32, !34, i64 40, !19, i64 48, !19, i64 60, !19, i64 72, !38, i64 720}
!40 = !{!"float", !19, i64 0}
!41 = !{!"p1 _ZTSN3jxl15DequantMatricesE", !24, i64 0}
!42 = !{!"_ZTSN3jxl9QuantizerE", !19, i64 0, !19, i64 16, !20, i64 32, !20, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !19, i64 52, !41, i64 64}
!43 = !{!"_ZTSN3jxl5PlaneIiEE", !30, i64 0}
!44 = !{!"_ZTSN3jxl5PlaneIaEE", !30, i64 0}
!45 = !{!"_ZTSN3jxl16ColorCorrelationE", !19, i64 0, !20, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !20, i64 32, !20, i64 36}
!46 = !{!"_ZTSN3jxl19ColorCorrelationMapE", !44, i64 0, !44, i64 56, !45, i64 112}
!47 = !{!"_ZTSNSt3__15arrayIfLm8EEE", !19, i64 0}
!48 = !{!"_ZTSN3jxl11NoiseParamsE", !47, i64 0}
!49 = !{!"p1 _ZTSNSt3__15arrayIN3jxl14ReferenceFrameELm4EEE", !24, i64 0}
!50 = !{!"p1 _ZTSN3jxl13PatchPositionE", !24, i64 0}
!51 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl13PatchPositionELi0ELb0EEE", !50, i64 0}
!52 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl13PatchPositionENS_9allocatorIS2_EEEE", !51, i64 0}
!53 = !{!"_ZTSNSt3__16vectorIN3jxl13PatchPositionENS_9allocatorIS2_EEEE", !50, i64 0, !50, i64 8, !52, i64 16}
!54 = !{!"p1 _ZTSN3jxl22PatchReferencePositionE", !24, i64 0}
!55 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl22PatchReferencePositionELi0ELb0EEE", !54, i64 0}
!56 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl22PatchReferencePositionENS_9allocatorIS2_EEEE", !55, i64 0}
!57 = !{!"_ZTSNSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEEE", !54, i64 0, !54, i64 8, !56, i64 16}
!58 = !{!"p1 _ZTSN3jxl13PatchBlendingE", !24, i64 0}
!59 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl13PatchBlendingELi0ELb0EEE", !58, i64 0}
!60 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl13PatchBlendingENS_9allocatorIS2_EEEE", !59, i64 0}
!61 = !{!"_ZTSNSt3__16vectorIN3jxl13PatchBlendingENS_9allocatorIS2_EEEE", !58, i64 0, !58, i64 8, !60, i64 16}
!62 = !{!"p1 _ZTSN3jxl15PatchDictionary13PatchTreeNodeE", !24, i64 0}
!63 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl15PatchDictionary13PatchTreeNodeELi0ELb0EEE", !62, i64 0}
!64 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEEE", !63, i64 0}
!65 = !{!"_ZTSNSt3__16vectorIN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEEE", !62, i64 0, !62, i64 8, !64, i64 16}
!66 = !{!"p1 long", !24, i64 0}
!67 = !{!"_ZTSNSt3__122__compressed_pair_elemIPmLi0ELb0EEE", !66, i64 0}
!68 = !{!"_ZTSNSt3__117__compressed_pairIPmNS_9allocatorImEEEE", !67, i64 0}
!69 = !{!"_ZTSNSt3__16vectorImNS_9allocatorImEEEE", !66, i64 0, !66, i64 8, !68, i64 16}
!70 = !{!"p1 _ZTSNSt3__14pairImmEE", !24, i64 0}
!71 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_4pairImmEELi0ELb0EEE", !70, i64 0}
!72 = !{!"_ZTSNSt3__117__compressed_pairIPNS_4pairImmEENS_9allocatorIS2_EEEE", !71, i64 0}
!73 = !{!"_ZTSNSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEEE", !70, i64 0, !70, i64 8, !72, i64 16}
!74 = !{!"_ZTSN3jxl15PatchDictionaryE", !25, i64 0, !49, i64 8, !53, i64 16, !57, i64 40, !61, i64 64, !27, i64 88, !65, i64 96, !69, i64 120, !73, i64 144, !73, i64 168}
!75 = !{!"p1 _ZTSN3jxl15QuantizedSplineE", !24, i64 0}
!76 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl15QuantizedSplineELi0ELb0EEE", !75, i64 0}
!77 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl15QuantizedSplineENS_9allocatorIS2_EEEE", !76, i64 0}
!78 = !{!"_ZTSNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEEE", !75, i64 0, !75, i64 8, !77, i64 16}
!79 = !{!"p1 _ZTSN3jxl6Spline5PointE", !24, i64 0}
!80 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl6Spline5PointELi0ELb0EEE", !79, i64 0}
!81 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl6Spline5PointENS_9allocatorIS3_EEEE", !80, i64 0}
!82 = !{!"_ZTSNSt3__16vectorIN3jxl6Spline5PointENS_9allocatorIS3_EEEE", !79, i64 0, !79, i64 8, !81, i64 16}
!83 = !{!"p1 _ZTSN3jxl13SplineSegmentE", !24, i64 0}
!84 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl13SplineSegmentELi0ELb0EEE", !83, i64 0}
!85 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl13SplineSegmentENS_9allocatorIS2_EEEE", !84, i64 0}
!86 = !{!"_ZTSNSt3__16vectorIN3jxl13SplineSegmentENS_9allocatorIS2_EEEE", !83, i64 0, !83, i64 8, !85, i64 16}
!87 = !{!"_ZTSN3jxl7SplinesE", !20, i64 0, !78, i64 8, !82, i64 32, !86, i64 56, !69, i64 80, !69, i64 104}
!88 = !{!"_ZTSN3jxl13ImageFeaturesE", !48, i64 0, !74, i64 32, !87, i64 224}
!89 = !{!"p1 int", !24, i64 0}
!90 = !{!"_ZTSNSt3__122__compressed_pair_elemIPjLi0ELb0EEE", !89, i64 0}
!91 = !{!"_ZTSNSt3__117__compressed_pairIPjNS_9allocatorIjEEEE", !90, i64 0}
!92 = !{!"_ZTSNSt3__16vectorIjNS_9allocatorIjEEEE", !89, i64 0, !89, i64 8, !91, i64 16}
!93 = !{!"_ZTSN3jxl6Image3IfEE", !19, i64 0}
!94 = !{!"p1 _ZTSN3jxl6Image3IfEE", !24, i64 0}
!95 = !{!"_ZTSNSt3__122__compressed_pair_elemIPhLi0ELb0EEE", !32, i64 0}
!96 = !{!"_ZTSNSt3__117__compressed_pairIPhNS_9allocatorIhEEEE", !95, i64 0}
!97 = !{!"_ZTSNSt3__16vectorIhNS_9allocatorIhEEEE", !32, i64 0, !32, i64 8, !96, i64 16}
!98 = !{!"_ZTSN3jxl11BlockCtxMapE", !19, i64 0, !92, i64 72, !97, i64 96, !27, i64 120, !27, i64 128}
!99 = !{!"_ZTSNSt3__15arrayIN3jxl14ReferenceFrameELm4EEE", !19, i64 0}
!100 = !{!"_ZTSN3jxl17PassesSharedStateE", !25, i64 0, !26, i64 8, !28, i64 16, !33, i64 160, !39, i64 232, !42, i64 976, !43, i64 1048, !31, i64 1104, !46, i64 1160, !88, i64 1312, !27, i64 1664, !92, i64 1672, !31, i64 1696, !93, i64 1752, !94, i64 1920, !98, i64 1928, !19, i64 2064, !99, i64 2736, !27, i64 2800}
!101 = !{!"p1 _ZTSN3jxl17PassesSharedStateE", !24, i64 0}
!102 = !{!"p1 _ZTSN3jxl19RenderPipelineStageE", !24, i64 0}
!103 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl19RenderPipelineStageELi0ELb0EEE", !102, i64 0}
!104 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEEE", !103, i64 0}
!105 = !{!"_ZTSNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEEE", !104, i64 0}
!106 = !{!"p1 _ZTSN3jxl7ANSCodeE", !24, i64 0}
!107 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl7ANSCodeELi0ELb0EEE", !106, i64 0}
!108 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl7ANSCodeENS_9allocatorIS2_EEEE", !107, i64 0}
!109 = !{!"_ZTSNSt3__16vectorIN3jxl7ANSCodeENS_9allocatorIS2_EEEE", !106, i64 0, !106, i64 8, !108, i64 16}
!110 = !{!"p1 _ZTSNSt3__16vectorIhNS_9allocatorIhEEEE", !24, i64 0}
!111 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_6vectorIhNS_9allocatorIhEEEELi0ELb0EEE", !110, i64 0}
!112 = !{!"_ZTSNSt3__117__compressed_pairIPNS_6vectorIhNS_9allocatorIhEEEENS2_IS4_EEEE", !111, i64 0}
!113 = !{!"_ZTSNSt3__16vectorINS0_IhNS_9allocatorIhEEEENS1_IS3_EEEE", !110, i64 0, !110, i64 8, !112, i64 16}
!114 = !{!"_ZTSN3jxl5PlaneIfEE", !30, i64 0}
!115 = !{!"_ZTS11JxlDataType", !19, i64 0}
!116 = !{!"_ZTS13JxlEndianness", !19, i64 0}
!117 = !{!"_ZTS14JxlPixelFormat", !20, i64 0, !115, i64 4, !116, i64 8, !27, i64 16}
!118 = !{!"_ZTSN3jxl13PixelCallbackE", !24, i64 0, !24, i64 8, !24, i64 16, !24, i64 24}
!119 = !{!"_ZTSN3jxl11ImageOutputE", !117, i64 0, !27, i64 24, !118, i64 32, !24, i64 64, !27, i64 72, !27, i64 80}
!120 = !{!"p1 _ZTSN3jxl11ImageOutputE", !24, i64 0}
!121 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl11ImageOutputELi0ELb0EEE", !120, i64 0}
!122 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl11ImageOutputENS_9allocatorIS2_EEEE", !121, i64 0}
!123 = !{!"_ZTSNSt3__16vectorIN3jxl11ImageOutputENS_9allocatorIS2_EEEE", !120, i64 0, !120, i64 8, !122, i64 16}
!124 = !{!"bool", !19, i64 0}
!125 = !{!"_ZTSN3jxl11OrientationE", !19, i64 0}
!126 = !{!"_ZTSNSt3__122__cxx_atomic_base_implIjEE", !19, i64 0}
!127 = !{!"_ZTSNSt3__117__cxx_atomic_implIjNS_22__cxx_atomic_base_implIjEEEE", !126, i64 0}
!128 = !{!"_ZTSNSt3__113__atomic_baseIjLb0EEE", !127, i64 0}
!129 = !{!"_ZTSNSt3__113__atomic_baseIjLb1EEE", !128, i64 0}
!130 = !{!"_ZTSNSt3__16atomicIjEE", !129, i64 0}
!131 = !{!"p1 _ZTSN3jxl7ACImageE", !24, i64 0}
!132 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl7ACImageELi0ELb0EEE", !131, i64 0}
!133 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl7ACImageENS_14default_deleteIS2_EEEE", !132, i64 0}
!134 = !{!"_ZTSNSt3__110unique_ptrIN3jxl7ACImageENS_14default_deleteIS2_EEEE", !133, i64 0}
!135 = !{!"p1 _ZTSN3jxl14RenderPipelineE", !24, i64 0}
!136 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl14RenderPipelineELi0ELb0EEE", !135, i64 0}
!137 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl14RenderPipelineENS_14default_deleteIS2_EEEE", !136, i64 0}
!138 = !{!"_ZTSNSt3__110unique_ptrIN3jxl14RenderPipelineENS_14default_deleteIS2_EEEE", !137, i64 0}
!139 = !{!"p1 _ZTSN3jxl4jpeg8JPEGDataE", !24, i64 0}
end_hunk_1

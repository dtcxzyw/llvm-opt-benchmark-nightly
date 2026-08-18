inline.NumInlined: 100
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 12
begin_hunk_0_@VULKAN_SetDrawState:bb.a
  br label %GetBlendFactor.exit64.i

GetBlendFactor.exit64.i:                          ; preds = %GetBlendFactor.exit62.i, %switch.lookup13
  %.0.i63.i = phi i32 [ %switch.ext16, %switch.lookup13 ], [ 2147483647, %GetBlendFactor.exit62.i ]
  %i.eq = getelementptr inbounds nuw i8, ptr %25, i64 20
  store i32 %.0.i63.i, ptr %i.eq, align 4
  %i.er = call i32 @SDL_GetBlendModeAlphaOperation(i32 noundef %i.i) #7
  %switch.tableidx.i65.i = add i32 %i.er, -1      ; 2 uses
  %i.es = icmp ult i32 %switch.tableidx.i65.i, 5
  %switch.tableidx..i66.i = select i1 %i.es, i32 %switch.tableidx.i65.i, i32 2147483647
  %i.et = getelementptr inbounds nuw i8, ptr %25, i64 24
  store i32 %switch.tableidx..i66.i, ptr %i.et, align 4
  %i.eu = getelementptr inbounds nuw i8, ptr %25, i64 28
  store i32 15, ptr %i.eu, align 4
  %i.ev = getelementptr inbounds nuw i8, ptr %.val166, i64 1808
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %24, i64 112
  store ptr %i.ew, ptr %i.ex, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %24, i64 120
  store i32 0, ptr %i.ey, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %24, i64 104 ; 2 uses
  store ptr %2, ptr %i.ez, align 8
  %i.fa = load ptr, ptr @vkCreateGraphicsPipelines, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %.val166, i64 1632
  %i.fc = load ptr, ptr %i.fb, align 8
  %i.fd = call i32 %i.fa(ptr noundef %i.fc, ptr noundef null, i32 noundef 1, ptr noundef nonnull %24, ptr noundef null, ptr noundef nonnull %i.a) #7, !inline_history !64 ; 3 uses
  %.not.i170 = icmp eq i32 %i.fd, 0
  br i1 %.not.i170, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %GetBlendFactor.exit64.i
  %i.fe = call zeroext i1 @SDL_GetHintBoolean_REAL(ptr noundef nonnull @.str.3, i1 noundef zeroext false) #7
  br i1 %i.fe, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ff = call ptr @SDL_Vulkan_GetResultString(i32 noundef %i.fd) #7
  call void (i32, ptr, ...) @SDL_LogError_REAL(i32 noundef 6, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.37, ptr noundef %i.ff) #7
  call void @llvm.debugtrap()
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.fg = call ptr @SDL_Vulkan_GetResultString(i32 noundef %i.fd) #7
  %i.fh = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.37, ptr noundef %i.fg) #7 ; 0 uses
  br label %.thread8

bb.ad:                                            ; preds = %GetBlendFactor.exit64.i
  %i.fi = getelementptr inbounds nuw i8, ptr %.val166, i64 10368 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %.val166, i64 10360 ; 10 uses
  %i.fl = load i32, ptr %i.fk, align 8
  %i.fm = add nsw i32 %i.fl, 1
  %i.fn = sext i32 %i.fm to i64
  %i.fo = mul nsw i64 %i.fn, 88
  %i.fp = call ptr @SDL_realloc_REAL(ptr noundef %i.fj, i64 noundef %i.fo) #13 ; 10 uses
  %.not58.i = icmp eq ptr %i.fp, null
  br i1 %.not58.i, label %.thread8, label %bb.ae

.thread8:                                         ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  store ptr null, ptr %i.ba, align 8
  %i.fq = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.35) #7 ; 0 uses
  br label %bb.bk

bb.ae:                                            ; preds = %bb.ad
  %i.fr = load i32, ptr %i.fk, align 8
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr inbounds [88 x i8], ptr %i.fp, i64 %i.fs
  store i32 %.0.i, ptr %i.ft, align 8
  %i.fu = load i32, ptr %i.fk, align 8
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds [88 x i8], ptr %i.fp, i64 %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 52
  store i32 %i.i, ptr %i.fx, align 4
  %i.fy = load i32, ptr %i.fk, align 8
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds [88 x i8], ptr %i.fp, i64 %i.fz
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 56
  store i32 %5, ptr %i.gb, align 8
  %i.gc = load i32, ptr %i.fk, align 8
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds [88 x i8], ptr %i.fp, i64 %i.gd
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 60
  store i32 %i.k, ptr %i.gf, align 4
  %i.gg = load ptr, ptr %i.a, align 8
  %i.gh = load i32, ptr %i.fk, align 8
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds [88 x i8], ptr %i.fp, i64 %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 80
  store ptr %i.gg, ptr %i.gk, align 8
  %i.gl = load i32, ptr %i.fk, align 8
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr inbounds [88 x i8], ptr %i.fp, i64 %i.gm
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 72
  store ptr %3, ptr %i.go, align 8
  %i.gp = load ptr, ptr %i.ez, align 8
  %i.gq = load i32, ptr %i.fk, align 8
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr inbounds [88 x i8], ptr %i.fp, i64 %i.gr
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 64
  store ptr %i.gp, ptr %i.gt, align 8
  store ptr %i.fp, ptr %i.fi, align 8
  %i.gu = load i32, ptr %i.fk, align 8            ; 2 uses
  %i.gv = add nsw i32 %i.gu, 1
  store i32 %i.gv, ptr %i.fk, align 8
  %i.gw = sext i32 %i.gu to i64
  %i.gx = getelementptr inbounds [88 x i8], ptr %i.fp, i64 %i.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %.thread5

.thread5:                                         ; preds = %bb.y, %bb.ae
  %i.gy = phi ptr [ %i.gx, %bb.ae ], [ %i.bs, %bb.y ] ; 2 uses
  store ptr %i.gy, ptr %i.ba, align 8
  %i.gz = load ptr, ptr @vkCmdBindPipeline, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.g, i64 1688
  %i.hb = load ptr, ptr %i.ha, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gy, i64 80
  %i.hd = load ptr, ptr %i.hc, align 8
  call void %i.gz(ptr noundef %i.hb, i32 noundef 0, ptr noundef %i.hd) #7
  br label %bb.af

bb.af:                                            ; preds = %.thread5, %bb.r
  %.0135 = phi i1 [ true, %.thread5 ], [ false, %bb.r ] ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.g, i64 10568
  %i.hf = load i8, ptr %i.he, align 8, !range !3, !noundef !4
  %i.hg = trunc nuw i8 %i.hf to i1
  br i1 %i.hg, label %bb.ag, label %VULKAN_UpdateViewport.exit

bb.ag:                                            ; preds = %bb.af
  %.val167 = load ptr, ptr %i.f, align 8          ; 13 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.val167, i64 10548 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.val167, i64 10520
  %i.hj = load ptr, ptr %i.hi, align 8
  %.not.i.i171 = icmp eq ptr %i.hj, null
  br i1 %.not.i.i171, label %bb.ah, label %VULKAN_GetRotationForCurrentRenderTarget.exit.i

bb.ah:                                            ; preds = %bb.ag
  %i.hk = getelementptr inbounds nuw i8, ptr %.val167, i64 10416
  %i.hl = load i32, ptr %i.hk, align 8
  br label %VULKAN_GetRotationForCurrentRenderTarget.exit.i

VULKAN_GetRotationForCurrentRenderTarget.exit.i:  ; preds = %bb.ah, %bb.ag
  %.0.i.i172 = phi i32 [ %i.hl, %bb.ah ], [ 1, %bb.ag ] ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.val167, i64 10556 ; 2 uses
  %i.hn = load i32, ptr %i.hm, align 4            ; 2 uses
  %i.ho = icmp eq i32 %i.hn, 0
  br i1 %i.ho, label %VULKAN_UpdateViewport.exit, label %bb.ai

bb.ai:                                            ; preds = %VULKAN_GetRotationForCurrentRenderTarget.exit.i
  %i.hp = getelementptr inbounds nuw i8, ptr %.val167, i64 10560
  %i.hq = load i32, ptr %i.hp, align 8            ; 2 uses
  %i.hr = icmp eq i32 %i.hq, 0
  br i1 %i.hr, label %VULKAN_UpdateViewport.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hs = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %.0.i.i172)
  %i.ht = icmp eq i32 %i.hs, 1
  %i.hu = insertelement <2 x i32> poison, i32 %i.hn, i64 0
  %i.hv = insertelement <2 x i32> %i.hu, i32 %i.hq, i64 1 ; 2 uses
  br i1 %i.ht, label %.split.i, label %bb.ak

.split.i:                                         ; preds = %bb.aj
  %i.hw = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i.i172, i1 true)
  %switch.tableidx17 = add nsw i32 %i.hw, -1      ; 2 uses
  %i.hx = icmp ult i32 %switch.tableidx17, 3
  br i1 %i.hx, label %switch.lookup18, label %bb.ak

switch.lookup18:                                  ; preds = %.split.i
  %i.hy = zext nneg i32 %switch.tableidx17 to i64
  %switch.gep19 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.VULKAN_SetDrawState.19, i64 %i.hy
  %switch.load20 = load float, ptr %switch.gep19, align 4 ; 2 uses
  %i.hz = call float @SDL_sinf_REAL(float noundef %switch.load20) #7, !noalias !4 ; 2 uses
  %i.ia = call float @SDL_cosf_REAL(float noundef %switch.load20) #7, !noalias !4
  %i.ib = fneg float %i.hz
  %i.ic = load <2 x i32>, ptr %i.hm, align 4
  br label %bb.ak

bb.ak:                                            ; preds = %.split.i, %switch.lookup18, %bb.aj
  %.sroa.045.0.i = phi float [ 1.000000e+00, %.split.i ], [ 1.000000e+00, %bb.aj ], [ %i.ia, %switch.lookup18 ] ; 7 uses
  %.sroa.746.0.i = phi float [ 0.000000e+00, %.split.i ], [ 0.000000e+00, %bb.aj ], [ %i.hz, %switch.lookup18 ] ; 4 uses
  %.sroa.1448.0.i = phi float [ 0.000000e+00, %.split.i ], [ 0.000000e+00, %bb.aj ], [ %i.ib, %switch.lookup18 ] ; 3 uses
  %i.id = phi <2 x i32> [ %i.hv, %.split.i ], [ %i.hv, %bb.aj ], [ %i.ic, %switch.lookup18 ]
  %i.ie = sitofp <2 x i32> %i.id to <2 x float>   ; 5 uses
  %i.if = fdiv <2 x float> <float 2.000000e+00, float -2.000000e+00>, %i.ie ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.val167, i64 10168
  %29 = fmul float %.sroa.1448.0.i, 0.000000e+00  ; 2 uses
  %30 = fmul float %.sroa.045.0.i, 0.000000e+00   ; 2 uses
  %31 = extractelement <2 x float> %i.if, i64 1   ; 2 uses
  %32 = fmul float %.sroa.1448.0.i, %31
  %33 = fmul float %.sroa.045.0.i, %31
  %34 = fsub float %.sroa.1448.0.i, %.sroa.045.0.i
  %35 = fsub float %.sroa.045.0.i, %.sroa.746.0.i
  %i.ih = shufflevector <2 x float> %i.if, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ii = shufflevector <2 x float> %i.if, <2 x float> poison, <4 x i32> zeroinitializer
  %36 = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, float %.sroa.045.0.i, i64 0
  %37 = insertelement <4 x float> %36, float %.sroa.746.0.i, i64 1
  %i.ij = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, float %29, i64 0
  %38 = insertelement <4 x float> %i.ij, float %30, i64 1
  %i.ik = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ii, <4 x float> %37, <4 x float> %38)
  %i.il = fadd <4 x float> %i.ik, zeroinitializer
  store <4 x float> %i.il, ptr %i.ig, align 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val167, i64 10184
  %39 = insertelement <4 x float> poison, float %.sroa.045.0.i, i64 0
  %i.im = insertelement <4 x float> %39, float %.sroa.746.0.i, i64 1
  %i.in = shufflevector <4 x float> %i.im, <4 x float> %i.ih, <4 x i32> <i32 0, i32 1, i32 5, i32 5>
  %40 = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, float %32, i64 0
  %41 = insertelement <4 x float> %40, float %33, i64 1
  %i.io = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.in, <4 x float> zeroinitializer, <4 x float> %41)
  %i.ip = fadd <4 x float> %i.io, zeroinitializer
  store <4 x float> %i.ip, ptr %.sroa.7.0..sroa_idx.i, align 8
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val167, i64 10200
  %42 = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, float %.sroa.045.0.i, i64 0
  %43 = insertelement <4 x float> %42, float %.sroa.746.0.i, i64 1
  %i.iq = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, float %29, i64 0
  %44 = insertelement <4 x float> %i.iq, float %30, i64 1
  %i.ir = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %43, <4 x float> zeroinitializer, <4 x float> %44)
  %i.is = fadd <4 x float> %i.ir, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  store <4 x float> %i.is, ptr %.sroa.11.0..sroa_idx.i, align 8
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val167, i64 10216
  %45 = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, float %34, i64 0
  %46 = insertelement <4 x float> %45, float %35, i64 1
  %i.it = fadd <4 x float> %46, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>
  store <4 x float> %i.it, ptr %.sroa.15.0..sroa_idx.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #7
  switch i32 %.0.i.i172, label %bb.am [
    i32 8, label %bb.al
    i32 2, label %bb.al
  ]

bb.al:                                            ; preds = %bb.ak, %bb.ak
  %i.iu = getelementptr inbounds nuw i8, ptr %.val167, i64 10552
  %i.iv = load i32, ptr %i.iu, align 8
  %i.iw = sitofp i32 %i.iv to float
  store float %i.iw, ptr %12, align 4
  %i.ix = extractelement <2 x float> %i.ie, i64 0
  %i.iy = extractelement <2 x float> %i.ie, i64 1
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.iz = load i32, ptr %i.hh, align 4
  %i.ja = sitofp i32 %i.iz to float
  store float %i.ja, ptr %12, align 4
  %i.jb = getelementptr inbounds nuw i8, ptr %.val167, i64 10552
  %i.jc = extractelement <2 x float> %i.ie, i64 0
  %i.jd = extractelement <2 x float> %i.ie, i64 1
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.sink114.in.i = phi ptr [ %i.jb, %bb.am ], [ %i.hh, %bb.al ]
  %.sink110.i = phi float [ %i.jc, %bb.am ], [ %i.iy, %bb.al ]
  %.sink.i = phi float [ %i.jd, %bb.am ], [ %i.ix, %bb.al ]
  %.sink114.i = load i32, ptr %.sink114.in.i, align 4
  %i.je = sitofp i32 %.sink114.i to float
  %i.jf = getelementptr inbounds nuw i8, ptr %12, i64 4
  store float %i.je, ptr %i.jf, align 4
  %i.jg = getelementptr inbounds nuw i8, ptr %12, i64 8
  store float %.sink110.i, ptr %i.jg, align 4
  %i.jh = getelementptr inbounds nuw i8, ptr %12, i64 12
  store float %.sink.i, ptr %i.jh, align 4
  %i.ji = getelementptr inbounds nuw i8, ptr %12, i64 16
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.ji, align 4
  %i.jj = load ptr, ptr @vkCmdSetViewport, align 8
  %i.jk = getelementptr inbounds nuw i8, ptr %.val167, i64 1688
  %i.jl = load ptr, ptr %i.jk, align 8
  call void %i.jj(ptr noundef %i.jl, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %12) #7, !inline_history !65
  %i.jm = getelementptr inbounds nuw i8, ptr %.val167, i64 10568
  store i8 0, ptr %i.jm, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #7
  br label %VULKAN_UpdateViewport.exit

VULKAN_UpdateViewport.exit:                       ; preds = %bb.an, %bb.ai, %VULKAN_GetRotationForCurrentRenderTarget.exit.i, %bb.af
  %.1136 = phi i1 [ %.0135, %bb.af ], [ true, %bb.an ], [ %.0135, %bb.ai ], [ %.0135, %VULKAN_GetRotationForCurrentRenderTarget.exit.i ] ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.g, i64 10528
  %i.jo = load i8, ptr %i.jn, align 8, !range !3, !noundef !4
  %i.jp = trunc nuw i8 %i.jo to i1
  br i1 %i.jp, label %bb.ao, label %bb.au

bb.ao:                                            ; preds = %VULKAN_UpdateViewport.exit
  %.val168 = load ptr, ptr %i.f, align 8          ; 12 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.val168, i64 10548
  %i.jr = getelementptr inbounds nuw i8, ptr %.val168, i64 10520
  %i.js = load ptr, ptr %i.jr, align 8
  %.not.i.i174 = icmp eq ptr %i.js, null
  br i1 %.not.i.i174, label %bb.ap, label %VULKAN_GetRotationForCurrentRenderTarget.exit.i175

bb.ap:                                            ; preds = %bb.ao
  %i.jt = getelementptr inbounds nuw i8, ptr %.val168, i64 10416
  %i.ju = load i32, ptr %i.jt, align 8
  br label %VULKAN_GetRotationForCurrentRenderTarget.exit.i175

VULKAN_GetRotationForCurrentRenderTarget.exit.i175: ; preds = %bb.ap, %bb.ao
  %.0.i.i176 = phi i32 [ %i.ju, %bb.ap ], [ 1, %bb.ao ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #7
  %i.jv = getelementptr inbounds nuw i8, ptr %.val168, i64 10529
  %i.jw = load i8, ptr %i.jv, align 1, !range !3, !noundef !4
  %i.jx = trunc nuw i8 %i.jw to i1
  %i.jy = load i32, ptr %i.jq, align 4            ; 2 uses
  br i1 %i.jx, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %VULKAN_GetRotationForCurrentRenderTarget.exit.i175
  %i.jz = getelementptr inbounds nuw i8, ptr %.val168, i64 10532
  %i.ka = load i32, ptr %i.jz, align 4
  %i.kb = add nsw i32 %i.ka, %i.jy
  %i.kc = getelementptr inbounds nuw i8, ptr %.val168, i64 10552
  %i.kd = load i32, ptr %i.kc, align 8
  %i.ke = getelementptr inbounds nuw i8, ptr %.val168, i64 10536
  %i.kf = load i32, ptr %i.ke, align 8
  %i.kg = add nsw i32 %i.kf, %i.kd
  br label %bb.as

bb.ar:                                            ; preds = %VULKAN_GetRotationForCurrentRenderTarget.exit.i175
  %i.kh = getelementptr inbounds nuw i8, ptr %.val168, i64 10552
  %i.ki = load i32, ptr %i.kh, align 8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.sink4.i = phi i64 [ 10556, %bb.ar ], [ 10540, %bb.aq ]
  %.sink.i177 = phi i64 [ 10560, %bb.ar ], [ 10544, %bb.aq ]
  %.sroa.0.0.copyload.i = phi i32 [ %i.jy, %bb.ar ], [ %i.kb, %bb.aq ] ; 2 uses
  %.sroa.4.0.copyload.i = phi i32 [ %i.ki, %bb.ar ], [ %i.kg, %bb.aq ] ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.val168, i64 %.sink4.i
  %i.kk = getelementptr inbounds nuw i8, ptr %.val168, i64 %.sink.i177
  %.sroa.6.0.copyload.i = load i32, ptr %i.kk, align 4 ; 2 uses
  %.sroa.5.0.copyload.i = load i32, ptr %i.kj, align 4 ; 2 uses
  store i32 %.sroa.0.0.copyload.i, ptr %11, align 4
  %i.kl = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 2 uses
  store i32 %.sroa.4.0.copyload.i, ptr %i.kl, align 4
  %i.km = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store i32 %.sroa.5.0.copyload.i, ptr %i.km, align 4
  %i.kn = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 2 uses
  store i32 %.sroa.6.0.copyload.i, ptr %i.kn, align 4
  switch i32 %.0.i.i176, label %VULKAN_UpdateClipRect.exit [
    i32 8, label %bb.at
    i32 2, label %bb.at
  ]

bb.at:                                            ; preds = %bb.as, %bb.as
  store i32 %.sroa.4.0.copyload.i, ptr %11, align 4
  store i32 %.sroa.0.0.copyload.i, ptr %i.kl, align 4
  store i32 %.sroa.6.0.copyload.i, ptr %i.km, align 4
  store i32 %.sroa.5.0.copyload.i, ptr %i.kn, align 4
  br label %VULKAN_UpdateClipRect.exit

VULKAN_UpdateClipRect.exit:                       ; preds = %bb.as, %bb.at
  %i.ko = load ptr, ptr @vkCmdSetScissor, align 8
  %i.kp = getelementptr inbounds nuw i8, ptr %.val168, i64 1688
  %i.kq = load ptr, ptr %i.kp, align 8
  call void %i.ko(ptr noundef %i.kq, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %11) #7, !inline_history !66
  %i.kr = getelementptr inbounds nuw i8, ptr %.val168, i64 10528
  store i8 0, ptr %i.kr, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #7
  br label %bb.au

bb.au:                                            ; preds = %VULKAN_UpdateClipRect.exit, %VULKAN_UpdateViewport.exit
  br i1 %.1136, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ks = getelementptr inbounds nuw i8, ptr %i.g, i64 10104
  %i.kt = call i32 @SDL_memcmp_REAL(ptr noundef nonnull %i.ks, ptr noundef nonnull %i.l, i64 noundef 64) #7
  %.not160 = icmp eq i32 %i.kt, 0
  br i1 %.not160, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.ku = getelementptr inbounds nuw i8, ptr %i.g, i64 10104 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ku, ptr noundef nonnull align 4 dereferenceable(64) %i.l, i64 64, i1 false)
  %i.kv = load ptr, ptr @vkCmdPushConstants, align 8
  %i.kw = getelementptr inbounds nuw i8, ptr %i.g, i64 1688
  %i.kx = load ptr, ptr %i.kw, align 8
  %i.ky = load ptr, ptr %i.ba, align 8
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 64
  %i.la = load ptr, ptr %i.kz, align 8
  call void %i.kv(ptr noundef %i.kx, ptr noundef %i.la, i32 noundef 1, i32 noundef 0, i32 noundef 128, ptr noundef nonnull %i.ku) #7
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  br i1 %.not.i, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.lb = getelementptr inbounds nuw i8, ptr %27, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.lb, i8 0, i64 44, i1 false)
  %i.lc = call zeroext i1 @SDL_RenderingLinearSpace(ptr noundef %0) #7
  %i.ld = uitofp i1 %i.lc to float
  store float %i.ld, ptr %27, align 4
  %i.le = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.lf = load float, ptr %i.le, align 8
  %i.lg = getelementptr inbounds nuw i8, ptr %27, i64 12
  store float %i.lf, ptr %i.lg, align 4
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.0134 = phi ptr [ %4, %bb.ax ], [ %27, %bb.ay ] ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.g, i64 10248 ; 5 uses
  %i.li = load ptr, ptr %i.lh, align 8
  %i.lj = getelementptr inbounds nuw i8, ptr %i.g, i64 1680 ; 8 uses
  %i.lk = load i32, ptr %i.lj, align 8
  %i.ll = zext i32 %i.lk to i64
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.li, i64 %i.ll
  %i.ln = load ptr, ptr %i.lm, align 8
  %i.lo = getelementptr inbounds nuw i8, ptr %i.g, i64 10264 ; 4 uses
  %i.lp = load i32, ptr %i.lo, align 8
  %i.lq = zext i32 %i.lp to i64
  %i.lr = getelementptr inbounds nuw [32 x i8], ptr %i.ln, i64 %i.lq
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %i.lt = load ptr, ptr %i.ls, align 8            ; 3 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.g, i64 10268 ; 5 uses
  %i.lv = load i32, ptr %i.lu, align 4            ; 2 uses
  br i1 %.1136, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %narrow = call i32 @llvm.smax.i32(i32 %i.lv, i32 0)
  %spec.select165 = zext nneg i32 %narrow to i64
  %i.lw = load ptr, ptr %i.ba, align 8
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 4
  %i.ly = call i32 @SDL_memcmp_REAL(ptr noundef nonnull %.0134, ptr noundef nonnull %i.lx, i64 noundef 48) #7
  %.not162 = icmp eq i32 %i.ly, 0
  br i1 %.not162, label %bb.bi, label %thread-pre-split11

thread-pre-split11:                               ; preds = %bb.ba
  %.pr12 = load i32, ptr %i.lu, align 4
  br label %bb.bb

bb.bb:                                            ; preds = %thread-pre-split11, %bb.az
end_hunk_0

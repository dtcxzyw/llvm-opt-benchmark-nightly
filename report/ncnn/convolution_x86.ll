Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86?download=true
inline.NumInlined: 404
inline.NumDeleted: 92
loop-unroll.NumCompletelyUnrolled: 114
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 220
begin_hunk_0_@_ZN4ncnnL41convolution_gemm_transB_packed_tile_bf16sERKNS_3MatES2_S2_RS0_S3_iiiiiibiS2_:bb.a
_ZL13activation_ssfiRKN4ncnn3MatE.exit633.thread2437: ; preds = %.preheader2580
  %i.dcw = load float, ptr %i.czd, align 4, !tbaa !53 ; 2 uses
  %i.dcx = fcmp fast ogt float %i.dcr, 0.000000e+00
  %i.dcy = select fast i1 %i.dcx, float 1.000000e+00, float %i.dcw
  %i.dcz = fmul fast float %i.dcy, %i.dcr
  store float %i.dcz, ptr %i.dcq, align 4, !tbaa !53
  %i.dda = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv2876 ; 2 uses
  %i.ddb = load float, ptr %i.dda, align 4, !tbaa !53 ; 2 uses
  %i.ddc = fcmp fast ogt float %i.ddb, 0.000000e+00
  %i.ddd = select fast i1 %i.ddc, float 1.000000e+00, float %i.dcw
  %i.dde = fmul fast float %i.ddd, %i.ddb
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit632

_ZL13activation_ssfiRKN4ncnn3MatE.exit633.thread2433: ; preds = %.preheader2580
  %i.ddf = load float, ptr %i.czb, align 4, !tbaa !53 ; 2 uses
  %i.ddg = load float, ptr %i.czc, align 4, !tbaa !53 ; 4 uses
  %.01885 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.dcr, float %i.ddf) ; 2 uses
  %i.ddh = fcmp fast ogt float %.01885, %i.ddg
  %.11886.ph2432 = select i1 %i.ddh, float %i.ddg, float %.01885
  store float %.11886.ph2432, ptr %i.dcq, align 4, !tbaa !53
  %i.ddi = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv2876 ; 3 uses
  %i.ddj = load float, ptr %i.ddi, align 4, !tbaa !53
  %.01887 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.ddj, float %i.ddf) ; 2 uses
  %i.ddk = fcmp fast ogt float %.01887, %i.ddg
  br i1 %i.ddk, label %bb.aq, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit632

_ZL13activation_ssfiRKN4ncnn3MatE.exit633.thread2439: ; preds = %.preheader2580
  %i.ddl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv2876 ; 2 uses
  %i.ddm = load float, ptr %i.ddl, align 4, !tbaa !53
  %i.ddn = insertelement <2 x float> poison, float %i.dcr, i64 0
  %i.ddo = insertelement <2 x float> %i.ddn, float %i.ddm, i64 1
  %i.ddp = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ddo, <2 x float> splat (float f0x42B0C0A5))
  %i.ddq = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ddp, <2 x float> splat (float f0xC2B0C0A5))
  %i.ddr = fneg fast <2 x float> %i.ddq
  %i.dds = tail call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.ddr)
  %i.ddt = fadd fast <2 x float> %i.dds, splat (float 1.000000e+00)
  %i.ddu = fdiv fast <2 x float> splat (float 1.000000e+00), %i.ddt ; 2 uses
  %i.ddv = extractelement <2 x float> %i.ddu, i64 0
  store float %i.ddv, ptr %i.dcq, align 4, !tbaa !53
  %i.ddw = extractelement <2 x float> %i.ddu, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit632

_ZL13activation_ssfiRKN4ncnn3MatE.exit633.thread2441: ; preds = %.preheader2580
  %i.ddx = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.dcr)
  %i.ddy = fadd fast float %i.ddx, 1.000000e+00
  %i.ddz = tail call fast float @llvm.log.f32(float %i.ddy)
  %i.dea = tail call fast float @llvm.tanh.f32(float %i.ddz)
  %i.deb = fmul fast float %i.dea, %i.dcr
  store float %i.deb, ptr %i.dcq, align 4, !tbaa !53
  %i.dec = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv2876 ; 2 uses
  %i.ded = load float, ptr %i.dec, align 4, !tbaa !53 ; 2 uses
  %i.dee = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.ded)
  %i.def = fadd fast float %i.dee, 1.000000e+00
  %i.deg = tail call fast float @llvm.log.f32(float %i.def)
  %i.deh = tail call fast float @llvm.tanh.f32(float %i.deg)
  %i.dei = fmul fast float %i.deh, %i.ded
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit632

bb.an:                                            ; preds = %.preheader2580
  %i.dej = load float, ptr %i.cyz, align 4, !tbaa !53 ; 5 uses
  %i.dek = load float, ptr %i.cza, align 4, !tbaa !53 ; 3 uses
  %i.del = fneg fast float %i.dek
  %i.dem = fdiv fast float %i.del, %i.dej         ; 4 uses
  %i.den = fcmp fast olt float %i.dcr, %i.dem
  br i1 %i.den, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit633.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.deo = fdiv fast float 1.000000e+00, %i.dej
  %i.dep = fadd fast float %i.dem, %i.deo
  %i.deq = fcmp fast ogt float %i.dcr, %i.dep
  br i1 %i.deq, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit633.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.der = fmul fast float %i.dej, %i.dcr
  %i.des = fadd fast float %i.der, %i.dek
  %i.det = fmul fast float %i.des, %i.dcr
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit633.thread

_ZL13activation_ssfiRKN4ncnn3MatE.exit633.thread: ; preds = %bb.an, %bb.ao, %bb.ap
  %.11886.ph = phi float [ 0.000000e+00, %bb.an ], [ %i.dcr, %bb.ao ], [ %i.det, %bb.ap ]
  store float %.11886.ph, ptr %i.dcq, align 4, !tbaa !53
  %i.deu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv2876 ; 4 uses
  %i.dev = load float, ptr %i.deu, align 4, !tbaa !53 ; 5 uses
  %i.dew = fcmp fast olt float %i.dev, %i.dem
  br i1 %i.dew, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit632, label %bb.ar

_ZL13activation_ssfiRKN4ncnn3MatE.exit633:        ; preds = %.preheader2580
  %i.dex = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv2876 ; 2 uses
  %i.dey = load float, ptr %i.dex, align 4, !tbaa !53
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit632

bb.aq:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit633.thread2433
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit632

bb.ar:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit633.thread
  %i.dez = fdiv fast float 1.000000e+00, %i.dej
  %i.dfa = fadd fast float %i.dem, %i.dez
  %i.dfb = fcmp fast ogt float %i.dev, %i.dfa
  br i1 %i.dfb, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit632, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dfc = fmul fast float %i.dej, %i.dev
  %i.dfd = fadd fast float %i.dfc, %i.dek
  %i.dfe = fmul fast float %i.dfd, %i.dev
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit632

_ZL13activation_ssfiRKN4ncnn3MatE.exit632:        ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit633, %_ZL13activation_ssfiRKN4ncnn3MatE.exit633.thread, %_ZL13activation_ssfiRKN4ncnn3MatE.exit633.thread2435, %_ZL13activation_ssfiRKN4ncnn3MatE.exit633.thread2437, %_ZL13activation_ssfiRKN4ncnn3MatE.exit633.thread2433, %bb.aq, %_ZL13activation_ssfiRKN4ncnn3MatE.exit633.thread2439, %_ZL13activation_ssfiRKN4ncnn3MatE.exit633.thread2441, %bb.ar, %bb.as
  %i.dff = phi ptr [ %i.dex, %_ZL13activation_ssfiRKN4ncnn3MatE.exit633 ], [ %i.dct, %_ZL13activation_ssfiRKN4ncnn3MatE.exit633.thread2435 ], [ %i.dda, %_ZL13activation_ssfiRKN4ncnn3MatE.exit633.thread2437 ], [ %i.ddi, %bb.aq ], [ %i.ddi, %_ZL13activation_ssfiRKN4ncnn3MatE.exit633.thread2433 ], [ %i.ddl, %_ZL13activation_ssfiRKN4ncnn3MatE.exit633.thread2439 ], [ %i.dec, %_ZL13activation_ssfiRKN4ncnn3MatE.exit633.thread2441 ], [ %i.deu, %bb.as ], [ %i.deu, %bb.ar ], [ %i.deu, %_ZL13activation_ssfiRKN4ncnn3MatE.exit633.thread ]
  %.11888 = phi nsz float [ %i.dey, %_ZL13activation_ssfiRKN4ncnn3MatE.exit633 ], [ %i.dcv, %_ZL13activation_ssfiRKN4ncnn3MatE.exit633.thread2435 ], [ %i.dde, %_ZL13activation_ssfiRKN4ncnn3MatE.exit633.thread2437 ], [ %i.ddg, %bb.aq ], [ %.01887, %_ZL13activation_ssfiRKN4ncnn3MatE.exit633.thread2433 ], [ %i.ddw, %_ZL13activation_ssfiRKN4ncnn3MatE.exit633.thread2439 ], [ %i.dei, %_ZL13activation_ssfiRKN4ncnn3MatE.exit633.thread2441 ], [ %i.dfe, %bb.as ], [ %i.dev, %bb.ar ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit633.thread ]
  store float %.11888, ptr %i.dff, align 4, !tbaa !53
  %indvars.iv.next2877 = add nuw nsw i64 %indvars.iv2876, 1 ; 2 uses
  %exitcond2879.not = icmp eq i64 %indvars.iv.next2877, 8
  br i1 %exitcond2879.not, label %bb.am, label %.preheader2580, !llvm.loop !1921

.loopexit2582:                                    ; preds = %.preheader2581.preheader, %bb.am, %.preheader2579.preheader
  %.1533 = phi ptr [ %i.dcp, %.preheader2579.preheader ], [ %.05322685, %bb.am ], [ %.05322685, %.preheader2581.preheader ] ; 2 uses
  %i.dfg = getelementptr inbounds nuw i8, ptr %.55512684, i64 64 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.dfh = add nuw nsw i32 %.05232687, 8          ; 2 uses
  %i.dfi = or disjoint i32 %i.dfh, 7
  %i.dfj = icmp slt i32 %i.dfi, %5
  br i1 %i.dfj, label %bb.ak, label %.preheader2588, !llvm.loop !1922

.preheader2587:                                   ; preds = %bb.ba, %.preheader2588
  %.6.lcssa = phi ptr [ %.5551.lcssa, %.preheader2588 ], [ %i.dtl, %bb.ba ] ; 2 uses
  %.2534.lcssa = phi ptr [ %.0532.lcssa, %.preheader2588 ], [ %.3535, %bb.ba ]
  %.2528.lcssa = phi ptr [ %.0526.lcssa, %.preheader2588 ], [ %.3529.lcssa, %bb.ba ]
  %.1524.lcssa = phi i32 [ %.0523.lcssa, %.preheader2588 ], [ %i.dtm, %bb.ba ] ; 2 uses
  %i.dfk = icmp slt i32 %.1524.lcssa, %5
  br i1 %i.dfk, label %.lr.ph2729, label %._crit_edge2730

.lr.ph2729:                                       ; preds = %.preheader2587
  %.not582 = icmp eq ptr %.3543, null
  %i.dfl = getelementptr i8, ptr %.15162735, i64 %i.cj
  %i.dfm = load ptr, ptr %10, align 8             ; 2 uses
  %i.dfn = getelementptr inbounds nuw i8, ptr %i.dfm, i64 4
  %i.dfo = load ptr, ptr %10, align 8             ; 2 uses
  %i.dfp = getelementptr inbounds nuw i8, ptr %i.dfo, i64 4
  %i.dfq = load ptr, ptr %10, align 8
  br label %bb.bb

bb.at:                                            ; preds = %.lr.ph2709, %bb.ba
  %.15242708 = phi i32 [ %.0523.lcssa, %.lr.ph2709 ], [ %i.dtm, %bb.ba ]
  %.25282707 = phi ptr [ %.0526.lcssa, %.lr.ph2709 ], [ %.3529.lcssa, %bb.ba ] ; 3 uses
  %.25342706 = phi ptr [ %.0532.lcssa, %.lr.ph2709 ], [ %.3535, %bb.ba ] ; 4 uses
  %.62705 = phi ptr [ %.5551.lcssa, %.lr.ph2709 ], [ %i.dtl, %bb.ba ] ; 5 uses
  br i1 %i.aj, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dfr = load <4 x float>, ptr %.62705, align 16, !tbaa !108
  %i.dfs = getelementptr inbounds nuw i8, ptr %.62705, i64 16
  %i.dft = load <4 x float>, ptr %i.dfs, align 16, !tbaa !108
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %.01905 = phi nsz <4 x float> [ %i.dfr, %bb.au ], [ zeroinitializer, %bb.at ] ; 2 uses
  %storemerge583 = phi <4 x float> [ %i.dft, %bb.au ], [ zeroinitializer, %bb.at ] ; 2 uses
  br i1 %i.ak, label %.lr.ph2700, label %._crit_edge2701

.lr.ph2700:                                       ; preds = %bb.av, %.lr.ph2700
  %.05102698 = phi i32 [ %i.dgm, %.lr.ph2700 ], [ 0, %bb.av ]
  %.05112697 = phi ptr [ %i.dgk, %.lr.ph2700 ], [ %.15162735, %bb.av ] ; 2 uses
  %.35292696 = phi ptr [ %i.dgl, %.lr.ph2700 ], [ %.25282707, %bb.av ] ; 2 uses
  %.019032695 = phi <4 x float> [ %i.dgj, %.lr.ph2700 ], [ %storemerge583, %bb.av ]
  %.119062694 = phi <4 x float> [ %i.dgh, %.lr.ph2700 ], [ %.01905, %bb.av ]
  %i.dfu = load float, ptr %.05112697, align 1, !tbaa !108
  %i.dfv = insertelement <4 x float> poison, float %i.dfu, i64 0
  %i.dfw = shufflevector <4 x float> %i.dfv, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.dfx = bitcast <4 x float> %i.dfw to <8 x i16>
  %i.dfy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dfx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dfz = bitcast <8 x i16> %i.dfy to <4 x float> ; 2 uses
  %i.dga = load i64, ptr %.35292696, align 1, !tbaa !108
  %i.dgb = insertelement <2 x i64> poison, i64 %i.dga, i64 0
  %i.dgc = bitcast <2 x i64> %i.dgb to <8 x i16>
  %i.dgd = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dgc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dge = bitcast <8 x i16> %i.dgd to <4 x float> ; 2 uses
  %i.dgf = shufflevector <4 x float> %i.dge, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.dgg = fmul fast <4 x float> %i.dfz, %i.dge
  %i.dgh = fadd fast <4 x float> %i.dgg, %.119062694 ; 2 uses
  %i.dgi = fmul fast <4 x float> %i.dgf, %i.dfz
  %i.dgj = fadd fast <4 x float> %i.dgi, %.019032695 ; 2 uses
  %i.dgk = getelementptr inbounds nuw i8, ptr %.05112697, i64 4
  %i.dgl = getelementptr inbounds nuw i8, ptr %.35292696, i64 8
  %i.dgm = add nuw nsw i32 %.05102698, 1          ; 2 uses
  %exitcond2885.not = icmp eq i32 %i.dgm, %7
  br i1 %exitcond2885.not, label %._crit_edge2701.loopexit, label %.lr.ph2700, !llvm.loop !1923

._crit_edge2701.loopexit:                         ; preds = %.lr.ph2700
  %i.dgn = getelementptr i8, ptr %.25282707, i64 %i.at
  %scevgep2884 = getelementptr i8, ptr %i.dgn, i64 8
  br label %._crit_edge2701

._crit_edge2701:                                  ; preds = %._crit_edge2701.loopexit, %bb.av
  %.11906.lcssa = phi <4 x float> [ %.01905, %bb.av ], [ %i.dgh, %._crit_edge2701.loopexit ] ; 3 uses
  %.01903.lcssa = phi <4 x float> [ %storemerge583, %bb.av ], [ %i.dgj, %._crit_edge2701.loopexit ] ; 3 uses
  %.3529.lcssa = phi ptr [ %.25282707, %bb.av ], [ %scevgep2884, %._crit_edge2701.loopexit ] ; 2 uses
  br i1 %8, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %._crit_edge2701
  %11 = shufflevector <4 x float> %.11906.lcssa, <4 x float> %.01903.lcssa, <4 x i32> <i32 0, i32 4, i32 2, i32 6> ; 2 uses
  %12 = shufflevector <4 x float> %.11906.lcssa, <4 x float> %.01903.lcssa, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  %i.dgo = shufflevector <4 x float> %12, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  br i1 %.not584, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dgp = load float, ptr %i.cmt, align 4, !tbaa !53
  %i.dgq = insertelement <4 x float> poison, float %i.dgp, i64 0
  %i.dgr = shufflevector <4 x float> %i.dgq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dgs = fadd fast <4 x float> %i.dgr, %11
  %i.dgt = load float, ptr %i.cmy, align 4, !tbaa !53
  %i.dgu = insertelement <4 x float> poison, float %i.dgt, i64 0
  %i.dgv = shufflevector <4 x float> %i.dgu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dgw = fadd fast <4 x float> %i.dgv, %i.dgo
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.21907 = phi nsz <4 x float> [ %11, %bb.aw ], [ %i.dgs, %bb.ax ] ; 10 uses
  %.11904 = phi nsz <4 x float> [ %i.dgo, %bb.aw ], [ %i.dgw, %bb.ax ] ; 10 uses
  switch i32 %9, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit600 [
    i32 1, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit602.thread
    i32 2, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit602.thread2446
    i32 3, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit602.thread2449
    i32 4, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit602.thread2452
    i32 5, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit602.thread2455
    i32 6, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit602.thread2458
  ]

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit602.thread: ; preds = %bb.ay
  %i.dgx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.21907, <4 x float> zeroinitializer)
  %i.dgy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.11904, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit600

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit602.thread2446: ; preds = %bb.ay
  %i.dgz = load ptr, ptr %10, align 8, !tbaa !34
  %i.dha = load float, ptr %i.dgz, align 4, !tbaa !53
  %i.dhb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.21907)
  %i.dhc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.21907)
  %i.dhd = insertelement <4 x float> poison, float %i.dha, i64 0
  %i.dhe = shufflevector <4 x float> %i.dhd, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dhf = fmul fast <4 x float> %i.dhe, %i.dhc
  %i.dhg = fadd fast <4 x float> %i.dhf, %i.dhb
  %i.dhh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.11904)
  %i.dhi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.11904)
  %i.dhj = fmul fast <4 x float> %i.dhe, %i.dhi
  %i.dhk = fadd fast <4 x float> %i.dhj, %i.dhh
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit600

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit602.thread2449: ; preds = %bb.ay
  %i.dhl = load ptr, ptr %10, align 8, !tbaa !34  ; 2 uses
  %i.dhm = load float, ptr %i.dhl, align 4, !tbaa !53
  %i.dhn = insertelement <4 x float> poison, float %i.dhm, i64 0
  %i.dho = shufflevector <4 x float> %i.dhn, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dhp = getelementptr inbounds nuw i8, ptr %i.dhl, i64 4
  %i.dhq = load float, ptr %i.dhp, align 4, !tbaa !53
  %i.dhr = insertelement <4 x float> poison, float %i.dhq, i64 0
  %i.dhs = shufflevector <4 x float> %i.dhr, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dht = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.21907, <4 x float> nofpclass(nan inf) %i.dho)
  %i.dhu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dht, <4 x float> nofpclass(nan inf) %i.dhs)
  %i.dhv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.11904, <4 x float> nofpclass(nan inf) %i.dho)
  %i.dhw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dhv, <4 x float> nofpclass(nan inf) %i.dhs)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit600

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit602.thread2452: ; preds = %bb.ay
  %i.dhx = fneg fast <4 x float> %.21907
  %i.dhy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dhx, <4 x float> splat (float f0x42B0C0A5))
  %i.dhz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dhy, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dia = fmul fast <4 x float> %i.dhz, splat (float f0x3FB8AA3B)
  %i.dib = fadd fast <4 x float> %i.dia, splat (float 5.000000e-01) ; 2 uses
  %i.dic = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dib)
  %i.did = sitofp fast <4 x i32> %i.dic to <4 x float> ; 2 uses
  %i.die = fcmp fast olt <4 x float> %i.dib, %i.did
  %i.dif = select <4 x i1> %i.die, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.dig = fsub fast <4 x float> %i.did, %i.dif   ; 2 uses
  %i.dih = fmul fast <4 x float> %i.dig, splat (float f0x3F317218)
  %i.dii = fsub fast <4 x float> %i.dhz, %i.dih   ; 8 uses
  %i.dij = fmul fast <4 x float> %i.dii, %i.dii
  %i.dik = fmul fast <4 x float> %i.dii, splat (float f0x39506967)
  %i.dil = fadd fast <4 x float> %i.dik, splat (float f0x3AB743CE)
  %i.dim = fmul fast <4 x float> %i.dil, %i.dii
  %i.din = fadd fast <4 x float> %i.dim, splat (float f0x3C088908)
  %i.dio = fmul fast <4 x float> %i.din, %i.dii
  %i.dip = fadd fast <4 x float> %i.dio, splat (float f0x3D2AA9C1)
  %i.diq = fmul fast <4 x float> %i.dip, %i.dii
  %i.dir = fadd fast <4 x float> %i.diq, splat (float f0x3E2AAAAA)
  %i.dis = fmul fast <4 x float> %i.dir, %i.dii
  %i.dit = fadd fast <4 x float> %i.dis, splat (float 5.000000e-01)
  %i.diu = fmul fast <4 x float> %i.dij, %i.dit
  %i.div = fadd fast <4 x float> %i.dii, splat (float 1.000000e+00)
  %i.diw = fadd fast <4 x float> %i.div, %i.diu
  %i.dix = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dig)
  %i.diy = shl <4 x i32> %i.dix, splat (i32 23)
  %i.diz = add <4 x i32> %i.diy, splat (i32 1065353216)
  %i.dja = bitcast <4 x i32> %i.diz to <4 x float>
  %i.djb = fmul fast <4 x float> %i.diw, %i.dja
  %i.djc = fadd fast <4 x float> %i.djb, splat (float 1.000000e+00)
  %i.djd = fdiv fast <4 x float> splat (float 1.000000e+00), %i.djc
  %i.dje = fneg fast <4 x float> %.11904
  %i.djf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dje, <4 x float> splat (float f0x42B0C0A5))
  %i.djg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.djf, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.djh = fmul fast <4 x float> %i.djg, splat (float f0x3FB8AA3B)
  %i.dji = fadd fast <4 x float> %i.djh, splat (float 5.000000e-01) ; 2 uses
  %i.djj = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dji)
  %i.djk = sitofp fast <4 x i32> %i.djj to <4 x float> ; 2 uses
  %i.djl = fcmp fast olt <4 x float> %i.dji, %i.djk
  %i.djm = select <4 x i1> %i.djl, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.djn = fsub fast <4 x float> %i.djk, %i.djm   ; 2 uses
  %i.djo = fmul fast <4 x float> %i.djn, splat (float f0x3F317218)
  %i.djp = fsub fast <4 x float> %i.djg, %i.djo   ; 8 uses
  %i.djq = fmul fast <4 x float> %i.djp, %i.djp
  %i.djr = fmul fast <4 x float> %i.djp, splat (float f0x39506967)
  %i.djs = fadd fast <4 x float> %i.djr, splat (float f0x3AB743CE)
  %i.djt = fmul fast <4 x float> %i.djs, %i.djp
  %i.dju = fadd fast <4 x float> %i.djt, splat (float f0x3C088908)
  %i.djv = fmul fast <4 x float> %i.dju, %i.djp
  %i.djw = fadd fast <4 x float> %i.djv, splat (float f0x3D2AA9C1)
  %i.djx = fmul fast <4 x float> %i.djw, %i.djp
  %i.djy = fadd fast <4 x float> %i.djx, splat (float f0x3E2AAAAA)
  %i.djz = fmul fast <4 x float> %i.djy, %i.djp
  %i.dka = fadd fast <4 x float> %i.djz, splat (float 5.000000e-01)
  %i.dkb = fmul fast <4 x float> %i.djq, %i.dka
  %i.dkc = fadd fast <4 x float> %i.djp, splat (float 1.000000e+00)
  %i.dkd = fadd fast <4 x float> %i.dkc, %i.dkb
  %i.dke = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.djn)
  %i.dkf = shl <4 x i32> %i.dke, splat (i32 23)
  %i.dkg = add <4 x i32> %i.dkf, splat (i32 1065353216)
  %i.dkh = bitcast <4 x i32> %i.dkg to <4 x float>
  %i.dki = fmul fast <4 x float> %i.dkd, %i.dkh
  %i.dkj = fadd fast <4 x float> %i.dki, splat (float 1.000000e+00)
  %i.dkk = fdiv fast <4 x float> splat (float 1.000000e+00), %i.dkj
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit600

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit602.thread2455: ; preds = %bb.ay
  %i.dkl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %.21907, <4 x float> splat (float f0x42B0C0A5))
  %i.dkm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dkl, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dkn = fmul fast <4 x float> %i.dkm, splat (float f0x3FB8AA3B)
  %i.dko = fadd fast <4 x float> %i.dkn, splat (float 5.000000e-01) ; 2 uses
  %i.dkp = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dko)
  %i.dkq = sitofp fast <4 x i32> %i.dkp to <4 x float> ; 2 uses
  %i.dkr = fcmp fast olt <4 x float> %i.dko, %i.dkq
  %i.dks = select <4 x i1> %i.dkr, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.dkt = fsub fast <4 x float> %i.dkq, %i.dks   ; 2 uses
  %i.dku = fmul fast <4 x float> %i.dkt, splat (float f0x3F317218)
  %i.dkv = fsub fast <4 x float> %i.dkm, %i.dku   ; 8 uses
  %i.dkw = fmul fast <4 x float> %i.dkv, %i.dkv
  %i.dkx = fmul fast <4 x float> %i.dkv, splat (float f0x39506967)
  %i.dky = fadd fast <4 x float> %i.dkx, splat (float f0x3AB743CE)
  %i.dkz = fmul fast <4 x float> %i.dky, %i.dkv
  %i.dla = fadd fast <4 x float> %i.dkz, splat (float f0x3C088908)
  %i.dlb = fmul fast <4 x float> %i.dla, %i.dkv
  %i.dlc = fadd fast <4 x float> %i.dlb, splat (float f0x3D2AA9C1)
  %i.dld = fmul fast <4 x float> %i.dlc, %i.dkv
  %i.dle = fadd fast <4 x float> %i.dld, splat (float f0x3E2AAAAA)
  %i.dlf = fmul fast <4 x float> %i.dle, %i.dkv
  %i.dlg = fadd fast <4 x float> %i.dlf, splat (float 5.000000e-01)
  %i.dlh = fmul fast <4 x float> %i.dkw, %i.dlg
  %i.dli = fadd fast <4 x float> %i.dkv, splat (float 1.000000e+00)
  %i.dlj = fadd fast <4 x float> %i.dli, %i.dlh
  %i.dlk = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dkt)
  %i.dll = shl <4 x i32> %i.dlk, splat (i32 23)
  %i.dlm = add <4 x i32> %i.dll, splat (i32 1065353216)
  %i.dln = bitcast <4 x i32> %i.dlm to <4 x float>
  %i.dlo = fmul fast <4 x float> %i.dlj, %i.dln
  %i.dlp = fadd fast <4 x float> %i.dlo, splat (float 1.000000e+00) ; 2 uses
  %i.dlq = fcmp fast ole <4 x float> %i.dlp, zeroinitializer
  %i.dlr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dlp, <4 x float> splat (float f0x00800000))
  %i.dls = bitcast <4 x float> %i.dlr to <4 x i32> ; 2 uses
  %i.dlt = lshr <4 x i32> %i.dls, splat (i32 23)
  %i.dlu = and <4 x i32> %i.dls, splat (i32 -2139095041)
  %i.dlv = or disjoint <4 x i32> %i.dlu, splat (i32 1056964608)
  %i.dlw = bitcast <4 x i32> %i.dlv to <4 x float> ; 3 uses
  %i.dlx = add nsw <4 x i32> %i.dlt, splat (i32 -127)
  %i.dly = sitofp fast <4 x i32> %i.dlx to <4 x float> ; 2 uses
  %i.dlz = fadd fast <4 x float> %i.dly, splat (float 1.000000e+00)
  %i.dma = fcmp fast olt <4 x float> %i.dlw, splat (float f0x3F3504F3) ; 2 uses
  %i.dmb = select <4 x i1> %i.dma, <4 x float> %i.dlw, <4 x float> zeroinitializer
  %i.dmc = fadd fast <4 x float> %i.dlw, splat (float -1.000000e+00)
  %i.dmd = select fast <4 x i1> %i.dma, <4 x float> %i.dly, <4 x float> %i.dlz
  %i.dme = fadd fast <4 x float> %i.dmc, %i.dmb   ; 12 uses
  %i.dmf = fmul fast <4 x float> %i.dme, %i.dme
  %i.dmg = fmul fast <4 x float> %i.dme, splat (float f0x3D9021BB)
  %i.dmh = fadd fast <4 x float> %i.dmg, splat (float f0xBDEBD1B8)
  %i.dmi = fmul fast <4 x float> %i.dmh, %i.dme
  %i.dmj = fadd fast <4 x float> %i.dmi, splat (float f0x3DEF251A)
  %i.dmk = fmul fast <4 x float> %i.dmj, %i.dme
  %i.dml = fadd fast <4 x float> %i.dmk, splat (float f0xBDFE5D4F)
  %i.dmm = fmul fast <4 x float> %i.dml, %i.dme
  %i.dmn = fadd fast <4 x float> %i.dmm, splat (float f0x3E11E9BF)
  %i.dmo = fmul fast <4 x float> %i.dmn, %i.dme
  %i.dmp = fadd fast <4 x float> %i.dmo, splat (float f0xBE2AAE50)
  %i.dmq = fmul fast <4 x float> %i.dmp, %i.dme
  %i.dmr = fadd fast <4 x float> %i.dmq, splat (float f0x3E4CCEAC)
  %i.dms = fmul fast <4 x float> %i.dmr, %i.dme
  %i.dmt = fadd fast <4 x float> %i.dms, splat (float f0xBE7FFFFC)
  %i.dmu = fmul fast <4 x float> %i.dmt, %i.dme
  %i.dmv = fadd fast <4 x float> %i.dmu, splat (float f0x3EAAAAAA)
  %i.dmw = fmul fast <4 x float> %i.dmv, %i.dme
  %reass.mul2500 = fmul fast <4 x float> %i.dmd, splat (float f0x3F317218)
  %reass.add2504 = fadd fast <4 x float> %i.dmw, splat (float -5.000000e-01)
  %reass.mul2505 = fmul fast <4 x float> %i.dmf, %reass.add2504
  %i.dmx = fadd fast <4 x float> %reass.mul2500, %i.dme
  %i.dmy = fadd fast <4 x float> %i.dmx, %reass.mul2505
  %.neg2481 = fmul fast <4 x float> %i.dmy, splat (float -2.000000e+00)
  %i.dmz = select fast <4 x i1> %i.dlq, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg2481
  %i.dna = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dmz, <4 x float> splat (float f0x42B0C0A5))
  %i.dnb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dna, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dnc = fmul fast <4 x float> %i.dnb, splat (float f0x3FB8AA3B)
  %i.dnd = fadd fast <4 x float> %i.dnc, splat (float 5.000000e-01) ; 2 uses
  %i.dne = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dnd)
  %i.dnf = sitofp fast <4 x i32> %i.dne to <4 x float> ; 2 uses
  %i.dng = fcmp fast olt <4 x float> %i.dnd, %i.dnf
  %i.dnh = select <4 x i1> %i.dng, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.dni = fsub fast <4 x float> %i.dnf, %i.dnh   ; 2 uses
  %i.dnj = fmul fast <4 x float> %i.dni, splat (float f0x3F317218)
  %i.dnk = fsub fast <4 x float> %i.dnb, %i.dnj   ; 8 uses
  %i.dnl = fmul fast <4 x float> %i.dnk, %i.dnk
  %i.dnm = fmul fast <4 x float> %i.dnk, splat (float f0x39506967)
  %i.dnn = fadd fast <4 x float> %i.dnm, splat (float f0x3AB743CE)
end_hunk_0

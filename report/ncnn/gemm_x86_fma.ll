Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_fma?download=true
inline.NumInlined: 233
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 134
loop-unroll.NumUnrolled: 138
begin_hunk_0_@_ZN4ncnnL29unpack_output_tile_dequantizeERKNS_3MatES2_RS0_iiiiiS2_ffi:bb.a
  store <2 x float> %i.abh, ptr %i.abg, align 4, !tbaa !68
  %i.abi = getelementptr inbounds nuw i8, ptr %.919313718.i, i64 %.idx2121.i
  %i.abj = shufflevector <8 x float> %.53334.i, <8 x float> %.53340.i, <2 x i32> <i32 7, i32 15>
  store <2 x float> %i.abj, ptr %i.abi, align 4, !tbaa !68
  %i.abk = getelementptr inbounds nuw i8, ptr %.919313718.i, i64 8
  br label %.thread3435.i

.thread3435.i:                                    ; preds = %bb.bz, %bb.by, %.thread3432.i, %bb.bx, %bb.bw
  %.121934.i = phi ptr [ %i.aao, %bb.bw ], [ %i.abk, %bb.bz ], [ %.919313718.i, %bb.bx ], [ %i.aaq, %.thread3432.i ], [ %i.aau, %bb.by ] ; 2 uses
  %i.abl = add nuw nsw i32 %.219413717.i, 2       ; 3 uses
  %i.abm = or disjoint i32 %i.abl, 1
  %i.abn = icmp slt i32 %i.abm, %7
  br i1 %i.abn, label %.lr.ph3722.i, label %.preheader3689.i, !llvm.loop !731

.lr.ph3735.i:                                     ; preds = %.preheader3689.i, %.thread3451.i
  %.163734.i = phi ptr [ %.19.i, %.thread3451.i ], [ %.12.lcssa.i, %.preheader3689.i ] ; 18 uses
  %.418973733.i = phi ptr [ %i.abs, %.thread3451.i ], [ %.31896.lcssa.i, %.preheader3689.i ] ; 2 uses
  %.419213732.i = phi ptr [ %i.abt, %.thread3451.i ], [ %.31920.lcssa.i, %.preheader3689.i ] ; 2 uses
  %.1319353731.i = phi ptr [ %.161938.i, %.thread3451.i ], [ %.91931.lcssa.i, %.preheader3689.i ] ; 17 uses
  %.319423730.i = phi i32 [ %i.adw, %.thread3451.i ], [ %.21941.lcssa.i, %.preheader3689.i ]
  %.1530583729.i = phi <8 x float> [ %.183061.i, %.thread3451.i ], [ %.113054.lcssa.i, %.preheader3689.i ] ; 6 uses
  %i.abo = load <4 x i32>, ptr %.418973733.i, align 16, !tbaa !116
  %i.abp = load <4 x i32>, ptr %.419213732.i, align 16, !tbaa !116
  %i.abq = shufflevector <4 x i32> %i.abo, <4 x i32> %i.abp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.abr = sitofp fast <8 x i32> %i.abq to <8 x float>
  %i.abs = getelementptr inbounds nuw i8, ptr %.418973733.i, i64 16
  %i.abt = getelementptr inbounds nuw i8, ptr %.419213732.i, i64 16 ; 2 uses
  %i.abu = fmul fast <8 x float> %i.ct, %i.abr    ; 6 uses
  %.not2063.i = icmp eq ptr %.163734.i, null
  br i1 %.not2063.i, label %.thread3444.i, label %bb.ca

bb.ca:                                            ; preds = %.lr.ph3735.i
  br i1 %i.ah, label %.thread3437.i, label %bb.cb

.thread3437.i:                                    ; preds = %bb.ca
  %i.abv = fadd fast <8 x float> %i.abu, %.1530583729.i
  br label %.thread3444.i

bb.cb:                                            ; preds = %bb.ca
  br i1 %or.cond.i, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.abw = fadd fast <8 x float> %i.abu, %.1530583729.i
  br label %.thread3444.i

bb.cd:                                            ; preds = %bb.cb
  switch i32 %3, label %.thread3444.i [
    i32 3, label %bb.ce
    i32 4, label %bb.cj
  ]

bb.ce:                                            ; preds = %bb.cd
  switch i32 %i.w, label %bb.ch [
    i32 8, label %bb.cf
    i32 4, label %bb.cg
  ]

bb.cf:                                            ; preds = %bb.ce
  %i.abx = load <8 x float>, ptr %.163734.i, align 1, !tbaa !116
  br label %bb.ci

bb.cg:                                            ; preds = %bb.ce
  %i.aby = load <4 x float>, ptr %.163734.i, align 1, !tbaa !116
  %i.abz = getelementptr inbounds nuw i8, ptr %.163734.i, i64 %.idx2107.i
  %i.aca = load <4 x float>, ptr %i.abz, align 1, !tbaa !116
  %i.acb = shufflevector <4 x float> %i.aby, <4 x float> %i.aca, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %bb.ci

bb.ch:                                            ; preds = %bb.ce
  %i.acc = load float, ptr %.163734.i, align 4, !tbaa !68
  %i.acd = getelementptr inbounds nuw [4 x i8], ptr %.163734.i, i64 %i.u
  %i.ace = load float, ptr %i.acd, align 4, !tbaa !68
  %i.acf = getelementptr inbounds nuw i8, ptr %.163734.i, i64 %.idx2101.i
  %i.acg = load float, ptr %i.acf, align 4, !tbaa !68
  %i.ach = getelementptr inbounds nuw i8, ptr %.163734.i, i64 %.idx2102.i
  %i.aci = load float, ptr %i.ach, align 4, !tbaa !68
  %i.acj = getelementptr inbounds nuw i8, ptr %.163734.i, i64 %.idx2107.i
  %i.ack = load float, ptr %i.acj, align 4, !tbaa !68
  %i.acl = getelementptr inbounds nuw i8, ptr %.163734.i, i64 %.idx2104.i
  %i.acm = load float, ptr %i.acl, align 4, !tbaa !68
  %i.acn = getelementptr inbounds nuw i8, ptr %.163734.i, i64 %.idx2105.i
  %i.aco = load float, ptr %i.acn, align 4, !tbaa !68
  %i.acp = getelementptr inbounds nuw i8, ptr %.163734.i, i64 %.idx2106.i
  %i.acq = load float, ptr %i.acp, align 4, !tbaa !68
  %i.acr = insertelement <8 x float> poison, float %i.acc, i64 0
  %i.acs = insertelement <8 x float> %i.acr, float %i.ace, i64 1
  %i.act = insertelement <8 x float> %i.acs, float %i.acg, i64 2
  %i.acu = insertelement <8 x float> %i.act, float %i.aci, i64 3
  %i.acv = insertelement <8 x float> %i.acu, float %i.ack, i64 4
  %i.acw = insertelement <8 x float> %i.acv, float %i.acm, i64 5
  %i.acx = insertelement <8 x float> %i.acw, float %i.aco, i64 6
  %i.acy = insertelement <8 x float> %i.acx, float %i.acq, i64 7
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg, %bb.cf
  %.sink4005.i = phi i64 [ 16, %bb.cg ], [ 4, %bb.ch ], [ 32, %bb.cf ]
  %.163059.i = phi nsz <8 x float> [ %i.acb, %bb.cg ], [ %i.acy, %bb.ch ], [ %i.abx, %bb.cf ] ; 2 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %.163734.i, i64 %.sink4005.i
  %i.ada = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.163059.i, <8 x float> nofpclass(nan inf) %i.am, <8 x float> nofpclass(nan inf) %i.abu)
  br label %.thread3444.i

bb.cj:                                            ; preds = %bb.cd
  %i.adb = load float, ptr %.163734.i, align 4, !tbaa !68
  %i.adc = fmul fast float %i.adb, %10
  %i.add = insertelement <8 x float> poison, float %i.adc, i64 0
  %i.ade = shufflevector <8 x float> %i.add, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.adf = fadd fast <8 x float> %i.ade, %i.abu
  %i.adg = getelementptr inbounds nuw i8, ptr %.163734.i, i64 4
  br label %.thread3444.i

.thread3444.i:                                    ; preds = %bb.cj, %bb.ci, %bb.cd, %bb.cc, %.thread3437.i, %.lr.ph3735.i
  %.33345.i = phi nsz <8 x float> [ %i.abu, %.lr.ph3735.i ], [ %i.adf, %bb.cj ], [ %i.abu, %bb.cd ], [ %i.ada, %bb.ci ], [ %i.abv, %.thread3437.i ], [ %i.abw, %bb.cc ]
  %.183061.i = phi nsz <8 x float> [ %.1530583729.i, %.lr.ph3735.i ], [ %i.ade, %bb.cj ], [ %.1530583729.i, %bb.cd ], [ %.163059.i, %bb.ci ], [ %.1530583729.i, %.thread3437.i ], [ %.1530583729.i, %bb.cc ]
  %.19.i = phi ptr [ null, %.lr.ph3735.i ], [ %i.adg, %bb.cj ], [ %.163734.i, %bb.cd ], [ %i.acz, %bb.ci ], [ %.163734.i, %.thread3437.i ], [ %.163734.i, %bb.cc ] ; 2 uses
  %i.adh = fmul fast <8 x float> %.33345.i, %i.ar ; 12 uses
  br i1 %.not2061.i, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %.thread3444.i
  store <8 x float> %i.adh, ptr %.1319353731.i, align 1, !tbaa !116
  %i.adi = getelementptr inbounds nuw [4 x i8], ptr %.1319353731.i, i64 %i.l
  br label %.thread3451.i

bb.cl:                                            ; preds = %.thread3444.i
  switch i32 %i.c, label %.thread3451.i [
    i32 8, label %.thread3448.i
    i32 4, label %bb.cm
    i32 1, label %bb.cn
  ]

.thread3448.i:                                    ; preds = %bb.cl
  store <8 x float> %i.adh, ptr %.1319353731.i, align 1, !tbaa !116
  %i.adj = getelementptr inbounds nuw i8, ptr %.1319353731.i, i64 32
  br label %.thread3451.i

bb.cm:                                            ; preds = %bb.cl
  %i.adk = shufflevector <8 x float> %i.adh, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.adk, ptr %.1319353731.i, align 16, !tbaa !116
  %i.adl = getelementptr inbounds nuw i8, ptr %.1319353731.i, i64 %.idx2118.i
  %i.adm = shufflevector <8 x float> %i.adh, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x float> %i.adm, ptr %i.adl, align 16, !tbaa !116
  %i.adn = getelementptr inbounds nuw i8, ptr %.1319353731.i, i64 16
  br label %.thread3451.i

bb.cn:                                            ; preds = %bb.cl
  %.sroa.02635.0.vec.extract.i = extractelement <8 x float> %i.adh, i64 0
  store float %.sroa.02635.0.vec.extract.i, ptr %.1319353731.i, align 4, !tbaa !68
  %.sroa.02635.4.vec.extract.i = extractelement <8 x float> %i.adh, i64 1
  %i.ado = getelementptr inbounds nuw [4 x i8], ptr %.1319353731.i, i64 %i.l
  store float %.sroa.02635.4.vec.extract.i, ptr %i.ado, align 4, !tbaa !68
  %.sroa.02635.8.vec.extract.i = extractelement <8 x float> %i.adh, i64 2
  %i.adp = getelementptr inbounds nuw i8, ptr %.1319353731.i, i64 %.idx2116.i
  store float %.sroa.02635.8.vec.extract.i, ptr %i.adp, align 4, !tbaa !68
  %.sroa.02635.12.vec.extract.i = extractelement <8 x float> %i.adh, i64 3
  %i.adq = getelementptr inbounds nuw i8, ptr %.1319353731.i, i64 %.idx2117.i
  store float %.sroa.02635.12.vec.extract.i, ptr %i.adq, align 4, !tbaa !68
  %.sroa.02635.16.vec.extract.i = extractelement <8 x float> %i.adh, i64 4
  %i.adr = getelementptr inbounds nuw i8, ptr %.1319353731.i, i64 %.idx2118.i
  store float %.sroa.02635.16.vec.extract.i, ptr %i.adr, align 4, !tbaa !68
  %.sroa.02635.20.vec.extract.i = extractelement <8 x float> %i.adh, i64 5
  %i.ads = getelementptr inbounds nuw i8, ptr %.1319353731.i, i64 %.idx2119.i
  store float %.sroa.02635.20.vec.extract.i, ptr %i.ads, align 4, !tbaa !68
  %.sroa.02635.24.vec.extract.i = extractelement <8 x float> %i.adh, i64 6
  %i.adt = getelementptr inbounds nuw i8, ptr %.1319353731.i, i64 %.idx2120.i
  store float %.sroa.02635.24.vec.extract.i, ptr %i.adt, align 4, !tbaa !68
  %.sroa.02635.28.vec.extract.i = extractelement <8 x float> %i.adh, i64 7
  %i.adu = getelementptr inbounds nuw i8, ptr %.1319353731.i, i64 %.idx2121.i
  store float %.sroa.02635.28.vec.extract.i, ptr %i.adu, align 4, !tbaa !68
  %i.adv = getelementptr inbounds nuw i8, ptr %.1319353731.i, i64 4
  br label %.thread3451.i

.thread3451.i:                                    ; preds = %bb.cn, %bb.cm, %.thread3448.i, %bb.cl, %bb.ck
  %.161938.i = phi ptr [ %i.adi, %bb.ck ], [ %i.adv, %bb.cn ], [ %.1319353731.i, %bb.cl ], [ %i.adj, %.thread3448.i ], [ %i.adn, %bb.cm ]
  %i.adw = add nuw nsw i32 %.319423730.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.adw, %7
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph3735.i, !llvm.loop !732

._crit_edge.i:                                    ; preds = %.thread3451.i, %.preheader3689.i
  %.41921.lcssa.i = phi ptr [ %.31920.lcssa.i, %.preheader3689.i ], [ %i.abt, %.thread3451.i ] ; 2 uses
  %.16.lcssa.i = phi ptr [ %.12.lcssa.i, %.preheader3689.i ], [ %.19.i, %.thread3451.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 3 uses
  %i.adx = or disjoint i64 %indvars.iv.next.i, 7
  %i.ady = icmp samesign ult i64 %i.adx, %i.at
  br i1 %i.ady, label %bb.j, label %.preheader3688.loopexit.i, !llvm.loop !733

.preheader3684.loopexit.i:                        ; preds = %._crit_edge3787.i
  %i.adz = trunc nuw nsw i64 %indvars.iv.next3924.i to i32
  br label %.preheader3684.i

.preheader3684.i:                                 ; preds = %.preheader3684.loopexit.i, %.preheader3688.i
  %.11914.lcssa.i = phi i32 [ %.01913.lcssa.i, %.preheader3688.i ], [ %i.adz, %.preheader3684.loopexit.i ] ; 3 uses
  %.51898.lcssa.i = phi ptr [ %.01893.lcssa.i, %.preheader3688.i ], [ %.91902.lcssa.i, %.preheader3684.loopexit.i ] ; 2 uses
  %.20.lcssa.i = phi ptr [ %.01884.lcssa.i, %.preheader3688.i ], [ %.36.lcssa.i, %.preheader3684.loopexit.i ] ; 2 uses
  %i.aea = or disjoint i32 %.11914.lcssa.i, 1
  %i.aeb = icmp slt i32 %i.aea, %5
  br i1 %i.aeb, label %.lr.ph3842.i, label %.preheader3680.i

.lr.ph3842.i:                                     ; preds = %.preheader3684.i
  %.not2019.i = icmp eq i32 %11, 0                ; 6 uses
  %i.aec = sext i32 %6 to i64                     ; 4 uses
  %i.aed = mul i64 %i.l, %i.aec
  %12 = icmp eq i32 %3, 0                         ; 5 uses
  %13 = add i32 %3, -1
  %or.cond21.i = icmp ult i32 %13, 2              ; 6 uses
  %i.aee = sext i32 %4 to i64                     ; 3 uses
  %i.aef = icmp sgt i32 %7, 7
  %i.aeg = insertelement <4 x float> poison, float %10, i64 0
  %i.aeh = shufflevector <4 x float> %i.aeg, <4 x float> poison, <4 x i32> zeroinitializer ; 10 uses
  %i.aei = fcmp fast oeq float %10, 1.000000e+00  ; 3 uses
  %i.aej = fcmp fast une float %9, 1.000000e+00   ; 2 uses
  %i.aek = insertelement <4 x float> poison, float %9, i64 0
  %i.ael = shufflevector <4 x float> %i.aek, <4 x float> poison, <4 x i32> zeroinitializer ; 5 uses
  %.idx3656.i = shl i64 %i.l, 3                   ; 3 uses
  %.idx3657.i = mul i64 %i.l, 12                  ; 2 uses
  %.idx3658.i = shl i64 %i.l, 4                   ; 5 uses
  %.idx3659.i = mul i64 %i.l, 20
  %.idx3660.i = mul i64 %i.l, 24
  %.idx3661.i = mul i64 %i.l, 28
  %.idx2028.i = shl i64 %i.l, 5                   ; 4 uses
  %i.aem = and i32 %7, -8
  %i.aen = zext nneg i32 %.11914.lcssa.i to i64
  %i.aeo = sext i32 %5 to i64
  %i.aep = sext i32 %i.c to i64
  %i.aeq = select ninf nsz i1 %i.aej, <4 x float> %i.ael, <4 x float> splat (float 1.000000e+00) ; 2 uses
  %invariant.op3996.i = add nsw i64 %i.aeo, -1
  %..idx3656.i = select i1 %.not2019.i, i64 8, i64 %.idx3656.i
  %14 = insertelement <2 x i1> poison, i1 %12, i64 0
  %15 = insertelement <2 x i1> %14, i1 %or.cond21.i, i64 1
  %16 = insertelement <2 x float> poison, float %10, i64 0
  %17 = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.aer = insertelement <2 x float> poison, float %9, i64 0
  %i.aes = shufflevector <2 x float> %i.aer, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aet = insertelement <2 x i1> poison, i1 %.not2019.i, i64 0
  %i.aeu = shufflevector <2 x i1> %i.aet, <2 x i1> poison, <2 x i32> zeroinitializer
  br label %bb.fv

bb.co:                                            ; preds = %._crit_edge3787.i, %.lr.ph3793.i
  %indvars.iv3923.i = phi i64 [ %i.by, %.lr.ph3793.i ], [ %indvars.iv.next3924.i, %._crit_edge3787.i ] ; 6 uses
  %.203792.i = phi ptr [ %.01884.lcssa.i, %.lr.ph3793.i ], [ %.36.lcssa.i, %._crit_edge3787.i ] ; 4 uses
  %.518983791.i = phi ptr [ %.01893.lcssa.i, %.lr.ph3793.i ], [ %.91902.lcssa.i, %._crit_edge3787.i ] ; 2 uses
  %i.aev = load ptr, ptr %2, align 8, !tbaa !18   ; 2 uses
  br i1 %.not2029.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.aew = getelementptr inbounds nuw [4 x i8], ptr %i.aev, i64 %i.bg
  %i.aex = add nsw i64 %indvars.iv3923.i, %i.bj
  %i.aey = mul nsw i64 %i.aex, %i.ca
  %i.aez = getelementptr inbounds [4 x i8], ptr %i.aew, i64 %i.aey
  br label %bb.cr

bb.cq:                                            ; preds = %bb.co
  %i.afa = add nsw i64 %indvars.iv3923.i, %i.bj
  %i.afb = mul i64 %i.afa, %i.l
  %i.afc = getelementptr inbounds nuw [4 x i8], ptr %i.aev, i64 %i.afb
  %i.afd = getelementptr inbounds [4 x i8], ptr %i.afc, i64 %i.bi
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.01961.i = phi ptr [ %i.aez, %bb.cp ], [ %i.afd, %bb.cq ] ; 2 uses
  %i.afe = load ptr, ptr %8, align 8, !tbaa !18
  %i.aff = getelementptr inbounds [4 x i8], ptr %i.afe, i64 %i.bj
  %i.afg = getelementptr inbounds nuw [4 x i8], ptr %i.aff, i64 %indvars.iv3923.i
  %i.afh = load <4 x float>, ptr %i.afg, align 16, !tbaa !116 ; 15 uses
  %.not2030.i = icmp eq ptr %.203792.i, null
  br i1 %.not2030.i, label %.thread3462.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  br i1 %i.bk, label %.thread3453.i, label %bb.ct

.thread3453.i:                                    ; preds = %bb.cs
  %i.afi = load float, ptr %.203792.i, align 4, !tbaa !68
  %i.afj = fmul fast float %i.afi, %10
  %i.afk = insertelement <4 x float> poison, float %i.afj, i64 0
  %i.afl = shufflevector <4 x float> %i.afk, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.thread3462.i

bb.ct:                                            ; preds = %bb.cs
  br i1 %or.cond11.i, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.afm = load ptr, ptr %1, align 8, !tbaa !18
  %i.afn = getelementptr inbounds [4 x i8], ptr %i.afm, i64 %i.bj
  %i.afo = getelementptr inbounds nuw [4 x i8], ptr %i.afn, i64 %indvars.iv3923.i ; 2 uses
  %i.afp = load <4 x float>, ptr %i.afo, align 1, !tbaa !116
  %i.afq = fmul fast <4 x float> %i.afp, %i.bp
  br label %.thread3462.i

bb.cv:                                            ; preds = %bb.ct
  switch i32 %3, label %.thread3462.i [
    i32 3, label %bb.cw
    i32 4, label %bb.cx
  ]

bb.cw:                                            ; preds = %bb.cv
  %i.afr = load ptr, ptr %1, align 8, !tbaa !18
  %i.afs = add nsw i64 %indvars.iv3923.i, %i.bj
  %i.aft = mul i64 %i.afs, %i.u
  %i.afu = getelementptr inbounds nuw [4 x i8], ptr %i.afr, i64 %i.aft
  %i.afv = getelementptr inbounds [4 x i8], ptr %i.afu, i64 %i.bn
  br label %.thread3462.i

bb.cx:                                            ; preds = %bb.cv
  %i.afw = load ptr, ptr %1, align 8, !tbaa !18
  %i.afx = getelementptr inbounds [4 x i8], ptr %i.afw, i64 %i.bf
  br label %.thread3462.i

.thread3462.i:                                    ; preds = %bb.cx, %bb.cw, %bb.cv, %bb.cu, %.thread3453.i, %bb.cr
  %.23311.i = phi nsz <4 x float> [ zeroinitializer, %bb.cr ], [ zeroinitializer, %bb.cx ], [ zeroinitializer, %bb.cv ], [ zeroinitializer, %bb.cw ], [ %i.afl, %.thread3453.i ], [ %i.afq, %bb.cu ] ; 2 uses
  %.23.i = phi ptr [ null, %bb.cr ], [ %i.afx, %bb.cx ], [ %.203792.i, %bb.cv ], [ %i.afv, %bb.cw ], [ %.203792.i, %.thread3453.i ], [ %i.afo, %bb.cu ] ; 2 uses
  br i1 %i.bq, label %.lr.ph3753.i, label %.preheader3687.i

.preheader3687.i:                                 ; preds = %bb.dy, %.thread3462.i
  %.33312.lcssa.i = phi <4 x float> [ %.23311.i, %.thread3462.i ], [ %.73316.i, %bb.dy ] ; 2 uses
  %.01974.lcssa.i = phi i32 [ 0, %.thread3462.i ], [ %i.bx, %bb.dy ] ; 3 uses
  %.11962.lcssa.i = phi ptr [ %.01961.i, %.thread3462.i ], [ %.31964.i, %bb.dy ] ; 2 uses
  %.61899.lcssa.i = phi ptr [ %.518983791.i, %.thread3462.i ], [ %i.aps, %bb.dy ] ; 2 uses
  %.24.lcssa.i = phi ptr [ %.23.i, %.thread3462.i ], [ %.27.i, %bb.dy ] ; 2 uses
  %i.afy = or disjoint i32 %.01974.lcssa.i, 3
  %i.afz = icmp slt i32 %i.afy, %7
  br i1 %i.afz, label %.lr.ph3764.i, label %.preheader3686.i

.lr.ph3753.i:                                     ; preds = %.thread3462.i, %bb.dy
  %.243752.i = phi ptr [ %.27.i, %bb.dy ], [ %.23.i, %.thread3462.i ] ; 23 uses
  %.618993751.i = phi ptr [ %i.aps, %bb.dy ], [ %.518983791.i, %.thread3462.i ] ; 9 uses
  %.119623750.i = phi ptr [ %.31964.i, %bb.dy ], [ %.01961.i, %.thread3462.i ] ; 38 uses
  %.019743749.i = phi i32 [ %i.apt, %bb.dy ], [ 0, %.thread3462.i ]
  %.333123748.i = phi <4 x float> [ %.73316.i, %bb.dy ], [ %.23311.i, %.thread3462.i ] ; 20 uses
  %i.aga = load <4 x i32>, ptr %.618993751.i, align 16, !tbaa !116
  %i.agb = sitofp fast <4 x i32> %i.aga to <4 x float> ; 2 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %.618993751.i, i64 16
  %i.agd = load <4 x i32>, ptr %i.agc, align 16, !tbaa !116
  %i.age = sitofp fast <4 x i32> %i.agd to <4 x float> ; 2 uses
  %i.agf = getelementptr inbounds nuw i8, ptr %.618993751.i, i64 32
  %i.agg = load <4 x i32>, ptr %i.agf, align 16, !tbaa !116
  %i.agh = sitofp fast <4 x i32> %i.agg to <4 x float> ; 2 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %.618993751.i, i64 48
  %i.agj = load <4 x i32>, ptr %i.agi, align 16, !tbaa !116
  %i.agk = sitofp fast <4 x i32> %i.agj to <4 x float> ; 2 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %.618993751.i, i64 64
  %i.agm = load <4 x i32>, ptr %i.agl, align 16, !tbaa !116
  %i.agn = getelementptr inbounds nuw i8, ptr %.618993751.i, i64 80
  %i.ago = load <4 x i32>, ptr %i.agn, align 16, !tbaa !116
  %i.agp = getelementptr inbounds nuw i8, ptr %.618993751.i, i64 96
  %i.agq = load <4 x i32>, ptr %i.agp, align 16, !tbaa !116
  %i.agr = getelementptr inbounds nuw i8, ptr %.618993751.i, i64 112
  %i.ags = load <4 x i32>, ptr %i.agr, align 16, !tbaa !116
  %i.agt = sitofp <4 x i32> %i.agm to <4 x float>
  %i.agu = shufflevector <4 x float> %i.agt, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.agv = sitofp <4 x i32> %i.ago to <4 x float>
  %i.agw = shufflevector <4 x float> %i.agv, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.agx = sitofp <4 x i32> %i.agq to <4 x float>
  %i.agy = shufflevector <4 x float> %i.agx, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.agz = sitofp <4 x i32> %i.ags to <4 x float>
  %i.aha = shufflevector <4 x float> %i.agz, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.ahb = shufflevector <4 x float> %i.agb, <4 x float> %i.agy, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ahc = shufflevector <4 x float> %i.agb, <4 x float> %i.agy, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ahd = shufflevector <4 x float> %i.age, <4 x float> %i.aha, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ahe = shufflevector <4 x float> %i.age, <4 x float> %i.aha, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ahf = shufflevector <4 x float> %i.agh, <4 x float> %i.agu, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ahg = shufflevector <4 x float> %i.agh, <4 x float> %i.agu, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ahh = shufflevector <4 x float> %i.agk, <4 x float> %i.agw, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ahi = shufflevector <4 x float> %i.agk, <4 x float> %i.agw, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ahj = shufflevector <4 x float> %i.ahb, <4 x float> %i.ahf, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ahk = shufflevector <4 x float> %i.ahb, <4 x float> %i.ahf, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.ahl = shufflevector <4 x float> %i.ahg, <4 x float> %i.ahc, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ahm = shufflevector <4 x float> %i.ahg, <4 x float> %i.ahc, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.ahn = shufflevector <4 x float> %i.ahd, <4 x float> %i.ahh, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aho = shufflevector <4 x float> %i.ahd, <4 x float> %i.ahh, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.ahp = shufflevector <4 x float> %i.ahi, <4 x float> %i.ahe, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ahq = shufflevector <4 x float> %i.ahi, <4 x float> %i.ahe, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.ahr = shufflevector <4 x float> %i.ahk, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.ahs = shufflevector <4 x float> %i.ahm, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.aht = shufflevector <4 x float> %i.aho, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.ahu = shufflevector <4 x float> %i.ahq, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.ahv = fmul fast <4 x float> %i.afh, %i.ahj   ; 7 uses
  %i.ahw = fmul fast <4 x float> %i.ahr, %i.afh   ; 7 uses
  %i.ahx = fmul fast <4 x float> %i.afh, %i.ahl   ; 7 uses
  %i.ahy = fmul fast <4 x float> %i.ahs, %i.afh   ; 7 uses
  %i.ahz = fmul fast <4 x float> %i.afh, %i.ahn   ; 7 uses
  %i.aia = fmul fast <4 x float> %i.aht, %i.afh   ; 7 uses
  %i.aib = fmul fast <4 x float> %i.afh, %i.ahp   ; 7 uses
  %i.aic = fmul fast <4 x float> %i.ahu, %i.afh   ; 7 uses
  %.not2046.i = icmp eq ptr %.243752.i, null
  br i1 %.not2046.i, label %.thread3486.i, label %bb.cy

bb.cy:                                            ; preds = %.lr.ph3753.i
  br i1 %i.bk, label %.thread3465.i, label %bb.cz

.thread3465.i:                                    ; preds = %bb.cy
  %i.aid = fadd fast <4 x float> %i.ahv, %.333123748.i
  %i.aie = fadd fast <4 x float> %i.ahw, %.333123748.i
  %i.aif = fadd fast <4 x float> %i.ahx, %.333123748.i
  %i.aig = fadd fast <4 x float> %i.ahy, %.333123748.i
  %i.aih = fadd fast <4 x float> %i.ahz, %.333123748.i
  %i.aii = fadd fast <4 x float> %i.aia, %.333123748.i
  %i.aij = fadd fast <4 x float> %i.aib, %.333123748.i
  %i.aik = fadd fast <4 x float> %i.aic, %.333123748.i
  br label %.thread3486.i

bb.cz:                                            ; preds = %bb.cy
  br i1 %or.cond11.i, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.ail = fadd fast <4 x float> %i.ahv, %.333123748.i
  %i.aim = fadd fast <4 x float> %i.ahw, %.333123748.i
  %i.ain = fadd fast <4 x float> %i.ahx, %.333123748.i
  %i.aio = fadd fast <4 x float> %i.ahy, %.333123748.i
  %i.aip = fadd fast <4 x float> %i.ahz, %.333123748.i
  %i.aiq = fadd fast <4 x float> %i.aia, %.333123748.i
  %i.air = fadd fast <4 x float> %i.aib, %.333123748.i
  %i.ais = fadd fast <4 x float> %i.aic, %.333123748.i
  br label %.thread3486.i

bb.db:                                            ; preds = %bb.cz
  switch i32 %3, label %.thread3486.i [
    i32 3, label %bb.dc
    i32 4, label %bb.do
  ]

bb.dc:                                            ; preds = %bb.db
  %i.ait = load <4 x float>, ptr %.243752.i, align 1, !tbaa !116 ; 3 uses
  br i1 %i.br, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.aiu = getelementptr inbounds nuw i8, ptr %.243752.i, i64 16
  %i.aiv = load <4 x float>, ptr %i.aiu, align 1, !tbaa !116
  %i.aiw = getelementptr inbounds nuw i8, ptr %.243752.i, i64 32
  %i.aix = load <4 x float>, ptr %i.aiw, align 1, !tbaa !116
  %i.aiy = getelementptr inbounds nuw i8, ptr %.243752.i, i64 48
  %i.aiz = load <4 x float>, ptr %i.aiy, align 1, !tbaa !116
end_hunk_0
begin_hunk_1_@_ZN4ncnnL29unpack_output_tile_dequantizeERKNS_3MatES2_RS0_iiiiiS2_ffi:bb.a
.lr.ph3786.i:                                     ; preds = %.preheader3685.i, %bb.fu
  %.363785.i = phi ptr [ %.39.i, %bb.fu ], [ %.32.lcssa.i, %.preheader3685.i ] ; 12 uses
  %.919023784.i = phi ptr [ %i.ayh, %bb.fu ], [ %.81901.lcssa.i, %.preheader3685.i ] ; 2 uses
  %.1019713783.i = phi ptr [ %.121973.i, %bb.fu ], [ %.71968.lcssa.i, %.preheader3685.i ] ; 10 uses
  %.319773782.i = phi i32 [ %i.ayi, %bb.fu ], [ %.21976.lcssa.i, %.preheader3685.i ]
  %.1633253781.i = phi <4 x float> [ %.193328.i, %bb.fu ], [ %.123321.lcssa.i, %.preheader3685.i ] ; 6 uses
  %i.axb = load <4 x i32>, ptr %.919023784.i, align 16, !tbaa !116
  %i.axc = sitofp fast <4 x i32> %i.axb to <4 x float>
  %i.axd = fmul fast <4 x float> %i.afh, %i.axc   ; 6 uses
  %.not2031.i = icmp eq ptr %.363785.i, null
  br i1 %.not2031.i, label %.thread3544.i, label %bb.fi

bb.fi:                                            ; preds = %.lr.ph3786.i
  br i1 %i.bk, label %.thread3537.i, label %bb.fj

.thread3537.i:                                    ; preds = %bb.fi
  %i.axe = fadd fast <4 x float> %i.axd, %.1633253781.i
  br label %.thread3544.i

bb.fj:                                            ; preds = %bb.fi
  br i1 %or.cond11.i, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  %i.axf = fadd fast <4 x float> %i.axd, %.1633253781.i
  br label %.thread3544.i

bb.fl:                                            ; preds = %bb.fj
  switch i32 %3, label %.thread3544.i [
    i32 3, label %bb.fm
    i32 4, label %bb.fq
  ]

bb.fm:                                            ; preds = %bb.fl
  br i1 %i.br, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  %i.axg = load <4 x float>, ptr %.363785.i, align 1, !tbaa !116
  br label %bb.fp

bb.fo:                                            ; preds = %bb.fm
  %i.axh = load float, ptr %.363785.i, align 4, !tbaa !68
  %i.axi = getelementptr inbounds nuw [4 x i8], ptr %.363785.i, i64 %i.u
  %i.axj = load float, ptr %i.axi, align 4, !tbaa !68
  %i.axk = getelementptr inbounds nuw i8, ptr %.363785.i, i64 %.idx2047.i
  %i.axl = load float, ptr %i.axk, align 4, !tbaa !68
  %i.axm = getelementptr inbounds nuw i8, ptr %.363785.i, i64 %.idx2048.i
  %i.axn = load float, ptr %i.axm, align 4, !tbaa !68
  %i.axo = insertelement <4 x float> poison, float %i.axh, i64 0
  %i.axp = insertelement <4 x float> %i.axo, float %i.axj, i64 1
  %i.axq = insertelement <4 x float> %i.axp, float %i.axl, i64 2
  %i.axr = insertelement <4 x float> %i.axq, float %i.axn, i64 3
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn
  %.sink4009.i = phi i64 [ 4, %bb.fo ], [ 16, %bb.fn ]
  %.173326.i = phi nsz <4 x float> [ %i.axr, %bb.fo ], [ %i.axg, %bb.fn ] ; 2 uses
  %i.axs = getelementptr inbounds nuw i8, ptr %.363785.i, i64 %.sink4009.i
  %i.axt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.173326.i, <4 x float> nofpclass(nan inf) %i.bp, <4 x float> nofpclass(nan inf) %i.axd)
  br label %.thread3544.i

bb.fq:                                            ; preds = %bb.fl
  %i.axu = load float, ptr %.363785.i, align 4, !tbaa !68
  %i.axv = fmul fast float %i.axu, %10
  %i.axw = insertelement <4 x float> poison, float %i.axv, i64 0
  %i.axx = shufflevector <4 x float> %i.axw, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.axy = fadd fast <4 x float> %i.axx, %i.axd
  %i.axz = getelementptr inbounds nuw i8, ptr %.363785.i, i64 4
  br label %.thread3544.i

.thread3544.i:                                    ; preds = %bb.fq, %bb.fp, %bb.fl, %bb.fk, %.thread3537.i, %.lr.ph3786.i
  %.193328.i = phi nsz <4 x float> [ %.1633253781.i, %.lr.ph3786.i ], [ %i.axx, %bb.fq ], [ %.1633253781.i, %bb.fl ], [ %.173326.i, %bb.fp ], [ %.1633253781.i, %.thread3537.i ], [ %.1633253781.i, %bb.fk ]
  %.33194.i = phi nsz <4 x float> [ %i.axd, %.lr.ph3786.i ], [ %i.axy, %bb.fq ], [ %i.axd, %bb.fl ], [ %i.axt, %bb.fp ], [ %i.axe, %.thread3537.i ], [ %i.axf, %bb.fk ]
  %.39.i = phi ptr [ null, %.lr.ph3786.i ], [ %i.axz, %bb.fq ], [ %.363785.i, %bb.fl ], [ %i.axs, %bb.fp ], [ %.363785.i, %.thread3537.i ], [ %.363785.i, %bb.fk ] ; 2 uses
  %i.aya = fmul fast <4 x float> %.33194.i, %i.bv ; 6 uses
  br i1 %.not2029.i, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %.thread3544.i
  store <4 x float> %i.aya, ptr %.1019713783.i, align 1, !tbaa !116
  %i.ayb = getelementptr inbounds nuw [4 x i8], ptr %.1019713783.i, i64 %i.l
  br label %bb.fu

bb.fs:                                            ; preds = %.thread3544.i
  switch i32 %i.c, label %bb.fu [
    i32 4, label %.thread3548.i
    i32 1, label %bb.ft
  ]

.thread3548.i:                                    ; preds = %bb.fs
  store <4 x float> %i.aya, ptr %.1019713783.i, align 16, !tbaa !116
  %i.ayc = getelementptr inbounds nuw i8, ptr %.1019713783.i, i64 16
  br label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  %.sroa.02268.0.vec.extract.i = extractelement <4 x float> %i.aya, i64 0
  store float %.sroa.02268.0.vec.extract.i, ptr %.1019713783.i, align 4, !tbaa !68
  %.sroa.02268.4.vec.extract.i = extractelement <4 x float> %i.aya, i64 1
  %i.ayd = getelementptr inbounds nuw [4 x i8], ptr %.1019713783.i, i64 %i.l
  store float %.sroa.02268.4.vec.extract.i, ptr %i.ayd, align 4, !tbaa !68
  %.sroa.02268.8.vec.extract.i = extractelement <4 x float> %i.aya, i64 2
  %i.aye = getelementptr inbounds nuw i8, ptr %.1019713783.i, i64 %.idx2054.i
  store float %.sroa.02268.8.vec.extract.i, ptr %i.aye, align 4, !tbaa !68
  %.sroa.02268.12.vec.extract.i = extractelement <4 x float> %i.aya, i64 3
  %i.ayf = getelementptr inbounds nuw i8, ptr %.1019713783.i, i64 %.idx2055.i
  store float %.sroa.02268.12.vec.extract.i, ptr %i.ayf, align 4, !tbaa !68
  %i.ayg = getelementptr inbounds nuw i8, ptr %.1019713783.i, i64 4
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %.thread3548.i, %bb.fs, %bb.fr
  %.121973.i = phi ptr [ %i.ayb, %bb.fr ], [ %i.ayg, %bb.ft ], [ %.1019713783.i, %bb.fs ], [ %i.ayc, %.thread3548.i ]
  %i.ayh = getelementptr inbounds nuw i8, ptr %.919023784.i, i64 16 ; 2 uses
  %i.ayi = add nuw nsw i32 %.319773782.i, 1       ; 2 uses
  %exitcond3922.not.i = icmp eq i32 %i.ayi, %7
  br i1 %exitcond3922.not.i, label %._crit_edge3787.i, label %.lr.ph3786.i, !llvm.loop !737

._crit_edge3787.i:                                ; preds = %bb.fu, %.preheader3685.i
  %.91902.lcssa.i = phi ptr [ %.81901.lcssa.i, %.preheader3685.i ], [ %i.ayh, %bb.fu ] ; 2 uses
  %.36.lcssa.i = phi ptr [ %.32.lcssa.i, %.preheader3685.i ], [ %.39.i, %bb.fu ] ; 2 uses
  %indvars.iv.next3924.i = add nuw nsw i64 %indvars.iv3923.i, 4 ; 3 uses
  %i.ayj = icmp slt i64 %indvars.iv.next3924.i, %invariant.op3995.i
  br i1 %i.ayj, label %bb.co, label %.preheader3684.loopexit.i, !llvm.loop !738

.preheader3680.loopexit.i:                        ; preds = %._crit_edge3835.i
  %i.ayk = trunc nsw i64 %indvars.iv.next3928.i to i32
  br label %.preheader3680.i

.preheader3680.i:                                 ; preds = %.preheader3680.loopexit.i, %.preheader3684.i
  %.21915.lcssa.i = phi i32 [ %.11914.lcssa.i, %.preheader3684.i ], [ %i.ayk, %.preheader3680.loopexit.i ] ; 2 uses
  %.101903.lcssa.i = phi ptr [ %.51898.lcssa.i, %.preheader3684.i ], [ %.141907.lcssa.i, %.preheader3680.loopexit.i ]
  %.40.lcssa.i = phi ptr [ %.20.lcssa.i, %.preheader3684.i ], [ %.53.lcssa.i, %.preheader3680.loopexit.i ]
  %i.ayl = icmp slt i32 %.21915.lcssa.i, %5
  br i1 %i.ayl, label %.lr.ph3887.i, label %_ZN4ncnnL32unpack_output_tile_int32_to_fp32ERKNS_3MatES2_RS0_iiiiiS2_ffi.exit

.lr.ph3887.i:                                     ; preds = %.preheader3680.i
  %.not2002.i = icmp eq i32 %11, 0                ; 5 uses
  %i.aym = sext i32 %6 to i64                     ; 4 uses
  %i.ayn = mul i64 %i.l, %i.aym
  %i.ayo = icmp eq i32 %3, 0
  %i.ayp = add i32 %3, -1
  %or.cond31.i = icmp ult i32 %i.ayp, 2
  %i.ayq = sext i32 %4 to i64                     ; 3 uses
  %i.ayr = icmp sgt i32 %7, 7
  %or.cond35.i = icmp ult i32 %3, 3               ; 4 uses
  %i.ays = add i32 %3, -3
  %or.cond37.i = icmp ult i32 %i.ays, 2           ; 4 uses
  %i.ayt = insertelement <4 x float> poison, float %10, i64 0
  %i.ayu = shufflevector <4 x float> %i.ayt, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.ayv = fcmp fast une float %9, 1.000000e+00
  %i.ayw = insertelement <4 x float> poison, float %9, i64 0
  %i.ayx = shufflevector <4 x float> %i.ayw, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ayy = select ninf nsz i1 %i.ayv, <4 x float> %i.ayx, <4 x float> splat (float 1.000000e+00) ; 2 uses
  %i.ayz = icmp eq i64 %i.l, 1                    ; 2 uses
  %.idx2012.i = shl i64 %i.l, 3                   ; 3 uses
  %.idx2013.i = mul i64 %i.l, 12                  ; 2 uses
  %.idx2014.i = shl i64 %i.l, 4                   ; 5 uses
  %.idx2015.i = mul i64 %i.l, 20
  %.idx2016.i = mul i64 %i.l, 24
  %.idx2017.i = mul i64 %i.l, 28
  %.idx2018.i = shl i64 %i.l, 5                   ; 4 uses
  %i.aza = and i32 %7, -8
  %i.azb = sext i32 %.21915.lcssa.i to i64
  %i.azc = sext i32 %i.c to i64
  %wide.trip.count.i = sext i32 %5 to i64
  %i.azd = insertelement <2 x float> poison, float %10, i64 0
  %i.aze = shufflevector <2 x float> %i.azd, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.hu

bb.fv:                                            ; preds = %._crit_edge3835.i, %.lr.ph3842.i
  %indvars.iv3927.i = phi i64 [ %i.aen, %.lr.ph3842.i ], [ %indvars.iv.next3928.i, %._crit_edge3835.i ] ; 4 uses
  %.403841.i = phi ptr [ %.20.lcssa.i, %.lr.ph3842.i ], [ %.53.lcssa.i, %._crit_edge3835.i ] ; 4 uses
  %.1019033840.i = phi ptr [ %.51898.lcssa.i, %.lr.ph3842.i ], [ %.141907.lcssa.i, %._crit_edge3835.i ] ; 2 uses
  %i.azf = load ptr, ptr %2, align 8, !tbaa !18   ; 2 uses
  br i1 %.not2019.i, label %bb.fx, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.azg = getelementptr inbounds nuw [4 x i8], ptr %i.azf, i64 %i.aed
  %i.azh = add nsw i64 %indvars.iv3927.i, %i.aee  ; 2 uses
  %i.azi = mul nsw i64 %i.azh, %i.aep
  %i.azj = getelementptr inbounds [4 x i8], ptr %i.azg, i64 %i.azi
  br label %bb.fy

bb.fx:                                            ; preds = %bb.fv
  %i.azk = add nsw i64 %indvars.iv3927.i, %i.aee  ; 2 uses
  %i.azl = mul i64 %i.azk, %i.l
  %i.azm = getelementptr inbounds nuw [4 x i8], ptr %i.azf, i64 %i.azl
  %i.azn = getelementptr inbounds [4 x i8], ptr %i.azm, i64 %i.aec
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %.pre-phi.i = phi i64 [ %i.azk, %bb.fx ], [ %i.azh, %bb.fw ] ; 2 uses
  %.01952.i = phi ptr [ %i.azn, %bb.fx ], [ %i.azj, %bb.fw ] ; 2 uses
  %i.azo = load ptr, ptr %8, align 8, !tbaa !18
  %i.azp = getelementptr [4 x i8], ptr %i.azo, i64 %.pre-phi.i
  %i.azq = load <2 x float>, ptr %i.azp, align 4, !tbaa !68 ; 4 uses
  %i.azr = shufflevector <2 x float> %i.azq, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.azs = shufflevector <2 x float> %i.azq, <2 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.azt = shufflevector <2 x float> %i.azq, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 3 uses
  %.not2020.i = icmp eq ptr %.403841.i, null
  br i1 %.not2020.i, label %.thread3566.i, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  br i1 %12, label %.thread3550.i, label %bb.ga

.thread3550.i:                                    ; preds = %bb.fz
  %i.azu = load float, ptr %.403841.i, align 4, !tbaa !68
  %i.azv = fmul fast float %i.azu, %10            ; 3 uses
  %i.azw = insertelement <4 x float> poison, float %i.azv, i64 0
  %i.azx = shufflevector <4 x float> %i.azw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.azy = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.azv, i64 0
  br label %.thread3566.i

bb.ga:                                            ; preds = %bb.fz
  br i1 %or.cond21.i, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.azz = load ptr, ptr %1, align 8, !tbaa !18
  %i.baa = getelementptr inbounds [4 x i8], ptr %i.azz, i64 %i.aee
  %i.bab = getelementptr inbounds nuw [4 x i8], ptr %i.baa, i64 %indvars.iv3927.i ; 2 uses
  %i.bac = load <2 x float>, ptr %i.bab, align 4, !tbaa !68
  %i.bad = fmul fast <2 x float> %i.bac, %17      ; 4 uses
  %i.bae = extractelement <2 x float> %i.bad, i64 0
  %i.baf = shufflevector <2 x float> %i.bad, <2 x float> poison, <4 x i32> zeroinitializer
  %i.bag = shufflevector <2 x float> %i.bad, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %.thread3566.i

bb.gc:                                            ; preds = %bb.ga
  switch i32 %3, label %.thread3566.i [
    i32 3, label %bb.gd
    i32 4, label %bb.ge
  ]

bb.gd:                                            ; preds = %bb.gc
  %i.bah = load ptr, ptr %1, align 8, !tbaa !18
  %i.bai = mul i64 %.pre-phi.i, %i.u
  %i.baj = getelementptr inbounds nuw [4 x i8], ptr %i.bah, i64 %i.bai
  %i.bak = getelementptr inbounds [4 x i8], ptr %i.baj, i64 %i.aec
  br label %.thread3566.i

bb.ge:                                            ; preds = %bb.gc
  %i.bal = load ptr, ptr %1, align 8, !tbaa !18
  %i.bam = getelementptr inbounds [4 x i8], ptr %i.bal, i64 %i.aec
  br label %.thread3566.i

.thread3566.i:                                    ; preds = %bb.ge, %bb.gd, %bb.gc, %bb.gb, %.thread3550.i, %bb.fy
  %.23177.i = phi nsz <4 x float> [ zeroinitializer, %bb.fy ], [ zeroinitializer, %bb.ge ], [ zeroinitializer, %bb.gc ], [ zeroinitializer, %bb.gd ], [ %i.azx, %.thread3550.i ], [ %i.baf, %bb.gb ] ; 2 uses
  %.13168.i = phi nsz <4 x float> [ zeroinitializer, %bb.fy ], [ zeroinitializer, %bb.ge ], [ zeroinitializer, %bb.gc ], [ zeroinitializer, %bb.gd ], [ zeroinitializer, %.thread3550.i ], [ %i.bag, %bb.gb ] ; 2 uses
  %.21951.i = phi nsz float [ 0.000000e+00, %bb.fy ], [ 0.000000e+00, %bb.ge ], [ 0.000000e+00, %bb.gc ], [ 0.000000e+00, %bb.gd ], [ %i.azv, %.thread3550.i ], [ %i.bae, %bb.gb ]
  %.43.i = phi ptr [ null, %bb.fy ], [ %i.bam, %bb.ge ], [ %.403841.i, %bb.gc ], [ %i.bak, %bb.gd ], [ %.403841.i, %.thread3550.i ], [ %i.bab, %bb.gb ] ; 2 uses
  %i.ban = phi <2 x float> [ zeroinitializer, %bb.fy ], [ zeroinitializer, %bb.ge ], [ zeroinitializer, %bb.gc ], [ zeroinitializer, %bb.gd ], [ %i.azy, %.thread3550.i ], [ %i.bad, %bb.gb ] ; 3 uses
  %i.bao = shufflevector <2 x float> %i.ban, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  br i1 %i.aef, label %.lr.ph3803.i, label %.preheader3683.i

.preheader3683.i:                                 ; preds = %bb.gv, %.thread3566.i
  %.33178.lcssa.i = phi <4 x float> [ %.23177.i, %.thread3566.i ], [ %.53180.i, %bb.gv ]
  %.23169.lcssa.i = phi <4 x float> [ %.13168.i, %.thread3566.i ], [ %.43171.i, %bb.gv ]
  %.11953.lcssa.i = phi ptr [ %.01952.i, %.thread3566.i ], [ %i.bec, %bb.gv ] ; 2 uses
  %.01943.lcssa.i = phi i32 [ 0, %.thread3566.i ], [ %i.aem, %bb.gv ] ; 3 uses
  %.111904.lcssa.i = phi ptr [ %.1019033840.i, %.thread3566.i ], [ %i.bed, %bb.gv ] ; 2 uses
  %.44.lcssa.i = phi ptr [ %.43.i, %.thread3566.i ], [ %.46.i, %bb.gv ] ; 2 uses
  %i.bap = or disjoint i32 %.01943.lcssa.i, 3
  %i.baq = icmp slt i32 %i.bap, %7
  br i1 %i.baq, label %.lr.ph3816.i, label %.preheader3682.i

.lr.ph3803.i:                                     ; preds = %.thread3566.i, %bb.gv
  %.443802.i = phi ptr [ %.46.i, %bb.gv ], [ %.43.i, %.thread3566.i ] ; 11 uses
  %.1119043801.i = phi ptr [ %i.bed, %bb.gv ], [ %.1019033840.i, %.thread3566.i ] ; 5 uses
  %.019433800.i = phi i32 [ %i.bee, %bb.gv ], [ 0, %.thread3566.i ]
  %.119533799.i = phi ptr [ %i.bec, %bb.gv ], [ %.01952.i, %.thread3566.i ] ; 20 uses
  %.231693798.i = phi <4 x float> [ %.43171.i, %bb.gv ], [ %.13168.i, %.thread3566.i ] ; 6 uses
  %.331783797.i = phi <4 x float> [ %.53180.i, %bb.gv ], [ %.23177.i, %.thread3566.i ] ; 10 uses
  %i.bar = load <4 x i32>, ptr %.1119043801.i, align 16, !tbaa !116
  %i.bas = sitofp fast <4 x i32> %i.bar to <4 x float> ; 2 uses
  %i.bat = getelementptr inbounds nuw i8, ptr %.1119043801.i, i64 16
  %i.bau = load <4 x i32>, ptr %i.bat, align 16, !tbaa !116
  %i.bav = sitofp fast <4 x i32> %i.bau to <4 x float> ; 2 uses
  %i.baw = getelementptr inbounds nuw i8, ptr %.1119043801.i, i64 32
  %i.bax = load <4 x i32>, ptr %i.baw, align 16, !tbaa !116
  %i.bay = getelementptr inbounds nuw i8, ptr %.1119043801.i, i64 48
  %i.baz = load <4 x i32>, ptr %i.bay, align 16, !tbaa !116
  %i.bba = sitofp <4 x i32> %i.bax to <4 x float>
  %i.bbb = shufflevector <4 x float> %i.bba, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.bbc = sitofp <4 x i32> %i.baz to <4 x float>
  %i.bbd = shufflevector <4 x float> %i.bbc, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.bbe = shufflevector <4 x float> %i.bas, <4 x float> %i.bbb, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.bbf = shufflevector <4 x float> %i.bas, <4 x float> %i.bbb, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.bbg = shufflevector <4 x float> %i.bav, <4 x float> %i.bbd, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.bbh = shufflevector <4 x float> %i.bav, <4 x float> %i.bbd, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.bbi = shufflevector <4 x float> %i.bbe, <4 x float> %i.bbf, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bbj = shufflevector <4 x float> %i.bbg, <4 x float> %i.bbh, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bbk = shufflevector <4 x float> %i.bbe, <4 x float> %i.bbf, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.bbl = shufflevector <4 x float> %i.bbg, <4 x float> %i.bbh, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.bbm = shufflevector <4 x float> %i.bbk, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.bbn = shufflevector <4 x float> %i.bbl, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.bbo = fmul fast <4 x float> %i.azs, %i.bbi   ; 7 uses
  %i.bbp = fmul fast <4 x float> %i.azs, %i.bbj   ; 7 uses
  %i.bbq = fmul fast <4 x float> %i.bbm, %i.azt   ; 7 uses
  %i.bbr = fmul fast <4 x float> %i.bbn, %i.azt   ; 7 uses
  %.not2026.i = icmp eq ptr %.443802.i, null
  br i1 %.not2026.i, label %.thread3585.i, label %bb.gf

bb.gf:                                            ; preds = %.lr.ph3803.i
  br i1 %12, label %.thread3572.i, label %bb.gg

.thread3572.i:                                    ; preds = %bb.gf
  %i.bbs = fadd fast <4 x float> %i.bbo, %.331783797.i
  %i.bbt = fadd fast <4 x float> %i.bbp, %.331783797.i
  %i.bbu = fadd fast <4 x float> %i.bbq, %.331783797.i
  %i.bbv = fadd fast <4 x float> %i.bbr, %.331783797.i
  br label %.thread3585.i

bb.gg:                                            ; preds = %bb.gf
  br i1 %or.cond21.i, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  %i.bbw = fadd fast <4 x float> %i.bbo, %.331783797.i
  %i.bbx = fadd fast <4 x float> %i.bbp, %.331783797.i
  %i.bby = fadd fast <4 x float> %i.bbq, %.231693798.i
  %i.bbz = fadd fast <4 x float> %i.bbr, %.231693798.i
  br label %.thread3585.i

bb.gi:                                            ; preds = %bb.gg
  switch i32 %3, label %.thread3585.i [
    i32 3, label %bb.gj
    i32 4, label %bb.gn
  ]

bb.gj:                                            ; preds = %bb.gi
  %i.bca = load <4 x float>, ptr %.443802.i, align 1, !tbaa !116 ; 3 uses
  %i.bcb = getelementptr inbounds nuw i8, ptr %.443802.i, i64 16
  %i.bcc = load <4 x float>, ptr %i.bcb, align 1, !tbaa !116 ; 3 uses
  %i.bcd = getelementptr inbounds nuw [4 x i8], ptr %.443802.i, i64 %i.u ; 2 uses
  %i.bce = load <4 x float>, ptr %i.bcd, align 1, !tbaa !116 ; 2 uses
  %i.bcf = getelementptr inbounds nuw i8, ptr %i.bcd, i64 16
  %i.bcg = load <4 x float>, ptr %i.bcf, align 1, !tbaa !116 ; 2 uses
  br i1 %i.aei, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  %i.bch = fadd fast <4 x float> %i.bca, %i.bbo
  %i.bci = fadd fast <4 x float> %i.bcc, %i.bbp
  %i.bcj = fadd fast <4 x float> %i.bce, %i.bbq
  %i.bck = fadd fast <4 x float> %i.bcg, %i.bbr
  br label %bb.gm

bb.gl:                                            ; preds = %bb.gj
  %i.bcl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bca, <4 x float> nofpclass(nan inf) %i.aeh, <4 x float> nofpclass(nan inf) %i.bbo)
  %i.bcm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bcc, <4 x float> nofpclass(nan inf) %i.aeh, <4 x float> nofpclass(nan inf) %i.bbp)
  %i.bcn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bce, <4 x float> nofpclass(nan inf) %i.aeh, <4 x float> nofpclass(nan inf) %i.bbq)
  %i.bco = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bcg, <4 x float> nofpclass(nan inf) %i.aeh, <4 x float> nofpclass(nan inf) %i.bbr)
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %bb.gk
  %.23163.i = phi nsz <4 x float> [ %i.bch, %bb.gk ], [ %i.bcl, %bb.gl ]
  %.23157.i = phi nsz <4 x float> [ %i.bci, %bb.gk ], [ %i.bcm, %bb.gl ]
  %.23151.i = phi nsz <4 x float> [ %i.bcj, %bb.gk ], [ %i.bcn, %bb.gl ]
  %.23145.i = phi nsz <4 x float> [ %i.bck, %bb.gk ], [ %i.bco, %bb.gl ]
  %i.bcp = getelementptr inbounds nuw i8, ptr %.443802.i, i64 32
  br label %.thread3585.i

bb.gn:                                            ; preds = %bb.gi
  %i.bcq = load <4 x float>, ptr %.443802.i, align 1, !tbaa !116
  %i.bcr = getelementptr inbounds nuw i8, ptr %.443802.i, i64 16
  %i.bcs = load <4 x float>, ptr %i.bcr, align 1, !tbaa !116
  %i.bct = fmul fast <4 x float> %i.bcq, %i.aeh   ; 3 uses
  %i.bcu = fmul fast <4 x float> %i.bcs, %i.aeh   ; 3 uses
  %i.bcv = fadd fast <4 x float> %i.bct, %i.bbo
  %i.bcw = fadd fast <4 x float> %i.bcu, %i.bbp
  %i.bcx = fadd fast <4 x float> %i.bct, %i.bbq
  %i.bcy = fadd fast <4 x float> %i.bcu, %i.bbr
  %i.bcz = getelementptr inbounds nuw i8, ptr %.443802.i, i64 32
  br label %.thread3585.i

.thread3585.i:                                    ; preds = %bb.gn, %bb.gm, %bb.gi, %bb.gh, %.thread3572.i, %.lr.ph3803.i
  %.53180.i = phi nsz <4 x float> [ %.331783797.i, %.lr.ph3803.i ], [ %i.bct, %bb.gn ], [ %.331783797.i, %bb.gi ], [ %i.bca, %bb.gm ], [ %.331783797.i, %.thread3572.i ], [ %.331783797.i, %bb.gh ] ; 2 uses
  %.43171.i = phi nsz <4 x float> [ %.231693798.i, %.lr.ph3803.i ], [ %i.bcu, %bb.gn ], [ %.231693798.i, %bb.gi ], [ %i.bcc, %bb.gm ], [ %.231693798.i, %.thread3572.i ], [ %.231693798.i, %bb.gh ] ; 2 uses
  %.43165.i = phi nsz <4 x float> [ %i.bbo, %.lr.ph3803.i ], [ %i.bcv, %bb.gn ], [ %i.bbo, %bb.gi ], [ %.23163.i, %bb.gm ], [ %i.bbs, %.thread3572.i ], [ %i.bbw, %bb.gh ] ; 2 uses
  %.43159.i = phi nsz <4 x float> [ %i.bbp, %.lr.ph3803.i ], [ %i.bcw, %bb.gn ], [ %i.bbp, %bb.gi ], [ %.23157.i, %bb.gm ], [ %i.bbt, %.thread3572.i ], [ %i.bbx, %bb.gh ] ; 2 uses
  %.43153.i = phi nsz <4 x float> [ %i.bbq, %.lr.ph3803.i ], [ %i.bcx, %bb.gn ], [ %i.bbq, %bb.gi ], [ %.23151.i, %bb.gm ], [ %i.bbu, %.thread3572.i ], [ %i.bby, %bb.gh ] ; 2 uses
  %.43147.i = phi nsz <4 x float> [ %i.bbr, %.lr.ph3803.i ], [ %i.bcy, %bb.gn ], [ %i.bbr, %bb.gi ], [ %.23145.i, %bb.gm ], [ %i.bbv, %.thread3572.i ], [ %i.bbz, %bb.gh ] ; 2 uses
  %.46.i = phi ptr [ null, %.lr.ph3803.i ], [ %i.bcz, %bb.gn ], [ %.443802.i, %bb.gi ], [ %i.bcp, %bb.gm ], [ %.443802.i, %.thread3572.i ], [ %.443802.i, %bb.gh ] ; 2 uses
  br i1 %i.aej, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %.thread3585.i
  %i.bda = fmul fast <4 x float> %.43165.i, %i.ael
  %i.bdb = fmul fast <4 x float> %.43159.i, %i.ael
  %i.bdc = fmul fast <4 x float> %.43153.i, %i.ael
  %i.bdd = fmul fast <4 x float> %.43147.i, %i.ael
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %.thread3585.i
  %.53166.i = phi nsz <4 x float> [ %i.bda, %bb.go ], [ %.43165.i, %.thread3585.i ] ; 7 uses
  %.53160.i = phi nsz <4 x float> [ %i.bdb, %bb.go ], [ %.43159.i, %.thread3585.i ] ; 7 uses
  %.53154.i = phi nsz <4 x float> [ %i.bdc, %bb.go ], [ %.43153.i, %.thread3585.i ] ; 7 uses
  %.53148.i = phi nsz <4 x float> [ %i.bdd, %bb.go ], [ %.43147.i, %.thread3585.i ] ; 7 uses
  br i1 %.not2019.i, label %bb.gu, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  switch i32 %i.c, label %bb.gv [
    i32 8, label %bb.gr
    i32 4, label %bb.gs
    i32 1, label %bb.gt
  ]

bb.gr:                                            ; preds = %bb.gq
  store <4 x float> %.53166.i, ptr %.119533799.i, align 16, !tbaa !116
  %i.bde = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 16
  store <4 x float> %.53160.i, ptr %i.bde, align 16, !tbaa !116
  %i.bdf = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 32
  store <4 x float> %.53154.i, ptr %i.bdf, align 16, !tbaa !116
  %i.bdg = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 48
  store <4 x float> %.53148.i, ptr %i.bdg, align 16, !tbaa !116
  br label %bb.gv

bb.gs:                                            ; preds = %bb.gq
  store <4 x float> %.53166.i, ptr %.119533799.i, align 16, !tbaa !116
  %i.bdh = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 16
  store <4 x float> %.53154.i, ptr %i.bdh, align 16, !tbaa !116
  %i.bdi = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 %.idx3658.i ; 2 uses
  store <4 x float> %.53160.i, ptr %i.bdi, align 16, !tbaa !116
  %i.bdj = getelementptr inbounds nuw i8, ptr %i.bdi, i64 16
  store <4 x float> %.53148.i, ptr %i.bdj, align 16, !tbaa !116
  br label %bb.gv

bb.gt:                                            ; preds = %bb.gq
  %.sroa.02178.0.vec.extract.i = extractelement <4 x float> %.53166.i, i64 0
  store float %.sroa.02178.0.vec.extract.i, ptr %.119533799.i, align 4, !tbaa !68
  %.sroa.12.32.vec.extract.i = extractelement <4 x float> %.53154.i, i64 0
  %i.bdk = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 4
  store float %.sroa.12.32.vec.extract.i, ptr %i.bdk, align 4, !tbaa !68
  %i.bdl = getelementptr inbounds nuw [4 x i8], ptr %.119533799.i, i64 %i.l
  %i.bdm = shufflevector <4 x float> %.53166.i, <4 x float> %.53154.i, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.bdm, ptr %i.bdl, align 4, !tbaa !68
  %i.bdn = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 %.idx3656.i
  %i.bdo = shufflevector <4 x float> %.53166.i, <4 x float> %.53154.i, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.bdo, ptr %i.bdn, align 4, !tbaa !68
  %i.bdp = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 %.idx3657.i
  %i.bdq = shufflevector <4 x float> %.53166.i, <4 x float> %.53154.i, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.bdq, ptr %i.bdp, align 4, !tbaa !68
  %.sroa.72179.16.vec.extract.i = extractelement <4 x float> %.53160.i, i64 0
  %i.bdr = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 %.idx3658.i ; 2 uses
  store float %.sroa.72179.16.vec.extract.i, ptr %i.bdr, align 4, !tbaa !68
  %.sroa.17.48.vec.extract.i = extractelement <4 x float> %.53148.i, i64 0
  %i.bds = getelementptr inbounds nuw i8, ptr %i.bdr, i64 4
  store float %.sroa.17.48.vec.extract.i, ptr %i.bds, align 4, !tbaa !68
  %i.bdt = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 %.idx3659.i
  %i.bdu = shufflevector <4 x float> %.53160.i, <4 x float> %.53148.i, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.bdu, ptr %i.bdt, align 4, !tbaa !68
  %i.bdv = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 %.idx3660.i
  %i.bdw = shufflevector <4 x float> %.53160.i, <4 x float> %.53148.i, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.bdw, ptr %i.bdv, align 4, !tbaa !68
  %i.bdx = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 %.idx3661.i
  %i.bdy = shufflevector <4 x float> %.53160.i, <4 x float> %.53148.i, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.bdy, ptr %i.bdx, align 4, !tbaa !68
  br label %bb.gv

bb.gu:                                            ; preds = %bb.gp
  store <4 x float> %.53166.i, ptr %.119533799.i, align 1, !tbaa !116
  %i.bdz = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 16
  store <4 x float> %.53160.i, ptr %i.bdz, align 1, !tbaa !116
  %i.bea = getelementptr inbounds nuw [4 x i8], ptr %.119533799.i, i64 %i.l ; 2 uses
  store <4 x float> %.53154.i, ptr %i.bea, align 1, !tbaa !116
  %i.beb = getelementptr inbounds nuw i8, ptr %i.bea, i64 16
  store <4 x float> %.53148.i, ptr %i.beb, align 1, !tbaa !116
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.gt, %bb.gs, %bb.gr, %bb.gq
  %.sink4010.i = phi i64 [ 32, %bb.gu ], [ %.idx2028.i, %bb.gs ], [ %.idx2028.i, %bb.gr ], [ %.idx2028.i, %bb.gq ], [ %.idx2028.i, %bb.gt ]
  %i.bec = getelementptr inbounds nuw i8, ptr %.119533799.i, i64 %.sink4010.i ; 2 uses
  %i.bed = getelementptr inbounds nuw i8, ptr %.1119043801.i, i64 64 ; 2 uses
  %i.bee = add nuw nsw i32 %.019433800.i, 8       ; 2 uses
  %i.bef = or disjoint i32 %i.bee, 7
  %i.beg = icmp slt i32 %i.bef, %7
  br i1 %i.beg, label %.lr.ph3803.i, label %.preheader3683.i, !llvm.loop !739

.preheader3682.i:                                 ; preds = %bb.hg, %.preheader3683.i
  %.31955.lcssa.i = phi ptr [ %.11953.lcssa.i, %.preheader3683.i ], [ %i.bfw, %bb.hg ] ; 2 uses
  %.11944.lcssa.i = phi i32 [ %.01943.lcssa.i, %.preheader3683.i ], [ %i.bfy, %bb.hg ] ; 3 uses
  %.121905.lcssa.i = phi ptr [ %.111904.lcssa.i, %.preheader3683.i ], [ %i.bfx, %bb.hg ] ; 2 uses
  %.47.lcssa.i = phi ptr [ %.44.lcssa.i, %.preheader3683.i ], [ %.49.i, %bb.hg ] ; 2 uses
  %i.beh = or disjoint i32 %.11944.lcssa.i, 1
  %i.bei = icmp slt i32 %i.beh, %7
  br i1 %i.bei, label %.lr.ph3825.i.preheader, label %.preheader3681.i

.lr.ph3825.i.preheader:                           ; preds = %.preheader3682.i
  %i.bej = shufflevector <2 x float> %i.ban, <2 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph3825.i

.lr.ph3816.i:                                     ; preds = %.preheader3683.i, %bb.hg
  %.473815.i = phi ptr [ %.49.i, %bb.hg ], [ %.44.lcssa.i, %.preheader3683.i ] ; 9 uses
  %.1219053814.i = phi ptr [ %i.bfx, %bb.hg ], [ %.111904.lcssa.i, %.preheader3683.i ] ; 3 uses
  %.119443813.i = phi i32 [ %i.bfy, %bb.hg ], [ %.01943.lcssa.i, %.preheader3683.i ]
  %.319553812.i = phi ptr [ %i.bfw, %bb.hg ], [ %.11953.lcssa.i, %.preheader3683.i ] ; 10 uses
  %.531723811.i = phi <4 x float> [ %.73174.i, %bb.hg ], [ %.23169.lcssa.i, %.preheader3683.i ] ; 6 uses
  %.631813810.i = phi <4 x float> [ %.83183.i, %bb.hg ], [ %.33178.lcssa.i, %.preheader3683.i ] ; 7 uses
  %i.bek = load <4 x i32>, ptr %.1219053814.i, align 16, !tbaa !116
  %i.bel = sitofp fast <4 x i32> %i.bek to <4 x float> ; 2 uses
  %i.bem = getelementptr inbounds nuw i8, ptr %.1219053814.i, i64 16
  %i.ben = load <4 x i32>, ptr %i.bem, align 16, !tbaa !116
  %i.beo = sitofp fast <4 x i32> %i.ben to <4 x float> ; 2 uses
  %i.bep = shufflevector <4 x float> %i.bel, <4 x float> %i.beo, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.beq = shufflevector <4 x float> %i.bel, <4 x float> %i.beo, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ber = shufflevector <4 x float> %i.bep, <4 x float> %i.beq, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bes = shufflevector <4 x float> %i.beq, <4 x float> %i.bep, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.bet = shufflevector <4 x float> %i.bes, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.beu = fmul fast <4 x float> %i.azs, %i.ber   ; 7 uses
  %i.bev = fmul fast <4 x float> %i.bet, %i.azt   ; 7 uses
  %.not2024.i = icmp eq ptr %.473815.i, null
  br i1 %.not2024.i, label %.thread3602.i, label %bb.gw

bb.gw:                                            ; preds = %.lr.ph3816.i
  br i1 %12, label %.thread3593.i, label %bb.gx

.thread3593.i:                                    ; preds = %bb.gw
  %i.bew = fadd fast <4 x float> %i.beu, %.631813810.i
  %i.bex = fadd fast <4 x float> %i.bev, %.631813810.i
  br label %.thread3602.i

bb.gx:                                            ; preds = %bb.gw
  br i1 %or.cond21.i, label %bb.gy, label %bb.gz

bb.gy:                                            ; preds = %bb.gx
  %i.bey = fadd fast <4 x float> %i.beu, %.631813810.i
  %i.bez = fadd fast <4 x float> %i.bev, %.531723811.i
  br label %.thread3602.i

bb.gz:                                            ; preds = %bb.gx
  switch i32 %3, label %.thread3602.i [
    i32 3, label %bb.ha
    i32 4, label %bb.hb
  ]

bb.ha:                                            ; preds = %bb.gz
  %i.bfa = load <4 x float>, ptr %.473815.i, align 1, !tbaa !116 ; 3 uses
  %i.bfb = getelementptr inbounds nuw [4 x i8], ptr %.473815.i, i64 %i.u
  %i.bfc = load <4 x float>, ptr %i.bfb, align 1, !tbaa !116 ; 3 uses
  %i.bfd = fadd fast <4 x float> %i.bfa, %i.beu
  %i.bfe = fadd fast <4 x float> %i.bfc, %i.bev
  %i.bff = tail call fast nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bfa, <4 x float> nofpclass(nan inf) %i.aeh, <4 x float> nofpclass(nan inf) %i.beu)
  %i.bfg = tail call fast nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bfc, <4 x float> nofpclass(nan inf) %i.aeh, <4 x float> nofpclass(nan inf) %i.bev)
  %.23134.i = select nsz i1 %i.aei, <4 x float> %i.bfd, <4 x float> %i.bff
  %.23128.i = select nsz i1 %i.aei, <4 x float> %i.bfe, <4 x float> %i.bfg
  %i.bfh = getelementptr inbounds nuw i8, ptr %.473815.i, i64 16
  br label %.thread3602.i

bb.hb:                                            ; preds = %bb.gz
  %i.bfi = load <4 x float>, ptr %.473815.i, align 1, !tbaa !116
  %i.bfj = fmul fast <4 x float> %i.bfi, %i.aeh   ; 3 uses
  %i.bfk = fadd fast <4 x float> %i.bfj, %i.beu
  %i.bfl = fadd fast <4 x float> %i.bfj, %i.bev
  %i.bfm = getelementptr inbounds nuw i8, ptr %.473815.i, i64 16
  br label %.thread3602.i

.thread3602.i:                                    ; preds = %bb.hb, %bb.ha, %bb.gz, %bb.gy, %.thread3593.i, %.lr.ph3816.i
  %.83183.i = phi nsz <4 x float> [ %.631813810.i, %.lr.ph3816.i ], [ %i.bfj, %bb.hb ], [ %.631813810.i, %bb.gz ], [ %i.bfa, %bb.ha ], [ %.631813810.i, %.thread3593.i ], [ %.631813810.i, %bb.gy ]
  %.73174.i = phi nsz <4 x float> [ %.531723811.i, %.lr.ph3816.i ], [ %.531723811.i, %bb.hb ], [ %.531723811.i, %bb.gz ], [ %i.bfc, %bb.ha ], [ %.531723811.i, %.thread3593.i ], [ %.531723811.i, %bb.gy ]
  %.43136.i = phi nsz <4 x float> [ %i.beu, %.lr.ph3816.i ], [ %i.bfk, %bb.hb ], [ %i.beu, %bb.gz ], [ %.23134.i, %bb.ha ], [ %i.bew, %.thread3593.i ], [ %i.bey, %bb.gy ]
  %.43130.i = phi nsz <4 x float> [ %i.bev, %.lr.ph3816.i ], [ %i.bfl, %bb.hb ], [ %i.bev, %bb.gz ], [ %.23128.i, %bb.ha ], [ %i.bex, %.thread3593.i ], [ %i.bez, %bb.gy ]
  %.49.i = phi ptr [ null, %.lr.ph3816.i ], [ %i.bfm, %bb.hb ], [ %.473815.i, %bb.gz ], [ %i.bfh, %bb.ha ], [ %.473815.i, %.thread3593.i ], [ %.473815.i, %bb.gy ] ; 2 uses
  %.53137.i = fmul reassoc nsz arcp contract afn <4 x float> %.43136.i, %i.aeq ; 6 uses
  %.53131.i = fmul reassoc nsz arcp contract afn <4 x float> %.43130.i, %i.aeq ; 6 uses
  br i1 %.not2019.i, label %bb.hf, label %bb.hc

bb.hc:                                            ; preds = %.thread3602.i
  switch i32 %i.c, label %bb.hg [
    i32 4, label %bb.hd
    i32 1, label %bb.he
  ]

bb.hd:                                            ; preds = %bb.hc
  store <4 x float> %.53137.i, ptr %.319553812.i, align 16, !tbaa !116
  %i.bfn = getelementptr inbounds nuw i8, ptr %.319553812.i, i64 16
  store <4 x float> %.53131.i, ptr %i.bfn, align 16, !tbaa !116
  br label %bb.hg

bb.he:                                            ; preds = %bb.hc
  %.sroa.02151.0.vec.extract.i = extractelement <4 x float> %.53137.i, i64 0
  store float %.sroa.02151.0.vec.extract.i, ptr %.319553812.i, align 4, !tbaa !68
  %.sroa.72152.16.vec.extract.i = extractelement <4 x float> %.53131.i, i64 0
  %i.bfo = getelementptr inbounds nuw i8, ptr %.319553812.i, i64 4
  store float %.sroa.72152.16.vec.extract.i, ptr %i.bfo, align 4, !tbaa !68
  %i.bfp = getelementptr inbounds nuw [4 x i8], ptr %.319553812.i, i64 %i.l
  %i.bfq = shufflevector <4 x float> %.53137.i, <4 x float> %.53131.i, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.bfq, ptr %i.bfp, align 4, !tbaa !68
  %i.bfr = getelementptr inbounds nuw i8, ptr %.319553812.i, i64 %.idx3656.i
  %i.bfs = shufflevector <4 x float> %.53137.i, <4 x float> %.53131.i, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.bfs, ptr %i.bfr, align 4, !tbaa !68
  %i.bft = getelementptr inbounds nuw i8, ptr %.319553812.i, i64 %.idx3657.i
  %i.bfu = shufflevector <4 x float> %.53137.i, <4 x float> %.53131.i, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.bfu, ptr %i.bft, align 4, !tbaa !68
  br label %bb.hg

bb.hf:                                            ; preds = %.thread3602.i
  store <4 x float> %.53137.i, ptr %.319553812.i, align 1, !tbaa !116
  %i.bfv = getelementptr inbounds nuw [4 x i8], ptr %.319553812.i, i64 %i.l
  store <4 x float> %.53131.i, ptr %i.bfv, align 1, !tbaa !116
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %bb.he, %bb.hd, %bb.hc
  %.sink4011.i = phi i64 [ 16, %bb.hf ], [ %.idx3658.i, %bb.hd ], [ %.idx3658.i, %bb.hc ], [ %.idx3658.i, %bb.he ]
  %i.bfw = getelementptr inbounds nuw i8, ptr %.319553812.i, i64 %.sink4011.i ; 2 uses
  %i.bfx = getelementptr inbounds nuw i8, ptr %.1219053814.i, i64 32 ; 2 uses
  %i.bfy = add nuw nsw i32 %.119443813.i, 4       ; 3 uses
  %i.bfz = or disjoint i32 %i.bfy, 3
  %i.bga = icmp slt i32 %i.bfz, %7
  br i1 %i.bga, label %.lr.ph3816.i, label %.preheader3682.i, !llvm.loop !740

.preheader3681.i:                                 ; preds = %.thread3621.i, %.preheader3682.i
  %.51957.lcssa.i = phi ptr [ %.31955.lcssa.i, %.preheader3682.i ], [ %i.bhk, %.thread3621.i ]
  %.21945.lcssa.i = phi i32 [ %.11944.lcssa.i, %.preheader3682.i ], [ %i.bhm, %.thread3621.i ] ; 2 uses
  %.131906.lcssa.i = phi ptr [ %.121905.lcssa.i, %.preheader3682.i ], [ %i.bhl, %.thread3621.i ] ; 2 uses
  %.50.lcssa.i = phi ptr [ %.47.lcssa.i, %.preheader3682.i ], [ %.52.i, %.thread3621.i ] ; 2 uses
  %i.bgb = icmp slt i32 %.21945.lcssa.i, %7
  br i1 %i.bgb, label %.lr.ph3834.i, label %._crit_edge3835.i

.lr.ph3834.i:                                     ; preds = %.preheader3681.i
  %i.bgc = select <2 x i1> %15, <2 x float> %i.ban, <2 x float> zeroinitializer ; 2 uses
  %i.bgd = select ninf nsz i1 %or.cond21.i, float %.21951.i, float 0.000000e+00
  %18 = shufflevector <2 x float> %i.bgc, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %19 = insertelement <2 x float> %18, float %i.bgd, i64 0
  %i.bge = fadd reassoc nsz arcp contract afn <2 x float> %i.bgc, %19
  br label %bb.hn

.lr.ph3825.i:                                     ; preds = %.lr.ph3825.i.preheader, %.thread3621.i
  %.503824.i = phi ptr [ %.52.i, %.thread3621.i ], [ %.47.lcssa.i, %.lr.ph3825.i.preheader ] ; 9 uses
  %.1319063823.i = phi ptr [ %i.bhl, %.thread3621.i ], [ %.121905.lcssa.i, %.lr.ph3825.i.preheader ] ; 2 uses
  %.219453822.i = phi i32 [ %i.bhm, %.thread3621.i ], [ %.11944.lcssa.i, %.lr.ph3825.i.preheader ]
  %.519573821.i = phi ptr [ %i.bhk, %.thread3621.i ], [ %.31955.lcssa.i, %.lr.ph3825.i.preheader ] ; 4 uses
  %i.bgf = load <4 x i32>, ptr %.1319063823.i, align 4, !tbaa !45
  %i.bgg = sitofp <4 x i32> %i.bgf to <4 x float>
  %i.bgh = fmul fast <4 x float> %i.azr, %i.bgg   ; 6 uses
  %.not2022.i = icmp eq ptr %.503824.i, null
  br i1 %.not2022.i, label %.thread3621.i, label %bb.hh

bb.hh:                                            ; preds = %.lr.ph3825.i
  br i1 %12, label %.thread3608.i, label %bb.hi

.thread3608.i:                                    ; preds = %bb.hh
  %i.bgi = fadd fast <4 x float> %i.bgh, %i.bej
  br label %.thread3621.i

bb.hi:                                            ; preds = %bb.hh
  br i1 %or.cond21.i, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %bb.hi
  %i.bgj = fadd fast <4 x float> %i.bgh, %i.bao
  br label %.thread3621.i

bb.hk:                                            ; preds = %bb.hi
  switch i32 %3, label %.thread3621.i [
    i32 3, label %bb.hl
    i32 4, label %bb.hm
  ]

bb.hl:                                            ; preds = %bb.hk
  %i.bgk = getelementptr inbounds nuw [4 x i8], ptr %.503824.i, i64 %i.u
  %i.bgl = load <2 x float>, ptr %.503824.i, align 4, !tbaa !68
  %i.bgm = load <2 x float>, ptr %i.bgk, align 4, !tbaa !68
  %i.bgn = shufflevector <2 x float> %i.bgl, <2 x float> %i.bgm, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bgo = fmul fast <4 x float> %i.bgn, %i.aeh
  %i.bgp = fadd fast <4 x float> %i.bgo, %i.bgh
  %i.bgq = getelementptr inbounds nuw i8, ptr %.503824.i, i64 8
  br label %.thread3621.i

bb.hm:                                            ; preds = %bb.hk
  %i.bgr = load <2 x float>, ptr %.503824.i, align 4, !tbaa !68
  %i.bgs = fmul fast <2 x float> %i.bgr, %17
  %i.bgt = shufflevector <2 x float> %i.bgs, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bgu = fadd fast <4 x float> %i.bgt, %i.bgh
  %i.bgv = getelementptr inbounds nuw i8, ptr %.503824.i, i64 8
  br label %.thread3621.i

.thread3621.i:                                    ; preds = %bb.hm, %bb.hl, %bb.hk, %bb.hj, %.thread3608.i, %.lr.ph3825.i
  %.52.i = phi ptr [ %i.bgv, %bb.hm ], [ %.503824.i, %bb.hk ], [ null, %.lr.ph3825.i ], [ %i.bgq, %bb.hl ], [ %.503824.i, %.thread3608.i ], [ %.503824.i, %bb.hj ] ; 2 uses
  %i.bgw = phi <4 x float> [ %i.bgu, %bb.hm ], [ %i.bgh, %bb.hk ], [ %i.bgh, %.lr.ph3825.i ], [ %i.bgp, %bb.hl ], [ %i.bgi, %.thread3608.i ], [ %i.bgj, %bb.hj ] ; 3 uses
  %i.bgx = extractelement <4 x float> %i.bgw, i64 0
  %i.bgy = fmul fast float %i.bgx, %9
  %i.bgz = extractelement <4 x float> %i.bgw, i64 3
  %i.bha = fmul fast float %i.bgz, %9
  store float %i.bgy, ptr %.519573821.i, align 4, !tbaa !68
  %i.bhb = getelementptr inbounds nuw i8, ptr %.519573821.i, i64 4
  %i.bhc = getelementptr inbounds nuw [4 x i8], ptr %.519573821.i, i64 %i.l ; 2 uses
  %i.bhd = getelementptr i8, ptr %i.bhc, i64 4
  %i.bhe = shufflevector <4 x float> %i.bgw, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.bhf = fmul fast <2 x float> %i.bhe, %i.aes   ; 2 uses
  %i.bhg = shufflevector <2 x float> %i.bhf, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bhh = select <2 x i1> %i.aeu, <2 x float> %i.bhf, <2 x float> %i.bhg ; 2 uses
  %i.bhi = extractelement <2 x float> %i.bhh, i64 0
  store float %i.bhi, ptr %i.bhb, align 4, !tbaa !68
  %i.bhj = extractelement <2 x float> %i.bhh, i64 1
  store float %i.bhj, ptr %i.bhc, align 4, !tbaa !68
  store float %i.bha, ptr %i.bhd, align 4, !tbaa !68
  %i.bhk = getelementptr inbounds nuw i8, ptr %.519573821.i, i64 %..idx3656.i ; 2 uses
  %i.bhl = getelementptr inbounds nuw i8, ptr %.1319063823.i, i64 16 ; 2 uses
  %i.bhm = add nuw nsw i32 %.219453822.i, 2       ; 3 uses
  %i.bhn = or disjoint i32 %i.bhm, 1
  %i.bho = icmp slt i32 %i.bhn, %7
  br i1 %i.bho, label %.lr.ph3825.i, label %.preheader3681.i, !llvm.loop !741

bb.hn:                                            ; preds = %bb.ht, %.lr.ph3834.i
  %.533833.i = phi ptr [ %.50.lcssa.i, %.lr.ph3834.i ], [ %.55.i, %bb.ht ] ; 7 uses
  %.1419073832.i = phi ptr [ %.131906.lcssa.i, %.lr.ph3834.i ], [ %i.biq, %bb.ht ] ; 2 uses
  %.319463831.i = phi i32 [ %.21945.lcssa.i, %.lr.ph3834.i ], [ %i.bir, %bb.ht ]
  %.719593830.i = phi ptr [ %.51957.lcssa.i, %.lr.ph3834.i ], [ %.81960.i, %bb.ht ] ; 5 uses
  %i.bhp = load <2 x i32>, ptr %.1419073832.i, align 4, !tbaa !45
  %i.bhq = sitofp <2 x i32> %i.bhp to <2 x float>
  %i.bhr = fmul fast <2 x float> %i.azq, %i.bhq   ; 3 uses
  %.not2021.i = icmp eq ptr %.533833.i, null
  br i1 %.not2021.i, label %bb.hq, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.bhs = fadd reassoc nsz arcp contract afn <2 x float> %i.bge, %i.bhr ; 2 uses
  switch i32 %3, label %bb.hq [
    i32 3, label %.thread3627.i
    i32 4, label %bb.hp
  ]

.thread3627.i:                                    ; preds = %bb.ho
  %i.bht = load float, ptr %.533833.i, align 4, !tbaa !68
  %i.bhu = getelementptr inbounds nuw [4 x i8], ptr %.533833.i, i64 %i.u
  %i.bhv = load float, ptr %i.bhu, align 4, !tbaa !68
  %i.bhw = insertelement <2 x float> poison, float %i.bht, i64 0
  %i.bhx = insertelement <2 x float> %i.bhw, float %i.bhv, i64 1
  %i.bhy = fmul fast <2 x float> %i.bhx, %17
  %i.bhz = fadd fast <2 x float> %i.bhy, %i.bhr
  %i.bia = getelementptr inbounds nuw i8, ptr %.533833.i, i64 4
  br label %bb.hq

bb.hp:                                            ; preds = %bb.ho
  %i.bib = load float, ptr %.533833.i, align 4, !tbaa !68
  %i.bic = fmul fast float %i.bib, %10
  %i.bid = insertelement <2 x float> poison, float %i.bic, i64 0
  %i.bie = shufflevector <2 x float> %i.bid, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bif = fadd fast <2 x float> %i.bie, %i.bhs
  %i.big = getelementptr inbounds nuw i8, ptr %.533833.i, i64 4
  br label %bb.hq

bb.hq:                                            ; preds = %bb.hp, %.thread3627.i, %bb.ho, %bb.hn
  %.55.i = phi ptr [ %i.big, %bb.hp ], [ %.533833.i, %bb.ho ], [ null, %bb.hn ], [ %i.bia, %.thread3627.i ] ; 2 uses
  %i.bih = phi <2 x float> [ %i.bif, %bb.hp ], [ %i.bhs, %bb.ho ], [ %i.bhr, %bb.hn ], [ %i.bhz, %.thread3627.i ] ; 2 uses
  %i.bii = extractelement <2 x float> %i.bih, i64 0
  %i.bij = fmul fast float %i.bii, %9
  %i.bik = extractelement <2 x float> %i.bih, i64 1
  %i.bil = fmul fast float %i.bik, %9             ; 2 uses
  store float %i.bij, ptr %.719593830.i, align 4, !tbaa !68
  br i1 %.not2019.i, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.bim = getelementptr inbounds nuw i8, ptr %.719593830.i, i64 4
  store float %i.bil, ptr %i.bim, align 4, !tbaa !68
  %i.bin = getelementptr inbounds nuw [4 x i8], ptr %.719593830.i, i64 %i.l
  br label %bb.ht

bb.hs:                                            ; preds = %bb.hq
  %i.bio = getelementptr inbounds nuw [4 x i8], ptr %.719593830.i, i64 %i.l
  store float %i.bil, ptr %i.bio, align 4, !tbaa !68
  %i.bip = getelementptr inbounds nuw i8, ptr %.719593830.i, i64 4
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %bb.hr
  %.81960.i = phi ptr [ %i.bin, %bb.hr ], [ %i.bip, %bb.hs ]
  %i.biq = getelementptr inbounds nuw i8, ptr %.1419073832.i, i64 8 ; 2 uses
  %i.bir = add nuw nsw i32 %.319463831.i, 1       ; 2 uses
  %exitcond3926.not.i = icmp eq i32 %i.bir, %7
  br i1 %exitcond3926.not.i, label %._crit_edge3835.i, label %bb.hn, !llvm.loop !742

._crit_edge3835.i:                                ; preds = %bb.ht, %.preheader3681.i
  %.141907.lcssa.i = phi ptr [ %.131906.lcssa.i, %.preheader3681.i ], [ %i.biq, %bb.ht ] ; 2 uses
  %.53.lcssa.i = phi ptr [ %.50.lcssa.i, %.preheader3681.i ], [ %.55.i, %bb.ht ] ; 2 uses
  %indvars.iv.next3928.i = add nuw nsw i64 %indvars.iv3927.i, 2 ; 3 uses
  %i.bis = icmp slt i64 %indvars.iv.next3928.i, %invariant.op3996.i
  br i1 %i.bis, label %bb.fv, label %.preheader3680.loopexit.i, !llvm.loop !743

bb.hu:                                            ; preds = %._crit_edge3881.i, %.lr.ph3887.i
  %indvars.iv3931.i = phi i64 [ %i.azb, %.lr.ph3887.i ], [ %indvars.iv.next3932.i, %._crit_edge3881.i ] ; 4 uses
  %.563886.i = phi ptr [ %.40.lcssa.i, %.lr.ph3887.i ], [ %.66.lcssa.i, %._crit_edge3881.i ] ; 4 uses
  %.1519083885.i = phi ptr [ %.101903.lcssa.i, %.lr.ph3887.i ], [ %.191912.lcssa.i, %._crit_edge3881.i ] ; 2 uses
  %i.bit = load ptr, ptr %2, align 8, !tbaa !18   ; 2 uses
  br i1 %.not2002.i, label %bb.hw, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.biu = getelementptr inbounds nuw [4 x i8], ptr %i.bit, i64 %i.ayn
  %i.biv = add nsw i64 %indvars.iv3931.i, %i.ayq  ; 2 uses
  %i.biw = mul nsw i64 %i.biv, %i.azc
  %i.bix = getelementptr inbounds [4 x i8], ptr %i.biu, i64 %i.biw
  br label %bb.hx

bb.hw:                                            ; preds = %bb.hu
  %i.biy = add nsw i64 %indvars.iv3931.i, %i.ayq  ; 2 uses
  %i.biz = mul i64 %i.biy, %i.l
  %i.bja = getelementptr inbounds nuw [4 x i8], ptr %i.bit, i64 %i.biz
  %i.bjb = getelementptr inbounds [4 x i8], ptr %i.bja, i64 %i.aym
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hw, %bb.hv
  %.pre-phi3935.i = phi i64 [ %i.biy, %bb.hw ], [ %i.biv, %bb.hv ] ; 2 uses
  %.01856.i = phi ptr [ %i.bjb, %bb.hw ], [ %i.bix, %bb.hv ] ; 2 uses
  %i.bjc = load ptr, ptr %8, align 8, !tbaa !18
  %i.bjd = getelementptr inbounds nuw [4 x i8], ptr %i.bjc, i64 %.pre-phi3935.i
  %i.bje = load float, ptr %i.bjd, align 4, !tbaa !68 ; 3 uses
  %i.bjf = insertelement <4 x float> poison, float %i.bje, i64 0
  %i.bjg = shufflevector <4 x float> %i.bjf, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %.not2003.i = icmp eq ptr %.563886.i, null
  br i1 %.not2003.i, label %.thread3643.i, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  br i1 %i.ayo, label %.thread3631.i, label %bb.hz

.thread3631.i:                                    ; preds = %bb.hy
  %i.bjh = load float, ptr %.563886.i, align 4, !tbaa !68
  %i.bji = fmul fast float %i.bjh, %10            ; 2 uses
  %i.bjj = insertelement <4 x float> poison, float %i.bji, i64 0
  %i.bjk = shufflevector <4 x float> %i.bjj, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.thread3643.i

bb.hz:                                            ; preds = %bb.hy
  br i1 %or.cond31.i, label %bb.ia, label %bb.ib

bb.ia:                                            ; preds = %bb.hz
  %i.bjl = load ptr, ptr %1, align 8, !tbaa !18
  %i.bjm = getelementptr inbounds [4 x i8], ptr %i.bjl, i64 %i.ayq
  %i.bjn = getelementptr inbounds nuw [4 x i8], ptr %i.bjm, i64 %indvars.iv3931.i ; 2 uses
  %i.bjo = load float, ptr %i.bjn, align 4, !tbaa !68
  %i.bjp = fmul fast float %i.bjo, %10            ; 2 uses
  %i.bjq = insertelement <4 x float> poison, float %i.bjp, i64 0
  %i.bjr = shufflevector <4 x float> %i.bjq, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.thread3643.i

bb.ib:                                            ; preds = %bb.hz
  switch i32 %3, label %.thread3643.i [
    i32 3, label %bb.ic
    i32 4, label %bb.id
  ]

bb.ic:                                            ; preds = %bb.ib
  %i.bjs = load ptr, ptr %1, align 8, !tbaa !18
  %i.bjt = mul i64 %.pre-phi3935.i, %i.u
  %i.bju = getelementptr inbounds nuw [4 x i8], ptr %i.bjs, i64 %i.bjt
  %i.bjv = getelementptr inbounds [4 x i8], ptr %i.bju, i64 %i.aym
  br label %.thread3643.i

bb.id:                                            ; preds = %bb.ib
  %i.bjw = load ptr, ptr %1, align 8, !tbaa !18
end_hunk_1

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_avx2?download=true
inline.NumInlined: 22
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZN4ncnn37unpack_output_tile_int32_to_fp32_avx2ERKNS_3MatES2_RS0_iiiiiS2_ffi:bb.a
bb.br:                                            ; preds = %bb.bp
  %.sroa.0524.0.vec.extract.i = extractelement <8 x float> %.51207.i, i64 0
  store float %.sroa.0524.0.vec.extract.i, ptr %.918631581.i, align 4, !tbaa !147
  %.sroa.11.32.vec.extract.i = extractelement <8 x float> %.51213.i, i64 0
  %i.yx = getelementptr inbounds nuw i8, ptr %.918631581.i, i64 4
  store float %.sroa.11.32.vec.extract.i, ptr %i.yx, align 4, !tbaa !147
  %i.yy = getelementptr inbounds nuw [4 x i8], ptr %.918631581.i, i64 %i.k
  %i.yz = shufflevector <8 x float> %.51207.i, <8 x float> %.51213.i, <2 x i32> <i32 1, i32 9>
  store <2 x float> %i.yz, ptr %i.yy, align 4, !tbaa !147
  %i.za = getelementptr inbounds nuw i8, ptr %.918631581.i, i64 %.idx2041.i
  %i.zb = shufflevector <8 x float> %.51207.i, <8 x float> %.51213.i, <2 x i32> <i32 2, i32 10>
  store <2 x float> %i.zb, ptr %i.za, align 4, !tbaa !147
  %i.zc = getelementptr inbounds nuw i8, ptr %.918631581.i, i64 %.idx2042.i
  %i.zd = shufflevector <8 x float> %.51207.i, <8 x float> %.51213.i, <2 x i32> <i32 3, i32 11>
  store <2 x float> %i.zd, ptr %i.zc, align 4, !tbaa !147
  %.sroa.0524.16.vec.extract.i = extractelement <8 x float> %.51207.i, i64 4
  %i.ze = getelementptr inbounds nuw i8, ptr %.918631581.i, i64 %.idx2043.i ; 2 uses
  store float %.sroa.0524.16.vec.extract.i, ptr %i.ze, align 4, !tbaa !147
  %.sroa.11.48.vec.extract.i = extractelement <8 x float> %.51213.i, i64 4
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 4
  store float %.sroa.11.48.vec.extract.i, ptr %i.zf, align 4, !tbaa !147
  %i.zg = getelementptr inbounds nuw i8, ptr %.918631581.i, i64 %.idx2044.i
  %i.zh = shufflevector <8 x float> %.51207.i, <8 x float> %.51213.i, <2 x i32> <i32 5, i32 13>
  store <2 x float> %i.zh, ptr %i.zg, align 4, !tbaa !147
  %i.zi = getelementptr inbounds nuw i8, ptr %.918631581.i, i64 %.idx2045.i
  %i.zj = shufflevector <8 x float> %.51207.i, <8 x float> %.51213.i, <2 x i32> <i32 6, i32 14>
  store <2 x float> %i.zj, ptr %i.zi, align 4, !tbaa !147
  %i.zk = getelementptr inbounds nuw i8, ptr %.918631581.i, i64 %.idx2046.i
  %i.zl = shufflevector <8 x float> %.51207.i, <8 x float> %.51213.i, <2 x i32> <i32 7, i32 15>
  store <2 x float> %i.zl, ptr %i.zk, align 4, !tbaa !147
  %i.zm = getelementptr inbounds nuw i8, ptr %.918631581.i, i64 8
  br label %.thread1308.i

.thread1308.i:                                    ; preds = %bb.br, %bb.bq, %.thread1305.i, %bb.bp, %bb.bo
  %.121866.i = phi ptr [ %i.yq, %bb.bo ], [ %i.zm, %bb.br ], [ %.918631581.i, %bb.bp ], [ %i.ys, %.thread1305.i ], [ %i.yw, %bb.bq ] ; 2 uses
  %i.zn = add nuw nsw i32 %.218731580.i, 2        ; 3 uses
  %i.zo = or disjoint i32 %i.zn, 1
  %i.zp = icmp slt i32 %i.zo, %7
  br i1 %i.zp, label %.lr.ph1584.i, label %.preheader1556.i, !llvm.loop !252

.lr.ph1595.i:                                     ; preds = %.preheader1556.i, %.thread1324.i
  %.161594.i = phi ptr [ %.19.i, %.thread1324.i ], [ %.12.lcssa.i, %.preheader1556.i ] ; 11 uses
  %.418341593.i = phi ptr [ %i.zs, %.thread1324.i ], [ %.31833.lcssa.i, %.preheader1556.i ] ; 2 uses
  %.1318671592.i = phi ptr [ %.161870.i, %.thread1324.i ], [ %.91863.lcssa.i, %.preheader1556.i ] ; 17 uses
  %.318741591.i = phi i32 [ %i.aaz, %.thread1324.i ], [ %.21873.lcssa.i, %.preheader1556.i ]
  %.159311590.i = phi <8 x float> [ %.18934.i, %.thread1324.i ], [ %.11927.lcssa.i, %.preheader1556.i ] ; 6 uses
  %i.zq = load <8 x i32>, ptr %.418341593.i, align 32, !tbaa !17
  %i.zr = sitofp fast <8 x i32> %i.zq to <8 x float>
  %i.zs = getelementptr inbounds nuw i8, ptr %.418341593.i, i64 32 ; 2 uses
  %i.zt = fmul fast <8 x float> %i.ct, %i.zr      ; 6 uses
  %.not1994.i = icmp eq ptr %.161594.i, null
  br i1 %.not1994.i, label %.thread1317.i, label %bb.bs

bb.bs:                                            ; preds = %.lr.ph1595.i
  br i1 %i.ad, label %.thread1310.i, label %bb.bt

.thread1310.i:                                    ; preds = %bb.bs
  %i.zu = fadd fast <8 x float> %i.zt, %.159311590.i
  br label %.thread1317.i

bb.bt:                                            ; preds = %bb.bs
  br i1 %or.cond.i, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.zv = fadd fast <8 x float> %i.zt, %.159311590.i
  br label %.thread1317.i

bb.bv:                                            ; preds = %bb.bt
  switch i32 %3, label %.thread1317.i [
    i32 3, label %bb.bw
    i32 4, label %bb.cb
  ]

bb.bw:                                            ; preds = %bb.bv
  switch i32 %i.v, label %bb.bz [
    i32 8, label %bb.bx
    i32 4, label %bb.by
  ]

bb.bx:                                            ; preds = %bb.bw
  %i.zw = load <8 x float>, ptr %.161594.i, align 1, !tbaa !17
  br label %bb.ca

bb.by:                                            ; preds = %bb.bw
  %i.zx = load <4 x float>, ptr %.161594.i, align 1, !tbaa !17
  %i.zy = getelementptr inbounds nuw i8, ptr %.161594.i, i64 %.idx2032.i
  %i.zz = load <4 x float>, ptr %i.zy, align 1, !tbaa !17
  %i.aaa = shufflevector <4 x float> %i.zx, <4 x float> %i.zz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bw
  %i.aab = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %.161594.i, <8 x i32> %i.ar, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by, %bb.bx
  %.sink1859.i = phi i64 [ 16, %bb.by ], [ 4, %bb.bz ], [ 32, %bb.bx ]
  %.16932.i = phi nsz <8 x float> [ %i.aaa, %bb.by ], [ %i.aab, %bb.bz ], [ %i.zw, %bb.bx ] ; 2 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %.161594.i, i64 %.sink1859.i
  %i.aad = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.16932.i, <8 x float> nofpclass(nan inf) %i.ai, <8 x float> nofpclass(nan inf) %i.zt)
  br label %.thread1317.i

bb.cb:                                            ; preds = %bb.bv
  %i.aae = load float, ptr %.161594.i, align 4, !tbaa !147
  %i.aaf = fmul fast float %i.aae, %10
  %i.aag = insertelement <8 x float> poison, float %i.aaf, i64 0
  %i.aah = shufflevector <8 x float> %i.aag, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.aai = fadd fast <8 x float> %i.aah, %i.zt
  %i.aaj = getelementptr inbounds nuw i8, ptr %.161594.i, i64 4
  br label %.thread1317.i

.thread1317.i:                                    ; preds = %bb.cb, %bb.ca, %bb.bv, %bb.bu, %.thread1310.i, %.lr.ph1595.i
  %.31218.i = phi nsz <8 x float> [ %i.zt, %.lr.ph1595.i ], [ %i.aai, %bb.cb ], [ %i.zt, %bb.bv ], [ %i.aad, %bb.ca ], [ %i.zu, %.thread1310.i ], [ %i.zv, %bb.bu ]
  %.18934.i = phi nsz <8 x float> [ %.159311590.i, %.lr.ph1595.i ], [ %i.aah, %bb.cb ], [ %.159311590.i, %bb.bv ], [ %.16932.i, %bb.ca ], [ %.159311590.i, %.thread1310.i ], [ %.159311590.i, %bb.bu ]
  %.19.i = phi ptr [ null, %.lr.ph1595.i ], [ %i.aaj, %bb.cb ], [ %.161594.i, %bb.bv ], [ %i.aac, %bb.ca ], [ %.161594.i, %.thread1310.i ], [ %.161594.i, %bb.bu ] ; 2 uses
  %i.aak = fmul fast <8 x float> %.31218.i, %i.an ; 12 uses
  br i1 %.not1992.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %.thread1317.i
  store <8 x float> %i.aak, ptr %.1318671592.i, align 1, !tbaa !17
  %i.aal = getelementptr inbounds nuw [4 x i8], ptr %.1318671592.i, i64 %i.k
  br label %.thread1324.i

bb.cd:                                            ; preds = %.thread1317.i
  switch i32 %i.b, label %.thread1324.i [
    i32 8, label %.thread1321.i
    i32 4, label %bb.ce
    i32 1, label %bb.cf
  ]

.thread1321.i:                                    ; preds = %bb.cd
  store <8 x float> %i.aak, ptr %.1318671592.i, align 1, !tbaa !17
  %i.aam = getelementptr inbounds nuw i8, ptr %.1318671592.i, i64 32
  br label %.thread1324.i

bb.ce:                                            ; preds = %bb.cd
  %i.aan = shufflevector <8 x float> %i.aak, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.aan, ptr %.1318671592.i, align 16, !tbaa !17
  %i.aao = getelementptr inbounds nuw i8, ptr %.1318671592.i, i64 %.idx2043.i
  %i.aap = shufflevector <8 x float> %i.aak, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x float> %i.aap, ptr %i.aao, align 16, !tbaa !17
  %i.aaq = getelementptr inbounds nuw i8, ptr %.1318671592.i, i64 16
  br label %.thread1324.i

bb.cf:                                            ; preds = %bb.cd
  %.sroa.0513.0.vec.extract.i = extractelement <8 x float> %i.aak, i64 0
  store float %.sroa.0513.0.vec.extract.i, ptr %.1318671592.i, align 4, !tbaa !147
  %.sroa.0513.4.vec.extract.i = extractelement <8 x float> %i.aak, i64 1
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %.1318671592.i, i64 %i.k
  store float %.sroa.0513.4.vec.extract.i, ptr %i.aar, align 4, !tbaa !147
  %.sroa.0513.8.vec.extract.i = extractelement <8 x float> %i.aak, i64 2
  %i.aas = getelementptr inbounds nuw i8, ptr %.1318671592.i, i64 %.idx2041.i
  store float %.sroa.0513.8.vec.extract.i, ptr %i.aas, align 4, !tbaa !147
  %.sroa.0513.12.vec.extract.i = extractelement <8 x float> %i.aak, i64 3
  %i.aat = getelementptr inbounds nuw i8, ptr %.1318671592.i, i64 %.idx2042.i
  store float %.sroa.0513.12.vec.extract.i, ptr %i.aat, align 4, !tbaa !147
  %.sroa.0513.16.vec.extract.i = extractelement <8 x float> %i.aak, i64 4
  %i.aau = getelementptr inbounds nuw i8, ptr %.1318671592.i, i64 %.idx2043.i
  store float %.sroa.0513.16.vec.extract.i, ptr %i.aau, align 4, !tbaa !147
  %.sroa.0513.20.vec.extract.i = extractelement <8 x float> %i.aak, i64 5
  %i.aav = getelementptr inbounds nuw i8, ptr %.1318671592.i, i64 %.idx2044.i
  store float %.sroa.0513.20.vec.extract.i, ptr %i.aav, align 4, !tbaa !147
  %.sroa.0513.24.vec.extract.i = extractelement <8 x float> %i.aak, i64 6
  %i.aaw = getelementptr inbounds nuw i8, ptr %.1318671592.i, i64 %.idx2045.i
  store float %.sroa.0513.24.vec.extract.i, ptr %i.aaw, align 4, !tbaa !147
  %.sroa.0513.28.vec.extract.i = extractelement <8 x float> %i.aak, i64 7
  %i.aax = getelementptr inbounds nuw i8, ptr %.1318671592.i, i64 %.idx2046.i
  store float %.sroa.0513.28.vec.extract.i, ptr %i.aax, align 4, !tbaa !147
  %i.aay = getelementptr inbounds nuw i8, ptr %.1318671592.i, i64 4
  br label %.thread1324.i

.thread1324.i:                                    ; preds = %bb.cf, %bb.ce, %.thread1321.i, %bb.cd, %bb.cc
  %.161870.i = phi ptr [ %i.aal, %bb.cc ], [ %i.aay, %bb.cf ], [ %.1318671592.i, %bb.cd ], [ %i.aam, %.thread1321.i ], [ %i.aaq, %bb.ce ]
  %i.aaz = add nuw nsw i32 %.318741591.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.aaz, %7
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph1595.i, !llvm.loop !253

._crit_edge.i:                                    ; preds = %.thread1324.i, %.preheader1556.i
  %.41834.lcssa.i = phi ptr [ %.31833.lcssa.i, %.preheader1556.i ], [ %i.zs, %.thread1324.i ] ; 2 uses
  %.16.lcssa.i = phi ptr [ %.12.lcssa.i, %.preheader1556.i ], [ %.19.i, %.thread1324.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 3 uses
  %i.aba = or disjoint i64 %indvars.iv.next.i, 7
  %i.abb = icmp samesign ult i64 %i.aba, %i.at
  br i1 %i.abb, label %bb.b, label %.preheader1555.loopexit.i, !llvm.loop !254

.preheader1551.loopexit.i:                        ; preds = %._crit_edge1645.i
  %i.abc = trunc nuw nsw i64 %indvars.iv.next1780.i to i32
  br label %.preheader1551.i

.preheader1551.i:                                 ; preds = %.preheader1551.loopexit.i, %.preheader1555.i
  %.11851.lcssa.i = phi i32 [ %.01850.lcssa.i, %.preheader1555.i ], [ %i.abc, %.preheader1551.loopexit.i ] ; 3 uses
  %.51835.lcssa.i = phi ptr [ %.01830.lcssa.i, %.preheader1555.i ], [ %.91839.lcssa.i, %.preheader1551.loopexit.i ] ; 2 uses
  %.20.lcssa.i = phi ptr [ %.01821.lcssa.i, %.preheader1555.i ], [ %.36.lcssa.i, %.preheader1551.loopexit.i ] ; 2 uses
  %i.abd = or disjoint i32 %.11851.lcssa.i, 1
  %i.abe = icmp slt i32 %i.abd, %5
  br i1 %i.abe, label %.lr.ph1700.i, label %.preheader1547.i

.lr.ph1700.i:                                     ; preds = %.preheader1551.i
  %.not1950.i = icmp eq i32 %11, 0                ; 6 uses
  %i.abf = sext i32 %6 to i64                     ; 4 uses
  %i.abg = mul i64 %i.k, %i.abf
  %12 = icmp eq i32 %3, 0                         ; 5 uses
  %13 = add i32 %3, -1
  %or.cond21.i = icmp ult i32 %13, 2              ; 5 uses
  %i.abh = sext i32 %4 to i64                     ; 3 uses
  %i.abi = icmp sgt i32 %7, 7
  %i.abj = insertelement <4 x float> poison, float %10, i64 0
  %i.abk = shufflevector <4 x float> %i.abj, <4 x float> poison, <4 x i32> zeroinitializer ; 10 uses
  %i.abl = fcmp fast oeq float %10, 1.000000e+00  ; 3 uses
  %i.abm = fcmp fast une float %9, 1.000000e+00   ; 2 uses
  %i.abn = insertelement <4 x float> poison, float %9, i64 0
  %i.abo = shufflevector <4 x float> %i.abn, <4 x float> poison, <4 x i32> zeroinitializer ; 5 uses
  %.idx1529.i = shl i64 %i.k, 3                   ; 3 uses
  %.idx1530.i = mul i64 %i.k, 12                  ; 2 uses
  %.idx1531.i = shl i64 %i.k, 4                   ; 5 uses
  %.idx1532.i = mul i64 %i.k, 20
  %.idx1533.i = mul i64 %i.k, 24
  %.idx1534.i = mul i64 %i.k, 28
  %.idx1959.i = shl i64 %i.k, 5                   ; 4 uses
  %or.cond27.i = icmp ult i32 %3, 3
  %i.abp = and i32 %7, -8
  %i.abq = zext nneg i32 %.11851.lcssa.i to i64
  %i.abr = sext i32 %5 to i64
  %i.abs = sext i32 %i.b to i64
  %i.abt = select ninf nsz i1 %i.abm, <4 x float> %i.abo, <4 x float> splat (float 1.000000e+00) ; 2 uses
  %invariant.op1850.i = add nsw i64 %i.abr, -1
  %..idx1529.i = select i1 %.not1950.i, i64 8, i64 %.idx1529.i
  %14 = insertelement <2 x i1> poison, i1 %12, i64 0
  %15 = insertelement <2 x i1> %14, i1 %or.cond21.i, i64 1
  %16 = insertelement <2 x float> poison, float %10, i64 0
  %17 = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.abu = insertelement <2 x float> poison, float %9, i64 0
  %i.abv = shufflevector <2 x float> %i.abu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abw = insertelement <2 x i1> poison, i1 %.not1950.i, i64 0
  %i.abx = shufflevector <2 x i1> %i.abw, <2 x i1> poison, <2 x i32> zeroinitializer
  br label %bb.fn

bb.cg:                                            ; preds = %._crit_edge1645.i, %.lr.ph1651.i
  %indvars.iv1779.i = phi i64 [ %i.by, %.lr.ph1651.i ], [ %indvars.iv.next1780.i, %._crit_edge1645.i ] ; 6 uses
  %.201650.i = phi ptr [ %.01821.lcssa.i, %.lr.ph1651.i ], [ %.36.lcssa.i, %._crit_edge1645.i ] ; 4 uses
  %.518351649.i = phi ptr [ %.01830.lcssa.i, %.lr.ph1651.i ], [ %.91839.lcssa.i, %._crit_edge1645.i ] ; 2 uses
  %i.aby = load ptr, ptr %2, align 8, !tbaa !9    ; 2 uses
  br i1 %.not1960.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.abz = getelementptr inbounds nuw [4 x i8], ptr %i.aby, i64 %i.bg
  %i.aca = add nsw i64 %indvars.iv1779.i, %i.bj
  %i.acb = mul nsw i64 %i.aca, %i.ca
  %i.acc = getelementptr inbounds [4 x i8], ptr %i.abz, i64 %i.acb
  br label %bb.cj

bb.ci:                                            ; preds = %bb.cg
  %i.acd = add nsw i64 %indvars.iv1779.i, %i.bj
  %i.ace = mul i64 %i.acd, %i.k
  %i.acf = getelementptr inbounds nuw [4 x i8], ptr %i.aby, i64 %i.ace
  %i.acg = getelementptr inbounds [4 x i8], ptr %i.acf, i64 %i.bi
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.01875.i = phi ptr [ %i.acc, %bb.ch ], [ %i.acg, %bb.ci ] ; 2 uses
  %i.ach = load ptr, ptr %8, align 8, !tbaa !9
  %i.aci = getelementptr inbounds [4 x i8], ptr %i.ach, i64 %i.bj
  %i.acj = getelementptr inbounds nuw [4 x i8], ptr %i.aci, i64 %indvars.iv1779.i
  %i.ack = load <4 x float>, ptr %i.acj, align 16, !tbaa !17 ; 15 uses
  %.not1961.i = icmp eq ptr %.201650.i, null
  br i1 %.not1961.i, label %.thread1335.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  br i1 %i.bk, label %.thread1326.i, label %bb.cl

.thread1326.i:                                    ; preds = %bb.ck
  %i.acl = load float, ptr %.201650.i, align 4, !tbaa !147
  %i.acm = fmul fast float %i.acl, %10
  %i.acn = insertelement <4 x float> poison, float %i.acm, i64 0
  %i.aco = shufflevector <4 x float> %i.acn, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.thread1335.i

bb.cl:                                            ; preds = %bb.ck
  br i1 %or.cond11.i, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.acp = load ptr, ptr %1, align 8, !tbaa !9
  %i.acq = getelementptr inbounds [4 x i8], ptr %i.acp, i64 %i.bj
  %i.acr = getelementptr inbounds nuw [4 x i8], ptr %i.acq, i64 %indvars.iv1779.i ; 2 uses
  %i.acs = load <4 x float>, ptr %i.acr, align 1, !tbaa !17
  %i.act = fmul fast <4 x float> %i.acs, %i.bp
  br label %.thread1335.i

bb.cn:                                            ; preds = %bb.cl
  switch i32 %3, label %.thread1335.i [
    i32 3, label %bb.co
    i32 4, label %bb.cp
  ]

bb.co:                                            ; preds = %bb.cn
  %i.acu = load ptr, ptr %1, align 8, !tbaa !9
  %i.acv = add nsw i64 %indvars.iv1779.i, %i.bj
  %i.acw = mul i64 %i.acv, %i.t
  %i.acx = getelementptr inbounds nuw [4 x i8], ptr %i.acu, i64 %i.acw
  %i.acy = getelementptr inbounds [4 x i8], ptr %i.acx, i64 %i.bn
  br label %.thread1335.i

bb.cp:                                            ; preds = %bb.cn
  %i.acz = load ptr, ptr %1, align 8, !tbaa !9
  %i.ada = getelementptr inbounds [4 x i8], ptr %i.acz, i64 %i.bf
  br label %.thread1335.i

.thread1335.i:                                    ; preds = %bb.cp, %bb.co, %bb.cn, %bb.cm, %.thread1326.i, %bb.cj
  %.21184.i = phi nsz <4 x float> [ zeroinitializer, %bb.cj ], [ zeroinitializer, %bb.cp ], [ zeroinitializer, %bb.cn ], [ zeroinitializer, %bb.co ], [ %i.aco, %.thread1326.i ], [ %i.act, %bb.cm ] ; 2 uses
  %.23.i = phi ptr [ null, %bb.cj ], [ %i.ada, %bb.cp ], [ %.201650.i, %bb.cn ], [ %i.acy, %bb.co ], [ %.201650.i, %.thread1326.i ], [ %i.acr, %bb.cm ] ; 2 uses
  br i1 %i.bq, label %.lr.ph1611.i, label %.preheader1554.i

.preheader1554.i:                                 ; preds = %bb.dq, %.thread1335.i
  %.31185.lcssa.i = phi <4 x float> [ %.21184.i, %.thread1335.i ], [ %.71189.i, %bb.dq ] ; 2 uses
  %.01906.lcssa.i = phi i32 [ 0, %.thread1335.i ], [ %i.bx, %bb.dq ] ; 3 uses
  %.11876.lcssa.i = phi ptr [ %.01875.i, %.thread1335.i ], [ %.31878.i, %bb.dq ] ; 2 uses
  %.61836.lcssa.i = phi ptr [ %.518351649.i, %.thread1335.i ], [ %i.ams, %bb.dq ] ; 2 uses
  %.24.lcssa.i = phi ptr [ %.23.i, %.thread1335.i ], [ %.27.i, %bb.dq ] ; 2 uses
  %i.adb = or disjoint i32 %.01906.lcssa.i, 3
  %i.adc = icmp slt i32 %i.adb, %7
  br i1 %i.adc, label %.lr.ph1622.i, label %.preheader1553.i

.lr.ph1611.i:                                     ; preds = %.thread1335.i, %bb.dq
  %.241610.i = phi ptr [ %.27.i, %bb.dq ], [ %.23.i, %.thread1335.i ] ; 22 uses
  %.618361609.i = phi ptr [ %i.ams, %bb.dq ], [ %.518351649.i, %.thread1335.i ] ; 9 uses
  %.118761608.i = phi ptr [ %.31878.i, %bb.dq ], [ %.01875.i, %.thread1335.i ] ; 38 uses
  %.019061607.i = phi i32 [ %i.amt, %bb.dq ], [ 0, %.thread1335.i ]
  %.311851606.i = phi <4 x float> [ %.71189.i, %bb.dq ], [ %.21184.i, %.thread1335.i ] ; 20 uses
  %i.add = load <4 x i32>, ptr %.618361609.i, align 16, !tbaa !17
  %i.ade = sitofp fast <4 x i32> %i.add to <4 x float> ; 2 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %.618361609.i, i64 16
  %i.adg = load <4 x i32>, ptr %i.adf, align 16, !tbaa !17
  %i.adh = sitofp fast <4 x i32> %i.adg to <4 x float> ; 2 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %.618361609.i, i64 32
  %i.adj = load <4 x i32>, ptr %i.adi, align 16, !tbaa !17
  %i.adk = sitofp fast <4 x i32> %i.adj to <4 x float> ; 2 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %.618361609.i, i64 48
  %i.adm = load <4 x i32>, ptr %i.adl, align 16, !tbaa !17
  %i.adn = sitofp fast <4 x i32> %i.adm to <4 x float> ; 2 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %.618361609.i, i64 64
  %i.adp = load <4 x i32>, ptr %i.ado, align 16, !tbaa !17
  %i.adq = getelementptr inbounds nuw i8, ptr %.618361609.i, i64 80
  %i.adr = load <4 x i32>, ptr %i.adq, align 16, !tbaa !17
  %i.ads = getelementptr inbounds nuw i8, ptr %.618361609.i, i64 96
  %i.adt = load <4 x i32>, ptr %i.ads, align 16, !tbaa !17
  %i.adu = getelementptr inbounds nuw i8, ptr %.618361609.i, i64 112
  %i.adv = load <4 x i32>, ptr %i.adu, align 16, !tbaa !17
  %i.adw = sitofp <4 x i32> %i.adp to <4 x float>
  %i.adx = shufflevector <4 x float> %i.adw, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.ady = sitofp <4 x i32> %i.adr to <4 x float>
  %i.adz = shufflevector <4 x float> %i.ady, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.aea = sitofp <4 x i32> %i.adt to <4 x float>
  %i.aeb = shufflevector <4 x float> %i.aea, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.aec = sitofp <4 x i32> %i.adv to <4 x float>
  %i.aed = shufflevector <4 x float> %i.aec, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.aee = shufflevector <4 x float> %i.ade, <4 x float> %i.aeb, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.aef = shufflevector <4 x float> %i.ade, <4 x float> %i.aeb, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.aeg = shufflevector <4 x float> %i.adh, <4 x float> %i.aed, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.aeh = shufflevector <4 x float> %i.adh, <4 x float> %i.aed, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.aei = shufflevector <4 x float> %i.adk, <4 x float> %i.adx, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.aej = shufflevector <4 x float> %i.adk, <4 x float> %i.adx, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.aek = shufflevector <4 x float> %i.adn, <4 x float> %i.adz, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ael = shufflevector <4 x float> %i.adn, <4 x float> %i.adz, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.aem = shufflevector <4 x float> %i.aee, <4 x float> %i.aei, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aen = shufflevector <4 x float> %i.aee, <4 x float> %i.aei, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.aeo = shufflevector <4 x float> %i.aej, <4 x float> %i.aef, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aep = shufflevector <4 x float> %i.aej, <4 x float> %i.aef, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.aeq = shufflevector <4 x float> %i.aeg, <4 x float> %i.aek, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aer = shufflevector <4 x float> %i.aeg, <4 x float> %i.aek, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.aes = shufflevector <4 x float> %i.ael, <4 x float> %i.aeh, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aet = shufflevector <4 x float> %i.ael, <4 x float> %i.aeh, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.aeu = shufflevector <4 x float> %i.aen, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.aev = shufflevector <4 x float> %i.aep, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.aew = shufflevector <4 x float> %i.aer, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.aex = shufflevector <4 x float> %i.aet, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.aey = fmul fast <4 x float> %i.ack, %i.aem   ; 7 uses
  %i.aez = fmul fast <4 x float> %i.aeu, %i.ack   ; 7 uses
  %i.afa = fmul fast <4 x float> %i.ack, %i.aeo   ; 7 uses
  %i.afb = fmul fast <4 x float> %i.aev, %i.ack   ; 7 uses
  %i.afc = fmul fast <4 x float> %i.ack, %i.aeq   ; 7 uses
  %i.afd = fmul fast <4 x float> %i.aew, %i.ack   ; 7 uses
  %i.afe = fmul fast <4 x float> %i.ack, %i.aes   ; 7 uses
  %i.aff = fmul fast <4 x float> %i.aex, %i.ack   ; 7 uses
  %.not1977.i = icmp eq ptr %.241610.i, null
  br i1 %.not1977.i, label %.thread1359.i, label %bb.cq

bb.cq:                                            ; preds = %.lr.ph1611.i
  br i1 %i.bk, label %.thread1338.i, label %bb.cr

.thread1338.i:                                    ; preds = %bb.cq
  %i.afg = fadd fast <4 x float> %i.aey, %.311851606.i
  %i.afh = fadd fast <4 x float> %i.aez, %.311851606.i
  %i.afi = fadd fast <4 x float> %i.afa, %.311851606.i
  %i.afj = fadd fast <4 x float> %i.afb, %.311851606.i
  %i.afk = fadd fast <4 x float> %i.afc, %.311851606.i
  %i.afl = fadd fast <4 x float> %i.afd, %.311851606.i
  %i.afm = fadd fast <4 x float> %i.afe, %.311851606.i
  %i.afn = fadd fast <4 x float> %i.aff, %.311851606.i
  br label %.thread1359.i

bb.cr:                                            ; preds = %bb.cq
  br i1 %or.cond11.i, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.afo = fadd fast <4 x float> %i.aey, %.311851606.i
  %i.afp = fadd fast <4 x float> %i.aez, %.311851606.i
  %i.afq = fadd fast <4 x float> %i.afa, %.311851606.i
  %i.afr = fadd fast <4 x float> %i.afb, %.311851606.i
  %i.afs = fadd fast <4 x float> %i.afc, %.311851606.i
  %i.aft = fadd fast <4 x float> %i.afd, %.311851606.i
  %i.afu = fadd fast <4 x float> %i.afe, %.311851606.i
  %i.afv = fadd fast <4 x float> %i.aff, %.311851606.i
  br label %.thread1359.i

bb.ct:                                            ; preds = %bb.cr
  switch i32 %3, label %.thread1359.i [
    i32 3, label %bb.cu
    i32 4, label %bb.dg
  ]

bb.cu:                                            ; preds = %bb.ct
  %i.afw = load <4 x float>, ptr %.241610.i, align 1, !tbaa !17 ; 3 uses
  br i1 %i.br, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.afx = getelementptr inbounds nuw i8, ptr %.241610.i, i64 16
  %i.afy = load <4 x float>, ptr %i.afx, align 1, !tbaa !17
  %i.afz = getelementptr inbounds nuw i8, ptr %.241610.i, i64 32
  %i.aga = load <4 x float>, ptr %i.afz, align 1, !tbaa !17
  %i.agb = getelementptr inbounds nuw i8, ptr %.241610.i, i64 48
  %i.agc = load <4 x float>, ptr %i.agb, align 1, !tbaa !17
end_hunk_0
begin_hunk_1_@_ZN4ncnn37unpack_output_tile_int32_to_fp32_avx2ERKNS_3MatES2_RS0_iiiiiS2_ffi:bb.a
  br i1 %i.aua, label %.lr.ph1633.i, label %.preheader1552.i, !llvm.loop !257

.lr.ph1644.i:                                     ; preds = %.preheader1552.i, %bb.fm
  %.361643.i = phi ptr [ %.39.i, %bb.fm ], [ %.32.lcssa.i, %.preheader1552.i ] ; 12 uses
  %.918391642.i = phi ptr [ %i.avh, %bb.fm ], [ %.81838.lcssa.i, %.preheader1552.i ] ; 2 uses
  %.1018851641.i = phi ptr [ %.121887.i, %bb.fm ], [ %.71882.lcssa.i, %.preheader1552.i ] ; 10 uses
  %.319091640.i = phi i32 [ %i.avi, %bb.fm ], [ %.21908.lcssa.i, %.preheader1552.i ]
  %.1611981639.i = phi <4 x float> [ %.191201.i, %bb.fm ], [ %.121194.lcssa.i, %.preheader1552.i ] ; 6 uses
  %i.aub = load <4 x i32>, ptr %.918391642.i, align 16, !tbaa !17
  %i.auc = sitofp fast <4 x i32> %i.aub to <4 x float>
  %i.aud = fmul fast <4 x float> %i.ack, %i.auc   ; 6 uses
  %.not1962.i = icmp eq ptr %.361643.i, null
  br i1 %.not1962.i, label %.thread1417.i, label %bb.fa

bb.fa:                                            ; preds = %.lr.ph1644.i
  br i1 %i.bk, label %.thread1410.i, label %bb.fb

.thread1410.i:                                    ; preds = %bb.fa
  %i.aue = fadd fast <4 x float> %i.aud, %.1611981639.i
  br label %.thread1417.i

bb.fb:                                            ; preds = %bb.fa
  br i1 %or.cond11.i, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.auf = fadd fast <4 x float> %i.aud, %.1611981639.i
  br label %.thread1417.i

bb.fd:                                            ; preds = %bb.fb
  switch i32 %3, label %.thread1417.i [
    i32 3, label %bb.fe
    i32 4, label %bb.fi
  ]

bb.fe:                                            ; preds = %bb.fd
  br i1 %i.br, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.aug = load <4 x float>, ptr %.361643.i, align 1, !tbaa !17
  br label %bb.fh

bb.fg:                                            ; preds = %bb.fe
  %i.auh = load float, ptr %.361643.i, align 4, !tbaa !147
  %i.aui = getelementptr inbounds nuw [4 x i8], ptr %.361643.i, i64 %i.t
  %i.auj = load float, ptr %i.aui, align 4, !tbaa !147
  %i.auk = getelementptr inbounds nuw i8, ptr %.361643.i, i64 %.idx1978.i
  %i.aul = load float, ptr %i.auk, align 4, !tbaa !147
  %i.aum = getelementptr inbounds nuw i8, ptr %.361643.i, i64 %.idx1979.i
  %i.aun = load float, ptr %i.aum, align 4, !tbaa !147
  %i.auo = insertelement <4 x float> poison, float %i.auh, i64 0
  %i.aup = insertelement <4 x float> %i.auo, float %i.auj, i64 1
  %i.auq = insertelement <4 x float> %i.aup, float %i.aul, i64 2
  %i.aur = insertelement <4 x float> %i.auq, float %i.aun, i64 3
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  %.sink1863.i = phi i64 [ 4, %bb.fg ], [ 16, %bb.ff ]
  %.171199.i = phi nsz <4 x float> [ %i.aur, %bb.fg ], [ %i.aug, %bb.ff ] ; 2 uses
  %i.aus = getelementptr inbounds nuw i8, ptr %.361643.i, i64 %.sink1863.i
  %i.aut = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.171199.i, <4 x float> nofpclass(nan inf) %i.bp, <4 x float> nofpclass(nan inf) %i.aud)
  br label %.thread1417.i

bb.fi:                                            ; preds = %bb.fd
  %i.auu = load float, ptr %.361643.i, align 4, !tbaa !147
  %i.auv = fmul fast float %i.auu, %10
  %i.auw = insertelement <4 x float> poison, float %i.auv, i64 0
  %i.aux = shufflevector <4 x float> %i.auw, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.auy = fadd fast <4 x float> %i.aux, %i.aud
  %i.auz = getelementptr inbounds nuw i8, ptr %.361643.i, i64 4
  br label %.thread1417.i

.thread1417.i:                                    ; preds = %bb.fi, %bb.fh, %bb.fd, %bb.fc, %.thread1410.i, %.lr.ph1644.i
  %.191201.i = phi nsz <4 x float> [ %.1611981639.i, %.lr.ph1644.i ], [ %i.aux, %bb.fi ], [ %.1611981639.i, %bb.fd ], [ %.171199.i, %bb.fh ], [ %.1611981639.i, %.thread1410.i ], [ %.1611981639.i, %bb.fc ]
  %.31067.i = phi nsz <4 x float> [ %i.aud, %.lr.ph1644.i ], [ %i.auy, %bb.fi ], [ %i.aud, %bb.fd ], [ %i.aut, %bb.fh ], [ %i.aue, %.thread1410.i ], [ %i.auf, %bb.fc ]
  %.39.i = phi ptr [ null, %.lr.ph1644.i ], [ %i.auz, %bb.fi ], [ %.361643.i, %bb.fd ], [ %i.aus, %bb.fh ], [ %.361643.i, %.thread1410.i ], [ %.361643.i, %bb.fc ] ; 2 uses
  %i.ava = fmul fast <4 x float> %.31067.i, %i.bv ; 6 uses
  br i1 %.not1960.i, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %.thread1417.i
  store <4 x float> %i.ava, ptr %.1018851641.i, align 1, !tbaa !17
  %i.avb = getelementptr inbounds nuw [4 x i8], ptr %.1018851641.i, i64 %i.k
  br label %bb.fm

bb.fk:                                            ; preds = %.thread1417.i
  switch i32 %i.b, label %bb.fm [
    i32 4, label %.thread1421.i
    i32 1, label %bb.fl
  ]

.thread1421.i:                                    ; preds = %bb.fk
  store <4 x float> %i.ava, ptr %.1018851641.i, align 16, !tbaa !17
  %i.avc = getelementptr inbounds nuw i8, ptr %.1018851641.i, i64 16
  br label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  %.sroa.0146.0.vec.extract.i = extractelement <4 x float> %i.ava, i64 0
  store float %.sroa.0146.0.vec.extract.i, ptr %.1018851641.i, align 4, !tbaa !147
  %.sroa.0146.4.vec.extract.i = extractelement <4 x float> %i.ava, i64 1
  %i.avd = getelementptr inbounds nuw [4 x i8], ptr %.1018851641.i, i64 %i.k
  store float %.sroa.0146.4.vec.extract.i, ptr %i.avd, align 4, !tbaa !147
  %.sroa.0146.8.vec.extract.i = extractelement <4 x float> %i.ava, i64 2
  %i.ave = getelementptr inbounds nuw i8, ptr %.1018851641.i, i64 %.idx1985.i
  store float %.sroa.0146.8.vec.extract.i, ptr %i.ave, align 4, !tbaa !147
  %.sroa.0146.12.vec.extract.i = extractelement <4 x float> %i.ava, i64 3
  %i.avf = getelementptr inbounds nuw i8, ptr %.1018851641.i, i64 %.idx1986.i
  store float %.sroa.0146.12.vec.extract.i, ptr %i.avf, align 4, !tbaa !147
  %i.avg = getelementptr inbounds nuw i8, ptr %.1018851641.i, i64 4
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %.thread1421.i, %bb.fk, %bb.fj
  %.121887.i = phi ptr [ %i.avb, %bb.fj ], [ %i.avg, %bb.fl ], [ %.1018851641.i, %bb.fk ], [ %i.avc, %.thread1421.i ]
  %i.avh = getelementptr inbounds nuw i8, ptr %.918391642.i, i64 16 ; 2 uses
  %i.avi = add nuw nsw i32 %.319091640.i, 1       ; 2 uses
  %exitcond1778.not.i = icmp eq i32 %i.avi, %7
  br i1 %exitcond1778.not.i, label %._crit_edge1645.i, label %.lr.ph1644.i, !llvm.loop !258

._crit_edge1645.i:                                ; preds = %bb.fm, %.preheader1552.i
  %.91839.lcssa.i = phi ptr [ %.81838.lcssa.i, %.preheader1552.i ], [ %i.avh, %bb.fm ] ; 2 uses
  %.36.lcssa.i = phi ptr [ %.32.lcssa.i, %.preheader1552.i ], [ %.39.i, %bb.fm ] ; 2 uses
  %indvars.iv.next1780.i = add nuw nsw i64 %indvars.iv1779.i, 4 ; 3 uses
  %i.avj = icmp slt i64 %indvars.iv.next1780.i, %invariant.op1849.i
  br i1 %i.avj, label %bb.cg, label %.preheader1551.loopexit.i, !llvm.loop !259

.preheader1547.loopexit.i:                        ; preds = %._crit_edge1693.i
  %i.avk = trunc nsw i64 %indvars.iv.next1784.i to i32
  br label %.preheader1547.i

.preheader1547.i:                                 ; preds = %.preheader1547.loopexit.i, %.preheader1551.i
  %.21852.lcssa.i = phi i32 [ %.11851.lcssa.i, %.preheader1551.i ], [ %i.avk, %.preheader1547.loopexit.i ] ; 2 uses
  %.101840.lcssa.i = phi ptr [ %.51835.lcssa.i, %.preheader1551.i ], [ %.141844.lcssa.i, %.preheader1547.loopexit.i ]
  %.40.lcssa.i = phi ptr [ %.20.lcssa.i, %.preheader1551.i ], [ %.53.lcssa.i, %.preheader1547.loopexit.i ]
  %i.avl = icmp slt i32 %.21852.lcssa.i, %5
  br i1 %i.avl, label %.lr.ph1745.i, label %_ZN4ncnnL32unpack_output_tile_int32_to_fp32ERKNS_3MatES2_RS0_iiiiiS2_ffi.exit

.lr.ph1745.i:                                     ; preds = %.preheader1547.i
  %.not.i = icmp eq i32 %11, 0                    ; 5 uses
  %i.avm = sext i32 %6 to i64                     ; 4 uses
  %i.avn = mul i64 %i.k, %i.avm
  %i.avo = icmp eq i32 %3, 0
  %or.cond31.i = icmp ult i32 %3, 3               ; 5 uses
  %i.avp = sext i32 %4 to i64                     ; 3 uses
  %i.avq = icmp sgt i32 %7, 7
  %i.avr = add i32 %3, -3
  %or.cond37.i = icmp ult i32 %i.avr, 2           ; 4 uses
  %i.avs = insertelement <4 x float> poison, float %10, i64 0
  %i.avt = shufflevector <4 x float> %i.avs, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.avu = fcmp fast une float %9, 1.000000e+00
  %i.avv = insertelement <4 x float> poison, float %9, i64 0
  %i.avw = shufflevector <4 x float> %i.avv, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.avx = select ninf nsz i1 %i.avu, <4 x float> %i.avw, <4 x float> splat (float 1.000000e+00) ; 2 uses
  %i.avy = icmp eq i64 %i.k, 1                    ; 2 uses
  %.idx1943.i = shl i64 %i.k, 3                   ; 3 uses
  %.idx1944.i = mul i64 %i.k, 12                  ; 2 uses
  %.idx1945.i = shl i64 %i.k, 4                   ; 5 uses
  %.idx1946.i = mul i64 %i.k, 20
  %.idx1947.i = mul i64 %i.k, 24
  %.idx1948.i = mul i64 %i.k, 28
  %.idx1949.i = shl i64 %i.k, 5                   ; 4 uses
  %i.avz = and i32 %7, -8
  %i.awa = sext i32 %.21852.lcssa.i to i64
  %i.awb = sext i32 %i.b to i64
  %wide.trip.count.i = sext i32 %5 to i64
  %i.awc = insertelement <2 x float> poison, float %10, i64 0
  %i.awd = shufflevector <2 x float> %i.awc, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.hm

bb.fn:                                            ; preds = %._crit_edge1693.i, %.lr.ph1700.i
  %indvars.iv1783.i = phi i64 [ %i.abq, %.lr.ph1700.i ], [ %indvars.iv.next1784.i, %._crit_edge1693.i ] ; 4 uses
  %.401699.i = phi ptr [ %.20.lcssa.i, %.lr.ph1700.i ], [ %.53.lcssa.i, %._crit_edge1693.i ] ; 4 uses
  %.1018401698.i = phi ptr [ %.51835.lcssa.i, %.lr.ph1700.i ], [ %.141844.lcssa.i, %._crit_edge1693.i ] ; 2 uses
  %i.awe = load ptr, ptr %2, align 8, !tbaa !9    ; 2 uses
  br i1 %.not1950.i, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.awf = getelementptr inbounds nuw [4 x i8], ptr %i.awe, i64 %i.abg
  %i.awg = add nsw i64 %indvars.iv1783.i, %i.abh  ; 2 uses
  %i.awh = mul nsw i64 %i.awg, %i.abs
  %i.awi = getelementptr inbounds [4 x i8], ptr %i.awf, i64 %i.awh
  br label %bb.fq

bb.fp:                                            ; preds = %bb.fn
  %i.awj = add nsw i64 %indvars.iv1783.i, %i.abh  ; 2 uses
  %i.awk = mul i64 %i.awj, %i.k
  %i.awl = getelementptr inbounds nuw [4 x i8], ptr %i.awe, i64 %i.awk
  %i.awm = getelementptr inbounds [4 x i8], ptr %i.awl, i64 %i.abf
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo
  %.pre-phi.i = phi i64 [ %i.awj, %bb.fp ], [ %i.awg, %bb.fo ] ; 2 uses
  %.01897.i = phi ptr [ %i.awm, %bb.fp ], [ %i.awi, %bb.fo ] ; 2 uses
  %i.awn = load ptr, ptr %8, align 8, !tbaa !9
  %i.awo = getelementptr [4 x i8], ptr %i.awn, i64 %.pre-phi.i
  %i.awp = load <2 x float>, ptr %i.awo, align 4, !tbaa !147 ; 4 uses
  %i.awq = shufflevector <2 x float> %i.awp, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.awr = shufflevector <2 x float> %i.awp, <2 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.aws = shufflevector <2 x float> %i.awp, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 3 uses
  %.not1951.i = icmp eq ptr %.401699.i, null
  br i1 %.not1951.i, label %.thread1439.i, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  br i1 %12, label %.thread1423.i, label %bb.fs

.thread1423.i:                                    ; preds = %bb.fr
  %i.awt = load float, ptr %.401699.i, align 4, !tbaa !147
  %i.awu = fmul fast float %i.awt, %10            ; 3 uses
  %i.awv = insertelement <4 x float> poison, float %i.awu, i64 0
  %i.aww = shufflevector <4 x float> %i.awv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.awx = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.awu, i64 0
  br label %.thread1439.i

bb.fs:                                            ; preds = %bb.fr
  br i1 %or.cond21.i, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  %i.awy = load ptr, ptr %1, align 8, !tbaa !9
  %i.awz = getelementptr inbounds [4 x i8], ptr %i.awy, i64 %i.abh
  %i.axa = getelementptr inbounds nuw [4 x i8], ptr %i.awz, i64 %indvars.iv1783.i ; 2 uses
  %i.axb = load <2 x float>, ptr %i.axa, align 4, !tbaa !147
  %i.axc = fmul fast <2 x float> %i.axb, %17      ; 4 uses
  %i.axd = extractelement <2 x float> %i.axc, i64 0
  %i.axe = shufflevector <2 x float> %i.axc, <2 x float> poison, <4 x i32> zeroinitializer
  %i.axf = shufflevector <2 x float> %i.axc, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %.thread1439.i

bb.fu:                                            ; preds = %bb.fs
  switch i32 %3, label %.thread1439.i [
    i32 3, label %bb.fv
    i32 4, label %bb.fw
  ]

bb.fv:                                            ; preds = %bb.fu
  %i.axg = load ptr, ptr %1, align 8, !tbaa !9
  %i.axh = mul i64 %.pre-phi.i, %i.t
  %i.axi = getelementptr inbounds nuw [4 x i8], ptr %i.axg, i64 %i.axh
  %i.axj = getelementptr inbounds [4 x i8], ptr %i.axi, i64 %i.abf
  br label %.thread1439.i

bb.fw:                                            ; preds = %bb.fu
  %i.axk = load ptr, ptr %1, align 8, !tbaa !9
  %i.axl = getelementptr inbounds [4 x i8], ptr %i.axk, i64 %i.abf
  br label %.thread1439.i

.thread1439.i:                                    ; preds = %bb.fw, %bb.fv, %bb.fu, %bb.ft, %.thread1423.i, %bb.fq
  %.21050.i = phi nsz <4 x float> [ zeroinitializer, %bb.fq ], [ zeroinitializer, %bb.fw ], [ zeroinitializer, %bb.fu ], [ zeroinitializer, %bb.fv ], [ %i.aww, %.thread1423.i ], [ %i.axe, %bb.ft ] ; 2 uses
  %.11041.i = phi nsz <4 x float> [ zeroinitializer, %bb.fq ], [ zeroinitializer, %bb.fw ], [ zeroinitializer, %bb.fu ], [ zeroinitializer, %bb.fv ], [ zeroinitializer, %.thread1423.i ], [ %i.axf, %bb.ft ] ; 2 uses
  %.21896.i = phi nsz float [ 0.000000e+00, %bb.fq ], [ 0.000000e+00, %bb.fw ], [ 0.000000e+00, %bb.fu ], [ 0.000000e+00, %bb.fv ], [ %i.awu, %.thread1423.i ], [ %i.axd, %bb.ft ]
  %.43.i = phi ptr [ null, %bb.fq ], [ %i.axl, %bb.fw ], [ %.401699.i, %bb.fu ], [ %i.axj, %bb.fv ], [ %.401699.i, %.thread1423.i ], [ %i.axa, %bb.ft ] ; 2 uses
  %i.axm = phi <2 x float> [ zeroinitializer, %bb.fq ], [ zeroinitializer, %bb.fw ], [ zeroinitializer, %bb.fu ], [ zeroinitializer, %bb.fv ], [ %i.awx, %.thread1423.i ], [ %i.axc, %bb.ft ] ; 3 uses
  %i.axn = shufflevector <2 x float> %i.axm, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  br i1 %i.abi, label %.lr.ph1661.i, label %.preheader1550.i

.preheader1550.i:                                 ; preds = %bb.gn, %.thread1439.i
  %.31051.lcssa.i = phi <4 x float> [ %.21050.i, %.thread1439.i ], [ %.51053.i, %bb.gn ]
  %.21042.lcssa.i = phi <4 x float> [ %.11041.i, %.thread1439.i ], [ %.41044.i, %bb.gn ]
  %.11898.lcssa.i = phi ptr [ %.01897.i, %.thread1439.i ], [ %i.bbb, %bb.gn ] ; 2 uses
  %.01888.lcssa.i = phi i32 [ 0, %.thread1439.i ], [ %i.abp, %bb.gn ] ; 3 uses
  %.111841.lcssa.i = phi ptr [ %.1018401698.i, %.thread1439.i ], [ %i.bbc, %bb.gn ] ; 2 uses
  %.44.lcssa.i = phi ptr [ %.43.i, %.thread1439.i ], [ %.46.i, %bb.gn ] ; 2 uses
  %i.axo = or disjoint i32 %.01888.lcssa.i, 3
  %i.axp = icmp slt i32 %i.axo, %7
  br i1 %i.axp, label %.lr.ph1674.i, label %.preheader1549.i

.lr.ph1661.i:                                     ; preds = %.thread1439.i, %bb.gn
  %.441660.i = phi ptr [ %.46.i, %bb.gn ], [ %.43.i, %.thread1439.i ] ; 11 uses
  %.1118411659.i = phi ptr [ %i.bbc, %bb.gn ], [ %.1018401698.i, %.thread1439.i ] ; 5 uses
  %.018881658.i = phi i32 [ %i.bbd, %bb.gn ], [ 0, %.thread1439.i ]
  %.118981657.i = phi ptr [ %i.bbb, %bb.gn ], [ %.01897.i, %.thread1439.i ] ; 20 uses
  %.210421656.i = phi <4 x float> [ %.41044.i, %bb.gn ], [ %.11041.i, %.thread1439.i ] ; 6 uses
  %.310511655.i = phi <4 x float> [ %.51053.i, %bb.gn ], [ %.21050.i, %.thread1439.i ] ; 10 uses
  %i.axq = load <4 x i32>, ptr %.1118411659.i, align 16, !tbaa !17
  %i.axr = sitofp fast <4 x i32> %i.axq to <4 x float> ; 2 uses
  %i.axs = getelementptr inbounds nuw i8, ptr %.1118411659.i, i64 16
  %i.axt = load <4 x i32>, ptr %i.axs, align 16, !tbaa !17
  %i.axu = sitofp fast <4 x i32> %i.axt to <4 x float> ; 2 uses
  %i.axv = getelementptr inbounds nuw i8, ptr %.1118411659.i, i64 32
  %i.axw = load <4 x i32>, ptr %i.axv, align 16, !tbaa !17
  %i.axx = getelementptr inbounds nuw i8, ptr %.1118411659.i, i64 48
  %i.axy = load <4 x i32>, ptr %i.axx, align 16, !tbaa !17
  %i.axz = sitofp <4 x i32> %i.axw to <4 x float>
  %i.aya = shufflevector <4 x float> %i.axz, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.ayb = sitofp <4 x i32> %i.axy to <4 x float>
  %i.ayc = shufflevector <4 x float> %i.ayb, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.ayd = shufflevector <4 x float> %i.axr, <4 x float> %i.aya, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.aye = shufflevector <4 x float> %i.axr, <4 x float> %i.aya, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ayf = shufflevector <4 x float> %i.axu, <4 x float> %i.ayc, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ayg = shufflevector <4 x float> %i.axu, <4 x float> %i.ayc, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ayh = shufflevector <4 x float> %i.ayd, <4 x float> %i.aye, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ayi = shufflevector <4 x float> %i.ayf, <4 x float> %i.ayg, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ayj = shufflevector <4 x float> %i.ayd, <4 x float> %i.aye, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.ayk = shufflevector <4 x float> %i.ayf, <4 x float> %i.ayg, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.ayl = shufflevector <4 x float> %i.ayj, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.aym = shufflevector <4 x float> %i.ayk, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.ayn = fmul fast <4 x float> %i.awr, %i.ayh   ; 7 uses
  %i.ayo = fmul fast <4 x float> %i.awr, %i.ayi   ; 7 uses
  %i.ayp = fmul fast <4 x float> %i.ayl, %i.aws   ; 7 uses
  %i.ayq = fmul fast <4 x float> %i.aym, %i.aws   ; 7 uses
  %.not1957.i = icmp eq ptr %.441660.i, null
  br i1 %.not1957.i, label %.thread1458.i, label %bb.fx

bb.fx:                                            ; preds = %.lr.ph1661.i
  br i1 %12, label %.thread1445.i, label %bb.fy

.thread1445.i:                                    ; preds = %bb.fx
  %i.ayr = fadd fast <4 x float> %i.ayn, %.310511655.i
  %i.ays = fadd fast <4 x float> %i.ayo, %.310511655.i
  %i.ayt = fadd fast <4 x float> %i.ayp, %.310511655.i
  %i.ayu = fadd fast <4 x float> %i.ayq, %.310511655.i
  br label %.thread1458.i

bb.fy:                                            ; preds = %bb.fx
  br i1 %or.cond21.i, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  %i.ayv = fadd fast <4 x float> %i.ayn, %.310511655.i
  %i.ayw = fadd fast <4 x float> %i.ayo, %.310511655.i
  %i.ayx = fadd fast <4 x float> %i.ayp, %.210421656.i
  %i.ayy = fadd fast <4 x float> %i.ayq, %.210421656.i
  br label %.thread1458.i

bb.ga:                                            ; preds = %bb.fy
  switch i32 %3, label %.thread1458.i [
    i32 3, label %bb.gb
    i32 4, label %bb.gf
  ]

bb.gb:                                            ; preds = %bb.ga
  %i.ayz = load <4 x float>, ptr %.441660.i, align 1, !tbaa !17 ; 3 uses
  %i.aza = getelementptr inbounds nuw i8, ptr %.441660.i, i64 16
  %i.azb = load <4 x float>, ptr %i.aza, align 1, !tbaa !17 ; 3 uses
  %i.azc = getelementptr inbounds nuw [4 x i8], ptr %.441660.i, i64 %i.t ; 2 uses
  %i.azd = load <4 x float>, ptr %i.azc, align 1, !tbaa !17 ; 2 uses
  %i.aze = getelementptr inbounds nuw i8, ptr %i.azc, i64 16
  %i.azf = load <4 x float>, ptr %i.aze, align 1, !tbaa !17 ; 2 uses
  br i1 %i.abl, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  %i.azg = fadd fast <4 x float> %i.ayz, %i.ayn
  %i.azh = fadd fast <4 x float> %i.azb, %i.ayo
  %i.azi = fadd fast <4 x float> %i.azd, %i.ayp
  %i.azj = fadd fast <4 x float> %i.azf, %i.ayq
  br label %bb.ge

bb.gd:                                            ; preds = %bb.gb
  %i.azk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ayz, <4 x float> nofpclass(nan inf) %i.abk, <4 x float> nofpclass(nan inf) %i.ayn)
  %i.azl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.azb, <4 x float> nofpclass(nan inf) %i.abk, <4 x float> nofpclass(nan inf) %i.ayo)
  %i.azm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.azd, <4 x float> nofpclass(nan inf) %i.abk, <4 x float> nofpclass(nan inf) %i.ayp)
  %i.azn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.azf, <4 x float> nofpclass(nan inf) %i.abk, <4 x float> nofpclass(nan inf) %i.ayq)
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  %.21036.i = phi nsz <4 x float> [ %i.azg, %bb.gc ], [ %i.azk, %bb.gd ]
  %.21030.i = phi nsz <4 x float> [ %i.azh, %bb.gc ], [ %i.azl, %bb.gd ]
  %.21024.i = phi nsz <4 x float> [ %i.azi, %bb.gc ], [ %i.azm, %bb.gd ]
  %.21018.i = phi nsz <4 x float> [ %i.azj, %bb.gc ], [ %i.azn, %bb.gd ]
  %i.azo = getelementptr inbounds nuw i8, ptr %.441660.i, i64 32
  br label %.thread1458.i

bb.gf:                                            ; preds = %bb.ga
  %i.azp = load <4 x float>, ptr %.441660.i, align 1, !tbaa !17
  %i.azq = getelementptr inbounds nuw i8, ptr %.441660.i, i64 16
  %i.azr = load <4 x float>, ptr %i.azq, align 1, !tbaa !17
  %i.azs = fmul fast <4 x float> %i.azp, %i.abk   ; 3 uses
  %i.azt = fmul fast <4 x float> %i.azr, %i.abk   ; 3 uses
  %i.azu = fadd fast <4 x float> %i.azs, %i.ayn
  %i.azv = fadd fast <4 x float> %i.azt, %i.ayo
  %i.azw = fadd fast <4 x float> %i.azs, %i.ayp
  %i.azx = fadd fast <4 x float> %i.azt, %i.ayq
  %i.azy = getelementptr inbounds nuw i8, ptr %.441660.i, i64 32
  br label %.thread1458.i

.thread1458.i:                                    ; preds = %bb.gf, %bb.ge, %bb.ga, %bb.fz, %.thread1445.i, %.lr.ph1661.i
  %.51053.i = phi nsz <4 x float> [ %.310511655.i, %.lr.ph1661.i ], [ %i.azs, %bb.gf ], [ %.310511655.i, %bb.ga ], [ %i.ayz, %bb.ge ], [ %.310511655.i, %.thread1445.i ], [ %.310511655.i, %bb.fz ] ; 2 uses
  %.41044.i = phi nsz <4 x float> [ %.210421656.i, %.lr.ph1661.i ], [ %i.azt, %bb.gf ], [ %.210421656.i, %bb.ga ], [ %i.azb, %bb.ge ], [ %.210421656.i, %.thread1445.i ], [ %.210421656.i, %bb.fz ] ; 2 uses
  %.41038.i = phi nsz <4 x float> [ %i.ayn, %.lr.ph1661.i ], [ %i.azu, %bb.gf ], [ %i.ayn, %bb.ga ], [ %.21036.i, %bb.ge ], [ %i.ayr, %.thread1445.i ], [ %i.ayv, %bb.fz ] ; 2 uses
  %.41032.i = phi nsz <4 x float> [ %i.ayo, %.lr.ph1661.i ], [ %i.azv, %bb.gf ], [ %i.ayo, %bb.ga ], [ %.21030.i, %bb.ge ], [ %i.ays, %.thread1445.i ], [ %i.ayw, %bb.fz ] ; 2 uses
  %.41026.i = phi nsz <4 x float> [ %i.ayp, %.lr.ph1661.i ], [ %i.azw, %bb.gf ], [ %i.ayp, %bb.ga ], [ %.21024.i, %bb.ge ], [ %i.ayt, %.thread1445.i ], [ %i.ayx, %bb.fz ] ; 2 uses
  %.41020.i = phi nsz <4 x float> [ %i.ayq, %.lr.ph1661.i ], [ %i.azx, %bb.gf ], [ %i.ayq, %bb.ga ], [ %.21018.i, %bb.ge ], [ %i.ayu, %.thread1445.i ], [ %i.ayy, %bb.fz ] ; 2 uses
  %.46.i = phi ptr [ null, %.lr.ph1661.i ], [ %i.azy, %bb.gf ], [ %.441660.i, %bb.ga ], [ %i.azo, %bb.ge ], [ %.441660.i, %.thread1445.i ], [ %.441660.i, %bb.fz ] ; 2 uses
  br i1 %i.abm, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %.thread1458.i
  %i.azz = fmul fast <4 x float> %.41038.i, %i.abo
  %i.baa = fmul fast <4 x float> %.41032.i, %i.abo
  %i.bab = fmul fast <4 x float> %.41026.i, %i.abo
  %i.bac = fmul fast <4 x float> %.41020.i, %i.abo
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %.thread1458.i
  %.51039.i = phi nsz <4 x float> [ %i.azz, %bb.gg ], [ %.41038.i, %.thread1458.i ] ; 7 uses
  %.51033.i = phi nsz <4 x float> [ %i.baa, %bb.gg ], [ %.41032.i, %.thread1458.i ] ; 7 uses
  %.51027.i = phi nsz <4 x float> [ %i.bab, %bb.gg ], [ %.41026.i, %.thread1458.i ] ; 7 uses
  %.51021.i = phi nsz <4 x float> [ %i.bac, %bb.gg ], [ %.41020.i, %.thread1458.i ] ; 7 uses
  br i1 %.not1950.i, label %bb.gm, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  switch i32 %i.b, label %bb.gn [
    i32 8, label %bb.gj
    i32 4, label %bb.gk
    i32 1, label %bb.gl
  ]

bb.gj:                                            ; preds = %bb.gi
  store <4 x float> %.51039.i, ptr %.118981657.i, align 16, !tbaa !17
  %i.bad = getelementptr inbounds nuw i8, ptr %.118981657.i, i64 16
  store <4 x float> %.51033.i, ptr %i.bad, align 16, !tbaa !17
  %i.bae = getelementptr inbounds nuw i8, ptr %.118981657.i, i64 32
  store <4 x float> %.51027.i, ptr %i.bae, align 16, !tbaa !17
  %i.baf = getelementptr inbounds nuw i8, ptr %.118981657.i, i64 48
  store <4 x float> %.51021.i, ptr %i.baf, align 16, !tbaa !17
  br label %bb.gn

bb.gk:                                            ; preds = %bb.gi
  store <4 x float> %.51039.i, ptr %.118981657.i, align 16, !tbaa !17
  %i.bag = getelementptr inbounds nuw i8, ptr %.118981657.i, i64 16
  store <4 x float> %.51027.i, ptr %i.bag, align 16, !tbaa !17
  %i.bah = getelementptr inbounds nuw i8, ptr %.118981657.i, i64 %.idx1531.i ; 2 uses
  store <4 x float> %.51033.i, ptr %i.bah, align 16, !tbaa !17
  %i.bai = getelementptr inbounds nuw i8, ptr %i.bah, i64 16
  store <4 x float> %.51021.i, ptr %i.bai, align 16, !tbaa !17
  br label %bb.gn

bb.gl:                                            ; preds = %bb.gi
  %.sroa.056.0.vec.extract.i = extractelement <4 x float> %.51039.i, i64 0
  store float %.sroa.056.0.vec.extract.i, ptr %.118981657.i, align 4, !tbaa !147
  %.sroa.12.32.vec.extract.i = extractelement <4 x float> %.51027.i, i64 0
  %i.baj = getelementptr inbounds nuw i8, ptr %.118981657.i, i64 4
  store float %.sroa.12.32.vec.extract.i, ptr %i.baj, align 4, !tbaa !147
  %i.bak = getelementptr inbounds nuw [4 x i8], ptr %.118981657.i, i64 %i.k
  %i.bal = shufflevector <4 x float> %.51039.i, <4 x float> %.51027.i, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.bal, ptr %i.bak, align 4, !tbaa !147
  %i.bam = getelementptr inbounds nuw i8, ptr %.118981657.i, i64 %.idx1529.i
  %i.ban = shufflevector <4 x float> %.51039.i, <4 x float> %.51027.i, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.ban, ptr %i.bam, align 4, !tbaa !147
  %i.bao = getelementptr inbounds nuw i8, ptr %.118981657.i, i64 %.idx1530.i
  %i.bap = shufflevector <4 x float> %.51039.i, <4 x float> %.51027.i, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.bap, ptr %i.bao, align 4, !tbaa !147
  %.sroa.757.16.vec.extract.i = extractelement <4 x float> %.51033.i, i64 0
  %i.baq = getelementptr inbounds nuw i8, ptr %.118981657.i, i64 %.idx1531.i ; 2 uses
  store float %.sroa.757.16.vec.extract.i, ptr %i.baq, align 4, !tbaa !147
  %.sroa.17.48.vec.extract.i = extractelement <4 x float> %.51021.i, i64 0
  %i.bar = getelementptr inbounds nuw i8, ptr %i.baq, i64 4
  store float %.sroa.17.48.vec.extract.i, ptr %i.bar, align 4, !tbaa !147
  %i.bas = getelementptr inbounds nuw i8, ptr %.118981657.i, i64 %.idx1532.i
  %i.bat = shufflevector <4 x float> %.51033.i, <4 x float> %.51021.i, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.bat, ptr %i.bas, align 4, !tbaa !147
  %i.bau = getelementptr inbounds nuw i8, ptr %.118981657.i, i64 %.idx1533.i
  %i.bav = shufflevector <4 x float> %.51033.i, <4 x float> %.51021.i, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.bav, ptr %i.bau, align 4, !tbaa !147
  %i.baw = getelementptr inbounds nuw i8, ptr %.118981657.i, i64 %.idx1534.i
  %i.bax = shufflevector <4 x float> %.51033.i, <4 x float> %.51021.i, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.bax, ptr %i.baw, align 4, !tbaa !147
  br label %bb.gn

bb.gm:                                            ; preds = %bb.gh
  store <4 x float> %.51039.i, ptr %.118981657.i, align 1, !tbaa !17
  %i.bay = getelementptr inbounds nuw i8, ptr %.118981657.i, i64 16
  store <4 x float> %.51033.i, ptr %i.bay, align 1, !tbaa !17
  %i.baz = getelementptr inbounds nuw [4 x i8], ptr %.118981657.i, i64 %i.k ; 2 uses
  store <4 x float> %.51027.i, ptr %i.baz, align 1, !tbaa !17
  %i.bba = getelementptr inbounds nuw i8, ptr %i.baz, i64 16
  store <4 x float> %.51021.i, ptr %i.bba, align 1, !tbaa !17
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %bb.gl, %bb.gk, %bb.gj, %bb.gi
  %.sink1864.i = phi i64 [ 32, %bb.gm ], [ %.idx1959.i, %bb.gk ], [ %.idx1959.i, %bb.gj ], [ %.idx1959.i, %bb.gi ], [ %.idx1959.i, %bb.gl ]
  %i.bbb = getelementptr inbounds nuw i8, ptr %.118981657.i, i64 %.sink1864.i ; 2 uses
  %i.bbc = getelementptr inbounds nuw i8, ptr %.1118411659.i, i64 64 ; 2 uses
  %i.bbd = add nuw nsw i32 %.018881658.i, 8       ; 2 uses
  %i.bbe = or disjoint i32 %i.bbd, 7
  %i.bbf = icmp slt i32 %i.bbe, %7
  br i1 %i.bbf, label %.lr.ph1661.i, label %.preheader1550.i, !llvm.loop !260

.preheader1549.i:                                 ; preds = %bb.gy, %.preheader1550.i
  %.31900.lcssa.i = phi ptr [ %.11898.lcssa.i, %.preheader1550.i ], [ %i.bcv, %bb.gy ] ; 2 uses
  %.11889.lcssa.i = phi i32 [ %.01888.lcssa.i, %.preheader1550.i ], [ %i.bcx, %bb.gy ] ; 3 uses
  %.121842.lcssa.i = phi ptr [ %.111841.lcssa.i, %.preheader1550.i ], [ %i.bcw, %bb.gy ] ; 2 uses
  %.47.lcssa.i = phi ptr [ %.44.lcssa.i, %.preheader1550.i ], [ %.49.i, %bb.gy ] ; 2 uses
  %i.bbg = or disjoint i32 %.11889.lcssa.i, 1
  %i.bbh = icmp slt i32 %i.bbg, %7
  br i1 %i.bbh, label %.lr.ph1683.i.preheader, label %.preheader1548.i

.lr.ph1683.i.preheader:                           ; preds = %.preheader1549.i
  %i.bbi = shufflevector <2 x float> %i.axm, <2 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph1683.i

.lr.ph1674.i:                                     ; preds = %.preheader1550.i, %bb.gy
  %.471673.i = phi ptr [ %.49.i, %bb.gy ], [ %.44.lcssa.i, %.preheader1550.i ] ; 9 uses
  %.1218421672.i = phi ptr [ %i.bcw, %bb.gy ], [ %.111841.lcssa.i, %.preheader1550.i ] ; 3 uses
  %.118891671.i = phi i32 [ %i.bcx, %bb.gy ], [ %.01888.lcssa.i, %.preheader1550.i ]
  %.319001670.i = phi ptr [ %i.bcv, %bb.gy ], [ %.11898.lcssa.i, %.preheader1550.i ] ; 10 uses
  %.510451669.i = phi <4 x float> [ %.71047.i, %bb.gy ], [ %.21042.lcssa.i, %.preheader1550.i ] ; 6 uses
  %.610541668.i = phi <4 x float> [ %.81056.i, %bb.gy ], [ %.31051.lcssa.i, %.preheader1550.i ] ; 7 uses
  %i.bbj = load <4 x i32>, ptr %.1218421672.i, align 16, !tbaa !17
  %i.bbk = sitofp fast <4 x i32> %i.bbj to <4 x float> ; 2 uses
  %i.bbl = getelementptr inbounds nuw i8, ptr %.1218421672.i, i64 16
  %i.bbm = load <4 x i32>, ptr %i.bbl, align 16, !tbaa !17
  %i.bbn = sitofp fast <4 x i32> %i.bbm to <4 x float> ; 2 uses
  %i.bbo = shufflevector <4 x float> %i.bbk, <4 x float> %i.bbn, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.bbp = shufflevector <4 x float> %i.bbk, <4 x float> %i.bbn, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.bbq = shufflevector <4 x float> %i.bbo, <4 x float> %i.bbp, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bbr = shufflevector <4 x float> %i.bbp, <4 x float> %i.bbo, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.bbs = shufflevector <4 x float> %i.bbr, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.bbt = fmul fast <4 x float> %i.awr, %i.bbq   ; 7 uses
  %i.bbu = fmul fast <4 x float> %i.bbs, %i.aws   ; 7 uses
  %.not1955.i = icmp eq ptr %.471673.i, null
  br i1 %.not1955.i, label %.thread1475.i, label %bb.go

bb.go:                                            ; preds = %.lr.ph1674.i
  br i1 %12, label %.thread1466.i, label %bb.gp

.thread1466.i:                                    ; preds = %bb.go
  %i.bbv = fadd fast <4 x float> %i.bbt, %.610541668.i
  %i.bbw = fadd fast <4 x float> %i.bbu, %.610541668.i
  br label %.thread1475.i

bb.gp:                                            ; preds = %bb.go
  br i1 %or.cond21.i, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  %i.bbx = fadd fast <4 x float> %i.bbt, %.610541668.i
  %i.bby = fadd fast <4 x float> %i.bbu, %.510451669.i
  br label %.thread1475.i

bb.gr:                                            ; preds = %bb.gp
  switch i32 %3, label %.thread1475.i [
    i32 3, label %bb.gs
    i32 4, label %bb.gt
  ]

bb.gs:                                            ; preds = %bb.gr
  %i.bbz = load <4 x float>, ptr %.471673.i, align 1, !tbaa !17 ; 3 uses
  %i.bca = getelementptr inbounds nuw [4 x i8], ptr %.471673.i, i64 %i.t
  %i.bcb = load <4 x float>, ptr %i.bca, align 1, !tbaa !17 ; 3 uses
  %i.bcc = fadd fast <4 x float> %i.bbz, %i.bbt
  %i.bcd = fadd fast <4 x float> %i.bcb, %i.bbu
  %i.bce = tail call fast nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bbz, <4 x float> nofpclass(nan inf) %i.abk, <4 x float> nofpclass(nan inf) %i.bbt)
  %i.bcf = tail call fast nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bcb, <4 x float> nofpclass(nan inf) %i.abk, <4 x float> nofpclass(nan inf) %i.bbu)
  %.21007.i = select nsz i1 %i.abl, <4 x float> %i.bcc, <4 x float> %i.bce
  %.21001.i = select nsz i1 %i.abl, <4 x float> %i.bcd, <4 x float> %i.bcf
  %i.bcg = getelementptr inbounds nuw i8, ptr %.471673.i, i64 16
  br label %.thread1475.i

bb.gt:                                            ; preds = %bb.gr
  %i.bch = load <4 x float>, ptr %.471673.i, align 1, !tbaa !17
  %i.bci = fmul fast <4 x float> %i.bch, %i.abk   ; 3 uses
  %i.bcj = fadd fast <4 x float> %i.bci, %i.bbt
  %i.bck = fadd fast <4 x float> %i.bci, %i.bbu
  %i.bcl = getelementptr inbounds nuw i8, ptr %.471673.i, i64 16
  br label %.thread1475.i

.thread1475.i:                                    ; preds = %bb.gt, %bb.gs, %bb.gr, %bb.gq, %.thread1466.i, %.lr.ph1674.i
  %.81056.i = phi nsz <4 x float> [ %.610541668.i, %.lr.ph1674.i ], [ %i.bci, %bb.gt ], [ %.610541668.i, %bb.gr ], [ %i.bbz, %bb.gs ], [ %.610541668.i, %.thread1466.i ], [ %.610541668.i, %bb.gq ]
  %.71047.i = phi nsz <4 x float> [ %.510451669.i, %.lr.ph1674.i ], [ %.510451669.i, %bb.gt ], [ %.510451669.i, %bb.gr ], [ %i.bcb, %bb.gs ], [ %.510451669.i, %.thread1466.i ], [ %.510451669.i, %bb.gq ]
  %.41009.i = phi nsz <4 x float> [ %i.bbt, %.lr.ph1674.i ], [ %i.bcj, %bb.gt ], [ %i.bbt, %bb.gr ], [ %.21007.i, %bb.gs ], [ %i.bbv, %.thread1466.i ], [ %i.bbx, %bb.gq ]
  %.41003.i = phi nsz <4 x float> [ %i.bbu, %.lr.ph1674.i ], [ %i.bck, %bb.gt ], [ %i.bbu, %bb.gr ], [ %.21001.i, %bb.gs ], [ %i.bbw, %.thread1466.i ], [ %i.bby, %bb.gq ]
  %.49.i = phi ptr [ null, %.lr.ph1674.i ], [ %i.bcl, %bb.gt ], [ %.471673.i, %bb.gr ], [ %i.bcg, %bb.gs ], [ %.471673.i, %.thread1466.i ], [ %.471673.i, %bb.gq ] ; 2 uses
  %.51010.i = fmul reassoc nsz arcp contract afn <4 x float> %.41009.i, %i.abt ; 6 uses
  %.51004.i = fmul reassoc nsz arcp contract afn <4 x float> %.41003.i, %i.abt ; 6 uses
  br i1 %.not1950.i, label %bb.gx, label %bb.gu

bb.gu:                                            ; preds = %.thread1475.i
  switch i32 %i.b, label %bb.gy [
    i32 4, label %bb.gv
    i32 1, label %bb.gw
  ]

bb.gv:                                            ; preds = %bb.gu
  store <4 x float> %.51010.i, ptr %.319001670.i, align 16, !tbaa !17
  %i.bcm = getelementptr inbounds nuw i8, ptr %.319001670.i, i64 16
  store <4 x float> %.51004.i, ptr %i.bcm, align 16, !tbaa !17
  br label %bb.gy

bb.gw:                                            ; preds = %bb.gu
  %.sroa.029.0.vec.extract.i = extractelement <4 x float> %.51010.i, i64 0
  store float %.sroa.029.0.vec.extract.i, ptr %.319001670.i, align 4, !tbaa !147
  %.sroa.730.16.vec.extract.i = extractelement <4 x float> %.51004.i, i64 0
  %i.bcn = getelementptr inbounds nuw i8, ptr %.319001670.i, i64 4
  store float %.sroa.730.16.vec.extract.i, ptr %i.bcn, align 4, !tbaa !147
  %i.bco = getelementptr inbounds nuw [4 x i8], ptr %.319001670.i, i64 %i.k
  %i.bcp = shufflevector <4 x float> %.51010.i, <4 x float> %.51004.i, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.bcp, ptr %i.bco, align 4, !tbaa !147
  %i.bcq = getelementptr inbounds nuw i8, ptr %.319001670.i, i64 %.idx1529.i
  %i.bcr = shufflevector <4 x float> %.51010.i, <4 x float> %.51004.i, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.bcr, ptr %i.bcq, align 4, !tbaa !147
  %i.bcs = getelementptr inbounds nuw i8, ptr %.319001670.i, i64 %.idx1530.i
  %i.bct = shufflevector <4 x float> %.51010.i, <4 x float> %.51004.i, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.bct, ptr %i.bcs, align 4, !tbaa !147
  br label %bb.gy

bb.gx:                                            ; preds = %.thread1475.i
  store <4 x float> %.51010.i, ptr %.319001670.i, align 1, !tbaa !17
  %i.bcu = getelementptr inbounds nuw [4 x i8], ptr %.319001670.i, i64 %i.k
  store <4 x float> %.51004.i, ptr %i.bcu, align 1, !tbaa !17
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.gw, %bb.gv, %bb.gu
  %.sink1865.i = phi i64 [ 16, %bb.gx ], [ %.idx1531.i, %bb.gv ], [ %.idx1531.i, %bb.gu ], [ %.idx1531.i, %bb.gw ]
  %i.bcv = getelementptr inbounds nuw i8, ptr %.319001670.i, i64 %.sink1865.i ; 2 uses
  %i.bcw = getelementptr inbounds nuw i8, ptr %.1218421672.i, i64 32 ; 2 uses
  %i.bcx = add nuw nsw i32 %.118891671.i, 4       ; 3 uses
  %i.bcy = or disjoint i32 %i.bcx, 3
  %i.bcz = icmp slt i32 %i.bcy, %7
  br i1 %i.bcz, label %.lr.ph1674.i, label %.preheader1549.i, !llvm.loop !261

.preheader1548.i:                                 ; preds = %.thread1494.i, %.preheader1549.i
  %.51902.lcssa.i = phi ptr [ %.31900.lcssa.i, %.preheader1549.i ], [ %i.bej, %.thread1494.i ]
  %.21890.lcssa.i = phi i32 [ %.11889.lcssa.i, %.preheader1549.i ], [ %i.bel, %.thread1494.i ] ; 2 uses
  %.131843.lcssa.i = phi ptr [ %.121842.lcssa.i, %.preheader1549.i ], [ %i.bek, %.thread1494.i ] ; 2 uses
  %.50.lcssa.i = phi ptr [ %.47.lcssa.i, %.preheader1549.i ], [ %.52.i, %.thread1494.i ] ; 2 uses
  %i.bda = icmp slt i32 %.21890.lcssa.i, %7
  br i1 %i.bda, label %.lr.ph1692.i, label %._crit_edge1693.i

.lr.ph1692.i:                                     ; preds = %.preheader1548.i
  %i.bdb = select <2 x i1> %15, <2 x float> %i.axm, <2 x float> zeroinitializer ; 2 uses
  %i.bdc = select ninf nsz i1 %or.cond21.i, float %.21896.i, float 0.000000e+00
  %18 = shufflevector <2 x float> %i.bdb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %19 = insertelement <2 x float> %18, float %i.bdc, i64 0
  %i.bdd = fadd reassoc nsz arcp contract afn <2 x float> %i.bdb, %19
  br label %bb.hf

.lr.ph1683.i:                                     ; preds = %.lr.ph1683.i.preheader, %.thread1494.i
  %.501682.i = phi ptr [ %.52.i, %.thread1494.i ], [ %.47.lcssa.i, %.lr.ph1683.i.preheader ] ; 9 uses
  %.1318431681.i = phi ptr [ %i.bek, %.thread1494.i ], [ %.121842.lcssa.i, %.lr.ph1683.i.preheader ] ; 2 uses
  %.218901680.i = phi i32 [ %i.bel, %.thread1494.i ], [ %.11889.lcssa.i, %.lr.ph1683.i.preheader ]
  %.519021679.i = phi ptr [ %i.bej, %.thread1494.i ], [ %.31900.lcssa.i, %.lr.ph1683.i.preheader ] ; 4 uses
  %i.bde = load <4 x i32>, ptr %.1318431681.i, align 4, !tbaa !135
  %i.bdf = sitofp <4 x i32> %i.bde to <4 x float>
  %i.bdg = fmul fast <4 x float> %i.awq, %i.bdf   ; 6 uses
  %.not1953.i = icmp eq ptr %.501682.i, null
  br i1 %.not1953.i, label %.thread1494.i, label %bb.gz

bb.gz:                                            ; preds = %.lr.ph1683.i
  br i1 %12, label %.thread1481.i, label %bb.ha

.thread1481.i:                                    ; preds = %bb.gz
  %i.bdh = fadd fast <4 x float> %i.bdg, %i.bbi
  br label %.thread1494.i

bb.ha:                                            ; preds = %bb.gz
  br i1 %or.cond27.i, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %bb.ha
  %i.bdi = fadd fast <4 x float> %i.bdg, %i.axn
  br label %.thread1494.i

bb.hc:                                            ; preds = %bb.ha
  switch i32 %3, label %.thread1494.i [
    i32 3, label %bb.hd
    i32 4, label %bb.he
  ]

bb.hd:                                            ; preds = %bb.hc
  %i.bdj = getelementptr inbounds nuw [4 x i8], ptr %.501682.i, i64 %i.t
  %i.bdk = load <2 x float>, ptr %.501682.i, align 4, !tbaa !147
  %i.bdl = load <2 x float>, ptr %i.bdj, align 4, !tbaa !147
  %i.bdm = shufflevector <2 x float> %i.bdk, <2 x float> %i.bdl, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bdn = fmul fast <4 x float> %i.bdm, %i.abk
  %i.bdo = fadd fast <4 x float> %i.bdn, %i.bdg
  %i.bdp = getelementptr inbounds nuw i8, ptr %.501682.i, i64 8
  br label %.thread1494.i

bb.he:                                            ; preds = %bb.hc
  %i.bdq = load <2 x float>, ptr %.501682.i, align 4, !tbaa !147
  %i.bdr = fmul fast <2 x float> %i.bdq, %17
  %i.bds = shufflevector <2 x float> %i.bdr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bdt = fadd fast <4 x float> %i.bds, %i.bdg
  %i.bdu = getelementptr inbounds nuw i8, ptr %.501682.i, i64 8
  br label %.thread1494.i

.thread1494.i:                                    ; preds = %bb.he, %bb.hd, %bb.hc, %bb.hb, %.thread1481.i, %.lr.ph1683.i
  %.52.i = phi ptr [ %i.bdu, %bb.he ], [ %.501682.i, %bb.hc ], [ null, %.lr.ph1683.i ], [ %i.bdp, %bb.hd ], [ %.501682.i, %.thread1481.i ], [ %.501682.i, %bb.hb ] ; 2 uses
  %i.bdv = phi <4 x float> [ %i.bdt, %bb.he ], [ %i.bdg, %bb.hc ], [ %i.bdg, %.lr.ph1683.i ], [ %i.bdo, %bb.hd ], [ %i.bdh, %.thread1481.i ], [ %i.bdi, %bb.hb ] ; 3 uses
  %i.bdw = extractelement <4 x float> %i.bdv, i64 0
  %i.bdx = fmul fast float %i.bdw, %9
  %i.bdy = extractelement <4 x float> %i.bdv, i64 3
  %i.bdz = fmul fast float %i.bdy, %9
  store float %i.bdx, ptr %.519021679.i, align 4, !tbaa !147
  %i.bea = getelementptr inbounds nuw i8, ptr %.519021679.i, i64 4
  %i.beb = getelementptr inbounds nuw [4 x i8], ptr %.519021679.i, i64 %i.k ; 2 uses
  %i.bec = getelementptr i8, ptr %i.beb, i64 4
  %i.bed = shufflevector <4 x float> %i.bdv, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.bee = fmul fast <2 x float> %i.bed, %i.abv   ; 2 uses
  %i.bef = shufflevector <2 x float> %i.bee, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.beg = select <2 x i1> %i.abx, <2 x float> %i.bee, <2 x float> %i.bef ; 2 uses
  %i.beh = extractelement <2 x float> %i.beg, i64 0
  store float %i.beh, ptr %i.bea, align 4, !tbaa !147
  %i.bei = extractelement <2 x float> %i.beg, i64 1
  store float %i.bei, ptr %i.beb, align 4, !tbaa !147
  store float %i.bdz, ptr %i.bec, align 4, !tbaa !147
  %i.bej = getelementptr inbounds nuw i8, ptr %.519021679.i, i64 %..idx1529.i ; 2 uses
  %i.bek = getelementptr inbounds nuw i8, ptr %.1318431681.i, i64 16 ; 2 uses
  %i.bel = add nuw nsw i32 %.218901680.i, 2       ; 3 uses
  %i.bem = or disjoint i32 %i.bel, 1
  %i.ben = icmp slt i32 %i.bem, %7
  br i1 %i.ben, label %.lr.ph1683.i, label %.preheader1548.i, !llvm.loop !262

bb.hf:                                            ; preds = %bb.hl, %.lr.ph1692.i
  %.531691.i = phi ptr [ %.50.lcssa.i, %.lr.ph1692.i ], [ %.55.i, %bb.hl ] ; 7 uses
  %.1418441690.i = phi ptr [ %.131843.lcssa.i, %.lr.ph1692.i ], [ %i.bfp, %bb.hl ] ; 2 uses
  %.318911689.i = phi i32 [ %.21890.lcssa.i, %.lr.ph1692.i ], [ %i.bfq, %bb.hl ]
  %.719041688.i = phi ptr [ %.51902.lcssa.i, %.lr.ph1692.i ], [ %.81905.i, %bb.hl ] ; 5 uses
  %i.beo = load <2 x i32>, ptr %.1418441690.i, align 4, !tbaa !135
  %i.bep = sitofp <2 x i32> %i.beo to <2 x float>
  %i.beq = fmul fast <2 x float> %i.awp, %i.bep   ; 3 uses
  %.not1952.i = icmp eq ptr %.531691.i, null
  br i1 %.not1952.i, label %bb.hi, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.ber = fadd reassoc nsz arcp contract afn <2 x float> %i.bdd, %i.beq ; 2 uses
  switch i32 %3, label %bb.hi [
    i32 3, label %.thread1500.i
    i32 4, label %bb.hh
  ]

.thread1500.i:                                    ; preds = %bb.hg
  %i.bes = load float, ptr %.531691.i, align 4, !tbaa !147
  %i.bet = getelementptr inbounds nuw [4 x i8], ptr %.531691.i, i64 %i.t
  %i.beu = load float, ptr %i.bet, align 4, !tbaa !147
  %i.bev = insertelement <2 x float> poison, float %i.bes, i64 0
  %i.bew = insertelement <2 x float> %i.bev, float %i.beu, i64 1
  %i.bex = fmul fast <2 x float> %i.bew, %17
  %i.bey = fadd fast <2 x float> %i.bex, %i.beq
  %i.bez = getelementptr inbounds nuw i8, ptr %.531691.i, i64 4
  br label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  %i.bfa = load float, ptr %.531691.i, align 4, !tbaa !147
  %i.bfb = fmul fast float %i.bfa, %10
  %i.bfc = insertelement <2 x float> poison, float %i.bfb, i64 0
  %i.bfd = shufflevector <2 x float> %i.bfc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bfe = fadd fast <2 x float> %i.bfd, %i.ber
  %i.bff = getelementptr inbounds nuw i8, ptr %.531691.i, i64 4
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %.thread1500.i, %bb.hg, %bb.hf
  %.55.i = phi ptr [ %i.bff, %bb.hh ], [ %.531691.i, %bb.hg ], [ null, %bb.hf ], [ %i.bez, %.thread1500.i ] ; 2 uses
  %i.bfg = phi <2 x float> [ %i.bfe, %bb.hh ], [ %i.ber, %bb.hg ], [ %i.beq, %bb.hf ], [ %i.bey, %.thread1500.i ] ; 2 uses
  %i.bfh = extractelement <2 x float> %i.bfg, i64 0
  %i.bfi = fmul fast float %i.bfh, %9
  %i.bfj = extractelement <2 x float> %i.bfg, i64 1
  %i.bfk = fmul fast float %i.bfj, %9             ; 2 uses
  store float %i.bfi, ptr %.719041688.i, align 4, !tbaa !147
  br i1 %.not1950.i, label %bb.hk, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.bfl = getelementptr inbounds nuw i8, ptr %.719041688.i, i64 4
  store float %i.bfk, ptr %i.bfl, align 4, !tbaa !147
  %i.bfm = getelementptr inbounds nuw [4 x i8], ptr %.719041688.i, i64 %i.k
  br label %bb.hl

bb.hk:                                            ; preds = %bb.hi
  %i.bfn = getelementptr inbounds nuw [4 x i8], ptr %.719041688.i, i64 %i.k
  store float %i.bfk, ptr %i.bfn, align 4, !tbaa !147
  %i.bfo = getelementptr inbounds nuw i8, ptr %.719041688.i, i64 4
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %bb.hj
  %.81905.i = phi ptr [ %i.bfm, %bb.hj ], [ %i.bfo, %bb.hk ]
  %i.bfp = getelementptr inbounds nuw i8, ptr %.1418441690.i, i64 8 ; 2 uses
  %i.bfq = add nuw nsw i32 %.318911689.i, 1       ; 2 uses
  %exitcond1782.not.i = icmp eq i32 %i.bfq, %7
  br i1 %exitcond1782.not.i, label %._crit_edge1693.i, label %bb.hf, !llvm.loop !263

._crit_edge1693.i:                                ; preds = %bb.hl, %.preheader1548.i
  %.141844.lcssa.i = phi ptr [ %.131843.lcssa.i, %.preheader1548.i ], [ %i.bfp, %bb.hl ] ; 2 uses
  %.53.lcssa.i = phi ptr [ %.50.lcssa.i, %.preheader1548.i ], [ %.55.i, %bb.hl ] ; 2 uses
  %indvars.iv.next1784.i = add nuw nsw i64 %indvars.iv1783.i, 2 ; 3 uses
  %i.bfr = icmp slt i64 %indvars.iv.next1784.i, %invariant.op1850.i
  br i1 %i.bfr, label %bb.fn, label %.preheader1547.loopexit.i, !llvm.loop !264

bb.hm:                                            ; preds = %._crit_edge1739.i, %.lr.ph1745.i
  %indvars.iv1787.i = phi i64 [ %i.awa, %.lr.ph1745.i ], [ %indvars.iv.next1788.i, %._crit_edge1739.i ] ; 4 uses
  %.561744.i = phi ptr [ %.40.lcssa.i, %.lr.ph1745.i ], [ %.66.lcssa.i, %._crit_edge1739.i ] ; 4 uses
  %.1518451743.i = phi ptr [ %.101840.lcssa.i, %.lr.ph1745.i ], [ %.191849.lcssa.i, %._crit_edge1739.i ] ; 2 uses
  %i.bfs = load ptr, ptr %2, align 8, !tbaa !9    ; 2 uses
  br i1 %.not.i, label %bb.ho, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.bft = getelementptr inbounds nuw [4 x i8], ptr %i.bfs, i64 %i.avn
  %i.bfu = add nsw i64 %indvars.iv1787.i, %i.avp  ; 2 uses
  %i.bfv = mul nsw i64 %i.bfu, %i.awb
  %i.bfw = getelementptr inbounds [4 x i8], ptr %i.bft, i64 %i.bfv
  br label %bb.hp

bb.ho:                                            ; preds = %bb.hm
  %i.bfx = add nsw i64 %indvars.iv1787.i, %i.avp  ; 2 uses
  %i.bfy = mul i64 %i.bfx, %i.k
  %i.bfz = getelementptr inbounds nuw [4 x i8], ptr %i.bfs, i64 %i.bfy
  %i.bga = getelementptr inbounds [4 x i8], ptr %i.bfz, i64 %i.avm
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ho, %bb.hn
  %.pre-phi1791.i = phi i64 [ %i.bfx, %bb.ho ], [ %i.bfu, %bb.hn ] ; 2 uses
  %.01793.i = phi ptr [ %i.bga, %bb.ho ], [ %i.bfw, %bb.hn ] ; 2 uses
  %i.bgb = load ptr, ptr %8, align 8, !tbaa !9
  %i.bgc = getelementptr inbounds nuw [4 x i8], ptr %i.bgb, i64 %.pre-phi1791.i
  %i.bgd = load float, ptr %i.bgc, align 4, !tbaa !147 ; 3 uses
  %i.bge = insertelement <4 x float> poison, float %i.bgd, i64 0
  %i.bgf = shufflevector <4 x float> %i.bge, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %.not1934.i = icmp eq ptr %.561744.i, null
  br i1 %.not1934.i, label %.thread1516.i, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  br i1 %i.avo, label %.thread1504.i, label %bb.hr

.thread1504.i:                                    ; preds = %bb.hq
  %i.bgg = load float, ptr %.561744.i, align 4, !tbaa !147
  %i.bgh = fmul fast float %i.bgg, %10            ; 2 uses
  %i.bgi = insertelement <4 x float> poison, float %i.bgh, i64 0
  %i.bgj = shufflevector <4 x float> %i.bgi, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.thread1516.i

bb.hr:                                            ; preds = %bb.hq
  br i1 %or.cond31.i, label %bb.hs, label %bb.ht

bb.hs:                                            ; preds = %bb.hr
  %i.bgk = load ptr, ptr %1, align 8, !tbaa !9
  %i.bgl = getelementptr inbounds [4 x i8], ptr %i.bgk, i64 %i.avp
  %i.bgm = getelementptr inbounds nuw [4 x i8], ptr %i.bgl, i64 %indvars.iv1787.i ; 2 uses
  %i.bgn = load float, ptr %i.bgm, align 4, !tbaa !147
  %i.bgo = fmul fast float %i.bgn, %10            ; 2 uses
  %i.bgp = insertelement <4 x float> poison, float %i.bgo, i64 0
  %i.bgq = shufflevector <4 x float> %i.bgp, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.thread1516.i

bb.ht:                                            ; preds = %bb.hr
  switch i32 %3, label %.thread1516.i [
    i32 3, label %bb.hu
    i32 4, label %bb.hv
  ]

bb.hu:                                            ; preds = %bb.ht
  %i.bgr = load ptr, ptr %1, align 8, !tbaa !9
end_hunk_1

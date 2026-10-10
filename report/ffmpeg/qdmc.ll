Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/qdmc?download=true
inline.NumInlined: 34
inline.NumDeleted: 18
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@qdmc_decode_frame:bb.a
  %i.zn = insertelement <4 x float> %i.zm, float %i.zj, i64 3
  %i.zo = getelementptr inbounds nuw i8, ptr %i.xp, i64 8
  %i.zp = getelementptr i8, ptr %i.xq, i64 24
  %i.zq = getelementptr i8, ptr %i.xs, i64 40
  %i.zr = getelementptr i8, ptr %i.xu, i64 56
  %i.zs = load float, ptr %i.zo, align 4, !tbaa !29, !alias.scope !141, !noalias !142
  %i.zt = load float, ptr %i.zp, align 4, !tbaa !29, !alias.scope !141, !noalias !142
  %i.zu = load float, ptr %i.zq, align 4, !tbaa !29, !alias.scope !141, !noalias !142
  %i.zv = load float, ptr %i.zr, align 4, !tbaa !29, !alias.scope !141, !noalias !142
  %i.zw = insertelement <4 x float> poison, float %i.zs, i64 0
  %i.zx = insertelement <4 x float> %i.zw, float %i.zt, i64 1
  %i.zy = insertelement <4 x float> %i.zx, float %i.zu, i64 2
  %i.zz = insertelement <4 x float> %i.zy, float %i.zv, i64 3
  %i.aaa = getelementptr inbounds nuw i8, ptr %next.gep462, i64 12
  %i.aab = getelementptr i8, ptr %i.xe, i64 28
  %i.aac = getelementptr i8, ptr %i.xf, i64 44
  %i.aad = getelementptr i8, ptr %i.xg, i64 60
  %i.aae = load float, ptr %i.aaa, align 4, !tbaa !29, !alias.scope !143
  %i.aaf = load float, ptr %i.aab, align 4, !tbaa !29, !alias.scope !143
  %i.aag = load float, ptr %i.aac, align 4, !tbaa !29, !alias.scope !143
  %i.aah = load float, ptr %i.aad, align 4, !tbaa !29, !alias.scope !143
  %i.aai = insertelement <4 x float> poison, float %i.aae, i64 0
  %i.aaj = insertelement <4 x float> %i.aai, float %i.aaf, i64 1
  %i.aak = insertelement <4 x float> %i.aaj, float %i.aag, i64 2
  %i.aal = insertelement <4 x float> %i.aak, float %i.aah, i64 3
  %i.aam = getelementptr inbounds nuw i8, ptr %i.xp, i64 12
  %i.aan = getelementptr i8, ptr %i.xq, i64 28
  %i.aao = getelementptr i8, ptr %i.xs, i64 44
  %i.aap = getelementptr i8, ptr %i.xu, i64 60
  %i.aaq = load float, ptr %i.aam, align 4, !tbaa !29, !alias.scope !144, !noalias !145
  %i.aar = load float, ptr %i.aan, align 4, !tbaa !29, !alias.scope !144, !noalias !145
  %i.aas = load float, ptr %i.aao, align 4, !tbaa !29, !alias.scope !144, !noalias !145
  %i.aat = load float, ptr %i.aap, align 4, !tbaa !29, !alias.scope !144, !noalias !145
  %i.aau = insertelement <4 x float> poison, float %i.aaq, i64 0
  %i.aav = insertelement <4 x float> %i.aau, float %i.aar, i64 1
  %i.aaw = insertelement <4 x float> %i.aav, float %i.aas, i64 2
  %i.aax = insertelement <4 x float> %i.aaw, float %i.aat, i64 3
  %i.aay = shufflevector <4 x float> %i.xo, <4 x float> %i.yp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aaz = shufflevector <4 x float> %i.yd, <4 x float> %i.zb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aba = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.wz, <8 x float> %i.aay, <8 x float> %i.aaz)
  %i.abb = shufflevector <4 x float> %i.zn, <4 x float> %i.aal, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.abc = shufflevector <4 x float> %i.zz, <4 x float> %i.aax, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.abd = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.xa, <8 x float> %i.abb, <8 x float> %i.abc)
  %interleaved.vec466 = shufflevector <8 x float> %i.aba, <8 x float> %i.abd, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec466, ptr %i.xp, align 4, !tbaa !29
  %index.next467 = add nuw i64 %index461, 4       ; 2 uses
  %i.abe = icmp eq i64 %index.next467, %n.vec457
  br i1 %i.abe, label %middle.block468, label %vector.body460, !llvm.loop !81

middle.block468:                                  ; preds = %vector.body460
  %cmp.n469 = icmp eq i64 %n.vec457, %i.wm
  br i1 %cmp.n469, label %._crit_edge.i.i.i, label %scalar.ph454.preheader

scalar.ph454.preheader:                           ; preds = %vector.memcheck342, %.lr.ph.i.i.i, %middle.block468
  %indvars.iv.i.i.i.ph = phi i64 [ %i.wj, %vector.memcheck342 ], [ %i.wj, %.lr.ph.i.i.i ], [ %i.wu, %middle.block468 ]
  %.056.i.i.i.ph = phi ptr [ %i.wi, %vector.memcheck342 ], [ %i.wi, %.lr.ph.i.i.i ], [ %i.ww, %middle.block468 ]
  %.04854.i.i.i.ph = phi i32 [ 0, %vector.memcheck342 ], [ 0, %.lr.ph.i.i.i ], [ %i.wy, %middle.block468 ]
  br label %scalar.ph454

scalar.ph454:                                     ; preds = %scalar.ph454.preheader, %scalar.ph454
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %scalar.ph454 ], [ %indvars.iv.i.i.i.ph, %scalar.ph454.preheader ] ; 2 uses
  %.056.i.i.i = phi ptr [ %i.abz, %scalar.ph454 ], [ %.056.i.i.i.ph, %scalar.ph454.preheader ] ; 5 uses
  %.04854.i.i.i = phi i32 [ %i.aby, %scalar.ph454 ], [ %.04854.i.i.i.ph, %scalar.ph454.preheader ]
  %i.abf = load float, ptr %.056.i.i.i, align 4, !tbaa !29
  %i.abg = getelementptr inbounds nuw [4 x i8], ptr %i.uc, i64 %indvars.iv.i.i.i ; 5 uses
  %i.abh = load float, ptr %i.abg, align 4, !tbaa !29
  %i.abi = tail call nsz float @llvm.fmuladd.f32(float %i.wa, float %i.abf, float %i.abh)
  store float %i.abi, ptr %i.abg, align 4, !tbaa !29
  %i.abj = getelementptr inbounds nuw i8, ptr %.056.i.i.i, i64 4
  %i.abk = load float, ptr %i.abj, align 4, !tbaa !29
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abg, i64 4 ; 2 uses
  %i.abm = load float, ptr %i.abl, align 4, !tbaa !29
  %i.abn = tail call nsz float @llvm.fmuladd.f32(float %i.wa, float %i.abk, float %i.abm)
  store float %i.abn, ptr %i.abl, align 4, !tbaa !29
  %i.abo = getelementptr inbounds nuw i8, ptr %.056.i.i.i, i64 8
  %i.abp = load float, ptr %i.abo, align 4, !tbaa !29
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abg, i64 8 ; 2 uses
  %i.abr = load float, ptr %i.abq, align 4, !tbaa !29
  %i.abs = tail call nsz float @llvm.fmuladd.f32(float %i.wa, float %i.abp, float %i.abr)
  store float %i.abs, ptr %i.abq, align 4, !tbaa !29
  %i.abt = getelementptr inbounds nuw i8, ptr %.056.i.i.i, i64 12
  %i.abu = load float, ptr %i.abt, align 4, !tbaa !29
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abg, i64 12 ; 2 uses
  %i.abw = load float, ptr %i.abv, align 4, !tbaa !29
  %i.abx = tail call nsz float @llvm.fmuladd.f32(float %i.wa, float %i.abu, float %i.abw)
  store float %i.abx, ptr %i.abv, align 4, !tbaa !29
  %i.aby = add nuw nsw i32 %.04854.i.i.i, 4       ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 4
  %i.abz = getelementptr inbounds nuw i8, ptr %.056.i.i.i, i64 16
  %i.aca = icmp samesign ult i32 %i.aby, %i.wg
  br i1 %i.aca, label %scalar.ph454, label %._crit_edge.i.i.i, !llvm.loop !82

._crit_edge.i.i.i:                                ; preds = %scalar.ph454, %middle.block468, %bb.az
  %i.acb = icmp slt i32 %i.wg, %i.wf
  br i1 %i.acb, label %.lr.ph61.i.i.i, label %lin_calc.exit.i.i

.lr.ph61.i.i.i:                                   ; preds = %._crit_edge.i.i.i
  %i.acc = zext nneg i32 %i.wg to i64
  %i.acd = getelementptr [4 x i8], ptr %i.uf, i64 %i.acc
  %i.ace = getelementptr [4 x i8], ptr %i.acd, i64 %i.wh ; 5 uses
  %i.acf = add nuw nsw i32 %i.wg, %i.vt
  %i.acg = zext nneg i32 %i.acf to i64            ; 5 uses
  %i.ach = xor i32 %i.vt, -1
  %i.aci = add nsw i32 %i.we, %i.ach
  %i.acj = sub nsw i32 %i.aci, %i.wg              ; 2 uses
  %i.ack = zext i32 %i.acj to i64
  %i.acl = add nuw nsw i64 %i.ack, 1              ; 2 uses
  %min.iters.check324 = icmp ult i32 %i.acj, 7
  br i1 %min.iters.check324, label %scalar.ph323.preheader, label %vector.memcheck313

vector.memcheck313:                               ; preds = %.lr.ph61.i.i.i
  %i.acm = shl nuw nsw i64 %i.acg, 2              ; 2 uses
  %scevgep315 = getelementptr i8, ptr %scevgep314, i64 %i.acm
  %i.acn = xor i32 %i.vt, -1
  %i.aco = add nsw i32 %i.we, %i.acn
  %i.acp = sub nsw i32 %i.aco, %i.wg
  %i.acq = zext i32 %i.acp to i64
  %i.acr = shl nuw nsw i64 %i.acq, 2              ; 2 uses
  %i.acs = getelementptr i8, ptr %scevgep316, i64 %i.acr
  %scevgep317 = getelementptr i8, ptr %i.acs, i64 %i.acm
  %i.act = shl nsw i32 %i.wf, 2
  %i.acu = and i32 %i.act, 262128
  %i.acv = zext nneg i32 %i.acu to i64
  %i.acw = getelementptr i8, ptr %scevgep318, i64 %i.acr
  %scevgep319 = getelementptr i8, ptr %i.acw, i64 %i.acv
  %bound0320 = icmp ult ptr %scevgep315, %scevgep319
  %bound1321 = icmp ult ptr %i.ace, %scevgep317
  %found.conflict322 = and i1 %bound0320, %bound1321
  br i1 %found.conflict322, label %scalar.ph323.preheader, label %vector.ph325

vector.ph325:                                     ; preds = %vector.memcheck313
  %n.vec326 = and i64 %i.acl, 8589934584          ; 5 uses
  %i.acx = add nuw nsw i64 %n.vec326, %i.acg
  %i.acy = shl nuw nsw i64 %n.vec326, 2
  %i.acz = getelementptr i8, ptr %i.ace, i64 %i.acy
  %i.ada = trunc i64 %n.vec326 to i32
  %i.adb = add i32 %i.wg, %i.ada
  %broadcast.splatinsert327 = insertelement <4 x float> poison, float %i.wa, i64 0
  %broadcast.splat328 = shufflevector <4 x float> %broadcast.splatinsert327, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep527 = getelementptr [4 x i8], ptr %i.uc, i64 %i.acg
  br label %vector.body329

vector.body329:                                   ; preds = %vector.body329, %vector.ph325
  %index330 = phi i64 [ 0, %vector.ph325 ], [ %index.next336, %vector.body329 ] ; 3 uses
  %i.adc = shl i64 %index330, 2
  %next.gep331 = getelementptr i8, ptr %i.ace, i64 %i.adc ; 2 uses
  %i.add = getelementptr i8, ptr %next.gep331, i64 16
  %wide.load332 = load <4 x float>, ptr %next.gep331, align 4, !tbaa !29, !alias.scope !146
  %wide.load333 = load <4 x float>, ptr %i.add, align 4, !tbaa !29, !alias.scope !146
  %gep528 = getelementptr [4 x i8], ptr %invariant.gep527, i64 %index330 ; 3 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %gep528, i64 16 ; 2 uses
  %wide.load334 = load <4 x float>, ptr %gep528, align 4, !tbaa !29, !alias.scope !147, !noalias !146
  %wide.load335 = load <4 x float>, ptr %i.ade, align 4, !tbaa !29, !alias.scope !147, !noalias !146
  %i.adf = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat328, <4 x float> %wide.load332, <4 x float> %wide.load334)
  %i.adg = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat328, <4 x float> %wide.load333, <4 x float> %wide.load335)
  store <4 x float> %i.adf, ptr %gep528, align 4, !tbaa !29, !alias.scope !147, !noalias !146
  store <4 x float> %i.adg, ptr %i.ade, align 4, !tbaa !29, !alias.scope !147, !noalias !146
  %index.next336 = add nuw i64 %index330, 8       ; 2 uses
  %i.adh = icmp eq i64 %index.next336, %n.vec326
  br i1 %i.adh, label %middle.block337, label %vector.body329, !llvm.loop !86

middle.block337:                                  ; preds = %vector.body329
  %cmp.n338 = icmp eq i64 %i.acl, %n.vec326
  br i1 %cmp.n338, label %lin_calc.exit.i.i, label %scalar.ph323.preheader

scalar.ph323.preheader:                           ; preds = %vector.memcheck313, %.lr.ph61.i.i.i, %middle.block337
  %indvars.iv64.i.i.i.ph = phi i64 [ %i.acg, %vector.memcheck313 ], [ %i.acg, %.lr.ph61.i.i.i ], [ %i.acx, %middle.block337 ]
  %.159.i.i.i.ph = phi ptr [ %i.ace, %vector.memcheck313 ], [ %i.ace, %.lr.ph61.i.i.i ], [ %i.acz, %middle.block337 ]
  %.14957.i.i.i.ph = phi i32 [ %i.wg, %vector.memcheck313 ], [ %i.wg, %.lr.ph61.i.i.i ], [ %i.adb, %middle.block337 ]
  br label %scalar.ph323

scalar.ph323:                                     ; preds = %scalar.ph323.preheader, %scalar.ph323
  %indvars.iv64.i.i.i = phi i64 [ %indvars.iv.next65.i.i.i, %scalar.ph323 ], [ %indvars.iv64.i.i.i.ph, %scalar.ph323.preheader ] ; 2 uses
  %.159.i.i.i = phi ptr [ %i.adn, %scalar.ph323 ], [ %.159.i.i.i.ph, %scalar.ph323.preheader ] ; 2 uses
  %.14957.i.i.i = phi i32 [ %i.adm, %scalar.ph323 ], [ %.14957.i.i.i.ph, %scalar.ph323.preheader ]
  %i.adi = load float, ptr %.159.i.i.i, align 4, !tbaa !29
  %i.adj = getelementptr inbounds nuw [4 x i8], ptr %i.uc, i64 %indvars.iv64.i.i.i ; 2 uses
  %i.adk = load float, ptr %i.adj, align 4, !tbaa !29
  %i.adl = tail call nsz float @llvm.fmuladd.f32(float %i.wa, float %i.adi, float %i.adk)
  store float %i.adl, ptr %i.adj, align 4, !tbaa !29
  %i.adm = add nuw nsw i32 %.14957.i.i.i, 1       ; 2 uses
  %indvars.iv.next65.i.i.i = add nuw nsw i64 %indvars.iv64.i.i.i, 1
  %i.adn = getelementptr inbounds nuw i8, ptr %.159.i.i.i, i64 4
  %i.ado = icmp slt i32 %i.adm, %i.wf
  br i1 %i.ado, label %scalar.ph323, label %lin_calc.exit.i.i, !llvm.loop !87

lin_calc.exit.i.i:                                ; preds = %scalar.ph323, %middle.block337, %._crit_edge.i.i.i
  %indvars.iv.next.i173.i = add nuw nsw i64 %indvars.iv.i169.i, 1 ; 2 uses
  %exitcond.not.i174.i = icmp eq i64 %indvars.iv.next.i173.i, %wide.trip.count.i168.i
  br i1 %exitcond.not.i174.i, label %._crit_edge.i171.i, label %bb.aw, !llvm.loop !88

._crit_edge.i171.i:                               ; preds = %lin_calc.exit.i.i, %bb.aw, %bb.av
  br i1 %i.vd, label %.lr.ph62.i.i, label %add_noise.exit.i

.lr.ph62.i.i:                                     ; preds = %._crit_edge.i171.i
  %.promoted.i.i = load i32, ptr %i.ug, align 16, !tbaa !148
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.vg, i64 8
  %.pre.i172.i = load float, ptr %.phi.trans.insert.i.i, align 4, !tbaa !29
  %.phi.trans.insert71.i.i = getelementptr inbounds nuw i8, ptr %i.vi, i64 8
  %.pre72.i.i = load float, ptr %.phi.trans.insert71.i.i, align 4, !tbaa !29
  %5 = insertelement <2 x float> poison, float %.pre72.i.i, i64 0
  %6 = insertelement <2 x float> %5, float %.pre.i172.i, i64 1
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ba, %.lr.ph62.i.i
  %indvars.iv66.i.i = phi i64 [ 2, %.lr.ph62.i.i ], [ %indvars.iv.next67.i.i, %bb.ba ] ; 4 uses
  %7 = phi i32 [ %.promoted.i.i, %.lr.ph62.i.i ], [ %i.ads, %bb.ba ]
  %8 = phi <2 x float> [ %6, %.lr.ph62.i.i ], [ %30, %bb.ba ] ; 2 uses
  %9 = mul i32 %7, 214013
  %10 = getelementptr inbounds nuw [4 x i8], ptr %i.uc, i64 %indvars.iv66.i.i
  %11 = load float, ptr %10, align 4, !tbaa !29
  %12 = getelementptr inbounds nuw [4 x i8], ptr %i.vg, i64 %indvars.iv66.i.i
  %13 = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %indvars.iv66.i.i
  %indvars.iv.next67.i.i = add nuw nsw i64 %indvars.iv66.i.i, 1 ; 4 uses
  %14 = getelementptr inbounds nuw [4 x i8], ptr %i.vg, i64 %indvars.iv.next67.i.i ; 2 uses
  %15 = load float, ptr %14, align 4, !tbaa !29
  %i.adp = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %indvars.iv.next67.i.i ; 2 uses
  %i.adq = load float, ptr %i.adp, align 4, !tbaa !29
  %16 = add i32 %9, 2531011                       ; 2 uses
  %i.adr = mul i32 %16, 214013
  %i.ads = add i32 %i.adr, 2531011                ; 3 uses
  %17 = insertelement <2 x i32> poison, i32 %i.ads, i64 0
  %18 = insertelement <2 x i32> %17, i32 %16, i64 1
  %19 = and <2 x i32> %18, splat (i32 32767)
  %20 = add nsw <2 x i32> %19, splat (i32 -16384)
  %21 = sitofp <2 x i32> %20 to <2 x float>
  %22 = fmul nnan nsz <2 x float> %21, splat (float f0x38000000)
  %23 = insertelement <2 x float> poison, float %11, i64 0
  %24 = shufflevector <2 x float> %23, <2 x float> poison, <2 x i32> zeroinitializer
  %25 = fmul nsz <2 x float> %24, %22             ; 3 uses
  %foldExtExtBinop = fadd nsz <2 x float> %8, %25
  %26 = extractelement <2 x float> %foldExtExtBinop, i64 1
  store float %26, ptr %12, align 4, !tbaa !29
  %foldExtExtBinop484 = fadd nsz <2 x float> %8, %25
  %27 = extractelement <2 x float> %foldExtExtBinop484, i64 0
  store float %27, ptr %13, align 4, !tbaa !29
  %28 = insertelement <2 x float> poison, float %i.adq, i64 0
  %29 = insertelement <2 x float> %28, float %15, i64 1
  %30 = fsub nsz <2 x float> %29, %25             ; 3 uses
  %31 = extractelement <2 x float> %30, i64 1
  store float %31, ptr %14, align 4, !tbaa !29
  %32 = extractelement <2 x float> %30, i64 0
  store float %32, ptr %i.adp, align 4, !tbaa !29
  %exitcond70.not.i.i = icmp eq i64 %indvars.iv.next67.i.i, %wide.trip.count69.i.i
  br i1 %exitcond70.not.i.i, label %._crit_edge63.i.i, label %bb.ba, !llvm.loop !89

._crit_edge63.i.i:                                ; preds = %bb.ba
  store i32 %i.ads, ptr %i.ug, align 16, !tbaa !148
  br label %add_noise.exit.i

add_noise.exit.i:                                 ; preds = %._crit_edge63.i.i, %._crit_edge.i171.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.av, !llvm.loop !90

._crit_edge.i:                                    ; preds = %add_noise.exit.i, %.preheader192.i
  %i.adt = icmp eq i32 %i.un, 1                   ; 2 uses
  br label %bb.bb

bb.bb:                                            ; preds = %add_wave.exit.i.i, %._crit_edge.i
  %indvars.iv59.i.i = phi i64 [ 0, %._crit_edge.i ], [ %indvars.iv.next60.i.i, %add_wave.exit.i.i ] ; 6 uses
  %i.adu = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv59.i.i ; 2 uses
  %i.adv = load i32, ptr %i.adu, align 4, !tbaa !37 ; 3 uses
  %i.adw = getelementptr inbounds nuw [65536 x i8], ptr %i.jp, i64 %indvars.iv59.i.i
  %i.adx = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv59.i.i
  %i.ady = load i32, ptr %i.adx, align 4, !tbaa !37 ; 3 uses
  %i.adz = icmp slt i32 %i.adv, %i.ady
  br i1 %i.adz, label %.lr.ph.i176.i, label %add_wave.exit.i.i

.lr.ph.i176.i:                                    ; preds = %bb.bb
  %i.aea = getelementptr inbounds nuw [124 x i8], ptr %i.ty, i64 %indvars.iv59.i.i
  %i.aeb = trunc i64 %indvars.iv59.i.i to i32     ; 3 uses
  %umax.i.i.i = lshr i32 31, %i.aeb
  %wide.trip.count.i.i.i = zext nneg i32 %umax.i.i.i to i64
  %i.aec = sext i32 %i.adv to i64
  %wide.trip.count.i177.i = sext i32 %i.ady to i64
  %i.aed = sub i32 4, %i.aeb
  %i.aee = add i32 %i.aeb, 3
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bf, %.lr.ph.i176.i
  %indvars.iv.i178.i = phi i64 [ %i.aec, %.lr.ph.i176.i ], [ %indvars.iv.next.i183.i, %bb.bf ] ; 3 uses
  %i.aef = getelementptr inbounds [8 x i8], ptr %i.adw, i64 %indvars.iv.i178.i ; 5 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aef, i64 2
  %i.aeh = load i8, ptr %i.aeg, align 2, !tbaa !129
  %i.aei = zext i8 %i.aeh to i32                  ; 2 uses
  %i.aej = icmp samesign ult i32 %.0131240.i, %i.aei
  br i1 %i.aej, label %add_wave.exit.loopexit.split.loop.exit.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aef, i64 4
  %i.ael = load i16, ptr %i.aek, align 2, !tbaa !130
  %i.aem = sext i16 %i.ael to i32                 ; 2 uses
  %i.aen = load i8, ptr %i.aef, align 2, !tbaa !131
  %i.aeo = zext i8 %i.aen to i64
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aef, i64 6
  %i.aeq = load i16, ptr %i.aep, align 2, !tbaa !132
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aef, i64 1
  %i.aes = load i8, ptr %i.aer, align 1, !tbaa !133
  %i.aet = zext i8 %i.aes to i32
  %i.aeu = and i16 %i.aeq, 63
  %i.aev = zext nneg i16 %i.aeu to i64
  %i.aew = getelementptr inbounds nuw [4 x i8], ptr @amplitude_tab, i64 %i.aev
  %i.aex = load float, ptr %i.aew, align 4, !tbaa !29
  %i.aey = shl nuw nsw i32 %i.aet, 6
  %i.aez = ashr i32 %i.aem, %i.aed                ; 3 uses
  %i.afa = shl nsw i32 %i.aez, 8
  %reass.sub47 = sub nsw i32 %i.aey, %i.afa
  %i.afb = add nsw i32 %reass.sub47, -128
  %spec.select.i.i.i = select i1 %i.adt, i64 0, i64 %i.aeo
  %i.afc = getelementptr inbounds nuw [65536 x i8], ptr %i.tx, i64 %spec.select.i.i.i ; 4 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afc, i64 131072 ; 2 uses
  %i.afe = load i32, ptr %i.br, align 8, !tbaa !125
  %i.aff = add i32 %i.afe, %i.aez
  %i.afg = load i32, ptr %i.jo, align 4, !tbaa !41 ; 2 uses
  %i.afh = mul nsw i32 %i.afg, %i.aei
  %i.afi = add i32 %i.aff, %i.afh
  %i.afj = sext i32 %i.afi to i64                 ; 2 uses
  %i.afk = getelementptr inbounds [4 x i8], ptr %i.afd, i64 %i.afj
  %i.afl = getelementptr inbounds [4 x i8], ptr %i.afc, i64 %i.afj
  %i.afm = shl nsw i32 %i.aem, 1
  %i.afn = or disjoint i32 %i.afm, 1
  %i.afo = shl nsw i32 %i.afn, %i.aee
  %i.afp = sext i32 %i.afg to i64                 ; 2 uses
  %i.afq = load i32, ptr %i.j, align 16, !tbaa !40
  %i.afr = shl nsw i32 %i.afq, 1
  %i.afs = sext i32 %i.afr to i64
  %i.aft = getelementptr inbounds [4 x i8], ptr %i.afc, i64 %i.afs
  %i.afu = sext i32 %i.aez to i64                 ; 2 uses
  %i.afv = getelementptr inbounds [4 x i8], ptr %i.afc, i64 %i.afu
  %i.afw = getelementptr inbounds [4 x i8], ptr %i.afd, i64 %i.afu
  br label %bb.be

bb.be:                                            ; preds = %bb.be, %bb.bd
  %indvars.iv.i.i180.i = phi i64 [ 0, %bb.bd ], [ %indvars.iv.next.i.i182.i, %bb.be ] ; 2 uses
  %.065.i.i.i = phi ptr [ %i.afk, %bb.bd ], [ %.1.i.i.i, %bb.be ] ; 4 uses
  %.05564.i.i.i = phi ptr [ %i.afl, %bb.bd ], [ %.156.i.i.i, %bb.be ] ; 4 uses
  %.05763.i.i.i = phi i32 [ %i.afb, %bb.bd ], [ %i.afx, %bb.be ]
  %i.afx = add nsw i32 %.05763.i.i.i, %i.afo      ; 3 uses
  %i.afy = getelementptr inbounds nuw [4 x i8], ptr %i.aea, i64 %indvars.iv.i.i180.i
  %i.afz = load float, ptr %i.afy, align 4, !tbaa !29
  %i.aga = fmul nsz float %i.aex, %i.afz          ; 2 uses
  %i.agb = and i32 %i.afx, 510
  %i.agc = zext nneg i32 %i.agb to i64
  %i.agd = getelementptr inbounds nuw [4 x i8], ptr @sin_table, i64 %i.agc
  %i.age = load float, ptr %i.agd, align 8, !tbaa !29
  %i.agf = fmul nsz float %i.aga, %i.age          ; 2 uses
  %i.agg = add nsw i32 %i.afx, 128
  %i.agh = and i32 %i.agg, 511
  %i.agi = zext nneg i32 %i.agh to i64
  %i.agj = getelementptr inbounds nuw [4 x i8], ptr @sin_table, i64 %i.agi
  %i.agk = load float, ptr %i.agj, align 4, !tbaa !29
  %i.agl = fmul nsz float %i.aga, %i.agk          ; 2 uses
  %i.agm = load float, ptr %.05564.i.i.i, align 4, !tbaa !29
  %i.agn = fadd nsz float %i.agf, %i.agm
  store float %i.agn, ptr %.05564.i.i.i, align 4, !tbaa !29
  %i.ago = getelementptr inbounds nuw i8, ptr %.05564.i.i.i, i64 4 ; 2 uses
  %i.agp = load float, ptr %i.ago, align 4, !tbaa !29
  %i.agq = fsub nsz float %i.agp, %i.agf
  store float %i.agq, ptr %i.ago, align 4, !tbaa !29
  %i.agr = load float, ptr %.065.i.i.i, align 4, !tbaa !29
  %i.ags = fadd nsz float %i.agl, %i.agr
  store float %i.ags, ptr %.065.i.i.i, align 4, !tbaa !29
  %i.agt = getelementptr inbounds nuw i8, ptr %.065.i.i.i, i64 4 ; 2 uses
  %i.agu = load float, ptr %i.agt, align 4, !tbaa !29
  %i.agv = fsub nsz float %i.agu, %i.agl
  store float %i.agv, ptr %i.agt, align 4, !tbaa !29
  %i.agw = getelementptr inbounds [4 x i8], ptr %.05564.i.i.i, i64 %i.afp ; 2 uses
  %i.agx = getelementptr inbounds [4 x i8], ptr %.065.i.i.i, i64 %i.afp
  %.not.i.i181.i = icmp ult ptr %i.agw, %i.aft    ; 2 uses
  %.156.i.i.i = select i1 %.not.i.i181.i, ptr %i.agw, ptr %i.afv
  %.1.i.i.i = select i1 %.not.i.i181.i, ptr %i.agx, ptr %i.afw
  %indvars.iv.next.i.i182.i = add nuw nsw i64 %indvars.iv.i.i180.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i182.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %bb.bf, label %bb.be, !llvm.loop !91

bb.bf:                                            ; preds = %bb.be
  %indvars.iv.next.i183.i = add nsw i64 %indvars.iv.i178.i, 1 ; 2 uses
  %exitcond.not.i184.i = icmp eq i64 %indvars.iv.next.i183.i, %wide.trip.count.i177.i
  br i1 %exitcond.not.i184.i, label %add_wave.exit.i.i, label %bb.bc, !llvm.loop !92

add_wave.exit.loopexit.split.loop.exit.i.i:       ; preds = %bb.bc
  %i.agy = trunc nsw i64 %indvars.iv.i178.i to i32
  br label %add_wave.exit.i.i

add_wave.exit.i.i:                                ; preds = %bb.bf, %add_wave.exit.loopexit.split.loop.exit.i.i, %bb.bb
  %.041.lcssa.i.i = phi i32 [ %i.adv, %bb.bb ], [ %i.agy, %add_wave.exit.loopexit.split.loop.exit.i.i ], [ %i.ady, %bb.bf ]
  store i32 %.041.lcssa.i.i, ptr %i.adu, align 4, !tbaa !37
  %indvars.iv.next60.i.i = add nuw nsw i64 %indvars.iv59.i.i, 1 ; 2 uses
  %exitcond62.not.i.i = icmp eq i64 %indvars.iv.next60.i.i, 4
  br i1 %exitcond62.not.i.i, label %bb.bg, label %bb.bb, !llvm.loop !93

bb.bg:                                            ; preds = %add_wave.exit.i.i
  %i.agz = load i32, ptr %i.tz, align 4, !tbaa !37 ; 3 uses
  %i.aha = load i32, ptr %i.ub, align 16, !tbaa !37 ; 3 uses
  %i.ahb = icmp slt i32 %i.agz, %i.aha
  br i1 %i.ahb, label %.lr.ph53.i.i, label %add_waves.exit.i

.lr.ph53.i.i:                                     ; preds = %bb.bg
  %i.ahc = sext i32 %i.agz to i64
  %wide.trip.count66.i.i = sext i32 %i.aha to i64
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bi, %.lr.ph53.i.i
  %indvars.iv63.i.i = phi i64 [ %i.ahc, %.lr.ph53.i.i ], [ %indvars.iv.next64.i.i, %bb.bi ] ; 3 uses
  %i.ahd = getelementptr inbounds [8 x i8], ptr %i.ua, i64 %indvars.iv63.i.i ; 5 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahd, i64 2
  %i.ahf = load i8, ptr %i.ahe, align 2, !tbaa !129
  %i.ahg = zext i8 %i.ahf to i32                  ; 2 uses
  %i.ahh = icmp samesign ult i32 %.0131240.i, %i.ahg
  br i1 %i.ahh, label %._crit_edge.loopexit.split.loop.exit.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahd, i64 4
  %i.ahj = load i16, ptr %i.ahi, align 2, !tbaa !130
  %i.ahk = sext i16 %i.ahj to i32
  %i.ahl = load i8, ptr %i.ahd, align 2, !tbaa !131
  %i.ahm = zext i8 %i.ahl to i64
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahd, i64 6
  %i.aho = load i16, ptr %i.ahn, align 2, !tbaa !132
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.ahd, i64 1
  %i.ahq = load i8, ptr %i.ahp, align 1, !tbaa !133
  %i.ahr = zext i8 %i.ahq to i32
  %spec.select.i45.i.i = select i1 %i.adt, i64 0, i64 %i.ahm
  %i.ahs = and i16 %i.aho, 63
  %i.aht = zext nneg i16 %i.ahs to i64
  %i.ahu = getelementptr inbounds nuw [4 x i8], ptr @amplitude_tab, i64 %i.aht
  %i.ahv = load float, ptr %i.ahu, align 4, !tbaa !29 ; 2 uses
  %i.ahw = shl nuw nsw i32 %i.ahr, 6              ; 2 uses
  %i.ahx = and i32 %i.ahw, 448
  %i.ahy = zext nneg i32 %i.ahx to i64
  %i.ahz = getelementptr inbounds nuw [4 x i8], ptr @sin_table, i64 %i.ahy
  %i.aia = load float, ptr %i.ahz, align 16, !tbaa !29
  %i.aib = fmul nsz float %i.ahv, %i.aia          ; 2 uses
  %i.aic = add nuw nsw i32 %i.ahw, 128
  %i.aid = and i32 %i.aic, 448
  %i.aie = zext nneg i32 %i.aid to i64
  %i.aif = getelementptr inbounds nuw [4 x i8], ptr @sin_table, i64 %i.aie
  %i.aig = load float, ptr %i.aif, align 16, !tbaa !29
  %i.aih = fmul nsz float %i.ahv, %i.aig          ; 2 uses
  %i.aii = load i32, ptr %i.br, align 8, !tbaa !125
  %i.aij = add nsw i32 %i.aii, %i.ahk
  %i.aik = load i32, ptr %i.jo, align 4, !tbaa !41
end_hunk_0

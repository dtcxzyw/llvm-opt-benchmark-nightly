Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_demosaic?download=true
inline.NumInlined: 382
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 134
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 177
begin_hunk_0_@process:bb.a
  %i.mcc = fcmp reassoc nsz arcp contract afn ogt float %.reass.i568.epil, f0x477FFEFD
  br i1 %i.mcc, label %_calc_gamma.exit.i.epil, label %bb.ot

bb.ot:                                            ; preds = %bb.os
  %i.mcd = fptosi float %.reass.i568.epil to i32  ; 2 uses
  %i.mce = sitofp reassoc nsz arcp contract afn i32 %i.mcd to float
  %i.mcf = fsub reassoc nsz arcp contract afn float %.reass.i568.epil, %i.mce
  %i.mcg = zext nneg i32 %i.mcd to i64
  %i.mch = getelementptr inbounds nuw [4 x i8], ptr %i.lyv, i64 %i.mcg ; 2 uses
  %i.mci = load float, ptr %i.mch, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %i.mcj = getelementptr inbounds nuw i8, ptr %i.mch, i64 4
  %i.mck = load float, ptr %i.mcj, align 4, !tbaa !12, !noalias !549
  %i.mcl = fsub reassoc nsz arcp contract afn float %i.mck, %i.mci
  %i.mcm = fmul reassoc nsz arcp contract afn float %i.mcl, %i.mcf
  %i.mcn = fadd reassoc nsz arcp contract afn float %i.mcm, %i.mci
  br label %_calc_gamma.exit.i.epil

_calc_gamma.exit.i.epil:                          ; preds = %bb.ot, %bb.os, %.lr.ph.split.i.epil.preheader
  %.1.i.i569.epil = phi nsz float [ 1.000000e+00, %bb.os ], [ %i.mcn, %bb.ot ], [ 0.000000e+00, %.lr.ph.split.i.epil.preheader ]
  store float %.1.i.i569.epil, ptr %.09161034.i.epil.init, align 4, !tbaa !12, !noalias !549
  br label %._crit_edge.i570

._crit_edge.i570:                                 ; preds = %_calc_gamma.exit.i.epil, %._crit_edge.i570.loopexit4594.unr-lcssa, %_calc_gamma.exit.us.i, %middle.block4423, %vec.epilog.middle.block4442
  %indvars.iv.next1223.i = add nuw nsw i64 %indvars.iv1222.i, 1 ; 2 uses
  %indvars.iv.next1215.i = add i32 %indvars.iv1214.i, %i.bo
  %exitcond.not = icmp eq i64 %indvars.iv.next1223.i, %smax1153
  %indvar.next4403 = add i64 %indvar4402, 1
  br i1 %exitcond.not, label %.preheader1026.i, label %.lr.ph.i566

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.preheader, %_calc_gamma.exit.i.1
  %indvars.iv1216.i = phi i64 [ %indvars.iv.next1217.i.1, %_calc_gamma.exit.i.1 ], [ %i.lzk, %.lr.ph.split.i.preheader ] ; 3 uses
  %.09161034.i = phi ptr [ %i.mdu, %_calc_gamma.exit.i.1 ], [ %i.lzm, %.lr.ph.split.i.preheader ] ; 3 uses
  %niter4680 = phi i32 [ %niter4680.next.1, %_calc_gamma.exit.i.1 ], [ 0, %.lr.ph.split.i.preheader ]
  %i.mco = getelementptr inbounds nuw [4 x i8], ptr %i.axo, i64 %indvars.iv1216.i
  %i.mcp = load float, ptr %i.mco, align 4, !tbaa !12, !alias.scope !550
  %.reass.i568 = fmul reassoc nsz arcp contract afn float %invariant.op.i553, %i.mcp ; 4 uses
  %i.mcq = fcmp reassoc nsz arcp contract afn olt float %.reass.i568, 0.000000e+00
  br i1 %i.mcq, label %_calc_gamma.exit.i, label %bb.ou

bb.ou:                                            ; preds = %.lr.ph.split.i
  %i.mcr = fcmp reassoc nsz arcp contract afn ogt float %.reass.i568, f0x477FFEFD
  br i1 %i.mcr, label %_calc_gamma.exit.i, label %bb.ov

bb.ov:                                            ; preds = %bb.ou
  %i.mcs = fptosi float %.reass.i568 to i32       ; 2 uses
  %i.mct = sitofp reassoc nsz arcp contract afn i32 %i.mcs to float
  %i.mcu = fsub reassoc nsz arcp contract afn float %.reass.i568, %i.mct
  %i.mcv = zext nneg i32 %i.mcs to i64
  %i.mcw = getelementptr inbounds nuw [4 x i8], ptr %i.lyv, i64 %i.mcv ; 2 uses
  %i.mcx = load float, ptr %i.mcw, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %i.mcy = getelementptr inbounds nuw i8, ptr %i.mcw, i64 4
  %i.mcz = load float, ptr %i.mcy, align 4, !tbaa !12, !noalias !549
  %i.mda = fsub reassoc nsz arcp contract afn float %i.mcz, %i.mcx
  %i.mdb = fmul reassoc nsz arcp contract afn float %i.mda, %i.mcu
  %i.mdc = fadd reassoc nsz arcp contract afn float %i.mdb, %i.mcx
  br label %_calc_gamma.exit.i

_calc_gamma.exit.i:                               ; preds = %bb.ov, %bb.ou, %.lr.ph.split.i
  %.1.i.i569 = phi nsz float [ 1.000000e+00, %bb.ou ], [ %i.mdc, %bb.ov ], [ 0.000000e+00, %.lr.ph.split.i ]
  store float %.1.i.i569, ptr %.09161034.i, align 4, !tbaa !12, !noalias !549
  %i.mdd = getelementptr inbounds nuw i8, ptr %.09161034.i, i64 4
  %i.mde = getelementptr inbounds nuw [4 x i8], ptr %i.axo, i64 %indvars.iv1216.i
  %i.mdf = getelementptr inbounds nuw i8, ptr %i.mde, i64 4
  %i.mdg = load float, ptr %i.mdf, align 4, !tbaa !12, !alias.scope !550
  %.reass.i568.1 = fmul reassoc nsz arcp contract afn float %invariant.op.i553, %i.mdg ; 4 uses
  %i.mdh = fcmp reassoc nsz arcp contract afn olt float %.reass.i568.1, 0.000000e+00
  br i1 %i.mdh, label %_calc_gamma.exit.i.1, label %bb.ow

bb.ow:                                            ; preds = %_calc_gamma.exit.i
  %i.mdi = fcmp reassoc nsz arcp contract afn ogt float %.reass.i568.1, f0x477FFEFD
  br i1 %i.mdi, label %_calc_gamma.exit.i.1, label %bb.ox

bb.ox:                                            ; preds = %bb.ow
  %i.mdj = fptosi float %.reass.i568.1 to i32     ; 2 uses
  %i.mdk = sitofp reassoc nsz arcp contract afn i32 %i.mdj to float
  %i.mdl = fsub reassoc nsz arcp contract afn float %.reass.i568.1, %i.mdk
  %i.mdm = zext nneg i32 %i.mdj to i64
  %i.mdn = getelementptr inbounds nuw [4 x i8], ptr %i.lyv, i64 %i.mdm ; 2 uses
  %i.mdo = load float, ptr %i.mdn, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %i.mdp = getelementptr inbounds nuw i8, ptr %i.mdn, i64 4
  %i.mdq = load float, ptr %i.mdp, align 4, !tbaa !12, !noalias !549
  %i.mdr = fsub reassoc nsz arcp contract afn float %i.mdq, %i.mdo
  %i.mds = fmul reassoc nsz arcp contract afn float %i.mdr, %i.mdl
  %i.mdt = fadd reassoc nsz arcp contract afn float %i.mds, %i.mdo
  br label %_calc_gamma.exit.i.1

_calc_gamma.exit.i.1:                             ; preds = %bb.ox, %bb.ow, %_calc_gamma.exit.i
  %.1.i.i569.1 = phi nsz float [ 1.000000e+00, %bb.ow ], [ %i.mdt, %bb.ox ], [ 0.000000e+00, %_calc_gamma.exit.i ]
  store float %.1.i.i569.1, ptr %i.mdd, align 4, !tbaa !12, !noalias !549
  %i.mdu = getelementptr inbounds nuw i8, ptr %.09161034.i, i64 8 ; 2 uses
  %indvars.iv.next1217.i.1 = add nuw nsw i64 %indvars.iv1216.i, 2 ; 2 uses
  %niter4680.next.1 = add i32 %niter4680, 2       ; 2 uses
  %niter4680.ncmp.1.not = icmp eq i32 %niter4680.next.1, %unroll_iter4679
  br i1 %niter4680.ncmp.1.not, label %._crit_edge.i570.loopexit4594.unr-lcssa, label %.lr.ph.split.i

.preheader1025.i:                                 ; preds = %._crit_edge1047.i
  br i1 %i.lvx, label %.preheader1019.lr.ph.i, label %._crit_edge1060.i

.preheader1019.lr.ph.i:                           ; preds = %.preheader1025.i
  %i.mdv = icmp sgt i32 %i.lyq, 0
  br i1 %i.mdv, label %.preheader1019.i.preheader, label %.lr.ph1059.i

.preheader1019.i.preheader:                       ; preds = %.preheader1019.lr.ph.i
  %i.mdw = add nsw i64 %i.lym, -3                 ; 3 uses
  %min.iters.check4300 = icmp ult i64 %i.mdw, 8
  %n.vec4302 = and i64 %i.mdw, -8                 ; 3 uses
  %i.mdx = or disjoint i64 %n.vec4302, 4
  %cmp.n4325 = icmp eq i64 %i.mdw, %n.vec4302
  br label %.preheader1019.i

bb.oy:                                            ; preds = %._crit_edge1047.i, %.lr.ph1049.i
  %indvars.iv1231.i = phi i64 [ 2, %.lr.ph1049.i ], [ %indvars.iv.next1232.i, %._crit_edge1047.i ] ; 5 uses
  %indvars.iv1231.tr.i = trunc nuw i64 %indvars.iv1231.i to i32
  %i.mdy = shl i32 %indvars.iv1231.tr.i, 2
  %i.mdz = and i32 %i.mdy, 28                     ; 2 uses
  %i.mea = lshr i32 %.fr1070, %i.mdz              ; 2 uses
  %i.meb = and i32 %i.mea, 1                      ; 2 uses
  %i.mec = icmp slt i32 %i.meb, %.pre-phi1269
  br i1 %i.mec, label %.lr.ph1041.i, label %._crit_edge1042.i

.lr.ph1041.i:                                     ; preds = %bb.oy
  %i.med = mul nuw nsw i64 %indvars.iv1231.i, 136 ; 3 uses
  %i.mee = getelementptr inbounds nuw [4 x i8], ptr %i.luy, i64 %i.med ; 2 uses
  %i.mef = getelementptr inbounds nuw [4 x i8], ptr %i.lus, i64 %i.med ; 2 uses
  %i.meg = getelementptr inbounds nuw [4 x i8], ptr %i.luu, i64 %i.med ; 2 uses
  %i.meh = or disjoint i32 %i.meb, 2
  %i.mei = zext nneg i32 %i.meh to i64            ; 4 uses
  %i.mej = and i32 %i.mea, 1
  %i.mek = zext nneg i32 %i.mej to i64            ; 2 uses
  %i.mel = or disjoint i64 %i.mek, 4
  %i.mem = call i64 @llvm.smax.i64(i64 %i.lzj, i64 %i.mel)
  %i.men = add nsw i64 %i.mem, -3
  %i.meo = sub i64 %i.men, %i.mek                 ; 2 uses
  %min.iters.check4360 = icmp ult i64 %i.meo, 16
  br i1 %min.iters.check4360, label %scalar.ph4359.preheader, label %vector.ph4361

scalar.ph4359.preheader:                          ; preds = %vector.body4366, %.lr.ph1041.i
  %indvars.iv1225.i.ph = phi i64 [ %i.mei, %.lr.ph1041.i ], [ %i.mev, %vector.body4366 ]
  br label %scalar.ph4359

vector.ph4361:                                    ; preds = %.lr.ph1041.i
  %i.mep = lshr i64 %i.meo, 1
  %i.meq = add nuw nsw i64 %i.mep, 1              ; 2 uses
  %i.mer = and i64 %i.meq, 7                      ; 2 uses
  %i.mes = icmp eq i64 %i.mer, 0
  %i.met = select i1 %i.mes, i64 8, i64 %i.mer
  %n.vec4362 = sub nsw i64 %i.meq, %i.met         ; 2 uses
  %i.meu = shl i64 %n.vec4362, 1
  %i.mev = add i64 %i.meu, %i.mei
  %broadcast.splatinsert4363 = insertelement <8 x i64> poison, i64 %i.mei, i64 0
  %broadcast.splat4364 = shufflevector <8 x i64> %broadcast.splatinsert4363, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction4365 = add nuw nsw <8 x i64> %broadcast.splat4364, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  %invariant.gep4815 = getelementptr [4 x i8], ptr %i.mee, i64 %i.mei
  br label %vector.body4366

vector.body4366:                                  ; preds = %vector.body4366, %vector.ph4361
  %index4367 = phi i64 [ 0, %vector.ph4361 ], [ %index.next4397, %vector.body4366 ] ; 2 uses
  %vec.ind4368 = phi <8 x i64> [ %induction4365, %vector.ph4361 ], [ %vec.ind.next4398, %vector.body4366 ] ; 3 uses
  %.idx = shl nuw i64 %index4367, 3
  %gep4816 = getelementptr i8, ptr %invariant.gep4815, i64 %.idx ; 9 uses
  %i.mew = getelementptr inbounds i8, ptr %gep4816, i64 -548
  %wide.vec4369 = load <16 x float>, ptr %i.mew, align 4, !tbaa !12, !noalias !549
  %strided.vec4370 = shufflevector <16 x float> %wide.vec4369, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.mex = getelementptr inbounds i8, ptr %gep4816, i64 -544
  %wide.vec4371 = load <16 x float>, ptr %i.mex, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %strided.vec4372 = shufflevector <16 x float> %wide.vec4371, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %strided.vec4373 = shufflevector <16 x float> %wide.vec4371, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.mey = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4373, %strided.vec4370
  %i.mez = getelementptr inbounds nuw i8, ptr %gep4816, i64 540
  %wide.vec4374 = load <16 x float>, ptr %i.mez, align 4, !tbaa !12, !noalias !549
  %strided.vec4375 = shufflevector <16 x float> %wide.vec4374, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.mfa = fadd reassoc nsz arcp contract afn <8 x float> %i.mey, %strided.vec4375
  %i.mfb = getelementptr inbounds nuw i8, ptr %gep4816, i64 544
  %wide.vec4376 = load <16 x float>, ptr %i.mfb, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %strided.vec4377 = shufflevector <16 x float> %wide.vec4376, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %strided.vec4378 = shufflevector <16 x float> %wide.vec4376, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.mfc = fadd reassoc nsz arcp contract afn <8 x float> %i.mfa, %strided.vec4378
  %i.mfd = fmul reassoc nsz arcp contract afn <8 x float> %i.mfc, splat (float 6.250000e-02)
  %wide.vec4379 = load <16 x float>, ptr %gep4816, align 4, !tbaa !12, !noalias !549
  %strided.vec4380 = shufflevector <16 x float> %wide.vec4379, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 7 uses
  %i.mfe = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec4380, splat (float 2.500000e-01)
  %i.mff = fadd reassoc nsz arcp contract afn <8 x float> %i.mfd, %i.mfe ; 2 uses
  %wide.gep4381 = getelementptr inbounds nuw [4 x i8], ptr %i.mef, <8 x i64> %vec.ind4368
  %i.mfg = getelementptr inbounds i8, ptr %gep4816, i64 -8
  %wide.vec4382 = load <16 x float>, ptr %i.mfg, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %strided.vec4383 = shufflevector <16 x float> %wide.vec4382, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec4384 = shufflevector <16 x float> %wide.vec4382, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 3 uses
  %i.mfh = getelementptr inbounds nuw i8, ptr %gep4816, i64 4
  %wide.vec4385 = load <16 x float>, ptr %i.mfh, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %strided.vec4386 = shufflevector <16 x float> %wide.vec4385, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %strided.vec4387 = shufflevector <16 x float> %wide.vec4385, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.mfi = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4387, %strided.vec4383
  %i.mfj = fmul reassoc nsz arcp contract afn <8 x float> %i.mfi, splat (float 2.500000e-01)
  %i.mfk = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4384, %strided.vec4380
  %i.mfl = fadd reassoc nsz arcp contract afn <8 x float> %i.mfk, %strided.vec4386
  %i.mfm = fmul reassoc nsz arcp contract afn <8 x float> %i.mfl, splat (float 5.000000e-01)
  %i.mfn = fsub reassoc nsz arcp contract afn <8 x float> %i.mfm, %i.mfj ; 6 uses
  %i.mfo = fmul reassoc nsz arcp contract afn <8 x float> %i.mfn, splat (float 5.000000e-01)
  %i.mfp = fadd reassoc nsz arcp contract afn <8 x float> %i.mfo, %i.mff
  %i.mfq = fmul reassoc nsz arcp contract afn <8 x float> %i.mfp, splat (float 1.750000e+00)
  %i.mfr = fcmp reassoc nsz arcp contract afn ule <8 x float> %strided.vec4380, %i.mfq ; 2 uses
  %i.mfs = fcmp reassoc nsz arcp contract afn ult <8 x float> %i.mfn, zeroinitializer
  %i.mft = fcmp reassoc nsz arcp contract afn ole <8 x float> %i.mfn, splat (float 1.000000e+00)
  %i.mfu = select reassoc nsz arcp contract afn <8 x i1> %i.mft, <8 x float> %i.mfn, <8 x float> splat (float 1.000000e+00)
  %i.mfv = call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.mfn, <8 x float> %strided.vec4384)
  %i.mfw = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.mfn, <8 x float> %strided.vec4384)
  %i.mfx = call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %strided.vec4386, <8 x float> %i.mfw)
  %i.mfy = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.mfv, <8 x float> %i.mfx)
  %6 = select <8 x i1> %i.mfr, <8 x i1> %i.mfs, <8 x i1> zeroinitializer
  %predphi4388 = select reassoc nsz arcp contract afn <8 x i1> %6, <8 x float> zeroinitializer, <8 x float> %i.mfu
  %predphi4389 = select reassoc nsz arcp contract afn <8 x i1> %i.mfr, <8 x float> %predphi4388, <8 x float> %i.mfy
  %i.mfz = fsub reassoc nsz arcp contract afn <8 x float> %predphi4389, %strided.vec4380
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.mfz, <8 x ptr> align 4 %wide.gep4381, <8 x i1> splat (i1 true)), !tbaa !12, !noalias !549
  %wide.gep4390 = getelementptr inbounds nuw [4 x i8], ptr %i.meg, <8 x i64> %vec.ind4368
  %i.mga = getelementptr inbounds i8, ptr %gep4816, i64 -1088
  %wide.vec4391 = load <16 x float>, ptr %i.mga, align 4, !tbaa !12, !noalias !549
  %strided.vec4392 = shufflevector <16 x float> %wide.vec4391, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.mgb = getelementptr inbounds nuw i8, ptr %gep4816, i64 1088
  %wide.vec4393 = load <16 x float>, ptr %i.mgb, align 4, !tbaa !12, !noalias !549
  %strided.vec4394 = shufflevector <16 x float> %wide.vec4393, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.mgc = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4394, %strided.vec4392
  %i.mgd = fmul reassoc nsz arcp contract afn <8 x float> %i.mgc, splat (float 2.500000e-01)
  %i.mge = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4372, %strided.vec4380
  %i.mgf = fadd reassoc nsz arcp contract afn <8 x float> %i.mge, %strided.vec4377
  %i.mgg = fmul reassoc nsz arcp contract afn <8 x float> %i.mgf, splat (float 5.000000e-01)
  %i.mgh = fsub reassoc nsz arcp contract afn <8 x float> %i.mgg, %i.mgd ; 6 uses
  %i.mgi = fmul reassoc nsz arcp contract afn <8 x float> %i.mgh, splat (float 5.000000e-01)
  %i.mgj = fadd reassoc nsz arcp contract afn <8 x float> %i.mgi, %i.mff
  %i.mgk = fmul reassoc nsz arcp contract afn <8 x float> %i.mgj, splat (float 1.750000e+00)
  %i.mgl = fcmp reassoc nsz arcp contract afn ule <8 x float> %strided.vec4380, %i.mgk ; 2 uses
  %i.mgm = fcmp reassoc nsz arcp contract afn ult <8 x float> %i.mgh, zeroinitializer
  %i.mgn = fcmp reassoc nsz arcp contract afn ole <8 x float> %i.mgh, splat (float 1.000000e+00)
  %i.mgo = select reassoc nsz arcp contract afn <8 x i1> %i.mgn, <8 x float> %i.mgh, <8 x float> splat (float 1.000000e+00)
  %i.mgp = call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.mgh, <8 x float> %strided.vec4372)
  %i.mgq = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.mgh, <8 x float> %strided.vec4372)
  %i.mgr = call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %strided.vec4377, <8 x float> %i.mgq)
  %i.mgs = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.mgp, <8 x float> %i.mgr)
  %7 = select <8 x i1> %i.mgl, <8 x i1> %i.mgm, <8 x i1> zeroinitializer
  %predphi4395 = select reassoc nsz arcp contract afn <8 x i1> %7, <8 x float> zeroinitializer, <8 x float> %i.mgo
  %predphi4396 = select reassoc nsz arcp contract afn <8 x i1> %i.mgl, <8 x float> %predphi4395, <8 x float> %i.mgs
  %i.mgt = fsub reassoc nsz arcp contract afn <8 x float> %predphi4396, %strided.vec4380
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.mgt, <8 x ptr> align 4 %wide.gep4390, <8 x i1> splat (i1 true)), !tbaa !12, !noalias !549
  %index.next4397 = add nuw i64 %index4367, 8     ; 2 uses
  %vec.ind.next4398 = add nuw nsw <8 x i64> %vec.ind4368, splat (i64 16)
  %i.mgu = icmp eq i64 %index.next4397, %n.vec4362
  br i1 %i.mgu, label %scalar.ph4359.preheader, label %vector.body4366, !llvm.loop !335

._crit_edge1042.i:                                ; preds = %bb.pg, %bb.oy
  %i.mgv = or disjoint i32 %i.mdz, 2
  %i.mgw = lshr i32 %.fr1070, %i.mgv              ; 2 uses
  %i.mgx = and i32 %i.mgw, 1                      ; 2 uses
  %i.mgy = icmp slt i32 %i.mgx, %.pre-phi1269
  br i1 %i.mgy, label %.lr.ph1046.i, label %._crit_edge1047.i

.lr.ph1046.i:                                     ; preds = %._crit_edge1042.i
  %i.mgz = mul nuw nsw i64 %indvars.iv1231.i, 136 ; 3 uses
  %i.mha = getelementptr inbounds nuw [4 x i8], ptr %i.luy, i64 %i.mgz ; 2 uses
  %i.mhb = getelementptr inbounds nuw [4 x i8], ptr %i.lus, i64 %i.mgz ; 2 uses
  %i.mhc = getelementptr inbounds nuw [4 x i8], ptr %i.luu, i64 %i.mgz ; 2 uses
  %i.mhd = or disjoint i32 %i.mgx, 2
  %i.mhe = zext nneg i32 %i.mhd to i64            ; 4 uses
  %i.mhf = and i32 %i.mgw, 1
  %i.mhg = zext nneg i32 %i.mhf to i64            ; 2 uses
  %i.mhh = or disjoint i64 %i.mhg, 4
  %i.mhi = call i64 @llvm.smax.i64(i64 %i.lzj, i64 %i.mhh)
  %i.mhj = add nsw i64 %i.mhi, -3
  %i.mhk = sub i64 %i.mhj, %i.mhg                 ; 2 uses
  %min.iters.check4328 = icmp ult i64 %i.mhk, 16
  br i1 %min.iters.check4328, label %scalar.ph4327.preheader, label %vector.ph4329

scalar.ph4327.preheader:                          ; preds = %vector.body4334, %.lr.ph1046.i
  %indvars.iv1228.i.ph = phi i64 [ %i.mhe, %.lr.ph1046.i ], [ %i.mhr, %vector.body4334 ]
  br label %scalar.ph4327

vector.ph4329:                                    ; preds = %.lr.ph1046.i
  %i.mhl = lshr i64 %i.mhk, 1
  %i.mhm = add nuw nsw i64 %i.mhl, 1              ; 2 uses
  %i.mhn = and i64 %i.mhm, 7                      ; 2 uses
  %i.mho = icmp eq i64 %i.mhn, 0
  %i.mhp = select i1 %i.mho, i64 8, i64 %i.mhn
  %n.vec4330 = sub nsw i64 %i.mhm, %i.mhp         ; 2 uses
  %i.mhq = shl i64 %n.vec4330, 1
  %i.mhr = add i64 %i.mhq, %i.mhe
  %broadcast.splatinsert4331 = insertelement <8 x i64> poison, i64 %i.mhe, i64 0
  %broadcast.splat4332 = shufflevector <8 x i64> %broadcast.splatinsert4331, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction4333 = add nuw nsw <8 x i64> %broadcast.splat4332, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  %invariant.gep4817 = getelementptr [4 x i8], ptr %i.mha, i64 %i.mhe
  br label %vector.body4334

vector.body4334:                                  ; preds = %vector.body4334, %vector.ph4329
  %index4335 = phi i64 [ 0, %vector.ph4329 ], [ %index.next4355, %vector.body4334 ] ; 2 uses
  %vec.ind4336 = phi <8 x i64> [ %induction4333, %vector.ph4329 ], [ %vec.ind.next4356, %vector.body4334 ] ; 3 uses
  %.idx4547 = shl nuw i64 %index4335, 3
  %gep4818 = getelementptr i8, ptr %invariant.gep4817, i64 %.idx4547 ; 7 uses
  %wide.gep4337 = getelementptr inbounds nuw [4 x i8], ptr %i.mhb, <8 x i64> %vec.ind4336
  %wide.gep4338 = getelementptr inbounds nuw [4 x i8], ptr %i.mhc, <8 x i64> %vec.ind4336
  %i.mhs = getelementptr inbounds i8, ptr %gep4818, i64 -8
  %wide.vec4339 = load <16 x float>, ptr %i.mhs, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %strided.vec4340 = shufflevector <16 x float> %wide.vec4339, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec4341 = shufflevector <16 x float> %wide.vec4339, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.mht = getelementptr inbounds nuw i8, ptr %gep4818, i64 8
  %wide.vec4342 = load <16 x float>, ptr %i.mht, align 4, !tbaa !12, !noalias !549
  %strided.vec4343 = shufflevector <16 x float> %wide.vec4342, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.mhu = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4343, %strided.vec4340
  %i.mhv = fmul reassoc nsz arcp contract afn <8 x float> %i.mhu, splat (float 2.500000e-01)
  %wide.vec4344 = load <16 x float>, ptr %gep4818, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %strided.vec4345 = shufflevector <16 x float> %wide.vec4344, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 4 uses
  %strided.vec4346 = shufflevector <16 x float> %wide.vec4344, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.mhw = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4345, %strided.vec4341
  %i.mhx = fadd reassoc nsz arcp contract afn <8 x float> %i.mhw, %strided.vec4346
  %i.mhy = fmul reassoc nsz arcp contract afn <8 x float> %i.mhx, splat (float 5.000000e-01)
  %i.mhz = fsub reassoc nsz arcp contract afn <8 x float> %i.mhv, %i.mhy ; 3 uses
  %i.mia = getelementptr inbounds i8, ptr %gep4818, i64 -1088
  %wide.vec4347 = load <16 x float>, ptr %i.mia, align 4, !tbaa !12, !noalias !549
  %strided.vec4348 = shufflevector <16 x float> %wide.vec4347, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.mib = getelementptr inbounds nuw i8, ptr %gep4818, i64 1088
  %wide.vec4349 = load <16 x float>, ptr %i.mib, align 4, !tbaa !12, !noalias !549
  %strided.vec4350 = shufflevector <16 x float> %wide.vec4349, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.mic = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4350, %strided.vec4348
  %i.mid = fmul reassoc nsz arcp contract afn <8 x float> %i.mic, splat (float 2.500000e-01)
  %i.mie = getelementptr inbounds i8, ptr %gep4818, i64 -544
  %wide.vec4351 = load <16 x float>, ptr %i.mie, align 4, !tbaa !12, !noalias !549
  %strided.vec4352 = shufflevector <16 x float> %wide.vec4351, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.mif = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4352, %strided.vec4345
  %i.mig = getelementptr inbounds nuw i8, ptr %gep4818, i64 544
  %wide.vec4353 = load <16 x float>, ptr %i.mig, align 4, !tbaa !12, !noalias !549
  %strided.vec4354 = shufflevector <16 x float> %wide.vec4353, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.mih = fadd reassoc nsz arcp contract afn <8 x float> %i.mif, %strided.vec4354
  %i.mii = fmul reassoc nsz arcp contract afn <8 x float> %i.mih, splat (float 5.000000e-01)
  %i.mij = fsub reassoc nsz arcp contract afn <8 x float> %i.mid, %i.mii ; 3 uses
  %i.mik = fcmp reassoc nsz arcp contract afn ult <8 x float> %i.mhz, splat (float -1.000000e+00)
  %i.mil = fcmp reassoc nsz arcp contract afn ole <8 x float> %i.mhz, zeroinitializer
  %i.mim = select reassoc nsz arcp contract afn <8 x i1> %i.mil, <8 x float> %i.mhz, <8 x float> zeroinitializer
  %i.min = select reassoc nsz arcp contract afn <8 x i1> %i.mik, <8 x float> splat (float -1.000000e+00), <8 x float> %i.mim
  %i.mio = fadd reassoc nsz arcp contract afn <8 x float> %i.min, %strided.vec4345
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.mio, <8 x ptr> align 4 %wide.gep4337, <8 x i1> splat (i1 true)), !tbaa !12, !noalias !549
  %i.mip = fcmp reassoc nsz arcp contract afn ult <8 x float> %i.mij, splat (float -1.000000e+00)
  %i.miq = fcmp reassoc nsz arcp contract afn ole <8 x float> %i.mij, zeroinitializer
  %i.mir = select reassoc nsz arcp contract afn <8 x i1> %i.miq, <8 x float> %i.mij, <8 x float> zeroinitializer
  %i.mis = select reassoc nsz arcp contract afn <8 x i1> %i.mip, <8 x float> splat (float -1.000000e+00), <8 x float> %i.mir
  %i.mit = fadd reassoc nsz arcp contract afn <8 x float> %i.mis, %strided.vec4345
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.mit, <8 x ptr> align 4 %wide.gep4338, <8 x i1> splat (i1 true)), !tbaa !12, !noalias !549
  %index.next4355 = add nuw i64 %index4335, 8     ; 2 uses
  %vec.ind.next4356 = add nuw nsw <8 x i64> %vec.ind4336, splat (i64 16)
  %i.miu = icmp eq i64 %index.next4355, %n.vec4330
  br i1 %i.miu, label %scalar.ph4327.preheader, label %vector.body4334, !llvm.loop !336

scalar.ph4359:                                    ; preds = %scalar.ph4359.preheader, %bb.pg
  %indvars.iv1225.i = phi i64 [ %indvars.iv.next1226.i, %bb.pg ], [ %indvars.iv1225.i.ph, %scalar.ph4359.preheader ] ; 4 uses
  %i.miv = getelementptr inbounds nuw [4 x i8], ptr %i.mee, i64 %indvars.iv1225.i ; 13 uses
  %i.miw = getelementptr inbounds i8, ptr %i.miv, i64 -548
  %i.mix = load float, ptr %i.miw, align 4, !tbaa !12, !noalias !549
  %i.miy = getelementptr inbounds i8, ptr %i.miv, i64 -540
  %i.miz = load float, ptr %i.miy, align 4, !tbaa !12, !noalias !549
  %i.mja = fadd reassoc nsz arcp contract afn float %i.miz, %i.mix
  %i.mjb = getelementptr inbounds nuw i8, ptr %i.miv, i64 540
  %i.mjc = load float, ptr %i.mjb, align 4, !tbaa !12, !noalias !549
  %i.mjd = fadd reassoc nsz arcp contract afn float %i.mja, %i.mjc
  %i.mje = getelementptr inbounds nuw i8, ptr %i.miv, i64 548
  %i.mjf = load float, ptr %i.mje, align 4, !tbaa !12, !noalias !549
  %i.mjg = fadd reassoc nsz arcp contract afn float %i.mjd, %i.mjf
  %i.mjh = fmul reassoc nsz arcp contract afn float %i.mjg, 6.250000e-02
  %i.mji = load float, ptr %i.miv, align 4, !tbaa !12, !noalias !549 ; 7 uses
  %i.mjj = fmul reassoc nsz arcp contract afn float %i.mji, 2.500000e-01
  %i.mjk = fadd reassoc nsz arcp contract afn float %i.mjh, %i.mjj ; 2 uses
  %i.mjl = getelementptr inbounds nuw [4 x i8], ptr %i.mef, i64 %indvars.iv1225.i
  %i.mjm = getelementptr inbounds i8, ptr %i.miv, i64 -8
  %i.mjn = load float, ptr %i.mjm, align 4, !tbaa !12, !noalias !549
  %i.mjo = getelementptr inbounds nuw i8, ptr %i.miv, i64 8
  %i.mjp = load float, ptr %i.mjo, align 4, !tbaa !12, !noalias !549
  %i.mjq = fadd reassoc nsz arcp contract afn float %i.mjp, %i.mjn
  %i.mjr = fmul reassoc nsz arcp contract afn float %i.mjq, 2.500000e-01
  %i.mjs = getelementptr inbounds i8, ptr %i.miv, i64 -4
  %i.mjt = load float, ptr %i.mjs, align 4, !tbaa !12, !noalias !549 ; 3 uses
  %i.mju = fadd reassoc nsz arcp contract afn float %i.mjt, %i.mji
  %i.mjv = getelementptr inbounds nuw i8, ptr %i.miv, i64 4
  %i.mjw = load float, ptr %i.mjv, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %i.mjx = fadd reassoc nsz arcp contract afn float %i.mju, %i.mjw
  %i.mjy = fmul reassoc nsz arcp contract afn float %i.mjx, 5.000000e-01
  %i.mjz = fsub reassoc nsz arcp contract afn float %i.mjy, %i.mjr ; 6 uses
  %i.mka = fmul reassoc nsz arcp contract afn float %i.mjz, 5.000000e-01
  %i.mkb = fadd reassoc nsz arcp contract afn float %i.mka, %i.mjk
  %i.mkc = fmul reassoc nsz arcp contract afn float %i.mkb, 1.750000e+00
  %i.mkd = fcmp reassoc nsz arcp contract afn ogt float %i.mji, %i.mkc
  br i1 %i.mkd, label %bb.oz, label %bb.pa

bb.oz:                                            ; preds = %scalar.ph4359
  %i.mke = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.mjz, float %i.mjt)
  %i.mkf = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.mjz, float %i.mjt)
  %i.mkg = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.mjw, float %i.mkf)
  %i.mkh = tail call reassoc nsz arcp contract afn noundef float @llvm.maxnum.f32(float %i.mke, float %i.mkg)
  br label %bb.pc

bb.pa:                                            ; preds = %scalar.ph4359
  %i.mki = fcmp reassoc nsz arcp contract afn ult float %i.mjz, 0.000000e+00
  br i1 %i.mki, label %bb.pc, label %bb.pb

bb.pb:                                            ; preds = %bb.pa
  %.inv988.i = fcmp reassoc nsz arcp contract afn ole float %i.mjz, 1.000000e+00
  %spec.select.i565 = select reassoc nsz arcp contract afn i1 %.inv988.i, float %i.mjz, float 1.000000e+00
  br label %bb.pc

bb.pc:                                            ; preds = %bb.pb, %bb.pa, %bb.oz
  %i.mkj = phi reassoc nsz arcp contract afn float [ %i.mkh, %bb.oz ], [ %spec.select.i565, %bb.pb ], [ 0.000000e+00, %bb.pa ]
  %i.mkk = fsub reassoc nsz arcp contract afn float %i.mkj, %i.mji
  store float %i.mkk, ptr %i.mjl, align 4, !tbaa !12, !noalias !549
  %i.mkl = getelementptr inbounds nuw [4 x i8], ptr %i.meg, i64 %indvars.iv1225.i
  %i.mkm = getelementptr inbounds i8, ptr %i.miv, i64 -1088
  %i.mkn = load float, ptr %i.mkm, align 4, !tbaa !12, !noalias !549
  %i.mko = getelementptr inbounds nuw i8, ptr %i.miv, i64 1088
  %i.mkp = load float, ptr %i.mko, align 4, !tbaa !12, !noalias !549
  %i.mkq = fadd reassoc nsz arcp contract afn float %i.mkp, %i.mkn
  %i.mkr = fmul reassoc nsz arcp contract afn float %i.mkq, 2.500000e-01
  %i.mks = getelementptr inbounds i8, ptr %i.miv, i64 -544
  %i.mkt = load float, ptr %i.mks, align 4, !tbaa !12, !noalias !549 ; 3 uses
  %i.mku = fadd reassoc nsz arcp contract afn float %i.mkt, %i.mji
  %i.mkv = getelementptr inbounds nuw i8, ptr %i.miv, i64 544
  %i.mkw = load float, ptr %i.mkv, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %i.mkx = fadd reassoc nsz arcp contract afn float %i.mku, %i.mkw
  %i.mky = fmul reassoc nsz arcp contract afn float %i.mkx, 5.000000e-01
  %i.mkz = fsub reassoc nsz arcp contract afn float %i.mky, %i.mkr ; 6 uses
  %i.mla = fmul reassoc nsz arcp contract afn float %i.mkz, 5.000000e-01
  %i.mlb = fadd reassoc nsz arcp contract afn float %i.mla, %i.mjk
  %i.mlc = fmul reassoc nsz arcp contract afn float %i.mlb, 1.750000e+00
  %i.mld = fcmp reassoc nsz arcp contract afn ogt float %i.mji, %i.mlc
  br i1 %i.mld, label %bb.pd, label %bb.pe

bb.pd:                                            ; preds = %bb.pc
  %i.mle = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.mkz, float %i.mkt)
  %i.mlf = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.mkz, float %i.mkt)
  %i.mlg = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.mkw, float %i.mlf)
  %i.mlh = tail call reassoc nsz arcp contract afn noundef float @llvm.maxnum.f32(float %i.mle, float %i.mlg)
  br label %bb.pg

bb.pe:                                            ; preds = %bb.pc
  %i.mli = fcmp reassoc nsz arcp contract afn ult float %i.mkz, 0.000000e+00
  br i1 %i.mli, label %bb.pg, label %bb.pf

bb.pf:                                            ; preds = %bb.pe
end_hunk_0

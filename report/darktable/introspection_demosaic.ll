Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_demosaic?download=true
inline.NumInlined: 382
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 134
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 177
begin_hunk_0_@process:bb.a
  %i.mcf = fcmp reassoc nsz arcp contract afn ogt float %.reass.i568.epil, f0x477FFEFD
  br i1 %i.mcf, label %_calc_gamma.exit.i.epil, label %bb.ot

bb.ot:                                            ; preds = %bb.os
  %i.mcg = fptosi float %.reass.i568.epil to i32  ; 2 uses
  %i.mch = sitofp reassoc nsz arcp contract afn i32 %i.mcg to float
  %i.mci = fsub reassoc nsz arcp contract afn float %.reass.i568.epil, %i.mch
  %i.mcj = zext nneg i32 %i.mcg to i64
  %i.mck = getelementptr inbounds nuw [4 x i8], ptr %i.lyy, i64 %i.mcj ; 2 uses
  %i.mcl = load float, ptr %i.mck, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %i.mcm = getelementptr inbounds nuw i8, ptr %i.mck, i64 4
  %i.mcn = load float, ptr %i.mcm, align 4, !tbaa !12, !noalias !549
  %i.mco = fsub reassoc nsz arcp contract afn float %i.mcn, %i.mcl
  %i.mcp = fmul reassoc nsz arcp contract afn float %i.mco, %i.mci
  %i.mcq = fadd reassoc nsz arcp contract afn float %i.mcp, %i.mcl
  br label %_calc_gamma.exit.i.epil

_calc_gamma.exit.i.epil:                          ; preds = %bb.ot, %bb.os, %.lr.ph.split.i.epil.preheader
  %.1.i.i569.epil = phi nsz float [ 1.000000e+00, %bb.os ], [ %i.mcq, %bb.ot ], [ 0.000000e+00, %.lr.ph.split.i.epil.preheader ]
  store float %.1.i.i569.epil, ptr %.09161034.i.epil.init, align 4, !tbaa !12, !noalias !549
  br label %._crit_edge.i570

._crit_edge.i570:                                 ; preds = %_calc_gamma.exit.i.epil, %._crit_edge.i570.loopexit4610.unr-lcssa, %_calc_gamma.exit.us.i, %middle.block4431, %vec.epilog.middle.block4450
  %indvars.iv.next1223.i = add nuw nsw i64 %indvars.iv1222.i, 1 ; 2 uses
  %indvars.iv.next1215.i = add i32 %indvars.iv1214.i, %i.bo
  %exitcond.not = icmp eq i64 %indvars.iv.next1223.i, %smax1153
  %indvar.next4411 = add i64 %indvar4410, 1
  br i1 %exitcond.not, label %.preheader1026.i, label %.lr.ph.i566

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.preheader, %_calc_gamma.exit.i.1
  %indvars.iv1216.i = phi i64 [ %indvars.iv.next1217.i.1, %_calc_gamma.exit.i.1 ], [ %i.lzn, %.lr.ph.split.i.preheader ] ; 3 uses
  %.09161034.i = phi ptr [ %i.mdx, %_calc_gamma.exit.i.1 ], [ %i.lzp, %.lr.ph.split.i.preheader ] ; 3 uses
  %niter4696 = phi i32 [ %niter4696.next.1, %_calc_gamma.exit.i.1 ], [ 0, %.lr.ph.split.i.preheader ]
  %i.mcr = getelementptr inbounds nuw [4 x i8], ptr %i.axo, i64 %indvars.iv1216.i
  %i.mcs = load float, ptr %i.mcr, align 4, !tbaa !12, !alias.scope !550
  %.reass.i568 = fmul reassoc nsz arcp contract afn float %invariant.op.i553, %i.mcs ; 4 uses
  %i.mct = fcmp reassoc nsz arcp contract afn olt float %.reass.i568, 0.000000e+00
  br i1 %i.mct, label %_calc_gamma.exit.i, label %bb.ou

bb.ou:                                            ; preds = %.lr.ph.split.i
  %i.mcu = fcmp reassoc nsz arcp contract afn ogt float %.reass.i568, f0x477FFEFD
  br i1 %i.mcu, label %_calc_gamma.exit.i, label %bb.ov

bb.ov:                                            ; preds = %bb.ou
  %i.mcv = fptosi float %.reass.i568 to i32       ; 2 uses
  %i.mcw = sitofp reassoc nsz arcp contract afn i32 %i.mcv to float
  %i.mcx = fsub reassoc nsz arcp contract afn float %.reass.i568, %i.mcw
  %i.mcy = zext nneg i32 %i.mcv to i64
  %i.mcz = getelementptr inbounds nuw [4 x i8], ptr %i.lyy, i64 %i.mcy ; 2 uses
  %i.mda = load float, ptr %i.mcz, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %i.mdb = getelementptr inbounds nuw i8, ptr %i.mcz, i64 4
  %i.mdc = load float, ptr %i.mdb, align 4, !tbaa !12, !noalias !549
  %i.mdd = fsub reassoc nsz arcp contract afn float %i.mdc, %i.mda
  %i.mde = fmul reassoc nsz arcp contract afn float %i.mdd, %i.mcx
  %i.mdf = fadd reassoc nsz arcp contract afn float %i.mde, %i.mda
  br label %_calc_gamma.exit.i

_calc_gamma.exit.i:                               ; preds = %bb.ov, %bb.ou, %.lr.ph.split.i
  %.1.i.i569 = phi nsz float [ 1.000000e+00, %bb.ou ], [ %i.mdf, %bb.ov ], [ 0.000000e+00, %.lr.ph.split.i ]
  store float %.1.i.i569, ptr %.09161034.i, align 4, !tbaa !12, !noalias !549
  %i.mdg = getelementptr inbounds nuw i8, ptr %.09161034.i, i64 4
  %i.mdh = getelementptr inbounds nuw [4 x i8], ptr %i.axo, i64 %indvars.iv1216.i
  %i.mdi = getelementptr inbounds nuw i8, ptr %i.mdh, i64 4
  %i.mdj = load float, ptr %i.mdi, align 4, !tbaa !12, !alias.scope !550
  %.reass.i568.1 = fmul reassoc nsz arcp contract afn float %invariant.op.i553, %i.mdj ; 4 uses
  %i.mdk = fcmp reassoc nsz arcp contract afn olt float %.reass.i568.1, 0.000000e+00
  br i1 %i.mdk, label %_calc_gamma.exit.i.1, label %bb.ow

bb.ow:                                            ; preds = %_calc_gamma.exit.i
  %i.mdl = fcmp reassoc nsz arcp contract afn ogt float %.reass.i568.1, f0x477FFEFD
  br i1 %i.mdl, label %_calc_gamma.exit.i.1, label %bb.ox

bb.ox:                                            ; preds = %bb.ow
  %i.mdm = fptosi float %.reass.i568.1 to i32     ; 2 uses
  %i.mdn = sitofp reassoc nsz arcp contract afn i32 %i.mdm to float
  %i.mdo = fsub reassoc nsz arcp contract afn float %.reass.i568.1, %i.mdn
  %i.mdp = zext nneg i32 %i.mdm to i64
  %i.mdq = getelementptr inbounds nuw [4 x i8], ptr %i.lyy, i64 %i.mdp ; 2 uses
  %i.mdr = load float, ptr %i.mdq, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %i.mds = getelementptr inbounds nuw i8, ptr %i.mdq, i64 4
  %i.mdt = load float, ptr %i.mds, align 4, !tbaa !12, !noalias !549
  %i.mdu = fsub reassoc nsz arcp contract afn float %i.mdt, %i.mdr
  %i.mdv = fmul reassoc nsz arcp contract afn float %i.mdu, %i.mdo
  %i.mdw = fadd reassoc nsz arcp contract afn float %i.mdv, %i.mdr
  br label %_calc_gamma.exit.i.1

_calc_gamma.exit.i.1:                             ; preds = %bb.ox, %bb.ow, %_calc_gamma.exit.i
  %.1.i.i569.1 = phi nsz float [ 1.000000e+00, %bb.ow ], [ %i.mdw, %bb.ox ], [ 0.000000e+00, %_calc_gamma.exit.i ]
  store float %.1.i.i569.1, ptr %i.mdg, align 4, !tbaa !12, !noalias !549
  %i.mdx = getelementptr inbounds nuw i8, ptr %.09161034.i, i64 8 ; 2 uses
  %indvars.iv.next1217.i.1 = add nuw nsw i64 %indvars.iv1216.i, 2 ; 2 uses
  %niter4696.next.1 = add i32 %niter4696, 2       ; 2 uses
  %niter4696.ncmp.1.not = icmp eq i32 %niter4696.next.1, %unroll_iter4695
  br i1 %niter4696.ncmp.1.not, label %._crit_edge.i570.loopexit4610.unr-lcssa, label %.lr.ph.split.i

.preheader1025.i:                                 ; preds = %._crit_edge1047.i
  br i1 %i.lvy, label %.preheader1019.lr.ph.i, label %._crit_edge1060.i

.preheader1019.lr.ph.i:                           ; preds = %.preheader1025.i
  %i.mdy = icmp sgt i32 %i.lyt, 0
  br i1 %i.mdy, label %.preheader1019.i.preheader, label %.lr.ph1059.i

.preheader1019.i.preheader:                       ; preds = %.preheader1019.lr.ph.i
  %i.mdz = add nsw i64 %i.lyp, -3                 ; 3 uses
  %min.iters.check4308 = icmp ult i64 %i.mdz, 8
  %n.vec4310 = and i64 %i.mdz, -8                 ; 3 uses
  %i.mea = or disjoint i64 %n.vec4310, 4
  %cmp.n4333 = icmp eq i64 %i.mdz, %n.vec4310
  br label %.preheader1019.i

bb.oy:                                            ; preds = %._crit_edge1047.i, %.lr.ph1049.i
  %indvars.iv1231.i = phi i64 [ 2, %.lr.ph1049.i ], [ %indvars.iv.next1232.i, %._crit_edge1047.i ] ; 5 uses
  %indvars.iv1231.tr.i = trunc nuw i64 %indvars.iv1231.i to i32
  %i.meb = shl i32 %indvars.iv1231.tr.i, 2
  %i.mec = and i32 %i.meb, 28                     ; 2 uses
  %i.med = lshr i32 %.fr1070, %i.mec              ; 2 uses
  %i.mee = and i32 %i.med, 1                      ; 2 uses
  %i.mef = icmp slt i32 %i.mee, %.pre-phi1269
  br i1 %i.mef, label %.lr.ph1041.i, label %._crit_edge1042.i

.lr.ph1041.i:                                     ; preds = %bb.oy
  %i.meg = mul nuw nsw i64 %indvars.iv1231.i, 136 ; 3 uses
  %i.meh = getelementptr inbounds nuw [4 x i8], ptr %i.luz, i64 %i.meg ; 2 uses
  %i.mei = getelementptr inbounds nuw [4 x i8], ptr %i.lut, i64 %i.meg ; 2 uses
  %i.mej = getelementptr inbounds nuw [4 x i8], ptr %i.luv, i64 %i.meg ; 2 uses
  %i.mek = or disjoint i32 %i.mee, 2
  %i.mel = zext nneg i32 %i.mek to i64            ; 4 uses
  %i.mem = and i32 %i.med, 1
  %i.men = zext nneg i32 %i.mem to i64            ; 2 uses
  %i.meo = or disjoint i64 %i.men, 4
  %i.mep = call i64 @llvm.smax.i64(i64 %i.lzm, i64 %i.meo)
  %i.meq = add nsw i64 %i.mep, -3
  %i.mer = sub i64 %i.meq, %i.men                 ; 2 uses
  %min.iters.check4368 = icmp ult i64 %i.mer, 16
  br i1 %min.iters.check4368, label %scalar.ph4367.preheader, label %vector.ph4369

scalar.ph4367.preheader:                          ; preds = %vector.body4374, %.lr.ph1041.i
  %indvars.iv1225.i.ph = phi i64 [ %i.mel, %.lr.ph1041.i ], [ %i.mey, %vector.body4374 ]
  br label %scalar.ph4367

vector.ph4369:                                    ; preds = %.lr.ph1041.i
  %i.mes = lshr i64 %i.mer, 1
  %i.met = add nuw nsw i64 %i.mes, 1              ; 2 uses
  %i.meu = and i64 %i.met, 7                      ; 2 uses
  %i.mev = icmp eq i64 %i.meu, 0
  %i.mew = select i1 %i.mev, i64 8, i64 %i.meu
  %n.vec4370 = sub nsw i64 %i.met, %i.mew         ; 2 uses
  %i.mex = shl i64 %n.vec4370, 1
  %i.mey = add i64 %i.mex, %i.mel
  %broadcast.splatinsert4371 = insertelement <8 x i64> poison, i64 %i.mel, i64 0
  %broadcast.splat4372 = shufflevector <8 x i64> %broadcast.splatinsert4371, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction4373 = add nuw nsw <8 x i64> %broadcast.splat4372, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  %invariant.gep4832 = getelementptr [4 x i8], ptr %i.meh, i64 %i.mel
  br label %vector.body4374

vector.body4374:                                  ; preds = %vector.body4374, %vector.ph4369
  %index4375 = phi i64 [ 0, %vector.ph4369 ], [ %index.next4405, %vector.body4374 ] ; 2 uses
  %vec.ind4376 = phi <8 x i64> [ %induction4373, %vector.ph4369 ], [ %vec.ind.next4406, %vector.body4374 ] ; 3 uses
  %.idx = shl nuw i64 %index4375, 3
  %gep4833 = getelementptr i8, ptr %invariant.gep4832, i64 %.idx ; 9 uses
  %i.mez = getelementptr inbounds i8, ptr %gep4833, i64 -548
  %wide.vec4377 = load <16 x float>, ptr %i.mez, align 4, !tbaa !12, !noalias !549
  %strided.vec4378 = shufflevector <16 x float> %wide.vec4377, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.mfa = getelementptr inbounds i8, ptr %gep4833, i64 -544
  %wide.vec4379 = load <16 x float>, ptr %i.mfa, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %strided.vec4380 = shufflevector <16 x float> %wide.vec4379, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %strided.vec4381 = shufflevector <16 x float> %wide.vec4379, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.mfb = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4381, %strided.vec4378
  %i.mfc = getelementptr inbounds nuw i8, ptr %gep4833, i64 540
  %wide.vec4382 = load <16 x float>, ptr %i.mfc, align 4, !tbaa !12, !noalias !549
  %strided.vec4383 = shufflevector <16 x float> %wide.vec4382, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.mfd = fadd reassoc nsz arcp contract afn <8 x float> %i.mfb, %strided.vec4383
  %i.mfe = getelementptr inbounds nuw i8, ptr %gep4833, i64 544
  %wide.vec4384 = load <16 x float>, ptr %i.mfe, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %strided.vec4385 = shufflevector <16 x float> %wide.vec4384, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %strided.vec4386 = shufflevector <16 x float> %wide.vec4384, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.mff = fadd reassoc nsz arcp contract afn <8 x float> %i.mfd, %strided.vec4386
  %i.mfg = fmul reassoc nsz arcp contract afn <8 x float> %i.mff, splat (float 6.250000e-02)
  %wide.vec4387 = load <16 x float>, ptr %gep4833, align 4, !tbaa !12, !noalias !549
  %strided.vec4388 = shufflevector <16 x float> %wide.vec4387, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 7 uses
  %i.mfh = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec4388, splat (float 2.500000e-01)
  %i.mfi = fadd reassoc nsz arcp contract afn <8 x float> %i.mfg, %i.mfh ; 2 uses
  %wide.gep4389 = getelementptr inbounds nuw [4 x i8], ptr %i.mei, <8 x i64> %vec.ind4376
  %i.mfj = getelementptr inbounds i8, ptr %gep4833, i64 -8
  %wide.vec4390 = load <16 x float>, ptr %i.mfj, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %strided.vec4391 = shufflevector <16 x float> %wide.vec4390, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec4392 = shufflevector <16 x float> %wide.vec4390, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 3 uses
  %i.mfk = getelementptr inbounds nuw i8, ptr %gep4833, i64 4
  %wide.vec4393 = load <16 x float>, ptr %i.mfk, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %strided.vec4394 = shufflevector <16 x float> %wide.vec4393, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %strided.vec4395 = shufflevector <16 x float> %wide.vec4393, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.mfl = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4395, %strided.vec4391
  %i.mfm = fmul reassoc nsz arcp contract afn <8 x float> %i.mfl, splat (float 2.500000e-01)
  %i.mfn = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4392, %strided.vec4388
  %i.mfo = fadd reassoc nsz arcp contract afn <8 x float> %i.mfn, %strided.vec4394
  %i.mfp = fmul reassoc nsz arcp contract afn <8 x float> %i.mfo, splat (float 5.000000e-01)
  %i.mfq = fsub reassoc nsz arcp contract afn <8 x float> %i.mfp, %i.mfm ; 6 uses
  %i.mfr = fmul reassoc nsz arcp contract afn <8 x float> %i.mfq, splat (float 5.000000e-01)
  %i.mfs = fadd reassoc nsz arcp contract afn <8 x float> %i.mfr, %i.mfi
  %i.mft = fmul reassoc nsz arcp contract afn <8 x float> %i.mfs, splat (float 1.750000e+00)
  %i.mfu = fcmp reassoc nsz arcp contract afn ule <8 x float> %strided.vec4388, %i.mft
  %i.mfv = fcmp reassoc nsz arcp contract afn ult <8 x float> %i.mfq, zeroinitializer
  %i.mfw = fcmp reassoc nsz arcp contract afn ole <8 x float> %i.mfq, splat (float 1.000000e+00)
  %i.mfx = select reassoc nsz arcp contract afn <8 x i1> %i.mfw, <8 x float> %i.mfq, <8 x float> splat (float 1.000000e+00)
  %i.mfy = call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.mfq, <8 x float> %strided.vec4392)
  %i.mfz = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.mfq, <8 x float> %strided.vec4392)
  %i.mga = call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %strided.vec4394, <8 x float> %i.mfz)
  %i.mgb = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.mfy, <8 x float> %i.mga)
  %predphi4396 = select reassoc nsz arcp contract afn <8 x i1> %i.mfv, <8 x float> zeroinitializer, <8 x float> %i.mfx
  %predphi4397 = select reassoc nsz arcp contract afn <8 x i1> %i.mfu, <8 x float> %predphi4396, <8 x float> %i.mgb
  %i.mgc = fsub reassoc nsz arcp contract afn <8 x float> %predphi4397, %strided.vec4388
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.mgc, <8 x ptr> align 4 %wide.gep4389, <8 x i1> splat (i1 true)), !tbaa !12, !noalias !549
  %wide.gep4398 = getelementptr inbounds nuw [4 x i8], ptr %i.mej, <8 x i64> %vec.ind4376
  %i.mgd = getelementptr inbounds i8, ptr %gep4833, i64 -1088
  %wide.vec4399 = load <16 x float>, ptr %i.mgd, align 4, !tbaa !12, !noalias !549
  %strided.vec4400 = shufflevector <16 x float> %wide.vec4399, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.mge = getelementptr inbounds nuw i8, ptr %gep4833, i64 1088
  %wide.vec4401 = load <16 x float>, ptr %i.mge, align 4, !tbaa !12, !noalias !549
  %strided.vec4402 = shufflevector <16 x float> %wide.vec4401, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.mgf = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4402, %strided.vec4400
  %i.mgg = fmul reassoc nsz arcp contract afn <8 x float> %i.mgf, splat (float 2.500000e-01)
  %i.mgh = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4380, %strided.vec4388
  %i.mgi = fadd reassoc nsz arcp contract afn <8 x float> %i.mgh, %strided.vec4385
  %i.mgj = fmul reassoc nsz arcp contract afn <8 x float> %i.mgi, splat (float 5.000000e-01)
  %i.mgk = fsub reassoc nsz arcp contract afn <8 x float> %i.mgj, %i.mgg ; 6 uses
  %i.mgl = fmul reassoc nsz arcp contract afn <8 x float> %i.mgk, splat (float 5.000000e-01)
  %i.mgm = fadd reassoc nsz arcp contract afn <8 x float> %i.mgl, %i.mfi
  %i.mgn = fmul reassoc nsz arcp contract afn <8 x float> %i.mgm, splat (float 1.750000e+00)
  %i.mgo = fcmp reassoc nsz arcp contract afn ule <8 x float> %strided.vec4388, %i.mgn
  %i.mgp = fcmp reassoc nsz arcp contract afn ult <8 x float> %i.mgk, zeroinitializer
  %i.mgq = fcmp reassoc nsz arcp contract afn ole <8 x float> %i.mgk, splat (float 1.000000e+00)
  %i.mgr = select reassoc nsz arcp contract afn <8 x i1> %i.mgq, <8 x float> %i.mgk, <8 x float> splat (float 1.000000e+00)
  %i.mgs = call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.mgk, <8 x float> %strided.vec4380)
  %i.mgt = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.mgk, <8 x float> %strided.vec4380)
  %i.mgu = call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %strided.vec4385, <8 x float> %i.mgt)
  %i.mgv = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.mgs, <8 x float> %i.mgu)
  %predphi4403 = select reassoc nsz arcp contract afn <8 x i1> %i.mgp, <8 x float> zeroinitializer, <8 x float> %i.mgr
  %predphi4404 = select reassoc nsz arcp contract afn <8 x i1> %i.mgo, <8 x float> %predphi4403, <8 x float> %i.mgv
  %i.mgw = fsub reassoc nsz arcp contract afn <8 x float> %predphi4404, %strided.vec4388
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.mgw, <8 x ptr> align 4 %wide.gep4398, <8 x i1> splat (i1 true)), !tbaa !12, !noalias !549
  %index.next4405 = add nuw i64 %index4375, 8     ; 2 uses
  %vec.ind.next4406 = add nuw nsw <8 x i64> %vec.ind4376, splat (i64 16)
  %i.mgx = icmp eq i64 %index.next4405, %n.vec4370
  br i1 %i.mgx, label %scalar.ph4367.preheader, label %vector.body4374, !llvm.loop !335

._crit_edge1042.i:                                ; preds = %bb.pg, %bb.oy
  %i.mgy = or disjoint i32 %i.mec, 2
  %i.mgz = lshr i32 %.fr1070, %i.mgy              ; 2 uses
  %i.mha = and i32 %i.mgz, 1                      ; 2 uses
  %i.mhb = icmp slt i32 %i.mha, %.pre-phi1269
  br i1 %i.mhb, label %.lr.ph1046.i, label %._crit_edge1047.i

.lr.ph1046.i:                                     ; preds = %._crit_edge1042.i
  %i.mhc = mul nuw nsw i64 %indvars.iv1231.i, 136 ; 3 uses
  %i.mhd = getelementptr inbounds nuw [4 x i8], ptr %i.luz, i64 %i.mhc ; 2 uses
  %i.mhe = getelementptr inbounds nuw [4 x i8], ptr %i.lut, i64 %i.mhc ; 2 uses
  %i.mhf = getelementptr inbounds nuw [4 x i8], ptr %i.luv, i64 %i.mhc ; 2 uses
  %i.mhg = or disjoint i32 %i.mha, 2
  %i.mhh = zext nneg i32 %i.mhg to i64            ; 4 uses
  %i.mhi = and i32 %i.mgz, 1
  %i.mhj = zext nneg i32 %i.mhi to i64            ; 2 uses
  %i.mhk = or disjoint i64 %i.mhj, 4
  %i.mhl = call i64 @llvm.smax.i64(i64 %i.lzm, i64 %i.mhk)
  %i.mhm = add nsw i64 %i.mhl, -3
  %i.mhn = sub i64 %i.mhm, %i.mhj                 ; 2 uses
  %min.iters.check4336 = icmp ult i64 %i.mhn, 16
  br i1 %min.iters.check4336, label %scalar.ph4335.preheader, label %vector.ph4337

scalar.ph4335.preheader:                          ; preds = %vector.body4342, %.lr.ph1046.i
  %indvars.iv1228.i.ph = phi i64 [ %i.mhh, %.lr.ph1046.i ], [ %i.mhu, %vector.body4342 ]
  br label %scalar.ph4335

vector.ph4337:                                    ; preds = %.lr.ph1046.i
  %i.mho = lshr i64 %i.mhn, 1
  %i.mhp = add nuw nsw i64 %i.mho, 1              ; 2 uses
  %i.mhq = and i64 %i.mhp, 7                      ; 2 uses
  %i.mhr = icmp eq i64 %i.mhq, 0
  %i.mhs = select i1 %i.mhr, i64 8, i64 %i.mhq
  %n.vec4338 = sub nsw i64 %i.mhp, %i.mhs         ; 2 uses
  %i.mht = shl i64 %n.vec4338, 1
  %i.mhu = add i64 %i.mht, %i.mhh
  %broadcast.splatinsert4339 = insertelement <8 x i64> poison, i64 %i.mhh, i64 0
  %broadcast.splat4340 = shufflevector <8 x i64> %broadcast.splatinsert4339, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction4341 = add nuw nsw <8 x i64> %broadcast.splat4340, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  %invariant.gep4834 = getelementptr [4 x i8], ptr %i.mhd, i64 %i.mhh
  br label %vector.body4342

vector.body4342:                                  ; preds = %vector.body4342, %vector.ph4337
  %index4343 = phi i64 [ 0, %vector.ph4337 ], [ %index.next4363, %vector.body4342 ] ; 2 uses
  %vec.ind4344 = phi <8 x i64> [ %induction4341, %vector.ph4337 ], [ %vec.ind.next4364, %vector.body4342 ] ; 3 uses
  %.idx4555 = shl nuw i64 %index4343, 3
  %gep4835 = getelementptr i8, ptr %invariant.gep4834, i64 %.idx4555 ; 7 uses
  %wide.gep4345 = getelementptr inbounds nuw [4 x i8], ptr %i.mhe, <8 x i64> %vec.ind4344
  %wide.gep4346 = getelementptr inbounds nuw [4 x i8], ptr %i.mhf, <8 x i64> %vec.ind4344
  %i.mhv = getelementptr inbounds i8, ptr %gep4835, i64 -8
  %wide.vec4347 = load <16 x float>, ptr %i.mhv, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %strided.vec4348 = shufflevector <16 x float> %wide.vec4347, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec4349 = shufflevector <16 x float> %wide.vec4347, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.mhw = getelementptr inbounds nuw i8, ptr %gep4835, i64 8
  %wide.vec4350 = load <16 x float>, ptr %i.mhw, align 4, !tbaa !12, !noalias !549
  %strided.vec4351 = shufflevector <16 x float> %wide.vec4350, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.mhx = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4351, %strided.vec4348
  %i.mhy = fmul reassoc nsz arcp contract afn <8 x float> %i.mhx, splat (float 2.500000e-01)
  %wide.vec4352 = load <16 x float>, ptr %gep4835, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %strided.vec4353 = shufflevector <16 x float> %wide.vec4352, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 4 uses
  %strided.vec4354 = shufflevector <16 x float> %wide.vec4352, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.mhz = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4353, %strided.vec4349
  %i.mia = fadd reassoc nsz arcp contract afn <8 x float> %i.mhz, %strided.vec4354
  %i.mib = fmul reassoc nsz arcp contract afn <8 x float> %i.mia, splat (float 5.000000e-01)
  %i.mic = fsub reassoc nsz arcp contract afn <8 x float> %i.mhy, %i.mib ; 3 uses
  %i.mid = getelementptr inbounds i8, ptr %gep4835, i64 -1088
  %wide.vec4355 = load <16 x float>, ptr %i.mid, align 4, !tbaa !12, !noalias !549
  %strided.vec4356 = shufflevector <16 x float> %wide.vec4355, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.mie = getelementptr inbounds nuw i8, ptr %gep4835, i64 1088
  %wide.vec4357 = load <16 x float>, ptr %i.mie, align 4, !tbaa !12, !noalias !549
  %strided.vec4358 = shufflevector <16 x float> %wide.vec4357, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.mif = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4358, %strided.vec4356
  %i.mig = fmul reassoc nsz arcp contract afn <8 x float> %i.mif, splat (float 2.500000e-01)
  %i.mih = getelementptr inbounds i8, ptr %gep4835, i64 -544
  %wide.vec4359 = load <16 x float>, ptr %i.mih, align 4, !tbaa !12, !noalias !549
  %strided.vec4360 = shufflevector <16 x float> %wide.vec4359, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.mii = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4360, %strided.vec4353
  %i.mij = getelementptr inbounds nuw i8, ptr %gep4835, i64 544
  %wide.vec4361 = load <16 x float>, ptr %i.mij, align 4, !tbaa !12, !noalias !549
  %strided.vec4362 = shufflevector <16 x float> %wide.vec4361, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.mik = fadd reassoc nsz arcp contract afn <8 x float> %i.mii, %strided.vec4362
  %i.mil = fmul reassoc nsz arcp contract afn <8 x float> %i.mik, splat (float 5.000000e-01)
  %i.mim = fsub reassoc nsz arcp contract afn <8 x float> %i.mig, %i.mil ; 3 uses
  %i.min = fcmp reassoc nsz arcp contract afn ult <8 x float> %i.mic, splat (float -1.000000e+00)
  %i.mio = fcmp reassoc nsz arcp contract afn ole <8 x float> %i.mic, zeroinitializer
  %i.mip = select reassoc nsz arcp contract afn <8 x i1> %i.mio, <8 x float> %i.mic, <8 x float> zeroinitializer
  %i.miq = select reassoc nsz arcp contract afn <8 x i1> %i.min, <8 x float> splat (float -1.000000e+00), <8 x float> %i.mip
  %i.mir = fadd reassoc nsz arcp contract afn <8 x float> %i.miq, %strided.vec4353
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.mir, <8 x ptr> align 4 %wide.gep4345, <8 x i1> splat (i1 true)), !tbaa !12, !noalias !549
  %i.mis = fcmp reassoc nsz arcp contract afn ult <8 x float> %i.mim, splat (float -1.000000e+00)
  %i.mit = fcmp reassoc nsz arcp contract afn ole <8 x float> %i.mim, zeroinitializer
  %i.miu = select reassoc nsz arcp contract afn <8 x i1> %i.mit, <8 x float> %i.mim, <8 x float> zeroinitializer
  %i.miv = select reassoc nsz arcp contract afn <8 x i1> %i.mis, <8 x float> splat (float -1.000000e+00), <8 x float> %i.miu
  %i.miw = fadd reassoc nsz arcp contract afn <8 x float> %i.miv, %strided.vec4353
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.miw, <8 x ptr> align 4 %wide.gep4346, <8 x i1> splat (i1 true)), !tbaa !12, !noalias !549
  %index.next4363 = add nuw i64 %index4343, 8     ; 2 uses
  %vec.ind.next4364 = add nuw nsw <8 x i64> %vec.ind4344, splat (i64 16)
  %i.mix = icmp eq i64 %index.next4363, %n.vec4338
  br i1 %i.mix, label %scalar.ph4335.preheader, label %vector.body4342, !llvm.loop !336

scalar.ph4367:                                    ; preds = %scalar.ph4367.preheader, %bb.pg
  %indvars.iv1225.i = phi i64 [ %indvars.iv.next1226.i, %bb.pg ], [ %indvars.iv1225.i.ph, %scalar.ph4367.preheader ] ; 4 uses
  %i.miy = getelementptr inbounds nuw [4 x i8], ptr %i.meh, i64 %indvars.iv1225.i ; 13 uses
  %i.miz = getelementptr inbounds i8, ptr %i.miy, i64 -548
  %i.mja = load float, ptr %i.miz, align 4, !tbaa !12, !noalias !549
  %i.mjb = getelementptr inbounds i8, ptr %i.miy, i64 -540
  %i.mjc = load float, ptr %i.mjb, align 4, !tbaa !12, !noalias !549
  %i.mjd = fadd reassoc nsz arcp contract afn float %i.mjc, %i.mja
  %i.mje = getelementptr inbounds nuw i8, ptr %i.miy, i64 540
  %i.mjf = load float, ptr %i.mje, align 4, !tbaa !12, !noalias !549
  %i.mjg = fadd reassoc nsz arcp contract afn float %i.mjd, %i.mjf
  %i.mjh = getelementptr inbounds nuw i8, ptr %i.miy, i64 548
  %i.mji = load float, ptr %i.mjh, align 4, !tbaa !12, !noalias !549
  %i.mjj = fadd reassoc nsz arcp contract afn float %i.mjg, %i.mji
  %i.mjk = fmul reassoc nsz arcp contract afn float %i.mjj, 6.250000e-02
  %i.mjl = load float, ptr %i.miy, align 4, !tbaa !12, !noalias !549 ; 7 uses
  %i.mjm = fmul reassoc nsz arcp contract afn float %i.mjl, 2.500000e-01
  %i.mjn = fadd reassoc nsz arcp contract afn float %i.mjk, %i.mjm ; 2 uses
  %i.mjo = getelementptr inbounds nuw [4 x i8], ptr %i.mei, i64 %indvars.iv1225.i
  %i.mjp = getelementptr inbounds i8, ptr %i.miy, i64 -8
  %i.mjq = load float, ptr %i.mjp, align 4, !tbaa !12, !noalias !549
  %i.mjr = getelementptr inbounds nuw i8, ptr %i.miy, i64 8
  %i.mjs = load float, ptr %i.mjr, align 4, !tbaa !12, !noalias !549
  %i.mjt = fadd reassoc nsz arcp contract afn float %i.mjs, %i.mjq
  %i.mju = fmul reassoc nsz arcp contract afn float %i.mjt, 2.500000e-01
  %i.mjv = getelementptr inbounds i8, ptr %i.miy, i64 -4
  %i.mjw = load float, ptr %i.mjv, align 4, !tbaa !12, !noalias !549 ; 3 uses
  %i.mjx = fadd reassoc nsz arcp contract afn float %i.mjw, %i.mjl
  %i.mjy = getelementptr inbounds nuw i8, ptr %i.miy, i64 4
  %i.mjz = load float, ptr %i.mjy, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %i.mka = fadd reassoc nsz arcp contract afn float %i.mjx, %i.mjz
  %i.mkb = fmul reassoc nsz arcp contract afn float %i.mka, 5.000000e-01
  %i.mkc = fsub reassoc nsz arcp contract afn float %i.mkb, %i.mju ; 6 uses
  %i.mkd = fmul reassoc nsz arcp contract afn float %i.mkc, 5.000000e-01
  %i.mke = fadd reassoc nsz arcp contract afn float %i.mkd, %i.mjn
  %i.mkf = fmul reassoc nsz arcp contract afn float %i.mke, 1.750000e+00
  %i.mkg = fcmp reassoc nsz arcp contract afn ogt float %i.mjl, %i.mkf
  br i1 %i.mkg, label %bb.oz, label %bb.pa

bb.oz:                                            ; preds = %scalar.ph4367
  %i.mkh = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.mkc, float %i.mjw)
  %i.mki = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.mkc, float %i.mjw)
  %i.mkj = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.mjz, float %i.mki)
  %i.mkk = tail call reassoc nsz arcp contract afn noundef float @llvm.maxnum.f32(float %i.mkh, float %i.mkj)
  br label %bb.pc

bb.pa:                                            ; preds = %scalar.ph4367
  %i.mkl = fcmp reassoc nsz arcp contract afn ult float %i.mkc, 0.000000e+00
  br i1 %i.mkl, label %bb.pc, label %bb.pb

bb.pb:                                            ; preds = %bb.pa
  %.inv988.i = fcmp reassoc nsz arcp contract afn ole float %i.mkc, 1.000000e+00
  %spec.select.i565 = select reassoc nsz arcp contract afn i1 %.inv988.i, float %i.mkc, float 1.000000e+00
  br label %bb.pc

bb.pc:                                            ; preds = %bb.pb, %bb.pa, %bb.oz
  %i.mkm = phi reassoc nsz arcp contract afn float [ %i.mkk, %bb.oz ], [ %spec.select.i565, %bb.pb ], [ 0.000000e+00, %bb.pa ]
  %i.mkn = fsub reassoc nsz arcp contract afn float %i.mkm, %i.mjl
  store float %i.mkn, ptr %i.mjo, align 4, !tbaa !12, !noalias !549
  %i.mko = getelementptr inbounds nuw [4 x i8], ptr %i.mej, i64 %indvars.iv1225.i
  %i.mkp = getelementptr inbounds i8, ptr %i.miy, i64 -1088
  %i.mkq = load float, ptr %i.mkp, align 4, !tbaa !12, !noalias !549
  %i.mkr = getelementptr inbounds nuw i8, ptr %i.miy, i64 1088
  %i.mks = load float, ptr %i.mkr, align 4, !tbaa !12, !noalias !549
  %i.mkt = fadd reassoc nsz arcp contract afn float %i.mks, %i.mkq
  %i.mku = fmul reassoc nsz arcp contract afn float %i.mkt, 2.500000e-01
  %i.mkv = getelementptr inbounds i8, ptr %i.miy, i64 -544
  %i.mkw = load float, ptr %i.mkv, align 4, !tbaa !12, !noalias !549 ; 3 uses
  %i.mkx = fadd reassoc nsz arcp contract afn float %i.mkw, %i.mjl
  %i.mky = getelementptr inbounds nuw i8, ptr %i.miy, i64 544
  %i.mkz = load float, ptr %i.mky, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %i.mla = fadd reassoc nsz arcp contract afn float %i.mkx, %i.mkz
  %i.mlb = fmul reassoc nsz arcp contract afn float %i.mla, 5.000000e-01
  %i.mlc = fsub reassoc nsz arcp contract afn float %i.mlb, %i.mku ; 6 uses
  %i.mld = fmul reassoc nsz arcp contract afn float %i.mlc, 5.000000e-01
  %i.mle = fadd reassoc nsz arcp contract afn float %i.mld, %i.mjn
  %i.mlf = fmul reassoc nsz arcp contract afn float %i.mle, 1.750000e+00
  %i.mlg = fcmp reassoc nsz arcp contract afn ogt float %i.mjl, %i.mlf
  br i1 %i.mlg, label %bb.pd, label %bb.pe

bb.pd:                                            ; preds = %bb.pc
  %i.mlh = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.mlc, float %i.mkw)
  %i.mli = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.mlc, float %i.mkw)
  %i.mlj = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.mkz, float %i.mli)
  %i.mlk = tail call reassoc nsz arcp contract afn noundef float @llvm.maxnum.f32(float %i.mlh, float %i.mlj)
  br label %bb.pg

bb.pe:                                            ; preds = %bb.pc
  %i.mll = fcmp reassoc nsz arcp contract afn ult float %i.mlc, 0.000000e+00
  br i1 %i.mll, label %bb.pg, label %bb.pf

bb.pf:                                            ; preds = %bb.pe
end_hunk_0

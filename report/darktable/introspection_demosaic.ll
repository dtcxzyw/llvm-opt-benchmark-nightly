Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_demosaic?download=true
inline.NumInlined: 382
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 134
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 177
begin_hunk_0_@process:bb.a
  %i.mcs = fcmp reassoc nsz arcp contract afn ogt float %.reass.i566.epil, f0x477FFEFD
  br i1 %i.mcs, label %_calc_gamma.exit.i.epil, label %bb.ot

bb.ot:                                            ; preds = %bb.os
  %i.mct = fptosi float %.reass.i566.epil to i32  ; 2 uses
  %i.mcu = sitofp reassoc nsz arcp contract afn i32 %i.mct to float
  %i.mcv = fsub reassoc nsz arcp contract afn float %.reass.i566.epil, %i.mcu
  %i.mcw = zext nneg i32 %i.mct to i64
  %i.mcx = getelementptr inbounds nuw [4 x i8], ptr %i.lzl, i64 %i.mcw ; 2 uses
  %i.mcy = load float, ptr %i.mcx, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %i.mcz = getelementptr inbounds nuw i8, ptr %i.mcx, i64 4
  %i.mda = load float, ptr %i.mcz, align 4, !tbaa !12, !noalias !549
  %i.mdb = fsub reassoc nsz arcp contract afn float %i.mda, %i.mcy
  %i.mdc = fmul reassoc nsz arcp contract afn float %i.mdb, %i.mcv
  %i.mdd = fadd reassoc nsz arcp contract afn float %i.mdc, %i.mcy
  br label %_calc_gamma.exit.i.epil

_calc_gamma.exit.i.epil:                          ; preds = %bb.ot, %bb.os, %.lr.ph.split.i.epil.preheader
  %.1.i.i567.epil = phi nsz float [ 1.000000e+00, %bb.os ], [ %i.mdd, %bb.ot ], [ 0.000000e+00, %.lr.ph.split.i.epil.preheader ]
  store float %.1.i.i567.epil, ptr %.09161034.i.epil.init, align 4, !tbaa !12, !noalias !549
  br label %._crit_edge.i568

._crit_edge.i568:                                 ; preds = %_calc_gamma.exit.i.epil, %._crit_edge.i568.loopexit4632.unr-lcssa, %_calc_gamma.exit.us.i, %middle.block4433, %vec.epilog.middle.block4452
  %indvars.iv.next1223.i = add nuw nsw i64 %indvars.iv1222.i, 1 ; 2 uses
  %indvars.iv.next1215.i = add i32 %indvars.iv1214.i, %i.bo
  %exitcond.not = icmp eq i64 %indvars.iv.next1223.i, %smax1145
  %indvar.next4413 = add i64 %indvar4412, 1
  br i1 %exitcond.not, label %.preheader1026.i, label %.lr.ph.i564

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.preheader, %_calc_gamma.exit.i.1
  %indvars.iv1216.i = phi i64 [ %indvars.iv.next1217.i.1, %_calc_gamma.exit.i.1 ], [ %i.maa, %.lr.ph.split.i.preheader ] ; 3 uses
  %.09161034.i = phi ptr [ %i.mek, %_calc_gamma.exit.i.1 ], [ %i.mac, %.lr.ph.split.i.preheader ] ; 3 uses
  %niter4718 = phi i32 [ %niter4718.next.1, %_calc_gamma.exit.i.1 ], [ 0, %.lr.ph.split.i.preheader ]
  %i.mde = getelementptr inbounds nuw [4 x i8], ptr %i.axv, i64 %indvars.iv1216.i
  %i.mdf = load float, ptr %i.mde, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %.reass.i566 = fmul reassoc nsz arcp contract afn float %invariant.op.i551, %i.mdf ; 4 uses
  %i.mdg = fcmp reassoc nsz arcp contract afn olt float %.reass.i566, 0.000000e+00
  br i1 %i.mdg, label %_calc_gamma.exit.i, label %bb.ou

bb.ou:                                            ; preds = %.lr.ph.split.i
  %i.mdh = fcmp reassoc nsz arcp contract afn ogt float %.reass.i566, f0x477FFEFD
  br i1 %i.mdh, label %_calc_gamma.exit.i, label %bb.ov

bb.ov:                                            ; preds = %bb.ou
  %i.mdi = fptosi float %.reass.i566 to i32       ; 2 uses
  %i.mdj = sitofp reassoc nsz arcp contract afn i32 %i.mdi to float
  %i.mdk = fsub reassoc nsz arcp contract afn float %.reass.i566, %i.mdj
  %i.mdl = zext nneg i32 %i.mdi to i64
  %i.mdm = getelementptr inbounds nuw [4 x i8], ptr %i.lzl, i64 %i.mdl ; 2 uses
  %i.mdn = load float, ptr %i.mdm, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %i.mdo = getelementptr inbounds nuw i8, ptr %i.mdm, i64 4
  %i.mdp = load float, ptr %i.mdo, align 4, !tbaa !12, !noalias !549
  %i.mdq = fsub reassoc nsz arcp contract afn float %i.mdp, %i.mdn
  %i.mdr = fmul reassoc nsz arcp contract afn float %i.mdq, %i.mdk
  %i.mds = fadd reassoc nsz arcp contract afn float %i.mdr, %i.mdn
  br label %_calc_gamma.exit.i

_calc_gamma.exit.i:                               ; preds = %bb.ov, %bb.ou, %.lr.ph.split.i
  %.1.i.i567 = phi nsz float [ 1.000000e+00, %bb.ou ], [ %i.mds, %bb.ov ], [ 0.000000e+00, %.lr.ph.split.i ]
  store float %.1.i.i567, ptr %.09161034.i, align 4, !tbaa !12, !noalias !549
  %i.mdt = getelementptr inbounds nuw i8, ptr %.09161034.i, i64 4
  %i.mdu = getelementptr inbounds nuw [4 x i8], ptr %i.axv, i64 %indvars.iv1216.i
  %i.mdv = getelementptr inbounds nuw i8, ptr %i.mdu, i64 4
  %i.mdw = load float, ptr %i.mdv, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %.reass.i566.1 = fmul reassoc nsz arcp contract afn float %invariant.op.i551, %i.mdw ; 4 uses
  %i.mdx = fcmp reassoc nsz arcp contract afn olt float %.reass.i566.1, 0.000000e+00
  br i1 %i.mdx, label %_calc_gamma.exit.i.1, label %bb.ow

bb.ow:                                            ; preds = %_calc_gamma.exit.i
  %i.mdy = fcmp reassoc nsz arcp contract afn ogt float %.reass.i566.1, f0x477FFEFD
  br i1 %i.mdy, label %_calc_gamma.exit.i.1, label %bb.ox

bb.ox:                                            ; preds = %bb.ow
  %i.mdz = fptosi float %.reass.i566.1 to i32     ; 2 uses
  %i.mea = sitofp reassoc nsz arcp contract afn i32 %i.mdz to float
  %i.meb = fsub reassoc nsz arcp contract afn float %.reass.i566.1, %i.mea
  %i.mec = zext nneg i32 %i.mdz to i64
  %i.med = getelementptr inbounds nuw [4 x i8], ptr %i.lzl, i64 %i.mec ; 2 uses
  %i.mee = load float, ptr %i.med, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %i.mef = getelementptr inbounds nuw i8, ptr %i.med, i64 4
  %i.meg = load float, ptr %i.mef, align 4, !tbaa !12, !noalias !549
  %i.meh = fsub reassoc nsz arcp contract afn float %i.meg, %i.mee
  %i.mei = fmul reassoc nsz arcp contract afn float %i.meh, %i.meb
  %i.mej = fadd reassoc nsz arcp contract afn float %i.mei, %i.mee
  br label %_calc_gamma.exit.i.1

_calc_gamma.exit.i.1:                             ; preds = %bb.ox, %bb.ow, %_calc_gamma.exit.i
  %.1.i.i567.1 = phi nsz float [ 1.000000e+00, %bb.ow ], [ %i.mej, %bb.ox ], [ 0.000000e+00, %_calc_gamma.exit.i ]
  store float %.1.i.i567.1, ptr %i.mdt, align 4, !tbaa !12, !noalias !549
  %i.mek = getelementptr inbounds nuw i8, ptr %.09161034.i, i64 8 ; 2 uses
  %indvars.iv.next1217.i.1 = add nuw nsw i64 %indvars.iv1216.i, 2 ; 2 uses
  %niter4718.next.1 = add i32 %niter4718, 2       ; 2 uses
  %niter4718.ncmp.1.not = icmp eq i32 %niter4718.next.1, %unroll_iter4717
  br i1 %niter4718.ncmp.1.not, label %._crit_edge.i568.loopexit4632.unr-lcssa, label %.lr.ph.split.i

.preheader1025.i:                                 ; preds = %._crit_edge1047.i
  br i1 %i.lwo, label %.preheader1019.lr.ph.i, label %._crit_edge1060.i

.preheader1019.lr.ph.i:                           ; preds = %.preheader1025.i
  %i.mel = icmp sgt i32 %i.lzg, 0
  br i1 %i.mel, label %.preheader1019.i.preheader, label %.lr.ph1059.i

.preheader1019.i.preheader:                       ; preds = %.preheader1019.lr.ph.i
  %i.mem = add nsw i64 %i.lzc, -3                 ; 3 uses
  %min.iters.check4310 = icmp ult i64 %i.mem, 8
  %n.vec4312 = and i64 %i.mem, -8                 ; 3 uses
  %i.men = or disjoint i64 %n.vec4312, 4
  %cmp.n4335 = icmp eq i64 %i.mem, %n.vec4312
  br label %.preheader1019.i

bb.oy:                                            ; preds = %._crit_edge1047.i, %.lr.ph1049.i
  %indvars.iv1231.i = phi i64 [ 2, %.lr.ph1049.i ], [ %indvars.iv.next1232.i, %._crit_edge1047.i ] ; 5 uses
  %indvars.iv1231.tr.i = trunc nuw i64 %indvars.iv1231.i to i32
  %i.meo = shl i32 %indvars.iv1231.tr.i, 2
  %i.mep = and i32 %i.meo, 28                     ; 2 uses
  %i.meq = lshr i32 %.fr1063, %i.mep              ; 2 uses
  %i.mer = and i32 %i.meq, 1                      ; 2 uses
  %i.mes = icmp slt i32 %i.mer, %.pre-phi1260
  br i1 %i.mes, label %.lr.ph1041.i, label %._crit_edge1042.i

.lr.ph1041.i:                                     ; preds = %bb.oy
  %i.met = mul nuw nsw i64 %indvars.iv1231.i, 136 ; 3 uses
  %i.meu = getelementptr inbounds nuw [4 x i8], ptr %i.lvp, i64 %i.met ; 2 uses
  %i.mev = getelementptr inbounds nuw [4 x i8], ptr %i.lvj, i64 %i.met ; 2 uses
  %i.mew = getelementptr inbounds nuw [4 x i8], ptr %i.lvl, i64 %i.met ; 2 uses
  %i.mex = or disjoint i32 %i.mer, 2
  %i.mey = zext nneg i32 %i.mex to i64            ; 4 uses
  %i.mez = and i32 %i.meq, 1
  %i.mfa = zext nneg i32 %i.mez to i64            ; 2 uses
  %i.mfb = or disjoint i64 %i.mfa, 4
  %i.mfc = call i64 @llvm.smax.i64(i64 %i.lzz, i64 %i.mfb)
  %i.mfd = add nsw i64 %i.mfc, -3
  %i.mfe = sub i64 %i.mfd, %i.mfa                 ; 2 uses
  %min.iters.check4370 = icmp ult i64 %i.mfe, 16
  br i1 %min.iters.check4370, label %scalar.ph4369.preheader, label %vector.ph4371

scalar.ph4369.preheader:                          ; preds = %vector.body4376, %.lr.ph1041.i
  %indvars.iv1225.i.ph = phi i64 [ %i.mey, %.lr.ph1041.i ], [ %i.mfl, %vector.body4376 ]
  br label %scalar.ph4369

vector.ph4371:                                    ; preds = %.lr.ph1041.i
  %i.mff = lshr i64 %i.mfe, 1
  %i.mfg = add nuw nsw i64 %i.mff, 1              ; 2 uses
  %i.mfh = and i64 %i.mfg, 7                      ; 2 uses
  %i.mfi = icmp eq i64 %i.mfh, 0
  %i.mfj = select i1 %i.mfi, i64 8, i64 %i.mfh
  %n.vec4372 = sub nsw i64 %i.mfg, %i.mfj         ; 2 uses
  %i.mfk = shl i64 %n.vec4372, 1
  %i.mfl = add i64 %i.mfk, %i.mey
  %broadcast.splatinsert4373 = insertelement <8 x i64> poison, i64 %i.mey, i64 0
  %broadcast.splat4374 = shufflevector <8 x i64> %broadcast.splatinsert4373, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction4375 = add nuw nsw <8 x i64> %broadcast.splat4374, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  %invariant.gep4854 = getelementptr [4 x i8], ptr %i.meu, i64 %i.mey
  br label %vector.body4376

vector.body4376:                                  ; preds = %vector.body4376, %vector.ph4371
  %index4377 = phi i64 [ 0, %vector.ph4371 ], [ %index.next4407, %vector.body4376 ] ; 2 uses
  %vec.ind4378 = phi <8 x i64> [ %induction4375, %vector.ph4371 ], [ %vec.ind.next4408, %vector.body4376 ] ; 3 uses
  %.idx = shl nuw i64 %index4377, 3
  %gep4855 = getelementptr i8, ptr %invariant.gep4854, i64 %.idx ; 9 uses
  %i.mfm = getelementptr inbounds i8, ptr %gep4855, i64 -548
  %wide.vec4379 = load <16 x float>, ptr %i.mfm, align 4, !tbaa !12, !noalias !549
  %strided.vec4380 = shufflevector <16 x float> %wide.vec4379, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.mfn = getelementptr inbounds i8, ptr %gep4855, i64 -544
  %wide.vec4381 = load <16 x float>, ptr %i.mfn, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %strided.vec4382 = shufflevector <16 x float> %wide.vec4381, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %strided.vec4383 = shufflevector <16 x float> %wide.vec4381, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.mfo = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4383, %strided.vec4380
  %i.mfp = getelementptr inbounds nuw i8, ptr %gep4855, i64 540
  %wide.vec4384 = load <16 x float>, ptr %i.mfp, align 4, !tbaa !12, !noalias !549
  %strided.vec4385 = shufflevector <16 x float> %wide.vec4384, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.mfq = fadd reassoc nsz arcp contract afn <8 x float> %i.mfo, %strided.vec4385
  %i.mfr = getelementptr inbounds nuw i8, ptr %gep4855, i64 544
  %wide.vec4386 = load <16 x float>, ptr %i.mfr, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %strided.vec4387 = shufflevector <16 x float> %wide.vec4386, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %strided.vec4388 = shufflevector <16 x float> %wide.vec4386, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.mfs = fadd reassoc nsz arcp contract afn <8 x float> %i.mfq, %strided.vec4388
  %i.mft = fmul reassoc nsz arcp contract afn <8 x float> %i.mfs, splat (float 6.250000e-02)
  %wide.vec4389 = load <16 x float>, ptr %gep4855, align 4, !tbaa !12, !noalias !549
  %strided.vec4390 = shufflevector <16 x float> %wide.vec4389, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 7 uses
  %i.mfu = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec4390, splat (float 2.500000e-01)
  %i.mfv = fadd reassoc nsz arcp contract afn <8 x float> %i.mft, %i.mfu ; 2 uses
  %wide.gep4391 = getelementptr inbounds nuw [4 x i8], ptr %i.mev, <8 x i64> %vec.ind4378
  %i.mfw = getelementptr inbounds i8, ptr %gep4855, i64 -8
  %wide.vec4392 = load <16 x float>, ptr %i.mfw, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %strided.vec4393 = shufflevector <16 x float> %wide.vec4392, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec4394 = shufflevector <16 x float> %wide.vec4392, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 3 uses
  %i.mfx = getelementptr inbounds nuw i8, ptr %gep4855, i64 4
  %wide.vec4395 = load <16 x float>, ptr %i.mfx, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %strided.vec4396 = shufflevector <16 x float> %wide.vec4395, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %strided.vec4397 = shufflevector <16 x float> %wide.vec4395, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.mfy = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4397, %strided.vec4393
  %i.mfz = fmul reassoc nsz arcp contract afn <8 x float> %i.mfy, splat (float 2.500000e-01)
  %i.mga = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4394, %strided.vec4390
  %i.mgb = fadd reassoc nsz arcp contract afn <8 x float> %i.mga, %strided.vec4396
  %i.mgc = fmul reassoc nsz arcp contract afn <8 x float> %i.mgb, splat (float 5.000000e-01)
  %i.mgd = fsub reassoc nsz arcp contract afn <8 x float> %i.mgc, %i.mfz ; 6 uses
  %i.mge = fmul reassoc nsz arcp contract afn <8 x float> %i.mgd, splat (float 5.000000e-01)
  %i.mgf = fadd reassoc nsz arcp contract afn <8 x float> %i.mge, %i.mfv
  %i.mgg = fmul reassoc nsz arcp contract afn <8 x float> %i.mgf, splat (float 1.750000e+00)
  %i.mgh = fcmp reassoc nsz arcp contract afn ule <8 x float> %strided.vec4390, %i.mgg ; 2 uses
  %i.mgi = fcmp reassoc nsz arcp contract afn ult <8 x float> %i.mgd, zeroinitializer
  %i.mgj = fcmp reassoc nsz arcp contract afn ole <8 x float> %i.mgd, splat (float 1.000000e+00)
  %i.mgk = select reassoc nsz arcp contract afn <8 x i1> %i.mgj, <8 x float> %i.mgd, <8 x float> splat (float 1.000000e+00)
  %i.mgl = call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.mgd, <8 x float> %strided.vec4394)
  %i.mgm = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.mgd, <8 x float> %strided.vec4394)
  %i.mgn = call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %strided.vec4396, <8 x float> %i.mgm)
  %i.mgo = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.mgl, <8 x float> %i.mgn)
  %6 = select <8 x i1> %i.mgh, <8 x i1> %i.mgi, <8 x i1> zeroinitializer
  %predphi4398 = select reassoc nsz arcp contract afn <8 x i1> %6, <8 x float> zeroinitializer, <8 x float> %i.mgk
  %predphi4399 = select reassoc nsz arcp contract afn <8 x i1> %i.mgh, <8 x float> %predphi4398, <8 x float> %i.mgo
  %i.mgp = fsub reassoc nsz arcp contract afn <8 x float> %predphi4399, %strided.vec4390
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.mgp, <8 x ptr> align 4 %wide.gep4391, <8 x i1> splat (i1 true)), !tbaa !12, !noalias !549
  %wide.gep4400 = getelementptr inbounds nuw [4 x i8], ptr %i.mew, <8 x i64> %vec.ind4378
  %i.mgq = getelementptr inbounds i8, ptr %gep4855, i64 -1088
  %wide.vec4401 = load <16 x float>, ptr %i.mgq, align 4, !tbaa !12, !noalias !549
  %strided.vec4402 = shufflevector <16 x float> %wide.vec4401, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.mgr = getelementptr inbounds nuw i8, ptr %gep4855, i64 1088
  %wide.vec4403 = load <16 x float>, ptr %i.mgr, align 4, !tbaa !12, !noalias !549
  %strided.vec4404 = shufflevector <16 x float> %wide.vec4403, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.mgs = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4404, %strided.vec4402
  %i.mgt = fmul reassoc nsz arcp contract afn <8 x float> %i.mgs, splat (float 2.500000e-01)
  %i.mgu = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4382, %strided.vec4390
  %i.mgv = fadd reassoc nsz arcp contract afn <8 x float> %i.mgu, %strided.vec4387
  %i.mgw = fmul reassoc nsz arcp contract afn <8 x float> %i.mgv, splat (float 5.000000e-01)
  %i.mgx = fsub reassoc nsz arcp contract afn <8 x float> %i.mgw, %i.mgt ; 6 uses
  %i.mgy = fmul reassoc nsz arcp contract afn <8 x float> %i.mgx, splat (float 5.000000e-01)
  %i.mgz = fadd reassoc nsz arcp contract afn <8 x float> %i.mgy, %i.mfv
  %i.mha = fmul reassoc nsz arcp contract afn <8 x float> %i.mgz, splat (float 1.750000e+00)
  %i.mhb = fcmp reassoc nsz arcp contract afn ule <8 x float> %strided.vec4390, %i.mha ; 2 uses
  %i.mhc = fcmp reassoc nsz arcp contract afn ult <8 x float> %i.mgx, zeroinitializer
  %i.mhd = fcmp reassoc nsz arcp contract afn ole <8 x float> %i.mgx, splat (float 1.000000e+00)
  %i.mhe = select reassoc nsz arcp contract afn <8 x i1> %i.mhd, <8 x float> %i.mgx, <8 x float> splat (float 1.000000e+00)
  %i.mhf = call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.mgx, <8 x float> %strided.vec4382)
  %i.mhg = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.mgx, <8 x float> %strided.vec4382)
  %i.mhh = call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %strided.vec4387, <8 x float> %i.mhg)
  %i.mhi = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.mhf, <8 x float> %i.mhh)
  %7 = select <8 x i1> %i.mhb, <8 x i1> %i.mhc, <8 x i1> zeroinitializer
  %predphi4405 = select reassoc nsz arcp contract afn <8 x i1> %7, <8 x float> zeroinitializer, <8 x float> %i.mhe
  %predphi4406 = select reassoc nsz arcp contract afn <8 x i1> %i.mhb, <8 x float> %predphi4405, <8 x float> %i.mhi
  %i.mhj = fsub reassoc nsz arcp contract afn <8 x float> %predphi4406, %strided.vec4390
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.mhj, <8 x ptr> align 4 %wide.gep4400, <8 x i1> splat (i1 true)), !tbaa !12, !noalias !549
  %index.next4407 = add nuw i64 %index4377, 8     ; 2 uses
  %vec.ind.next4408 = add nuw nsw <8 x i64> %vec.ind4378, splat (i64 16)
  %i.mhk = icmp eq i64 %index.next4407, %n.vec4372
  br i1 %i.mhk, label %scalar.ph4369.preheader, label %vector.body4376, !llvm.loop !335

._crit_edge1042.i:                                ; preds = %bb.pg, %bb.oy
  %i.mhl = or disjoint i32 %i.mep, 2
  %i.mhm = lshr i32 %.fr1063, %i.mhl              ; 2 uses
  %i.mhn = and i32 %i.mhm, 1                      ; 2 uses
  %i.mho = icmp slt i32 %i.mhn, %.pre-phi1260
  br i1 %i.mho, label %.lr.ph1046.i, label %._crit_edge1047.i

.lr.ph1046.i:                                     ; preds = %._crit_edge1042.i
  %i.mhp = mul nuw nsw i64 %indvars.iv1231.i, 136 ; 3 uses
  %i.mhq = getelementptr inbounds nuw [4 x i8], ptr %i.lvp, i64 %i.mhp ; 2 uses
  %i.mhr = getelementptr inbounds nuw [4 x i8], ptr %i.lvj, i64 %i.mhp ; 2 uses
  %i.mhs = getelementptr inbounds nuw [4 x i8], ptr %i.lvl, i64 %i.mhp ; 2 uses
  %i.mht = or disjoint i32 %i.mhn, 2
  %i.mhu = zext nneg i32 %i.mht to i64            ; 4 uses
  %i.mhv = and i32 %i.mhm, 1
  %i.mhw = zext nneg i32 %i.mhv to i64            ; 2 uses
  %i.mhx = or disjoint i64 %i.mhw, 4
  %i.mhy = call i64 @llvm.smax.i64(i64 %i.lzz, i64 %i.mhx)
  %i.mhz = add nsw i64 %i.mhy, -3
  %i.mia = sub i64 %i.mhz, %i.mhw                 ; 2 uses
  %min.iters.check4338 = icmp ult i64 %i.mia, 16
  br i1 %min.iters.check4338, label %scalar.ph4337.preheader, label %vector.ph4339

scalar.ph4337.preheader:                          ; preds = %vector.body4344, %.lr.ph1046.i
  %indvars.iv1228.i.ph = phi i64 [ %i.mhu, %.lr.ph1046.i ], [ %i.mih, %vector.body4344 ]
  br label %scalar.ph4337

vector.ph4339:                                    ; preds = %.lr.ph1046.i
  %i.mib = lshr i64 %i.mia, 1
  %i.mic = add nuw nsw i64 %i.mib, 1              ; 2 uses
  %i.mid = and i64 %i.mic, 7                      ; 2 uses
  %i.mie = icmp eq i64 %i.mid, 0
  %i.mif = select i1 %i.mie, i64 8, i64 %i.mid
  %n.vec4340 = sub nsw i64 %i.mic, %i.mif         ; 2 uses
  %i.mig = shl i64 %n.vec4340, 1
  %i.mih = add i64 %i.mig, %i.mhu
  %broadcast.splatinsert4341 = insertelement <8 x i64> poison, i64 %i.mhu, i64 0
  %broadcast.splat4342 = shufflevector <8 x i64> %broadcast.splatinsert4341, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction4343 = add nuw nsw <8 x i64> %broadcast.splat4342, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  %invariant.gep4856 = getelementptr [4 x i8], ptr %i.mhq, i64 %i.mhu
  br label %vector.body4344

vector.body4344:                                  ; preds = %vector.body4344, %vector.ph4339
  %index4345 = phi i64 [ 0, %vector.ph4339 ], [ %index.next4365, %vector.body4344 ] ; 2 uses
  %vec.ind4346 = phi <8 x i64> [ %induction4343, %vector.ph4339 ], [ %vec.ind.next4366, %vector.body4344 ] ; 3 uses
  %.idx4557 = shl nuw i64 %index4345, 3
  %gep4857 = getelementptr i8, ptr %invariant.gep4856, i64 %.idx4557 ; 7 uses
  %wide.gep4347 = getelementptr inbounds nuw [4 x i8], ptr %i.mhr, <8 x i64> %vec.ind4346
  %wide.gep4348 = getelementptr inbounds nuw [4 x i8], ptr %i.mhs, <8 x i64> %vec.ind4346
  %i.mii = getelementptr inbounds i8, ptr %gep4857, i64 -8
  %wide.vec4349 = load <16 x float>, ptr %i.mii, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %strided.vec4350 = shufflevector <16 x float> %wide.vec4349, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec4351 = shufflevector <16 x float> %wide.vec4349, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.mij = getelementptr inbounds nuw i8, ptr %gep4857, i64 8
  %wide.vec4352 = load <16 x float>, ptr %i.mij, align 4, !tbaa !12, !noalias !549
  %strided.vec4353 = shufflevector <16 x float> %wide.vec4352, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.mik = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4353, %strided.vec4350
  %i.mil = fmul reassoc nsz arcp contract afn <8 x float> %i.mik, splat (float 2.500000e-01)
  %wide.vec4354 = load <16 x float>, ptr %gep4857, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %strided.vec4355 = shufflevector <16 x float> %wide.vec4354, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 4 uses
  %strided.vec4356 = shufflevector <16 x float> %wide.vec4354, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.mim = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4355, %strided.vec4351
  %i.min = fadd reassoc nsz arcp contract afn <8 x float> %i.mim, %strided.vec4356
  %i.mio = fmul reassoc nsz arcp contract afn <8 x float> %i.min, splat (float 5.000000e-01)
  %i.mip = fsub reassoc nsz arcp contract afn <8 x float> %i.mil, %i.mio ; 3 uses
  %i.miq = getelementptr inbounds i8, ptr %gep4857, i64 -1088
  %wide.vec4357 = load <16 x float>, ptr %i.miq, align 4, !tbaa !12, !noalias !549
  %strided.vec4358 = shufflevector <16 x float> %wide.vec4357, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.mir = getelementptr inbounds nuw i8, ptr %gep4857, i64 1088
  %wide.vec4359 = load <16 x float>, ptr %i.mir, align 4, !tbaa !12, !noalias !549
  %strided.vec4360 = shufflevector <16 x float> %wide.vec4359, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.mis = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4360, %strided.vec4358
  %i.mit = fmul reassoc nsz arcp contract afn <8 x float> %i.mis, splat (float 2.500000e-01)
  %i.miu = getelementptr inbounds i8, ptr %gep4857, i64 -544
  %wide.vec4361 = load <16 x float>, ptr %i.miu, align 4, !tbaa !12, !noalias !549
  %strided.vec4362 = shufflevector <16 x float> %wide.vec4361, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.miv = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4362, %strided.vec4355
  %i.miw = getelementptr inbounds nuw i8, ptr %gep4857, i64 544
  %wide.vec4363 = load <16 x float>, ptr %i.miw, align 4, !tbaa !12, !noalias !549
  %strided.vec4364 = shufflevector <16 x float> %wide.vec4363, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.mix = fadd reassoc nsz arcp contract afn <8 x float> %i.miv, %strided.vec4364
  %i.miy = fmul reassoc nsz arcp contract afn <8 x float> %i.mix, splat (float 5.000000e-01)
  %i.miz = fsub reassoc nsz arcp contract afn <8 x float> %i.mit, %i.miy ; 3 uses
  %i.mja = fcmp reassoc nsz arcp contract afn ult <8 x float> %i.mip, splat (float -1.000000e+00)
  %i.mjb = fcmp reassoc nsz arcp contract afn ole <8 x float> %i.mip, zeroinitializer
  %i.mjc = select reassoc nsz arcp contract afn <8 x i1> %i.mjb, <8 x float> %i.mip, <8 x float> zeroinitializer
  %i.mjd = select reassoc nsz arcp contract afn <8 x i1> %i.mja, <8 x float> splat (float -1.000000e+00), <8 x float> %i.mjc
  %i.mje = fadd reassoc nsz arcp contract afn <8 x float> %i.mjd, %strided.vec4355
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.mje, <8 x ptr> align 4 %wide.gep4347, <8 x i1> splat (i1 true)), !tbaa !12, !noalias !549
  %i.mjf = fcmp reassoc nsz arcp contract afn ult <8 x float> %i.miz, splat (float -1.000000e+00)
  %i.mjg = fcmp reassoc nsz arcp contract afn ole <8 x float> %i.miz, zeroinitializer
  %i.mjh = select reassoc nsz arcp contract afn <8 x i1> %i.mjg, <8 x float> %i.miz, <8 x float> zeroinitializer
  %i.mji = select reassoc nsz arcp contract afn <8 x i1> %i.mjf, <8 x float> splat (float -1.000000e+00), <8 x float> %i.mjh
  %i.mjj = fadd reassoc nsz arcp contract afn <8 x float> %i.mji, %strided.vec4355
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.mjj, <8 x ptr> align 4 %wide.gep4348, <8 x i1> splat (i1 true)), !tbaa !12, !noalias !549
  %index.next4365 = add nuw i64 %index4345, 8     ; 2 uses
  %vec.ind.next4366 = add nuw nsw <8 x i64> %vec.ind4346, splat (i64 16)
  %i.mjk = icmp eq i64 %index.next4365, %n.vec4340
  br i1 %i.mjk, label %scalar.ph4337.preheader, label %vector.body4344, !llvm.loop !336

scalar.ph4369:                                    ; preds = %scalar.ph4369.preheader, %bb.pg
  %indvars.iv1225.i = phi i64 [ %indvars.iv.next1226.i, %bb.pg ], [ %indvars.iv1225.i.ph, %scalar.ph4369.preheader ] ; 4 uses
  %i.mjl = getelementptr inbounds nuw [4 x i8], ptr %i.meu, i64 %indvars.iv1225.i ; 13 uses
  %i.mjm = getelementptr inbounds i8, ptr %i.mjl, i64 -548
  %i.mjn = load float, ptr %i.mjm, align 4, !tbaa !12, !noalias !549
  %i.mjo = getelementptr inbounds i8, ptr %i.mjl, i64 -540
  %i.mjp = load float, ptr %i.mjo, align 4, !tbaa !12, !noalias !549
  %i.mjq = fadd reassoc nsz arcp contract afn float %i.mjp, %i.mjn
  %i.mjr = getelementptr inbounds nuw i8, ptr %i.mjl, i64 540
  %i.mjs = load float, ptr %i.mjr, align 4, !tbaa !12, !noalias !549
  %i.mjt = fadd reassoc nsz arcp contract afn float %i.mjq, %i.mjs
  %i.mju = getelementptr inbounds nuw i8, ptr %i.mjl, i64 548
  %i.mjv = load float, ptr %i.mju, align 4, !tbaa !12, !noalias !549
  %i.mjw = fadd reassoc nsz arcp contract afn float %i.mjt, %i.mjv
  %i.mjx = fmul reassoc nsz arcp contract afn float %i.mjw, 6.250000e-02
  %i.mjy = load float, ptr %i.mjl, align 4, !tbaa !12, !noalias !549 ; 7 uses
  %i.mjz = fmul reassoc nsz arcp contract afn float %i.mjy, 2.500000e-01
  %i.mka = fadd reassoc nsz arcp contract afn float %i.mjx, %i.mjz ; 2 uses
  %i.mkb = getelementptr inbounds nuw [4 x i8], ptr %i.mev, i64 %indvars.iv1225.i
  %i.mkc = getelementptr inbounds i8, ptr %i.mjl, i64 -8
  %i.mkd = load float, ptr %i.mkc, align 4, !tbaa !12, !noalias !549
  %i.mke = getelementptr inbounds nuw i8, ptr %i.mjl, i64 8
  %i.mkf = load float, ptr %i.mke, align 4, !tbaa !12, !noalias !549
  %i.mkg = fadd reassoc nsz arcp contract afn float %i.mkf, %i.mkd
  %i.mkh = fmul reassoc nsz arcp contract afn float %i.mkg, 2.500000e-01
  %i.mki = getelementptr inbounds i8, ptr %i.mjl, i64 -4
  %i.mkj = load float, ptr %i.mki, align 4, !tbaa !12, !noalias !549 ; 3 uses
  %i.mkk = fadd reassoc nsz arcp contract afn float %i.mkj, %i.mjy
  %i.mkl = getelementptr inbounds nuw i8, ptr %i.mjl, i64 4
  %i.mkm = load float, ptr %i.mkl, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %i.mkn = fadd reassoc nsz arcp contract afn float %i.mkk, %i.mkm
  %i.mko = fmul reassoc nsz arcp contract afn float %i.mkn, 5.000000e-01
  %i.mkp = fsub reassoc nsz arcp contract afn float %i.mko, %i.mkh ; 6 uses
  %i.mkq = fmul reassoc nsz arcp contract afn float %i.mkp, 5.000000e-01
  %i.mkr = fadd reassoc nsz arcp contract afn float %i.mkq, %i.mka
  %i.mks = fmul reassoc nsz arcp contract afn float %i.mkr, 1.750000e+00
  %i.mkt = fcmp reassoc nsz arcp contract afn ogt float %i.mjy, %i.mks
  br i1 %i.mkt, label %bb.oz, label %bb.pa

bb.oz:                                            ; preds = %scalar.ph4369
  %i.mku = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.mkp, float %i.mkj)
  %i.mkv = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.mkp, float %i.mkj)
  %i.mkw = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.mkm, float %i.mkv)
  %i.mkx = tail call reassoc nsz arcp contract afn noundef float @llvm.maxnum.f32(float %i.mku, float %i.mkw)
  br label %bb.pc

bb.pa:                                            ; preds = %scalar.ph4369
  %i.mky = fcmp reassoc nsz arcp contract afn ult float %i.mkp, 0.000000e+00
  br i1 %i.mky, label %bb.pc, label %bb.pb

bb.pb:                                            ; preds = %bb.pa
  %.inv988.i = fcmp reassoc nsz arcp contract afn ole float %i.mkp, 1.000000e+00
  %spec.select.i563 = select reassoc nsz arcp contract afn i1 %.inv988.i, float %i.mkp, float 1.000000e+00
  br label %bb.pc

bb.pc:                                            ; preds = %bb.pb, %bb.pa, %bb.oz
  %i.mkz = phi reassoc nsz arcp contract afn float [ %i.mkx, %bb.oz ], [ %spec.select.i563, %bb.pb ], [ 0.000000e+00, %bb.pa ]
  %i.mla = fsub reassoc nsz arcp contract afn float %i.mkz, %i.mjy
  store float %i.mla, ptr %i.mkb, align 4, !tbaa !12, !noalias !549
  %i.mlb = getelementptr inbounds nuw [4 x i8], ptr %i.mew, i64 %indvars.iv1225.i
  %i.mlc = getelementptr inbounds i8, ptr %i.mjl, i64 -1088
  %i.mld = load float, ptr %i.mlc, align 4, !tbaa !12, !noalias !549
  %i.mle = getelementptr inbounds nuw i8, ptr %i.mjl, i64 1088
  %i.mlf = load float, ptr %i.mle, align 4, !tbaa !12, !noalias !549
  %i.mlg = fadd reassoc nsz arcp contract afn float %i.mlf, %i.mld
  %i.mlh = fmul reassoc nsz arcp contract afn float %i.mlg, 2.500000e-01
  %i.mli = getelementptr inbounds i8, ptr %i.mjl, i64 -544
  %i.mlj = load float, ptr %i.mli, align 4, !tbaa !12, !noalias !549 ; 3 uses
  %i.mlk = fadd reassoc nsz arcp contract afn float %i.mlj, %i.mjy
  %i.mll = getelementptr inbounds nuw i8, ptr %i.mjl, i64 544
  %i.mlm = load float, ptr %i.mll, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %i.mln = fadd reassoc nsz arcp contract afn float %i.mlk, %i.mlm
  %i.mlo = fmul reassoc nsz arcp contract afn float %i.mln, 5.000000e-01
  %i.mlp = fsub reassoc nsz arcp contract afn float %i.mlo, %i.mlh ; 6 uses
  %i.mlq = fmul reassoc nsz arcp contract afn float %i.mlp, 5.000000e-01
  %i.mlr = fadd reassoc nsz arcp contract afn float %i.mlq, %i.mka
  %i.mls = fmul reassoc nsz arcp contract afn float %i.mlr, 1.750000e+00
  %i.mlt = fcmp reassoc nsz arcp contract afn ogt float %i.mjy, %i.mls
  br i1 %i.mlt, label %bb.pd, label %bb.pe

bb.pd:                                            ; preds = %bb.pc
  %i.mlu = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.mlp, float %i.mlj)
  %i.mlv = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.mlp, float %i.mlj)
  %i.mlw = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.mlm, float %i.mlv)
  %i.mlx = tail call reassoc nsz arcp contract afn noundef float @llvm.maxnum.f32(float %i.mlu, float %i.mlw)
  br label %bb.pg

bb.pe:                                            ; preds = %bb.pc
  %i.mly = fcmp reassoc nsz arcp contract afn ult float %i.mlp, 0.000000e+00
  br i1 %i.mly, label %bb.pg, label %bb.pf

bb.pf:                                            ; preds = %bb.pe
end_hunk_0

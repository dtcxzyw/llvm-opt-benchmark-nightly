inline.NumInlined: 44
inline.NumDeleted: 22
begin_hunk_0_@png_do_read_transformations:bb.a
  %i.clx = load i8, ptr %i.clw, align 1, !tbaa !29
  %i.cly = xor i8 %i.clx, -1
  store i8 %i.cly, ptr %i.clw, align 1, !tbaa !29
  %i.clz = getelementptr i8, ptr %.05166.i, i64 -8 ; 2 uses
  %niter833.next.3 = add i32 %niter833, 4         ; 2 uses
  %niter833.ncmp.3 = icmp eq i32 %niter833.next.3, %unroll_iter832
  br i1 %niter833.ncmp.3, label %png_do_read_invert_alpha.exit.loopexit702.unr-lcssa, label %.lr.ph68.i, !llvm.loop !286

bb.id:                                            ; preds = %bb.ib
  br i1 %.not75.i, label %png_do_read_invert_alpha.exit, label %.lr.ph.preheader.i249

.lr.ph.preheader.i249:                            ; preds = %bb.id
  %i.cma = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cmb = load i64, ptr %i.cma, align 8, !tbaa !215
  %i.cmc = getelementptr inbounds nuw i8, ptr %i.cjr, i64 %i.cmb ; 2 uses
  %xtraiter822 = and i32 %i.cjs, 1
  %i.cmd = icmp eq i32 %i.cjs, 1
  br i1 %i.cmd, label %.lr.ph.i250.epil.preheader, label %.lr.ph.preheader.i249.new

.lr.ph.preheader.i249.new:                        ; preds = %.lr.ph.preheader.i249
  %unroll_iter826 = and i32 %i.cjs, -2
  br label %.lr.ph.i250

.lr.ph.i250:                                      ; preds = %.lr.ph.i250, %.lr.ph.preheader.i249.new
  %.04863.i = phi ptr [ %i.cmc, %.lr.ph.preheader.i249.new ], [ %i.cmq, %.lr.ph.i250 ] ; 5 uses
  %niter827 = phi i32 [ 0, %.lr.ph.preheader.i249.new ], [ %niter827.next.1, %.lr.ph.i250 ]
  %i.cme = getelementptr inbounds i8, ptr %.04863.i, i64 -1 ; 2 uses
  %i.cmf = load i8, ptr %i.cme, align 1, !tbaa !29
  %i.cmg = xor i8 %i.cmf, -1
  store i8 %i.cmg, ptr %i.cme, align 1, !tbaa !29
  %i.cmh = getelementptr inbounds i8, ptr %.04863.i, i64 -2 ; 2 uses
  %i.cmi = load i8, ptr %i.cmh, align 1, !tbaa !29
  %i.cmj = xor i8 %i.cmi, -1
  store i8 %i.cmj, ptr %i.cmh, align 1, !tbaa !29
  %i.cmk = getelementptr inbounds i8, ptr %.04863.i, i64 -5 ; 2 uses
  %i.cml = load i8, ptr %i.cmk, align 1, !tbaa !29
  %i.cmm = xor i8 %i.cml, -1
  store i8 %i.cmm, ptr %i.cmk, align 1, !tbaa !29
  %i.cmn = getelementptr inbounds i8, ptr %.04863.i, i64 -6 ; 2 uses
  %i.cmo = load i8, ptr %i.cmn, align 1, !tbaa !29
  %i.cmp = xor i8 %i.cmo, -1
  store i8 %i.cmp, ptr %i.cmn, align 1, !tbaa !29
  %i.cmq = getelementptr inbounds i8, ptr %.04863.i, i64 -8 ; 2 uses
  %niter827.next.1 = add i32 %niter827, 2         ; 2 uses
  %niter827.ncmp.1 = icmp eq i32 %niter827.next.1, %unroll_iter826
  br i1 %niter827.ncmp.1, label %png_do_read_invert_alpha.exit.loopexit703.unr-lcssa, label %.lr.ph.i250, !llvm.loop !287

png_do_read_invert_alpha.exit.loopexit.unr-lcssa: ; preds = %.lr.ph74.i
  %lcmp.mod842.not = icmp eq i32 %xtraiter840, 0
  br i1 %lcmp.mod842.not, label %png_do_read_invert_alpha.exit, label %.lr.ph74.i.epil.preheader

.lr.ph74.i.epil.preheader:                        ; preds = %png_do_read_invert_alpha.exit.loopexit.unr-lcssa, %.lr.ph74.preheader.i
  %.05772.i.epil.init = phi ptr [ %i.cka, %.lr.ph74.preheader.i ], [ %i.cko, %png_do_read_invert_alpha.exit.loopexit.unr-lcssa ]
  %lcmp.mod843 = icmp ne i32 %xtraiter840, 0
  tail call void @llvm.assume(i1 %lcmp.mod843)
  br label %.lr.ph74.i.epil

.lr.ph74.i.epil:                                  ; preds = %.lr.ph74.i.epil, %.lr.ph74.i.epil.preheader
  %.05772.i.epil = phi ptr [ %i.cmu, %.lr.ph74.i.epil ], [ %.05772.i.epil.init, %.lr.ph74.i.epil.preheader ] ; 2 uses
  %epil.iter841 = phi i32 [ %epil.iter841.next, %.lr.ph74.i.epil ], [ 0, %.lr.ph74.i.epil.preheader ]
  %i.cmr = getelementptr inbounds i8, ptr %.05772.i.epil, i64 -1 ; 2 uses
  %i.cms = load i8, ptr %i.cmr, align 1, !tbaa !29
  %i.cmt = xor i8 %i.cms, -1
  store i8 %i.cmt, ptr %i.cmr, align 1, !tbaa !29
  %i.cmu = getelementptr inbounds i8, ptr %.05772.i.epil, i64 -4
  %epil.iter841.next = add i32 %epil.iter841, 1   ; 2 uses
  %epil.iter841.cmp.not = icmp eq i32 %epil.iter841.next, %xtraiter840
  br i1 %epil.iter841.cmp.not, label %png_do_read_invert_alpha.exit, label %.lr.ph74.i.epil, !llvm.loop !288

png_do_read_invert_alpha.exit.loopexit701.unr-lcssa: ; preds = %.lr.ph71.i
  %lcmp.mod836.not = icmp eq i32 %xtraiter834, 0
  br i1 %lcmp.mod836.not, label %png_do_read_invert_alpha.exit, label %.lr.ph71.i.epil.preheader

.lr.ph71.i.epil.preheader:                        ; preds = %png_do_read_invert_alpha.exit.loopexit701.unr-lcssa, %.lr.ph71.preheader.i
  %.05469.i.epil.init = phi ptr [ %i.ckr, %.lr.ph71.preheader.i ], [ %i.clf, %png_do_read_invert_alpha.exit.loopexit701.unr-lcssa ] ; 2 uses
  %lcmp.mod837 = trunc i32 %i.cjs to i1
  tail call void @llvm.assume(i1 %lcmp.mod837)
  %i.cmv = getelementptr inbounds i8, ptr %.05469.i.epil.init, i64 -1 ; 2 uses
  %i.cmw = load i8, ptr %i.cmv, align 1, !tbaa !29
  %i.cmx = xor i8 %i.cmw, -1
  store i8 %i.cmx, ptr %i.cmv, align 1, !tbaa !29
  %i.cmy = getelementptr inbounds i8, ptr %.05469.i.epil.init, i64 -2 ; 2 uses
  %i.cmz = load i8, ptr %i.cmy, align 1, !tbaa !29
  %i.cna = xor i8 %i.cmz, -1
  store i8 %i.cna, ptr %i.cmy, align 1, !tbaa !29
  br label %png_do_read_invert_alpha.exit

png_do_read_invert_alpha.exit.loopexit702.unr-lcssa: ; preds = %.lr.ph68.i
  %lcmp.mod830.not = icmp eq i32 %xtraiter828, 0
  br i1 %lcmp.mod830.not, label %png_do_read_invert_alpha.exit, label %.lr.ph68.i.epil.preheader

.lr.ph68.i.epil.preheader:                        ; preds = %png_do_read_invert_alpha.exit.loopexit702.unr-lcssa, %.lr.ph68.preheader.i
  %.05166.i.epil.init = phi ptr [ %i.cll, %.lr.ph68.preheader.i ], [ %i.clz, %png_do_read_invert_alpha.exit.loopexit702.unr-lcssa ]
  %lcmp.mod831 = icmp ne i32 %xtraiter828, 0
  tail call void @llvm.assume(i1 %lcmp.mod831)
  br label %.lr.ph68.i.epil

.lr.ph68.i.epil:                                  ; preds = %.lr.ph68.i.epil, %.lr.ph68.i.epil.preheader
  %.05166.i.epil = phi ptr [ %i.cne, %.lr.ph68.i.epil ], [ %.05166.i.epil.init, %.lr.ph68.i.epil.preheader ] ; 2 uses
  %epil.iter829 = phi i32 [ %epil.iter829.next, %.lr.ph68.i.epil ], [ 0, %.lr.ph68.i.epil.preheader ]
  %i.cnb = getelementptr inbounds i8, ptr %.05166.i.epil, i64 -1 ; 2 uses
  %i.cnc = load i8, ptr %i.cnb, align 1, !tbaa !29
  %i.cnd = xor i8 %i.cnc, -1
  store i8 %i.cnd, ptr %i.cnb, align 1, !tbaa !29
  %i.cne = getelementptr i8, ptr %.05166.i.epil, i64 -2
  %epil.iter829.next = add i32 %epil.iter829, 1   ; 2 uses
  %epil.iter829.cmp.not = icmp eq i32 %epil.iter829.next, %xtraiter828
  br i1 %epil.iter829.cmp.not, label %png_do_read_invert_alpha.exit, label %.lr.ph68.i.epil, !llvm.loop !289

png_do_read_invert_alpha.exit.loopexit703.unr-lcssa: ; preds = %.lr.ph.i250
  %lcmp.mod824.not = icmp eq i32 %xtraiter822, 0
  br i1 %lcmp.mod824.not, label %png_do_read_invert_alpha.exit, label %.lr.ph.i250.epil.preheader

.lr.ph.i250.epil.preheader:                       ; preds = %png_do_read_invert_alpha.exit.loopexit703.unr-lcssa, %.lr.ph.preheader.i249
  %.04863.i.epil.init = phi ptr [ %i.cmc, %.lr.ph.preheader.i249 ], [ %i.cmq, %png_do_read_invert_alpha.exit.loopexit703.unr-lcssa ] ; 2 uses
  %lcmp.mod825 = trunc i32 %i.cjs to i1
  tail call void @llvm.assume(i1 %lcmp.mod825)
  %i.cnf = getelementptr inbounds i8, ptr %.04863.i.epil.init, i64 -1 ; 2 uses
  %i.cng = load i8, ptr %i.cnf, align 1, !tbaa !29
  %i.cnh = xor i8 %i.cng, -1
  store i8 %i.cnh, ptr %i.cnf, align 1, !tbaa !29
  %i.cni = getelementptr inbounds i8, ptr %.04863.i.epil.init, i64 -2 ; 2 uses
  %i.cnj = load i8, ptr %i.cni, align 1, !tbaa !29
  %i.cnk = xor i8 %i.cnj, -1
  store i8 %i.cnk, ptr %i.cni, align 1, !tbaa !29
  br label %png_do_read_invert_alpha.exit

png_do_read_invert_alpha.exit:                    ; preds = %.lr.ph.i250.epil.preheader, %png_do_read_invert_alpha.exit.loopexit703.unr-lcssa, %png_do_read_invert_alpha.exit.loopexit702.unr-lcssa, %.lr.ph68.i.epil, %.lr.ph71.i.epil.preheader, %png_do_read_invert_alpha.exit.loopexit701.unr-lcssa, %png_do_read_invert_alpha.exit.loopexit.unr-lcssa, %.lr.ph74.i.epil, %bb.id, %bb.ic, %bb.ia, %bb.hz, %bb.hx, %bb.hw
  %i.cnl = load i32, ptr %i.h, align 4, !tbaa !27 ; 3 uses
  %i.cnm = and i32 %i.cnl, 8
  %.not165 = icmp eq i32 %i.cnm, 0
  br i1 %.not165, label %png_do_unshift.exit, label %bb.ie

bb.ie:                                            ; preds = %png_do_read_invert_alpha.exit
  %i.cnn = load ptr, ptr %i.b, align 8, !tbaa !206 ; 2 uses
  %i.cno = ptrtoint ptr %i.cnn to i64             ; 6 uses
  %i.cnp = getelementptr inbounds nuw i8, ptr %i.cnn, i64 1 ; 16 uses
  %i.cnq = getelementptr inbounds nuw i8, ptr %0, i64 789
  %i.cnr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cns = load i8, ptr %i.cnr, align 8, !tbaa !207 ; 2 uses
  %i.cnt = zext i8 %i.cns to i32                  ; 2 uses
  %.not.i253 = icmp eq i8 %i.cns, 3
  br i1 %.not.i253, label %png_do_unshift.exit, label %bb.if

bb.if:                                            ; preds = %bb.ie
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.cnu = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.cnv = load i8, ptr %i.cnu, align 1, !tbaa !210
  %i.cnw = zext i8 %i.cnv to i32                  ; 10 uses
  %i.cnx = and i32 %i.cnt, 2
  %.not92.i = icmp eq i32 %i.cnx, 0
  br i1 %.not92.i, label %bb.ih, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.cny = load i8, ptr %i.cnq, align 1, !tbaa !290
  %i.cnz = getelementptr inbounds nuw i8, ptr %0, i64 790
  %i.coa = load i8, ptr %i.cnz, align 2, !tbaa !291
  %i.cob = zext i8 %i.coa to i32
  %i.coc = sub nsw i32 %i.cnw, %i.cob
  %i.cod = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.coc, ptr %i.cod, align 4, !tbaa !3
  %i.coe = getelementptr inbounds nuw i8, ptr %0, i64 791
  %i.cof = load i8, ptr %i.coe, align 1, !tbaa !292
  %i.cog = zext i8 %i.cof to i32
  %i.coh = sub nsw i32 %i.cnw, %i.cog
  %i.coi = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.coh, ptr %i.coi, align 8, !tbaa !3
  br label %bb.ii

bb.ih:                                            ; preds = %bb.if
  %i.coj = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.cok = load i8, ptr %i.coj, align 8, !tbaa !293
  br label %bb.ii

bb.ii:                                            ; preds = %bb.ih, %bb.ig
  %.pn.in.i = phi i8 [ %i.cok, %bb.ih ], [ %i.cny, %bb.ig ]
  %.0.i = phi i32 [ 1, %bb.ih ], [ 3, %bb.ig ]    ; 3 uses
  %.pn.i254 = zext i8 %.pn.in.i to i32
  %.sink.i255 = sub nsw i32 %i.cnw, %.pn.i254
  store i32 %.sink.i255, ptr %i.a, align 16, !tbaa !3
  %i.col = and i32 %i.cnt, 4
  %.not93.i256 = icmp eq i32 %i.col, 0
  br i1 %.not93.i256, label %bb.ik, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.com = getelementptr inbounds nuw i8, ptr %0, i64 793
  %i.con = load i8, ptr %i.com, align 1, !tbaa !294
  %i.coo = zext i8 %i.con to i32
  %i.cop = sub nsw i32 %i.cnw, %i.coo
  %i.coq = add nuw nsw i32 %.0.i, 1
  %i.cor = zext nneg i32 %.0.i to i64
  %i.cos = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cor
  store i32 %i.cop, ptr %i.cos, align 4, !tbaa !3
  br label %bb.ik

bb.ik:                                            ; preds = %bb.ii, %bb.ij
  %.1.i257 = phi i32 [ %i.coq, %bb.ij ], [ %.0.i, %bb.ii ] ; 5 uses
  %i.cot = load i32, ptr %i.a, align 16, !tbaa !3 ; 3 uses
  %i.cou = icmp sgt i32 %i.cot, 0
  %.not97.i = icmp slt i32 %i.cot, %i.cnw
  %or.cond.i258 = select i1 %i.cou, i1 %.not97.i, i1 false ; 3 uses
  %spec.store.select98.i = select i1 %or.cond.i258, i32 %i.cot, i32 0
  store i32 %spec.store.select98.i, ptr %i.a, align 16
  %exitcond.not.i259 = icmp eq i32 %.1.i257, 1
  br i1 %exitcond.not.i259, label %bb.io, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.cov = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.cow = load i32, ptr %i.cov, align 4, !tbaa !3 ; 3 uses
  %i.cox = icmp sgt i32 %i.cow, 0
  %.not97.i.1 = icmp slt i32 %i.cow, %i.cnw
  %or.cond.i258.1 = select i1 %i.cox, i1 %.not97.i.1, i1 false ; 2 uses
  %spec.store.select98.i.1 = select i1 %or.cond.i258.1, i32 %i.cow, i32 0
  store i32 %spec.store.select98.i.1, ptr %i.cov, align 4
  %spec.select.i.1 = select i1 %or.cond.i258.1, i1 true, i1 %or.cond.i258 ; 2 uses
  %exitcond.not.i259.1 = icmp eq i32 %.1.i257, 2
  br i1 %exitcond.not.i259.1, label %bb.io, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.coy = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.coz = load i32, ptr %i.coy, align 8, !tbaa !3 ; 3 uses
  %i.cpa = icmp sgt i32 %i.coz, 0
  %.not97.i.2 = icmp slt i32 %i.coz, %i.cnw
  %or.cond.i258.2 = select i1 %i.cpa, i1 %.not97.i.2, i1 false ; 2 uses
  %spec.store.select98.i.2 = select i1 %or.cond.i258.2, i32 %i.coz, i32 0
  store i32 %spec.store.select98.i.2, ptr %i.coy, align 8
  %spec.select.i.2 = select i1 %or.cond.i258.2, i1 true, i1 %spec.select.i.1 ; 2 uses
  %exitcond.not.i259.2 = icmp eq i32 %.1.i257, 3
  br i1 %exitcond.not.i259.2, label %bb.io, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.cpb = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.cpc = load i32, ptr %i.cpb, align 4, !tbaa !3 ; 3 uses
  %i.cpd = icmp sgt i32 %i.cpc, 0
  %.not97.i.3 = icmp slt i32 %i.cpc, %i.cnw
  %or.cond.i258.3 = select i1 %i.cpd, i1 %.not97.i.3, i1 false ; 2 uses
  %spec.store.select98.i.3 = select i1 %or.cond.i258.3, i32 %i.cpc, i32 0
  store i32 %spec.store.select98.i.3, ptr %i.cpb, align 4
  %spec.select.i.3 = select i1 %or.cond.i258.3, i1 true, i1 %spec.select.i.2
  br label %bb.io

bb.io:                                            ; preds = %bb.in, %bb.im, %bb.il, %bb.ik
  %spec.select.i.lcssa = phi i1 [ %or.cond.i258, %bb.ik ], [ %spec.select.i.1, %bb.il ], [ %spec.select.i.2, %bb.im ], [ %spec.select.i.3, %bb.in ]
  %i.cpe = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 %i.cnw)
  %i.cpf = icmp eq i32 %i.cpe, 1
  %or.cond125.i = select i1 %spec.select.i.lcssa, i1 %i.cpf, i1 false
  br i1 %or.cond125.i, label %.split.i261, label %.sink.split.i260

.split.i261:                                      ; preds = %bb.io
  %i.cpg = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.cnw, i1 true)
  switch i32 %i.cpg, label %.sink.split.i260 [
    i32 1, label %bb.ip
    i32 2, label %bb.iq
    i32 3, label %bb.ir
    i32 4, label %bb.is
  ]

bb.ip:                                            ; preds = %.split.i261
  %i.cph = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cpi = load i64, ptr %i.cph, align 8, !tbaa !215 ; 3 uses
  %i.cpj = getelementptr inbounds nuw i8, ptr %i.cnp, i64 %i.cpi
  %.not116.i = icmp eq i64 %i.cpi, 0
  br i1 %.not116.i, label %.sink.split.i260, label %iter.check672

iter.check672:                                    ; preds = %bb.ip
  %i.cpk = add i64 %i.cpi, %i.cno
  %i.cpl = add i64 %i.cpk, 1
  %i.cpm = add i64 %i.cno, 2
  %umax656 = tail call i64 @llvm.umax.i64(i64 %i.cpl, i64 %i.cpm)
  %i.cpn = xor i64 %i.cno, -1
  %i.cpo = add i64 %umax656, %i.cpn               ; 7 uses
  %min.iters.check657 = icmp ult i64 %i.cpo, 4
  br i1 %min.iters.check657, label %.lr.ph112.i.preheader, label %vector.main.loop.iter.check658

vector.main.loop.iter.check658:                   ; preds = %iter.check672
  %min.iters.check659 = icmp ult i64 %i.cpo, 32
  br i1 %min.iters.check659, label %vec.epilog.ph676, label %vector.ph660

vector.ph660:                                     ; preds = %vector.main.loop.iter.check658
  %n.mod.vf661 = and i64 %i.cpo, 28
  %n.vec662 = and i64 %i.cpo, -32                 ; 4 uses
  %i.cpp = getelementptr i8, ptr %i.cnp, i64 %n.vec662
  br label %vector.body663

vector.body663:                                   ; preds = %vector.body663, %vector.ph660
  %index664 = phi i64 [ 0, %vector.ph660 ], [ %index.next668, %vector.body663 ] ; 2 uses
  %next.gep665 = getelementptr i8, ptr %i.cnp, i64 %index664 ; 3 uses
  %i.cpq = getelementptr i8, ptr %next.gep665, i64 16 ; 2 uses
  %wide.load666 = load <16 x i8>, ptr %next.gep665, align 1, !tbaa !29
  %wide.load667 = load <16 x i8>, ptr %i.cpq, align 1, !tbaa !29
  %i.cpr = lshr <16 x i8> %wide.load666, splat (i8 1)
  %i.cps = lshr <16 x i8> %wide.load667, splat (i8 1)
  %i.cpt = and <16 x i8> %i.cpr, splat (i8 85)
  %i.cpu = and <16 x i8> %i.cps, splat (i8 85)
  store <16 x i8> %i.cpt, ptr %next.gep665, align 1, !tbaa !29
  store <16 x i8> %i.cpu, ptr %i.cpq, align 1, !tbaa !29
  %index.next668 = add nuw i64 %index664, 32      ; 2 uses
  %i.cpv = icmp eq i64 %index.next668, %n.vec662
  br i1 %i.cpv, label %middle.block669, label %vector.body663, !llvm.loop !295

middle.block669:                                  ; preds = %vector.body663
  %cmp.n670 = icmp eq i64 %i.cpo, %n.vec662
  br i1 %cmp.n670, label %.sink.split.i260, label %vec.epilog.iter.check674

vec.epilog.iter.check674:                         ; preds = %middle.block669
  %min.epilog.iters.check675 = icmp eq i64 %n.mod.vf661, 0
  br i1 %min.epilog.iters.check675, label %.lr.ph112.i.preheader, label %vec.epilog.ph676, !prof !158

vec.epilog.ph676:                                 ; preds = %vector.main.loop.iter.check658, %vec.epilog.iter.check674
  %vec.epilog.resume.val671 = phi i64 [ %n.vec662, %vec.epilog.iter.check674 ], [ 0, %vector.main.loop.iter.check658 ]
  %n.vec678 = and i64 %i.cpo, -4                  ; 3 uses
  %i.cpw = getelementptr i8, ptr %i.cnp, i64 %n.vec678
  br label %vec.epilog.vector.body679

vec.epilog.vector.body679:                        ; preds = %vec.epilog.vector.body679, %vec.epilog.ph676
  %index680 = phi i64 [ %vec.epilog.resume.val671, %vec.epilog.ph676 ], [ %index.next683, %vec.epilog.vector.body679 ] ; 2 uses
  %next.gep681 = getelementptr i8, ptr %i.cnp, i64 %index680 ; 2 uses
  %wide.load682 = load <4 x i8>, ptr %next.gep681, align 1, !tbaa !29
  %i.cpx = lshr <4 x i8> %wide.load682, splat (i8 1)
  %i.cpy = and <4 x i8> %i.cpx, splat (i8 85)
  store <4 x i8> %i.cpy, ptr %next.gep681, align 1, !tbaa !29
  %index.next683 = add nuw i64 %index680, 4       ; 2 uses
  %i.cpz = icmp eq i64 %index.next683, %n.vec678
  br i1 %i.cpz, label %vec.epilog.middle.block684, label %vec.epilog.vector.body679, !llvm.loop !296

vec.epilog.middle.block684:                       ; preds = %vec.epilog.vector.body679
  %cmp.n685 = icmp eq i64 %i.cpo, %n.vec678
  br i1 %cmp.n685, label %.sink.split.i260, label %.lr.ph112.i.preheader

.lr.ph112.i.preheader:                            ; preds = %iter.check672, %vec.epilog.iter.check674, %vec.epilog.middle.block684
  %.088111.i.ph = phi ptr [ %i.cnp, %iter.check672 ], [ %i.cpp, %vec.epilog.iter.check674 ], [ %i.cpw, %vec.epilog.middle.block684 ]
  br label %.lr.ph112.i

.lr.ph112.i:                                      ; preds = %.lr.ph112.i.preheader, %.lr.ph112.i
  %.088111.i = phi ptr [ %i.cqd, %.lr.ph112.i ], [ %.088111.i.ph, %.lr.ph112.i.preheader ] ; 3 uses
  %i.cqa = load i8, ptr %.088111.i, align 1, !tbaa !29
  %i.cqb = lshr i8 %i.cqa, 1
  %i.cqc = and i8 %i.cqb, 85
  %i.cqd = getelementptr inbounds nuw i8, ptr %.088111.i, i64 1 ; 2 uses
  store i8 %i.cqc, ptr %.088111.i, align 1, !tbaa !29
  %i.cqe = icmp ult ptr %i.cqd, %i.cpj
  br i1 %i.cqe, label %.lr.ph112.i, label %.sink.split.i260, !llvm.loop !297

bb.iq:                                            ; preds = %.split.i261
  %i.cqf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cqg = load i64, ptr %i.cqf, align 8, !tbaa !215 ; 3 uses
  %i.cqh = getelementptr inbounds nuw i8, ptr %i.cnp, i64 %i.cqg
  %i.cqi = load i32, ptr %i.a, align 16, !tbaa !3 ; 4 uses
  %i.cqj = lshr i32 15, %i.cqi
  %i.cqk = mul nuw nsw i32 %i.cqj, 17             ; 3 uses
  %.not115.i = icmp eq i64 %i.cqg, 0
  br i1 %.not115.i, label %.sink.split.i260, label %iter.check

iter.check:                                       ; preds = %bb.iq
  %i.cql = add i64 %i.cqg, %i.cno
  %i.cqm = add i64 %i.cql, 1
  %i.cqn = add i64 %i.cno, 2
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cqm, i64 %i.cqn)
  %i.cqo = xor i64 %i.cno, -1
  %i.cqp = add i64 %umax, %i.cqo                  ; 7 uses
  %min.iters.check = icmp ult i64 %i.cqp, 4
  br i1 %min.iters.check, label %.lr.ph110.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check641 = icmp ult i64 %i.cqp, 16
  br i1 %min.iters.check641, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.cqp, 12
  %n.vec = and i64 %i.cqp, -16                    ; 4 uses
  %i.cqq = getelementptr i8, ptr %i.cnp, i64 %n.vec
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.cqi, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert642 = insertelement <16 x i32> poison, i32 %i.cqk, i64 0
  %broadcast.splat643 = shufflevector <16 x i32> %broadcast.splatinsert642, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cnp, i64 %index ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !29
  %i.cqr = zext <16 x i8> %wide.load to <16 x i32>
  %i.cqs = lshr <16 x i32> %i.cqr, %broadcast.splat
  %i.cqt = and <16 x i32> %i.cqs, %broadcast.splat643
  %i.cqu = trunc nuw <16 x i32> %i.cqt to <16 x i8>
  store <16 x i8> %i.cqu, ptr %next.gep, align 1, !tbaa !29
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cqv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cqv, label %middle.block, label %vector.body, !llvm.loop !298

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cqp, %n.vec
  br i1 %cmp.n, label %.sink.split.i260, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph110.i.preheader, label %vec.epilog.ph, !prof !299

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec645 = and i64 %i.cqp, -4                  ; 3 uses
  %i.cqw = getelementptr i8, ptr %i.cnp, i64 %n.vec645
  %broadcast.splatinsert646 = insertelement <4 x i32> poison, i32 %i.cqi, i64 0
  %broadcast.splat647 = shufflevector <4 x i32> %broadcast.splatinsert646, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert648 = insertelement <4 x i32> poison, i32 %i.cqk, i64 0
  %broadcast.splat649 = shufflevector <4 x i32> %broadcast.splatinsert648, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index650 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next653, %vec.epilog.vector.body ] ; 2 uses
  %next.gep651 = getelementptr i8, ptr %i.cnp, i64 %index650 ; 2 uses
  %wide.load652 = load <4 x i8>, ptr %next.gep651, align 1, !tbaa !29
  %i.cqx = zext <4 x i8> %wide.load652 to <4 x i32>
  %i.cqy = lshr <4 x i32> %i.cqx, %broadcast.splat647
  %i.cqz = and <4 x i32> %i.cqy, %broadcast.splat649
  %i.cra = trunc nuw <4 x i32> %i.cqz to <4 x i8>
  store <4 x i8> %i.cra, ptr %next.gep651, align 1, !tbaa !29
  %index.next653 = add nuw i64 %index650, 4       ; 2 uses
  %i.crb = icmp eq i64 %index.next653, %n.vec645
  br i1 %i.crb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !300

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n654 = icmp eq i64 %i.cqp, %n.vec645
  br i1 %cmp.n654, label %.sink.split.i260, label %.lr.ph110.i.preheader

.lr.ph110.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.089109.i.ph = phi ptr [ %i.cnp, %iter.check ], [ %i.cqq, %vec.epilog.iter.check ], [ %i.cqw, %vec.epilog.middle.block ]
  br label %.lr.ph110.i

.lr.ph110.i:                                      ; preds = %.lr.ph110.i.preheader, %.lr.ph110.i
  %.089109.i = phi ptr [ %i.crh, %.lr.ph110.i ], [ %.089109.i.ph, %.lr.ph110.i.preheader ] ; 3 uses
  %i.crc = load i8, ptr %.089109.i, align 1, !tbaa !29
  %i.crd = zext i8 %i.crc to i32
  %i.cre = lshr i32 %i.crd, %i.cqi
  %i.crf = and i32 %i.cre, %i.cqk
  %i.crg = trunc nuw i32 %i.crf to i8
  %i.crh = getelementptr inbounds nuw i8, ptr %.089109.i, i64 1 ; 2 uses
  store i8 %i.crg, ptr %.089109.i, align 1, !tbaa !29
  %i.cri = icmp ult ptr %i.crh, %i.cqh
  br i1 %i.cri, label %.lr.ph110.i, label %.sink.split.i260, !llvm.loop !301

bb.ir:                                            ; preds = %.split.i261
  %i.crj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.crk = load i64, ptr %i.crj, align 8, !tbaa !215 ; 2 uses
  %i.crl = getelementptr inbounds nuw i8, ptr %i.cnp, i64 %i.crk
  %.not114.i = icmp eq i64 %i.crk, 0
end_hunk_0

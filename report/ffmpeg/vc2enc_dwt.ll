Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vc2enc_dwt?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@vc2_subband_dwt_97:bb.a
  %n.vec582 = and i64 %wide.trip.count297, 2147483640 ; 3 uses
  br label %vector.body583

vector.body583:                                   ; preds = %vector.body583, %vector.ph581
  %index584 = phi i64 [ 0, %vector.ph581 ], [ %index.next591, %vector.body583 ] ; 3 uses
  %i.rd = sub nsw i64 %index584, %i.c
  %i.re = getelementptr inbounds [4 x i8], ptr %i.qr, i64 %i.rd ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 16
  %wide.load585 = load <4 x i32>, ptr %i.re, align 4, !tbaa !15, !alias.scope !94
  %wide.load586 = load <4 x i32>, ptr %i.rf, align 4, !tbaa !15, !alias.scope !94
  %i.rg = getelementptr [4 x i8], ptr %i.qr, i64 %index584 ; 4 uses
  %i.rh = getelementptr [4 x i8], ptr %i.rg, i64 %i.c ; 2 uses
  %i.ri = getelementptr i8, ptr %i.rh, i64 16
  %wide.load587 = load <4 x i32>, ptr %i.rh, align 4, !tbaa !15, !alias.scope !97
  %wide.load588 = load <4 x i32>, ptr %i.ri, align 4, !tbaa !15, !alias.scope !97
  %i.rj = add <4 x i32> %wide.load585, splat (i32 2)
  %i.rk = add <4 x i32> %wide.load586, splat (i32 2)
  %i.rl = add <4 x i32> %i.rj, %wide.load587
  %i.rm = add <4 x i32> %i.rk, %wide.load588
  %i.rn = ashr <4 x i32> %i.rl, splat (i32 2)
  %i.ro = ashr <4 x i32> %i.rm, splat (i32 2)
  %i.rp = getelementptr i8, ptr %i.rg, i64 16     ; 2 uses
  %wide.load589 = load <4 x i32>, ptr %i.rg, align 4, !tbaa !15, !alias.scope !99, !noalias !101
  %wide.load590 = load <4 x i32>, ptr %i.rp, align 4, !tbaa !15, !alias.scope !99, !noalias !101
  %i.rq = add <4 x i32> %i.rn, %wide.load589
  %i.rr = add <4 x i32> %i.ro, %wide.load590
  store <4 x i32> %i.rq, ptr %i.rg, align 4, !tbaa !15, !alias.scope !99, !noalias !101
  store <4 x i32> %i.rr, ptr %i.rp, align 4, !tbaa !15, !alias.scope !99, !noalias !101
  %index.next591 = add nuw i64 %index584, 8       ; 2 uses
  %i.rs = icmp eq i64 %index.next591, %n.vec582
  br i1 %i.rs, label %middle.block592, label %vector.body583, !llvm.loop !102

middle.block592:                                  ; preds = %vector.body583
  %cmp.n593 = icmp eq i64 %n.vec582, %wide.trip.count297
  br i1 %cmp.n593, label %._crit_edge267, label %.lr.ph266.preheader720

.lr.ph266.preheader720:                           ; preds = %vector.memcheck566, %.lr.ph266.preheader, %middle.block592
  %indvars.iv321.ph = phi i64 [ 0, %vector.memcheck566 ], [ 0, %.lr.ph266.preheader ], [ %n.vec582, %middle.block592 ]
  br label %.lr.ph266

.lr.ph266:                                        ; preds = %.lr.ph266, %.lr.ph266.preheader720
  %indvars.iv321 = phi i64 [ %indvars.iv321.ph, %.lr.ph266.preheader720 ], [ %indvars.iv.next322.1, %.lr.ph266 ] ; 4 uses
  %i.rt = sub nsw i64 %indvars.iv321, %i.c
  %i.ru = getelementptr inbounds [4 x i8], ptr %i.qr, i64 %i.rt
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !15
  %i.rw = getelementptr [4 x i8], ptr %i.qr, i64 %indvars.iv321 ; 3 uses
  %i.rx = getelementptr [4 x i8], ptr %i.rw, i64 %i.c
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !15
  %i.rz = add i32 %i.rv, 2
  %i.sa = add i32 %i.rz, %i.ry
  %i.sb = ashr i32 %i.sa, 2
  %i.sc = load i32, ptr %i.rw, align 4, !tbaa !15
  %i.sd = add i32 %i.sb, %i.sc
  store i32 %i.sd, ptr %i.rw, align 4, !tbaa !15
  %indvars.iv.next322 = or disjoint i64 %indvars.iv321, 1 ; 2 uses
  %i.se = sub nsw i64 %indvars.iv.next322, %i.c
  %i.sf = getelementptr inbounds [4 x i8], ptr %i.qr, i64 %i.se
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !15
  %i.sh = getelementptr [4 x i8], ptr %i.qr, i64 %indvars.iv.next322 ; 3 uses
  %i.si = getelementptr [4 x i8], ptr %i.sh, i64 %i.c
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !15
  %i.sk = add i32 %i.sg, 2
  %i.sl = add i32 %i.sk, %i.sj
  %i.sm = ashr i32 %i.sl, 2
  %i.sn = load i32, ptr %i.sh, align 4, !tbaa !15
  %i.so = add i32 %i.sm, %i.sn
  store i32 %i.so, ptr %i.sh, align 4, !tbaa !15
  %indvars.iv.next322.1 = add nuw nsw i64 %indvars.iv321, 2 ; 2 uses
  %exitcond325.not.1 = icmp eq i64 %indvars.iv.next322.1, %wide.trip.count324
  br i1 %exitcond325.not.1, label %._crit_edge267, label %.lr.ph266, !llvm.loop !103

._crit_edge267:                                   ; preds = %.lr.ph266, %middle.block592, %._crit_edge242
  %i.sp = icmp sgt i32 %4, 0
  br i1 %i.sp, label %.preheader.lr.ph, label %deinterleave.exit

.preheader.lr.ph:                                 ; preds = %._crit_edge267
  %i.sq = icmp sgt i32 %3, 0
  %.idx.i = shl nsw i64 %i.c, 3
  br i1 %i.sq, label %.preheader.preheader, label %deinterleave.exit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.sr = zext nneg i32 %3 to i64                 ; 2 uses
  %i.ss = getelementptr [4 x i8], ptr %1, i64 %i.sr ; 6 uses
  %i.st = zext nneg i32 %4 to i64                 ; 2 uses
  %i.su = mul i64 %2, %i.st
  %i.sv = getelementptr [4 x i8], ptr %1, i64 %i.su ; 7 uses
  %i.sw = getelementptr [4 x i8], ptr %i.sv, i64 %i.sr ; 6 uses
  %wide.trip.count329 = zext nneg i32 %3 to i64   ; 7 uses
  %i.sx = add nsw i64 %wide.trip.count329, -1
  %i.sy = add nsw i32 %4, -1
  %i.sz = zext i32 %i.sy to i64                   ; 4 uses
  %i.ta = mul i64 %2, %i.sz
  %i.tb = shl i64 %i.ta, 2                        ; 2 uses
  %i.tc = shl nuw nsw i64 %wide.trip.count329, 2  ; 2 uses
  %i.td = getelementptr i8, ptr %1, i64 %i.tb
  %scevgep596 = getelementptr i8, ptr %i.td, i64 %i.tc ; 2 uses
  %i.te = shl nuw nsw i64 %wide.trip.count329, 3  ; 3 uses
  %i.tf = getelementptr i8, ptr %1, i64 %i.tb
  %scevgep597 = getelementptr i8, ptr %i.tf, i64 %i.te ; 5 uses
  %i.tg = add nuw nsw i64 %i.st, %i.sz
  %i.th = shl nuw nsw i64 %i.tg, 2
  %i.ti = mul i64 %2, %i.th                       ; 2 uses
  %i.tj = getelementptr i8, ptr %1, i64 %i.ti
  %scevgep598 = getelementptr i8, ptr %i.tj, i64 %i.tc ; 5 uses
  %i.tk = getelementptr i8, ptr %1, i64 %i.ti
  %scevgep599 = getelementptr i8, ptr %i.tk, i64 %i.te ; 5 uses
  %i.tl = shl nuw nsw i64 %i.sz, 3
  %i.tm = or disjoint i64 %i.tl, 4
  %i.tn = mul i64 %i.tm, %i.c
  %i.to = getelementptr i8, ptr %i.a, i64 %i.tn
  %scevgep600 = getelementptr i8, ptr %i.to, i64 %i.te ; 4 uses
  %i.tp = mul nsw i64 %i.c, %i.sz
  %i.tq = add i64 %i.tp, %wide.trip.count329
  %i.tr = shl i64 %i.tq, 3
  %scevgep601 = getelementptr i8, ptr %i.a, i64 %i.tr ; 4 uses
  %i.ts = insertelement <4 x ptr> poison, ptr %1, i64 0
  %i.tt = shufflevector <4 x ptr> %i.ts, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.tu = insertelement <4 x ptr> poison, ptr %scevgep598, i64 0
  %i.tv = insertelement <4 x ptr> %i.tu, ptr %scevgep597, i64 1
  %i.tw = insertelement <4 x ptr> %i.tv, ptr %scevgep599, i64 2
  %i.tx = insertelement <4 x ptr> %i.tw, ptr %scevgep600, i64 3
  %i.ty = insertelement <4 x ptr> poison, ptr %i.sv, i64 0
  %i.tz = insertelement <4 x ptr> %i.ty, ptr %i.ss, i64 1
  %i.ua = insertelement <4 x ptr> %i.tz, ptr %i.sw, i64 2
  %i.ub = insertelement <4 x ptr> %i.ua, ptr %i.gc, i64 3
  %i.uc = insertelement <4 x ptr> poison, ptr %scevgep596, i64 0
  %i.ud = shufflevector <4 x ptr> %i.uc, <4 x ptr> poison, <4 x i32> zeroinitializer
  %min.iters.check686 = icmp ugt i32 %3, 51
  %i.ue = and i64 %i.sx, -3221225472
  %.not = icmp eq i64 %i.ue, 0
  %or.cond702 = select i1 %min.iters.check686, i1 %.not, i1 false
  %i.uf = icmp ult <4 x ptr> %i.tt, %i.tx
  %i.ug = icmp ult <4 x ptr> %i.ub, %i.ud
  %i.uh = and <4 x i1> %i.uf, %i.ug
  %stride.check623 = icmp slt i32 %i.b, 0
  %bound0625 = icmp ult ptr %1, %scevgep601
  %bound1626 = icmp ult ptr %i.a, %scevgep596
  %found.conflict627 = and i1 %bound0625, %bound1626
  %bound0631 = icmp ult ptr %i.ss, %scevgep598
  %bound1632 = icmp ult ptr %i.sv, %scevgep597
  %found.conflict633 = and i1 %bound0631, %bound1632
  %bound0637 = icmp ult ptr %i.ss, %scevgep599
  %bound1638 = icmp ult ptr %i.sw, %scevgep597
  %found.conflict639 = and i1 %bound0637, %bound1638
  %bound0643 = icmp ult ptr %i.ss, %scevgep600
  %bound1644 = icmp ult ptr %i.gc, %scevgep597
  %found.conflict645 = and i1 %bound0643, %bound1644
  %bound0649 = icmp ult ptr %i.ss, %scevgep601
  %bound1650 = icmp ult ptr %i.a, %scevgep597
  %found.conflict651 = and i1 %bound0649, %bound1650
  %bound0655 = icmp ult ptr %i.sv, %scevgep599
  %bound1656 = icmp ult ptr %i.sw, %scevgep598
  %found.conflict657 = and i1 %bound0655, %bound1656
  %bound0661 = icmp ult ptr %i.sv, %scevgep600
  %bound1662 = icmp ult ptr %i.gc, %scevgep598
  %found.conflict663 = and i1 %bound0661, %bound1662
  %.mask719 = and i64 %2, 2305843009213693952
  %stride.check664 = icmp ne i64 %.mask719, 0
  %bound0667 = icmp ult ptr %i.sv, %scevgep601
  %bound1668 = icmp ult ptr %i.a, %scevgep598
  %found.conflict669 = and i1 %bound0667, %bound1668
  %bound0673 = icmp ult ptr %i.sw, %scevgep600
  %bound1674 = icmp ult ptr %i.gc, %scevgep599
  %found.conflict675 = and i1 %bound0673, %bound1674
  %bound0679 = icmp ult ptr %i.sw, %scevgep601
  %bound1680 = icmp ult ptr %i.a, %scevgep599
  %found.conflict681 = and i1 %bound0679, %bound1680
  %i.ui = bitcast <4 x i1> %i.uh to i4
  %i.uj = icmp ne i4 %i.ui, 0
  %op.rdx = or i1 %i.uj, %found.conflict663
  %op.rdx703 = or i1 %found.conflict627, %found.conflict633
  %op.rdx704 = or i1 %found.conflict639, %found.conflict645
  %op.rdx705 = or i1 %found.conflict651, %found.conflict657
  %op.rdx706 = or i1 %found.conflict669, %found.conflict675
  %op.rdx707 = or i1 %found.conflict681, %stride.check664
  %op.rdx710 = or i1 %op.rdx, %op.rdx703
  %op.rdx711 = or i1 %op.rdx704, %op.rdx705
  %op.rdx712 = or i1 %op.rdx706, %op.rdx707
  %op.rdx714 = or i1 %op.rdx710, %op.rdx711
  %op.rdx715 = or i1 %op.rdx712, %stride.check623
  %op.rdx716 = or i1 %op.rdx714, %op.rdx715
  %n.vec688 = and i64 %wide.trip.count329, 2147483644 ; 3 uses
  %cmp.n699 = icmp eq i64 %n.vec688, %wide.trip.count329
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge270
  %.0.i276 = phi ptr [ %i.vl, %._crit_edge270 ], [ %i.sw, %.preheader.preheader ] ; 3 uses
  %.041.i275 = phi ptr [ %i.vj, %._crit_edge270 ], [ %i.sv, %.preheader.preheader ] ; 3 uses
  %.042.i274 = phi ptr [ %i.vk, %._crit_edge270 ], [ %i.ss, %.preheader.preheader ] ; 3 uses
  %.043.i273 = phi i32 [ %i.vm, %._crit_edge270 ], [ 0, %.preheader.preheader ]
  %.045.i272 = phi ptr [ %i.vh, %._crit_edge270 ], [ %i.a, %.preheader.preheader ] ; 4 uses
  %.046.i271 = phi ptr [ %i.vi, %._crit_edge270 ], [ %1, %.preheader.preheader ] ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr %.045.i272, i64 %i.c ; 2 uses
  %or.cond702.not = xor i1 %or.cond702, true
  %brmerge726 = select i1 %or.cond702.not, i1 true, i1 %op.rdx716
  br i1 %brmerge726, label %scalar.ph685.preheader, label %vector.body689

vector.body689:                                   ; preds = %.preheader, %vector.body689
  %index690 = phi i64 [ %index.next697, %vector.body689 ], [ 0, %.preheader ] ; 6 uses
  %i.uk = trunc i64 %index690 to i32
  %i.ul = shl i32 %i.uk, 1
  %i.um = sext i32 %i.ul to i64                   ; 2 uses
  %i.un = getelementptr inbounds [4 x i8], ptr %.045.i272, i64 %i.um
  %wide.vec691 = load <8 x i32>, ptr %i.un, align 4, !tbaa !15, !alias.scope !104 ; 2 uses
  %strided.vec692 = shufflevector <8 x i32> %wide.vec691, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec693 = shufflevector <8 x i32> %wide.vec691, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %.046.i271, i64 %index690
  store <4 x i32> %strided.vec692, ptr %i.uo, align 4, !tbaa !15, !alias.scope !107, !noalias !109
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %.042.i274, i64 %index690
  store <4 x i32> %strided.vec693, ptr %i.up, align 4, !tbaa !15, !alias.scope !114, !noalias !115
  %i.uq = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.um
  %wide.vec694 = load <8 x i32>, ptr %i.uq, align 4, !tbaa !15, !alias.scope !116 ; 2 uses
  %strided.vec695 = shufflevector <8 x i32> %wide.vec694, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec696 = shufflevector <8 x i32> %wide.vec694, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %.041.i275, i64 %index690
  store <4 x i32> %strided.vec695, ptr %i.ur, align 4, !tbaa !15, !alias.scope !117, !noalias !118
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %.0.i276, i64 %index690
  store <4 x i32> %strided.vec696, ptr %i.us, align 4, !tbaa !15, !alias.scope !119, !noalias !120
  %index.next697 = add nuw i64 %index690, 4       ; 2 uses
  %i.ut = icmp eq i64 %index.next697, %n.vec688
  br i1 %i.ut, label %middle.block698, label %vector.body689, !llvm.loop !121

middle.block698:                                  ; preds = %vector.body689
  br i1 %cmp.n699, label %._crit_edge270, label %scalar.ph685.preheader

scalar.ph685.preheader:                           ; preds = %.preheader, %middle.block698
  %indvars.iv326.ph = phi i64 [ %n.vec688, %middle.block698 ], [ 0, %.preheader ]
  br label %scalar.ph685

scalar.ph685:                                     ; preds = %scalar.ph685.preheader, %scalar.ph685
  %indvars.iv326 = phi i64 [ %indvars.iv.next327, %scalar.ph685 ], [ %indvars.iv326.ph, %scalar.ph685.preheader ] ; 6 uses
  %indvars.iv326.tr = trunc i64 %indvars.iv326 to i32
  %i.uu = shl i32 %indvars.iv326.tr, 1
  %i.uv = sext i32 %i.uu to i64                   ; 2 uses
  %i.uw = getelementptr inbounds [4 x i8], ptr %.045.i272, i64 %i.uv ; 2 uses
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !15
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %.046.i271, i64 %indvars.iv326
  store i32 %i.ux, ptr %i.uy, align 4, !tbaa !15
  %i.uz = getelementptr i8, ptr %i.uw, i64 4
  %i.va = load i32, ptr %i.uz, align 4, !tbaa !15
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %.042.i274, i64 %indvars.iv326
  store i32 %i.va, ptr %i.vb, align 4, !tbaa !15
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.uv ; 2 uses
  %i.vc = load i32, ptr %gep, align 4, !tbaa !15
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %.041.i275, i64 %indvars.iv326
  store i32 %i.vc, ptr %i.vd, align 4, !tbaa !15
  %i.ve = getelementptr i8, ptr %gep, i64 4
  %i.vf = load i32, ptr %i.ve, align 4, !tbaa !15
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %.0.i276, i64 %indvars.iv326
  store i32 %i.vf, ptr %i.vg, align 4, !tbaa !15
  %indvars.iv.next327 = add nuw nsw i64 %indvars.iv326, 1 ; 2 uses
  %exitcond330.not = icmp eq i64 %indvars.iv.next327, %wide.trip.count329
  br i1 %exitcond330.not, label %._crit_edge270, label %scalar.ph685, !llvm.loop !122

._crit_edge270:                                   ; preds = %scalar.ph685, %middle.block698
  %i.vh = getelementptr inbounds i8, ptr %.045.i272, i64 %.idx.i
  %i.vi = getelementptr inbounds [4 x i8], ptr %.046.i271, i64 %2
  %i.vj = getelementptr inbounds [4 x i8], ptr %.041.i275, i64 %2
  %i.vk = getelementptr inbounds [4 x i8], ptr %.042.i274, i64 %2
  %i.vl = getelementptr inbounds [4 x i8], ptr %.0.i276, i64 %2
  %i.vm = add nuw nsw i32 %.043.i273, 1           ; 2 uses
  %exitcond331.not = icmp eq i32 %i.vm, %4
  br i1 %exitcond331.not, label %deinterleave.exit, label %.preheader, !llvm.loop !123

deinterleave.exit:                                ; preds = %._crit_edge270, %.preheader.lr.ph, %._crit_edge267
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @vc2_subband_dwt_53(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11     ; 46 uses
  %i.b = shl i32 %3, 1                            ; 17 uses
  %i.c = sext i32 %i.b to i64                     ; 50 uses
  %i.d = shl i32 %4, 1                            ; 5 uses
  %i.e = sext i32 %i.d to i64                     ; 4 uses
  %i.f = icmp sgt i32 %i.d, 0                     ; 2 uses
  %i.g = icmp sgt i32 %i.b, 0                     ; 2 uses
  %or.cond = and i1 %i.f, %i.g
  br i1 %or.cond, label %.preheader170.preheader, label %.preheader169

.preheader170.preheader:                          ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 7 uses
  %i.h = add nsw i32 %i.d, -1
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = mul nuw nsw i64 %i.i, %i.c
  %i.k = add nuw i64 %i.j, %wide.trip.count
  %i.l = shl i64 %i.k, 2
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.l
  %i.m = mul i64 %2, %i.i
  %i.n = add i64 %i.m, %wide.trip.count
  %i.o = shl i64 %i.n, 2
  %scevgep293 = getelementptr i8, ptr %1, i64 %i.o
  %min.iters.check = icmp ult i32 %i.b, 8
  %bound0 = icmp ult ptr %i.a, %scevgep293
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %.mask = and i64 %2, 2305843009213693952
  %stride.check294 = icmp ne i64 %.mask, 0
  %i.p = or i1 %found.conflict, %stride.check294
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 2         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader170

.preheader170:                                    ; preds = %.preheader170.preheader, %._crit_edge
  %.0175 = phi ptr [ %i.bf, %._crit_edge ], [ %1, %.preheader170.preheader ] ; 7 uses
  %.0142174 = phi ptr [ %i.be, %._crit_edge ], [ %i.a, %.preheader170.preheader ] ; 7 uses
  %.0143173 = phi i32 [ %i.bg, %._crit_edge ], [ 0, %.preheader170.preheader ]
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.p
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader170, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader170 ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.0175, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <4 x i32>, ptr %i.q, align 4, !tbaa !15, !alias.scope !124
  %wide.load295 = load <4 x i32>, ptr %i.r, align 4, !tbaa !15, !alias.scope !124
  %i.s = shl <4 x i32> %wide.load, splat (i32 1)
  %i.t = shl <4 x i32> %wide.load295, splat (i32 1)
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.0142174, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <4 x i32> %i.s, ptr %i.u, align 4, !tbaa !15, !alias.scope !127, !noalias !124
  store <4 x i32> %i.t, ptr %i.v, align 4, !tbaa !15, !alias.scope !127, !noalias !124
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !129

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader170, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader170 ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.0175, i64 %indvars.iv.prol
  %i.y = load i32, ptr %i.x, align 4, !tbaa !15
  %i.z = shl i32 %i.y, 1
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.0142174, i64 %indvars.iv.prol
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !15
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !130

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ab = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %._crit_edge, label %scalar.ph

.preheader169:                                    ; preds = %._crit_edge, %bb.a
  br i1 %i.f, label %.preheader168.lr.ph, label %._crit_edge184

.preheader168.lr.ph:                              ; preds = %.preheader169
  %i.ad = add i32 %3, -1                          ; 2 uses
  %i.ae = icmp sgt i32 %3, 1
  %i.af = icmp sgt i32 %3, 2
  %wide.trip.count225 = zext i32 %i.ad to i64     ; 4 uses
  %wide.trip.count230 = zext nneg i32 %i.ad to i64
  %min.iters.check309 = icmp ult i32 %3, 6
  %i.ag = and i64 %wide.trip.count225, 3          ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  %i.ai = select i1 %i.ah, i64 4, i64 %i.ag
  %n.vec311 = sub nsw i64 %wide.trip.count225, %i.ai ; 2 uses
  %i.aj = add nsw i64 %wide.trip.count225, -1     ; 3 uses
  %min.iters.check297 = icmp ult i64 %i.aj, 5
  %i.ak = and i64 %i.aj, 3                        ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  %i.am = select i1 %i.al, i64 4, i64 %i.ak
  %n.vec299 = sub nsw i64 %i.aj, %i.am            ; 2 uses
  %i.an = add nsw i64 %n.vec299, 1
  br label %.preheader168

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.0175, i64 %indvars.iv
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !15
  %i.aq = shl i32 %i.ap, 1
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.0142174, i64 %indvars.iv
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.0175, i64 %indvars.iv.next
  %i.at = load i32, ptr %i.as, align 4, !tbaa !15
  %i.au = shl i32 %i.at, 1
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.0142174, i64 %indvars.iv.next
  store i32 %i.au, ptr %i.av, align 4, !tbaa !15
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.0175, i64 %indvars.iv.next.1
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !15
  %i.ay = shl i32 %i.ax, 1
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.0142174, i64 %indvars.iv.next.1
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !15
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.0175, i64 %indvars.iv.next.2
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !15
  %i.bc = shl i32 %i.bb, 1
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.0142174, i64 %indvars.iv.next.2
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !15
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !131

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.0142174, i64 %i.c
  %i.bf = getelementptr inbounds [4 x i8], ptr %.0175, i64 %2
  %i.bg = add nuw nsw i32 %.0143173, 1            ; 2 uses
  %exitcond221.not = icmp eq i32 %i.bg, %i.d
  br i1 %exitcond221.not, label %.preheader169, label %.preheader170, !llvm.loop !132

.preheader168:                                    ; preds = %.preheader168.lr.ph, %._crit_edge181
  %.1183 = phi ptr [ %i.a, %.preheader168.lr.ph ], [ %i.cn, %._crit_edge181 ] ; 14 uses
  %.1144182 = phi i32 [ 0, %.preheader168.lr.ph ], [ %i.ep, %._crit_edge181 ]
  br i1 %i.ae, label %.lr.ph.preheader, label %._crit_edge177

.lr.ph.preheader:                                 ; preds = %.preheader168
  br i1 %min.iters.check309, label %.lr.ph.preheader608, label %vector.body312

vector.body312:                                   ; preds = %.lr.ph.preheader, %vector.body312
  %index313 = phi i64 [ %index.next319, %vector.body312 ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %i.bh = shl nuw nsw i64 %index313, 3
  %i.bi = shl i64 %index313, 3
  %i.bj = shl i64 %index313, 3
  %i.bk = shl i64 %index313, 3
  %i.bl = getelementptr inbounds nuw i8, ptr %.1183, i64 %i.bh ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.1183, i64 %i.bi
  %i.bn = getelementptr inbounds nuw i8, ptr %.1183, i64 %i.bj
  %i.bo = getelementptr inbounds nuw i8, ptr %.1183, i64 %i.bk
  %wide.vec314 = load <8 x i32>, ptr %i.bl, align 4, !tbaa !15
end_hunk_0
begin_hunk_1_@vc2_subband_dwt_53:bb.a
  %n.vec467 = and i64 %wide.trip.count236, 2147483640 ; 3 uses
  br label %vector.body468

vector.body468:                                   ; preds = %vector.body468, %vector.ph466
  %index469 = phi i64 [ 0, %vector.ph466 ], [ %index.next476, %vector.body468 ] ; 3 uses
  %i.nr = sub nsw i64 %index469, %i.c
  %i.ns = getelementptr inbounds [4 x i8], ptr %i.nf, i64 %i.nr ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 16
  %wide.load470 = load <4 x i32>, ptr %i.ns, align 4, !tbaa !15, !alias.scope !184
  %wide.load471 = load <4 x i32>, ptr %i.nt, align 4, !tbaa !15, !alias.scope !184
  %i.nu = getelementptr [4 x i8], ptr %i.nf, i64 %index469 ; 4 uses
  %i.nv = getelementptr [4 x i8], ptr %i.nu, i64 %i.c ; 2 uses
  %i.nw = getelementptr i8, ptr %i.nv, i64 16
  %wide.load472 = load <4 x i32>, ptr %i.nv, align 4, !tbaa !15, !alias.scope !187
  %wide.load473 = load <4 x i32>, ptr %i.nw, align 4, !tbaa !15, !alias.scope !187
  %i.nx = add <4 x i32> %wide.load470, splat (i32 2)
  %i.ny = add <4 x i32> %wide.load471, splat (i32 2)
  %i.nz = add <4 x i32> %i.nx, %wide.load472
  %i.oa = add <4 x i32> %i.ny, %wide.load473
  %i.ob = ashr <4 x i32> %i.nz, splat (i32 2)
  %i.oc = ashr <4 x i32> %i.oa, splat (i32 2)
  %i.od = getelementptr i8, ptr %i.nu, i64 16     ; 2 uses
  %wide.load474 = load <4 x i32>, ptr %i.nu, align 4, !tbaa !15, !alias.scope !189, !noalias !191
  %wide.load475 = load <4 x i32>, ptr %i.od, align 4, !tbaa !15, !alias.scope !189, !noalias !191
  %i.oe = add <4 x i32> %i.ob, %wide.load474
  %i.of = add <4 x i32> %i.oc, %wide.load475
  store <4 x i32> %i.oe, ptr %i.nu, align 4, !tbaa !15, !alias.scope !189, !noalias !191
  store <4 x i32> %i.of, ptr %i.od, align 4, !tbaa !15, !alias.scope !189, !noalias !191
  %index.next476 = add nuw i64 %index469, 8       ; 2 uses
  %i.og = icmp eq i64 %index.next476, %n.vec467
  br i1 %i.og, label %middle.block477, label %vector.body468, !llvm.loop !192

middle.block477:                                  ; preds = %vector.body468
  %cmp.n478 = icmp eq i64 %n.vec467, %wide.trip.count236
  br i1 %cmp.n478, label %._crit_edge209, label %.lr.ph208.preheader604

.lr.ph208.preheader604:                           ; preds = %vector.memcheck451, %.lr.ph208.preheader, %middle.block477
  %indvars.iv260.ph = phi i64 [ 0, %vector.memcheck451 ], [ 0, %.lr.ph208.preheader ], [ %n.vec467, %middle.block477 ]
  br label %.lr.ph208

.lr.ph208:                                        ; preds = %.lr.ph208, %.lr.ph208.preheader604
  %indvars.iv260 = phi i64 [ %indvars.iv260.ph, %.lr.ph208.preheader604 ], [ %indvars.iv.next261.1, %.lr.ph208 ] ; 4 uses
  %i.oh = sub nsw i64 %indvars.iv260, %i.c
  %i.oi = getelementptr inbounds [4 x i8], ptr %i.nf, i64 %i.oh
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !15
  %i.ok = getelementptr [4 x i8], ptr %i.nf, i64 %indvars.iv260 ; 3 uses
  %i.ol = getelementptr [4 x i8], ptr %i.ok, i64 %i.c
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !15
  %i.on = add i32 %i.oj, 2
  %i.oo = add i32 %i.on, %i.om
  %i.op = ashr i32 %i.oo, 2
  %i.oq = load i32, ptr %i.ok, align 4, !tbaa !15
  %i.or = add i32 %i.op, %i.oq
  store i32 %i.or, ptr %i.ok, align 4, !tbaa !15
  %indvars.iv.next261 = or disjoint i64 %indvars.iv260, 1 ; 2 uses
  %i.os = sub nsw i64 %indvars.iv.next261, %i.c
  %i.ot = getelementptr inbounds [4 x i8], ptr %i.nf, i64 %i.os
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !15
  %i.ov = getelementptr [4 x i8], ptr %i.nf, i64 %indvars.iv.next261 ; 3 uses
  %i.ow = getelementptr [4 x i8], ptr %i.ov, i64 %i.c
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !15
  %i.oy = add i32 %i.ou, 2
  %i.oz = add i32 %i.oy, %i.ox
  %i.pa = ashr i32 %i.oz, 2
  %i.pb = load i32, ptr %i.ov, align 4, !tbaa !15
  %i.pc = add i32 %i.pa, %i.pb
  store i32 %i.pc, ptr %i.ov, align 4, !tbaa !15
  %indvars.iv.next261.1 = add nuw nsw i64 %indvars.iv260, 2 ; 2 uses
  %exitcond264.not.1 = icmp eq i64 %indvars.iv.next261.1, %wide.trip.count263
  br i1 %exitcond264.not.1, label %._crit_edge209, label %.lr.ph208, !llvm.loop !193

._crit_edge209:                                   ; preds = %.lr.ph208, %middle.block477, %._crit_edge184
  %i.pd = icmp sgt i32 %4, 0
  br i1 %i.pd, label %.preheader.lr.ph, label %deinterleave.exit

.preheader.lr.ph:                                 ; preds = %._crit_edge209
  %i.pe = icmp sgt i32 %3, 0
  %.idx.i = shl nsw i64 %i.c, 3
  br i1 %i.pe, label %.preheader.preheader, label %deinterleave.exit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.pf = zext nneg i32 %3 to i64                 ; 2 uses
  %i.pg = getelementptr [4 x i8], ptr %1, i64 %i.pf ; 6 uses
  %i.ph = zext nneg i32 %4 to i64                 ; 2 uses
  %i.pi = mul i64 %2, %i.ph
  %i.pj = getelementptr [4 x i8], ptr %1, i64 %i.pi ; 7 uses
  %i.pk = getelementptr [4 x i8], ptr %i.pj, i64 %i.pf ; 6 uses
  %wide.trip.count268 = zext nneg i32 %3 to i64   ; 7 uses
  %i.pl = add nsw i64 %wide.trip.count268, -1
  %i.pm = add nsw i32 %4, -1
  %i.pn = zext i32 %i.pm to i64                   ; 4 uses
  %i.po = mul i64 %2, %i.pn
  %i.pp = shl i64 %i.po, 2                        ; 2 uses
  %i.pq = shl nuw nsw i64 %wide.trip.count268, 2  ; 2 uses
  %i.pr = getelementptr i8, ptr %1, i64 %i.pp
  %scevgep481 = getelementptr i8, ptr %i.pr, i64 %i.pq ; 2 uses
  %i.ps = shl nuw nsw i64 %wide.trip.count268, 3  ; 3 uses
  %i.pt = getelementptr i8, ptr %1, i64 %i.pp
  %scevgep482 = getelementptr i8, ptr %i.pt, i64 %i.ps ; 5 uses
  %i.pu = add nuw nsw i64 %i.ph, %i.pn
  %i.pv = shl nuw nsw i64 %i.pu, 2
  %i.pw = mul i64 %2, %i.pv                       ; 2 uses
  %i.px = getelementptr i8, ptr %1, i64 %i.pw
  %scevgep483 = getelementptr i8, ptr %i.px, i64 %i.pq ; 5 uses
  %i.py = getelementptr i8, ptr %1, i64 %i.pw
  %scevgep484 = getelementptr i8, ptr %i.py, i64 %i.ps ; 5 uses
  %i.pz = shl nuw nsw i64 %i.pn, 3
  %i.qa = or disjoint i64 %i.pz, 4
  %i.qb = mul i64 %i.qa, %i.c
  %i.qc = getelementptr i8, ptr %i.a, i64 %i.qb
  %scevgep485 = getelementptr i8, ptr %i.qc, i64 %i.ps ; 4 uses
  %i.qd = mul nsw i64 %i.c, %i.pn
  %i.qe = add i64 %i.qd, %wide.trip.count268
  %i.qf = shl i64 %i.qe, 3
  %scevgep486 = getelementptr i8, ptr %i.a, i64 %i.qf ; 4 uses
  %i.qg = insertelement <4 x ptr> poison, ptr %1, i64 0
  %i.qh = shufflevector <4 x ptr> %i.qg, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.qi = insertelement <4 x ptr> poison, ptr %scevgep483, i64 0
  %i.qj = insertelement <4 x ptr> %i.qi, ptr %scevgep482, i64 1
  %i.qk = insertelement <4 x ptr> %i.qj, ptr %scevgep484, i64 2
  %i.ql = insertelement <4 x ptr> %i.qk, ptr %scevgep485, i64 3
  %i.qm = insertelement <4 x ptr> poison, ptr %i.pj, i64 0
  %i.qn = insertelement <4 x ptr> %i.qm, ptr %i.pg, i64 1
  %i.qo = insertelement <4 x ptr> %i.qn, ptr %i.pk, i64 2
  %i.qp = insertelement <4 x ptr> %i.qo, ptr %i.eq, i64 3
  %i.qq = insertelement <4 x ptr> poison, ptr %scevgep481, i64 0
  %i.qr = shufflevector <4 x ptr> %i.qq, <4 x ptr> poison, <4 x i32> zeroinitializer
  %min.iters.check571 = icmp ugt i32 %3, 51
  %i.qs = and i64 %i.pl, -3221225472
  %.not = icmp eq i64 %i.qs, 0
  %or.cond587 = select i1 %min.iters.check571, i1 %.not, i1 false
  %i.qt = icmp ult <4 x ptr> %i.qh, %i.ql
  %i.qu = icmp ult <4 x ptr> %i.qp, %i.qr
  %i.qv = and <4 x i1> %i.qt, %i.qu
  %stride.check508 = icmp slt i32 %i.b, 0
  %bound0510 = icmp ult ptr %1, %scevgep486
  %bound1511 = icmp ult ptr %i.a, %scevgep481
  %found.conflict512 = and i1 %bound0510, %bound1511
  %bound0516 = icmp ult ptr %i.pg, %scevgep483
  %bound1517 = icmp ult ptr %i.pj, %scevgep482
  %found.conflict518 = and i1 %bound0516, %bound1517
  %bound0522 = icmp ult ptr %i.pg, %scevgep484
  %bound1523 = icmp ult ptr %i.pk, %scevgep482
  %found.conflict524 = and i1 %bound0522, %bound1523
  %bound0528 = icmp ult ptr %i.pg, %scevgep485
  %bound1529 = icmp ult ptr %i.eq, %scevgep482
  %found.conflict530 = and i1 %bound0528, %bound1529
  %bound0534 = icmp ult ptr %i.pg, %scevgep486
  %bound1535 = icmp ult ptr %i.a, %scevgep482
  %found.conflict536 = and i1 %bound0534, %bound1535
  %bound0540 = icmp ult ptr %i.pj, %scevgep484
  %bound1541 = icmp ult ptr %i.pk, %scevgep483
  %found.conflict542 = and i1 %bound0540, %bound1541
  %bound0546 = icmp ult ptr %i.pj, %scevgep485
  %bound1547 = icmp ult ptr %i.eq, %scevgep483
  %found.conflict548 = and i1 %bound0546, %bound1547
  %.mask603 = and i64 %2, 2305843009213693952
  %stride.check549 = icmp ne i64 %.mask603, 0
  %bound0552 = icmp ult ptr %i.pj, %scevgep486
  %bound1553 = icmp ult ptr %i.a, %scevgep483
  %found.conflict554 = and i1 %bound0552, %bound1553
  %bound0558 = icmp ult ptr %i.pk, %scevgep485
  %bound1559 = icmp ult ptr %i.eq, %scevgep484
  %found.conflict560 = and i1 %bound0558, %bound1559
  %bound0564 = icmp ult ptr %i.pk, %scevgep486
  %bound1565 = icmp ult ptr %i.a, %scevgep484
  %found.conflict566 = and i1 %bound0564, %bound1565
  %i.qw = bitcast <4 x i1> %i.qv to i4
  %i.qx = icmp ne i4 %i.qw, 0
  %op.rdx = or i1 %i.qx, %found.conflict548
  %op.rdx588 = or i1 %found.conflict512, %found.conflict518
  %op.rdx589 = or i1 %found.conflict524, %found.conflict530
  %op.rdx590 = or i1 %found.conflict536, %found.conflict542
  %op.rdx591 = or i1 %found.conflict554, %found.conflict560
  %op.rdx592 = or i1 %found.conflict566, %stride.check549
  %op.rdx595 = or i1 %op.rdx, %op.rdx588
  %op.rdx596 = or i1 %op.rdx589, %op.rdx590
  %op.rdx597 = or i1 %op.rdx591, %op.rdx592
  %op.rdx599 = or i1 %op.rdx595, %op.rdx596
  %op.rdx600 = or i1 %op.rdx597, %stride.check508
  %op.rdx601 = or i1 %op.rdx599, %op.rdx600
  %n.vec573 = and i64 %wide.trip.count268, 2147483644 ; 3 uses
  %cmp.n584 = icmp eq i64 %n.vec573, %wide.trip.count268
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge212
  %.0.i218 = phi ptr [ %i.rz, %._crit_edge212 ], [ %i.pk, %.preheader.preheader ] ; 3 uses
  %.041.i217 = phi ptr [ %i.rx, %._crit_edge212 ], [ %i.pj, %.preheader.preheader ] ; 3 uses
  %.042.i216 = phi ptr [ %i.ry, %._crit_edge212 ], [ %i.pg, %.preheader.preheader ] ; 3 uses
  %.043.i215 = phi i32 [ %i.sa, %._crit_edge212 ], [ 0, %.preheader.preheader ]
  %.045.i214 = phi ptr [ %i.rv, %._crit_edge212 ], [ %i.a, %.preheader.preheader ] ; 4 uses
  %.046.i213 = phi ptr [ %i.rw, %._crit_edge212 ], [ %1, %.preheader.preheader ] ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr %.045.i214, i64 %i.c ; 2 uses
  %or.cond587.not = xor i1 %or.cond587, true
  %brmerge611 = select i1 %or.cond587.not, i1 true, i1 %op.rdx601
  br i1 %brmerge611, label %scalar.ph570.preheader, label %vector.body574

vector.body574:                                   ; preds = %.preheader, %vector.body574
  %index575 = phi i64 [ %index.next582, %vector.body574 ], [ 0, %.preheader ] ; 6 uses
  %i.qy = trunc i64 %index575 to i32
  %i.qz = shl i32 %i.qy, 1
  %i.ra = sext i32 %i.qz to i64                   ; 2 uses
  %i.rb = getelementptr inbounds [4 x i8], ptr %.045.i214, i64 %i.ra
  %wide.vec576 = load <8 x i32>, ptr %i.rb, align 4, !tbaa !15, !alias.scope !194 ; 2 uses
  %strided.vec577 = shufflevector <8 x i32> %wide.vec576, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec578 = shufflevector <8 x i32> %wide.vec576, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %.046.i213, i64 %index575
  store <4 x i32> %strided.vec577, ptr %i.rc, align 4, !tbaa !15, !alias.scope !197, !noalias !199
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %.042.i216, i64 %index575
  store <4 x i32> %strided.vec578, ptr %i.rd, align 4, !tbaa !15, !alias.scope !204, !noalias !205
  %i.re = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ra
  %wide.vec579 = load <8 x i32>, ptr %i.re, align 4, !tbaa !15, !alias.scope !206 ; 2 uses
  %strided.vec580 = shufflevector <8 x i32> %wide.vec579, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec581 = shufflevector <8 x i32> %wide.vec579, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %.041.i217, i64 %index575
  store <4 x i32> %strided.vec580, ptr %i.rf, align 4, !tbaa !15, !alias.scope !207, !noalias !208
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %.0.i218, i64 %index575
  store <4 x i32> %strided.vec581, ptr %i.rg, align 4, !tbaa !15, !alias.scope !209, !noalias !210
  %index.next582 = add nuw i64 %index575, 4       ; 2 uses
  %i.rh = icmp eq i64 %index.next582, %n.vec573
  br i1 %i.rh, label %middle.block583, label %vector.body574, !llvm.loop !211

middle.block583:                                  ; preds = %vector.body574
  br i1 %cmp.n584, label %._crit_edge212, label %scalar.ph570.preheader

scalar.ph570.preheader:                           ; preds = %.preheader, %middle.block583
  %indvars.iv265.ph = phi i64 [ %n.vec573, %middle.block583 ], [ 0, %.preheader ]
  br label %scalar.ph570

scalar.ph570:                                     ; preds = %scalar.ph570.preheader, %scalar.ph570
  %indvars.iv265 = phi i64 [ %indvars.iv.next266, %scalar.ph570 ], [ %indvars.iv265.ph, %scalar.ph570.preheader ] ; 6 uses
  %indvars.iv265.tr = trunc i64 %indvars.iv265 to i32
  %i.ri = shl i32 %indvars.iv265.tr, 1
  %i.rj = sext i32 %i.ri to i64                   ; 2 uses
  %i.rk = getelementptr inbounds [4 x i8], ptr %.045.i214, i64 %i.rj ; 2 uses
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !15
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %.046.i213, i64 %indvars.iv265
  store i32 %i.rl, ptr %i.rm, align 4, !tbaa !15
  %i.rn = getelementptr i8, ptr %i.rk, i64 4
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !15
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %.042.i216, i64 %indvars.iv265
  store i32 %i.ro, ptr %i.rp, align 4, !tbaa !15
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.rj ; 2 uses
  %i.rq = load i32, ptr %gep, align 4, !tbaa !15
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %.041.i217, i64 %indvars.iv265
  store i32 %i.rq, ptr %i.rr, align 4, !tbaa !15
  %i.rs = getelementptr i8, ptr %gep, i64 4
  %i.rt = load i32, ptr %i.rs, align 4, !tbaa !15
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %.0.i218, i64 %indvars.iv265
  store i32 %i.rt, ptr %i.ru, align 4, !tbaa !15
  %indvars.iv.next266 = add nuw nsw i64 %indvars.iv265, 1 ; 2 uses
  %exitcond269.not = icmp eq i64 %indvars.iv.next266, %wide.trip.count268
  br i1 %exitcond269.not, label %._crit_edge212, label %scalar.ph570, !llvm.loop !212

._crit_edge212:                                   ; preds = %scalar.ph570, %middle.block583
  %i.rv = getelementptr inbounds i8, ptr %.045.i214, i64 %.idx.i
  %i.rw = getelementptr inbounds [4 x i8], ptr %.046.i213, i64 %2
  %i.rx = getelementptr inbounds [4 x i8], ptr %.041.i217, i64 %2
  %i.ry = getelementptr inbounds [4 x i8], ptr %.042.i216, i64 %2
  %i.rz = getelementptr inbounds [4 x i8], ptr %.0.i218, i64 %2
  %i.sa = add nuw nsw i32 %.043.i215, 1           ; 2 uses
  %exitcond270.not = icmp eq i32 %i.sa, %4
  br i1 %exitcond270.not, label %deinterleave.exit, label %.preheader, !llvm.loop !123

deinterleave.exit:                                ; preds = %._crit_edge212, %.preheader.lr.ph, %._crit_edge209
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @vc2_subband_dwt_haar(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11     ; 12 uses
  %i.b = shl i32 %3, 1                            ; 4 uses
  %i.c = sext i32 %i.b to i64                     ; 12 uses
  %i.d = shl i32 %4, 1                            ; 3 uses
  %i.e = icmp sgt i32 %i.d, 0
  %i.f = icmp sgt i32 %i.b, 0
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %.preheader6.preheader, label %._crit_edge14.split

.preheader6.preheader:                            ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 3 uses
  %i.g = add nuw nsw i64 %wide.trip.count, 4611686018427387903
  %i.h = mul nuw nsw i64 %wide.trip.count, %i.c
  %i.i = shl nuw i64 %i.h, 2
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.i
  %i.j = mul i64 %2, %i.g
  %i.k = add i64 %i.j, %i.c
  %i.l = shl i64 %i.k, 2
  %scevgep48 = getelementptr i8, ptr %1, i64 %i.l
  %i.m = add nsw i64 %i.c, -2                     ; 3 uses
  %i.n = lshr exact i64 %i.m, 1
  %i.o = add nuw i64 %i.n, 1
  %min.iters.check = icmp ult i64 %i.m, 8
  %bound0 = icmp ult ptr %i.a, %scevgep48
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %.mask = and i64 %2, 2305843009213693952
  %stride.check49 = icmp ne i64 %.mask, 0
  %i.p = or i1 %found.conflict, %stride.check49
  %i.q = and i64 %i.m, 2
  %.not = icmp eq i64 %i.q, 0
  %.neg = select i1 %.not, i64 -1, i64 -2
  %n.vec = add i64 %.neg, %i.o                    ; 2 uses
  %i.r = shl i64 %n.vec, 1
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader6.preheader, %._crit_edge
  %indvars.iv27 = phi i64 [ 0, %.preheader6.preheader ], [ %indvars.iv.next28, %._crit_edge ] ; 3 uses
  %i.s = mul nsw i64 %indvars.iv27, %2
  %i.t = getelementptr [4 x i8], ptr %1, i64 %i.s ; 2 uses
  %i.u = mul nuw nsw i64 %indvars.iv27, %i.c
  %i.v = getelementptr [4 x i8], ptr %i.a, i64 %i.u ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.p
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

scalar.ph.preheader:                              ; preds = %.preheader6, %vector.body
  %indvars.iv.ph = phi i64 [ %i.r, %vector.body ], [ 0, %.preheader6 ]
  br label %scalar.ph

vector.body:                                      ; preds = %.preheader6, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader6 ] ; 2 uses
  %i.w = shl nuw i64 %index, 1                    ; 2 uses
  %i.x = getelementptr [4 x i8], ptr %i.t, i64 %i.w
  %wide.vec = load <4 x i32>, ptr %i.x, align 4, !tbaa !15, !alias.scope !213 ; 3 uses
  %strided.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec50 = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %strided.vec52 = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %i.y = sub <2 x i32> %strided.vec50, %strided.vec52 ; 2 uses
  %i.z = getelementptr [4 x i8], ptr %i.v, i64 %i.w
  %i.aa = add <2 x i32> %i.y, splat (i32 1)
  %i.ab = ashr <2 x i32> %i.aa, splat (i32 1)
  %i.ac = add <2 x i32> %i.ab, %strided.vec
  %interleaved.vec = shufflevector <2 x i32> %i.ac, <2 x i32> %i.y, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.z, align 4, !tbaa !15, !alias.scope !216, !noalias !213
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %scalar.ph.preheader, label %vector.body, !llvm.loop !218

.preheader4.preheader:                            ; preds = %._crit_edge
  %i.ae = zext nneg i32 %i.d to i64
  %wide.trip.count36 = zext nneg i32 %i.b to i64
  br label %.preheader4

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.af = getelementptr [4 x i8], ptr %i.t, i64 %indvars.iv ; 3 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !15
  %i.ai = load i32, ptr %i.af, align 4, !tbaa !15
  %i.aj = sub i32 %i.ah, %i.ai                    ; 2 uses
  %i.ak = getelementptr [4 x i8], ptr %i.v, i64 %indvars.iv ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 4
  store i32 %i.aj, ptr %i.al, align 4, !tbaa !15
  %i.am = load i32, ptr %i.af, align 4, !tbaa !15
  %i.an = add i32 %i.aj, 1
  %i.ao = ashr i32 %i.an, 1
  %i.ap = add i32 %i.ao, %i.am
  store i32 %i.ap, ptr %i.ak, align 4, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.aq = icmp slt i64 %indvars.iv.next, %i.c
  br i1 %i.aq, label %scalar.ph, label %._crit_edge, !llvm.loop !219

._crit_edge:                                      ; preds = %scalar.ph
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next28, %wide.trip.count
  br i1 %exitcond.not, label %.preheader4.preheader, label %.preheader6, !llvm.loop !220

.preheader4:                                      ; preds = %.preheader4.preheader, %._crit_edge12
  %indvars.iv33 = phi i64 [ 0, %.preheader4.preheader ], [ %indvars.iv.next34, %._crit_edge12 ] ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv33 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader4, %bb.b
  %indvars.iv30 = phi i64 [ 0, %.preheader4 ], [ %indvars.iv.next31, %bb.b ] ; 3 uses
  %i.ar = or disjoint i64 %indvars.iv30, 1
  %i.as = mul nuw nsw i64 %i.ar, %i.c
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.as ; 2 uses
  %i.at = load i32, ptr %gep, align 4, !tbaa !15
  %i.au = mul nuw nsw i64 %indvars.iv30, %i.c
  %gep10 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.au ; 3 uses
  %i.av = load i32, ptr %gep10, align 4, !tbaa !15
  %i.aw = sub i32 %i.at, %i.av                    ; 2 uses
  store i32 %i.aw, ptr %gep, align 4, !tbaa !15
  %i.ax = load i32, ptr %gep10, align 4, !tbaa !15
  %i.ay = add i32 %i.aw, 1
  %i.az = ashr i32 %i.ay, 1
  %i.ba = add i32 %i.az, %i.ax
  store i32 %i.ba, ptr %gep10, align 4, !tbaa !15
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 2 ; 2 uses
  %i.bb = icmp samesign ult i64 %indvars.iv.next31, %i.ae
  br i1 %i.bb, label %bb.b, label %._crit_edge12, !llvm.loop !221

._crit_edge12:                                    ; preds = %bb.b
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1 ; 2 uses
  %exitcond37.not = icmp eq i64 %indvars.iv.next34, %wide.trip.count36
  br i1 %exitcond37.not, label %._crit_edge14.split, label %.preheader4, !llvm.loop !222

._crit_edge14.split:                              ; preds = %._crit_edge12, %bb.a
  %i.bc = icmp sgt i32 %4, 0
  br i1 %i.bc, label %.preheader.lr.ph, label %dwt_haar.exit

.preheader.lr.ph:                                 ; preds = %._crit_edge14.split
  %i.bd = icmp sgt i32 %3, 0
  %.idx.i.i = shl nsw i64 %i.c, 3
  br i1 %i.bd, label %.preheader.preheader, label %dwt_haar.exit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.be = zext nneg i32 %3 to i64                 ; 2 uses
  %i.bf = getelementptr [4 x i8], ptr %1, i64 %i.be ; 6 uses
  %i.bg = zext nneg i32 %4 to i64                 ; 2 uses
  %i.bh = mul i64 %2, %i.bg
  %i.bi = getelementptr [4 x i8], ptr %1, i64 %i.bh ; 6 uses
  %i.bj = getelementptr [4 x i8], ptr %i.bi, i64 %i.be ; 6 uses
  %wide.trip.count41 = zext nneg i32 %3 to i64    ; 7 uses
  %i.bk = add nsw i64 %wide.trip.count41, -1
  %i.bl = add nsw i32 %4, -1
  %i.bm = zext i32 %i.bl to i64                   ; 4 uses
  %i.bn = mul i64 %2, %i.bm
  %i.bo = shl i64 %i.bn, 2                        ; 2 uses
  %i.bp = shl nuw nsw i64 %wide.trip.count41, 2   ; 2 uses
  %i.bq = getelementptr i8, ptr %1, i64 %i.bo
  %scevgep54 = getelementptr i8, ptr %i.bq, i64 %i.bp ; 2 uses
  %i.br = shl nuw nsw i64 %wide.trip.count41, 3   ; 3 uses
  %i.bs = getelementptr i8, ptr %1, i64 %i.bo
  %scevgep55 = getelementptr i8, ptr %i.bs, i64 %i.br ; 5 uses
  %i.bt = add nuw nsw i64 %i.bg, %i.bm
  %i.bu = shl nuw nsw i64 %i.bt, 2
  %i.bv = mul i64 %2, %i.bu                       ; 2 uses
  %i.bw = getelementptr i8, ptr %1, i64 %i.bv
  %scevgep56 = getelementptr i8, ptr %i.bw, i64 %i.bp ; 4 uses
  %i.bx = getelementptr i8, ptr %1, i64 %i.bv
  %scevgep57 = getelementptr i8, ptr %i.bx, i64 %i.br ; 5 uses
  %i.by = shl nsw i64 %i.c, 2
  %scevgep58 = getelementptr i8, ptr %i.a, i64 %i.by ; 4 uses
  %i.bz = shl nuw nsw i64 %i.bm, 3
  %i.ca = or disjoint i64 %i.bz, 4
  %i.cb = mul i64 %i.ca, %i.c
  %i.cc = getelementptr i8, ptr %i.a, i64 %i.cb
  %scevgep59 = getelementptr i8, ptr %i.cc, i64 %i.br ; 4 uses
  %i.cd = mul nsw i64 %i.c, %i.bm
  %i.ce = add i64 %i.cd, %wide.trip.count41
  %i.cf = shl i64 %i.ce, 3
  %scevgep60 = getelementptr i8, ptr %i.a, i64 %i.cf ; 4 uses
  %i.cg = insertelement <4 x ptr> poison, ptr %1, i64 0
  %i.ch = shufflevector <4 x ptr> %i.cg, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ci = insertelement <4 x ptr> poison, ptr %scevgep56, i64 0
  %i.cj = insertelement <4 x ptr> %i.ci, ptr %scevgep55, i64 1
  %i.ck = insertelement <4 x ptr> %i.cj, ptr %scevgep57, i64 2
  %i.cl = insertelement <4 x ptr> %i.ck, ptr %scevgep59, i64 3
  %i.cm = insertelement <4 x ptr> poison, ptr %i.bi, i64 0
  %i.cn = insertelement <4 x ptr> %i.cm, ptr %i.bf, i64 1
  %i.co = insertelement <4 x ptr> %i.cn, ptr %i.bj, i64 2
  %i.cp = insertelement <4 x ptr> %i.co, ptr %scevgep58, i64 3
  %i.cq = insertelement <4 x ptr> poison, ptr %scevgep54, i64 0
  %i.cr = shufflevector <4 x ptr> %i.cq, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cs = insertelement <2 x ptr> poison, ptr %1, i64 0
  %i.ct = insertelement <2 x ptr> %i.cs, ptr %i.bf, i64 1
  %i.cu = insertelement <2 x ptr> poison, ptr %scevgep60, i64 0
  %i.cv = insertelement <2 x ptr> %i.cu, ptr %scevgep57, i64 1
  %i.cw = insertelement <2 x ptr> poison, ptr %i.a, i64 0
  %i.cx = insertelement <2 x ptr> %i.cw, ptr %i.bj, i64 1
  %i.cy = insertelement <2 x ptr> poison, ptr %scevgep54, i64 0
  %i.cz = insertelement <2 x ptr> %i.cy, ptr %scevgep55, i64 1
  %i.da = insertelement <2 x ptr> poison, ptr %i.bi, i64 0 ; 2 uses
  %i.db = insertelement <2 x ptr> %i.da, ptr %i.bf, i64 1
  %i.dc = insertelement <2 x ptr> poison, ptr %scevgep55, i64 0
  %i.dd = insertelement <2 x ptr> %i.dc, ptr %scevgep59, i64 1
  %i.de = insertelement <2 x ptr> poison, ptr %i.bf, i64 0
  %i.df = insertelement <2 x ptr> %i.de, ptr %scevgep58, i64 1
  %i.dg = insertelement <2 x ptr> poison, ptr %scevgep56, i64 0 ; 2 uses
  %i.dh = insertelement <2 x ptr> %i.dg, ptr %scevgep55, i64 1
  %i.di = insertelement <2 x ptr> poison, ptr %scevgep58, i64 0
  %i.dj = insertelement <2 x ptr> %i.di, ptr %i.bi, i64 1
  %i.dk = insertelement <2 x ptr> %i.dg, ptr %scevgep57, i64 1
  %i.dl = insertelement <2 x ptr> %i.da, ptr %i.bj, i64 1
  %i.dm = insertelement <2 x ptr> poison, ptr %scevgep59, i64 0
  %i.dn = insertelement <2 x ptr> %i.dm, ptr %scevgep56, i64 1
  %min.iters.check144 = icmp ugt i32 %3, 51
  %i.do = and i64 %i.bk, -3221225472
  %.not159 = icmp eq i64 %i.do, 0
  %or.cond160 = select i1 %min.iters.check144, i1 %.not159, i1 false
  %i.dp = icmp ult <4 x ptr> %i.ch, %i.cl
  %i.dq = icmp ult <4 x ptr> %i.cp, %i.cr
  %i.dr = and <4 x i1> %i.dp, %i.dq
  %stride.check81 = icmp slt i32 %i.b, 0
  %i.ds = icmp ult <2 x ptr> %i.ct, %i.cv
  %i.dt = icmp ult <2 x ptr> %i.cx, %i.cz
  %i.du = icmp ult <2 x ptr> %i.df, %i.dh
  %i.dv = icmp ult <2 x ptr> %i.db, %i.dd
  %bound0107 = icmp ult ptr %i.bf, %scevgep60
  %bound1108 = icmp ult ptr %i.a, %scevgep55
  %found.conflict109 = and i1 %bound0107, %bound1108
  %i.dw = icmp ult <2 x ptr> %i.dj, %i.dk
  %i.dx = icmp ult <2 x ptr> %i.dl, %i.dn
  %.mask177 = and i64 %2, 2305843009213693952
  %stride.check122 = icmp ne i64 %.mask177, 0
  %bound0125 = icmp ult ptr %i.bi, %scevgep60
  %bound1126 = icmp ult ptr %i.a, %scevgep56
  %found.conflict127 = and i1 %bound0125, %bound1126
  %bound0131 = icmp ult ptr %i.bj, %scevgep59
  %bound1132 = icmp ult ptr %scevgep58, %scevgep57
  %found.conflict133 = and i1 %bound0131, %bound1132
  %bound0137 = icmp ult ptr %i.bj, %scevgep60
  %bound1138 = icmp ult ptr %i.a, %scevgep57
  %found.conflict139 = and i1 %bound0137, %bound1138
  %i.dy = bitcast <4 x i1> %i.dr to i4
  %i.dz = icmp ne i4 %i.dy, 0
  %op.rdx164 = or i1 %found.conflict127, %found.conflict133
  %op.rdx165 = or i1 %found.conflict139, %stride.check122
  %i.ea = and <2 x i1> %i.ds, %i.dt
  %i.eb = and <2 x i1> %i.dv, %i.du
  %i.ec = and <2 x i1> %i.dw, %i.dx
  %i.ed = or <2 x i1> %i.ea, %i.eb
  %i.ee = insertelement <2 x i1> poison, i1 %i.dz, i64 0
  %i.ef = insertelement <2 x i1> %i.ee, i1 %found.conflict109, i64 1
  %i.eg = or <2 x i1> %i.ef, %i.ec
  %i.eh = or <2 x i1> %i.ed, %i.eg
  %op.rdx170 = or i1 %op.rdx164, %op.rdx165
  %i.ei = bitcast <2 x i1> %i.eh to i2
  %op.rdx172 = icmp ne i2 %i.ei, 0
  %op.rdx173 = or i1 %op.rdx170, %stride.check81
  %op.rdx174 = or i1 %op.rdx172, %op.rdx173
  %n.vec146 = and i64 %wide.trip.count41, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec146, %wide.trip.count41
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge18
  %.0.i.i24 = phi ptr [ %i.fk, %._crit_edge18 ], [ %i.bj, %.preheader.preheader ] ; 3 uses
  %.041.i.i23 = phi ptr [ %i.fi, %._crit_edge18 ], [ %i.bi, %.preheader.preheader ] ; 3 uses
  %.042.i.i22 = phi ptr [ %i.fj, %._crit_edge18 ], [ %i.bf, %.preheader.preheader ] ; 3 uses
  %.043.i.i21 = phi i32 [ %i.fl, %._crit_edge18 ], [ 0, %.preheader.preheader ]
  %.045.i.i20 = phi ptr [ %i.fg, %._crit_edge18 ], [ %i.a, %.preheader.preheader ] ; 4 uses
  %.046.i.i19 = phi ptr [ %i.fh, %._crit_edge18 ], [ %1, %.preheader.preheader ] ; 3 uses
  %invariant.gep15 = getelementptr [4 x i8], ptr %.045.i.i20, i64 %i.c ; 2 uses
  %or.cond160.not = xor i1 %or.cond160, true
  %brmerge178 = select i1 %or.cond160.not, i1 true, i1 %op.rdx174
  br i1 %brmerge178, label %scalar.ph143.preheader, label %vector.body147

vector.body147:                                   ; preds = %.preheader, %vector.body147
  %index148 = phi i64 [ %index.next155, %vector.body147 ], [ 0, %.preheader ] ; 6 uses
  %i.ej = trunc i64 %index148 to i32
  %i.ek = shl i32 %i.ej, 1
  %i.el = sext i32 %i.ek to i64                   ; 2 uses
  %i.em = getelementptr inbounds [4 x i8], ptr %.045.i.i20, i64 %i.el
  %wide.vec149 = load <8 x i32>, ptr %i.em, align 4, !tbaa !15, !alias.scope !223 ; 2 uses
  %strided.vec150 = shufflevector <8 x i32> %wide.vec149, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec151 = shufflevector <8 x i32> %wide.vec149, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %.046.i.i19, i64 %index148
  store <4 x i32> %strided.vec150, ptr %i.en, align 4, !tbaa !15, !alias.scope !226, !noalias !228
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %.042.i.i22, i64 %index148
  store <4 x i32> %strided.vec151, ptr %i.eo, align 4, !tbaa !15, !alias.scope !233, !noalias !234
  %i.ep = getelementptr [4 x i8], ptr %invariant.gep15, i64 %i.el
  %wide.vec152 = load <8 x i32>, ptr %i.ep, align 4, !tbaa !15, !alias.scope !235 ; 2 uses
  %strided.vec153 = shufflevector <8 x i32> %wide.vec152, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec154 = shufflevector <8 x i32> %wide.vec152, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.041.i.i23, i64 %index148
  store <4 x i32> %strided.vec153, ptr %i.eq, align 4, !tbaa !15, !alias.scope !236, !noalias !237
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i24, i64 %index148
  store <4 x i32> %strided.vec154, ptr %i.er, align 4, !tbaa !15, !alias.scope !238, !noalias !239
  %index.next155 = add nuw i64 %index148, 4       ; 2 uses
  %i.es = icmp eq i64 %index.next155, %n.vec146
  br i1 %i.es, label %middle.block156, label %vector.body147, !llvm.loop !240

middle.block156:                                  ; preds = %vector.body147
  br i1 %cmp.n, label %._crit_edge18, label %scalar.ph143.preheader

scalar.ph143.preheader:                           ; preds = %.preheader, %middle.block156
  %indvars.iv38.ph = phi i64 [ %n.vec146, %middle.block156 ], [ 0, %.preheader ]
  br label %scalar.ph143

scalar.ph143:                                     ; preds = %scalar.ph143.preheader, %scalar.ph143
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %scalar.ph143 ], [ %indvars.iv38.ph, %scalar.ph143.preheader ] ; 6 uses
  %indvars.iv38.tr = trunc i64 %indvars.iv38 to i32
  %i.et = shl i32 %indvars.iv38.tr, 1
  %i.eu = sext i32 %i.et to i64                   ; 2 uses
  %i.ev = getelementptr inbounds [4 x i8], ptr %.045.i.i20, i64 %i.eu ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !15
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.046.i.i19, i64 %indvars.iv38
  store i32 %i.ew, ptr %i.ex, align 4, !tbaa !15
  %i.ey = getelementptr i8, ptr %i.ev, i64 4
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !15
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %.042.i.i22, i64 %indvars.iv38
  store i32 %i.ez, ptr %i.fa, align 4, !tbaa !15
  %gep16 = getelementptr [4 x i8], ptr %invariant.gep15, i64 %i.eu ; 2 uses
  %i.fb = load i32, ptr %gep16, align 4, !tbaa !15
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.041.i.i23, i64 %indvars.iv38
  store i32 %i.fb, ptr %i.fc, align 4, !tbaa !15
  %i.fd = getelementptr i8, ptr %gep16, i64 4
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !15
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i24, i64 %indvars.iv38
  store i32 %i.fe, ptr %i.ff, align 4, !tbaa !15
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %exitcond42.not = icmp eq i64 %indvars.iv.next39, %wide.trip.count41
  br i1 %exitcond42.not, label %._crit_edge18, label %scalar.ph143, !llvm.loop !241

._crit_edge18:                                    ; preds = %scalar.ph143, %middle.block156
  %i.fg = getelementptr inbounds i8, ptr %.045.i.i20, i64 %.idx.i.i
  %i.fh = getelementptr inbounds [4 x i8], ptr %.046.i.i19, i64 %2
  %i.fi = getelementptr inbounds [4 x i8], ptr %.041.i.i23, i64 %2
  %i.fj = getelementptr inbounds [4 x i8], ptr %.042.i.i22, i64 %2
  %i.fk = getelementptr inbounds [4 x i8], ptr %.0.i.i24, i64 %2
  %i.fl = add nuw nsw i32 %.043.i.i21, 1          ; 2 uses
  %exitcond43.not = icmp eq i32 %i.fl, %4
  br i1 %exitcond43.not, label %dwt_haar.exit, label %.preheader, !llvm.loop !123

dwt_haar.exit:                                    ; preds = %._crit_edge18, %.preheader.lr.ph, %._crit_edge14.split
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @vc2_subband_dwt_haar_shift(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11     ; 12 uses
  %i.b = shl i32 %3, 1                            ; 4 uses
  %i.c = sext i32 %i.b to i64                     ; 12 uses
  %i.d = shl i32 %4, 1                            ; 3 uses
  %i.e = icmp sgt i32 %i.d, 0
  %i.f = icmp sgt i32 %i.b, 0
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %.preheader6.preheader, label %._crit_edge14.split

.preheader6.preheader:                            ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 3 uses
  %i.g = add nuw nsw i64 %wide.trip.count, 4611686018427387903
  %i.h = mul nuw nsw i64 %wide.trip.count, %i.c
  %i.i = shl nuw i64 %i.h, 2
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.i
  %i.j = mul i64 %2, %i.g
  %i.k = add i64 %i.j, %i.c
  %i.l = shl i64 %i.k, 2
  %scevgep48 = getelementptr i8, ptr %1, i64 %i.l
  %i.m = add nsw i64 %i.c, -2                     ; 3 uses
  %i.n = lshr exact i64 %i.m, 1
  %i.o = add nuw i64 %i.n, 1
  %min.iters.check = icmp ult i64 %i.m, 8
  %bound0 = icmp ult ptr %i.a, %scevgep48
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %.mask = and i64 %2, 2305843009213693952
  %stride.check49 = icmp ne i64 %.mask, 0
  %i.p = or i1 %found.conflict, %stride.check49
  %i.q = and i64 %i.m, 2
  %.not = icmp eq i64 %i.q, 0
  %.neg = select i1 %.not, i64 -1, i64 -2
  %n.vec = add i64 %.neg, %i.o                    ; 2 uses
  %i.r = shl i64 %n.vec, 1
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader6.preheader, %._crit_edge
  %indvars.iv27 = phi i64 [ 0, %.preheader6.preheader ], [ %indvars.iv.next28, %._crit_edge ] ; 3 uses
  %i.s = mul nsw i64 %indvars.iv27, %2
  %i.t = getelementptr [4 x i8], ptr %1, i64 %i.s ; 2 uses
  %i.u = mul nuw nsw i64 %indvars.iv27, %i.c
  %i.v = getelementptr [4 x i8], ptr %i.a, i64 %i.u ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.p
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

scalar.ph.preheader:                              ; preds = %.preheader6, %vector.body
  %indvars.iv.ph = phi i64 [ %i.r, %vector.body ], [ 0, %.preheader6 ]
  br label %scalar.ph

vector.body:                                      ; preds = %.preheader6, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader6 ] ; 2 uses
  %i.w = shl nuw i64 %index, 1                    ; 2 uses
  %i.x = getelementptr [4 x i8], ptr %i.t, i64 %i.w
  %wide.vec = load <4 x i32>, ptr %i.x, align 4, !tbaa !15, !alias.scope !242 ; 3 uses
  %strided.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec50 = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %strided.vec52 = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %i.y = sub <2 x i32> %strided.vec50, %strided.vec52
  %i.z = shl <2 x i32> %i.y, splat (i32 1)        ; 2 uses
  %i.aa = getelementptr [4 x i8], ptr %i.v, i64 %i.w
  %i.ab = shl <2 x i32> %strided.vec, splat (i32 1)
  %i.ac = ashr exact <2 x i32> %i.z, splat (i32 1)
  %i.ad = add <2 x i32> %i.ab, %i.ac
  %interleaved.vec = shufflevector <2 x i32> %i.ad, <2 x i32> %i.z, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.aa, align 4, !tbaa !15, !alias.scope !245, !noalias !242
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %scalar.ph.preheader, label %vector.body, !llvm.loop !247

.preheader4.preheader:                            ; preds = %._crit_edge
  %i.af = zext nneg i32 %i.d to i64
  %wide.trip.count36 = zext nneg i32 %i.b to i64
  br label %.preheader4

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ag = getelementptr [4 x i8], ptr %i.t, i64 %indvars.iv ; 3 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !15
  %i.aj = load i32, ptr %i.ag, align 4, !tbaa !15
  %i.ak = sub i32 %i.ai, %i.aj
  %i.al = shl i32 %i.ak, 1                        ; 2 uses
  %i.am = getelementptr [4 x i8], ptr %i.v, i64 %indvars.iv ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 4
  store i32 %i.al, ptr %i.an, align 4, !tbaa !15
  %i.ao = load i32, ptr %i.ag, align 4, !tbaa !15
  %i.ap = shl i32 %i.ao, 1
  %i.aq = ashr exact i32 %i.al, 1
  %i.ar = add i32 %i.ap, %i.aq
  store i32 %i.ar, ptr %i.am, align 4, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.as = icmp slt i64 %indvars.iv.next, %i.c
  br i1 %i.as, label %scalar.ph, label %._crit_edge, !llvm.loop !248

._crit_edge:                                      ; preds = %scalar.ph
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next28, %wide.trip.count
  br i1 %exitcond.not, label %.preheader4.preheader, label %.preheader6, !llvm.loop !220

.preheader4:                                      ; preds = %.preheader4.preheader, %._crit_edge12
  %indvars.iv33 = phi i64 [ 0, %.preheader4.preheader ], [ %indvars.iv.next34, %._crit_edge12 ] ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv33 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader4, %bb.b
  %indvars.iv30 = phi i64 [ 0, %.preheader4 ], [ %indvars.iv.next31, %bb.b ] ; 3 uses
  %i.at = or disjoint i64 %indvars.iv30, 1
  %i.au = mul nuw nsw i64 %i.at, %i.c
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.au ; 2 uses
  %i.av = load i32, ptr %gep, align 4, !tbaa !15
  %i.aw = mul nuw nsw i64 %indvars.iv30, %i.c
  %gep10 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.aw ; 3 uses
  %i.ax = load i32, ptr %gep10, align 4, !tbaa !15
  %i.ay = sub i32 %i.av, %i.ax                    ; 2 uses
  store i32 %i.ay, ptr %gep, align 4, !tbaa !15
  %i.az = load i32, ptr %gep10, align 4, !tbaa !15
  %i.ba = add i32 %i.ay, 1
  %i.bb = ashr i32 %i.ba, 1
  %i.bc = add i32 %i.bb, %i.az
  store i32 %i.bc, ptr %gep10, align 4, !tbaa !15
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 2 ; 2 uses
  %i.bd = icmp samesign ult i64 %indvars.iv.next31, %i.af
  br i1 %i.bd, label %bb.b, label %._crit_edge12, !llvm.loop !221

._crit_edge12:                                    ; preds = %bb.b
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1 ; 2 uses
  %exitcond37.not = icmp eq i64 %indvars.iv.next34, %wide.trip.count36
  br i1 %exitcond37.not, label %._crit_edge14.split, label %.preheader4, !llvm.loop !222

._crit_edge14.split:                              ; preds = %._crit_edge12, %bb.a
  %i.be = icmp sgt i32 %4, 0
  br i1 %i.be, label %.preheader.lr.ph, label %dwt_haar.exit

.preheader.lr.ph:                                 ; preds = %._crit_edge14.split
  %i.bf = icmp sgt i32 %3, 0
  %.idx.i.i = shl nsw i64 %i.c, 3
  br i1 %i.bf, label %.preheader.preheader, label %dwt_haar.exit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.bg = zext nneg i32 %3 to i64                 ; 2 uses
  %i.bh = getelementptr [4 x i8], ptr %1, i64 %i.bg ; 6 uses
  %i.bi = zext nneg i32 %4 to i64                 ; 2 uses
  %i.bj = mul i64 %2, %i.bi
  %i.bk = getelementptr [4 x i8], ptr %1, i64 %i.bj ; 6 uses
  %i.bl = getelementptr [4 x i8], ptr %i.bk, i64 %i.bg ; 6 uses
  %wide.trip.count41 = zext nneg i32 %3 to i64    ; 7 uses
  %i.bm = add nsw i64 %wide.trip.count41, -1
  %i.bn = add nsw i32 %4, -1
  %i.bo = zext i32 %i.bn to i64                   ; 4 uses
  %i.bp = mul i64 %2, %i.bo
  %i.bq = shl i64 %i.bp, 2                        ; 2 uses
  %i.br = shl nuw nsw i64 %wide.trip.count41, 2   ; 2 uses
  %i.bs = getelementptr i8, ptr %1, i64 %i.bq
  %scevgep54 = getelementptr i8, ptr %i.bs, i64 %i.br ; 2 uses
  %i.bt = shl nuw nsw i64 %wide.trip.count41, 3   ; 3 uses
  %i.bu = getelementptr i8, ptr %1, i64 %i.bq
  %scevgep55 = getelementptr i8, ptr %i.bu, i64 %i.bt ; 5 uses
  %i.bv = add nuw nsw i64 %i.bi, %i.bo
  %i.bw = shl nuw nsw i64 %i.bv, 2
  %i.bx = mul i64 %2, %i.bw                       ; 2 uses
  %i.by = getelementptr i8, ptr %1, i64 %i.bx
  %scevgep56 = getelementptr i8, ptr %i.by, i64 %i.br ; 4 uses
  %i.bz = getelementptr i8, ptr %1, i64 %i.bx
  %scevgep57 = getelementptr i8, ptr %i.bz, i64 %i.bt ; 5 uses
  %i.ca = shl nsw i64 %i.c, 2
  %scevgep58 = getelementptr i8, ptr %i.a, i64 %i.ca ; 4 uses
  %i.cb = shl nuw nsw i64 %i.bo, 3
  %i.cc = or disjoint i64 %i.cb, 4
  %i.cd = mul i64 %i.cc, %i.c
  %i.ce = getelementptr i8, ptr %i.a, i64 %i.cd
  %scevgep59 = getelementptr i8, ptr %i.ce, i64 %i.bt ; 4 uses
  %i.cf = mul nsw i64 %i.c, %i.bo
  %i.cg = add i64 %i.cf, %wide.trip.count41
  %i.ch = shl i64 %i.cg, 3
  %scevgep60 = getelementptr i8, ptr %i.a, i64 %i.ch ; 4 uses
  %i.ci = insertelement <4 x ptr> poison, ptr %1, i64 0
  %i.cj = shufflevector <4 x ptr> %i.ci, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ck = insertelement <4 x ptr> poison, ptr %scevgep56, i64 0
  %i.cl = insertelement <4 x ptr> %i.ck, ptr %scevgep55, i64 1
  %i.cm = insertelement <4 x ptr> %i.cl, ptr %scevgep57, i64 2
  %i.cn = insertelement <4 x ptr> %i.cm, ptr %scevgep59, i64 3
  %i.co = insertelement <4 x ptr> poison, ptr %i.bk, i64 0
  %i.cp = insertelement <4 x ptr> %i.co, ptr %i.bh, i64 1
  %i.cq = insertelement <4 x ptr> %i.cp, ptr %i.bl, i64 2
  %i.cr = insertelement <4 x ptr> %i.cq, ptr %scevgep58, i64 3
  %i.cs = insertelement <4 x ptr> poison, ptr %scevgep54, i64 0
  %i.ct = shufflevector <4 x ptr> %i.cs, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cu = insertelement <2 x ptr> poison, ptr %1, i64 0
  %i.cv = insertelement <2 x ptr> %i.cu, ptr %i.bh, i64 1
  %i.cw = insertelement <2 x ptr> poison, ptr %scevgep60, i64 0
  %i.cx = insertelement <2 x ptr> %i.cw, ptr %scevgep57, i64 1
  %i.cy = insertelement <2 x ptr> poison, ptr %i.a, i64 0
  %i.cz = insertelement <2 x ptr> %i.cy, ptr %i.bl, i64 1
  %i.da = insertelement <2 x ptr> poison, ptr %scevgep54, i64 0
  %i.db = insertelement <2 x ptr> %i.da, ptr %scevgep55, i64 1
  %i.dc = insertelement <2 x ptr> poison, ptr %i.bk, i64 0 ; 2 uses
  %i.dd = insertelement <2 x ptr> %i.dc, ptr %i.bh, i64 1
  %i.de = insertelement <2 x ptr> poison, ptr %scevgep55, i64 0
  %i.df = insertelement <2 x ptr> %i.de, ptr %scevgep59, i64 1
  %i.dg = insertelement <2 x ptr> poison, ptr %i.bh, i64 0
  %i.dh = insertelement <2 x ptr> %i.dg, ptr %scevgep58, i64 1
  %i.di = insertelement <2 x ptr> poison, ptr %scevgep56, i64 0 ; 2 uses
  %i.dj = insertelement <2 x ptr> %i.di, ptr %scevgep55, i64 1
  %i.dk = insertelement <2 x ptr> poison, ptr %scevgep58, i64 0
  %i.dl = insertelement <2 x ptr> %i.dk, ptr %i.bk, i64 1
  %i.dm = insertelement <2 x ptr> %i.di, ptr %scevgep57, i64 1
  %i.dn = insertelement <2 x ptr> %i.dc, ptr %i.bl, i64 1
  %i.do = insertelement <2 x ptr> poison, ptr %scevgep59, i64 0
  %i.dp = insertelement <2 x ptr> %i.do, ptr %scevgep56, i64 1
  %min.iters.check144 = icmp ugt i32 %3, 51
  %i.dq = and i64 %i.bm, -3221225472
  %.not159 = icmp eq i64 %i.dq, 0
  %or.cond160 = select i1 %min.iters.check144, i1 %.not159, i1 false
  %i.dr = icmp ult <4 x ptr> %i.cj, %i.cn
  %i.ds = icmp ult <4 x ptr> %i.cr, %i.ct
  %i.dt = and <4 x i1> %i.dr, %i.ds
  %stride.check81 = icmp slt i32 %i.b, 0
  %i.du = icmp ult <2 x ptr> %i.cv, %i.cx
  %i.dv = icmp ult <2 x ptr> %i.cz, %i.db
  %i.dw = icmp ult <2 x ptr> %i.dh, %i.dj
  %i.dx = icmp ult <2 x ptr> %i.dd, %i.df
  %bound0107 = icmp ult ptr %i.bh, %scevgep60
  %bound1108 = icmp ult ptr %i.a, %scevgep55
  %found.conflict109 = and i1 %bound0107, %bound1108
  %i.dy = icmp ult <2 x ptr> %i.dl, %i.dm
  %i.dz = icmp ult <2 x ptr> %i.dn, %i.dp
  %.mask177 = and i64 %2, 2305843009213693952
  %stride.check122 = icmp ne i64 %.mask177, 0
  %bound0125 = icmp ult ptr %i.bk, %scevgep60
  %bound1126 = icmp ult ptr %i.a, %scevgep56
  %found.conflict127 = and i1 %bound0125, %bound1126
  %bound0131 = icmp ult ptr %i.bl, %scevgep59
  %bound1132 = icmp ult ptr %scevgep58, %scevgep57
  %found.conflict133 = and i1 %bound0131, %bound1132
  %bound0137 = icmp ult ptr %i.bl, %scevgep60
  %bound1138 = icmp ult ptr %i.a, %scevgep57
  %found.conflict139 = and i1 %bound0137, %bound1138
  %i.ea = bitcast <4 x i1> %i.dt to i4
  %i.eb = icmp ne i4 %i.ea, 0
  %op.rdx164 = or i1 %found.conflict127, %found.conflict133
  %op.rdx165 = or i1 %found.conflict139, %stride.check122
  %i.ec = and <2 x i1> %i.du, %i.dv
  %i.ed = and <2 x i1> %i.dx, %i.dw
  %i.ee = and <2 x i1> %i.dy, %i.dz
  %i.ef = or <2 x i1> %i.ec, %i.ed
  %i.eg = insertelement <2 x i1> poison, i1 %i.eb, i64 0
  %i.eh = insertelement <2 x i1> %i.eg, i1 %found.conflict109, i64 1
  %i.ei = or <2 x i1> %i.eh, %i.ee
  %i.ej = or <2 x i1> %i.ef, %i.ei
  %op.rdx170 = or i1 %op.rdx164, %op.rdx165
  %i.ek = bitcast <2 x i1> %i.ej to i2
  %op.rdx172 = icmp ne i2 %i.ek, 0
  %op.rdx173 = or i1 %op.rdx170, %stride.check81
  %op.rdx174 = or i1 %op.rdx172, %op.rdx173
  %n.vec146 = and i64 %wide.trip.count41, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec146, %wide.trip.count41
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge18
  %.0.i.i24 = phi ptr [ %i.fm, %._crit_edge18 ], [ %i.bl, %.preheader.preheader ] ; 3 uses
  %.041.i.i23 = phi ptr [ %i.fk, %._crit_edge18 ], [ %i.bk, %.preheader.preheader ] ; 3 uses
  %.042.i.i22 = phi ptr [ %i.fl, %._crit_edge18 ], [ %i.bh, %.preheader.preheader ] ; 3 uses
  %.043.i.i21 = phi i32 [ %i.fn, %._crit_edge18 ], [ 0, %.preheader.preheader ]
  %.045.i.i20 = phi ptr [ %i.fi, %._crit_edge18 ], [ %i.a, %.preheader.preheader ] ; 4 uses
  %.046.i.i19 = phi ptr [ %i.fj, %._crit_edge18 ], [ %1, %.preheader.preheader ] ; 3 uses
  %invariant.gep15 = getelementptr [4 x i8], ptr %.045.i.i20, i64 %i.c ; 2 uses
  %or.cond160.not = xor i1 %or.cond160, true
  %brmerge178 = select i1 %or.cond160.not, i1 true, i1 %op.rdx174
  br i1 %brmerge178, label %scalar.ph143.preheader, label %vector.body147

vector.body147:                                   ; preds = %.preheader, %vector.body147
  %index148 = phi i64 [ %index.next155, %vector.body147 ], [ 0, %.preheader ] ; 6 uses
  %i.el = trunc i64 %index148 to i32
  %i.em = shl i32 %i.el, 1
  %i.en = sext i32 %i.em to i64                   ; 2 uses
  %i.eo = getelementptr inbounds [4 x i8], ptr %.045.i.i20, i64 %i.en
  %wide.vec149 = load <8 x i32>, ptr %i.eo, align 4, !tbaa !15, !alias.scope !249 ; 2 uses
  %strided.vec150 = shufflevector <8 x i32> %wide.vec149, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec151 = shufflevector <8 x i32> %wide.vec149, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.046.i.i19, i64 %index148
  store <4 x i32> %strided.vec150, ptr %i.ep, align 4, !tbaa !15, !alias.scope !252, !noalias !254
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.042.i.i22, i64 %index148
  store <4 x i32> %strided.vec151, ptr %i.eq, align 4, !tbaa !15, !alias.scope !259, !noalias !260
  %i.er = getelementptr [4 x i8], ptr %invariant.gep15, i64 %i.en
  %wide.vec152 = load <8 x i32>, ptr %i.er, align 4, !tbaa !15, !alias.scope !261 ; 2 uses
  %strided.vec153 = shufflevector <8 x i32> %wide.vec152, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec154 = shufflevector <8 x i32> %wide.vec152, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.041.i.i23, i64 %index148
  store <4 x i32> %strided.vec153, ptr %i.es, align 4, !tbaa !15, !alias.scope !262, !noalias !263
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i24, i64 %index148
  store <4 x i32> %strided.vec154, ptr %i.et, align 4, !tbaa !15, !alias.scope !264, !noalias !265
  %index.next155 = add nuw i64 %index148, 4       ; 2 uses
  %i.eu = icmp eq i64 %index.next155, %n.vec146
  br i1 %i.eu, label %middle.block156, label %vector.body147, !llvm.loop !266

middle.block156:                                  ; preds = %vector.body147
  br i1 %cmp.n, label %._crit_edge18, label %scalar.ph143.preheader

scalar.ph143.preheader:                           ; preds = %.preheader, %middle.block156
  %indvars.iv38.ph = phi i64 [ %n.vec146, %middle.block156 ], [ 0, %.preheader ]
  br label %scalar.ph143

scalar.ph143:                                     ; preds = %scalar.ph143.preheader, %scalar.ph143
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %scalar.ph143 ], [ %indvars.iv38.ph, %scalar.ph143.preheader ] ; 6 uses
  %indvars.iv38.tr = trunc i64 %indvars.iv38 to i32
  %i.ev = shl i32 %indvars.iv38.tr, 1
  %i.ew = sext i32 %i.ev to i64                   ; 2 uses
  %i.ex = getelementptr inbounds [4 x i8], ptr %.045.i.i20, i64 %i.ew ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !15
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.046.i.i19, i64 %indvars.iv38
  store i32 %i.ey, ptr %i.ez, align 4, !tbaa !15
  %i.fa = getelementptr i8, ptr %i.ex, i64 4
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !15
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.042.i.i22, i64 %indvars.iv38
  store i32 %i.fb, ptr %i.fc, align 4, !tbaa !15
  %gep16 = getelementptr [4 x i8], ptr %invariant.gep15, i64 %i.ew ; 2 uses
  %i.fd = load i32, ptr %gep16, align 4, !tbaa !15
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %.041.i.i23, i64 %indvars.iv38
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !15
  %i.ff = getelementptr i8, ptr %gep16, i64 4
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !15
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i24, i64 %indvars.iv38
  store i32 %i.fg, ptr %i.fh, align 4, !tbaa !15
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %exitcond42.not = icmp eq i64 %indvars.iv.next39, %wide.trip.count41
  br i1 %exitcond42.not, label %._crit_edge18, label %scalar.ph143, !llvm.loop !267

._crit_edge18:                                    ; preds = %scalar.ph143, %middle.block156
  %i.fi = getelementptr inbounds i8, ptr %.045.i.i20, i64 %.idx.i.i
  %i.fj = getelementptr inbounds [4 x i8], ptr %.046.i.i19, i64 %2
  %i.fk = getelementptr inbounds [4 x i8], ptr %.041.i.i23, i64 %2
  %i.fl = getelementptr inbounds [4 x i8], ptr %.042.i.i22, i64 %2
  %i.fm = getelementptr inbounds [4 x i8], ptr %.0.i.i24, i64 %2
  %i.fn = add nuw nsw i32 %.043.i.i21, 1          ; 2 uses
  %exitcond43.not = icmp eq i32 %i.fn, %4
  br i1 %exitcond43.not, label %dwt_haar.exit, label %.preheader, !llvm.loop !123

dwt_haar.exit:                                    ; preds = %._crit_edge18, %.preheader.lr.ph, %._crit_edge14.split
  ret void
}

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind optsize uwtable
define void @ff_vc2enc_free_transforms(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !14
  %i.d = sext i32 %i.c to i64
  %i.e = sub nsw i64 0, %i.d
  %i.f = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.e
  tail call void @av_free(ptr noundef nonnull %i.f) #3
  store ptr null, ptr %0, align 8, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @av_free(ptr noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !13, i64 0}
!12 = !{!"VC2TransformContext", !13, i64 0, !6, i64 8, !7, i64 16}
!13 = !{!"p1 int", !10, i64 0}
!14 = !{!12, !6, i64 8}
!15 = !{!6, !6, i64 0}
!16 = !{!17}
!17 = distinct !{!17, !18}
!18 = distinct !{!18, !"LVerDomain"}
!19 = !{!20}
!20 = distinct !{!20, !18}
!21 = distinct !{!21, !22, !23, !24}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"llvm.loop.isvectorized", i32 1}
!24 = !{!"llvm.loop.unroll.runtime.disable"}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.unroll.disable"}
!27 = distinct !{!27, !22, !23}
!28 = distinct !{!28, !22}
!29 = distinct !{!29, !22, !23, !24}
!30 = distinct !{!30, !22, !24, !23}
!31 = distinct !{!31, !22, !23, !24}
!32 = distinct !{!32, !22, !24, !23}
!33 = distinct !{!33, !22}
!34 = !{!35}
!35 = distinct !{!35, !36}
!36 = distinct !{!36, !"LVerDomain"}
!37 = !{!38}
!38 = distinct !{!38, !36}
!39 = !{!40}
!40 = distinct !{!40, !36}
!41 = !{!42}
!42 = distinct !{!42, !36}
!43 = !{!35, !38, !40}
!44 = distinct !{!44, !22, !23, !24}
!45 = distinct !{!45, !22, !23}
!46 = !{!47}
!47 = distinct !{!47, !48}
!48 = distinct !{!48, !"LVerDomain"}
!49 = !{!50}
!50 = distinct !{!50, !48}
!51 = !{!52}
!52 = distinct !{!52, !48}
!53 = !{!54}
!54 = distinct !{!54, !48}
!55 = !{!56}
!56 = distinct !{!56, !48}
!57 = !{!47, !50, !52, !54}
!58 = distinct !{!58, !22, !23, !24}
!59 = distinct !{!59, !22, !23}
!60 = distinct !{!60, !22}
!61 = !{!62}
!62 = distinct !{!62, !63}
!63 = distinct !{!63, !"LVerDomain"}
!64 = !{!65}
!65 = distinct !{!65, !63}
!66 = !{!67}
!67 = distinct !{!67, !63}
!68 = !{!69, !62, !65, !70}
!69 = distinct !{!69, !63}
!70 = distinct !{!70, !63}
!71 = !{!70}
!72 = !{!69}
!73 = !{!62, !65, !70}
!74 = distinct !{!74, !22, !23, !24}
!75 = !{!76}
!76 = distinct !{!76, !77}
!77 = distinct !{!77, !"LVerDomain"}
!78 = !{!79}
!79 = distinct !{!79, !77}
!80 = distinct !{!80, !22, !23, !24}
!81 = distinct !{!81, !22, !23}
!82 = distinct !{!82, !22, !23}
!83 = !{!84}
!84 = distinct !{!84, !85}
!85 = distinct !{!85, !"LVerDomain"}
!86 = !{!87}
!87 = distinct !{!87, !85}
!88 = !{!89}
!89 = distinct !{!89, !85}
!90 = !{!84, !87}
!91 = distinct !{!91, !22, !23, !24}
!92 = distinct !{!92, !22, !23}
!93 = distinct !{!93, !22}
!94 = !{!95}
!95 = distinct !{!95, !96}
!96 = distinct !{!96, !"LVerDomain"}
!97 = !{!98}
!98 = distinct !{!98, !96}
!99 = !{!100}
!100 = distinct !{!100, !96}
!101 = !{!95, !98}
!102 = distinct !{!102, !22, !23, !24}
!103 = distinct !{!103, !22, !23}
!104 = !{!105}
!105 = distinct !{!105, !106}
!106 = distinct !{!106, !"LVerDomain"}
!107 = !{!108}
!108 = distinct !{!108, !106}
!109 = !{!110, !111, !112, !113, !105}
!110 = distinct !{!110, !106}
!111 = distinct !{!111, !106}
!112 = distinct !{!112, !106}
!113 = distinct !{!113, !106}
!114 = !{!110}
!115 = !{!111, !112, !113, !105}
!116 = !{!113}
!117 = !{!111}
!118 = !{!112, !113, !105}
!119 = !{!112}
!120 = !{!113, !105}
!121 = distinct !{!121, !22, !23, !24}
!122 = distinct !{!122, !22, !23}
!123 = distinct !{!123, !22}
!124 = !{!125}
!125 = distinct !{!125, !126}
!126 = distinct !{!126, !"LVerDomain"}
!127 = !{!128}
!128 = distinct !{!128, !126}
!129 = distinct !{!129, !22, !23, !24}
!130 = distinct !{!130, !26}
end_hunk_1

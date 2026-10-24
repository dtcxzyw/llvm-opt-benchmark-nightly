Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/aacdec_usac_mps212?download=true
inline.NumInlined: 44
inline.NumDeleted: 18
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@ff_aac_ec_data_dec:bb.a
bb.aa:                                            ; preds = %bb.z
  br i1 %.not108.i.i, label %.split.i.i, label %.thread12.i.i

.thread12.i.i:                                    ; preds = %bb.aa
  br label %.split.i.i

bb.ab:                                            ; preds = %bb.z
  br i1 %.not108.i.i, label %.split.i.i, label %.split86.i.i

.split86.i.i:                                     ; preds = %bb.ab
  call fastcc void @huff_data_2d(ptr noundef nonnull %0, ptr nonnull %i.d, ptr nonnull %i.bm, ptr noundef %i.a, i32 noundef %i.bo, i32 noundef 1, i32 noundef %2, i32 noundef 1, i32 noundef 0)
  br label %bb.ac

.split.i.i:                                       ; preds = %bb.ab, %.thread12.i.i, %bb.aa
  %.sroa.14.3.i = phi ptr [ %i.bm, %bb.aa ], [ %.sroa.gep220.i, %.thread12.i.i ], [ %.sroa.gep220.i, %bb.ab ]
  %.sroa.0193.3.i = phi ptr [ %i.d, %bb.aa ], [ %i.bn, %.thread12.i.i ], [ %i.bn, %bb.ab ]
  %.sroa.011.011.i.i = phi i32 [ %i.bh, %bb.aa ], [ %i.bo, %.thread12.i.i ], [ %i.bo, %bb.ab ] ; 2 uses
  %.sroa.8.09.i.i = phi ptr [ null, %bb.aa ], [ %i.bm, %.thread12.i.i ], [ %i.bm, %bb.ab ]
  %.sroa.0.028.i.i = phi ptr [ null, %bb.aa ], [ %i.d, %.thread12.i.i ], [ %i.d, %bb.ab ]
  call fastcc void @huff_data_2d(ptr noundef nonnull %0, ptr %.sroa.0.028.i.i, ptr %.sroa.8.09.i.i, ptr noundef %i.a, i32 noundef %.sroa.011.011.i.i, i32 noundef 1, i32 noundef %2, i32 noundef 0, i32 noundef 0)
  br label %bb.ac

bb.ac:                                            ; preds = %.split.i.i, %.split86.i.i
  %.sroa.14.2.i = phi ptr [ %.sroa.14.3.i, %.split.i.i ], [ %.sroa.gep220.i, %.split86.i.i ] ; 7 uses
  %.sroa.0193.2.i = phi ptr [ %.sroa.0193.3.i, %.split.i.i ], [ %i.bn, %.split86.i.i ] ; 7 uses
  %.sroa.011.010.i.i = phi i32 [ %.sroa.011.011.i.i, %.split.i.i ], [ %i.bo, %.split86.i.i ] ; 3 uses
  %i.ox = icmp sgt i32 %.sroa.011.010.i.i, 0
  br i1 %i.ox, label %.lr.ph.i.i, label %huff_decode.exit.i

.lr.ph.i.i:                                       ; preds = %bb.ac
  %wide.trip.count.i.i = zext nneg i32 %.sroa.011.010.i.i to i64 ; 7 uses
  %min.iters.check526 = icmp ult i32 %.sroa.011.010.i.i, 12
  br i1 %min.iters.check526, label %scalar.ph525.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.oy = shl nuw nsw i64 %wide.trip.count.i.i, 1 ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.0193.2.i, i64 %i.oy ; 2 uses
  %scevgep516 = getelementptr i8, ptr %.sroa.14.2.i, i64 %i.oy ; 2 uses
  %i.oz = shl nuw nsw i64 %wide.trip.count.i.i, 2
  %scevgep517 = getelementptr i8, ptr %i.a, i64 %i.oz ; 2 uses
  %bound0 = icmp ult ptr %.sroa.0193.2.i, %scevgep516
  %bound1 = icmp ult ptr %.sroa.14.2.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0518 = icmp ult ptr %.sroa.0193.2.i, %scevgep517
  %bound1519 = icmp ult ptr %i.a, %scevgep
  %found.conflict520 = and i1 %bound0518, %bound1519
  %conflict.rdx = or i1 %found.conflict, %found.conflict520
  %bound0521 = icmp ult ptr %.sroa.14.2.i, %scevgep517
  %bound1522 = icmp ult ptr %i.a, %scevgep516
  %found.conflict523 = and i1 %bound0521, %bound1522
  %conflict.rdx524 = or i1 %conflict.rdx, %found.conflict523
  br i1 %conflict.rdx524, label %scalar.ph525.preheader, label %vector.ph527

vector.ph527:                                     ; preds = %vector.memcheck
  %n.vec528 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  br label %vector.body529

vector.body529:                                   ; preds = %vector.body529, %vector.ph527
  %index530 = phi i64 [ 0, %vector.ph527 ], [ %index.next532, %vector.body529 ] ; 4 uses
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index530
  %wide.vec = load <8 x i16>, ptr %i.pa, align 16, !tbaa !23, !alias.scope !94 ; 2 uses
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec531 = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.pb = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0193.2.i, i64 %index530
  store <4 x i16> %strided.vec, ptr %i.pb, align 2, !tbaa !23, !alias.scope !95, !noalias !96
  %i.pc = getelementptr inbounds nuw [2 x i8], ptr %.sroa.14.2.i, i64 %index530
  store <4 x i16> %strided.vec531, ptr %i.pc, align 2, !tbaa !23, !alias.scope !97, !noalias !94
  %index.next532 = add nuw i64 %index530, 4       ; 2 uses
  %i.pd = icmp eq i64 %index.next532, %n.vec528
  br i1 %i.pd, label %middle.block533, label %vector.body529, !llvm.loop !59

middle.block533:                                  ; preds = %vector.body529
  %cmp.n534 = icmp eq i64 %n.vec528, %wide.trip.count.i.i
  br i1 %cmp.n534, label %huff_decode.exit.i, label %scalar.ph525.preheader

scalar.ph525.preheader:                           ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block533
  %indvars.iv.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec528, %middle.block533 ] ; 6 uses
  %xtraiter769 = and i64 %wide.trip.count.i.i, 1
  %lcmp.mod770.not = icmp eq i64 %xtraiter769, 0
  br i1 %lcmp.mod770.not, label %scalar.ph525.prol.loopexit, label %scalar.ph525.prol

scalar.ph525.prol:                                ; preds = %scalar.ph525.preheader
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.i.ph ; 2 uses
  %i.pf = load i16, ptr %i.pe, align 16, !tbaa !23
  %i.pg = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0193.2.i, i64 %indvars.iv.i.i.ph
  store i16 %i.pf, ptr %i.pg, align 2, !tbaa !23
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pe, i64 2
  %i.pi = load i16, ptr %i.ph, align 2, !tbaa !23
  %i.pj = getelementptr inbounds nuw [2 x i8], ptr %.sroa.14.2.i, i64 %indvars.iv.i.i.ph
  store i16 %i.pi, ptr %i.pj, align 2, !tbaa !23
  %indvars.iv.next.i.i.prol = or disjoint i64 %indvars.iv.i.i.ph, 1
  br label %scalar.ph525.prol.loopexit

scalar.ph525.prol.loopexit:                       ; preds = %scalar.ph525.prol, %scalar.ph525.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph525.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph525.prol ]
  %i.pk = add nsw i64 %wide.trip.count.i.i, -1
  %i.pl = icmp eq i64 %indvars.iv.i.i.ph, %i.pk
  br i1 %i.pl, label %huff_decode.exit.i, label %scalar.ph525

scalar.ph525:                                     ; preds = %scalar.ph525.prol.loopexit, %scalar.ph525
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %scalar.ph525 ], [ %indvars.iv.i.i.unr, %scalar.ph525.prol.loopexit ] ; 5 uses
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.i ; 2 uses
  %i.pn = load i16, ptr %i.pm, align 4, !tbaa !23
  %i.po = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0193.2.i, i64 %indvars.iv.i.i
  store i16 %i.pn, ptr %i.po, align 2, !tbaa !23
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pm, i64 2
  %i.pq = load i16, ptr %i.pp, align 2, !tbaa !23
  %i.pr = getelementptr inbounds nuw [2 x i8], ptr %.sroa.14.2.i, i64 %indvars.iv.i.i
  store i16 %i.pq, ptr %i.pr, align 2, !tbaa !23
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.i ; 2 uses
  %i.pt = load i16, ptr %i.ps, align 4, !tbaa !23
  %i.pu = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0193.2.i, i64 %indvars.iv.next.i.i
  store i16 %i.pt, ptr %i.pu, align 2, !tbaa !23
  %i.pv = getelementptr inbounds nuw i8, ptr %i.ps, i64 2
  %i.pw = load i16, ptr %i.pv, align 2, !tbaa !23
  %i.px = getelementptr inbounds nuw [2 x i8], ptr %.sroa.14.2.i, i64 %indvars.iv.next.i.i
  store i16 %i.pw, ptr %i.px, align 2, !tbaa !23
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.1, label %huff_decode.exit.i, label %scalar.ph525, !llvm.loop !60

thread-pre-split.thread.i.i:                      ; preds = %thread-pre-split.i.i, %bb.y
  %.not96.i.i = icmp ne i32 %.sroa.0.0.i, 0       ; 4 uses
  %.sroa.0193.4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel = select i1 %.not96.i.i, ptr %i.bn, ptr %i.d
  %.sroa.0.1.i.i = select i1 %.not96.i.i, ptr %i.d, ptr null
  %i.py = sext i1 %.not96.i.i to i32
  %.sroa.011.1.i.i = add nsw i32 %i.bh, %i.py     ; 3 uses
  %.not97.i.i = trunc i32 %.sroa.011.1.i.i to i1
  %spec.select.i117.i = and i32 %.sroa.011.1.i.i, -2 ; 2 uses
  %i.pz = icmp slt i32 %.sroa.011.1.i.i, 0
  br i1 %i.pz, label %huff_decode.exit.i, label %.thread13.i.i

.thread13.i.i:                                    ; preds = %thread-pre-split.thread.i.i
  br i1 %.not94.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.thread13.i.i
  %.not99.i.i = icmp ne i32 %.sroa.9.0.i, 0       ; 3 uses
  %.sroa.14.4.idx.i.sroa.sel = select i1 %.not99.i.i, ptr %.sroa.gep220.i, ptr %i.bm
  %.sroa.15.01.i.i = select i1 %.not99.i.i, ptr %i.bm, ptr null
  %i.qa = sext i1 %.not99.i.i to i32
  %.sroa.15.0.i.i = add nsw i32 %i.bh, %i.qa      ; 2 uses
  %i.qb = srem i32 %.sroa.15.0.i.i, 2             ; 2 uses
  %.not100.i.i = icmp ne i32 %i.qb, 0
  %i.qc = sext i1 %.not100.i.i to i32
  %spec.select111.i.i = add nsw i32 %.sroa.15.0.i.i, %i.qc ; 2 uses
  %i.qd = icmp slt i32 %spec.select111.i.i, 0
  br i1 %i.qd, label %huff_decode.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.thread13.i.i
  %.sroa.14.5.i = phi ptr [ null, %.thread13.i.i ], [ %.sroa.14.4.idx.i.sroa.sel, %bb.ad ] ; 2 uses
  %.sroa.15.1.i.i = phi ptr [ null, %.thread13.i.i ], [ %.sroa.15.01.i.i, %bb.ad ]
  %.sroa.15.2.i.i = phi i32 [ %i.bh, %.thread13.i.i ], [ %spec.select111.i.i, %bb.ad ] ; 2 uses
  %.sroa.6.0.i.i = phi i32 [ 0, %.thread13.i.i ], [ %i.qb, %bb.ad ]
  call fastcc void @huff_data_2d(ptr noundef nonnull %0, ptr %.sroa.0.1.i.i, ptr null, ptr noundef %i.a, i32 noundef %spec.select.i117.i, i32 noundef 2, i32 noundef %2, i32 noundef %.sroa.0.0.i, i32 noundef 1)
  br i1 %.not97.i.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.qe = zext nneg i32 %spec.select.i117.i to i64
  %i.qf = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0193.4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel, i64 %i.qe
  %.not96.i.not.i = xor i1 %.not96.i.i, true
  %i.qg = zext i1 %.not96.i.not.i to i32
  call fastcc void @huff_data_1d(ptr noundef nonnull %0, ptr noundef nonnull %i.qf, i32 noundef 1, i32 noundef %2, i32 noundef %i.qg, i32 noundef 0)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.not104.i.i = icmp eq ptr %.sroa.14.5.i, null
  br i1 %.not104.i.i, label %huff_decode.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call fastcc void @huff_data_2d(ptr noundef nonnull %0, ptr null, ptr %.sroa.15.1.i.i, ptr noundef %i.bp, i32 noundef %.sroa.15.2.i.i, i32 noundef 2, i32 noundef %2, i32 noundef %.sroa.9.0.i, i32 noundef 1)
  %.not105.i.i = icmp eq i32 %.sroa.6.0.i.i, 0
  br i1 %.not105.i.i, label %huff_decode.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.qh = sext i32 %.sroa.15.2.i.i to i64
  %i.qi = getelementptr inbounds [2 x i8], ptr %.sroa.14.5.i, i64 %i.qh
  %.not106.i.i = icmp eq i32 %.sroa.9.0.i, 0
  %i.qj = zext i1 %.not106.i.i to i32
  call fastcc void @huff_data_1d(ptr noundef nonnull %0, ptr noundef nonnull %i.qi, i32 noundef 1, i32 noundef %2, i32 noundef %i.qj, i32 noundef 0)
  br label %huff_decode.exit.i

bb.aj:                                            ; preds = %bb.x
  call fastcc void @huff_data_1d(ptr noundef nonnull %0, ptr noundef nonnull %i.d, i32 noundef %i.bh, i32 noundef %2, i32 noundef %.sroa.0.0.i, i32 noundef %.sroa.0.0.i)
  br i1 %.not94.i, label %huff_decode.exit.thread.i, label %bb.ak

huff_decode.exit.thread.i:                        ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %.not244.i = icmp eq i32 %.sroa.0.0.i, 0
  %i.qk = icmp ne i32 %.sroa.9.0.i, 0             ; 2 uses
  br i1 %.not244.i, label %.preheader.i183, label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  call fastcc void @huff_data_1d(ptr noundef nonnull %0, ptr noundef nonnull %i.bm, i32 noundef %i.bh, i32 noundef %2, i32 noundef %.sroa.9.0.i, i32 noundef %.sroa.9.0.i)
  br label %huff_decode.exit.i

huff_decode.exit.i:                               ; preds = %scalar.ph525.prol.loopexit, %scalar.ph525, %middle.block533, %bb.ak, %bb.ai, %bb.ah, %bb.ag, %bb.ad, %thread-pre-split.thread.i.i, %bb.ac
  %i.ql = phi i1 [ true, %bb.ac ], [ false, %bb.ak ], [ false, %bb.ag ], [ false, %bb.ah ], [ false, %bb.ai ], [ false, %bb.ad ], [ false, %thread-pre-split.thread.i.i ], [ true, %middle.block533 ], [ true, %scalar.ph525 ], [ true, %scalar.ph525.prol.loopexit ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.qm = icmp ne i32 %.sroa.0.0.i, 0             ; 5 uses
  %i.qn = icmp ne i32 %.sroa.9.0.i, 0             ; 5 uses
  %or.cond6.i = select i1 %i.qm, i1 %i.qn, i1 false
  %brmerge.i = or i1 %.not94.i, %or.cond6.i
  br i1 %brmerge.i, label %.thread.i, label %bb.al

.thread.i:                                        ; preds = %huff_decode.exit.i
  %i.qo = icmp ne i32 %.sroa.0.0.i, %.sroa.9.0.i
  %i.qp = and i1 %i.qo, %i.ql
  %i.qq = zext i1 %i.qp to i32                    ; 2 uses
  br i1 %i.qm, label %bb.ao, label %.preheader.i183

bb.al:                                            ; preds = %huff_decode.exit.i
  %or.cond3.not.not.i = xor i1 %or.cond3.not.i, true
  %brmerge113.not.i = select i1 %or.cond3.not.not.i, i1 %i.qn, i1 false
  br i1 %brmerge113.not.i, label %.split.i, label %bb.am

.split.i:                                         ; preds = %bb.al
  %i.qr = load i32, ptr %i.ay, align 8, !tbaa !20 ; 4 uses
  %i.qs = load ptr, ptr %0, align 8, !tbaa !19
  %i.qt = lshr i32 %i.qr, 3
  %i.qu = zext nneg i32 %i.qt to i64
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qs, i64 %i.qu
  %i.qw = load i8, ptr %i.qv, align 1, !tbaa !21
  %i.qx = load i32, ptr %i.az, align 8, !tbaa !18
  %i.qy = icmp slt i32 %i.qr, %i.qx
  %i.qz = zext i1 %i.qy to i32
  %spec.select.i118.i = add i32 %i.qr, %i.qz
  %i.ra = zext i8 %i.qw to i32
  %i.rb = and i32 %i.qr, 7
  store i32 %spec.select.i118.i, ptr %i.ay, align 8, !tbaa !20
  %i.rc = lshr exact i32 128, %i.rb
  %i.rd = and i32 %i.rc, %i.ra
  %.not207.i = icmp eq i32 %i.rd, 0
  %i.re = icmp ne i32 %.sroa.0.0.i, 1
  %i.rf = and i1 %i.re, %i.ql
  %i.rg = zext i1 %i.rf to i32                    ; 2 uses
  br i1 %.not207.i, label %bb.an, label %bb.av

bb.am:                                            ; preds = %bb.al
  %i.rh = icmp ne i32 %.sroa.0.0.i, %.sroa.9.0.i
  %i.ri = and i1 %i.rh, %i.ql
  %i.rj = zext i1 %i.ri to i32                    ; 2 uses
  br i1 %or.cond3.not.i, label %bb.av, label %bb.an

bb.an:                                            ; preds = %bb.am, %.split.i
  %9 = phi i1 [ true, %.split.i ], [ %i.qn, %bb.am ] ; 2 uses
  %i.rk = phi i32 [ %i.rg, %.split.i ], [ %i.rj, %bb.am ] ; 2 uses
  br i1 %i.qm, label %bb.ao, label %.preheader.i183

.preheader.i183:                                  ; preds = %bb.an, %.thread.i, %huff_decode.exit.thread.i
  %i.rl = phi i32 [ %i.qq, %.thread.i ], [ %i.rk, %bb.an ], [ 0, %huff_decode.exit.thread.i ] ; 4 uses
  %i.rm = phi i1 [ %i.qn, %.thread.i ], [ %9, %bb.an ], [ %i.qk, %huff_decode.exit.thread.i ]
  br i1 %i.br, label %iter.check468, label %._crit_edge.i184

iter.check468:                                    ; preds = %.preheader.i183
  %i.rn = trunc nuw nsw i32 %.086.i to i16        ; 3 uses
  %not..not101.i = xor i1 %.not101.i, true
  %i.ro = zext i1 %not..not101.i to i16           ; 3 uses
  br i1 %min.iters.check452, label %vec.epilog.scalar.ph470.preheader, label %vector.main.loop.iter.check453

vector.main.loop.iter.check453:                   ; preds = %iter.check468
  br i1 %min.iters.check454, label %vec.epilog.ph472, label %vector.ph455

vector.ph455:                                     ; preds = %vector.main.loop.iter.check453
  %broadcast.splatinsert457 = insertelement <8 x i16> poison, i16 %i.rn, i64 0
  %broadcast.splat458 = shufflevector <8 x i16> %broadcast.splatinsert457, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert459 = insertelement <8 x i16> poison, i16 %i.ro, i64 0
  %broadcast.splat460 = shufflevector <8 x i16> %broadcast.splatinsert459, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body461

vector.body461:                                   ; preds = %vector.ph455, %vector.body461
  %index462 = phi i64 [ 0, %vector.ph455 ], [ %index.next465, %vector.body461 ] ; 3 uses
  %i.rp = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %index462 ; 2 uses
  %i.rq = getelementptr i8, ptr %i.rp, i64 16
  %wide.load463 = load <8 x i16>, ptr %i.rp, align 2, !tbaa !23
  %wide.load464 = load <8 x i16>, ptr %i.rq, align 2, !tbaa !23
  %i.rr = add <8 x i16> %wide.load463, %broadcast.splat458
  %i.rs = add <8 x i16> %wide.load464, %broadcast.splat458
  %i.rt = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %index462 ; 2 uses
  %i.ru = ashr <8 x i16> %i.rr, %broadcast.splat460
  %i.rv = ashr <8 x i16> %i.rs, %broadcast.splat460
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rt, i64 16
  store <8 x i16> %i.ru, ptr %i.rt, align 16, !tbaa !23
  store <8 x i16> %i.rv, ptr %i.rw, align 16, !tbaa !23
  %index.next465 = add nuw i64 %index462, 16      ; 2 uses
  %i.rx = icmp eq i64 %index.next465, %n.vec456
  br i1 %i.rx, label %middle.block466, label %vector.body461, !llvm.loop !61

middle.block466:                                  ; preds = %vector.body461
  br i1 %cmp.n467, label %._crit_edge.i184, label %vec.epilog.iter.check469

vec.epilog.iter.check469:                         ; preds = %middle.block466
  br i1 %min.epilog.iters.check471, label %vec.epilog.scalar.ph470.preheader, label %vec.epilog.ph472, !prof !27

vec.epilog.ph472:                                 ; preds = %vector.main.loop.iter.check453, %vec.epilog.iter.check469
  %vec.epilog.resume.val473 = phi i64 [ %n.vec456, %vec.epilog.iter.check469 ], [ 0, %vector.main.loop.iter.check453 ]
  %broadcast.splatinsert475 = insertelement <4 x i16> poison, i16 %i.rn, i64 0
  %broadcast.splat476 = shufflevector <4 x i16> %broadcast.splatinsert475, <4 x i16> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert477 = insertelement <4 x i16> poison, i16 %i.ro, i64 0
  %broadcast.splat478 = shufflevector <4 x i16> %broadcast.splatinsert477, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body479

vec.epilog.vector.body479:                        ; preds = %vec.epilog.vector.body479, %vec.epilog.ph472
  %index480 = phi i64 [ %vec.epilog.resume.val473, %vec.epilog.ph472 ], [ %index.next482, %vec.epilog.vector.body479 ] ; 3 uses
  %i.ry = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %index480
  %wide.load481 = load <4 x i16>, ptr %i.ry, align 2, !tbaa !23
  %i.rz = add <4 x i16> %wide.load481, %broadcast.splat476
  %i.sa = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %index480
  %i.sb = ashr <4 x i16> %i.rz, %broadcast.splat478
  store <4 x i16> %i.sb, ptr %i.sa, align 8, !tbaa !23
  %index.next482 = add nuw i64 %index480, 4       ; 2 uses
  %i.sc = icmp eq i64 %index.next482, %n.vec474
  br i1 %i.sc, label %vec.epilog.middle.block483, label %vec.epilog.vector.body479, !llvm.loop !62

vec.epilog.middle.block483:                       ; preds = %vec.epilog.vector.body479
  br i1 %cmp.n484, label %._crit_edge.i184, label %vec.epilog.scalar.ph470.preheader

vec.epilog.scalar.ph470.preheader:                ; preds = %iter.check468, %vec.epilog.iter.check469, %vec.epilog.middle.block483
  %indvars.iv.i187.ph = phi i64 [ 0, %iter.check468 ], [ %n.vec456, %vec.epilog.iter.check469 ], [ %n.vec474, %vec.epilog.middle.block483 ]
  br label %vec.epilog.scalar.ph470

bb.ao:                                            ; preds = %bb.an, %.thread.i, %huff_decode.exit.thread.i
  %i.sd = phi i32 [ %i.qq, %.thread.i ], [ %i.rk, %bb.an ], [ 0, %huff_decode.exit.thread.i ] ; 2 uses
  %i.se = phi i1 [ %i.qn, %.thread.i ], [ %9, %bb.an ], [ %i.qk, %huff_decode.exit.thread.i ] ; 2 uses
  %i.sf = load i16, ptr %i.d, align 16, !tbaa !23
  store i16 %i.sf, ptr %i.c, align 16, !tbaa !23
  br i1 %i.bq, label %.lr.ph.i120.i.preheader, label %diff_freq_decode.exit.i.thread

.lr.ph.i120.i.preheader:                          ; preds = %bb.ao
  %load_initial751 = load i16, ptr %i.c, align 16 ; 2 uses
  br i1 %i.cn, label %.lr.ph.i120.i.epil.preheader, label %.lr.ph.i120.i

.lr.ph.i120.i:                                    ; preds = %.lr.ph.i120.i.preheader, %.lr.ph.i120.i
  %store_forwarded752 = phi i16 [ %i.sv, %.lr.ph.i120.i ], [ %load_initial751, %.lr.ph.i120.i.preheader ]
  %indvars.iv.i121.i = phi i64 [ %indvars.iv.next.i122.i.3, %.lr.ph.i120.i ], [ 1, %.lr.ph.i120.i.preheader ] ; 6 uses
  %niter788 = phi i64 [ %niter788.next.3, %.lr.ph.i120.i ], [ 0, %.lr.ph.i120.i.preheader ]
  %i.sg = getelementptr [2 x i8], ptr %i.c, i64 %indvars.iv.i121.i
  %i.sh = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv.i121.i
  %i.si = load i16, ptr %i.sh, align 2, !tbaa !23
  %i.sj = add i16 %i.si, %store_forwarded752      ; 2 uses
  store i16 %i.sj, ptr %i.sg, align 2, !tbaa !23
  %indvars.iv.next.i122.i = add nuw nsw i64 %indvars.iv.i121.i, 1 ; 2 uses
  %i.sk = getelementptr [2 x i8], ptr %i.c, i64 %indvars.iv.next.i122.i
  %i.sl = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv.next.i122.i
  %i.sm = load i16, ptr %i.sl, align 2, !tbaa !23
  %i.sn = add i16 %i.sm, %i.sj                    ; 2 uses
  store i16 %i.sn, ptr %i.sk, align 2, !tbaa !23
  %indvars.iv.next.i122.i.1 = add nuw nsw i64 %indvars.iv.i121.i, 2 ; 2 uses
  %i.so = getelementptr [2 x i8], ptr %i.c, i64 %indvars.iv.next.i122.i.1
  %i.sp = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv.next.i122.i.1
  %i.sq = load i16, ptr %i.sp, align 2, !tbaa !23
  %i.sr = add i16 %i.sq, %i.sn                    ; 2 uses
  store i16 %i.sr, ptr %i.so, align 2, !tbaa !23
  %indvars.iv.next.i122.i.2 = add nuw nsw i64 %indvars.iv.i121.i, 3 ; 2 uses
  %i.ss = getelementptr [2 x i8], ptr %i.c, i64 %indvars.iv.next.i122.i.2
  %i.st = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv.next.i122.i.2
  %i.su = load i16, ptr %i.st, align 2, !tbaa !23
  %i.sv = add i16 %i.su, %i.sr                    ; 3 uses
  store i16 %i.sv, ptr %i.ss, align 2, !tbaa !23
  %indvars.iv.next.i122.i.3 = add nuw nsw i64 %indvars.iv.i121.i, 4 ; 2 uses
  %niter788.next.3 = add nuw i64 %niter788, 4     ; 2 uses
  %niter788.ncmp.3 = icmp eq i64 %niter788.next.3, %unroll_iter787
  br i1 %niter788.ncmp.3, label %diff_freq_decode.exit.i.thread318.unr-lcssa, label %.lr.ph.i120.i, !llvm.loop !63

._crit_edge.i184:                                 ; preds = %vec.epilog.scalar.ph470, %middle.block466, %vec.epilog.middle.block483, %.preheader.i183
  %.not.i124.i = icmp eq i32 %i.rl, 0
  br i1 %.not.i124.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge.i184
  %i.sw = load i16, ptr %i.d, align 16, !tbaa !23
  store i16 %i.sw, ptr %i.c, align 16, !tbaa !23
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %._crit_edge.i184
  %i.sx = icmp slt i32 %i.rl, %i.bh
  br i1 %i.sx, label %iter.check436, label %diff_freq_decode.exit.i

iter.check436:                                    ; preds = %bb.aq
  %i.sy = zext i32 %i.rl to i64                   ; 6 uses
  %i.sz = sub nsw i64 %wide.trip.count.i147.i, %i.sy ; 7 uses
  %min.iters.check422 = icmp ult i64 %i.sz, 4
  br i1 %min.iters.check422, label %.lr.ph.i127.i.preheader, label %vector.main.loop.iter.check423

vector.main.loop.iter.check423:                   ; preds = %iter.check436
  %min.iters.check424 = icmp ult i64 %i.sz, 16
  br i1 %min.iters.check424, label %vec.epilog.ph440, label %vector.ph425

vector.ph425:                                     ; preds = %vector.main.loop.iter.check423
  %i.ta = and i64 %i.sz, 12
  %n.vec426 = and i64 %i.sz, -16                  ; 4 uses
  %i.tb = add nsw i64 %n.vec426, %i.sy
  br label %vector.body427

vector.body427:                                   ; preds = %vector.ph425, %vector.body427
  %index428 = phi i64 [ 0, %vector.ph425 ], [ %index.next433, %vector.body427 ] ; 2 uses
  %i.tc = add nuw i64 %index428, %i.sy            ; 3 uses
  %i.td = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.tc ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 16
  %wide.load429 = load <8 x i16>, ptr %i.td, align 2, !tbaa !23
  %wide.load430 = load <8 x i16>, ptr %i.te, align 2, !tbaa !23
  %i.tf = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.tc ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 16
  %wide.load431 = load <8 x i16>, ptr %i.tf, align 2, !tbaa !23
  %wide.load432 = load <8 x i16>, ptr %i.tg, align 2, !tbaa !23
  %i.th = add <8 x i16> %wide.load431, %wide.load429
  %i.ti = add <8 x i16> %wide.load432, %wide.load430
  %i.tj = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.tc ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 16
  store <8 x i16> %i.th, ptr %i.tj, align 2, !tbaa !23
  store <8 x i16> %i.ti, ptr %i.tk, align 2, !tbaa !23
  %index.next433 = add nuw i64 %index428, 16      ; 2 uses
  %i.tl = icmp eq i64 %index.next433, %n.vec426
  br i1 %i.tl, label %middle.block434, label %vector.body427, !llvm.loop !64

middle.block434:                                  ; preds = %vector.body427
  %cmp.n435 = icmp eq i64 %i.sz, %n.vec426
  br i1 %cmp.n435, label %diff_freq_decode.exit.i, label %vec.epilog.iter.check437

vec.epilog.iter.check437:                         ; preds = %middle.block434
  %min.epilog.iters.check439 = icmp eq i64 %i.ta, 0
  br i1 %min.epilog.iters.check439, label %.lr.ph.i127.i.preheader, label %vec.epilog.ph440, !prof !27

vec.epilog.ph440:                                 ; preds = %vector.main.loop.iter.check423, %vec.epilog.iter.check437
  %vec.epilog.resume.val441 = phi i64 [ %n.vec426, %vec.epilog.iter.check437 ], [ 0, %vector.main.loop.iter.check423 ]
  %n.vec442 = and i64 %i.sz, -4                   ; 3 uses
  %i.tm = add nsw i64 %n.vec442, %i.sy
  br label %vec.epilog.vector.body443

vec.epilog.vector.body443:                        ; preds = %vec.epilog.vector.body443, %vec.epilog.ph440
  %index444 = phi i64 [ %vec.epilog.resume.val441, %vec.epilog.ph440 ], [ %index.next447, %vec.epilog.vector.body443 ] ; 2 uses
  %i.tn = add nuw i64 %index444, %i.sy            ; 3 uses
  %i.to = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.tn
  %wide.load445 = load <4 x i16>, ptr %i.to, align 2, !tbaa !23
  %i.tp = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.tn
  %wide.load446 = load <4 x i16>, ptr %i.tp, align 2, !tbaa !23
  %i.tq = add <4 x i16> %wide.load446, %wide.load445
  %i.tr = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.tn
  store <4 x i16> %i.tq, ptr %i.tr, align 2, !tbaa !23
  %index.next447 = add nuw i64 %index444, 4       ; 2 uses
  %i.ts = icmp eq i64 %index.next447, %n.vec442
  br i1 %i.ts, label %vec.epilog.middle.block448, label %vec.epilog.vector.body443, !llvm.loop !65

vec.epilog.middle.block448:                       ; preds = %vec.epilog.vector.body443
  %cmp.n449 = icmp eq i64 %i.sz, %n.vec442
  br i1 %cmp.n449, label %diff_freq_decode.exit.i, label %.lr.ph.i127.i.preheader

.lr.ph.i127.i.preheader:                          ; preds = %iter.check436, %vec.epilog.iter.check437, %vec.epilog.middle.block448
  %indvars.iv.i128.i.ph = phi i64 [ %i.sy, %iter.check436 ], [ %i.tb, %vec.epilog.iter.check437 ], [ %i.tm, %vec.epilog.middle.block448 ]
  br label %.lr.ph.i127.i

.lr.ph.i127.i:                                    ; preds = %.lr.ph.i127.i.preheader, %.lr.ph.i127.i
  %indvars.iv.i128.i = phi i64 [ %indvars.iv.next.i129.i, %.lr.ph.i127.i ], [ %indvars.iv.i128.i.ph, %.lr.ph.i127.i.preheader ] ; 4 uses
  %i.tt = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i128.i
  %i.tu = load i16, ptr %i.tt, align 2, !tbaa !23
  %i.tv = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv.i128.i
  %i.tw = load i16, ptr %i.tv, align 2, !tbaa !23
  %i.tx = add i16 %i.tw, %i.tu
  %i.ty = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv.i128.i
  store i16 %i.tx, ptr %i.ty, align 2, !tbaa !23
  %indvars.iv.next.i129.i = add nuw nsw i64 %indvars.iv.i128.i, 1 ; 2 uses
  %exitcond.not.i130.i = icmp eq i64 %indvars.iv.next.i129.i, %wide.trip.count.i147.i
  br i1 %exitcond.not.i130.i, label %diff_freq_decode.exit.i, label %.lr.ph.i127.i, !llvm.loop !66

vec.epilog.scalar.ph470:                          ; preds = %vec.epilog.scalar.ph470.preheader, %vec.epilog.scalar.ph470
  %indvars.iv.i187 = phi i64 [ %indvars.iv.next.i189, %vec.epilog.scalar.ph470 ], [ %indvars.iv.i187.ph, %vec.epilog.scalar.ph470.preheader ] ; 3 uses
  %gep.i = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i187
  %i.tz = load i16, ptr %gep.i, align 2, !tbaa !23
  %i.ua = add i16 %i.tz, %i.rn
  %i.ub = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i187
  %spec.select.i188 = ashr i16 %i.ua, %i.ro
  store i16 %spec.select.i188, ptr %i.ub, align 2, !tbaa !23
  %indvars.iv.next.i189 = add nuw nsw i64 %indvars.iv.i187, 1 ; 2 uses
  %exitcond.not.i190 = icmp eq i64 %indvars.iv.next.i189, %wide.trip.count.i147.i
  br i1 %exitcond.not.i190, label %._crit_edge.i184, label %vec.epilog.scalar.ph470, !llvm.loop !67

diff_freq_decode.exit.i:                          ; preds = %.lr.ph.i127.i, %middle.block434, %vec.epilog.middle.block448, %bb.aq
  br i1 %i.rm, label %bb.ar, label %bb.as

diff_freq_decode.exit.i.thread318.unr-lcssa:      ; preds = %.lr.ph.i120.i
  br i1 %lcmp.mod785.not, label %diff_freq_decode.exit.i.thread318, label %.lr.ph.i120.i.epil.preheader

.lr.ph.i120.i.epil.preheader:                     ; preds = %diff_freq_decode.exit.i.thread318.unr-lcssa, %.lr.ph.i120.i.preheader
  %store_forwarded752.epil.init = phi i16 [ %load_initial751, %.lr.ph.i120.i.preheader ], [ %i.sv, %diff_freq_decode.exit.i.thread318.unr-lcssa ]
  %indvars.iv.i121.i.epil.init = phi i64 [ 1, %.lr.ph.i120.i.preheader ], [ %indvars.iv.next.i122.i.3, %diff_freq_decode.exit.i.thread318.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod786)
  br label %.lr.ph.i120.i.epil

.lr.ph.i120.i.epil:                               ; preds = %.lr.ph.i120.i.epil, %.lr.ph.i120.i.epil.preheader
  %store_forwarded752.epil = phi i16 [ %store_forwarded752.epil.init, %.lr.ph.i120.i.epil.preheader ], [ %i.uf, %.lr.ph.i120.i.epil ]
  %indvars.iv.i121.i.epil = phi i64 [ %indvars.iv.i121.i.epil.init, %.lr.ph.i120.i.epil.preheader ], [ %indvars.iv.next.i122.i.epil, %.lr.ph.i120.i.epil ] ; 3 uses
  %epil.iter784 = phi i64 [ 0, %.lr.ph.i120.i.epil.preheader ], [ %epil.iter784.next, %.lr.ph.i120.i.epil ]
  %i.uc = getelementptr [2 x i8], ptr %i.c, i64 %indvars.iv.i121.i.epil
  %i.ud = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv.i121.i.epil
  %i.ue = load i16, ptr %i.ud, align 2, !tbaa !23
  %i.uf = add i16 %i.ue, %store_forwarded752.epil ; 2 uses
  store i16 %i.uf, ptr %i.uc, align 2, !tbaa !23
  %indvars.iv.next.i122.i.epil = add nuw nsw i64 %indvars.iv.i121.i.epil, 1
  %epil.iter784.next = add i64 %epil.iter784, 1   ; 2 uses
  %epil.iter784.cmp.not = icmp eq i64 %epil.iter784.next, %xtraiter783
  br i1 %epil.iter784.cmp.not, label %diff_freq_decode.exit.i.thread318, label %.lr.ph.i120.i.epil, !llvm.loop !68

diff_freq_decode.exit.i.thread318:                ; preds = %.lr.ph.i120.i.epil, %diff_freq_decode.exit.i.thread318.unr-lcssa
  br i1 %i.se, label %.thread319, label %bb.as

.thread319:                                       ; preds = %diff_freq_decode.exit.i.thread318
  %i.ug = load i16, ptr %i.bm, align 8, !tbaa !23
  store i16 %i.ug, ptr %i.bj, align 8, !tbaa !23
  br label %.lr.ph.i133.i.preheader

diff_freq_decode.exit.i.thread:                   ; preds = %bb.ao
  br i1 %i.se, label %.thread317, label %bb.as

.thread317:                                       ; preds = %diff_freq_decode.exit.i.thread
  %i.uh = load i16, ptr %i.bm, align 8, !tbaa !23
  store i16 %i.uh, ptr %i.bj, align 8, !tbaa !23
  br label %diff_freq_decode.exit137.i

bb.ar:                                            ; preds = %diff_freq_decode.exit.i
  %i.ui = load i16, ptr %i.bm, align 8, !tbaa !23
  store i16 %i.ui, ptr %i.bj, align 8, !tbaa !23
  br i1 %i.bq, label %.lr.ph.i133.i.preheader, label %diff_freq_decode.exit137.i

.lr.ph.i133.i.preheader:                          ; preds = %.thread319, %bb.ar
  %load_initial753 = load i16, ptr %i.bj, align 8 ; 2 uses
end_hunk_0

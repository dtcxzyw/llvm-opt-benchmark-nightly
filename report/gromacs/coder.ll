Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/coder?download=true
inline.NumInlined: 21
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 21
begin_hunk_0_@Ptngc_writemanybits:bb.a
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !8
  %i.cb = add nsw i32 %i.ca, %.1.lcssa            ; 3 uses
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !8
  %i.cc = or i32 %i.by, %i.bw                     ; 2 uses
  store i32 %i.cc, ptr %0, align 4, !tbaa !10
  %i.cd = icmp sgt i32 %i.cb, 7
  br i1 %i.cd, label %.lr.ph.preheader.i.i30, label %Ptngc_writebits.exit33

.lr.ph.preheader.i.i30:                           ; preds = %bb.d
  %.pre9.i.i31 = load ptr, ptr %3, align 8, !tbaa !11
  br label %.lr.ph.i.i32

.lr.ph.i.i32:                                     ; preds = %.lr.ph.i.i32, %.lr.ph.preheader.i.i30
  %i.ce = phi ptr [ %i.cn, %.lr.ph.i.i32 ], [ %.pre9.i.i31, %.lr.ph.preheader.i.i30 ]
  %i.cf = phi i32 [ %i.cp, %.lr.ph.i.i32 ], [ %i.cc, %.lr.ph.preheader.i.i30 ]
  %i.cg = phi i32 [ %i.cq, %.lr.ph.i.i32 ], [ %i.cb, %.lr.ph.preheader.i.i30 ]
  %i.ch = add nsw i32 %i.cg, -8                   ; 3 uses
  store i32 %i.ch, ptr %i.bz, align 4, !tbaa !8
  %i.ci = shl i32 255, %i.ch
  %i.cj = xor i32 %i.ci, -1
  %i.ck = lshr i32 %i.cf, %i.ch
  %i.cl = trunc i32 %i.ck to i8
  store i8 %i.cl, ptr %i.ce, align 1, !tbaa !14
  %i.cm = load ptr, ptr %3, align 8, !tbaa !11
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 1 ; 2 uses
  store ptr %i.cn, ptr %3, align 8, !tbaa !11
  %i.co = load i32, ptr %0, align 4, !tbaa !10
  %i.cp = and i32 %i.co, %i.cj                    ; 2 uses
  store i32 %i.cp, ptr %0, align 4, !tbaa !10
  %i.cq = load i32, ptr %i.bz, align 4, !tbaa !8  ; 2 uses
  %i.cr = icmp sgt i32 %i.cq, 7
  br i1 %i.cr, label %.lr.ph.i.i32, label %Ptngc_writebits.exit33, !llvm.loop !15

Ptngc_writebits.exit33:                           ; preds = %.lr.ph.i.i32, %bb.d, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Ptngc_pack_flush(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8    ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.preheader.i.i, label %Ptngc_write_pattern.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %i.d = sub nsw i32 8, %i.b
  %i.e = load i32, ptr %0, align 4, !tbaa !10
  %i.f = shl i32 %i.e, %i.d                       ; 2 uses
  store i32 %i.f, ptr %0, align 4, !tbaa !10
  %.pre9.i.i = load ptr, ptr %1, align 8, !tbaa !11
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %i.g = phi ptr [ %i.p, %.lr.ph.i.i ], [ %.pre9.i.i, %.lr.ph.preheader.i.i ]
  %i.h = phi i32 [ %i.r, %.lr.ph.i.i ], [ %i.f, %.lr.ph.preheader.i.i ]
  %i.i = phi i32 [ %i.s, %.lr.ph.i.i ], [ 8, %.lr.ph.preheader.i.i ]
  %i.j = add nsw i32 %i.i, -8                     ; 3 uses
  store i32 %i.j, ptr %i.a, align 4, !tbaa !8
  %i.k = shl i32 255, %i.j
  %i.l = xor i32 %i.k, -1
  %i.m = lshr i32 %i.h, %i.j
  %i.n = trunc i32 %i.m to i8
  store i8 %i.n, ptr %i.g, align 1, !tbaa !14
  %i.o = load ptr, ptr %1, align 8, !tbaa !11
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 2 uses
  store ptr %i.p, ptr %1, align 8, !tbaa !11
  %i.q = load i32, ptr %0, align 4, !tbaa !10
  %i.r = and i32 %i.q, %i.l                       ; 2 uses
  store i32 %i.r, ptr %0, align 4, !tbaa !10
  %i.s = load i32, ptr %i.a, align 4, !tbaa !8    ; 2 uses
  %i.t = icmp sgt i32 %i.s, 7
  br i1 %i.t, label %.lr.ph.i.i, label %Ptngc_write_pattern.exit, !llvm.loop !15

Ptngc_write_pattern.exit:                         ; preds = %.lr.ph.i.i, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @Ptngc_pack_array(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %3, -2
  %or.cond = icmp eq i32 %i.a, 8
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %2, align 4, !tbaa !23
  %i.c = tail call i32 @bwlzh_get_buflen(i32 noundef %i.b) #11
  %i.d = add nsw i32 %i.c, 4
  %i.e = sext i32 %i.d to i64
  %i.f = tail call ptr @Ptngc_warnmalloc_x(i64 noundef %i.e, ptr noundef nonnull @.str, i32 noundef 276) #11 ; 3 uses
  %i.g = load i32, ptr %2, align 4, !tbaa !23     ; 8 uses
  %i.h = sext i32 %i.g to i64
  %i.i = shl nsw i64 %i.h, 2
  %i.j = tail call ptr @Ptngc_warnmalloc_x(i64 noundef %i.i, ptr noundef nonnull @.str, i32 noundef 278) #11 ; 27 uses
  %i.k = sdiv i32 %i.g, %5                        ; 5 uses
  %i.l = sdiv i32 %i.k, 3
  %i.m = icmp sgt i32 %i.g, 0
  br i1 %i.m, label %iter.check578, label %._crit_edge

iter.check578:                                    ; preds = %bb.b
  %wide.trip.count350 = zext nneg i32 %i.g to i64 ; 6 uses
  %min.iters.check555 = icmp ult i32 %i.g, 4
  br i1 %min.iters.check555, label %.lr.ph289.preheader, label %vector.main.loop.iter.check556

vector.main.loop.iter.check556:                   ; preds = %iter.check578
  %min.iters.check557 = icmp ult i32 %i.g, 32
  br i1 %min.iters.check557, label %vec.epilog.ph582, label %vector.ph558

vector.ph558:                                     ; preds = %vector.main.loop.iter.check556
  %i.n = and i64 %wide.trip.count350, 28
  %n.vec559 = and i64 %wide.trip.count350, 2147483616 ; 4 uses
  br label %vector.body560

vector.body560:                                   ; preds = %vector.body560, %vector.ph558
  %index561 = phi i64 [ 0, %vector.ph558 ], [ %index.next570, %vector.body560 ] ; 2 uses
  %vec.phi562 = phi <8 x i32> [ splat (i32 2147483647), %vector.ph558 ], [ %i.s, %vector.body560 ]
  %vec.phi563 = phi <8 x i32> [ splat (i32 2147483647), %vector.ph558 ], [ %i.t, %vector.body560 ]
  %vec.phi564 = phi <8 x i32> [ splat (i32 2147483647), %vector.ph558 ], [ %i.u, %vector.body560 ]
  %vec.phi565 = phi <8 x i32> [ splat (i32 2147483647), %vector.ph558 ], [ %i.v, %vector.body560 ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index561 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  %wide.load566 = load <8 x i32>, ptr %i.o, align 4, !tbaa !23
  %wide.load567 = load <8 x i32>, ptr %i.p, align 4, !tbaa !23
  %wide.load568 = load <8 x i32>, ptr %i.q, align 4, !tbaa !23
  %wide.load569 = load <8 x i32>, ptr %i.r, align 4, !tbaa !23
  %i.s = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.load566, <8 x i32> %vec.phi562) ; 2 uses
  %i.t = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.load567, <8 x i32> %vec.phi563) ; 2 uses
  %i.u = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.load568, <8 x i32> %vec.phi564) ; 2 uses
  %i.v = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.load569, <8 x i32> %vec.phi565) ; 2 uses
  %index.next570 = add nuw i64 %index561, 32      ; 2 uses
  %i.w = icmp eq i64 %index.next570, %n.vec559
  br i1 %i.w, label %middle.block571, label %vector.body560, !llvm.loop !24

middle.block571:                                  ; preds = %vector.body560
  %rdx.minmax572 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.s, <8 x i32> %i.t)
  %rdx.minmax573 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %rdx.minmax572, <8 x i32> %i.u)
  %rdx.minmax574 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %rdx.minmax573, <8 x i32> %i.v)
  %i.x = tail call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %rdx.minmax574) ; 3 uses
  %cmp.n575 = icmp eq i64 %n.vec559, %wide.trip.count350
  br i1 %cmp.n575, label %._crit_edge, label %vec.epilog.iter.check580

vec.epilog.iter.check580:                         ; preds = %middle.block571
  %min.epilog.iters.check581 = icmp eq i64 %i.n, 0
  br i1 %min.epilog.iters.check581, label %.lr.ph289.preheader, label %vec.epilog.ph582, !prof !27

vec.epilog.ph582:                                 ; preds = %vector.main.loop.iter.check556, %vec.epilog.iter.check580
  %vec.epilog.resume.val576 = phi i64 [ %n.vec559, %vec.epilog.iter.check580 ], [ 0, %vector.main.loop.iter.check556 ]
  %bc.merge.rdx577 = phi i32 [ %i.x, %vec.epilog.iter.check580 ], [ 2147483647, %vector.main.loop.iter.check556 ]
  %n.vec583 = and i64 %wide.trip.count350, 2147483644 ; 3 uses
  %broadcast.splatinsert584 = insertelement <4 x i32> poison, i32 %bc.merge.rdx577, i64 0
  %broadcast.splat585 = shufflevector <4 x i32> %broadcast.splatinsert584, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body586

vec.epilog.vector.body586:                        ; preds = %vec.epilog.vector.body586, %vec.epilog.ph582
  %index587 = phi i64 [ %vec.epilog.resume.val576, %vec.epilog.ph582 ], [ %index.next590, %vec.epilog.vector.body586 ] ; 2 uses
  %vec.phi588 = phi <4 x i32> [ %broadcast.splat585, %vec.epilog.ph582 ], [ %i.z, %vec.epilog.vector.body586 ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index587
  %wide.load589 = load <4 x i32>, ptr %i.y, align 4, !tbaa !23
  %i.z = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load589, <4 x i32> %vec.phi588) ; 2 uses
  %index.next590 = add nuw i64 %index587, 4       ; 2 uses
  %i.aa = icmp eq i64 %index.next590, %n.vec583
  br i1 %i.aa, label %vec.epilog.middle.block591, label %vec.epilog.vector.body586, !llvm.loop !28

vec.epilog.middle.block591:                       ; preds = %vec.epilog.vector.body586
  %i.ab = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %i.z) ; 2 uses
  %cmp.n592 = icmp eq i64 %n.vec583, %wide.trip.count350
  br i1 %cmp.n592, label %._crit_edge, label %.lr.ph289.preheader

.lr.ph289.preheader:                              ; preds = %iter.check578, %vec.epilog.iter.check580, %vec.epilog.middle.block591
  %indvars.iv347.ph = phi i64 [ 0, %iter.check578 ], [ %n.vec559, %vec.epilog.iter.check580 ], [ %n.vec583, %vec.epilog.middle.block591 ]
  %.0144288.ph = phi i32 [ 2147483647, %iter.check578 ], [ %i.x, %vec.epilog.iter.check580 ], [ %i.ab, %vec.epilog.middle.block591 ]
  br label %.lr.ph289

.lr.ph289:                                        ; preds = %.lr.ph289.preheader, %.lr.ph289
  %indvars.iv347 = phi i64 [ %indvars.iv.next348, %.lr.ph289 ], [ %indvars.iv347.ph, %.lr.ph289.preheader ] ; 2 uses
  %.0144288 = phi i32 [ %spec.select, %.lr.ph289 ], [ %.0144288.ph, %.lr.ph289.preheader ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv347
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !23
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.ad, i32 %.0144288) ; 2 uses
  %indvars.iv.next348 = add nuw nsw i64 %indvars.iv347, 1 ; 2 uses
  %exitcond351.not = icmp eq i64 %indvars.iv.next348, %wide.trip.count350
  br i1 %exitcond351.not, label %._crit_edge, label %.lr.ph289, !llvm.loop !29

._crit_edge:                                      ; preds = %.lr.ph289, %middle.block571, %vec.epilog.middle.block591, %bb.b
  %.0144.lcssa = phi i32 [ 2147483647, %bb.b ], [ %i.ab, %vec.epilog.middle.block591 ], [ %i.x, %middle.block571 ], [ %spec.select, %.lr.ph289 ] ; 19 uses
  %i.ae = sub nsw i32 0, %.0144.lcssa
  store i32 %i.ae, ptr %i.f, align 1
  %i.af = icmp sgt i32 %5, 0
  %i.ag = icmp sgt i32 %i.k, 2
  %or.cond479 = and i1 %i.af, %i.ag
  br i1 %or.cond479, label %.preheader237.us.preheader, label %._crit_edge300

.preheader237.us.preheader:                       ; preds = %._crit_edge
  %wide.trip.count359 = zext nneg i32 %i.l to i64 ; 20 uses
  %i.ah = add nsw i64 %wide.trip.count359, -1     ; 3 uses
  %i.ai = mul i32 %5, 3                           ; 3 uses
  %i.aj = mul i32 %5, -3
  %7 = shl nuw nsw i64 %wide.trip.count359, 2
  %i.ak = sext i32 %i.ai to i64
  %i.al = mul nsw i64 %i.ah, %i.ak
  %i.am = shl i64 %i.al, 2
  %scevgep596 = getelementptr i8, ptr %1, i64 %i.am
  %i.an = add nsw i64 %wide.trip.count359, -1     ; 5 uses
  %i.ao = mul i32 %5, 3                           ; 5 uses
  %i.ap = mul i32 %5, -3
  %8 = shl nuw nsw i64 %wide.trip.count359, 2
  %i.aq = sext i32 %i.ao to i64
  %i.ar = mul nsw i64 %i.an, %i.aq
  %i.as = shl i64 %i.ar, 2                        ; 2 uses
  %scevgep623 = getelementptr i8, ptr %1, i64 %i.as
  %i.at = mul i32 %5, -3
  %i.au = shl nuw nsw i64 %wide.trip.count359, 2
  %scevgep659 = getelementptr i8, ptr %i.j, i64 %i.au
  %scevgep661 = getelementptr i8, ptr %1, i64 %i.as
  %min.iters.check671 = icmp ult i32 %i.k, 72
  %i.av = icmp slt i32 %i.ao, 0                   ; 2 uses
  %i.aw = select i1 %i.av, i32 %i.at, i32 %i.ao
  %i.ax = trunc nsw i64 %i.an to i32
  %mul654 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.aw, i32 %i.ax) ; 2 uses
  %mul.result655 = extractvalue { i32, i1 } %mul654, 0 ; 2 uses
  %mul.overflow656 = extractvalue { i32, i1 } %mul654, 1
  %i.ay = icmp ugt i64 %i.an, 4294967295
  %invariant.op = or i1 %mul.overflow656, %i.ay
  %n.vec673 = and i64 %wide.trip.count359, 1073741816 ; 5 uses
  %broadcast.splatinsert676 = insertelement <8 x i32> poison, i32 %5, i64 0
  %broadcast.splat677 = shufflevector <8 x i32> %broadcast.splatinsert676, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert678 = insertelement <8 x i32> poison, i32 %.0144.lcssa, i64 0
  %broadcast.splat679 = shufflevector <8 x i32> %broadcast.splatinsert678, <8 x i32> poison, <8 x i32> zeroinitializer
  %ind.escape688 = add nsw i64 %n.vec673, -1
  %cmp.n689 = icmp eq i64 %n.vec673, %wide.trip.count359
  %xtraiter768 = and i64 %wide.trip.count359, 3   ; 2 uses
  %lcmp.mod769.not = icmp eq i64 %xtraiter768, 0
  %min.iters.check633 = icmp ult i32 %i.k, 72
  %i.az = icmp slt i32 %i.ao, 0                   ; 2 uses
  %i.ba = select i1 %i.az, i32 %i.ap, i32 %i.ao
  %i.bb = trunc nsw i64 %i.an to i32
  %mul617 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.ba, i32 %i.bb) ; 2 uses
  %mul.result618 = extractvalue { i32, i1 } %mul617, 0 ; 2 uses
  %mul.overflow619 = extractvalue { i32, i1 } %mul617, 1
  %i.bc = icmp ugt i64 %i.an, 4294967295
  %invariant.op866 = or i1 %mul.overflow619, %i.bc
  %invariant.gep = getelementptr i8, ptr %i.j, i64 %8
  %n.vec635 = and i64 %wide.trip.count359, 1073741816 ; 5 uses
  %broadcast.splatinsert636 = insertelement <8 x i32> poison, i32 %5, i64 0
  %broadcast.splat637 = shufflevector <8 x i32> %broadcast.splatinsert636, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert640 = insertelement <8 x i32> poison, i32 %.0144.lcssa, i64 0
  %broadcast.splat641 = shufflevector <8 x i32> %broadcast.splatinsert640, <8 x i32> poison, <8 x i32> zeroinitializer
  %ind.escape = add nsw i64 %n.vec635, -1
  %cmp.n650 = icmp eq i64 %n.vec635, %wide.trip.count359
  %xtraiter782 = and i64 %wide.trip.count359, 3   ; 2 uses
  %lcmp.mod783.not = icmp eq i64 %xtraiter782, 0
  %min.iters.check600 = icmp ult i32 %i.k, 72
  %i.bd = icmp slt i32 %i.ai, 0                   ; 2 uses
  %i.be = select i1 %i.bd, i32 %i.aj, i32 %i.ai
  %i.bf = trunc nsw i64 %i.ah to i32
  %mul = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.be, i32 %i.bf) ; 2 uses
  %mul.result = extractvalue { i32, i1 } %mul, 0  ; 2 uses
  %mul.overflow = extractvalue { i32, i1 } %mul, 1
  %i.bg = icmp ugt i64 %i.ah, 4294967295
  %invariant.op868 = or i1 %mul.overflow, %i.bg
  %n.vec602 = and i64 %wide.trip.count359, 1073741816 ; 4 uses
  %broadcast.splatinsert603 = insertelement <8 x i32> poison, i32 %5, i64 0
  %broadcast.splat604 = shufflevector <8 x i32> %broadcast.splatinsert603, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert607 = insertelement <8 x i32> poison, i32 %.0144.lcssa, i64 0
  %broadcast.splat608 = shufflevector <8 x i32> %broadcast.splatinsert607, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n613 = icmp eq i64 %n.vec602, %wide.trip.count359
  %xtraiter787 = and i64 %wide.trip.count359, 3   ; 2 uses
  %lcmp.mod788.not = icmp eq i64 %xtraiter787, 0
  br label %.preheader237.us

.preheader237.us:                                 ; preds = %.preheader237.us.preheader, %._crit_edge294.us.us.2
  %.0146299.us = phi i64 [ %indvars.iv.next353.2.lcssa, %._crit_edge294.us.us.2 ], [ 0, %.preheader237.us.preheader ] ; 8 uses
  %.1152298.us = phi i32 [ %i.ji, %._crit_edge294.us.us.2 ], [ 0, %.preheader237.us.preheader ] ; 24 uses
  %i.bh = mul i32 %.1152298.us, 3
  %i.bi = sext i32 %i.bh to i64
  %i.bj = shl nsw i64 %i.bi, 2                    ; 2 uses
  %scevgep662 = getelementptr i8, ptr %scevgep661, i64 %i.bj ; 4 uses
  %scevgep663 = getelementptr i8, ptr %1, i64 %i.bj ; 4 uses
  %i.bk = icmp ult ptr %scevgep662, %scevgep663
  %umin664 = select i1 %i.bk, ptr %scevgep662, ptr %scevgep663
  %i.bl = icmp ugt ptr %scevgep662, %scevgep663
  %umax665 = select i1 %i.bl, ptr %scevgep662, ptr %scevgep663
  %scevgep666 = getelementptr i8, ptr %umax665, i64 4
  %i.bm = mul i32 %.1152298.us, 3                 ; 5 uses
  %i.bn = add i32 %i.bm, 1
  %i.bo = sext i32 %i.bn to i64
  %i.bp = shl nsw i64 %i.bo, 2                    ; 2 uses
  %scevgep624 = getelementptr i8, ptr %scevgep623, i64 %i.bp ; 4 uses
  %scevgep625 = getelementptr i8, ptr %1, i64 %i.bp ; 4 uses
  %i.bq = icmp ult ptr %scevgep624, %scevgep625
  %umin626 = select i1 %i.bq, ptr %scevgep624, ptr %scevgep625
  %i.br = icmp ugt ptr %scevgep624, %scevgep625
  %umax627 = select i1 %i.br, ptr %scevgep624, ptr %scevgep625
  %scevgep628 = getelementptr i8, ptr %umax627, i64 4
  %i.bs = mul i32 %.1152298.us, 3
  %i.bt = add i32 %i.bs, 1                        ; 4 uses
  %i.bu = mul i32 %.1152298.us, 3
  %i.bv = add i32 %i.bu, 2
  %i.bw = sext i32 %i.bv to i64
  %i.bx = shl nsw i64 %i.bw, 2                    ; 2 uses
  %scevgep597 = getelementptr i8, ptr %scevgep596, i64 %i.bx ; 4 uses
  %scevgep598 = getelementptr i8, ptr %1, i64 %i.bx ; 4 uses
  %i.by = icmp ult ptr %scevgep597, %scevgep598
  %umin = select i1 %i.by, ptr %scevgep597, ptr %scevgep598
  %i.bz = icmp ugt ptr %scevgep597, %scevgep598
  %umax = select i1 %i.bz, ptr %scevgep597, ptr %scevgep598
  %scevgep599 = getelementptr i8, ptr %umax, i64 4
  %i.ca = mul i32 %.1152298.us, 3
  %i.cb = add i32 %i.ca, 2                        ; 4 uses
  br i1 %min.iters.check671, label %scalar.ph670.preheader, label %vector.scevcheck653

vector.scevcheck653:                              ; preds = %.preheader237.us
  %i.cc = add i32 %i.bm, %mul.result655
  %i.cd = sub i32 %i.bm, %mul.result655
  %i.ce = icmp slt i32 %i.cc, %i.bm
  %i.cf = icmp sgt i32 %i.cd, %i.bm
  %i.cg = select i1 %i.av, i1 %i.cf, i1 %i.ce
  %.reass = or i1 %i.cg, %invariant.op
  br i1 %.reass, label %scalar.ph670.preheader, label %vector.memcheck657

vector.memcheck657:                               ; preds = %vector.scevcheck653
  %i.ch = shl i64 %.0146299.us, 2                 ; 2 uses
  %scevgep658 = getelementptr i8, ptr %i.j, i64 %i.ch
  %scevgep660 = getelementptr i8, ptr %scevgep659, i64 %i.ch
  %bound0667 = icmp ult ptr %scevgep658, %scevgep666
  %bound1668 = icmp ult ptr %umin664, %scevgep660
  %found.conflict669 = and i1 %bound0667, %bound1668
  br i1 %found.conflict669, label %scalar.ph670.preheader, label %vector.ph672

vector.ph672:                                     ; preds = %vector.memcheck657
  %i.ci = add i64 %.0146299.us, %n.vec673         ; 2 uses
  %broadcast.splatinsert674 = insertelement <8 x i32> poison, i32 %.1152298.us, i64 0
  %broadcast.splat675 = shufflevector <8 x i32> %broadcast.splatinsert674, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.cj = getelementptr [4 x i8], ptr %i.j, i64 %.0146299.us
  br label %vector.body680

vector.body680:                                   ; preds = %vector.body680, %vector.ph672
  %index681 = phi i64 [ 0, %vector.ph672 ], [ %index.next685, %vector.body680 ] ; 2 uses
  %vec.ind682 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph672 ], [ %vec.ind.next686, %vector.body680 ] ; 2 uses
  %i.ck = mul <8 x i32> %broadcast.splat677, %vec.ind682
  %i.cl = add <8 x i32> %i.ck, %broadcast.splat675
  %i.cm = mul <8 x i32> %i.cl, splat (i32 3)
  %i.cn = sext <8 x i32> %i.cm to <8 x i64>
  %wide.gep683 = getelementptr inbounds [4 x i8], ptr %1, <8 x i64> %i.cn
  %wide.masked.gather684 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep683, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !23, !alias.scope !30
  %i.co = sub nsw <8 x i32> %wide.masked.gather684, %broadcast.splat679
  %i.cp = getelementptr [4 x i8], ptr %i.cj, i64 %index681
  store <8 x i32> %i.co, ptr %i.cp, align 4, !tbaa !23, !alias.scope !33, !noalias !30
  %index.next685 = add nuw i64 %index681, 8       ; 2 uses
  %vec.ind.next686 = add <8 x i32> %vec.ind682, splat (i32 8)
  %i.cq = icmp eq i64 %index.next685, %n.vec673
  br i1 %i.cq, label %middle.block687, label %vector.body680, !llvm.loop !35

middle.block687:                                  ; preds = %vector.body680
  br i1 %cmp.n689, label %._crit_edge294.us.us.preheader, label %scalar.ph670.preheader

scalar.ph670.preheader:                           ; preds = %vector.memcheck657, %vector.scevcheck653, %.preheader237.us, %middle.block687
  %indvars.iv354.ph = phi i64 [ 0, %vector.memcheck657 ], [ 0, %vector.scevcheck653 ], [ 0, %.preheader237.us ], [ %n.vec673, %middle.block687 ] ; 3 uses
  %indvars.iv352.ph = phi i64 [ %.0146299.us, %vector.memcheck657 ], [ %.0146299.us, %vector.scevcheck653 ], [ %.0146299.us, %.preheader237.us ], [ %i.ci, %middle.block687 ] ; 2 uses
  br i1 %lcmp.mod769.not, label %scalar.ph670.prol.loopexit, label %scalar.ph670.prol

scalar.ph670.prol:                                ; preds = %scalar.ph670.preheader, %scalar.ph670.prol
  %indvars.iv354.prol = phi i64 [ %indvars.iv.next355.prol, %scalar.ph670.prol ], [ %indvars.iv354.ph, %scalar.ph670.preheader ] ; 3 uses
  %indvars.iv352.prol = phi i64 [ %indvars.iv.next353.prol, %scalar.ph670.prol ], [ %indvars.iv352.ph, %scalar.ph670.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph670.prol ], [ 0, %scalar.ph670.preheader ]
  %i.cr = trunc nuw nsw i64 %indvars.iv354.prol to i32
  %i.cs = mul i32 %5, %i.cr
  %reass.add.us.us.prol = add i32 %i.cs, %.1152298.us
  %reass.mul.us.us.prol = mul i32 %reass.add.us.us.prol, 3
  %i.ct = sext i32 %reass.mul.us.us.prol to i64
  %i.cu = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !23
  %i.cw = sub nsw i32 %i.cv, %.0144.lcssa
  %indvars.iv.next353.prol = add nsw i64 %indvars.iv352.prol, 1 ; 3 uses
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.j, i64 %indvars.iv352.prol
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !23
  %indvars.iv.next355.prol = add nuw nsw i64 %indvars.iv354.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter768
  br i1 %prol.iter.cmp.not, label %scalar.ph670.prol.loopexit, label %scalar.ph670.prol, !llvm.loop !36

scalar.ph670.prol.loopexit:                       ; preds = %scalar.ph670.prol, %scalar.ph670.preheader
  %indvars.iv354.lcssa695.unr = phi i64 [ poison, %scalar.ph670.preheader ], [ %indvars.iv354.prol, %scalar.ph670.prol ]
  %indvars.iv.next353.lcssa694.unr = phi i64 [ poison, %scalar.ph670.preheader ], [ %indvars.iv.next353.prol, %scalar.ph670.prol ]
  %indvars.iv354.unr = phi i64 [ %indvars.iv354.ph, %scalar.ph670.preheader ], [ %indvars.iv.next355.prol, %scalar.ph670.prol ]
  %indvars.iv352.unr = phi i64 [ %indvars.iv352.ph, %scalar.ph670.preheader ], [ %indvars.iv.next353.prol, %scalar.ph670.prol ]
  %i.cy = sub nsw i64 %indvars.iv354.ph, %wide.trip.count359
  %i.cz = icmp ugt i64 %i.cy, -4
  br i1 %i.cz, label %._crit_edge294.us.us.preheader, label %scalar.ph670

scalar.ph670:                                     ; preds = %scalar.ph670.prol.loopexit, %scalar.ph670
  %indvars.iv354 = phi i64 [ %indvars.iv.next355.3, %scalar.ph670 ], [ %indvars.iv354.unr, %scalar.ph670.prol.loopexit ] ; 5 uses
  %indvars.iv352 = phi i64 [ %indvars.iv.next353.3, %scalar.ph670 ], [ %indvars.iv352.unr, %scalar.ph670.prol.loopexit ] ; 5 uses
  %i.da = trunc nuw nsw i64 %indvars.iv354 to i32
  %i.db = mul i32 %5, %i.da
  %reass.add.us.us = add i32 %i.db, %.1152298.us
  %reass.mul.us.us = mul i32 %reass.add.us.us, 3
  %i.dc = sext i32 %reass.mul.us.us to i64
  %i.dd = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !23
  %i.df = sub nsw i32 %i.de, %.0144.lcssa
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.j, i64 %indvars.iv352
  store i32 %i.df, ptr %i.dg, align 4, !tbaa !23
  %i.dh = trunc i64 %indvars.iv354 to i32
  %i.di = add i32 %i.dh, 1
  %i.dj = mul i32 %5, %i.di
  %reass.add.us.us.1772 = add i32 %i.dj, %.1152298.us
  %reass.mul.us.us.1773 = mul i32 %reass.add.us.us.1772, 3
  %i.dk = sext i32 %reass.mul.us.us.1773 to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !23
  %i.dn = sub nsw i32 %i.dm, %.0144.lcssa
  %i.do = getelementptr [4 x i8], ptr %i.j, i64 %indvars.iv352
  %i.dp = getelementptr i8, ptr %i.do, i64 4
  store i32 %i.dn, ptr %i.dp, align 4, !tbaa !23
  %i.dq = trunc i64 %indvars.iv354 to i32
  %i.dr = add i32 %i.dq, 2
  %i.ds = mul i32 %5, %i.dr
  %reass.add.us.us.2778 = add i32 %i.ds, %.1152298.us
  %reass.mul.us.us.2779 = mul i32 %reass.add.us.us.2778, 3
  %i.dt = sext i32 %reass.mul.us.us.2779 to i64
  %i.du = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !23
  %i.dw = sub nsw i32 %i.dv, %.0144.lcssa
  %i.dx = getelementptr [4 x i8], ptr %i.j, i64 %indvars.iv352
  %i.dy = getelementptr i8, ptr %i.dx, i64 8
  store i32 %i.dw, ptr %i.dy, align 4, !tbaa !23
  %indvars.iv.next355.2781 = add nuw nsw i64 %indvars.iv354, 3 ; 2 uses
  %i.dz = trunc nuw nsw i64 %indvars.iv.next355.2781 to i32
  %i.ea = mul i32 %5, %i.dz
  %reass.add.us.us.3 = add i32 %i.ea, %.1152298.us
  %reass.mul.us.us.3 = mul i32 %reass.add.us.us.3, 3
  %i.eb = sext i32 %reass.mul.us.us.3 to i64
  %i.ec = getelementptr inbounds [4 x i8], ptr %1, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !23
  %i.ee = sub nsw i32 %i.ed, %.0144.lcssa
  %indvars.iv.next353.3 = add nsw i64 %indvars.iv352, 4 ; 2 uses
  %i.ef = getelementptr [4 x i8], ptr %i.j, i64 %indvars.iv352
  %i.eg = getelementptr i8, ptr %i.ef, i64 12
  store i32 %i.ee, ptr %i.eg, align 4, !tbaa !23
  %indvars.iv.next355.3 = add nuw nsw i64 %indvars.iv354, 4 ; 2 uses
  %exitcond360.not.3 = icmp eq i64 %indvars.iv.next355.3, %wide.trip.count359
  br i1 %exitcond360.not.3, label %._crit_edge294.us.us.preheader, label %scalar.ph670, !llvm.loop !37

._crit_edge294.us.us.preheader:                   ; preds = %scalar.ph670.prol.loopexit, %scalar.ph670, %middle.block687
  %indvars.iv354.lcssa = phi i64 [ %ind.escape688, %middle.block687 ], [ %indvars.iv354.lcssa695.unr, %scalar.ph670.prol.loopexit ], [ %indvars.iv.next355.2781, %scalar.ph670 ] ; 2 uses
  %indvars.iv.next353.lcssa = phi i64 [ %i.ci, %middle.block687 ], [ %indvars.iv.next353.lcssa694.unr, %scalar.ph670.prol.loopexit ], [ %indvars.iv.next353.3, %scalar.ph670 ] ; 5 uses
  br i1 %min.iters.check633, label %._crit_edge294.us.us.preheader693, label %vector.scevcheck616

vector.scevcheck616:                              ; preds = %._crit_edge294.us.us.preheader
  %i.eh = add i32 %i.bt, %mul.result618
  %i.ei = sub i32 %i.bt, %mul.result618
  %i.ej = icmp slt i32 %i.eh, %i.bt
  %i.ek = icmp sgt i32 %i.ei, %i.bt
  %i.el = select i1 %i.az, i1 %i.ek, i1 %i.ej
  %.reass867 = or i1 %i.el, %invariant.op866
  br i1 %.reass867, label %._crit_edge294.us.us.preheader693, label %vector.memcheck620

vector.memcheck620:                               ; preds = %vector.scevcheck616
  %9 = shl i64 %.0146299.us, 2                    ; 2 uses
  %i.em = shl i64 %indvars.iv354.lcssa, 2         ; 2 uses
  %i.en = getelementptr i8, ptr %i.j, i64 %i.em
  %10 = getelementptr i8, ptr %i.en, i64 %9
  %scevgep621 = getelementptr i8, ptr %10, i64 4
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.em
  %i.eo = getelementptr i8, ptr %gep, i64 4
  %scevgep622 = getelementptr i8, ptr %i.eo, i64 %9
  %bound0629 = icmp ult ptr %scevgep621, %scevgep628
  %bound1630 = icmp ult ptr %umin626, %scevgep622
  %found.conflict631 = and i1 %bound0629, %bound1630
  br i1 %found.conflict631, label %._crit_edge294.us.us.preheader693, label %vector.ph634

vector.ph634:                                     ; preds = %vector.memcheck620
  %i.ep = add i64 %indvars.iv.next353.lcssa, %n.vec635 ; 2 uses
  %broadcast.splatinsert638 = insertelement <8 x i32> poison, i32 %.1152298.us, i64 0
  %broadcast.splat639 = shufflevector <8 x i32> %broadcast.splatinsert638, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.eq = getelementptr [4 x i8], ptr %i.j, i64 %indvars.iv.next353.lcssa
  br label %vector.body642

vector.body642:                                   ; preds = %vector.body642, %vector.ph634
  %index643 = phi i64 [ 0, %vector.ph634 ], [ %index.next647, %vector.body642 ] ; 2 uses
  %vec.ind644 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph634 ], [ %vec.ind.next648, %vector.body642 ] ; 2 uses
  %i.er = mul <8 x i32> %broadcast.splat637, %vec.ind644
  %i.es = add <8 x i32> %i.er, %broadcast.splat639
  %i.et = mul <8 x i32> %i.es, splat (i32 3)
  %i.eu = add <8 x i32> %i.et, splat (i32 1)
  %i.ev = sext <8 x i32> %i.eu to <8 x i64>
  %wide.gep645 = getelementptr inbounds [4 x i8], ptr %1, <8 x i64> %i.ev
  %wide.masked.gather646 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep645, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !23, !alias.scope !38
  %i.ew = sub nsw <8 x i32> %wide.masked.gather646, %broadcast.splat641
  %i.ex = getelementptr [4 x i8], ptr %i.eq, i64 %index643
  store <8 x i32> %i.ew, ptr %i.ex, align 4, !tbaa !23, !alias.scope !41, !noalias !38
  %index.next647 = add nuw i64 %index643, 8       ; 2 uses
  %vec.ind.next648 = add <8 x i32> %vec.ind644, splat (i32 8)
  %i.ey = icmp eq i64 %index.next647, %n.vec635
  br i1 %i.ey, label %middle.block649, label %vector.body642, !llvm.loop !43

middle.block649:                                  ; preds = %vector.body642
  br i1 %cmp.n650, label %._crit_edge294.us.us.1.preheader, label %._crit_edge294.us.us.preheader693

._crit_edge294.us.us.preheader693:                ; preds = %vector.memcheck620, %vector.scevcheck616, %._crit_edge294.us.us.preheader, %middle.block649
  %indvars.iv354.1.ph = phi i64 [ 0, %vector.memcheck620 ], [ 0, %vector.scevcheck616 ], [ 0, %._crit_edge294.us.us.preheader ], [ %n.vec635, %middle.block649 ] ; 3 uses
  %indvars.iv352.1.ph = phi i64 [ %indvars.iv.next353.lcssa, %vector.memcheck620 ], [ %indvars.iv.next353.lcssa, %vector.scevcheck616 ], [ %indvars.iv.next353.lcssa, %._crit_edge294.us.us.preheader ], [ %i.ep, %middle.block649 ] ; 2 uses
  br i1 %lcmp.mod783.not, label %._crit_edge294.us.us.prol.loopexit, label %._crit_edge294.us.us.prol

._crit_edge294.us.us.prol:                        ; preds = %._crit_edge294.us.us.preheader693, %._crit_edge294.us.us.prol
  %indvars.iv354.1.prol = phi i64 [ %indvars.iv.next355.1.prol, %._crit_edge294.us.us.prol ], [ %indvars.iv354.1.ph, %._crit_edge294.us.us.preheader693 ] ; 3 uses
  %indvars.iv352.1.prol = phi i64 [ %indvars.iv.next353.1.prol, %._crit_edge294.us.us.prol ], [ %indvars.iv352.1.ph, %._crit_edge294.us.us.preheader693 ] ; 2 uses
  %prol.iter784 = phi i64 [ %prol.iter784.next, %._crit_edge294.us.us.prol ], [ 0, %._crit_edge294.us.us.preheader693 ]
  %i.ez = trunc nuw nsw i64 %indvars.iv354.1.prol to i32
  %i.fa = mul i32 %5, %i.ez
  %reass.add.us.us.1.prol = add i32 %i.fa, %.1152298.us
  %reass.mul.us.us.1.prol = mul i32 %reass.add.us.us.1.prol, 3
  %i.fb = add i32 %reass.mul.us.us.1.prol, 1
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !23
  %i.ff = sub nsw i32 %i.fe, %.0144.lcssa
  %indvars.iv.next353.1.prol = add nsw i64 %indvars.iv352.1.prol, 1 ; 3 uses
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.j, i64 %indvars.iv352.1.prol
  store i32 %i.ff, ptr %i.fg, align 4, !tbaa !23
  %indvars.iv.next355.1.prol = add nuw nsw i64 %indvars.iv354.1.prol, 1 ; 2 uses
  %prol.iter784.next = add i64 %prol.iter784, 1   ; 2 uses
  %prol.iter784.cmp.not = icmp eq i64 %prol.iter784.next, %xtraiter782
  br i1 %prol.iter784.cmp.not, label %._crit_edge294.us.us.prol.loopexit, label %._crit_edge294.us.us.prol, !llvm.loop !44

._crit_edge294.us.us.prol.loopexit:               ; preds = %._crit_edge294.us.us.prol, %._crit_edge294.us.us.preheader693
  %indvars.iv354.1.lcssa697.unr = phi i64 [ poison, %._crit_edge294.us.us.preheader693 ], [ %indvars.iv354.1.prol, %._crit_edge294.us.us.prol ]
  %indvars.iv.next353.1.lcssa696.unr = phi i64 [ poison, %._crit_edge294.us.us.preheader693 ], [ %indvars.iv.next353.1.prol, %._crit_edge294.us.us.prol ]
  %indvars.iv354.1.unr = phi i64 [ %indvars.iv354.1.ph, %._crit_edge294.us.us.preheader693 ], [ %indvars.iv.next355.1.prol, %._crit_edge294.us.us.prol ]
  %indvars.iv352.1.unr = phi i64 [ %indvars.iv352.1.ph, %._crit_edge294.us.us.preheader693 ], [ %indvars.iv.next353.1.prol, %._crit_edge294.us.us.prol ]
  %i.fh = sub nsw i64 %indvars.iv354.1.ph, %wide.trip.count359
  %i.fi = icmp ugt i64 %i.fh, -4
  br i1 %i.fi, label %._crit_edge294.us.us.1.preheader, label %._crit_edge294.us.us

._crit_edge294.us.us:                             ; preds = %._crit_edge294.us.us.prol.loopexit, %._crit_edge294.us.us
  %indvars.iv354.1 = phi i64 [ %indvars.iv.next355.1.3, %._crit_edge294.us.us ], [ %indvars.iv354.1.unr, %._crit_edge294.us.us.prol.loopexit ] ; 5 uses
  %indvars.iv352.1 = phi i64 [ %indvars.iv.next353.1.3, %._crit_edge294.us.us ], [ %indvars.iv352.1.unr, %._crit_edge294.us.us.prol.loopexit ] ; 5 uses
  %i.fj = trunc nuw nsw i64 %indvars.iv354.1 to i32
  %i.fk = mul i32 %5, %i.fj
  %reass.add.us.us.1 = add i32 %i.fk, %.1152298.us
  %reass.mul.us.us.1 = mul i32 %reass.add.us.us.1, 3
  %i.fl = add i32 %reass.mul.us.us.1, 1
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fm
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !23
  %i.fp = sub nsw i32 %i.fo, %.0144.lcssa
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.j, i64 %indvars.iv352.1
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !23
  %i.fr = trunc i64 %indvars.iv354.1 to i32
  %i.fs = add i32 %i.fr, 1
  %i.ft = mul i32 %5, %i.fs
  %reass.add.us.us.1.1 = add i32 %i.ft, %.1152298.us
  %reass.mul.us.us.1.1 = mul i32 %reass.add.us.us.1.1, 3
  %i.fu = add i32 %reass.mul.us.us.1.1, 1
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fv
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !23
  %i.fy = sub nsw i32 %i.fx, %.0144.lcssa
  %i.fz = getelementptr [4 x i8], ptr %i.j, i64 %indvars.iv352.1
  %i.ga = getelementptr i8, ptr %i.fz, i64 4
  store i32 %i.fy, ptr %i.ga, align 4, !tbaa !23
  %i.gb = trunc i64 %indvars.iv354.1 to i32
  %i.gc = add i32 %i.gb, 2
  %i.gd = mul i32 %5, %i.gc
  %reass.add.us.us.1.2 = add i32 %i.gd, %.1152298.us
  %reass.mul.us.us.1.2 = mul i32 %reass.add.us.us.1.2, 3
  %i.ge = add i32 %reass.mul.us.us.1.2, 1
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds [4 x i8], ptr %1, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !23
  %i.gi = sub nsw i32 %i.gh, %.0144.lcssa
  %i.gj = getelementptr [4 x i8], ptr %i.j, i64 %indvars.iv352.1
  %i.gk = getelementptr i8, ptr %i.gj, i64 8
  store i32 %i.gi, ptr %i.gk, align 4, !tbaa !23
  %indvars.iv.next355.1.2 = add nuw nsw i64 %indvars.iv354.1, 3 ; 2 uses
  %i.gl = trunc nuw nsw i64 %indvars.iv.next355.1.2 to i32
  %i.gm = mul i32 %5, %i.gl
  %reass.add.us.us.1.3 = add i32 %i.gm, %.1152298.us
  %reass.mul.us.us.1.3 = mul i32 %reass.add.us.us.1.3, 3
  %i.gn = add i32 %reass.mul.us.us.1.3, 1
  %i.go = sext i32 %i.gn to i64
  %i.gp = getelementptr inbounds [4 x i8], ptr %1, i64 %i.go
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !23
  %i.gr = sub nsw i32 %i.gq, %.0144.lcssa
  %indvars.iv.next353.1.3 = add nsw i64 %indvars.iv352.1, 4 ; 2 uses
  %i.gs = getelementptr [4 x i8], ptr %i.j, i64 %indvars.iv352.1
  %i.gt = getelementptr i8, ptr %i.gs, i64 12
  store i32 %i.gr, ptr %i.gt, align 4, !tbaa !23
  %indvars.iv.next355.1.3 = add nuw nsw i64 %indvars.iv354.1, 4 ; 2 uses
  %exitcond360.1.not.3 = icmp eq i64 %indvars.iv.next355.1.3, %wide.trip.count359
  br i1 %exitcond360.1.not.3, label %._crit_edge294.us.us.1.preheader, label %._crit_edge294.us.us, !llvm.loop !45

._crit_edge294.us.us.1.preheader:                 ; preds = %._crit_edge294.us.us.prol.loopexit, %._crit_edge294.us.us, %middle.block649
  %indvars.iv354.1.lcssa = phi i64 [ %ind.escape, %middle.block649 ], [ %indvars.iv354.1.lcssa697.unr, %._crit_edge294.us.us.prol.loopexit ], [ %indvars.iv.next355.1.2, %._crit_edge294.us.us ]
  %indvars.iv.next353.1.lcssa = phi i64 [ %i.ep, %middle.block649 ], [ %indvars.iv.next353.1.lcssa696.unr, %._crit_edge294.us.us.prol.loopexit ], [ %indvars.iv.next353.1.3, %._crit_edge294.us.us ] ; 5 uses
  br i1 %min.iters.check600, label %._crit_edge294.us.us.1.preheader692, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %._crit_edge294.us.us.1.preheader
  %i.gu = add i32 %i.cb, %mul.result
  %i.gv = sub i32 %i.cb, %mul.result
  %i.gw = icmp slt i32 %i.gu, %i.cb
  %i.gx = icmp sgt i32 %i.gv, %i.cb
  %i.gy = select i1 %i.bd, i1 %i.gx, i1 %i.gw
  %.reass869 = or i1 %i.gy, %invariant.op868
  br i1 %.reass869, label %._crit_edge294.us.us.1.preheader692, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %11 = shl i64 %.0146299.us, 2                   ; 2 uses
  %12 = shl i64 %indvars.iv354.lcssa, 2           ; 2 uses
  %i.gz = shl i64 %indvars.iv354.1.lcssa, 2       ; 2 uses
  %13 = getelementptr i8, ptr %i.j, i64 %i.gz
  %14 = getelementptr i8, ptr %13, i64 %12
  %i.ha = getelementptr i8, ptr %14, i64 %11
  %scevgep = getelementptr i8, ptr %i.ha, i64 8
  %15 = getelementptr i8, ptr %i.j, i64 %i.gz
  %16 = getelementptr i8, ptr %15, i64 %12
  %17 = getelementptr i8, ptr %16, i64 %7
  %i.hb = getelementptr i8, ptr %17, i64 8
  %scevgep595 = getelementptr i8, ptr %i.hb, i64 %11
  %bound0 = icmp ult ptr %scevgep, %scevgep599
  %bound1 = icmp ult ptr %umin, %scevgep595
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %._crit_edge294.us.us.1.preheader692, label %vector.ph601

vector.ph601:                                     ; preds = %vector.memcheck
  %i.hc = add i64 %indvars.iv.next353.1.lcssa, %n.vec602 ; 2 uses
  %broadcast.splatinsert605 = insertelement <8 x i32> poison, i32 %.1152298.us, i64 0
  %broadcast.splat606 = shufflevector <8 x i32> %broadcast.splatinsert605, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.hd = getelementptr [4 x i8], ptr %i.j, i64 %indvars.iv.next353.1.lcssa
  br label %vector.body609

vector.body609:                                   ; preds = %vector.body609, %vector.ph601
  %index610 = phi i64 [ 0, %vector.ph601 ], [ %index.next611, %vector.body609 ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph601 ], [ %vec.ind.next, %vector.body609 ] ; 2 uses
  %i.he = mul <8 x i32> %broadcast.splat604, %vec.ind
  %i.hf = add <8 x i32> %i.he, %broadcast.splat606
  %i.hg = mul <8 x i32> %i.hf, splat (i32 3)
  %i.hh = add <8 x i32> %i.hg, splat (i32 2)
  %i.hi = sext <8 x i32> %i.hh to <8 x i64>
  %wide.gep = getelementptr inbounds [4 x i8], ptr %1, <8 x i64> %i.hi
  %wide.masked.gather = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !23, !alias.scope !46
  %i.hj = sub nsw <8 x i32> %wide.masked.gather, %broadcast.splat608
  %i.hk = getelementptr [4 x i8], ptr %i.hd, i64 %index610
  store <8 x i32> %i.hj, ptr %i.hk, align 4, !tbaa !23, !alias.scope !49, !noalias !46
  %index.next611 = add nuw i64 %index610, 8       ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.hl = icmp eq i64 %index.next611, %n.vec602
  br i1 %i.hl, label %middle.block612, label %vector.body609, !llvm.loop !51

middle.block612:                                  ; preds = %vector.body609
  br i1 %cmp.n613, label %._crit_edge294.us.us.2, label %._crit_edge294.us.us.1.preheader692

._crit_edge294.us.us.1.preheader692:              ; preds = %vector.memcheck, %vector.scevcheck, %._crit_edge294.us.us.1.preheader, %middle.block612
  %indvars.iv354.2.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %._crit_edge294.us.us.1.preheader ], [ %n.vec602, %middle.block612 ] ; 3 uses
  %indvars.iv352.2.ph = phi i64 [ %indvars.iv.next353.1.lcssa, %vector.memcheck ], [ %indvars.iv.next353.1.lcssa, %vector.scevcheck ], [ %indvars.iv.next353.1.lcssa, %._crit_edge294.us.us.1.preheader ], [ %i.hc, %middle.block612 ] ; 2 uses
  br i1 %lcmp.mod788.not, label %._crit_edge294.us.us.1.prol.loopexit, label %._crit_edge294.us.us.1.prol

._crit_edge294.us.us.1.prol:                      ; preds = %._crit_edge294.us.us.1.preheader692, %._crit_edge294.us.us.1.prol
  %indvars.iv354.2.prol = phi i64 [ %indvars.iv.next355.2.prol, %._crit_edge294.us.us.1.prol ], [ %indvars.iv354.2.ph, %._crit_edge294.us.us.1.preheader692 ] ; 2 uses
  %indvars.iv352.2.prol = phi i64 [ %indvars.iv.next353.2.prol, %._crit_edge294.us.us.1.prol ], [ %indvars.iv352.2.ph, %._crit_edge294.us.us.1.preheader692 ] ; 2 uses
  %prol.iter789 = phi i64 [ %prol.iter789.next, %._crit_edge294.us.us.1.prol ], [ 0, %._crit_edge294.us.us.1.preheader692 ]
  %i.hm = trunc nuw nsw i64 %indvars.iv354.2.prol to i32
  %i.hn = mul i32 %5, %i.hm
  %reass.add.us.us.2.prol = add i32 %i.hn, %.1152298.us
  %reass.mul.us.us.2.prol = mul i32 %reass.add.us.us.2.prol, 3
  %i.ho = add i32 %reass.mul.us.us.2.prol, 2
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr inbounds [4 x i8], ptr %1, i64 %i.hp
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !23
  %i.hs = sub nsw i32 %i.hr, %.0144.lcssa
  %indvars.iv.next353.2.prol = add nsw i64 %indvars.iv352.2.prol, 1 ; 3 uses
  %i.ht = getelementptr inbounds [4 x i8], ptr %i.j, i64 %indvars.iv352.2.prol
  store i32 %i.hs, ptr %i.ht, align 4, !tbaa !23
  %indvars.iv.next355.2.prol = add nuw nsw i64 %indvars.iv354.2.prol, 1 ; 2 uses
  %prol.iter789.next = add i64 %prol.iter789, 1   ; 2 uses
  %prol.iter789.cmp.not = icmp eq i64 %prol.iter789.next, %xtraiter787
  br i1 %prol.iter789.cmp.not, label %._crit_edge294.us.us.1.prol.loopexit, label %._crit_edge294.us.us.1.prol, !llvm.loop !52

._crit_edge294.us.us.1.prol.loopexit:             ; preds = %._crit_edge294.us.us.1.prol, %._crit_edge294.us.us.1.preheader692
  %indvars.iv.next353.2.lcssa698.unr = phi i64 [ poison, %._crit_edge294.us.us.1.preheader692 ], [ %indvars.iv.next353.2.prol, %._crit_edge294.us.us.1.prol ]
  %indvars.iv354.2.unr = phi i64 [ %indvars.iv354.2.ph, %._crit_edge294.us.us.1.preheader692 ], [ %indvars.iv.next355.2.prol, %._crit_edge294.us.us.1.prol ]
  %indvars.iv352.2.unr = phi i64 [ %indvars.iv352.2.ph, %._crit_edge294.us.us.1.preheader692 ], [ %indvars.iv.next353.2.prol, %._crit_edge294.us.us.1.prol ]
  %i.hu = sub nsw i64 %indvars.iv354.2.ph, %wide.trip.count359
  %i.hv = icmp ugt i64 %i.hu, -4
  br i1 %i.hv, label %._crit_edge294.us.us.2, label %._crit_edge294.us.us.1

._crit_edge294.us.us.1:                           ; preds = %._crit_edge294.us.us.1.prol.loopexit, %._crit_edge294.us.us.1
  %indvars.iv354.2 = phi i64 [ %indvars.iv.next355.2.3, %._crit_edge294.us.us.1 ], [ %indvars.iv354.2.unr, %._crit_edge294.us.us.1.prol.loopexit ] ; 5 uses
  %indvars.iv352.2 = phi i64 [ %indvars.iv.next353.2.3, %._crit_edge294.us.us.1 ], [ %indvars.iv352.2.unr, %._crit_edge294.us.us.1.prol.loopexit ] ; 5 uses
  %i.hw = trunc nuw nsw i64 %indvars.iv354.2 to i32
  %i.hx = mul i32 %5, %i.hw
  %reass.add.us.us.2 = add i32 %i.hx, %.1152298.us
  %reass.mul.us.us.2 = mul i32 %reass.add.us.us.2, 3
  %i.hy = add i32 %reass.mul.us.us.2, 2
  %i.hz = sext i32 %i.hy to i64
  %i.ia = getelementptr inbounds [4 x i8], ptr %1, i64 %i.hz
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !23
  %i.ic = sub nsw i32 %i.ib, %.0144.lcssa
  %i.id = getelementptr inbounds [4 x i8], ptr %i.j, i64 %indvars.iv352.2
  store i32 %i.ic, ptr %i.id, align 4, !tbaa !23
  %i.ie = trunc i64 %indvars.iv354.2 to i32
  %i.if = add i32 %i.ie, 1
  %i.ig = mul i32 %5, %i.if
  %reass.add.us.us.2.1 = add i32 %i.ig, %.1152298.us
  %reass.mul.us.us.2.1 = mul i32 %reass.add.us.us.2.1, 3
  %i.ih = add i32 %reass.mul.us.us.2.1, 2
  %i.ii = sext i32 %i.ih to i64
  %i.ij = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ii
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !23
  %i.il = sub nsw i32 %i.ik, %.0144.lcssa
  %i.im = getelementptr [4 x i8], ptr %i.j, i64 %indvars.iv352.2
  %i.in = getelementptr i8, ptr %i.im, i64 4
  store i32 %i.il, ptr %i.in, align 4, !tbaa !23
  %i.io = trunc i64 %indvars.iv354.2 to i32
  %i.ip = add i32 %i.io, 2
  %i.iq = mul i32 %5, %i.ip
  %reass.add.us.us.2.2 = add i32 %i.iq, %.1152298.us
  %reass.mul.us.us.2.2 = mul i32 %reass.add.us.us.2.2, 3
  %i.ir = add i32 %reass.mul.us.us.2.2, 2
  %i.is = sext i32 %i.ir to i64
  %i.it = getelementptr inbounds [4 x i8], ptr %1, i64 %i.is
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !23
  %i.iv = sub nsw i32 %i.iu, %.0144.lcssa
  %i.iw = getelementptr [4 x i8], ptr %i.j, i64 %indvars.iv352.2
  %i.ix = getelementptr i8, ptr %i.iw, i64 8
  store i32 %i.iv, ptr %i.ix, align 4, !tbaa !23
  %i.iy = trunc i64 %indvars.iv354.2 to i32
  %i.iz = add i32 %i.iy, 3
  %i.ja = mul i32 %5, %i.iz
  %reass.add.us.us.2.3 = add i32 %i.ja, %.1152298.us
  %reass.mul.us.us.2.3 = mul i32 %reass.add.us.us.2.3, 3
  %i.jb = add i32 %reass.mul.us.us.2.3, 2
  %i.jc = sext i32 %i.jb to i64
  %i.jd = getelementptr inbounds [4 x i8], ptr %1, i64 %i.jc
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !23
  %i.jf = sub nsw i32 %i.je, %.0144.lcssa
  %indvars.iv.next353.2.3 = add nsw i64 %indvars.iv352.2, 4 ; 2 uses
  %i.jg = getelementptr [4 x i8], ptr %i.j, i64 %indvars.iv352.2
  %i.jh = getelementptr i8, ptr %i.jg, i64 12
  store i32 %i.jf, ptr %i.jh, align 4, !tbaa !23
  %indvars.iv.next355.2.3 = add nuw nsw i64 %indvars.iv354.2, 4 ; 2 uses
  %exitcond360.2.not.3 = icmp eq i64 %indvars.iv.next355.2.3, %wide.trip.count359
  br i1 %exitcond360.2.not.3, label %._crit_edge294.us.us.2, label %._crit_edge294.us.us.1, !llvm.loop !53

._crit_edge294.us.us.2:                           ; preds = %._crit_edge294.us.us.1.prol.loopexit, %._crit_edge294.us.us.1, %middle.block612
  %indvars.iv.next353.2.lcssa = phi i64 [ %i.hc, %middle.block612 ], [ %indvars.iv.next353.2.lcssa698.unr, %._crit_edge294.us.us.1.prol.loopexit ], [ %indvars.iv.next353.2.3, %._crit_edge294.us.us.1 ]
  %i.ji = add nuw nsw i32 %.1152298.us, 1         ; 2 uses
  %exitcond362.not = icmp eq i32 %i.ji, %5
  br i1 %exitcond362.not, label %._crit_edge300, label %.preheader237.us, !llvm.loop !54

._crit_edge300:                                   ; preds = %._crit_edge294.us.us.2, %._crit_edge
  %i.jj = icmp sgt i32 %6, 4
  %i.jk = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  br i1 %i.jj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge300
  tail call void @bwlzh_compress(ptr noundef %i.j, i32 noundef %i.g, ptr noundef nonnull %i.jk, ptr noundef nonnull %2) #11
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge300
  tail call void @bwlzh_compress_no_lz77(ptr noundef %i.j, i32 noundef %i.g, ptr noundef nonnull %i.jk, ptr noundef nonnull %2) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.jl = load i32, ptr %2, align 4, !tbaa !23
  %i.jm = add nsw i32 %i.jl, 4
  store i32 %i.jm, ptr %2, align 4, !tbaa !23
  tail call void @free(ptr noundef %i.j) #11
  br label %bb.aj

bb.f:                                             ; preds = %bb.a
  switch i32 %3, label %bb.i [
    i32 10, label %bb.g
    i32 5, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.jn = tail call ptr @Ptngc_pack_array_xtc3(ptr noundef %1, ptr noundef %2, i32 noundef %5, i32 noundef %6) #11
  br label %bb.aj

bb.h:                                             ; preds = %bb.f
  %i.jo = tail call ptr @Ptngc_pack_array_xtc2(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11
  br label %bb.aj

bb.i:                                             ; preds = %bb.f
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store i32 0, ptr %i.jp, align 4, !tbaa !55
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.jq, align 4, !tbaa !56
  %i.jr = load i32, ptr %2, align 4, !tbaa !23
  %i.js = shl nsw i32 %i.jr, 3
  %i.jt = sext i32 %i.js to i64
  %i.ju = tail call ptr @Ptngc_warnmalloc_x(i64 noundef %i.jt, ptr noundef nonnull @.str, i32 noundef 335) #11 ; 6 uses
  %i.jv = load i32, ptr %2, align 4, !tbaa !23    ; 7 uses
  switch i32 %3, label %.preheader238 [
    i32 7, label %bb.j
    i32 3, label %bb.j
    i32 2, label %bb.j
  ]

.preheader238:                                    ; preds = %bb.i
  %i.jw = icmp sgt i32 %i.jv, 0
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  br i1 %i.jw, label %.lr.ph285, label %.preheader238..critedge165_crit_edge

.preheader238..critedge165_crit_edge:             ; preds = %.preheader238
  %.pre = load i32, ptr %i.jx, align 4, !tbaa !8
  br label %.critedge165

bb.j:                                             ; preds = %bb.i, %bb.i, %bb.i
  %i.jy = udiv i32 %i.jv, 3
  %i.jz = shl nuw i32 1, %4                       ; 6 uses
  %i.ka = icmp sgt i32 %i.jv, 0
  br i1 %i.ka, label %iter.check, label %.lr.ph.preheader.i

iter.check:                                       ; preds = %bb.j
  %wide.trip.count = zext nneg i32 %i.jv to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %i.jv, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

end_hunk_0
begin_hunk_1_@Ptngc_unpack_array:bb.a
  %.not69.us.1.i.3 = icmp ne i32 %i.dq, 0         ; 2 uses
  %i.du = zext i1 %.not69.us.1.i.3 to i32
  %spec.select73.us.1.i.3 = or disjoint i32 %i.dt, %i.du ; 3 uses
  %i.dv = lshr i32 %.563.us.1.i.2, 1              ; 2 uses
  %.not70.us.1.i.3 = icmp eq i32 %i.dv, 0         ; 2 uses
  %.563.us.1.i.3 = select i1 %.not70.us.1.i.3, i32 128, i32 %i.dv ; 3 uses
  %.5.idx.us.1.i.3 = zext i1 %.not70.us.1.i.3 to i64
  %.5.us.1.i.3 = getelementptr inbounds nuw i8, ptr %.5.us.1.i.2, i64 %.5.idx.us.1.i.3 ; 3 uses
  %niter171.next.3 = add i32 %niter171, 4         ; 2 uses
  %niter171.ncmp.3 = icmp eq i32 %niter171.next.3, %unroll_iter170
  br i1 %niter171.ncmp.3, label %._crit_edge14.us.1.i.unr-lcssa, label %bb.g, !llvm.loop !71

._crit_edge14.us.1.i.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod164.not = icmp eq i32 %xtraiter162, 0
  br i1 %lcmp.mod164.not, label %._crit_edge14.us.1.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge14.us.1.i.unr-lcssa, %._crit_edge14.us.i
  %.012.us.1.i.epil.init = phi i32 [ 0, %._crit_edge14.us.i ], [ %spec.select73.us.1.i.3, %._crit_edge14.us.1.i.unr-lcssa ]
  %.410.us.1.i.epil.init = phi ptr [ %.5.us.i.lcssa, %._crit_edge14.us.i ], [ %.5.us.1.i.3, %._crit_edge14.us.1.i.unr-lcssa ]
  %.4629.us.1.i.epil.init = phi i32 [ %.563.us.i.lcssa, %._crit_edge14.us.i ], [ %.563.us.1.i.3, %._crit_edge14.us.1.i.unr-lcssa ]
  %lcmp.mod169 = icmp ne i32 %xtraiter162, 0
  tail call void @llvm.assume(i1 %lcmp.mod169)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %.012.us.1.i.epil = phi i32 [ %.012.us.1.i.epil.init, %.epil.preheader ], [ %spec.select73.us.1.i.epil, %bb.h ]
  %.410.us.1.i.epil = phi ptr [ %.410.us.1.i.epil.init, %.epil.preheader ], [ %.5.us.1.i.epil, %bb.h ] ; 2 uses
  %.4629.us.1.i.epil = phi i32 [ %.4629.us.1.i.epil.init, %.epil.preheader ], [ %.563.us.1.i.epil, %bb.h ] ; 2 uses
  %epil.iter163 = phi i32 [ 0, %.epil.preheader ], [ %epil.iter163.next, %bb.h ]
  %i.dw = load i8, ptr %.410.us.1.i.epil, align 1, !tbaa !14
  %i.dx = zext i8 %i.dw to i32
  %i.dy = and i32 %.4629.us.1.i.epil, %i.dx
  %i.dz = shl i32 %.012.us.1.i.epil, 1
  %.not69.us.1.i.epil = icmp ne i32 %i.dy, 0      ; 2 uses
  %i.ea = zext i1 %.not69.us.1.i.epil to i32
  %spec.select73.us.1.i.epil = or disjoint i32 %i.dz, %i.ea ; 2 uses
  %i.eb = lshr i32 %.4629.us.1.i.epil, 1          ; 2 uses
  %.not70.us.1.i.epil = icmp eq i32 %i.eb, 0      ; 2 uses
  %.563.us.1.i.epil = select i1 %.not70.us.1.i.epil, i32 128, i32 %i.eb ; 2 uses
  %.5.idx.us.1.i.epil = zext i1 %.not70.us.1.i.epil to i64
  %.5.us.1.i.epil = getelementptr inbounds nuw i8, ptr %.410.us.1.i.epil, i64 %.5.idx.us.1.i.epil ; 2 uses
  %epil.iter163.next = add i32 %epil.iter163, 1   ; 2 uses
  %epil.iter163.cmp.not = icmp eq i32 %epil.iter163.next, %xtraiter162
  br i1 %epil.iter163.cmp.not, label %._crit_edge14.us.1.i, label %bb.h, !llvm.loop !73

._crit_edge14.us.1.i:                             ; preds = %bb.h, %._crit_edge14.us.1.i.unr-lcssa
  %.not69.us.1.i.lcssa = phi i1 [ %.not69.us.1.i.3, %._crit_edge14.us.1.i.unr-lcssa ], [ %.not69.us.1.i.epil, %bb.h ]
  %spec.select73.us.1.i.lcssa = phi i32 [ %spec.select73.us.1.i.3, %._crit_edge14.us.1.i.unr-lcssa ], [ %spec.select73.us.1.i.epil, %bb.h ]
  %.563.us.1.i.lcssa = phi i32 [ %.563.us.1.i.3, %._crit_edge14.us.1.i.unr-lcssa ], [ %.563.us.1.i.epil, %bb.h ] ; 2 uses
  %.5.us.1.i.lcssa = phi ptr [ %.5.us.1.i.3, %._crit_edge14.us.1.i.unr-lcssa ], [ %.5.us.1.i.epil, %bb.h ] ; 2 uses
  %i.ec = add i32 %spec.select73.us.1.i.lcssa, 1
  %i.ed = lshr i32 %i.ec, 1                       ; 2 uses
  %i.ee = sub nsw i32 0, %i.ed
  %spec.select74.us.1.i = select i1 %.not69.us.1.i.lcssa, i32 %i.ed, i32 %i.ee
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  store i32 %spec.select74.us.1.i, ptr %i.ef, align 4, !tbaa !23
  %xtraiter173 = and i32 %.051.i, 3               ; 3 uses
  %i.eg = icmp ult i32 %.051.i, 4
  br i1 %i.eg, label %.epil.preheader172, label %._crit_edge14.us.1.i.new

._crit_edge14.us.1.i.new:                         ; preds = %._crit_edge14.us.1.i
  %unroll_iter181 = and i32 %.051.i, -4
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %._crit_edge14.us.1.i.new
  %.012.us.2.i = phi i32 [ 0, %._crit_edge14.us.1.i.new ], [ %spec.select73.us.2.i.3, %bb.i ]
  %.410.us.2.i = phi ptr [ %.5.us.1.i.lcssa, %._crit_edge14.us.1.i.new ], [ %.5.us.2.i.3, %bb.i ] ; 2 uses
  %.4629.us.2.i = phi i32 [ %.563.us.1.i.lcssa, %._crit_edge14.us.1.i.new ], [ %.563.us.2.i.3, %bb.i ] ; 2 uses
  %niter182 = phi i32 [ 0, %._crit_edge14.us.1.i.new ], [ %niter182.next.3, %bb.i ]
  %i.eh = load i8, ptr %.410.us.2.i, align 1, !tbaa !14
  %i.ei = zext i8 %i.eh to i32
  %i.ej = and i32 %.4629.us.2.i, %i.ei
  %.not69.us.2.i.not = icmp eq i32 %i.ej, 0
  %i.ek = lshr i32 %.4629.us.2.i, 1               ; 2 uses
  %.not70.us.2.i = icmp eq i32 %i.ek, 0           ; 2 uses
  %.563.us.2.i = select i1 %.not70.us.2.i, i32 128, i32 %i.ek ; 2 uses
  %.5.idx.us.2.i = zext i1 %.not70.us.2.i to i64
  %.5.us.2.i = getelementptr inbounds nuw i8, ptr %.410.us.2.i, i64 %.5.idx.us.2.i ; 2 uses
  %i.el = load i8, ptr %.5.us.2.i, align 1, !tbaa !14
  %i.em = zext i8 %i.el to i32
  %i.en = and i32 %.563.us.2.i, %i.em
  %i.eo = shl i32 %.012.us.2.i, 2
  %i.ep = select i1 %.not69.us.2.i.not, i32 0, i32 2
  %i.eq = or disjoint i32 %i.eo, %i.ep
  %.not69.us.2.i.1 = icmp ne i32 %i.en, 0
  %i.er = zext i1 %.not69.us.2.i.1 to i32
  %spec.select73.us.2.i.1 = or disjoint i32 %i.eq, %i.er
  %i.es = lshr i32 %.563.us.2.i, 1                ; 2 uses
  %.not70.us.2.i.1 = icmp eq i32 %i.es, 0         ; 2 uses
  %.563.us.2.i.1 = select i1 %.not70.us.2.i.1, i32 128, i32 %i.es ; 2 uses
  %.5.idx.us.2.i.1 = zext i1 %.not70.us.2.i.1 to i64
  %.5.us.2.i.1 = getelementptr inbounds nuw i8, ptr %.5.us.2.i, i64 %.5.idx.us.2.i.1 ; 2 uses
  %i.et = load i8, ptr %.5.us.2.i.1, align 1, !tbaa !14
  %i.eu = zext i8 %i.et to i32
  %i.ev = and i32 %.563.us.2.i.1, %i.eu
  %.not69.us.2.i.2.not = icmp eq i32 %i.ev, 0
  %i.ew = lshr i32 %.563.us.2.i.1, 1              ; 2 uses
  %.not70.us.2.i.2 = icmp eq i32 %i.ew, 0         ; 2 uses
  %.563.us.2.i.2 = select i1 %.not70.us.2.i.2, i32 128, i32 %i.ew ; 2 uses
  %.5.idx.us.2.i.2 = zext i1 %.not70.us.2.i.2 to i64
  %.5.us.2.i.2 = getelementptr inbounds nuw i8, ptr %.5.us.2.i.1, i64 %.5.idx.us.2.i.2 ; 2 uses
  %i.ex = load i8, ptr %.5.us.2.i.2, align 1, !tbaa !14
  %i.ey = zext i8 %i.ex to i32
  %i.ez = and i32 %.563.us.2.i.2, %i.ey
  %i.fa = shl i32 %spec.select73.us.2.i.1, 2
  %i.fb = select i1 %.not69.us.2.i.2.not, i32 0, i32 2
  %i.fc = or disjoint i32 %i.fa, %i.fb
  %.not69.us.2.i.3 = icmp ne i32 %i.ez, 0         ; 2 uses
  %i.fd = zext i1 %.not69.us.2.i.3 to i32
  %spec.select73.us.2.i.3 = or disjoint i32 %i.fc, %i.fd ; 3 uses
  %i.fe = lshr i32 %.563.us.2.i.2, 1              ; 2 uses
  %.not70.us.2.i.3 = icmp eq i32 %i.fe, 0         ; 2 uses
  %.563.us.2.i.3 = select i1 %.not70.us.2.i.3, i32 128, i32 %i.fe ; 3 uses
  %.5.idx.us.2.i.3 = zext i1 %.not70.us.2.i.3 to i64
  %.5.us.2.i.3 = getelementptr inbounds nuw i8, ptr %.5.us.2.i.2, i64 %.5.idx.us.2.i.3 ; 3 uses
  %niter182.next.3 = add i32 %niter182, 4         ; 2 uses
  %niter182.ncmp.3 = icmp eq i32 %niter182.next.3, %unroll_iter181
  br i1 %niter182.ncmp.3, label %._crit_edge14.us.2.i.unr-lcssa, label %bb.i, !llvm.loop !71

._crit_edge14.us.2.i.unr-lcssa:                   ; preds = %bb.i
  %lcmp.mod175.not = icmp eq i32 %xtraiter173, 0
  br i1 %lcmp.mod175.not, label %._crit_edge14.us.2.i, label %.epil.preheader172

.epil.preheader172:                               ; preds = %._crit_edge14.us.2.i.unr-lcssa, %._crit_edge14.us.1.i
  %.012.us.2.i.epil.init = phi i32 [ 0, %._crit_edge14.us.1.i ], [ %spec.select73.us.2.i.3, %._crit_edge14.us.2.i.unr-lcssa ]
  %.410.us.2.i.epil.init = phi ptr [ %.5.us.1.i.lcssa, %._crit_edge14.us.1.i ], [ %.5.us.2.i.3, %._crit_edge14.us.2.i.unr-lcssa ]
  %.4629.us.2.i.epil.init = phi i32 [ %.563.us.1.i.lcssa, %._crit_edge14.us.1.i ], [ %.563.us.2.i.3, %._crit_edge14.us.2.i.unr-lcssa ]
  %lcmp.mod180 = icmp ne i32 %xtraiter173, 0
  tail call void @llvm.assume(i1 %lcmp.mod180)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader172
  %.012.us.2.i.epil = phi i32 [ %.012.us.2.i.epil.init, %.epil.preheader172 ], [ %spec.select73.us.2.i.epil, %bb.j ]
  %.410.us.2.i.epil = phi ptr [ %.410.us.2.i.epil.init, %.epil.preheader172 ], [ %.5.us.2.i.epil, %bb.j ] ; 2 uses
  %.4629.us.2.i.epil = phi i32 [ %.4629.us.2.i.epil.init, %.epil.preheader172 ], [ %.563.us.2.i.epil, %bb.j ] ; 2 uses
  %epil.iter174 = phi i32 [ 0, %.epil.preheader172 ], [ %epil.iter174.next, %bb.j ]
  %i.ff = load i8, ptr %.410.us.2.i.epil, align 1, !tbaa !14
  %i.fg = zext i8 %i.ff to i32
  %i.fh = and i32 %.4629.us.2.i.epil, %i.fg
  %i.fi = shl i32 %.012.us.2.i.epil, 1
  %.not69.us.2.i.epil = icmp ne i32 %i.fh, 0      ; 2 uses
  %i.fj = zext i1 %.not69.us.2.i.epil to i32
  %spec.select73.us.2.i.epil = or disjoint i32 %i.fi, %i.fj ; 2 uses
  %i.fk = lshr i32 %.4629.us.2.i.epil, 1          ; 2 uses
  %.not70.us.2.i.epil = icmp eq i32 %i.fk, 0      ; 2 uses
  %.563.us.2.i.epil = select i1 %.not70.us.2.i.epil, i32 128, i32 %i.fk ; 2 uses
  %.5.idx.us.2.i.epil = zext i1 %.not70.us.2.i.epil to i64
  %.5.us.2.i.epil = getelementptr inbounds nuw i8, ptr %.410.us.2.i.epil, i64 %.5.idx.us.2.i.epil ; 2 uses
  %epil.iter174.next = add i32 %epil.iter174, 1   ; 2 uses
  %epil.iter174.cmp.not = icmp eq i32 %epil.iter174.next, %xtraiter173
  br i1 %epil.iter174.cmp.not, label %._crit_edge14.us.2.i, label %bb.j, !llvm.loop !74

._crit_edge14.us.2.i:                             ; preds = %bb.j, %._crit_edge14.us.2.i.unr-lcssa
  %.not69.us.2.i.lcssa = phi i1 [ %.not69.us.2.i.3, %._crit_edge14.us.2.i.unr-lcssa ], [ %.not69.us.2.i.epil, %bb.j ]
  %spec.select73.us.2.i.lcssa = phi i32 [ %spec.select73.us.2.i.3, %._crit_edge14.us.2.i.unr-lcssa ], [ %spec.select73.us.2.i.epil, %bb.j ]
  %.563.us.2.i.lcssa = phi i32 [ %.563.us.2.i.3, %._crit_edge14.us.2.i.unr-lcssa ], [ %.563.us.2.i.epil, %bb.j ]
  %.5.us.2.i.lcssa = phi ptr [ %.5.us.2.i.3, %._crit_edge14.us.2.i.unr-lcssa ], [ %.5.us.2.i.epil, %bb.j ]
  %i.fl = add i32 %spec.select73.us.2.i.lcssa, 1
  %i.fm = lshr i32 %i.fl, 1                       ; 2 uses
  %i.fn = sub nsw i32 0, %i.fm
  %spec.select74.us.2.i = select i1 %.not69.us.2.i.lcssa, i32 %i.fm, i32 %i.fn
  %i.fo = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i32 %spec.select74.us.2.i, ptr %i.fo, align 4, !tbaa !23
  br label %.split22.us.i

.split22.us.i:                                    ; preds = %._crit_edge14.us.2.i, %.preheader.preheader.i45
  %.us-phi.i = phi i32 [ %.260.1.i, %.preheader.preheader.i45 ], [ %.563.us.2.i.lcssa, %._crit_edge14.us.2.i ]
  %.us-phi23.i = phi ptr [ %.2.1.i, %.preheader.preheader.i45 ], [ %.5.us.2.i.lcssa, %._crit_edge14.us.2.i ]
  %indvar.next.i = add nuw nsw i64 %indvar.i, 1   ; 2 uses
  %exitcond34.not.i = icmp eq i64 %indvar.next.i, %wide.trip.count.i43
  br i1 %exitcond34.not.i, label %unpack_array_stop_bits.exit, label %.preheader1.i, !llvm.loop !75

bb.k:                                             ; preds = %bb.a
  %i.fp = tail call i32 @Ptngc_unpack_array_xtc2(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #11
  br label %unpack_array_stop_bits.exit

bb.l:                                             ; preds = %bb.a
  %i.fq = and i32 %4, -2
  %or.cond7 = icmp eq i32 %i.fq, 8
  br i1 %or.cond7, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.fr = sext i32 %3 to i64
  %i.fs = shl nsw i64 %i.fr, 2
  %i.ft = tail call ptr @Ptngc_warnmalloc_x(i64 noundef %i.fs, ptr noundef nonnull @.str, i32 noundef 570) #11 ; 26 uses
  %i.fu = sdiv i32 %3, %6                         ; 5 uses
  %i.fv = load i32, ptr %1, align 1               ; 18 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 4
  tail call void @bwlzh_decompress(ptr noundef nonnull %i.fw, i32 noundef %3, ptr noundef %i.ft) #11
  %i.fx = icmp sgt i32 %6, 0
  %i.fy = icmp sgt i32 %i.fu, 2
  %or.cond.i = and i1 %i.fx, %i.fy
  br i1 %or.cond.i, label %.preheader1.us.preheader.i, label %unpack_array_bwlzh.exit

.preheader1.us.preheader.i:                       ; preds = %bb.m
  %i.fz = udiv i32 %i.fu, 3
  %wide.trip.count.i47 = zext nneg i32 %i.fz to i64 ; 20 uses
  %i.ga = add nsw i64 %wide.trip.count.i47, -1    ; 3 uses
  %i.gb = mul i32 %6, 3                           ; 3 uses
  %i.gc = mul i32 %6, -3
  %7 = shl nuw nsw i64 %wide.trip.count.i47, 2
  %i.gd = sext i32 %i.gb to i64
  %i.ge = mul nsw i64 %i.ga, %i.gd
  %i.gf = shl i64 %i.ge, 2
  %scevgep64 = getelementptr i8, ptr %2, i64 %i.gf
  %i.gg = add nsw i64 %wide.trip.count.i47, -1    ; 5 uses
  %i.gh = mul i32 %6, 3                           ; 5 uses
  %i.gi = mul i32 %6, -3
  %8 = shl nuw nsw i64 %wide.trip.count.i47, 2
  %i.gj = sext i32 %i.gh to i64
  %i.gk = mul nsw i64 %i.gg, %i.gj
  %i.gl = shl i64 %i.gk, 2                        ; 2 uses
  %scevgep80 = getelementptr i8, ptr %2, i64 %i.gl
  %i.gm = mul i32 %6, -3
  %i.gn = shl nuw nsw i64 %wide.trip.count.i47, 2
  %scevgep116 = getelementptr i8, ptr %i.ft, i64 %i.gn
  %scevgep118 = getelementptr i8, ptr %2, i64 %i.gl
  %min.iters.check128 = icmp ult i32 %i.fu, 72
  %i.go = icmp slt i32 %i.gh, 0                   ; 2 uses
  %i.gp = select i1 %i.go, i32 %i.gm, i32 %i.gh
  %i.gq = trunc nsw i64 %i.gg to i32
  %mul111 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.gp, i32 %i.gq) ; 2 uses
  %mul.result112 = extractvalue { i32, i1 } %mul111, 0 ; 2 uses
  %mul.overflow113 = extractvalue { i32, i1 } %mul111, 1
  %i.gr = icmp ugt i64 %i.gg, 4294967295
  %invariant.op = or i1 %mul.overflow113, %i.gr
  %n.vec130 = and i64 %wide.trip.count.i47, 1073741816 ; 5 uses
  %broadcast.splatinsert133 = insertelement <8 x i32> poison, i32 %i.fv, i64 0
  %broadcast.splat134 = shufflevector <8 x i32> %broadcast.splatinsert133, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert135 = insertelement <8 x i32> poison, i32 %6, i64 0
  %broadcast.splat136 = shufflevector <8 x i32> %broadcast.splatinsert135, <8 x i32> poison, <8 x i32> zeroinitializer
  %ind.escape145 = add nsw i64 %n.vec130, -1
  %cmp.n146 = icmp eq i64 %n.vec130, %wide.trip.count.i47
  %xtraiter192 = and i64 %wide.trip.count.i47, 3  ; 2 uses
  %lcmp.mod193.not = icmp eq i64 %xtraiter192, 0
  %min.iters.check90 = icmp ult i32 %i.fu, 72
  %i.gs = icmp slt i32 %i.gh, 0                   ; 2 uses
  %i.gt = select i1 %i.gs, i32 %i.gi, i32 %i.gh
  %i.gu = trunc nsw i64 %i.gg to i32
  %mul74 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.gt, i32 %i.gu) ; 2 uses
  %mul.result75 = extractvalue { i32, i1 } %mul74, 0 ; 2 uses
  %mul.overflow76 = extractvalue { i32, i1 } %mul74, 1
  %i.gv = icmp ugt i64 %i.gg, 4294967295
  %invariant.op201 = or i1 %mul.overflow76, %i.gv
  %invariant.gep = getelementptr i8, ptr %i.ft, i64 %8
  %n.vec92 = and i64 %wide.trip.count.i47, 1073741816 ; 5 uses
  %broadcast.splatinsert93 = insertelement <8 x i32> poison, i32 %i.fv, i64 0
  %broadcast.splat94 = shufflevector <8 x i32> %broadcast.splatinsert93, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert95 = insertelement <8 x i32> poison, i32 %6, i64 0
  %broadcast.splat96 = shufflevector <8 x i32> %broadcast.splatinsert95, <8 x i32> poison, <8 x i32> zeroinitializer
  %ind.escape = add nsw i64 %n.vec92, -1
  %cmp.n107 = icmp eq i64 %n.vec92, %wide.trip.count.i47
  %xtraiter194 = and i64 %wide.trip.count.i47, 3  ; 2 uses
  %lcmp.mod195.not = icmp eq i64 %xtraiter194, 0
  %min.iters.check = icmp ult i32 %i.fu, 72
  %i.gw = icmp slt i32 %i.gb, 0                   ; 2 uses
  %i.gx = select i1 %i.gw, i32 %i.gc, i32 %i.gb
  %i.gy = trunc nsw i64 %i.ga to i32
  %mul = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.gx, i32 %i.gy) ; 2 uses
  %mul.result = extractvalue { i32, i1 } %mul, 0  ; 2 uses
  %mul.overflow = extractvalue { i32, i1 } %mul, 1
  %i.gz = icmp ugt i64 %i.ga, 4294967295
  %invariant.op203 = or i1 %mul.overflow, %i.gz
  %n.vec = and i64 %wide.trip.count.i47, 1073741816 ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.fv, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert68 = insertelement <8 x i32> poison, i32 %6, i64 0
  %broadcast.splat69 = shufflevector <8 x i32> %broadcast.splatinsert68, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i47
  %xtraiter197 = and i64 %wide.trip.count.i47, 3  ; 2 uses
  %lcmp.mod198.not = icmp eq i64 %xtraiter197, 0
  br label %.preheader1.us.i

.preheader1.us.i:                                 ; preds = %._crit_edge.us.us.2.i, %.preheader1.us.preheader.i
  %.07.us.i = phi i32 [ %i.pb, %._crit_edge.us.us.2.i ], [ 0, %.preheader1.us.preheader.i ] ; 24 uses
  %.0286.us.i = phi i64 [ %indvars.iv.next.2.i.lcssa, %._crit_edge.us.us.2.i ], [ 0, %.preheader1.us.preheader.i ] ; 8 uses
  %i.ha = mul i32 %.07.us.i, 3
  %i.hb = sext i32 %i.ha to i64
  %i.hc = shl nsw i64 %i.hb, 2                    ; 2 uses
  %scevgep119 = getelementptr i8, ptr %scevgep118, i64 %i.hc ; 4 uses
  %scevgep120 = getelementptr i8, ptr %2, i64 %i.hc ; 4 uses
  %i.hd = icmp ult ptr %scevgep119, %scevgep120
  %umin121 = select i1 %i.hd, ptr %scevgep119, ptr %scevgep120
  %i.he = icmp ugt ptr %scevgep119, %scevgep120
  %umax122 = select i1 %i.he, ptr %scevgep119, ptr %scevgep120
  %scevgep123 = getelementptr i8, ptr %umax122, i64 4
  %i.hf = mul i32 %.07.us.i, 3                    ; 5 uses
  %i.hg = add i32 %i.hf, 1
  %i.hh = sext i32 %i.hg to i64
  %i.hi = shl nsw i64 %i.hh, 2                    ; 2 uses
  %scevgep81 = getelementptr i8, ptr %scevgep80, i64 %i.hi ; 4 uses
  %scevgep82 = getelementptr i8, ptr %2, i64 %i.hi ; 4 uses
  %i.hj = icmp ult ptr %scevgep81, %scevgep82
  %umin83 = select i1 %i.hj, ptr %scevgep81, ptr %scevgep82
  %i.hk = icmp ugt ptr %scevgep81, %scevgep82
  %umax84 = select i1 %i.hk, ptr %scevgep81, ptr %scevgep82
  %scevgep85 = getelementptr i8, ptr %umax84, i64 4
  %i.hl = mul i32 %.07.us.i, 3
  %i.hm = add i32 %i.hl, 1                        ; 4 uses
  %i.hn = mul i32 %.07.us.i, 3
  %i.ho = add i32 %i.hn, 2
  %i.hp = sext i32 %i.ho to i64
  %i.hq = shl nsw i64 %i.hp, 2                    ; 2 uses
  %scevgep65 = getelementptr i8, ptr %scevgep64, i64 %i.hq ; 4 uses
  %scevgep66 = getelementptr i8, ptr %2, i64 %i.hq ; 4 uses
  %i.hr = icmp ult ptr %scevgep65, %scevgep66
  %umin = select i1 %i.hr, ptr %scevgep65, ptr %scevgep66
  %i.hs = icmp ugt ptr %scevgep65, %scevgep66
  %umax = select i1 %i.hs, ptr %scevgep65, ptr %scevgep66
  %scevgep67 = getelementptr i8, ptr %umax, i64 4
  %i.ht = mul i32 %.07.us.i, 3
  %i.hu = add i32 %i.ht, 2                        ; 4 uses
  br i1 %min.iters.check128, label %scalar.ph127.preheader, label %vector.scevcheck110

vector.scevcheck110:                              ; preds = %.preheader1.us.i
  %i.hv = add i32 %i.hf, %mul.result112
  %i.hw = sub i32 %i.hf, %mul.result112
  %i.hx = icmp slt i32 %i.hv, %i.hf
  %i.hy = icmp sgt i32 %i.hw, %i.hf
  %i.hz = select i1 %i.go, i1 %i.hy, i1 %i.hx
  %.reass = or i1 %i.hz, %invariant.op
  br i1 %.reass, label %scalar.ph127.preheader, label %vector.memcheck114

vector.memcheck114:                               ; preds = %vector.scevcheck110
  %i.ia = shl i64 %.0286.us.i, 2                  ; 2 uses
  %scevgep115 = getelementptr i8, ptr %i.ft, i64 %i.ia
  %scevgep117 = getelementptr i8, ptr %scevgep116, i64 %i.ia
  %bound0124 = icmp ult ptr %scevgep115, %scevgep123
  %bound1125 = icmp ult ptr %umin121, %scevgep117
  %found.conflict126 = and i1 %bound0124, %bound1125
  br i1 %found.conflict126, label %scalar.ph127.preheader, label %vector.ph129

vector.ph129:                                     ; preds = %vector.memcheck114
  %i.ib = add i64 %.0286.us.i, %n.vec130          ; 2 uses
  %broadcast.splatinsert131 = insertelement <8 x i32> poison, i32 %.07.us.i, i64 0
  %broadcast.splat132 = shufflevector <8 x i32> %broadcast.splatinsert131, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ic = getelementptr [4 x i8], ptr %i.ft, i64 %.0286.us.i
  br label %vector.body137

vector.body137:                                   ; preds = %vector.body137, %vector.ph129
  %index138 = phi i64 [ 0, %vector.ph129 ], [ %index.next142, %vector.body137 ] ; 2 uses
  %vec.ind139 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph129 ], [ %vec.ind.next143, %vector.body137 ] ; 2 uses
  %i.id = getelementptr [4 x i8], ptr %i.ic, i64 %index138
  %wide.load140 = load <8 x i32>, ptr %i.id, align 4, !tbaa !23, !alias.scope !76, !noalias !79
  %i.ie = sub nsw <8 x i32> %wide.load140, %broadcast.splat134
  %i.if = mul <8 x i32> %broadcast.splat136, %vec.ind139
  %i.ig = add <8 x i32> %i.if, %broadcast.splat132
  %i.ih = mul <8 x i32> %i.ig, splat (i32 3)
  %i.ii = sext <8 x i32> %i.ih to <8 x i64>
  %wide.gep141 = getelementptr inbounds [4 x i8], ptr %2, <8 x i64> %i.ii
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %i.ie, <8 x ptr> align 4 %wide.gep141, <8 x i1> splat (i1 true)), !tbaa !23, !alias.scope !79
  %index.next142 = add nuw i64 %index138, 8       ; 2 uses
  %vec.ind.next143 = add <8 x i32> %vec.ind139, splat (i32 8)
  %i.ij = icmp eq i64 %index.next142, %n.vec130
  br i1 %i.ij, label %middle.block144, label %vector.body137, !llvm.loop !81

middle.block144:                                  ; preds = %vector.body137
  br i1 %cmp.n146, label %._crit_edge.us.us.i.preheader, label %scalar.ph127.preheader

scalar.ph127.preheader:                           ; preds = %vector.memcheck114, %vector.scevcheck110, %.preheader1.us.i, %middle.block144
  %indvars.iv9.i.ph = phi i64 [ 0, %vector.memcheck114 ], [ 0, %vector.scevcheck110 ], [ 0, %.preheader1.us.i ], [ %n.vec130, %middle.block144 ] ; 3 uses
  %indvars.iv.i48.ph = phi i64 [ %.0286.us.i, %vector.memcheck114 ], [ %.0286.us.i, %vector.scevcheck110 ], [ %.0286.us.i, %.preheader1.us.i ], [ %i.ib, %middle.block144 ] ; 2 uses
  br i1 %lcmp.mod193.not, label %scalar.ph127.prol.loopexit, label %scalar.ph127.prol

scalar.ph127.prol:                                ; preds = %scalar.ph127.preheader, %scalar.ph127.prol
  %indvars.iv9.i.prol = phi i64 [ %indvars.iv.next10.i.prol, %scalar.ph127.prol ], [ %indvars.iv9.i.ph, %scalar.ph127.preheader ] ; 3 uses
  %indvars.iv.i48.prol = phi i64 [ %indvars.iv.next.i49.prol, %scalar.ph127.prol ], [ %indvars.iv.i48.ph, %scalar.ph127.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph127.prol ], [ 0, %scalar.ph127.preheader ]
  %indvars.iv.next.i49.prol = add nsw i64 %indvars.iv.i48.prol, 1 ; 3 uses
  %i.ik = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %indvars.iv.i48.prol
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !23
  %i.im = sub nsw i32 %i.il, %i.fv
  %i.in = trunc nuw nsw i64 %indvars.iv9.i.prol to i32
  %i.io = mul i32 %6, %i.in
  %reass.add.us.us.i.prol = add i32 %i.io, %.07.us.i
  %reass.mul.us.us.i.prol = mul i32 %reass.add.us.us.i.prol, 3
  %i.ip = sext i32 %reass.mul.us.us.i.prol to i64
  %i.iq = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ip
  store i32 %i.im, ptr %i.iq, align 4, !tbaa !23
  %indvars.iv.next10.i.prol = add nuw nsw i64 %indvars.iv9.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter192
  br i1 %prol.iter.cmp.not, label %scalar.ph127.prol.loopexit, label %scalar.ph127.prol, !llvm.loop !82

scalar.ph127.prol.loopexit:                       ; preds = %scalar.ph127.prol, %scalar.ph127.preheader
  %indvars.iv9.i.lcssa152.unr = phi i64 [ poison, %scalar.ph127.preheader ], [ %indvars.iv9.i.prol, %scalar.ph127.prol ]
  %indvars.iv.next.i49.lcssa151.unr = phi i64 [ poison, %scalar.ph127.preheader ], [ %indvars.iv.next.i49.prol, %scalar.ph127.prol ]
  %indvars.iv9.i.unr = phi i64 [ %indvars.iv9.i.ph, %scalar.ph127.preheader ], [ %indvars.iv.next10.i.prol, %scalar.ph127.prol ]
  %indvars.iv.i48.unr = phi i64 [ %indvars.iv.i48.ph, %scalar.ph127.preheader ], [ %indvars.iv.next.i49.prol, %scalar.ph127.prol ]
  %i.ir = sub nsw i64 %indvars.iv9.i.ph, %wide.trip.count.i47
  %i.is = icmp ugt i64 %i.ir, -4
  br i1 %i.is, label %._crit_edge.us.us.i.preheader, label %scalar.ph127

scalar.ph127:                                     ; preds = %scalar.ph127.prol.loopexit, %scalar.ph127
  %indvars.iv9.i = phi i64 [ %indvars.iv.next10.i.3, %scalar.ph127 ], [ %indvars.iv9.i.unr, %scalar.ph127.prol.loopexit ] ; 5 uses
  %indvars.iv.i48 = phi i64 [ %indvars.iv.next.i49.3, %scalar.ph127 ], [ %indvars.iv.i48.unr, %scalar.ph127.prol.loopexit ] ; 5 uses
  %i.it = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %indvars.iv.i48
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !23
  %i.iv = sub nsw i32 %i.iu, %i.fv
  %i.iw = trunc nuw nsw i64 %indvars.iv9.i to i32
  %i.ix = mul i32 %6, %i.iw
  %reass.add.us.us.i = add i32 %i.ix, %.07.us.i
  %reass.mul.us.us.i = mul i32 %reass.add.us.us.i, 3
  %i.iy = sext i32 %reass.mul.us.us.i to i64
  %i.iz = getelementptr inbounds [4 x i8], ptr %2, i64 %i.iy
  store i32 %i.iv, ptr %i.iz, align 4, !tbaa !23
  %i.ja = getelementptr [4 x i8], ptr %i.ft, i64 %indvars.iv.i48
  %i.jb = getelementptr i8, ptr %i.ja, i64 4
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !23
  %i.jd = sub nsw i32 %i.jc, %i.fv
  %i.je = trunc i64 %indvars.iv9.i to i32
  %i.jf = add i32 %i.je, 1
  %i.jg = mul i32 %6, %i.jf
  %reass.add.us.us.i.1 = add i32 %i.jg, %.07.us.i
  %reass.mul.us.us.i.1 = mul i32 %reass.add.us.us.i.1, 3
  %i.jh = sext i32 %reass.mul.us.us.i.1 to i64
  %i.ji = getelementptr inbounds [4 x i8], ptr %2, i64 %i.jh
  store i32 %i.jd, ptr %i.ji, align 4, !tbaa !23
  %i.jj = getelementptr [4 x i8], ptr %i.ft, i64 %indvars.iv.i48
  %i.jk = getelementptr i8, ptr %i.jj, i64 8
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !23
  %i.jm = sub nsw i32 %i.jl, %i.fv
  %i.jn = trunc i64 %indvars.iv9.i to i32
  %i.jo = add i32 %i.jn, 2
  %i.jp = mul i32 %6, %i.jo
  %reass.add.us.us.i.2 = add i32 %i.jp, %.07.us.i
  %reass.mul.us.us.i.2 = mul i32 %reass.add.us.us.i.2, 3
  %i.jq = sext i32 %reass.mul.us.us.i.2 to i64
  %i.jr = getelementptr inbounds [4 x i8], ptr %2, i64 %i.jq
  store i32 %i.jm, ptr %i.jr, align 4, !tbaa !23
  %indvars.iv.next10.i.2 = add nuw nsw i64 %indvars.iv9.i, 3 ; 2 uses
  %indvars.iv.next.i49.3 = add nsw i64 %indvars.iv.i48, 4 ; 2 uses
  %i.js = getelementptr [4 x i8], ptr %i.ft, i64 %indvars.iv.i48
  %i.jt = getelementptr i8, ptr %i.js, i64 12
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !23
  %i.jv = sub nsw i32 %i.ju, %i.fv
  %i.jw = trunc nuw nsw i64 %indvars.iv.next10.i.2 to i32
  %i.jx = mul i32 %6, %i.jw
  %reass.add.us.us.i.3 = add i32 %i.jx, %.07.us.i
  %reass.mul.us.us.i.3 = mul i32 %reass.add.us.us.i.3, 3
  %i.jy = sext i32 %reass.mul.us.us.i.3 to i64
  %i.jz = getelementptr inbounds [4 x i8], ptr %2, i64 %i.jy
  store i32 %i.jv, ptr %i.jz, align 4, !tbaa !23
  %indvars.iv.next10.i.3 = add nuw nsw i64 %indvars.iv9.i, 4 ; 2 uses
  %exitcond.not.i50.3 = icmp eq i64 %indvars.iv.next10.i.3, %wide.trip.count.i47
  br i1 %exitcond.not.i50.3, label %._crit_edge.us.us.i.preheader, label %scalar.ph127, !llvm.loop !83

._crit_edge.us.us.i.preheader:                    ; preds = %scalar.ph127.prol.loopexit, %scalar.ph127, %middle.block144
  %indvars.iv9.i.lcssa = phi i64 [ %ind.escape145, %middle.block144 ], [ %indvars.iv9.i.lcssa152.unr, %scalar.ph127.prol.loopexit ], [ %indvars.iv.next10.i.2, %scalar.ph127 ] ; 2 uses
  %indvars.iv.next.i49.lcssa = phi i64 [ %i.ib, %middle.block144 ], [ %indvars.iv.next.i49.lcssa151.unr, %scalar.ph127.prol.loopexit ], [ %indvars.iv.next.i49.3, %scalar.ph127 ] ; 5 uses
  br i1 %min.iters.check90, label %._crit_edge.us.us.i.preheader150, label %vector.scevcheck73

vector.scevcheck73:                               ; preds = %._crit_edge.us.us.i.preheader
  %i.ka = add i32 %i.hm, %mul.result75
  %i.kb = sub i32 %i.hm, %mul.result75
  %i.kc = icmp slt i32 %i.ka, %i.hm
  %i.kd = icmp sgt i32 %i.kb, %i.hm
  %i.ke = select i1 %i.gs, i1 %i.kd, i1 %i.kc
  %.reass202 = or i1 %i.ke, %invariant.op201
  br i1 %.reass202, label %._crit_edge.us.us.i.preheader150, label %vector.memcheck77

vector.memcheck77:                                ; preds = %vector.scevcheck73
  %9 = shl i64 %.0286.us.i, 2                     ; 2 uses
  %i.kf = shl nuw nsw i64 %indvars.iv9.i.lcssa, 2 ; 2 uses
  %i.kg = getelementptr i8, ptr %i.ft, i64 %i.kf
  %10 = getelementptr i8, ptr %i.kg, i64 %9
  %scevgep78 = getelementptr i8, ptr %10, i64 4
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.kf
  %i.kh = getelementptr i8, ptr %gep, i64 4
  %scevgep79 = getelementptr i8, ptr %i.kh, i64 %9
  %bound086 = icmp ult ptr %scevgep78, %scevgep85
  %bound187 = icmp ult ptr %umin83, %scevgep79
  %found.conflict88 = and i1 %bound086, %bound187
  br i1 %found.conflict88, label %._crit_edge.us.us.i.preheader150, label %vector.ph91

vector.ph91:                                      ; preds = %vector.memcheck77
  %i.ki = add i64 %indvars.iv.next.i49.lcssa, %n.vec92 ; 2 uses
  %broadcast.splatinsert97 = insertelement <8 x i32> poison, i32 %.07.us.i, i64 0
  %broadcast.splat98 = shufflevector <8 x i32> %broadcast.splatinsert97, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.kj = getelementptr [4 x i8], ptr %i.ft, i64 %indvars.iv.next.i49.lcssa
  br label %vector.body99

vector.body99:                                    ; preds = %vector.body99, %vector.ph91
  %index100 = phi i64 [ 0, %vector.ph91 ], [ %index.next104, %vector.body99 ] ; 2 uses
  %vec.ind101 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph91 ], [ %vec.ind.next105, %vector.body99 ] ; 2 uses
  %i.kk = getelementptr [4 x i8], ptr %i.kj, i64 %index100
  %wide.load102 = load <8 x i32>, ptr %i.kk, align 4, !tbaa !23, !alias.scope !84, !noalias !87
  %i.kl = sub nsw <8 x i32> %wide.load102, %broadcast.splat94
  %i.km = mul <8 x i32> %broadcast.splat96, %vec.ind101
  %i.kn = add <8 x i32> %i.km, %broadcast.splat98
  %i.ko = mul <8 x i32> %i.kn, splat (i32 3)
  %i.kp = add <8 x i32> %i.ko, splat (i32 1)
  %i.kq = sext <8 x i32> %i.kp to <8 x i64>
  %wide.gep103 = getelementptr inbounds [4 x i8], ptr %2, <8 x i64> %i.kq
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %i.kl, <8 x ptr> align 4 %wide.gep103, <8 x i1> splat (i1 true)), !tbaa !23, !alias.scope !87
  %index.next104 = add nuw i64 %index100, 8       ; 2 uses
  %vec.ind.next105 = add <8 x i32> %vec.ind101, splat (i32 8)
  %i.kr = icmp eq i64 %index.next104, %n.vec92
  br i1 %i.kr, label %middle.block106, label %vector.body99, !llvm.loop !89

middle.block106:                                  ; preds = %vector.body99
  br i1 %cmp.n107, label %._crit_edge.us.us.1.i.preheader, label %._crit_edge.us.us.i.preheader150

._crit_edge.us.us.i.preheader150:                 ; preds = %vector.memcheck77, %vector.scevcheck73, %._crit_edge.us.us.i.preheader, %middle.block106
  %indvars.iv9.1.i.ph = phi i64 [ 0, %vector.memcheck77 ], [ 0, %vector.scevcheck73 ], [ 0, %._crit_edge.us.us.i.preheader ], [ %n.vec92, %middle.block106 ] ; 3 uses
  %indvars.iv.1.i.ph = phi i64 [ %indvars.iv.next.i49.lcssa, %vector.memcheck77 ], [ %indvars.iv.next.i49.lcssa, %vector.scevcheck73 ], [ %indvars.iv.next.i49.lcssa, %._crit_edge.us.us.i.preheader ], [ %i.ki, %middle.block106 ] ; 2 uses
  br i1 %lcmp.mod195.not, label %._crit_edge.us.us.i.prol.loopexit, label %._crit_edge.us.us.i.prol

._crit_edge.us.us.i.prol:                         ; preds = %._crit_edge.us.us.i.preheader150, %._crit_edge.us.us.i.prol
  %indvars.iv9.1.i.prol = phi i64 [ %indvars.iv.next10.1.i.prol, %._crit_edge.us.us.i.prol ], [ %indvars.iv9.1.i.ph, %._crit_edge.us.us.i.preheader150 ] ; 3 uses
  %indvars.iv.1.i.prol = phi i64 [ %indvars.iv.next.1.i.prol, %._crit_edge.us.us.i.prol ], [ %indvars.iv.1.i.ph, %._crit_edge.us.us.i.preheader150 ] ; 2 uses
  %prol.iter196 = phi i64 [ %prol.iter196.next, %._crit_edge.us.us.i.prol ], [ 0, %._crit_edge.us.us.i.preheader150 ]
  %indvars.iv.next.1.i.prol = add nsw i64 %indvars.iv.1.i.prol, 1 ; 3 uses
  %i.ks = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %indvars.iv.1.i.prol
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !23
  %i.ku = sub nsw i32 %i.kt, %i.fv
  %i.kv = trunc nuw nsw i64 %indvars.iv9.1.i.prol to i32
  %i.kw = mul i32 %6, %i.kv
  %reass.add.us.us.1.i.prol = add i32 %i.kw, %.07.us.i
  %reass.mul.us.us.1.i.prol = mul i32 %reass.add.us.us.1.i.prol, 3
  %i.kx = add i32 %reass.mul.us.us.1.i.prol, 1
  %i.ky = sext i32 %i.kx to i64
  %i.kz = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ky
  store i32 %i.ku, ptr %i.kz, align 4, !tbaa !23
  %indvars.iv.next10.1.i.prol = add nuw nsw i64 %indvars.iv9.1.i.prol, 1 ; 2 uses
  %prol.iter196.next = add i64 %prol.iter196, 1   ; 2 uses
  %prol.iter196.cmp.not = icmp eq i64 %prol.iter196.next, %xtraiter194
  br i1 %prol.iter196.cmp.not, label %._crit_edge.us.us.i.prol.loopexit, label %._crit_edge.us.us.i.prol, !llvm.loop !90

._crit_edge.us.us.i.prol.loopexit:                ; preds = %._crit_edge.us.us.i.prol, %._crit_edge.us.us.i.preheader150
  %indvars.iv9.1.i.lcssa154.unr = phi i64 [ poison, %._crit_edge.us.us.i.preheader150 ], [ %indvars.iv9.1.i.prol, %._crit_edge.us.us.i.prol ]
  %indvars.iv.next.1.i.lcssa153.unr = phi i64 [ poison, %._crit_edge.us.us.i.preheader150 ], [ %indvars.iv.next.1.i.prol, %._crit_edge.us.us.i.prol ]
  %indvars.iv9.1.i.unr = phi i64 [ %indvars.iv9.1.i.ph, %._crit_edge.us.us.i.preheader150 ], [ %indvars.iv.next10.1.i.prol, %._crit_edge.us.us.i.prol ]
  %indvars.iv.1.i.unr = phi i64 [ %indvars.iv.1.i.ph, %._crit_edge.us.us.i.preheader150 ], [ %indvars.iv.next.1.i.prol, %._crit_edge.us.us.i.prol ]
  %i.la = sub nsw i64 %indvars.iv9.1.i.ph, %wide.trip.count.i47
  %i.lb = icmp ugt i64 %i.la, -4
  br i1 %i.lb, label %._crit_edge.us.us.1.i.preheader, label %._crit_edge.us.us.i

._crit_edge.us.us.i:                              ; preds = %._crit_edge.us.us.i.prol.loopexit, %._crit_edge.us.us.i
  %indvars.iv9.1.i = phi i64 [ %indvars.iv.next10.1.i.3, %._crit_edge.us.us.i ], [ %indvars.iv9.1.i.unr, %._crit_edge.us.us.i.prol.loopexit ] ; 5 uses
  %indvars.iv.1.i = phi i64 [ %indvars.iv.next.1.i.3, %._crit_edge.us.us.i ], [ %indvars.iv.1.i.unr, %._crit_edge.us.us.i.prol.loopexit ] ; 5 uses
  %i.lc = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %indvars.iv.1.i
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !23
  %i.le = sub nsw i32 %i.ld, %i.fv
  %i.lf = trunc nuw nsw i64 %indvars.iv9.1.i to i32
  %i.lg = mul i32 %6, %i.lf
  %reass.add.us.us.1.i = add i32 %i.lg, %.07.us.i
  %reass.mul.us.us.1.i = mul i32 %reass.add.us.us.1.i, 3
  %i.lh = add i32 %reass.mul.us.us.1.i, 1
  %i.li = sext i32 %i.lh to i64
  %i.lj = getelementptr inbounds [4 x i8], ptr %2, i64 %i.li
  store i32 %i.le, ptr %i.lj, align 4, !tbaa !23
  %i.lk = getelementptr [4 x i8], ptr %i.ft, i64 %indvars.iv.1.i
  %i.ll = getelementptr i8, ptr %i.lk, i64 4
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !23
  %i.ln = sub nsw i32 %i.lm, %i.fv
  %i.lo = trunc i64 %indvars.iv9.1.i to i32
  %i.lp = add i32 %i.lo, 1
  %i.lq = mul i32 %6, %i.lp
  %reass.add.us.us.1.i.1 = add i32 %i.lq, %.07.us.i
  %reass.mul.us.us.1.i.1 = mul i32 %reass.add.us.us.1.i.1, 3
  %i.lr = add i32 %reass.mul.us.us.1.i.1, 1
  %i.ls = sext i32 %i.lr to i64
  %i.lt = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ls
  store i32 %i.ln, ptr %i.lt, align 4, !tbaa !23
  %i.lu = getelementptr [4 x i8], ptr %i.ft, i64 %indvars.iv.1.i
  %i.lv = getelementptr i8, ptr %i.lu, i64 8
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !23
  %i.lx = sub nsw i32 %i.lw, %i.fv
  %i.ly = trunc i64 %indvars.iv9.1.i to i32
  %i.lz = add i32 %i.ly, 2
  %i.ma = mul i32 %6, %i.lz
  %reass.add.us.us.1.i.2 = add i32 %i.ma, %.07.us.i
  %reass.mul.us.us.1.i.2 = mul i32 %reass.add.us.us.1.i.2, 3
  %i.mb = add i32 %reass.mul.us.us.1.i.2, 1
  %i.mc = sext i32 %i.mb to i64
  %i.md = getelementptr inbounds [4 x i8], ptr %2, i64 %i.mc
  store i32 %i.lx, ptr %i.md, align 4, !tbaa !23
  %indvars.iv.next10.1.i.2 = add nuw nsw i64 %indvars.iv9.1.i, 3 ; 2 uses
  %indvars.iv.next.1.i.3 = add nsw i64 %indvars.iv.1.i, 4 ; 2 uses
  %i.me = getelementptr [4 x i8], ptr %i.ft, i64 %indvars.iv.1.i
  %i.mf = getelementptr i8, ptr %i.me, i64 12
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !23
  %i.mh = sub nsw i32 %i.mg, %i.fv
  %i.mi = trunc nuw nsw i64 %indvars.iv.next10.1.i.2 to i32
  %i.mj = mul i32 %6, %i.mi
  %reass.add.us.us.1.i.3 = add i32 %i.mj, %.07.us.i
  %reass.mul.us.us.1.i.3 = mul i32 %reass.add.us.us.1.i.3, 3
  %i.mk = add i32 %reass.mul.us.us.1.i.3, 1
  %i.ml = sext i32 %i.mk to i64
  %i.mm = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ml
  store i32 %i.mh, ptr %i.mm, align 4, !tbaa !23
  %indvars.iv.next10.1.i.3 = add nuw nsw i64 %indvars.iv9.1.i, 4 ; 2 uses
  %exitcond.1.not.i51.3 = icmp eq i64 %indvars.iv.next10.1.i.3, %wide.trip.count.i47
  br i1 %exitcond.1.not.i51.3, label %._crit_edge.us.us.1.i.preheader, label %._crit_edge.us.us.i, !llvm.loop !91

._crit_edge.us.us.1.i.preheader:                  ; preds = %._crit_edge.us.us.i.prol.loopexit, %._crit_edge.us.us.i, %middle.block106
  %indvars.iv9.1.i.lcssa = phi i64 [ %ind.escape, %middle.block106 ], [ %indvars.iv9.1.i.lcssa154.unr, %._crit_edge.us.us.i.prol.loopexit ], [ %indvars.iv.next10.1.i.2, %._crit_edge.us.us.i ]
  %indvars.iv.next.1.i.lcssa = phi i64 [ %i.ki, %middle.block106 ], [ %indvars.iv.next.1.i.lcssa153.unr, %._crit_edge.us.us.i.prol.loopexit ], [ %indvars.iv.next.1.i.3, %._crit_edge.us.us.i ] ; 5 uses
  br i1 %min.iters.check, label %._crit_edge.us.us.1.i.preheader149, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %._crit_edge.us.us.1.i.preheader
  %i.mn = add i32 %i.hu, %mul.result
  %i.mo = sub i32 %i.hu, %mul.result
  %i.mp = icmp slt i32 %i.mn, %i.hu
  %i.mq = icmp sgt i32 %i.mo, %i.hu
  %i.mr = select i1 %i.gw, i1 %i.mq, i1 %i.mp
  %.reass204 = or i1 %i.mr, %invariant.op203
  br i1 %.reass204, label %._crit_edge.us.us.1.i.preheader149, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %11 = shl i64 %.0286.us.i, 2                    ; 2 uses
  %12 = shl nuw nsw i64 %indvars.iv9.i.lcssa, 2   ; 2 uses
  %i.ms = shl nuw nsw i64 %indvars.iv9.1.i.lcssa, 2 ; 2 uses
  %13 = getelementptr i8, ptr %i.ft, i64 %i.ms
  %14 = getelementptr i8, ptr %13, i64 %12
  %i.mt = getelementptr i8, ptr %14, i64 %11
  %scevgep = getelementptr i8, ptr %i.mt, i64 8
  %15 = getelementptr i8, ptr %i.ft, i64 %i.ms
  %16 = getelementptr i8, ptr %15, i64 %12
  %17 = getelementptr i8, ptr %16, i64 %7
  %i.mu = getelementptr i8, ptr %17, i64 8
  %scevgep63 = getelementptr i8, ptr %i.mu, i64 %11
  %bound0 = icmp ult ptr %scevgep, %scevgep67
  %bound1 = icmp ult ptr %umin, %scevgep63
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %._crit_edge.us.us.1.i.preheader149, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.mv = add i64 %indvars.iv.next.1.i.lcssa, %n.vec ; 2 uses
  %broadcast.splatinsert70 = insertelement <8 x i32> poison, i32 %.07.us.i, i64 0
  %broadcast.splat71 = shufflevector <8 x i32> %broadcast.splatinsert70, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.mw = getelementptr [4 x i8], ptr %i.ft, i64 %indvars.iv.next.1.i.lcssa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.mx = getelementptr [4 x i8], ptr %i.mw, i64 %index
  %wide.load = load <8 x i32>, ptr %i.mx, align 4, !tbaa !23, !alias.scope !92, !noalias !95
  %i.my = sub nsw <8 x i32> %wide.load, %broadcast.splat
  %i.mz = mul <8 x i32> %broadcast.splat69, %vec.ind
  %i.na = add <8 x i32> %i.mz, %broadcast.splat71
  %i.nb = mul <8 x i32> %i.na, splat (i32 3)
  %i.nc = add <8 x i32> %i.nb, splat (i32 2)
  %i.nd = sext <8 x i32> %i.nc to <8 x i64>
  %wide.gep = getelementptr inbounds [4 x i8], ptr %2, <8 x i64> %i.nd
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %i.my, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !23, !alias.scope !95
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.ne = icmp eq i64 %index.next, %n.vec
  br i1 %i.ne, label %middle.block, label %vector.body, !llvm.loop !97

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.2.i, label %._crit_edge.us.us.1.i.preheader149

._crit_edge.us.us.1.i.preheader149:               ; preds = %vector.memcheck, %vector.scevcheck, %._crit_edge.us.us.1.i.preheader, %middle.block
  %indvars.iv9.2.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %._crit_edge.us.us.1.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %indvars.iv.2.i.ph = phi i64 [ %indvars.iv.next.1.i.lcssa, %vector.memcheck ], [ %indvars.iv.next.1.i.lcssa, %vector.scevcheck ], [ %indvars.iv.next.1.i.lcssa, %._crit_edge.us.us.1.i.preheader ], [ %i.mv, %middle.block ] ; 2 uses
  br i1 %lcmp.mod198.not, label %._crit_edge.us.us.1.i.prol.loopexit, label %._crit_edge.us.us.1.i.prol

._crit_edge.us.us.1.i.prol:                       ; preds = %._crit_edge.us.us.1.i.preheader149, %._crit_edge.us.us.1.i.prol
  %indvars.iv9.2.i.prol = phi i64 [ %indvars.iv.next10.2.i.prol, %._crit_edge.us.us.1.i.prol ], [ %indvars.iv9.2.i.ph, %._crit_edge.us.us.1.i.preheader149 ] ; 2 uses
  %indvars.iv.2.i.prol = phi i64 [ %indvars.iv.next.2.i.prol, %._crit_edge.us.us.1.i.prol ], [ %indvars.iv.2.i.ph, %._crit_edge.us.us.1.i.preheader149 ] ; 2 uses
  %prol.iter199 = phi i64 [ %prol.iter199.next, %._crit_edge.us.us.1.i.prol ], [ 0, %._crit_edge.us.us.1.i.preheader149 ]
  %indvars.iv.next.2.i.prol = add nsw i64 %indvars.iv.2.i.prol, 1 ; 3 uses
  %i.nf = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %indvars.iv.2.i.prol
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !23
  %i.nh = sub nsw i32 %i.ng, %i.fv
  %i.ni = trunc nuw nsw i64 %indvars.iv9.2.i.prol to i32
  %i.nj = mul i32 %6, %i.ni
  %reass.add.us.us.2.i.prol = add i32 %i.nj, %.07.us.i
  %reass.mul.us.us.2.i.prol = mul i32 %reass.add.us.us.2.i.prol, 3
  %i.nk = add i32 %reass.mul.us.us.2.i.prol, 2
  %i.nl = sext i32 %i.nk to i64
  %i.nm = getelementptr inbounds [4 x i8], ptr %2, i64 %i.nl
  store i32 %i.nh, ptr %i.nm, align 4, !tbaa !23
  %indvars.iv.next10.2.i.prol = add nuw nsw i64 %indvars.iv9.2.i.prol, 1 ; 2 uses
  %prol.iter199.next = add i64 %prol.iter199, 1   ; 2 uses
  %prol.iter199.cmp.not = icmp eq i64 %prol.iter199.next, %xtraiter197
  br i1 %prol.iter199.cmp.not, label %._crit_edge.us.us.1.i.prol.loopexit, label %._crit_edge.us.us.1.i.prol, !llvm.loop !98

._crit_edge.us.us.1.i.prol.loopexit:              ; preds = %._crit_edge.us.us.1.i.prol, %._crit_edge.us.us.1.i.preheader149
  %indvars.iv.next.2.i.lcssa155.unr = phi i64 [ poison, %._crit_edge.us.us.1.i.preheader149 ], [ %indvars.iv.next.2.i.prol, %._crit_edge.us.us.1.i.prol ]
  %indvars.iv9.2.i.unr = phi i64 [ %indvars.iv9.2.i.ph, %._crit_edge.us.us.1.i.preheader149 ], [ %indvars.iv.next10.2.i.prol, %._crit_edge.us.us.1.i.prol ]
  %indvars.iv.2.i.unr = phi i64 [ %indvars.iv.2.i.ph, %._crit_edge.us.us.1.i.preheader149 ], [ %indvars.iv.next.2.i.prol, %._crit_edge.us.us.1.i.prol ]
  %i.nn = sub nsw i64 %indvars.iv9.2.i.ph, %wide.trip.count.i47
  %i.no = icmp ugt i64 %i.nn, -4
  br i1 %i.no, label %._crit_edge.us.us.2.i, label %._crit_edge.us.us.1.i

._crit_edge.us.us.1.i:                            ; preds = %._crit_edge.us.us.1.i.prol.loopexit, %._crit_edge.us.us.1.i
  %indvars.iv9.2.i = phi i64 [ %indvars.iv.next10.2.i.3, %._crit_edge.us.us.1.i ], [ %indvars.iv9.2.i.unr, %._crit_edge.us.us.1.i.prol.loopexit ] ; 5 uses
  %indvars.iv.2.i = phi i64 [ %indvars.iv.next.2.i.3, %._crit_edge.us.us.1.i ], [ %indvars.iv.2.i.unr, %._crit_edge.us.us.1.i.prol.loopexit ] ; 5 uses
  %i.np = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %indvars.iv.2.i
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !23
  %i.nr = sub nsw i32 %i.nq, %i.fv
  %i.ns = trunc nuw nsw i64 %indvars.iv9.2.i to i32
  %i.nt = mul i32 %6, %i.ns
  %reass.add.us.us.2.i = add i32 %i.nt, %.07.us.i
  %reass.mul.us.us.2.i = mul i32 %reass.add.us.us.2.i, 3
  %i.nu = add i32 %reass.mul.us.us.2.i, 2
  %i.nv = sext i32 %i.nu to i64
  %i.nw = getelementptr inbounds [4 x i8], ptr %2, i64 %i.nv
  store i32 %i.nr, ptr %i.nw, align 4, !tbaa !23
  %i.nx = getelementptr [4 x i8], ptr %i.ft, i64 %indvars.iv.2.i
  %i.ny = getelementptr i8, ptr %i.nx, i64 4
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !23
  %i.oa = sub nsw i32 %i.nz, %i.fv
  %i.ob = trunc i64 %indvars.iv9.2.i to i32
  %i.oc = add i32 %i.ob, 1
  %i.od = mul i32 %6, %i.oc
  %reass.add.us.us.2.i.1 = add i32 %i.od, %.07.us.i
  %reass.mul.us.us.2.i.1 = mul i32 %reass.add.us.us.2.i.1, 3
  %i.oe = add i32 %reass.mul.us.us.2.i.1, 2
  %i.of = sext i32 %i.oe to i64
  %i.og = getelementptr inbounds [4 x i8], ptr %2, i64 %i.of
  store i32 %i.oa, ptr %i.og, align 4, !tbaa !23
  %i.oh = getelementptr [4 x i8], ptr %i.ft, i64 %indvars.iv.2.i
  %i.oi = getelementptr i8, ptr %i.oh, i64 8
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !23
  %i.ok = sub nsw i32 %i.oj, %i.fv
  %i.ol = trunc i64 %indvars.iv9.2.i to i32
  %i.om = add i32 %i.ol, 2
  %i.on = mul i32 %6, %i.om
  %reass.add.us.us.2.i.2 = add i32 %i.on, %.07.us.i
  %reass.mul.us.us.2.i.2 = mul i32 %reass.add.us.us.2.i.2, 3
  %i.oo = add i32 %reass.mul.us.us.2.i.2, 2
  %i.op = sext i32 %i.oo to i64
  %i.oq = getelementptr inbounds [4 x i8], ptr %2, i64 %i.op
  store i32 %i.ok, ptr %i.oq, align 4, !tbaa !23
  %indvars.iv.next.2.i.3 = add nsw i64 %indvars.iv.2.i, 4 ; 2 uses
  %i.or = getelementptr [4 x i8], ptr %i.ft, i64 %indvars.iv.2.i
  %i.os = getelementptr i8, ptr %i.or, i64 12
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !23
  %i.ou = sub nsw i32 %i.ot, %i.fv
  %i.ov = trunc i64 %indvars.iv9.2.i to i32
  %i.ow = add i32 %i.ov, 3
  %i.ox = mul i32 %6, %i.ow
  %reass.add.us.us.2.i.3 = add i32 %i.ox, %.07.us.i
  %reass.mul.us.us.2.i.3 = mul i32 %reass.add.us.us.2.i.3, 3
  %i.oy = add i32 %reass.mul.us.us.2.i.3, 2
  %i.oz = sext i32 %i.oy to i64
  %i.pa = getelementptr inbounds [4 x i8], ptr %2, i64 %i.oz
  store i32 %i.ou, ptr %i.pa, align 4, !tbaa !23
  %indvars.iv.next10.2.i.3 = add nuw nsw i64 %indvars.iv9.2.i, 4 ; 2 uses
  %exitcond.2.not.i52.3 = icmp eq i64 %indvars.iv.next10.2.i.3, %wide.trip.count.i47
  br i1 %exitcond.2.not.i52.3, label %._crit_edge.us.us.2.i, label %._crit_edge.us.us.1.i, !llvm.loop !99

._crit_edge.us.us.2.i:                            ; preds = %._crit_edge.us.us.1.i.prol.loopexit, %._crit_edge.us.us.1.i, %middle.block
  %indvars.iv.next.2.i.lcssa = phi i64 [ %i.mv, %middle.block ], [ %indvars.iv.next.2.i.lcssa155.unr, %._crit_edge.us.us.1.i.prol.loopexit ], [ %indvars.iv.next.2.i.3, %._crit_edge.us.us.1.i ]
  %i.pb = add nuw nsw i32 %.07.us.i, 1            ; 2 uses
  %exitcond15.not.i = icmp eq i32 %i.pb, %6
  br i1 %exitcond15.not.i, label %unpack_array_bwlzh.exit, label %.preheader1.us.i, !llvm.loop !100

unpack_array_bwlzh.exit:                          ; preds = %._crit_edge.us.us.2.i, %bb.m
  tail call void @free(ptr noundef %i.ft) #11
  br label %unpack_array_stop_bits.exit

bb.n:                                             ; preds = %bb.l
  %i.pc = icmp eq i32 %4, 10
  br i1 %i.pc, label %bb.o, label %unpack_array_stop_bits.exit

bb.o:                                             ; preds = %bb.n
  %i.pd = tail call i32 @Ptngc_unpack_array_xtc3(ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %6) #11
  br label %unpack_array_stop_bits.exit

unpack_array_stop_bits.exit:                      ; preds = %.split22.us.i, %bb.e, %._crit_edge.i42, %bb.b, %bb.n, %bb.o, %unpack_array_bwlzh.exit, %bb.k
  %.0 = phi i32 [ 1, %bb.n ], [ 0, %bb.e ], [ %i.fp, %bb.k ], [ 0, %unpack_array_bwlzh.exit ], [ %i.pd, %bb.o ], [ 0, %bb.b ], [ 0, %._crit_edge.i42 ], [ 0, %.split22.us.i ]
  ret i32 %.0
}

declare i32 @Ptngc_unpack_array_xtc2(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @Ptngc_unpack_array_xtc3(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @bwlzh_decompress(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.umax.v8i32(<8 x i32>, <8 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v8i32(<8 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v8i32(<8 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr>, <8 x i1>, <8 x i32>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8i32.v8p0(<8 x i32>, <8 x ptr>, <8 x i1>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
end_hunk_1

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/aacdec_usac_mps212?download=true
inline.NumInlined: 44
inline.NumDeleted: 18
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@ff_aac_map_index_data:bb.a

vector.body639:                                   ; preds = %.lr.ph275.split.us.preheader, %vector.body639
  %index640 = phi i64 [ %index.next643, %vector.body639 ], [ 0, %.lr.ph275.split.us.preheader ] ; 2 uses
  %i.qf = add i64 %index640, %i.ku                ; 2 uses
  %i.qg = getelementptr inbounds [2 x i8], ptr %i.pc, i64 %i.qf ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 8
  %wide.load641 = load <4 x i16>, ptr %i.qg, align 2, !tbaa !23
  %wide.load642 = load <4 x i16>, ptr %i.qh, align 2, !tbaa !23
  %i.qi = sext <4 x i16> %wide.load641 to <4 x i32>
  %i.qj = sext <4 x i16> %wide.load642 to <4 x i32>
  %i.qk = add nsw <4 x i32> %i.qi, splat (i32 15) ; 2 uses
  %i.ql = add nsw <4 x i32> %i.qj, splat (i32 15) ; 2 uses
  %i.qm = icmp ult <4 x i32> %i.qk, splat (i32 31)
  %i.qn = icmp ult <4 x i32> %i.ql, splat (i32 31)
  %i.qo = select <4 x i1> %i.qm, <4 x i32> %i.qk, <4 x i32> %broadcast.splat638
  %i.qp = select <4 x i1> %i.qn, <4 x i32> %i.ql, <4 x i32> %broadcast.splat638
  %i.qq = getelementptr inbounds [4 x i8], ptr %.pn, i64 %i.qf ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 16
  store <4 x i32> %i.qo, ptr %i.qq, align 4, !tbaa !30
  store <4 x i32> %i.qp, ptr %i.qr, align 4, !tbaa !30
  %index.next643 = add nuw i64 %index640, 8       ; 2 uses
  %i.qs = icmp eq i64 %index.next643, %n.vec636
  br i1 %i.qs, label %middle.block644, label %vector.body639, !llvm.loop !133

middle.block644:                                  ; preds = %vector.body639
  br i1 %cmp.n645, label %._crit_edge276, label %.lr.ph275.split.us.preheader688

.lr.ph275.split.us.preheader688:                  ; preds = %.lr.ph275.split.us.preheader, %middle.block644
  %indvars.iv369.ph = phi i64 [ %i.ku, %.lr.ph275.split.us.preheader ], [ %i.kx, %middle.block644 ]
  br label %.lr.ph275.split.us

deq_idx.exit.preheader:                           ; preds = %.preheader
  br i1 %min.iters.check622, label %deq_idx.exit.preheader687, label %vector.ph623

vector.ph623:                                     ; preds = %deq_idx.exit.preheader
  %invariant.gep730 = getelementptr [4 x i8], ptr %.pn, i64 %i.ku
  br label %vector.body627

vector.body627:                                   ; preds = %vector.body627, %vector.ph623
  %index628 = phi i64 [ 0, %vector.ph623 ], [ %index.next629, %vector.body627 ] ; 2 uses
  %gep731 = getelementptr [4 x i8], ptr %invariant.gep730, i64 %index628 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %gep731, i64 16
  store <4 x i32> %broadcast.splat626, ptr %gep731, align 4, !tbaa !30
  store <4 x i32> %broadcast.splat626, ptr %i.qt, align 4, !tbaa !30
  %index.next629 = add nuw i64 %index628, 8       ; 2 uses
  %i.qu = icmp eq i64 %index.next629, %n.vec624
  br i1 %i.qu, label %middle.block630, label %vector.body627, !llvm.loop !134

middle.block630:                                  ; preds = %vector.body627
  br i1 %cmp.n631, label %._crit_edge276, label %deq_idx.exit.preheader687

deq_idx.exit.preheader687:                        ; preds = %deq_idx.exit.preheader, %middle.block630
  %indvars.iv374.ph = phi i64 [ %i.ku, %deq_idx.exit.preheader ], [ %i.ky, %middle.block630 ]
  br label %deq_idx.exit

.lr.ph275.split.us:                               ; preds = %.lr.ph275.split.us.preheader688, %.lr.ph275.split.us
  %indvars.iv369 = phi i64 [ %indvars.iv.next370, %.lr.ph275.split.us ], [ %indvars.iv369.ph, %.lr.ph275.split.us.preheader688 ] ; 3 uses
  %i.qv = getelementptr inbounds [2 x i8], ptr %i.pc, i64 %indvars.iv369
  %i.qw = load i16, ptr %i.qv, align 2, !tbaa !23
  %i.qx = sext i16 %i.qw to i32
  %i.qy = add nsw i32 %i.qx, 15                   ; 2 uses
  %or.cond16.i.us = icmp ult i32 %i.qy, 31
  %spec.select = select i1 %or.cond16.i.us, i32 %i.qy, i32 %3
  %i.qz = getelementptr inbounds [4 x i8], ptr %.pn, i64 %indvars.iv369
  store i32 %spec.select, ptr %i.qz, align 4, !tbaa !30
  %indvars.iv.next370 = add nsw i64 %indvars.iv369, 1 ; 2 uses
  %exitcond373.not = icmp eq i64 %indvars.iv.next370, %wide.trip.count372
  br i1 %exitcond373.not, label %._crit_edge276, label %.lr.ph275.split.us, !llvm.loop !135

.lr.ph275.split.us277:                            ; preds = %.lr.ph275.split.us277.preheader690, %.lr.ph275.split.us277
  %indvars.iv364 = phi i64 [ %indvars.iv.next365, %.lr.ph275.split.us277 ], [ %indvars.iv364.ph, %.lr.ph275.split.us277.preheader690 ] ; 3 uses
  %i.ra = getelementptr inbounds [2 x i8], ptr %i.pc, i64 %indvars.iv364
  %i.rb = load i16, ptr %i.ra, align 2, !tbaa !23 ; 2 uses
  %i.rc = sext i16 %i.rb to i32
  %or.cond.i.us = icmp ult i16 %i.rb, 8
  %spec.select287 = select i1 %or.cond.i.us, i32 %i.rc, i32 %3
  %i.rd = getelementptr inbounds [4 x i8], ptr %.pn, i64 %indvars.iv364
  store i32 %spec.select287, ptr %i.rd, align 4, !tbaa !30
  %indvars.iv.next365 = add nsw i64 %indvars.iv364, 1 ; 2 uses
  %exitcond368.not = icmp eq i64 %indvars.iv.next365, %wide.trip.count367
  br i1 %exitcond368.not, label %._crit_edge276, label %.lr.ph275.split.us277, !llvm.loop !136

.lr.ph275.split.us280:                            ; preds = %.lr.ph275.split.us280.preheader692, %.lr.ph275.split.us280
  %indvars.iv359 = phi i64 [ %indvars.iv.next360, %.lr.ph275.split.us280 ], [ %indvars.iv359.ph, %.lr.ph275.split.us280.preheader692 ] ; 3 uses
  %i.re = getelementptr inbounds [2 x i8], ptr %i.pc, i64 %indvars.iv359
  %i.rf = load i16, ptr %i.re, align 2, !tbaa !23
  %i.rg = sext i16 %i.rf to i32                   ; 2 uses
  %i.rh = add nsw i32 %i.rg, 420
  %or.cond3.i.us = icmp ult i32 %i.rh, 841
  %i.ri = and i32 %i.rg, 15
  %spec.select288 = select i1 %or.cond3.i.us, i32 %i.ri, i32 %3
  %i.rj = getelementptr inbounds [4 x i8], ptr %.pn, i64 %indvars.iv359
  store i32 %spec.select288, ptr %i.rj, align 4, !tbaa !30
  %indvars.iv.next360 = add nsw i64 %indvars.iv359, 1 ; 2 uses
  %exitcond363.not = icmp eq i64 %indvars.iv.next360, %wide.trip.count362
  br i1 %exitcond363.not, label %._crit_edge276, label %.lr.ph275.split.us280, !llvm.loop !137

.critedge212._crit_edge.split:                    ; preds = %._crit_edge276, %._crit_edge.thread, %.critedge212.preheader
  %i.rk = phi i1 [ %i.i, %._crit_edge.thread ], [ false, %.critedge212.preheader ], [ true, %._crit_edge276 ]
  %.not211 = icmp eq i32 %8, 0
  br i1 %.not211, label %.critedge, label %bb.z

._crit_edge276:                                   ; preds = %.lr.ph275.split.us280, %.lr.ph275.split.us277, %.lr.ph275.split.us, %deq_idx.exit, %middle.block672, %middle.block658, %middle.block644, %middle.block630
  %indvars.iv.next380 = add nuw nsw i64 %indvars.iv379, 1 ; 2 uses
  %exitcond383.not = icmp eq i64 %indvars.iv.next380, %wide.trip.count382
  br i1 %exitcond383.not, label %.critedge212._crit_edge.split, label %.preheader, !llvm.loop !138

deq_idx.exit:                                     ; preds = %deq_idx.exit.preheader687, %deq_idx.exit
  %indvars.iv374 = phi i64 [ %indvars.iv.next375, %deq_idx.exit ], [ %indvars.iv374.ph, %deq_idx.exit.preheader687 ] ; 2 uses
  %i.rl = getelementptr inbounds [4 x i8], ptr %.pn, i64 %indvars.iv374
  store i32 %3, ptr %i.rl, align 4, !tbaa !30
  %indvars.iv.next375 = add nsw i64 %indvars.iv374, 1 ; 2 uses
  %exitcond378.not = icmp eq i64 %indvars.iv.next375, %wide.trip.count377
  br i1 %exitcond378.not, label %._crit_edge276, label %deq_idx.exit, !llvm.loop !139

bb.z:                                             ; preds = %.critedge212._crit_edge.split
  %i.rm = icmp eq i32 %1, 2
  br i1 %i.rm, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 578
  %i.ro = sext i32 %6 to i64
  %i.rp = getelementptr i8, ptr %i.rn, i64 %i.ro  ; 2 uses
  %i.rq = getelementptr i8, ptr %i.rp, i64 -1
  %i.rr = load i8, ptr %i.rq, align 1, !tbaa !28, !range !13, !noundef !14
  store i8 %i.rr, ptr %i.rp, align 1, !tbaa !28
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  br i1 %i.rk, label %.lr.ph286, label %.critedge

.lr.ph286:                                        ; preds = %bb.ab
  %i.rs = sext i32 %6 to i64
  %i.rt = getelementptr [112 x i8], ptr %2, i64 %i.rs ; 3 uses
  %i.ru = getelementptr i8, ptr %i.rt, i64 -112   ; 2 uses
  %i.rv = sext i32 %4 to i64                      ; 4 uses
  %wide.trip.count389 = sext i32 %5 to i64        ; 2 uses
  %i.rw = sub nsw i64 %wide.trip.count389, %i.rv  ; 3 uses
  %min.iters.check676 = icmp ult i64 %i.rw, 4
  br i1 %min.iters.check676, label %scalar.ph675.preheader, label %vector.ph677

vector.ph677:                                     ; preds = %.lr.ph286
  %n.vec678 = and i64 %i.rw, -4                   ; 3 uses
  %i.rx = add nsw i64 %n.vec678, %i.rv
  br label %vector.body679

vector.body679:                                   ; preds = %vector.body679, %vector.ph677
  %index680 = phi i64 [ 0, %vector.ph677 ], [ %index.next682, %vector.body679 ] ; 2 uses
  %i.ry = add i64 %index680, %i.rv                ; 2 uses
  %i.rz = getelementptr inbounds [4 x i8], ptr %i.ru, i64 %i.ry
  %wide.load681 = load <4 x i32>, ptr %i.rz, align 4, !tbaa !30
  %i.sa = getelementptr inbounds [4 x i8], ptr %i.rt, i64 %i.ry
  store <4 x i32> %wide.load681, ptr %i.sa, align 4, !tbaa !30
  %index.next682 = add nuw i64 %index680, 4       ; 2 uses
  %i.sb = icmp eq i64 %index.next682, %n.vec678
  br i1 %i.sb, label %middle.block683, label %vector.body679, !llvm.loop !140

middle.block683:                                  ; preds = %vector.body679
  %cmp.n684 = icmp eq i64 %i.rw, %n.vec678
  br i1 %cmp.n684, label %.critedge, label %scalar.ph675.preheader

scalar.ph675.preheader:                           ; preds = %.lr.ph286, %middle.block683
  %indvars.iv386.ph = phi i64 [ %i.rv, %.lr.ph286 ], [ %i.rx, %middle.block683 ]
  br label %scalar.ph675

scalar.ph675:                                     ; preds = %scalar.ph675.preheader, %scalar.ph675
  %indvars.iv386 = phi i64 [ %indvars.iv.next387, %scalar.ph675 ], [ %indvars.iv386.ph, %scalar.ph675.preheader ] ; 3 uses
  %i.sc = getelementptr inbounds [4 x i8], ptr %i.ru, i64 %indvars.iv386
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !30
  %i.se = getelementptr inbounds [4 x i8], ptr %i.rt, i64 %indvars.iv386
  store i32 %i.sd, ptr %i.se, align 4, !tbaa !30
  %indvars.iv.next387 = add nsw i64 %indvars.iv386, 1 ; 2 uses
  %exitcond390.not = icmp eq i64 %indvars.iv.next387, %wide.trip.count389
  br i1 %exitcond390.not, label %.critedge, label %scalar.ph675, !llvm.loop !141

.critedge:                                        ; preds = %bb.x, %scalar.ph675, %middle.block683, %bb.ab, %.critedge212._crit_edge.split
  %.4 = phi i32 [ 0, %.critedge212._crit_edge.split ], [ 0, %bb.ab ], [ 0, %middle.block683 ], [ 0, %scalar.ph675 ], [ -22, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %.critedge
  %.5 = phi i32 [ %.4, %.critedge ], [ -22, %bb.a ]
  ret i32 %.5
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @pcm_decode(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, i16 noundef signext range(i16 0, 16) %3, i32 noundef %4, i32 noundef range(i32 0, 512) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [7 x i32], align 16               ; 9 uses
  %switch.tableidx = add nsw i32 %5, -3           ; 3 uses
  %i.b = icmp ult i32 %switch.tableidx, 49
  %switch.maskindex = zext nneg i32 %switch.tableidx to i64
  %switch.shifted = lshr i64 281475257808179, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  %or.cond3 = select i1 %i.b, i1 %switch.lobit, i1 false
  br i1 %or.cond3, label %switch.lookup, label %bb.h

switch.lookup:                                    ; preds = %bb.a
  %i.c = zext nneg i32 %switch.tableidx to i64    ; 3 uses
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.pcm_decode, i64 %i.c
  %switch.load = load i8, ptr %switch.gep, align 1 ; 2 uses
  %switch.ext = zext i8 %switch.load to i32       ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.a, i8 0, i64 28, i1 false)
  %i.d = zext i8 %switch.load to i64              ; 2 uses
  %xtraiter = and i64 %i.d, 1
  %i.e = shl nuw i64 1, %i.c
  %i.f = and i64 %i.e, 276836386
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %switch.lookup.new, label %.epil.preheader

switch.lookup.new:                                ; preds = %switch.lookup
  %unroll_iter = and i64 %i.d, 254
  br label %bb.f

.preheader.unr-lcssa:                             ; preds = %mps_log2.exit.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.unr-lcssa, %switch.lookup
  %indvars.iv.epil.init = phi i64 [ 1, %switch.lookup ], [ %indvars.iv.next.1, %.preheader.unr-lcssa ]
  %.05562.epil.init = phi i32 [ 1, %switch.lookup ], [ %i.cz, %.preheader.unr-lcssa ]
  %6 = lshr i64 281030691, %i.c
  %lcmp.mod6 = trunc i64 %6 to i1
  tail call void @llvm.assume(i1 %lcmp.mod6)
  %i.g = mul nuw nsw i32 %.05562.epil.init, %5    ; 2 uses
  %.not910.i.epil = icmp samesign ult i32 %i.g, 2
  br i1 %.not910.i.epil, label %mps_log2.exit.epil, label %select.unfold.preheader.i.epil

select.unfold.preheader.i.epil:                   ; preds = %.epil.preheader
  %spec.select.i.epil = add nsw i32 %i.g, -1
  br label %select.unfold.i.epil

select.unfold.i.epil:                             ; preds = %select.unfold.i.epil, %select.unfold.preheader.i.epil
  %.012.i.epil = phi i32 [ %i.i, %select.unfold.i.epil ], [ 0, %select.unfold.preheader.i.epil ]
  %.111.i.epil = phi i32 [ %i.h, %select.unfold.i.epil ], [ %spec.select.i.epil, %select.unfold.preheader.i.epil ]
  %i.h = ashr i32 %.111.i.epil, 1                 ; 2 uses
  %i.i = add nuw nsw i32 %.012.i.epil, 1          ; 2 uses
  %.not9.i.epil = icmp eq i32 %i.h, 0
  br i1 %.not9.i.epil, label %mps_log2.exit.epil, label %select.unfold.i.epil, !llvm.loop !142

mps_log2.exit.epil:                               ; preds = %select.unfold.i.epil, %.epil.preheader
  %.0.lcssa.i.epil = phi i32 [ 0, %.epil.preheader ], [ %i.i, %select.unfold.i.epil ]
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.epil.init
  store i32 %.0.lcssa.i.epil, ptr %i.j, align 4, !tbaa !30
  br label %.preheader

.preheader:                                       ; preds = %.preheader.unr-lcssa, %mps_log2.exit.epil
  %i.k = icmp sgt i32 %4, 0
  br i1 %i.k, label %.lr.ph70, label %._crit_edge71

.lr.ph70:                                         ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !18   ; 3 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !19     ; 3 uses
  %i.p = icmp ne ptr %1, null                     ; 2 uses
  %i.q = icmp ne ptr %2, null                     ; 2 uses
  %or.cond = and i1 %i.p, %i.q
  %.promoted = load i32, ptr %i.l, align 8, !tbaa !20 ; 3 uses
  br i1 %or.cond, label %.lr.ph70.split.us, label %.lr.ph70.split

.lr.ph70.split.us:                                ; preds = %.lr.ph70, %._crit_edge.split.us.us
  %indvars.iv83 = phi i32 [ %indvars.iv.next84, %._crit_edge.split.us.us ], [ %4, %.lr.ph70 ] ; 2 uses
  %i.r = phi i32 [ %i.ac, %._crit_edge.split.us.us ], [ %.promoted, %.lr.ph70 ] ; 3 uses
  %.05369.us = phi i32 [ %i.aw, %._crit_edge.split.us.us ], [ 0, %.lr.ph70 ] ; 3 uses
  %smin = tail call i32 @llvm.smin.i32(i32 %switch.ext, i32 %indvars.iv83)
  %smax = tail call i32 @llvm.smax.i32(i32 %smin, i32 1)
  %i.s = sub nuw nsw i32 %4, %.05369.us           ; 2 uses
  %i.t = tail call i32 @llvm.smin.i32(i32 %switch.ext, i32 %i.s) ; 2 uses
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !30   ; 2 uses
  %i.x = lshr i32 %i.r, 3
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 1, !tbaa !21
  %i.ab = add i32 %i.r, %i.w
  %i.ac = tail call i32 @llvm.umin.i32(i32 %i.n, i32 %i.ab) ; 2 uses
  store i32 %i.ac, ptr %i.l, align 8, !tbaa !20
  %i.ad = icmp sgt i32 %i.s, 0
  br i1 %i.ad, label %.lr.ph.us, label %._crit_edge.split.us.us

.lr.ph.us:                                        ; preds = %.lr.ph70.split.us
  %i.ae = tail call i32 @llvm.bswap.i32(i32 %i.aa)
  %i.af = and i32 %i.r, 7
  %i.ag = shl i32 %i.ae, %i.af
  %i.ah = sub nsw i32 32, %i.w
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = add nsw i32 %.05369.us, -1
  %i.ak = add i32 %i.aj, %i.t
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.us
  %.065.us.us = phi i32 [ 0, %.lr.ph.us ], [ %i.av, %bb.e ] ; 2 uses
  %.05264.us.us = phi i32 [ %i.ai, %.lr.ph.us ], [ %i.an, %bb.e ] ; 2 uses
  %i.al = sub i32 %i.ak, %.065.us.us              ; 3 uses
  %i.am = srem i32 %.05264.us.us, %5
  %i.an = sdiv i32 %.05264.us.us, %5
  %i.ao = and i32 %i.al, 1
  %.not61.us.us = icmp eq i32 %i.ao, 0
  %i.ap = trunc nsw i32 %i.am to i16
  %i.aq = sub nsw i16 %i.ap, %3
  br i1 %.not61.us.us, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ar = sdiv i32 %i.al, 2
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.as = ashr exact i32 %i.al, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink = phi i32 [ %i.as, %bb.d ], [ %i.ar, %bb.c ]
  %.sink95 = phi ptr [ %1, %bb.d ], [ %2, %bb.c ]
  %i.at = sext i32 %.sink to i64
  %i.au = getelementptr inbounds [2 x i8], ptr %.sink95, i64 %i.at
  store i16 %i.aq, ptr %i.au, align 2, !tbaa !23
  %i.av = add nuw nsw i32 %.065.us.us, 1          ; 2 uses
  %exitcond85.not = icmp eq i32 %i.av, %smax
  br i1 %exitcond85.not, label %._crit_edge.split.us.us, label %bb.b, !llvm.loop !143

._crit_edge.split.us.us:                          ; preds = %bb.e, %.lr.ph70.split.us
  %i.aw = add nuw nsw i32 %.05369.us, %switch.ext ; 2 uses
  %i.ax = icmp slt i32 %i.aw, %4
  %indvars.iv.next84 = sub i32 %indvars.iv83, %switch.ext
  br i1 %i.ax, label %.lr.ph70.split.us, label %._crit_edge71, !llvm.loop !144

.lr.ph70.split:                                   ; preds = %.lr.ph70
  br i1 %i.q, label %.lr.ph70.split.split.us, label %.lr.ph70.split.split

.lr.ph70.split.split.us:                          ; preds = %.lr.ph70.split, %._crit_edge.split.split.us.split.us
  %indvar14 = phi i32 [ %indvar.next15, %._crit_edge.split.split.us.split.us ], [ 0, %.lr.ph70.split ] ; 2 uses
  %i.ay = phi i32 [ %i.bm, %._crit_edge.split.split.us.split.us ], [ %.promoted, %.lr.ph70.split ] ; 3 uses
  %.05369.us72 = phi i32 [ %i.ct, %._crit_edge.split.split.us.split.us ], [ 0, %.lr.ph70.split ] ; 3 uses
  %i.az = mul i32 %indvar14, %switch.ext
  %i.ba = sub i32 %4, %i.az
  %smin16 = tail call i32 @llvm.smin.i32(i32 %i.ba, i32 %switch.ext) ; 2 uses
  %i.bb = tail call i32 @llvm.umax.i32(i32 %smin16, i32 1) ; 2 uses
  %umax17 = zext i32 %i.bb to i64                 ; 2 uses
  %i.bc = sub nuw nsw i32 %4, %.05369.us72        ; 2 uses
  %i.bd = tail call i32 @llvm.smin.i32(i32 %switch.ext, i32 %i.bc) ; 2 uses
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !30 ; 2 uses
  %i.bh = lshr i32 %i.ay, 3
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 1, !tbaa !21
  %i.bl = add i32 %i.ay, %i.bg
  %i.bm = tail call i32 @llvm.umin.i32(i32 %i.n, i32 %i.bl) ; 2 uses
  store i32 %i.bm, ptr %i.l, align 8, !tbaa !20
  %i.bn = icmp sgt i32 %i.bc, 0
  br i1 %i.bn, label %.lr.ph.us73, label %._crit_edge.split.split.us.split.us

.lr.ph.us73:                                      ; preds = %.lr.ph70.split.split.us
  %i.bo = add nsw i32 %.05369.us72, -1
  %i.bp = add i32 %i.bo, %i.bd                    ; 3 uses
  br i1 %i.p, label %._crit_edge.split.split.us.split.us, label %.lr.ph.split.split.us.split.us.preheader

.lr.ph.split.split.us.split.us.preheader:         ; preds = %.lr.ph.us73
  %i.bq = tail call i32 @llvm.bswap.i32(i32 %i.bk)
  %i.br = and i32 %i.ay, 7
  %i.bs = shl i32 %i.bq, %i.br
  %i.bt = sub nsw i32 32, %i.bg
  %i.bu = lshr i32 %i.bs, %i.bt                   ; 2 uses
  %xtraiter18 = and i64 %umax17, 1
  %i.bv = icmp ult i32 %smin16, 2
  br i1 %i.bv, label %.lr.ph.split.split.us.split.us.epil.preheader, label %.lr.ph.split.split.us.split.us.preheader.new

.lr.ph.split.split.us.split.us.preheader.new:     ; preds = %.lr.ph.split.split.us.split.us.preheader
  %unroll_iter21 = and i64 %umax17, 4294967294
  br label %.lr.ph.split.split.us.split.us

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us.split.us, %.lr.ph.split.split.us.split.us.preheader.new
  %indvars.iv80 = phi i64 [ 0, %.lr.ph.split.split.us.split.us.preheader.new ], [ %indvars.iv.next81.1, %.lr.ph.split.split.us.split.us ] ; 3 uses
  %.05264.us67.us = phi i32 [ %i.bu, %.lr.ph.split.split.us.split.us.preheader.new ], [ %i.cl, %.lr.ph.split.split.us.split.us ] ; 2 uses
  %niter22 = phi i64 [ 0, %.lr.ph.split.split.us.split.us.preheader.new ], [ %niter22.next.1, %.lr.ph.split.split.us.split.us ]
  %i.bw = trunc nuw nsw i64 %indvars.iv80 to i32
  %i.bx = sub i32 %i.bp, %i.bw
  %i.by = srem i32 %.05264.us67.us, %5
  %i.bz = trunc nsw i32 %i.by to i16
  %i.ca = sub nsw i16 %i.bz, %3
  %i.cb = sext i32 %i.bx to i64
  %i.cc = getelementptr inbounds [2 x i8], ptr %2, i64 %i.cb
  store i16 %i.ca, ptr %i.cc, align 2, !tbaa !23
  %i.cd = sdiv i32 %.05264.us67.us, %5            ; 2 uses
  %i.ce = trunc i64 %indvars.iv80 to i32
  %.neg23 = xor i32 %i.ce, -1
  %i.cf = add i32 %i.bp, %.neg23
  %i.cg = srem i32 %i.cd, %5
  %i.ch = trunc nsw i32 %i.cg to i16
  %i.ci = sub nsw i16 %i.ch, %3
  %i.cj = sext i32 %i.cf to i64
  %i.ck = getelementptr inbounds [2 x i8], ptr %2, i64 %i.cj
  store i16 %i.ci, ptr %i.ck, align 2, !tbaa !23
  %i.cl = sdiv i32 %i.cd, %5                      ; 2 uses
  %indvars.iv.next81.1 = add nuw nsw i64 %indvars.iv80, 2 ; 2 uses
  %niter22.next.1 = add i64 %niter22, 2           ; 2 uses
  %niter22.ncmp.1.not = icmp eq i64 %niter22.next.1, %unroll_iter21
  br i1 %niter22.ncmp.1.not, label %._crit_edge.split.split.us.split.us.loopexit.unr-lcssa, label %.lr.ph.split.split.us.split.us, !llvm.loop !143

._crit_edge.split.split.us.split.us.loopexit.unr-lcssa: ; preds = %.lr.ph.split.split.us.split.us
  %lcmp.mod19.not = icmp eq i64 %xtraiter18, 0
  br i1 %lcmp.mod19.not, label %._crit_edge.split.split.us.split.us, label %.lr.ph.split.split.us.split.us.epil.preheader

.lr.ph.split.split.us.split.us.epil.preheader:    ; preds = %._crit_edge.split.split.us.split.us.loopexit.unr-lcssa, %.lr.ph.split.split.us.split.us.preheader
  %indvars.iv80.epil.init = phi i64 [ 0, %.lr.ph.split.split.us.split.us.preheader ], [ %indvars.iv.next81.1, %._crit_edge.split.split.us.split.us.loopexit.unr-lcssa ]
  %.05264.us67.us.epil.init = phi i32 [ %i.bu, %.lr.ph.split.split.us.split.us.preheader ], [ %i.cl, %._crit_edge.split.split.us.split.us.loopexit.unr-lcssa ]
  %lcmp.mod20 = trunc i32 %i.bb to i1
  tail call void @llvm.assume(i1 %lcmp.mod20)
  %i.cm = trunc nuw nsw i64 %indvars.iv80.epil.init to i32
  %i.cn = sub i32 %i.bp, %i.cm
  %i.co = srem i32 %.05264.us67.us.epil.init, %5
  %i.cp = trunc nsw i32 %i.co to i16
  %i.cq = sub nsw i16 %i.cp, %3
  %i.cr = sext i32 %i.cn to i64
  %i.cs = getelementptr inbounds [2 x i8], ptr %2, i64 %i.cr
  store i16 %i.cq, ptr %i.cs, align 2, !tbaa !23
  br label %._crit_edge.split.split.us.split.us

._crit_edge.split.split.us.split.us:              ; preds = %.lr.ph.split.split.us.split.us.epil.preheader, %._crit_edge.split.split.us.split.us.loopexit.unr-lcssa, %.lr.ph.us73, %.lr.ph70.split.split.us
  %i.ct = add nuw nsw i32 %.05369.us72, %switch.ext ; 2 uses
end_hunk_0

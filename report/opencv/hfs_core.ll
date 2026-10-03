Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/hfs_core?download=true
inline.NumInlined: 879
inline.NumDeleted: 404
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN2cv3hfs7HfsCore18getAvgGradientBdryERKNS_3MatERKSt6vectorIS2_SaIS2_EEiRS2_RS7_:bb.a
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.aa, ptr %i.q, align 8, !tbaa !85
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit:     ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.ac = icmp sgt i32 %i.o, 0                    ; 3 uses
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit
  %wide.trip.count = and i64 %i.n, 2147483647
  br label %bb.bp

._crit_edge:                                      ; preds = %bb.bp, %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit
  call void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %4, i32 noundef %3, i32 noundef %3, i32 noundef 5)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %i.ad = call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(32) %7) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.ae = add nsw i32 %i.e, -1
  %i.af = icmp sgt i32 %i.e, 2
  br i1 %i.af, label %.preheader194.lr.ph, label %.preheader189

.preheader194.lr.ph:                              ; preds = %._crit_edge
  %i.ag = add i32 %i.g, -1                        ; 2 uses
  %i.ah = icmp sgt i32 %i.g, 2
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 2 uses
  br i1 %i.ah, label %.preheader194.lr.ph.split, label %.preheader189

.preheader194.lr.ph.split:                        ; preds = %.preheader194.lr.ph
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !87
  %i.ap = icmp slt i32 %i.ao, 2                   ; 9 uses
  %i.aq = load ptr, ptr %i.am, align 8, !tbaa !65 ; 9 uses
  %wide.trip.count324 = zext nneg i32 %i.ae to i64 ; 2 uses
  br i1 %i.ac, label %.preheader194.us.preheader, label %.preheader194.preheader

.preheader194.preheader:                          ; preds = %.preheader194.lr.ph.split
  %.pre.pre = load i64, ptr %i.ai, align 8        ; 3 uses
  %wide.trip.count284 = zext i32 %i.ag to i64
  br label %.preheader194

.preheader194.us.preheader:                       ; preds = %.preheader194.lr.ph.split
  %wide.trip.count319 = zext i32 %i.ag to i64
  %wide.trip.count314 = and i64 %i.n, 2147483647
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  br label %.preheader194.us

.preheader194.us:                                 ; preds = %.preheader194.us.preheader, %._crit_edge213.split.us.us
  %indvars.iv321 = phi i64 [ 1, %.preheader194.us.preheader ], [ %i.ku, %._crit_edge213.split.us.us ] ; 6 uses
  %i.bp = add nsw i64 %indvars.iv321, -1
  %i.bq = add nsw i64 %indvars.iv321, -1
  %i.br = add nuw nsw i64 %indvars.iv321, 1       ; 4 uses
  %i.bs = add nuw nsw i64 %indvars.iv321, 1       ; 3 uses
  %i.bt = trunc nuw nsw i64 %indvars.iv321 to i32
  br label %bb.e

bb.e:                                             ; preds = %..loopexit_crit_edge.us.us, %.preheader194.us
  %indvars.iv316 = phi i64 [ %indvars.iv.next317427440452, %..loopexit_crit_edge.us.us ], [ 1, %.preheader194.us ] ; 7 uses
  %i.bu = load i64, ptr %i.ai, align 8            ; 5 uses
  %i.bv = mul i64 %i.bu, %indvars.iv321
  %.sink.idx.i.us.us = select i1 %i.ap, i64 0, i64 %i.bv
  %.sink.i.us.us = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sink.idx.i.us.us ; 4 uses
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %.sink.i.us.us, i64 %indvars.iv316
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !89 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.by = shl i64 %indvars.iv316, 32
  %sext.i.us.us = add i64 %i.by, -4294967296
  %i.bz = ashr exact i64 %sext.i.us.us, 31
  %i.ca = getelementptr inbounds i8, ptr %.sink.i.us.us, i64 %i.bz
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !89 ; 3 uses
  %.not140.us.us = icmp eq i16 %i.cb, %i.bx
  br i1 %.not140.us.us, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.cc = mul i64 %i.bu, %i.bq
  %.sink.idx.i149.us.us.1 = select i1 %i.ap, i64 0, i64 %i.cc
  %.sink.i150.us.us.1 = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sink.idx.i149.us.us.1
  %i.cd = shl nuw nsw i64 %indvars.iv316, 1       ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sink.i150.us.us.1, i64 %i.cd
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !89 ; 2 uses
  %.not140.us.us.1 = icmp eq i16 %i.cf, %i.bx
  br i1 %.not140.us.us.1, label %.thread421, label %.critedge.1

.thread:                                          ; preds = %bb.e
  store i16 %i.cb, ptr %i.a, align 2, !tbaa !89
  %i.cg = mul i64 %i.bu, %i.bp
  %.sink.idx.i149.us.us.1414 = select i1 %i.ap, i64 0, i64 %i.cg
  %.sink.i150.us.us.1415 = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sink.idx.i149.us.us.1414
  %i.ch = shl nuw nsw i64 %indvars.iv316, 1       ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sink.i150.us.us.1415, i64 %i.ch
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !89 ; 3 uses
  %.not140.us.us.1416 = icmp eq i16 %i.cj, %i.bx
  %.not412 = icmp eq i16 %i.cb, %i.cj
  %or.cond = or i1 %.not140.us.us.1416, %.not412
  br i1 %or.cond, label %bb.g, label %.critedge.1

.critedge.1:                                      ; preds = %.thread, %bb.f
  %.2130.us.us417420 = phi i16 [ 1, %.thread ], [ 0, %bb.f ] ; 2 uses
  %i.ck = phi i64 [ %i.ch, %.thread ], [ %i.cd, %bb.f ]
  %i.cl = phi i16 [ %i.cj, %.thread ], [ %i.cf, %bb.f ]
  %i.cm = add nuw nsw i16 %.2130.us.us417420, 1
  %i.cn = zext nneg i16 %.2130.us.us417420 to i64
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.cn
  store i16 %i.cl, ptr %i.co, align 2, !tbaa !89
  br label %bb.g

bb.g:                                             ; preds = %.thread, %.critedge.1
  %i.cp = phi i64 [ %i.ch, %.thread ], [ %i.ck, %.critedge.1 ] ; 3 uses
  %.2130.us.us.1 = phi i16 [ 1, %.thread ], [ %i.cm, %.critedge.1 ] ; 6 uses
  %indvars.iv.next317 = add nuw nsw i64 %indvars.iv316, 1 ; 4 uses
  %i.cq = shl nuw nsw i64 %indvars.iv.next317, 1
  %i.cr = getelementptr inbounds nuw i8, ptr %.sink.i.us.us, i64 %i.cq
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !89 ; 5 uses
  %.not140.us.us.2 = icmp eq i16 %i.cs, %i.bx
  br i1 %.not140.us.us.2, label %bb.h, label %iter.check595

.thread421:                                       ; preds = %bb.f
  %indvars.iv.next317423 = add nuw nsw i64 %indvars.iv316, 1 ; 4 uses
  %i.ct = shl nuw nsw i64 %indvars.iv.next317423, 1
  %i.cu = getelementptr inbounds nuw i8, ptr %.sink.i.us.us, i64 %i.ct
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !89 ; 2 uses
  %.not140.us.us.2424 = icmp eq i16 %i.cv, %i.bx
  br i1 %.not140.us.us.2424, label %.thread433, label %.critedge.2

iter.check595:                                    ; preds = %bb.g
  %wide.trip.count293.2 = zext nneg i16 %.2130.us.us.1 to i64 ; 6 uses
  %min.iters.check576 = icmp ult i16 %.2130.us.us.1, 4
  br i1 %min.iters.check576, label %.lr.ph198.us.us.2.preheader, label %vector.main.loop.iter.check577

vector.main.loop.iter.check577:                   ; preds = %iter.check595
  %min.iters.check578 = icmp ult i16 %.2130.us.us.1, 16
  br i1 %min.iters.check578, label %vec.epilog.ph599, label %vector.ph579

vector.ph579:                                     ; preds = %vector.main.loop.iter.check577
  %i.cw = and i64 %wide.trip.count293.2, 12
  %n.vec580 = and i64 %wide.trip.count293.2, 32752 ; 4 uses
  %broadcast.splatinsert581 = insertelement <8 x i16> poison, i16 %i.cs, i64 0
  %broadcast.splat582 = shufflevector <8 x i16> %broadcast.splatinsert581, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body583

vector.body583:                                   ; preds = %vector.ph579, %vector.body583
  %index584 = phi i64 [ 0, %vector.ph579 ], [ %index.next589, %vector.body583 ] ; 2 uses
  %vec.phi585 = phi <8 x i1> [ zeroinitializer, %vector.ph579 ], [ %i.db, %vector.body583 ]
  %vec.phi586 = phi <8 x i1> [ zeroinitializer, %vector.ph579 ], [ %i.dc, %vector.body583 ]
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index584 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %wide.load587 = load <8 x i16>, ptr %i.cx, align 2, !tbaa !89
  %wide.load588 = load <8 x i16>, ptr %i.cy, align 2, !tbaa !89
  %i.cz = icmp eq <8 x i16> %wide.load587, %broadcast.splat582
  %i.da = icmp eq <8 x i16> %wide.load588, %broadcast.splat582
  %i.db = or <8 x i1> %vec.phi585, %i.cz          ; 2 uses
  %i.dc = or <8 x i1> %vec.phi586, %i.da          ; 2 uses
  %index.next589 = add nuw i64 %index584, 16      ; 2 uses
  %i.dd = icmp eq i64 %index.next589, %n.vec580
  br i1 %i.dd, label %middle.block590, label %vector.body583, !llvm.loop !149

middle.block590:                                  ; preds = %vector.body583
  %bin.rdx591 = or <8 x i1> %i.dc, %i.db
  %bin.rdx591.fr = freeze <8 x i1> %bin.rdx591
  %i.de = bitcast <8 x i1> %bin.rdx591.fr to i8
  %.not635 = icmp eq i8 %i.de, 0                  ; 3 uses
  %cmp.n592 = icmp eq i64 %n.vec580, %wide.trip.count293.2
  br i1 %cmp.n592, label %._crit_edge199.us.us.2, label %vec.epilog.iter.check597

vec.epilog.iter.check597:                         ; preds = %middle.block590
  %min.epilog.iters.check598 = icmp eq i64 %i.cw, 0
  br i1 %min.epilog.iters.check598, label %.lr.ph198.us.us.2.preheader, label %vec.epilog.ph599, !prof !169

vec.epilog.ph599:                                 ; preds = %vector.main.loop.iter.check577, %vec.epilog.iter.check597
  %vec.epilog.resume.val593 = phi i64 [ %n.vec580, %vec.epilog.iter.check597 ], [ 0, %vector.main.loop.iter.check577 ]
  %bc.merge.rdx594 = phi i1 [ %.not635, %vec.epilog.iter.check597 ], [ true, %vector.main.loop.iter.check577 ]
  %n.vec600 = and i64 %wide.trip.count293.2, 32764 ; 3 uses
  %8 = xor i1 %bc.merge.rdx594, true
  %broadcast.splatinsert601 = insertelement <4 x i1> poison, i1 %8, i64 0
  %broadcast.splat602 = shufflevector <4 x i1> %broadcast.splatinsert601, <4 x i1> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert603 = insertelement <4 x i16> poison, i16 %i.cs, i64 0
  %broadcast.splat604 = shufflevector <4 x i16> %broadcast.splatinsert603, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body605

vec.epilog.vector.body605:                        ; preds = %vec.epilog.vector.body605, %vec.epilog.ph599
  %index606 = phi i64 [ %vec.epilog.resume.val593, %vec.epilog.ph599 ], [ %index.next609, %vec.epilog.vector.body605 ] ; 2 uses
  %vec.phi607 = phi <4 x i1> [ %broadcast.splat602, %vec.epilog.ph599 ], [ %.fr637, %vec.epilog.vector.body605 ]
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index606
  %wide.load608 = load <4 x i16>, ptr %i.df, align 2, !tbaa !89
  %i.dg = icmp eq <4 x i16> %wide.load608, %broadcast.splat604
  %i.dh = or <4 x i1> %vec.phi607, %i.dg
  %.fr637 = freeze <4 x i1> %i.dh                 ; 2 uses
  %index.next609 = add nuw i64 %index606, 4       ; 2 uses
  %i.di = icmp eq i64 %index.next609, %n.vec600
  br i1 %i.di, label %vec.epilog.middle.block610, label %vec.epilog.vector.body605, !llvm.loop !150

vec.epilog.middle.block610:                       ; preds = %vec.epilog.vector.body605
  %i.dj = bitcast <4 x i1> %.fr637 to i4
  %.not638 = icmp eq i4 %i.dj, 0                  ; 2 uses
  %cmp.n611 = icmp eq i64 %n.vec600, %wide.trip.count293.2
  br i1 %cmp.n611, label %._crit_edge199.us.us.2, label %.lr.ph198.us.us.2.preheader

.lr.ph198.us.us.2.preheader:                      ; preds = %iter.check595, %vec.epilog.iter.check597, %vec.epilog.middle.block610
  %indvars.iv291.2.ph = phi i64 [ 0, %iter.check595 ], [ %n.vec580, %vec.epilog.iter.check597 ], [ %n.vec600, %vec.epilog.middle.block610 ]
  %.0123196.us.us.2.ph = phi i1 [ true, %iter.check595 ], [ %.not635, %vec.epilog.iter.check597 ], [ %.not638, %vec.epilog.middle.block610 ]
  br label %.lr.ph198.us.us.2

.lr.ph198.us.us.2:                                ; preds = %.lr.ph198.us.us.2.preheader, %.lr.ph198.us.us.2
  %indvars.iv291.2 = phi i64 [ %indvars.iv.next292.2, %.lr.ph198.us.us.2 ], [ %indvars.iv291.2.ph, %.lr.ph198.us.us.2.preheader ] ; 2 uses
  %.0123196.us.us.2 = phi i1 [ %spec.select.us.us.2, %.lr.ph198.us.us.2 ], [ %.0123196.us.us.2.ph, %.lr.ph198.us.us.2.preheader ]
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv291.2
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !89
  %i.dm = icmp ne i16 %i.dl, %i.cs
  %spec.select.us.us.2 = select i1 %i.dm, i1 %.0123196.us.us.2, i1 false ; 2 uses
  %indvars.iv.next292.2 = add nuw nsw i64 %indvars.iv291.2, 1 ; 2 uses
  %exitcond294.2.not = icmp eq i64 %indvars.iv.next292.2, %wide.trip.count293.2
  br i1 %exitcond294.2.not, label %._crit_edge199.us.us.2, label %.lr.ph198.us.us.2, !llvm.loop !151

._crit_edge199.us.us.2:                           ; preds = %.lr.ph198.us.us.2, %vec.epilog.middle.block610, %middle.block590
  %spec.select.us.us.2.lcssa = phi i1 [ %.not638, %vec.epilog.middle.block610 ], [ %.not635, %middle.block590 ], [ %spec.select.us.us.2, %.lr.ph198.us.us.2 ]
  br i1 %spec.select.us.us.2.lcssa, label %.critedge.2, label %bb.h

.critedge.2:                                      ; preds = %.thread421, %._crit_edge199.us.us.2
  %i.dn = phi i64 [ %i.cp, %._crit_edge199.us.us.2 ], [ %i.cd, %.thread421 ]
  %.2130.us.us.1425432 = phi i16 [ %.2130.us.us.1, %._crit_edge199.us.us.2 ], [ 0, %.thread421 ] ; 2 uses
  %indvars.iv.next317426431 = phi i64 [ %indvars.iv.next317, %._crit_edge199.us.us.2 ], [ %indvars.iv.next317423, %.thread421 ]
  %i.do = phi i16 [ %i.cs, %._crit_edge199.us.us.2 ], [ %i.cv, %.thread421 ]
  %i.dp = add nuw nsw i16 %.2130.us.us.1425432, 1
  %i.dq = zext nneg i16 %.2130.us.us.1425432 to i64
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.dq
  store i16 %i.do, ptr %i.dr, align 2, !tbaa !89
  br label %bb.h

bb.h:                                             ; preds = %.critedge.2, %._crit_edge199.us.us.2, %bb.g
  %indvars.iv.next317427 = phi i64 [ %indvars.iv.next317, %bb.g ], [ %indvars.iv.next317426431, %.critedge.2 ], [ %indvars.iv.next317, %._crit_edge199.us.us.2 ] ; 3 uses
  %i.ds = phi i64 [ %i.cp, %bb.g ], [ %i.dn, %.critedge.2 ], [ %i.cp, %._crit_edge199.us.us.2 ]
  %.2130.us.us.2 = phi i16 [ %.2130.us.us.1, %bb.g ], [ %i.dp, %.critedge.2 ], [ %.2130.us.us.1, %._crit_edge199.us.us.2 ] ; 6 uses
  %i.dt = mul i64 %i.bu, %i.br
  %.sink.idx.i149.us.us.3 = select i1 %i.ap, i64 0, i64 %i.dt
  %.sink.i150.us.us.3 = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sink.idx.i149.us.us.3
  %i.du = getelementptr inbounds nuw i8, ptr %.sink.i150.us.us.3, i64 %i.ds
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !89 ; 5 uses
  %.not140.us.us.3 = icmp eq i16 %i.dv, %i.bx
  br i1 %.not140.us.us.3, label %.preheader193.us.us, label %iter.check557

.thread433:                                       ; preds = %.thread421
  %i.dw = mul i64 %i.bu, %i.bs
  %.sink.idx.i149.us.us.3436 = select i1 %i.ap, i64 0, i64 %i.dw
  %.sink.i150.us.us.3437 = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sink.idx.i149.us.us.3436
  %i.dx = getelementptr inbounds nuw i8, ptr %.sink.i150.us.us.3437, i64 %i.cd
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !89 ; 2 uses
  %.not140.us.us.3438 = icmp eq i16 %i.dy, %i.bx
  br i1 %.not140.us.us.3438, label %..loopexit_crit_edge.us.us, label %.critedge.3

iter.check557:                                    ; preds = %bb.h
  %wide.trip.count293.3 = zext nneg i16 %.2130.us.us.2 to i64 ; 6 uses
  %min.iters.check538 = icmp ult i16 %.2130.us.us.2, 4
  br i1 %min.iters.check538, label %.lr.ph198.us.us.3.preheader, label %vector.main.loop.iter.check539

vector.main.loop.iter.check539:                   ; preds = %iter.check557
  %min.iters.check540 = icmp ult i16 %.2130.us.us.2, 16
  br i1 %min.iters.check540, label %vec.epilog.ph561, label %vector.ph541

vector.ph541:                                     ; preds = %vector.main.loop.iter.check539
  %i.dz = and i64 %wide.trip.count293.3, 12
  %n.vec542 = and i64 %wide.trip.count293.3, 32752 ; 4 uses
  %broadcast.splatinsert543 = insertelement <8 x i16> poison, i16 %i.dv, i64 0
  %broadcast.splat544 = shufflevector <8 x i16> %broadcast.splatinsert543, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body545

vector.body545:                                   ; preds = %vector.ph541, %vector.body545
  %index546 = phi i64 [ 0, %vector.ph541 ], [ %index.next551, %vector.body545 ] ; 2 uses
  %vec.phi547 = phi <8 x i1> [ zeroinitializer, %vector.ph541 ], [ %i.ee, %vector.body545 ]
  %vec.phi548 = phi <8 x i1> [ zeroinitializer, %vector.ph541 ], [ %i.ef, %vector.body545 ]
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index546 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %wide.load549 = load <8 x i16>, ptr %i.ea, align 2, !tbaa !89
  %wide.load550 = load <8 x i16>, ptr %i.eb, align 2, !tbaa !89
  %i.ec = icmp eq <8 x i16> %wide.load549, %broadcast.splat544
  %i.ed = icmp eq <8 x i16> %wide.load550, %broadcast.splat544
  %i.ee = or <8 x i1> %vec.phi547, %i.ec          ; 2 uses
  %i.ef = or <8 x i1> %vec.phi548, %i.ed          ; 2 uses
  %index.next551 = add nuw i64 %index546, 16      ; 2 uses
  %i.eg = icmp eq i64 %index.next551, %n.vec542
  br i1 %i.eg, label %middle.block552, label %vector.body545, !llvm.loop !152

middle.block552:                                  ; preds = %vector.body545
  %bin.rdx553 = or <8 x i1> %i.ef, %i.ee
  %bin.rdx553.fr = freeze <8 x i1> %bin.rdx553
  %i.eh = bitcast <8 x i1> %bin.rdx553.fr to i8
  %.not640 = icmp eq i8 %i.eh, 0                  ; 3 uses
  %cmp.n554 = icmp eq i64 %n.vec542, %wide.trip.count293.3
  br i1 %cmp.n554, label %._crit_edge199.us.us.3, label %vec.epilog.iter.check559

vec.epilog.iter.check559:                         ; preds = %middle.block552
  %min.epilog.iters.check560 = icmp eq i64 %i.dz, 0
  br i1 %min.epilog.iters.check560, label %.lr.ph198.us.us.3.preheader, label %vec.epilog.ph561, !prof !169

vec.epilog.ph561:                                 ; preds = %vector.main.loop.iter.check539, %vec.epilog.iter.check559
  %vec.epilog.resume.val555 = phi i64 [ %n.vec542, %vec.epilog.iter.check559 ], [ 0, %vector.main.loop.iter.check539 ]
  %bc.merge.rdx556 = phi i1 [ %.not640, %vec.epilog.iter.check559 ], [ true, %vector.main.loop.iter.check539 ]
  %n.vec562 = and i64 %wide.trip.count293.3, 32764 ; 3 uses
  %9 = xor i1 %bc.merge.rdx556, true
  %broadcast.splatinsert563 = insertelement <4 x i1> poison, i1 %9, i64 0
  %broadcast.splat564 = shufflevector <4 x i1> %broadcast.splatinsert563, <4 x i1> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert565 = insertelement <4 x i16> poison, i16 %i.dv, i64 0
  %broadcast.splat566 = shufflevector <4 x i16> %broadcast.splatinsert565, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body567

vec.epilog.vector.body567:                        ; preds = %vec.epilog.vector.body567, %vec.epilog.ph561
  %index568 = phi i64 [ %vec.epilog.resume.val555, %vec.epilog.ph561 ], [ %index.next571, %vec.epilog.vector.body567 ] ; 2 uses
  %vec.phi569 = phi <4 x i1> [ %broadcast.splat564, %vec.epilog.ph561 ], [ %.fr642, %vec.epilog.vector.body567 ]
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index568
  %wide.load570 = load <4 x i16>, ptr %i.ei, align 2, !tbaa !89
  %i.ej = icmp eq <4 x i16> %wide.load570, %broadcast.splat566
  %i.ek = or <4 x i1> %vec.phi569, %i.ej
  %.fr642 = freeze <4 x i1> %i.ek                 ; 2 uses
  %index.next571 = add nuw i64 %index568, 4       ; 2 uses
  %i.el = icmp eq i64 %index.next571, %n.vec562
  br i1 %i.el, label %vec.epilog.middle.block572, label %vec.epilog.vector.body567, !llvm.loop !153

vec.epilog.middle.block572:                       ; preds = %vec.epilog.vector.body567
  %i.em = bitcast <4 x i1> %.fr642 to i4
  %.not643 = icmp eq i4 %i.em, 0                  ; 2 uses
  %cmp.n573 = icmp eq i64 %n.vec562, %wide.trip.count293.3
  br i1 %cmp.n573, label %._crit_edge199.us.us.3, label %.lr.ph198.us.us.3.preheader

.lr.ph198.us.us.3.preheader:                      ; preds = %iter.check557, %vec.epilog.iter.check559, %vec.epilog.middle.block572
  %indvars.iv291.3.ph = phi i64 [ 0, %iter.check557 ], [ %n.vec542, %vec.epilog.iter.check559 ], [ %n.vec562, %vec.epilog.middle.block572 ]
  %.0123196.us.us.3.ph = phi i1 [ true, %iter.check557 ], [ %.not640, %vec.epilog.iter.check559 ], [ %.not643, %vec.epilog.middle.block572 ]
  br label %.lr.ph198.us.us.3

.lr.ph198.us.us.3:                                ; preds = %.lr.ph198.us.us.3.preheader, %.lr.ph198.us.us.3
  %indvars.iv291.3 = phi i64 [ %indvars.iv.next292.3, %.lr.ph198.us.us.3 ], [ %indvars.iv291.3.ph, %.lr.ph198.us.us.3.preheader ] ; 2 uses
  %.0123196.us.us.3 = phi i1 [ %spec.select.us.us.3, %.lr.ph198.us.us.3 ], [ %.0123196.us.us.3.ph, %.lr.ph198.us.us.3.preheader ]
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv291.3
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !89
  %i.ep = icmp ne i16 %i.eo, %i.dv
  %spec.select.us.us.3 = select i1 %i.ep, i1 %.0123196.us.us.3, i1 false ; 2 uses
  %indvars.iv.next292.3 = add nuw nsw i64 %indvars.iv291.3, 1 ; 2 uses
  %exitcond294.3.not = icmp eq i64 %indvars.iv.next292.3, %wide.trip.count293.3
  br i1 %exitcond294.3.not, label %._crit_edge199.us.us.3, label %.lr.ph198.us.us.3, !llvm.loop !154

._crit_edge199.us.us.3:                           ; preds = %.lr.ph198.us.us.3, %vec.epilog.middle.block572, %middle.block552
  %spec.select.us.us.3.lcssa = phi i1 [ %.not643, %vec.epilog.middle.block572 ], [ %.not640, %middle.block552 ], [ %spec.select.us.us.3, %.lr.ph198.us.us.3 ]
  br i1 %spec.select.us.us.3.lcssa, label %.critedge.3, label %.preheader193.us.us

.critedge.3:                                      ; preds = %.thread433, %._crit_edge199.us.us.3
  %indvars.iv.next317427439446 = phi i64 [ %indvars.iv.next317427, %._crit_edge199.us.us.3 ], [ %indvars.iv.next317423, %.thread433 ]
  %.2130.us.us.2441445 = phi i16 [ %.2130.us.us.2, %._crit_edge199.us.us.3 ], [ 0, %.thread433 ] ; 2 uses
  %i.eq = phi i64 [ %i.br, %._crit_edge199.us.us.3 ], [ %i.bs, %.thread433 ]
  %i.er = phi i16 [ %i.dv, %._crit_edge199.us.us.3 ], [ %i.dy, %.thread433 ]
  %i.es = add nuw nsw i16 %.2130.us.us.2441445, 1
  %i.et = zext nneg i16 %.2130.us.us.2441445 to i64
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.et
  store i16 %i.er, ptr %i.eu, align 2, !tbaa !89
  br label %.preheader193.us.us

.preheader193.us.us:                              ; preds = %bb.h, %.critedge.3, %._crit_edge199.us.us.3
  %.ph = phi i64 [ %i.br, %._crit_edge199.us.us.3 ], [ %i.eq, %.critedge.3 ], [ %i.br, %bb.h ]
  %indvars.iv.next317427440.ph = phi i64 [ %indvars.iv.next317427, %._crit_edge199.us.us.3 ], [ %indvars.iv.next317427439446, %.critedge.3 ], [ %indvars.iv.next317427, %bb.h ]
  %.2130.us.us.3.ph = phi i16 [ %.2130.us.us.2, %._crit_edge199.us.us.3 ], [ %i.es, %.critedge.3 ], [ %.2130.us.us.2, %bb.h ]
  %i.ev = zext i16 %i.bx to i32                   ; 13 uses
  %i.ew = load ptr, ptr %5, align 8, !tbaa !86
  %i.ex = zext i16 %i.bx to i64                   ; 4 uses
  %i.ey = load i32, ptr %i.aj, align 4, !tbaa !87
  %i.ez = icmp slt i32 %i.ey, 2                   ; 2 uses
  %i.fa = load ptr, ptr %i.ak, align 8, !tbaa !65 ; 2 uses
  %invariant.gep205.us.us = getelementptr [4 x i8], ptr %i.fa, i64 %i.ex
  %i.fb = trunc nuw nsw i64 %indvars.iv316 to i32
  %wide.trip.count309 = zext i16 %.2130.us.us.3.ph to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.bo, %.preheader193.us.us
  %indvars.iv311 = phi i64 [ %indvars.iv.next312, %bb.bo ], [ 0, %.preheader193.us.us ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  br label %bb.j

bb.j:                                             ; preds = %bb.n, %bb.i
  %indvars.iv298 = phi i64 [ %indvars.iv.next299, %bb.n ], [ 0, %bb.i ] ; 5 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr @_ZN2cv3hfsL7CIRCLE2E, i64 %indvars.iv298 ; 2 uses
  %.val143.us.us = load i32, ptr %i.fc, align 8, !tbaa !93
  %i.fd = getelementptr i8, ptr %i.fc, i64 4
  %.val144.us.us = load i32, ptr %i.fd, align 4, !tbaa !94
  %i.fe = add nsw i32 %.val143.us.us, %i.fb       ; 3 uses
  %i.ff = add nsw i32 %.val144.us.us, %i.bt       ; 3 uses
  %.sroa.2.0.insert.ext.i151.us.us = zext i32 %i.ff to i64 ; 2 uses
  %i.fg = icmp sgt i32 %i.fe, -1
  br i1 %i.fg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.fh = icmp slt i32 %i.fe, %i.g
  %i.fi = icmp sgt i32 %i.ff, -1
  %or.cond.us.us = select i1 %i.fh, i1 %i.fi, i1 false
  %i.fj = icmp slt i32 %i.ff, %i.e
  %or.cond141.us.us = select i1 %or.cond.us.us, i1 %i.fj, i1 false
  br i1 %or.cond141.us.us, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv298
  store i32 -1, ptr %i.fk, align 4, !tbaa !54
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %.sroa.0.0.insert.ext175.us.us = zext nneg i32 %i.fe to i64 ; 2 uses
  %i.fl = load i64, ptr %i.ai, align 8
  %i.fm = mul i64 %i.fl, %.sroa.2.0.insert.ext.i151.us.us
  %.sink.idx.i155.us.us = select i1 %i.ap, i64 0, i64 %i.fm
  %.sink.i156.us.us = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sink.idx.i155.us.us
  %i.fn = shl nuw nsw i64 %.sroa.0.0.insert.ext175.us.us, 1
  %i.fo = getelementptr inbounds nuw i8, ptr %.sink.i156.us.us, i64 %i.fn
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !89
  %i.fq = zext i16 %i.fp to i32
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv298
  store i32 %i.fq, ptr %i.fr, align 4, !tbaa !54
  %i.fs = load ptr, ptr %2, align 8, !tbaa !86
  %i.ft = getelementptr inbounds nuw [208 x i8], ptr %i.fs, i64 %indvars.iv311 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !87
  %i.fw = icmp slt i32 %i.fv, 2
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !65
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ft, i64 128
  %i.ga = load i64, ptr %i.fz, align 8
  %i.gb = mul i64 %i.ga, %.sroa.2.0.insert.ext.i151.us.us
  %.sink.idx.i158.us.us = select i1 %i.fw, i64 0, i64 %i.gb
  %.sink.i159.us.us = getelementptr inbounds nuw i8, ptr %i.fy, i64 %.sink.idx.i158.us.us
  %i.gc = getelementptr inbounds nuw i8, ptr %.sink.i159.us.us, i64 %.sroa.0.0.insert.ext175.us.us
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !53
  %i.ge = uitofp i8 %i.gd to float
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sink = phi float [ %i.ge, %bb.m ], [ 0.000000e+00, %bb.l ]
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv298
  store float %.sink, ptr %i.gf, align 4, !tbaa !82
  %indvars.iv.next299 = add nuw nsw i64 %indvars.iv298, 1 ; 2 uses
  %exitcond301.not = icmp eq i64 %indvars.iv.next299, 13
  br i1 %exitcond301.not, label %.preheader191.us.us, label %bb.j, !llvm.loop !155

.preheader191.us.us:                              ; preds = %bb.n
  %i.gg = getelementptr inbounds nuw [208 x i8], ptr %i.ew, i64 %indvars.iv311 ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !87
  %i.gj = icmp slt i32 %i.gi, 2                   ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gg, i64 24
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !65 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gg, i64 128 ; 2 uses
  %invariant.gep.us.us = getelementptr [4 x i8], ptr %i.gl, i64 %i.ex
  %.pre366 = load i32, ptr %i.b, align 16, !tbaa !54 ; 2 uses
  %i.gn = icmp eq i32 %.pre366, %i.ev
  %i.go = load float, ptr %i.c, align 16          ; 2 uses
  %i.gp = fcmp ule float %i.go, 0.000000e+00      ; 2 uses
  %i.gq = load i32, ptr %i.ar, align 4, !tbaa !54 ; 2 uses
  %i.gr = icmp eq i32 %i.gq, %i.ev
  %i.gs = load float, ptr %i.as, align 4          ; 3 uses
  %i.gt = load i32, ptr %i.at, align 8, !tbaa !54 ; 2 uses
  %i.gu = icmp eq i32 %i.gt, %i.ev
  %i.gv = load float, ptr %i.au, align 8          ; 3 uses
  %i.gw = load i32, ptr %i.av, align 4, !tbaa !54 ; 2 uses
  %i.gx = icmp eq i32 %i.gw, %i.ev
  %i.gy = load float, ptr %i.aw, align 4          ; 3 uses
  %i.gz = load i32, ptr %i.ax, align 16, !tbaa !54 ; 2 uses
  %i.ha = icmp eq i32 %i.gz, %i.ev
  %i.hb = load float, ptr %i.ay, align 16         ; 3 uses
  %i.hc = load i32, ptr %i.az, align 4, !tbaa !54 ; 2 uses
  %i.hd = icmp eq i32 %i.hc, %i.ev
  %i.he = load float, ptr %i.ba, align 4          ; 3 uses
  %i.hf = load i32, ptr %i.bb, align 8, !tbaa !54 ; 2 uses
  %i.hg = icmp eq i32 %i.hf, %i.ev
  %i.hh = load float, ptr %i.bc, align 8          ; 3 uses
  %i.hi = load i32, ptr %i.bd, align 4, !tbaa !54 ; 2 uses
  %i.hj = icmp eq i32 %i.hi, %i.ev
  %i.hk = load float, ptr %i.be, align 4          ; 3 uses
  %i.hl = load i32, ptr %i.bf, align 16, !tbaa !54 ; 2 uses
  %i.hm = icmp eq i32 %i.hl, %i.ev
  %i.hn = load float, ptr %i.bg, align 16         ; 3 uses
  %i.ho = load i32, ptr %i.bh, align 4, !tbaa !54 ; 2 uses
  %i.hp = icmp eq i32 %i.ho, %i.ev
  %i.hq = load float, ptr %i.bi, align 4          ; 3 uses
  %i.hr = load i32, ptr %i.bj, align 8, !tbaa !54 ; 2 uses
  %i.hs = icmp eq i32 %i.hr, %i.ev
  %i.ht = load float, ptr %i.bk, align 8          ; 3 uses
  %i.hu = load i32, ptr %i.bl, align 4, !tbaa !54 ; 2 uses
  %i.hv = icmp eq i32 %i.hu, %i.ev
  %i.hw = load float, ptr %i.bm, align 4          ; 3 uses
  %i.hx = load i32, ptr %i.bn, align 16, !tbaa !54 ; 2 uses
  %i.hy = icmp eq i32 %i.hx, %i.ev
  %i.hz = load float, ptr %i.bo, align 16         ; 3 uses
  br label %.preheader190.us.us

.preheader190.us.us:                              ; preds = %bb.bn, %.preheader191.us.us
  %indvars.iv306 = phi i64 [ %indvars.iv.next307, %bb.bn ], [ 0, %.preheader191.us.us ] ; 2 uses
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv306 ; 14 uses
  br i1 %i.gn, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.preheader190.us.us
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !89
  %i.ic = zext i16 %i.ib to i32
  %i.id = icmp ne i32 %.pre366, %i.ic
  %brmerge = select i1 %i.id, i1 true, i1 %i.gp
  br i1 %brmerge, label %bb.r, label %bb.q

bb.p:                                             ; preds = %.preheader190.us.us
  br i1 %i.gp, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.q, %bb.p
  %.1118.us.us = phi float [ %i.go, %bb.q ], [ 0.000000e+00, %bb.p ], [ 0.000000e+00, %bb.o ] ; 4 uses
  br i1 %i.gr, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
end_hunk_0
begin_hunk_1_@_ZN2cv3hfs7HfsCore18getAvgGradientBdryERKNS_3MatERKSt6vectorIS2_SaIS2_EEiRS2_RS7_:bb.a
  store float %i.od, ptr %i.ob, align 4, !tbaa !82
  %indvars.iv.next337 = add nuw nsw i64 %indvars.iv336, 1 ; 2 uses
  %exitcond340.not = icmp eq i64 %indvars.iv.next337, %wide.trip.count354
  br i1 %exitcond340.not, label %._crit_edge220.split.us231.us.us, label %bb.bt, !llvm.loop !161

._crit_edge220.split.us231.us.us:                 ; preds = %bb.bt
  %i.oe = add nsw i32 %.1222.us.us250.us, 1
  br label %bb.bu

bb.bu:                                            ; preds = %._crit_edge220.split.us231.us.us, %bb.bs
  %.2.us.us256.us = phi i32 [ %i.oe, %._crit_edge220.split.us231.us.us ], [ %.1222.us.us250.us, %bb.bs ] ; 3 uses
  %indvars.iv.next342 = add nuw nsw i64 %indvars.iv341, 1 ; 2 uses
  %exitcond345.not = icmp eq i64 %indvars.iv.next342, %wide.trip.count364
  br i1 %exitcond345.not, label %._crit_edge225.split.us.split.us257.us, label %bb.bs, !llvm.loop !162

._crit_edge225.split.us.split.us257.us:           ; preds = %bb.bu
  %indvars.iv.next347 = add nuw nsw i64 %indvars.iv346, 1 ; 2 uses
  %exitcond350.not = icmp eq i64 %indvars.iv.next347, %wide.trip.count364
  br i1 %exitcond350.not, label %._crit_edge237, label %.preheader188.us.us, !llvm.loop !163

.preheader188.lr.ph.split.us.split:               ; preds = %.preheader188.lr.ph
  %i.of = load i64, ptr %i.li, align 8
  %wide.trip.count334 = zext nneg i32 %3 to i64   ; 4 uses
  %min.iters.check614 = icmp ult i32 %3, 8
  %n.vec616 = and i64 %wide.trip.count334, 2147483640 ; 3 uses
  %cmp.n626 = icmp eq i64 %n.vec616, %wide.trip.count334
  br label %.preheader188.us

.preheader188.us:                                 ; preds = %._crit_edge225.split.us246, %.preheader188.lr.ph.split.us.split
  %indvars.iv331 = phi i64 [ %indvars.iv.next332, %._crit_edge225.split.us246 ], [ 0, %.preheader188.lr.ph.split.us.split ] ; 2 uses
  %.0115235.us = phi i32 [ %spec.select264.lcssa, %._crit_edge225.split.us246 ], [ 0, %.preheader188.lr.ph.split.us.split ] ; 2 uses
  %i.og = mul i64 %i.of, %indvars.iv331
  %.sink.idx.i169.us240 = select i1 %i.lk, i64 0, i64 %i.og
  %.sink.i170.us241 = getelementptr inbounds nuw i8, ptr %i.ll, i64 %.sink.idx.i169.us240 ; 2 uses
  br i1 %min.iters.check614, label %.preheader.us244.preheader, label %vector.ph615

vector.ph615:                                     ; preds = %.preheader188.us
  %i.oh = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.0115235.us, i64 0
  br label %vector.body617

vector.body617:                                   ; preds = %vector.body617, %vector.ph615
  %index618 = phi i64 [ 0, %vector.ph615 ], [ %index.next623, %vector.body617 ] ; 2 uses
  %vec.phi619 = phi <4 x i32> [ %i.oh, %vector.ph615 ], [ %i.os, %vector.body617 ]
  %vec.phi620 = phi <4 x i32> [ zeroinitializer, %vector.ph615 ], [ %i.ot, %vector.body617 ]
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %.sink.i170.us241, i64 %index618 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 16
  %wide.load621 = load <4 x float>, ptr %i.oi, align 4, !tbaa !82
  %wide.load622 = load <4 x float>, ptr %i.oj, align 4, !tbaa !82
  %i.ok = call <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load621)
  %i.ol = call <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load622)
  %i.om = fpext <4 x float> %i.ok to <4 x double>
  %i.on = fpext <4 x float> %i.ol to <4 x double>
  %i.oo = fcmp ogt <4 x double> %i.om, splat (double f0x3EB0C6F7A0B5ED8D)
  %i.op = fcmp ogt <4 x double> %i.on, splat (double f0x3EB0C6F7A0B5ED8D)
  %i.oq = zext <4 x i1> %i.oo to <4 x i32>
  %i.or = zext <4 x i1> %i.op to <4 x i32>
  %i.os = add <4 x i32> %vec.phi619, %i.oq        ; 2 uses
  %i.ot = add <4 x i32> %vec.phi620, %i.or        ; 2 uses
  %index.next623 = add nuw i64 %index618, 8       ; 2 uses
  %i.ou = icmp eq i64 %index.next623, %n.vec616
  br i1 %i.ou, label %middle.block624, label %vector.body617, !llvm.loop !164

middle.block624:                                  ; preds = %vector.body617
  %bin.rdx625 = add <4 x i32> %i.ot, %i.os
  %i.ov = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx625) ; 2 uses
  br i1 %cmp.n626, label %._crit_edge225.split.us246, label %.preheader.us244.preheader

.preheader.us244.preheader:                       ; preds = %.preheader188.us, %middle.block624
  %indvars.iv326.ph = phi i64 [ 0, %.preheader188.us ], [ %n.vec616, %middle.block624 ]
  %.1222.us243.ph = phi i32 [ %.0115235.us, %.preheader188.us ], [ %i.ov, %middle.block624 ]
  br label %.preheader.us244

.preheader.us244:                                 ; preds = %.preheader.us244.preheader, %.preheader.us244
  %indvars.iv326 = phi i64 [ %indvars.iv.next327, %.preheader.us244 ], [ %indvars.iv326.ph, %.preheader.us244.preheader ] ; 2 uses
  %.1222.us243 = phi i32 [ %spec.select264, %.preheader.us244 ], [ %.1222.us243.ph, %.preheader.us244.preheader ]
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %.sink.i170.us241, i64 %indvars.iv326
  %i.ox = load float, ptr %i.ow, align 4, !tbaa !82
  %i.oy = call noundef float @llvm.fabs.f32(float %i.ox)
  %i.oz = fpext float %i.oy to double
  %i.pa = fcmp ogt double %i.oz, f0x3EB0C6F7A0B5ED8D
  %i.pb = zext i1 %i.pa to i32
  %spec.select264 = add nsw i32 %.1222.us243, %i.pb ; 2 uses
  %indvars.iv.next327 = add nuw nsw i64 %indvars.iv326, 1 ; 2 uses
  %exitcond330.not = icmp eq i64 %indvars.iv.next327, %wide.trip.count334
  br i1 %exitcond330.not, label %._crit_edge225.split.us246, label %.preheader.us244, !llvm.loop !165

._crit_edge225.split.us246:                       ; preds = %.preheader.us244, %middle.block624
  %spec.select264.lcssa = phi i32 [ %i.ov, %middle.block624 ], [ %spec.select264, %.preheader.us244 ] ; 2 uses
  %indvars.iv.next332 = add nuw nsw i64 %indvars.iv331, 1 ; 2 uses
  %exitcond335.not = icmp eq i64 %indvars.iv.next332, %wide.trip.count334
  br i1 %exitcond335.not, label %._crit_edge237, label %.preheader188.us, !llvm.loop !163

._crit_edge213.split:                             ; preds = %.preheader193
  %i.pc = add nuw nsw i64 %indvars.iv286, 1       ; 2 uses
  %exitcond290.not = icmp eq i64 %i.pc, %wide.trip.count324
  br i1 %exitcond290.not, label %.preheader189, label %.preheader194, !llvm.loop !159

bb.bv:                                            ; preds = %.preheader194, %.preheader193
  %indvars.iv281 = phi i64 [ 1, %.preheader194 ], [ %indvars.iv.next282469482, %.preheader193 ] ; 6 uses
  %i.pd = getelementptr inbounds nuw [2 x i8], ptr %.sink.i, i64 %indvars.iv281
  %i.pe = load i16, ptr %i.pd, align 2, !tbaa !89 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.pf = shl i64 %indvars.iv281, 32
  %sext.i = add i64 %i.pf, -4294967296
  %i.pg = ashr exact i64 %sext.i, 31
  %i.ph = getelementptr inbounds i8, ptr %.sink.i, i64 %i.pg
  %i.pi = load i16, ptr %i.ph, align 2, !tbaa !89 ; 3 uses
  %.not140 = icmp eq i16 %i.pi, %i.pe
  br i1 %.not140, label %bb.bw, label %.thread454

bb.bw:                                            ; preds = %bb.bv
  %i.pj = shl nuw nsw i64 %indvars.iv281, 1
  %i.pk = getelementptr inbounds nuw i8, ptr %.sink.i150.1, i64 %i.pj
  %i.pl = load i16, ptr %i.pk, align 2, !tbaa !89 ; 2 uses
  %.not140.1 = icmp eq i16 %i.pl, %i.pe
  br i1 %.not140.1, label %.thread463, label %.critedge265.1

.thread454:                                       ; preds = %bb.bv
  store i16 %i.pi, ptr %i.a, align 2, !tbaa !89
  %i.pm = shl nuw nsw i64 %indvars.iv281, 1
  %i.pn = getelementptr inbounds nuw i8, ptr %.sink.i150.1457, i64 %i.pm
  %i.po = load i16, ptr %i.pn, align 2, !tbaa !89 ; 3 uses
  %.not140.1458 = icmp eq i16 %i.po, %i.pe
  %.not = icmp eq i16 %i.pi, %i.po
  %or.cond519 = or i1 %.not140.1458, %.not
  br i1 %or.cond519, label %bb.bx, label %.critedge265.1

.critedge265.1:                                   ; preds = %.thread454, %bb.bw
  %.2130459462 = phi i16 [ 1, %.thread454 ], [ 0, %bb.bw ] ; 2 uses
  %i.pp = phi i16 [ %i.po, %.thread454 ], [ %i.pl, %bb.bw ]
  %i.pq = add nuw nsw i16 %.2130459462, 1
  %i.pr = zext nneg i16 %.2130459462 to i64
  %i.ps = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.pr
  store i16 %i.pp, ptr %i.ps, align 2, !tbaa !89
  br label %bb.bx

bb.bx:                                            ; preds = %.thread454, %.critedge265.1
  %.2130.1 = phi i16 [ 1, %.thread454 ], [ %i.pq, %.critedge265.1 ] ; 4 uses
  %indvars.iv.next282 = add nuw nsw i64 %indvars.iv281, 1 ; 4 uses
  %i.pt = shl nuw nsw i64 %indvars.iv.next282, 1
  %i.pu = getelementptr inbounds nuw i8, ptr %.sink.i, i64 %i.pt
  %i.pv = load i16, ptr %i.pu, align 2, !tbaa !89 ; 5 uses
  %.not140.2 = icmp eq i16 %i.pv, %i.pe
  br i1 %.not140.2, label %.preheader193, label %iter.check

.thread463:                                       ; preds = %bb.bw
  %indvars.iv.next282465 = add nuw nsw i64 %indvars.iv281, 1 ; 3 uses
  %i.pw = shl nuw nsw i64 %indvars.iv.next282465, 1
  %i.px = getelementptr inbounds nuw i8, ptr %.sink.i, i64 %i.pw
  %i.py = load i16, ptr %i.px, align 2, !tbaa !89 ; 2 uses
  %.not140.2466 = icmp eq i16 %i.py, %i.pe
  br i1 %.not140.2466, label %.preheader193, label %.critedge265.2

iter.check:                                       ; preds = %bb.bx
  %wide.trip.count276.2 = zext nneg i16 %.2130.1 to i64 ; 6 uses
  %min.iters.check = icmp ult i16 %.2130.1, 4
  br i1 %min.iters.check, label %.lr.ph198.2.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check524 = icmp ult i16 %.2130.1, 16
  br i1 %min.iters.check524, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.pz = and i64 %wide.trip.count276.2, 12
  %n.vec = and i64 %wide.trip.count276.2, 32752   ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.pv, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.qe, %vector.body ]
  %vec.phi525 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.qf, %vector.body ]
  %i.qa = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 16
  %wide.load = load <8 x i16>, ptr %i.qa, align 2, !tbaa !89
  %wide.load526 = load <8 x i16>, ptr %i.qb, align 2, !tbaa !89
  %i.qc = icmp eq <8 x i16> %wide.load, %broadcast.splat
  %i.qd = icmp eq <8 x i16> %wide.load526, %broadcast.splat
  %i.qe = or <8 x i1> %vec.phi, %i.qc             ; 2 uses
  %i.qf = or <8 x i1> %vec.phi525, %i.qd          ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.qg = icmp eq i64 %index.next, %n.vec
  br i1 %i.qg, label %middle.block, label %vector.body, !llvm.loop !166

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <8 x i1> %i.qf, %i.qe
  %bin.rdx.fr = freeze <8 x i1> %bin.rdx
  %i.qh = bitcast <8 x i1> %bin.rdx.fr to i8
  %.not630 = icmp eq i8 %i.qh, 0                  ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count276.2
  br i1 %cmp.n, label %._crit_edge199.2, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.pz, 0
  br i1 %min.epilog.iters.check, label %.lr.ph198.2.preheader, label %vec.epilog.ph, !prof !169

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %.not630, %vec.epilog.iter.check ], [ true, %vector.main.loop.iter.check ]
  %n.vec527 = and i64 %wide.trip.count276.2, 32764 ; 3 uses
  %10 = xor i1 %bc.merge.rdx, true
  %broadcast.splatinsert528 = insertelement <4 x i1> poison, i1 %10, i64 0
  %broadcast.splat529 = shufflevector <4 x i1> %broadcast.splatinsert528, <4 x i1> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert530 = insertelement <4 x i16> poison, i16 %i.pv, i64 0
  %broadcast.splat531 = shufflevector <4 x i16> %broadcast.splatinsert530, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index532 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next535, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi533 = phi <4 x i1> [ %broadcast.splat529, %vec.epilog.ph ], [ %.fr632, %vec.epilog.vector.body ]
  %i.qi = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index532
  %wide.load534 = load <4 x i16>, ptr %i.qi, align 2, !tbaa !89
  %i.qj = icmp eq <4 x i16> %wide.load534, %broadcast.splat531
  %i.qk = or <4 x i1> %vec.phi533, %i.qj
  %.fr632 = freeze <4 x i1> %i.qk                 ; 2 uses
  %index.next535 = add nuw i64 %index532, 4       ; 2 uses
  %i.ql = icmp eq i64 %index.next535, %n.vec527
  br i1 %i.ql, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !167

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.qm = bitcast <4 x i1> %.fr632 to i4
  %.not633 = icmp eq i4 %i.qm, 0                  ; 2 uses
  %cmp.n536 = icmp eq i64 %n.vec527, %wide.trip.count276.2
  br i1 %cmp.n536, label %._crit_edge199.2, label %.lr.ph198.2.preheader

.lr.ph198.2.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv274.2.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec527, %vec.epilog.middle.block ]
  %.0123196.2.ph = phi i1 [ true, %iter.check ], [ %.not630, %vec.epilog.iter.check ], [ %.not633, %vec.epilog.middle.block ]
  br label %.lr.ph198.2

.lr.ph198.2:                                      ; preds = %.lr.ph198.2.preheader, %.lr.ph198.2
  %indvars.iv274.2 = phi i64 [ %indvars.iv.next275.2, %.lr.ph198.2 ], [ %indvars.iv274.2.ph, %.lr.ph198.2.preheader ] ; 2 uses
  %.0123196.2 = phi i1 [ %spec.select.2, %.lr.ph198.2 ], [ %.0123196.2.ph, %.lr.ph198.2.preheader ]
  %i.qn = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv274.2
  %i.qo = load i16, ptr %i.qn, align 2, !tbaa !89
  %i.qp = icmp ne i16 %i.qo, %i.pv
  %spec.select.2 = select i1 %i.qp, i1 %.0123196.2, i1 false ; 2 uses
  %indvars.iv.next275.2 = add nuw nsw i64 %indvars.iv274.2, 1 ; 2 uses
  %exitcond277.2.not = icmp eq i64 %indvars.iv.next275.2, %wide.trip.count276.2
  br i1 %exitcond277.2.not, label %._crit_edge199.2, label %.lr.ph198.2, !llvm.loop !168

._crit_edge199.2:                                 ; preds = %.lr.ph198.2, %vec.epilog.middle.block, %middle.block
  %spec.select.2.lcssa = phi i1 [ %.not633, %vec.epilog.middle.block ], [ %.not630, %middle.block ], [ %spec.select.2, %.lr.ph198.2 ]
  br i1 %spec.select.2.lcssa, label %.critedge265.2, label %.preheader193

.critedge265.2:                                   ; preds = %.thread463, %._crit_edge199.2
  %.2130.1467474 = phi i16 [ %.2130.1, %._crit_edge199.2 ], [ 0, %.thread463 ]
  %indvars.iv.next282468473 = phi i64 [ %indvars.iv.next282, %._crit_edge199.2 ], [ %indvars.iv.next282465, %.thread463 ]
  %i.qq = phi i16 [ %i.pv, %._crit_edge199.2 ], [ %i.py, %.thread463 ]
  %i.qr = zext nneg i16 %.2130.1467474 to i64
  %i.qs = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.qr
  store i16 %i.qq, ptr %i.qs, align 2, !tbaa !89
  br label %.preheader193

.preheader193:                                    ; preds = %bb.bx, %._crit_edge199.2, %.critedge265.2, %.thread463
  %indvars.iv.next282469482 = phi i64 [ %indvars.iv.next282465, %.thread463 ], [ %indvars.iv.next282, %bb.bx ], [ %indvars.iv.next282468473, %.critedge265.2 ], [ %indvars.iv.next282, %._crit_edge199.2 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %exitcond285.not = icmp eq i64 %indvars.iv.next282469482, %wide.trip.count284
  br i1 %exitcond285.not, label %._crit_edge213.split, label %bb.bv, !llvm.loop !158

._crit_edge237:                                   ; preds = %._crit_edge225.split.us246, %._crit_edge225.split.us.split.us257.us, %._crit_edge225.split.us.split.us.us.us.us.split.us.us, %.preheader189
  %.0115.lcssa = phi i32 [ 0, %.preheader189 ], [ %.2.us.us.us.us.us.us.us, %._crit_edge225.split.us.split.us.us.us.us.split.us.us ], [ %.2.us.us256.us, %._crit_edge225.split.us.split.us257.us ], [ %spec.select264.lcssa, %._crit_edge225.split.us246 ]
  ret i32 %.0115.lcssa
}

declare void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv3hfs7HfsCore16getSegmentationIERKNS_3MatES4_S4_fiRS2_Ri(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %3, float noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(208) %6, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %7) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::vector.50", align 8    ; 13 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator.55", align 1 ; 3 uses
  %11 = alloca %"struct.cv::Ptr.58", align 8      ; 9 uses
  %12 = alloca %"class.std::vector.12", align 8   ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator.55", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !64   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !67   ; 8 uses
  %i.e = load i32, ptr %7, align 4, !tbaa !54     ; 3 uses
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = icmp slt i32 %i.e, 0
  br i1 %i.g, label %.noexc, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #24
  unreachable

_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIS_IfSaIfEESaIS1_EEC2EmRKS2_.exit, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS2_.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS2_.exit:    ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.h = mul nuw nsw i64 %i.f, 24                 ; 3 uses
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #23 ; 8 uses
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.f
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.i, i8 0, i64 %i.h, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.i, i64 %i.h ; 5 uses
  %i.k = ptrtoint ptr %i.j to i64                 ; 5 uses
  %.pre = load i32, ptr %7, align 4, !tbaa !54    ; 3 uses
  %i.l = zext nneg i32 %.pre to i64               ; 2 uses
  %i.m = icmp slt i32 %.pre, 0
  br i1 %i.m, label %bb.b, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i227

bb.b:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS2_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #24
          to label %.noexc234 unwind label %bb.d

.noexc234:                                        ; preds = %bb.b
  unreachable

_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i227: ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS2_.exit
  %.not.i.i.i.i228 = icmp eq i32 %.pre, 0
  br i1 %.not.i.i.i.i228, label %_ZNSt6vectorIS_IfSaIfEESaIS1_EEC2EmRKS2_.exit, label %.lr.ph.preheader.i.i.i.i.i229

.lr.ph.preheader.i.i.i.i.i229:                    ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i227
  %i.n = mul nuw nsw i64 %i.l, 24                 ; 3 uses
  %i.o = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #23
          to label %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS2_.exit236 unwind label %bb.d ; 6 uses

_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS2_.exit236: ; preds = %.lr.ph.preheader.i.i.i.i.i229
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.l
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.o, i8 0, i64 %i.n, i1 false)
  %scevgep.i.i.i.i.i230 = getelementptr i8, ptr %i.o, i64 %i.n ; 3 uses
  %i.q = ptrtoint ptr %i.p to i64                 ; 3 uses
  %.pre631 = load i32, ptr %7, align 4, !tbaa !54 ; 3 uses
  %i.r = zext nneg i32 %.pre631 to i64            ; 2 uses
  %i.s = icmp slt i32 %.pre631, 0
  br i1 %i.s, label %bb.c, label %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.c:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS2_.exit236
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #24
          to label %.noexc242 unwind label %bb.e

.noexc242:                                        ; preds = %bb.c
  unreachable

_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS2_.exit236
  %.not.i.i.i.i237 = icmp eq i32 %.pre631, 0
  br i1 %.not.i.i.i.i237, label %_ZNSt6vectorIS_IfSaIfEESaIS1_EEC2EmRKS2_.exit, label %.lr.ph.preheader.i.i.i.i.i238

.lr.ph.preheader.i.i.i.i.i238:                    ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.t = mul nuw nsw i64 %i.r, 24                 ; 3 uses
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #23
          to label %.noexc243 unwind label %bb.e  ; 4 uses

.noexc243:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i238
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.r
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.u, i8 0, i64 %i.t, i1 false)
  %scevgep.i.i.i.i.i239 = getelementptr i8, ptr %i.u, i64 %i.t
  %i.w = ptrtoint ptr %i.v to i64
  br label %_ZNSt6vectorIS_IfSaIfEESaIS1_EEC2EmRKS2_.exit

_ZNSt6vectorIS_IfSaIfEESaIS1_EEC2EmRKS2_.exit:    ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i227, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i, %.noexc243, %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %.sroa.0458.0701714723751 = phi ptr [ %i.i, %.noexc243 ], [ %i.i, %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.i, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i227 ], [ null, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 15 uses
  %.sink.i704713726750 = phi i64 [ %i.k, %.noexc243 ], [ %i.k, %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.k, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i227 ], [ 0, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 3 uses
  %.0.lcssa.i.i.i.i.i707712729749 = phi ptr [ %scevgep.i.i.i.i.i, %.noexc243 ], [ %scevgep.i.i.i.i.i, %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %scevgep.i.i.i.i.i, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i227 ], [ null, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 4 uses
  %.sroa.0449.0732748 = phi ptr [ %i.o, %.noexc243 ], [ %i.o, %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ null, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i227 ], [ null, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 9 uses
  %.sink.i231735747 = phi i64 [ %i.q, %.noexc243 ], [ %i.q, %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ 0, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i227 ], [ 0, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 3 uses
  %.0.lcssa.i.i.i.i.i232738746 = phi ptr [ %scevgep.i.i.i.i.i230, %.noexc243 ], [ %scevgep.i.i.i.i.i230, %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ null, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i227 ], [ null, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 4 uses
  %.sroa.0440.0 = phi ptr [ %i.u, %.noexc243 ], [ null, %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ null, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i227 ], [ null, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 13 uses
  %.sink.i240 = phi i64 [ %i.w, %.noexc243 ], [ 0, %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ 0, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i227 ], [ 0, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i241 = phi ptr [ %scevgep.i.i.i.i.i239, %.noexc243 ], [ null, %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ null, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i227 ], [ null, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 4 uses
  %i.x = add nsw i32 %i.b, -1
  %i.y = icmp sgt i32 %i.b, 2
  br i1 %i.y, label %.preheader490.lr.ph, label %.preheader478

.preheader490.lr.ph:                              ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EEC2EmRKS2_.exit
  %i.z = icmp sgt i32 %i.d, 2
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 128
  br i1 %i.z, label %.preheader490.preheader, label %.preheader478

.preheader490.preheader:                          ; preds = %.preheader490.lr.ph
  %i.ag = add nsw i32 %i.d, -1
  %wide.trip.count577 = zext nneg i32 %i.x to i64
  %wide.trip.count = zext i32 %i.ag to i64
  br label %.preheader490

.preheader490:                                    ; preds = %.preheader490.preheader, %._crit_edge
  %indvars.iv574 = phi i64 [ 1, %.preheader490.preheader ], [ %indvars.iv.next575, %._crit_edge ] ; 4 uses
  %i.ah = trunc nuw nsw i64 %indvars.iv574 to i32
  br label %bb.f

.preheader478:                                    ; preds = %._crit_edge, %.preheader490.lr.ph, %_ZNSt6vectorIS_IfSaIfEESaIS1_EEC2EmRKS2_.exit
  %i.ai = load i32, ptr %7, align 4, !tbaa !54    ; 6 uses
  %i.aj = sext i32 %i.ai to i64                   ; 3 uses
  %.not557 = icmp eq i32 %i.ai, 0
  br i1 %.not557, label %_ZNSt6vectorIN2cv3VecIfLi3EEESaIS2_EEC2EmRKS2_RKS3_.exit, label %.preheader477

bb.d:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i229, %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit372

bb.e:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i238, %bb.c
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit361

._crit_edge:                                      ; preds = %bb.g
  %indvars.iv.next575 = add nuw nsw i64 %indvars.iv574, 1 ; 2 uses
  %exitcond578.not = icmp eq i64 %indvars.iv.next575, %wide.trip.count577
  br i1 %exitcond578.not, label %.preheader478, label %.preheader490, !llvm.loop !170

end_hunk_1

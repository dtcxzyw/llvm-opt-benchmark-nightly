inline.NumInlined: 13
inline.NumDeleted: 1
begin_hunk_0_@unspin:bb.a
  br label %.critedge605

bb.l:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 480
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !12
  %.not548 = icmp eq i8 %i.aj, -72
  br i1 %.not548, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.4) #7
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 481
  %.val616 = load i32, ptr %i.ak, align 1
  %i.al = and i32 %.val616, 2097152
  %.not549 = icmp eq i32 %i.al, 0
  br i1 %.not549, label %iter.check, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.5) #7
  br label %iter.check

iter.check:                                       ; preds = %bb.o, %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 12770
  %i.an = add i8 %i.x, 32
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.x, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ao = add <16 x i8> %broadcast.splat, <i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -5, i8 -6, i8 -7, i8 -8, i8 -9, i8 -10, i8 -11, i8 -12, i8 -13, i8 -14, i8 -15>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %iter.check
  %index = phi i64 [ 0, %iter.check ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i8> [ %i.ao, %iter.check ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.ap = sub i64 0, %index
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.ap ; 2 uses
  %i.aq = getelementptr i8, ptr %next.gep, i64 -15 ; 2 uses
  %i.ar = getelementptr i8, ptr %next.gep, i64 -31 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.aq, align 1, !tbaa !12
  %wide.load803 = load <16 x i8>, ptr %i.ar, align 1, !tbaa !12
  %i.as = shufflevector <16 x i8> %vec.ind, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse805.a = xor <16 x i8> %wide.load, %i.as
  %i.at = add <16 x i8> %vec.ind, splat (i8 -16)
  %i.au = shufflevector <16 x i8> %i.at, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse806 = xor <16 x i8> %wide.load803, %i.au
  store <16 x i8> %reverse805.a, ptr %i.aq, align 1, !tbaa !12
  store <16 x i8> %reverse806, ptr %i.ar, align 1, !tbaa !12
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <16 x i8> %vec.ind, splat (i8 -32)
  %i.av = icmp eq i64 %index.next, 4576
  br i1 %i.av, label %vec.epilog.ph, label %vector.body, !llvm.loop !13

vec.epilog.ph:                                    ; preds = %vector.body
  %i.aw = getelementptr i8, ptr %i.t, i64 8170    ; 2 uses
  %i.ax = add i8 %i.x, 8
  %broadcast.splatinsert809 = insertelement <8 x i8> poison, i8 %i.an, i64 0
  %broadcast.splat810 = shufflevector <8 x i8> %broadcast.splatinsert809, <8 x i8> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.ay = add <8 x i8> %broadcast.splat810, <i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -5, i8 -6, i8 -7>
  %i.az = getelementptr i8, ptr %i.t, i64 8187    ; 2 uses
  %wide.load814 = load <8 x i8>, ptr %i.az, align 1, !tbaa !12
  %i.ba = shufflevector <8 x i8> %i.ay, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse816 = xor <8 x i8> %wide.load814, %i.ba
  store <8 x i8> %reverse816, ptr %i.az, align 1, !tbaa !12
  %vec.ind.next818 = add <8 x i8> %broadcast.splat810, <i8 -8, i8 -9, i8 -10, i8 -11, i8 -12, i8 -13, i8 -14, i8 -15>
  %i.bb = getelementptr i8, ptr %i.t, i64 8179    ; 2 uses
  %wide.load814.1 = load <8 x i8>, ptr %i.bb, align 1, !tbaa !12
  %i.bc = shufflevector <8 x i8> %vec.ind.next818, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse816.1 = xor <8 x i8> %wide.load814.1, %i.bc
  store <8 x i8> %reverse816.1, ptr %i.bb, align 1, !tbaa !12
  %vec.ind.next818.1 = add <8 x i8> %broadcast.splat810, <i8 -16, i8 -17, i8 -18, i8 -19, i8 -20, i8 -21, i8 -22, i8 -23>
  %i.bd = getelementptr i8, ptr %i.t, i64 8171    ; 2 uses
  %wide.load814.2 = load <8 x i8>, ptr %i.bd, align 1, !tbaa !12
  %i.be = shufflevector <8 x i8> %vec.ind.next818.1, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse816.2 = xor <8 x i8> %wide.load814.2, %i.be
  store <8 x i8> %reverse816.2, ptr %i.bd, align 1, !tbaa !12
  %i.bf = load i8, ptr %i.aw, align 1, !tbaa !12
  %i.bg = add i8 %i.x, 7
  %i.bh = xor i8 %i.bf, %i.ax
  store i8 %i.bh, ptr %i.aw, align 1, !tbaa !12
  %i.bi = getelementptr i8, ptr %i.t, i64 8169    ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !12
  %i.bk = add i8 %i.x, 6
  %i.bl = xor i8 %i.bj, %i.bg
  store i8 %i.bl, ptr %i.bi, align 1, !tbaa !12
  %i.bm = getelementptr i8, ptr %i.t, i64 8168    ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !12
  %i.bo = add i8 %i.x, 5
  %i.bp = xor i8 %i.bn, %i.bk
  store i8 %i.bp, ptr %i.bm, align 1, !tbaa !12
  %i.bq = getelementptr i8, ptr %i.t, i64 8167    ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !12
  %i.bs = add i8 %i.x, 4
  %i.bt = xor i8 %i.br, %i.bo
  store i8 %i.bt, ptr %i.bq, align 1, !tbaa !12
  %i.bu = getelementptr i8, ptr %i.t, i64 8166    ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !12
  %i.bw = add i8 %i.x, 3
  %i.bx = xor i8 %i.bv, %i.bs
  store i8 %i.bx, ptr %i.bu, align 1, !tbaa !12
  %i.by = getelementptr i8, ptr %i.t, i64 8165    ; 2 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !12
  %i.ca = xor i8 %i.bz, %i.bw
  store i8 %i.ca, ptr %i.by, align 1, !tbaa !12
  %i.cb = getelementptr inbounds nuw i8, ptr %i.t, i64 9968
  %.val614 = load i32, ptr %i.cb, align 1
  %.not551 = icmp eq i32 %.val614, 1440
  br i1 %.not551, label %bb.q, label %bb.p

bb.p:                                             ; preds = %vec.epilog.ph
  tail call void @free(ptr noundef nonnull %i.h) #7
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.1) #7
  br label %.critedge605

bb.q:                                             ; preds = %vec.epilog.ph
  %i.cc = getelementptr inbounds nuw i8, ptr %i.t, i64 9963
  %.val615 = load i32, ptr %i.cc, align 1         ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.t, i64 725
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.6, i32 noundef %.val615, i32 noundef 1440) #7
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %.1451659 = phi ptr [ %i.cd, %bb.q ], [ %i.cs, %bb.r ] ; 4 uses
  %.1469658 = phi i32 [ 1440, %bb.q ], [ %i.cl, %bb.r ]
  %.0482657 = phi i32 [ %.val615, %bb.q ], [ %.1483.1, %bb.r ] ; 2 uses
  %i.ce = and i32 %.0482657, 1
  %.not595 = icmp eq i32 %i.ce, 0
  %i.cf = lshr i32 %.0482657, 1                   ; 2 uses
  %i.cg = xor i32 %i.cf, -1942845388
  %.1483 = select i1 %.not595, i32 %i.cf, i32 %i.cg ; 3 uses
  %i.ch = load i8, ptr %.1451659, align 1, !tbaa !12
  %i.ci = trunc i32 %.1483 to i8
  %i.cj = xor i8 %i.ch, %i.ci
  store i8 %i.cj, ptr %.1451659, align 1, !tbaa !12
  %i.ck = getelementptr inbounds nuw i8, ptr %.1451659, i64 1 ; 2 uses
  %i.cl = add nsw i32 %.1469658, -2               ; 2 uses
  %i.cm = and i32 %.1483, 1
  %.not595.1 = icmp eq i32 %i.cm, 0
  %i.cn = lshr i32 %.1483, 1                      ; 2 uses
  %i.co = xor i32 %i.cn, -1942845388
  %.1483.1 = select i1 %.not595.1, i32 %i.cn, i32 %i.co ; 2 uses
  %i.cp = load i8, ptr %i.ck, align 1, !tbaa !12
  %i.cq = trunc i32 %.1483.1 to i8
  %i.cr = xor i8 %i.cp, %i.cq
  store i8 %i.cr, ptr %i.ck, align 1, !tbaa !12
  %i.cs = getelementptr inbounds nuw i8, ptr %.1451659, i64 2
  %.not552.1 = icmp eq i32 %i.cl, 0
  br i1 %.not552.1, label %bb.s, label %bb.r, !llvm.loop !17

bb.s:                                             ; preds = %bb.r
  %i.ct = getelementptr inbounds nuw i8, ptr %i.t, i64 1065
  %.val613 = load i32, ptr %i.ct, align 1
  %i.cu = sub nsw i32 %1, %.val613                ; 2 uses
  %.not553 = icmp ult i32 %i.cu, %1
  br i1 %.not553, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @free(ptr noundef nonnull %i.h) #7
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.7) #7
  br label %.critedge605

bb.u:                                             ; preds = %bb.s
  %.val612 = load i32, ptr %i.ag, align 1
  %i.cv = tail call fastcc i32 @summit(ptr noundef %0, i32 noundef %i.cu)
  %i.cw = sub i32 %.val612, %i.cv                 ; 4 uses
  %i.cx = load i32, ptr %i.j, align 4, !tbaa !10
  %i.cy = zext i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 %i.cy
  %i.da = load i32, ptr %i.e, align 4, !tbaa !8
  %i.db = zext i32 %i.da to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cz, ptr nonnull align 1 %i.h, i64 %i.db, i1 false)
  tail call void @free(ptr noundef nonnull %i.h) #7
  %i.dc = load i32, ptr %i.j, align 4, !tbaa !10
  %i.dd = zext i32 %i.dc to i64
  %i.de = add nuw nsw i64 %i.dd, %i.p
  %i.df = load i32, ptr %i.d, align 4, !tbaa !11
  %i.dg = zext i32 %i.df to i64
  %i.dh = sub nsw i64 %i.de, %i.dg                ; 5 uses
  %i.di = getelementptr inbounds i8, ptr %0, i64 %i.dh ; 12 uses
  %i.dj = icmp sgt i32 %1, 3
  br i1 %i.dj, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 12807
  %.not554 = icmp slt i64 %i.dh, -12807
  br i1 %.not554, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dl = zext nneg i32 %1 to i64                 ; 2 uses
  %i.dm = add nsw i64 %i.dh, 12811
  %.not555 = icmp samesign ugt i64 %i.dm, %i.dl
  br i1 %.not555, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.8) #7
  br label %.critedge605

bb.y:                                             ; preds = %bb.w
  %.val611 = load i32, ptr %i.dk, align 1         ; 2 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.9, i32 noundef %i.cw, i32 noundef %.val611) #7
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.10) #7
  %7 = icmp sgt i32 %3, 0                         ; 4 uses
  br i1 %7, label %.lr.ph666.preheader, label %._crit_edge

.lr.ph666.preheader:                              ; preds = %bb.y
  %wide.trip.count = zext nneg i32 %3 to i64
  %i.dn = and i32 %i.cw, 1
  %.not594.prol = icmp eq i32 %i.dn, 0
  %i.do = lshr i32 %i.cw, 1                       ; 2 uses
  %i.dp = xor i32 %i.do, -314331343
  %.1455.prol = select i1 %.not594.prol, i32 %i.dp, i32 %i.do ; 2 uses
  %i.dq = trunc i32 %.1455.prol to i8
  br label %.lr.ph666

.lr.ph666:                                        ; preds = %.lr.ph666.preheader, %.loopexit643
  %indvars.iv = phi i64 [ 0, %.lr.ph666.preheader ], [ %indvars.iv.next, %.loopexit643 ] ; 3 uses
  %.0475665 = phi i32 [ %.val611, %.lr.ph666.preheader ], [ %i.ex, %.loopexit643 ] ; 2 uses
  %i.dr = and i32 %.0475665, 1
  %.not588 = icmp eq i32 %i.dr, 0
  br i1 %.not588, label %.loopexit643, label %bb.z

bb.z:                                             ; preds = %.lr.ph666
  %i.ds = getelementptr inbounds nuw [36 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !8  ; 5 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !10
  %i.dx = zext i32 %i.dw to i64                   ; 2 uses
  %i.dy = add i32 %i.du, -1                       ; 2 uses
  %or.cond597 = icmp uge i32 %i.dy, %1
  %i.dz = zext nneg i32 %i.du to i64
  %i.ea = add nuw nsw i64 %i.dx, %i.dz
  %.not592 = icmp samesign ugt i64 %i.ea, %i.dl
  %or.cond600 = select i1 %or.cond597, i1 true, i1 %.not592
  br i1 %or.cond600, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.z
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 %i.dx ; 4 uses
  %xtraiter = and i32 %i.du, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.ec = add nsw i32 %i.du, -1
  %i.ed = load i8, ptr %i.eb, align 1, !tbaa !12
  %i.ee = xor i8 %i.ed, %i.dq
  store i8 %i.ee, ptr %i.eb, align 1, !tbaa !12
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.0454663.unr = phi i32 [ %i.cw, %.lr.ph.preheader ], [ %.1455.prol, %.lr.ph.prol ]
  %.0456662.unr = phi ptr [ %i.eb, %.lr.ph.preheader ], [ %i.ef, %.lr.ph.prol ]
  %.0457661.unr = phi i32 [ %i.du, %.lr.ph.preheader ], [ %i.ec, %.lr.ph.prol ]
  %i.eg = icmp eq i32 %i.dy, 0
  br i1 %i.eg, label %.loopexit643, label %.lr.ph

.critedge:                                        ; preds = %bb.z
  %i.eh = trunc nuw nsw i64 %indvars.iv to i32
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.11, i32 noundef %i.eh) #7
  br label %.critedge605

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0454663 = phi i32 [ %.1455.1, %.lr.ph ], [ %.0454663.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.0456662 = phi ptr [ %i.ew, %.lr.ph ], [ %.0456662.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.0457661 = phi i32 [ %i.ep, %.lr.ph ], [ %.0457661.unr, %.lr.ph.prol.loopexit ]
  %i.ei = and i32 %.0454663, 1
  %.not594 = icmp eq i32 %i.ei, 0
  %i.ej = lshr i32 %.0454663, 1                   ; 2 uses
  %i.ek = xor i32 %i.ej, -314331343
  %.1455 = select i1 %.not594, i32 %i.ek, i32 %i.ej ; 3 uses
  %i.el = load i8, ptr %.0456662, align 1, !tbaa !12
  %i.em = trunc i32 %.1455 to i8
  %i.en = xor i8 %i.el, %i.em
  store i8 %i.en, ptr %.0456662, align 1, !tbaa !12
  %i.eo = getelementptr inbounds nuw i8, ptr %.0456662, i64 1 ; 2 uses
  %i.ep = add i32 %.0457661, -2                   ; 2 uses
  %i.eq = and i32 %.1455, 1
  %.not594.1 = icmp eq i32 %i.eq, 0
  %i.er = lshr i32 %.1455, 1                      ; 2 uses
  %i.es = xor i32 %i.er, -314331343
  %.1455.1 = select i1 %.not594.1, i32 %i.es, i32 %i.er ; 2 uses
  %i.et = load i8, ptr %i.eo, align 1, !tbaa !12
  %i.eu = trunc i32 %.1455.1 to i8
  %i.ev = xor i8 %i.et, %i.eu
  store i8 %i.ev, ptr %i.eo, align 1, !tbaa !12
  %i.ew = getelementptr inbounds nuw i8, ptr %.0456662, i64 2
  %.not593.1 = icmp eq i32 %i.ep, 0
  br i1 %.not593.1, label %.loopexit643, label %.lr.ph, !llvm.loop !18

.loopexit643:                                     ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph666
  %i.ex = lshr i32 %.0475665, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph666, !llvm.loop !19

._crit_edge:                                      ; preds = %.loopexit643, %bb.y
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.12) #7
  %i.ey = getelementptr inbounds nuw i8, ptr %i.di, i64 1604
  %.val610 = load i32, ptr %i.ey, align 1
  %.not556 = icmp eq i32 %.val610, 384
  br i1 %.not556, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.1) #7
  br label %.critedge605

bb.ab:                                            ; preds = %._crit_edge
  %i.ez = getelementptr inbounds nuw i8, ptr %i.di, i64 1616
  %.val609 = load i32, ptr %i.ez, align 1         ; 2 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.6, i32 noundef %.val609, i32 noundef 384) #7
  %i.fa = icmp ult i32 %1, 384
  %.not557 = icmp slt i64 %i.dh, -10451
  %or.cond601 = select i1 %i.fa, i1 true, i1 %.not557
  br i1 %or.cond601, label %bb.ac, label %.preheader641.preheader

.preheader641.preheader:                          ; preds = %bb.ab
  %i.fb = getelementptr inbounds nuw i8, ptr %i.di, i64 10451
  br label %.preheader641

bb.ac:                                            ; preds = %bb.ab
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.8) #7
  br label %.critedge605

.preheader641:                                    ; preds = %.preheader641, %.preheader641.preheader
  %.2452669 = phi ptr [ %i.fb, %.preheader641.preheader ], [ %i.fq, %.preheader641 ] ; 4 uses
  %.2470668 = phi i32 [ 384, %.preheader641.preheader ], [ %i.fj, %.preheader641 ]
  %.2484667 = phi i32 [ %.val609, %.preheader641.preheader ], [ %.3485.1, %.preheader641 ] ; 2 uses
  %i.fc = and i32 %.2484667, 1
  %.not587 = icmp eq i32 %i.fc, 0
  %i.fd = lshr i32 %.2484667, 1                   ; 2 uses
  %i.fe = xor i32 %i.fd, -314331342
  %.3485 = select i1 %.not587, i32 %i.fd, i32 %i.fe ; 3 uses
  %i.ff = load i8, ptr %.2452669, align 1, !tbaa !12
  %i.fg = trunc i32 %.3485 to i8
  %i.fh = xor i8 %i.ff, %i.fg
  store i8 %i.fh, ptr %.2452669, align 1, !tbaa !12
  %i.fi = getelementptr inbounds nuw i8, ptr %.2452669, i64 1 ; 2 uses
  %i.fj = add nsw i32 %.2470668, -2               ; 2 uses
  %i.fk = and i32 %.3485, 1
  %.not587.1 = icmp eq i32 %i.fk, 0
  %i.fl = lshr i32 %.3485, 1                      ; 2 uses
  %i.fm = xor i32 %i.fl, -314331342
  %.3485.1 = select i1 %.not587.1, i32 %i.fl, i32 %i.fm ; 2 uses
  %i.fn = load i8, ptr %i.fi, align 1, !tbaa !12
  %i.fo = trunc i32 %.3485.1 to i8
  %i.fp = xor i8 %i.fn, %i.fo
  store i8 %i.fp, ptr %i.fi, align 1, !tbaa !12
  %i.fq = getelementptr inbounds nuw i8, ptr %.2452669, i64 2
  %.not559.1 = icmp eq i32 %i.fj, 0
  br i1 %.not559.1, label %bb.ad, label %.preheader641, !llvm.loop !20

bb.ad:                                            ; preds = %.preheader641
  %i.fr = getelementptr inbounds nuw i8, ptr %i.di, i64 10461
  %.val608 = load i32, ptr %i.fr, align 1
  %.not560 = icmp eq i32 %.val608, 417
  br i1 %.not560, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.1) #7
  br label %.critedge605

bb.af:                                            ; preds = %bb.ad
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.13, i32 noundef 417) #7
  %i.fs = getelementptr inbounds nuw i8, ptr %i.di, i64 10476
  %i.ft = icmp ult i32 %1, 417
  %.not561 = icmp slt i64 %i.dh, -1748
  %or.cond602 = select i1 %i.ft, i1 true, i1 %.not561
  br i1 %or.cond602, label %bb.ag, label %.preheader640.preheader

.preheader640.preheader:                          ; preds = %bb.af
  %i.fu = getelementptr inbounds nuw i8, ptr %i.di, i64 1748
  br label %.preheader640

bb.ag:                                            ; preds = %bb.af
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.14) #7
  br label %.critedge605

.preheader640:                                    ; preds = %.preheader640.preheader, %bb.ah
  %.3471671 = phi i32 [ %i.fz, %bb.ah ], [ 417, %.preheader640.preheader ] ; 2 uses
  %.0499670 = phi ptr [ %i.ga, %bb.ah ], [ %i.fu, %.preheader640.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.fv = load i8, ptr %.0499670, align 1, !tbaa !12
  %i.fw = trunc i32 %.3471671 to i8
  %i.fx = call fastcc signext i8 @exec86(i8 noundef zeroext %i.fv, i8 noundef zeroext %i.fw, ptr noundef nonnull %i.fs, ptr noundef %i.a)
  store i8 %i.fx, ptr %.0499670, align 1, !tbaa !12
  %i.fy = load i32, ptr %i.a, align 4, !tbaa !4
  %.not586 = icmp eq i32 %i.fy, 0
  br i1 %.not586, label %bb.ah, label %.thread

.thread:                                          ; preds = %.preheader640
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.15) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %.critedge605

bb.ah:                                            ; preds = %.preheader640
  %i.fz = add nsw i32 %.3471671, -1               ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.0499670, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %.not563 = icmp eq i32 %i.fz, 0
  br i1 %.not563, label %.split, label %.preheader640, !llvm.loop !21

.split:                                           ; preds = %bb.ah
  %i.gb = getelementptr inbounds nuw i8, ptr %i.di, i64 1777
  %.val607 = load i32, ptr %i.gb, align 1         ; 2 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.16, i32 noundef %.val607) #7
  %i.gc = getelementptr inbounds nuw i8, ptr %i.di, i64 1877
  br i1 %7, label %.lr.ph678.preheader, label %._crit_edge679

.lr.ph678.preheader:                              ; preds = %.split
  %wide.trip.count718 = zext nneg i32 %3 to i64
  br label %.lr.ph678

.lr.ph678:                                        ; preds = %.lr.ph678.preheader, %.loopexit
  %indvars.iv715 = phi i64 [ 0, %.lr.ph678.preheader ], [ %indvars.iv.next716, %.loopexit ] ; 2 uses
  %.1476677 = phi i32 [ %.val607, %.lr.ph678.preheader ], [ %i.gr, %.loopexit ] ; 2 uses
  %i.gd = and i32 %.1476677, 1
  %.not581 = icmp eq i32 %i.gd, 0
  br i1 %.not581, label %.loopexit, label %.preheader639

.preheader639:                                    ; preds = %.lr.ph678
  %i.ge = getelementptr inbounds nuw [36 x i8], ptr %2, i64 %indvars.iv715 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 12
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !8  ; 2 uses
  %.not584672 = icmp eq i32 %i.gg, 0
  br i1 %.not584672, label %.loopexit, label %.lr.ph675.preheader

.lr.ph675.preheader:                              ; preds = %.preheader639
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !10
  %i.gj = zext i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 %i.gj
  br label %.lr.ph675

.lr.ph675:                                        ; preds = %.lr.ph675.preheader, %bb.ai
  %.0453674 = phi i32 [ %i.gp, %bb.ai ], [ %i.gg, %.lr.ph675.preheader ] ; 2 uses
  %.2501673 = phi ptr [ %i.gq, %bb.ai ], [ %i.gk, %.lr.ph675.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.gl = load i8, ptr %.2501673, align 1, !tbaa !12
  %i.gm = trunc i32 %.0453674 to i8
  %i.gn = call fastcc signext i8 @exec86(i8 noundef zeroext %i.gl, i8 noundef zeroext %i.gm, ptr noundef nonnull %i.gc, ptr noundef %i.b)
  store i8 %i.gn, ptr %.2501673, align 1, !tbaa !12
  %i.go = load i32, ptr %i.b, align 4, !tbaa !4
  %.not585 = icmp eq i32 %i.go, 0
  br i1 %.not585, label %bb.ai, label %.thread619

.thread619:                                       ; preds = %.lr.ph675
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.18) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %.critedge605

bb.ai:                                            ; preds = %.lr.ph675
  %i.gp = add i32 %.0453674, -1                   ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.2501673, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  %.not584 = icmp eq i32 %i.gp, 0
  br i1 %.not584, label %.loopexit, label %.lr.ph675, !llvm.loop !22

.loopexit:                                        ; preds = %bb.ai, %.preheader639, %.lr.ph678
  %i.gr = lshr i32 %.1476677, 1
  %indvars.iv.next716 = add nuw nsw i64 %indvars.iv715, 1 ; 2 uses
  %exitcond719.not = icmp eq i64 %indvars.iv.next716, %wide.trip.count718
  br i1 %exitcond719.not, label %._crit_edge679, label %.lr.ph678, !llvm.loop !23

._crit_edge679:                                   ; preds = %.loopexit, %.split
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.12) #7
  %i.gs = getelementptr inbounds nuw i8, ptr %i.di, i64 12385
  %.val606 = load i32, ptr %i.gs, align 1         ; 10 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.19, i32 noundef %.val606) #7
  %i.gt = shl nsw i64 %i.c, 3
  %i.gu = tail call ptr @cli_malloc(i64 noundef %i.gt) #7 ; 12 uses
  %i.gv = icmp eq ptr %i.gu, null
  br i1 %i.gv, label %.critedge605, label %.preheader638

.preheader638:                                    ; preds = %._crit_edge679
  br i1 %7, label %.lr.ph683, label %._crit_edge684.thread

.lr.ph683:                                        ; preds = %.preheader638
  %i.gw = getelementptr inbounds nuw i8, ptr %6, i64 32
  %wide.trip.count723 = zext nneg i32 %3 to i64
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph683, %bb.au
  %indvars.iv720 = phi i64 [ 0, %.lr.ph683 ], [ %indvars.iv.next721, %bb.au ] ; 8 uses
  %.2477682 = phi i32 [ %.val606, %.lr.ph683 ], [ %i.ih, %bb.au ] ; 2 uses
  %.0494680 = phi i32 [ 0, %.lr.ph683 ], [ %.1495, %bb.au ] ; 2 uses
  %i.gx = and i32 %.2477682, 1
  %.not564 = icmp eq i32 %i.gx, 0                 ; 2 uses
  %i.gy = getelementptr inbounds nuw [36 x i8], ptr %2, i64 %indvars.iv720 ; 4 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 4
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 12 ; 3 uses
  %.in = select i1 %.not564, ptr %i.ha, ptr %i.gz
  %i.hb = load i32, ptr %.in, align 4, !tbaa !4   ; 7 uses
  %i.hc = load ptr, ptr %i.gw, align 8, !tbaa !24 ; 2 uses
  %.not565 = icmp eq ptr %i.hc, null
  br i1 %.not565, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 24
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !34 ; 4 uses
  %.not566 = icmp eq i64 %i.he, 0
  br i1 %.not566, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hf = zext i32 %i.hb to i64                   ; 2 uses
  %i.hg = icmp ult i64 %i.he, %i.hf
  br i1 %i.hg, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hh = sext i32 %.0494680 to i64
  %i.hi = sub nuw i64 %i.he, %i.hf
  %i.hj = icmp ult i64 %i.hi, %i.hh
  br i1 %i.hj, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.hk = trunc nuw nsw i64 %indvars.iv720 to i32 ; 2 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.20, i32 noundef %i.hk, i32 noundef %i.hb, i64 noundef %i.he) #7
  br label %bb.av

bb.ao:                                            ; preds = %bb.am, %bb.ak, %bb.aj
  br i1 %.not564, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hl = zext i32 %i.hb to i64
  %i.hm = tail call ptr @cli_calloc(i64 noundef %i.hl, i64 noundef 1) #7 ; 2 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv720 ; 2 uses
  store ptr %i.hm, ptr %i.hn, align 8, !tbaa !38
  %i.ho = icmp eq ptr %i.hm, null
  br i1 %i.ho, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.hp = trunc nuw nsw i64 %indvars.iv720 to i32
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.21, i32 noundef %i.hb) #7
  br label %bb.av

bb.ar:                                            ; preds = %bb.ap
  %i.hq = load i32, ptr %i.ha, align 4, !tbaa !8
  %i.hr = trunc nuw nsw i64 %indvars.iv720 to i32 ; 2 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.22, i32 noundef %i.hr, i32 noundef %i.hq, i32 noundef %i.hb) #7
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !10
  %i.hu = zext i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 %i.hu
  %i.hw = load ptr, ptr %i.hn, align 8, !tbaa !38
  %i.hx = load i32, ptr %i.ha, align 4, !tbaa !8
  %i.hy = tail call i32 @cli_unfsg(ptr noundef %i.hv, ptr noundef %i.hw, i32 noundef %i.hx, i32 noundef %i.hb, ptr noundef null, ptr noundef null) #7
  %i.hz = icmp eq i32 %i.hy, -1
  br i1 %i.hz, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.ia = add nuw nsw i32 %i.hr, 1
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.23) #7
  br label %bb.av

bb.at:                                            ; preds = %bb.ao
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !10
  %i.id = zext i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 %i.id
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv720
  store ptr %i.ie, ptr %i.if, align 8, !tbaa !38
  %i.ig = trunc nuw nsw i64 %indvars.iv720 to i32
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.24, i32 noundef %i.ig) #7
  br label %bb.au

bb.au:                                            ; preds = %bb.ar, %bb.at
  %.1495 = add i32 %i.hb, %.0494680               ; 4 uses
  %i.ih = lshr i32 %.2477682, 1
  %indvars.iv.next721 = add nuw nsw i64 %indvars.iv720, 1 ; 2 uses
  %exitcond724.not = icmp eq i64 %indvars.iv.next721, %wide.trip.count723
  br i1 %exitcond724.not, label %._crit_edge684, label %bb.aj, !llvm.loop !40

bb.av:                                            ; preds = %bb.an, %bb.aq, %bb.as
  %.3489.ph = phi i32 [ %i.ia, %bb.as ], [ %i.hp, %bb.aq ], [ %i.hk, %bb.an ] ; 2 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.25) #7
  %i.ii = icmp sgt i32 %.3489.ph, 0
  br i1 %i.ii, label %.lr.ph703.preheader, label %._crit_edge704

.lr.ph703.preheader:                              ; preds = %bb.av
  %wide.trip.count728 = zext nneg i32 %.3489.ph to i64
  br label %.lr.ph703

.lr.ph703:                                        ; preds = %.lr.ph703.preheader, %bb.ax
  %indvars.iv725 = phi i64 [ 0, %.lr.ph703.preheader ], [ %indvars.iv.next726, %bb.ax ] ; 2 uses
  %.0472700 = phi i32 [ %.val606, %.lr.ph703.preheader ], [ %i.im, %bb.ax ] ; 2 uses
  %i.ij = and i32 %.0472700, 1
  %.not580 = icmp eq i32 %i.ij, 0
  br i1 %.not580, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph703
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv725
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !38
  tail call void @free(ptr noundef %i.il) #7
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %.lr.ph703
  %i.im = lshr i32 %.0472700, 1
  %indvars.iv.next726 = add nuw nsw i64 %indvars.iv725, 1 ; 2 uses
  %exitcond729.not = icmp eq i64 %indvars.iv.next726, %wide.trip.count728
  br i1 %exitcond729.not, label %._crit_edge704, label %.lr.ph703, !llvm.loop !41

._crit_edge704:                                   ; preds = %bb.ax, %bb.av
  tail call void @free(ptr noundef %i.gu) #7
  br label %.critedge605

._crit_edge684:                                   ; preds = %bb.au
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.25) #7
  %i.in = getelementptr inbounds nuw i8, ptr %i.di, i64 12270
  %.val = load i32, ptr %i.in, align 1            ; 4 uses
  %.not568 = icmp eq i32 %.val, 0
  br i1 %.not568, label %bb.bg, label %.lr.ph686.preheader

._crit_edge684.thread:                            ; preds = %.preheader638
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.25) #7
  %i.io = getelementptr inbounds nuw i8, ptr %i.di, i64 12270
  %.val768 = load i32, ptr %i.io, align 1         ; 2 uses
  %.not568769 = icmp eq i32 %.val768, 0
  br i1 %.not568769, label %bb.bg, label %._crit_edge687

.lr.ph686.preheader:                              ; preds = %._crit_edge684
  %wide.trip.count733 = zext nneg i32 %3 to i64
  br label %.lr.ph686

.lr.ph686:                                        ; preds = %.lr.ph686.preheader, %bb.az
  %indvars.iv730 = phi i64 [ 0, %.lr.ph686.preheader ], [ %indvars.iv.next731, %bb.az ] ; 3 uses
  %i.ip = getelementptr inbounds nuw [36 x i8], ptr %2, i64 %indvars.iv730 ; 2 uses
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !11 ; 2 uses
  %.not569 = icmp ugt i32 %i.iq, %.val
  br i1 %.not569, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph686
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 12
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !8
  %i.it = add i32 %i.is, %i.iq
  %i.iu = icmp ugt i32 %i.it, %.val
  br i1 %i.iu, label %._crit_edge687.loopexit, label %bb.az

bb.az:                                            ; preds = %.lr.ph686, %bb.ay
  %indvars.iv.next731 = add nuw nsw i64 %indvars.iv730, 1 ; 2 uses
  %exitcond734.not = icmp eq i64 %indvars.iv.next731, %wide.trip.count733
  br i1 %exitcond734.not, label %._crit_edge687.thread, label %.lr.ph686, !llvm.loop !42

._crit_edge687.loopexit:                          ; preds = %bb.ay
  %i.iv = trunc nuw nsw i64 %indvars.iv730 to i32
  br label %._crit_edge687

._crit_edge687:                                   ; preds = %._crit_edge687.loopexit, %._crit_edge684.thread
  %.0494.lcssa770775 = phi i32 [ %.1495, %._crit_edge687.loopexit ], [ 0, %._crit_edge684.thread ] ; 5 uses
  %.val771774 = phi i32 [ %.val, %._crit_edge687.loopexit ], [ %.val768, %._crit_edge684.thread ] ; 6 uses
  %.5491.lcssa = phi i32 [ %i.iv, %._crit_edge687.loopexit ], [ 0, %._crit_edge684.thread ] ; 4 uses
  %.not570 = icmp eq i32 %.5491.lcssa, %3
  br i1 %.not570, label %._crit_edge687.thread, label %bb.ba

bb.ba:                                            ; preds = %._crit_edge687
  %i.iw = shl nuw i32 1, %.5491.lcssa             ; 2 uses
  %i.ix = and i32 %i.iw, %.val606
  %i.iy = icmp eq i32 %i.ix, 0
  br i1 %i.iy, label %bb.bb, label %._crit_edge687.thread

bb.bb:                                            ; preds = %bb.ba
  %i.iz = zext nneg i32 %.5491.lcssa to i64       ; 2 uses
  %i.ja = getelementptr inbounds nuw [36 x i8], ptr %2, i64 %i.iz ; 8 uses
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !11 ; 2 uses
  %i.jc = sub i32 %.val771774, %i.jb              ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 4 ; 5 uses
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !43
  %i.jf = sub i32 %i.je, %i.jc
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.26, i32 noundef %.5491.lcssa, i32 noundef %i.jb, i32 noundef %i.jc, i32 noundef %.val771774, i32 noundef %i.jf) #7
  %i.jg = load i32, ptr %i.jd, align 4, !tbaa !43
  %i.jh = zext i32 %i.jg to i64
  %i.ji = tail call ptr @cli_malloc(i64 noundef %i.jh) #7 ; 5 uses
  %.not571 = icmp eq ptr %i.ji, null
  br i1 %.not571, label %bb.bf, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ja, i64 8 ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !10
  %i.jl = zext i32 %i.jk to i64
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 %i.jl
  %i.jn = load i32, ptr %i.ja, align 4, !tbaa !11
  %i.jo = sub i32 %.val771774, %i.jn
  %i.jp = zext i32 %i.jo to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ji, ptr align 1 %i.jm, i64 %i.jp, i1 false)
  %i.jq = zext i32 %.val771774 to i64             ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.jq ; 2 uses
  %i.js = load i32, ptr %i.ja, align 4, !tbaa !11 ; 2 uses
  %i.jt = zext i32 %i.js to i64
  %i.ju = sub nsw i64 0, %i.jt
  %i.jv = getelementptr inbounds i8, ptr %i.jr, i64 %i.ju
  %i.jw = load i32, ptr %i.jd, align 4, !tbaa !43
  %.neg = sub i32 %i.js, %.val771774
  %i.jx = add i32 %.neg, %i.jw
  %i.jy = zext i32 %i.jx to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.jv, i8 0, i64 %i.jy, i1 false)
  %i.jz = load i32, ptr %i.jj, align 4, !tbaa !10
  %i.ka = zext i32 %i.jz to i64
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 %i.ka
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 %i.jq
  %i.kd = load i32, ptr %i.ja, align 4, !tbaa !11 ; 2 uses
  %i.ke = zext i32 %i.kd to i64
  %i.kf = sub nsw i64 0, %i.ke                    ; 2 uses
  %i.kg = getelementptr inbounds i8, ptr %i.kc, i64 %i.kf
  %i.kh = getelementptr inbounds i8, ptr %i.jr, i64 %i.kf
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ja, i64 12 ; 2 uses
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !8
  %i.kk = sub i32 %.val771774, %i.kd              ; 2 uses
  %i.kl = sub i32 %i.kj, %i.kk
  %i.km = load i32, ptr %i.jd, align 4, !tbaa !43
  %i.kn = sub i32 %i.km, %i.kk
  %i.ko = tail call i32 @cli_unfsg(ptr noundef nonnull %i.kg, ptr noundef nonnull %i.kh, i32 noundef %i.kl, i32 noundef %i.kn, ptr noundef null, ptr noundef null) #7
  %.not572 = icmp eq i32 %i.ko, 0
  br i1 %.not572, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  tail call void @free(ptr noundef nonnull %i.ji) #7
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.27) #7
  %i.kp = load i32, ptr %i.ki, align 4, !tbaa !8
  %i.kq = add i32 %i.kp, %.0494.lcssa770775
  br label %bb.bg

bb.be:                                            ; preds = %bb.bc
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %i.iz
  store ptr %i.ji, ptr %i.kr, align 8, !tbaa !38
  %i.ks = or i32 %i.iw, %.val606
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.28) #7
  %i.kt = load i32, ptr %i.jd, align 4, !tbaa !43
  %i.ku = add i32 %i.kt, %.0494.lcssa770775
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bb
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ja, i64 12
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !8
  %i.kx = add i32 %i.kw, %.0494.lcssa770775
  br label %bb.bg

._crit_edge687.thread:                            ; preds = %bb.az, %bb.ba, %._crit_edge687
  %.0494.lcssa770775780 = phi i32 [ %.0494.lcssa770775, %._crit_edge687 ], [ %.0494.lcssa770775, %bb.ba ], [ %.1495, %bb.az ]
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.29) #7
  br label %bb.bg

bb.bg:                                            ; preds = %._crit_edge684.thread, %._crit_edge687.thread, %bb.bd, %bb.be, %bb.bf, %._crit_edge684
  %.4498 = phi i32 [ %i.kq, %bb.bd ], [ %i.ku, %bb.be ], [ %i.kx, %bb.bf ], [ %.0494.lcssa770775780, %._crit_edge687.thread ], [ %.1495, %._crit_edge684 ], [ 0, %._crit_edge684.thread ]
  %.1473 = phi i32 [ %.val606, %bb.bd ], [ %i.ks, %bb.be ], [ %.val606, %bb.bf ], [ %.val606, %._crit_edge687.thread ], [ %.val606, %._crit_edge684 ], [ %.val606, %._crit_edge684.thread ] ; 4 uses
  %i.ky = sext i32 %.4498 to i64
  %i.kz = tail call ptr @cli_malloc(i64 noundef %i.ky) #7 ; 6 uses
  %.not573 = icmp eq ptr %i.kz, null
  br i1 %.not573, label %bb.bp, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.la = mul nsw i64 %i.c, 36
  %i.lb = tail call ptr @cli_malloc(i64 noundef %i.la) #7 ; 8 uses
  %.not574 = icmp eq ptr %i.lb, null
  br i1 %.not574, label %.thread633, label %.preheader

.preheader:                                       ; preds = %bb.bh
  br i1 %7, label %bb.bi, label %._crit_edge695

bb.bi:                                            ; preds = %.preheader
  %wide.trip.count738 = zext nneg i32 %3 to i64
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  store i32 0, ptr %i.lc, align 4, !tbaa !10
  %i.ld = and i32 %.1473, 1
  %.not578.peel = icmp eq i32 %i.ld, 0            ; 2 uses
  %.in579.peel.v = select i1 %.not578.peel, i64 12, i64 4
  %.in579.peel = getelementptr inbounds nuw i8, ptr %2, i64 %.in579.peel.v
  %i.le = load i32, ptr %.in579.peel, align 4, !tbaa !4 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lb, i64 12 ; 2 uses
  store i32 %i.le, ptr %i.lf, align 4, !tbaa !8
  %i.lg = load <2 x i32>, ptr %2, align 4, !tbaa !4
  store <2 x i32> %i.lg, ptr %i.lb, align 4, !tbaa !4
  %i.lh = load ptr, ptr %i.gu, align 8, !tbaa !38
  %i.li = zext i32 %i.le to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.kz, ptr align 1 %i.lh, i64 %i.li, i1 false)
  %i.lj = load i32, ptr %i.lf, align 4, !tbaa !8
  %i.lk = zext i32 %i.lj to i64
  %i.ll = getelementptr inbounds nuw i8, ptr %i.kz, i64 %i.lk
  br i1 %.not578.peel, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.lm = load ptr, ptr %i.gu, align 8, !tbaa !38
  tail call void @free(ptr noundef %i.lm) #7
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %exitcond739.peel.not = icmp eq i32 %3, 1
  br i1 %exitcond739.peel.not, label %._crit_edge695, label %.lr.ph694.peel.next

.lr.ph694.peel.next:                              ; preds = %bb.bk, %bb.bm
  %indvars.iv735 = phi i64 [ %indvars.iv.next736, %bb.bm ], [ 1, %bb.bk ] ; 5 uses
  %.0447693 = phi ptr [ %i.mf, %bb.bm ], [ %i.ll, %bb.bk ] ; 2 uses
  %.4479692.in = phi i32 [ %.4479692, %bb.bm ], [ %.1473, %bb.bk ] ; 2 uses
  %.4479692 = lshr i32 %.4479692.in, 1
  %i.ln = getelementptr [36 x i8], ptr %i.lb, i64 %indvars.iv735 ; 2 uses
  %i.lo = getelementptr i8, ptr %i.ln, i64 -24
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !8
  %i.lq = getelementptr i8, ptr %i.ln, i64 -28
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !10
  %i.ls = add i32 %i.lp, %i.lr
  %i.lt = getelementptr inbounds nuw [36 x i8], ptr %i.lb, i64 %indvars.iv735 ; 3 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  store i32 %i.ls, ptr %i.lu, align 4, !tbaa !10
  %i.lv = and i32 %.4479692.in, 2
  %.not578 = icmp eq i32 %i.lv, 0                 ; 2 uses
  %i.lw = getelementptr inbounds nuw [36 x i8], ptr %2, i64 %indvars.iv735 ; 2 uses
  %.in579.v = select i1 %.not578, i64 12, i64 4
  %.in579 = getelementptr inbounds nuw i8, ptr %i.lw, i64 %.in579.v
  %i.lx = load i32, ptr %.in579, align 4, !tbaa !4 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lt, i64 12 ; 2 uses
  store i32 %i.lx, ptr %i.ly, align 4, !tbaa !8
  %i.lz = load <2 x i32>, ptr %i.lw, align 4, !tbaa !4
  store <2 x i32> %i.lz, ptr %i.lt, align 4, !tbaa !4
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv735 ; 2 uses
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !38
  %i.mc = zext i32 %i.lx to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0447693, ptr align 1 %i.mb, i64 %i.mc, i1 false)
  %i.md = load i32, ptr %i.ly, align 4, !tbaa !8
  %i.me = zext i32 %i.md to i64
  %i.mf = getelementptr inbounds nuw i8, ptr %.0447693, i64 %i.me
  br i1 %.not578, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph694.peel.next
  %i.mg = load ptr, ptr %i.ma, align 8, !tbaa !38
  tail call void @free(ptr noundef %i.mg) #7
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %.lr.ph694.peel.next
  %indvars.iv.next736 = add nuw nsw i64 %indvars.iv735, 1 ; 2 uses
  %exitcond739.not = icmp eq i64 %indvars.iv.next736, %wide.trip.count738
  br i1 %exitcond739.not, label %._crit_edge695, label %.lr.ph694.peel.next, !llvm.loop !44

._crit_edge695:                                   ; preds = %bb.bm, %bb.bk, %.preheader
  %i.mh = tail call i32 @cli_rebuildpe(ptr noundef nonnull %i.kz, ptr noundef nonnull %i.lb, i32 noundef %3, i32 noundef 4194304, i32 noundef 4096, i32 noundef 0, i32 noundef 0, i32 noundef %5) #7
  %.not575 = icmp eq i32 %i.mh, 0
  br i1 %.not575, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %._crit_edge695
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.30) #7
  br label %bb.bo

.thread633:                                       ; preds = %bb.bh
  tail call void @free(ptr noundef nonnull %i.kz) #7
  br label %bb.bp

bb.bo:                                            ; preds = %._crit_edge695, %bb.bn
  %.0 = phi i32 [ 0, %._crit_edge695 ], [ 1, %bb.bn ]
  tail call void @free(ptr noundef nonnull %i.lb) #7
  tail call void @free(ptr noundef nonnull %i.kz) #7
  tail call void @free(ptr noundef %i.gu) #7
  br label %.critedge605

bb.bp:                                            ; preds = %.thread633, %bb.bg
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.31, i32 noundef %.1473) #7
  %8 = icmp slt i32 %3, 1
  %i.mi = and i32 %.1473, 1
  %.not576 = icmp eq i32 %i.mi, 0
  %or.cond = or i1 %8, %.not576
  br i1 %or.cond, label %._crit_edge699, label %.lr.ph698.split.preheader

.lr.ph698.split.preheader:                        ; preds = %bb.bp
  %wide.trip.count744 = zext nneg i32 %3 to i64
  br label %.lr.ph698.split

.lr.ph698.split:                                  ; preds = %.lr.ph698.split.preheader, %.lr.ph698.split
  %indvars.iv741 = phi i64 [ 0, %.lr.ph698.split.preheader ], [ %indvars.iv.next742, %.lr.ph698.split ] ; 2 uses
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv741
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !38
  tail call void @free(ptr noundef %i.mk) #7
  %indvars.iv.next742 = add nuw nsw i64 %indvars.iv741, 1 ; 2 uses
  %exitcond745.not = icmp eq i64 %indvars.iv.next742, %wide.trip.count744
  br i1 %exitcond745.not, label %._crit_edge699, label %.lr.ph698.split, !llvm.loop !46

._crit_edge699:                                   ; preds = %.lr.ph698.split, %bb.bp
  tail call void @free(ptr noundef %i.gu) #7
  br label %.critedge605

.critedge605:                                     ; preds = %bb.bo, %.thread619, %.thread, %._crit_edge679, %.critedge, %bb.a, %._crit_edge699, %._crit_edge704, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.x, %bb.t, %bb.p, %bb.k, %bb.g, %bb.e, %bb.c
  %.11 = phi i32 [ 1, %bb.k ], [ 1, %bb.c ], [ 1, %bb.e ], [ 1, %bb.g ], [ 1, %bb.p ], [ 1, %bb.t ], [ 1, %.critedge ], [ 1, %bb.aa ], [ 1, %bb.ae ], [ 1, %.thread ], [ 1, %._crit_edge679 ], [ 1, %bb.a ], [ 1, %._crit_edge704 ], [ 1, %._crit_edge699 ], [ %.0, %bb.bo ], [ 1, %bb.ag ], [ 1, %bb.ac ], [ 1, %bb.x ], [ 1, %.thread619 ]
  ret i32 %.11
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #2

declare ptr @cli_malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i32 @summit(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #4 {
bb.a:
  %.not27 = icmp eq i32 %1, 0
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.031 = phi ptr [ %i.ae, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %.02030 = phi i32 [ %i.ad, %.lr.ph ], [ -1, %bb.a ] ; 4 uses
  %.02129 = phi i32 [ %i.x, %.lr.ph ], [ -1, %bb.a ]
  %.02328 = phi i32 [ %i.af, %.lr.ph ], [ %1, %bb.a ]
  %i.a = load i8, ptr %.031, align 1, !tbaa !12
  %i.b = sext i8 %i.a to i32
  %i.c = shl nsw i32 %i.b, 8
  %i.d = and i32 %i.c, 65280
  %i.e = xor i32 %i.d, %.02129
  %i.f = lshr i32 %i.e, 3
  %i.g = lshr i32 %.02030, 8
  %i.h = and i32 %i.g, 255
  %i.i = xor i32 %i.h, %i.f
  %i.j = add nuw i32 %i.i, 2013372680
  %i.k = xor i32 %i.j, %.02030                    ; 2 uses
  %i.l = tail call i32 @llvm.fshr.i32(i32 %i.k, i32 %i.k, i32 %.02030) ; 4 uses
  %i.m = lshr i32 %i.l, 8
  %i.n = and i32 %i.m, 255
  %i.o = xor i32 %i.n, %.02030
  %i.p = add i32 %i.o, 2013372680
  %i.q = xor i32 %i.p, %i.l                       ; 2 uses
  %i.r = tail call i32 @llvm.fshr.i32(i32 %i.q, i32 %i.q, i32 %i.l) ; 4 uses
  %i.s = lshr i32 %i.r, 8
  %i.t = and i32 %i.s, 255
  %i.u = xor i32 %i.t, %i.l
  %i.v = add i32 %i.u, 2013372680
  %i.w = xor i32 %i.v, %i.r                       ; 2 uses
  %i.x = tail call i32 @llvm.fshr.i32(i32 %i.w, i32 %i.w, i32 %i.r) ; 4 uses
  %i.y = lshr i32 %i.x, 8
  %i.z = and i32 %i.y, 255
  %i.aa = xor i32 %i.z, %i.r
  %i.ab = add i32 %i.aa, 2013372680
  %i.ac = xor i32 %i.ab, %i.x                     ; 2 uses
  %i.ad = tail call i32 @llvm.fshr.i32(i32 %i.ac, i32 %i.ac, i32 %i.x) ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.031, i64 1
  %i.af = add nsw i32 %.02328, -1                 ; 2 uses
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !47

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.020.lcssa = phi i32 [ -1, %bb.a ], [ %i.ad, %.lr.ph ]
  ret i32 %.020.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc signext i8 @exec86(i8 noundef zeroext %0, i8 noundef zeroext %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %3) unnamed_addr #0 {
bb.a:
  store i32 0, ptr %3, align 4, !tbaa !4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.p
  %.06178 = phi i8 [ %0, %bb.a ], [ %.4, %bb.p ]  ; 13 uses
  %.06477 = phi i32 [ 0, %bb.a ], [ %.367, %bb.p ] ; 12 uses
  %i.a = sext i32 %.06477 to i64
  %i.b = getelementptr inbounds i8, ptr %2, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !12    ; 2 uses
  %i.d = add nsw i32 %.06477, 1                   ; 9 uses
  switch i8 %i.c, label %.thread [
    i8 -21, label %bb.c
    i8 10, label %bb.d
    i8 -112, label %bb.p
    i8 -8, label %bb.p
    i8 -7, label %bb.p
    i8 2, label %bb.e
    i8 42, label %bb.f
    i8 4, label %bb.g
    i8 44, label %bb.h
    i8 50, label %bb.i
    i8 52, label %bb.j
    i8 -2, label %bb.k
    i8 -64, label %bb.l
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = add nsw i32 %.06477, 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.165 = phi i32 [ %i.e, %bb.c ], [ %i.d, %bb.b ]
  %i.f = add nsw i32 %.165, 1
  br label %bb.p

bb.e:                                             ; preds = %bb.b
  %i.g = add i8 %.06178, %1
  %i.h = add nsw i32 %.06477, 2
  br label %bb.p

bb.f:                                             ; preds = %bb.b
  %i.i = sub i8 %.06178, %1
  %i.j = add nsw i32 %.06477, 2
  br label %bb.p

bb.g:                                             ; preds = %bb.b
  %i.k = sext i32 %i.d to i64
  %i.l = getelementptr inbounds i8, ptr %2, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !12
  %i.n = add i8 %i.m, %.06178
  %i.o = add nsw i32 %.06477, 2
  br label %bb.p

bb.h:                                             ; preds = %bb.b
  %i.p = sext i32 %i.d to i64
  %i.q = getelementptr inbounds i8, ptr %2, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !12
  %i.s = sub i8 %.06178, %i.r
  %i.t = add nsw i32 %.06477, 2
  br label %bb.p

bb.i:                                             ; preds = %bb.b
  %i.u = xor i8 %.06178, %1
  %i.v = add nsw i32 %.06477, 2
  br label %bb.p

bb.j:                                             ; preds = %bb.b
  %i.w = sext i32 %i.d to i64
  %i.x = getelementptr inbounds i8, ptr %2, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !12
  %i.z = xor i8 %i.y, %.06178
  %i.aa = add nsw i32 %.06477, 2
  br label %bb.p

bb.k:                                             ; preds = %bb.b
  %i.ab = sext i32 %i.d to i64
  %i.ac = getelementptr inbounds i8, ptr %2, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !12
  %i.ae = icmp eq i8 %i.ad, -64
  %.162.v = select i1 %i.ae, i8 1, i8 -1
  %.162 = add i8 %.162.v, %.06178
  %i.af = add nsw i32 %.06477, 2
  br label %bb.p

bb.l:                                             ; preds = %bb.b
  %i.ag = sext i32 %i.d to i64
  %i.ah = getelementptr inbounds i8, ptr %2, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !12
  %i.aj = icmp eq i8 %i.ai, -64
  %i.ak = zext i8 %.06178 to i16                  ; 4 uses
  %i.al = sext i32 %.06477 to i64
  %i.am = getelementptr i8, ptr %2, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 2
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !12
  %i.ap = and i8 %i.ao, 7                         ; 2 uses
  %i.aq = zext nneg i8 %i.ap to i16               ; 2 uses
  %narrow69 = sub nuw nsw i8 8, %i.ap
  %i.ar = zext nneg i8 %narrow69 to i16           ; 2 uses
  br i1 %i.aj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.as = shl nuw nsw i16 %i.ak, %i.aq
  %i.at = lshr i16 %i.ak, %i.ar
  %i.au = or i16 %i.at, %i.as
  br label %bb.o

end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/segenc?download=true
inline.NumInlined: 13
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@EncodeMacroblockHighpass:bb.a
  tail call void @putBit16z(ptr noundef %i.e, i32 noundef %i.lj, i32 noundef %i.lh) #7
  br label %.loopexit.i

bb.ai:                                            ; preds = %bb.ab
  br i1 %i.it, label %.preheader.preheader.i, label %.loopexit.i

.preheader.preheader.i:                           ; preds = %bb.ai
  switch i32 %.3172263.i, label %bb.ak [
    i32 0, label %.preheader.1.i
    i32 1, label %bb.aj
  ]

bb.aj:                                            ; preds = %.preheader.preheader.i
  tail call void @putBit16z(ptr noundef %i.e, i32 noundef 1, i32 noundef 1) #7
  br label %.preheader.1.i

bb.ak:                                            ; preds = %.preheader.preheader.i
  %i.lk = sub nsw i32 3, %.3172263.i
  tail call void @putBit16z(ptr noundef %i.e, i32 noundef %i.lk, i32 noundef 2) #7
  br label %.preheader.1.i

.preheader.1.i:                                   ; preds = %bb.ak, %bb.aj, %.preheader.preheader.i
  switch i32 %.3265.i, label %bb.am [
    i32 0, label %.loopexit.i
    i32 1, label %bb.al
  ]

bb.al:                                            ; preds = %.preheader.1.i
  tail call void @putBit16z(ptr noundef %i.e, i32 noundef 1, i32 noundef 1) #7
  br label %.loopexit.i

bb.am:                                            ; preds = %.preheader.1.i
  %i.ll = sub nsw i32 3, %.3265.i
  tail call void @putBit16z(ptr noundef %i.e, i32 noundef %i.ll, i32 noundef 2) #7
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.am, %bb.al, %.preheader.1.i, %bb.ai, %bb.ah, %bb.ag, %bb.af, %.thread.i, %bb.n
  %.2189231.i = phi i32 [ %.2189.i, %bb.n ], [ %.2189230243261.i, %bb.ai ], [ %.2189230243261.i, %bb.af ], [ %.1188291.i, %.thread.i ], [ %.2189230243261.i, %bb.ah ], [ %.2189230243261.i, %bb.ag ], [ %.2189230243261.i, %bb.am ], [ %.2189230243261.i, %bb.al ], [ %.2189230243261.i, %.preheader.1.i ] ; 2 uses
  %.2192229.i = phi i32 [ %.2192.i, %bb.n ], [ %.2192228245259.i, %bb.ai ], [ %.2192228245259.i, %bb.af ], [ %.1191290.i, %.thread.i ], [ %.2192228245259.i, %bb.ah ], [ %.2192228245259.i, %bb.ag ], [ %.2192228245259.i, %bb.am ], [ %.2192228245259.i, %bb.al ], [ %.2192228245259.i, %.preheader.1.i ] ; 2 uses
  %.2195227.i = phi i32 [ %.2195.i, %bb.n ], [ %.2195226247257.i, %bb.ai ], [ %.2195226247257.i, %bb.af ], [ %i.hx, %.thread.i ], [ %.2195226247257.i, %bb.ah ], [ %.2195226247257.i, %bb.ag ], [ %.2195226247257.i, %bb.am ], [ %.2195226247257.i, %bb.al ], [ %.2195226247257.i, %.preheader.1.i ]
  %.4173.i = phi i32 [ %.2171.i, %bb.n ], [ %.3172263.i, %bb.ai ], [ %.3172263.i, %bb.af ], [ %.1170293.i, %.thread.i ], [ %.3172263.i, %bb.ah ], [ %.3172263.i, %bb.ag ], [ %.3172263.i, %bb.am ], [ %.3172263.i, %bb.al ], [ %.3172263.i, %.preheader.1.i ] ; 2 uses
  %.4.i = phi i32 [ %.2.i, %bb.n ], [ %.3265.i, %bb.ai ], [ 0, %bb.af ], [ %.1294.i, %.thread.i ], [ %.3265.i, %bb.ah ], [ 15, %bb.ag ], [ %.3265.i, %bb.am ], [ 1, %bb.al ], [ %.3265.i, %.preheader.1.i ] ; 2 uses
  %i.lm = add nuw nsw i32 %.1183292.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.lm, 4
  br i1 %exitcond.not.i, label %bb.an, label %bb.j, !llvm.loop !88

bb.an:                                            ; preds = %.loopexit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond306.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond306.not.i, label %CodeCBP.exit, label %bb.h, !llvm.loop !89

CodeCBP.exit:                                     ; preds = %bb.an, %bb.g
  %i.ln = load i32, ptr %i.be, align 8, !tbaa !36 ; 4 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 34256
  %i.lp = load i64, ptr %i.lo, align 8, !tbaa !37
  %i.lq = trunc i64 %i.lp to i32                  ; 2 uses
  %i.lr = icmp eq i32 %i.ln, 1                    ; 3 uses
  %i.ls = icmp eq i32 %i.ln, 2
  %i.lt = add i32 %i.ln, -1
  %or.cond.i40 = icmp ult i32 %i.lt, 2            ; 2 uses
  %i.lu = select i1 %or.cond.i40, i32 1, i32 %i.lq ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %1, i64 608
  %i.lw = load i32, ptr %i.lv, align 8, !tbaa !35 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i64 0, ptr %i.a, align 8
  %i.lx = getelementptr inbounds nuw i8, ptr %1, i64 692 ; 2 uses
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !96 ; 3 uses
  %.not.i = icmp sgt i32 %i.ly, %i.lw
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !42
  %i.lz = icmp eq i32 %.pre.i, 1                  ; 2 uses
  br i1 %.not.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %CodeCBP.exit
  br i1 %i.lz, label %.thread.i51, label %.thread230.i

.thread230.i:                                     ; preds = %bb.ao
  %i.ma = sub nsw i32 %i.lw, %i.ly                ; 2 uses
  %notmask.i = shl nsw i32 -1, %i.ma
  %i.mb = xor i32 %notmask.i, -1
  br label %bb.aq

bb.ap:                                            ; preds = %CodeCBP.exit
  br i1 %i.lz, label %.thread.i51, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.thread230.i
  %.0114237.i = phi i32 [ %i.mb, %.thread230.i ], [ 0, %bb.ap ]
  %.0117236.i = phi i32 [ %i.ly, %.thread230.i ], [ 0, %bb.ap ]
  %.0121235.i = phi i32 [ %i.ma, %.thread230.i ], [ 0, %bb.ap ]
  %i.mc = tail call i64 @writeIS(ptr noundef nonnull %0, ptr noundef %i.g) #7 ; 0 uses
  br label %.thread.i51

.thread.i51:                                      ; preds = %bb.ao, %bb.aq, %bb.ap
  %.0114229.i = phi i32 [ 0, %bb.ap ], [ %.0114237.i, %bb.aq ], [ 0, %bb.ao ]
  %.0117228.i = phi i32 [ 0, %bb.ap ], [ %.0117236.i, %bb.aq ], [ 0, %bb.ao ]
  %.0121227.i = phi i32 [ 0, %bb.ap ], [ %.0121235.i, %bb.aq ], [ 0, %bb.ao ]
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 34072
  %i.me = load i32, ptr %i.md, align 8, !tbaa !97
  %i.mf = icmp eq i32 %i.me, 1
  %.0137.v.i = select i1 %i.mf, i64 472, i64 344
  %.0137.i = getelementptr inbounds nuw i8, ptr %1, i64 %.0137.v.i
  %i.mg = icmp sgt i32 %i.lu, 0
  br i1 %i.mg, label %.lr.ph.i41, label %CodeCoeffs.exit

.lr.ph.i41:                                       ; preds = %.thread.i51
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 34076
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 34080
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 34084
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 34736
  %i.ml = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.mm = getelementptr inbounds nuw i8, ptr %1, i64 612
  %i.mn = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %wide.trip.count199.i = zext nneg i32 %i.lu to i64
  %i.mo = load i32, ptr getelementptr inbounds nuw (i8, ptr @dctIndex, i64 4), align 4
  %i.mp = sext i32 %i.mo to i64                   ; 2 uses
  %i.mq = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.mp
  %i.mr = load i32, ptr getelementptr inbounds nuw (i8, ptr @dctIndex, i64 8), align 8
  %i.ms = sext i32 %i.mr to i64                   ; 2 uses
  %i.mt = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.ms
  %i.mu = load i32, ptr getelementptr inbounds nuw (i8, ptr @dctIndex, i64 12), align 4
  %i.mv = sext i32 %i.mu to i64                   ; 2 uses
  %i.mw = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.mv
  %i.mx = load i32, ptr getelementptr inbounds nuw (i8, ptr @dctIndex, i64 16), align 16
  %i.my = sext i32 %i.mx to i64                   ; 2 uses
  %i.mz = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.my
  %i.na = load i32, ptr getelementptr inbounds nuw (i8, ptr @dctIndex, i64 20), align 4
  %i.nb = sext i32 %i.na to i64                   ; 2 uses
  %i.nc = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.nb
  %i.nd = load i32, ptr getelementptr inbounds nuw (i8, ptr @dctIndex, i64 24), align 8
  %i.ne = sext i32 %i.nd to i64                   ; 2 uses
  %i.nf = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.ne
  %i.ng = load i32, ptr getelementptr inbounds nuw (i8, ptr @dctIndex, i64 28), align 4
  %i.nh = sext i32 %i.ng to i64                   ; 2 uses
  %i.ni = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.nh
  %i.nj = load i32, ptr getelementptr inbounds nuw (i8, ptr @dctIndex, i64 32), align 16
  %i.nk = sext i32 %i.nj to i64                   ; 2 uses
  %i.nl = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.nk
  %i.nm = load i32, ptr getelementptr inbounds nuw (i8, ptr @dctIndex, i64 36), align 4
  %i.nn = sext i32 %i.nm to i64                   ; 2 uses
  %i.no = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.nn
  %i.np = load i32, ptr getelementptr inbounds nuw (i8, ptr @dctIndex, i64 40), align 8
  %i.nq = sext i32 %i.np to i64                   ; 2 uses
  %i.nr = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.nq
  %i.ns = load i32, ptr getelementptr inbounds nuw (i8, ptr @dctIndex, i64 44), align 4
  %i.nt = sext i32 %i.ns to i64                   ; 2 uses
  %i.nu = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.nt
  %i.nv = load i32, ptr getelementptr inbounds nuw (i8, ptr @dctIndex, i64 48), align 16
  %i.nw = sext i32 %i.nv to i64                   ; 2 uses
  %i.nx = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.nw
  %i.ny = load i32, ptr getelementptr inbounds nuw (i8, ptr @dctIndex, i64 52), align 4
  %i.nz = sext i32 %i.ny to i64                   ; 2 uses
  %i.oa = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.nz
  %i.ob = load i32, ptr getelementptr inbounds nuw (i8, ptr @dctIndex, i64 56), align 8
  %i.oc = sext i32 %i.ob to i64                   ; 2 uses
  %i.od = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.oc
  %i.oe = load i32, ptr getelementptr inbounds nuw (i8, ptr @dctIndex, i64 60), align 4
  %i.of = sext i32 %i.oe to i64                   ; 2 uses
  %i.og = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.of
  %.mux241.i = select i1 %i.lr, i32 6, i32 8
  %.mux.i = select i1 %i.lr, i32 20, i32 24
  br label %bb.ar

bb.ar:                                            ; preds = %._crit_edge.i, %.lr.ph.i41
  %indvars.iv196.i = phi i64 [ 0, %.lr.ph.i41 ], [ %indvars.iv.next197.i, %._crit_edge.i ] ; 3 uses
  %.0108180.i = phi i32 [ 0, %.lr.ph.i41 ], [ %.2110.i, %._crit_edge.i ]
  %.0111179.i = phi ptr [ %i.a, %.lr.ph.i41 ], [ %.2113.i, %._crit_edge.i ]
  %.1115178.i = phi i32 [ %.0114229.i, %.lr.ph.i41 ], [ %.3.i47, %._crit_edge.i ]
  %.1118177.i = phi i32 [ %.0117228.i, %.lr.ph.i41 ], [ %.3120.i, %._crit_edge.i ]
  %.1122176.i = phi i32 [ %.0121227.i, %.lr.ph.i41 ], [ %.3124.i, %._crit_edge.i ]
  %.0125175.i = phi i32 [ %i.lw, %.lr.ph.i41 ], [ %.2127.i, %._crit_edge.i ]
  %.0134173.i = phi i32 [ 4, %.lr.ph.i41 ], [ %.1135.i, %._crit_edge.i ]
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %indvars.iv196.i
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !35 ; 2 uses
  br i1 %or.cond.i40, label %.preheader153.lr.ph.sink.split.i, label %.preheader153.lr.ph.i

.preheader153.lr.ph.sink.split.i:                 ; preds = %bb.ar
  %i.oj = load i32, ptr %i.mi, align 8, !tbaa !35
  %i.ok = shl i32 %i.oj, 16
  %i.ol = load i32, ptr %i.mj, align 4, !tbaa !35
  %i.om = shl i32 %i.ol, %.mux.i
  %i.on = add i32 %i.ok, %i.oi
  %i.oo = add i32 %i.on, %i.om
  br label %.preheader153.lr.ph.i

.preheader153.lr.ph.i:                            ; preds = %.preheader153.lr.ph.sink.split.i, %bb.ar
  %.1135.i = phi i32 [ %.0134173.i, %bb.ar ], [ %.mux241.i, %.preheader153.lr.ph.sink.split.i ] ; 2 uses
  %.0107.i = phi i32 [ %i.oi, %bb.ar ], [ %i.oo, %.preheader153.lr.ph.sink.split.i ]
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %i.mk, i64 %indvars.iv196.i
  %wide.trip.count.i42 = zext nneg i32 %.1135.i to i64
  br label %.preheader153.i

.preheader153.i:                                  ; preds = %bb.bu, %.preheader153.lr.ph.i
  %indvars.iv192.i = phi i64 [ 0, %.preheader153.lr.ph.i ], [ %indvars.iv.next193.i.a, %bb.bu ] ; 6 uses
  %.1167.i = phi i32 [ %.0107.i, %.preheader153.lr.ph.i ], [ %i.vo, %bb.bu ]
  %.1109166.i = phi i32 [ %.0108180.i, %.preheader153.lr.ph.i ], [ %.2110.i, %bb.bu ] ; 2 uses
  %.1112165.i = phi ptr [ %.0111179.i, %.preheader153.lr.ph.i ], [ %.2113.i, %bb.bu ] ; 3 uses
  %.2116164.i = phi i32 [ %.1115178.i, %.preheader153.lr.ph.i ], [ %.3.i47, %bb.bu ] ; 16 uses
  %.2119163.i = phi i32 [ %.1118177.i, %.preheader153.lr.ph.i ], [ %.3120.i, %bb.bu ] ; 17 uses
  %.2123162.i = phi i32 [ %.1122176.i, %.preheader153.lr.ph.i ], [ %.3124.i, %bb.bu ] ; 33 uses
  %.1126161.i = phi i32 [ %.0125175.i, %.preheader153.lr.ph.i ], [ %.2127.i, %bb.bu ] ; 2 uses
  %.0131160.i = phi i64 [ 0, %.preheader153.lr.ph.i ], [ %indvars.iv.next.i45, %bb.bu ]
  %i.oq = icmp samesign ult i64 %indvars.iv192.i, 4
  %i.or = add nuw i64 %indvars.iv192.i, 4294967292
  %i.os = lshr i64 %i.or, 1
  %i.ot = and i64 %i.os, 2147483647
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ot
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 34744
  %i.ow = shl i64 %indvars.iv192.i, 2
  %i.ox = and i64 %i.ow, 4
  %i.oy = getelementptr [8 x i8], ptr %0, i64 %indvars.iv192.i
  %i.oz = getelementptr i8, ptr %i.oy, i64 34712
  %.not148.i = icmp eq i32 %.2123162.i, 0         ; 2 uses
  %i.pa = add nsw i32 %.2123162.i, 1              ; 15 uses
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr @blkOffsetUV_422, i64 %i.ox
  br label %bb.as

bb.as:                                            ; preds = %.loopexit.i44, %.preheader153.i
  %indvars.iv187.i = phi i64 [ 0, %.preheader153.i ], [ %indvars.iv.next188.i, %.loopexit.i44 ] ; 3 uses
  %indvars.iv.i43 = phi i64 [ %.0131160.i, %.preheader153.i ], [ %indvars.iv.next.i45, %.loopexit.i44 ] ; 2 uses
  %.2158.i.a = phi i32 [ %.1167.i, %.preheader153.i ], [ %i.vo, %.loopexit.i44 ] ; 2 uses
  br i1 %i.oq, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.pb = load ptr, ptr %i.op, align 8, !tbaa !53
  %i.pc = getelementptr inbounds [4 x i8], ptr @blkOffset, i64 %indvars.iv.i43
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !35
  %i.pe = sext i32 %i.pd to i64
  %i.pf = getelementptr inbounds [4 x i8], ptr %i.pb, i64 %i.pe
  br label %bb.ay

bb.au:                                            ; preds = %bb.as
  br i1 %i.lr, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.pg = load ptr, ptr %i.oz, align 8, !tbaa !53
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr @blkOffsetUV, i64 %indvars.iv187.i
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !35
  %i.pj = sext i32 %i.pi to i64
  %i.pk = getelementptr inbounds [4 x i8], ptr %i.pg, i64 %i.pj
  br label %bb.ay

bb.aw:                                            ; preds = %bb.au
  br i1 %i.ls, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.pl = load ptr, ptr %i.ov, align 8, !tbaa !53
  %gep.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv187.i
  %i.pm = load i32, ptr %gep.i, align 4, !tbaa !35
  %i.pn = sext i32 %i.pm to i64
  %i.po = getelementptr inbounds [4 x i8], ptr %i.pl, i64 %i.pn
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.av, %bb.at
  %.0106.i = phi ptr [ %i.pf, %bb.at ], [ %i.pk, %bb.av ], [ %i.po, %bb.ax ], [ null, %bb.aw ] ; 16 uses
  %i.pp = and i32 %.2158.i.a, 1
  %i.pq = icmp eq i32 %i.pp, 0
  br i1 %i.pq, label %bb.az, label %bb.bp

bb.az:                                            ; preds = %bb.ay
  br i1 %.not148.i, label %.loopexit.i44, label %.preheader.preheader.i48

.preheader.preheader.i48:                         ; preds = %bb.az
  %i.pr = getelementptr inbounds [4 x i8], ptr %.0106.i, i64 %i.mp
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !35 ; 2 uses
  %i.pt = tail call i32 @llvm.abs.i32(i32 %i.ps, i1 true)
  %i.pu = lshr i32 %i.pt, %.2119163.i             ; 2 uses
  %.not150.i = icmp eq i32 %i.pu, 0
  br i1 %.not150.i, label %.preheader.1.i49, label %bb.ba

bb.ba:                                            ; preds = %.preheader.preheader.i48
  %i.pv = and i32 %i.pu, %.2116164.i
  %i.pw = tail call i32 @llvm.fshl.i32(i32 %i.pv, i32 %i.ps, i32 1)
  br label %.preheader.1.i49

.preheader.1.i49:                                 ; preds = %bb.ba, %.preheader.preheader.i48
  %.0105.i = phi i32 [ %i.pw, %bb.ba ], [ 0, %.preheader.preheader.i48 ]
  %.0.i50 = phi i32 [ %i.pa, %bb.ba ], [ %.2123162.i, %.preheader.preheader.i48 ]
  tail call void @putBit16z(ptr noundef %i.g, i32 noundef %.0105.i, i32 noundef %.0.i50) #7
  %i.px = getelementptr inbounds [4 x i8], ptr %.0106.i, i64 %i.ms
  %i.py = load i32, ptr %i.px, align 4, !tbaa !35 ; 2 uses
  %i.pz = tail call i32 @llvm.abs.i32(i32 %i.py, i1 true)
  %i.qa = lshr i32 %i.pz, %.2119163.i             ; 2 uses
  %.not150.1.i = icmp eq i32 %i.qa, 0
  br i1 %.not150.1.i, label %.preheader.2.i, label %bb.bb

bb.bb:                                            ; preds = %.preheader.1.i49
  %i.qb = and i32 %i.qa, %.2116164.i
  %i.qc = tail call i32 @llvm.fshl.i32(i32 %i.qb, i32 %i.py, i32 1)
  br label %.preheader.2.i

.preheader.2.i:                                   ; preds = %bb.bb, %.preheader.1.i49
  %.0105.1.i = phi i32 [ %i.qc, %bb.bb ], [ 0, %.preheader.1.i49 ]
  %.0.1.i = phi i32 [ %i.pa, %bb.bb ], [ %.2123162.i, %.preheader.1.i49 ]
  tail call void @putBit16z(ptr noundef %i.g, i32 noundef %.0105.1.i, i32 noundef %.0.1.i) #7
  %i.qd = getelementptr inbounds [4 x i8], ptr %.0106.i, i64 %i.mv
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !35 ; 2 uses
  %i.qf = tail call i32 @llvm.abs.i32(i32 %i.qe, i1 true)
  %i.qg = lshr i32 %i.qf, %.2119163.i             ; 2 uses
  %.not150.2.i = icmp eq i32 %i.qg, 0
  br i1 %.not150.2.i, label %.preheader.3.i, label %bb.bc

bb.bc:                                            ; preds = %.preheader.2.i
  %i.qh = and i32 %i.qg, %.2116164.i
  %i.qi = tail call i32 @llvm.fshl.i32(i32 %i.qh, i32 %i.qe, i32 1)
  br label %.preheader.3.i

.preheader.3.i:                                   ; preds = %bb.bc, %.preheader.2.i
  %.0105.2.i = phi i32 [ %i.qi, %bb.bc ], [ 0, %.preheader.2.i ]
  %.0.2.i = phi i32 [ %i.pa, %bb.bc ], [ %.2123162.i, %.preheader.2.i ]
  tail call void @putBit16z(ptr noundef %i.g, i32 noundef %.0105.2.i, i32 noundef %.0.2.i) #7
  %i.qj = getelementptr inbounds [4 x i8], ptr %.0106.i, i64 %i.my
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !35 ; 2 uses
  %i.ql = tail call i32 @llvm.abs.i32(i32 %i.qk, i1 true)
  %i.qm = lshr i32 %i.ql, %.2119163.i             ; 2 uses
  %.not150.3.i = icmp eq i32 %i.qm, 0
  br i1 %.not150.3.i, label %.preheader.4.i, label %bb.bd

bb.bd:                                            ; preds = %.preheader.3.i
  %i.qn = and i32 %i.qm, %.2116164.i
  %i.qo = tail call i32 @llvm.fshl.i32(i32 %i.qn, i32 %i.qk, i32 1)
  br label %.preheader.4.i

.preheader.4.i:                                   ; preds = %bb.bd, %.preheader.3.i
  %.0105.3.i = phi i32 [ %i.qo, %bb.bd ], [ 0, %.preheader.3.i ]
  %.0.3.i = phi i32 [ %i.pa, %bb.bd ], [ %.2123162.i, %.preheader.3.i ]
  tail call void @putBit16z(ptr noundef %i.g, i32 noundef %.0105.3.i, i32 noundef %.0.3.i) #7
  %i.qp = getelementptr inbounds [4 x i8], ptr %.0106.i, i64 %i.nb
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !35 ; 2 uses
  %i.qr = tail call i32 @llvm.abs.i32(i32 %i.qq, i1 true)
  %i.qs = lshr i32 %i.qr, %.2119163.i             ; 2 uses
  %.not150.4.i = icmp eq i32 %i.qs, 0
  br i1 %.not150.4.i, label %.preheader.5.i, label %bb.be

bb.be:                                            ; preds = %.preheader.4.i
  %i.qt = and i32 %i.qs, %.2116164.i
  %i.qu = tail call i32 @llvm.fshl.i32(i32 %i.qt, i32 %i.qq, i32 1)
  br label %.preheader.5.i

.preheader.5.i:                                   ; preds = %bb.be, %.preheader.4.i
  %.0105.4.i = phi i32 [ %i.qu, %bb.be ], [ 0, %.preheader.4.i ]
  %.0.4.i = phi i32 [ %i.pa, %bb.be ], [ %.2123162.i, %.preheader.4.i ]
  tail call void @putBit16z(ptr noundef %i.g, i32 noundef %.0105.4.i, i32 noundef %.0.4.i) #7
  %i.qv = getelementptr inbounds [4 x i8], ptr %.0106.i, i64 %i.ne
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !35 ; 2 uses
  %i.qx = tail call i32 @llvm.abs.i32(i32 %i.qw, i1 true)
  %i.qy = lshr i32 %i.qx, %.2119163.i             ; 2 uses
  %.not150.5.i = icmp eq i32 %i.qy, 0
  br i1 %.not150.5.i, label %.preheader.6.i, label %bb.bf

bb.bf:                                            ; preds = %.preheader.5.i
  %i.qz = and i32 %i.qy, %.2116164.i
  %i.ra = tail call i32 @llvm.fshl.i32(i32 %i.qz, i32 %i.qw, i32 1)
  br label %.preheader.6.i

.preheader.6.i:                                   ; preds = %bb.bf, %.preheader.5.i
  %.0105.5.i = phi i32 [ %i.ra, %bb.bf ], [ 0, %.preheader.5.i ]
  %.0.5.i = phi i32 [ %i.pa, %bb.bf ], [ %.2123162.i, %.preheader.5.i ]
  tail call void @putBit16z(ptr noundef %i.g, i32 noundef %.0105.5.i, i32 noundef %.0.5.i) #7
  %i.rb = getelementptr inbounds [4 x i8], ptr %.0106.i, i64 %i.nh
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !35 ; 2 uses
  %i.rd = tail call i32 @llvm.abs.i32(i32 %i.rc, i1 true)
  %i.re = lshr i32 %i.rd, %.2119163.i             ; 2 uses
  %.not150.6.i = icmp eq i32 %i.re, 0
  br i1 %.not150.6.i, label %.preheader.7.i, label %bb.bg

bb.bg:                                            ; preds = %.preheader.6.i
  %i.rf = and i32 %i.re, %.2116164.i
  %i.rg = tail call i32 @llvm.fshl.i32(i32 %i.rf, i32 %i.rc, i32 1)
  br label %.preheader.7.i

.preheader.7.i:                                   ; preds = %bb.bg, %.preheader.6.i
  %.0105.6.i = phi i32 [ %i.rg, %bb.bg ], [ 0, %.preheader.6.i ]
  %.0.6.i = phi i32 [ %i.pa, %bb.bg ], [ %.2123162.i, %.preheader.6.i ]
  tail call void @putBit16z(ptr noundef %i.g, i32 noundef %.0105.6.i, i32 noundef %.0.6.i) #7
  %i.rh = getelementptr inbounds [4 x i8], ptr %.0106.i, i64 %i.nk
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !35 ; 2 uses
  %i.rj = tail call i32 @llvm.abs.i32(i32 %i.ri, i1 true)
  %i.rk = lshr i32 %i.rj, %.2119163.i             ; 2 uses
  %.not150.7.i = icmp eq i32 %i.rk, 0
  br i1 %.not150.7.i, label %.preheader.8.i, label %bb.bh

bb.bh:                                            ; preds = %.preheader.7.i
  %i.rl = and i32 %i.rk, %.2116164.i
  %i.rm = tail call i32 @llvm.fshl.i32(i32 %i.rl, i32 %i.ri, i32 1)
  br label %.preheader.8.i

.preheader.8.i:                                   ; preds = %bb.bh, %.preheader.7.i
  %.0105.7.i = phi i32 [ %i.rm, %bb.bh ], [ 0, %.preheader.7.i ]
  %.0.7.i = phi i32 [ %i.pa, %bb.bh ], [ %.2123162.i, %.preheader.7.i ]
  tail call void @putBit16z(ptr noundef %i.g, i32 noundef %.0105.7.i, i32 noundef %.0.7.i) #7
  %i.rn = getelementptr inbounds [4 x i8], ptr %.0106.i, i64 %i.nn
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !35 ; 2 uses
  %i.rp = tail call i32 @llvm.abs.i32(i32 %i.ro, i1 true)
  %i.rq = lshr i32 %i.rp, %.2119163.i             ; 2 uses
  %.not150.8.i = icmp eq i32 %i.rq, 0
  br i1 %.not150.8.i, label %.preheader.9.i, label %bb.bi

bb.bi:                                            ; preds = %.preheader.8.i
  %i.rr = and i32 %i.rq, %.2116164.i
  %i.rs = tail call i32 @llvm.fshl.i32(i32 %i.rr, i32 %i.ro, i32 1)
  br label %.preheader.9.i

.preheader.9.i:                                   ; preds = %bb.bi, %.preheader.8.i
  %.0105.8.i = phi i32 [ %i.rs, %bb.bi ], [ 0, %.preheader.8.i ]
  %.0.8.i = phi i32 [ %i.pa, %bb.bi ], [ %.2123162.i, %.preheader.8.i ]
  tail call void @putBit16z(ptr noundef %i.g, i32 noundef %.0105.8.i, i32 noundef %.0.8.i) #7
  %i.rt = getelementptr inbounds [4 x i8], ptr %.0106.i, i64 %i.nq
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !35 ; 2 uses
  %i.rv = tail call i32 @llvm.abs.i32(i32 %i.ru, i1 true)
  %i.rw = lshr i32 %i.rv, %.2119163.i             ; 2 uses
  %.not150.9.i = icmp eq i32 %i.rw, 0
  br i1 %.not150.9.i, label %.preheader.10.i, label %bb.bj

bb.bj:                                            ; preds = %.preheader.9.i
  %i.rx = and i32 %i.rw, %.2116164.i
  %i.ry = tail call i32 @llvm.fshl.i32(i32 %i.rx, i32 %i.ru, i32 1)
  br label %.preheader.10.i

.preheader.10.i:                                  ; preds = %bb.bj, %.preheader.9.i
  %.0105.9.i = phi i32 [ %i.ry, %bb.bj ], [ 0, %.preheader.9.i ]
  %.0.9.i = phi i32 [ %i.pa, %bb.bj ], [ %.2123162.i, %.preheader.9.i ]
  tail call void @putBit16z(ptr noundef %i.g, i32 noundef %.0105.9.i, i32 noundef %.0.9.i) #7
  %i.rz = getelementptr inbounds [4 x i8], ptr %.0106.i, i64 %i.nt
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !35 ; 2 uses
  %i.sb = tail call i32 @llvm.abs.i32(i32 %i.sa, i1 true)
  %i.sc = lshr i32 %i.sb, %.2119163.i             ; 2 uses
  %.not150.10.i = icmp eq i32 %i.sc, 0
  br i1 %.not150.10.i, label %.preheader.11.i, label %bb.bk

bb.bk:                                            ; preds = %.preheader.10.i
  %i.sd = and i32 %i.sc, %.2116164.i
  %i.se = tail call i32 @llvm.fshl.i32(i32 %i.sd, i32 %i.sa, i32 1)
  br label %.preheader.11.i

.preheader.11.i:                                  ; preds = %bb.bk, %.preheader.10.i
  %.0105.10.i = phi i32 [ %i.se, %bb.bk ], [ 0, %.preheader.10.i ]
  %.0.10.i = phi i32 [ %i.pa, %bb.bk ], [ %.2123162.i, %.preheader.10.i ]
  tail call void @putBit16z(ptr noundef %i.g, i32 noundef %.0105.10.i, i32 noundef %.0.10.i) #7
  %i.sf = getelementptr inbounds [4 x i8], ptr %.0106.i, i64 %i.nw
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !35 ; 2 uses
  %i.sh = tail call i32 @llvm.abs.i32(i32 %i.sg, i1 true)
  %i.si = lshr i32 %i.sh, %.2119163.i             ; 2 uses
  %.not150.11.i = icmp eq i32 %i.si, 0
  br i1 %.not150.11.i, label %.preheader.12.i, label %bb.bl

bb.bl:                                            ; preds = %.preheader.11.i
  %i.sj = and i32 %i.si, %.2116164.i
  %i.sk = tail call i32 @llvm.fshl.i32(i32 %i.sj, i32 %i.sg, i32 1)
  br label %.preheader.12.i

.preheader.12.i:                                  ; preds = %bb.bl, %.preheader.11.i
  %.0105.11.i = phi i32 [ %i.sk, %bb.bl ], [ 0, %.preheader.11.i ]
  %.0.11.i = phi i32 [ %i.pa, %bb.bl ], [ %.2123162.i, %.preheader.11.i ]
  tail call void @putBit16z(ptr noundef %i.g, i32 noundef %.0105.11.i, i32 noundef %.0.11.i) #7
  %i.sl = getelementptr inbounds [4 x i8], ptr %.0106.i, i64 %i.nz
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !35 ; 2 uses
  %i.sn = tail call i32 @llvm.abs.i32(i32 %i.sm, i1 true)
  %i.so = lshr i32 %i.sn, %.2119163.i             ; 2 uses
  %.not150.12.i = icmp eq i32 %i.so, 0
  br i1 %.not150.12.i, label %.preheader.13.i, label %bb.bm

bb.bm:                                            ; preds = %.preheader.12.i
  %i.sp = and i32 %i.so, %.2116164.i
  %i.sq = tail call i32 @llvm.fshl.i32(i32 %i.sp, i32 %i.sm, i32 1)
  br label %.preheader.13.i

.preheader.13.i:                                  ; preds = %bb.bm, %.preheader.12.i
  %.0105.12.i = phi i32 [ %i.sq, %bb.bm ], [ 0, %.preheader.12.i ]
  %.0.12.i = phi i32 [ %i.pa, %bb.bm ], [ %.2123162.i, %.preheader.12.i ]
  tail call void @putBit16z(ptr noundef %i.g, i32 noundef %.0105.12.i, i32 noundef %.0.12.i) #7
  %i.sr = getelementptr inbounds [4 x i8], ptr %.0106.i, i64 %i.oc
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !35 ; 2 uses
  %i.st = tail call i32 @llvm.abs.i32(i32 %i.ss, i1 true)
  %i.su = lshr i32 %i.st, %.2119163.i             ; 2 uses
  %.not150.13.i = icmp eq i32 %i.su, 0
  br i1 %.not150.13.i, label %.preheader.14.i, label %bb.bn

bb.bn:                                            ; preds = %.preheader.13.i
  %i.sv = and i32 %i.su, %.2116164.i
  %i.sw = tail call i32 @llvm.fshl.i32(i32 %i.sv, i32 %i.ss, i32 1)
  br label %.preheader.14.i

.preheader.14.i:                                  ; preds = %bb.bn, %.preheader.13.i
  %.0105.13.i = phi i32 [ %i.sw, %bb.bn ], [ 0, %.preheader.13.i ]
  %.0.13.i = phi i32 [ %i.pa, %bb.bn ], [ %.2123162.i, %.preheader.13.i ]
  tail call void @putBit16z(ptr noundef %i.g, i32 noundef %.0105.13.i, i32 noundef %.0.13.i) #7
  %i.sx = getelementptr inbounds [4 x i8], ptr %.0106.i, i64 %i.of
  %i.sy = load i32, ptr %i.sx, align 4, !tbaa !35 ; 2 uses
  %i.sz = tail call i32 @llvm.abs.i32(i32 %i.sy, i1 true)
  %i.ta = lshr i32 %i.sz, %.2119163.i             ; 2 uses
  %.not150.14.i = icmp eq i32 %i.ta, 0
  br i1 %.not150.14.i, label %.loopexit.loopexit.i, label %bb.bo

bb.bo:                                            ; preds = %.preheader.14.i
  %i.tb = and i32 %i.ta, %.2116164.i
  %i.tc = tail call i32 @llvm.fshl.i32(i32 %i.tb, i32 %i.sy, i32 1)
  br label %.loopexit.loopexit.i

.loopexit.loopexit.i:                             ; preds = %bb.bo, %.preheader.14.i
  %.0105.14.i = phi i32 [ %i.tc, %bb.bo ], [ 0, %.preheader.14.i ]
  %.0.14.i = phi i32 [ %i.pa, %bb.bo ], [ %.2123162.i, %.preheader.14.i ]
  tail call void @putBit16z(ptr noundef %i.g, i32 noundef %.0105.14.i, i32 noundef %.0.14.i) #7
  br label %.loopexit.i44

bb.bp:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.td = call fastcc i32 @AdaptiveScan(ptr noundef %.0106.i, ptr noundef %i.c, ptr noundef nonnull %.0137.i, i32 noundef %.1126161.i, i32 noundef %.2119163.i, ptr noundef %i.b) ; 2 uses
  %i.te = load i32, ptr %.1112165.i, align 4, !tbaa !35
  %i.tf = add nsw i32 %i.te, %i.td
  store i32 %i.tf, ptr %.1112165.i, align 4, !tbaa !35
  call fastcc void @EncodeBlock(i32 noundef %.1109166.i, ptr noundef %i.b, i32 noundef %i.td, ptr noundef nonnull %i.ml, i32 noundef 13, ptr noundef %i.e, i32 noundef 1)
  br i1 %.not148.i, label %.loopexit152.i, label %.preheader151.preheader.i

.preheader151.preheader.i:                        ; preds = %bb.bp
  %i.tg = load i32, ptr %i.mq, align 4, !tbaa !35 ; 2 uses
  %i.th = ashr i32 %i.tg, 1
  %i.ti = and i32 %i.tg, 1
  %i.tj = add nsw i32 %i.ti, %.2123162.i
  tail call void @putBit16z(ptr noundef %i.g, i32 noundef %i.th, i32 noundef %i.tj) #7
  %i.tk = load i32, ptr %i.mt, align 4, !tbaa !35 ; 2 uses
  %i.tl = ashr i32 %i.tk, 1
  %i.tm = and i32 %i.tk, 1
  %i.tn = add nsw i32 %i.tm, %.2123162.i
  tail call void @putBit16z(ptr noundef %i.g, i32 noundef %i.tl, i32 noundef %i.tn) #7
  %i.to = load i32, ptr %i.mw, align 4, !tbaa !35 ; 2 uses
  %i.tp = ashr i32 %i.to, 1
  %i.tq = and i32 %i.to, 1
  %i.tr = add nsw i32 %i.tq, %.2123162.i
  tail call void @putBit16z(ptr noundef %i.g, i32 noundef %i.tp, i32 noundef %i.tr) #7
  %i.ts = load i32, ptr %i.mz, align 4, !tbaa !35 ; 2 uses
  %i.tt = ashr i32 %i.ts, 1
  %i.tu = and i32 %i.ts, 1
  %i.tv = add nsw i32 %i.tu, %.2123162.i
  tail call void @putBit16z(ptr noundef %i.g, i32 noundef %i.tt, i32 noundef %i.tv) #7
  %i.tw = load i32, ptr %i.nc, align 4, !tbaa !35 ; 2 uses
  %i.tx = ashr i32 %i.tw, 1
  %i.ty = and i32 %i.tw, 1
  %i.tz = add nsw i32 %i.ty, %.2123162.i
  tail call void @putBit16z(ptr noundef %i.g, i32 noundef %i.tx, i32 noundef %i.tz) #7
  %i.ua = load i32, ptr %i.nf, align 4, !tbaa !35 ; 2 uses
  %i.ub = ashr i32 %i.ua, 1
  %i.uc = and i32 %i.ua, 1
  %i.ud = add nsw i32 %i.uc, %.2123162.i
  tail call void @putBit16z(ptr noundef %i.g, i32 noundef %i.ub, i32 noundef %i.ud) #7
  %i.ue = load i32, ptr %i.ni, align 4, !tbaa !35 ; 2 uses
  %i.uf = ashr i32 %i.ue, 1
  %i.ug = and i32 %i.ue, 1
  %i.uh = add nsw i32 %i.ug, %.2123162.i
  tail call void @putBit16z(ptr noundef %i.g, i32 noundef %i.uf, i32 noundef %i.uh) #7
  %i.ui = load i32, ptr %i.nl, align 4, !tbaa !35 ; 2 uses
  %i.uj = ashr i32 %i.ui, 1
  %i.uk = and i32 %i.ui, 1
  %i.ul = add nsw i32 %i.uk, %.2123162.i
  tail call void @putBit16z(ptr noundef %i.g, i32 noundef %i.uj, i32 noundef %i.ul) #7
  %i.um = load i32, ptr %i.no, align 4, !tbaa !35 ; 2 uses
  %i.un = ashr i32 %i.um, 1
  %i.uo = and i32 %i.um, 1
  %i.up = add nsw i32 %i.uo, %.2123162.i
  tail call void @putBit16z(ptr noundef %i.g, i32 noundef %i.un, i32 noundef %i.up) #7
  %i.uq = load i32, ptr %i.nr, align 4, !tbaa !35 ; 2 uses
  %i.ur = ashr i32 %i.uq, 1
  %i.us = and i32 %i.uq, 1
  %i.ut = add nsw i32 %i.us, %.2123162.i
  tail call void @putBit16z(ptr noundef %i.g, i32 noundef %i.ur, i32 noundef %i.ut) #7
  %i.uu = load i32, ptr %i.nu, align 4, !tbaa !35 ; 2 uses
  %i.uv = ashr i32 %i.uu, 1
  %i.uw = and i32 %i.uu, 1
  %i.ux = add nsw i32 %i.uw, %.2123162.i
  tail call void @putBit16z(ptr noundef %i.g, i32 noundef %i.uv, i32 noundef %i.ux) #7
  %i.uy = load i32, ptr %i.nx, align 4, !tbaa !35 ; 2 uses
  %i.uz = ashr i32 %i.uy, 1
  %i.va = and i32 %i.uy, 1
  %i.vb = add nsw i32 %i.va, %.2123162.i
  tail call void @putBit16z(ptr noundef %i.g, i32 noundef %i.uz, i32 noundef %i.vb) #7
  %i.vc = load i32, ptr %i.oa, align 4, !tbaa !35 ; 2 uses
  %i.vd = ashr i32 %i.vc, 1
  %i.ve = and i32 %i.vc, 1
  %i.vf = add nsw i32 %i.ve, %.2123162.i
  tail call void @putBit16z(ptr noundef %i.g, i32 noundef %i.vd, i32 noundef %i.vf) #7
  %i.vg = load i32, ptr %i.od, align 4, !tbaa !35 ; 2 uses
  %i.vh = ashr i32 %i.vg, 1
  %i.vi = and i32 %i.vg, 1
  %i.vj = add nsw i32 %i.vi, %.2123162.i
  tail call void @putBit16z(ptr noundef %i.g, i32 noundef %i.vh, i32 noundef %i.vj) #7
  %i.vk = load i32, ptr %i.og, align 4, !tbaa !35 ; 2 uses
  %i.vl = ashr i32 %i.vk, 1
  %i.vm = and i32 %i.vk, 1
  %i.vn = add nsw i32 %i.vm, %.2123162.i
  tail call void @putBit16z(ptr noundef %i.g, i32 noundef %i.vl, i32 noundef %i.vn) #7
  br label %.loopexit152.i

.loopexit152.i:                                   ; preds = %.preheader151.preheader.i, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %.loopexit.i44

.loopexit.i44:                                    ; preds = %.loopexit152.i, %.loopexit.loopexit.i, %bb.az
  %indvars.iv.next188.i = add nuw nsw i64 %indvars.iv187.i, 1 ; 2 uses
  %i.vo = ashr i32 %.2158.i.a, 1                  ; 2 uses
  %indvars.iv.next.i45 = add nsw i64 %indvars.iv.i43, 1 ; 2 uses
  %exitcond.not.i46 = icmp eq i64 %indvars.iv.next188.i, 4
  br i1 %exitcond.not.i46, label %bb.bq, label %bb.as, !llvm.loop !90

bb.bq:                                            ; preds = %.loopexit.i44
  %i.vp = icmp eq i64 %indvars.iv192.i, 3
  br i1 %i.vp, label %bb.br, label %bb.bu

bb.br:                                            ; preds = %bb.bq
  %i.vq = load i32, ptr %i.mm, align 4, !tbaa !35 ; 5 uses
  %i.vr = load i32, ptr %i.lx, align 4, !tbaa !96 ; 3 uses
  %.not145.i = icmp sgt i32 %i.vr, %i.vq
  br i1 %.not145.i, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.vs = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !42
  %.not146.i = icmp eq i32 %i.vs, 1
  br i1 %.not146.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.vt = sub nsw i32 %i.vq, %i.vr                ; 2 uses
  %notmask147.i = shl nsw i32 -1, %i.vt
  %i.vu = xor i32 %notmask147.i, -1
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs, %bb.br, %bb.bq
  %.2127.i = phi i32 [ %i.vq, %bb.bt ], [ %i.vq, %bb.bs ], [ %i.vq, %bb.br ], [ %.1126161.i, %bb.bq ] ; 2 uses
  %.3124.i = phi i32 [ %i.vt, %bb.bt ], [ 0, %bb.bs ], [ 0, %bb.br ], [ %.2123162.i, %bb.bq ] ; 2 uses
  %.3120.i = phi i32 [ %i.vr, %bb.bt ], [ 0, %bb.bs ], [ 0, %bb.br ], [ %.2119163.i, %bb.bq ] ; 2 uses
  %.3.i47 = phi i32 [ %i.vu, %bb.bt ], [ 0, %bb.bs ], [ 0, %bb.br ], [ %.2116164.i, %bb.bq ] ; 2 uses
  %.2113.i = phi ptr [ %i.mn, %bb.bt ], [ %i.mn, %bb.bs ], [ %i.mn, %bb.br ], [ %.1112165.i, %bb.bq ] ; 2 uses
  %.2110.i = phi i32 [ 1, %bb.bt ], [ 1, %bb.bs ], [ 1, %bb.br ], [ %.1109166.i, %bb.bq ] ; 2 uses
  %indvars.iv.next193.i.a = add nuw nsw i64 %indvars.iv192.i, 1 ; 2 uses
  %exitcond195.not.i = icmp eq i64 %indvars.iv.next193.i.a, %wide.trip.count.i42
  br i1 %exitcond195.not.i, label %._crit_edge.i, label %.preheader153.i, !llvm.loop !91

._crit_edge.i:                                    ; preds = %bb.bu
  %indvars.iv.next197.i = add nuw nsw i64 %indvars.iv196.i, 1 ; 2 uses
  %exitcond200.not.i = icmp eq i64 %indvars.iv.next197.i, %wide.trip.count199.i
  br i1 %exitcond200.not.i, label %CodeCoeffs.exit, label %bb.ar, !llvm.loop !92

CodeCoeffs.exit:                                  ; preds = %._crit_edge.i, %.thread.i51
  %i.vv = getelementptr inbounds nuw i8, ptr %1, i64 600
  call void @UpdateModelMB(i32 noundef %i.ln, i32 noundef %i.lq, ptr noundef nonnull %i.a, ptr noundef nonnull %i.vv) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.vw = getelementptr inbounds nuw i8, ptr %0, i64 34444
  %i.vx = load i32, ptr %i.vw, align 4, !tbaa !50
  %.not39 = icmp eq i32 %i.vx, 0
  br i1 %.not39, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %CodeCoeffs.exit
  %i.vy = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !57
  call void @AdaptDiscriminant(ptr noundef %i.vz) #7
  %i.wa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.wb = load ptr, ptr %i.wa, align 8, !tbaa !58
  call void @AdaptDiscriminant(ptr noundef %i.wb) #7
  %i.wc = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !44
  call void @AdaptDiscriminant(ptr noundef %i.wd) #7
  %i.we = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.wf = load ptr, ptr %i.we, align 8, !tbaa !44
  call void @AdaptDiscriminant(ptr noundef %i.wf) #7
  %i.wg = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.wh = load ptr, ptr %i.wg, align 8, !tbaa !44
  call void @AdaptDiscriminant(ptr noundef %i.wh) #7
  %i.wi = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.wj = load ptr, ptr %i.wi, align 8, !tbaa !44
  call void @AdaptDiscriminant(ptr noundef %i.wj) #7
  %i.wk = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !44
  call void @AdaptDiscriminant(ptr noundef %i.wl) #7
  %i.wm = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.wn = load ptr, ptr %i.wm, align 8, !tbaa !44
  call void @AdaptDiscriminant(ptr noundef %i.wn) #7
  %i.wo = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !44
  call void @AdaptDiscriminant(ptr noundef %i.wp) #7
  %i.wq = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.wr = load ptr, ptr %i.wq, align 8, !tbaa !44
  call void @AdaptDiscriminant(ptr noundef %i.wr) #7
  br label %bb.bw

bb.bw:                                            ; preds = %CodeCoeffs.exit, %bb.bv
  ret i32 0
}

declare void @predCBPEnc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"long", !4, i64 0}
!9 = !{!"tagCWMImageInfo", !8, i64 0, !8, i64 8, !5, i64 16, !5, i64 20, !8, i64 24, !8, i64 32, !5, i64 40, !4, i64 44, !4, i64 45, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !5, i64 80, !8, i64 88, !8, i64 96, !5, i64 104, !4, i64 108, !5, i64 112}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!"p1 _ZTS9WMPStream", !10, i64 0}
!12 = !{!"tagCWMIStrCodecParam", !5, i64 0, !4, i64 4, !4, i64 5, !4, i64 6, !4, i64 7, !4, i64 8, !4, i64 9, !4, i64 10, !4, i64 11, !4, i64 12, !4, i64 13, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !8, i64 32, !4, i64 40, !5, i64 44, !4, i64 48, !11, i64 56, !8, i64 64, !5, i64 72, !4, i64 76, !5, i64 16460, !4, i64 16464, !4, i64 32848, !4, i64 32849, !5, i64 32852, !5, i64 32856, !5, i64 32860, !5, i64 32864, !5, i64 32868, !5, i64 32872}
!13 = !{!"tagCWMImageBufferInfo", !10, i64 0, !8, i64 8, !8, i64 16, !5, i64 24, !5, i64 28, !8, i64 32}
!14 = !{!"tagCWMIMBInfo", !4, i64 0, !5, i64 1024, !4, i64 1028, !4, i64 1092, !4, i64 1156, !4, i64 1157}
!15 = !{!"CWMImageStrCodecParameters", !8, i64 0, !8, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !5, i64 88, !5, i64 92, !4, i64 96, !4, i64 112, !4, i64 128}
!16 = !{!"p1 _ZTS20CWMDecoderParameters", !10, i64 0}
!17 = !{!"p1 _ZTS12tagBitIOInfo", !10, i64 0}
!18 = !{!"p1 int", !10, i64 0}
!19 = !{!"p1 long", !10, i64 0}
!20 = !{!"p1 _ZTS8CWMITile", !10, i64 0}
!21 = !{!"any p2 pointer", !10, i64 0}
!22 = !{!"p2 _ZTS12tagBitIOInfo", !21, i64 0}
!23 = !{!"p1 _ZTS14CCodingContext", !10, i64 0}
!24 = !{!"p1 _ZTS15tagCWMIPredInfo", !10, i64 0}
!25 = !{!"p2 _ZTS9WMPStream", !21, i64 0}
!26 = !{!"p2 omnipotent char", !21, i64 0}
!27 = !{!"p1 _ZTS16CWMImageStrCodec", !10, i64 0}
!28 = !{!"CWMImageStrCodec", !8, i64 0, !9, i64 8, !12, i64 128, !13, i64 33008, !14, i64 33048, !15, i64 34208, !16, i64 34352, !4, i64 34360, !5, i64 34364, !5, i64 34368, !17, i64 34376, !5, i64 34384, !18, i64 34392, !18, i64 34400, !19, i64 34408, !8, i64 34416, !8, i64 34424, !5, i64 34432, !5, i64 34436, !5, i64 34440, !5, i64 34444, !20, i64 34448, !22, i64 34456, !8, i64 34464, !8, i64 34472, !23, i64 34480, !8, i64 34488, !8, i64 34496, !4, i64 34504, !8, i64 34512, !8, i64 34520, !8, i64 34528, !8, i64 34536, !8, i64 34544, !8, i64 34552, !8, i64 34560, !8, i64 34568, !8, i64 34576, !5, i64 34584, !5, i64 34588, !5, i64 34592, !5, i64 34596, !4, i64 34600, !4, i64 34616, !10, i64 34632, !10, i64 34640, !10, i64 34648, !10, i64 34656, !10, i64 34664, !10, i64 34672, !10, i64 34680, !10, i64 34688, !10, i64 34696, !10, i64 34704, !10, i64 34712, !10, i64 34720, !10, i64 34728, !4, i64 34736, !4, i64 34864, !4, i64 34992, !4, i64 35120, !4, i64 35248, !18, i64 35376, !18, i64 35384, !4, i64 35392, !4, i64 35520, !24, i64 35648, !25, i64 35656, !26, i64 35664, !27, i64 35672, !5, i64 35680, !4, i64 35688}
!29 = !{!28, !20, i64 34448}
!30 = !{!28, !8, i64 34424}
!31 = !{!"p1 _ZTS16CAdaptiveHuffman", !10, i64 0}
!32 = !{!"CAdaptiveModel", !4, i64 0, !4, i64 8, !5, i64 16}
!33 = !{!"CCBPModel", !4, i64 0, !4, i64 8, !4, i64 16}
!34 = !{!"CCodingContext", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !31, i64 32, !31, i64 40, !4, i64 48, !4, i64 216, !4, i64 344, !4, i64 472, !32, i64 600, !32, i64 620, !32, i64 640, !5, i64 660, !5, i64 664, !33, i64 668, !5, i64 692, !5, i64 696}
!35 = !{!5, !5, i64 0}
!36 = !{!28, !5, i64 34224}
!37 = !{!28, !8, i64 34256}
!38 = !{!"CWMITile", !4, i64 0, !4, i64 128, !4, i64 256, !4, i64 384, !4, i64 385, !4, i64 386, !4, i64 387, !5, i64 388, !5, i64 392, !4, i64 396, !4, i64 397, !4, i64 413}
!39 = !{!14, !4, i64 1156}
!40 = !{!38, !4, i64 387}
!41 = !{!28, !5, i64 156}
!42 = !{!28, !5, i64 172}
!43 = !{!38, !4, i64 386}
!44 = !{!31, !31, i64 0}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"llvm.loop.peeled.count", i32 1}
!47 = !{!"p1 short", !10, i64 0}
!48 = !{!"CAdaptiveHuffman", !5, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !5, i64 32, !47, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64}
!49 = !{!48, !18, i64 8}
!50 = !{!28, !5, i64 34444}
!51 = !{!48, !18, i64 16}
!52 = !{!48, !5, i64 52}
!53 = !{!18, !18, i64 0}
!54 = !{!28, !5, i64 34440}
!55 = !{!"CAdaptiveScan", !5, i64 0, !5, i64 4}
!56 = !{!55, !5, i64 0}
!57 = !{!34, !31, i64 32}
!58 = !{!34, !31, i64 40}
!59 = distinct !{!59, !45, !46}
!60 = !{!34, !17, i64 0}
!61 = !{!28, !5, i64 34296}
!62 = !{!38, !4, i64 384}
!63 = !{!38, !4, i64 385}
!64 = !{!14, !4, i64 1157}
!65 = !{!28, !10, i64 34656}
!66 = distinct !{!66, !45}
!67 = distinct !{!67, !45, !75, !76}
!68 = distinct !{!68, !45, !76, !75}
!69 = distinct !{!69, !45}
!70 = distinct !{!70, !45}
!71 = distinct !{!71, !45}
!72 = distinct !{!72, !45}
!73 = distinct !{!73, !45}
!74 = !{!34, !17, i64 8}
!75 = !{!"llvm.loop.isvectorized", i32 1}
!76 = !{!"llvm.loop.unroll.runtime.disable"}
!77 = !{!34, !5, i64 664}
!78 = !{!34, !5, i64 660}
!79 = !{ptr @putBit16, ptr @putBit32}
!80 = distinct !{!80, !45}
!81 = distinct !{!81, !45}
!82 = distinct !{!82, !45}
!83 = distinct !{!83, !45}
!84 = !{!55, !5, i64 4}
!85 = distinct !{!85, !45, !46}
!86 = !{!48, !18, i64 24}
!87 = !{!48, !5, i64 56}
!88 = distinct !{!88, !45}
!89 = distinct !{!89, !45}
end_hunk_0

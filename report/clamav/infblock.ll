Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/infblock?download=true
inline.NumInlined: 17
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@nsis_inflate:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44424 ; 78 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !19   ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 44416 ; 36 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !20   ; 2 uses
  %i.u = icmp ult ptr %i.r, %i.t
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.r to i64
  %i.x = xor i64 %i.w, -1
  %i.y = add i64 %i.v, %i.x
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 44408
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !21
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.r to i64
  %i.ad = sub i64 %i.ab, %i.ac
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ae = phi i64 [ %i.y, %bb.b ], [ %i.ad, %bb.c ]
  %i.af = trunc i64 %i.ae to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4552 ; 23 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 68 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 84 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 44408 ; 55 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 11640 ; 108 uses
  %i.al = ptrtoint ptr %i.ak to i64               ; 25 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 5864 ; 4 uses
  %i.an = xor i64 %i.al, -1                       ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4568 ; 25 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4572 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 4585 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4576 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 4600 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4564 ; 10 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 5848 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 5856 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 5880 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 2248 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 4584 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 4592 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 3400 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 2232 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 2220 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 42 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 2240
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 2224 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 3416
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 3432
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 3448
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 3464
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 3480
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 3496
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 3512
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 3516
  br label %.thread943

.thread943:                                       ; preds = %.thread943.backedge, %bb.d
  %.sroa.407.0 = phi i32 [ %i.af, %bb.d ], [ %.sroa.407.0.be, %.thread943.backedge ] ; 17 uses
  %.sroa.323276.0 = phi ptr [ %i.r, %bb.d ], [ %.sroa.323276.0.be, %.thread943.backedge ] ; 68 uses
  %.sroa.265.0 = phi i32 [ %i.l, %bb.d ], [ %.sroa.265.0.be, %.thread943.backedge ] ; 38 uses
  %.sroa.219199.0 = phi ptr [ %i.j, %bb.d ], [ %.sroa.219199.0.be, %.thread943.backedge ] ; 37 uses
  %.sroa.130.0 = phi i32 [ %i.p, %bb.d ], [ %.sroa.130.0.be, %.thread943.backedge ] ; 38 uses
  %.sroa.5684.0 = phi i64 [ %i.n, %bb.d ], [ %.sroa.5684.0.be, %.thread943.backedge ] ; 32 uses
  %i.bo = load i32, ptr %i.ag, align 8, !tbaa !22
  switch i32 %i.bo, label %bb.fn [
    i32 8, label %.preheader980
    i32 9, label %.preheader981
    i32 10, label %bb.ah
    i32 11, label %.preheader983
    i32 12, label %.split1302
    i32 13, label %._crit_edge1718
    i32 0, label %._crit_edge1720
    i32 1, label %._crit_edge1723
    i32 2, label %bb.dm
    i32 3, label %._crit_edge1714
    i32 4, label %bb.eb
    i32 5, label %._crit_edge1711
    i32 6, label %bb.eu
    i32 7, label %bb.fc
    i32 15, label %bb.fe
  ]

._crit_edge1723:                                  ; preds = %.thread943
  %.pre1724 = load i32, ptr %i.ar, align 8, !tbaa !23
  br label %bb.cz

._crit_edge1720:                                  ; preds = %.thread943
  %.pre1721 = load i8, ptr %i.ay, align 8, !tbaa !24
  %.pre1722 = load ptr, ptr %i.az, align 8, !tbaa !26
  br label %bb.cy

._crit_edge1718:                                  ; preds = %.thread943
  %.promoted.pre = load i32, ptr %i.at, align 4, !tbaa !23
  br label %bb.bq

._crit_edge1714:                                  ; preds = %.thread943
  %.pre1715 = load i32, ptr %i.ar, align 8, !tbaa !23
  br label %bb.ds

._crit_edge1711:                                  ; preds = %.thread943
  %.pre1712 = load i32, ptr %i.ap, align 4, !tbaa !23
  br label %bb.eh

.preheader983:                                    ; preds = %.thread943
  %i.bp = icmp ult i32 %.sroa.130.0, 14
  br i1 %i.bp, label %.lr.ph1247.preheader, label %._crit_edge1248

.lr.ph1247.preheader:                             ; preds = %.preheader983
  %i.bq = zext nneg i32 %.sroa.130.0 to i64       ; 4 uses
  %.not798 = icmp eq i32 %.sroa.265.0, 0
  br i1 %.not798, label %bb.ay, label %bb.be

.preheader981:                                    ; preds = %.thread943
  %i.br = icmp ult i32 %.sroa.130.0, 16
  br i1 %i.br, label %.lr.ph1369.preheader, label %._crit_edge1370

.lr.ph1369.preheader:                             ; preds = %.preheader981
  %i.bs = zext nneg i32 %.sroa.130.0 to i64       ; 3 uses
  %.not803 = icmp eq i32 %.sroa.265.0, 0
  br i1 %.not803, label %bb.x, label %bb.ad

.preheader980:                                    ; preds = %.thread943
  %i.bt = icmp ult i32 %.sroa.130.0, 3
  br i1 %i.bt, label %.lr.ph1378, label %bb.j

.lr.ph1378:                                       ; preds = %.preheader980
  %.not806 = icmp eq i32 %.sroa.265.0, 0
  br i1 %.not806, label %.split1385, label %._crit_edge1379

.split1385:                                       ; preds = %.lr.ph1378
  store i64 %.sroa.5684.0, ptr %i.m, align 8, !tbaa !17
  store i32 %.sroa.130.0, ptr %i.o, align 4, !tbaa !18
  store i32 0, ptr %i.k, align 8, !tbaa !16
  store ptr %.sroa.219199.0, ptr %0, align 8, !tbaa !8
  store ptr %.sroa.323276.0, ptr %i.q, align 8, !tbaa !19
  %i.bu = load ptr, ptr %i.s, align 8, !tbaa !20  ; 4 uses
  %.not.peel.i = icmp ugt ptr %i.bu, %.sroa.323276.0
  br i1 %.not.peel.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.split1385
  %i.bv = load ptr, ptr %i.aj, align 8, !tbaa !21
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.split1385
  %i.bw = phi ptr [ %i.bv, %bb.e ], [ %.sroa.323276.0, %.split1385 ]
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = load i32, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %..peel.i = tail call i32 @llvm.umin.i32(i32 %i.cb, i32 %i.ca) ; 2 uses
  %i.cc = sub i32 %i.cb, %..peel.i
  store i32 %i.cc, ptr %i.ah, align 8, !tbaa !27
  %i.cd = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.ce = zext i32 %..peel.i to i64               ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cd, ptr align 1 %i.bu, i64 %i.ce, i1 false)
  %i.cf = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ce ; 3 uses
  store ptr %i.cg, ptr %i.ai, align 8, !tbaa !28
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.ce ; 5 uses
  %i.ci = load ptr, ptr %i.aj, align 8, !tbaa !21
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %bb.g, label %inflate_flush.exit

bb.g:                                             ; preds = %bb.f
  %i.ck = load ptr, ptr %i.q, align 8, !tbaa !19  ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.ch
  br i1 %i.cl, label %.peel.next.i.sink.split, label %.peel.next.i.preheader

.peel.next.i.sink.split:                          ; preds = %bb.g, %bb.i
  %.ph = phi ptr [ %i.cw, %bb.i ], [ %i.cg, %bb.g ]
  %.ph2382 = phi ptr [ %i.cx, %bb.i ], [ %i.ch, %bb.g ]
  store ptr %i.ak, ptr %i.q, align 8, !tbaa !19
  br label %.peel.next.i.preheader

.peel.next.i.preheader:                           ; preds = %bb.g, %.peel.next.i.sink.split
  %.ph2415 = phi ptr [ %.ph, %.peel.next.i.sink.split ], [ %i.cg, %bb.g ]
  %.ph2416 = phi ptr [ %.ph2382, %.peel.next.i.sink.split ], [ %i.ch, %bb.g ]
  %.ph2417 = phi ptr [ %i.ak, %.peel.next.i.sink.split ], [ %i.ck, %bb.g ]
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %.peel.next.i.preheader, %bb.h
  %i.cm = phi ptr [ %i.cw, %bb.h ], [ %.ph2415, %.peel.next.i.preheader ]
  %i.cn = phi ptr [ %i.cx, %bb.h ], [ %.ph2416, %.peel.next.i.preheader ]
  %i.co = phi ptr [ %i.da, %bb.h ], [ %.ph2417, %.peel.next.i.preheader ] ; 2 uses
  %.not.i = icmp ugt ptr %i.ak, %i.co
  %spec.select.i = select i1 %.not.i, ptr %i.cn, ptr %i.co
  %i.cp = ptrtoint ptr %spec.select.i to i64
  %i.cq = sub i64 %i.cp, %i.al
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = load i32, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %..i = tail call i32 @llvm.umin.i32(i32 %i.cs, i32 %i.cr) ; 2 uses
  %i.ct = sub i32 %i.cs, %..i
  store i32 %i.ct, ptr %i.ah, align 8, !tbaa !27
  %i.cu = zext i32 %..i to i64                    ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cm, ptr nonnull align 8 %i.ak, i64 %i.cu, i1 false)
  %i.cv = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cu ; 3 uses
  store ptr %i.cw, ptr %i.ai, align 8, !tbaa !28
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.cu ; 5 uses
  %i.cy = load ptr, ptr %i.aj, align 8, !tbaa !21
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %bb.h, label %inflate_flush.exit

bb.h:                                             ; preds = %.peel.next.i
  %i.da = load ptr, ptr %i.q, align 8, !tbaa !19  ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.cx
  br i1 %i.db, label %bb.i, label %.peel.next.i, !llvm.loop !29

bb.i:                                             ; preds = %bb.h
  br label %.peel.next.i.sink.split, !llvm.loop !29

inflate_flush.exit:                               ; preds = %.peel.next.i, %bb.f
  %.lcssa.i = phi ptr [ %i.ch, %bb.f ], [ %i.cx, %.peel.next.i ]
  store ptr %.lcssa.i, ptr %i.s, align 8, !tbaa !20
  br label %.thread953

._crit_edge1379:                                  ; preds = %.lr.ph1378
  %i.dc = or disjoint i32 %.sroa.130.0, 8
  %i.dd = add i32 %.sroa.265.0, -1
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.219199.0, i64 1
  %i.df = load i8, ptr %.sroa.219199.0, align 1, !tbaa !23
  %i.dg = zext i8 %i.df to i64
  %i.dh = zext nneg i32 %.sroa.130.0 to i64
  %i.di = shl nuw nsw i64 %i.dg, %i.dh
  %i.dj = or i64 %i.di, %.sroa.5684.0
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge1379, %.preheader980
  %.sroa.265.1.lcssa = phi i32 [ %i.dd, %._crit_edge1379 ], [ %.sroa.265.0, %.preheader980 ] ; 4 uses
  %.sroa.219199.1.lcssa = phi ptr [ %i.de, %._crit_edge1379 ], [ %.sroa.219199.0, %.preheader980 ] ; 4 uses
  %.sroa.130.1.lcssa = phi i32 [ %i.dc, %._crit_edge1379 ], [ %.sroa.130.0, %.preheader980 ]
  %.sroa.5684.1.lcssa = phi i64 [ %i.dj, %._crit_edge1379 ], [ %.sroa.5684.0, %.preheader980 ] ; 2 uses
  %i.dk = trunc i64 %.sroa.5684.1.lcssa to i32    ; 2 uses
  %i.dl = lshr i64 %.sroa.5684.1.lcssa, 3         ; 4 uses
  %i.dm = add i32 %.sroa.130.1.lcssa, -3          ; 5 uses
  %i.dn = and i32 %i.dk, 1
  %.not804 = icmp eq i32 %i.dn, 0
  %i.do = select i1 %.not804, i32 8, i32 15
  store i32 %i.do, ptr %i.am, align 8, !tbaa !31
  %i.dp = lshr i32 %i.dk, 1
  %i.dq = and i32 %i.dp, 3
  switch i32 %i.dq, label %default.unreachable1890 [
    i32 0, label %bb.k
    i32 1, label %bb.l
    i32 2, label %bb.w
    i32 3, label %bb.fn
  ]

bb.k:                                             ; preds = %bb.j
  %i.dr = and i32 %i.dm, 7
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = lshr i64 %i.dl, %i.ds
  %i.du = and i32 %i.dm, -8
  store i32 9, ptr %i.ag, align 8, !tbaa !22
  br label %.thread943.backedge

bb.l:                                             ; preds = %bb.j
  %i.dv = load i8, ptr %i.h, align 8, !tbaa !32
  %.not805 = icmp eq i8 %i.dv, 0
  br i1 %.not805, label %bb.m, label %bb.v

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !33
  br label %bb.n

bb.n:                                             ; preds = %bb.t, %bb.m
  %indvars.iv1704 = phi i64 [ 0, %bb.m ], [ %indvars.iv.next1705.1, %bb.t ] ; 9 uses
  %i.dw = icmp samesign ugt i64 %indvars.iv1704, 143
  br i1 %i.dw, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.dx = icmp samesign ult i64 %indvars.iv1704, 256
  br i1 %i.dx, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dy = icmp samesign ult i64 %indvars.iv1704, 280
  %spec.select = select i1 %i.dy, i32 7, i32 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.0717 = phi i32 [ 8, %bb.n ], [ 9, %bb.o ], [ %spec.select, %bb.p ]
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv1704
  store i32 %.0717, ptr %i.dz, align 4, !tbaa !33
  %i.ea = icmp samesign ugt i64 %indvars.iv1704, 143
  br i1 %i.ea, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.eb = icmp samesign ult i64 %indvars.iv1704, 256
  br i1 %i.eb, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ec = icmp samesign ult i64 %indvars.iv1704, 280
  %spec.select.1 = select i1 %i.ec, i32 7, i32 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.0717.1 = phi i32 [ 8, %bb.q ], [ 9, %bb.r ], [ %spec.select.1, %bb.s ]
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv1704
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  store i32 %.0717.1, ptr %i.ee, align 4, !tbaa !33
  %indvars.iv.next1705.1 = add nuw nsw i64 %indvars.iv1704, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next1705.1, 288
  br i1 %exitcond.not.1, label %bb.u, label %bb.n

bb.u:                                             ; preds = %bb.t
  %i.ef = call fastcc i32 @huft_build(ptr noundef nonnull %i.ba, i32 noundef 288, i32 noundef 257, ptr noundef nonnull @cplens, ptr noundef nonnull @cplext, ptr noundef nonnull %i.bb, ptr noundef nonnull %i.bc, ptr noundef nonnull %i.bd, ptr noundef %i.a, ptr noundef nonnull %i.ax) ; 0 uses
  store <4 x i32> splat (i32 5), ptr %i.ba, align 8, !tbaa !33
  store <4 x i32> splat (i32 5), ptr %i.bg, align 8, !tbaa !33
  store <4 x i32> splat (i32 5), ptr %i.bh, align 8, !tbaa !33
  store <4 x i32> splat (i32 5), ptr %i.bi, align 8, !tbaa !33
  store <4 x i32> splat (i32 5), ptr %i.bj, align 8, !tbaa !33
  store <4 x i32> splat (i32 5), ptr %i.bk, align 8, !tbaa !33
  store <4 x i32> splat (i32 5), ptr %i.bl, align 8, !tbaa !33
  store i32 5, ptr %i.bm, align 8, !tbaa !33
  store i32 5, ptr %i.bn, align 4, !tbaa !33
  %i.eg = call fastcc i32 @huft_build(ptr noundef nonnull %i.ba, i32 noundef 30, i32 noundef 0, ptr noundef nonnull @cpdist, ptr noundef nonnull @cpdext, ptr noundef nonnull %i.be, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.bd, ptr noundef %i.a, ptr noundef nonnull %i.ax) ; 0 uses
  %i.eh = load i8, ptr %i.h, align 8, !tbaa !32
  %i.ei = add i8 %i.eh, 1
  store i8 %i.ei, ptr %i.h, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.l
  %i.ej = load i32, ptr %i.bc, align 4, !tbaa !34
  %i.ek = trunc i32 %i.ej to i8
  store i8 %i.ek, ptr %i.ay, align 8, !tbaa !23
  %i.el = load i32, ptr %i.bf, align 8, !tbaa !35
  %i.em = trunc i32 %i.el to i8
  store i8 %i.em, ptr %i.aq, align 1, !tbaa !23
  %i.en = load <2 x ptr>, ptr %i.bb, align 8, !tbaa !36
  store <2 x ptr> %i.en, ptr %i.az, align 8, !tbaa !23
  store i32 0, ptr %i.ag, align 8, !tbaa !22
  br label %.thread943.backedge

bb.w:                                             ; preds = %bb.j
  store i32 11, ptr %i.ag, align 8, !tbaa !22
  br label %.thread943.backedge

bb.x:                                             ; preds = %.lr.ph1369.1, %.lr.ph1369.preheader
  %indvars.iv1701.lcssa = phi i64 [ %i.bs, %.lr.ph1369.preheader ], [ %indvars.iv.next1702, %.lr.ph1369.1 ]
  %.sroa.5684.21368.lcssa = phi i64 [ %.sroa.5684.0, %.lr.ph1369.preheader ], [ %i.gc, %.lr.ph1369.1 ]
  %.sroa.219199.21366.lcssa = phi ptr [ %.sroa.219199.0, %.lr.ph1369.preheader ], [ %i.fy, %.lr.ph1369.1 ]
  %i.eo = trunc nuw nsw i64 %indvars.iv1701.lcssa to i32
  store i64 %.sroa.5684.21368.lcssa, ptr %i.m, align 8, !tbaa !17
  store i32 %i.eo, ptr %i.o, align 4, !tbaa !18
  store i32 0, ptr %i.k, align 8, !tbaa !16
  store ptr %.sroa.219199.21366.lcssa, ptr %0, align 8, !tbaa !8
  store ptr %.sroa.323276.0, ptr %i.q, align 8, !tbaa !19
  %i.ep = load ptr, ptr %i.s, align 8, !tbaa !20  ; 4 uses
  %.not.peel.i811 = icmp ugt ptr %i.ep, %.sroa.323276.0
  br i1 %.not.peel.i811, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.eq = load ptr, ptr %i.aj, align 8, !tbaa !21
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.er = phi ptr [ %i.eq, %bb.y ], [ %.sroa.323276.0, %bb.x ]
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = ptrtoint ptr %i.ep to i64
  %i.eu = sub i64 %i.es, %i.et
  %i.ev = trunc i64 %i.eu to i32
  %i.ew = load i32, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %..peel.i812 = tail call i32 @llvm.umin.i32(i32 %i.ew, i32 %i.ev) ; 2 uses
  %i.ex = sub i32 %i.ew, %..peel.i812
  store i32 %i.ex, ptr %i.ah, align 8, !tbaa !27
  %i.ey = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.ez = zext i32 %..peel.i812 to i64            ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ey, ptr align 1 %i.ep, i64 %i.ez, i1 false)
  %i.fa = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.ez ; 3 uses
  store ptr %i.fb, ptr %i.ai, align 8, !tbaa !28
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.ez ; 5 uses
  %i.fd = load ptr, ptr %i.aj, align 8, !tbaa !21
  %i.fe = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fe, label %bb.aa, label %inflate_flush.exit818

bb.aa:                                            ; preds = %bb.z
  %i.ff = load ptr, ptr %i.q, align 8, !tbaa !19  ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.fc
  br i1 %i.fg, label %.peel.next.i814.sink.split, label %.peel.next.i814.preheader

.peel.next.i814.sink.split:                       ; preds = %bb.aa, %bb.ac
  %.ph2383 = phi ptr [ %i.fr, %bb.ac ], [ %i.fb, %bb.aa ]
  %.ph2384 = phi ptr [ %i.fs, %bb.ac ], [ %i.fc, %bb.aa ]
  store ptr %i.ak, ptr %i.q, align 8, !tbaa !19
  br label %.peel.next.i814.preheader

.peel.next.i814.preheader:                        ; preds = %bb.aa, %.peel.next.i814.sink.split
  %.ph2421 = phi ptr [ %.ph2383, %.peel.next.i814.sink.split ], [ %i.fb, %bb.aa ]
  %.ph2422 = phi ptr [ %.ph2384, %.peel.next.i814.sink.split ], [ %i.fc, %bb.aa ]
  %.ph2423 = phi ptr [ %i.ak, %.peel.next.i814.sink.split ], [ %i.ff, %bb.aa ]
  br label %.peel.next.i814

.peel.next.i814:                                  ; preds = %.peel.next.i814.preheader, %bb.ab
  %i.fh = phi ptr [ %i.fr, %bb.ab ], [ %.ph2421, %.peel.next.i814.preheader ]
  %i.fi = phi ptr [ %i.fs, %bb.ab ], [ %.ph2422, %.peel.next.i814.preheader ]
  %i.fj = phi ptr [ %i.fv, %bb.ab ], [ %.ph2423, %.peel.next.i814.preheader ] ; 2 uses
  %.not.i815 = icmp ugt ptr %i.ak, %i.fj
  %spec.select.i816 = select i1 %.not.i815, ptr %i.fi, ptr %i.fj
  %i.fk = ptrtoint ptr %spec.select.i816 to i64
  %i.fl = sub i64 %i.fk, %i.al
  %i.fm = trunc i64 %i.fl to i32
  %i.fn = load i32, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %..i817 = tail call i32 @llvm.umin.i32(i32 %i.fn, i32 %i.fm) ; 2 uses
  %i.fo = sub i32 %i.fn, %..i817
  store i32 %i.fo, ptr %i.ah, align 8, !tbaa !27
  %i.fp = zext i32 %..i817 to i64                 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fh, ptr nonnull align 8 %i.ak, i64 %i.fp, i1 false)
  %i.fq = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fp ; 3 uses
  store ptr %i.fr, ptr %i.ai, align 8, !tbaa !28
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.fp ; 5 uses
  %i.ft = load ptr, ptr %i.aj, align 8, !tbaa !21
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %bb.ab, label %inflate_flush.exit818

bb.ab:                                            ; preds = %.peel.next.i814
  %i.fv = load ptr, ptr %i.q, align 8, !tbaa !19  ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.fs
  br i1 %i.fw, label %bb.ac, label %.peel.next.i814, !llvm.loop !29

bb.ac:                                            ; preds = %bb.ab
  br label %.peel.next.i814.sink.split, !llvm.loop !29

inflate_flush.exit818:                            ; preds = %.peel.next.i814, %bb.z
  %.lcssa.i813 = phi ptr [ %i.fc, %bb.z ], [ %i.fs, %.peel.next.i814 ]
  store ptr %.lcssa.i813, ptr %i.s, align 8, !tbaa !20
  br label %.thread953

bb.ad:                                            ; preds = %.lr.ph1369.preheader
  %i.fx = add i32 %.sroa.265.0, -1                ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.219199.0, i64 1 ; 3 uses
  %i.fz = load i8, ptr %.sroa.219199.0, align 1, !tbaa !23
  %i.ga = zext i8 %i.fz to i64
  %i.gb = shl nuw nsw i64 %i.ga, %i.bs
  %i.gc = or i64 %i.gb, %.sroa.5684.0             ; 3 uses
  %indvars.iv.next1702 = add nuw nsw i64 %i.bs, 8 ; 2 uses
  %i.gd = icmp ult i32 %.sroa.130.0, 8
  br i1 %i.gd, label %.lr.ph1369.1, label %._crit_edge1370

.lr.ph1369.1:                                     ; preds = %bb.ad
  %.not803.1 = icmp eq i32 %i.fx, 0
  br i1 %.not803.1, label %bb.x, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph1369.1
  %i.ge = add i32 %.sroa.265.0, -2
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.219199.0, i64 2
  %i.gg = load i8, ptr %i.fy, align 1, !tbaa !23
  %i.gh = zext i8 %i.gg to i64
  %i.gi = shl nuw nsw i64 %i.gh, %indvars.iv.next1702
  %i.gj = or i64 %i.gi, %i.gc
  br label %._crit_edge1370

._crit_edge1370:                                  ; preds = %bb.ad, %bb.ae, %.preheader981
  %.sroa.265.2.lcssa = phi i32 [ %.sroa.265.0, %.preheader981 ], [ %i.fx, %bb.ad ], [ %i.ge, %bb.ae ]
  %.sroa.219199.2.lcssa = phi ptr [ %.sroa.219199.0, %.preheader981 ], [ %i.fy, %bb.ad ], [ %i.gf, %bb.ae ]
  %.sroa.5684.2.lcssa = phi i64 [ %.sroa.5684.0, %.preheader981 ], [ %i.gc, %bb.ad ], [ %i.gj, %bb.ae ]
  %i.gk = trunc i64 %.sroa.5684.2.lcssa to i32
  %i.gl = and i32 %i.gk, 65535                    ; 2 uses
  store i32 %i.gl, ptr %i.i, align 8, !tbaa !23
  %.not802 = icmp eq i32 %i.gl, 0
  br i1 %.not802, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %._crit_edge1370
  %i.gm = load i32, ptr %i.am, align 8, !tbaa !31
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge1370, %bb.af
  %i.gn = phi i32 [ %i.gm, %bb.af ], [ 10, %._crit_edge1370 ]
  store i32 %i.gn, ptr %i.ag, align 8, !tbaa !22
  br label %.thread943.backedge

bb.ah:                                            ; preds = %.thread943
  %i.go = icmp eq i32 %.sroa.265.0, 0
  br i1 %i.go, label %bb.ai, label %bb.ao

bb.ai:                                            ; preds = %bb.ah
  store i64 %.sroa.5684.0, ptr %i.m, align 8, !tbaa !17
  store i32 %.sroa.130.0, ptr %i.o, align 4, !tbaa !18
  store i32 0, ptr %i.k, align 8, !tbaa !16
  store ptr %.sroa.219199.0, ptr %0, align 8, !tbaa !8
  store ptr %.sroa.323276.0, ptr %i.q, align 8, !tbaa !19
  %i.gp = load ptr, ptr %i.s, align 8, !tbaa !20  ; 4 uses
  %.not.peel.i819 = icmp ugt ptr %i.gp, %.sroa.323276.0
  br i1 %.not.peel.i819, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.gq = load ptr, ptr %i.aj, align 8, !tbaa !21
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.gr = phi ptr [ %i.gq, %bb.aj ], [ %.sroa.323276.0, %bb.ai ]
  %i.gs = ptrtoint ptr %i.gr to i64
  %i.gt = ptrtoint ptr %i.gp to i64
  %i.gu = sub i64 %i.gs, %i.gt
  %i.gv = trunc i64 %i.gu to i32
  %i.gw = load i32, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %..peel.i820 = tail call i32 @llvm.umin.i32(i32 %i.gw, i32 %i.gv) ; 2 uses
  %i.gx = sub i32 %i.gw, %..peel.i820
  store i32 %i.gx, ptr %i.ah, align 8, !tbaa !27
  %i.gy = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.gz = zext i32 %..peel.i820 to i64            ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gy, ptr align 1 %i.gp, i64 %i.gz, i1 false)
  %i.ha = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.gz ; 3 uses
  store ptr %i.hb, ptr %i.ai, align 8, !tbaa !28
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gz ; 5 uses
  %i.hd = load ptr, ptr %i.aj, align 8, !tbaa !21
  %i.he = icmp eq ptr %i.hc, %i.hd
  br i1 %i.he, label %bb.al, label %inflate_flush.exit826

bb.al:                                            ; preds = %bb.ak
  %i.hf = load ptr, ptr %i.q, align 8, !tbaa !19  ; 2 uses
  %i.hg = icmp eq ptr %i.hf, %i.hc
  br i1 %i.hg, label %.peel.next.i822.sink.split, label %.peel.next.i822.preheader

.peel.next.i822.sink.split:                       ; preds = %bb.al, %bb.an
  %.ph2385 = phi ptr [ %i.hr, %bb.an ], [ %i.hb, %bb.al ]
  %.ph2386 = phi ptr [ %i.hs, %bb.an ], [ %i.hc, %bb.al ]
  store ptr %i.ak, ptr %i.q, align 8, !tbaa !19
  br label %.peel.next.i822.preheader

.peel.next.i822.preheader:                        ; preds = %bb.al, %.peel.next.i822.sink.split
  %.ph2428 = phi ptr [ %.ph2385, %.peel.next.i822.sink.split ], [ %i.hb, %bb.al ]
  %.ph2429 = phi ptr [ %.ph2386, %.peel.next.i822.sink.split ], [ %i.hc, %bb.al ]
  %.ph2430 = phi ptr [ %i.ak, %.peel.next.i822.sink.split ], [ %i.hf, %bb.al ]
  br label %.peel.next.i822

.peel.next.i822:                                  ; preds = %.peel.next.i822.preheader, %bb.am
  %i.hh = phi ptr [ %i.hr, %bb.am ], [ %.ph2428, %.peel.next.i822.preheader ]
  %i.hi = phi ptr [ %i.hs, %bb.am ], [ %.ph2429, %.peel.next.i822.preheader ]
  %i.hj = phi ptr [ %i.hv, %bb.am ], [ %.ph2430, %.peel.next.i822.preheader ] ; 2 uses
  %.not.i823 = icmp ugt ptr %i.ak, %i.hj
  %spec.select.i824 = select i1 %.not.i823, ptr %i.hi, ptr %i.hj
  %i.hk = ptrtoint ptr %spec.select.i824 to i64
  %i.hl = sub i64 %i.hk, %i.al
  %i.hm = trunc i64 %i.hl to i32
  %i.hn = load i32, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %..i825 = tail call i32 @llvm.umin.i32(i32 %i.hn, i32 %i.hm) ; 2 uses
  %i.ho = sub i32 %i.hn, %..i825
  store i32 %i.ho, ptr %i.ah, align 8, !tbaa !27
  %i.hp = zext i32 %..i825 to i64                 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hh, ptr nonnull align 8 %i.ak, i64 %i.hp, i1 false)
  %i.hq = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.hp ; 3 uses
  store ptr %i.hr, ptr %i.ai, align 8, !tbaa !28
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.hp ; 5 uses
  %i.ht = load ptr, ptr %i.aj, align 8, !tbaa !21
  %i.hu = icmp eq ptr %i.hs, %i.ht
  br i1 %i.hu, label %bb.am, label %inflate_flush.exit826

bb.am:                                            ; preds = %.peel.next.i822
  %i.hv = load ptr, ptr %i.q, align 8, !tbaa !19  ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.hs
  br i1 %i.hw, label %bb.an, label %.peel.next.i822, !llvm.loop !29

bb.an:                                            ; preds = %bb.am
  br label %.peel.next.i822.sink.split, !llvm.loop !29

inflate_flush.exit826:                            ; preds = %.peel.next.i822, %bb.ak
  %.lcssa.i821 = phi ptr [ %i.hc, %bb.ak ], [ %i.hs, %.peel.next.i822 ]
  store ptr %.lcssa.i821, ptr %i.s, align 8, !tbaa !20
  br label %.thread953

bb.ao:                                            ; preds = %bb.ah
  %i.hx = icmp eq i32 %.sroa.407.0, 0
  br i1 %i.hx, label %bb.ap, label %bb.aw

bb.ap:                                            ; preds = %bb.ao
  %i.hy = load ptr, ptr %i.aj, align 8, !tbaa !21
  %i.hz = icmp eq ptr %.sroa.323276.0, %i.hy
  br i1 %i.hz, label %bb.aq, label %.thread

bb.aq:                                            ; preds = %bb.ap
  %i.ia = load ptr, ptr %i.s, align 8, !tbaa !20  ; 3 uses
  %.not799 = icmp eq ptr %i.ia, %i.ak
  br i1 %.not799, label %.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ib = icmp ult ptr %i.ak, %i.ia
  %i.ic = ptrtoint ptr %i.ia to i64
  %i.id = add i64 %i.ic, %i.an
  %i.ie = ptrtoint ptr %.sroa.323276.0 to i64
  %i.if = sub i64 %i.ie, %i.al
  %i.ig = select i1 %i.ib, i64 %i.id, i64 %i.if
  %i.ih = trunc i64 %i.ig to i32                  ; 2 uses
  %i.ii = icmp eq i32 %i.ih, 0
  br i1 %i.ii, label %.thread, label %bb.aw

.thread:                                          ; preds = %bb.ap, %bb.aq, %bb.ar
  %.sroa.323276.1941 = phi ptr [ %i.ak, %bb.ar ], [ %.sroa.323276.0, %bb.aq ], [ %.sroa.323276.0, %bb.ap ]
  store ptr %.sroa.323276.1941, ptr %i.q, align 8, !tbaa !19
  tail call fastcc void @inflate_flush(ptr noundef nonnull %0)
  %i.ij = load ptr, ptr %i.q, align 8, !tbaa !19  ; 5 uses
  %i.ik = load ptr, ptr %i.s, align 8, !tbaa !20  ; 5 uses
  %i.il = icmp ult ptr %i.ij, %i.ik
  br i1 %i.il, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.thread
  %i.im = ptrtoint ptr %i.ik to i64               ; 2 uses
  %i.in = ptrtoint ptr %i.ij to i64
  %i.io = xor i64 %i.in, -1
  %i.ip = add i64 %i.im, %i.io
  %.pre1725 = load ptr, ptr %i.aj, align 8, !tbaa !21 ; 2 uses
  %.pre1727 = ptrtoint ptr %.pre1725 to i64
  br label %bb.au

bb.at:                                            ; preds = %.thread
  %i.iq = load ptr, ptr %i.aj, align 8, !tbaa !21 ; 2 uses
  %i.ir = ptrtoint ptr %i.iq to i64               ; 2 uses
  %i.is = ptrtoint ptr %i.ij to i64
  %i.it = sub i64 %i.ir, %i.is
  %.pre1726 = ptrtoint ptr %i.ik to i64
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.pre-phi1728 = phi i64 [ %i.ir, %bb.at ], [ %.pre1727, %bb.as ]
  %.pre-phi = phi i64 [ %.pre1726, %bb.at ], [ %i.im, %bb.as ]
  %i.iu = phi ptr [ %i.iq, %bb.at ], [ %.pre1725, %bb.as ]
  %i.iv = phi i64 [ %i.it, %bb.at ], [ %i.ip, %bb.as ]
  %i.iw = icmp ne ptr %i.ij, %i.iu
  %.not800 = icmp eq ptr %i.ik, %i.ak
  %or.cond1505 = select i1 %i.iw, i1 true, i1 %.not800 ; 2 uses
  %i.ix = icmp ult ptr %i.ak, %i.ik
  %i.iy = add i64 %.pre-phi, %i.an
  %i.iz = sub i64 %.pre-phi1728, %i.al
  %i.ja = select i1 %i.ix, i64 %i.iy, i64 %i.iz
  %.sroa.407.2.in = select i1 %or.cond1505, i64 %i.iv, i64 %i.ja
  %.sroa.323276.2 = select i1 %or.cond1505, ptr %i.ij, ptr %i.ak ; 2 uses
  %.sroa.407.2 = trunc i64 %.sroa.407.2.in to i32 ; 2 uses
  %i.jb = icmp eq i32 %.sroa.407.2, 0
  br i1 %i.jb, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i64 %.sroa.5684.0, ptr %i.m, align 8, !tbaa !17
  store i32 %.sroa.130.0, ptr %i.o, align 4, !tbaa !18
  store i32 %.sroa.265.0, ptr %i.k, align 8, !tbaa !16
  store ptr %.sroa.219199.0, ptr %0, align 8, !tbaa !8
  store ptr %.sroa.323276.2, ptr %i.q, align 8, !tbaa !19
  tail call fastcc void @inflate_flush(ptr noundef nonnull %0)
  br label %.thread953

bb.aw:                                            ; preds = %bb.ar, %bb.au, %bb.ao
  %.sroa.407.3 = phi i32 [ %.sroa.407.2, %bb.au ], [ %i.ih, %bb.ar ], [ %.sroa.407.0, %bb.ao ] ; 2 uses
  %.sroa.323276.3 = phi ptr [ %.sroa.323276.2, %bb.au ], [ %i.ak, %bb.ar ], [ %.sroa.323276.0, %bb.ao ] ; 2 uses
  %i.jc = tail call i32 @llvm.umin.i32(i32 %.sroa.407.3, i32 %.sroa.265.0)
  %i.jd = load i32, ptr %i.i, align 8, !tbaa !23
  %. = tail call i32 @llvm.umin.i32(i32 %i.jd, i32 %i.jc) ; 5 uses
  %i.je = zext i32 %. to i64                      ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.323276.3, ptr align 1 %.sroa.219199.0, i64 %i.je, i1 false)
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.219199.0, i64 %i.je ; 2 uses
  %i.jg = sub i32 %.sroa.265.0, %.                ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.323276.3, i64 %i.je ; 2 uses
  %i.ji = sub i32 %.sroa.407.3, %.                ; 2 uses
  %i.jj = load i32, ptr %i.i, align 8, !tbaa !23  ; 2 uses
  %i.jk = sub i32 %i.jj, %.
  store i32 %i.jk, ptr %i.i, align 8, !tbaa !23
  %.not801 = icmp eq i32 %i.jj, %.
  br i1 %.not801, label %bb.ax, label %.thread943.backedge

.thread943.backedge:                              ; preds = %bb.aw, %bb.ax, %bb.bo, %bb.fl, %bb.k, %bb.v, %bb.w, %bb.fb, %._crit_edge1218, %bb.ea, %bb.dy, %bb.dl, %bb.dj, %bb.dh, %bb.df, %bb.ag
  %.sroa.407.0.be = phi i32 [ %i.are, %bb.fl ], [ %.sroa.407.0, %bb.k ], [ %.sroa.407.0, %bb.v ], [ %.sroa.407.0, %bb.w ], [ %.sroa.407.0, %bb.ag ], [ %i.apm, %bb.fb ], [ %.sroa.407.0, %bb.df ], [ %.sroa.407.0, %bb.dh ], [ %.sroa.407.0, %bb.dj ], [ %.sroa.407.0, %bb.dl ], [ %.sroa.407.0, %bb.bo ], [ %.sroa.407.0, %bb.dy ], [ %.sroa.407.0, %bb.ea ], [ %.sroa.407.5.lcssa, %._crit_edge1218 ], [ %i.ji, %bb.ax ], [ %i.ji, %bb.aw ]
  %.sroa.323276.0.be = phi ptr [ %i.ara, %bb.fl ], [ %.sroa.323276.0, %bb.k ], [ %.sroa.323276.0, %bb.v ], [ %.sroa.323276.0, %bb.w ], [ %.sroa.323276.0, %bb.ag ], [ %i.apl, %bb.fb ], [ %.sroa.323276.0, %bb.df ], [ %.sroa.323276.0, %bb.dh ], [ %.sroa.323276.0, %bb.dj ], [ %.sroa.323276.0, %bb.dl ], [ %.sroa.323276.0, %bb.bo ], [ %.sroa.323276.0, %bb.dy ], [ %.sroa.323276.0, %bb.ea ], [ %.sroa.323276.5.lcssa, %._crit_edge1218 ], [ %i.jh, %bb.ax ], [ %i.jh, %bb.aw ]
  %.sroa.265.0.be = phi i32 [ %.sroa.265.22, %bb.fl ], [ %.sroa.265.1.lcssa, %bb.k ], [ %.sroa.265.1.lcssa, %bb.v ], [ %.sroa.265.1.lcssa, %bb.w ], [ %.sroa.265.2.lcssa, %bb.ag ], [ %.sroa.265.0, %bb.fb ], [ %.sroa.265.16.lcssa, %bb.df ], [ %.sroa.265.16.lcssa, %bb.dh ], [ %.sroa.265.16.lcssa, %bb.dj ], [ %.sroa.265.16.lcssa, %bb.dl ], [ %.sroa.265.6.lcssa, %bb.bo ], [ %.sroa.265.19.lcssa, %bb.dy ], [ %.sroa.265.19.lcssa, %bb.ea ], [ %.sroa.265.21, %._crit_edge1218 ], [ %i.jg, %bb.ax ], [ %i.jg, %bb.aw ]
  %.sroa.219199.0.be = phi ptr [ %.sroa.219199.22, %bb.fl ], [ %.sroa.219199.1.lcssa, %bb.k ], [ %.sroa.219199.1.lcssa, %bb.v ], [ %.sroa.219199.1.lcssa, %bb.w ], [ %.sroa.219199.2.lcssa, %bb.ag ], [ %.sroa.219199.0, %bb.fb ], [ %.sroa.219199.16.lcssa, %bb.df ], [ %.sroa.219199.16.lcssa, %bb.dh ], [ %.sroa.219199.16.lcssa, %bb.dj ], [ %.sroa.219199.16.lcssa, %bb.dl ], [ %.sroa.219199.6.lcssa, %bb.bo ], [ %.sroa.219199.19.lcssa, %bb.dy ], [ %.sroa.219199.19.lcssa, %bb.ea ], [ %.sroa.219199.21, %._crit_edge1218 ], [ %i.jf, %bb.ax ], [ %i.jf, %bb.aw ]
  %.sroa.130.0.be = phi i32 [ %.sroa.130.21, %bb.fl ], [ %i.du, %bb.k ], [ %i.dm, %bb.v ], [ %i.dm, %bb.w ], [ 0, %bb.ag ], [ %.sroa.130.0, %bb.fb ], [ %i.aay, %bb.df ], [ %i.aay, %bb.dh ], [ %i.aay, %bb.dj ], [ %i.aay, %bb.dl ], [ %.sroa.130.5.lcssa, %bb.bo ], [ %i.agi, %bb.dy ], [ %i.agi, %bb.ea ], [ %.sroa.130.20, %._crit_edge1218 ], [ %.sroa.130.0, %bb.ax ], [ %.sroa.130.0, %bb.aw ]
  %.sroa.5684.0.be = phi i64 [ %.sroa.5684.0, %bb.fl ], [ %i.dt, %bb.k ], [ %i.dl, %bb.v ], [ %i.dl, %bb.w ], [ 0, %bb.ag ], [ %.sroa.5684.0, %bb.fb ], [ %i.aax, %bb.df ], [ %i.aax, %bb.dh ], [ %i.aax, %bb.dj ], [ %i.aax, %bb.dl ], [ %.sroa.5684.5.lcssa, %bb.bo ], [ %i.agh, %bb.dy ], [ %i.agh, %bb.ea ], [ %.sroa.5684.20, %._crit_edge1218 ], [ %.sroa.5684.0, %bb.ax ], [ %.sroa.5684.0, %bb.aw ]
  br label %.thread943

bb.ax:                                            ; preds = %bb.aw
  %i.jl = load i32, ptr %i.am, align 8, !tbaa !31
  store i32 %i.jl, ptr %i.ag, align 8, !tbaa !22
  br label %.thread943.backedge

bb.ay:                                            ; preds = %.lr.ph1247.1, %.lr.ph1247.preheader
  %indvars.iv.lcssa = phi i64 [ %i.bq, %.lr.ph1247.preheader ], [ %indvars.iv.next, %.lr.ph1247.1 ]
  %.sroa.5684.31246.lcssa = phi i64 [ %.sroa.5684.0, %.lr.ph1247.preheader ], [ %i.la, %.lr.ph1247.1 ]
  %.sroa.219199.41244.lcssa = phi ptr [ %.sroa.219199.0, %.lr.ph1247.preheader ], [ %i.kw, %.lr.ph1247.1 ]
  %i.jm = trunc nuw nsw i64 %indvars.iv.lcssa to i32
  store i64 %.sroa.5684.31246.lcssa, ptr %i.m, align 8, !tbaa !17
  store i32 %i.jm, ptr %i.o, align 4, !tbaa !18
  store i32 0, ptr %i.k, align 8, !tbaa !16
  store ptr %.sroa.219199.41244.lcssa, ptr %0, align 8, !tbaa !8
  store ptr %.sroa.323276.0, ptr %i.q, align 8, !tbaa !19
  %i.jn = load ptr, ptr %i.s, align 8, !tbaa !20  ; 4 uses
  %.not.peel.i827 = icmp ugt ptr %i.jn, %.sroa.323276.0
  br i1 %.not.peel.i827, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.jo = load ptr, ptr %i.aj, align 8, !tbaa !21
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.jp = phi ptr [ %i.jo, %bb.az ], [ %.sroa.323276.0, %bb.ay ]
  %i.jq = ptrtoint ptr %i.jp to i64
  %i.jr = ptrtoint ptr %i.jn to i64
  %i.js = sub i64 %i.jq, %i.jr
  %i.jt = trunc i64 %i.js to i32
  %i.ju = load i32, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %..peel.i828 = tail call i32 @llvm.umin.i32(i32 %i.ju, i32 %i.jt) ; 2 uses
  %i.jv = sub i32 %i.ju, %..peel.i828
  store i32 %i.jv, ptr %i.ah, align 8, !tbaa !27
  %i.jw = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.jx = zext i32 %..peel.i828 to i64            ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jw, ptr align 1 %i.jn, i64 %i.jx, i1 false)
  %i.jy = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.jx ; 3 uses
  store ptr %i.jz, ptr %i.ai, align 8, !tbaa !28
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.jx ; 5 uses
  %i.kb = load ptr, ptr %i.aj, align 8, !tbaa !21
  %i.kc = icmp eq ptr %i.ka, %i.kb
  br i1 %i.kc, label %bb.bb, label %inflate_flush.exit834

bb.bb:                                            ; preds = %bb.ba
  %i.kd = load ptr, ptr %i.q, align 8, !tbaa !19  ; 2 uses
  %i.ke = icmp eq ptr %i.kd, %i.ka
  br i1 %i.ke, label %.peel.next.i830.sink.split, label %.peel.next.i830.preheader

.peel.next.i830.sink.split:                       ; preds = %bb.bb, %bb.bd
  %.ph2387 = phi ptr [ %i.kp, %bb.bd ], [ %i.jz, %bb.bb ]
  %.ph2388 = phi ptr [ %i.kq, %bb.bd ], [ %i.ka, %bb.bb ]
  store ptr %i.ak, ptr %i.q, align 8, !tbaa !19
  br label %.peel.next.i830.preheader

.peel.next.i830.preheader:                        ; preds = %bb.bb, %.peel.next.i830.sink.split
  %.ph2435 = phi ptr [ %.ph2387, %.peel.next.i830.sink.split ], [ %i.jz, %bb.bb ]
  %.ph2436 = phi ptr [ %.ph2388, %.peel.next.i830.sink.split ], [ %i.ka, %bb.bb ]
  %.ph2437 = phi ptr [ %i.ak, %.peel.next.i830.sink.split ], [ %i.kd, %bb.bb ]
  br label %.peel.next.i830

.peel.next.i830:                                  ; preds = %.peel.next.i830.preheader, %bb.bc
  %i.kf = phi ptr [ %i.kp, %bb.bc ], [ %.ph2435, %.peel.next.i830.preheader ]
  %i.kg = phi ptr [ %i.kq, %bb.bc ], [ %.ph2436, %.peel.next.i830.preheader ]
  %i.kh = phi ptr [ %i.kt, %bb.bc ], [ %.ph2437, %.peel.next.i830.preheader ] ; 2 uses
  %.not.i831 = icmp ugt ptr %i.ak, %i.kh
  %spec.select.i832 = select i1 %.not.i831, ptr %i.kg, ptr %i.kh
  %i.ki = ptrtoint ptr %spec.select.i832 to i64
  %i.kj = sub i64 %i.ki, %i.al
  %i.kk = trunc i64 %i.kj to i32
  %i.kl = load i32, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %..i833 = tail call i32 @llvm.umin.i32(i32 %i.kl, i32 %i.kk) ; 2 uses
  %i.km = sub i32 %i.kl, %..i833
  store i32 %i.km, ptr %i.ah, align 8, !tbaa !27
  %i.kn = zext i32 %..i833 to i64                 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kf, ptr nonnull align 8 %i.ak, i64 %i.kn, i1 false)
  %i.ko = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.kn ; 3 uses
  store ptr %i.kp, ptr %i.ai, align 8, !tbaa !28
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.kn ; 5 uses
  %i.kr = load ptr, ptr %i.aj, align 8, !tbaa !21
  %i.ks = icmp eq ptr %i.kq, %i.kr
  br i1 %i.ks, label %bb.bc, label %inflate_flush.exit834

bb.bc:                                            ; preds = %.peel.next.i830
  %i.kt = load ptr, ptr %i.q, align 8, !tbaa !19  ; 2 uses
  %i.ku = icmp eq ptr %i.kt, %i.kq
  br i1 %i.ku, label %bb.bd, label %.peel.next.i830, !llvm.loop !29

bb.bd:                                            ; preds = %bb.bc
  br label %.peel.next.i830.sink.split, !llvm.loop !29

inflate_flush.exit834:                            ; preds = %.peel.next.i830, %bb.ba
  %.lcssa.i829 = phi ptr [ %i.ka, %bb.ba ], [ %i.kq, %.peel.next.i830 ]
  store ptr %.lcssa.i829, ptr %i.s, align 8, !tbaa !20
  br label %.thread953

bb.be:                                            ; preds = %.lr.ph1247.preheader
  %i.kv = add i32 %.sroa.265.0, -1                ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.219199.0, i64 1 ; 3 uses
  %i.kx = load i8, ptr %.sroa.219199.0, align 1, !tbaa !23
  %i.ky = zext i8 %i.kx to i64
  %i.kz = shl nuw nsw i64 %i.ky, %i.bq
  %i.la = or i64 %i.kz, %.sroa.5684.0             ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %i.bq, 8     ; 3 uses
  %i.lb = icmp ult i32 %.sroa.130.0, 6
  br i1 %i.lb, label %.lr.ph1247.1, label %._crit_edge1248.loopexit

.lr.ph1247.1:                                     ; preds = %bb.be
  %.not798.1 = icmp eq i32 %i.kv, 0
  br i1 %.not798.1, label %bb.ay, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph1247.1
  %i.lc = add i32 %.sroa.265.0, -2
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.219199.0, i64 2
  %i.le = load i8, ptr %i.kw, align 1, !tbaa !23
  %i.lf = zext i8 %i.le to i64
  %i.lg = shl nuw nsw i64 %i.lf, %indvars.iv.next
  %i.lh = or i64 %i.lg, %i.la
  %indvars.iv.next.1 = or disjoint i64 %i.bq, 16
  br label %._crit_edge1248.loopexit

._crit_edge1248.loopexit:                         ; preds = %bb.bf, %bb.be
  %.lcssa2578 = phi i32 [ %i.kv, %bb.be ], [ %i.lc, %bb.bf ]
  %.lcssa2577 = phi ptr [ %i.kw, %bb.be ], [ %i.ld, %bb.bf ]
  %.lcssa2576 = phi i64 [ %i.la, %bb.be ], [ %i.lh, %bb.bf ]
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next, %bb.be ], [ %indvars.iv.next.1, %bb.bf ]
  %i.li = trunc nuw nsw i64 %indvars.iv.next.lcssa to i32
  br label %._crit_edge1248

._crit_edge1248:                                  ; preds = %._crit_edge1248.loopexit, %.preheader983
  %.sroa.265.4.lcssa = phi i32 [ %.sroa.265.0, %.preheader983 ], [ %.lcssa2578, %._crit_edge1248.loopexit ] ; 2 uses
  %.sroa.219199.4.lcssa = phi ptr [ %.sroa.219199.0, %.preheader983 ], [ %.lcssa2577, %._crit_edge1248.loopexit ] ; 2 uses
  %.sroa.130.3.lcssa = phi i32 [ %.sroa.130.0, %.preheader983 ], [ %i.li, %._crit_edge1248.loopexit ] ; 2 uses
  %.sroa.5684.3.lcssa = phi i64 [ %.sroa.5684.0, %.preheader983 ], [ %.lcssa2576, %._crit_edge1248.loopexit ] ; 3 uses
  %i.lj = trunc i64 %.sroa.5684.3.lcssa to i32    ; 3 uses
  %i.lk = and i32 %i.lj, 16383
  store i32 %i.lk, ptr %i.i, align 8, !tbaa !23
  %i.ll = and i32 %i.lj, 30
  %i.lm = icmp eq i32 %i.ll, 30
  %i.ln = and i32 %i.lj, 960
  %i.lo = icmp eq i32 %i.ln, 960
  %or.cond808 = or i1 %i.lm, %i.lo
  br i1 %or.cond808, label %bb.bg, label %.split1302.thread

bb.bg:                                            ; preds = %._crit_edge1248
  store i32 17, ptr %i.ag, align 8, !tbaa !22
  store i64 %.sroa.5684.3.lcssa, ptr %i.m, align 8, !tbaa !17
  store i32 %.sroa.130.3.lcssa, ptr %i.o, align 4, !tbaa !18
  store i32 %.sroa.265.4.lcssa, ptr %i.k, align 8, !tbaa !16
  store ptr %.sroa.219199.4.lcssa, ptr %0, align 8, !tbaa !8
  store ptr %.sroa.323276.0, ptr %i.q, align 8, !tbaa !19
  tail call fastcc void @inflate_flush(ptr noundef nonnull %0)
  br label %.thread953

.split1302.thread:                                ; preds = %._crit_edge1248
  %i.lp = lshr i64 %.sroa.5684.3.lcssa, 14
  %i.lq = add i32 %.sroa.130.3.lcssa, -14
  store i32 0, ptr %i.at, align 4, !tbaa !23
  store i32 12, ptr %i.ag, align 8, !tbaa !22
  br label %.preheader.preheader

.split1302:                                       ; preds = %.thread943
  %.pre1716 = load i32, ptr %i.at, align 4, !tbaa !23 ; 3 uses
  %.pre1717 = load i32, ptr %i.i, align 8, !tbaa !23
  %i.lr = lshr i32 %.pre1717, 10
  %i.ls = add nuw nsw i32 %i.lr, 4
  %i.lt = icmp ult i32 %.pre1716, %i.ls
  br i1 %i.lt, label %.preheader.preheader, label %.preheader982

.preheader.preheader:                             ; preds = %.split1302.thread, %.split1302
  %.ph2516 = phi i32 [ %.pre1716, %.split1302 ], [ 0, %.split1302.thread ]
  %.sroa.5684.51306.ph = phi i64 [ %.sroa.5684.0, %.split1302 ], [ %i.lp, %.split1302.thread ]
  %.sroa.130.51305.ph = phi i32 [ %.sroa.130.0, %.split1302 ], [ %i.lq, %.split1302.thread ]
  %.sroa.219199.61304.ph = phi ptr [ %.sroa.219199.0, %.split1302 ], [ %.sroa.219199.4.lcssa, %.split1302.thread ]
  %.sroa.265.61303.ph = phi i32 [ %.sroa.265.0, %.split1302 ], [ %.sroa.265.4.lcssa, %.split1302.thread ]
  br label %.preheader

.preheader982:                                    ; preds = %bb.bm, %.split1302
  %.sroa.265.6.lcssa = phi i32 [ %.sroa.265.0, %.split1302 ], [ %.sroa.265.7.lcssa, %bb.bm ] ; 2 uses
  %.sroa.219199.6.lcssa = phi ptr [ %.sroa.219199.0, %.split1302 ], [ %.sroa.219199.7.lcssa, %bb.bm ] ; 2 uses
  %.sroa.130.5.lcssa = phi i32 [ %.sroa.130.0, %.split1302 ], [ %i.nw, %bb.bm ] ; 2 uses
  %.sroa.5684.5.lcssa = phi i64 [ %.sroa.5684.0, %.split1302 ], [ %i.nv, %bb.bm ] ; 2 uses
  %.lcssa1026 = phi i32 [ %.pre1716, %.split1302 ], [ %i.nx, %bb.bm ] ; 2 uses
  %i.lu = icmp ult i32 %.lcssa1026, 19
  br i1 %i.lu, label %.lr.ph1313, label %._crit_edge1314

.preheader:                                       ; preds = %.preheader.preheader, %bb.bm
  %i.lv = phi i32 [ %i.nx, %bb.bm ], [ %.ph2516, %.preheader.preheader ] ; 2 uses
  %.sroa.5684.51306 = phi i64 [ %i.nv, %bb.bm ], [ %.sroa.5684.51306.ph, %.preheader.preheader ] ; 3 uses
  %.sroa.130.51305 = phi i32 [ %i.nw, %bb.bm ], [ %.sroa.130.51305.ph, %.preheader.preheader ] ; 5 uses
  %.sroa.219199.61304 = phi ptr [ %.sroa.219199.7.lcssa, %bb.bm ], [ %.sroa.219199.61304.ph, %.preheader.preheader ] ; 4 uses
  %.sroa.265.61303 = phi i32 [ %.sroa.265.7.lcssa, %bb.bm ], [ %.sroa.265.61303.ph, %.preheader.preheader ] ; 3 uses
  %i.lw = icmp ult i32 %.sroa.130.51305, 3
  br i1 %i.lw, label %.lr.ph1257, label %bb.bm

.lr.ph1257:                                       ; preds = %.preheader
  %.not797 = icmp eq i32 %.sroa.265.61303, 0
  br i1 %.not797, label %.split, label %._crit_edge1258

.split:                                           ; preds = %.lr.ph1257
  store i64 %.sroa.5684.51306, ptr %i.m, align 8, !tbaa !17
  store i32 %.sroa.130.51305, ptr %i.o, align 4, !tbaa !18
  store i32 0, ptr %i.k, align 8, !tbaa !16
  store ptr %.sroa.219199.61304, ptr %0, align 8, !tbaa !8
  store ptr %.sroa.323276.0, ptr %i.q, align 8, !tbaa !19
  %i.lx = load ptr, ptr %i.s, align 8, !tbaa !20  ; 4 uses
  %.not.peel.i835 = icmp ugt ptr %i.lx, %.sroa.323276.0
  br i1 %.not.peel.i835, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %.split
  %i.ly = load ptr, ptr %i.aj, align 8, !tbaa !21
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %.split
  %i.lz = phi ptr [ %i.ly, %bb.bh ], [ %.sroa.323276.0, %.split ]
  %i.ma = ptrtoint ptr %i.lz to i64
  %i.mb = ptrtoint ptr %i.lx to i64
  %i.mc = sub i64 %i.ma, %i.mb
  %i.md = trunc i64 %i.mc to i32
  %i.me = load i32, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %..peel.i836 = tail call i32 @llvm.umin.i32(i32 %i.me, i32 %i.md) ; 2 uses
  %i.mf = sub i32 %i.me, %..peel.i836
  store i32 %i.mf, ptr %i.ah, align 8, !tbaa !27
  %i.mg = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.mh = zext i32 %..peel.i836 to i64            ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mg, ptr align 1 %i.lx, i64 %i.mh, i1 false)
  %i.mi = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 %i.mh ; 3 uses
  store ptr %i.mj, ptr %i.ai, align 8, !tbaa !28
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lx, i64 %i.mh ; 5 uses
  %i.ml = load ptr, ptr %i.aj, align 8, !tbaa !21
  %i.mm = icmp eq ptr %i.mk, %i.ml
  br i1 %i.mm, label %bb.bj, label %inflate_flush.exit842

bb.bj:                                            ; preds = %bb.bi
  %i.mn = load ptr, ptr %i.q, align 8, !tbaa !19  ; 2 uses
  %i.mo = icmp eq ptr %i.mn, %i.mk
  br i1 %i.mo, label %.peel.next.i838.sink.split, label %.peel.next.i838.preheader

.peel.next.i838.sink.split:                       ; preds = %bb.bj, %bb.bl
  %.ph2389 = phi ptr [ %i.mz, %bb.bl ], [ %i.mj, %bb.bj ]
  %.ph2390 = phi ptr [ %i.na, %bb.bl ], [ %i.mk, %bb.bj ]
  store ptr %i.ak, ptr %i.q, align 8, !tbaa !19
  br label %.peel.next.i838.preheader

.peel.next.i838.preheader:                        ; preds = %bb.bj, %.peel.next.i838.sink.split
  %.ph2442 = phi ptr [ %.ph2389, %.peel.next.i838.sink.split ], [ %i.mj, %bb.bj ]
  %.ph2443 = phi ptr [ %.ph2390, %.peel.next.i838.sink.split ], [ %i.mk, %bb.bj ]
  %.ph2444 = phi ptr [ %i.ak, %.peel.next.i838.sink.split ], [ %i.mn, %bb.bj ]
  br label %.peel.next.i838

.peel.next.i838:                                  ; preds = %.peel.next.i838.preheader, %bb.bk
  %i.mp = phi ptr [ %i.mz, %bb.bk ], [ %.ph2442, %.peel.next.i838.preheader ]
  %i.mq = phi ptr [ %i.na, %bb.bk ], [ %.ph2443, %.peel.next.i838.preheader ]
  %i.mr = phi ptr [ %i.nd, %bb.bk ], [ %.ph2444, %.peel.next.i838.preheader ] ; 2 uses
  %.not.i839 = icmp ugt ptr %i.ak, %i.mr
  %spec.select.i840 = select i1 %.not.i839, ptr %i.mq, ptr %i.mr
  %i.ms = ptrtoint ptr %spec.select.i840 to i64
  %i.mt = sub i64 %i.ms, %i.al
  %i.mu = trunc i64 %i.mt to i32
  %i.mv = load i32, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %..i841 = tail call i32 @llvm.umin.i32(i32 %i.mv, i32 %i.mu) ; 2 uses
  %i.mw = sub i32 %i.mv, %..i841
  store i32 %i.mw, ptr %i.ah, align 8, !tbaa !27
  %i.mx = zext i32 %..i841 to i64                 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mp, ptr nonnull align 8 %i.ak, i64 %i.mx, i1 false)
  %i.my = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.mx ; 3 uses
  store ptr %i.mz, ptr %i.ai, align 8, !tbaa !28
  %i.na = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.mx ; 5 uses
  %i.nb = load ptr, ptr %i.aj, align 8, !tbaa !21
  %i.nc = icmp eq ptr %i.na, %i.nb
  br i1 %i.nc, label %bb.bk, label %inflate_flush.exit842

bb.bk:                                            ; preds = %.peel.next.i838
  %i.nd = load ptr, ptr %i.q, align 8, !tbaa !19  ; 2 uses
  %i.ne = icmp eq ptr %i.nd, %i.na
  br i1 %i.ne, label %bb.bl, label %.peel.next.i838, !llvm.loop !29

bb.bl:                                            ; preds = %bb.bk
  br label %.peel.next.i838.sink.split, !llvm.loop !29

inflate_flush.exit842:                            ; preds = %.peel.next.i838, %bb.bi
  %.lcssa.i837 = phi ptr [ %i.mk, %bb.bi ], [ %i.na, %.peel.next.i838 ]
  store ptr %.lcssa.i837, ptr %i.s, align 8, !tbaa !20
  br label %.thread953

._crit_edge1258:                                  ; preds = %.lr.ph1257
  %i.nf = or disjoint i32 %.sroa.130.51305, 8
  %i.ng = add i32 %.sroa.265.61303, -1
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.219199.61304, i64 1
  %i.ni = load i8, ptr %.sroa.219199.61304, align 1, !tbaa !23
  %i.nj = zext i8 %i.ni to i64
  %i.nk = zext nneg i32 %.sroa.130.51305 to i64
  %i.nl = shl nuw nsw i64 %i.nj, %i.nk
  %i.nm = or i64 %i.nl, %.sroa.5684.51306
  br label %bb.bm

bb.bm:                                            ; preds = %._crit_edge1258, %.preheader
  %.sroa.265.7.lcssa = phi i32 [ %i.ng, %._crit_edge1258 ], [ %.sroa.265.61303, %.preheader ] ; 2 uses
  %.sroa.219199.7.lcssa = phi ptr [ %i.nh, %._crit_edge1258 ], [ %.sroa.219199.61304, %.preheader ] ; 2 uses
  %.sroa.130.6.lcssa = phi i32 [ %i.nf, %._crit_edge1258 ], [ %.sroa.130.51305, %.preheader ]
  %.sroa.5684.6.lcssa = phi i64 [ %i.nm, %._crit_edge1258 ], [ %.sroa.5684.51306, %.preheader ] ; 2 uses
  %i.nn = trunc i64 %.sroa.5684.6.lcssa to i32
  %i.no = and i32 %i.nn, 7
  %i.np = add nuw nsw i32 %i.lv, 1
  store i32 %i.np, ptr %i.at, align 4, !tbaa !23
  %i.nq = zext nneg i32 %i.lv to i64
  %i.nr = getelementptr inbounds nuw i8, ptr @border, i64 %i.nq
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !23
  %i.nt = sext i8 %i.ns to i64
  %i.nu = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.nt
  store i32 %i.no, ptr %i.nu, align 4, !tbaa !23
  %i.nv = lshr i64 %.sroa.5684.6.lcssa, 3         ; 2 uses
  %i.nw = add i32 %.sroa.130.6.lcssa, -3          ; 2 uses
  %i.nx = load i32, ptr %i.at, align 4, !tbaa !23 ; 3 uses
  %i.ny = load i32, ptr %i.i, align 8, !tbaa !23
  %i.nz = lshr i32 %i.ny, 10
  %i.oa = add nuw nsw i32 %i.nz, 4
  %i.ob = icmp ult i32 %i.nx, %i.oa
  br i1 %i.ob, label %.preheader, label %.preheader982

.lr.ph1313:                                       ; preds = %.preheader982, %.lr.ph1313
  %i.oc = phi i32 [ %.pr, %.lr.ph1313 ], [ %.lcssa1026, %.preheader982 ] ; 2 uses
  %i.od = add nuw nsw i32 %i.oc, 1
  store i32 %i.od, ptr %i.at, align 4, !tbaa !23
  %i.oe = zext nneg i32 %i.oc to i64
  %i.of = getelementptr inbounds nuw i8, ptr @border, i64 %i.oe
  %i.og = load i8, ptr %i.of, align 1, !tbaa !23
  %i.oh = sext i8 %i.og to i64
  %i.oi = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.oh
  store i32 0, ptr %i.oi, align 4, !tbaa !23
  %.pr = load i32, ptr %i.at, align 4, !tbaa !23  ; 2 uses
  %i.oj = icmp ult i32 %.pr, 19
  br i1 %i.oj, label %.lr.ph1313, label %._crit_edge1314

._crit_edge1314:                                  ; preds = %.lr.ph1313, %.preheader982
  store i32 7, ptr %i.au, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 0, ptr %i.b, align 4, !tbaa !33
  %i.ok = call fastcc i32 @huft_build(ptr noundef nonnull %i.ao, i32 noundef 19, i32 noundef 19, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.av, ptr noundef nonnull %i.au, ptr noundef nonnull %i.aw, ptr noundef %i.b, ptr noundef nonnull %i.ax)
  %.not788 = icmp eq i32 %i.ok, 0
  br i1 %.not788, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %._crit_edge1314
  %i.ol = load i32, ptr %i.au, align 8, !tbaa !23
  %.not789 = icmp eq i32 %i.ol, 0
  br i1 %.not789, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %._crit_edge1314, %bb.bn
  store i32 17, ptr %i.ag, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %.thread943.backedge

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  store i32 0, ptr %i.at, align 4, !tbaa !23
  store i32 13, ptr %i.ag, align 8, !tbaa !22
  br label %bb.bq

bb.bq:                                            ; preds = %._crit_edge1718, %bb.bp
  %.promoted = phi i32 [ 0, %bb.bp ], [ %.promoted.pre, %._crit_edge1718 ] ; 2 uses
  %.sroa.265.8 = phi i32 [ %.sroa.265.6.lcssa, %bb.bp ], [ %.sroa.265.0, %._crit_edge1718 ] ; 2 uses
  %.sroa.219199.8 = phi ptr [ %.sroa.219199.6.lcssa, %bb.bp ], [ %.sroa.219199.0, %._crit_edge1718 ] ; 2 uses
  %.sroa.130.7 = phi i32 [ %.sroa.130.5.lcssa, %bb.bp ], [ %.sroa.130.0, %._crit_edge1718 ] ; 2 uses
  %.sroa.5684.7 = phi i64 [ %.sroa.5684.5.lcssa, %bb.bp ], [ %.sroa.5684.0, %._crit_edge1718 ] ; 2 uses
  %i.om = load i32, ptr %i.i, align 8, !tbaa !23  ; 2 uses
  %i.on = and i32 %i.om, 31                       ; 3 uses
  %i.oo = add nuw nsw i32 %i.on, 258
  %i.op = lshr i32 %i.om, 5
  %i.oq = and i32 %i.op, 31                       ; 2 uses
  %i.or = add nuw nsw i32 %i.oo, %i.oq            ; 3 uses
  %i.os = icmp ult i32 %.promoted, %i.or
  br i1 %i.os, label %.lr.ph1346, label %._crit_edge1347

.lr.ph1346:                                       ; preds = %bb.bq, %bb.cp
  %.sroa.5684.81344 = phi i64 [ %.sroa.5684.12, %bb.cp ], [ %.sroa.5684.7, %bb.bq ] ; 3 uses
  %.sroa.130.81343 = phi i32 [ %.sroa.130.12, %bb.cp ], [ %.sroa.130.7, %bb.bq ] ; 4 uses
  %.sroa.219199.91342 = phi ptr [ %.sroa.219199.13, %bb.cp ], [ %.sroa.219199.8, %bb.bq ] ; 3 uses
  %.sroa.265.91341 = phi i32 [ %.sroa.265.13, %bb.cp ], [ %.sroa.265.8, %bb.bq ] ; 5 uses
  %.lcssa104413381340 = phi i32 [ %.lcssa10441339, %bb.cp ], [ %.promoted, %bb.bq ] ; 9 uses
  %i.ot = load i32, ptr %i.au, align 8, !tbaa !23 ; 3 uses
  %i.ou = icmp ult i32 %.sroa.130.81343, %i.ot
  br i1 %i.ou, label %.lr.ph1320.preheader, label %._crit_edge1321

.lr.ph1320.preheader:                             ; preds = %.lr.ph1346
  %.not7962346 = icmp eq i32 %.sroa.265.91341, 0
  br i1 %.not7962346, label %.lr.ph1320.preheader._crit_edge, label %.lr.ph2351

.lr.ph1320:                                       ; preds = %.lr.ph2351
  %.not796 = icmp eq i32 %i.qg, 0
  br i1 %.not796, label %.lr.ph1320.preheader._crit_edge, label %.lr.ph2351

.lr.ph1320.preheader._crit_edge:                  ; preds = %.lr.ph1320.preheader, %.lr.ph1320
  %.sroa.5684.91318.lcssa = phi i64 [ %i.qm, %.lr.ph1320 ], [ %.sroa.5684.81344, %.lr.ph1320.preheader ]
  %i.ov = shl i32 %.sroa.265.91341, 3
  %i.ow = add i32 %.sroa.130.81343, %i.ov
  %i.ox = zext i32 %.sroa.265.91341 to i64
  %scevgep1695.le = getelementptr i8, ptr %.sroa.219199.91342, i64 %i.ox
  store i64 %.sroa.5684.91318.lcssa, ptr %i.m, align 8, !tbaa !17
  store i32 %i.ow, ptr %i.o, align 4, !tbaa !18
  store i32 0, ptr %i.k, align 8, !tbaa !16
  store ptr %scevgep1695.le, ptr %0, align 8, !tbaa !8
  store ptr %.sroa.323276.0, ptr %i.q, align 8, !tbaa !19
  %i.oy = load ptr, ptr %i.s, align 8, !tbaa !20  ; 4 uses
  %.not.peel.i843 = icmp ugt ptr %i.oy, %.sroa.323276.0
  br i1 %.not.peel.i843, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %.lr.ph1320.preheader._crit_edge
  %i.oz = load ptr, ptr %i.aj, align 8, !tbaa !21
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %.lr.ph1320.preheader._crit_edge
  %i.pa = phi ptr [ %i.oz, %bb.br ], [ %.sroa.323276.0, %.lr.ph1320.preheader._crit_edge ]
  %i.pb = ptrtoint ptr %i.pa to i64
  %i.pc = ptrtoint ptr %i.oy to i64
  %i.pd = sub i64 %i.pb, %i.pc
  %i.pe = trunc i64 %i.pd to i32
  %i.pf = load i32, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %..peel.i844 = tail call i32 @llvm.umin.i32(i32 %i.pf, i32 %i.pe) ; 2 uses
  %i.pg = sub i32 %i.pf, %..peel.i844
  store i32 %i.pg, ptr %i.ah, align 8, !tbaa !27
  %i.ph = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.pi = zext i32 %..peel.i844 to i64            ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ph, ptr align 1 %i.oy, i64 %i.pi, i1 false)
  %i.pj = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 %i.pi ; 3 uses
  store ptr %i.pk, ptr %i.ai, align 8, !tbaa !28
  %i.pl = getelementptr inbounds nuw i8, ptr %i.oy, i64 %i.pi ; 5 uses
  %i.pm = load ptr, ptr %i.aj, align 8, !tbaa !21
  %i.pn = icmp eq ptr %i.pl, %i.pm
  br i1 %i.pn, label %bb.bt, label %inflate_flush.exit850

bb.bt:                                            ; preds = %bb.bs
  %i.po = load ptr, ptr %i.q, align 8, !tbaa !19  ; 2 uses
  %i.pp = icmp eq ptr %i.po, %i.pl
  br i1 %i.pp, label %.peel.next.i846.sink.split, label %.peel.next.i846.preheader

.peel.next.i846.sink.split:                       ; preds = %bb.bt, %bb.bv
  %.ph2391 = phi ptr [ %i.qa, %bb.bv ], [ %i.pk, %bb.bt ]
  %.ph2392 = phi ptr [ %i.qb, %bb.bv ], [ %i.pl, %bb.bt ]
  store ptr %i.ak, ptr %i.q, align 8, !tbaa !19
  br label %.peel.next.i846.preheader

.peel.next.i846.preheader:                        ; preds = %bb.bt, %.peel.next.i846.sink.split
  %.ph2449 = phi ptr [ %.ph2391, %.peel.next.i846.sink.split ], [ %i.pk, %bb.bt ]
  %.ph2450 = phi ptr [ %.ph2392, %.peel.next.i846.sink.split ], [ %i.pl, %bb.bt ]
  %.ph2451 = phi ptr [ %i.ak, %.peel.next.i846.sink.split ], [ %i.po, %bb.bt ]
  br label %.peel.next.i846

.peel.next.i846:                                  ; preds = %.peel.next.i846.preheader, %bb.bu
  %i.pq = phi ptr [ %i.qa, %bb.bu ], [ %.ph2449, %.peel.next.i846.preheader ]
  %i.pr = phi ptr [ %i.qb, %bb.bu ], [ %.ph2450, %.peel.next.i846.preheader ]
  %i.ps = phi ptr [ %i.qe, %bb.bu ], [ %.ph2451, %.peel.next.i846.preheader ] ; 2 uses
  %.not.i847 = icmp ugt ptr %i.ak, %i.ps
  %spec.select.i848 = select i1 %.not.i847, ptr %i.pr, ptr %i.ps
  %i.pt = ptrtoint ptr %spec.select.i848 to i64
  %i.pu = sub i64 %i.pt, %i.al
  %i.pv = trunc i64 %i.pu to i32
  %i.pw = load i32, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %..i849 = tail call i32 @llvm.umin.i32(i32 %i.pw, i32 %i.pv) ; 2 uses
  %i.px = sub i32 %i.pw, %..i849
  store i32 %i.px, ptr %i.ah, align 8, !tbaa !27
  %i.py = zext i32 %..i849 to i64                 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pq, ptr nonnull align 8 %i.ak, i64 %i.py, i1 false)
  %i.pz = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 %i.py ; 3 uses
  store ptr %i.qa, ptr %i.ai, align 8, !tbaa !28
  %i.qb = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.py ; 5 uses
  %i.qc = load ptr, ptr %i.aj, align 8, !tbaa !21
  %i.qd = icmp eq ptr %i.qb, %i.qc
  br i1 %i.qd, label %bb.bu, label %inflate_flush.exit850

bb.bu:                                            ; preds = %.peel.next.i846
  %i.qe = load ptr, ptr %i.q, align 8, !tbaa !19  ; 2 uses
  %i.qf = icmp eq ptr %i.qe, %i.qb
  br i1 %i.qf, label %bb.bv, label %.peel.next.i846, !llvm.loop !29

bb.bv:                                            ; preds = %bb.bu
  br label %.peel.next.i846.sink.split, !llvm.loop !29

inflate_flush.exit850:                            ; preds = %.peel.next.i846, %bb.bs
  %.lcssa.i845 = phi ptr [ %i.pl, %bb.bs ], [ %i.qb, %.peel.next.i846 ]
  store ptr %.lcssa.i845, ptr %i.s, align 8, !tbaa !20
  br label %.thread953

.lr.ph2351:                                       ; preds = %.lr.ph1320.preheader, %.lr.ph1320
  %.sroa.265.1013152350 = phi i32 [ %i.qg, %.lr.ph1320 ], [ %.sroa.265.91341, %.lr.ph1320.preheader ]
  %.sroa.219199.1013162349 = phi ptr [ %i.qh, %.lr.ph1320 ], [ %.sroa.219199.91342, %.lr.ph1320.preheader ] ; 2 uses
  %.sroa.130.913172348 = phi i32 [ %i.qn, %.lr.ph1320 ], [ %.sroa.130.81343, %.lr.ph1320.preheader ] ; 2 uses
  %.sroa.5684.913182347 = phi i64 [ %i.qm, %.lr.ph1320 ], [ %.sroa.5684.81344, %.lr.ph1320.preheader ]
  %i.qg = add i32 %.sroa.265.1013152350, -1       ; 3 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %.sroa.219199.1013162349, i64 1 ; 2 uses
  %i.qi = load i8, ptr %.sroa.219199.1013162349, align 1, !tbaa !23
  %i.qj = zext i8 %i.qi to i64
  %i.qk = zext nneg i32 %.sroa.130.913172348 to i64
  %i.ql = shl i64 %i.qj, %i.qk
  %i.qm = or i64 %i.ql, %.sroa.5684.913182347     ; 3 uses
  %i.qn = add i32 %.sroa.130.913172348, 8         ; 3 uses
  %i.qo = icmp ult i32 %i.qn, %i.ot
  br i1 %i.qo, label %.lr.ph1320, label %._crit_edge1321

._crit_edge1321:                                  ; preds = %.lr.ph2351, %.lr.ph1346
  %.sroa.265.10.lcssa = phi i32 [ %.sroa.265.91341, %.lr.ph1346 ], [ %i.qg, %.lr.ph2351 ] ; 5 uses
  %.sroa.219199.10.lcssa = phi ptr [ %.sroa.219199.91342, %.lr.ph1346 ], [ %i.qh, %.lr.ph2351 ] ; 4 uses
  %.sroa.130.9.lcssa = phi i32 [ %.sroa.130.81343, %.lr.ph1346 ], [ %i.qn, %.lr.ph2351 ] ; 5 uses
  %.sroa.5684.9.lcssa = phi i64 [ %.sroa.5684.81344, %.lr.ph1346 ], [ %i.qm, %.lr.ph2351 ] ; 4 uses
  %i.qp = load ptr, ptr %i.av, align 8, !tbaa !23
  %i.qq = zext i32 %i.ot to i64
  %i.qr = getelementptr inbounds nuw [2 x i8], ptr @inflate_mask, i64 %i.qq
  %i.qs = load i16, ptr %i.qr, align 2, !tbaa !37
  %i.qt = zext i16 %i.qs to i64
  %i.qu = and i64 %.sroa.5684.9.lcssa, %i.qt
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.qp, i64 %i.qu ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 1
  %i.qx = load i8, ptr %i.qw, align 1, !tbaa !23  ; 3 uses
  %i.qy = zext i8 %i.qx to i32                    ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qv, i64 2
  %i.ra = load i16, ptr %i.qz, align 2, !tbaa !39 ; 4 uses
  %i.rb = zext i16 %i.ra to i32                   ; 2 uses
  %i.rc = icmp ult i16 %i.ra, 16
  br i1 %i.rc, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %._crit_edge1321
  %i.rd = zext nneg i8 %i.qx to i64
  %i.re = lshr i64 %.sroa.5684.9.lcssa, %i.rd
  %i.rf = sub i32 %.sroa.130.9.lcssa, %i.qy
  %i.rg = add nuw nsw i32 %.lcssa104413381340, 1  ; 2 uses
  store i32 %i.rg, ptr %i.at, align 4, !tbaa !23
  %i.rh = zext nneg i32 %.lcssa104413381340 to i64
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.rh
  store i32 %i.rb, ptr %i.ri, align 4, !tbaa !23
  br label %bb.cp

bb.bx:                                            ; preds = %._crit_edge1321
  %i.rj = icmp eq i16 %i.ra, 18                   ; 3 uses
  %i.rk = add nsw i32 %i.rb, -14
  %.0715 = select i1 %i.rj, i32 7, i32 %i.rk      ; 2 uses
  %.0.neg = select i1 %i.rj, i32 -11, i32 -3
  %.0 = select i1 %i.rj, i32 11, i32 3
  %i.rl = add nuw nsw i32 %.0715, %i.qy           ; 3 uses
  %i.rm = icmp ult i32 %.sroa.130.9.lcssa, %i.rl
  br i1 %i.rm, label %.lr.ph1331.preheader, label %._crit_edge1332

.lr.ph1331.preheader:                             ; preds = %bb.bx
  %i.rn = zext nneg i32 %.sroa.130.9.lcssa to i64
  %i.ro = zext nneg i32 %i.rl to i64
  br label %.lr.ph1331

.lr.ph1331:                                       ; preds = %.lr.ph1331.preheader, %bb.ce
  %indvars.iv1696 = phi i64 [ %i.rn, %.lr.ph1331.preheader ], [ %indvars.iv.next1697, %bb.ce ] ; 2 uses
  %.sroa.5684.101329 = phi i64 [ %.sroa.5684.9.lcssa, %.lr.ph1331.preheader ], [ %i.tf, %bb.ce ] ; 2 uses
  %.sroa.219199.111327 = phi ptr [ %.sroa.219199.10.lcssa, %.lr.ph1331.preheader ], [ %i.tb, %bb.ce ] ; 2 uses
  %.sroa.265.111326 = phi i32 [ %.sroa.265.10.lcssa, %.lr.ph1331.preheader ], [ %i.ta, %bb.ce ] ; 2 uses
  %.not795 = icmp eq i32 %.sroa.265.111326, 0
  br i1 %.not795, label %bb.by, label %bb.ce

bb.by:                                            ; preds = %.lr.ph1331
  %i.rp = zext i32 %.sroa.265.10.lcssa to i64
  %i.rq = shl i32 %.sroa.265.10.lcssa, 3
  %i.rr = add i32 %i.rq, %.sroa.130.9.lcssa
  %scevgep1698.le = getelementptr i8, ptr %.sroa.219199.10.lcssa, i64 %i.rp
  store i64 %.sroa.5684.101329, ptr %i.m, align 8, !tbaa !17
  store i32 %i.rr, ptr %i.o, align 4, !tbaa !18
  store i32 0, ptr %i.k, align 8, !tbaa !16
  store ptr %scevgep1698.le, ptr %0, align 8, !tbaa !8
  store ptr %.sroa.323276.0, ptr %i.q, align 8, !tbaa !19
  %i.rs = load ptr, ptr %i.s, align 8, !tbaa !20  ; 4 uses
  %.not.peel.i851 = icmp ugt ptr %i.rs, %.sroa.323276.0
  br i1 %.not.peel.i851, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.rt = load ptr, ptr %i.aj, align 8, !tbaa !21
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.ru = phi ptr [ %i.rt, %bb.bz ], [ %.sroa.323276.0, %bb.by ]
  %i.rv = ptrtoint ptr %i.ru to i64
  %i.rw = ptrtoint ptr %i.rs to i64
  %i.rx = sub i64 %i.rv, %i.rw
  %i.ry = trunc i64 %i.rx to i32
  %i.rz = load i32, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %..peel.i852 = tail call i32 @llvm.umin.i32(i32 %i.rz, i32 %i.ry) ; 2 uses
  %i.sa = sub i32 %i.rz, %..peel.i852
  store i32 %i.sa, ptr %i.ah, align 8, !tbaa !27
  %i.sb = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.sc = zext i32 %..peel.i852 to i64            ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sb, ptr align 1 %i.rs, i64 %i.sc, i1 false)
  %i.sd = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 %i.sc ; 3 uses
  store ptr %i.se, ptr %i.ai, align 8, !tbaa !28
  %i.sf = getelementptr inbounds nuw i8, ptr %i.rs, i64 %i.sc ; 5 uses
  %i.sg = load ptr, ptr %i.aj, align 8, !tbaa !21
  %i.sh = icmp eq ptr %i.sf, %i.sg
  br i1 %i.sh, label %bb.cb, label %inflate_flush.exit858

bb.cb:                                            ; preds = %bb.ca
  %i.si = load ptr, ptr %i.q, align 8, !tbaa !19  ; 2 uses
  %i.sj = icmp eq ptr %i.si, %i.sf
  br i1 %i.sj, label %.peel.next.i854.sink.split, label %.peel.next.i854.preheader

.peel.next.i854.sink.split:                       ; preds = %bb.cb, %bb.cd
  %.ph2393 = phi ptr [ %i.su, %bb.cd ], [ %i.se, %bb.cb ]
  %.ph2394 = phi ptr [ %i.sv, %bb.cd ], [ %i.sf, %bb.cb ]
  store ptr %i.ak, ptr %i.q, align 8, !tbaa !19
  br label %.peel.next.i854.preheader

.peel.next.i854.preheader:                        ; preds = %bb.cb, %.peel.next.i854.sink.split
  %.ph2470 = phi ptr [ %.ph2393, %.peel.next.i854.sink.split ], [ %i.se, %bb.cb ]
  %.ph2471 = phi ptr [ %.ph2394, %.peel.next.i854.sink.split ], [ %i.sf, %bb.cb ]
  %.ph2472 = phi ptr [ %i.ak, %.peel.next.i854.sink.split ], [ %i.si, %bb.cb ]
  br label %.peel.next.i854

.peel.next.i854:                                  ; preds = %.peel.next.i854.preheader, %bb.cc
  %i.sk = phi ptr [ %i.su, %bb.cc ], [ %.ph2470, %.peel.next.i854.preheader ]
  %i.sl = phi ptr [ %i.sv, %bb.cc ], [ %.ph2471, %.peel.next.i854.preheader ]
  %i.sm = phi ptr [ %i.sy, %bb.cc ], [ %.ph2472, %.peel.next.i854.preheader ] ; 2 uses
  %.not.i855 = icmp ugt ptr %i.ak, %i.sm
  %spec.select.i856 = select i1 %.not.i855, ptr %i.sl, ptr %i.sm
  %i.sn = ptrtoint ptr %spec.select.i856 to i64
  %i.so = sub i64 %i.sn, %i.al
  %i.sp = trunc i64 %i.so to i32
  %i.sq = load i32, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %..i857 = tail call i32 @llvm.umin.i32(i32 %i.sq, i32 %i.sp) ; 2 uses
  %i.sr = sub i32 %i.sq, %..i857
  store i32 %i.sr, ptr %i.ah, align 8, !tbaa !27
  %i.ss = zext i32 %..i857 to i64                 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sk, ptr nonnull align 8 %i.ak, i64 %i.ss, i1 false)
  %i.st = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 %i.ss ; 3 uses
  store ptr %i.su, ptr %i.ai, align 8, !tbaa !28
  %i.sv = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ss ; 5 uses
  %i.sw = load ptr, ptr %i.aj, align 8, !tbaa !21
  %i.sx = icmp eq ptr %i.sv, %i.sw
  br i1 %i.sx, label %bb.cc, label %inflate_flush.exit858

bb.cc:                                            ; preds = %.peel.next.i854
  %i.sy = load ptr, ptr %i.q, align 8, !tbaa !19  ; 2 uses
  %i.sz = icmp eq ptr %i.sy, %i.sv
  br i1 %i.sz, label %bb.cd, label %.peel.next.i854, !llvm.loop !29

bb.cd:                                            ; preds = %bb.cc
  br label %.peel.next.i854.sink.split, !llvm.loop !29

inflate_flush.exit858:                            ; preds = %.peel.next.i854, %bb.ca
  %.lcssa.i853 = phi ptr [ %i.sf, %bb.ca ], [ %i.sv, %.peel.next.i854 ]
  store ptr %.lcssa.i853, ptr %i.s, align 8, !tbaa !20
  br label %.thread953

bb.ce:                                            ; preds = %.lr.ph1331
  %i.ta = add i32 %.sroa.265.111326, -1           ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %.sroa.219199.111327, i64 1 ; 2 uses
  %i.tc = load i8, ptr %.sroa.219199.111327, align 1, !tbaa !23
  %i.td = zext i8 %i.tc to i64
  %i.te = shl i64 %i.td, %indvars.iv1696
  %i.tf = or i64 %i.te, %.sroa.5684.101329        ; 2 uses
  %indvars.iv.next1697 = add nuw nsw i64 %indvars.iv1696, 8 ; 3 uses
  %i.tg = icmp samesign ult i64 %indvars.iv.next1697, %i.ro
  br i1 %i.tg, label %.lr.ph1331, label %._crit_edge1332.loopexit

._crit_edge1332.loopexit:                         ; preds = %bb.ce
  %i.th = trunc nuw i64 %indvars.iv.next1697 to i32
  br label %._crit_edge1332

._crit_edge1332:                                  ; preds = %._crit_edge1332.loopexit, %bb.bx
  %.sroa.265.11.lcssa = phi i32 [ %.sroa.265.10.lcssa, %bb.bx ], [ %i.ta, %._crit_edge1332.loopexit ] ; 2 uses
  %.sroa.219199.11.lcssa = phi ptr [ %.sroa.219199.10.lcssa, %bb.bx ], [ %i.tb, %._crit_edge1332.loopexit ] ; 2 uses
  %.sroa.130.10.lcssa = phi i32 [ %.sroa.130.9.lcssa, %bb.bx ], [ %i.th, %._crit_edge1332.loopexit ]
  %.sroa.5684.10.lcssa = phi i64 [ %.sroa.5684.9.lcssa, %bb.bx ], [ %i.tf, %._crit_edge1332.loopexit ]
  %i.ti = zext nneg i8 %i.qx to i64
  %i.tj = lshr i64 %.sroa.5684.10.lcssa, %i.ti    ; 2 uses
  %i.tk = trunc i64 %i.tj to i32
  %i.tl = zext nneg i32 %.0715 to i64             ; 2 uses
  %i.tm = getelementptr inbounds nuw [2 x i8], ptr @inflate_mask, i64 %i.tl
  %i.tn = load i16, ptr %i.tm, align 2, !tbaa !37
  %i.to = zext i16 %i.tn to i32
  %i.tp = and i32 %i.to, %i.tk                    ; 2 uses
  %i.tq = add nuw nsw i32 %i.tp, %.0              ; 6 uses
  %i.tr = lshr i64 %i.tj, %i.tl                   ; 2 uses
  %i.ts = sub nuw i32 %.sroa.130.10.lcssa, %i.rl  ; 2 uses
  %i.tt = add nuw nsw i32 %i.tq, %.lcssa104413381340
  %i.tu = icmp ugt i32 %i.tt, %i.or
  br i1 %i.tu, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %._crit_edge1332
  %i.tv = icmp eq i16 %i.ra, 16                   ; 2 uses
  %i.tw = icmp eq i32 %.lcssa104413381340, 0
  %or.cond = and i1 %i.tw, %i.tv
  br i1 %or.cond, label %bb.cg, label %bb.cm

bb.cg:                                            ; preds = %bb.cf, %._crit_edge1332
  store i32 17, ptr %i.ag, align 8, !tbaa !22
  store i64 %i.tr, ptr %i.m, align 8, !tbaa !17
  store i32 %i.ts, ptr %i.o, align 4, !tbaa !18
  store i32 %.sroa.265.11.lcssa, ptr %i.k, align 8, !tbaa !16
  store ptr %.sroa.219199.11.lcssa, ptr %0, align 8, !tbaa !8
  store ptr %.sroa.323276.0, ptr %i.q, align 8, !tbaa !19
  %i.tx = load ptr, ptr %i.s, align 8, !tbaa !20  ; 4 uses
  %.not.peel.i859 = icmp ugt ptr %i.tx, %.sroa.323276.0
  br i1 %.not.peel.i859, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.ty = load ptr, ptr %i.aj, align 8, !tbaa !21
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.tz = phi ptr [ %i.ty, %bb.ch ], [ %.sroa.323276.0, %bb.cg ]
  %i.ua = ptrtoint ptr %i.tz to i64
  %i.ub = ptrtoint ptr %i.tx to i64
  %i.uc = sub i64 %i.ua, %i.ub
  %i.ud = trunc i64 %i.uc to i32
  %i.ue = load i32, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %..peel.i860 = tail call i32 @llvm.umin.i32(i32 %i.ue, i32 %i.ud) ; 2 uses
  %i.uf = sub i32 %i.ue, %..peel.i860
  store i32 %i.uf, ptr %i.ah, align 8, !tbaa !27
  %i.ug = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.uh = zext i32 %..peel.i860 to i64            ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ug, ptr align 1 %i.tx, i64 %i.uh, i1 false)
  %i.ui = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 %i.uh ; 3 uses
  store ptr %i.uj, ptr %i.ai, align 8, !tbaa !28
  %i.uk = getelementptr inbounds nuw i8, ptr %i.tx, i64 %i.uh ; 5 uses
  %i.ul = load ptr, ptr %i.aj, align 8, !tbaa !21
  %i.um = icmp eq ptr %i.uk, %i.ul
  br i1 %i.um, label %bb.cj, label %inflate_flush.exit866

bb.cj:                                            ; preds = %bb.ci
  %i.un = load ptr, ptr %i.q, align 8, !tbaa !19  ; 2 uses
  %i.uo = icmp eq ptr %i.un, %i.uk
  br i1 %i.uo, label %.peel.next.i862.sink.split, label %.peel.next.i862.preheader

.peel.next.i862.sink.split:                       ; preds = %bb.cj, %bb.cl
  %.ph2395 = phi ptr [ %i.uz, %bb.cl ], [ %i.uj, %bb.cj ]
  %.ph2396 = phi ptr [ %i.va, %bb.cl ], [ %i.uk, %bb.cj ]
  store ptr %i.ak, ptr %i.q, align 8, !tbaa !19
  br label %.peel.next.i862.preheader

.peel.next.i862.preheader:                        ; preds = %bb.cj, %.peel.next.i862.sink.split
  %.ph2477 = phi ptr [ %.ph2395, %.peel.next.i862.sink.split ], [ %i.uj, %bb.cj ]
  %.ph2478 = phi ptr [ %.ph2396, %.peel.next.i862.sink.split ], [ %i.uk, %bb.cj ]
  %.ph2479 = phi ptr [ %i.ak, %.peel.next.i862.sink.split ], [ %i.un, %bb.cj ]
  br label %.peel.next.i862

.peel.next.i862:                                  ; preds = %.peel.next.i862.preheader, %bb.ck
  %i.up = phi ptr [ %i.uz, %bb.ck ], [ %.ph2477, %.peel.next.i862.preheader ]
  %i.uq = phi ptr [ %i.va, %bb.ck ], [ %.ph2478, %.peel.next.i862.preheader ]
  %i.ur = phi ptr [ %i.vd, %bb.ck ], [ %.ph2479, %.peel.next.i862.preheader ] ; 2 uses
  %.not.i863 = icmp ugt ptr %i.ak, %i.ur
  %spec.select.i864 = select i1 %.not.i863, ptr %i.uq, ptr %i.ur
  %i.us = ptrtoint ptr %spec.select.i864 to i64
  %i.ut = sub i64 %i.us, %i.al
  %i.uu = trunc i64 %i.ut to i32
  %i.uv = load i32, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %..i865 = tail call i32 @llvm.umin.i32(i32 %i.uv, i32 %i.uu) ; 2 uses
  %i.uw = sub i32 %i.uv, %..i865
  store i32 %i.uw, ptr %i.ah, align 8, !tbaa !27
  %i.ux = zext i32 %..i865 to i64                 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.up, ptr nonnull align 8 %i.ak, i64 %i.ux, i1 false)
  %i.uy = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 %i.ux ; 3 uses
  store ptr %i.uz, ptr %i.ai, align 8, !tbaa !28
  %i.va = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ux ; 5 uses
  %i.vb = load ptr, ptr %i.aj, align 8, !tbaa !21
  %i.vc = icmp eq ptr %i.va, %i.vb
  br i1 %i.vc, label %bb.ck, label %inflate_flush.exit866

bb.ck:                                            ; preds = %.peel.next.i862
  %i.vd = load ptr, ptr %i.q, align 8, !tbaa !19  ; 2 uses
  %i.ve = icmp eq ptr %i.vd, %i.va
  br i1 %i.ve, label %bb.cl, label %.peel.next.i862, !llvm.loop !29

bb.cl:                                            ; preds = %bb.ck
  br label %.peel.next.i862.sink.split, !llvm.loop !29

inflate_flush.exit866:                            ; preds = %.peel.next.i862, %bb.ci
  %.lcssa.i861 = phi ptr [ %i.uk, %bb.ci ], [ %i.va, %.peel.next.i862 ]
  store ptr %.lcssa.i861, ptr %i.s, align 8, !tbaa !20
  br label %.thread953

bb.cm:                                            ; preds = %bb.cf
  br i1 %i.tv, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.vf = add nsw i32 %.lcssa104413381340, -1
  %i.vg = zext i32 %i.vf to i64
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.vg
  %i.vi = load i32, ptr %i.vh, align 4, !tbaa !23
  br label %bb.co

bb.co:                                            ; preds = %bb.cm, %bb.cn
  %i.vj = phi i32 [ %i.vi, %bb.cn ], [ 0, %bb.cm ] ; 6 uses
  %min.iters.check = icmp samesign ult i32 %i.tq, 12
  %i.vk = sub nuw nsw i32 %.0.neg, %i.tp
  %i.vl = icmp ult i32 %i.vk, %.lcssa104413381340
  %or.cond2381 = select i1 %min.iters.check, i1 true, i1 %i.vl
  br i1 %or.cond2381, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.co
  %n.vec = and i32 %i.tq, 131064                  ; 3 uses
  %i.vm = add i32 %.lcssa104413381340, %n.vec     ; 2 uses
  %i.vn = and i32 %i.tq, 7
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.vj, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.vo = add i32 %.lcssa104413381340, %index
  %i.vp = zext i32 %i.vo to i64
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.vp ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.vq, align 4, !tbaa !23
  store <4 x i32> %broadcast.splat, ptr %i.vr, align 4, !tbaa !23
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.vs = icmp eq i32 %index.next, %n.vec
  br i1 %i.vs, label %middle.block, label %vector.body, !llvm.loop !41

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.tq, %n.vec
  br i1 %cmp.n, label %.loopexit2379, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.co, %middle.block
  %.1716.ph = phi i32 [ %.lcssa104413381340, %bb.co ], [ %i.vm, %middle.block ] ; 2 uses
  %.1.ph = phi i32 [ %i.tq, %bb.co ], [ %i.vn, %middle.block ] ; 4 uses
  %i.vt = add nsw i32 %.1.ph, -1
  %xtraiter = and i32 %.1.ph, 3                   ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.1716.prol = phi i32 [ %i.vu, %scalar.ph.prol ], [ %.1716.ph, %scalar.ph.preheader ] ; 2 uses
  %.1.prol = phi i32 [ %i.vx, %scalar.ph.prol ], [ %.1.ph, %scalar.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.vu = add i32 %.1716.prol, 1                  ; 3 uses
  %i.vv = zext i32 %.1716.prol to i64
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.vv
  store i32 %i.vj, ptr %i.vw, align 4, !tbaa !23
  %i.vx = add nsw i32 %.1.prol, -1                ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !44

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa2597.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %i.vu, %scalar.ph.prol ]
  %.1716.unr = phi i32 [ %.1716.ph, %scalar.ph.preheader ], [ %i.vu, %scalar.ph.prol ]
  %.1.unr = phi i32 [ %.1.ph, %scalar.ph.preheader ], [ %i.vx, %scalar.ph.prol ]
  %i.vy = icmp ult i32 %i.vt, 3
  br i1 %i.vy, label %.loopexit2379, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.1716 = phi i32 [ %i.wi, %scalar.ph ], [ %.1716.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.1 = phi i32 [ %i.wl, %scalar.ph ], [ %.1.unr, %scalar.ph.prol.loopexit ]
  %i.vz = add i32 %.1716, 1
  %i.wa = zext i32 %.1716 to i64
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.wa
  store i32 %i.vj, ptr %i.wb, align 4, !tbaa !23
  %i.wc = add i32 %.1716, 2
  %i.wd = zext i32 %i.vz to i64
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.wd
  store i32 %i.vj, ptr %i.we, align 4, !tbaa !23
  %i.wf = add i32 %.1716, 3
  %i.wg = zext i32 %i.wc to i64
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.wg
  store i32 %i.vj, ptr %i.wh, align 4, !tbaa !23
  %i.wi = add i32 %.1716, 4                       ; 2 uses
  %i.wj = zext i32 %i.wf to i64
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.wj
  store i32 %i.vj, ptr %i.wk, align 4, !tbaa !23
  %i.wl = add nsw i32 %.1, -4                     ; 2 uses
  %.not794.3 = icmp eq i32 %i.wl, 0
  br i1 %.not794.3, label %.loopexit2379, label %scalar.ph, !llvm.loop !46

.loopexit2379:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa2167 = phi i32 [ %i.vm, %middle.block ], [ %.lcssa2597.unr, %scalar.ph.prol.loopexit ], [ %i.wi, %scalar.ph ] ; 2 uses
  store i32 %.lcssa2167, ptr %i.at, align 4, !tbaa !23
  br label %bb.cp

bb.cp:                                            ; preds = %bb.bw, %.loopexit2379
  %.lcssa10441339 = phi i32 [ %.lcssa2167, %.loopexit2379 ], [ %i.rg, %bb.bw ] ; 2 uses
  %.sroa.265.13 = phi i32 [ %.sroa.265.11.lcssa, %.loopexit2379 ], [ %.sroa.265.10.lcssa, %bb.bw ] ; 2 uses
  %.sroa.219199.13 = phi ptr [ %.sroa.219199.11.lcssa, %.loopexit2379 ], [ %.sroa.219199.10.lcssa, %bb.bw ] ; 2 uses
  %.sroa.130.12 = phi i32 [ %i.ts, %.loopexit2379 ], [ %i.rf, %bb.bw ] ; 2 uses
  %.sroa.5684.12 = phi i64 [ %i.tr, %.loopexit2379 ], [ %i.re, %bb.bw ] ; 2 uses
  %i.wm = icmp ult i32 %.lcssa10441339, %i.or
  br i1 %i.wm, label %.lr.ph1346, label %._crit_edge1347

._crit_edge1347:                                  ; preds = %bb.cp, %bb.bq
  %.sroa.265.9.lcssa = phi i32 [ %.sroa.265.8, %bb.bq ], [ %.sroa.265.13, %bb.cp ] ; 2 uses
  %.sroa.219199.9.lcssa = phi ptr [ %.sroa.219199.8, %bb.bq ], [ %.sroa.219199.13, %bb.cp ] ; 2 uses
  %.sroa.130.8.lcssa = phi i32 [ %.sroa.130.7, %bb.bq ], [ %.sroa.130.12, %bb.cp ] ; 2 uses
  %.sroa.5684.8.lcssa = phi i64 [ %.sroa.5684.7, %bb.bq ], [ %.sroa.5684.12, %bb.cp ] ; 2 uses
  store ptr null, ptr %i.av, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 0, ptr %i.c, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  %i.wn = add nuw nsw i32 %i.on, 257              ; 2 uses
  store i32 9, ptr %i.d, align 4, !tbaa !33
  store i32 6, ptr %i.e, align 4, !tbaa !33
  %i.wo = call fastcc i32 @huft_build(ptr noundef nonnull %i.ao, i32 noundef %i.wn, i32 noundef 257, ptr noundef nonnull @cplens, ptr noundef nonnull @cplext, ptr noundef nonnull %i.f, ptr noundef nonnull %i.d, ptr noundef nonnull %i.aw, ptr noundef %i.c, ptr noundef nonnull %i.ax)
  %i.wp = load i32, ptr %i.d, align 4, !tbaa !33  ; 2 uses
  %i.wq = icmp ne i32 %i.wp, 0
  %i.wr = icmp eq i32 %i.wo, 0
  %i.ws = select i1 %i.wq, i1 %i.wr, i1 false
  br i1 %i.ws, label %bb.cq, label %.critedge

bb.cq:                                            ; preds = %._crit_edge1347
  %i.wt = add nuw nsw i32 %i.oq, 1
  %i.wu = zext nneg i32 %i.wn to i64
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.wu
  %i.ww = call fastcc i32 @huft_build(ptr noundef nonnull %i.wv, i32 noundef %i.wt, i32 noundef 0, ptr noundef nonnull @cpdist, ptr noundef nonnull @cpdext, ptr noundef nonnull %i.g, ptr noundef nonnull %i.e, ptr noundef nonnull %i.aw, ptr noundef %i.c, ptr noundef nonnull %i.ax)
  %i.wx = icmp eq i32 %i.ww, 0
  br i1 %i.wx, label %bb.cr, label %.critedge

bb.cr:                                            ; preds = %bb.cq
  %i.wy = load i32, ptr %i.e, align 4, !tbaa !33  ; 2 uses
  %i.wz = icmp eq i32 %i.wy, 0
  %i.xa = icmp ne i32 %i.on, 0
  %or.cond5 = and i1 %i.xa, %i.wz
  br i1 %or.cond5, label %.critedge, label %bb.cx

.critedge:                                        ; preds = %._crit_edge1347, %bb.cr, %bb.cq
  store i32 17, ptr %i.ag, align 8, !tbaa !22
  store i64 %.sroa.5684.8.lcssa, ptr %i.m, align 8, !tbaa !17
  store i32 %.sroa.130.8.lcssa, ptr %i.o, align 4, !tbaa !18
  store i32 %.sroa.265.9.lcssa, ptr %i.k, align 8, !tbaa !16
  store ptr %.sroa.219199.9.lcssa, ptr %0, align 8, !tbaa !8
  store ptr %.sroa.323276.0, ptr %i.q, align 8, !tbaa !19
  %i.xb = load ptr, ptr %i.s, align 8, !tbaa !20  ; 4 uses
  %.not.peel.i867 = icmp ugt ptr %i.xb, %.sroa.323276.0
  br i1 %.not.peel.i867, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %.critedge
  %i.xc = load ptr, ptr %i.aj, align 8, !tbaa !21
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %.critedge
  %i.xd = phi ptr [ %i.xc, %bb.cs ], [ %.sroa.323276.0, %.critedge ]
  %i.xe = ptrtoint ptr %i.xd to i64
  %i.xf = ptrtoint ptr %i.xb to i64
  %i.xg = sub i64 %i.xe, %i.xf
  %i.xh = trunc i64 %i.xg to i32
  %i.xi = load i32, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %..peel.i868 = tail call i32 @llvm.umin.i32(i32 %i.xi, i32 %i.xh) ; 2 uses
  %i.xj = sub i32 %i.xi, %..peel.i868
  store i32 %i.xj, ptr %i.ah, align 8, !tbaa !27
  %i.xk = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.xl = zext i32 %..peel.i868 to i64            ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xk, ptr align 1 %i.xb, i64 %i.xl, i1 false)
  %i.xm = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 %i.xl ; 3 uses
  store ptr %i.xn, ptr %i.ai, align 8, !tbaa !28
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xb, i64 %i.xl ; 5 uses
  %i.xp = load ptr, ptr %i.aj, align 8, !tbaa !21
  %i.xq = icmp eq ptr %i.xo, %i.xp
  br i1 %i.xq, label %bb.cu, label %.loopexit

bb.cu:                                            ; preds = %bb.ct
  %i.xr = load ptr, ptr %i.q, align 8, !tbaa !19  ; 2 uses
  %i.xs = icmp eq ptr %i.xr, %i.xo
  br i1 %i.xs, label %.peel.next.i870.sink.split, label %.peel.next.i870.preheader

.peel.next.i870.sink.split:                       ; preds = %bb.cu, %bb.cw
  %.ph2397 = phi ptr [ %i.yd, %bb.cw ], [ %i.xn, %bb.cu ]
  %.ph2398 = phi ptr [ %i.ye, %bb.cw ], [ %i.xo, %bb.cu ]
  store ptr %i.ak, ptr %i.q, align 8, !tbaa !19
  br label %.peel.next.i870.preheader

.peel.next.i870.preheader:                        ; preds = %bb.cu, %.peel.next.i870.sink.split
  %.ph2456 = phi ptr [ %.ph2397, %.peel.next.i870.sink.split ], [ %i.xn, %bb.cu ]
  %.ph2457 = phi ptr [ %.ph2398, %.peel.next.i870.sink.split ], [ %i.xo, %bb.cu ]
  %.ph2458 = phi ptr [ %i.ak, %.peel.next.i870.sink.split ], [ %i.xr, %bb.cu ]
  br label %.peel.next.i870

.peel.next.i870:                                  ; preds = %.peel.next.i870.preheader, %bb.cv
  %i.xt = phi ptr [ %i.yd, %bb.cv ], [ %.ph2456, %.peel.next.i870.preheader ]
  %i.xu = phi ptr [ %i.ye, %bb.cv ], [ %.ph2457, %.peel.next.i870.preheader ]
  %i.xv = phi ptr [ %i.yh, %bb.cv ], [ %.ph2458, %.peel.next.i870.preheader ] ; 2 uses
  %.not.i871 = icmp ugt ptr %i.ak, %i.xv
  %spec.select.i872 = select i1 %.not.i871, ptr %i.xu, ptr %i.xv
  %i.xw = ptrtoint ptr %spec.select.i872 to i64
  %i.xx = sub i64 %i.xw, %i.al
  %i.xy = trunc i64 %i.xx to i32
  %i.xz = load i32, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %..i873 = tail call i32 @llvm.umin.i32(i32 %i.xz, i32 %i.xy) ; 2 uses
  %i.ya = sub i32 %i.xz, %..i873
  store i32 %i.ya, ptr %i.ah, align 8, !tbaa !27
  %i.yb = zext i32 %..i873 to i64                 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xt, ptr nonnull align 8 %i.ak, i64 %i.yb, i1 false)
  %i.yc = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 %i.yb ; 3 uses
  store ptr %i.yd, ptr %i.ai, align 8, !tbaa !28
  %i.ye = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.yb ; 5 uses
  %i.yf = load ptr, ptr %i.aj, align 8, !tbaa !21
  %i.yg = icmp eq ptr %i.ye, %i.yf
  br i1 %i.yg, label %bb.cv, label %.loopexit

bb.cv:                                            ; preds = %.peel.next.i870
  %i.yh = load ptr, ptr %i.q, align 8, !tbaa !19  ; 2 uses
  %i.yi = icmp eq ptr %i.yh, %i.ye
  br i1 %i.yi, label %bb.cw, label %.peel.next.i870, !llvm.loop !29

bb.cw:                                            ; preds = %bb.cv
  br label %.peel.next.i870.sink.split, !llvm.loop !29

.loopexit:                                        ; preds = %.peel.next.i870, %bb.ct
  %.lcssa.i869 = phi ptr [ %i.xo, %bb.ct ], [ %i.ye, %.peel.next.i870 ]
  store ptr %.lcssa.i869, ptr %i.s, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  br label %.thread953

bb.cx:                                            ; preds = %bb.cr
  %i.yj = trunc i32 %i.wp to i8                   ; 2 uses
  store i8 %i.yj, ptr %i.ay, align 8, !tbaa !23
  %i.yk = trunc i32 %i.wy to i8
  store i8 %i.yk, ptr %i.aq, align 1, !tbaa !23
  %i.yl = load ptr, ptr %i.f, align 8, !tbaa !36  ; 2 uses
  store ptr %i.yl, ptr %i.az, align 8, !tbaa !23
  %i.ym = load ptr, ptr %i.g, align 8, !tbaa !36
  store ptr %i.ym, ptr %i.as, align 8, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  br label %bb.cy

bb.cy:                                            ; preds = %._crit_edge1720, %bb.cx
  %i.yn = phi ptr [ %i.yl, %bb.cx ], [ %.pre1722, %._crit_edge1720 ]
  %i.yo = phi i8 [ %i.yj, %bb.cx ], [ %.pre1721, %._crit_edge1720 ]
  %.sroa.265.14 = phi i32 [ %.sroa.265.9.lcssa, %bb.cx ], [ %.sroa.265.0, %._crit_edge1720 ]
  %.sroa.219199.14 = phi ptr [ %.sroa.219199.9.lcssa, %bb.cx ], [ %.sroa.219199.0, %._crit_edge1720 ]
  %.sroa.130.13 = phi i32 [ %.sroa.130.8.lcssa, %bb.cx ], [ %.sroa.130.0, %._crit_edge1720 ]
  %.sroa.5684.13 = phi i64 [ %.sroa.5684.8.lcssa, %bb.cx ], [ %.sroa.5684.0, %._crit_edge1720 ]
  %i.yp = zext i8 %i.yo to i32                    ; 2 uses
  store i32 %i.yp, ptr %i.ar, align 8, !tbaa !23
  store ptr %i.yn, ptr %i.ao, align 8, !tbaa !23
  store i32 1, ptr %i.ag, align 8, !tbaa !22
  br label %bb.cz

bb.cz:                                            ; preds = %._crit_edge1723, %bb.cy
  %i.yq = phi i32 [ %i.yp, %bb.cy ], [ %.pre1724, %._crit_edge1723 ] ; 3 uses
  %.sroa.265.15 = phi i32 [ %.sroa.265.14, %bb.cy ], [ %.sroa.265.0, %._crit_edge1723 ] ; 5 uses
  %.sroa.219199.15 = phi ptr [ %.sroa.219199.14, %bb.cy ], [ %.sroa.219199.0, %._crit_edge1723 ] ; 3 uses
  %.sroa.130.14 = phi i32 [ %.sroa.130.13, %bb.cy ], [ %.sroa.130.0, %._crit_edge1723 ] ; 4 uses
  %.sroa.5684.14 = phi i64 [ %.sroa.5684.13, %bb.cy ], [ %.sroa.5684.0, %._crit_edge1723 ] ; 3 uses
  %i.yr = icmp ult i32 %.sroa.130.14, %i.yq
  br i1 %i.yr, label %.lr.ph1359.preheader, label %._crit_edge1360

.lr.ph1359.preheader:                             ; preds = %bb.cz
  %.not7932362 = icmp eq i32 %.sroa.265.15, 0
  br i1 %.not7932362, label %.lr.ph1359.preheader._crit_edge, label %.lr.ph2367

.lr.ph1359:                                       ; preds = %.lr.ph2367
  %.not793 = icmp eq i32 %i.aad, 0
  br i1 %.not793, label %.lr.ph1359.preheader._crit_edge, label %.lr.ph2367

.lr.ph1359.preheader._crit_edge:                  ; preds = %.lr.ph1359.preheader, %.lr.ph1359
  %.sroa.5684.151357.lcssa = phi i64 [ %i.aaj, %.lr.ph1359 ], [ %.sroa.5684.14, %.lr.ph1359.preheader ]
  %i.ys = shl i32 %.sroa.265.15, 3
  %i.yt = add i32 %.sroa.130.14, %i.ys
  %i.yu = zext i32 %.sroa.265.15 to i64
  %scevgep1700.le = getelementptr i8, ptr %.sroa.219199.15, i64 %i.yu
  store i64 %.sroa.5684.151357.lcssa, ptr %i.m, align 8, !tbaa !17
  store i32 %i.yt, ptr %i.o, align 4, !tbaa !18
  store i32 0, ptr %i.k, align 8, !tbaa !16
  store ptr %scevgep1700.le, ptr %0, align 8, !tbaa !8
  store ptr %.sroa.323276.0, ptr %i.q, align 8, !tbaa !19
  %i.yv = load ptr, ptr %i.s, align 8, !tbaa !20  ; 4 uses
  %.not.peel.i875 = icmp ugt ptr %i.yv, %.sroa.323276.0
  br i1 %.not.peel.i875, label %bb.da, label %bb.db

bb.da:                                            ; preds = %.lr.ph1359.preheader._crit_edge
  %i.yw = load ptr, ptr %i.aj, align 8, !tbaa !21
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %.lr.ph1359.preheader._crit_edge
  %i.yx = phi ptr [ %i.yw, %bb.da ], [ %.sroa.323276.0, %.lr.ph1359.preheader._crit_edge ]
  %i.yy = ptrtoint ptr %i.yx to i64
  %i.yz = ptrtoint ptr %i.yv to i64
  %i.za = sub i64 %i.yy, %i.yz
  %i.zb = trunc i64 %i.za to i32
  %i.zc = load i32, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %..peel.i876 = tail call i32 @llvm.umin.i32(i32 %i.zc, i32 %i.zb) ; 2 uses
  %i.zd = sub i32 %i.zc, %..peel.i876
  store i32 %i.zd, ptr %i.ah, align 8, !tbaa !27
  %i.ze = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.zf = zext i32 %..peel.i876 to i64            ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ze, ptr align 1 %i.yv, i64 %i.zf, i1 false)
  %i.zg = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 %i.zf ; 3 uses
  store ptr %i.zh, ptr %i.ai, align 8, !tbaa !28
  %i.zi = getelementptr inbounds nuw i8, ptr %i.yv, i64 %i.zf ; 5 uses
  %i.zj = load ptr, ptr %i.aj, align 8, !tbaa !21
  %i.zk = icmp eq ptr %i.zi, %i.zj
  br i1 %i.zk, label %bb.dc, label %inflate_flush.exit882

bb.dc:                                            ; preds = %bb.db
  %i.zl = load ptr, ptr %i.q, align 8, !tbaa !19  ; 2 uses
  %i.zm = icmp eq ptr %i.zl, %i.zi
  br i1 %i.zm, label %.peel.next.i878.sink.split, label %.peel.next.i878.preheader

.peel.next.i878.sink.split:                       ; preds = %bb.dc, %bb.de
  %.ph2399 = phi ptr [ %i.zx, %bb.de ], [ %i.zh, %bb.dc ]
  %.ph2400 = phi ptr [ %i.zy, %bb.de ], [ %i.zi, %bb.dc ]
  store ptr %i.ak, ptr %i.q, align 8, !tbaa !19
  br label %.peel.next.i878.preheader

.peel.next.i878.preheader:                        ; preds = %bb.dc, %.peel.next.i878.sink.split
  %.ph2463 = phi ptr [ %.ph2399, %.peel.next.i878.sink.split ], [ %i.zh, %bb.dc ]
  %.ph2464 = phi ptr [ %.ph2400, %.peel.next.i878.sink.split ], [ %i.zi, %bb.dc ]
  %.ph2465 = phi ptr [ %i.ak, %.peel.next.i878.sink.split ], [ %i.zl, %bb.dc ]
  br label %.peel.next.i878

.peel.next.i878:                                  ; preds = %.peel.next.i878.preheader, %bb.dd
  %i.zn = phi ptr [ %i.zx, %bb.dd ], [ %.ph2463, %.peel.next.i878.preheader ]
  %i.zo = phi ptr [ %i.zy, %bb.dd ], [ %.ph2464, %.peel.next.i878.preheader ]
  %i.zp = phi ptr [ %i.aab, %bb.dd ], [ %.ph2465, %.peel.next.i878.preheader ] ; 2 uses
  %.not.i879 = icmp ugt ptr %i.ak, %i.zp
  %spec.select.i880 = select i1 %.not.i879, ptr %i.zo, ptr %i.zp
  %i.zq = ptrtoint ptr %spec.select.i880 to i64
  %i.zr = sub i64 %i.zq, %i.al
  %i.zs = trunc i64 %i.zr to i32
  %i.zt = load i32, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %..i881 = tail call i32 @llvm.umin.i32(i32 %i.zt, i32 %i.zs) ; 2 uses
  %i.zu = sub i32 %i.zt, %..i881
  store i32 %i.zu, ptr %i.ah, align 8, !tbaa !27
  %i.zv = zext i32 %..i881 to i64                 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.zn, ptr nonnull align 8 %i.ak, i64 %i.zv, i1 false)
  %i.zw = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 %i.zv ; 3 uses
  store ptr %i.zx, ptr %i.ai, align 8, !tbaa !28
  %i.zy = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.zv ; 5 uses
  %i.zz = load ptr, ptr %i.aj, align 8, !tbaa !21
  %i.aaa = icmp eq ptr %i.zy, %i.zz
  br i1 %i.aaa, label %bb.dd, label %inflate_flush.exit882

bb.dd:                                            ; preds = %.peel.next.i878
  %i.aab = load ptr, ptr %i.q, align 8, !tbaa !19 ; 2 uses
  %i.aac = icmp eq ptr %i.aab, %i.zy
  br i1 %i.aac, label %bb.de, label %.peel.next.i878, !llvm.loop !29

bb.de:                                            ; preds = %bb.dd
  br label %.peel.next.i878.sink.split, !llvm.loop !29

inflate_flush.exit882:                            ; preds = %.peel.next.i878, %bb.db
  %.lcssa.i877 = phi ptr [ %i.zi, %bb.db ], [ %i.zy, %.peel.next.i878 ]
  store ptr %.lcssa.i877, ptr %i.s, align 8, !tbaa !20
  br label %.thread953

.lr.ph2367:                                       ; preds = %.lr.ph1359.preheader, %.lr.ph1359
  %.sroa.265.1613542366 = phi i32 [ %i.aad, %.lr.ph1359 ], [ %.sroa.265.15, %.lr.ph1359.preheader ]
  %.sroa.219199.1613552365 = phi ptr [ %i.aae, %.lr.ph1359 ], [ %.sroa.219199.15, %.lr.ph1359.preheader ] ; 2 uses
  %.sroa.130.1513562364 = phi i32 [ %i.aak, %.lr.ph1359 ], [ %.sroa.130.14, %.lr.ph1359.preheader ] ; 2 uses
  %.sroa.5684.1513572363 = phi i64 [ %i.aaj, %.lr.ph1359 ], [ %.sroa.5684.14, %.lr.ph1359.preheader ]
  %i.aad = add i32 %.sroa.265.1613542366, -1      ; 3 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %.sroa.219199.1613552365, i64 1 ; 2 uses
  %i.aaf = load i8, ptr %.sroa.219199.1613552365, align 1, !tbaa !23
  %i.aag = zext i8 %i.aaf to i64
  %i.aah = zext nneg i32 %.sroa.130.1513562364 to i64
  %i.aai = shl i64 %i.aag, %i.aah
  %i.aaj = or i64 %i.aai, %.sroa.5684.1513572363  ; 3 uses
  %i.aak = add i32 %.sroa.130.1513562364, 8       ; 3 uses
  %i.aal = icmp ult i32 %i.aak, %i.yq
  br i1 %i.aal, label %.lr.ph1359, label %._crit_edge1360

._crit_edge1360:                                  ; preds = %.lr.ph2367, %bb.cz
  %.sroa.265.16.lcssa = phi i32 [ %.sroa.265.15, %bb.cz ], [ %i.aad, %.lr.ph2367 ] ; 5 uses
  %.sroa.219199.16.lcssa = phi ptr [ %.sroa.219199.15, %bb.cz ], [ %i.aae, %.lr.ph2367 ] ; 5 uses
  %.sroa.130.15.lcssa = phi i32 [ %.sroa.130.14, %bb.cz ], [ %i.aak, %.lr.ph2367 ]
  %.sroa.5684.15.lcssa = phi i64 [ %.sroa.5684.14, %bb.cz ], [ %i.aaj, %.lr.ph2367 ] ; 2 uses
  %i.aam = load ptr, ptr %i.ao, align 8
  %i.aan = zext i32 %i.yq to i64
  %i.aao = getelementptr inbounds nuw [2 x i8], ptr @inflate_mask, i64 %i.aan
  %i.aap = load i16, ptr %i.aao, align 2, !tbaa !37
  %i.aaq = zext i16 %i.aap to i64
  %i.aar = and i64 %.sroa.5684.15.lcssa, %i.aaq
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %i.aam, i64 %i.aar ; 6 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 1
  %i.aau = load i8, ptr %i.aat, align 1, !tbaa !23 ; 2 uses
  %i.aav = zext i8 %i.aau to i32
  %i.aaw = zext nneg i8 %i.aau to i64
  %i.aax = lshr i64 %.sroa.5684.15.lcssa, %i.aaw  ; 5 uses
  %i.aay = sub i32 %.sroa.130.15.lcssa, %i.aav    ; 5 uses
  %i.aaz = load i8, ptr %i.aas, align 2, !tbaa !23 ; 2 uses
  %i.aba = zext i8 %i.aaz to i32                  ; 5 uses
  %i.abb = icmp eq i8 %i.aaz, 0
  br i1 %i.abb, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %._crit_edge1360
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aas, i64 2
  %i.abd = load i16, ptr %i.abc, align 2, !tbaa !39
  %i.abe = zext i16 %i.abd to i32
  store i32 %i.abe, ptr %i.ao, align 8, !tbaa !23
  store i32 6, ptr %i.ag, align 8, !tbaa !22
  br label %.thread943.backedge

bb.dg:                                            ; preds = %._crit_edge1360
  %i.abf = and i32 %i.aba, 16
  %.not791 = icmp eq i32 %i.abf, 0
  br i1 %.not791, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.abg = and i32 %i.aba, 15
  store i32 %i.abg, ptr %i.ao, align 8, !tbaa !23
  %i.abh = getelementptr inbounds nuw i8, ptr %i.aas, i64 2
  %i.abi = load i16, ptr %i.abh, align 2, !tbaa !39
  %i.abj = zext i16 %i.abi to i32
  store i32 %i.abj, ptr %i.i, align 8, !tbaa !47
  store i32 2, ptr %i.ag, align 8, !tbaa !22
  br label %.thread943.backedge

bb.di:                                            ; preds = %bb.dg
  %i.abk = and i32 %i.aba, 64
  %i.abl = icmp eq i32 %i.abk, 0
  br i1 %i.abl, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  store i32 %i.aba, ptr %i.ar, align 8, !tbaa !23
  %i.abm = getelementptr inbounds nuw i8, ptr %i.aas, i64 2
  %i.abn = load i16, ptr %i.abm, align 2, !tbaa !39
  %i.abo = zext i16 %i.abn to i64
  %i.abp = getelementptr inbounds nuw [4 x i8], ptr %i.aas, i64 %i.abo
  store ptr %i.abp, ptr %i.ao, align 8, !tbaa !23
  br label %.thread943.backedge

bb.dk:                                            ; preds = %bb.di
  %i.abq = and i32 %i.aba, 32
  %.not792 = icmp eq i32 %i.abq, 0
  br i1 %.not792, label %bb.fn, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  store i32 7, ptr %i.ag, align 8, !tbaa !22
  br label %.thread943.backedge

bb.dm:                                            ; preds = %.thread943
  %i.abr = load i32, ptr %i.ao, align 8, !tbaa !23 ; 4 uses
  %i.abs = icmp ult i32 %.sroa.130.0, %i.abr
  br i1 %i.abs, label %.lr.ph1226.preheader, label %._crit_edge1227

.lr.ph1226.preheader:                             ; preds = %bb.dm
  %.not7872314 = icmp eq i32 %.sroa.265.0, 0
  br i1 %.not7872314, label %.lr.ph1226.preheader._crit_edge, label %.lr.ph2319

.lr.ph1226:                                       ; preds = %.lr.ph2319
  %.not787 = icmp eq i32 %i.ade, 0
  br i1 %.not787, label %.lr.ph1226.preheader._crit_edge, label %.lr.ph2319

.lr.ph1226.preheader._crit_edge:                  ; preds = %.lr.ph1226.preheader, %.lr.ph1226
  %.sroa.5684.161224.lcssa = phi i64 [ %i.adk, %.lr.ph1226 ], [ %.sroa.5684.0, %.lr.ph1226.preheader ]
  %i.abt = shl i32 %.sroa.265.0, 3
  %i.abu = add i32 %.sroa.130.0, %i.abt
  %i.abv = zext i32 %.sroa.265.0 to i64
  %scevgep1692.le = getelementptr i8, ptr %.sroa.219199.0, i64 %i.abv
  store i64 %.sroa.5684.161224.lcssa, ptr %i.m, align 8, !tbaa !17
  store i32 %i.abu, ptr %i.o, align 4, !tbaa !18
  store i32 0, ptr %i.k, align 8, !tbaa !16
  store ptr %scevgep1692.le, ptr %0, align 8, !tbaa !8
  store ptr %.sroa.323276.0, ptr %i.q, align 8, !tbaa !19
  %i.abw = load ptr, ptr %i.s, align 8, !tbaa !20 ; 4 uses
  %.not.peel.i883 = icmp ugt ptr %i.abw, %.sroa.323276.0
  br i1 %.not.peel.i883, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %.lr.ph1226.preheader._crit_edge
  %i.abx = load ptr, ptr %i.aj, align 8, !tbaa !21
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %.lr.ph1226.preheader._crit_edge
  %i.aby = phi ptr [ %i.abx, %bb.dn ], [ %.sroa.323276.0, %.lr.ph1226.preheader._crit_edge ]
  %i.abz = ptrtoint ptr %i.aby to i64
  %i.aca = ptrtoint ptr %i.abw to i64
  %i.acb = sub i64 %i.abz, %i.aca
  %i.acc = trunc i64 %i.acb to i32
  %i.acd = load i32, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %..peel.i884 = tail call i32 @llvm.umin.i32(i32 %i.acd, i32 %i.acc) ; 2 uses
  %i.ace = sub i32 %i.acd, %..peel.i884
  store i32 %i.ace, ptr %i.ah, align 8, !tbaa !27
  %i.acf = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.acg = zext i32 %..peel.i884 to i64           ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.acf, ptr align 1 %i.abw, i64 %i.acg, i1 false)
  %i.ach = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 %i.acg ; 3 uses
  store ptr %i.aci, ptr %i.ai, align 8, !tbaa !28
  %i.acj = getelementptr inbounds nuw i8, ptr %i.abw, i64 %i.acg ; 5 uses
  %i.ack = load ptr, ptr %i.aj, align 8, !tbaa !21
  %i.acl = icmp eq ptr %i.acj, %i.ack
  br i1 %i.acl, label %bb.dp, label %inflate_flush.exit890

bb.dp:                                            ; preds = %bb.do
  %i.acm = load ptr, ptr %i.q, align 8, !tbaa !19 ; 2 uses
  %i.acn = icmp eq ptr %i.acm, %i.acj
  br i1 %i.acn, label %.peel.next.i886.sink.split, label %.peel.next.i886.preheader

.peel.next.i886.sink.split:                       ; preds = %bb.dp, %bb.dr
  %.ph2401 = phi ptr [ %i.acy, %bb.dr ], [ %i.aci, %bb.dp ]
  %.ph2402 = phi ptr [ %i.acz, %bb.dr ], [ %i.acj, %bb.dp ]
  store ptr %i.ak, ptr %i.q, align 8, !tbaa !19
  br label %.peel.next.i886.preheader

.peel.next.i886.preheader:                        ; preds = %bb.dp, %.peel.next.i886.sink.split
  %.ph2484 = phi ptr [ %.ph2401, %.peel.next.i886.sink.split ], [ %i.aci, %bb.dp ]
  %.ph2485 = phi ptr [ %.ph2402, %.peel.next.i886.sink.split ], [ %i.acj, %bb.dp ]
  %.ph2486 = phi ptr [ %i.ak, %.peel.next.i886.sink.split ], [ %i.acm, %bb.dp ]
  br label %.peel.next.i886

.peel.next.i886:                                  ; preds = %.peel.next.i886.preheader, %bb.dq
  %i.aco = phi ptr [ %i.acy, %bb.dq ], [ %.ph2484, %.peel.next.i886.preheader ]
  %i.acp = phi ptr [ %i.acz, %bb.dq ], [ %.ph2485, %.peel.next.i886.preheader ]
  %i.acq = phi ptr [ %i.adc, %bb.dq ], [ %.ph2486, %.peel.next.i886.preheader ] ; 2 uses
  %.not.i887 = icmp ugt ptr %i.ak, %i.acq
  %spec.select.i888 = select i1 %.not.i887, ptr %i.acp, ptr %i.acq
  %i.acr = ptrtoint ptr %spec.select.i888 to i64
  %i.acs = sub i64 %i.acr, %i.al
  %i.act = trunc i64 %i.acs to i32
  %i.acu = load i32, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %..i889 = tail call i32 @llvm.umin.i32(i32 %i.acu, i32 %i.act) ; 2 uses
  %i.acv = sub i32 %i.acu, %..i889
  store i32 %i.acv, ptr %i.ah, align 8, !tbaa !27
  %i.acw = zext i32 %..i889 to i64                ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aco, ptr nonnull align 8 %i.ak, i64 %i.acw, i1 false)
  %i.acx = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acx, i64 %i.acw ; 3 uses
  store ptr %i.acy, ptr %i.ai, align 8, !tbaa !28
  %i.acz = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.acw ; 5 uses
  %i.ada = load ptr, ptr %i.aj, align 8, !tbaa !21
  %i.adb = icmp eq ptr %i.acz, %i.ada
  br i1 %i.adb, label %bb.dq, label %inflate_flush.exit890

bb.dq:                                            ; preds = %.peel.next.i886
  %i.adc = load ptr, ptr %i.q, align 8, !tbaa !19 ; 2 uses
  %i.add = icmp eq ptr %i.adc, %i.acz
  br i1 %i.add, label %bb.dr, label %.peel.next.i886, !llvm.loop !29

bb.dr:                                            ; preds = %bb.dq
  br label %.peel.next.i886.sink.split, !llvm.loop !29

inflate_flush.exit890:                            ; preds = %.peel.next.i886, %bb.do
  %.lcssa.i885 = phi ptr [ %i.acj, %bb.do ], [ %i.acz, %.peel.next.i886 ]
  store ptr %.lcssa.i885, ptr %i.s, align 8, !tbaa !20
  br label %.thread953

.lr.ph2319:                                       ; preds = %.lr.ph1226.preheader, %.lr.ph1226
  %.sroa.265.1712212318 = phi i32 [ %i.ade, %.lr.ph1226 ], [ %.sroa.265.0, %.lr.ph1226.preheader ]
  %.sroa.219199.1712222317 = phi ptr [ %i.adf, %.lr.ph1226 ], [ %.sroa.219199.0, %.lr.ph1226.preheader ] ; 2 uses
  %.sroa.130.1612232316 = phi i32 [ %i.adl, %.lr.ph1226 ], [ %.sroa.130.0, %.lr.ph1226.preheader ] ; 2 uses
  %.sroa.5684.1612242315 = phi i64 [ %i.adk, %.lr.ph1226 ], [ %.sroa.5684.0, %.lr.ph1226.preheader ]
  %i.ade = add i32 %.sroa.265.1712212318, -1      ; 3 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %.sroa.219199.1712222317, i64 1 ; 2 uses
  %i.adg = load i8, ptr %.sroa.219199.1712222317, align 1, !tbaa !23
  %i.adh = zext i8 %i.adg to i64
  %i.adi = zext nneg i32 %.sroa.130.1612232316 to i64
  %i.adj = shl i64 %i.adh, %i.adi
  %i.adk = or i64 %i.adj, %.sroa.5684.1612242315  ; 3 uses
  %i.adl = add i32 %.sroa.130.1612232316, 8       ; 3 uses
  %i.adm = icmp ult i32 %i.adl, %i.abr
  br i1 %i.adm, label %.lr.ph1226, label %._crit_edge1227

._crit_edge1227:                                  ; preds = %.lr.ph2319, %bb.dm
  %.sroa.265.17.lcssa = phi i32 [ %.sroa.265.0, %bb.dm ], [ %i.ade, %.lr.ph2319 ]
  %.sroa.219199.17.lcssa = phi ptr [ %.sroa.219199.0, %bb.dm ], [ %i.adf, %.lr.ph2319 ]
  %.sroa.130.16.lcssa = phi i32 [ %.sroa.130.0, %bb.dm ], [ %i.adl, %.lr.ph2319 ]
  %.sroa.5684.16.lcssa = phi i64 [ %.sroa.5684.0, %bb.dm ], [ %i.adk, %.lr.ph2319 ] ; 2 uses
  %i.adn = trunc i64 %.sroa.5684.16.lcssa to i32
  %i.ado = zext i32 %i.abr to i64                 ; 2 uses
  %i.adp = getelementptr inbounds nuw [2 x i8], ptr @inflate_mask, i64 %i.ado
  %i.adq = load i16, ptr %i.adp, align 2, !tbaa !37
  %i.adr = zext i16 %i.adq to i32
  %i.ads = and i32 %i.adr, %i.adn
  %i.adt = load i32, ptr %i.i, align 8, !tbaa !47
  %i.adu = add i32 %i.ads, %i.adt
  store i32 %i.adu, ptr %i.i, align 8, !tbaa !47
  %i.adv = lshr i64 %.sroa.5684.16.lcssa, %i.ado
  %i.adw = sub nuw i32 %.sroa.130.16.lcssa, %i.abr
  %i.adx = load i8, ptr %i.aq, align 1, !tbaa !48
  %i.ady = zext i8 %i.adx to i32                  ; 2 uses
  store i32 %i.ady, ptr %i.ar, align 8, !tbaa !23
  %i.adz = load ptr, ptr %i.as, align 8, !tbaa !49
  store ptr %i.adz, ptr %i.ao, align 8, !tbaa !23
  store i32 3, ptr %i.ag, align 8, !tbaa !22
  br label %bb.ds

bb.ds:                                            ; preds = %._crit_edge1714, %._crit_edge1227
  %i.aea = phi i32 [ %i.ady, %._crit_edge1227 ], [ %.pre1715, %._crit_edge1714 ] ; 3 uses
  %.sroa.265.18 = phi i32 [ %.sroa.265.17.lcssa, %._crit_edge1227 ], [ %.sroa.265.0, %._crit_edge1714 ] ; 5 uses
  %.sroa.219199.18 = phi ptr [ %.sroa.219199.17.lcssa, %._crit_edge1227 ], [ %.sroa.219199.0, %._crit_edge1714 ] ; 3 uses
  %.sroa.130.17 = phi i32 [ %i.adw, %._crit_edge1227 ], [ %.sroa.130.0, %._crit_edge1714 ] ; 4 uses
  %.sroa.5684.17 = phi i64 [ %i.adv, %._crit_edge1227 ], [ %.sroa.5684.0, %._crit_edge1714 ] ; 3 uses
  %i.aeb = icmp ult i32 %.sroa.130.17, %i.aea
  br i1 %i.aeb, label %.lr.ph1237.preheader, label %._crit_edge1238

.lr.ph1237.preheader:                             ; preds = %bb.ds
  %.not7862330 = icmp eq i32 %.sroa.265.18, 0
  br i1 %.not7862330, label %.lr.ph1237.preheader._crit_edge, label %.lr.ph2335

.lr.ph1237:                                       ; preds = %.lr.ph2335
  %.not786 = icmp eq i32 %i.afn, 0
  br i1 %.not786, label %.lr.ph1237.preheader._crit_edge, label %.lr.ph2335

.lr.ph1237.preheader._crit_edge:                  ; preds = %.lr.ph1237.preheader, %.lr.ph1237
  %.sroa.5684.181235.lcssa = phi i64 [ %i.aft, %.lr.ph1237 ], [ %.sroa.5684.17, %.lr.ph1237.preheader ]
  %i.aec = shl i32 %.sroa.265.18, 3
  %i.aed = add i32 %.sroa.130.17, %i.aec
  %i.aee = zext i32 %.sroa.265.18 to i64
  %scevgep1693.le = getelementptr i8, ptr %.sroa.219199.18, i64 %i.aee
  store i64 %.sroa.5684.181235.lcssa, ptr %i.m, align 8, !tbaa !17
  store i32 %i.aed, ptr %i.o, align 4, !tbaa !18
  store i32 0, ptr %i.k, align 8, !tbaa !16
  store ptr %scevgep1693.le, ptr %0, align 8, !tbaa !8
  store ptr %.sroa.323276.0, ptr %i.q, align 8, !tbaa !19
  %i.aef = load ptr, ptr %i.s, align 8, !tbaa !20 ; 4 uses
  %.not.peel.i891 = icmp ugt ptr %i.aef, %.sroa.323276.0
  br i1 %.not.peel.i891, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %.lr.ph1237.preheader._crit_edge
  %i.aeg = load ptr, ptr %i.aj, align 8, !tbaa !21
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %.lr.ph1237.preheader._crit_edge
  %i.aeh = phi ptr [ %i.aeg, %bb.dt ], [ %.sroa.323276.0, %.lr.ph1237.preheader._crit_edge ]
  %i.aei = ptrtoint ptr %i.aeh to i64
  %i.aej = ptrtoint ptr %i.aef to i64
  %i.aek = sub i64 %i.aei, %i.aej
  %i.ael = trunc i64 %i.aek to i32
  %i.aem = load i32, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %..peel.i892 = tail call i32 @llvm.umin.i32(i32 %i.aem, i32 %i.ael) ; 2 uses
  %i.aen = sub i32 %i.aem, %..peel.i892
  store i32 %i.aen, ptr %i.ah, align 8, !tbaa !27
  %i.aeo = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.aep = zext i32 %..peel.i892 to i64           ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aeo, ptr align 1 %i.aef, i64 %i.aep, i1 false)
  %i.aeq = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeq, i64 %i.aep ; 3 uses
  store ptr %i.aer, ptr %i.ai, align 8, !tbaa !28
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aef, i64 %i.aep ; 5 uses
  %i.aet = load ptr, ptr %i.aj, align 8, !tbaa !21
  %i.aeu = icmp eq ptr %i.aes, %i.aet
  br i1 %i.aeu, label %bb.dv, label %inflate_flush.exit898

bb.dv:                                            ; preds = %bb.du
  %i.aev = load ptr, ptr %i.q, align 8, !tbaa !19 ; 2 uses
  %i.aew = icmp eq ptr %i.aev, %i.aes
  br i1 %i.aew, label %.peel.next.i894.sink.split, label %.peel.next.i894.preheader

.peel.next.i894.sink.split:                       ; preds = %bb.dv, %bb.dx
  %.ph2403 = phi ptr [ %i.afh, %bb.dx ], [ %i.aer, %bb.dv ]
  %.ph2404 = phi ptr [ %i.afi, %bb.dx ], [ %i.aes, %bb.dv ]
  store ptr %i.ak, ptr %i.q, align 8, !tbaa !19
  br label %.peel.next.i894.preheader

.peel.next.i894.preheader:                        ; preds = %bb.dv, %.peel.next.i894.sink.split
  %.ph2491 = phi ptr [ %.ph2403, %.peel.next.i894.sink.split ], [ %i.aer, %bb.dv ]
  %.ph2492 = phi ptr [ %.ph2404, %.peel.next.i894.sink.split ], [ %i.aes, %bb.dv ]
  %.ph2493 = phi ptr [ %i.ak, %.peel.next.i894.sink.split ], [ %i.aev, %bb.dv ]
  br label %.peel.next.i894

.peel.next.i894:                                  ; preds = %.peel.next.i894.preheader, %bb.dw
  %i.aex = phi ptr [ %i.afh, %bb.dw ], [ %.ph2491, %.peel.next.i894.preheader ]
  %i.aey = phi ptr [ %i.afi, %bb.dw ], [ %.ph2492, %.peel.next.i894.preheader ]
  %i.aez = phi ptr [ %i.afl, %bb.dw ], [ %.ph2493, %.peel.next.i894.preheader ] ; 2 uses
  %.not.i895 = icmp ugt ptr %i.ak, %i.aez
  %spec.select.i896 = select i1 %.not.i895, ptr %i.aey, ptr %i.aez
  %i.afa = ptrtoint ptr %spec.select.i896 to i64
  %i.afb = sub i64 %i.afa, %i.al
  %i.afc = trunc i64 %i.afb to i32
  %i.afd = load i32, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %..i897 = tail call i32 @llvm.umin.i32(i32 %i.afd, i32 %i.afc) ; 2 uses
  %i.afe = sub i32 %i.afd, %..i897
  store i32 %i.afe, ptr %i.ah, align 8, !tbaa !27
  %i.aff = zext i32 %..i897 to i64                ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aex, ptr nonnull align 8 %i.ak, i64 %i.aff, i1 false)
  %i.afg = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afg, i64 %i.aff ; 3 uses
  store ptr %i.afh, ptr %i.ai, align 8, !tbaa !28
  %i.afi = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.aff ; 5 uses
  %i.afj = load ptr, ptr %i.aj, align 8, !tbaa !21
  %i.afk = icmp eq ptr %i.afi, %i.afj
  br i1 %i.afk, label %bb.dw, label %inflate_flush.exit898

bb.dw:                                            ; preds = %.peel.next.i894
  %i.afl = load ptr, ptr %i.q, align 8, !tbaa !19 ; 2 uses
  %i.afm = icmp eq ptr %i.afl, %i.afi
  br i1 %i.afm, label %bb.dx, label %.peel.next.i894, !llvm.loop !29

bb.dx:                                            ; preds = %bb.dw
  br label %.peel.next.i894.sink.split, !llvm.loop !29

inflate_flush.exit898:                            ; preds = %.peel.next.i894, %bb.du
  %.lcssa.i893 = phi ptr [ %i.aes, %bb.du ], [ %i.afi, %.peel.next.i894 ]
  store ptr %.lcssa.i893, ptr %i.s, align 8, !tbaa !20
  br label %.thread953

.lr.ph2335:                                       ; preds = %.lr.ph1237.preheader, %.lr.ph1237
  %.sroa.265.1912322334 = phi i32 [ %i.afn, %.lr.ph1237 ], [ %.sroa.265.18, %.lr.ph1237.preheader ]
  %.sroa.219199.1912332333 = phi ptr [ %i.afo, %.lr.ph1237 ], [ %.sroa.219199.18, %.lr.ph1237.preheader ] ; 2 uses
  %.sroa.130.1812342332 = phi i32 [ %i.afu, %.lr.ph1237 ], [ %.sroa.130.17, %.lr.ph1237.preheader ] ; 2 uses
  %.sroa.5684.1812352331 = phi i64 [ %i.aft, %.lr.ph1237 ], [ %.sroa.5684.17, %.lr.ph1237.preheader ]
  %i.afn = add i32 %.sroa.265.1912322334, -1      ; 3 uses
  %i.afo = getelementptr inbounds nuw i8, ptr %.sroa.219199.1912332333, i64 1 ; 2 uses
  %i.afp = load i8, ptr %.sroa.219199.1912332333, align 1, !tbaa !23
  %i.afq = zext i8 %i.afp to i64
  %i.afr = zext nneg i32 %.sroa.130.1812342332 to i64
  %i.afs = shl i64 %i.afq, %i.afr
  %i.aft = or i64 %i.afs, %.sroa.5684.1812352331  ; 3 uses
  %i.afu = add i32 %.sroa.130.1812342332, 8       ; 3 uses
  %i.afv = icmp ult i32 %i.afu, %i.aea
  br i1 %i.afv, label %.lr.ph1237, label %._crit_edge1238

._crit_edge1238:                                  ; preds = %.lr.ph2335, %bb.ds
  %.sroa.265.19.lcssa = phi i32 [ %.sroa.265.18, %bb.ds ], [ %i.afn, %.lr.ph2335 ] ; 3 uses
  %.sroa.219199.19.lcssa = phi ptr [ %.sroa.219199.18, %bb.ds ], [ %i.afo, %.lr.ph2335 ] ; 3 uses
  %.sroa.130.18.lcssa = phi i32 [ %.sroa.130.17, %bb.ds ], [ %i.afu, %.lr.ph2335 ]
  %.sroa.5684.18.lcssa = phi i64 [ %.sroa.5684.17, %bb.ds ], [ %i.aft, %.lr.ph2335 ] ; 2 uses
  %i.afw = load ptr, ptr %i.ao, align 8, !tbaa !23
  %i.afx = zext i32 %i.aea to i64
  %i.afy = getelementptr inbounds nuw [2 x i8], ptr @inflate_mask, i64 %i.afx
  %i.afz = load i16, ptr %i.afy, align 2, !tbaa !37
  %i.aga = zext i16 %i.afz to i64
  %i.agb = and i64 %.sroa.5684.18.lcssa, %i.aga
  %i.agc = getelementptr inbounds nuw [4 x i8], ptr %i.afw, i64 %i.agb ; 5 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %i.agc, i64 1
  %i.age = load i8, ptr %i.agd, align 1, !tbaa !23 ; 2 uses
  %i.agf = zext i8 %i.age to i32
  %i.agg = zext nneg i8 %i.age to i64
  %i.agh = lshr i64 %.sroa.5684.18.lcssa, %i.agg  ; 3 uses
  %i.agi = sub i32 %.sroa.130.18.lcssa, %i.agf    ; 3 uses
  %i.agj = load i8, ptr %i.agc, align 2, !tbaa !23
  %i.agk = zext i8 %i.agj to i32                  ; 4 uses
  %i.agl = and i32 %i.agk, 16
  %.not785 = icmp eq i32 %i.agl, 0
  br i1 %.not785, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %._crit_edge1238
  %i.agm = and i32 %i.agk, 15
  store i32 %i.agm, ptr %i.ao, align 8, !tbaa !23
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agc, i64 2
  %i.ago = load i16, ptr %i.agn, align 2, !tbaa !39
  %i.agp = zext i16 %i.ago to i32
  store i32 %i.agp, ptr %i.ap, align 4, !tbaa !23
  store i32 4, ptr %i.ag, align 8, !tbaa !22
  br label %.thread943.backedge

bb.dz:                                            ; preds = %._crit_edge1238
  %i.agq = and i32 %i.agk, 64
  %i.agr = icmp eq i32 %i.agq, 0
  br i1 %i.agr, label %bb.ea, label %bb.fn

bb.ea:                                            ; preds = %bb.dz
  store i32 %i.agk, ptr %i.ar, align 8, !tbaa !23
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agc, i64 2
  %i.agt = load i16, ptr %i.ags, align 2, !tbaa !39
  %i.agu = zext i16 %i.agt to i64
  %i.agv = getelementptr inbounds nuw [4 x i8], ptr %i.agc, i64 %i.agu
  store ptr %i.agv, ptr %i.ao, align 8, !tbaa !23
  br label %.thread943.backedge

bb.eb:                                            ; preds = %.thread943
  %i.agw = load i32, ptr %i.ao, align 8, !tbaa !23 ; 4 uses
  %i.agx = icmp ult i32 %.sroa.130.0, %i.agw
  br i1 %i.agx, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.eb
  %.not7842299 = icmp eq i32 %.sroa.265.0, 0
  br i1 %.not7842299, label %.lr.ph.preheader._crit_edge, label %.lr.ph2304

.lr.ph:                                           ; preds = %.lr.ph2304
  %.not784 = icmp eq i32 %i.aij, 0
  br i1 %.not784, label %.lr.ph.preheader._crit_edge, label %.lr.ph2304

.lr.ph.preheader._crit_edge:                      ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.5684.191208.lcssa = phi i64 [ %i.aip, %.lr.ph ], [ %.sroa.5684.0, %.lr.ph.preheader ]
  %i.agy = shl i32 %.sroa.265.0, 3
  %i.agz = add i32 %.sroa.130.0, %i.agy
  %i.aha = zext i32 %.sroa.265.0 to i64
  %scevgep.le = getelementptr i8, ptr %.sroa.219199.0, i64 %i.aha
  store i64 %.sroa.5684.191208.lcssa, ptr %i.m, align 8, !tbaa !17
  store i32 %i.agz, ptr %i.o, align 4, !tbaa !18
  store i32 0, ptr %i.k, align 8, !tbaa !16
  store ptr %scevgep.le, ptr %0, align 8, !tbaa !8
  store ptr %.sroa.323276.0, ptr %i.q, align 8, !tbaa !19
  %i.ahb = load ptr, ptr %i.s, align 8, !tbaa !20 ; 4 uses
  %.not.peel.i899 = icmp ugt ptr %i.ahb, %.sroa.323276.0
  br i1 %.not.peel.i899, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %.lr.ph.preheader._crit_edge
  %i.ahc = load ptr, ptr %i.aj, align 8, !tbaa !21
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %.lr.ph.preheader._crit_edge
  %i.ahd = phi ptr [ %i.ahc, %bb.ec ], [ %.sroa.323276.0, %.lr.ph.preheader._crit_edge ]
  %i.ahe = ptrtoint ptr %i.ahd to i64
  %i.ahf = ptrtoint ptr %i.ahb to i64
  %i.ahg = sub i64 %i.ahe, %i.ahf
  %i.ahh = trunc i64 %i.ahg to i32
  %i.ahi = load i32, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %..peel.i900 = tail call i32 @llvm.umin.i32(i32 %i.ahi, i32 %i.ahh) ; 2 uses
  %i.ahj = sub i32 %i.ahi, %..peel.i900
  store i32 %i.ahj, ptr %i.ah, align 8, !tbaa !27
  %i.ahk = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.ahl = zext i32 %..peel.i900 to i64           ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ahk, ptr align 1 %i.ahb, i64 %i.ahl, i1 false)
  %i.ahm = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahm, i64 %i.ahl ; 3 uses
  store ptr %i.ahn, ptr %i.ai, align 8, !tbaa !28
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahb, i64 %i.ahl ; 5 uses
  %i.ahp = load ptr, ptr %i.aj, align 8, !tbaa !21
  %i.ahq = icmp eq ptr %i.aho, %i.ahp
  br i1 %i.ahq, label %bb.ee, label %inflate_flush.exit906

bb.ee:                                            ; preds = %bb.ed
  %i.ahr = load ptr, ptr %i.q, align 8, !tbaa !19 ; 2 uses
  %i.ahs = icmp eq ptr %i.ahr, %i.aho
  br i1 %i.ahs, label %.peel.next.i902.sink.split, label %.peel.next.i902.preheader

.peel.next.i902.sink.split:                       ; preds = %bb.ee, %bb.eg
  %.ph2405 = phi ptr [ %i.aid, %bb.eg ], [ %i.ahn, %bb.ee ]
  %.ph2406 = phi ptr [ %i.aie, %bb.eg ], [ %i.aho, %bb.ee ]
  store ptr %i.ak, ptr %i.q, align 8, !tbaa !19
  br label %.peel.next.i902.preheader

.peel.next.i902.preheader:                        ; preds = %bb.ee, %.peel.next.i902.sink.split
  %.ph2498 = phi ptr [ %.ph2405, %.peel.next.i902.sink.split ], [ %i.ahn, %bb.ee ]
  %.ph2499 = phi ptr [ %.ph2406, %.peel.next.i902.sink.split ], [ %i.aho, %bb.ee ]
  %.ph2500 = phi ptr [ %i.ak, %.peel.next.i902.sink.split ], [ %i.ahr, %bb.ee ]
  br label %.peel.next.i902

.peel.next.i902:                                  ; preds = %.peel.next.i902.preheader, %bb.ef
  %i.aht = phi ptr [ %i.aid, %bb.ef ], [ %.ph2498, %.peel.next.i902.preheader ]
  %i.ahu = phi ptr [ %i.aie, %bb.ef ], [ %.ph2499, %.peel.next.i902.preheader ]
  %i.ahv = phi ptr [ %i.aih, %bb.ef ], [ %.ph2500, %.peel.next.i902.preheader ] ; 2 uses
  %.not.i903 = icmp ugt ptr %i.ak, %i.ahv
  %spec.select.i904 = select i1 %.not.i903, ptr %i.ahu, ptr %i.ahv
  %i.ahw = ptrtoint ptr %spec.select.i904 to i64
  %i.ahx = sub i64 %i.ahw, %i.al
  %i.ahy = trunc i64 %i.ahx to i32
  %i.ahz = load i32, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %..i905 = tail call i32 @llvm.umin.i32(i32 %i.ahz, i32 %i.ahy) ; 2 uses
  %i.aia = sub i32 %i.ahz, %..i905
  store i32 %i.aia, ptr %i.ah, align 8, !tbaa !27
  %i.aib = zext i32 %..i905 to i64                ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aht, ptr nonnull align 8 %i.ak, i64 %i.aib, i1 false)
  %i.aic = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.aid = getelementptr inbounds nuw i8, ptr %i.aic, i64 %i.aib ; 3 uses
  store ptr %i.aid, ptr %i.ai, align 8, !tbaa !28
  %i.aie = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.aib ; 5 uses
  %i.aif = load ptr, ptr %i.aj, align 8, !tbaa !21
  %i.aig = icmp eq ptr %i.aie, %i.aif
  br i1 %i.aig, label %bb.ef, label %inflate_flush.exit906

bb.ef:                                            ; preds = %.peel.next.i902
  %i.aih = load ptr, ptr %i.q, align 8, !tbaa !19 ; 2 uses
  %i.aii = icmp eq ptr %i.aih, %i.aie
  br i1 %i.aii, label %bb.eg, label %.peel.next.i902, !llvm.loop !29

bb.eg:                                            ; preds = %bb.ef
  br label %.peel.next.i902.sink.split, !llvm.loop !29

inflate_flush.exit906:                            ; preds = %.peel.next.i902, %bb.ed
  %.lcssa.i901 = phi ptr [ %i.aho, %bb.ed ], [ %i.aie, %.peel.next.i902 ]
  store ptr %.lcssa.i901, ptr %i.s, align 8, !tbaa !20
  br label %.thread953

.lr.ph2304:                                       ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.265.2012052303 = phi i32 [ %i.aij, %.lr.ph ], [ %.sroa.265.0, %.lr.ph.preheader ]
  %.sroa.219199.2012062302 = phi ptr [ %i.aik, %.lr.ph ], [ %.sroa.219199.0, %.lr.ph.preheader ] ; 2 uses
  %.sroa.130.1912072301 = phi i32 [ %i.aiq, %.lr.ph ], [ %.sroa.130.0, %.lr.ph.preheader ] ; 2 uses
  %.sroa.5684.1912082300 = phi i64 [ %i.aip, %.lr.ph ], [ %.sroa.5684.0, %.lr.ph.preheader ]
  %i.aij = add i32 %.sroa.265.2012052303, -1      ; 3 uses
  %i.aik = getelementptr inbounds nuw i8, ptr %.sroa.219199.2012062302, i64 1 ; 2 uses
  %i.ail = load i8, ptr %.sroa.219199.2012062302, align 1, !tbaa !23
  %i.aim = zext i8 %i.ail to i64
  %i.ain = zext nneg i32 %.sroa.130.1912072301 to i64
  %i.aio = shl i64 %i.aim, %i.ain
  %i.aip = or i64 %i.aio, %.sroa.5684.1912082300  ; 3 uses
  %i.aiq = add i32 %.sroa.130.1912072301, 8       ; 3 uses
  %i.air = icmp ult i32 %i.aiq, %i.agw
  br i1 %i.air, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph2304, %bb.eb
  %.sroa.265.20.lcssa = phi i32 [ %.sroa.265.0, %bb.eb ], [ %i.aij, %.lr.ph2304 ]
  %.sroa.219199.20.lcssa = phi ptr [ %.sroa.219199.0, %bb.eb ], [ %i.aik, %.lr.ph2304 ]
  %.sroa.130.19.lcssa = phi i32 [ %.sroa.130.0, %bb.eb ], [ %i.aiq, %.lr.ph2304 ]
  %.sroa.5684.19.lcssa = phi i64 [ %.sroa.5684.0, %bb.eb ], [ %i.aip, %.lr.ph2304 ] ; 2 uses
  %i.ais = trunc i64 %.sroa.5684.19.lcssa to i32
  %i.ait = zext i32 %i.agw to i64                 ; 2 uses
  %i.aiu = getelementptr inbounds nuw [2 x i8], ptr @inflate_mask, i64 %i.ait
  %i.aiv = load i16, ptr %i.aiu, align 2, !tbaa !37
  %i.aiw = zext i16 %i.aiv to i32
  %i.aix = and i32 %i.aiw, %i.ais
  %i.aiy = load i32, ptr %i.ap, align 4, !tbaa !23
  %i.aiz = add i32 %i.aix, %i.aiy                 ; 2 uses
  store i32 %i.aiz, ptr %i.ap, align 4, !tbaa !23
  %i.aja = lshr i64 %.sroa.5684.19.lcssa, %i.ait
  %i.ajb = sub nuw i32 %.sroa.130.19.lcssa, %i.agw
  store i32 5, ptr %i.ag, align 8, !tbaa !22
  br label %bb.eh

bb.eh:                                            ; preds = %._crit_edge1711, %._crit_edge
  %i.ajc = phi i32 [ %i.aiz, %._crit_edge ], [ %.pre1712, %._crit_edge1711 ] ; 2 uses
  %.sroa.265.21 = phi i32 [ %.sroa.265.20.lcssa, %._crit_edge ], [ %.sroa.265.0, %._crit_edge1711 ] ; 2 uses
  %.sroa.219199.21 = phi ptr [ %.sroa.219199.20.lcssa, %._crit_edge ], [ %.sroa.219199.0, %._crit_edge1711 ] ; 2 uses
  %.sroa.130.20 = phi i32 [ %i.ajb, %._crit_edge ], [ %.sroa.130.0, %._crit_edge1711 ] ; 2 uses
  %.sroa.5684.20 = phi i64 [ %i.aja, %._crit_edge ], [ %.sroa.5684.0, %._crit_edge1711 ] ; 2 uses
  %i.ajd = ptrtoint ptr %.sroa.323276.0 to i64
  %i.aje = sub i64 %i.ajd, %i.al                  ; 2 uses
  %i.ajf = trunc i64 %i.aje to i32
  %i.ajg = icmp ugt i32 %i.ajc, %i.ajf
  br i1 %i.ajg, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.ajh = load ptr, ptr %i.aj, align 8, !tbaa !21
  br label %bb.ej

bb.ej:                                            ; preds = %bb.eh, %bb.ei
  %.sink2103 = phi i64 [ %i.aje, %bb.ei ], [ 0, %bb.eh ]
  %.sroa.323276.0.sink = phi ptr [ %i.ajh, %bb.ei ], [ %.sroa.323276.0, %bb.eh ]
  %.pr964 = load i32, ptr %i.i, align 8, !tbaa !47
  %.not7811212 = icmp eq i32 %.pr964, 0
  br i1 %.not7811212, label %._crit_edge1218, label %.lr.ph1217.preheader

.lr.ph1217.preheader:                             ; preds = %bb.ej
  %i.aji = zext i32 %i.ajc to i64
  %i.ajj = sub nsw i64 %.sink2103, %i.aji
  %i.ajk = getelementptr inbounds i8, ptr %.sroa.323276.0.sink, i64 %i.ajj
  br label %.lr.ph1217

.lr.ph1217:                                       ; preds = %.lr.ph1217.preheader, %bb.et
  %.sroa.323276.51215 = phi ptr [ %i.amx, %bb.et ], [ %.sroa.323276.0, %.lr.ph1217.preheader ] ; 4 uses
  %.sroa.407.51214 = phi i32 [ %i.amy, %bb.et ], [ %.sroa.407.0, %.lr.ph1217.preheader ] ; 2 uses
  %.sroa.462381.01213 = phi ptr [ %spec.select810, %bb.et ], [ %i.ajk, %.lr.ph1217.preheader ] ; 2 uses
  %i.ajl = icmp eq i32 %.sroa.407.51214, 0
  br i1 %i.ajl, label %bb.ek, label %bb.et

bb.ek:                                            ; preds = %.lr.ph1217
  %i.ajm = load ptr, ptr %i.aj, align 8, !tbaa !21 ; 2 uses
  %i.ajn = icmp ne ptr %.sroa.323276.51215, %i.ajm
  %.pre1713 = load ptr, ptr %i.s, align 8, !tbaa !20 ; 7 uses
  %.not782 = icmp eq ptr %.pre1713, %i.ak
  %or.cond2105 = select i1 %i.ajn, i1 true, i1 %.not782
  br i1 %or.cond2105, label %.thread966, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.ajo = icmp ult ptr %i.ak, %.pre1713
  %i.ajp = ptrtoint ptr %.pre1713 to i64
  %i.ajq = add i64 %i.ajp, %i.an
  %i.ajr = ptrtoint ptr %.sroa.323276.51215 to i64
  %i.ajs = sub i64 %i.ajr, %i.al
  %i.ajt = select i1 %i.ajo, i64 %i.ajq, i64 %i.ajs
  %i.aju = trunc i64 %i.ajt to i32                ; 2 uses
  %i.ajv = icmp eq i32 %i.aju, 0
  br i1 %i.ajv, label %.thread966, label %bb.et

.thread966:                                       ; preds = %bb.ek, %bb.el
  %.sroa.323276.6969 = phi ptr [ %i.ak, %bb.el ], [ %.sroa.323276.51215, %bb.ek ] ; 3 uses
  store ptr %.sroa.323276.6969, ptr %i.q, align 8, !tbaa !19
  %.not.peel.i907 = icmp ugt ptr %.pre1713, %.sroa.323276.6969
  %spec.select975 = select i1 %.not.peel.i907, ptr %i.ajm, ptr %.sroa.323276.6969
  %i.ajw = ptrtoint ptr %spec.select975 to i64
  %i.ajx = ptrtoint ptr %.pre1713 to i64
  %i.ajy = sub i64 %i.ajw, %i.ajx
  %i.ajz = trunc i64 %i.ajy to i32
  %i.aka = load i32, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %..peel.i908 = tail call i32 @llvm.umin.i32(i32 %i.aka, i32 %i.ajz) ; 2 uses
  %i.akb = sub i32 %i.aka, %..peel.i908
  store i32 %i.akb, ptr %i.ah, align 8, !tbaa !27
  %i.akc = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.akd = zext i32 %..peel.i908 to i64           ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.akc, ptr align 1 %.pre1713, i64 %i.akd, i1 false)
  %i.ake = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ake, i64 %i.akd ; 4 uses
  store ptr %i.akf, ptr %i.ai, align 8, !tbaa !28
  %i.akg = getelementptr inbounds nuw i8, ptr %.pre1713, i64 %i.akd ; 5 uses
  %i.akh = load ptr, ptr %i.aj, align 8, !tbaa !21 ; 2 uses
  %i.aki = icmp eq ptr %i.akg, %i.akh
  br i1 %i.aki, label %bb.em, label %inflate_flush.exit914

bb.em:                                            ; preds = %.thread966
  %i.akj = load ptr, ptr %i.q, align 8, !tbaa !19 ; 2 uses
  %i.akk = icmp eq ptr %i.akj, %i.akg
  br i1 %i.akk, label %.peel.next.i910.sink.split, label %.peel.next.i910.preheader

.peel.next.i910.sink.split:                       ; preds = %bb.em, %bb.eo
  %.ph2407 = phi ptr [ %i.akv, %bb.eo ], [ %i.akf, %bb.em ]
  %.ph2408 = phi ptr [ %i.akw, %bb.eo ], [ %i.akg, %bb.em ]
  store ptr %i.ak, ptr %i.q, align 8, !tbaa !19
  br label %.peel.next.i910.preheader

.peel.next.i910.preheader:                        ; preds = %bb.em, %.peel.next.i910.sink.split
  %.ph2512 = phi ptr [ %.ph2407, %.peel.next.i910.sink.split ], [ %i.akf, %bb.em ]
  %.ph2513 = phi ptr [ %.ph2408, %.peel.next.i910.sink.split ], [ %i.akg, %bb.em ]
  %.ph2514 = phi ptr [ %i.ak, %.peel.next.i910.sink.split ], [ %i.akj, %bb.em ]
  br label %.peel.next.i910

.peel.next.i910:                                  ; preds = %.peel.next.i910.preheader, %bb.en
  %i.akl = phi ptr [ %i.akv, %bb.en ], [ %.ph2512, %.peel.next.i910.preheader ]
  %i.akm = phi ptr [ %i.akw, %bb.en ], [ %.ph2513, %.peel.next.i910.preheader ]
  %i.akn = phi ptr [ %i.akz, %bb.en ], [ %.ph2514, %.peel.next.i910.preheader ] ; 2 uses
  %.not.i911 = icmp ugt ptr %i.ak, %i.akn
  %spec.select.i912 = select i1 %.not.i911, ptr %i.akm, ptr %i.akn
  %i.ako = ptrtoint ptr %spec.select.i912 to i64
  %i.akp = sub i64 %i.ako, %i.al
  %i.akq = trunc i64 %i.akp to i32
  %i.akr = load i32, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %..i913 = tail call i32 @llvm.umin.i32(i32 %i.akr, i32 %i.akq) ; 2 uses
  %i.aks = sub i32 %i.akr, %..i913
  store i32 %i.aks, ptr %i.ah, align 8, !tbaa !27
  %i.akt = zext i32 %..i913 to i64                ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.akl, ptr nonnull align 8 %i.ak, i64 %i.akt, i1 false)
  %i.aku = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.akv = getelementptr inbounds nuw i8, ptr %i.aku, i64 %i.akt ; 4 uses
  store ptr %i.akv, ptr %i.ai, align 8, !tbaa !28
  %i.akw = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.akt ; 5 uses
  %i.akx = load ptr, ptr %i.aj, align 8, !tbaa !21 ; 2 uses
  %i.aky = icmp eq ptr %i.akw, %i.akx
  br i1 %i.aky, label %bb.en, label %inflate_flush.exit914

bb.en:                                            ; preds = %.peel.next.i910
  %i.akz = load ptr, ptr %i.q, align 8, !tbaa !19 ; 2 uses
  %i.ala = icmp eq ptr %i.akz, %i.akw
  br i1 %i.ala, label %bb.eo, label %.peel.next.i910, !llvm.loop !29

bb.eo:                                            ; preds = %bb.en
  br label %.peel.next.i910.sink.split, !llvm.loop !29

inflate_flush.exit914:                            ; preds = %.peel.next.i910, %.thread966
  %i.alb = phi ptr [ %i.akf, %.thread966 ], [ %i.akv, %.peel.next.i910 ]
  %i.alc = phi ptr [ %i.akh, %.thread966 ], [ %i.akx, %.peel.next.i910 ] ; 4 uses
  %.lcssa.i909 = phi ptr [ %i.akg, %.thread966 ], [ %i.akw, %.peel.next.i910 ] ; 9 uses
  store ptr %.lcssa.i909, ptr %i.s, align 8, !tbaa !20
  %i.ald = load ptr, ptr %i.q, align 8, !tbaa !19 ; 4 uses
  %i.ale = icmp ult ptr %i.ald, %.lcssa.i909      ; 3 uses
  %i.alf = ptrtoint ptr %i.ald to i64             ; 2 uses
  %i.alg = ptrtoint ptr %i.alc to i64             ; 2 uses
  %i.alh = sub i64 %i.alg, %i.alf
  %.pre1729 = ptrtoint ptr %.lcssa.i909 to i64
  %i.ali = ptrtoint ptr %.lcssa.i909 to i64       ; 2 uses
  %i.alj = xor i64 %i.alf, -1
  %i.alk = add i64 %i.alj, %i.ali
  %.pre1731 = ptrtoint ptr %i.alc to i64
  %.pre-phi1732 = select i1 %i.ale, i64 %.pre1731, i64 %i.alg
  %.pre-phi1730 = select i1 %i.ale, i64 %i.ali, i64 %.pre1729 ; 2 uses
  %i.all = select i1 %i.ale, i64 %i.alk, i64 %i.alh
  %i.alm = icmp ne ptr %i.ald, %i.alc
  %.not783 = icmp eq ptr %.lcssa.i909, %i.ak
  %or.cond976 = or i1 %.not783, %i.alm            ; 2 uses
  %i.aln = icmp ult ptr %i.ak, %.lcssa.i909
  %i.alo = add i64 %.pre-phi1730, %i.an
  %i.alp = sub i64 %.pre-phi1732, %i.al
  %i.alq = select i1 %i.aln, i64 %i.alo, i64 %i.alp
  %.sroa.407.7.in = select i1 %or.cond976, i64 %i.all, i64 %i.alq
  %.sroa.323276.7 = select i1 %or.cond976, ptr %i.ald, ptr %i.ak ; 4 uses
  %.sroa.407.7 = trunc i64 %.sroa.407.7.in to i32 ; 2 uses
  %i.alr = icmp eq i32 %.sroa.407.7, 0
  br i1 %i.alr, label %bb.ep, label %bb.et

bb.ep:                                            ; preds = %inflate_flush.exit914
  store i64 %.sroa.5684.20, ptr %i.m, align 8, !tbaa !17
  store i32 %.sroa.130.20, ptr %i.o, align 4, !tbaa !18
  store i32 %.sroa.265.21, ptr %i.k, align 8, !tbaa !16
  store ptr %.sroa.219199.21, ptr %0, align 8, !tbaa !8
  store ptr %.sroa.323276.7, ptr %i.q, align 8, !tbaa !19
  %.not.peel.i915 = icmp ugt ptr %.lcssa.i909, %.sroa.323276.7
  %spec.select977 = select i1 %.not.peel.i915, ptr %i.alc, ptr %.sroa.323276.7
  %i.als = ptrtoint ptr %spec.select977 to i64
  %i.alt = sub i64 %i.als, %.pre-phi1730
  %i.alu = trunc i64 %i.alt to i32
  %i.alv = load i32, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %..peel.i916 = tail call i32 @llvm.umin.i32(i32 %i.alv, i32 %i.alu) ; 2 uses
  %i.alw = sub i32 %i.alv, %..peel.i916
  store i32 %i.alw, ptr %i.ah, align 8, !tbaa !27
  %i.alx = zext i32 %..peel.i916 to i64           ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.alb, ptr align 1 %.lcssa.i909, i64 %i.alx, i1 false)
  %i.aly = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.alz = getelementptr inbounds nuw i8, ptr %i.aly, i64 %i.alx ; 3 uses
  store ptr %i.alz, ptr %i.ai, align 8, !tbaa !28
  %i.ama = getelementptr inbounds nuw i8, ptr %.lcssa.i909, i64 %i.alx ; 5 uses
  %i.amb = load ptr, ptr %i.aj, align 8, !tbaa !21
  %i.amc = icmp eq ptr %i.ama, %i.amb
  br i1 %i.amc, label %bb.eq, label %inflate_flush.exit922

bb.eq:                                            ; preds = %bb.ep
  %i.amd = load ptr, ptr %i.q, align 8, !tbaa !19 ; 2 uses
  %i.ame = icmp eq ptr %i.amd, %i.ama
  br i1 %i.ame, label %.peel.next.i918.sink.split, label %.peel.next.i918.preheader

.peel.next.i918.sink.split:                       ; preds = %bb.eq, %bb.es
  %.ph2409 = phi ptr [ %i.amp, %bb.es ], [ %i.alz, %bb.eq ]
  %.ph2410 = phi ptr [ %i.amq, %bb.es ], [ %i.ama, %bb.eq ]
  store ptr %i.ak, ptr %i.q, align 8, !tbaa !19
  br label %.peel.next.i918.preheader

.peel.next.i918.preheader:                        ; preds = %bb.eq, %.peel.next.i918.sink.split
  %.ph2505 = phi ptr [ %.ph2409, %.peel.next.i918.sink.split ], [ %i.alz, %bb.eq ]
  %.ph2506 = phi ptr [ %.ph2410, %.peel.next.i918.sink.split ], [ %i.ama, %bb.eq ]
  %.ph2507 = phi ptr [ %i.ak, %.peel.next.i918.sink.split ], [ %i.amd, %bb.eq ]
  br label %.peel.next.i918

.peel.next.i918:                                  ; preds = %.peel.next.i918.preheader, %bb.er
  %i.amf = phi ptr [ %i.amp, %bb.er ], [ %.ph2505, %.peel.next.i918.preheader ]
  %i.amg = phi ptr [ %i.amq, %bb.er ], [ %.ph2506, %.peel.next.i918.preheader ]
  %i.amh = phi ptr [ %i.amt, %bb.er ], [ %.ph2507, %.peel.next.i918.preheader ] ; 2 uses
  %.not.i919 = icmp ugt ptr %i.ak, %i.amh
  %spec.select.i920 = select i1 %.not.i919, ptr %i.amg, ptr %i.amh
  %i.ami = ptrtoint ptr %spec.select.i920 to i64
  %i.amj = sub i64 %i.ami, %i.al
  %i.amk = trunc i64 %i.amj to i32
  %i.aml = load i32, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %..i921 = tail call i32 @llvm.umin.i32(i32 %i.aml, i32 %i.amk) ; 2 uses
  %i.amm = sub i32 %i.aml, %..i921
  store i32 %i.amm, ptr %i.ah, align 8, !tbaa !27
  %i.amn = zext i32 %..i921 to i64                ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.amf, ptr nonnull align 8 %i.ak, i64 %i.amn, i1 false)
  %i.amo = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.amp = getelementptr inbounds nuw i8, ptr %i.amo, i64 %i.amn ; 3 uses
  store ptr %i.amp, ptr %i.ai, align 8, !tbaa !28
  %i.amq = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.amn ; 5 uses
  %i.amr = load ptr, ptr %i.aj, align 8, !tbaa !21
  %i.ams = icmp eq ptr %i.amq, %i.amr
  br i1 %i.ams, label %bb.er, label %inflate_flush.exit922

bb.er:                                            ; preds = %.peel.next.i918
  %i.amt = load ptr, ptr %i.q, align 8, !tbaa !19 ; 2 uses
  %i.amu = icmp eq ptr %i.amt, %i.amq
  br i1 %i.amu, label %bb.es, label %.peel.next.i918, !llvm.loop !29

bb.es:                                            ; preds = %bb.er
  br label %.peel.next.i918.sink.split, !llvm.loop !29

inflate_flush.exit922:                            ; preds = %.peel.next.i918, %bb.ep
  %.lcssa.i917 = phi ptr [ %i.ama, %bb.ep ], [ %i.amq, %.peel.next.i918 ]
  store ptr %.lcssa.i917, ptr %i.s, align 8, !tbaa !20
  br label %.thread953

bb.et:                                            ; preds = %bb.el, %inflate_flush.exit914, %.lr.ph1217
  %.sroa.407.8 = phi i32 [ %.sroa.407.7, %inflate_flush.exit914 ], [ %i.aju, %bb.el ], [ %.sroa.407.51214, %.lr.ph1217 ]
  %.sroa.323276.8 = phi ptr [ %.sroa.323276.7, %inflate_flush.exit914 ], [ %i.ak, %bb.el ], [ %.sroa.323276.51215, %.lr.ph1217 ] ; 2 uses
  %i.amv = getelementptr inbounds nuw i8, ptr %.sroa.462381.01213, i64 1 ; 2 uses
  %i.amw = load i8, ptr %.sroa.462381.01213, align 1, !tbaa !23
  %i.amx = getelementptr inbounds nuw i8, ptr %.sroa.323276.8, i64 1 ; 2 uses
  store i8 %i.amw, ptr %.sroa.323276.8, align 1, !tbaa !23
  %i.amy = add i32 %.sroa.407.8, -1               ; 2 uses
  %i.amz = load ptr, ptr %i.aj, align 8, !tbaa !21
  %i.ana = icmp eq ptr %i.amv, %i.amz
  %spec.select810 = select i1 %i.ana, ptr %i.ak, ptr %i.amv
  %i.anb = load i32, ptr %i.i, align 8, !tbaa !47
  %i.anc = add i32 %i.anb, -1                     ; 2 uses
  store i32 %i.anc, ptr %i.i, align 8, !tbaa !47
  %.not781 = icmp eq i32 %i.anc, 0
  br i1 %.not781, label %._crit_edge1218, label %.lr.ph1217

._crit_edge1218:                                  ; preds = %bb.et, %bb.ej
  %.sroa.407.5.lcssa = phi i32 [ %.sroa.407.0, %bb.ej ], [ %i.amy, %bb.et ]
  %.sroa.323276.5.lcssa = phi ptr [ %.sroa.323276.0, %bb.ej ], [ %i.amx, %bb.et ]
  store i32 0, ptr %i.ag, align 8, !tbaa !22
  br label %.thread943.backedge

bb.eu:                                            ; preds = %.thread943
  %i.and = icmp eq i32 %.sroa.407.0, 0
  br i1 %i.and, label %bb.ev, label %bb.fb

bb.ev:                                            ; preds = %bb.eu
  %i.ane = load ptr, ptr %i.aj, align 8, !tbaa !21 ; 2 uses
  %i.anf = icmp ne ptr %.sroa.323276.0, %i.ane
  %.pre = load ptr, ptr %i.s, align 8, !tbaa !20  ; 7 uses
  %.not779 = icmp eq ptr %.pre, %i.ak
  %or.cond2106 = select i1 %i.anf, i1 true, i1 %.not779
  br i1 %or.cond2106, label %.thread971, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.ang = icmp ult ptr %i.ak, %.pre
  %i.anh = ptrtoint ptr %.pre to i64
  %i.ani = add i64 %i.anh, %i.an
  %i.anj = ptrtoint ptr %.sroa.323276.0 to i64
  %i.ank = sub i64 %i.anj, %i.al
  %i.anl = select i1 %i.ang, i64 %i.ani, i64 %i.ank
  %i.anm = trunc i64 %i.anl to i32                ; 2 uses
  %i.ann = icmp eq i32 %i.anm, 0
  br i1 %i.ann, label %.thread971, label %bb.fb

.thread971:                                       ; preds = %bb.ev, %bb.ew
  %.sroa.323276.9974 = phi ptr [ %i.ak, %bb.ew ], [ %.sroa.323276.0, %bb.ev ] ; 3 uses
  store ptr %.sroa.323276.9974, ptr %i.q, align 8, !tbaa !19
  %.not.peel.i923 = icmp ugt ptr %.pre, %.sroa.323276.9974
  %spec.select978 = select i1 %.not.peel.i923, ptr %i.ane, ptr %.sroa.323276.9974
  %i.ano = ptrtoint ptr %spec.select978 to i64
  %i.anp = ptrtoint ptr %.pre to i64
  %i.anq = sub i64 %i.ano, %i.anp
  %i.anr = trunc i64 %i.anq to i32
  %i.ans = load i32, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %..peel.i924 = tail call i32 @llvm.umin.i32(i32 %i.ans, i32 %i.anr) ; 2 uses
  %i.ant = sub i32 %i.ans, %..peel.i924
  store i32 %i.ant, ptr %i.ah, align 8, !tbaa !27
  %i.anu = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.anv = zext i32 %..peel.i924 to i64           ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.anu, ptr align 1 %.pre, i64 %i.anv, i1 false)
  %i.anw = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anw, i64 %i.anv ; 3 uses
  store ptr %i.anx, ptr %i.ai, align 8, !tbaa !28
  %i.any = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.anv ; 5 uses
  %i.anz = load ptr, ptr %i.aj, align 8, !tbaa !21 ; 2 uses
  %i.aoa = icmp eq ptr %i.any, %i.anz
  br i1 %i.aoa, label %bb.ex, label %inflate_flush.exit930

bb.ex:                                            ; preds = %.thread971
  %i.aob = load ptr, ptr %i.q, align 8, !tbaa !19 ; 2 uses
  %i.aoc = icmp eq ptr %i.aob, %i.any
  br i1 %i.aoc, label %.peel.next.i926.sink.split, label %.peel.next.i926.preheader

.peel.next.i926.sink.split:                       ; preds = %bb.ex, %bb.ez
  %.ph2411 = phi ptr [ %i.aon, %bb.ez ], [ %i.anx, %bb.ex ]
  %.ph2412 = phi ptr [ %i.aoo, %bb.ez ], [ %i.any, %bb.ex ]
  store ptr %i.ak, ptr %i.q, align 8, !tbaa !19
  br label %.peel.next.i926.preheader

.peel.next.i926.preheader:                        ; preds = %bb.ex, %.peel.next.i926.sink.split
  %.ph2517 = phi ptr [ %.ph2411, %.peel.next.i926.sink.split ], [ %i.anx, %bb.ex ]
  %.ph2518 = phi ptr [ %.ph2412, %.peel.next.i926.sink.split ], [ %i.any, %bb.ex ]
  %.ph2519 = phi ptr [ %i.ak, %.peel.next.i926.sink.split ], [ %i.aob, %bb.ex ]
  br label %.peel.next.i926

.peel.next.i926:                                  ; preds = %.peel.next.i926.preheader, %bb.ey
  %i.aod = phi ptr [ %i.aon, %bb.ey ], [ %.ph2517, %.peel.next.i926.preheader ]
  %i.aoe = phi ptr [ %i.aoo, %bb.ey ], [ %.ph2518, %.peel.next.i926.preheader ]
  %i.aof = phi ptr [ %i.aor, %bb.ey ], [ %.ph2519, %.peel.next.i926.preheader ] ; 2 uses
  %.not.i927 = icmp ugt ptr %i.ak, %i.aof
  %spec.select.i928 = select i1 %.not.i927, ptr %i.aoe, ptr %i.aof
  %i.aog = ptrtoint ptr %spec.select.i928 to i64
  %i.aoh = sub i64 %i.aog, %i.al
  %i.aoi = trunc i64 %i.aoh to i32
  %i.aoj = load i32, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %..i929 = tail call i32 @llvm.umin.i32(i32 %i.aoj, i32 %i.aoi) ; 2 uses
  %i.aok = sub i32 %i.aoj, %..i929
  store i32 %i.aok, ptr %i.ah, align 8, !tbaa !27
  %i.aol = zext i32 %..i929 to i64                ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aod, ptr nonnull align 8 %i.ak, i64 %i.aol, i1 false)
  %i.aom = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aom, i64 %i.aol ; 3 uses
  store ptr %i.aon, ptr %i.ai, align 8, !tbaa !28
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.aol ; 5 uses
  %i.aop = load ptr, ptr %i.aj, align 8, !tbaa !21 ; 2 uses
  %i.aoq = icmp eq ptr %i.aoo, %i.aop
  br i1 %i.aoq, label %bb.ey, label %inflate_flush.exit930

bb.ey:                                            ; preds = %.peel.next.i926
  %i.aor = load ptr, ptr %i.q, align 8, !tbaa !19 ; 2 uses
  %i.aos = icmp eq ptr %i.aor, %i.aoo
  br i1 %i.aos, label %bb.ez, label %.peel.next.i926, !llvm.loop !29

bb.ez:                                            ; preds = %bb.ey
  br label %.peel.next.i926.sink.split, !llvm.loop !29

inflate_flush.exit930:                            ; preds = %.peel.next.i926, %.thread971
  %i.aot = phi ptr [ %i.anz, %.thread971 ], [ %i.aop, %.peel.next.i926 ] ; 3 uses
  %.lcssa.i925 = phi ptr [ %i.any, %.thread971 ], [ %i.aoo, %.peel.next.i926 ] ; 6 uses
  store ptr %.lcssa.i925, ptr %i.s, align 8, !tbaa !20
  %i.aou = load ptr, ptr %i.q, align 8, !tbaa !19 ; 4 uses
  %i.aov = icmp ult ptr %i.aou, %.lcssa.i925      ; 3 uses
  %i.aow = ptrtoint ptr %i.aou to i64             ; 2 uses
  %i.aox = ptrtoint ptr %i.aot to i64             ; 2 uses
  %i.aoy = sub i64 %i.aox, %i.aow
  %.pre1733 = ptrtoint ptr %.lcssa.i925 to i64
  %i.aoz = ptrtoint ptr %.lcssa.i925 to i64       ; 2 uses
  %i.apa = xor i64 %i.aow, -1
  %i.apb = add i64 %i.apa, %i.aoz
  %.pre1735 = ptrtoint ptr %i.aot to i64
  %.pre-phi1736 = select i1 %i.aov, i64 %.pre1735, i64 %i.aox
  %.pre-phi1734 = select i1 %i.aov, i64 %i.aoz, i64 %.pre1733
  %i.apc = select i1 %i.aov, i64 %i.apb, i64 %i.aoy
  %i.apd = icmp ne ptr %i.aou, %i.aot
  %.not780 = icmp eq ptr %.lcssa.i925, %i.ak
  %or.cond979 = select i1 %i.apd, i1 true, i1 %.not780 ; 2 uses
  %i.ape = icmp ult ptr %i.ak, %.lcssa.i925
  %i.apf = add i64 %.pre-phi1734, %i.an
  %i.apg = sub i64 %.pre-phi1736, %i.al
  %i.aph = select i1 %i.ape, i64 %i.apf, i64 %i.apg
  %.sroa.407.10.in = select i1 %or.cond979, i64 %i.apc, i64 %i.aph
  %.sroa.323276.10 = select i1 %or.cond979, ptr %i.aou, ptr %i.ak ; 2 uses
  %.sroa.407.10 = trunc i64 %.sroa.407.10.in to i32 ; 2 uses
  %i.api = icmp eq i32 %.sroa.407.10, 0
  br i1 %i.api, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %inflate_flush.exit930
  store i64 %.sroa.5684.0, ptr %i.m, align 8, !tbaa !17
  store i32 %.sroa.130.0, ptr %i.o, align 4, !tbaa !18
  store i32 %.sroa.265.0, ptr %i.k, align 8, !tbaa !16
  store ptr %.sroa.219199.0, ptr %0, align 8, !tbaa !8
  store ptr %.sroa.323276.10, ptr %i.q, align 8, !tbaa !19
  tail call fastcc void @inflate_flush(ptr noundef nonnull %0)
  br label %.thread953

bb.fb:                                            ; preds = %bb.ew, %inflate_flush.exit930, %bb.eu
  %.sroa.407.11 = phi i32 [ %.sroa.407.10, %inflate_flush.exit930 ], [ %i.anm, %bb.ew ], [ %.sroa.407.0, %bb.eu ]
  %.sroa.323276.11 = phi ptr [ %.sroa.323276.10, %inflate_flush.exit930 ], [ %i.ak, %bb.ew ], [ %.sroa.323276.0, %bb.eu ] ; 2 uses
  %i.apj = load i32, ptr %i.ao, align 8, !tbaa !23
  %i.apk = trunc i32 %i.apj to i8
  %i.apl = getelementptr inbounds nuw i8, ptr %.sroa.323276.11, i64 1
  store i8 %i.apk, ptr %.sroa.323276.11, align 1, !tbaa !23
  %i.apm = add i32 %.sroa.407.11, -1
  store i32 0, ptr %i.ag, align 8, !tbaa !22
  br label %.thread943.backedge

bb.fc:                                            ; preds = %.thread943
  %i.apn = icmp ugt i32 %.sroa.130.0, 7
  br i1 %i.apn, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.apo = add i32 %.sroa.130.0, -8
  %i.app = add i32 %.sroa.265.0, 1
  %i.apq = getelementptr inbounds i8, ptr %.sroa.219199.0, i64 -1
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fc, %bb.fd, %.thread943
  %.sroa.265.22 = phi i32 [ %i.app, %bb.fd ], [ %.sroa.265.0, %bb.fc ], [ %.sroa.265.0, %.thread943 ] ; 3 uses
  %.sroa.219199.22 = phi ptr [ %i.apq, %bb.fd ], [ %.sroa.219199.0, %bb.fc ], [ %.sroa.219199.0, %.thread943 ] ; 3 uses
  %.sroa.130.21 = phi i32 [ %i.apo, %bb.fd ], [ %.sroa.130.0, %bb.fc ], [ %.sroa.130.0, %.thread943 ] ; 3 uses
  store ptr %.sroa.323276.0, ptr %i.q, align 8, !tbaa !19
  %i.apr = load ptr, ptr %i.s, align 8, !tbaa !20 ; 4 uses
  %.not.peel.i931 = icmp ugt ptr %i.apr, %.sroa.323276.0
  br i1 %.not.peel.i931, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.aps = load ptr, ptr %i.aj, align 8, !tbaa !21
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %i.apt = phi ptr [ %i.aps, %bb.ff ], [ %.sroa.323276.0, %bb.fe ]
  %i.apu = ptrtoint ptr %i.apt to i64
  %i.apv = ptrtoint ptr %i.apr to i64
  %i.apw = sub i64 %i.apu, %i.apv
  %i.apx = trunc i64 %i.apw to i32
  %i.apy = load i32, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %..peel.i932 = tail call i32 @llvm.umin.i32(i32 %i.apy, i32 %i.apx) ; 2 uses
  %i.apz = sub i32 %i.apy, %..peel.i932
  store i32 %i.apz, ptr %i.ah, align 8, !tbaa !27
  %i.aqa = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.aqb = zext i32 %..peel.i932 to i64           ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aqa, ptr align 1 %i.apr, i64 %i.aqb, i1 false)
  %i.aqc = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aqc, i64 %i.aqb ; 3 uses
  store ptr %i.aqd, ptr %i.ai, align 8, !tbaa !28
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.apr, i64 %i.aqb ; 5 uses
  %i.aqf = load ptr, ptr %i.aj, align 8, !tbaa !21 ; 2 uses
  %i.aqg = icmp eq ptr %i.aqe, %i.aqf
  br i1 %i.aqg, label %bb.fh, label %inflate_flush.exit938

bb.fh:                                            ; preds = %bb.fg
  %i.aqh = load ptr, ptr %i.q, align 8, !tbaa !19 ; 2 uses
  %i.aqi = icmp eq ptr %i.aqh, %i.aqe
  br i1 %i.aqi, label %.peel.next.i934.sink.split, label %.peel.next.i934.preheader

.peel.next.i934.sink.split:                       ; preds = %bb.fh, %bb.fj
  %.ph2413 = phi ptr [ %i.aqt, %bb.fj ], [ %i.aqd, %bb.fh ]
  %.ph2414 = phi ptr [ %i.aqu, %bb.fj ], [ %i.aqe, %bb.fh ]
  store ptr %i.ak, ptr %i.q, align 8, !tbaa !19
  br label %.peel.next.i934.preheader

.peel.next.i934.preheader:                        ; preds = %bb.fh, %.peel.next.i934.sink.split
  %.ph2520 = phi ptr [ %.ph2413, %.peel.next.i934.sink.split ], [ %i.aqd, %bb.fh ]
  %.ph2521 = phi ptr [ %.ph2414, %.peel.next.i934.sink.split ], [ %i.aqe, %bb.fh ]
  %.ph2522 = phi ptr [ %i.ak, %.peel.next.i934.sink.split ], [ %i.aqh, %bb.fh ]
  br label %.peel.next.i934

.peel.next.i934:                                  ; preds = %.peel.next.i934.preheader, %bb.fi
  %i.aqj = phi ptr [ %i.aqt, %bb.fi ], [ %.ph2520, %.peel.next.i934.preheader ]
  %i.aqk = phi ptr [ %i.aqu, %bb.fi ], [ %.ph2521, %.peel.next.i934.preheader ]
  %i.aql = phi ptr [ %i.aqx, %bb.fi ], [ %.ph2522, %.peel.next.i934.preheader ] ; 2 uses
  %.not.i935 = icmp ugt ptr %i.ak, %i.aql
  %spec.select.i936 = select i1 %.not.i935, ptr %i.aqk, ptr %i.aql
  %i.aqm = ptrtoint ptr %spec.select.i936 to i64
  %i.aqn = sub i64 %i.aqm, %i.al
  %i.aqo = trunc i64 %i.aqn to i32
  %i.aqp = load i32, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %..i937 = tail call i32 @llvm.umin.i32(i32 %i.aqp, i32 %i.aqo) ; 2 uses
  %i.aqq = sub i32 %i.aqp, %..i937
  store i32 %i.aqq, ptr %i.ah, align 8, !tbaa !27
  %i.aqr = zext i32 %..i937 to i64                ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aqj, ptr nonnull align 8 %i.ak, i64 %i.aqr, i1 false)
  %i.aqs = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqs, i64 %i.aqr ; 3 uses
  store ptr %i.aqt, ptr %i.ai, align 8, !tbaa !28
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.aqr ; 5 uses
  %i.aqv = load ptr, ptr %i.aj, align 8, !tbaa !21 ; 2 uses
  %i.aqw = icmp eq ptr %i.aqu, %i.aqv
  br i1 %i.aqw, label %bb.fi, label %inflate_flush.exit938

bb.fi:                                            ; preds = %.peel.next.i934
  %i.aqx = load ptr, ptr %i.q, align 8, !tbaa !19 ; 2 uses
  %i.aqy = icmp eq ptr %i.aqx, %i.aqu
  br i1 %i.aqy, label %bb.fj, label %.peel.next.i934, !llvm.loop !29

bb.fj:                                            ; preds = %bb.fi
  br label %.peel.next.i934.sink.split, !llvm.loop !29

inflate_flush.exit938:                            ; preds = %.peel.next.i934, %bb.fg
  %i.aqz = phi ptr [ %i.aqf, %bb.fg ], [ %i.aqv, %.peel.next.i934 ]
  %.lcssa.i933 = phi ptr [ %i.aqe, %bb.fg ], [ %i.aqu, %.peel.next.i934 ] ; 2 uses
  store ptr %.lcssa.i933, ptr %i.s, align 8, !tbaa !20
  %i.ara = load ptr, ptr %i.q, align 8, !tbaa !19 ; 3 uses
  %.not = icmp eq ptr %i.ara, %.lcssa.i933
  br i1 %.not, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %inflate_flush.exit938
  store i64 %.sroa.5684.0, ptr %i.m, align 8, !tbaa !17
  store i32 %.sroa.130.21, ptr %i.o, align 4, !tbaa !18
  store i32 %.sroa.265.22, ptr %i.k, align 8, !tbaa !16
  store ptr %.sroa.219199.22, ptr %0, align 8, !tbaa !8
  tail call fastcc void @inflate_flush(ptr noundef nonnull %0)
  br label %.thread953

bb.fl:                                            ; preds = %inflate_flush.exit938
  %i.arb = ptrtoint ptr %i.aqz to i64
  %i.arc = ptrtoint ptr %i.ara to i64
  %i.ard = sub i64 %i.arb, %i.arc
  %i.are = trunc i64 %i.ard to i32
  %i.arf = load i32, ptr %i.am, align 8, !tbaa !31 ; 2 uses
  store i32 %i.arf, ptr %i.ag, align 8, !tbaa !22
  %i.arg = icmp eq i32 %i.arf, 8
  br i1 %i.arg, label %.thread943.backedge, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  store i64 %.sroa.5684.0, ptr %i.m, align 8, !tbaa !17
  store i32 %.sroa.130.21, ptr %i.o, align 4, !tbaa !18
  store i32 %.sroa.265.22, ptr %i.k, align 8, !tbaa !16
  store ptr %.sroa.219199.22, ptr %0, align 8, !tbaa !8
  tail call fastcc void @inflate_flush(ptr noundef nonnull %0)
  br label %.thread953

bb.fn:                                            ; preds = %.thread943, %bb.dz, %bb.dk, %bb.j
  %.sroa.265.23 = phi i32 [ %.sroa.265.0, %.thread943 ], [ %.sroa.265.1.lcssa, %bb.j ], [ %.sroa.265.16.lcssa, %bb.dk ], [ %.sroa.265.19.lcssa, %bb.dz ]
  %.sroa.219199.23 = phi ptr [ %.sroa.219199.0, %.thread943 ], [ %.sroa.219199.1.lcssa, %bb.j ], [ %.sroa.219199.16.lcssa, %bb.dk ], [ %.sroa.219199.19.lcssa, %bb.dz ]
  %.sroa.130.22 = phi i32 [ %.sroa.130.0, %.thread943 ], [ %i.dm, %bb.j ], [ %i.aay, %bb.dk ], [ %i.agi, %bb.dz ]
  %.sroa.5684.21 = phi i64 [ %.sroa.5684.0, %.thread943 ], [ %i.dl, %bb.j ], [ %i.aax, %bb.dk ], [ %i.agh, %bb.dz ]
  store i32 17, ptr %i.ag, align 8, !tbaa !22
  store i64 %.sroa.5684.21, ptr %i.m, align 8, !tbaa !17
  store i32 %.sroa.130.22, ptr %i.o, align 4, !tbaa !18
  store i32 %.sroa.265.23, ptr %i.k, align 8, !tbaa !16
  store ptr %.sroa.219199.23, ptr %0, align 8, !tbaa !8
  store ptr %.sroa.323276.0, ptr %i.q, align 8, !tbaa !19
  tail call fastcc void @inflate_flush(ptr noundef nonnull %0)
  br label %.thread953

default.unreachable1890:                          ; preds = %bb.j
  unreachable

.thread953:                                       ; preds = %inflate_flush.exit858, %inflate_flush.exit866, %inflate_flush.exit850, %.loopexit, %inflate_flush.exit826, %bb.av, %bb.fn, %bb.fm, %bb.fk, %bb.fa, %inflate_flush.exit922, %inflate_flush.exit906, %inflate_flush.exit898, %inflate_flush.exit890, %inflate_flush.exit882, %inflate_flush.exit842, %bb.bg, %inflate_flush.exit834, %inflate_flush.exit818, %inflate_flush.exit
  %.8 = phi i32 [ -2, %bb.fn ], [ 0, %inflate_flush.exit ], [ 0, %inflate_flush.exit818 ], [ 1, %bb.fm ], [ 0, %inflate_flush.exit834 ], [ -3, %bb.bg ], [ 0, %inflate_flush.exit842 ], [ 0, %bb.av ], [ 0, %inflate_flush.exit882 ], [ -3, %.loopexit ], [ 0, %inflate_flush.exit890 ], [ 0, %inflate_flush.exit898 ], [ 0, %inflate_flush.exit906 ], [ 0, %inflate_flush.exit922 ], [ 0, %bb.fa ], [ 0, %bb.fk ], [ 0, %inflate_flush.exit826 ], [ 0, %inflate_flush.exit858 ], [ -3, %inflate_flush.exit866 ], [ 0, %inflate_flush.exit850 ]
  ret i32 %.8
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @inflate_flush(ptr noundef %0) unnamed_addr #0 {
.peel.begin:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44416 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44424 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44408 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 11640 ; 8 uses
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  %.not.peel = icmp ugt ptr %i.b, %i.h
  br i1 %.not.peel, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.peel.begin
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !21
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.peel.begin
  %i.j = phi ptr [ %i.i, %bb.a ], [ %i.h, %.peel.begin ]
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.b to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = trunc i64 %i.m to i32
  %i.o = load i32, ptr %i.d, align 8, !tbaa !27   ; 2 uses
  %..peel = tail call i32 @llvm.umin.i32(i32 %i.o, i32 %i.n) ; 2 uses
  %i.p = sub i32 %i.o, %..peel
  store i32 %i.p, ptr %i.d, align 8, !tbaa !27
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.r = zext i32 %..peel to i64                  ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.b, i64 %i.r, i1 false)
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.r ; 2 uses
  store ptr %i.t, ptr %i.e, align 8, !tbaa !28
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.r ; 4 uses
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.u
  br i1 %i.y, label %bb.d, label %.peel.next

bb.d:                                             ; preds = %bb.c
  store ptr %i.g, ptr %i.c, align 8, !tbaa !19
  br label %.peel.next

.peel.next:                                       ; preds = %bb.d, %bb.c
  %i.z = phi ptr [ %i.g, %bb.d ], [ %i.x, %bb.c ]
  %i.aa = ptrtoint ptr %i.g to i64
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %.peel.next
  %i.ab = phi ptr [ %i.t, %.peel.next ], [ %i.al, %.backedge ]
  %i.ac = phi ptr [ %i.u, %.peel.next ], [ %i.am, %.backedge ]
  %i.ad = phi ptr [ %i.z, %.peel.next ], [ %.be, %.backedge ] ; 2 uses
  %.not = icmp ugt ptr %i.g, %i.ad
  %spec.select = select i1 %.not, ptr %i.ac, ptr %i.ad
  %i.ae = ptrtoint ptr %spec.select to i64
  %i.af = sub i64 %i.ae, %i.aa
  %i.ag = trunc i64 %i.af to i32
  %i.ah = load i32, ptr %i.d, align 8, !tbaa !27  ; 2 uses
  %. = tail call i32 @llvm.umin.i32(i32 %i.ah, i32 %i.ag) ; 2 uses
  %i.ai = sub i32 %i.ah, %.
  store i32 %i.ai, ptr %i.d, align 8, !tbaa !27
  %i.aj = zext i32 %. to i64                      ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr nonnull align 8 %i.g, i64 %i.aj, i1 false)
  %i.ak = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.aj ; 2 uses
  store ptr %i.al, ptr %i.e, align 8, !tbaa !28
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.aj ; 4 uses
  %i.an = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !19  ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.am
  br i1 %i.aq, label %bb.g, label %.backedge

bb.g:                                             ; preds = %bb.f
  store ptr %i.g, ptr %i.c, align 8, !tbaa !19
  br label %.backedge

.backedge:                                        ; preds = %bb.g, %bb.f
  %.be = phi ptr [ %i.g, %bb.g ], [ %i.ap, %bb.f ]
  br label %bb.e, !llvm.loop !29

.loopexit:                                        ; preds = %bb.e, %bb.b
  %.lcssa = phi ptr [ %i.u, %bb.b ], [ %i.am, %bb.e ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -5, 1) i32 @huft_build(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 1, 289) %1, i32 noundef range(i32 0, 258) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef captures(none) %6, ptr noundef %7, ptr nofree noundef nonnull captures(none) %8, ptr nofree noundef captures(address) %9) unnamed_addr #2 {
.preheader236.preheader:
  %i.a = alloca [16 x i32], align 16              ; 43 uses
  %i.b = alloca [15 x ptr], align 16              ; 5 uses
  %i.c = alloca [16 x i32], align 16              ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false), !tbaa !33
  %xtraiter = and i32 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader236.prol.loopexit, label %.preheader236.prol

.preheader236.prol:                               ; preds = %.preheader236.preheader, %.preheader236.prol
  %.0178.prol = phi i32 [ %i.j, %.preheader236.prol ], [ %1, %.preheader236.preheader ]
  %.1164.prol = phi ptr [ %i.d, %.preheader236.prol ], [ %0, %.preheader236.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader236.prol ], [ 0, %.preheader236.preheader ]
  %i.d = getelementptr inbounds nuw i8, ptr %.1164.prol, i64 4 ; 2 uses
  %i.e = load i32, ptr %.1164.prol, align 4, !tbaa !33
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.f ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !33
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 4, !tbaa !33
  %i.j = add nsw i32 %.0178.prol, -1              ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader236.prol.loopexit, label %.preheader236.prol, !llvm.loop !50

.preheader236.prol.loopexit:                      ; preds = %.preheader236.prol, %.preheader236.preheader
  %.0178.unr = phi i32 [ %1, %.preheader236.preheader ], [ %i.j, %.preheader236.prol ]
  %.1164.unr = phi ptr [ %0, %.preheader236.preheader ], [ %i.d, %.preheader236.prol ]
  %i.k = icmp samesign ult i32 %1, 4
  br i1 %i.k, label %.unr-lcssa, label %.preheader236

.preheader236:                                    ; preds = %.preheader236.prol.loopexit, %.preheader236
  %.0178 = phi i32 [ %i.aj, %.preheader236 ], [ %.0178.unr, %.preheader236.prol.loopexit ]
  %.1164 = phi ptr [ %i.ad, %.preheader236 ], [ %.1164.unr, %.preheader236.prol.loopexit ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.1164, i64 4
  %i.m = load i32, ptr %.1164, align 4, !tbaa !33
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.n ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !33
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 4, !tbaa !33
  %i.r = getelementptr inbounds nuw i8, ptr %.1164, i64 8
  %i.s = load i32, ptr %i.l, align 4, !tbaa !33
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !33
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.u, align 4, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %.1164, i64 12
  %i.y = load i32, ptr %i.r, align 4, !tbaa !33
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.z ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !33
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !33
  %i.ad = getelementptr inbounds nuw i8, ptr %.1164, i64 16
  %i.ae = load i32, ptr %i.x, align 4, !tbaa !33
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.af ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !33
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !33
  %i.aj = add nsw i32 %.0178, -4                  ; 2 uses
  %.not215.3 = icmp eq i32 %i.aj, 0
  br i1 %.not215.3, label %.unr-lcssa, label %.preheader236

.unr-lcssa:                                       ; preds = %.preheader236, %.preheader236.prol.loopexit
  %i.ak = load i32, ptr %i.a, align 16, !tbaa !33
  %i.al = icmp eq i32 %i.ak, %1
  br i1 %i.al, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.unr-lcssa
  store ptr null, ptr %5, align 8, !tbaa !36
  store i32 0, ptr %6, align 4, !tbaa !33
  br label %.loopexit233

bb.b:                                             ; preds = %.unr-lcssa
  %i.am = load i32, ptr %6, align 4, !tbaa !33
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !33
  %.not216 = icmp eq i32 %i.ao, 0                 ; 3 uses
  br i1 %.not216, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !33
  %.not216.1 = icmp eq i32 %i.aq, 0
  br i1 %.not216.1, label %bb.d, label %bb.q

bb.d:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !33
  %.not216.2 = icmp eq i32 %i.as, 0
  br i1 %.not216.2, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.au = load i32, ptr %i.at, align 16, !tbaa !33
  %.not216.3 = icmp eq i32 %i.au, 0
  br i1 %.not216.3, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !33
  %.not216.4 = icmp eq i32 %i.aw, 0
  br i1 %.not216.4, label %bb.g, label %bb.q

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !33
  %.not216.5 = icmp eq i32 %i.ay, 0
  br i1 %.not216.5, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !33
  %.not216.6 = icmp eq i32 %i.ba, 0
  br i1 %.not216.6, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bc = load i32, ptr %i.bb, align 16, !tbaa !33
  %.not216.7 = icmp eq i32 %i.bc, 0
  br i1 %.not216.7, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !33
  %.not216.8 = icmp eq i32 %i.be, 0
  br i1 %.not216.8, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !33
  %.not216.9 = icmp eq i32 %i.bg, 0
  br i1 %.not216.9, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !33
  %.not216.10 = icmp eq i32 %i.bi, 0
  br i1 %.not216.10, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.bk = load i32, ptr %i.bj, align 16, !tbaa !33
  %.not216.11 = icmp eq i32 %i.bk, 0
  br i1 %.not216.11, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !33
  %.not216.12 = icmp eq i32 %i.bm, 0
  br i1 %.not216.12, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !33
  %.not216.13 = icmp eq i32 %i.bo, 0
  br i1 %.not216.13, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !33
  %.not216.14 = icmp eq i32 %i.bq, 0
end_hunk_0

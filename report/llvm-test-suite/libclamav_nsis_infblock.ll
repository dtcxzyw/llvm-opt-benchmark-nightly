inline.NumInlined: 17
begin_hunk_0_@nsis_inflate:bb.a
  %i.ak = ptrtoint ptr %i.aj to i64               ; 25 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1352 ; 4 uses
  %i.am = xor i64 %i.ak, -1                       ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 25 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 10 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1336 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1344 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1368 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  br label %.thread922

.thread922:                                       ; preds = %.thread922.backedge, %bb.d
  %.sroa.265.0 = phi i32 [ %i.l, %bb.d ], [ %.sroa.265.0.be, %.thread922.backedge ] ; 38 uses
  %.sroa.219199.0 = phi ptr [ %i.j, %bb.d ], [ %.sroa.219199.0.be, %.thread922.backedge ] ; 37 uses
  %.sroa.323276.0 = phi ptr [ %i.r, %bb.d ], [ %.sroa.323276.0.be, %.thread922.backedge ] ; 68 uses
  %.sroa.130.0 = phi i32 [ %i.p, %bb.d ], [ %.sroa.130.0.be, %.thread922.backedge ] ; 38 uses
  %.sroa.5684.0 = phi i64 [ %i.n, %bb.d ], [ %.sroa.5684.0.be, %.thread922.backedge ] ; 32 uses
  %.sroa.407.0 = phi i32 [ %i.af, %bb.d ], [ %.sroa.407.0.be, %.thread922.backedge ] ; 17 uses
  %i.ay = load i32, ptr %i.h, align 8, !tbaa !20
  switch i32 %i.ay, label %bb.fn [
    i32 8, label %.preheader959
    i32 9, label %.preheader960
    i32 10, label %bb.ah
    i32 11, label %.preheader962
    i32 12, label %.split1260
    i32 13, label %._crit_edge1676
    i32 0, label %._crit_edge1678
    i32 1, label %._crit_edge1681
    i32 2, label %bb.dm
    i32 3, label %._crit_edge1672
    i32 4, label %bb.eb
    i32 5, label %._crit_edge1669
    i32 6, label %bb.eu
    i32 7, label %bb.fc
    i32 15, label %bb.fe
  ]

._crit_edge1681:                                  ; preds = %.thread922
  %.pre1682 = load i32, ptr %i.aq, align 8, !tbaa !21
  br label %bb.cz

._crit_edge1678:                                  ; preds = %.thread922
  %.pre1679 = load i8, ptr %i.aw, align 8, !tbaa !22
  %.pre1680 = load ptr, ptr %i.ax, align 8, !tbaa !25
  br label %bb.cy

._crit_edge1676:                                  ; preds = %.thread922
  %.promoted.pre = load i32, ptr %i.as, align 4, !tbaa !21
  br label %bb.bq

._crit_edge1672:                                  ; preds = %.thread922
  %.pre1673 = load i32, ptr %i.aq, align 8, !tbaa !21
  br label %bb.ds

._crit_edge1669:                                  ; preds = %.thread922
  %.pre1670 = load i32, ptr %i.ao, align 4, !tbaa !21
  br label %bb.eh

.preheader962:                                    ; preds = %.thread922
  %i.az = icmp ult i32 %.sroa.130.0, 14
  br i1 %i.az, label %.lr.ph1205.preheader, label %._crit_edge1206

.lr.ph1205.preheader:                             ; preds = %.preheader962
  %i.ba = zext nneg i32 %.sroa.130.0 to i64       ; 4 uses
  %.not777 = icmp eq i32 %.sroa.265.0, 0
  br i1 %.not777, label %bb.ay, label %bb.be

.preheader960:                                    ; preds = %.thread922
  %i.bb = icmp ult i32 %.sroa.130.0, 16
  br i1 %i.bb, label %.lr.ph1327.preheader, label %._crit_edge1328

.lr.ph1327.preheader:                             ; preds = %.preheader960
  %i.bc = zext nneg i32 %.sroa.130.0 to i64       ; 3 uses
  %.not782 = icmp eq i32 %.sroa.265.0, 0
  br i1 %.not782, label %bb.x, label %bb.ad

.preheader959:                                    ; preds = %.thread922
  %i.bd = icmp ult i32 %.sroa.130.0, 3
  br i1 %i.bd, label %.lr.ph1336, label %bb.j

.lr.ph1336:                                       ; preds = %.preheader959
  %.not785 = icmp eq i32 %.sroa.265.0, 0
  br i1 %.not785, label %.split1343, label %._crit_edge1337

.split1343:                                       ; preds = %.lr.ph1336
  store i64 %.sroa.5684.0, ptr %i.m, align 8, !tbaa !15
  store i32 %.sroa.130.0, ptr %i.o, align 4, !tbaa !16
  store i32 0, ptr %i.k, align 8, !tbaa !14
  store ptr %.sroa.219199.0, ptr %0, align 8, !tbaa !8
  store ptr %.sroa.323276.0, ptr %i.q, align 8, !tbaa !17
  %i.be = load ptr, ptr %i.s, align 8, !tbaa !18  ; 4 uses
  %.not.peel.i = icmp ugt ptr %i.be, %.sroa.323276.0
  br i1 %.not.peel.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.split1343
  %i.bf = load ptr, ptr %i.ai, align 8, !tbaa !19
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.split1343
  %i.bg = phi ptr [ %i.bf, %bb.e ], [ %.sroa.323276.0, %.split1343 ]
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.be to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = load i32, ptr %i.ag, align 8, !tbaa !26 ; 2 uses
  %..peel.i = tail call i32 @llvm.umin.i32(i32 %i.bl, i32 %i.bk) ; 2 uses
  %i.bm = sub i32 %i.bl, %..peel.i
  store i32 %i.bm, ptr %i.ag, align 8, !tbaa !26
  %i.bn = load ptr, ptr %i.ah, align 8, !tbaa !27
  %i.bo = zext i32 %..peel.i to i64               ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bn, ptr align 1 %i.be, i64 %i.bo, i1 false)
  %i.bp = load ptr, ptr %i.ah, align 8, !tbaa !27
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bo ; 3 uses
  store ptr %i.bq, ptr %i.ah, align 8, !tbaa !27
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bo ; 5 uses
  %i.bs = load ptr, ptr %i.ai, align 8, !tbaa !19
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %bb.g, label %inflate_flush.exit

bb.g:                                             ; preds = %bb.f
  %i.bu = load ptr, ptr %i.q, align 8, !tbaa !17  ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.br
  br i1 %i.bv, label %.peel.next.i.sink.split, label %.peel.next.i.preheader

.peel.next.i.sink.split:                          ; preds = %bb.g, %bb.i
  %.ph = phi ptr [ %i.cg, %bb.i ], [ %i.bq, %bb.g ]
  %.ph2338.a = phi ptr [ %i.ch, %bb.i ], [ %i.br, %bb.g ]
  store ptr %i.aj, ptr %i.q, align 8, !tbaa !17
  br label %.peel.next.i.preheader

.peel.next.i.preheader:                           ; preds = %bb.g, %.peel.next.i.sink.split
  %.ph2371.a = phi ptr [ %.ph, %.peel.next.i.sink.split ], [ %i.bq, %bb.g ]
  %.ph2372.a = phi ptr [ %.ph2338.a, %.peel.next.i.sink.split ], [ %i.br, %bb.g ]
  %.ph2373 = phi ptr [ %i.aj, %.peel.next.i.sink.split ], [ %i.bu, %bb.g ]
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %.peel.next.i.preheader, %bb.h
  %i.bw = phi ptr [ %i.cg, %bb.h ], [ %.ph2371.a, %.peel.next.i.preheader ]
  %i.bx = phi ptr [ %i.ch, %bb.h ], [ %.ph2372.a, %.peel.next.i.preheader ]
  %i.by = phi ptr [ %i.ck, %bb.h ], [ %.ph2373, %.peel.next.i.preheader ] ; 2 uses
  %.not.i = icmp ugt ptr %i.aj, %i.by
  %spec.select.i = select i1 %.not.i, ptr %i.bx, ptr %i.by
  %i.bz = ptrtoint ptr %spec.select.i to i64
  %i.ca = sub i64 %i.bz, %i.ak
  %i.cb = trunc i64 %i.ca to i32
  %i.cc = load i32, ptr %i.ag, align 8, !tbaa !26 ; 2 uses
  %..i = tail call i32 @llvm.umin.i32(i32 %i.cc, i32 %i.cb) ; 2 uses
  %i.cd = sub i32 %i.cc, %..i
  store i32 %i.cd, ptr %i.ag, align 8, !tbaa !26
  %i.ce = zext i32 %..i to i64                    ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bw, ptr nonnull align 1 %i.aj, i64 %i.ce, i1 false)
  %i.cf = load ptr, ptr %i.ah, align 8, !tbaa !27
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ce ; 3 uses
  store ptr %i.cg, ptr %i.ah, align 8, !tbaa !27
  %i.ch = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ce ; 5 uses
  %i.ci = load ptr, ptr %i.ai, align 8, !tbaa !19
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %bb.h, label %inflate_flush.exit

bb.h:                                             ; preds = %.peel.next.i
  %i.ck = load ptr, ptr %i.q, align 8, !tbaa !17  ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.ch
  br i1 %i.cl, label %bb.i, label %.peel.next.i, !llvm.loop !28

bb.i:                                             ; preds = %bb.h
  br label %.peel.next.i.sink.split, !llvm.loop !28

inflate_flush.exit:                               ; preds = %.peel.next.i, %bb.f
  %.lcssa.i = phi ptr [ %i.br, %bb.f ], [ %i.ch, %.peel.next.i ]
  store ptr %.lcssa.i, ptr %i.s, align 8, !tbaa !18
  br label %.thread932

._crit_edge1337:                                  ; preds = %.lr.ph1336
  %i.cm = or disjoint i32 %.sroa.130.0, 8
  %i.cn = add i32 %.sroa.265.0, -1
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.219199.0, i64 1
  %i.cp = load i8, ptr %.sroa.219199.0, align 1, !tbaa !21
  %i.cq = zext i8 %i.cp to i64
  %i.cr = zext nneg i32 %.sroa.130.0 to i64
  %i.cs = shl nuw nsw i64 %i.cq, %i.cr
  %i.ct = or i64 %i.cs, %.sroa.5684.0
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge1337, %.preheader959
  %.sroa.265.1.lcssa = phi i32 [ %i.cn, %._crit_edge1337 ], [ %.sroa.265.0, %.preheader959 ] ; 4 uses
  %.sroa.219199.1.lcssa = phi ptr [ %i.co, %._crit_edge1337 ], [ %.sroa.219199.0, %.preheader959 ] ; 4 uses
  %.sroa.130.1.lcssa = phi i32 [ %i.cm, %._crit_edge1337 ], [ %.sroa.130.0, %.preheader959 ]
  %.sroa.5684.1.lcssa = phi i64 [ %i.ct, %._crit_edge1337 ], [ %.sroa.5684.0, %.preheader959 ] ; 2 uses
  %i.cu = trunc i64 %.sroa.5684.1.lcssa to i32    ; 2 uses
  %i.cv = lshr i64 %.sroa.5684.1.lcssa, 3         ; 4 uses
  %i.cw = add i32 %.sroa.130.1.lcssa, -3          ; 5 uses
  %i.cx = and i32 %i.cu, 1
  %.not783 = icmp eq i32 %i.cx, 0
  %i.cy = select i1 %.not783, i32 8, i32 15
  store i32 %i.cy, ptr %i.al, align 8, !tbaa !30
  %i.cz = and i32 %i.cu, 6
  switch i32 %i.cz, label %default.unreachable1846 [
    i32 0, label %bb.k
    i32 2, label %bb.l
    i32 4, label %bb.w
    i32 6, label %bb.fn
  ]

bb.k:                                             ; preds = %bb.j
  %i.da = and i32 %i.cw, 7
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = lshr i64 %i.cv, %i.db
  %i.dd = and i32 %i.cw, -8
  store i32 9, ptr %i.h, align 8, !tbaa !20
  br label %.thread922.backedge

bb.l:                                             ; preds = %bb.j
  %.b = load i1, ptr @fixed_built, align 1
  br i1 %.b, label %bb.v, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !4
  br label %bb.n

bb.n:                                             ; preds = %bb.t, %bb.m
  %indvars.iv1662 = phi i64 [ 0, %bb.m ], [ %indvars.iv.next1663.1, %bb.t ] ; 9 uses
  %i.de = icmp samesign ugt i64 %indvars.iv1662, 143
  br i1 %i.de, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.df = icmp samesign ult i64 %indvars.iv1662, 256
  br i1 %i.df, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dg = icmp samesign ult i64 %indvars.iv1662, 280
  %spec.select = select i1 %i.dg, i32 7, i32 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.0698 = phi i32 [ 8, %bb.n ], [ 9, %bb.o ], [ %spec.select, %bb.p ]
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr @nsis_inflate.lc, i64 %indvars.iv1662
  store i32 %.0698, ptr %i.dh, align 8, !tbaa !4
  %i.di = icmp samesign ugt i64 %indvars.iv1662, 143
  br i1 %i.di, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.dj = icmp samesign ult i64 %indvars.iv1662, 256
  br i1 %i.dj, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dk = icmp samesign ult i64 %indvars.iv1662, 280
  %spec.select.1 = select i1 %i.dk, i32 7, i32 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.0698.1 = phi i32 [ 8, %bb.q ], [ 9, %bb.r ], [ %spec.select.1, %bb.s ]
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr @nsis_inflate.lc, i64 %indvars.iv1662
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  store i32 %.0698.1, ptr %i.dm, align 4, !tbaa !4
  %indvars.iv.next1663.1 = add nuw nsw i64 %indvars.iv1662, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next1663.1, 288
  br i1 %exitcond.not.1, label %bb.u, label %bb.n, !llvm.loop !31

bb.u:                                             ; preds = %bb.t
  %i.dn = call fastcc i32 @huft_build(ptr noundef nonnull @nsis_inflate.lc, i32 noundef 288, i32 noundef 257, ptr noundef nonnull @cplens, ptr noundef nonnull @cplext, ptr noundef nonnull @fixed_tl, ptr noundef nonnull @fixed_bl, ptr noundef nonnull @fixed_mem, ptr noundef %i.a) ; 0 uses
  store <4 x i32> splat (i32 5), ptr @nsis_inflate.lc, align 16, !tbaa !4
  store <4 x i32> splat (i32 5), ptr getelementptr inbounds nuw (i8, ptr @nsis_inflate.lc, i64 16), align 16, !tbaa !4
  store <4 x i32> splat (i32 5), ptr getelementptr inbounds nuw (i8, ptr @nsis_inflate.lc, i64 32), align 16, !tbaa !4
  store <4 x i32> splat (i32 5), ptr getelementptr inbounds nuw (i8, ptr @nsis_inflate.lc, i64 48), align 16, !tbaa !4
  store <4 x i32> splat (i32 5), ptr getelementptr inbounds nuw (i8, ptr @nsis_inflate.lc, i64 64), align 16, !tbaa !4
  store <4 x i32> splat (i32 5), ptr getelementptr inbounds nuw (i8, ptr @nsis_inflate.lc, i64 80), align 16, !tbaa !4
  store <4 x i32> splat (i32 5), ptr getelementptr inbounds nuw (i8, ptr @nsis_inflate.lc, i64 96), align 16, !tbaa !4
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @nsis_inflate.lc, i64 112), align 16, !tbaa !4
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @nsis_inflate.lc, i64 116), align 4, !tbaa !4
  %i.do = call fastcc i32 @huft_build(ptr noundef nonnull @nsis_inflate.lc, i32 noundef 30, i32 noundef 0, ptr noundef nonnull @cpdist, ptr noundef nonnull @cpdext, ptr noundef nonnull @fixed_td, ptr noundef nonnull @fixed_bd, ptr noundef nonnull @fixed_mem, ptr noundef %i.a) ; 0 uses
  store i1 true, ptr @fixed_built, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.l
  %i.dp = load i32, ptr @fixed_bl, align 4, !tbaa !4
  %i.dq = trunc i32 %i.dp to i8
  store i8 %i.dq, ptr %i.aw, align 8, !tbaa !21
  %i.dr = load i32, ptr @fixed_bd, align 4, !tbaa !4
  %i.ds = trunc i32 %i.dr to i8
  store i8 %i.ds, ptr %i.ap, align 1, !tbaa !21
  %i.dt = load ptr, ptr @fixed_tl, align 8, !tbaa !33
  store ptr %i.dt, ptr %i.ax, align 8, !tbaa !21
  %i.du = load ptr, ptr @fixed_td, align 8, !tbaa !33
  store ptr %i.du, ptr %i.ar, align 8, !tbaa !21
  store i32 0, ptr %i.h, align 8, !tbaa !20
  br label %.thread922.backedge

bb.w:                                             ; preds = %bb.j
  store i32 11, ptr %i.h, align 8, !tbaa !20
  br label %.thread922.backedge

bb.x:                                             ; preds = %.lr.ph1327.1, %.lr.ph1327.preheader
  %indvars.iv1659.lcssa = phi i64 [ %i.bc, %.lr.ph1327.preheader ], [ %indvars.iv.next1660, %.lr.ph1327.1 ]
  %.sroa.5684.21326.lcssa = phi i64 [ %.sroa.5684.0, %.lr.ph1327.preheader ], [ %i.fj, %.lr.ph1327.1 ]
  %.sroa.219199.21324.lcssa = phi ptr [ %.sroa.219199.0, %.lr.ph1327.preheader ], [ %i.ff, %.lr.ph1327.1 ]
  %i.dv = trunc nuw nsw i64 %indvars.iv1659.lcssa to i32
  store i64 %.sroa.5684.21326.lcssa, ptr %i.m, align 8, !tbaa !15
  store i32 %i.dv, ptr %i.o, align 4, !tbaa !16
  store i32 0, ptr %i.k, align 8, !tbaa !14
  store ptr %.sroa.219199.21324.lcssa, ptr %0, align 8, !tbaa !8
  store ptr %.sroa.323276.0, ptr %i.q, align 8, !tbaa !17
  %i.dw = load ptr, ptr %i.s, align 8, !tbaa !18  ; 4 uses
  %.not.peel.i790 = icmp ugt ptr %i.dw, %.sroa.323276.0
  br i1 %.not.peel.i790, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dx = load ptr, ptr %i.ai, align 8, !tbaa !19
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.dy = phi ptr [ %i.dx, %bb.y ], [ %.sroa.323276.0, %bb.x ]
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %i.dw to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = trunc i64 %i.eb to i32
  %i.ed = load i32, ptr %i.ag, align 8, !tbaa !26 ; 2 uses
  %..peel.i791 = tail call i32 @llvm.umin.i32(i32 %i.ed, i32 %i.ec) ; 2 uses
  %i.ee = sub i32 %i.ed, %..peel.i791
  store i32 %i.ee, ptr %i.ag, align 8, !tbaa !26
  %i.ef = load ptr, ptr %i.ah, align 8, !tbaa !27
  %i.eg = zext i32 %..peel.i791 to i64            ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ef, ptr align 1 %i.dw, i64 %i.eg, i1 false)
  %i.eh = load ptr, ptr %i.ah, align 8, !tbaa !27
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.eg ; 3 uses
  store ptr %i.ei, ptr %i.ah, align 8, !tbaa !27
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.eg ; 5 uses
  %i.ek = load ptr, ptr %i.ai, align 8, !tbaa !19
  %i.el = icmp eq ptr %i.ej, %i.ek
  br i1 %i.el, label %bb.aa, label %inflate_flush.exit797

bb.aa:                                            ; preds = %bb.z
  %i.em = load ptr, ptr %i.q, align 8, !tbaa !17  ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.ej
  br i1 %i.en, label %.peel.next.i793.sink.split, label %.peel.next.i793.preheader

.peel.next.i793.sink.split:                       ; preds = %bb.aa, %bb.ac
  %.ph2339.a = phi ptr [ %i.ey, %bb.ac ], [ %i.ei, %bb.aa ]
  %.ph2340.a = phi ptr [ %i.ez, %bb.ac ], [ %i.ej, %bb.aa ]
  store ptr %i.aj, ptr %i.q, align 8, !tbaa !17
  br label %.peel.next.i793.preheader

.peel.next.i793.preheader:                        ; preds = %bb.aa, %.peel.next.i793.sink.split
  %.ph2377.a = phi ptr [ %.ph2339.a, %.peel.next.i793.sink.split ], [ %i.ei, %bb.aa ]
  %.ph2378.a = phi ptr [ %.ph2340.a, %.peel.next.i793.sink.split ], [ %i.ej, %bb.aa ]
  %.ph2379 = phi ptr [ %i.aj, %.peel.next.i793.sink.split ], [ %i.em, %bb.aa ]
  br label %.peel.next.i793

.peel.next.i793:                                  ; preds = %.peel.next.i793.preheader, %bb.ab
  %i.eo = phi ptr [ %i.ey, %bb.ab ], [ %.ph2377.a, %.peel.next.i793.preheader ]
  %i.ep = phi ptr [ %i.ez, %bb.ab ], [ %.ph2378.a, %.peel.next.i793.preheader ]
  %i.eq = phi ptr [ %i.fc, %bb.ab ], [ %.ph2379, %.peel.next.i793.preheader ] ; 2 uses
  %.not.i794 = icmp ugt ptr %i.aj, %i.eq
  %spec.select.i795 = select i1 %.not.i794, ptr %i.ep, ptr %i.eq
  %i.er = ptrtoint ptr %spec.select.i795 to i64
  %i.es = sub i64 %i.er, %i.ak
  %i.et = trunc i64 %i.es to i32
  %i.eu = load i32, ptr %i.ag, align 8, !tbaa !26 ; 2 uses
  %..i796 = tail call i32 @llvm.umin.i32(i32 %i.eu, i32 %i.et) ; 2 uses
  %i.ev = sub i32 %i.eu, %..i796
  store i32 %i.ev, ptr %i.ag, align 8, !tbaa !26
  %i.ew = zext i32 %..i796 to i64                 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eo, ptr nonnull align 1 %i.aj, i64 %i.ew, i1 false)
  %i.ex = load ptr, ptr %i.ah, align 8, !tbaa !27
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.ew ; 3 uses
  store ptr %i.ey, ptr %i.ah, align 8, !tbaa !27
  %i.ez = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ew ; 5 uses
  %i.fa = load ptr, ptr %i.ai, align 8, !tbaa !19
  %i.fb = icmp eq ptr %i.ez, %i.fa
  br i1 %i.fb, label %bb.ab, label %inflate_flush.exit797

bb.ab:                                            ; preds = %.peel.next.i793
  %i.fc = load ptr, ptr %i.q, align 8, !tbaa !17  ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.ez
  br i1 %i.fd, label %bb.ac, label %.peel.next.i793, !llvm.loop !28

bb.ac:                                            ; preds = %bb.ab
  br label %.peel.next.i793.sink.split, !llvm.loop !28

inflate_flush.exit797:                            ; preds = %.peel.next.i793, %bb.z
  %.lcssa.i792 = phi ptr [ %i.ej, %bb.z ], [ %i.ez, %.peel.next.i793 ]
  store ptr %.lcssa.i792, ptr %i.s, align 8, !tbaa !18
  br label %.thread932

bb.ad:                                            ; preds = %.lr.ph1327.preheader
  %i.fe = add i32 %.sroa.265.0, -1                ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.219199.0, i64 1 ; 3 uses
  %i.fg = load i8, ptr %.sroa.219199.0, align 1, !tbaa !21
  %i.fh = zext i8 %i.fg to i64
  %i.fi = shl nuw nsw i64 %i.fh, %i.bc
  %i.fj = or i64 %i.fi, %.sroa.5684.0             ; 3 uses
  %indvars.iv.next1660 = add nuw nsw i64 %i.bc, 8 ; 2 uses
  %i.fk = icmp ult i32 %.sroa.130.0, 8
  br i1 %i.fk, label %.lr.ph1327.1, label %._crit_edge1328

.lr.ph1327.1:                                     ; preds = %bb.ad
  %.not782.1 = icmp eq i32 %i.fe, 0
  br i1 %.not782.1, label %bb.x, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph1327.1
end_hunk_0

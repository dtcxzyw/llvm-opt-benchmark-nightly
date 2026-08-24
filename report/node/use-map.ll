Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/use-map?download=true
inline.NumInlined: 150
inline.NumDeleted: 107
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft6UseMapC2ERKNS2_5GraphEPNS0_4ZoneEPFbS6_RKNS2_9OperationES8_E:bb.a
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.09.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.w, %.lr.ph.preheader.i.i.i ] ; 2 uses
  store i64 0, ptr %.09.i.i.i, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.m, align 8
  %i.ab = icmp ult ptr %i.z, %i.aa
  br i1 %i.ab, label %.lr.ph.i.i.i, label %_ZN2v88internal8compiler10turboshaft21FixedOpIndexSidetableINS2_6UseMap16PerOperationUsesEEC2EmPNS0_4ZoneEPKNS2_5GraphE.exit, !llvm.loop !6

_ZN2v88internal8compiler10turboshaft21FixedOpIndexSidetableINS2_6UseMap16PerOperationUsesEEC2EmPNS0_4ZoneEPKNS2_5GraphE.exit: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store ptr %2, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %2, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  store ptr %2, ptr %5, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false)
  %i.ah = load ptr, ptr %i.a, align 8
  %i.ai = load ptr, ptr %i.c, align 8
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = lshr exact i64 %i.al, 3
  %i.an = add nuw nsw i64 %i.am, 1
  %i.ao = and i64 %i.an, 4294967294               ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.not.i.i.not = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i.not, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE7reserveEm.exit, label %bb.d, !prof !8

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft21FixedOpIndexSidetableINS2_6UseMap16PerOperationUsesEEC2EmPNS0_4ZoneEPKNS2_5GraphE.exit
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 noundef %i.ao)
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE7reserveEm.exit

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE7reserveEm.exit: ; preds = %_ZN2v88internal8compiler10turboshaft21FixedOpIndexSidetableINS2_6UseMap16PerOperationUsesEEC2EmPNS0_4ZoneEPKNS2_5GraphE.exit, %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.as = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.at = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = and i64 %i.aw, 34359738360
  %.not133 = icmp eq i64 %i.ax, 0
  br i1 %.not133, label %._crit_edge132, label %.lr.ph126

.lr.ph126:                                        ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE7reserveEm.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.e

._crit_edge127:                                   ; preds = %._crit_edge
  %.pre137 = load ptr, ptr %i.ag, align 8         ; 2 uses
  %.pre138 = load ptr, ptr %i.bb, align 8         ; 2 uses
  %.not128 = icmp eq ptr %.pre137, %.pre138
  br i1 %.not128, label %._crit_edge132, label %.lr.ph131

bb.e:                                             ; preds = %.lr.ph126, %._crit_edge
  %i.be = phi ptr [ %i.at, %.lr.ph126 ], [ %i.bl, %._crit_edge ] ; 2 uses
  %i.bf = phi ptr [ %i.as, %.lr.ph126 ], [ %i.bm, %._crit_edge ]
  %indvars.iv = phi i64 [ 0, %.lr.ph126 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0125 = phi i32 [ 1, %.lr.ph126 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv
  %i.bh = load ptr, ptr %i.bg, align 8            ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 44
  %.sroa.01.0.copyload.i = load i32, ptr %i.bi, align 4, !noalias !9 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %.sroa.0.0.copyload.i63 = load i32, ptr %i.bj, align 8, !noalias !9 ; 2 uses
  %.not116119 = icmp eq i32 %.sroa.01.0.copyload.i, %.sroa.0.0.copyload.i63
  br i1 %.not116119, label %._crit_edge, label %.lr.ph123

.lr.ph123:                                        ; preds = %bb.e
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  br label %bb.f

._crit_edge.loopexit:                             ; preds = %.loopexit
  %.pre135 = load ptr, ptr %i.aq, align 8
  %.pre136 = load ptr, ptr %i.ar, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %i.bl = phi ptr [ %i.be, %bb.e ], [ %.pre136, %._crit_edge.loopexit ] ; 2 uses
  %i.bm = phi ptr [ %i.bf, %bb.e ], [ %.pre135, %._crit_edge.loopexit ] ; 2 uses
  %.1.lcssa = phi i32 [ %.0125, %bb.e ], [ %.2, %._crit_edge.loopexit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %i.bl to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = lshr exact i64 %i.bp, 3
  %i.br = and i64 %i.bq, 4294967295
  %i.bs = icmp samesign ult i64 %indvars.iv.next, %i.br
  br i1 %i.bs, label %bb.e, label %._crit_edge127, !llvm.loop !12

bb.f:                                             ; preds = %.lr.ph123, %.loopexit
  %.1122 = phi i32 [ %.0125, %.lr.ph123 ], [ %.2, %.loopexit ] ; 4 uses
  %.sroa.096.0120 = phi i32 [ %.sroa.01.0.copyload.i, %.lr.ph123 ], [ %i.ih, %.loopexit ] ; 10 uses
  %i.bt = load ptr, ptr %i.c, align 8
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = zext i32 %.sroa.096.0120 to i64
  %i.bw = add i64 %i.bu, %i.bv
  %i.bx = inttoptr i64 %i.bw to ptr               ; 8 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 1 ; 2 uses
  %i.bz = load i8, ptr %i.by, align 1
  %i.ca = icmp eq i8 %i.bz, -1
  br i1 %i.ca, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.cb = load ptr, ptr %i.az, align 8
  %i.cc = load ptr, ptr %i.af, align 8
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = lshr exact i64 %i.cf, 5
  %i.ch = trunc i64 %i.cg to i32
  %i.ci = xor i32 %i.ch, -1
  %i.cj = lshr i32 %.sroa.096.0120, 4
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = load ptr, ptr %i.l, align 8
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.ck
  store i32 %i.ci, ptr %i.cm, align 4
  %i.cn = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.co = load ptr, ptr %i.ba, align 8            ; 2 uses
  %i.cp = icmp ult ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZN2v88internal10ZoneVectorINS1_INS0_8compiler10turboshaft7OpIndexEEEE12emplace_backIJRPNS0_4ZoneEEEERS5_DpOT_.exit, label %bb.h, !prof !8

bb.h:                                             ; preds = %bb.g
  %i.cq = load ptr, ptr %i.af, align 8
  %i.cr = ptrtoint ptr %i.co to i64
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = ashr exact i64 %i.ct, 5
  %i.cv = add nsw i64 %i.cu, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS1_INS0_8compiler10turboshaft7OpIndexEEEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 noundef %i.cv)
  %.pre.i = load ptr, ptr %i.az, align 8
  br label %_ZN2v88internal10ZoneVectorINS1_INS0_8compiler10turboshaft7OpIndexEEEE12emplace_backIJRPNS0_4ZoneEEEERS5_DpOT_.exit

_ZN2v88internal10ZoneVectorINS1_INS0_8compiler10turboshaft7OpIndexEEEE12emplace_backIJRPNS0_4ZoneEEEERS5_DpOT_.exit: ; preds = %bb.g, %bb.h
  %i.cw = phi ptr [ %i.cn, %bb.g ], [ %.pre.i, %bb.h ] ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  store ptr %i.cx, ptr %i.az, align 8
  store ptr %2, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, i8 0, i64 24, i1 false)
  %i.cz = load ptr, ptr %i.az, align 8            ; 3 uses
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 -8
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = getelementptr inbounds i8, ptr %i.cz, i64 -24
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = ptrtoint ptr %i.db to i64
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = sub i64 %i.de, %i.df
  %.not.i.i71 = icmp ult i64 %i.dg, 1020
  br i1 %.not.i.i71, label %bb.i, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE7reserveEm.exit72, !prof !5

bb.i:                                             ; preds = %_ZN2v88internal10ZoneVectorINS1_INS0_8compiler10turboshaft7OpIndexEEEE12emplace_backIJRPNS0_4ZoneEEEERS5_DpOT_.exit
  %i.dh = getelementptr inbounds i8, ptr %i.cz, i64 -32
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.dh, i64 noundef 255)
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE7reserveEm.exit72

bb.j:                                             ; preds = %bb.f
  %i.di = lshr i32 %.sroa.096.0120, 4
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = load ptr, ptr %i.l, align 8
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.dj
  store i32 %.1122, ptr %i.dl, align 4
  %i.dm = load i8, ptr %i.by, align 1
  %i.dn = zext i8 %i.dm to i32
  %i.do = add i32 %.1122, %i.dn                   ; 2 uses
  %i.dp = zext i32 %i.do to i64                   ; 4 uses
  %i.dq = load ptr, ptr %i.ap, align 8
  %i.dr = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = ashr exact i64 %i.du, 2
  %.not.i.i73 = icmp ult i64 %i.dv, %i.dp
  br i1 %.not.i.i73, label %bb.k, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i, !prof !5

bb.k:                                             ; preds = %bb.j
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 noundef %i.dp)
  %.pre.i74 = load ptr, ptr %i.ad, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i: ; preds = %bb.k, %bb.j
  %i.dw = phi ptr [ %i.dr, %bb.j ], [ %.pre.i74, %bb.k ] ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.dp ; 2 uses
  %i.dy = load ptr, ptr %i.ay, align 8            ; 3 uses
  %i.dz = icmp ult ptr %i.dy, %i.dx
  br i1 %i.dz, label %.lr.ph.preheader.i, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm.exit

.lr.ph.preheader.i:                               ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i
  %i.ea = ptrtoaddr ptr %i.dy to i64              ; 2 uses
  %i.eb = ptrtoaddr ptr %i.dw to i64
  %i.ec = shl nuw nsw i64 %i.dp, 2
  %6 = add nuw i64 %i.ec, %i.eb
  %i.ed = add i64 %i.ea, 4
  %umax.i = call i64 @llvm.umax.i64(i64 %6, i64 %i.ed)
  %i.ee = xor i64 %i.ea, -1
  %i.ef = add i64 %umax.i, %i.ee
  %i.eg = and i64 %i.ef, -4
  %i.eh = add i64 %i.eg, 4
  call void @llvm.memset.p0.i64(ptr align 4 %i.dy, i8 -1, i64 %i.eh, i1 false)
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm.exit

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm.exit: ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i, %.lr.ph.preheader.i
  store ptr %i.dx, ptr %i.ay, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE7reserveEm.exit72

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE7reserveEm.exit72: ; preds = %bb.i, %_ZN2v88internal10ZoneVectorINS1_INS0_8compiler10turboshaft7OpIndexEEEE12emplace_backIJRPNS0_4ZoneEEEERS5_DpOT_.exit, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm.exit
  %.2 = phi i32 [ %i.do, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm.exit ], [ %.1122, %_ZN2v88internal10ZoneVectorINS1_INS0_8compiler10turboshaft7OpIndexEEEE12emplace_backIJRPNS0_4ZoneEEEERS5_DpOT_.exit ], [ %.1122, %bb.i ] ; 2 uses
  %i.ei = call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.bx, ptr noundef %2) #8
  br i1 %i.ei, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE7reserveEm.exit72
  %i.ej = load i8, ptr %i.bk, align 8
  %i.ek = icmp eq i8 %i.ej, 1
  %.pre = load i8, ptr %i.bx, align 4             ; 2 uses
  %i.el = icmp eq i8 %.pre, 91
  %or.cond = select i1 %i.ek, i1 %i.el, i1 false
  br i1 %or.cond, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.em = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.sroa.0.0.copyload.i62 = load i32, ptr %i.em, align 4
  %i.en = lshr i32 %.sroa.0.0.copyload.i62, 4
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = load ptr, ptr %i.l, align 8
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.eo ; 2 uses
  %i.er = load i32, ptr %i.eq, align 4            ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 4 ; 3 uses
  %i.et = icmp sgt i32 %i.er, 0
  br i1 %i.et, label %bb.n, label %bb.o, !prof !8

bb.n:                                             ; preds = %bb.m
  %i.eu = load i32, ptr %i.es, align 4
  %i.ev = add i32 %i.eu, %i.er
  %i.ew = zext i32 %i.ev to i64
  %i.ex = load ptr, ptr %i.ad, align 8
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.ew
  store i32 %.sroa.096.0120, ptr %i.ey, align 4
  br label %_ZN2v88internal8compiler10turboshaft6UseMap6AddUseEPKNS2_5GraphENS2_7OpIndexES7_.exit

bb.o:                                             ; preds = %bb.m
  %i.ez = xor i32 %i.er, -1
  %i.fa = sext i32 %i.ez to i64
  %i.fb = load ptr, ptr %i.af, align 8
  %i.fc = getelementptr inbounds nuw [32 x i8], ptr %i.fb, i64 %i.fa ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16 ; 3 uses
  %i.fe = load ptr, ptr %i.fd, align 8            ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  %i.fg = load ptr, ptr %i.ff, align 8            ; 2 uses
  %i.fh = icmp ult ptr %i.fe, %i.fg
  br i1 %i.fh, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE12emplace_backIJRS4_EEES7_DpOT_.exit, label %bb.p, !prof !8

bb.p:                                             ; preds = %bb.o
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8
  %i.fk = ptrtoint ptr %i.fg to i64
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = sub i64 %i.fk, %i.fl
  %i.fn = ashr exact i64 %i.fm, 2
  %i.fo = add nsw i64 %i.fn, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.fc, i64 noundef %i.fo)
  %.pre.i85 = load ptr, ptr %i.fd, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE12emplace_backIJRS4_EEES7_DpOT_.exit

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE12emplace_backIJRS4_EEES7_DpOT_.exit: ; preds = %bb.o, %bb.p
  %i.fp = phi ptr [ %i.fe, %bb.o ], [ %.pre.i85, %bb.p ] ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  store ptr %i.fq, ptr %i.fd, align 8
  store i32 %.sroa.096.0120, ptr %i.fp, align 4
  br label %_ZN2v88internal8compiler10turboshaft6UseMap6AddUseEPKNS2_5GraphENS2_7OpIndexES7_.exit

_ZN2v88internal8compiler10turboshaft6UseMap6AddUseEPKNS2_5GraphENS2_7OpIndexES7_.exit: ; preds = %bb.n, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE12emplace_backIJRS4_EEES7_DpOT_.exit
  %i.fr = load i32, ptr %i.es, align 4
  %i.fs = add i32 %i.fr, 1
  store i32 %i.fs, ptr %i.es, align 4
  %i.ft = load i8, ptr %i.bx, align 4
  %i.fu = zext i8 %i.ft to i64
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr @_ZN2v88internal8compiler10turboshaftL19kOperationSizeTableE, i64 %i.fu
  %i.fw = load i64, ptr %i.fv, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 4
  %.sroa.0.0.copyload.i = load i32, ptr %i.fy, align 4
  %i.fz = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.ga = load ptr, ptr %i.bc, align 8            ; 2 uses
  %i.gb = icmp ult ptr %i.fz, %i.ga
  br i1 %i.gb, label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE12emplace_backIJS5_RS5_EEERS6_DpOT_.exit, label %bb.q, !prof !8

bb.q:                                             ; preds = %_ZN2v88internal8compiler10turboshaft6UseMap6AddUseEPKNS2_5GraphENS2_7OpIndexES7_.exit
  %i.gc = load ptr, ptr %i.ag, align 8
  %i.gd = ptrtoint ptr %i.ga to i64
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = sub i64 %i.gd, %i.ge
  %i.gg = ashr exact i64 %i.gf, 3
  %i.gh = add nsw i64 %i.gg, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.gh)
  %.pre.i79 = load ptr, ptr %i.bb, align 8
  br label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE12emplace_backIJS5_RS5_EEERS6_DpOT_.exit

_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE12emplace_backIJS5_RS5_EEERS6_DpOT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft6UseMap6AddUseEPKNS2_5GraphENS2_7OpIndexES7_.exit, %bb.q
  %i.gi = phi ptr [ %i.fz, %_ZN2v88internal8compiler10turboshaft6UseMap6AddUseEPKNS2_5GraphENS2_7OpIndexES7_.exit ], [ %.pre.i79, %bb.q ] ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  store ptr %i.gj, ptr %i.bb, align 8
  store i32 %.sroa.0.0.copyload.i, ptr %i.gi, align 4
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  store i32 %.sroa.096.0120, ptr %i.gk, align 4
  br label %.loopexit

bb.r:                                             ; preds = %bb.l
  %i.gl = zext i8 %.pre to i64
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr @_ZN2v88internal8compiler10turboshaftL19kOperationSizeTableE, i64 %i.gl
  %i.gn = load i64, ptr %i.gm, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.gn ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.bx, i64 2
  %i.gq = load i16, ptr %i.gp, align 2            ; 2 uses
  %i.gr = zext i16 %i.gq to i64
  %.idx = shl nuw nsw i64 %i.gr, 2
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 %.idx
  %.not61117 = icmp eq i16 %i.gq, 0
  br i1 %.not61117, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.r, %_ZN2v88internal8compiler10turboshaft6UseMap6AddUseEPKNS2_5GraphENS2_7OpIndexES7_.exit82
  %.060118 = phi ptr [ %i.hz, %_ZN2v88internal8compiler10turboshaft6UseMap6AddUseEPKNS2_5GraphENS2_7OpIndexES7_.exit82 ], [ %i.go, %bb.r ] ; 2 uses
  %.sroa.011.0.copyload = load i32, ptr %.060118, align 4
  %i.gt = lshr i32 %.sroa.011.0.copyload, 4
  %i.gu = zext nneg i32 %i.gt to i64
  %i.gv = load ptr, ptr %i.l, align 8
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.gu ; 2 uses
  %i.gx = load i32, ptr %i.gw, align 4            ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 4 ; 3 uses
  %i.gz = icmp sgt i32 %i.gx, 0
  br i1 %i.gz, label %bb.s, label %bb.t, !prof !8

bb.s:                                             ; preds = %.lr.ph
  %i.ha = load i32, ptr %i.gy, align 4
  %i.hb = add i32 %i.ha, %i.gx
  %i.hc = zext i32 %i.hb to i64
  %i.hd = load ptr, ptr %i.ad, align 8
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.hc
  store i32 %.sroa.096.0120, ptr %i.he, align 4
  br label %_ZN2v88internal8compiler10turboshaft6UseMap6AddUseEPKNS2_5GraphENS2_7OpIndexES7_.exit82

bb.t:                                             ; preds = %.lr.ph
  %i.hf = xor i32 %i.gx, -1
  %i.hg = sext i32 %i.hf to i64
  %i.hh = load ptr, ptr %i.af, align 8
  %i.hi = getelementptr inbounds nuw [32 x i8], ptr %i.hh, i64 %i.hg ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16 ; 3 uses
  %i.hk = load ptr, ptr %i.hj, align 8            ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hi, i64 24
  %i.hm = load ptr, ptr %i.hl, align 8            ; 2 uses
  %i.hn = icmp ult ptr %i.hk, %i.hm
  br i1 %i.hn, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE12emplace_backIJRS4_EEES7_DpOT_.exit87, label %bb.u, !prof !8

bb.u:                                             ; preds = %bb.t
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8
  %i.hq = ptrtoint ptr %i.hm to i64
  %i.hr = ptrtoint ptr %i.hp to i64
  %i.hs = sub i64 %i.hq, %i.hr
  %i.ht = ashr exact i64 %i.hs, 2
  %i.hu = add nsw i64 %i.ht, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.hi, i64 noundef %i.hu)
  %.pre.i86 = load ptr, ptr %i.hj, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE12emplace_backIJRS4_EEES7_DpOT_.exit87

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE12emplace_backIJRS4_EEES7_DpOT_.exit87: ; preds = %bb.t, %bb.u
  %i.hv = phi ptr [ %i.hk, %bb.t ], [ %.pre.i86, %bb.u ] ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 4
  store ptr %i.hw, ptr %i.hj, align 8
  store i32 %.sroa.096.0120, ptr %i.hv, align 4
  br label %_ZN2v88internal8compiler10turboshaft6UseMap6AddUseEPKNS2_5GraphENS2_7OpIndexES7_.exit82

_ZN2v88internal8compiler10turboshaft6UseMap6AddUseEPKNS2_5GraphENS2_7OpIndexES7_.exit82: ; preds = %bb.s, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE12emplace_backIJRS4_EEES7_DpOT_.exit87
  %i.hx = load i32, ptr %i.gy, align 4
  %i.hy = add i32 %i.hx, 1
  store i32 %i.hy, ptr %i.gy, align 4
  %i.hz = getelementptr inbounds nuw i8, ptr %.060118, i64 4 ; 2 uses
  %.not61 = icmp eq ptr %i.hz, %i.gs
  br i1 %.not61, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %_ZN2v88internal8compiler10turboshaft6UseMap6AddUseEPKNS2_5GraphENS2_7OpIndexES7_.exit82, %bb.r, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE7reserveEm.exit72, %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE12emplace_backIJS5_RS5_EEERS6_DpOT_.exit
  %i.ia = load ptr, ptr %i.bd, align 8
  %i.ib = lshr i32 %.sroa.096.0120, 4
  %i.ic = zext nneg i32 %i.ib to i64
  %i.id = getelementptr inbounds nuw [2 x i8], ptr %i.ia, i64 %i.ic
  %i.ie = load i16, ptr %i.id, align 2
  %i.if = zext i16 %i.ie to i32
  %i.ig = shl nuw nsw i32 %i.if, 3
  %i.ih = add i32 %i.ig, %.sroa.096.0120          ; 2 uses
  %.not116 = icmp eq i32 %i.ih, %.sroa.0.0.copyload.i63
  br i1 %.not116, label %._crit_edge.loopexit, label %bb.f

._crit_edge132:                                   ; preds = %_ZN2v88internal8compiler10turboshaft6UseMap6AddUseEPKNS2_5GraphENS2_7OpIndexES7_.exit84, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE7reserveEm.exit, %._crit_edge127
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  ret void

.lr.ph131:                                        ; preds = %._crit_edge127, %_ZN2v88internal8compiler10turboshaft6UseMap6AddUseEPKNS2_5GraphENS2_7OpIndexES7_.exit84
end_hunk_0
begin_hunk_1_@_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE12emplace_backIJRS4_EEES7_DpOT_:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE21EnsureOneMoreCapacityEv.exit, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 2
  %i.l = add nsw i64 %i.k, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.l)
  %.pre = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE21EnsureOneMoreCapacityEv.exit

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE21EnsureOneMoreCapacityEv.exit: ; preds = %bb.a, %bb.b
  %i.m = phi ptr [ %i.b, %bb.a ], [ %.pre, %bb.b ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store ptr %i.n, ptr %i.a, align 8
  %i.o = load i32, ptr %1, align 4
  store i32 %i.o, ptr %i.m, align 4
  ret ptr %i.m
}

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #3

declare preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = ashr exact i64 %i.l, 1
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 4611686018427387903
  br i1 %i.q, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 2
  %i.s = add nuw i64 %i.r, 4
  %i.t = and i64 %i.s, -8                         ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = sub i64 %i.v, %i.x
  %i.z = icmp ugt i64 %i.t, %i.y
  br i1 %i.z, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.t) #8
  %.pre.i.i = load i64, ptr %i.w, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.aa = phi i64 [ %.pre.i.i, %bb.d ], [ %i.x, %bb.c ] ; 2 uses
  %i.ab = inttoptr i64 %i.aa to ptr               ; 4 uses
  %i.ac = add i64 %i.aa, %i.t
  store i64 %i.ac, ptr %i.w, align 8
  store ptr %i.ab, ptr %i.a, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.g
  store ptr %i.ad, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ab, ptr nonnull align 4 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit
  %i.ae = phi ptr [ %.pre, %bb.e ], [ %i.ab, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit ]
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.o
  store ptr %i.af, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorINS1_INS0_8compiler10turboshaft7OpIndexEEEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = ashr exact i64 %i.l, 4
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 576460752303423487
  br i1 %i.q, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 5                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS0_10ZoneVectorINS0_8compiler10turboshaft7OpIndexEEEA_S7_EEPT_m.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #8
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_10ZoneVectorINS0_8compiler10turboshaft7OpIndexEEEA_S7_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_10ZoneVectorINS0_8compiler10turboshaft7OpIndexEEEA_S7_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp ne ptr %i.b, null
  %i.ac = icmp ult ptr %i.b, %i.d
  %or.cond = select i1 %.not, i1 %i.ac, i1 false
  br i1 %or.cond, label %.lr.ph, label %_ZN2v88internal10ZoneVectorINS1_INS0_8compiler10turboshaft7OpIndexEEEE16MoveToNewStorageEPS5_S7_PKS5_.exit

.lr.ph:                                           ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_10ZoneVectorINS0_8compiler10turboshaft7OpIndexEEEA_S7_EEPT_m.exit, %.lr.ph
  %.0.i10 = phi ptr [ %i.an, %.lr.ph ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayINS0_10ZoneVectorINS0_8compiler10turboshaft7OpIndexEEEA_S7_EEPT_m.exit ] ; 6 uses
  %.08.i9 = phi ptr [ %i.ao, %.lr.ph ], [ %i.b, %_ZN2v88internal4Zone13AllocateArrayINS0_10ZoneVectorINS0_8compiler10turboshaft7OpIndexEEEA_S7_EEPT_m.exit ] ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i10, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i10, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i10, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0.i10, i8 0, i64 32, i1 false)
  %i.ag = load ptr, ptr %.08.i9, align 8
  store ptr %i.ag, ptr %.0.i10, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i9, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  store ptr %i.ai, ptr %i.ad, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i9, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  store ptr %i.ak, ptr %i.ae, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i9, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  store ptr %i.am, ptr %i.af, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i10, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %.08.i9, i64 32 ; 2 uses
  %i.ap = icmp ult ptr %i.ao, %i.d
  br i1 %i.ap, label %.lr.ph, label %_ZN2v88internal10ZoneVectorINS1_INS0_8compiler10turboshaft7OpIndexEEEE16MoveToNewStorageEPS5_S7_PKS5_.exit.loopexit, !llvm.loop !13

_ZN2v88internal10ZoneVectorINS1_INS0_8compiler10turboshaft7OpIndexEEEE16MoveToNewStorageEPS5_S7_PKS5_.exit.loopexit: ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal10ZoneVectorINS1_INS0_8compiler10turboshaft7OpIndexEEEE16MoveToNewStorageEPS5_S7_PKS5_.exit

_ZN2v88internal10ZoneVectorINS1_INS0_8compiler10turboshaft7OpIndexEEEE16MoveToNewStorageEPS5_S7_PKS5_.exit: ; preds = %_ZN2v88internal10ZoneVectorINS1_INS0_8compiler10turboshaft7OpIndexEEEE16MoveToNewStorageEPS5_S7_PKS5_.exit.loopexit, %_ZN2v88internal4Zone13AllocateArrayINS0_10ZoneVectorINS0_8compiler10turboshaft7OpIndexEEEA_S7_EEPT_m.exit
  %i.aq = phi ptr [ %.pre, %_ZN2v88internal10ZoneVectorINS1_INS0_8compiler10turboshaft7OpIndexEEEE16MoveToNewStorageEPS5_S7_PKS5_.exit.loopexit ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayINS0_10ZoneVectorINS0_8compiler10turboshaft7OpIndexEEEA_S7_EEPT_m.exit ]
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.aq, i64 %i.o
  store ptr %i.ar, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.b to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = ashr exact i64 %i.l, 2
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 2305843009213693951
  br i1 %i.q, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 3                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayISt4pairINS0_8compiler10turboshaft7OpIndexES6_EA_S7_EEPT_m.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #8
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayISt4pairINS0_8compiler10turboshaft7OpIndexES6_EA_S7_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayISt4pairINS0_8compiler10turboshaft7OpIndexES6_EA_S7_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 3 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 6 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp ne ptr %i.b, null
  %i.ac = icmp ult ptr %i.b, %i.d
  %or.cond = select i1 %.not, i1 %i.ac, i1 false
  br i1 %or.cond, label %.lr.ph.preheader, label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE16MoveToNewStorageEPS6_S8_PKS6_.exit

.lr.ph.preheader:                                 ; preds = %_ZN2v88internal4Zone13AllocateArrayISt4pairINS0_8compiler10turboshaft7OpIndexES6_EA_S7_EEPT_m.exit
  %2 = add i64 %i.f, 8
  %3 = tail call i64 @llvm.umax.i64(i64 %i.e, i64 %2)
  %i.ad = xor i64 %i.f, -1
  %i.ae = add i64 %3, %i.ad                       ; 2 uses
  %i.af = lshr i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ae, 72
  %i.ah = sub i64 %i.f, %i.y
  %diff.check = icmp ugt i64 %i.ah, -32
  %or.cond17 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond17, label %.lr.ph.preheader18, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ag, 4611686018427387900     ; 3 uses
  %i.ai = shl i64 %n.vec, 3                       ; 2 uses
  %i.aj = getelementptr i8, ptr %i.z, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.b, i64 %i.ai
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.z, i64 %i.al ; 2 uses
  %next.gep14 = getelementptr i8, ptr %i.b, i64 %i.al ; 2 uses
  %i.am = getelementptr i8, ptr %next.gep14, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep14, align 4
  %wide.load15 = load <2 x i64>, ptr %i.am, align 4
  %i.an = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load15, ptr %i.an, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE16MoveToNewStorageEPS6_S8_PKS6_.exit.loopexit, label %.lr.ph.preheader18

.lr.ph.preheader18:                               ; preds = %.lr.ph.preheader, %middle.block
  %.0.i10.ph = phi ptr [ %i.z, %.lr.ph.preheader ], [ %i.aj, %middle.block ]
  %.07.i9.ph = phi ptr [ %i.b, %.lr.ph.preheader ], [ %i.ak, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader18, %.lr.ph
  %.0.i10 = phi ptr [ %i.aq, %.lr.ph ], [ %.0.i10.ph, %.lr.ph.preheader18 ] ; 2 uses
  %.07.i9 = phi ptr [ %i.ar, %.lr.ph ], [ %.07.i9.ph, %.lr.ph.preheader18 ] ; 2 uses
  %i.ap = load i64, ptr %.07.i9, align 4
  store i64 %i.ap, ptr %.0.i10, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i10, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.07.i9, i64 8 ; 2 uses
  %i.as = icmp ult ptr %i.ar, %i.d
  br i1 %i.as, label %.lr.ph, label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE16MoveToNewStorageEPS6_S8_PKS6_.exit.loopexit, !llvm.loop !17

_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE16MoveToNewStorageEPS6_S8_PKS6_.exit.loopexit: ; preds = %.lr.ph, %middle.block
  %.pre = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE16MoveToNewStorageEPS6_S8_PKS6_.exit

_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE16MoveToNewStorageEPS6_S8_PKS6_.exit: ; preds = %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE16MoveToNewStorageEPS6_S8_PKS6_.exit.loopexit, %_ZN2v88internal4Zone13AllocateArrayISt4pairINS0_8compiler10turboshaft7OpIndexES6_EA_S7_EEPT_m.exit
  %i.at = phi ptr [ %.pre, %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE16MoveToNewStorageEPS6_S8_PKS6_.exit.loopexit ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayISt4pairINS0_8compiler10turboshaft7OpIndexES6_EA_S7_EEPT_m.exit ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.o
  store ptr %i.au, ptr %i.h, align 8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!9 = !{!10}
!10 = distinct !{!10, !11, !"_ZNK2v88internal8compiler10turboshaft5Graph16OperationIndicesERKNS2_5BlockE: argument 0"}
!11 = distinct !{!11, !"_ZNK2v88internal8compiler10turboshaft5Graph16OperationIndicesERKNS2_5BlockE"}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7, !15, !16}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !7, !15}
end_hunk_1

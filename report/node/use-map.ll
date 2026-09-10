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
  br i1 %i.ab, label %.lr.ph.i.i.i, label %_ZN2v88internal8compiler10turboshaft21FixedOpIndexSidetableINS2_6UseMap16PerOperationUsesEEC2EmPNS0_4ZoneEPKNS2_5GraphE.exit, !llvm.loop !8

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
  br i1 %.not.i.i.not, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE7reserveEm.exit, label %bb.d, !prof !7

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
  %.sroa.01.0.copyload.i = load i32, ptr %i.bi, align 4, !noalias !12 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %.sroa.0.0.copyload.i63 = load i32, ptr %i.bj, align 8, !noalias !12 ; 2 uses
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
  br i1 %i.bs, label %bb.e, label %._crit_edge127, !llvm.loop !11

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
  br i1 %i.cp, label %_ZN2v88internal10ZoneVectorINS1_INS0_8compiler10turboshaft7OpIndexEEEE12emplace_backIJRPNS0_4ZoneEEEERS5_DpOT_.exit, label %bb.h, !prof !7

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
  %i.ea = ptrtoaddr ptr %i.dy to i64
  %i.eb = ptrtoaddr ptr %i.dw to i64
  %i.ec = shl nuw nsw i64 %i.dp, 2
  %i.ed = add i64 %i.ec, %i.eb
  %i.ee = xor i64 %i.ea, -1
  %i.ef = add i64 %i.ed, %i.ee
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
  br i1 %i.et, label %bb.n, label %bb.o, !prof !7

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
  br i1 %i.fh, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE12emplace_backIJRS4_EEES7_DpOT_.exit, label %bb.p, !prof !7

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
  br i1 %i.gb, label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE12emplace_backIJS5_RS5_EEERS6_DpOT_.exit, label %bb.q, !prof !7

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
  br i1 %i.gz, label %bb.s, label %bb.t, !prof !7

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
  br i1 %i.hn, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE12emplace_backIJRS4_EEES7_DpOT_.exit87, label %bb.u, !prof !7

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

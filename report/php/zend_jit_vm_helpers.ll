Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_jit_vm_helpers?download=true
inline.NumInlined: 9
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@zend_jit_trace_execute:bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !145
  %i.ab = icmp eq i8 %i.aa, -107
  br i1 %i.ab, label %bb.e, label %bb.f, !prof !32

bb.e:                                             ; preds = %bb.d
  store i32 2, ptr %i.x, align 8, !tbaa !17
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 8, ptr %i.ac, align 8, !tbaa !17
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 13, ptr %i.ad, align 2, !tbaa !17
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 34
  store i8 13, ptr %i.ae, align 2, !tbaa !17
  store i8 0, ptr %i.v, align 1, !tbaa !17
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 35
  store i8 0, ptr %i.af, align 1, !tbaa !17
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %1, ptr %i.ag, align 8, !tbaa !17
  br label %bb.fo

bb.f:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %i.m
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !17
  %i.ak = and i8 %i.aj, 64
  %.not777 = icmp eq i8 %i.ak, 0
  br i1 %.not777, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 2, ptr %i.x, align 8, !tbaa !17
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 8, ptr %i.al, align 8, !tbaa !17
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 12, ptr %i.am, align 2, !tbaa !17
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 34
  store i8 12, ptr %i.an, align 2, !tbaa !17
  store i8 0, ptr %i.v, align 1, !tbaa !17
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 35
  store i8 0, ptr %i.ao, align 1, !tbaa !17
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %1, ptr %i.ap, align 8, !tbaa !17
  br label %bb.fo

bb.h:                                             ; preds = %bb.f
  %.not778 = icmp eq ptr %i.d, null
  br i1 %.not778, label %.thread.preheader, label %bb.i

.thread.preheader:                                ; preds = %bb.i, %bb.h
  %.2699.ph = phi i32 [ %i.aq, %bb.i ], [ 2, %bb.h ]
  br label %.thread.outer

bb.i:                                             ; preds = %bb.h
  %i.aq = tail call fastcc i32 @zend_jit_trace_record_fake_init_call_ex(ptr noundef nonnull %i.d, ptr noundef nonnull %2, i32 noundef 2, i32 noundef %4, i32 noundef 0) ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, -1
  br i1 %i.ar, label %.thread.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 2, ptr %i.x, align 8, !tbaa !17
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 8, ptr %i.as, align 8, !tbaa !17
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 8, ptr %i.at, align 2, !tbaa !17
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 34
  store i8 8, ptr %i.au, align 2, !tbaa !17
  store i8 0, ptr %i.v, align 1, !tbaa !17
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 35
  store i8 0, ptr %i.av, align 1, !tbaa !17
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %1, ptr %i.aw, align 8, !tbaa !17
  br label %bb.fo

.thread:                                          ; preds = %.thread.backedge, %.thread.outer1702
  %.0720 = phi i32 [ %.0720.ph1703, %.thread.outer1702 ], [ %.2722, %.thread.backedge ] ; 9 uses
  %.0712 = phi i32 [ %.0712.ph1704, %.thread.outer1702 ], [ %.2714, %.thread.backedge ] ; 44 uses
  %.1708 = phi ptr [ %.1708.ph1705, %.thread.outer1702 ], [ %.3710, %.thread.backedge ] ; 2 uses
  %.0704 = phi i64 [ %.0704.ph1706, %.thread.outer1702 ], [ %.1705, %.thread.backedge ] ; 2 uses
  %.2699 = phi i32 [ %.2699.ph1707, %.thread.outer1702 ], [ %.17, %.thread.backedge ] ; 3 uses
  %.0667 = phi i32 [ %.0667.ph1708, %.thread.outer1702 ], [ %.3670, %.thread.backedge ] ; 20 uses
  %.0661 = phi i32 [ %.0661.ph1709, %.thread.outer1702 ], [ %.3664, %.thread.backedge ] ; 19 uses
  %.0655 = phi i32 [ %.0655.ph1710, %.thread.outer1702 ], [ %.3658, %.thread.backedge ] ; 19 uses
  %.0636 = phi ptr [ %.0636.ph1714, %.thread.outer1702 ], [ %.3639, %.thread.backedge ] ; 3 uses
  %.0633 = phi ptr [ %.0633.ph1715, %.thread.outer1702 ], [ %.1634, %.thread.backedge ] ; 4 uses
  %.0629 = phi ptr [ %.0629.ph1716, %.thread.outer1702 ], [ %.1630, %.thread.backedge ] ; 23 uses
  %.0624 = phi ptr [ %.0624.ph1717, %.thread.outer1702 ], [ %.2626, %.thread.backedge ] ; 35 uses
  %.0619 = phi ptr [ %.0619.ph1718, %.thread.outer1702 ], [ %.3622, %.thread.backedge ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0624, i64 29 ; 3 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !146 ; 2 uses
  %i.az = and i8 %i.ay, 14
  %.not779 = icmp eq i8 %i.az, 0
  br i1 %.not779, label %bb.t, label %bb.k

bb.k:                                             ; preds = %.thread
  %i.ba = getelementptr inbounds nuw i8, ptr %.0624, i64 28
  %i.bb = load i8, ptr %i.ba, align 4, !tbaa !145
  switch i8 %i.bb, label %bb.l [
    i8 55, label %.thread931
    i8 56, label %.thread931
    i8 68, label %.thread931
    i8 -75, label %.thread931
    i8 113, label %.thread931
  ]

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %.0624, i64 8
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !17
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds i8, ptr %.0629, i64 %i.be ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !17  ; 2 uses
  %i.bi = icmp eq i8 %i.bh, 12
  br i1 %i.bi, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !17 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !17
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0692 = phi i8 [ %i.bl, %bb.m ], [ %i.bh, %bb.l ] ; 2 uses
  %.0614 = phi ptr [ %i.bj, %bb.m ], [ %i.bf, %bb.l ] ; 2 uses
  %.0611 = phi i8 [ 64, %bb.m ], [ 0, %bb.l ]     ; 2 uses
  %i.bm = icmp eq i8 %.0692, 10
  br i1 %i.bm, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bn = load ptr, ptr %.0614, align 8, !tbaa !17 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !17
  %i.br = or disjoint i8 %.0611, 32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.1693 = phi i8 [ %i.bq, %bb.o ], [ %.0692, %bb.n ]
  %.1615 = phi ptr [ %i.bo, %bb.o ], [ %.0614, %bb.n ] ; 3 uses
  %.1612 = phi i8 [ %i.br, %bb.o ], [ %.0611, %bb.n ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.1615, i64 8
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !17
  switch i8 %i.bt, label %bb.s [
    i8 8, label %bb.q
    i8 7, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.bu = load ptr, ptr %.1615, align 8, !tbaa !17
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !149
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bx = load ptr, ptr %.1615, align 8, !tbaa !17
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !17
  %i.ca = trunc i32 %i.bz to i8
  %i.cb = shl i8 %i.ca, 2
  %i.cc = and i8 %i.cb, 16
  %spec.select = or i8 %i.cc, %.1612
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.r, %bb.q
  %.0683 = phi ptr [ %i.bw, %bb.q ], [ null, %bb.p ], [ null, %bb.r ]
  %.2613 = phi i8 [ %.1612, %bb.q ], [ %.1612, %bb.p ], [ %spec.select, %bb.r ]
  %i.cd = or i8 %.2613, %.1693
  br label %.thread931

bb.t:                                             ; preds = %.thread
  %i.ce = icmp eq i8 %i.ay, 0
  br i1 %i.ce, label %bb.u, label %.thread931

bb.u:                                             ; preds = %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %.1708, i64 4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !81
  %i.ch = and i32 %i.cg, 4194304
  %.not785 = icmp eq i32 %i.ch, 0
  br i1 %.not785, label %.thread931, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ci = getelementptr inbounds nuw i8, ptr %.0624, i64 28
  %i.cj = load i8, ptr %i.ci, align 4, !tbaa !145
  %i.ck = call i32 @zend_get_opcode_flags(i8 noundef zeroext %i.cj) #8
  %i.cl = and i32 %i.ck, 240
  %i.cm = icmp eq i32 %i.cl, 80
  br i1 %i.cm, label %bb.w, label %.thread931

bb.w:                                             ; preds = %bb.v
  %i.cn = getelementptr inbounds nuw i8, ptr %.0629, i64 32
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !17
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !149
  br label %.thread931

.thread931:                                       ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.v, %bb.w, %bb.t, %bb.u, %bb.s
  %.3695 = phi i8 [ %i.cd, %bb.s ], [ -1, %bb.t ], [ -1, %bb.u ], [ 8, %bb.w ], [ -1, %bb.v ], [ -1, %bb.k ], [ -1, %bb.k ], [ -1, %bb.k ], [ -1, %bb.k ], [ -1, %bb.k ] ; 2 uses
  %.2685 = phi ptr [ %.0683, %bb.s ], [ null, %bb.t ], [ null, %bb.u ], [ %i.cq, %bb.w ], [ null, %bb.v ], [ null, %bb.k ], [ null, %bb.k ], [ null, %bb.k ], [ null, %bb.k ], [ null, %bb.k ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0624, i64 30 ; 4 uses
  %i.cs = load i8, ptr %i.cr, align 2, !tbaa !87  ; 2 uses
  %i.ct = and i8 %i.cs, 14
  %.not787 = icmp eq i8 %i.ct, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.0624, i64 28
  %.pre = load i8, ptr %.phi.trans.insert, align 4, !tbaa !145 ; 4 uses
  br i1 %.not787, label %.thread931._crit_edge, label %bb.x

bb.x:                                             ; preds = %.thread931
  switch i8 %.pre, label %bb.y [
    i8 -118, label %.thread931._crit_edge
    i8 -77, label %.thread931._crit_edge
    i8 -76, label %.thread931._crit_edge
    i8 25, label %.thread931._crit_edge
    i8 33, label %.thread931._crit_edge
    i8 29, label %.thread931._crit_edge
    i8 38, label %.thread931._crit_edge
    i8 40, label %.thread931._crit_edge
    i8 39, label %.thread931._crit_edge
    i8 41, label %.thread931._crit_edge
    i8 -83, label %.thread931._crit_edge
    i8 -82, label %.thread931._crit_edge
    i8 -81, label %.thread931._crit_edge
    i8 -80, label %.thread931._crit_edge
    i8 -79, label %.thread931._crit_edge
    i8 -78, label %.thread931._crit_edge
  ]

bb.y:                                             ; preds = %bb.x
  %i.cu = icmp eq i8 %i.cs, 8
  br i1 %i.cu, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  switch i8 %.pre, label %bb.aa [
    i8 78, label %.thread931._crit_edge
    i8 126, label %.thread931._crit_edge
  ]

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cv = getelementptr inbounds nuw i8, ptr %.0624, i64 12
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !17
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds i8, ptr %.0629, i64 %i.cx ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load i8, ptr %i.cz, align 8, !tbaa !17  ; 2 uses
  %i.db = icmp eq i8 %i.da, 12
  br i1 %i.db, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dc = load ptr, ptr %i.cy, align 8, !tbaa !17 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load i8, ptr %i.dd, align 8, !tbaa !17
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.0689 = phi i8 [ %i.de, %bb.ab ], [ %i.da, %bb.aa ] ; 2 uses
  %.0609 = phi ptr [ %i.dc, %bb.ab ], [ %i.cy, %bb.aa ] ; 2 uses
  %.0607 = phi i8 [ 64, %bb.ab ], [ 0, %bb.aa ]   ; 2 uses
  %i.df = icmp eq i8 %.0689, 10
  br i1 %i.df, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dg = load ptr, ptr %.0609, align 8, !tbaa !17 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.dj = load i8, ptr %i.di, align 8, !tbaa !17
  %i.dk = or disjoint i8 %.0607, 32
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.1690 = phi i8 [ %i.dj, %bb.ad ], [ %.0689, %bb.ac ]
  %.1610 = phi ptr [ %i.dh, %bb.ad ], [ %.0609, %bb.ac ] ; 2 uses
  %.1608 = phi i8 [ %i.dk, %bb.ad ], [ %.0607, %bb.ac ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.1610, i64 8
  %i.dm = load i8, ptr %i.dl, align 8, !tbaa !17
  %i.dn = icmp eq i8 %i.dm, 8
  br i1 %i.dn, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.do = load ptr, ptr %.1610, align 8, !tbaa !17
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !149
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.0681 = phi ptr [ %i.dq, %bb.af ], [ null, %bb.ae ]
  %i.dr = or i8 %.1608, %.1690
  br label %.thread931._crit_edge

.thread931._crit_edge:                            ; preds = %.thread931, %bb.z, %bb.z, %bb.x, %bb.x, %bb.x, %bb.x, %bb.x, %bb.x, %bb.x, %bb.x, %bb.x, %bb.x, %bb.x, %bb.x, %bb.x, %bb.x, %bb.x, %bb.x, %bb.ag
  %.2691 = phi i8 [ %i.dr, %bb.ag ], [ -1, %bb.z ], [ -1, %bb.z ], [ -1, %bb.x ], [ -1, %bb.x ], [ -1, %bb.x ], [ -1, %bb.x ], [ -1, %bb.x ], [ -1, %bb.x ], [ -1, %bb.x ], [ -1, %bb.x ], [ -1, %bb.x ], [ -1, %bb.x ], [ -1, %bb.x ], [ -1, %bb.x ], [ -1, %bb.x ], [ -1, %bb.x ], [ -1, %bb.x ], [ -1, %bb.x ], [ -1, %.thread931 ]
  %.1682 = phi ptr [ %.0681, %bb.ag ], [ null, %bb.z ], [ null, %bb.z ], [ null, %bb.x ], [ null, %bb.x ], [ null, %bb.x ], [ null, %bb.x ], [ null, %bb.x ], [ null, %bb.x ], [ null, %bb.x ], [ null, %bb.x ], [ null, %bb.x ], [ null, %bb.x ], [ null, %bb.x ], [ null, %bb.x ], [ null, %bb.x ], [ null, %bb.x ], [ null, %bb.x ], [ null, %bb.x ], [ null, %.thread931 ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.0624, i64 28 ; 3 uses
  switch i8 %.pre, label %6 [
    i8 23, label %bb.ah
    i8 24, label %bb.ah
    i8 25, label %bb.ah
    i8 27, label %bb.ah
    i8 28, label %bb.ah
    i8 29, label %bb.ah
  ]

6:                                                ; preds = %.thread931._crit_edge
  %7 = and i8 %.pre, -2
  %switch = icmp eq i8 %7, 32
  br i1 %switch, label %bb.ah, label %bb.an

bb.ah:                                            ; preds = %6, %.thread931._crit_edge, %.thread931._crit_edge, %.thread931._crit_edge, %.thread931._crit_edge, %.thread931._crit_edge, %.thread931._crit_edge
  %i.dt = getelementptr inbounds nuw i8, ptr %.0624, i64 61
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !146
  %i.dv = and i8 %i.du, 14
  %.not806 = icmp eq i8 %i.dv, 0
  br i1 %.not806, label %bb.an, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dw = getelementptr inbounds nuw i8, ptr %.0624, i64 40
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !17
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds i8, ptr %.0629, i64 %i.dy ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load i8, ptr %i.ea, align 8, !tbaa !17  ; 2 uses
  %i.ec = icmp eq i8 %i.eb, 12
  br i1 %i.ec, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ed = load ptr, ptr %i.dz, align 8, !tbaa !17 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = load i8, ptr %i.ee, align 8, !tbaa !17
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.0686 = phi i8 [ %i.ef, %bb.aj ], [ %i.eb, %bb.ai ] ; 2 uses
  %.0606 = phi ptr [ %i.ed, %bb.aj ], [ %i.dz, %bb.ai ]
  %.0604 = phi i8 [ 64, %bb.aj ], [ 0, %bb.ai ]   ; 2 uses
  %i.eg = icmp eq i8 %.0686, 10
  br i1 %i.eg, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.eh = load ptr, ptr %.0606, align 8, !tbaa !17
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load i8, ptr %i.ei, align 8, !tbaa !17
  %i.ek = or disjoint i8 %.0604, 32
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.1687 = phi i8 [ %i.ej, %bb.al ], [ %.0686, %bb.ak ]
  %.1605 = phi i8 [ %i.ek, %bb.al ], [ %.0604, %bb.ak ]
  %i.el = or i8 %.1605, %.1687
  br label %bb.an

bb.an:                                            ; preds = %6, %bb.ah, %bb.am
  %.2688 = phi i8 [ %i.el, %bb.am ], [ -1, %bb.ah ], [ -1, %6 ]
  %i.em = zext nneg i32 %.2699 to i64
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.em ; 5 uses
  store i8 0, ptr %i.en, align 8, !tbaa !17
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 1
  store i8 %.3695, ptr %i.eo, align 1, !tbaa !17
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 2
  store i8 %.2691, ptr %i.ep, align 2, !tbaa !17
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 3
  store i8 %.2688, ptr %i.eq, align 1, !tbaa !17
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store ptr %.0624, ptr %i.er, align 8, !tbaa !17
  %i.es = add nuw nsw i32 %.2699, 1               ; 3 uses
  %i.et = zext nneg i32 %i.es to i64              ; 2 uses
  %i.eu = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 152), align 8, !tbaa !150
  %i.ev = add nsw i64 %i.eu, -2
  %.not807 = icmp sgt i64 %i.ev, %i.et
  br i1 %.not807, label %bb.ao, label %.thread1014

bb.ao:                                            ; preds = %bb.an
  %.not808 = icmp eq ptr %.2685, null
  br i1 %.not808, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.et ; 2 uses
  store i32 1, ptr %i.ew, align 8, !tbaa !17
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store ptr %.2685, ptr %i.ex, align 8, !tbaa !17
  %i.ey = add nuw nsw i32 %.2699, 2               ; 3 uses
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 152), align 8, !tbaa !150
  %i.fb = add nsw i64 %i.fa, -2
  %.not809 = icmp sgt i64 %i.fb, %i.ez
  br i1 %.not809, label %bb.aq, label %.thread1014

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.3700 = phi i32 [ %i.ey, %bb.ap ], [ %i.es, %bb.ao ] ; 3 uses
  %.not810 = icmp eq ptr %.1682, null
  br i1 %.not810, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fc = zext nneg i32 %.3700 to i64
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.fc ; 2 uses
  store i32 2, ptr %i.fd, align 8, !tbaa !17
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store ptr %.1682, ptr %i.fe, align 8, !tbaa !17
  %i.ff = add nuw nsw i32 %.3700, 1               ; 3 uses
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 152), align 8, !tbaa !150
  %i.fi = add nsw i64 %i.fh, -2
  %.not811 = icmp sgt i64 %i.fi, %i.fg
  br i1 %.not811, label %bb.as, label %.thread1014

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.4701 = phi i32 [ %i.ff, %bb.ar ], [ %.3700, %bb.aq ] ; 16 uses
  %i.fj = load i8, ptr %i.ds, align 4, !tbaa !145 ; 2 uses
  switch i8 %i.fj, label %bb.cc [
    i8 81, label %bb.at
    i8 84, label %bb.at
    i8 87, label %bb.at
    i8 90, label %bb.at
    i8 93, label %bb.at
    i8 96, label %bb.at
    i8 98, label %bb.at
    i8 -101, label %bb.at
    i8 23, label %bb.at
    i8 27, label %bb.at
    i8 75, label %bb.at
    i8 115, label %bb.at
    i8 82, label %bb.bn
    i8 85, label %bb.bq
    i8 88, label %bb.bq
    i8 91, label %bb.bq
    i8 94, label %bb.bq
    i8 97, label %bb.bq
    i8 24, label %bb.bq
    i8 28, label %bb.bq
    i8 32, label %bb.bq
    i8 76, label %bb.bq
    i8 -108, label %bb.bq
    i8 -124, label %bb.bq
    i8 -123, label %bb.bq
    i8 -122, label %bb.bq
    i8 -121, label %bb.bq
  ]

bb.at:                                            ; preds = %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as
  %i.fk = load i8, ptr %i.ax, align 1, !tbaa !146
  %i.fl = icmp eq i8 %i.fk, 1                     ; 2 uses
  br i1 %i.fl, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.fm = getelementptr inbounds nuw i8, ptr %.0624, i64 8
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !17
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds i8, ptr %.0624, i64 %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fr = load i8, ptr %i.fq, align 8, !tbaa !17
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.4696 = phi i8 [ %i.fr, %bb.au ], [ %.3695, %bb.at ]
  %i.fs = and i8 %.4696, 15
  %i.ft = icmp eq i8 %i.fs, 7
  br i1 %i.ft, label %bb.aw, label %thread-pre-split

bb.aw:                                            ; preds = %bb.av
  %i.fu = load i8, ptr %i.cr, align 2, !tbaa !87
  switch i8 %i.fu, label %bb.ax [
    i8 0, label %thread-pre-split
    i8 1, label %bb.ay
  ]

bb.ax:                                            ; preds = %bb.aw
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %.0629.sink = phi ptr [ %.0629, %bb.ax ], [ %.0624, %bb.aw ]
  %i.fv = getelementptr inbounds nuw i8, ptr %.0624, i64 12
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !17
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds i8, ptr %.0629.sink, i64 %i.fx ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.ga = load i8, ptr %i.fz, align 8, !tbaa !17  ; 2 uses
  %i.gb = icmp eq i8 %i.ga, 4
  switch i8 %i.ga, label %thread-pre-split [
    i8 6, label %bb.az
    i8 4, label %bb.az
  ]

bb.az:                                            ; preds = %bb.ay, %bb.ay
  %i.gc = getelementptr inbounds nuw i8, ptr %.0624, i64 8
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !17
  %i.ge = sext i32 %i.gd to i64
  %.0624..0629 = select i1 %i.fl, ptr %.0624, ptr %.0629
  %i.gf = getelementptr inbounds i8, ptr %.0624..0629, i64 %i.ge ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = load i8, ptr %i.gg, align 8, !tbaa !17  ; 2 uses
  %i.gi = icmp eq i8 %i.gh, 12
  br i1 %i.gi, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.gj = load ptr, ptr %i.gf, align 8, !tbaa !17 ; 2 uses
  %.phi.trans.insert1359 = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %.pre1360 = load i8, ptr %.phi.trans.insert1359, align 8, !tbaa !17
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.gk = phi i8 [ %.pre1360, %bb.ba ], [ %i.gh, %bb.az ]
  %.1601 = phi ptr [ %i.gj, %bb.ba ], [ %i.gf, %bb.az ] ; 2 uses
  %i.gl = icmp eq i8 %i.gk, 10
  br i1 %i.gl, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.gm = load ptr, ptr %.1601, align 8, !tbaa !17
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.2 = phi ptr [ %i.gn, %bb.bc ], [ %.1601, %bb.bb ]
  %i.go = load ptr, ptr %.2, align 8, !tbaa !17   ; 3 uses
  br i1 %i.gb, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.gp = load i64, ptr %i.fy, align 8, !tbaa !17
  %i.gq = call ptr @zend_hash_index_find(ptr noundef %i.go, i64 noundef %i.gp) #8
  br label %bb.bk

bb.bf:                                            ; preds = %bb.bd
  %i.gr = load ptr, ptr %i.fy, align 8, !tbaa !17 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 24 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !89
  %i.gv = load i8, ptr %i.gs, align 8, !tbaa !17  ; 3 uses
  %i.gw = icmp sgt i8 %i.gv, 57
  br i1 %i.gw, label %_zend_handle_numeric_str.exit.i.thread, label %bb.bg, !prof !18

bb.bg:                                            ; preds = %bb.bf
  %i.gx = icmp slt i8 %i.gv, 48
  br i1 %i.gx, label %bb.bh, label %_zend_handle_numeric_str.exit.i

bb.bh:                                            ; preds = %bb.bg
  %.not.i.i = icmp eq i8 %i.gv, 45
  br i1 %.not.i.i, label %bb.bi, label %_zend_handle_numeric_str.exit.i.thread

bb.bi:                                            ; preds = %bb.bh
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gr, i64 25
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !17
  %i.ha = add i8 %i.gz, -58
  %or.cond.i.i = icmp ult i8 %i.ha, -10
  br i1 %or.cond.i.i, label %_zend_handle_numeric_str.exit.i.thread, label %_zend_handle_numeric_str.exit.i

_zend_handle_numeric_str.exit.i:                  ; preds = %bb.bg, %bb.bi
  %i.hb = call zeroext i1 @_zend_handle_numeric_str_ex(ptr noundef nonnull %i.gs, i64 noundef %i.gu, ptr noundef nonnull %i.a) #8
  br i1 %i.hb, label %bb.bj, label %_zend_handle_numeric_str.exit.i.thread

bb.bj:                                            ; preds = %_zend_handle_numeric_str.exit.i
  %i.hc = load i64, ptr %i.a, align 8, !tbaa !90
  %i.hd = call ptr @zend_hash_index_find(ptr noundef %i.go, i64 noundef %i.hc) #8
  br label %zend_symtable_find.exit
end_hunk_0

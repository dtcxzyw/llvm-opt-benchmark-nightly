Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/can_sja1000?download=true
inline.NumInlined: 41
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@can_sja_mem_read:bb.a
  %i.ah = load i8, ptr %i.ag, align 4
  br label %bb.u

bb.p:                                             ; preds = %bb.n
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 101
  %i.aj = load i8, ptr %i.ai, align 1
  br label %bb.u

bb.q:                                             ; preds = %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 102 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 2
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.an = load i8, ptr %i.am, align 4
  %.not36 = icmp ne i8 %i.an, 0
  %spec.store.select40 = zext i1 %.not36 to i8    ; 2 uses
  store i8 %spec.store.select40, ptr %i.ak, align 2
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.ap = load i8, ptr %i.ao, align 4
  %i.aq = lshr i8 %i.ap, 1
  %i.ar = and i8 %i.aq, %spec.store.select40
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.at = load ptr, ptr %i.as, align 8
  %..i42 = zext nneg i8 %i.ar to i32
  tail call void @qemu_set_irq(ptr noundef %i.at, i32 noundef %..i42) #8
  br label %bb.u

bb.r:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 103
  %i.av = load i8, ptr %i.au, align 1
  br label %bb.u

bb.s:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ax = load i8, ptr %i.aw, align 8
  br label %bb.u

bb.t:                                             ; preds = %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = zext i8 %i.ba to i64
  %i.bc = add nuw nsw i64 %1, 44
  %i.bd = add nuw nsw i64 %i.bc, %i.bb
  %i.be = and i64 %i.bd, 63
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1
  br label %bb.u

bb.u:                                             ; preds = %bb.n, %bb.i, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.k, %bb.j, %bb.m, %bb.l, %bb.g, %bb.f, %bb.e, %bb.d, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o
  %.0.shrunk = phi i8 [ -1, %bb.m ], [ %i.d, %bb.d ], [ 0, %bb.i ], [ %i.f, %bb.e ], [ %i.h, %bb.f ], [ %i.q, %bb.g ], [ 0, %bb.c ], [ %i.w, %bb.j ], [ 0, %bb.c ], [ %i.af, %bb.k ], [ %i.c, %bb.l ], [ %i.c, %bb.n ], [ %i.ah, %bb.o ], [ %i.aj, %bb.p ], [ %i.al, %bb.q ], [ %i.av, %bb.r ], [ %i.ax, %bb.s ], [ %i.bg, %bb.t ], [ 0, %bb.c ], [ 0, %bb.c ], [ 0, %bb.c ], [ 0, %bb.c ], [ 0, %bb.c ], [ 0, %bb.c ], [ 0, %bb.c ], [ 0, %bb.c ], [ 0, %bb.c ], [ 0, %bb.c ]
  %.0 = zext i8 %.0.shrunk to i64
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %bb.u
  %.034 = phi i64 [ %.0, %bb.u ], [ 0, %bb.a ]
  ret i64 %.034
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @can_sja_can_receive(ptr nofree noundef readonly captures(none) %0) #5 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -146
  %i.b = load i8, ptr %i.a, align 2
  %.not = icmp sgt i8 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %0, i64 -152
  %i.d = load i8, ptr %i.c, align 8
  %i.e = and i8 %i.d, 1
  %.not8 = icmp eq i8 %i.e, 0
  br i1 %.not8, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %0, i64 -52
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, 1
  %.not7 = icmp eq i8 %i.h, 0
  br i1 %.not7, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %.0 = phi i1 [ false, %bb.b ], [ true, %bb.d ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i64 -1, 14) i64 @can_sja_receive(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %3 = alloca %struct.qemu_can_filter, align 8    ; 23 uses
  %i.a = getelementptr inbounds i8, ptr %0, i64 -152
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %bb.aj, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.d = load i8, ptr %i.c, align 1
  %i.e = and i8 %i.d, 16
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.aj

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %0, i64 -146
  %i.g = load i8, ptr %i.f, align 2
  %.not70 = icmp sgt i8 %i.g, -1
  br i1 %.not70, label %bb.x, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds i8, ptr %0, i64 -151 ; 10 uses
  %i.i = load i8, ptr %i.h, align 1
  %i.j = or i8 %i.i, 16
  store i8 %i.j, ptr %i.h, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store i64 0, ptr %3, align 8, !annotation !7
  %i.k = load i8, ptr %i.a, align 8
  %i.l = and i8 %i.k, 8
  %.not47.i = icmp eq i8 %i.l, 0
  %i.m = load i32, ptr %1, align 8                ; 5 uses
  %.not48.i = icmp sgt i32 %i.m, -1               ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %0, i64 -145
  %i.o = getelementptr inbounds i8, ptr %0, i64 -141 ; 4 uses
  %i.p = load i8, ptr %i.n, align 1
  %i.q = zext i8 %i.p to i32                      ; 4 uses
  %i.r = getelementptr inbounds i8, ptr %0, i64 -144 ; 2 uses
  %i.s = load i8, ptr %i.r, align 8               ; 6 uses
  br i1 %.not47.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not48.i, label %can_sja_single_filter.exit61.i, label %can_sja_single_filter.exit.i

can_sja_single_filter.exit.i:                     ; preds = %bb.e
  %i.t = shl nuw nsw i32 %i.q, 21
  %i.u = zext i8 %i.s to i32
  %i.v = shl nuw nsw i32 %i.u, 13
  %i.w = or disjoint i32 %i.v, %i.t
  %i.x = getelementptr inbounds i8, ptr %0, i64 -143
  %i.y = load i8, ptr %i.x, align 1
  %i.z = zext i8 %i.y to i32
  %i.aa = shl nuw nsw i32 %i.z, 5
  %i.ab = or disjoint i32 %i.w, %i.aa
  %i.ac = getelementptr inbounds i8, ptr %0, i64 -142
  %i.ad = load i8, ptr %i.ac, align 2             ; 2 uses
  %i.ae = lshr i8 %i.ad, 3
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = and i8 %i.ad, 4
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = shl nuw nsw i32 %i.ah, 28
  %i.aj = or disjoint i32 %i.ai, %i.af
  %spec.select.i = or disjoint i32 %i.aj, %i.ab
  store i32 %spec.select.i, ptr %3, align 8
  %i.ak = load i8, ptr %i.o, align 1
  %i.al = zext i8 %i.ak to i32
  %i.am = shl nuw nsw i32 %i.al, 21
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ao = getelementptr inbounds i8, ptr %0, i64 -140
  %i.ap = load i8, ptr %i.ao, align 4
  %i.aq = zext i8 %i.ap to i32
  %i.ar = shl nuw nsw i32 %i.aq, 13
  %i.as = or disjoint i32 %i.ar, %i.am
  %i.at = getelementptr inbounds i8, ptr %0, i64 -139
  %i.au = load i8, ptr %i.at, align 1
  %i.av = zext i8 %i.au to i32
  %i.aw = shl nuw nsw i32 %i.av, 5
  %i.ax = or disjoint i32 %i.as, %i.aw
  %i.ay = getelementptr inbounds i8, ptr %0, i64 -138
  %i.az = load i8, ptr %i.ay, align 2             ; 2 uses
  %i.ba = lshr i8 %i.az, 3
  %i.bb = zext nneg i8 %i.ba to i32
  %i.bc = or disjoint i32 %i.ax, %i.bb
  %i.bd = xor i32 %i.bc, 536870911                ; 2 uses
  %i.be = and i8 %i.az, 4
  %.not39.i.i = icmp eq i8 %i.be, 0
  %i.bf = or i32 %i.bd, 1073741824
  %storemerge65.i = select i1 %.not39.i.i, i32 %i.bf, i32 %i.bd
  store i32 %storemerge65.i, ptr %i.an, align 4
  %i.bg = call i32 @can_bus_filter_match(ptr noundef nonnull %3, i32 noundef %i.m) #8
  %.not58.i = icmp eq i32 %i.bg, 0
  br i1 %.not58.i, label %can_sja_accept_filter.exit.thread92, label %can_sja_accept_filter.exit.thread

can_sja_single_filter.exit61.i:                   ; preds = %bb.e
  %i.bh = shl nuw nsw i32 %i.q, 3
  %i.bi = lshr i8 %i.s, 5
  %i.bj = zext nneg i8 %i.bi to i32
  %i.bk = and i8 %i.s, 16
  %i.bl = zext nneg i8 %i.bk to i32
  %i.bm = shl nuw nsw i32 %i.bl, 26
  %i.bn = or disjoint i32 %i.bm, %i.bj
  %spec.select72.i = or disjoint i32 %i.bn, %i.bh
  store i32 %spec.select72.i, ptr %3, align 8
  %i.bo = load i8, ptr %i.o, align 1
  %i.bp = zext i8 %i.bo to i32
  %i.bq = shl nuw nsw i32 %i.bp, 3
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bs = getelementptr inbounds i8, ptr %0, i64 -140
  %i.bt = load i8, ptr %i.bs, align 4             ; 2 uses
  %i.bu = lshr i8 %i.bt, 5
  %i.bv = zext nneg i8 %i.bu to i32
  %i.bw = or disjoint i32 %i.bq, %i.bv
  %i.bx = and i8 %i.bt, 16
  %.not37.i.i = icmp eq i8 %i.bx, 0
  %storemerge67.v.i = select i1 %.not37.i.i, i32 1073743871, i32 2047
  %storemerge67.i = xor i32 %i.bw, %storemerge67.v.i
  store i32 %storemerge67.i, ptr %i.br, align 4
  %i.by = call i32 @can_bus_filter_match(ptr noundef nonnull %3, i32 noundef %i.m) #8
  %.not55.i = icmp eq i32 %i.by, 0
  br i1 %.not55.i, label %can_sja_accept_filter.exit.thread92, label %bb.f

bb.f:                                             ; preds = %can_sja_single_filter.exit61.i
  %i.bz = load i32, ptr %1, align 8
  %i.ca = and i32 %i.bz, 1073741824
  %.not56.i = icmp eq i32 %i.ca, 0
  br i1 %.not56.i, label %bb.g, label %can_sja_accept_filter.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cc = load i8, ptr %i.cb, align 4             ; 2 uses
  %i.cd = icmp eq i8 %i.cc, 0
  br i1 %i.cd, label %can_sja_accept_filter.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cf = load i8, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds i8, ptr %0, i64 -139
  %i.ch = load i8, ptr %i.cg, align 1
  %i.ci = zext i8 %i.ch to i32
  %i.cj = xor i32 %i.ci, -1
  %i.ck = getelementptr inbounds i8, ptr %0, i64 -143
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = xor i8 %i.cl, %i.cf
  %i.cn = zext i8 %i.cm to i32
  %i.co = and i32 %i.cn, %i.cj
  %.not57.i = icmp eq i32 %i.co, 0
  br i1 %.not57.i, label %bb.i, label %can_sja_accept_filter.exit.thread92

bb.i:                                             ; preds = %bb.h
  %i.cp = icmp eq i8 %i.cc, 1
  br i1 %i.cp, label %can_sja_accept_filter.exit.thread, label %.split

.split:                                           ; preds = %bb.i
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.cr = load i8, ptr %i.cq, align 1
  %i.cs = getelementptr inbounds i8, ptr %0, i64 -138
  %i.ct = load i8, ptr %i.cs, align 2
  %i.cu = zext i8 %i.ct to i32
  %i.cv = xor i32 %i.cu, -1
  %i.cw = getelementptr inbounds i8, ptr %0, i64 -142
  %i.cx = load i8, ptr %i.cw, align 2
  %i.cy = xor i8 %i.cx, %i.cr
  %i.cz = zext i8 %i.cy to i32
  %i.da = and i32 %i.cz, %i.cv
  %i.db = icmp eq i32 %i.da, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br i1 %i.db, label %bb.n, label %bb.m

bb.j:                                             ; preds = %bb.d
  br i1 %.not48.i, label %can_sja_dual_filter.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dc = shl nuw nsw i32 %i.q, 21
  %i.dd = zext i8 %i.s to i32
  %i.de = shl nuw nsw i32 %i.dd, 13
  %i.df = or disjoint i32 %i.de, %i.dc
  store i32 %i.df, ptr %3, align 8
  %i.dg = load i8, ptr %i.o, align 1
  %i.dh = zext i8 %i.dg to i32
  %i.di = shl nuw nsw i32 %i.dh, 21
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.dk = getelementptr inbounds i8, ptr %0, i64 -140
  %i.dl = load i8, ptr %i.dk, align 4
  %i.dm = zext i8 %i.dl to i32
  %i.dn = shl nuw nsw i32 %i.dm, 13
  %i.do = or disjoint i32 %i.dn, %i.di
  %i.dp = xor i32 %i.do, 536862720
  store i32 %i.dp, ptr %i.dj, align 4
  %i.dq = call i32 @can_bus_filter_match(ptr noundef nonnull %3, i32 noundef %i.m) #8
  %.not52.i = icmp eq i32 %i.dq, 0
  br i1 %.not52.i, label %can_sja_accept_filter.exit, label %can_sja_accept_filter.exit.thread

can_sja_dual_filter.exit.i:                       ; preds = %bb.j
  %i.dr = shl nuw nsw i32 %i.q, 3
  %i.ds = lshr i8 %i.s, 5
  %i.dt = zext nneg i8 %i.ds to i32
  %i.du = and i8 %i.s, 16
  %i.dv = zext nneg i8 %i.du to i32
  %i.dw = shl nuw nsw i32 %i.dv, 26
  %i.dx = or disjoint i32 %i.dw, %i.dt
  %spec.select73.i = or disjoint i32 %i.dx, %i.dr
  store i32 %spec.select73.i, ptr %3, align 8
  %i.dy = load i8, ptr %i.o, align 1
  %i.dz = zext i8 %i.dy to i32
  %i.ea = shl nuw nsw i32 %i.dz, 3
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.ec = getelementptr inbounds i8, ptr %0, i64 -140 ; 2 uses
  %i.ed = load i8, ptr %i.ec, align 4             ; 2 uses
  %i.ee = lshr i8 %i.ed, 5
  %i.ef = zext nneg i8 %i.ee to i32
  %i.eg = or disjoint i32 %i.ea, %i.ef
  %i.eh = and i8 %i.ed, 16
  %.not25.i.i = icmp eq i8 %i.eh, 0
  %storemerge69.v.i = select i1 %.not25.i.i, i32 1073743871, i32 2047
  %storemerge69.i = xor i32 %i.eg, %storemerge69.v.i
  store i32 %storemerge69.i, ptr %i.eb, align 4
  %i.ei = call i32 @can_bus_filter_match(ptr noundef nonnull %3, i32 noundef %i.m) #8
  %.not49.i = icmp eq i32 %i.ei, 0
  br i1 %.not49.i, label %can_sja_dual_filter.exit.can_sja_dual_filter.exit64_crit_edge.i, label %bb.l

can_sja_dual_filter.exit.can_sja_dual_filter.exit64_crit_edge.i: ; preds = %can_sja_dual_filter.exit.i
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %0, i64 -142
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 2
  %.phi.trans.insert75.i = getelementptr inbounds i8, ptr %0, i64 -138
  %.pre76.i = load i8, ptr %.phi.trans.insert75.i, align 2
  br label %can_sja_dual_filter.exit64.i

bb.l:                                             ; preds = %can_sja_dual_filter.exit.i
  %i.ej = load i8, ptr %i.r, align 8
  %i.ek = shl i8 %i.ej, 4
  %i.el = getelementptr inbounds i8, ptr %0, i64 -142
  %i.em = load i8, ptr %i.el, align 2             ; 2 uses
  %i.en = and i8 %i.em, 15
  %i.eo = or disjoint i8 %i.en, %i.ek
  %i.ep = load i8, ptr %i.ec, align 4
  %i.eq = shl i8 %i.ep, 4
  %i.er = getelementptr inbounds i8, ptr %0, i64 -138
  %i.es = load i8, ptr %i.er, align 2             ; 2 uses
  %i.et = and i8 %i.es, 15
  %i.eu = or disjoint i8 %i.et, %i.eq
  %i.ev = xor i8 %i.eu, -1
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ex = load i8, ptr %i.ew, align 8
  %i.ey = xor i8 %i.ex, %i.eo
  %i.ez = and i8 %i.ey, %i.ev
  %.not50.i = icmp eq i8 %i.ez, 0
  br i1 %.not50.i, label %can_sja_accept_filter.exit.thread, label %can_sja_dual_filter.exit64.i

can_sja_dual_filter.exit64.i:                     ; preds = %bb.l, %can_sja_dual_filter.exit.can_sja_dual_filter.exit64_crit_edge.i
  %i.fa = phi i8 [ %.pre76.i, %can_sja_dual_filter.exit.can_sja_dual_filter.exit64_crit_edge.i ], [ %i.es, %bb.l ] ; 2 uses
  %i.fb = phi i8 [ %.pre.i, %can_sja_dual_filter.exit.can_sja_dual_filter.exit64_crit_edge.i ], [ %i.em, %bb.l ] ; 2 uses
  %i.fc = getelementptr inbounds i8, ptr %0, i64 -143
  %i.fd = getelementptr inbounds i8, ptr %0, i64 -139
  %i.fe = load i8, ptr %i.fc, align 1
  %i.ff = zext i8 %i.fe to i32
  %i.fg = shl nuw nsw i32 %i.ff, 3
  %i.fh = lshr i8 %i.fb, 5
  %i.fi = zext nneg i8 %i.fh to i32
  %i.fj = and i8 %i.fb, 16
  %i.fk = zext nneg i8 %i.fj to i32
  %i.fl = shl nuw nsw i32 %i.fk, 26
  %i.fm = or disjoint i32 %i.fl, %i.fi
  %spec.select74.i = or disjoint i32 %i.fm, %i.fg
  store i32 %spec.select74.i, ptr %3, align 8
  %i.fn = load i8, ptr %i.fd, align 1
  %i.fo = zext i8 %i.fn to i32
  %i.fp = shl nuw nsw i32 %i.fo, 3
  %i.fq = lshr i8 %i.fa, 5
  %i.fr = zext nneg i8 %i.fq to i32
  %i.fs = or disjoint i32 %i.fp, %i.fr
  %i.ft = and i8 %i.fa, 16
  %.not25.i63.i = icmp eq i8 %i.ft, 0
  %storemerge71.v.i = select i1 %.not25.i63.i, i32 1073743871, i32 2047
  %storemerge71.i = xor i32 %i.fs, %storemerge71.v.i
  store i32 %storemerge71.i, ptr %i.eb, align 4
  %i.fu = load i32, ptr %1, align 8
  %i.fv = call i32 @can_bus_filter_match(ptr noundef nonnull %3, i32 noundef %i.fu) #8
  %.not51.i.not = icmp eq i32 %i.fv, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br i1 %.not51.i.not, label %bb.m, label %bb.n

can_sja_accept_filter.exit.thread:                ; preds = %bb.l, %bb.f, %bb.g, %bb.i, %bb.k, %can_sja_single_filter.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %bb.n

can_sja_accept_filter.exit.thread92:              ; preds = %can_sja_single_filter.exit61.i, %can_sja_single_filter.exit.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %bb.m

can_sja_accept_filter.exit:                       ; preds = %bb.k
  %i.fw = getelementptr inbounds i8, ptr %0, i64 -143
  %i.fx = getelementptr inbounds i8, ptr %0, i64 -139
  %i.fy = load i8, ptr %i.fw, align 1
  %i.fz = zext i8 %i.fy to i32
  %i.ga = getelementptr inbounds i8, ptr %0, i64 -142
  %i.gb = shl nuw nsw i32 %i.fz, 21
  %i.gc = load i8, ptr %i.ga, align 2
  %i.gd = zext i8 %i.gc to i32
  %i.ge = shl nuw nsw i32 %i.gd, 13
  %i.gf = or disjoint i32 %i.ge, %i.gb
  store i32 %i.gf, ptr %3, align 8
  %i.gg = load i8, ptr %i.fx, align 1
  %i.gh = zext i8 %i.gg to i32
  %i.gi = shl nuw nsw i32 %i.gh, 21
  %i.gj = getelementptr inbounds i8, ptr %0, i64 -138
  %i.gk = load i8, ptr %i.gj, align 2
  %i.gl = zext i8 %i.gk to i32
  %i.gm = shl nuw nsw i32 %i.gl, 13
  %i.gn = or disjoint i32 %i.gm, %i.gi
  %i.go = xor i32 %i.gn, 536862720
  store i32 %i.go, ptr %i.dj, align 4
  %i.gp = load i32, ptr %1, align 8
  %i.gq = call i32 @can_bus_filter_match(ptr noundef nonnull %3, i32 noundef %i.gp) #8
  %.not53.i.not = icmp eq i32 %i.gq, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br i1 %.not53.i.not, label %bb.m, label %bb.n

bb.m:                                             ; preds = %can_sja_dual_filter.exit64.i, %.split, %can_sja_accept_filter.exit.thread92, %can_sja_accept_filter.exit
  %i.gr = load i8, ptr %i.h, align 1
  %i.gs = and i8 %i.gr, -17
  store i8 %i.gs, ptr %i.h, align 1
  br label %bb.aj

bb.n:                                             ; preds = %can_sja_dual_filter.exit64.i, %.split, %can_sja_accept_filter.exit.thread, %can_sja_accept_filter.exit
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.gu = load i8, ptr %i.gt, align 4             ; 14 uses
  %i.gv = zext i8 %i.gu to i32
  %i.gw = load i32, ptr %1, align 8
  %i.gx = and i32 %i.gw, 536870912
  %.not.i71 = icmp ne i32 %i.gx, 0
  %i.gy = icmp ugt i8 %i.gu, 8
  %or.cond.i = select i1 %.not.i71, i1 true, i1 %i.gy
  br i1 %or.cond.i, label %frame2buff_pel.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i8 %i.gu, ptr @can_sja_receive.rcv, align 1
  %i.gz = load i32, ptr %1, align 8               ; 2 uses
  %i.ha = and i32 %i.gz, 1073741824
  %.not39.i = icmp eq i32 %i.ha, 0
  br i1 %.not39.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.hb = or disjoint i8 %i.gu, 64                ; 2 uses
  store i8 %i.hb, ptr @can_sja_receive.rcv, align 1
  %.pr.i = load i32, ptr %1, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.hc = phi i8 [ %i.hb, %bb.p ], [ %i.gu, %bb.o ]
  %i.hd = phi i32 [ %.pr.i, %bb.p ], [ %i.gz, %bb.o ] ; 2 uses
  %.not40.i = icmp sgt i32 %i.hd, -1
  br i1 %.not40.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.he = or i8 %i.hc, -128
  store i8 %i.he, ptr @can_sja_receive.rcv, align 1
  %i.hf = load i32, ptr %1, align 8               ; 2 uses
  %i.hg = lshr i32 %i.hf, 21
  %i.hh = trunc i32 %i.hg to i8
  store i8 %i.hh, ptr getelementptr inbounds nuw (i8, ptr @can_sja_receive.rcv, i64 1), align 1
  %i.hi = lshr i32 %i.hf, 13
  %i.hj = trunc i32 %i.hi to i8
  store i8 %i.hj, ptr getelementptr inbounds nuw (i8, ptr @can_sja_receive.rcv, i64 2), align 1
  %i.hk = load i32, ptr %1, align 8               ; 2 uses
  %i.hl = lshr i32 %i.hk, 5
  %i.hm = trunc i32 %i.hl to i8
  store i8 %i.hm, ptr getelementptr inbounds nuw (i8, ptr @can_sja_receive.rcv, i64 3), align 1
  %i.hn = trunc i32 %i.hk to i8
  %.tr41.i = shl i8 %i.hn, 3
  store i8 %.tr41.i, ptr getelementptr inbounds nuw (i8, ptr @can_sja_receive.rcv, i64 4), align 1
  %.not6.i = icmp eq i8 %i.gu, 0
  br i1 %.not6.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %bb.r
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %wide.trip.count.i = zext nneg i8 %i.gu to i64  ; 3 uses
  %min.iters.check = icmp ult i8 %i.gu, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check119 = icmp ult i8 %i.gu, 32
  br i1 %min.iters.check119, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 %index ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %wide.load = load <16 x i8>, ptr %i.hp, align 1
  %wide.load120 = load <16 x i8>, ptr %i.hq, align 1
  %i.hr = getelementptr inbounds nuw i8, ptr @can_sja_receive.rcv, i64 %index ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 5
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 21
  store <16 x i8> %wide.load, ptr %i.hs, align 1
  store <16 x i8> %wide.load120, ptr %i.ht, align 1
  %index.next = add nuw i64 %index, 32
  br label %vector.body, !llvm.loop !8

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %n.vec121 = and i64 %wide.trip.count.i, 12      ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index122 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next124, %vec.epilog.vector.body ] ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ho, i64 %index122
  %wide.load123 = load <4 x i8>, ptr %i.hu, align 1
  %i.hv = getelementptr inbounds nuw i8, ptr @can_sja_receive.rcv, i64 %index122
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 5
  store <4 x i8> %wide.load123, ptr %i.hw, align 1
  %index.next124 = add nuw i64 %index122, 4       ; 2 uses
  %i.hx = icmp eq i64 %index.next124, %n.vec121
  br i1 %i.hx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !9

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n125 = icmp eq i64 %n.vec121, %wide.trip.count.i
  br i1 %cmp.n125, label %._crit_edge.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec121, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ho, i64 %indvars.iv.i
  %i.hz = load i8, ptr %i.hy, align 1
  %i.ia = getelementptr inbounds nuw i8, ptr @can_sja_receive.rcv, i64 %indvars.iv.i
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 5
  store i8 %i.hz, ptr %i.ib, align 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %vec.epilog.scalar.ph, !llvm.loop !10

bb.s:                                             ; preds = %bb.q
  %i.ic = lshr i32 %i.hd, 3
  %i.id = trunc i32 %i.ic to i8
  store i8 %i.id, ptr getelementptr inbounds nuw (i8, ptr @can_sja_receive.rcv, i64 1), align 1
  %i.ie = load i32, ptr %1, align 8
  %i.if = trunc i32 %i.ie to i8
  %.tr.i = shl i8 %i.if, 5
  store i8 %.tr.i, ptr getelementptr inbounds nuw (i8, ptr @can_sja_receive.rcv, i64 2), align 1
  %.not7.i = icmp eq i8 %i.gu, 0
  br i1 %.not7.i, label %._crit_edge.i, label %iter.check139

iter.check139:                                    ; preds = %bb.s
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %wide.trip.count12.i = zext nneg i8 %i.gu to i64 ; 3 uses
  %min.iters.check126 = icmp ult i8 %i.gu, 4
  br i1 %min.iters.check126, label %vec.epilog.scalar.ph140.preheader, label %vector.main.loop.iter.check127

vector.main.loop.iter.check127:                   ; preds = %iter.check139
  %min.iters.check128 = icmp ult i8 %i.gu, 32
  br i1 %min.iters.check128, label %vec.epilog.ph143, label %vector.body131

vector.body131:                                   ; preds = %vector.main.loop.iter.check127, %vector.body131
  %index132 = phi i64 [ %index.next135, %vector.body131 ], [ 0, %vector.main.loop.iter.check127 ] ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 %index132 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  %wide.load133 = load <16 x i8>, ptr %i.ih, align 1
  %wide.load134 = load <16 x i8>, ptr %i.ii, align 1
  %i.ij = getelementptr inbounds nuw i8, ptr @can_sja_receive.rcv, i64 %index132 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 3
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 19
  store <16 x i8> %wide.load133, ptr %i.ik, align 1
  store <16 x i8> %wide.load134, ptr %i.il, align 1
  %index.next135 = add nuw i64 %index132, 32
  br label %vector.body131, !llvm.loop !11

vec.epilog.ph143:                                 ; preds = %vector.main.loop.iter.check127
  %n.vec144 = and i64 %wide.trip.count12.i, 12    ; 3 uses
  br label %vec.epilog.vector.body145

vec.epilog.vector.body145:                        ; preds = %vec.epilog.vector.body145, %vec.epilog.ph143
  %index146 = phi i64 [ 0, %vec.epilog.ph143 ], [ %index.next148, %vec.epilog.vector.body145 ] ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ig, i64 %index146
  %wide.load147 = load <4 x i8>, ptr %i.im, align 1
end_hunk_0

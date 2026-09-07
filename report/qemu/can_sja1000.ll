Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/can_sja1000?download=true
inline.NumInlined: 41
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@can_sja_receive:bb.a
bb.g:                                             ; preds = %bb.f
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ce = load i8, ptr %i.cd, align 4             ; 2 uses
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %can_sja_accept_filter.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ch = load i8, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds i8, ptr %0, i64 -139
  %i.cj = load i8, ptr %i.ci, align 1
  %i.ck = zext i8 %i.cj to i32
  %i.cl = xor i32 %i.ck, -1
  %i.cm = getelementptr inbounds i8, ptr %0, i64 -143
  %i.cn = load i8, ptr %i.cm, align 1
  %i.co = xor i8 %i.cn, %i.ch
  %i.cp = zext i8 %i.co to i32
  %i.cq = and i32 %i.cp, %i.cl
  %.not57.i = icmp eq i32 %i.cq, 0
  br i1 %.not57.i, label %bb.i, label %can_sja_accept_filter.exit.thread92

bb.i:                                             ; preds = %bb.h
  %i.cr = icmp eq i8 %i.ce, 1
  br i1 %i.cr, label %can_sja_accept_filter.exit.thread, label %.split

.split:                                           ; preds = %bb.i
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ct = load i8, ptr %i.cs, align 1
  %i.cu = getelementptr inbounds i8, ptr %0, i64 -138
  %i.cv = load i8, ptr %i.cu, align 2
  %i.cw = zext i8 %i.cv to i32
  %i.cx = xor i32 %i.cw, -1
  %i.cy = getelementptr inbounds i8, ptr %0, i64 -142
  %i.cz = load i8, ptr %i.cy, align 2
  %i.da = xor i8 %i.cz, %i.ct
  %i.db = zext i8 %i.da to i32
  %i.dc = and i32 %i.db, %i.cx
  %i.dd = icmp eq i32 %i.dc, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br i1 %i.dd, label %bb.n, label %bb.m

bb.j:                                             ; preds = %bb.d
  br i1 %.not48.i, label %can_sja_dual_filter.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.de = shl nuw nsw i32 %i.q, 21
  %i.df = zext i8 %i.s to i32
  %i.dg = shl nuw nsw i32 %i.df, 13
  %i.dh = or disjoint i32 %i.dg, %i.de
  store i32 %i.dh, ptr %3, align 8
  %i.di = load i8, ptr %i.o, align 1
  %i.dj = zext i8 %i.di to i32
  %i.dk = shl nuw nsw i32 %i.dj, 21
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %0, i64 -140
  %i.dn = load i8, ptr %i.dm, align 4
  %i.do = zext i8 %i.dn to i32
  %i.dp = shl nuw nsw i32 %i.do, 13
  %i.dq = or disjoint i32 %i.dp, %i.dk
  %i.dr = xor i32 %i.dq, 536862720
  store i32 %i.dr, ptr %i.dl, align 4
  %i.ds = call i32 @can_bus_filter_match(ptr noundef nonnull %3, i32 noundef %i.m) #8
  %.not52.i = icmp eq i32 %i.ds, 0
  br i1 %.not52.i, label %can_sja_accept_filter.exit, label %can_sja_accept_filter.exit.thread

can_sja_dual_filter.exit.i:                       ; preds = %bb.j
  %i.dt = shl nuw nsw i32 %i.q, 3
  %i.du = lshr i8 %i.s, 5
  %i.dv = zext nneg i8 %i.du to i32
  %i.dw = and i8 %i.s, 16
  %i.dx = zext nneg i8 %i.dw to i32
  %i.dy = shl nuw nsw i32 %i.dx, 26
  %i.dz = or disjoint i32 %i.dy, %i.dv
  %spec.select73.i = or disjoint i32 %i.dz, %i.dt
  store i32 %spec.select73.i, ptr %3, align 8
  %i.ea = load i8, ptr %i.o, align 1
  %i.eb = zext i8 %i.ea to i32
  %i.ec = shl nuw nsw i32 %i.eb, 3
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.ee = getelementptr inbounds i8, ptr %0, i64 -140 ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 4             ; 2 uses
  %i.eg = lshr i8 %i.ef, 5
  %i.eh = zext nneg i8 %i.eg to i32
  %i.ei = or disjoint i32 %i.ec, %i.eh
  %i.ej = xor i32 %i.ei, 2047                     ; 2 uses
  %i.ek = and i8 %i.ef, 16
  %.not25.i.i = icmp eq i8 %i.ek, 0
  %i.el = or disjoint i32 %i.ej, 1073741824
  %storemerge69.i = select i1 %.not25.i.i, i32 %i.el, i32 %i.ej
  store i32 %storemerge69.i, ptr %i.ed, align 4
  %i.em = call i32 @can_bus_filter_match(ptr noundef nonnull %3, i32 noundef %i.m) #8
  %.not49.i = icmp eq i32 %i.em, 0
  br i1 %.not49.i, label %can_sja_dual_filter.exit.can_sja_dual_filter.exit64_crit_edge.i, label %bb.l

can_sja_dual_filter.exit.can_sja_dual_filter.exit64_crit_edge.i: ; preds = %can_sja_dual_filter.exit.i
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %0, i64 -142
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 2
  %.phi.trans.insert75.i = getelementptr inbounds i8, ptr %0, i64 -138
  %.pre76.i = load i8, ptr %.phi.trans.insert75.i, align 2
  br label %can_sja_dual_filter.exit64.i

bb.l:                                             ; preds = %can_sja_dual_filter.exit.i
  %i.en = load i8, ptr %i.r, align 8
  %i.eo = shl i8 %i.en, 4
  %i.ep = getelementptr inbounds i8, ptr %0, i64 -142
  %i.eq = load i8, ptr %i.ep, align 2             ; 2 uses
  %i.er = and i8 %i.eq, 15
  %i.es = or disjoint i8 %i.er, %i.eo
  %i.et = load i8, ptr %i.ee, align 4
  %i.eu = shl i8 %i.et, 4
  %i.ev = getelementptr inbounds i8, ptr %0, i64 -138
  %i.ew = load i8, ptr %i.ev, align 2             ; 2 uses
  %i.ex = and i8 %i.ew, 15
  %i.ey = or disjoint i8 %i.ex, %i.eu
  %i.ez = xor i8 %i.ey, -1
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fb = load i8, ptr %i.fa, align 8
  %i.fc = xor i8 %i.fb, %i.es
  %i.fd = and i8 %i.fc, %i.ez
  %.not50.i = icmp eq i8 %i.fd, 0
  br i1 %.not50.i, label %can_sja_accept_filter.exit.thread, label %can_sja_dual_filter.exit64.i

can_sja_dual_filter.exit64.i:                     ; preds = %bb.l, %can_sja_dual_filter.exit.can_sja_dual_filter.exit64_crit_edge.i
  %i.fe = phi i8 [ %.pre76.i, %can_sja_dual_filter.exit.can_sja_dual_filter.exit64_crit_edge.i ], [ %i.ew, %bb.l ] ; 2 uses
  %i.ff = phi i8 [ %.pre.i, %can_sja_dual_filter.exit.can_sja_dual_filter.exit64_crit_edge.i ], [ %i.eq, %bb.l ] ; 2 uses
  %i.fg = getelementptr inbounds i8, ptr %0, i64 -143
  %i.fh = getelementptr inbounds i8, ptr %0, i64 -139
  %i.fi = load i8, ptr %i.fg, align 1
  %i.fj = zext i8 %i.fi to i32
  %i.fk = shl nuw nsw i32 %i.fj, 3
  %i.fl = lshr i8 %i.ff, 5
  %i.fm = zext nneg i8 %i.fl to i32
  %i.fn = and i8 %i.ff, 16
  %i.fo = zext nneg i8 %i.fn to i32
  %i.fp = shl nuw nsw i32 %i.fo, 26
  %i.fq = or disjoint i32 %i.fp, %i.fm
  %spec.select74.i = or disjoint i32 %i.fq, %i.fk
  store i32 %spec.select74.i, ptr %3, align 8
  %i.fr = load i8, ptr %i.fh, align 1
  %i.fs = zext i8 %i.fr to i32
  %i.ft = shl nuw nsw i32 %i.fs, 3
  %i.fu = lshr i8 %i.fe, 5
  %i.fv = zext nneg i8 %i.fu to i32
  %i.fw = or disjoint i32 %i.ft, %i.fv
  %i.fx = xor i32 %i.fw, 2047                     ; 2 uses
  %i.fy = and i8 %i.fe, 16
  %.not25.i63.i = icmp eq i8 %i.fy, 0
  %i.fz = or disjoint i32 %i.fx, 1073741824
  %storemerge71.i = select i1 %.not25.i63.i, i32 %i.fz, i32 %i.fx
  store i32 %storemerge71.i, ptr %i.ed, align 4
  %i.ga = load i32, ptr %1, align 8
  %i.gb = call i32 @can_bus_filter_match(ptr noundef nonnull %3, i32 noundef %i.ga) #8
  %.not51.i.not = icmp eq i32 %i.gb, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br i1 %.not51.i.not, label %bb.m, label %bb.n

can_sja_accept_filter.exit.thread:                ; preds = %bb.l, %bb.f, %bb.g, %bb.i, %bb.k, %can_sja_single_filter.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %bb.n

can_sja_accept_filter.exit.thread92:              ; preds = %can_sja_single_filter.exit61.i, %can_sja_single_filter.exit.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %bb.m

can_sja_accept_filter.exit:                       ; preds = %bb.k
  %i.gc = getelementptr inbounds i8, ptr %0, i64 -143
  %i.gd = getelementptr inbounds i8, ptr %0, i64 -139
  %i.ge = load i8, ptr %i.gc, align 1
  %i.gf = zext i8 %i.ge to i32
  %i.gg = getelementptr inbounds i8, ptr %0, i64 -142
  %i.gh = shl nuw nsw i32 %i.gf, 21
  %i.gi = load i8, ptr %i.gg, align 2
  %i.gj = zext i8 %i.gi to i32
  %i.gk = shl nuw nsw i32 %i.gj, 13
  %i.gl = or disjoint i32 %i.gk, %i.gh
  store i32 %i.gl, ptr %3, align 8
  %i.gm = load i8, ptr %i.gd, align 1
  %i.gn = zext i8 %i.gm to i32
  %i.go = shl nuw nsw i32 %i.gn, 21
  %i.gp = getelementptr inbounds i8, ptr %0, i64 -138
  %i.gq = load i8, ptr %i.gp, align 2
  %i.gr = zext i8 %i.gq to i32
  %i.gs = shl nuw nsw i32 %i.gr, 13
  %i.gt = or disjoint i32 %i.gs, %i.go
  %i.gu = xor i32 %i.gt, 536862720
  store i32 %i.gu, ptr %i.dl, align 4
  %i.gv = load i32, ptr %1, align 8
  %i.gw = call i32 @can_bus_filter_match(ptr noundef nonnull %3, i32 noundef %i.gv) #8
  %.not53.i.not = icmp eq i32 %i.gw, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br i1 %.not53.i.not, label %bb.m, label %bb.n

bb.m:                                             ; preds = %can_sja_dual_filter.exit64.i, %.split, %can_sja_accept_filter.exit.thread92, %can_sja_accept_filter.exit
  %i.gx = load i8, ptr %i.h, align 1
  %i.gy = and i8 %i.gx, -17
  store i8 %i.gy, ptr %i.h, align 1
  br label %bb.aj

bb.n:                                             ; preds = %can_sja_dual_filter.exit64.i, %.split, %can_sja_accept_filter.exit.thread, %can_sja_accept_filter.exit
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ha = load i8, ptr %i.gz, align 4             ; 13 uses
  %i.hb = zext i8 %i.ha to i32
  %i.hc = load i32, ptr %1, align 8
  %i.hd = and i32 %i.hc, 536870912
  %.not.i71 = icmp ne i32 %i.hd, 0
  %i.he = icmp ugt i8 %i.ha, 8
  %or.cond.i = select i1 %.not.i71, i1 true, i1 %i.he
  br i1 %or.cond.i, label %frame2buff_pel.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i8 %i.ha, ptr @can_sja_receive.rcv, align 1
  %i.hf = load i32, ptr %1, align 8               ; 2 uses
  %i.hg = and i32 %i.hf, 1073741824
  %.not39.i = icmp eq i32 %i.hg, 0
  br i1 %.not39.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.hh = or disjoint i8 %i.ha, 64                ; 2 uses
  store i8 %i.hh, ptr @can_sja_receive.rcv, align 1
  %.pr.i = load i32, ptr %1, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.hi = phi i8 [ %i.hh, %bb.p ], [ %i.ha, %bb.o ]
  %i.hj = phi i32 [ %.pr.i, %bb.p ], [ %i.hf, %bb.o ] ; 2 uses
  %.not40.i = icmp sgt i32 %i.hj, -1
  br i1 %.not40.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.hk = or i8 %i.hi, -128
  store i8 %i.hk, ptr @can_sja_receive.rcv, align 1
  %i.hl = load i32, ptr %1, align 8               ; 2 uses
  %i.hm = lshr i32 %i.hl, 21
  %i.hn = trunc i32 %i.hm to i8
  store i8 %i.hn, ptr getelementptr inbounds nuw (i8, ptr @can_sja_receive.rcv, i64 1), align 1
  %i.ho = lshr i32 %i.hl, 13
  %i.hp = trunc i32 %i.ho to i8
  store i8 %i.hp, ptr getelementptr inbounds nuw (i8, ptr @can_sja_receive.rcv, i64 2), align 1
  %i.hq = load i32, ptr %1, align 8               ; 2 uses
  %i.hr = lshr i32 %i.hq, 5
  %i.hs = trunc i32 %i.hr to i8
  store i8 %i.hs, ptr getelementptr inbounds nuw (i8, ptr @can_sja_receive.rcv, i64 3), align 1
  %i.ht = trunc i32 %i.hq to i8
  %.tr41.i = shl i8 %i.ht, 3
  store i8 %.tr41.i, ptr getelementptr inbounds nuw (i8, ptr @can_sja_receive.rcv, i64 4), align 1
  %.not6.i = icmp eq i8 %i.ha, 0
  br i1 %.not6.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %bb.r
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %wide.trip.count.i = zext nneg i8 %i.ha to i64  ; 3 uses
  %min.iters.check = icmp ult i8 %i.ha, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check119 = icmp ult i8 %i.ha, 32
  br i1 %min.iters.check119, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 %index ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  %wide.load = load <16 x i8>, ptr %i.hv, align 1
  %wide.load120 = load <16 x i8>, ptr %i.hw, align 1
  %i.hx = getelementptr inbounds nuw i8, ptr @can_sja_receive.rcv, i64 %index ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 5
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 21
  store <16 x i8> %wide.load, ptr %i.hy, align 1
  store <16 x i8> %wide.load120, ptr %i.hz, align 1
  %index.next = add nuw i64 %index, 32
  br label %vector.body, !llvm.loop !8

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %n.vec121 = and i64 %wide.trip.count.i, 12      ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index122 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next124, %vec.epilog.vector.body ] ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hu, i64 %index122
  %wide.load123 = load <4 x i8>, ptr %i.ia, align 1
  %i.ib = getelementptr inbounds nuw i8, ptr @can_sja_receive.rcv, i64 %index122
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 5
  store <4 x i8> %wide.load123, ptr %i.ic, align 1
  %index.next124 = add nuw i64 %index122, 4       ; 2 uses
  %i.id = icmp eq i64 %index.next124, %n.vec121
  br i1 %i.id, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !9

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n125 = icmp eq i64 %n.vec121, %wide.trip.count.i
  br i1 %cmp.n125, label %._crit_edge.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec121, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hu, i64 %indvars.iv.i
  %i.if = load i8, ptr %i.ie, align 1
  %i.ig = getelementptr inbounds nuw i8, ptr @can_sja_receive.rcv, i64 %indvars.iv.i
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 5
  store i8 %i.if, ptr %i.ih, align 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %vec.epilog.scalar.ph, !llvm.loop !10

bb.s:                                             ; preds = %bb.q
  %i.ii = lshr i32 %i.hj, 3
  %i.ij = trunc i32 %i.ii to i8
  store i8 %i.ij, ptr getelementptr inbounds nuw (i8, ptr @can_sja_receive.rcv, i64 1), align 1
  %i.ik = load i32, ptr %1, align 8
  %i.il = trunc i32 %i.ik to i8
  %.tr.i = shl i8 %i.il, 5
  store i8 %.tr.i, ptr getelementptr inbounds nuw (i8, ptr @can_sja_receive.rcv, i64 2), align 1
  %.not7.i = icmp eq i8 %i.ha, 0
  br i1 %.not7.i, label %._crit_edge.i, label %iter.check139

iter.check139:                                    ; preds = %bb.s
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %wide.trip.count12.i = zext nneg i8 %i.ha to i64 ; 3 uses
  %min.iters.check126 = icmp ult i8 %i.ha, 4
  br i1 %min.iters.check126, label %vec.epilog.scalar.ph140.preheader, label %vector.main.loop.iter.check127

vector.main.loop.iter.check127:                   ; preds = %iter.check139
  %min.iters.check128 = icmp ult i8 %i.ha, 32
  br i1 %min.iters.check128, label %vec.epilog.ph143, label %vector.body131

vector.body131:                                   ; preds = %vector.main.loop.iter.check127, %vector.body131
  %index132 = phi i64 [ %index.next135, %vector.body131 ], [ 0, %vector.main.loop.iter.check127 ] ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 %index132 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  %wide.load133 = load <16 x i8>, ptr %i.in, align 1
  %wide.load134 = load <16 x i8>, ptr %i.io, align 1
  %i.ip = getelementptr inbounds nuw i8, ptr @can_sja_receive.rcv, i64 %index132 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 3
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 19
  store <16 x i8> %wide.load133, ptr %i.iq, align 1
  store <16 x i8> %wide.load134, ptr %i.ir, align 1
  %index.next135 = add nuw i64 %index132, 32
  br label %vector.body131, !llvm.loop !11

vec.epilog.ph143:                                 ; preds = %vector.main.loop.iter.check127
  %n.vec144 = and i64 %wide.trip.count12.i, 12    ; 3 uses
  br label %vec.epilog.vector.body145

vec.epilog.vector.body145:                        ; preds = %vec.epilog.vector.body145, %vec.epilog.ph143
  %index146 = phi i64 [ 0, %vec.epilog.ph143 ], [ %index.next148, %vec.epilog.vector.body145 ] ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.im, i64 %index146
  %wide.load147 = load <4 x i8>, ptr %i.is, align 1
  %i.it = getelementptr inbounds nuw i8, ptr @can_sja_receive.rcv, i64 %index146
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 3
  store <4 x i8> %wide.load147, ptr %i.iu, align 1
  %index.next148 = add nuw i64 %index146, 4       ; 2 uses
  %i.iv = icmp eq i64 %index.next148, %n.vec144
  br i1 %i.iv, label %vec.epilog.middle.block149, label %vec.epilog.vector.body145, !llvm.loop !12

vec.epilog.middle.block149:                       ; preds = %vec.epilog.vector.body145
  %cmp.n150 = icmp eq i64 %n.vec144, %wide.trip.count12.i
  br i1 %cmp.n150, label %._crit_edge.i, label %vec.epilog.scalar.ph140.preheader

vec.epilog.scalar.ph140.preheader:                ; preds = %iter.check139, %vec.epilog.middle.block149
  %indvars.iv9.i.ph = phi i64 [ 0, %iter.check139 ], [ %n.vec144, %vec.epilog.middle.block149 ]
  br label %vec.epilog.scalar.ph140

vec.epilog.scalar.ph140:                          ; preds = %vec.epilog.scalar.ph140.preheader, %vec.epilog.scalar.ph140
  %indvars.iv9.i = phi i64 [ %indvars.iv.next10.i, %vec.epilog.scalar.ph140 ], [ %indvars.iv9.i.ph, %vec.epilog.scalar.ph140.preheader ] ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.im, i64 %indvars.iv9.i
  %i.ix = load i8, ptr %i.iw, align 1
  %i.iy = getelementptr inbounds nuw i8, ptr @can_sja_receive.rcv, i64 %indvars.iv9.i
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 3
  store i8 %i.ix, ptr %i.iz, align 1
  %indvars.iv.next10.i = add nuw nsw i64 %indvars.iv9.i, 1 ; 2 uses
  %exitcond13.not.i = icmp eq i64 %indvars.iv.next10.i, %wide.trip.count12.i
  br i1 %exitcond13.not.i, label %._crit_edge.i, label %vec.epilog.scalar.ph140, !llvm.loop !13

frame2buff_pel.exit:                              ; preds = %bb.n
  %i.ja = load i8, ptr %i.h, align 1
  %i.jb = and i8 %i.ja, -17
  store i8 %i.jb, ptr %i.h, align 1
  br label %bb.aj

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph140, %vec.epilog.middle.block, %vec.epilog.middle.block149, %bb.s, %bb.r
  %.sink = phi i32 [ 5, %bb.r ], [ 3, %vec.epilog.middle.block149 ], [ 3, %bb.s ], [ 5, %vec.epilog.middle.block ], [ 3, %vec.epilog.scalar.ph140 ], [ 5, %vec.epilog.scalar.ph ]
  %i.jc = add nuw nsw i32 %.sink, %i.hb           ; 5 uses
  %i.jd = getelementptr inbounds i8, ptr %0, i64 -56 ; 2 uses
  %i.je = load i32, ptr %i.jd, align 8
  %i.jf = add i32 %i.je, %i.jc                    ; 2 uses
  %i.jg = icmp ugt i32 %i.jf, 64
  br i1 %i.jg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge.i
  %i.jh = load i8, ptr %i.h, align 1
  %i.ji = getelementptr inbounds i8, ptr %0, i64 -150 ; 2 uses
  %i.jj = load i8, ptr %i.ji, align 2
  %i.jk = or i8 %i.jj, 8                          ; 2 uses
  store i8 %i.jk, ptr %i.ji, align 2
  %i.jl = and i8 %i.jh, -19
  %i.jm = or disjoint i8 %i.jl, 2
  store i8 %i.jm, ptr %i.h, align 1
  %i.jn = getelementptr inbounds i8, ptr %0, i64 -149
  %i.jo = load i8, ptr %i.jn, align 1
  %i.jp = and i8 %i.jo, %i.jk
  %.not.i72 = icmp ne i8 %i.jp, 0
  %i.jq = getelementptr inbounds i8, ptr %0, i64 -8
  %i.jr = load ptr, ptr %i.jq, align 8
  %..i = zext i1 %.not.i72 to i32
  call void @qemu_set_irq(ptr noundef %i.jr, i32 noundef %..i) #8
  %i.js = zext nneg i32 %i.jc to i64
  br label %bb.aj

bb.u:                                             ; preds = %._crit_edge.i
  store i32 %i.jf, ptr %i.jd, align 8
  %i.jt = getelementptr inbounds i8, ptr %0, i64 -148 ; 2 uses
  %i.ju = load i8, ptr %i.jt, align 4
  %i.jv = add i8 %i.ju, 1
  store i8 %i.jv, ptr %i.jt, align 4
  %i.jw = getelementptr inbounds i8, ptr %0, i64 -124 ; 3 uses
  %i.jx = getelementptr inbounds i8, ptr %0, i64 -60 ; 4 uses
  %.promoted = load i32, ptr %i.jx, align 4       ; 2 uses
  %wide.trip.count = zext nneg i32 %i.jc to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.jy = icmp eq i32 %i.jc, 1
  br i1 %i.jy, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.u
  %unroll_iter = and i64 %wide.trip.count, 30
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.new
  %indvars.iv = phi i64 [ 0, %.new ], [ %indvars.iv.next.1, %bb.v ] ; 3 uses
  %i.jz = phi i32 [ %.promoted, %.new ], [ %i.kj, %bb.v ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.v ]
  %i.ka = getelementptr inbounds nuw i8, ptr @can_sja_receive.rcv, i64 %indvars.iv
  %i.kb = load i8, ptr %i.ka, align 1
  %i.kc = add i32 %i.jz, 1
  %i.kd = and i32 %i.jz, 63
  %i.ke = zext nneg i32 %i.kd to i64
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jw, i64 %i.ke
  store i8 %i.kb, ptr %i.kf, align 1
  %i.kg = getelementptr inbounds nuw i8, ptr @can_sja_receive.rcv, i64 %indvars.iv
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 1
  %i.ki = load i8, ptr %i.kh, align 1
  %i.kj = add i32 %i.jz, 2                        ; 4 uses
  %i.kk = and i32 %i.kc, 63
  %i.kl = zext nneg i32 %i.kk to i64
  %i.km = getelementptr inbounds nuw i8, ptr %i.jw, i64 %i.kl
  store i8 %i.ki, ptr %i.km, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.v, !llvm.loop !14

.unr-lcssa:                                       ; preds = %bb.v
  store i32 %i.kj, ptr %i.jx, align 4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.w, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.u
  %indvars.iv.epil.init = phi i64 [ 0, %bb.u ], [ %indvars.iv.next.1, %.unr-lcssa ]
  %.epil.init = phi i32 [ %.promoted, %bb.u ], [ %i.kj, %.unr-lcssa ] ; 2 uses
  %lcmp.mod156 = trunc i32 %i.jc to i1
  call void @llvm.assume(i1 %lcmp.mod156)
  %i.kn = getelementptr inbounds nuw i8, ptr @can_sja_receive.rcv, i64 %indvars.iv.epil.init
  %i.ko = load i8, ptr %i.kn, align 1
  %i.kp = add i32 %.epil.init, 1                  ; 2 uses
  store i32 %i.kp, ptr %i.jx, align 4
  %i.kq = and i32 %.epil.init, 63
  %i.kr = zext nneg i32 %i.kq to i64
  %i.ks = getelementptr inbounds nuw i8, ptr %i.jw, i64 %i.kr
  store i8 %i.ko, ptr %i.ks, align 1
  br label %bb.w

bb.w:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa152 = phi i32 [ %i.kj, %.unr-lcssa ], [ %i.kp, %.epil.preheader ]
  %i.kt = and i32 %.lcssa152, 63
  store i32 %i.kt, ptr %i.jx, align 4
  %i.ku = load i8, ptr %i.h, align 1
  %i.kv = getelementptr inbounds i8, ptr %0, i64 -150 ; 2 uses
  %i.kw = load i8, ptr %i.kv, align 2
  %i.kx = or i8 %i.kw, 1                          ; 2 uses
  store i8 %i.kx, ptr %i.kv, align 2
  %i.ky = and i8 %i.ku, -18
  %i.kz = or disjoint i8 %i.ky, 1
  store i8 %i.kz, ptr %i.h, align 1
  %i.la = getelementptr inbounds i8, ptr %0, i64 -149
  %i.lb = load i8, ptr %i.la, align 1
  %i.lc = and i8 %i.lb, %i.kx
  %.not.i73 = icmp ne i8 %i.lc, 0
  %i.ld = getelementptr inbounds i8, ptr %0, i64 -8
  %i.le = load ptr, ptr %i.ld, align 8
  %..i74 = zext i1 %.not.i73 to i32
  call void @qemu_set_irq(ptr noundef %i.le, i32 noundef %..i74) #8
  br label %bb.aj

bb.x:                                             ; preds = %bb.c
  %i.lf = getelementptr inbounds i8, ptr %0, i64 -51 ; 7 uses
  %i.lg = load i8, ptr %i.lf, align 1             ; 2 uses
  %i.lh = or i8 %i.lg, 16
  store i8 %i.lh, ptr %i.lf, align 1
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.lj = load i8, ptr %i.li, align 4             ; 11 uses
  %i.lk = load i32, ptr %1, align 8               ; 2 uses
  %i.ll = and i32 %i.lk, -1610612736
  %or.cond.i75 = icmp ne i32 %i.ll, 0
  %i.lm = icmp ugt i8 %i.lj, 8
  %or.cond24.i = select i1 %or.cond.i75, i1 true, i1 %i.lm
  br i1 %or.cond24.i, label %frame2buff_bas.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ln = lshr i32 %i.lk, 3
  %i.lo = trunc i32 %i.ln to i8
  store i8 %i.lo, ptr @can_sja_receive.rcv, align 1
  %i.lp = load i32, ptr %1, align 8               ; 2 uses
  %i.lq = trunc i32 %i.lp to i8
  %.tr.i76 = shl i8 %i.lq, 5
  %i.lr = lshr i32 %i.lp, 26
  %i.ls = trunc nuw nsw i32 %i.lr to i8
  %i.lt = and i8 %i.ls, 16
  %i.lu = or disjoint i8 %i.lt, %.tr.i76
  %i.lv = or disjoint i8 %i.lu, %i.lj
  store i8 %i.lv, ptr getelementptr inbounds nuw (i8, ptr @can_sja_receive.rcv, i64 1), align 1
  %.not.i78 = icmp eq i8 %i.lj, 0
  br i1 %.not.i78, label %frame2buff_bas.exit.thread99, label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %bb.y
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.lx = load i8, ptr %i.lw, align 8
  store i8 %i.lx, ptr getelementptr inbounds nuw (i8, ptr @can_sja_receive.rcv, i64 2), align 1
  %exitcond.not.i83 = icmp eq i8 %i.lj, 1
  br i1 %exitcond.not.i83, label %frame2buff_bas.exit, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i79
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.lz = load i8, ptr %i.ly, align 1
  store i8 %i.lz, ptr getelementptr inbounds nuw (i8, ptr @can_sja_receive.rcv, i64 3), align 1
  %exitcond.not.i83.1 = icmp eq i8 %i.lj, 2
  br i1 %exitcond.not.i83.1, label %frame2buff_bas.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ma = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.mb = load i8, ptr %i.ma, align 2
  store i8 %i.mb, ptr getelementptr inbounds nuw (i8, ptr @can_sja_receive.rcv, i64 4), align 1
  %exitcond.not.i83.2 = icmp eq i8 %i.lj, 3
  br i1 %exitcond.not.i83.2, label %frame2buff_bas.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.mc = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.md = load i8, ptr %i.mc, align 1
  store i8 %i.md, ptr getelementptr inbounds nuw (i8, ptr @can_sja_receive.rcv, i64 5), align 1
  %exitcond.not.i83.3 = icmp eq i8 %i.lj, 4
  br i1 %exitcond.not.i83.3, label %frame2buff_bas.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.me = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.mf = load i8, ptr %i.me, align 4
  store i8 %i.mf, ptr getelementptr inbounds nuw (i8, ptr @can_sja_receive.rcv, i64 6), align 1
  %exitcond.not.i83.4 = icmp eq i8 %i.lj, 5
  br i1 %exitcond.not.i83.4, label %frame2buff_bas.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.mg = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.mh = load i8, ptr %i.mg, align 1
  store i8 %i.mh, ptr getelementptr inbounds nuw (i8, ptr @can_sja_receive.rcv, i64 7), align 1
  %exitcond.not.i83.5 = icmp eq i8 %i.lj, 6
  br i1 %exitcond.not.i83.5, label %frame2buff_bas.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.mi = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.mj = load i8, ptr %i.mi, align 2
  store i8 %i.mj, ptr getelementptr inbounds nuw (i8, ptr @can_sja_receive.rcv, i64 8), align 1
  %exitcond.not.i83.6 = icmp eq i8 %i.lj, 7
  br i1 %exitcond.not.i83.6, label %frame2buff_bas.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.mk = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.ml = load i8, ptr %i.mk, align 1
  store i8 %i.ml, ptr getelementptr inbounds nuw (i8, ptr @can_sja_receive.rcv, i64 9), align 1
  br label %frame2buff_bas.exit

frame2buff_bas.exit:                              ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %.lr.ph.i79
  %narrow.i = add nuw nsw i8 %i.lj, 2
  %i.mm = zext nneg i8 %narrow.i to i32
  br label %frame2buff_bas.exit.thread99

frame2buff_bas.exit.thread:                       ; preds = %bb.x
  %i.mn = and i8 %i.lg, -17
  store i8 %i.mn, ptr %i.lf, align 1
  br label %bb.aj

frame2buff_bas.exit.thread99:                     ; preds = %bb.y, %frame2buff_bas.exit
  %i.mo = phi i32 [ %i.mm, %frame2buff_bas.exit ], [ 2, %bb.y ] ; 4 uses
  %i.mp = getelementptr inbounds i8, ptr %0, i64 -56 ; 2 uses
  %i.mq = load i32, ptr %i.mp, align 8
  %i.mr = add i32 %i.mq, %i.mo                    ; 2 uses
  %i.ms = icmp ugt i32 %i.mr, 64
  br i1 %i.ms, label %bb.ag, label %.new158

bb.ag:                                            ; preds = %frame2buff_bas.exit.thread99
  %i.mt = load i8, ptr %i.lf, align 1
  %i.mu = and i8 %i.mt, -19
  %i.mv = or disjoint i8 %i.mu, 2
  store i8 %i.mv, ptr %i.lf, align 1
  %i.mw = getelementptr inbounds i8, ptr %0, i64 -50 ; 2 uses
  %i.mx = load i8, ptr %i.mw, align 2
  %i.my = or i8 %i.mx, 8                          ; 2 uses
  store i8 %i.my, ptr %i.mw, align 2
  %i.mz = getelementptr inbounds i8, ptr %0, i64 -52
  %i.na = load i8, ptr %i.mz, align 4
  %i.nb = lshr i8 %i.na, 1
  %i.nc = and i8 %i.nb, %i.my
  %.not.i85 = icmp ne i8 %i.nc, 0
  %i.nd = getelementptr inbounds i8, ptr %0, i64 -8
  %i.ne = load ptr, ptr %i.nd, align 8
  %..i86 = zext i1 %.not.i85 to i32
  tail call void @qemu_set_irq(ptr noundef %i.ne, i32 noundef %..i86) #8
  %i.nf = zext nneg i32 %i.mo to i64
  br label %bb.aj

.new158:                                          ; preds = %frame2buff_bas.exit.thread99
  store i32 %i.mr, ptr %i.mp, align 8
  %i.ng = getelementptr inbounds i8, ptr %0, i64 -148 ; 2 uses
  %i.nh = load i8, ptr %i.ng, align 4
end_hunk_0

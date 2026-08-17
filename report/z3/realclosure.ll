inline.NumInlined: 4624
inline.NumDeleted: 832
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 69
loop-unroll.NumUnrolled: 71
begin_hunk_0_@_ZN16interval_managerIN11realclosure11mpbq_configEE3invERKNS1_8intervalERS3_:bb.a

bb.i:                                             ; preds = %bb.h
  store i32 %i.ak, ptr %i.b, align 8, !tbaa !62
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 4
  %i.az = and i8 %i.ay, -2
  store i8 %i.az, ptr %i.ax, align 4
  br label %_ZN12mpbq_manager3setER4mpbqRKS0_.exit46

bb.j:                                             ; preds = %bb.h
  %i.ba = load ptr, ptr %i.an, align 8, !tbaa !87, !nonnull !53, !align !54
  tail call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.ba, ptr noundef nonnull align 8 dereferenceable(20) %i.b, ptr noundef nonnull align 8 dereferenceable(20) %1)
  %.pre64 = load ptr, ptr %i.m, align 8, !tbaa !121
  br label %_ZN12mpbq_manager3setER4mpbqRKS0_.exit46

_ZN12mpbq_manager3setER4mpbqRKS0_.exit46:         ; preds = %bb.i, %bb.j
  %i.bb = phi ptr [ %i.an, %bb.i ], [ %.pre64, %bb.j ]
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !64
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !64
  tail call void @_ZN11realclosure11mpbq_config15numeral_manager3invER4mpbq(ptr noundef nonnull align 8 dereferenceable(213) %i.bb, ptr noundef nonnull align 8 dereferenceable(20) %i.b)
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !8
  %i.bh = load i32, ptr %i.b, align 8, !tbaa !8
  store i32 %i.bh, ptr %i.bf, align 8, !tbaa !8
  store i32 %i.bg, ptr %i.b, align 8, !tbaa !8
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !9
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !9
  store ptr %i.bl, ptr %i.bi, align 8, !tbaa !9
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !9
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 4 uses
  %i.bn = load i8, ptr %i.bm, align 4             ; 2 uses
  %i.bo = and i8 %i.bn, 2
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 5 uses
  %i.bq = load i8, ptr %i.bp, align 4
  %i.br = and i8 %i.bq, 2
  %i.bs = and i8 %i.bn, -3
  %i.bt = or disjoint i8 %i.br, %i.bs
  store i8 %i.bt, ptr %i.bm, align 4
  %i.bu = load i8, ptr %i.bp, align 4             ; 2 uses
  %i.bv = and i8 %i.bu, -3
  %i.bw = or disjoint i8 %i.bv, %i.bo
  store i8 %i.bw, ptr %i.bp, align 4
  %i.bx = load i8, ptr %i.bm, align 4             ; 2 uses
  %i.by = and i8 %i.bx, 1
  %i.bz = and i8 %i.bu, 1
  %i.ca = and i8 %i.bx, -2
  %i.cb = or disjoint i8 %i.ca, %i.bz
  store i8 %i.cb, ptr %i.bm, align 4
  %i.cc = load i8, ptr %i.bp, align 4
  %i.cd = and i8 %i.cc, -2
  %i.ce = or disjoint i8 %i.cd, %i.by
  store i8 %i.ce, ptr %i.bp, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !8
  %i.ch = load i32, ptr %i.be, align 8, !tbaa !8
  store i32 %i.ch, ptr %i.cf, align 8, !tbaa !8
  store i32 %i.cg, ptr %i.be, align 8, !tbaa !8
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 49
  store i8 0, ptr %i.ci, align 1, !tbaa !124
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 50
  %i.ck = load i8, ptr %i.cj, align 2, !tbaa !122
  %i.cl = icmp ne i8 %i.ck, 0
  %i.cm = zext i1 %i.cl to i8
  br label %bb.k

bb.k:                                             ; preds = %_ZN12mpbq_manager3setER4mpbqRKS0_.exit46, %bb.g
  %.sink = phi i8 [ %i.cm, %_ZN12mpbq_manager3setER4mpbqRKS0_.exit46 ], [ 1, %bb.g ]
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 51
  store i8 %.sink, ptr %i.cn, align 1, !tbaa !123
  %i.co = load i32, ptr %2, align 8, !tbaa !8
  %i.cp = load i32, ptr %i.a, align 8, !tbaa !8
  store i32 %i.cp, ptr %2, align 8, !tbaa !8
  store i32 %i.co, ptr %i.a, align 8, !tbaa !8
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !9
  %i.ct = load ptr, ptr %i.cr, align 8, !tbaa !9
  store ptr %i.ct, ptr %i.cq, align 8, !tbaa !9
  store ptr %i.cs, ptr %i.cr, align 8, !tbaa !9
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  %i.cv = load i8, ptr %i.cu, align 4             ; 2 uses
  %i.cw = and i8 %i.cv, 2
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.cy = load i8, ptr %i.cx, align 4
  %i.cz = and i8 %i.cy, 2
  %i.da = and i8 %i.cv, -3
  %i.db = or disjoint i8 %i.cz, %i.da
  store i8 %i.db, ptr %i.cu, align 4
  %i.dc = load i8, ptr %i.cx, align 4             ; 2 uses
  %i.dd = and i8 %i.dc, -3
  %i.de = or disjoint i8 %i.dd, %i.cw
  store i8 %i.de, ptr %i.cx, align 4
  %i.df = load i8, ptr %i.cu, align 4             ; 2 uses
  %i.dg = and i8 %i.df, 1
  %i.dh = and i8 %i.dc, 1
  %i.di = and i8 %i.df, -2
  %i.dj = or disjoint i8 %i.di, %i.dh
  store i8 %i.dj, ptr %i.cu, align 4
  %i.dk = load i8, ptr %i.cx, align 4
  %i.dl = and i8 %i.dk, -2
  %i.dm = or disjoint i8 %i.dl, %i.dg
  store i8 %i.dm, ptr %i.cx, align 4
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !8
  %i.dp = load i32, ptr %i.ac, align 8, !tbaa !8
  store i32 %i.dp, ptr %i.dn, align 8, !tbaa !8
  store i32 %i.do, ptr %i.ac, align 8, !tbaa !8
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i8 0, ptr %i.dq, align 8, !tbaa !115
  %i.dr = zext i1 %i.ai to i8
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 50
  store i8 %i.dr, ptr %i.ds, align 2, !tbaa !122
  br label %bb.v

_ZNK16interval_managerIN11realclosure11mpbq_configEE5is_P1ERKNS1_8intervalE.exit.thread54: ; preds = %bb.b
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 49 ; 2 uses
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !124
  %.not.i.i.i47 = icmp eq i8 %i.dv, 0             ; 2 uses
  %i.dw = load i32, ptr %i.dt, align 8            ; 2 uses
  %i.dx = icmp slt i32 %i.dw, 0
  %i.dy = select i1 %.not.i.i.i47, i1 %i.dx, i1 false
  br i1 %i.dy, label %_ZNK16interval_managerIN11realclosure11mpbq_configEE5is_N1ERKNS1_8intervalE.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZNK16interval_managerIN11realclosure11mpbq_configEE5is_P1ERKNS1_8intervalE.exit.thread54
  %i.dz = icmp eq i32 %i.dw, 0
  %i.ea = select i1 %.not.i.i.i47, i1 %i.dz, i1 false
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 51
  %i.ec = load i8, ptr %i.eb, align 1
  %i.ed = icmp ne i8 %i.ec, 0
  %or.cond61 = select i1 %i.ea, i1 %i.ed, i1 false
  br i1 %or.cond61, label %_ZNK16interval_managerIN11realclosure11mpbq_configEE5is_N1ERKNS1_8intervalE.exit.thread, label %_ZNK16interval_managerIN11realclosure11mpbq_configEE5is_N1ERKNS1_8intervalE.exit.thread55

_ZNK16interval_managerIN11realclosure11mpbq_configEE5is_N1ERKNS1_8intervalE.exit.thread: ; preds = %bb.l, %_ZNK16interval_managerIN11realclosure11mpbq_configEE5is_P1ERKNS1_8intervalE.exit.thread54
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !121, !nonnull !53, !align !54 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 212
  store i8 1, ptr %i.eg, align 4, !tbaa !56
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ei = load i8, ptr %i.eh, align 4
  %i.ej = and i8 %i.ei, 1
  %i.ek = icmp eq i8 %i.ej, 0
  br i1 %i.ek, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNK16interval_managerIN11realclosure11mpbq_configEE5is_N1ERKNS1_8intervalE.exit.thread
  store i32 %i.e, ptr %i.b, align 8, !tbaa !62
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.em = load i8, ptr %i.el, align 4
  %i.en = and i8 %i.em, -2
  store i8 %i.en, ptr %i.el, align 4
  br label %_ZN12mpbq_manager3setER4mpbqRKS0_.exit48

bb.n:                                             ; preds = %_ZNK16interval_managerIN11realclosure11mpbq_configEE5is_N1ERKNS1_8intervalE.exit.thread
  %i.eo = load ptr, ptr %i.ef, align 8, !tbaa !87, !nonnull !53, !align !54
  tail call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.eo, ptr noundef nonnull align 8 dereferenceable(20) %i.b, ptr noundef nonnull align 8 dereferenceable(20) %1)
  %.pre = load ptr, ptr %i.ee, align 8, !tbaa !121
  br label %_ZN12mpbq_manager3setER4mpbqRKS0_.exit48

_ZN12mpbq_manager3setER4mpbqRKS0_.exit48:         ; preds = %bb.m, %bb.n
  %i.ep = phi ptr [ %i.ef, %bb.m ], [ %.pre, %bb.n ] ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !64
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store i32 %i.er, ptr %i.es, align 8, !tbaa !64
  %i.et = load i8, ptr %i.c, align 8, !tbaa !115
  %.not.i49.not = icmp eq i8 %i.et, 0
  br i1 %.not.i49.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN12mpbq_manager3setER4mpbqRKS0_.exit48
  %i.eu = load ptr, ptr %i.ep, align 8, !tbaa !87, !nonnull !53, !align !54
  tail call void @_ZN11mpz_managerILb0EE5resetER3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.eu, ptr noundef nonnull align 8 dereferenceable(20) %i.b)
  store i32 0, ptr %i.es, align 8, !tbaa !64
  br label %_Z3invIN11realclosure11mpbq_config15numeral_managerEEvRT_RNS3_7numeralER16ext_numeral_kind.exit50

bb.p:                                             ; preds = %_ZN12mpbq_manager3setER4mpbqRKS0_.exit48
  tail call void @_ZN11realclosure11mpbq_config15numeral_manager3invER4mpbq(ptr noundef nonnull align 8 dereferenceable(213) %i.ep, ptr noundef nonnull align 8 dereferenceable(20) %i.b)
  br label %_Z3invIN11realclosure11mpbq_config15numeral_managerEEvRT_RNS3_7numeralER16ext_numeral_kind.exit50

_Z3invIN11realclosure11mpbq_config15numeral_managerEEvRT_RNS3_7numeralER16ext_numeral_kind.exit50: ; preds = %bb.o, %bb.p
  %i.ev = load i8, ptr %i.j, align 2, !tbaa !122
  %i.ew = icmp ne i8 %i.ev, 0
  %i.ex = load i8, ptr %i.du, align 1, !tbaa !124
  %.not.i.i51 = icmp eq i8 %i.ex, 0
  %i.ey = load i32, ptr %i.dt, align 8            ; 2 uses
  %i.ez = icmp eq i32 %i.ey, 0
  %i.fa = select i1 %.not.i.i51, i1 %i.ez, i1 false
  %i.fb = load ptr, ptr %i.ee, align 8, !tbaa !121, !nonnull !53, !align !54 ; 4 uses
  br i1 %i.fa, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_Z3invIN11realclosure11mpbq_config15numeral_managerEEvRT_RNS3_7numeralER16ext_numeral_kind.exit50
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !87, !nonnull !53, !align !54
  tail call void @_ZN11mpz_managerILb0EE5resetER3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.fc, ptr noundef nonnull align 8 dereferenceable(20) %2)
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.fd, align 8, !tbaa !64
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 50
  store i8 1, ptr %i.fe, align 2, !tbaa !122
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i8 1, ptr %3, align 8, !tbaa !115
  br label %bb.u

bb.r:                                             ; preds = %_Z3invIN11realclosure11mpbq_config15numeral_managerEEvRT_RNS3_7numeralER16ext_numeral_kind.exit50
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 212
  store i8 0, ptr %i.ff, align 4, !tbaa !56
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.fh = load i8, ptr %i.fg, align 4
  %i.fi = and i8 %i.fh, 1
  %i.fj = icmp eq i8 %i.fi, 0
  br i1 %i.fj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 %i.ey, ptr %i.a, align 8, !tbaa !62
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.fl = load i8, ptr %i.fk, align 4
  %i.fm = and i8 %i.fl, -2
  store i8 %i.fm, ptr %i.fk, align 4
  br label %_ZN12mpbq_manager3setER4mpbqRKS0_.exit52

bb.t:                                             ; preds = %bb.r
  %i.fn = load ptr, ptr %i.fb, align 8, !tbaa !87, !nonnull !53, !align !54
  tail call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.fn, ptr noundef nonnull align 8 dereferenceable(20) %i.a, ptr noundef nonnull align 8 dereferenceable(20) %i.dt)
  %.pre62 = load ptr, ptr %i.ee, align 8, !tbaa !121
  br label %_ZN12mpbq_manager3setER4mpbqRKS0_.exit52

_ZN12mpbq_manager3setER4mpbqRKS0_.exit52:         ; preds = %bb.s, %bb.t
  %i.fo = phi ptr [ %i.fb, %bb.s ], [ %.pre62, %bb.t ]
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !64
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store i32 %i.fq, ptr %i.fr, align 8, !tbaa !64
  tail call void @_ZN11realclosure11mpbq_config15numeral_manager3invER4mpbq(ptr noundef nonnull align 8 dereferenceable(213) %i.fo, ptr noundef nonnull align 8 dereferenceable(20) %i.a)
  %i.fs = load i32, ptr %2, align 8, !tbaa !8
  %i.ft = load i32, ptr %i.a, align 8, !tbaa !8
  store i32 %i.ft, ptr %2, align 8, !tbaa !8
  store i32 %i.fs, ptr %i.a, align 8, !tbaa !8
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.fw = load ptr, ptr %i.fu, align 8, !tbaa !9
  %i.fx = load ptr, ptr %i.fv, align 8, !tbaa !9
  store ptr %i.fx, ptr %i.fu, align 8, !tbaa !9
  store ptr %i.fw, ptr %i.fv, align 8, !tbaa !9
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  %i.fz = load i8, ptr %i.fy, align 4             ; 2 uses
  %i.ga = and i8 %i.fz, 2
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.gc = load i8, ptr %i.gb, align 4
  %i.gd = and i8 %i.gc, 2
  %i.ge = and i8 %i.fz, -3
  %i.gf = or disjoint i8 %i.gd, %i.ge
  store i8 %i.gf, ptr %i.fy, align 4
  %i.gg = load i8, ptr %i.gb, align 4             ; 2 uses
  %i.gh = and i8 %i.gg, -3
  %i.gi = or disjoint i8 %i.gh, %i.ga
  store i8 %i.gi, ptr %i.gb, align 4
  %i.gj = load i8, ptr %i.fy, align 4             ; 2 uses
  %i.gk = and i8 %i.gj, 1
  %i.gl = and i8 %i.gg, 1
  %i.gm = and i8 %i.gj, -2
  %i.gn = or disjoint i8 %i.gm, %i.gl
  store i8 %i.gn, ptr %i.fy, align 4
  %i.go = load i8, ptr %i.gb, align 4
  %i.gp = and i8 %i.go, -2
  %i.gq = or disjoint i8 %i.gp, %i.gk
  store i8 %i.gq, ptr %i.gb, align 4
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !8
  %i.gt = load i32, ptr %i.fr, align 8, !tbaa !8
  store i32 %i.gt, ptr %i.gr, align 8, !tbaa !8
  store i32 %i.gs, ptr %i.fr, align 8, !tbaa !8
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i8 0, ptr %i.gu, align 8, !tbaa !115
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 51
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !123
  %i.gx = icmp ne i8 %i.gw, 0
  %i.gy = zext i1 %i.gx to i8
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 50
  store i8 %i.gy, ptr %4, align 2, !tbaa !122
  br label %bb.u

bb.u:                                             ; preds = %_ZN12mpbq_manager3setER4mpbqRKS0_.exit52, %bb.q
  %i.gz = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !8
  %i.hb = load i32, ptr %i.b, align 8, !tbaa !8
  store i32 %i.hb, ptr %i.gz, align 8, !tbaa !8
  store i32 %i.ha, ptr %i.b, align 8, !tbaa !8
  %i.hc = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.he = load ptr, ptr %i.hc, align 8, !tbaa !9
  %i.hf = load ptr, ptr %i.hd, align 8, !tbaa !9
  store ptr %i.hf, ptr %i.hc, align 8, !tbaa !9
  store ptr %i.he, ptr %i.hd, align 8, !tbaa !9
  %i.hg = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 4 uses
  %i.hh = load i8, ptr %i.hg, align 4             ; 2 uses
  %i.hi = and i8 %i.hh, 2
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 5 uses
  %i.hk = load i8, ptr %i.hj, align 4
  %i.hl = and i8 %i.hk, 2
  %i.hm = and i8 %i.hh, -3
  %i.hn = or disjoint i8 %i.hl, %i.hm
  store i8 %i.hn, ptr %i.hg, align 4
  %i.ho = load i8, ptr %i.hj, align 4             ; 2 uses
  %i.hp = and i8 %i.ho, -3
  %i.hq = or disjoint i8 %i.hp, %i.hi
  store i8 %i.hq, ptr %i.hj, align 4
  %i.hr = load i8, ptr %i.hg, align 4             ; 2 uses
  %i.hs = and i8 %i.hr, 1
  %i.ht = and i8 %i.ho, 1
  %i.hu = and i8 %i.hr, -2
  %i.hv = or disjoint i8 %i.hu, %i.ht
  store i8 %i.hv, ptr %i.hg, align 4
  %i.hw = load i8, ptr %i.hj, align 4
  %i.hx = and i8 %i.hw, -2
  %i.hy = or disjoint i8 %i.hx, %i.hs
  store i8 %i.hy, ptr %i.hj, align 4
  %i.hz = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !8
  %i.ib = load i32, ptr %i.es, align 8, !tbaa !8
  store i32 %i.ib, ptr %i.hz, align 8, !tbaa !8
  store i32 %i.ia, ptr %i.es, align 8, !tbaa !8
  %i.ic = getelementptr inbounds nuw i8, ptr %2, i64 49
  store i8 0, ptr %i.ic, align 1, !tbaa !124
  %i.id = zext i1 %i.ew to i8
  %i.ie = getelementptr inbounds nuw i8, ptr %2, i64 51
  store i8 %i.id, ptr %i.ie, align 1, !tbaa !123
  br label %bb.v

_ZNK16interval_managerIN11realclosure11mpbq_configEE5is_N1ERKNS1_8intervalE.exit.thread55: ; preds = %bb.l
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.31, i32 noundef 1595, ptr noundef nonnull @.str.2)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZNK16interval_managerIN11realclosure11mpbq_configEE5is_N1ERKNS1_8intervalE.exit.thread55, %bb.k
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16_scoped_intervalI16interval_managerIN11realclosure11mpbq_configEEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !332, !nonnull !53, !align !54
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !121, !nonnull !53, !align !54
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !87, !nonnull !53, !align !54
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.e, ptr noundef nonnull align 8 dereferenceable(52) %i.b)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.a
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !121, !nonnull !53, !align !54
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !87, !nonnull !53, !align !54
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.h, ptr noundef nonnull align 8 dereferenceable(20) %i.g)
          to label %_ZN16interval_managerIN11realclosure11mpbq_configEE3delERNS1_8intervalE.exit unwind label %bb.b

_ZN16interval_managerIN11realclosure11mpbq_configEE3delERNS1_8intervalE.exit: ; preds = %.noexc
  ret void

bb.b:                                             ; preds = %.noexc, %bb.a
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #22
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN11realclosure7manager3imp3remEjPKPNS_5valueEjS5_R10ref_bufferIS2_S1_Lj32EE(ptr noundef nonnull align 8 dereferenceable(1497) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(280) %5) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %class.obj_ref, align 8             ; 9 uses
  %7 = alloca %class.obj_ref, align 8             ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !132  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !134  ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx.i = shl nuw nsw i64 %i.e, 3
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE5resetEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = load ptr, ptr %.06.i.i, align 8, !tbaa !103
  %i.h = load ptr, ptr %5, align 8, !tbaa !150, !nonnull !53, !align !54
  tail call void @_ZN11realclosure7manager3imp7dec_refEPNS_5valueE(ptr noundef nonnull align 8 dereferenceable(1497) %i.h, ptr noundef %i.g)
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.j = icmp ult ptr %i.i, %i.f
  br i1 %i.j, label %.lr.ph.i.i, label %_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE5resetEv.exit, !llvm.loop !152

_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE5resetEv.exit: ; preds = %.lr.ph.i.i, %bb.a
  store i32 0, ptr %i.c, align 8, !tbaa !134
  %i.k = icmp eq i32 %3, 1
  br i1 %i.k, label %_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE6appendEjPKPS1_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE5resetEv.exit
  %i.l = zext i32 %1 to i64
  %.idx.i.i = shl nuw nsw i64 %i.l, 3
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i.i
  %i.n = icmp eq i32 %1, 0
  br i1 %i.n, label %_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE6appendEjPKPS1_.exit.thread, label %.lr.ph.i.i39

.lr.ph.i.i39:                                     ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 24
  br label %bb.c

bb.c:                                             ; preds = %_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE9push_backEPS1_.exit.i.i, %.lr.ph.i.i39
  %i.q = phi i32 [ 0, %.lr.ph.i.i39 ], [ %i.bd, %_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE9push_backEPS1_.exit.i.i ] ; 2 uses
  %.sroa.04.09.i.i = phi ptr [ %2, %.lr.ph.i.i39 ], [ %i.be, %_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE9push_backEPS1_.exit.i.i ] ; 2 uses
  %i.r = load ptr, ptr %.sroa.04.09.i.i, align 8, !tbaa !103 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE7inc_refEPS1_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load i32, ptr %i.r, align 8, !tbaa !70
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 8, !tbaa !70
  br label %_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE7inc_refEPS1_.exit.i.i.i

_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE7inc_refEPS1_.exit.i.i.i: ; preds = %bb.d, %bb.c
  %i.u = load i32, ptr %i.o, align 4, !tbaa !135  ; 2 uses
  %.not.i.i.i.i = icmp ult i32 %i.q, %i.u
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.e

._crit_edge.i.i.i.i:                              ; preds = %_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE7inc_refEPS1_.exit.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !132
  br label %_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE9push_backEPS1_.exit.i.i

bb.e:                                             ; preds = %_ZN15ref_buffer_coreIN11realclosure5valueE19ref_manager_wrapperIS1_NS0_7manager3impEELj32EE7inc_refEPS1_.exit.i.i.i
  %i.v = shl i32 %i.u, 1                          ; 2 uses
  %i.w = zext i32 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.x) ; 9 uses
  %i.z = load i32, ptr %i.c, align 8, !tbaa !134  ; 4 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.z, 0
  %.pre.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !132 ; 10 uses
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e
  %.pre.i.i.i.i.i84 = ptrtoaddr ptr %.pre.i.i.i.i.i to i64
  %i.aa = ptrtoaddr ptr %i.y to i64
  %wide.trip.count.i.i.i.i.i = zext i32 %i.z to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.z, 4
  %i.ab = sub i64 %.pre.i.i.i.i.i84, %i.aa
  %diff.check = icmp ugt i64 %i.ab, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i.i.i, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i, i64 %index ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %wide.load = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !103
  %wide.load85 = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !103
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store <2 x ptr> %wide.load, ptr %i.ac, align 8, !tbaa !103
  store <2 x ptr> %wide.load85, ptr %i.af, align 8, !tbaa !103
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !353

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i.i.i
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i.i.i, %middle.block
  %indvars.iv.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i.i.i, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.i.i.i.i.i.prol
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i.prol
end_hunk_0
begin_hunk_1_@_ZN11realclosure7manager3imp19abs_lower_magnitudeERKNS_11mpbq_config8intervalERi:bb.a
  store i32 0, ptr %i.n, align 8, !tbaa !62
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  %i.p = load i8, ptr %i.o, align 4
  %i.q = and i8 %i.p, -4                          ; 2 uses
  store i8 %i.q, ptr %i.o, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.r, align 8, !tbaa !63
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store i32 0, ptr %i.s, align 8, !tbaa !64
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.u = load i8, ptr %i.t, align 4
  %i.v = and i8 %i.u, 1
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.k, ptr %i.n, align 8, !tbaa !62
  store i8 %i.q, ptr %i.o, align 4
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !87, !nonnull !53, !align !54
  invoke void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.x, ptr noundef nonnull align 8 dereferenceable(20) %i.n, ptr noundef nonnull align 8 dereferenceable(20) %i.j)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.z = load i32, ptr %i.y, align 8, !tbaa !64
  store i32 %i.z, ptr %i.s, align 8, !tbaa !64
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !87, !nonnull !53, !align !54
  invoke void @_ZN11mpz_managerILb0EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.aa, ptr noundef nonnull align 8 dereferenceable(20) %i.n)
          to label %_ZN12mpbq_manager3negER4mpbq.exit unwind label %bb.j

_ZN12mpbq_manager3negER4mpbq.exit:                ; preds = %bb.g
  %i.ab = invoke noundef i32 @_ZN12mpbq_manager12magnitude_lbERK4mpbq(ptr noundef nonnull align 8 dereferenceable(208) %i.m, ptr noundef nonnull align 8 dereferenceable(20) %i.n)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %_ZN12mpbq_manager3negER4mpbq.exit
  store i32 %i.ab, ptr %2, align 4, !tbaa !8
  %i.ac = load ptr, ptr %3, align 8, !tbaa !215, !nonnull !53, !align !54
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !87, !nonnull !53, !align !54
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.ad, ptr noundef nonnull align 8 dereferenceable(20) %i.n)
          to label %_ZN15_scoped_numeralI12mpbq_managerED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #22
  unreachable

_ZN15_scoped_numeralI12mpbq_managerED2Ev.exit:    ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %.thread

bb.j:                                             ; preds = %bb.g, %bb.f, %_ZN12mpbq_manager3negER4mpbq.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZN15_scoped_numeralI12mpbq_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %i.ag

.thread:                                          ; preds = %_ZNK16interval_managerIN11realclosure11mpbq_configEE4is_PERKNS1_8intervalE.exit, %bb.c, %_ZN15_scoped_numeralI12mpbq_managerED2Ev.exit, %bb.b
  %.0 = phi i1 [ true, %_ZN15_scoped_numeralI12mpbq_managerED2Ev.exit ], [ true, %bb.b ], [ false, %bb.c ], [ false, %_ZNK16interval_managerIN11realclosure11mpbq_configEE4is_PERKNS1_8intervalE.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11realclosure7manager3imp19abs_upper_magnitudeERKNS_11mpbq_config8intervalERi(ptr noundef nonnull align 8 dereferenceable(1497) %0, ptr noundef nonnull align 8 dereferenceable(52) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class._scoped_numeral, align 8     ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load i8, ptr %i.a, align 8, !tbaa !115
  %.not.i.i.i = icmp eq i8 %i.b, 0                ; 2 uses
  %i.c = load i32, ptr %1, align 8                ; 2 uses
  %i.d = icmp sgt i32 %i.c, -1
  %or.cond = select i1 %.not.i.i.i, i1 %i.d, i1 false
  br i1 %or.cond, label %_ZNK16interval_managerIN11realclosure11mpbq_configEE4is_PERKNS1_8intervalE.exit.thread, label %bb.c

_ZNK16interval_managerIN11realclosure11mpbq_configEE4is_PERKNS1_8intervalE.exit.thread: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 49
  %i.f = load i8, ptr %i.e, align 1, !tbaa !124
  %.not12 = icmp eq i8 %i.f, 0
  br i1 %.not12, label %bb.b, label %bb.k

bb.b:                                             ; preds = %_ZNK16interval_managerIN11realclosure11mpbq_configEE4is_PERKNS1_8intervalE.exit.thread
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = tail call noundef i32 @_ZN12mpbq_manager12magnitude_ubERK4mpbq(ptr noundef nonnull align 8 dereferenceable(208) %i.g, ptr noundef nonnull align 8 dereferenceable(20) %i.h)
  store i32 %i.i, ptr %2, align 4, !tbaa !8
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  br i1 %.not.i.i.i, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  store ptr %i.j, ptr %3, align 8, !tbaa !61
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i32 0, ptr %i.k, align 8, !tbaa !62
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  %i.m = load i8, ptr %i.l, align 4
  %i.n = and i8 %i.m, -4                          ; 2 uses
  store i8 %i.n, ptr %i.l, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.o, align 8, !tbaa !63
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store i32 0, ptr %i.p, align 8, !tbaa !64
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.r = load i8, ptr %i.q, align 4
  %i.s = and i8 %i.r, 1
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.c, ptr %i.k, align 8, !tbaa !62
  store i8 %i.n, ptr %i.l, align 4
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !87, !nonnull !53, !align !54
  invoke void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.u, ptr noundef nonnull align 8 dereferenceable(20) %i.k, ptr noundef nonnull align 8 dereferenceable(20) %1)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !64
  store i32 %i.w, ptr %i.p, align 8, !tbaa !64
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !87, !nonnull !53, !align !54
  invoke void @_ZN11mpz_managerILb0EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.x, ptr noundef nonnull align 8 dereferenceable(20) %i.k)
          to label %_ZN12mpbq_manager3negER4mpbq.exit unwind label %bb.j

_ZN12mpbq_manager3negER4mpbq.exit:                ; preds = %bb.g
  %i.y = invoke noundef i32 @_ZN12mpbq_manager12magnitude_ubERK4mpbq(ptr noundef nonnull align 8 dereferenceable(208) %i.j, ptr noundef nonnull align 8 dereferenceable(20) %i.k)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %_ZN12mpbq_manager3negER4mpbq.exit
  store i32 %i.y, ptr %2, align 4, !tbaa !8
  %i.z = load ptr, ptr %3, align 8, !tbaa !215, !nonnull !53, !align !54
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !87, !nonnull !53, !align !54
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.aa, ptr noundef nonnull align 8 dereferenceable(20) %i.k)
          to label %_ZN15_scoped_numeralI12mpbq_managerED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #22
  unreachable

_ZN15_scoped_numeralI12mpbq_managerED2Ev.exit:    ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.k

bb.j:                                             ; preds = %bb.g, %bb.f, %_ZN12mpbq_manager3negER4mpbq.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN15_scoped_numeralI12mpbq_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %i.ad

bb.k:                                             ; preds = %bb.c, %_ZNK16interval_managerIN11realclosure11mpbq_configEE4is_PERKNS1_8intervalE.exit.thread, %_ZN15_scoped_numeralI12mpbq_managerED2Ev.exit, %bb.b
  %.0 = phi i1 [ true, %_ZN15_scoped_numeralI12mpbq_managerED2Ev.exit ], [ true, %bb.b ], [ false, %_ZNK16interval_managerIN11realclosure11mpbq_configEE4is_PERKNS1_8intervalE.exit.thread ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN16interval_managerIN11realclosure11mpbq_configEE3negERKNS1_8intervalERS3_(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef nonnull align 8 dereferenceable(52) %1, ptr noundef nonnull align 8 dereferenceable(52) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load i8, ptr %i.a, align 8, !tbaa !115
  %.not = icmp eq i8 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 49
  %i.d = load i8, ptr %i.c, align 1, !tbaa !124
  %.not44 = icmp eq i8 %i.d, 0                    ; 2 uses
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  br i1 %.not44, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !121, !nonnull !53, !align !54
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !87, !nonnull !53, !align !54
  tail call void @_ZN11mpz_managerILb0EE5resetER3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.g, ptr noundef nonnull align 8 dereferenceable(52) %2)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.h, align 8, !tbaa !64
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 50
  store i8 1, ptr %i.i, align 2, !tbaa !122
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i8 1, ptr %i.j, align 8, !tbaa !115
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !121, !nonnull !53, !align !54
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !87, !nonnull !53, !align !54
  tail call void @_ZN11mpz_managerILb0EE5resetER3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.m, ptr noundef nonnull align 8 dereferenceable(20) %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 0, ptr %i.n, align 8, !tbaa !64
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 51
  store i8 1, ptr %i.o, align 1, !tbaa !123
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 49
  store i8 1, ptr %3, align 1, !tbaa !124
  br label %bb.s

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.r = load i8, ptr %i.q, align 4
  %i.s = and i8 %i.r, 1
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = load i32, ptr %i.p, align 8, !tbaa !62
  store i32 %i.u, ptr %2, align 8, !tbaa !62
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.w = load i8, ptr %i.v, align 4
  %i.x = and i8 %i.w, -2
  store i8 %i.x, ptr %i.v, align 4
  br label %_ZN12mpbq_manager3setER4mpbqRKS0_.exit

bb.f:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !121, !nonnull !53, !align !54
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !87, !nonnull !53, !align !54
  tail call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.z, ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 8 dereferenceable(20) %i.p)
  br label %_ZN12mpbq_manager3setER4mpbqRKS0_.exit

_ZN12mpbq_manager3setER4mpbqRKS0_.exit:           ; preds = %bb.e, %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !64
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.ab, ptr %i.ac, align 8, !tbaa !64
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !121, !nonnull !53, !align !54
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !87, !nonnull !53, !align !54
  tail call void @_ZN11mpz_managerILb0EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.ae, ptr noundef nonnull align 8 dereferenceable(20) %2)
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i8 0, ptr %i.af, align 8, !tbaa !115
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 51
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !123
  %i.ai = icmp ne i8 %i.ah, 0
  %i.aj = zext i1 %i.ai to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 50
  store i8 %i.aj, ptr %i.ak, align 2, !tbaa !122
  %i.al = load ptr, ptr %i.e, align 8, !tbaa !121, !nonnull !53, !align !54
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !87, !nonnull !53, !align !54
  tail call void @_ZN11mpz_managerILb0EE5resetER3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.an, ptr noundef nonnull align 8 dereferenceable(20) %i.am)
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 0, ptr %i.ao, align 8, !tbaa !64
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 49
  store i8 1, ptr %i.ap, align 1, !tbaa !124
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 51
  store i8 1, ptr %4, align 1, !tbaa !123
  br label %bb.s

bb.g:                                             ; preds = %bb.a
  br i1 %.not44, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.at = load i8, ptr %i.as, align 4
  %i.au = and i8 %i.at, 1
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aw = load i32, ptr %1, align 8, !tbaa !62
  store i32 %i.aw, ptr %i.ar, align 8, !tbaa !62
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 4
  %i.az = and i8 %i.ay, -2
  store i8 %i.az, ptr %i.ax, align 4
  br label %_ZN12mpbq_manager3setER4mpbqRKS0_.exit41

bb.j:                                             ; preds = %bb.h
  %i.ba = load ptr, ptr %i.aq, align 8, !tbaa !121, !nonnull !53, !align !54
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !87, !nonnull !53, !align !54
  tail call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.bb, ptr noundef nonnull align 8 dereferenceable(20) %i.ar, ptr noundef nonnull align 8 dereferenceable(20) %1)
  br label %_ZN12mpbq_manager3setER4mpbqRKS0_.exit41

_ZN12mpbq_manager3setER4mpbqRKS0_.exit41:         ; preds = %bb.i, %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !64
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !64
  %i.bf = load ptr, ptr %i.aq, align 8, !tbaa !121, !nonnull !53, !align !54
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !87, !nonnull !53, !align !54
  tail call void @_ZN11mpz_managerILb0EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.bg, ptr noundef nonnull align 8 dereferenceable(20) %i.ar)
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 49
  store i8 0, ptr %i.bh, align 1, !tbaa !124
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 50
  %i.bj = load i8, ptr %i.bi, align 2, !tbaa !122
  %i.bk = icmp ne i8 %i.bj, 0
  %i.bl = zext i1 %i.bk to i8
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 51
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !123
  %i.bn = load ptr, ptr %i.aq, align 8, !tbaa !121, !nonnull !53, !align !54
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !87, !nonnull !53, !align !54
  tail call void @_ZN11mpz_managerILb0EE5resetER3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.bo, ptr noundef nonnull align 8 dereferenceable(20) %2)
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.bp, align 8, !tbaa !64
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i8 1, ptr %i.bq, align 8, !tbaa !115
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 50
  store i8 1, ptr %5, align 2, !tbaa !122
  br label %bb.s

bb.k:                                             ; preds = %bb.g
  %i.br = icmp eq ptr %1, %2
  br i1 %i.br, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.bt = load i32, ptr %2, align 8, !tbaa !8
  %i.bu = load i32, ptr %i.bs, align 8, !tbaa !8
  store i32 %i.bu, ptr %2, align 8, !tbaa !8
  store i32 %i.bt, ptr %i.bs, align 8, !tbaa !8
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.bx = load ptr, ptr %i.bv, align 8, !tbaa !9
  %i.by = load ptr, ptr %i.bw, align 8, !tbaa !9
  store ptr %i.by, ptr %i.bv, align 8, !tbaa !9
  store ptr %i.bx, ptr %i.bw, align 8, !tbaa !9
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 4             ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 4             ; 2 uses
  %i.cd = and i8 %i.ca, -4
  %i.ce = and i8 %i.cc, -4
  %i.cf = and i8 %i.cc, 3
  %i.cg = or disjoint i8 %i.cf, %i.cd
  store i8 %i.cg, ptr %i.bz, align 4
  %i.ch = and i8 %i.ca, 3
  %i.ci = or disjoint i8 %i.ce, %i.ch
  store i8 %i.ci, ptr %i.cb, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.cl = load i32, ptr %i.cj, align 8, !tbaa !8
  %i.cm = load i32, ptr %i.ck, align 8, !tbaa !8
  store i32 %i.cm, ptr %i.cj, align 8, !tbaa !8
  store i32 %i.cl, ptr %i.ck, align 8, !tbaa !8
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cq = load i8, ptr %i.cp, align 4
  %i.cr = and i8 %i.cq, 1
  %i.cs = icmp eq i8 %i.cr, 0
  br i1 %i.cs, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ct = load i32, ptr %i.co, align 8, !tbaa !62
  store i32 %i.ct, ptr %2, align 8, !tbaa !62
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 4
  %i.cw = and i8 %i.cv, -2
  store i8 %i.cw, ptr %i.cu, align 4
  br label %_ZN12mpbq_manager3setER4mpbqRKS0_.exit42

bb.o:                                             ; preds = %bb.m
  %i.cx = load ptr, ptr %i.cn, align 8, !tbaa !121, !nonnull !53, !align !54
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !87, !nonnull !53, !align !54
  tail call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.cy, ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 8 dereferenceable(20) %i.co)
  br label %_ZN12mpbq_manager3setER4mpbqRKS0_.exit42

_ZN12mpbq_manager3setER4mpbqRKS0_.exit42:         ; preds = %bb.n, %bb.o
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !64
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.da, ptr %i.db, align 8, !tbaa !64
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.de = load i8, ptr %i.dd, align 4
  %i.df = and i8 %i.de, 1
  %i.dg = icmp eq i8 %i.df, 0
  br i1 %i.dg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN12mpbq_manager3setER4mpbqRKS0_.exit42
  %i.dh = load i32, ptr %1, align 8, !tbaa !62
  store i32 %i.dh, ptr %i.dc, align 8, !tbaa !62
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 2 uses
  %i.dj = load i8, ptr %i.di, align 4
  %i.dk = and i8 %i.dj, -2
  store i8 %i.dk, ptr %i.di, align 4
  br label %_ZN12mpbq_manager3setER4mpbqRKS0_.exit43

bb.q:                                             ; preds = %_ZN12mpbq_manager3setER4mpbqRKS0_.exit42
  %i.dl = load ptr, ptr %i.cn, align 8, !tbaa !121, !nonnull !53, !align !54
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !87, !nonnull !53, !align !54
  tail call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.dm, ptr noundef nonnull align 8 dereferenceable(20) %i.dc, ptr noundef nonnull align 8 dereferenceable(20) %1)
  br label %_ZN12mpbq_manager3setER4mpbqRKS0_.exit43

_ZN12mpbq_manager3setER4mpbqRKS0_.exit43:         ; preds = %bb.p, %bb.q
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !64
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %i.do, ptr %i.dp, align 8, !tbaa !64
  br label %bb.r

bb.r:                                             ; preds = %_ZN12mpbq_manager3setER4mpbqRKS0_.exit43, %bb.l
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !121, !nonnull !53, !align !54
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !87, !nonnull !53, !align !54
  tail call void @_ZN11mpz_managerILb0EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.ds, ptr noundef nonnull align 8 dereferenceable(20) %2)
  %i.dt = load ptr, ptr %i.dq, align 8, !tbaa !121, !nonnull !53, !align !54
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dv = load ptr, ptr %i.dt, align 8, !tbaa !87, !nonnull !53, !align !54
  tail call void @_ZN11mpz_managerILb0EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.dv, ptr noundef nonnull align 8 dereferenceable(20) %i.du)
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i8 0, ptr %i.dw, align 8, !tbaa !115
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 49
  store i8 0, ptr %i.dx, align 1, !tbaa !124
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 50
  %i.dz = load i8, ptr %i.dy, align 2, !tbaa !122
  %i.ea = icmp ne i8 %i.dz, 0
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 51
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !123
  %i.ed = icmp ne i8 %i.ec, 0
  %i.ee = zext i1 %i.ed to i8
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 50
  store i8 %i.ee, ptr %i.ef, align 2, !tbaa !122
  %i.eg = zext i1 %i.ea to i8
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 51
  store i8 %i.eg, ptr %6, align 1, !tbaa !123
  br label %bb.s

bb.s:                                             ; preds = %_ZN12mpbq_manager3setER4mpbqRKS0_.exit41, %bb.r, %bb.c, %_ZN12mpbq_manager3setER4mpbqRKS0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN16interval_managerIN11realclosure11mpbq_configEE3setERNS1_8intervalERKS3_(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef nonnull align 8 dereferenceable(52) %1, ptr noundef nonnull align 8 dereferenceable(52) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %2
  br i1 %i.a, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.c = load i8, ptr %i.b, align 8, !tbaa !115
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load i8, ptr %i.d, align 4
  %i.f = and i8 %i.e, 1
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr %2, align 8, !tbaa !62
  store i32 %i.h, ptr %1, align 8, !tbaa !62
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.j = load i8, ptr %i.i, align 4
  %i.k = and i8 %i.j, -2
  store i8 %i.k, ptr %i.i, align 4
  br label %_ZN12mpbq_manager3setER4mpbqRKS0_.exit

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !121, !nonnull !53, !align !54
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !87, !nonnull !53, !align !54
  tail call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.n, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %_ZN12mpbq_manager3setER4mpbqRKS0_.exit

_ZN12mpbq_manager3setER4mpbqRKS0_.exit:           ; preds = %bb.d, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !64
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.p, ptr %i.q, align 8, !tbaa !64
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %_ZN12mpbq_manager3setER4mpbqRKS0_.exit
  %.sink = phi i8 [ 0, %_ZN12mpbq_manager3setER4mpbqRKS0_.exit ], [ 1, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i8 %.sink, ptr %i.r, align 8, !tbaa !115
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 49
  %i.t = load i8, ptr %i.s, align 1, !tbaa !124
  %.not19 = icmp eq i8 %i.t, 0
  br i1 %.not19, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.x = load i8, ptr %i.w, align 4
  %i.y = and i8 %i.x, 1
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aa = load i32, ptr %i.v, align 8, !tbaa !62
  store i32 %i.aa, ptr %i.u, align 8, !tbaa !62
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 4
  %i.ad = and i8 %i.ac, -2
  store i8 %i.ad, ptr %i.ab, align 4
  br label %_ZN12mpbq_manager3setER4mpbqRKS0_.exit18

bb.i:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !121, !nonnull !53, !align !54
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !87, !nonnull !53, !align !54
  tail call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.ag, ptr noundef nonnull align 8 dereferenceable(20) %i.u, ptr noundef nonnull align 8 dereferenceable(20) %i.v)
  br label %_ZN12mpbq_manager3setER4mpbqRKS0_.exit18

_ZN12mpbq_manager3setER4mpbqRKS0_.exit18:         ; preds = %bb.h, %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !64
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 %i.ai, ptr %i.aj, align 8, !tbaa !64
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %_ZN12mpbq_manager3setER4mpbqRKS0_.exit18
  %.sink22 = phi i8 [ 0, %_ZN12mpbq_manager3setER4mpbqRKS0_.exit18 ], [ 1, %bb.f ]
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 49
  store i8 %.sink22, ptr %i.ak, align 1, !tbaa !124
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 50
  %i.am = load i8, ptr %i.al, align 2, !tbaa !122
  %i.an = icmp ne i8 %i.am, 0
  %i.ao = zext i1 %i.an to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 50
  store i8 %i.ao, ptr %i.ap, align 2, !tbaa !122
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 51
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !123
  %i.as = icmp ne i8 %i.ar, 0
  %i.at = zext i1 %i.as to i8
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 51
  store i8 %i.at, ptr %i.au, align 1, !tbaa !123
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12mpbq_manager4swapER4mpbqS1_(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(20) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !8
  %i.b = load i32, ptr %1, align 8, !tbaa !8
  store i32 %i.b, ptr %0, align 8, !tbaa !8
  store i32 %i.a, ptr %1, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !9
  store ptr %i.f, ptr %i.c, align 8, !tbaa !9
  store ptr %i.e, ptr %i.d, align 8, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.h = load i8, ptr %i.g, align 4               ; 2 uses
  %i.i = and i8 %i.h, 2
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  %i.k = load i8, ptr %i.j, align 4
  %i.l = and i8 %i.k, 2
  %i.m = and i8 %i.h, -3
  %i.n = or disjoint i8 %i.l, %i.m
  store i8 %i.n, ptr %i.g, align 4
  %i.o = load i8, ptr %i.j, align 4               ; 2 uses
  %i.p = and i8 %i.o, -3
  %i.q = or disjoint i8 %i.p, %i.i
  store i8 %i.q, ptr %i.j, align 4
  %i.r = load i8, ptr %i.g, align 4               ; 2 uses
  %i.s = and i8 %i.r, 1
  %i.t = and i8 %i.o, 1
  %i.u = and i8 %i.r, -2
  %i.v = or disjoint i8 %i.u, %i.t
  store i8 %i.v, ptr %i.g, align 4
  %i.w = load i8, ptr %i.j, align 4
  %i.x = and i8 %i.w, -2
  %i.y = or disjoint i8 %i.x, %i.s
  store i8 %i.y, ptr %i.j, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ab = load i32, ptr %i.z, align 8, !tbaa !8
  %i.ac = load i32, ptr %i.aa, align 8, !tbaa !8
  store i32 %i.ac, ptr %i.z, align 8, !tbaa !8
  store i32 %i.ab, ptr %i.aa, align 8, !tbaa !8
  ret void
}

declare noundef i32 @_ZN12mpbq_manager12magnitude_lbERK4mpbq(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(20)) local_unnamed_addr #3

declare noundef i32 @_ZN12mpbq_manager12magnitude_ubERK4mpbq(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(20)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN11realclosure7manager3imp21scoped_polynomial_seq4pushEjPKPNS_5valueE(ptr noundef nonnull align 8 dereferenceable(2232) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2072 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !367
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2080 ; 5 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !371  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2084 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !372  ; 2 uses
  %.not.i = icmp ult i32 %i.e, %i.g
  br i1 %.not.i, label %._crit_edge.i, label %bb.b

._crit_edge.i:                                    ; preds = %bb.a
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !369
  br label %_ZN6bufferIjLb0ELj16EE9push_backEOj.exit

bb.b:                                             ; preds = %bb.a
  %i.h = shl i32 %i.g, 1                          ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 2
  %i.k = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.j) ; 9 uses
  %i.l = load i32, ptr %i.d, align 8, !tbaa !371  ; 4 uses
  %.not.i.i = icmp eq i32 %i.l, 0
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !369 ; 10 uses
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %.pre.i.i31 = ptrtoaddr ptr %.pre.i.i to i64
  %i.m = ptrtoaddr ptr %i.k to i64
  %wide.trip.count.i.i = zext i32 %i.l to i64     ; 5 uses
  %min.iters.check = icmp ult i32 %i.l, 8
  %i.n = sub i64 %.pre.i.i31, %i.m
  %diff.check = icmp ugt i64 %i.n, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 4294967288 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
end_hunk_1

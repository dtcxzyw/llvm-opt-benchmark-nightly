inline.NumInlined: 21
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 26
begin_hunk_0_@icon_scan_cb:bb.a
  br i1 %or.cond640.not.i, label %bb.m, label %fmap_readn.exit.thread.i

bb.m:                                             ; preds = %bb.l
  %i.as = sub nuw i64 %i.ar, %i.aq                ; 2 uses
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.as, i64 40) ; 2 uses
  %i.at = load ptr, ptr %i.ad, align 8, !tbaa !75
  %i.au = call ptr %i.at(ptr noundef nonnull %i.l, i64 noundef range(i64 0, 4294967296) %i.aq, i64 noundef range(i64 0, 4294967296) %spec.select.i.i, i32 noundef 0) #13, !inline_history !88 ; 2 uses
  %.not26.i.i = icmp eq ptr %i.au, null
  br i1 %.not26.i.i, label %fmap_readn.exit.thread.i, label %fmap_readn.exit.i

fmap_readn.exit.i:                                ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %5, ptr nonnull align 1 %i.au, i64 %spec.select.i.i, i1 false)
  %.not593.i = icmp ugt i64 %i.as, 39
  br i1 %.not593.i, label %bb.n, label %fmap_readn.exit.thread.i

fmap_readn.exit.thread.i:                         ; preds = %fmap_readn.exit.i, %bb.m, %bb.l, %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !60
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !60
  br label %parseicon.exit

bb.n:                                             ; preds = %fmap_readn.exit.i
  %.0..0..0..0..0..i = load i32, ptr %5, align 4, !tbaa !77 ; 2 uses
  %i.ay = icmp ult i32 %.0..0..0..0..0..i, 40
  br i1 %i.ay, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !61
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.az, align 8, !tbaa !61
  br label %parseicon.exit

bb.p:                                             ; preds = %bb.n
  %i.bc = add i32 %.0..0..0..0..0..i, %i.ao       ; 5 uses
  %.4..4..4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.4..4..4..4..4..i = load i32, ptr %.4..4..4..4..4..sroa_idx, align 4, !tbaa !77 ; 41 uses
  %.8..8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.8..8..8..8..8..i = load i32, ptr %.8..8..8..8..8..sroa_idx, align 4, !tbaa !77 ; 4 uses
  %i.bd = sdiv i32 %.8..8..8..8..8..i, 2          ; 29 uses
  %.14..14..14..14..14..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 14
  %.14..14..14..14..14..i = load i16, ptr %.14..14..14..14..14..sroa_idx, align 2, !tbaa !77 ; 5 uses
  %i.be = sext i16 %.14..14..14..14..14..i to i32 ; 8 uses
  %i.bf = add i32 %.4..4..4..4..4..i, -257
  %i.bg = icmp ult i32 %i.bf, -241
  %i.bh = add nsw i32 %i.bd, -257
  %i.bi = icmp ult i32 %i.bh, -241
  %or.cond5.i = select i1 %i.bg, i1 true, i1 %i.bi
  br i1 %or.cond5.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !62
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !62
  br label %parseicon.exit

bb.r:                                             ; preds = %bb.p
  %i.bm = mul nuw nsw i32 %i.bd, 3
  %i.bn = lshr i32 %i.bm, 2
  %i.bo = icmp samesign ult i32 %.4..4..4..4..4..i, %i.bn
  br i1 %i.bo, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bp = mul nuw nsw i32 %.4..4..4..4..4..i, 3
  %i.bq = lshr i32 %i.bp, 2
  %i.br = icmp samesign ult i32 %i.bd, %i.bq
  br i1 %i.br, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !58
  %i.bu = add i32 %i.bt, 1
  store i32 %i.bu, ptr %i.bs, align 8, !tbaa !58
  br label %parseicon.exit

bb.u:                                             ; preds = %bb.s
  %i.bv = icmp eq i32 %.4..4..4..4..4..i, %i.bd
  br i1 %i.bv, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bw = and i32 %.4..4..4..4..4..i, 503
  %or.cond7.i = icmp eq i32 %i.bw, 16
  %i.bx = icmp eq i32 %.4..4..4..4..4..i, 32
  %or.cond9.i = or i1 %i.bx, %or.cond7.i
  br i1 %or.cond9.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.by = and i32 %.4..4..4..4..4..i, 31
  %.not594.i = icmp eq i32 %i.by, 0
  %.lhs.trunc638.i = trunc nuw nsw i32 %.4..4..4..4..4..i to i16
  %i.bz = urem i16 %.lhs.trunc638.i, 24
  %.not595.i = icmp eq i16 %i.bz, 0
  %or.cond.i = or i1 %.not594.i, %.not595.i
  %spec.select.i = select i1 %or.cond.i, i32 1, i32 2
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %.0560.i = phi i32 [ 2, %bb.u ], [ %spec.select.i, %bb.w ], [ 0, %bb.v ]
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.16, i32 noundef %.4..4..4..4..4..i, i32 noundef %i.bd, i32 noundef %i.be) #13
  switch i16 %.14..14..14..14..14..i, label %bb.y [
    i16 32, label %bb.ab
    i16 1, label %bb.z
    i16 4, label %bb.z
    i16 8, label %bb.z
    i16 16, label %bb.ab
    i16 24, label %bb.ab
  ]

bb.y:                                             ; preds = %bb.x
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.17) #13
  br label %parseicon.exit

bb.z:                                             ; preds = %bb.x, %bb.x, %bb.x
  %i.ca = zext i32 %i.bc to i64
  %i.cb = shl nuw nsw i32 1, %i.be
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = shl nuw nsw i64 %i.cc, 2                ; 2 uses
  %i.ce = load ptr, ptr %i.ad, align 8, !tbaa !75
  %i.cf = call ptr %i.ce(ptr noundef nonnull %i.l, i64 noundef range(i64 0, 4294967296) %i.ca, i64 noundef range(i64 -8589934592, 8589934589) %i.cd, i32 noundef 1) #13, !inline_history !89 ; 2 uses
  %.not596.i = icmp eq ptr %i.cf, null
  br i1 %.not596.i, label %parseicon.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cg = trunc nuw nsw i64 %i.cd to i32
  %i.ch = add i32 %i.bc, %i.cg
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.x, %bb.x, %bb.x
  %.0559.i = phi i32 [ %i.ch, %bb.aa ], [ %i.bc, %bb.x ], [ %i.bc, %bb.x ], [ %i.bc, %bb.x ] ; 2 uses
  %.0528.i = phi ptr [ %i.cf, %bb.aa ], [ null, %bb.x ], [ null, %bb.x ], [ null, %bb.x ] ; 7 uses
  %i.ci = mul nuw nsw i32 %.4..4..4..4..4..i, %i.be ; 8 uses
  %i.cj = lshr i32 %i.ci, 3
  %i.ck = and i32 %i.cj, 536870908
  %i.cl = and i32 %i.ci, 31
  %.not597.i = icmp eq i32 %i.cl, 0
  %i.cm = select i1 %.not597.i, i32 0, i32 4      ; 7 uses
  %i.cn = add nuw nsw i32 %i.cm, %i.ck            ; 3 uses
  %i.co = and i16 %.14..14..14..14..14..i, 31
  %.not599.i = icmp eq i16 %i.co, 0               ; 2 uses
  %i.cp = lshr i32 %.4..4..4..4..4..i, 3
  %i.cq = and i32 %i.cp, 60
  %i.cr = and i32 %.4..4..4..4..4..i, 31
  %.not598.i = icmp eq i32 %i.cr, 0
  %i.cs = select i1 %.not598.i, i32 0, i32 4
  %i.ct = add nuw nsw i32 %i.cs, %i.cq            ; 4 uses
  %i.cu = select i1 %.not599.i, i32 0, i32 %i.ct  ; 2 uses
  %i.cv = zext i32 %.0559.i to i64
  %i.cw = add nuw nsw i32 %i.cn, %i.cu
  %i.cx = mul nuw nsw i32 %i.cw, %i.bd
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = load ptr, ptr %i.ad, align 8, !tbaa !75
  %i.da = call ptr %i.cz(ptr noundef nonnull %i.l, i64 noundef range(i64 0, 4294967296) %i.cv, i64 noundef range(i64 0, 4294967296) %i.cy, i32 noundef 0) #13, !inline_history !87 ; 70 uses
  %.not600.i = icmp eq ptr %i.da, null
  br i1 %.not600.i, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %.not601.i = icmp eq ptr %.0528.i, null
  br i1 %.not601.i, label %parseicon.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.db = shl nuw i32 1, %i.be
  %i.dc = sext i32 %i.db to i64
  %i.dd = shl nsw i64 %i.dc, 2
  %i.de = getelementptr i8, ptr %i.l, i64 16
  %.val.i.i = load ptr, ptr %i.de, align 8, !tbaa !90
  %i.df = getelementptr i8, ptr %i.l, i64 72
  %.val3.i.i = load i64, ptr %i.df, align 8, !tbaa !91
  %i.dg = ptrtoint ptr %.0528.i to i64
  %i.dh = ptrtoint ptr %.val.i.i to i64
  %i.di = add i64 %.val3.i.i, %i.dh
  %i.dj = sub i64 %i.dg, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !92
  call void %i.dl(ptr noundef nonnull %i.l, i64 noundef %i.dj, i64 noundef range(i64 -8589934592, 8589934589) %i.dd) #13, !inline_history !93
  br label %parseicon.exit

bb.ae:                                            ; preds = %bb.ab
  %narrow.i = shl nuw nsw i32 %.4..4..4..4..4..i, 2
  %i.dm = mul nuw nsw i32 %narrow.i, %i.bd
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = call ptr @cli_max_malloc(i64 noundef %i.dn) #13 ; 30 uses
  %.not602.i = icmp eq ptr %i.do, null
  br i1 %.not602.i, label %bb.af, label %.preheader662.i

.preheader662.i:                                  ; preds = %bb.ae
  %.8..off.i = add i32 %.8..8..8..8..8..i, 1
  %.not717.i = icmp ult i32 %.8..off.i, 3
  br i1 %.not717.i, label %._crit_edge.i, label %.lr.ph680.i

.lr.ph680.i:                                      ; preds = %.preheader662.i
  %notmask.i = shl nsw i32 -1, %i.be
  %i.dp = xor i32 %notmask.i, -1
  %i.dq = zext nneg i32 %i.bd to i64              ; 5 uses
  %i.dr = zext nneg i32 %.4..4..4..4..4..i to i64 ; 22 uses
  %i.ds = add nsw i64 %i.dr, -1                   ; 3 uses
  %i.dt = lshr i32 %i.ci, 3
  %i.du = and i32 %i.dt, 536870908
  %narrow = add nuw nsw i32 %i.du, %i.cm
  %7 = zext nneg i32 %narrow to i64
  %i.dv = shl nuw nsw i64 %i.dr, 2
  %scevgep53 = getelementptr i8, ptr %i.do, i64 %i.dv
  %i.dw = lshr i32 %i.ci, 3
  %i.dx = and i32 %i.dw, 536870908
  %narrow132 = add nuw nsw i32 %i.dx, %i.cm
  %i.dy = shl nuw nsw i64 %i.dr, 1
  %scevgep56 = getelementptr i8, ptr %i.da, i64 %i.dy
  %i.dz = add nsw i64 %i.dr, -1                   ; 4 uses
  %i.ea = lshr i32 %i.ci, 3
  %i.eb = and i32 %i.ea, 536870908
  %narrow133 = add nuw nsw i32 %i.eb, %i.cm
  %i.ec = zext nneg i32 %narrow133 to i64
  %i.ed = shl nuw nsw i64 %i.dr, 2
  %scevgep65 = getelementptr i8, ptr %i.do, i64 %i.ed
  %i.ee = lshr i32 %i.ci, 3
  %i.ef = and i32 %i.ee, 536870908
  %narrow134 = add nuw nsw i32 %i.ef, %i.cm
  %i.eg = mul nuw nsw i64 %i.dr, 3
  %scevgep68 = getelementptr i8, ptr %i.da, i64 %i.eg
  %i.eh = add nsw i64 %i.dr, -1                   ; 3 uses
  %i.ei = lshr i32 %i.ci, 3
  %i.ej = and i32 %i.ei, 536870908
  %narrow135 = add nuw nsw i32 %i.ej, %i.cm
  %i.ek = zext nneg i32 %narrow135 to i64
  %i.el = shl nuw nsw i64 %i.dr, 2                ; 2 uses
  %scevgep90 = getelementptr i8, ptr %i.do, i64 %i.el
  %i.em = lshr i32 %i.ci, 3
  %i.en = and i32 %i.em, 536870908
  %narrow136 = add nuw nsw i32 %i.en, %i.cm
  %scevgep93 = getelementptr i8, ptr %i.da, i64 %i.el
  %min.iters.check99 = icmp ult i32 %.4..4..4..4..4..i, 20
  %i.eo = trunc nsw i64 %i.eh to i32
  %i.ep = trunc nsw i64 %i.eh to i32
  %mul.result86 = shl i32 %i.ep, 2                ; 4 uses
  %mul.overflow87 = icmp ugt i64 %i.eh, 1073741823
  %n.vec101 = and i64 %i.dr, 504                  ; 4 uses
  %i.eq = trunc nuw nsw i64 %n.vec101 to i32
  %i.er = shl nuw nsw i32 %i.eq, 2
  %cmp.n107 = icmp eq i64 %n.vec101, %i.dr
  %min.iters.check74 = icmp ult i32 %.4..4..4..4..4..i, 20
  %i.es = trunc nsw i64 %i.dz to i32
  %i.et = trunc nsw i64 %i.dz to i32
  %mul60 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.et, i32 3) ; 2 uses
  %mul.result61 = extractvalue { i32, i1 } %mul60, 0 ; 3 uses
  %mul.overflow62 = extractvalue { i32, i1 } %mul60, 1
  %i.eu = icmp ugt i64 %i.dz, 4294967295
  %i.ev = icmp ugt i64 %i.dz, 4294967295
  %invariant.op = or i1 %i.ev, %mul.overflow62
  %n.vec76 = and i64 %i.dr, 508                   ; 4 uses
  %i.ew = trunc nuw nsw i64 %n.vec76 to i32
  %i.ex = mul nuw nsw i32 %i.ew, 3
  %cmp.n81 = icmp eq i64 %n.vec76, %i.dr
  %min.iters.check = icmp ult i32 %.4..4..4..4..4..i, 12
  %i.ey = trunc nsw i64 %i.ds to i32
  %i.ez = trunc nsw i64 %i.ds to i32
  %mul.result = shl i32 %i.ez, 1                  ; 2 uses
  %i.fa = icmp ugt i64 %i.ds, 4294967295
  %n.vec = and i64 %i.dr, 508                     ; 4 uses
  %i.fb = trunc nuw nsw i64 %n.vec to i32
  %i.fc = shl nuw nsw i32 %i.fb, 1
  %cmp.n = icmp eq i64 %n.vec, %i.dr
  br label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %.not603.i = icmp eq ptr %.0528.i, null
  br i1 %.not603.i, label %parseicon.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fd = shl nuw i32 1, %i.be
  %i.fe = sext i32 %i.fd to i64
  %i.ff = shl nsw i64 %i.fe, 2
  %i.fg = getelementptr i8, ptr %i.l, i64 16
  %.val.i621.i = load ptr, ptr %i.fg, align 8, !tbaa !90
  %i.fh = getelementptr i8, ptr %i.l, i64 72
  %.val3.i622.i = load i64, ptr %i.fh, align 8, !tbaa !91
  %i.fi = ptrtoint ptr %.0528.i to i64
  %i.fj = ptrtoint ptr %.val.i621.i to i64
  %i.fk = add i64 %.val3.i622.i, %i.fj
  %i.fl = sub i64 %i.fi, %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !92
  call void %i.fn(ptr noundef nonnull %i.l, i64 noundef %i.fl, i64 noundef range(i64 -8589934592, 8589934589) %i.ff) #13, !inline_history !93
  br label %parseicon.exit

bb.ah:                                            ; preds = %.loopexit655.i, %.lr.ph680.i
  %indvars.iv747.i = phi i64 [ 0, %.lr.ph680.i ], [ %indvars.iv.next748.i, %.loopexit655.i ] ; 18 uses
  %.0555679.i = phi i32 [ 0, %.lr.ph680.i ], [ %.2557.i, %.loopexit655.i ] ; 10 uses
  %i.fo = trunc i64 %indvars.iv747.i to i32
  %i.fp = xor i32 %i.fo, -1
  %i.fq = add i32 %i.bd, %i.fp
  %i.fr = mul i32 %.4..4..4..4..4..i, %i.fq
  %i.fs = zext i32 %i.fr to i64
  %i.ft = shl nuw nsw i64 %i.fs, 2                ; 2 uses
  %scevgep89 = getelementptr i8, ptr %i.do, i64 %i.ft
  %scevgep91 = getelementptr i8, ptr %scevgep90, i64 %i.ft
  %i.fu = trunc i64 %indvars.iv747.i to i32
  %i.fv = mul i32 %narrow136, %i.fu
  %i.fw = zext i32 %i.fv to i64                   ; 2 uses
  %scevgep92 = getelementptr i8, ptr %i.da, i64 %i.fw
  %scevgep94 = getelementptr i8, ptr %scevgep93, i64 %i.fw
  %i.fx = trunc i64 %indvars.iv747.i to i32
  %i.fy = xor i32 %i.fx, -1
  %i.fz = add i32 %i.bd, %i.fy
  %i.ga = mul i32 %.4..4..4..4..4..i, %i.fz
  %i.gb = mul i64 %indvars.iv747.i, %i.ek         ; 4 uses
  %8 = trunc i64 %i.gb to i32
  %i.gc = trunc i64 %i.gb to i32
  %i.gd = trunc i64 %i.gb to i32
  %i.ge = trunc i64 %i.gb to i32
  %i.gf = trunc i64 %indvars.iv747.i to i32
  %i.gg = xor i32 %i.gf, -1
  %i.gh = add i32 %i.bd, %i.gg
  %i.gi = mul i32 %.4..4..4..4..4..i, %i.gh
  %i.gj = zext i32 %i.gi to i64
  %i.gk = shl nuw nsw i64 %i.gj, 2                ; 2 uses
  %scevgep64 = getelementptr i8, ptr %i.do, i64 %i.gk
  %scevgep66 = getelementptr i8, ptr %scevgep65, i64 %i.gk
  %i.gl = trunc i64 %indvars.iv747.i to i32
  %i.gm = mul i32 %narrow134, %i.gl
  %i.gn = zext i32 %i.gm to i64                   ; 2 uses
  %scevgep67 = getelementptr i8, ptr %i.da, i64 %i.gn
  %scevgep69 = getelementptr i8, ptr %scevgep68, i64 %i.gn
  %i.go = trunc i64 %indvars.iv747.i to i32
  %i.gp = xor i32 %i.go, -1
  %i.gq = add i32 %i.bd, %i.gp
  %i.gr = mul i32 %.4..4..4..4..4..i, %i.gq
  %i.gs = mul i64 %indvars.iv747.i, %i.ec         ; 3 uses
  %9 = trunc i64 %i.gs to i32
  %i.gt = trunc i64 %i.gs to i32
  %i.gu = trunc i64 %i.gs to i32
  %i.gv = trunc i64 %indvars.iv747.i to i32
  %i.gw = xor i32 %i.gv, -1
  %i.gx = add i32 %i.bd, %i.gw
  %i.gy = mul i32 %.4..4..4..4..4..i, %i.gx
  %i.gz = zext i32 %i.gy to i64
  %i.ha = shl nuw nsw i64 %i.gz, 2                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.do, i64 %i.ha
  %scevgep54 = getelementptr i8, ptr %scevgep53, i64 %i.ha
  %i.hb = trunc i64 %indvars.iv747.i to i32
  %i.hc = mul i32 %narrow132, %i.hb
  %i.hd = zext i32 %i.hc to i64                   ; 2 uses
  %scevgep55 = getelementptr i8, ptr %i.da, i64 %i.hd
  %scevgep57 = getelementptr i8, ptr %scevgep56, i64 %i.hd
  %i.he = trunc i64 %indvars.iv747.i to i32
  %i.hf = xor i32 %i.he, -1
  %i.hg = add i32 %i.bd, %i.hf
  %i.hh = mul i32 %.4..4..4..4..4..i, %i.hg
  %10 = mul i64 %indvars.iv747.i, %7              ; 2 uses
  %i.hi = trunc i64 %10 to i32
  %11 = trunc i64 %10 to i32
  %i.hj = trunc nuw nsw i64 %indvars.iv747.i to i32
  %i.hk = mul i32 %i.cn, %i.hj                    ; 16 uses
  switch i16 %.14..14..14..14..14..i, label %.loopexit655.i [
    i16 1, label %.lr.ph676.i
    i16 4, label %.lr.ph676.i
    i16 8, label %.lr.ph676.i
    i16 16, label %.lr.ph671.i
    i16 24, label %.lr.ph668.i
    i16 32, label %.lr.ph.i
  ]

.lr.ph.i:                                         ; preds = %bb.ah
  %i.hl = xor i64 %indvars.iv747.i, -1
  %i.hm = add nsw i64 %i.hl, %i.dq
  %i.hn = mul i64 %i.hm, %i.dr                    ; 2 uses
  br i1 %min.iters.check99, label %scalar.ph98.preheader, label %vector.scevcheck84

vector.scevcheck84:                               ; preds = %.lr.ph.i
  %i.ho = xor i32 %i.ga, -1
  %i.hp = icmp ult i32 %i.ho, %i.eo
  %i.hq = xor i32 %8, -4
  %i.hr = icmp ult i32 %i.hq, %mul.result86
  %i.hs = xor i32 %i.gc, -1
  %i.ht = icmp ugt i32 %mul.result86, %i.hs
  %i.hu = or i1 %i.ht, %mul.overflow87
  %i.hv = xor i32 %i.gd, -2
  %i.hw = icmp ult i32 %i.hv, %mul.result86
  %i.hx = xor i32 %i.ge, -3
  %i.hy = icmp ult i32 %i.hx, %mul.result86
  %i.hz = or i1 %i.hr, %i.hp
  %i.ia = or i1 %i.hz, %i.hu
  %i.ib = or i1 %i.hw, %i.ia
  %i.ic = or i1 %i.hy, %i.ib
  br i1 %i.ic, label %scalar.ph98.preheader, label %vector.memcheck88

vector.memcheck88:                                ; preds = %vector.scevcheck84
  %bound095 = icmp ult ptr %scevgep89, %scevgep94
  %bound196 = icmp ult ptr %scevgep92, %scevgep91
  %found.conflict97 = and i1 %bound095, %bound196
  br i1 %found.conflict97, label %scalar.ph98.preheader, label %vector.ph100

vector.ph100:                                     ; preds = %vector.memcheck88
  %i.id = add i32 %i.hk, %i.er
  %i.ie = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.0555679.i, i64 0
  br label %vector.body102

vector.body102:                                   ; preds = %vector.body102, %vector.ph100
  %index103 = phi i64 [ 0, %vector.ph100 ], [ %index.next105, %vector.body102 ] ; 3 uses
  %vec.phi = phi <4 x i32> [ %i.ie, %vector.ph100 ], [ %i.pj, %vector.body102 ]
  %vec.phi104 = phi <4 x i32> [ zeroinitializer, %vector.ph100 ], [ %i.pk, %vector.body102 ]
  %i.if = trunc i64 %index103 to i32
  %i.ig = shl i32 %i.if, 2
  %i.ih = add i32 %i.hk, %i.ig                    ; 11 uses
  %i.ii = add i32 %i.ih, 4                        ; 4 uses
  %i.ij = add i32 %i.ih, 8                        ; 4 uses
  %i.ik = add i32 %i.ih, 12                       ; 4 uses
  %i.il = add i32 %i.ih, 16                       ; 4 uses
  %i.im = add i32 %i.ih, 20                       ; 4 uses
  %i.in = add i32 %i.ih, 24                       ; 4 uses
  %i.io = add i32 %i.ih, 28                       ; 4 uses
  %i.ip = or disjoint i32 %i.ih, 3
  %i.iq = or disjoint i32 %i.ii, 3
  %i.ir = or disjoint i32 %i.ij, 3
  %i.is = or disjoint i32 %i.ik, 3
  %i.it = or disjoint i32 %i.il, 3
  %i.iu = or disjoint i32 %i.im, 3
  %i.iv = or disjoint i32 %i.in, 3
  %i.iw = or disjoint i32 %i.io, 3
  %i.ix = zext i32 %i.ip to i64
  %i.iy = zext i32 %i.iq to i64
  %i.iz = zext i32 %i.ir to i64
  %i.ja = zext i32 %i.is to i64
  %i.jb = zext i32 %i.it to i64
  %i.jc = zext i32 %i.iu to i64
  %i.jd = zext i32 %i.iv to i64
  %i.je = zext i32 %i.iw to i64
  %i.jf = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ix
  %i.jg = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.iy
  %i.jh = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.iz
  %i.ji = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ja
  %i.jj = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.jb
  %i.jk = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.jc
  %i.jl = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.jd
  %i.jm = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.je
  %i.jn = load i8, ptr %i.jf, align 1, !tbaa !77, !alias.scope !94
  %i.jo = load i8, ptr %i.jg, align 1, !tbaa !77, !alias.scope !94
  %i.jp = load i8, ptr %i.jh, align 1, !tbaa !77, !alias.scope !94
  %i.jq = load i8, ptr %i.ji, align 1, !tbaa !77, !alias.scope !94
  %i.jr = insertelement <4 x i8> poison, i8 %i.jn, i64 0
  %i.js = insertelement <4 x i8> %i.jr, i8 %i.jo, i64 1
  %i.jt = insertelement <4 x i8> %i.js, i8 %i.jp, i64 2
  %i.ju = insertelement <4 x i8> %i.jt, i8 %i.jq, i64 3
  %i.jv = load i8, ptr %i.jj, align 1, !tbaa !77, !alias.scope !94
  %i.jw = load i8, ptr %i.jk, align 1, !tbaa !77, !alias.scope !94
  %i.jx = load i8, ptr %i.jl, align 1, !tbaa !77, !alias.scope !94
  %i.jy = load i8, ptr %i.jm, align 1, !tbaa !77, !alias.scope !94
  %i.jz = insertelement <4 x i8> poison, i8 %i.jv, i64 0
  %i.ka = insertelement <4 x i8> %i.jz, i8 %i.jw, i64 1
  %i.kb = insertelement <4 x i8> %i.ka, i8 %i.jx, i64 2
  %i.kc = insertelement <4 x i8> %i.kb, i8 %i.jy, i64 3
  %i.kd = zext <4 x i8> %i.ju to <4 x i32>
  %i.ke = zext <4 x i8> %i.kc to <4 x i32>
  %i.kf = shl nuw <4 x i32> %i.kd, splat (i32 24) ; 2 uses
  %i.kg = shl nuw <4 x i32> %i.ke, splat (i32 24) ; 2 uses
  %i.kh = zext i32 %i.ih to i64
  %i.ki = zext i32 %i.ii to i64
  %i.kj = zext i32 %i.ij to i64
  %i.kk = zext i32 %i.ik to i64
  %i.kl = zext i32 %i.il to i64
  %i.km = zext i32 %i.im to i64
  %i.kn = zext i32 %i.in to i64
  %i.ko = zext i32 %i.io to i64
  %i.kp = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.kh
  %i.kq = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ki
  %i.kr = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.kj
  %i.ks = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.kk
  %i.kt = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.kl
  %i.ku = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.km
  %i.kv = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.kn
  %i.kw = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ko
  %i.kx = load i8, ptr %i.kp, align 1, !tbaa !77, !alias.scope !94
  %i.ky = load i8, ptr %i.kq, align 1, !tbaa !77, !alias.scope !94
  %i.kz = load i8, ptr %i.kr, align 1, !tbaa !77, !alias.scope !94
  %i.la = load i8, ptr %i.ks, align 1, !tbaa !77, !alias.scope !94
  %i.lb = insertelement <4 x i8> poison, i8 %i.kx, i64 0
  %i.lc = insertelement <4 x i8> %i.lb, i8 %i.ky, i64 1
  %i.ld = insertelement <4 x i8> %i.lc, i8 %i.kz, i64 2
  %i.le = insertelement <4 x i8> %i.ld, i8 %i.la, i64 3
  %i.lf = load i8, ptr %i.kt, align 1, !tbaa !77, !alias.scope !94
  %i.lg = load i8, ptr %i.ku, align 1, !tbaa !77, !alias.scope !94
  %i.lh = load i8, ptr %i.kv, align 1, !tbaa !77, !alias.scope !94
  %i.li = load i8, ptr %i.kw, align 1, !tbaa !77, !alias.scope !94
  %i.lj = insertelement <4 x i8> poison, i8 %i.lf, i64 0
  %i.lk = insertelement <4 x i8> %i.lj, i8 %i.lg, i64 1
  %i.ll = insertelement <4 x i8> %i.lk, i8 %i.lh, i64 2
  %i.lm = insertelement <4 x i8> %i.ll, i8 %i.li, i64 3
  %i.ln = zext <4 x i8> %i.le to <4 x i32>
  %i.lo = zext <4 x i8> %i.lm to <4 x i32>
  %i.lp = or disjoint i32 %i.ih, 1
  %i.lq = or disjoint i32 %i.ii, 1
  %i.lr = or disjoint i32 %i.ij, 1
  %i.ls = or disjoint i32 %i.ik, 1
  %i.lt = or disjoint i32 %i.il, 1
  %i.lu = or disjoint i32 %i.im, 1
  %i.lv = or disjoint i32 %i.in, 1
  %i.lw = or disjoint i32 %i.io, 1
  %i.lx = zext i32 %i.lp to i64
  %i.ly = zext i32 %i.lq to i64
  %i.lz = zext i32 %i.lr to i64
  %i.ma = zext i32 %i.ls to i64
  %i.mb = zext i32 %i.lt to i64
  %i.mc = zext i32 %i.lu to i64
  %i.md = zext i32 %i.lv to i64
  %i.me = zext i32 %i.lw to i64
  %i.mf = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.lx
  %i.mg = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ly
  %i.mh = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.lz
  %i.mi = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ma
  %i.mj = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.mb
  %i.mk = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.mc
  %i.ml = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.md
  %i.mm = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.me
  %i.mn = load i8, ptr %i.mf, align 1, !tbaa !77, !alias.scope !94
  %i.mo = load i8, ptr %i.mg, align 1, !tbaa !77, !alias.scope !94
  %i.mp = load i8, ptr %i.mh, align 1, !tbaa !77, !alias.scope !94
  %i.mq = load i8, ptr %i.mi, align 1, !tbaa !77, !alias.scope !94
  %i.mr = insertelement <4 x i8> poison, i8 %i.mn, i64 0
  %i.ms = insertelement <4 x i8> %i.mr, i8 %i.mo, i64 1
  %i.mt = insertelement <4 x i8> %i.ms, i8 %i.mp, i64 2
  %i.mu = insertelement <4 x i8> %i.mt, i8 %i.mq, i64 3
  %i.mv = load i8, ptr %i.mj, align 1, !tbaa !77, !alias.scope !94
  %i.mw = load i8, ptr %i.mk, align 1, !tbaa !77, !alias.scope !94
  %i.mx = load i8, ptr %i.ml, align 1, !tbaa !77, !alias.scope !94
  %i.my = load i8, ptr %i.mm, align 1, !tbaa !77, !alias.scope !94
  %i.mz = insertelement <4 x i8> poison, i8 %i.mv, i64 0
  %i.na = insertelement <4 x i8> %i.mz, i8 %i.mw, i64 1
  %i.nb = insertelement <4 x i8> %i.na, i8 %i.mx, i64 2
  %i.nc = insertelement <4 x i8> %i.nb, i8 %i.my, i64 3
  %i.nd = zext <4 x i8> %i.mu to <4 x i32>
  %i.ne = zext <4 x i8> %i.nc to <4 x i32>
  %i.nf = shl nuw nsw <4 x i32> %i.nd, splat (i32 8)
  %i.ng = shl nuw nsw <4 x i32> %i.ne, splat (i32 8)
  %i.nh = or disjoint i32 %i.ih, 2
  %i.ni = or disjoint i32 %i.ii, 2
  %i.nj = or disjoint i32 %i.ij, 2
  %i.nk = or disjoint i32 %i.ik, 2
  %i.nl = or disjoint i32 %i.il, 2
  %i.nm = or disjoint i32 %i.im, 2
  %i.nn = or disjoint i32 %i.in, 2
  %i.no = or disjoint i32 %i.io, 2
  %i.np = zext i32 %i.nh to i64
  %i.nq = zext i32 %i.ni to i64
  %i.nr = zext i32 %i.nj to i64
  %i.ns = zext i32 %i.nk to i64
  %i.nt = zext i32 %i.nl to i64
  %i.nu = zext i32 %i.nm to i64
  %i.nv = zext i32 %i.nn to i64
  %i.nw = zext i32 %i.no to i64
  %i.nx = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.np
  %i.ny = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.nq
  %i.nz = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.nr
  %i.oa = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ns
  %i.ob = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.nt
  %i.oc = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.nu
  %i.od = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.nv
  %i.oe = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.nw
  %i.of = load i8, ptr %i.nx, align 1, !tbaa !77, !alias.scope !94
  %i.og = load i8, ptr %i.ny, align 1, !tbaa !77, !alias.scope !94
  %i.oh = load i8, ptr %i.nz, align 1, !tbaa !77, !alias.scope !94
  %i.oi = load i8, ptr %i.oa, align 1, !tbaa !77, !alias.scope !94
  %i.oj = insertelement <4 x i8> poison, i8 %i.of, i64 0
  %i.ok = insertelement <4 x i8> %i.oj, i8 %i.og, i64 1
  %i.ol = insertelement <4 x i8> %i.ok, i8 %i.oh, i64 2
  %i.om = insertelement <4 x i8> %i.ol, i8 %i.oi, i64 3
  %i.on = load i8, ptr %i.ob, align 1, !tbaa !77, !alias.scope !94
  %i.oo = load i8, ptr %i.oc, align 1, !tbaa !77, !alias.scope !94
  %i.op = load i8, ptr %i.od, align 1, !tbaa !77, !alias.scope !94
  %i.oq = load i8, ptr %i.oe, align 1, !tbaa !77, !alias.scope !94
  %i.or = insertelement <4 x i8> poison, i8 %i.on, i64 0
  %i.os = insertelement <4 x i8> %i.or, i8 %i.oo, i64 1
  %i.ot = insertelement <4 x i8> %i.os, i8 %i.op, i64 2
  %i.ou = insertelement <4 x i8> %i.ot, i8 %i.oq, i64 3
  %i.ov = zext <4 x i8> %i.om to <4 x i32>
  %i.ow = zext <4 x i8> %i.ou to <4 x i32>
  %i.ox = shl nuw nsw <4 x i32> %i.ov, splat (i32 16)
  %i.oy = shl nuw nsw <4 x i32> %i.ow, splat (i32 16)
  %i.oz = or disjoint <4 x i32> %i.nf, %i.ln
  %i.pa = or disjoint <4 x i32> %i.ng, %i.lo
  %i.pb = or disjoint <4 x i32> %i.oz, %i.ox
  %i.pc = or disjoint <4 x i32> %i.pa, %i.oy
  %i.pd = or disjoint <4 x i32> %i.pb, %i.kf
  %i.pe = or disjoint <4 x i32> %i.pc, %i.kg
  %i.pf = add i64 %index103, %i.hn
  %i.pg = and i64 %i.pf, 4294967295
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.pg ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 16
  store <4 x i32> %i.pd, ptr %i.ph, align 4, !tbaa !57, !alias.scope !97, !noalias !94
  store <4 x i32> %i.pe, ptr %i.pi, align 4, !tbaa !57, !alias.scope !97, !noalias !94
  %i.pj = or <4 x i32> %i.kf, %vec.phi            ; 2 uses
  %i.pk = or <4 x i32> %i.kg, %vec.phi104         ; 2 uses
  %index.next105 = add nuw i64 %index103, 8       ; 2 uses
  %i.pl = icmp eq i64 %index.next105, %n.vec101
  br i1 %i.pl, label %middle.block106, label %vector.body102, !llvm.loop !99

middle.block106:                                  ; preds = %vector.body102
  %bin.rdx = or <4 x i32> %i.pk, %i.pj
  %i.pm = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n107, label %.loopexit655.i, label %scalar.ph98.preheader

scalar.ph98.preheader:                            ; preds = %vector.memcheck88, %vector.scevcheck84, %.lr.ph.i, %middle.block106
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck88 ], [ 0, %vector.scevcheck84 ], [ 0, %.lr.ph.i ], [ %n.vec101, %middle.block106 ]
  %.4552665.i.ph = phi i32 [ %i.hk, %vector.memcheck88 ], [ %i.hk, %vector.scevcheck84 ], [ %i.hk, %.lr.ph.i ], [ %i.id, %middle.block106 ]
  %.1556664.i.ph = phi i32 [ %.0555679.i, %vector.memcheck88 ], [ %.0555679.i, %vector.scevcheck84 ], [ %.0555679.i, %.lr.ph.i ], [ %i.pm, %middle.block106 ]
  br label %scalar.ph98

.lr.ph668.i:                                      ; preds = %bb.ah
  %i.pn = xor i64 %indvars.iv747.i, -1
  %i.po = add nsw i64 %i.pn, %i.dq
  %i.pp = mul i64 %i.po, %i.dr                    ; 2 uses
  br i1 %min.iters.check74, label %scalar.ph73.preheader, label %vector.scevcheck59

vector.scevcheck59:                               ; preds = %.lr.ph668.i
  %i.pq = xor i32 %i.gr, -1
  %i.pr = icmp ult i32 %i.pq, %i.es
  %i.ps = xor i32 %9, -1
  %i.pt = icmp ugt i32 %mul.result61, %i.ps
  %i.pu = or i1 %i.pt, %i.eu
  %i.pv = xor i32 %i.gt, -2
  %i.pw = icmp ult i32 %i.pv, %mul.result61
  %.reass = or i1 %i.pw, %invariant.op
  %i.px = xor i32 %i.gu, -3
  %i.py = icmp ult i32 %i.px, %mul.result61
  %i.pz = or i1 %i.pu, %i.pr
  %i.qa = or i1 %i.pz, %.reass
  %i.qb = or i1 %i.py, %i.qa
  br i1 %i.qb, label %scalar.ph73.preheader, label %vector.memcheck63

vector.memcheck63:                                ; preds = %vector.scevcheck59
  %bound070 = icmp ult ptr %scevgep64, %scevgep69
  %bound171 = icmp ult ptr %scevgep67, %scevgep66
  %found.conflict72 = and i1 %bound070, %bound171
  br i1 %found.conflict72, label %scalar.ph73.preheader, label %vector.ph75

vector.ph75:                                      ; preds = %vector.memcheck63
  %i.qc = add i32 %i.hk, %i.ex
  br label %vector.body77

vector.body77:                                    ; preds = %vector.body77, %vector.ph75
  %index78 = phi i64 [ 0, %vector.ph75 ], [ %index.next79, %vector.body77 ] ; 3 uses
  %i.qd = trunc i64 %index78 to i32
  %i.qe = mul i32 %i.qd, 3
  %i.qf = add i32 %i.hk, %i.qe                    ; 12 uses
  %i.qg = or disjoint i32 %i.qf, 3
  %i.qh = add i32 %i.qf, 6
  %i.qi = add i32 %i.qf, 9
  %i.qj = zext i32 %i.qf to i64
  %i.qk = zext i32 %i.qg to i64
  %i.ql = zext i32 %i.qh to i64
  %i.qm = zext i32 %i.qi to i64
  %i.qn = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.qj
  %i.qo = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.qk
  %i.qp = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ql
  %i.qq = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.qm
  %i.qr = load i8, ptr %i.qn, align 1, !tbaa !77, !alias.scope !102
  %i.qs = load i8, ptr %i.qo, align 1, !tbaa !77, !alias.scope !102
  %i.qt = load i8, ptr %i.qp, align 1, !tbaa !77, !alias.scope !102
  %i.qu = load i8, ptr %i.qq, align 1, !tbaa !77, !alias.scope !102
  %i.qv = insertelement <4 x i8> poison, i8 %i.qr, i64 0
  %i.qw = insertelement <4 x i8> %i.qv, i8 %i.qs, i64 1
  %i.qx = insertelement <4 x i8> %i.qw, i8 %i.qt, i64 2
  %i.qy = insertelement <4 x i8> %i.qx, i8 %i.qu, i64 3
  %i.qz = zext <4 x i8> %i.qy to <4 x i32>
  %i.ra = or disjoint i32 %i.qf, 1
  %i.rb = add i32 %i.qf, 4
  %i.rc = add i32 %i.qf, 7
  %i.rd = add i32 %i.qf, 10
  %i.re = zext i32 %i.ra to i64
  %i.rf = zext i32 %i.rb to i64
  %i.rg = zext i32 %i.rc to i64
  %i.rh = zext i32 %i.rd to i64
  %i.ri = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.re
  %i.rj = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.rf
  %i.rk = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.rg
  %i.rl = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.rh
  %i.rm = load i8, ptr %i.ri, align 1, !tbaa !77, !alias.scope !102
  %i.rn = load i8, ptr %i.rj, align 1, !tbaa !77, !alias.scope !102
  %i.ro = load i8, ptr %i.rk, align 1, !tbaa !77, !alias.scope !102
  %i.rp = load i8, ptr %i.rl, align 1, !tbaa !77, !alias.scope !102
  %i.rq = insertelement <4 x i8> poison, i8 %i.rm, i64 0
  %i.rr = insertelement <4 x i8> %i.rq, i8 %i.rn, i64 1
  %i.rs = insertelement <4 x i8> %i.rr, i8 %i.ro, i64 2
  %i.rt = insertelement <4 x i8> %i.rs, i8 %i.rp, i64 3
  %i.ru = zext <4 x i8> %i.rt to <4 x i32>
  %i.rv = shl nuw nsw <4 x i32> %i.ru, splat (i32 8)
  %i.rw = or disjoint <4 x i32> %i.rv, %i.qz
  %i.rx = or disjoint i32 %i.qf, 2
  %i.ry = add i32 %i.qf, 5
  %i.rz = add i32 %i.qf, 8
  %i.sa = add i32 %i.qf, 11
  %i.sb = zext i32 %i.rx to i64
  %i.sc = zext i32 %i.ry to i64
  %i.sd = zext i32 %i.rz to i64
  %i.se = zext i32 %i.sa to i64
  %i.sf = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.sb
  %i.sg = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.sc
  %i.sh = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.sd
  %i.si = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.se
  %i.sj = load i8, ptr %i.sf, align 1, !tbaa !77, !alias.scope !102
  %i.sk = load i8, ptr %i.sg, align 1, !tbaa !77, !alias.scope !102
  %i.sl = load i8, ptr %i.sh, align 1, !tbaa !77, !alias.scope !102
  %i.sm = load i8, ptr %i.si, align 1, !tbaa !77, !alias.scope !102
  %i.sn = insertelement <4 x i8> poison, i8 %i.sj, i64 0
  %i.so = insertelement <4 x i8> %i.sn, i8 %i.sk, i64 1
  %i.sp = insertelement <4 x i8> %i.so, i8 %i.sl, i64 2
  %i.sq = insertelement <4 x i8> %i.sp, i8 %i.sm, i64 3
  %i.sr = zext <4 x i8> %i.sq to <4 x i32>
  %i.ss = shl nuw nsw <4 x i32> %i.sr, splat (i32 16)
  %i.st = or disjoint <4 x i32> %i.rw, %i.ss
  %i.su = add i64 %index78, %i.pp
  %i.sv = and i64 %i.su, 4294967295
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.sv
  store <4 x i32> %i.st, ptr %i.sw, align 4, !tbaa !57, !alias.scope !105, !noalias !102
  %index.next79 = add nuw i64 %index78, 4         ; 2 uses
  %i.sx = icmp eq i64 %index.next79, %n.vec76
  br i1 %i.sx, label %middle.block80, label %vector.body77, !llvm.loop !107

middle.block80:                                   ; preds = %vector.body77
  br i1 %cmp.n81, label %.loopexit655.i, label %scalar.ph73.preheader

scalar.ph73.preheader:                            ; preds = %vector.memcheck63, %vector.scevcheck59, %.lr.ph668.i, %middle.block80
  %indvars.iv733.i.ph = phi i64 [ 0, %vector.memcheck63 ], [ 0, %vector.scevcheck59 ], [ 0, %.lr.ph668.i ], [ %n.vec76, %middle.block80 ]
  %.3551667.i.ph = phi i32 [ %i.hk, %vector.memcheck63 ], [ %i.hk, %vector.scevcheck59 ], [ %i.hk, %.lr.ph668.i ], [ %i.qc, %middle.block80 ]
  br label %scalar.ph73

.lr.ph671.i:                                      ; preds = %bb.ah
  %i.sy = xor i64 %indvars.iv747.i, -1
  %i.sz = add nsw i64 %i.sy, %i.dq
  %i.ta = mul i64 %i.sz, %i.dr                    ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph671.i
  %i.tb = xor i32 %i.hh, -1
  %i.tc = icmp ult i32 %i.tb, %i.ey
  %i.td = xor i32 %i.hi, -1
  %i.te = icmp ugt i32 %mul.result, %i.td
  %i.tf = or i1 %i.te, %i.fa
  %i.tg = xor i32 %11, -2
  %i.th = icmp ult i32 %i.tg, %mul.result
  %i.ti = or i1 %i.tc, %i.tf
  %i.tj = or i1 %i.th, %i.ti
  br i1 %i.tj, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %scevgep, %scevgep57
  %bound1 = icmp ult ptr %scevgep55, %scevgep54
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.tk = add i32 %i.hk, %i.fc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.tl = trunc i64 %index to i32
  %i.tm = shl i32 %i.tl, 1
  %i.tn = add i32 %i.hk, %i.tm                    ; 6 uses
  %i.to = or disjoint i32 %i.tn, 2
  %i.tp = add i32 %i.tn, 4                        ; 2 uses
  %i.tq = add i32 %i.tn, 6                        ; 2 uses
  %i.tr = zext i32 %i.tn to i64
  %i.ts = zext i32 %i.to to i64
  %i.tt = zext i32 %i.tp to i64
  %i.tu = zext i32 %i.tq to i64
  %i.tv = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.tr
  %i.tw = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ts
  %i.tx = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.tt
  %i.ty = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.tu
  %i.tz = load i8, ptr %i.tv, align 1, !tbaa !77, !alias.scope !108
  %i.ua = load i8, ptr %i.tw, align 1, !tbaa !77, !alias.scope !108
  %i.ub = load i8, ptr %i.tx, align 1, !tbaa !77, !alias.scope !108
  %i.uc = load i8, ptr %i.ty, align 1, !tbaa !77, !alias.scope !108
  %i.ud = insertelement <4 x i8> poison, i8 %i.tz, i64 0
  %i.ue = insertelement <4 x i8> %i.ud, i8 %i.ua, i64 1
  %i.uf = insertelement <4 x i8> %i.ue, i8 %i.ub, i64 2
  %i.ug = insertelement <4 x i8> %i.uf, i8 %i.uc, i64 3
  %i.uh = zext <4 x i8> %i.ug to <4 x i32>        ; 2 uses
  %i.ui = and <4 x i32> %i.uh, splat (i32 31)     ; 2 uses
  %i.uj = lshr <4 x i32> %i.uh, splat (i32 5)
  %i.uk = or disjoint i32 %i.tn, 1
  %i.ul = or disjoint i32 %i.tn, 3
  %i.um = or disjoint i32 %i.tp, 1
  %i.un = or disjoint i32 %i.tq, 1
  %i.uo = zext i32 %i.uk to i64
  %i.up = zext i32 %i.ul to i64
  %i.uq = zext i32 %i.um to i64
  %i.ur = zext i32 %i.un to i64
  %i.us = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.uo
  %i.ut = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.up
  %i.uu = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.uq
  %i.uv = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ur
  %i.uw = load i8, ptr %i.us, align 1, !tbaa !77, !alias.scope !108
  %i.ux = load i8, ptr %i.ut, align 1, !tbaa !77, !alias.scope !108
  %i.uy = load i8, ptr %i.uu, align 1, !tbaa !77, !alias.scope !108
  %i.uz = load i8, ptr %i.uv, align 1, !tbaa !77, !alias.scope !108
  %i.va = insertelement <4 x i8> poison, i8 %i.uw, i64 0
  %i.vb = insertelement <4 x i8> %i.va, i8 %i.ux, i64 1
  %i.vc = insertelement <4 x i8> %i.vb, i8 %i.uy, i64 2
  %i.vd = insertelement <4 x i8> %i.vc, i8 %i.uz, i64 3
  %i.ve = zext <4 x i8> %i.vd to <4 x i32>        ; 2 uses
  %i.vf = shl nuw nsw <4 x i32> %i.ve, splat (i32 3) ; 2 uses
  %i.vg = and <4 x i32> %i.vf, splat (i32 24)
  %i.vh = or disjoint <4 x i32> %i.vg, %i.uj      ; 2 uses
  %i.vi = shl nuw nsw <4 x i32> %i.ui, splat (i32 3)
  %i.vj = lshr <4 x i32> %i.ui, splat (i32 2)
  %i.vk = or disjoint <4 x i32> %i.vi, %i.vj
  %i.vl = shl nuw nsw <4 x i32> %i.vh, splat (i32 14)
  %i.vm = shl nuw nsw <4 x i32> %i.vh, splat (i32 9)
  %i.vn = and <4 x i32> %i.vm, splat (i32 14336)
  %i.vo = or disjoint <4 x i32> %i.vn, %i.vl
  %i.vp = and <4 x i32> %i.vf, splat (i32 2016)
  %i.vq = lshr <4 x i32> %i.ve, splat (i32 2)
  %i.vr = or <4 x i32> %i.vp, %i.vq
  %i.vs = shl nuw nsw <4 x i32> %i.vr, splat (i32 17)
  %i.vt = or <4 x i32> %i.vs, %i.vo
  %i.vu = or disjoint <4 x i32> %i.vt, %i.vk
  %i.vv = add i64 %index, %i.ta
  %i.vw = and i64 %i.vv, 4294967295
  %i.vx = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.vw
  store <4 x i32> %i.vu, ptr %i.vx, align 4, !tbaa !57, !alias.scope !111, !noalias !108
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.vy = icmp eq i64 %index.next, %n.vec
  br i1 %i.vy, label %middle.block, label %vector.body, !llvm.loop !113

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit655.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph671.i, %middle.block
  %indvars.iv738.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph671.i ], [ %n.vec, %middle.block ]
  %.2550670.i.ph = phi i32 [ %i.hk, %vector.memcheck ], [ %i.hk, %vector.scevcheck ], [ %i.hk, %.lr.ph671.i ], [ %i.tk, %middle.block ]
  br label %scalar.ph

.lr.ph676.i:                                      ; preds = %bb.ah, %bb.ah, %bb.ah
  %i.vz = xor i64 %indvars.iv747.i, -1
  %i.wa = add nsw i64 %i.vz, %i.dq
  %i.wb = mul i64 %i.wa, %i.dr
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ak, %.lr.ph676.i
  %indvars.iv743.i = phi i64 [ 0, %.lr.ph676.i ], [ %indvars.iv.next744.i, %bb.ak ] ; 2 uses
  %.0544675.i = phi i8 [ 0, %.lr.ph676.i ], [ %.1545.i, %bb.ak ]
  %.0546674.i = phi i32 [ 0, %.lr.ph676.i ], [ %i.wg, %bb.ak ] ; 2 uses
  %.0548673.i = phi i32 [ %i.hk, %.lr.ph676.i ], [ %.1549.i, %bb.ak ] ; 3 uses
  %.not620.i = icmp eq i32 %.0546674.i, 0
  br i1 %.not620.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.wc = add i32 %.0548673.i, 1
  %i.wd = zext i32 %.0548673.i to i64
  %i.we = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.wd
  %i.wf = load i8, ptr %i.we, align 1, !tbaa !77
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.1549.i = phi i32 [ %.0548673.i, %bb.ai ], [ %i.wc, %bb.aj ]
  %.1547.i = phi i32 [ %.0546674.i, %bb.ai ], [ 8, %bb.aj ]
  %.1545.i = phi i8 [ %.0544675.i, %bb.ai ], [ %i.wf, %bb.aj ] ; 2 uses
  %i.wg = sub i32 %.1547.i, %i.be                 ; 2 uses
  %i.wh = zext i8 %.1545.i to i32
  %i.wi = lshr i32 %i.wh, %i.wg
  %i.wj = and i32 %i.wi, %i.dp
  %i.wk = zext nneg i32 %i.wj to i64
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %.0528.i, i64 %i.wk
  %i.wm = load i32, ptr %i.wl, align 1, !tbaa !77
  %i.wn = add i64 %indvars.iv743.i, %i.wb
  %i.wo = and i64 %i.wn, 4294967295
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.wo
  store i32 %i.wm, ptr %i.wp, align 4, !tbaa !57
  %indvars.iv.next744.i = add nuw nsw i64 %indvars.iv743.i, 1 ; 2 uses
  %exitcond746.not.i = icmp eq i64 %indvars.iv.next744.i, %i.dr
  br i1 %exitcond746.not.i, label %.loopexit655.i, label %bb.ai

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv738.i = phi i64 [ %indvars.iv.next739.i, %scalar.ph ], [ %indvars.iv738.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.2550670.i = phi i32 [ %i.xu, %scalar.ph ], [ %.2550670.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.wq = zext i32 %.2550670.i to i64
  %i.wr = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.wq
  %i.ws = load i8, ptr %i.wr, align 1, !tbaa !77
  %i.wt = zext i8 %i.ws to i32                    ; 2 uses
  %i.wu = and i32 %i.wt, 31                       ; 2 uses
  %i.wv = lshr i32 %i.wt, 5
  %i.ww = or disjoint i32 %.2550670.i, 1
  %i.wx = zext i32 %i.ww to i64
  %i.wy = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.wx
  %i.wz = load i8, ptr %i.wy, align 1, !tbaa !77
  %i.xa = zext i8 %i.wz to i32                    ; 2 uses
  %i.xb = shl nuw nsw i32 %i.xa, 3                ; 2 uses
  %i.xc = and i32 %i.xb, 24
  %i.xd = or disjoint i32 %i.xc, %i.wv            ; 2 uses
  %i.xe = shl nuw nsw i32 %i.wu, 3
  %i.xf = lshr i32 %i.wu, 2
  %i.xg = or disjoint i32 %i.xe, %i.xf
  %i.xh = shl nuw nsw i32 %i.xd, 14
  %i.xi = shl nuw nsw i32 %i.xd, 9
  %i.xj = and i32 %i.xi, 14336
  %i.xk = or disjoint i32 %i.xj, %i.xh
  %i.xl = and i32 %i.xb, 2016
  %i.xm = lshr i32 %i.xa, 2
  %i.xn = or i32 %i.xl, %i.xm
  %i.xo = shl nuw nsw i32 %i.xn, 17
  %i.xp = or i32 %i.xo, %i.xk
  %i.xq = or disjoint i32 %i.xp, %i.xg
  %i.xr = add i64 %indvars.iv738.i, %i.ta
  %i.xs = and i64 %i.xr, 4294967295
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.xs
  store i32 %i.xq, ptr %i.xt, align 4, !tbaa !57
  %i.xu = add i32 %.2550670.i, 2
  %indvars.iv.next739.i = add nuw nsw i64 %indvars.iv738.i, 1 ; 2 uses
  %exitcond742.not.i = icmp eq i64 %indvars.iv.next739.i, %i.dr
  br i1 %exitcond742.not.i, label %.loopexit655.i, label %scalar.ph, !llvm.loop !114

scalar.ph73:                                      ; preds = %scalar.ph73.preheader, %scalar.ph73
  %indvars.iv733.i = phi i64 [ %indvars.iv.next734.i, %scalar.ph73 ], [ %indvars.iv733.i.ph, %scalar.ph73.preheader ] ; 2 uses
  %.3551667.i = phi i32 [ %i.yq, %scalar.ph73 ], [ %.3551667.i.ph, %scalar.ph73.preheader ] ; 4 uses
  %i.xv = zext i32 %.3551667.i to i64
  %i.xw = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.xv
  %i.xx = load i8, ptr %i.xw, align 1, !tbaa !77
  %i.xy = zext i8 %i.xx to i32
  %i.xz = add i32 %.3551667.i, 1
  %i.ya = zext i32 %i.xz to i64
  %i.yb = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ya
  %i.yc = load i8, ptr %i.yb, align 1, !tbaa !77
  %i.yd = zext i8 %i.yc to i32
  %i.ye = shl nuw nsw i32 %i.yd, 8
  %i.yf = or disjoint i32 %i.ye, %i.xy
  %i.yg = add i32 %.3551667.i, 2
  %i.yh = zext i32 %i.yg to i64
  %i.yi = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.yh
  %i.yj = load i8, ptr %i.yi, align 1, !tbaa !77
  %i.yk = zext i8 %i.yj to i32
  %i.yl = shl nuw nsw i32 %i.yk, 16
  %i.ym = or disjoint i32 %i.yf, %i.yl
  %i.yn = add i64 %indvars.iv733.i, %i.pp
  %i.yo = and i64 %i.yn, 4294967295
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.yo
  store i32 %i.ym, ptr %i.yp, align 4, !tbaa !57
  %i.yq = add i32 %.3551667.i, 3
end_hunk_0
begin_hunk_1_@cli_icongroupset_add:bb.a

bb.i:                                             ; preds = %bb.h, %bb.j
  %indvars.iv = phi i64 [ 0, %bb.h ], [ %indvars.iv.next, %bb.j ] ; 5 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !128
  %i.t = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %i.s) #14
  %.not43 = icmp eq i32 %i.t, 0
  br i1 %.not43, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %bb.i

bb.k:                                             ; preds = %bb.i
  %i.u = trunc nuw i64 %indvars.iv to i32
  %i.v = icmp eq i32 %i.j, %i.u
  br i1 %i.v, label %.thread, label %bb.l

.thread:                                          ; preds = %bb.j, %bb.k
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.14, i32 noundef %2, ptr noundef nonnull %0) #13
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.w = and i64 %indvars.iv, 63
  %i.x = lshr i64 %indvars.iv, 6
  %i.y = shl nuw i64 1, %i.w
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.h
  %i.aa = and i64 %i.x, 67108863
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.aa ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !123
  %i.ad = or i64 %i.ac, %i.y
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !123
  br label %bb.m

bb.m:                                             ; preds = %.thread, %bb.l, %bb.a, %bb.b, %bb.c, %bb.d, %bb.g
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

declare ptr @cli_gettmpdir() local_unnamed_addr #2

declare ptr @cli_max_malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @makebmp(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 16, 257) %2, i32 noundef %3, ptr nofree noundef nonnull readonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !57
  store i32 %3, ptr %i.b, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @cli_gentemp_with_prefix(ptr noundef nonnull %1, ptr noundef nonnull @.str.27) #13 ; 10 uses
  %.not31 = icmp eq ptr %i.g, null
  br i1 %.not31, label %bb.t, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noalias ptr @fopen(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.28) ; 14 uses
  %.not32 = icmp eq ptr %i.h, null
  br i1 %.not32, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i32 @cli_unlink(ptr noundef nonnull %i.g) #13 ; 0 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.29, ptr noundef nonnull %i.g) #13
  tail call void @free(ptr noundef nonnull %i.g) #13
  br label %bb.t

bb.e:                                             ; preds = %bb.c
  %i.j = shl nuw nsw i32 %2, 2                    ; 2 uses
  %i.k = mul i32 %i.j, %3                         ; 2 uses
  %i.l = add nsw i32 %i.k, 54
  store i32 %i.l, ptr %i.c, align 4, !tbaa !77
  store i32 2097153, ptr %i.d, align 4, !tbaa !77
  store i32 0, ptr %i.e, align 4, !tbaa !57
  store i32 %i.k, ptr %i.f, align 4, !tbaa !77
  %i.m = tail call i64 @fwrite(ptr noundef nonnull @.str.30, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %i.h)
  %.not33 = icmp eq i64 %i.m, 0
  br i1 %.not33, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = call i64 @fwrite(ptr noundef nonnull %i.c, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %i.h)
  %.not34 = icmp eq i64 %i.n, 0
  br i1 %.not34, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = tail call i64 @fwrite(ptr noundef nonnull @.str.31, i64 noundef 12, i64 noundef 1, ptr noundef nonnull %i.h)
  %.not35 = icmp eq i64 %i.o, 0
  br i1 %.not35, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %i.h)
  %.not36 = icmp eq i64 %i.p, 0
  br i1 %.not36, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = call i64 @fwrite(ptr noundef nonnull %i.b, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %i.h)
  %.not37 = icmp eq i64 %i.q, 0
  br i1 %.not37, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = call i64 @fwrite(ptr noundef nonnull %i.d, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %i.h)
  %.not38 = icmp eq i64 %i.r, 0
  br i1 %.not38, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = call i64 @fwrite(ptr noundef nonnull %i.e, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %i.h)
  %.not39 = icmp eq i64 %i.s, 0
  br i1 %.not39, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = call i64 @fwrite(ptr noundef nonnull %i.f, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %i.h)
  %.not40 = icmp eq i64 %i.t, 0
  br i1 %.not40, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.u = tail call i64 @fwrite(ptr noundef nonnull @.str.32, i64 noundef 16, i64 noundef 1, ptr noundef nonnull %i.h)
  %.not41 = icmp eq i64 %i.u, 0
  br i1 %.not41, label %bb.n, label %.preheader

.preheader:                                       ; preds = %bb.m
  %i.v = zext nneg i32 %i.j to i64
  br label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.w = tail call i32 @fclose(ptr noundef nonnull %i.h) ; 0 uses
  %i.x = tail call i32 @cli_unlink(ptr noundef nonnull %i.g) #13 ; 0 uses
  tail call void @free(ptr noundef nonnull %i.g) #13
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.33) #13
  br label %bb.t

bb.o:                                             ; preds = %.preheader, %bb.p
  %.0.in = phi i32 [ %.0, %bb.p ], [ %3, %.preheader ]
  %.0 = add i32 %.0.in, -1                        ; 3 uses
  %i.y = icmp ult i32 %.0, %3
  br i1 %i.y, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.z = mul i32 %.0, %2
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.aa
  %i.ac = tail call i64 @fwrite(ptr noundef nonnull %i.ab, i64 noundef %i.v, i64 noundef 1, ptr noundef nonnull %i.h)
  %.not42 = icmp eq i64 %i.ac, 0
  br i1 %.not42, label %bb.q, label %bb.o

bb.q:                                             ; preds = %bb.p
  %i.ad = tail call i32 @fclose(ptr noundef nonnull %i.h) ; 0 uses
  %i.ae = tail call i32 @cli_unlink(ptr noundef nonnull %i.g) #13 ; 0 uses
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.af = tail call i32 @fclose(ptr noundef nonnull %i.h) ; 0 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.34, ptr noundef %0, ptr noundef nonnull %i.g) #13
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  tail call void @free(ptr noundef nonnull %i.g) #13
  br label %bb.t

bb.t:                                             ; preds = %bb.b, %bb.a, %bb.s, %bb.n, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

declare void @cli_errmsg(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @getmetrics(i32 noundef range(i32 16, 257) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [6 x i32], align 16               ; 9 uses
  %i.b = alloca [6 x i32], align 16               ; 15 uses
  %i.c = alloca [6 x i32], align 16               ; 15 uses
  %i.d = alloca [6 x i32], align 16               ; 9 uses
  %i.e = alloca [6 x i32], align 16               ; 11 uses
  %i.f = alloca [6 x i32], align 16               ; 11 uses
  %i.g = alloca [125 x i8], align 16              ; 62 uses
  %i.h = lshr i32 %0, 2                           ; 58 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %i.i = zext nneg i32 %0 to i64                  ; 21 uses
  %i.j = shl nuw nsw i64 %i.i, 3
  %i.k = mul nuw nsw i64 %i.j, %i.i               ; 2 uses
  %i.l = tail call ptr @cli_max_malloc(i64 noundef %i.k) #13 ; 18 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = mul nuw nsw i32 %0, %0
  %i.n = shl nuw nsw i32 %i.m, 3
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.35, i32 noundef %i.n) #13
  br label %bb.cv

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %2, i8 0, i64 248, i1 false)
  %i.o = sub nsw i32 %0, %i.h                     ; 4 uses
  %i.p = add nsw i32 %i.h, -1                     ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 236 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 224 ; 11 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 228 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 232 ; 4 uses
  %i.u = zext nneg i32 %i.p to i64
  %wide.trip.count = zext nneg i32 %i.h to i64    ; 10 uses
  %wide.trip.count1498 = zext nneg i32 %i.h to i64
  %wide.trip.count1508 = zext nneg i32 %i.h to i64 ; 2 uses
  br label %.preheader1157

.preheader1157:                                   ; preds = %bb.c, %bb.t
  %.08851183 = phi i32 [ 0, %bb.c ], [ %i.ie, %bb.t ] ; 8 uses
  %i.v = icmp eq i32 %.08851183, 0
  %i.w = mul i32 %.08851183, %0                   ; 2 uses
  %i.x = add i32 %.08851183, %0
  %i.y = mul i32 %i.x, %0                         ; 2 uses
  %i.z = add i32 %i.w, -1
  %i.aa = add i32 %i.y, -1
  %i.ab = add i32 %.08851183, -1                  ; 2 uses
  %i.ac = mul i32 %i.ab, %0                       ; 2 uses
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ad
  %i.af = add i32 %i.ab, %0
  %i.ag = mul i32 %i.af, %0
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ah
  %i.aj = add i32 %i.p, %.08851183
  %i.ak = mul i32 %i.aj, %0
  br label %bb.d

.preheader1151:                                   ; preds = %bb.t
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 116 ; 5 uses
  %i.an = xor i32 %i.h, -1
  %i.ao = add nsw i32 %0, %i.an                   ; 3 uses
  %.not1441 = icmp eq i32 %i.ao, 0
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 140 ; 4 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %i.o, i32 1) ; 3 uses
  %wide.trip.count1533 = zext i32 %i.ao to i64
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 108
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 132
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 144
  br label %.preheader1150.lr.ph

bb.d:                                             ; preds = %.preheader1157, %.loopexit1154
  %.08761181 = phi i32 [ 0, %.preheader1157 ], [ %i.id, %.loopexit1154 ] ; 8 uses
  %i.bh = or i32 %.08761181, %.08851183
  %or.cond = icmp eq i32 %i.bh, 0
  br i1 %or.cond, label %.preheader1152.us, label %bb.i

.preheader1152.us:                                ; preds = %bb.d, %._crit_edge.us
  %indvars.iv1505 = phi i64 [ %indvars.iv.next1506, %._crit_edge.us ], [ 0, %bb.d ] ; 2 uses
  %.08951177.us = phi i32 [ %i.by, %._crit_edge.us ], [ 0, %bb.d ]
  %.09001176.us = phi i32 [ %i.bx, %._crit_edge.us ], [ 0, %bb.d ]
  %i.bi = mul nuw nsw i64 %indvars.iv1505, %i.i
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bi
  br label %bb.e

bb.e:                                             ; preds = %.preheader1152.us, %bb.h
  %indvars.iv1500 = phi i64 [ 0, %.preheader1152.us ], [ %indvars.iv.next1501, %bb.h ] ; 2 uses
  %.18961171.us = phi i32 [ %.08951177.us, %.preheader1152.us ], [ %i.by, %bb.h ]
  %.19011170.us = phi i32 [ %.09001176.us, %.preheader1152.us ], [ %i.bx, %bb.h ]
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv1500
  %i.bj = load i32, ptr %gep, align 4, !tbaa !57  ; 3 uses
  %i.bk = and i32 %i.bj, 255                      ; 4 uses
  %i.bl = lshr i32 %i.bj, 16
  %i.bm = lshr i32 %i.bj, 8
  %i.bn = and i32 %i.bl, 255                      ; 4 uses
  %i.bo = and i32 %i.bm, 255                      ; 4 uses
  %..i.us = tail call i32 @llvm.umin.i32(i32 %i.bo, i32 %i.bk)
  %spec.select.i.us = tail call i32 @llvm.umin.i32(i32 %i.bn, i32 %..i.us) ; 2 uses
  %.44.i.us = tail call i32 @llvm.umax.i32(i32 %i.bo, i32 %i.bk)
  %i.bp = tail call i32 @llvm.umax.i32(i32 %i.bn, i32 %.44.i.us) ; 6 uses
  %i.bq = sub nsw i32 %i.bp, %spec.select.i.us    ; 4 uses
  %.not.i.us = icmp eq i32 %i.bp, %spec.select.i.us
  br i1 %.not.i.us, label %hsv.exit.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.br = mul nsw i32 %i.bq, 255
  %i.bs = udiv i32 %i.br, %i.bp
  br label %hsv.exit.us

hsv.exit.us:                                      ; preds = %bb.f, %bb.e
  %storemerge.i.us = phi i32 [ %i.bs, %bb.f ], [ 0, %bb.e ] ; 3 uses
  %i.bt = mul i32 %storemerge.i.us, %i.bp
  %i.bu = mul i32 %i.bt, %storemerge.i.us
  %i.bv = uitofp i32 %i.bu to double
  %sqrt.us = tail call double @llvm.sqrt.f64(double %i.bv)
  %i.bw = fptoui double %sqrt.us to i32
  %i.bx = add i32 %.19011170.us, %i.bw            ; 3 uses
  %i.by = add i32 %i.bp, %.18961171.us            ; 3 uses
  %i.bz = icmp ugt i32 %storemerge.i.us, 85
  %i.ca = icmp samesign ugt i32 %i.bp, 85
  %or.cond3.us = and i1 %i.ca, %i.bz
  br i1 %or.cond3.us, label %bb.g, label %bb.h

bb.g:                                             ; preds = %hsv.exit.us
  %i.cb = sub nsw i32 %i.bo, %i.bk
  %i.cc = sub nsw i32 %i.bn, %i.bk
  %i.cd = sub nsw i32 %i.bn, %i.bo
  %i.ce = tail call i32 @llvm.abs.i32(i32 %i.cd, i1 true)
  %i.cf = tail call i32 @llvm.abs.i32(i32 %i.cc, i1 true)
  %i.cg = tail call i32 @llvm.abs.i32(i32 %i.cb, i1 true)
  %i.ch = mul nuw nsw i32 %i.ce, 100
  %i.ci = mul nuw nsw i32 %i.cf, 100
  %i.cj = mul nuw nsw i32 %i.cg, 100
  %i.ck = udiv i32 %i.ch, %i.bq
  %i.cl = udiv i32 %i.ci, %i.bq
  %i.cm = udiv i32 %i.cj, %i.bq
  %i.cn = load <4 x i32>, ptr %i.r, align 8, !tbaa !57
  %i.co = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, i32 %i.cm, i64 0
  %i.cp = insertelement <4 x i32> %i.co, i32 %i.cl, i64 1
  %i.cq = insertelement <4 x i32> %i.cp, i32 %i.ck, i64 2
  %i.cr = sub <4 x i32> %i.cn, %i.cq
  %i.cs = add <4 x i32> %i.cr, <i32 100, i32 100, i32 100, i32 1>
  store <4 x i32> %i.cs, ptr %i.r, align 8, !tbaa !57
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %hsv.exit.us
  %indvars.iv.next1501 = add nuw nsw i64 %indvars.iv1500, 1 ; 2 uses
  %exitcond1504.not = icmp eq i64 %indvars.iv.next1501, %wide.trip.count1508
  br i1 %exitcond1504.not, label %._crit_edge.us, label %bb.e

._crit_edge.us:                                   ; preds = %bb.h
  %indvars.iv.next1506 = add nuw nsw i64 %indvars.iv1505, 1 ; 2 uses
  %exitcond1509.not = icmp eq i64 %indvars.iv.next1506, %wide.trip.count1508
  br i1 %exitcond1509.not, label %.loopexit1154, label %.preheader1152.us

bb.i:                                             ; preds = %bb.d
  %.not975 = icmp eq i32 %.08761181, 0
  br i1 %.not975, label %.lr.ph1166.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.ct = add i32 %i.aa, %.08761181
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !57
  %i.cx = add i32 %i.z, %.08761181
  %i.cy = zext i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !57
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.o ] ; 3 uses
  %.28971161 = phi i32 [ %i.cw, %.lr.ph.preheader ], [ %i.er, %bb.o ]
  %.29021160 = phi i32 [ %i.da, %.lr.ph.preheader ], [ %i.eq, %bb.o ]
  %i.db = trunc nuw nsw i64 %indvars.iv to i32
  %i.dc = add i32 %.08851183, %i.db
  %i.dd = mul i32 %i.dc, %0
  %i.de = add i32 %i.dd, %.08761181               ; 2 uses
  %i.df = add i32 %i.de, -1
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !57 ; 3 uses
  %i.dj = lshr i32 %i.di, 16
  %i.dk = and i32 %i.dj, 255                      ; 2 uses
  %i.dl = lshr i32 %i.di, 8
  %i.dm = and i32 %i.dl, 255                      ; 2 uses
end_hunk_1
begin_hunk_2_@getmetrics:bb.a

.preheader1137.preheader:                         ; preds = %scalar.ph29, %middle.block35
  %invariant.gep1882 = getelementptr [4 x i8], ptr %1, i64 %i.i ; 5 uses
  %xtraiter = and i64 %i.i, 3                     ; 3 uses
  %unroll_iter = and i64 %i.i, 508
  br label %.preheader1137

.preheader1137:                                   ; preds = %.preheader1137, %.preheader1137.preheader
  %indvars.iv1579 = phi i64 [ 0, %.preheader1137.preheader ], [ %indvars.iv.next1580.3, %.preheader1137 ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader1137.preheader ], [ %niter.next.3, %.preheader1137 ]
  %i.ur = mul nuw nsw i64 %indvars.iv1579, %i.i   ; 2 uses
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ur
  store i32 -16777216, ptr %i.us, align 4, !tbaa !57
  %gep1883 = getelementptr [4 x i8], ptr %invariant.gep1882, i64 %i.ur
  %i.ut = getelementptr i8, ptr %gep1883, i64 -4
  store i32 -16777216, ptr %i.ut, align 4, !tbaa !57
  %indvars.iv.next1580 = or disjoint i64 %indvars.iv1579, 1
  %i.uu = mul nuw nsw i64 %indvars.iv.next1580, %i.i ; 2 uses
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.uu
  store i32 -16777216, ptr %i.uv, align 4, !tbaa !57
  %gep1883.1 = getelementptr [4 x i8], ptr %invariant.gep1882, i64 %i.uu
  %i.uw = getelementptr i8, ptr %gep1883.1, i64 -4
  store i32 -16777216, ptr %i.uw, align 4, !tbaa !57
  %indvars.iv.next1580.1 = or disjoint i64 %indvars.iv1579, 2
  %i.ux = mul nuw nsw i64 %indvars.iv.next1580.1, %i.i ; 2 uses
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ux
  store i32 -16777216, ptr %i.uy, align 4, !tbaa !57
  %gep1883.2 = getelementptr [4 x i8], ptr %invariant.gep1882, i64 %i.ux
  %i.uz = getelementptr i8, ptr %gep1883.2, i64 -4
  store i32 -16777216, ptr %i.uz, align 4, !tbaa !57
  %indvars.iv.next1580.2 = or disjoint i64 %indvars.iv1579, 3
  %i.va = mul nuw nsw i64 %indvars.iv.next1580.2, %i.i ; 2 uses
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.va
  store i32 -16777216, ptr %i.vb, align 4, !tbaa !57
  %gep1883.3 = getelementptr [4 x i8], ptr %invariant.gep1882, i64 %i.va
  %i.vc = getelementptr i8, ptr %gep1883.3, i64 -4
  store i32 -16777216, ptr %i.vc, align 4, !tbaa !57
  %indvars.iv.next1580.3 = add nuw nsw i64 %indvars.iv1579, 4 ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader1136.preheader.unr-lcssa, label %.preheader1137

.preheader1136.preheader.unr-lcssa:               ; preds = %.preheader1137
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader1136.preheader, label %.preheader1137.epil.preheader

.preheader1137.epil.preheader:                    ; preds = %.preheader1136.preheader.unr-lcssa
  %lcmp.mod108 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod108)
  br label %.preheader1137.epil

.preheader1137.epil:                              ; preds = %.preheader1137.epil, %.preheader1137.epil.preheader
  %indvars.iv1579.epil = phi i64 [ %indvars.iv.next1580.3, %.preheader1137.epil.preheader ], [ %indvars.iv.next1580.epil, %.preheader1137.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader1137.epil.preheader ], [ %epil.iter.next, %.preheader1137.epil ]
  %i.vd = mul nuw nsw i64 %indvars.iv1579.epil, %i.i ; 2 uses
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.vd
  store i32 -16777216, ptr %i.ve, align 4, !tbaa !57
  %gep1883.epil = getelementptr [4 x i8], ptr %invariant.gep1882, i64 %i.vd
  %i.vf = getelementptr i8, ptr %gep1883.epil, i64 -4
  store i32 -16777216, ptr %i.vf, align 4, !tbaa !57
  %indvars.iv.next1580.epil = add nuw nsw i64 %indvars.iv1579.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader1136.preheader, label %.preheader1137.epil, !llvm.loop !138

.preheader1136.preheader:                         ; preds = %.preheader1137.epil, %.preheader1136.preheader.unr-lcssa
  tail call fastcc void @makebmp(ptr noundef nonnull @.str.37, ptr noundef %3, i32 noundef %0, i32 noundef %0, ptr noundef %1)
  %i.vg = zext nneg i32 %0 to i64
  %wide.trip.count1596 = zext nneg i32 %i.om to i64 ; 2 uses
  %i.vh = shl nuw nsw i64 %i.i, 2
  %i.vi = shl nuw nsw i64 %i.i, 2
  %i.vj = getelementptr i8, ptr %1, i64 %i.vh
  br label %.preheader1136

.preheader1136:                                   ; preds = %.preheader1136.preheader, %._crit_edge1256
  %indvar = phi i64 [ 0, %.preheader1136.preheader ], [ %indvar.next, %._crit_edge1256 ] ; 2 uses
  %indvars.iv1593 = phi i64 [ 1, %.preheader1136.preheader ], [ %indvars.iv.next1594, %._crit_edge1256 ] ; 2 uses
  %i.vk = mul i64 %i.vi, %indvar
  %scevgep = getelementptr i8, ptr %i.vj, i64 %i.vk
  %i.vl = mul nuw nsw i64 %indvars.iv1593, %i.vg
  %load_initial = load i32, ptr %scevgep, align 4
  %i.vm = and i32 %load_initial, 255
  br label %.preheader1135

.preheader1133.preheader:                         ; preds = %._crit_edge1256
  %i.vn = zext nneg i32 %0 to i64                 ; 3 uses
  %wide.trip.count1610 = zext nneg i32 %i.om to i64 ; 2 uses
  %n.vec39 = and i64 %i.oo, -4                    ; 3 uses
  %i.vo = or disjoint i64 %n.vec39, 1
  %cmp.n47 = icmp eq i64 %i.oo, %n.vec39
  br label %.preheader1133

.preheader1135:                                   ; preds = %.preheader1136, %.preheader1135
  %store_forwarded = phi i32 [ %i.vm, %.preheader1136 ], [ %i.vs, %.preheader1135 ]
  %indvars.iv1588 = phi i64 [ 1, %.preheader1136 ], [ %indvars.iv.next1589, %.preheader1135 ] ; 2 uses
  %i.vp = add nuw nsw i64 %indvars.iv1588, %i.vl  ; 2 uses
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.vp ; 2 uses
  %i.vr = load i32, ptr %i.vq, align 4, !tbaa !57
  %i.vs = and i32 %i.vr, 255                      ; 3 uses
  %i.vt = shl nuw nsw i32 %i.vs, 1
  %i.vu = add nuw nsw i32 %i.vt, %store_forwarded
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.vp
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 4
  %i.vx = load i32, ptr %i.vw, align 4, !tbaa !57
  %i.vy = and i32 %i.vx, 255
  %i.vz = add nuw nsw i32 %i.vy, %i.vu
  %i.wa = shl nuw nsw i32 %i.vz, 6
  %i.wb = and i32 %i.wa, 130816
  %i.wc = or disjoint i32 %i.vs, %i.wb
  store i32 %i.wc, ptr %i.vq, align 4, !tbaa !57
  %indvars.iv.next1589 = add nuw nsw i64 %indvars.iv1588, 1 ; 2 uses
  %exitcond1592.not = icmp eq i64 %indvars.iv.next1589, %wide.trip.count1596
  br i1 %exitcond1592.not, label %._crit_edge1256, label %.preheader1135

._crit_edge1256:                                  ; preds = %.preheader1135
  %indvars.iv.next1594 = add nuw nsw i64 %indvars.iv1593, 1 ; 2 uses
  %exitcond1597.not = icmp eq i64 %indvars.iv.next1594, %wide.trip.count1596
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1597.not, label %.preheader1133.preheader, label %.preheader1136

.preheader1133:                                   ; preds = %.preheader1133.preheader, %._crit_edge1263
  %indvars.iv1607 = phi i64 [ 1, %.preheader1133.preheader ], [ %i.wi, %._crit_edge1263 ] ; 3 uses
  %i.wd = mul nuw nsw i64 %indvars.iv1607, %i.vn
  %i.we = add nsw i64 %indvars.iv1607, -1
  %i.wf = mul nuw nsw i64 %i.we, %i.vn
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.wf ; 2 uses
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.wd ; 2 uses
  %i.wi = add nuw nsw i64 %indvars.iv1607, 1      ; 3 uses
  %i.wj = mul nuw nsw i64 %i.wi, %i.vn
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.wj ; 2 uses
  br label %vector.body40

vector.body40:                                    ; preds = %vector.body40, %.preheader1133
  %index41 = phi i64 [ 0, %.preheader1133 ], [ %index.next45, %vector.body40 ] ; 2 uses
  %i.wl = or disjoint i64 %index41, 1             ; 3 uses
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %i.wg, i64 %i.wl
  %wide.load42 = load <4 x i32>, ptr %i.wm, align 4, !tbaa !57
  %i.wn = lshr <4 x i32> %wide.load42, splat (i32 8)
  %i.wo = and <4 x i32> %i.wn, splat (i32 255)
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.wh, i64 %i.wl ; 2 uses
  %wide.load43 = load <4 x i32>, ptr %i.wp, align 4, !tbaa !57
  %i.wq = lshr <4 x i32> %wide.load43, splat (i32 7)
  %i.wr = and <4 x i32> %i.wq, splat (i32 510)
  %i.ws = add nuw nsw <4 x i32> %i.wr, %i.wo
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %i.wk, i64 %i.wl
  %wide.load44 = load <4 x i32>, ptr %i.wt, align 4, !tbaa !57
  %i.wu = lshr <4 x i32> %wide.load44, splat (i32 8)
  %i.wv = and <4 x i32> %i.wu, splat (i32 255)
  %i.ww = add nuw nsw <4 x i32> %i.wv, %i.ws
  %i.wx = lshr <4 x i32> %i.ww, splat (i32 2)     ; 3 uses
  %i.wy = shl nuw nsw <4 x i32> %i.wx, splat (i32 8)
  %i.wz = shl nuw nsw <4 x i32> %i.wx, splat (i32 16)
  %i.xa = or <4 x i32> %i.wz, %i.wy
  %i.xb = or <4 x i32> %i.xa, %i.wx
  %i.xc = or <4 x i32> %i.xb, splat (i32 -16777216)
  store <4 x i32> %i.xc, ptr %i.wp, align 4, !tbaa !57
  %index.next45 = add nuw i64 %index41, 4         ; 2 uses
  %i.xd = icmp eq i64 %index.next45, %n.vec39
  br i1 %i.xd, label %middle.block46, label %vector.body40, !llvm.loop !140

middle.block46:                                   ; preds = %vector.body40
  br i1 %cmp.n47, label %._crit_edge1263, label %.preheader1132

.preheader1132:                                   ; preds = %middle.block46, %.preheader1132
  %indvars.iv1602 = phi i64 [ %indvars.iv.next1603, %.preheader1132 ], [ %i.vo, %middle.block46 ] ; 4 uses
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %i.wg, i64 %indvars.iv1602
  %i.xf = load i32, ptr %i.xe, align 4, !tbaa !57
  %i.xg = lshr i32 %i.xf, 8
  %i.xh = and i32 %i.xg, 255
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr %i.wh, i64 %indvars.iv1602 ; 2 uses
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !57
  %i.xk = lshr i32 %i.xj, 7
  %i.xl = and i32 %i.xk, 510
  %i.xm = add nuw nsw i32 %i.xl, %i.xh
  %i.xn = getelementptr inbounds nuw [4 x i8], ptr %i.wk, i64 %indvars.iv1602
  %i.xo = load i32, ptr %i.xn, align 4, !tbaa !57
  %i.xp = lshr i32 %i.xo, 8
  %i.xq = and i32 %i.xp, 255
  %i.xr = add nuw nsw i32 %i.xq, %i.xm
  %i.xs = lshr i32 %i.xr, 2                       ; 3 uses
  %i.xt = shl nuw nsw i32 %i.xs, 8
  %i.xu = shl nuw nsw i32 %i.xs, 16
  %i.xv = or i32 %i.xu, %i.xt
  %i.xw = or i32 %i.xv, %i.xs
  %i.xx = or i32 %i.xw, -16777216
  store i32 %i.xx, ptr %i.xi, align 4, !tbaa !57
  %indvars.iv.next1603 = add nuw nsw i64 %indvars.iv1602, 1 ; 2 uses
  %exitcond1606.not = icmp eq i64 %indvars.iv.next1603, %wide.trip.count1610
  br i1 %exitcond1606.not, label %._crit_edge1263, label %.preheader1132, !llvm.loop !141

._crit_edge1263:                                  ; preds = %.preheader1132, %middle.block46
  %exitcond1611.not = icmp eq i64 %i.wi, %wide.trip.count1610
  br i1 %exitcond1611.not, label %._crit_edge1267.split, label %.preheader1133

._crit_edge1267.split:                            ; preds = %._crit_edge1263
  tail call fastcc void @makebmp(ptr noundef nonnull @.str.38, ptr noundef %3, i32 noundef %0, i32 noundef %0, ptr noundef %1)
  %i.xy = sub nsw i32 %i.om, %i.h
  %wide.trip.count1620 = zext nneg i32 %i.h to i64
  %wide.trip.count1630 = zext nneg i32 %i.h to i64 ; 2 uses
  %i.xz = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %4 = add nsw i32 %i.h, -1
  %xtraiter109 = and i64 %wide.trip.count, 1
  %i.ya = icmp eq i64 %i.xz, 0
  %unroll_iter114 = and i64 %wide.trip.count, 126
  %lcmp.mod111.not = icmp eq i64 %xtraiter109, 0
  %lcmp.mod113 = trunc i32 %i.h to i1
  %min.iters.check61 = icmp samesign ult i32 %0, 48
  %i.yb = trunc nsw i64 %i.xz to i32              ; 2 uses
  %i.yc = icmp ugt i64 %i.xz, 4294967295
  %n.vec63 = and i64 %wide.trip.count, 120        ; 9 uses
  %i.yd = icmp eq i64 %n.vec63, 8
  %i.ye = icmp eq i64 %n.vec63, 16
  %i.yf = icmp eq i64 %n.vec63, 24
  %i.yg = icmp eq i64 %n.vec63, 32
  %i.yh = icmp eq i64 %n.vec63, 40
  %i.yi = icmp eq i64 %n.vec63, 48
  %i.yj = icmp eq i64 %n.vec63, 56
  %cmp.n75 = icmp eq i64 %n.vec63, %wide.trip.count
  %xtraiter116 = and i64 %wide.trip.count, 1
  %lcmp.mod117.not = icmp eq i64 %xtraiter116, 0
  %i.yk = add nsw i64 %wide.trip.count, -1
  %min.iters.check = icmp samesign ult i32 %0, 32
  %n.vec50 = and i64 %wide.trip.count, 120        ; 9 uses
  %i.yl = icmp eq i64 %n.vec50, 8
  %i.ym = icmp eq i64 %n.vec50, 16
  %i.yn = icmp eq i64 %n.vec50, 24
  %i.yo = icmp eq i64 %n.vec50, 32
  %i.yp = icmp eq i64 %n.vec50, 40
  %i.yq = icmp eq i64 %n.vec50, 48
  %i.yr = icmp eq i64 %n.vec50, 56
  %cmp.n59 = icmp eq i64 %n.vec50, %wide.trip.count
  br label %.preheader1131.split.us.preheader

.preheader1131.split.us.preheader:                ; preds = %.split.us, %._crit_edge1267.split
  %.88931289 = phi i32 [ 0, %._crit_edge1267.split ], [ %i.akp, %.split.us ] ; 10 uses
  %5 = add i32 %.88931289, -1
  %6 = mul i32 %0, %5
  %7 = add i32 %4, %.88931289
  %8 = mul i32 %0, %7
  %i.ys = mul i32 %.88931289, %0                  ; 2 uses
  %i.yt = add i32 %i.ys, -1
  %i.yu = add i32 %.88931289, -1
  %i.yv = mul i32 %i.yu, %0                       ; 12 uses
  %i.yw = zext i32 %i.yv to i64
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.yw
  %i.yy = add i32 %i.p, %.88931289
  %i.yz = mul i32 %i.yy, %0                       ; 11 uses
  %i.za = xor i32 %6, -1
  %i.zb = icmp ult i32 %i.za, %i.yb
  %i.zc = xor i32 %8, -1
  %i.zd = icmp ult i32 %i.zc, %i.yb
  %i.ze = or i1 %i.zd, %i.yc
  %i.zf = or i1 %i.zb, %i.ze
  %i.zg = zext i32 %i.yv to i64
  %i.zh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.zg ; 2 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 16
  %i.zj = zext i32 %i.yz to i64
  %i.zk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.zj ; 2 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 16
  %i.zm = add i32 %i.yv, 8
  %i.zn = zext i32 %i.zm to i64
  %i.zo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.zn ; 2 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 16
  %i.zq = add i32 %i.yz, 8
  %i.zr = zext i32 %i.zq to i64
  %i.zs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.zr ; 2 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 16
  %i.zu = add i32 %i.yv, 16
  %i.zv = zext i32 %i.zu to i64
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.zv ; 2 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 16
  %i.zy = add i32 %i.yz, 16
  %i.zz = zext i32 %i.zy to i64
  %i.aaa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.zz ; 2 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 16
  %i.aac = add i32 %i.yv, 24
  %i.aad = zext i32 %i.aac to i64
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aad ; 2 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 16
  %i.aag = add i32 %i.yz, 24
  %i.aah = zext i32 %i.aag to i64
  %i.aai = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aah ; 2 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aai, i64 16
  %i.aak = add i32 %i.yv, 32
  %i.aal = zext i32 %i.aak to i64
  %i.aam = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aal ; 2 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 16
  %i.aao = add i32 %i.yz, 32
  %i.aap = zext i32 %i.aao to i64
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aap ; 2 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 16
  %i.aas = add i32 %i.yv, 40
  %i.aat = zext i32 %i.aas to i64
  %i.aau = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aat ; 2 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aau, i64 16
  %i.aaw = add i32 %i.yz, 40
  %i.aax = zext i32 %i.aaw to i64
  %i.aay = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aax ; 2 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aay, i64 16
  %i.aba = add i32 %i.yv, 48
  %i.abb = zext i32 %i.aba to i64
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.abb ; 2 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abc, i64 16
  %i.abe = add i32 %i.yz, 48
  %i.abf = zext i32 %i.abe to i64
  %i.abg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.abf ; 2 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 16
  %i.abi = add i32 %i.yv, 56
  %i.abj = zext i32 %i.abi to i64
  %i.abk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.abj ; 2 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abk, i64 16
  %i.abm = add i32 %i.yz, 56
  %i.abn = zext i32 %i.abm to i64
  %i.abo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.abn ; 2 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abo, i64 16
  br label %.preheader1131.split.us

.preheader1131.split.us:                          ; preds = %.preheader1131.split.us.preheader, %.loopexit1128.us
  %.81287.us = phi i32 [ %i.ahy, %.loopexit1128.us ], [ 0, %.preheader1131.split.us.preheader ] ; 8 uses
  %i.abq = or i32 %.81287.us, %.88931289
  %or.cond11.us = icmp eq i32 %i.abq, 0
  br i1 %or.cond11.us, label %.preheader1126.us.us, label %bb.bl

bb.bl:                                            ; preds = %.preheader1131.split.us
  %.not971.us = icmp eq i32 %.81287.us, 0
  br i1 %.not971.us, label %.lr.ph1276.us.preheader, label %.lr.ph1271.us

.lr.ph1271.us:                                    ; preds = %bb.bl
  %i.abr = add i32 %i.yt, %.81287.us
  %i.abs = zext i32 %i.abr to i64
  %i.abt = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.abs
  %i.abu = load i32, ptr %i.abt, align 4, !tbaa !57 ; 2 uses
  br i1 %i.ya, label %.epil.preheader, label %.lr.ph1271.us.new

.lr.ph1271.us.new:                                ; preds = %.lr.ph1271.us, %.lr.ph1271.us.new
  %indvars.iv1612 = phi i64 [ %indvars.iv.next1613.1, %.lr.ph1271.us.new ], [ 0, %.lr.ph1271.us ] ; 3 uses
  %.28691269.us = phi i32 [ %i.adb, %.lr.ph1271.us.new ], [ %i.abu, %.lr.ph1271.us ]
  %niter115 = phi i64 [ %niter115.next.1, %.lr.ph1271.us.new ], [ 0, %.lr.ph1271.us ]
  %i.abv = trunc nuw nsw i64 %indvars.iv1612 to i32
  %i.abw = add i32 %.88931289, %i.abv
  %i.abx = mul i32 %i.abw, %0
  %i.aby = add i32 %i.abx, %.81287.us             ; 2 uses
  %i.abz = add i32 %i.aby, -1
  %i.aca = zext i32 %i.abz to i64
  %i.acb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aca
  %i.acc = load i32, ptr %i.acb, align 4, !tbaa !57
  %i.acd = and i32 %i.acc, 255
  %i.ace = add i32 %i.p, %i.aby
  %i.acf = zext i32 %i.ace to i64
  %i.acg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.acf
  %i.ach = load i32, ptr %i.acg, align 4, !tbaa !57
  %i.aci = and i32 %i.ach, 255
  %i.acj = trunc i64 %indvars.iv1612 to i32
  %i.ack = or disjoint i32 %i.acj, 1
  %i.acl = add i32 %.88931289, %i.ack
  %i.acm = mul i32 %i.acl, %0
  %i.acn = add i32 %i.acm, %.81287.us             ; 2 uses
  %i.aco = add i32 %i.acn, -1
  %i.acp = zext i32 %i.aco to i64
  %i.acq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.acp
  %i.acr = load i32, ptr %i.acq, align 4, !tbaa !57
  %i.acs = and i32 %i.acr, 255
  %i.act = add i32 %.28691269.us, %i.aci
  %i.acu = add nuw nsw i32 %i.acd, %i.acs
  %i.acv = sub i32 %i.act, %i.acu
  %i.acw = add i32 %i.p, %i.acn
  %i.acx = zext i32 %i.acw to i64
  %i.acy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.acx
  %i.acz = load i32, ptr %i.acy, align 4, !tbaa !57
  %i.ada = and i32 %i.acz, 255
  %i.adb = add i32 %i.acv, %i.ada                 ; 3 uses
  %indvars.iv.next1613.1 = add nuw nsw i64 %indvars.iv1612, 2 ; 2 uses
  %niter115.next.1 = add nuw nsw i64 %niter115, 2 ; 2 uses
  %niter115.ncmp.1 = icmp eq i64 %niter115.next.1, %unroll_iter114
  br i1 %niter115.ncmp.1, label %.loopexit1128.us.loopexit86.unr-lcssa, label %.lr.ph1271.us.new

.lr.ph1276.us.preheader:                          ; preds = %bb.bl
  %i.adc = load i32, ptr %i.yx, align 4, !tbaa !57 ; 2 uses
  %brmerge133 = select i1 %min.iters.check61, i1 true, i1 %i.zf
  br i1 %brmerge133, label %.lr.ph1276.us.preheader84, label %vector.body64

vector.body64:                                    ; preds = %.lr.ph1276.us.preheader
  %i.add = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.adc, i64 0
  %wide.load68 = load <4 x i32>, ptr %i.zh, align 4, !tbaa !57
  %wide.load69 = load <4 x i32>, ptr %i.zi, align 4, !tbaa !57
  %i.ade = and <4 x i32> %wide.load68, splat (i32 255)
  %i.adf = and <4 x i32> %wide.load69, splat (i32 255)
  %i.adg = sub <4 x i32> %i.add, %i.ade
  %wide.load70 = load <4 x i32>, ptr %i.zk, align 4, !tbaa !57
  %wide.load71 = load <4 x i32>, ptr %i.zl, align 4, !tbaa !57
  %i.adh = and <4 x i32> %wide.load70, splat (i32 255)
  %i.adi = and <4 x i32> %wide.load71, splat (i32 255)
  %i.adj = add <4 x i32> %i.adg, %i.adh           ; 2 uses
  %i.adk = sub nsw <4 x i32> %i.adi, %i.adf       ; 2 uses
  br i1 %i.yd, label %middle.block73, label %vector.body64.1

vector.body64.1:                                  ; preds = %vector.body64
  %wide.load68.1 = load <4 x i32>, ptr %i.zo, align 4, !tbaa !57
  %wide.load69.1 = load <4 x i32>, ptr %i.zp, align 4, !tbaa !57
  %i.adl = and <4 x i32> %wide.load68.1, splat (i32 255)
  %i.adm = and <4 x i32> %wide.load69.1, splat (i32 255)
  %i.adn = sub <4 x i32> %i.adj, %i.adl
  %i.ado = sub nsw <4 x i32> %i.adk, %i.adm
  %wide.load70.1 = load <4 x i32>, ptr %i.zs, align 4, !tbaa !57
  %wide.load71.1 = load <4 x i32>, ptr %i.zt, align 4, !tbaa !57
  %i.adp = and <4 x i32> %wide.load70.1, splat (i32 255)
  %i.adq = and <4 x i32> %wide.load71.1, splat (i32 255)
  %i.adr = add <4 x i32> %i.adn, %i.adp           ; 2 uses
  %i.ads = add nsw <4 x i32> %i.ado, %i.adq       ; 2 uses
  br i1 %i.ye, label %middle.block73, label %vector.body64.2

vector.body64.2:                                  ; preds = %vector.body64.1
  %wide.load68.2 = load <4 x i32>, ptr %i.zw, align 4, !tbaa !57
  %wide.load69.2 = load <4 x i32>, ptr %i.zx, align 4, !tbaa !57
  %i.adt = and <4 x i32> %wide.load68.2, splat (i32 255)
  %i.adu = and <4 x i32> %wide.load69.2, splat (i32 255)
  %i.adv = sub <4 x i32> %i.adr, %i.adt
  %i.adw = sub nsw <4 x i32> %i.ads, %i.adu
  %wide.load70.2 = load <4 x i32>, ptr %i.aaa, align 4, !tbaa !57
  %wide.load71.2 = load <4 x i32>, ptr %i.aab, align 4, !tbaa !57
  %i.adx = and <4 x i32> %wide.load70.2, splat (i32 255)
  %i.ady = and <4 x i32> %wide.load71.2, splat (i32 255)
  %i.adz = add <4 x i32> %i.adv, %i.adx           ; 2 uses
  %i.aea = add nsw <4 x i32> %i.adw, %i.ady       ; 2 uses
  br i1 %i.yf, label %middle.block73, label %vector.body64.3

vector.body64.3:                                  ; preds = %vector.body64.2
  %wide.load68.3 = load <4 x i32>, ptr %i.aae, align 4, !tbaa !57
  %wide.load69.3 = load <4 x i32>, ptr %i.aaf, align 4, !tbaa !57
  %i.aeb = and <4 x i32> %wide.load68.3, splat (i32 255)
  %i.aec = and <4 x i32> %wide.load69.3, splat (i32 255)
  %i.aed = sub <4 x i32> %i.adz, %i.aeb
  %i.aee = sub nsw <4 x i32> %i.aea, %i.aec
  %wide.load70.3 = load <4 x i32>, ptr %i.aai, align 4, !tbaa !57
  %wide.load71.3 = load <4 x i32>, ptr %i.aaj, align 4, !tbaa !57
  %i.aef = and <4 x i32> %wide.load70.3, splat (i32 255)
  %i.aeg = and <4 x i32> %wide.load71.3, splat (i32 255)
  %i.aeh = add <4 x i32> %i.aed, %i.aef           ; 2 uses
  %i.aei = add <4 x i32> %i.aee, %i.aeg           ; 2 uses
  br i1 %i.yg, label %middle.block73, label %vector.body64.4

vector.body64.4:                                  ; preds = %vector.body64.3
  %wide.load68.4 = load <4 x i32>, ptr %i.aam, align 4, !tbaa !57
  %wide.load69.4 = load <4 x i32>, ptr %i.aan, align 4, !tbaa !57
  %i.aej = and <4 x i32> %wide.load68.4, splat (i32 255)
  %i.aek = and <4 x i32> %wide.load69.4, splat (i32 255)
  %i.ael = sub <4 x i32> %i.aeh, %i.aej
  %i.aem = sub <4 x i32> %i.aei, %i.aek
  %wide.load70.4 = load <4 x i32>, ptr %i.aaq, align 4, !tbaa !57
  %wide.load71.4 = load <4 x i32>, ptr %i.aar, align 4, !tbaa !57
end_hunk_2

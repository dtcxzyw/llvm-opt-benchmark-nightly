inline.NumInlined: 21
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 26
begin_hunk_0_@icon_scan_cb:bb.a
bb.l:                                             ; preds = %bb.k
  %i.aq = zext i32 %i.ao to i64                   ; 3 uses
  %i.ar = load i64, ptr %i.w, align 8, !tbaa !72  ; 2 uses
  %or.cond640.not.i = icmp ugt i64 %i.ar, %i.aq
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
  %.0549.i = phi i32 [ 2, %bb.u ], [ %spec.select.i, %bb.w ], [ 0, %bb.v ]
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
  %.0550.i = phi i32 [ %i.ch, %bb.aa ], [ %i.bc, %bb.x ], [ %i.bc, %bb.x ], [ %i.bc, %bb.x ] ; 2 uses
  %.0523.i = phi ptr [ %i.cf, %bb.aa ], [ null, %bb.x ], [ null, %bb.x ], [ null, %bb.x ] ; 7 uses
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
  %i.cv = zext i32 %.0550.i to i64
  %i.cw = add nuw nsw i32 %i.cn, %i.cu
  %i.cx = mul nuw nsw i32 %i.cw, %i.bd
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = load ptr, ptr %i.ad, align 8, !tbaa !75
  %i.da = call ptr %i.cz(ptr noundef nonnull %i.l, i64 noundef range(i64 0, 4294967296) %i.cv, i64 noundef range(i64 0, 4294967296) %i.cy, i32 noundef 0) #13, !inline_history !87 ; 70 uses
  %.not600.i = icmp eq ptr %i.da, null
  br i1 %.not600.i, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %.not601.i = icmp eq ptr %.0523.i, null
  br i1 %.not601.i, label %parseicon.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.db = shl nuw i32 1, %i.be
  %i.dc = sext i32 %i.db to i64
  %i.dd = shl nsw i64 %i.dc, 2
  %i.de = getelementptr i8, ptr %i.l, i64 16
  %.val.i.i = load ptr, ptr %i.de, align 8, !tbaa !90
  %i.df = getelementptr i8, ptr %i.l, i64 72
  %.val3.i.i = load i64, ptr %i.df, align 8, !tbaa !91
  %i.dg = ptrtoint ptr %.0523.i to i64
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
  %i.dv = zext nneg i32 %narrow to i64
  %i.dw = shl nuw nsw i64 %i.dr, 2
  %scevgep56.a = getelementptr i8, ptr %i.do, i64 %i.dw
  %i.dx = lshr i32 %i.ci, 3
  %i.dy = and i32 %i.dx, 536870908
  %narrow154 = add nuw nsw i32 %i.dy, %i.cm
  %i.dz = shl nuw nsw i64 %i.dr, 1
  %scevgep59 = getelementptr i8, ptr %i.da, i64 %i.dz
  %i.ea = add nsw i64 %i.dr, -1                   ; 4 uses
  %i.eb = lshr i32 %i.ci, 3
  %i.ec = and i32 %i.eb, 536870908
  %narrow155 = add nuw nsw i32 %i.ec, %i.cm
  %i.ed = zext nneg i32 %narrow155 to i64
  %i.ee = shl nuw nsw i64 %i.dr, 2
  %scevgep74 = getelementptr i8, ptr %i.do, i64 %i.ee
  %i.ef = lshr i32 %i.ci, 3
  %i.eg = and i32 %i.ef, 536870908
  %narrow156 = add nuw nsw i32 %i.eg, %i.cm
  %i.eh = mul nuw nsw i64 %i.dr, 3
  %scevgep77 = getelementptr i8, ptr %i.da, i64 %i.eh
  %i.ei = add nsw i64 %i.dr, -1                   ; 3 uses
  %i.ej = lshr i32 %i.ci, 3
  %i.ek = and i32 %i.ej, 536870908
  %narrow157 = add nuw nsw i32 %i.ek, %i.cm
  %i.el = zext nneg i32 %narrow157 to i64
  %i.em = shl nuw nsw i64 %i.dr, 2                ; 2 uses
  %scevgep109 = getelementptr i8, ptr %i.do, i64 %i.em
  %i.en = lshr i32 %i.ci, 3
  %i.eo = and i32 %i.en, 536870908
  %narrow158 = add nuw nsw i32 %i.eo, %i.cm
  %scevgep112 = getelementptr i8, ptr %i.da, i64 %i.em
  %min.iters.check118 = icmp ult i32 %.4..4..4..4..4..i, 20
  %i.ep = trunc nsw i64 %i.ei to i32
  %i.eq = trunc nsw i64 %i.ei to i32
  %mul.result96 = shl i32 %i.eq, 2                ; 4 uses
  %mul.overflow97 = icmp ugt i64 %i.ei, 1073741823
  %n.vec121 = and i64 %i.dr, 504                  ; 4 uses
  %i.er = trunc nuw nsw i64 %n.vec121 to i32
  %i.es = shl nuw nsw i32 %i.er, 2
  %cmp.n127 = icmp eq i64 %n.vec121, %i.dr
  %min.iters.check83 = icmp ult i32 %.4..4..4..4..4..i, 20
  %i.et = trunc nsw i64 %i.ea to i32
  %i.eu = trunc nsw i64 %i.ea to i32
  %mul63 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.eu, i32 3) ; 2 uses
  %mul.result64 = extractvalue { i32, i1 } %mul63, 0 ; 3 uses
  %mul.overflow65 = extractvalue { i32, i1 } %mul63, 1
  %i.ev = icmp ugt i64 %i.ea, 4294967295
  %7 = icmp ugt i64 %i.ea, 4294967295
  %invariant.op = or i1 %7, %mul.overflow65
  %n.vec86 = and i64 %i.dr, 508                   ; 4 uses
  %i.ew = trunc nuw nsw i64 %n.vec86 to i32
  %i.ex = mul nuw nsw i32 %i.ew, 3
  %cmp.n91 = icmp eq i64 %n.vec86, %i.dr
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
  %.not603.i = icmp eq ptr %.0523.i, null
  br i1 %.not603.i, label %parseicon.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fd = shl nuw i32 1, %i.be
  %i.fe = sext i32 %i.fd to i64
  %i.ff = shl nsw i64 %i.fe, 2
  %i.fg = getelementptr i8, ptr %i.l, i64 16
  %.val.i621.i = load ptr, ptr %i.fg, align 8, !tbaa !90
  %i.fh = getelementptr i8, ptr %i.l, i64 72
  %.val3.i622.i = load i64, ptr %i.fh, align 8, !tbaa !91
  %i.fi = ptrtoint ptr %.0523.i to i64
  %i.fj = ptrtoint ptr %.val.i621.i to i64
  %i.fk = add i64 %.val3.i622.i, %i.fj
  %i.fl = sub i64 %i.fi, %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !92
  call void %i.fn(ptr noundef nonnull %i.l, i64 noundef %i.fl, i64 noundef range(i64 -8589934592, 8589934589) %i.ff) #13, !inline_history !93
  br label %parseicon.exit

bb.ah:                                            ; preds = %.loopexit655.i, %.lr.ph680.i
  %indvars.iv747.i = phi i64 [ 0, %.lr.ph680.i ], [ %indvars.iv.next748.i, %.loopexit655.i ] ; 18 uses
  %.0551677.i = phi i32 [ 0, %.lr.ph680.i ], [ %.2553.i, %.loopexit655.i ] ; 10 uses
  %i.fo = trunc i64 %indvars.iv747.i to i32
  %i.fp = xor i32 %i.fo, -1
  %i.fq = add i32 %i.bd, %i.fp
  %i.fr = mul i32 %.4..4..4..4..4..i, %i.fq
  %i.fs = zext i32 %i.fr to i64
  %i.ft = shl nuw nsw i64 %i.fs, 2                ; 2 uses
  %scevgep108 = getelementptr i8, ptr %i.do, i64 %i.ft
  %scevgep110 = getelementptr i8, ptr %scevgep109, i64 %i.ft
  %i.fu = trunc i64 %indvars.iv747.i to i32
  %i.fv = mul i32 %narrow158, %i.fu
  %i.fw = zext i32 %i.fv to i64                   ; 2 uses
  %scevgep111 = getelementptr i8, ptr %i.da, i64 %i.fw
  %scevgep113 = getelementptr i8, ptr %scevgep112, i64 %i.fw
  %i.fx = trunc i64 %indvars.iv747.i to i32
  %i.fy = xor i32 %i.fx, -1
  %i.fz = add i32 %i.bd, %i.fy
  %i.ga = mul i32 %.4..4..4..4..4..i, %i.fz
  %i.gb = mul i64 %indvars.iv747.i, %i.el         ; 4 uses
  %i.gc = trunc i64 %i.gb to i32
  %i.gd = trunc i64 %i.gb to i32
  %i.ge = trunc i64 %i.gb to i32
  %i.gf = trunc i64 %i.gb to i32
  %i.gg = trunc i64 %indvars.iv747.i to i32
  %i.gh = xor i32 %i.gg, -1
  %i.gi = add i32 %i.bd, %i.gh
  %i.gj = mul i32 %.4..4..4..4..4..i, %i.gi
  %i.gk = zext i32 %i.gj to i64
  %i.gl = shl nuw nsw i64 %i.gk, 2                ; 2 uses
  %scevgep73 = getelementptr i8, ptr %i.do, i64 %i.gl
  %scevgep75 = getelementptr i8, ptr %scevgep74, i64 %i.gl
  %i.gm = trunc i64 %indvars.iv747.i to i32
  %i.gn = mul i32 %narrow156, %i.gm
  %i.go = zext i32 %i.gn to i64                   ; 2 uses
  %scevgep76 = getelementptr i8, ptr %i.da, i64 %i.go
  %scevgep78 = getelementptr i8, ptr %scevgep77, i64 %i.go
  %i.gp = trunc i64 %indvars.iv747.i to i32
  %i.gq = xor i32 %i.gp, -1
  %i.gr = add i32 %i.bd, %i.gq
  %i.gs = mul i32 %.4..4..4..4..4..i, %i.gr
  %i.gt = mul i64 %indvars.iv747.i, %i.ed         ; 3 uses
  %i.gu = trunc i64 %i.gt to i32
  %i.gv = trunc i64 %i.gt to i32
  %i.gw = trunc i64 %i.gt to i32
  %i.gx = trunc i64 %indvars.iv747.i to i32
  %i.gy = xor i32 %i.gx, -1
  %i.gz = add i32 %i.bd, %i.gy
  %i.ha = mul i32 %.4..4..4..4..4..i, %i.gz
  %i.hb = zext i32 %i.ha to i64
  %i.hc = shl nuw nsw i64 %i.hb, 2                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.do, i64 %i.hc
  %scevgep57.a = getelementptr i8, ptr %scevgep56.a, i64 %i.hc
  %i.hd = trunc i64 %indvars.iv747.i to i32
  %i.he = mul i32 %narrow154, %i.hd
  %i.hf = zext i32 %i.he to i64                   ; 2 uses
  %scevgep58 = getelementptr i8, ptr %i.da, i64 %i.hf
  %scevgep60 = getelementptr i8, ptr %scevgep59, i64 %i.hf
  %i.hg = trunc i64 %indvars.iv747.i to i32
  %i.hh = xor i32 %i.hg, -1
  %i.hi = add i32 %i.bd, %i.hh
  %i.hj = mul i32 %.4..4..4..4..4..i, %i.hi
  %i.hk = mul i64 %indvars.iv747.i, %i.dv         ; 2 uses
  %i.hl = trunc i64 %i.hk to i32
  %i.hm = trunc i64 %i.hk to i32
  %i.hn = trunc nuw nsw i64 %indvars.iv747.i to i32
  %i.ho = mul i32 %i.cn, %i.hn                    ; 16 uses
  switch i16 %.14..14..14..14..14..i, label %.loopexit655.i [
    i16 1, label %.lr.ph676.i
    i16 4, label %.lr.ph676.i
    i16 8, label %.lr.ph676.i
    i16 16, label %.lr.ph671.i
    i16 24, label %.lr.ph668.i
    i16 32, label %.lr.ph.i
  ]

.lr.ph.i:                                         ; preds = %bb.ah
  %i.hp = xor i64 %indvars.iv747.i, -1
  %i.hq = add nsw i64 %i.hp, %i.dq
  %i.hr = mul i64 %i.hq, %i.dr                    ; 2 uses
  br i1 %min.iters.check118, label %scalar.ph117.preheader, label %vector.scevcheck94

vector.scevcheck94:                               ; preds = %.lr.ph.i
  %i.hs = xor i32 %i.ga, -1
  %i.ht = icmp ult i32 %i.hs, %i.ep
  %i.hu = xor i32 %i.gc, -4
  %i.hv = icmp ult i32 %i.hu, %mul.result96
  %i.hw = xor i32 %i.gd, -1
  %i.hx = icmp ugt i32 %mul.result96, %i.hw
  %8 = or i1 %i.hx, %mul.overflow97
  %i.hy = xor i32 %i.ge, -2
  %i.hz = icmp ult i32 %i.hy, %mul.result96
  %i.ia = xor i32 %i.gf, -3
  %i.ib = icmp ult i32 %i.ia, %mul.result96
  %i.ic = or i1 %i.hv, %i.ht
  %i.id = or i1 %i.ic, %8
  %i.ie = or i1 %i.hz, %i.id
  %i.if = or i1 %i.ib, %i.ie
  br i1 %i.if, label %scalar.ph117.preheader, label %vector.memcheck107

vector.memcheck107:                               ; preds = %vector.scevcheck94
  %bound0114 = icmp ult ptr %scevgep108, %scevgep113
  %bound1115 = icmp ult ptr %scevgep111, %scevgep110
  %found.conflict116 = and i1 %bound0114, %bound1115
  br i1 %found.conflict116, label %scalar.ph117.preheader, label %vector.ph119

vector.ph119:                                     ; preds = %vector.memcheck107
  %i.ig = add i32 %i.ho, %i.es
  %i.ih = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.0551677.i, i64 0
  br label %vector.body122

vector.body122:                                   ; preds = %vector.body122, %vector.ph119
  %index123 = phi i64 [ 0, %vector.ph119 ], [ %index.next125, %vector.body122 ] ; 3 uses
  %vec.phi = phi <4 x i32> [ %i.ih, %vector.ph119 ], [ %i.pm, %vector.body122 ]
  %vec.phi124 = phi <4 x i32> [ zeroinitializer, %vector.ph119 ], [ %i.pn, %vector.body122 ]
  %i.ii = trunc i64 %index123 to i32
  %i.ij = shl i32 %i.ii, 2
  %i.ik = add i32 %i.ho, %i.ij                    ; 11 uses
  %i.il = add i32 %i.ik, 4                        ; 4 uses
  %i.im = add i32 %i.ik, 8                        ; 4 uses
  %i.in = add i32 %i.ik, 12                       ; 4 uses
  %i.io = add i32 %i.ik, 16                       ; 4 uses
  %i.ip = add i32 %i.ik, 20                       ; 4 uses
  %i.iq = add i32 %i.ik, 24                       ; 4 uses
  %i.ir = add i32 %i.ik, 28                       ; 4 uses
  %i.is = or disjoint i32 %i.ik, 3
  %i.it = or disjoint i32 %i.il, 3
  %i.iu = or disjoint i32 %i.im, 3
  %i.iv = or disjoint i32 %i.in, 3
  %i.iw = or disjoint i32 %i.io, 3
  %i.ix = or disjoint i32 %i.ip, 3
  %i.iy = or disjoint i32 %i.iq, 3
  %i.iz = or disjoint i32 %i.ir, 3
  %i.ja = zext i32 %i.is to i64
  %i.jb = zext i32 %i.it to i64
  %i.jc = zext i32 %i.iu to i64
  %i.jd = zext i32 %i.iv to i64
  %i.je = zext i32 %i.iw to i64
  %i.jf = zext i32 %i.ix to i64
  %i.jg = zext i32 %i.iy to i64
  %i.jh = zext i32 %i.iz to i64
  %i.ji = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ja
  %i.jj = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.jb
  %i.jk = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.jc
  %i.jl = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.jd
  %i.jm = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.je
  %i.jn = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.jf
  %i.jo = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.jg
  %i.jp = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.jh
  %i.jq = load i8, ptr %i.ji, align 1, !tbaa !77, !alias.scope !94
  %i.jr = load i8, ptr %i.jj, align 1, !tbaa !77, !alias.scope !94
  %i.js = load i8, ptr %i.jk, align 1, !tbaa !77, !alias.scope !94
  %i.jt = load i8, ptr %i.jl, align 1, !tbaa !77, !alias.scope !94
  %i.ju = insertelement <4 x i8> poison, i8 %i.jq, i64 0
  %i.jv = insertelement <4 x i8> %i.ju, i8 %i.jr, i64 1
  %i.jw = insertelement <4 x i8> %i.jv, i8 %i.js, i64 2
  %i.jx = insertelement <4 x i8> %i.jw, i8 %i.jt, i64 3
  %i.jy = load i8, ptr %i.jm, align 1, !tbaa !77, !alias.scope !94
  %i.jz = load i8, ptr %i.jn, align 1, !tbaa !77, !alias.scope !94
  %i.ka = load i8, ptr %i.jo, align 1, !tbaa !77, !alias.scope !94
  %i.kb = load i8, ptr %i.jp, align 1, !tbaa !77, !alias.scope !94
  %i.kc = insertelement <4 x i8> poison, i8 %i.jy, i64 0
  %i.kd = insertelement <4 x i8> %i.kc, i8 %i.jz, i64 1
  %i.ke = insertelement <4 x i8> %i.kd, i8 %i.ka, i64 2
  %i.kf = insertelement <4 x i8> %i.ke, i8 %i.kb, i64 3
  %i.kg = zext <4 x i8> %i.jx to <4 x i32>
  %i.kh = zext <4 x i8> %i.kf to <4 x i32>
  %i.ki = shl nuw <4 x i32> %i.kg, splat (i32 24) ; 2 uses
  %i.kj = shl nuw <4 x i32> %i.kh, splat (i32 24) ; 2 uses
  %i.kk = zext i32 %i.ik to i64
  %i.kl = zext i32 %i.il to i64
  %i.km = zext i32 %i.im to i64
  %i.kn = zext i32 %i.in to i64
  %i.ko = zext i32 %i.io to i64
  %i.kp = zext i32 %i.ip to i64
  %i.kq = zext i32 %i.iq to i64
  %i.kr = zext i32 %i.ir to i64
  %i.ks = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.kk
  %i.kt = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.kl
  %i.ku = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.km
  %i.kv = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.kn
  %i.kw = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ko
  %i.kx = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.kp
  %i.ky = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.kq
  %i.kz = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.kr
  %i.la = load i8, ptr %i.ks, align 1, !tbaa !77, !alias.scope !94
  %i.lb = load i8, ptr %i.kt, align 1, !tbaa !77, !alias.scope !94
  %i.lc = load i8, ptr %i.ku, align 1, !tbaa !77, !alias.scope !94
  %i.ld = load i8, ptr %i.kv, align 1, !tbaa !77, !alias.scope !94
  %i.le = insertelement <4 x i8> poison, i8 %i.la, i64 0
  %i.lf = insertelement <4 x i8> %i.le, i8 %i.lb, i64 1
  %i.lg = insertelement <4 x i8> %i.lf, i8 %i.lc, i64 2
  %i.lh = insertelement <4 x i8> %i.lg, i8 %i.ld, i64 3
  %i.li = load i8, ptr %i.kw, align 1, !tbaa !77, !alias.scope !94
  %i.lj = load i8, ptr %i.kx, align 1, !tbaa !77, !alias.scope !94
  %i.lk = load i8, ptr %i.ky, align 1, !tbaa !77, !alias.scope !94
  %i.ll = load i8, ptr %i.kz, align 1, !tbaa !77, !alias.scope !94
  %i.lm = insertelement <4 x i8> poison, i8 %i.li, i64 0
  %i.ln = insertelement <4 x i8> %i.lm, i8 %i.lj, i64 1
  %i.lo = insertelement <4 x i8> %i.ln, i8 %i.lk, i64 2
  %i.lp = insertelement <4 x i8> %i.lo, i8 %i.ll, i64 3
  %i.lq = zext <4 x i8> %i.lh to <4 x i32>
  %i.lr = zext <4 x i8> %i.lp to <4 x i32>
  %i.ls = or disjoint i32 %i.ik, 1
  %i.lt = or disjoint i32 %i.il, 1
  %i.lu = or disjoint i32 %i.im, 1
  %i.lv = or disjoint i32 %i.in, 1
  %i.lw = or disjoint i32 %i.io, 1
  %i.lx = or disjoint i32 %i.ip, 1
  %i.ly = or disjoint i32 %i.iq, 1
  %i.lz = or disjoint i32 %i.ir, 1
  %i.ma = zext i32 %i.ls to i64
  %i.mb = zext i32 %i.lt to i64
  %i.mc = zext i32 %i.lu to i64
  %i.md = zext i32 %i.lv to i64
  %i.me = zext i32 %i.lw to i64
  %i.mf = zext i32 %i.lx to i64
  %i.mg = zext i32 %i.ly to i64
  %i.mh = zext i32 %i.lz to i64
  %i.mi = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ma
  %i.mj = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.mb
  %i.mk = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.mc
  %i.ml = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.md
  %i.mm = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.me
  %i.mn = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.mf
  %i.mo = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.mg
  %i.mp = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.mh
  %i.mq = load i8, ptr %i.mi, align 1, !tbaa !77, !alias.scope !94
  %i.mr = load i8, ptr %i.mj, align 1, !tbaa !77, !alias.scope !94
  %i.ms = load i8, ptr %i.mk, align 1, !tbaa !77, !alias.scope !94
  %i.mt = load i8, ptr %i.ml, align 1, !tbaa !77, !alias.scope !94
  %i.mu = insertelement <4 x i8> poison, i8 %i.mq, i64 0
  %i.mv = insertelement <4 x i8> %i.mu, i8 %i.mr, i64 1
  %i.mw = insertelement <4 x i8> %i.mv, i8 %i.ms, i64 2
  %i.mx = insertelement <4 x i8> %i.mw, i8 %i.mt, i64 3
  %i.my = load i8, ptr %i.mm, align 1, !tbaa !77, !alias.scope !94
  %i.mz = load i8, ptr %i.mn, align 1, !tbaa !77, !alias.scope !94
  %i.na = load i8, ptr %i.mo, align 1, !tbaa !77, !alias.scope !94
  %i.nb = load i8, ptr %i.mp, align 1, !tbaa !77, !alias.scope !94
  %i.nc = insertelement <4 x i8> poison, i8 %i.my, i64 0
  %i.nd = insertelement <4 x i8> %i.nc, i8 %i.mz, i64 1
  %i.ne = insertelement <4 x i8> %i.nd, i8 %i.na, i64 2
  %i.nf = insertelement <4 x i8> %i.ne, i8 %i.nb, i64 3
  %i.ng = zext <4 x i8> %i.mx to <4 x i32>
  %i.nh = zext <4 x i8> %i.nf to <4 x i32>
  %i.ni = shl nuw nsw <4 x i32> %i.ng, splat (i32 8)
  %i.nj = shl nuw nsw <4 x i32> %i.nh, splat (i32 8)
  %i.nk = or disjoint i32 %i.ik, 2
  %i.nl = or disjoint i32 %i.il, 2
  %i.nm = or disjoint i32 %i.im, 2
  %i.nn = or disjoint i32 %i.in, 2
  %i.no = or disjoint i32 %i.io, 2
  %i.np = or disjoint i32 %i.ip, 2
  %i.nq = or disjoint i32 %i.iq, 2
  %i.nr = or disjoint i32 %i.ir, 2
  %i.ns = zext i32 %i.nk to i64
  %i.nt = zext i32 %i.nl to i64
  %i.nu = zext i32 %i.nm to i64
  %i.nv = zext i32 %i.nn to i64
  %i.nw = zext i32 %i.no to i64
  %i.nx = zext i32 %i.np to i64
  %i.ny = zext i32 %i.nq to i64
  %i.nz = zext i32 %i.nr to i64
  %i.oa = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ns
  %i.ob = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.nt
  %i.oc = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.nu
  %i.od = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.nv
  %i.oe = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.nw
  %i.of = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.nx
  %i.og = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ny
  %i.oh = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.nz
  %i.oi = load i8, ptr %i.oa, align 1, !tbaa !77, !alias.scope !94
  %i.oj = load i8, ptr %i.ob, align 1, !tbaa !77, !alias.scope !94
  %i.ok = load i8, ptr %i.oc, align 1, !tbaa !77, !alias.scope !94
  %i.ol = load i8, ptr %i.od, align 1, !tbaa !77, !alias.scope !94
  %i.om = insertelement <4 x i8> poison, i8 %i.oi, i64 0
  %i.on = insertelement <4 x i8> %i.om, i8 %i.oj, i64 1
  %i.oo = insertelement <4 x i8> %i.on, i8 %i.ok, i64 2
  %i.op = insertelement <4 x i8> %i.oo, i8 %i.ol, i64 3
  %i.oq = load i8, ptr %i.oe, align 1, !tbaa !77, !alias.scope !94
  %i.or = load i8, ptr %i.of, align 1, !tbaa !77, !alias.scope !94
  %i.os = load i8, ptr %i.og, align 1, !tbaa !77, !alias.scope !94
  %i.ot = load i8, ptr %i.oh, align 1, !tbaa !77, !alias.scope !94
  %i.ou = insertelement <4 x i8> poison, i8 %i.oq, i64 0
  %i.ov = insertelement <4 x i8> %i.ou, i8 %i.or, i64 1
  %i.ow = insertelement <4 x i8> %i.ov, i8 %i.os, i64 2
  %i.ox = insertelement <4 x i8> %i.ow, i8 %i.ot, i64 3
  %i.oy = zext <4 x i8> %i.op to <4 x i32>
  %i.oz = zext <4 x i8> %i.ox to <4 x i32>
  %i.pa = shl nuw nsw <4 x i32> %i.oy, splat (i32 16)
  %i.pb = shl nuw nsw <4 x i32> %i.oz, splat (i32 16)
  %i.pc = or disjoint <4 x i32> %i.ni, %i.lq
  %i.pd = or disjoint <4 x i32> %i.nj, %i.lr
  %i.pe = or disjoint <4 x i32> %i.pc, %i.pa
  %i.pf = or disjoint <4 x i32> %i.pd, %i.pb
  %i.pg = or disjoint <4 x i32> %i.pe, %i.ki
  %i.ph = or disjoint <4 x i32> %i.pf, %i.kj
  %i.pi = add i64 %index123, %i.hr
  %i.pj = and i64 %i.pi, 4294967295
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.pj ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 16
  store <4 x i32> %i.pg, ptr %i.pk, align 4, !tbaa !57, !alias.scope !97, !noalias !94
  store <4 x i32> %i.ph, ptr %i.pl, align 4, !tbaa !57, !alias.scope !97, !noalias !94
  %i.pm = or <4 x i32> %i.ki, %vec.phi            ; 2 uses
  %i.pn = or <4 x i32> %i.kj, %vec.phi124         ; 2 uses
  %index.next125 = add nuw i64 %index123, 8       ; 2 uses
  %i.po = icmp eq i64 %index.next125, %n.vec121
  br i1 %i.po, label %middle.block126, label %vector.body122, !llvm.loop !99

middle.block126:                                  ; preds = %vector.body122
  %bin.rdx = or <4 x i32> %i.pn, %i.pm
  %i.pp = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n127, label %.loopexit655.i, label %scalar.ph117.preheader

scalar.ph117.preheader:                           ; preds = %vector.memcheck107, %vector.scevcheck94, %.lr.ph.i, %middle.block126
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck107 ], [ 0, %vector.scevcheck94 ], [ 0, %.lr.ph.i ], [ %n.vec121, %middle.block126 ]
  %.1552664.i.ph = phi i32 [ %.0551677.i, %vector.memcheck107 ], [ %.0551677.i, %vector.scevcheck94 ], [ %.0551677.i, %.lr.ph.i ], [ %i.pp, %middle.block126 ]
  %.4561663.i.ph = phi i32 [ %i.ho, %vector.memcheck107 ], [ %i.ho, %vector.scevcheck94 ], [ %i.ho, %.lr.ph.i ], [ %i.ig, %middle.block126 ]
  br label %scalar.ph117

.lr.ph668.i:                                      ; preds = %bb.ah
  %i.pq = xor i64 %indvars.iv747.i, -1
  %i.pr = add nsw i64 %i.pq, %i.dq
  %i.ps = mul i64 %i.pr, %i.dr                    ; 2 uses
  br i1 %min.iters.check83, label %scalar.ph82.preheader, label %vector.scevcheck62

vector.scevcheck62:                               ; preds = %.lr.ph668.i
  %i.pt = xor i32 %i.gs, -1
  %i.pu = icmp ult i32 %i.pt, %i.et
  %i.pv = xor i32 %i.gu, -1
  %i.pw = icmp ugt i32 %mul.result64, %i.pv
  %.reass.a = or i1 %i.pw, %i.ev
  %i.px = xor i32 %i.gv, -2
  %i.py = icmp ult i32 %i.px, %mul.result64
  %i.pz = or i1 %i.py, %invariant.op
  %i.qa = xor i32 %i.gw, -3
  %i.qb = icmp ult i32 %i.qa, %mul.result64
  %i.qc = or i1 %.reass.a, %i.pu
  %i.qd = or i1 %i.qc, %i.pz
  %i.qe = or i1 %i.qb, %i.qd
  br i1 %i.qe, label %scalar.ph82.preheader, label %vector.memcheck72

vector.memcheck72:                                ; preds = %vector.scevcheck62
  %bound079 = icmp ult ptr %scevgep73, %scevgep78
  %bound180 = icmp ult ptr %scevgep76, %scevgep75
  %found.conflict81 = and i1 %bound079, %bound180
  br i1 %found.conflict81, label %scalar.ph82.preheader, label %vector.ph84

vector.ph84:                                      ; preds = %vector.memcheck72
  %i.qf = add i32 %i.ho, %i.ex
  br label %vector.body87

vector.body87:                                    ; preds = %vector.body87, %vector.ph84
  %index88 = phi i64 [ 0, %vector.ph84 ], [ %index.next89, %vector.body87 ] ; 3 uses
  %i.qg = trunc i64 %index88 to i32
  %i.qh = mul i32 %i.qg, 3
  %i.qi = add i32 %i.ho, %i.qh                    ; 12 uses
  %i.qj = or disjoint i32 %i.qi, 3
  %i.qk = add i32 %i.qi, 6
  %i.ql = add i32 %i.qi, 9
  %i.qm = zext i32 %i.qi to i64
  %i.qn = zext i32 %i.qj to i64
  %i.qo = zext i32 %i.qk to i64
  %i.qp = zext i32 %i.ql to i64
  %i.qq = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.qm
  %i.qr = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.qn
  %i.qs = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.qo
  %i.qt = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.qp
  %i.qu = load i8, ptr %i.qq, align 1, !tbaa !77, !alias.scope !102
  %i.qv = load i8, ptr %i.qr, align 1, !tbaa !77, !alias.scope !102
  %i.qw = load i8, ptr %i.qs, align 1, !tbaa !77, !alias.scope !102
  %i.qx = load i8, ptr %i.qt, align 1, !tbaa !77, !alias.scope !102
  %i.qy = insertelement <4 x i8> poison, i8 %i.qu, i64 0
  %i.qz = insertelement <4 x i8> %i.qy, i8 %i.qv, i64 1
  %i.ra = insertelement <4 x i8> %i.qz, i8 %i.qw, i64 2
  %i.rb = insertelement <4 x i8> %i.ra, i8 %i.qx, i64 3
  %i.rc = zext <4 x i8> %i.rb to <4 x i32>
  %i.rd = or disjoint i32 %i.qi, 1
  %i.re = add i32 %i.qi, 4
  %i.rf = add i32 %i.qi, 7
  %i.rg = add i32 %i.qi, 10
  %i.rh = zext i32 %i.rd to i64
  %i.ri = zext i32 %i.re to i64
  %i.rj = zext i32 %i.rf to i64
  %i.rk = zext i32 %i.rg to i64
  %i.rl = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.rh
  %i.rm = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ri
  %i.rn = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.rj
  %i.ro = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.rk
  %i.rp = load i8, ptr %i.rl, align 1, !tbaa !77, !alias.scope !102
  %i.rq = load i8, ptr %i.rm, align 1, !tbaa !77, !alias.scope !102
  %i.rr = load i8, ptr %i.rn, align 1, !tbaa !77, !alias.scope !102
  %i.rs = load i8, ptr %i.ro, align 1, !tbaa !77, !alias.scope !102
  %i.rt = insertelement <4 x i8> poison, i8 %i.rp, i64 0
  %i.ru = insertelement <4 x i8> %i.rt, i8 %i.rq, i64 1
  %i.rv = insertelement <4 x i8> %i.ru, i8 %i.rr, i64 2
  %i.rw = insertelement <4 x i8> %i.rv, i8 %i.rs, i64 3
  %i.rx = zext <4 x i8> %i.rw to <4 x i32>
  %i.ry = shl nuw nsw <4 x i32> %i.rx, splat (i32 8)
  %i.rz = or disjoint <4 x i32> %i.ry, %i.rc
  %i.sa = or disjoint i32 %i.qi, 2
  %i.sb = add i32 %i.qi, 5
  %i.sc = add i32 %i.qi, 8
  %i.sd = add i32 %i.qi, 11
  %i.se = zext i32 %i.sa to i64
  %i.sf = zext i32 %i.sb to i64
  %i.sg = zext i32 %i.sc to i64
  %i.sh = zext i32 %i.sd to i64
  %i.si = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.se
  %i.sj = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.sf
  %i.sk = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.sg
  %i.sl = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.sh
  %i.sm = load i8, ptr %i.si, align 1, !tbaa !77, !alias.scope !102
  %i.sn = load i8, ptr %i.sj, align 1, !tbaa !77, !alias.scope !102
  %i.so = load i8, ptr %i.sk, align 1, !tbaa !77, !alias.scope !102
  %i.sp = load i8, ptr %i.sl, align 1, !tbaa !77, !alias.scope !102
  %i.sq = insertelement <4 x i8> poison, i8 %i.sm, i64 0
  %i.sr = insertelement <4 x i8> %i.sq, i8 %i.sn, i64 1
  %i.ss = insertelement <4 x i8> %i.sr, i8 %i.so, i64 2
  %i.st = insertelement <4 x i8> %i.ss, i8 %i.sp, i64 3
  %i.su = zext <4 x i8> %i.st to <4 x i32>
  %i.sv = shl nuw nsw <4 x i32> %i.su, splat (i32 16)
  %i.sw = or disjoint <4 x i32> %i.rz, %i.sv
  %i.sx = add i64 %index88, %i.ps
  %i.sy = and i64 %i.sx, 4294967295
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.sy
  store <4 x i32> %i.sw, ptr %i.sz, align 4, !tbaa !57, !alias.scope !105, !noalias !102
  %index.next89 = add nuw i64 %index88, 4         ; 2 uses
  %i.ta = icmp eq i64 %index.next89, %n.vec86
  br i1 %i.ta, label %middle.block90, label %vector.body87, !llvm.loop !107

middle.block90:                                   ; preds = %vector.body87
  br i1 %cmp.n91, label %.loopexit655.i, label %scalar.ph82.preheader

scalar.ph82.preheader:                            ; preds = %vector.memcheck72, %vector.scevcheck62, %.lr.ph668.i, %middle.block90
  %indvars.iv733.i.ph = phi i64 [ 0, %vector.memcheck72 ], [ 0, %vector.scevcheck62 ], [ 0, %.lr.ph668.i ], [ %n.vec86, %middle.block90 ]
  %.3560666.i.ph = phi i32 [ %i.ho, %vector.memcheck72 ], [ %i.ho, %vector.scevcheck62 ], [ %i.ho, %.lr.ph668.i ], [ %i.qf, %middle.block90 ]
  br label %scalar.ph82

.lr.ph671.i:                                      ; preds = %bb.ah
  %i.tb = xor i64 %indvars.iv747.i, -1
  %i.tc = add nsw i64 %i.tb, %i.dq
  %i.td = mul i64 %i.tc, %i.dr                    ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph671.i
  %i.te = xor i32 %i.hj, -1
  %i.tf = icmp ult i32 %i.te, %i.ey
  %i.tg = xor i32 %i.hl, -1
  %i.th = icmp ugt i32 %mul.result, %i.tg
  %i.ti = or i1 %i.th, %i.fa
  %i.tj = xor i32 %i.hm, -2
  %i.tk = icmp ult i32 %i.tj, %mul.result
  %i.tl = or i1 %i.tf, %i.ti
  %i.tm = or i1 %i.tk, %i.tl
  br i1 %i.tm, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %scevgep, %scevgep60
  %bound1 = icmp ult ptr %scevgep58, %scevgep57.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.tn = add i32 %i.ho, %i.fc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.to = trunc i64 %index to i32
  %i.tp = shl i32 %i.to, 1
  %i.tq = add i32 %i.ho, %i.tp                    ; 6 uses
  %i.tr = or disjoint i32 %i.tq, 2
  %i.ts = add i32 %i.tq, 4                        ; 2 uses
  %i.tt = add i32 %i.tq, 6                        ; 2 uses
  %i.tu = zext i32 %i.tq to i64
  %i.tv = zext i32 %i.tr to i64
  %i.tw = zext i32 %i.ts to i64
  %i.tx = zext i32 %i.tt to i64
  %i.ty = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.tu
  %i.tz = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.tv
  %i.ua = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.tw
  %i.ub = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.tx
  %i.uc = load i8, ptr %i.ty, align 1, !tbaa !77, !alias.scope !108
  %i.ud = load i8, ptr %i.tz, align 1, !tbaa !77, !alias.scope !108
  %i.ue = load i8, ptr %i.ua, align 1, !tbaa !77, !alias.scope !108
  %i.uf = load i8, ptr %i.ub, align 1, !tbaa !77, !alias.scope !108
  %i.ug = insertelement <4 x i8> poison, i8 %i.uc, i64 0
  %i.uh = insertelement <4 x i8> %i.ug, i8 %i.ud, i64 1
  %i.ui = insertelement <4 x i8> %i.uh, i8 %i.ue, i64 2
  %i.uj = insertelement <4 x i8> %i.ui, i8 %i.uf, i64 3
  %i.uk = zext <4 x i8> %i.uj to <4 x i32>        ; 2 uses
  %i.ul = and <4 x i32> %i.uk, splat (i32 31)     ; 2 uses
  %i.um = lshr <4 x i32> %i.uk, splat (i32 5)
  %i.un = or disjoint i32 %i.tq, 1
  %i.uo = or disjoint i32 %i.tq, 3
  %i.up = or disjoint i32 %i.ts, 1
  %i.uq = or disjoint i32 %i.tt, 1
  %i.ur = zext i32 %i.un to i64
  %i.us = zext i32 %i.uo to i64
  %i.ut = zext i32 %i.up to i64
  %i.uu = zext i32 %i.uq to i64
  %i.uv = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ur
  %i.uw = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.us
  %i.ux = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ut
  %i.uy = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.uu
  %i.uz = load i8, ptr %i.uv, align 1, !tbaa !77, !alias.scope !108
  %i.va = load i8, ptr %i.uw, align 1, !tbaa !77, !alias.scope !108
  %i.vb = load i8, ptr %i.ux, align 1, !tbaa !77, !alias.scope !108
  %i.vc = load i8, ptr %i.uy, align 1, !tbaa !77, !alias.scope !108
  %i.vd = insertelement <4 x i8> poison, i8 %i.uz, i64 0
  %i.ve = insertelement <4 x i8> %i.vd, i8 %i.va, i64 1
  %i.vf = insertelement <4 x i8> %i.ve, i8 %i.vb, i64 2
  %i.vg = insertelement <4 x i8> %i.vf, i8 %i.vc, i64 3
  %i.vh = zext <4 x i8> %i.vg to <4 x i32>        ; 2 uses
  %i.vi = shl nuw nsw <4 x i32> %i.vh, splat (i32 3) ; 2 uses
  %i.vj = and <4 x i32> %i.vi, splat (i32 24)
  %i.vk = or disjoint <4 x i32> %i.vj, %i.um      ; 2 uses
  %i.vl = shl nuw nsw <4 x i32> %i.ul, splat (i32 3)
  %i.vm = lshr <4 x i32> %i.ul, splat (i32 2)
  %i.vn = or disjoint <4 x i32> %i.vl, %i.vm
  %i.vo = shl nuw nsw <4 x i32> %i.vk, splat (i32 14)
  %i.vp = shl nuw nsw <4 x i32> %i.vk, splat (i32 9)
  %i.vq = and <4 x i32> %i.vp, splat (i32 14336)
  %i.vr = or disjoint <4 x i32> %i.vq, %i.vo
  %i.vs = and <4 x i32> %i.vi, splat (i32 2016)
  %i.vt = lshr <4 x i32> %i.vh, splat (i32 2)
  %i.vu = or <4 x i32> %i.vs, %i.vt
  %i.vv = shl nuw nsw <4 x i32> %i.vu, splat (i32 17)
  %i.vw = or <4 x i32> %i.vv, %i.vr
  %i.vx = or disjoint <4 x i32> %i.vw, %i.vn
  %i.vy = add i64 %index, %i.td
  %i.vz = and i64 %i.vy, 4294967295
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.vz
  store <4 x i32> %i.vx, ptr %i.wa, align 4, !tbaa !57, !alias.scope !111, !noalias !108
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.wb = icmp eq i64 %index.next, %n.vec
  br i1 %i.wb, label %middle.block, label %vector.body, !llvm.loop !113

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit655.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph671.i, %middle.block
  %indvars.iv738.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph671.i ], [ %n.vec, %middle.block ]
  %.2559669.i.ph = phi i32 [ %i.ho, %vector.memcheck ], [ %i.ho, %vector.scevcheck ], [ %i.ho, %.lr.ph671.i ], [ %i.tn, %middle.block ]
  br label %scalar.ph

.lr.ph676.i:                                      ; preds = %bb.ah, %bb.ah, %bb.ah
  %i.wc = xor i64 %indvars.iv747.i, -1
  %i.wd = add nsw i64 %i.wc, %i.dq
  %i.we = mul i64 %i.wd, %i.dr
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ak, %.lr.ph676.i
  %indvars.iv743.i = phi i64 [ 0, %.lr.ph676.i ], [ %indvars.iv.next744.i, %bb.ak ] ; 2 uses
  %.0557674.i = phi i32 [ %i.ho, %.lr.ph676.i ], [ %.1558.i, %bb.ak ] ; 3 uses
  %.0562673.i = phi i32 [ 0, %.lr.ph676.i ], [ %i.wj, %bb.ak ] ; 2 uses
  %.0564672.i = phi i8 [ 0, %.lr.ph676.i ], [ %.1565.i, %bb.ak ]
  %.not620.i = icmp eq i32 %.0562673.i, 0
  br i1 %.not620.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.wf = add i32 %.0557674.i, 1
  %i.wg = zext i32 %.0557674.i to i64
  %i.wh = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.wg
  %i.wi = load i8, ptr %i.wh, align 1, !tbaa !77
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.1565.i = phi i8 [ %.0564672.i, %bb.ai ], [ %i.wi, %bb.aj ] ; 2 uses
  %.1563.i = phi i32 [ %.0562673.i, %bb.ai ], [ 8, %bb.aj ]
  %.1558.i = phi i32 [ %.0557674.i, %bb.ai ], [ %i.wf, %bb.aj ]
  %i.wj = sub i32 %.1563.i, %i.be                 ; 2 uses
  %i.wk = zext i8 %.1565.i to i32
  %i.wl = lshr i32 %i.wk, %i.wj
  %i.wm = and i32 %i.wl, %i.dp
  %i.wn = zext nneg i32 %i.wm to i64
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %.0523.i, i64 %i.wn
  %i.wp = load i32, ptr %i.wo, align 1, !tbaa !77
  %i.wq = add i64 %indvars.iv743.i, %i.we
  %i.wr = and i64 %i.wq, 4294967295
  %i.ws = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.wr
  store i32 %i.wp, ptr %i.ws, align 4, !tbaa !57
  %indvars.iv.next744.i = add nuw nsw i64 %indvars.iv743.i, 1 ; 2 uses
  %exitcond746.not.i = icmp eq i64 %indvars.iv.next744.i, %i.dr
  br i1 %exitcond746.not.i, label %.loopexit655.i, label %bb.ai

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv738.i = phi i64 [ %indvars.iv.next739.i, %scalar.ph ], [ %indvars.iv738.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.2559669.i = phi i32 [ %i.xx, %scalar.ph ], [ %.2559669.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.wt = zext i32 %.2559669.i to i64
  %i.wu = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.wt
  %i.wv = load i8, ptr %i.wu, align 1, !tbaa !77
  %i.ww = zext i8 %i.wv to i32                    ; 2 uses
  %i.wx = and i32 %i.ww, 31                       ; 2 uses
  %i.wy = lshr i32 %i.ww, 5
  %i.wz = or disjoint i32 %.2559669.i, 1
  %i.xa = zext i32 %i.wz to i64
  %i.xb = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.xa
  %i.xc = load i8, ptr %i.xb, align 1, !tbaa !77
  %i.xd = zext i8 %i.xc to i32                    ; 2 uses
  %i.xe = shl nuw nsw i32 %i.xd, 3                ; 2 uses
  %i.xf = and i32 %i.xe, 24
  %i.xg = or disjoint i32 %i.xf, %i.wy            ; 2 uses
  %i.xh = shl nuw nsw i32 %i.wx, 3
  %i.xi = lshr i32 %i.wx, 2
  %i.xj = or disjoint i32 %i.xh, %i.xi
  %i.xk = shl nuw nsw i32 %i.xg, 14
  %i.xl = shl nuw nsw i32 %i.xg, 9
  %i.xm = and i32 %i.xl, 14336
  %i.xn = or disjoint i32 %i.xm, %i.xk
  %i.xo = and i32 %i.xe, 2016
  %i.xp = lshr i32 %i.xd, 2
  %i.xq = or i32 %i.xo, %i.xp
  %i.xr = shl nuw nsw i32 %i.xq, 17
  %i.xs = or i32 %i.xr, %i.xn
  %i.xt = or disjoint i32 %i.xs, %i.xj
  %i.xu = add i64 %indvars.iv738.i, %i.td
  %i.xv = and i64 %i.xu, 4294967295
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.xv
  store i32 %i.xt, ptr %i.xw, align 4, !tbaa !57
  %i.xx = add i32 %.2559669.i, 2
  %indvars.iv.next739.i = add nuw nsw i64 %indvars.iv738.i, 1 ; 2 uses
  %exitcond742.not.i = icmp eq i64 %indvars.iv.next739.i, %i.dr
  br i1 %exitcond742.not.i, label %.loopexit655.i, label %scalar.ph, !llvm.loop !114

scalar.ph82:                                      ; preds = %scalar.ph82.preheader, %scalar.ph82
  %indvars.iv733.i = phi i64 [ %indvars.iv.next734.i, %scalar.ph82 ], [ %indvars.iv733.i.ph, %scalar.ph82.preheader ] ; 2 uses
  %.3560666.i = phi i32 [ %i.yt, %scalar.ph82 ], [ %.3560666.i.ph, %scalar.ph82.preheader ] ; 4 uses
  %i.xy = zext i32 %.3560666.i to i64
  %i.xz = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.xy
  %i.ya = load i8, ptr %i.xz, align 1, !tbaa !77
  %i.yb = zext i8 %i.ya to i32
  %i.yc = add i32 %.3560666.i, 1
  %i.yd = zext i32 %i.yc to i64
  %i.ye = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.yd
  %i.yf = load i8, ptr %i.ye, align 1, !tbaa !77
  %i.yg = zext i8 %i.yf to i32
  %i.yh = shl nuw nsw i32 %i.yg, 8
  %i.yi = or disjoint i32 %i.yh, %i.yb
  %i.yj = add i32 %.3560666.i, 2
  %i.yk = zext i32 %i.yj to i64
  %i.yl = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.yk
  %i.ym = load i8, ptr %i.yl, align 1, !tbaa !77
  %i.yn = zext i8 %i.ym to i32
  %i.yo = shl nuw nsw i32 %i.yn, 16
  %i.yp = or disjoint i32 %i.yi, %i.yo
  %i.yq = add i64 %indvars.iv733.i, %i.ps
  %i.yr = and i64 %i.yq, 4294967295
  %i.ys = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.yr
  store i32 %i.yp, ptr %i.ys, align 4, !tbaa !57
  %i.yt = add i32 %.3560666.i, 3
  %indvars.iv.next734.i = add nuw nsw i64 %indvars.iv733.i, 1 ; 2 uses
end_hunk_0
begin_hunk_1_@getmetrics:bb.a
  br i1 %exitcond1578.not, label %.preheader1137.preheader, label %scalar.ph29, !llvm.loop !137

.preheader1137.preheader:                         ; preds = %scalar.ph29, %middle.block36
  %invariant.gep1882 = getelementptr [4 x i8], ptr %1, i64 %i.i ; 5 uses
  %xtraiter = and i64 %i.i, 3                     ; 3 uses
  %unroll_iter = and i64 %i.i, 508
  br label %.preheader1137

.preheader1137:                                   ; preds = %.preheader1137, %.preheader1137.preheader
  %indvars.iv1579 = phi i64 [ 0, %.preheader1137.preheader ], [ %indvars.iv.next1580.3, %.preheader1137 ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader1137.preheader ], [ %niter.next.3, %.preheader1137 ]
  %i.us = mul nuw nsw i64 %indvars.iv1579, %i.i   ; 2 uses
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.us
  store i32 -16777216, ptr %i.ut, align 4, !tbaa !57
  %gep1883 = getelementptr [4 x i8], ptr %invariant.gep1882, i64 %i.us
  %i.uu = getelementptr i8, ptr %gep1883, i64 -4
  store i32 -16777216, ptr %i.uu, align 4, !tbaa !57
  %indvars.iv.next1580 = or disjoint i64 %indvars.iv1579, 1
  %i.uv = mul nuw nsw i64 %indvars.iv.next1580, %i.i ; 2 uses
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.uv
  store i32 -16777216, ptr %i.uw, align 4, !tbaa !57
  %gep1883.1 = getelementptr [4 x i8], ptr %invariant.gep1882, i64 %i.uv
  %i.ux = getelementptr i8, ptr %gep1883.1, i64 -4
  store i32 -16777216, ptr %i.ux, align 4, !tbaa !57
  %indvars.iv.next1580.1 = or disjoint i64 %indvars.iv1579, 2
  %i.uy = mul nuw nsw i64 %indvars.iv.next1580.1, %i.i ; 2 uses
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.uy
  store i32 -16777216, ptr %i.uz, align 4, !tbaa !57
  %gep1883.2 = getelementptr [4 x i8], ptr %invariant.gep1882, i64 %i.uy
  %i.va = getelementptr i8, ptr %gep1883.2, i64 -4
  store i32 -16777216, ptr %i.va, align 4, !tbaa !57
  %indvars.iv.next1580.2 = or disjoint i64 %indvars.iv1579, 3
  %i.vb = mul nuw nsw i64 %indvars.iv.next1580.2, %i.i ; 2 uses
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.vb
  store i32 -16777216, ptr %i.vc, align 4, !tbaa !57
  %gep1883.3 = getelementptr [4 x i8], ptr %invariant.gep1882, i64 %i.vb
  %i.vd = getelementptr i8, ptr %gep1883.3, i64 -4
  store i32 -16777216, ptr %i.vd, align 4, !tbaa !57
  %indvars.iv.next1580.3 = add nuw nsw i64 %indvars.iv1579, 4 ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader1136.preheader.unr-lcssa, label %.preheader1137

.preheader1136.preheader.unr-lcssa:               ; preds = %.preheader1137
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader1136.preheader, label %.preheader1137.epil.preheader

.preheader1137.epil.preheader:                    ; preds = %.preheader1136.preheader.unr-lcssa
  %lcmp.mod113 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod113)
  br label %.preheader1137.epil

.preheader1137.epil:                              ; preds = %.preheader1137.epil, %.preheader1137.epil.preheader
  %indvars.iv1579.epil = phi i64 [ %indvars.iv.next1580.3, %.preheader1137.epil.preheader ], [ %indvars.iv.next1580.epil, %.preheader1137.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader1137.epil.preheader ], [ %epil.iter.next, %.preheader1137.epil ]
  %i.ve = mul nuw nsw i64 %indvars.iv1579.epil, %i.i ; 2 uses
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ve
  store i32 -16777216, ptr %i.vf, align 4, !tbaa !57
  %gep1883.epil = getelementptr [4 x i8], ptr %invariant.gep1882, i64 %i.ve
  %i.vg = getelementptr i8, ptr %gep1883.epil, i64 -4
  store i32 -16777216, ptr %i.vg, align 4, !tbaa !57
  %indvars.iv.next1580.epil = add nuw nsw i64 %indvars.iv1579.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader1136.preheader, label %.preheader1137.epil, !llvm.loop !138

.preheader1136.preheader:                         ; preds = %.preheader1137.epil, %.preheader1136.preheader.unr-lcssa
  tail call fastcc void @makebmp(ptr noundef nonnull @.str.37, ptr noundef %3, i32 noundef %0, i32 noundef %0, ptr noundef %1)
  %i.vh = zext nneg i32 %0 to i64
  %wide.trip.count1596 = zext nneg i32 %i.on to i64 ; 2 uses
  %i.vi = shl nuw nsw i64 %i.i, 2
  %i.vj = shl nuw nsw i64 %i.i, 2
  %i.vk = getelementptr i8, ptr %1, i64 %i.vi
  br label %.preheader1136

.preheader1136:                                   ; preds = %.preheader1136.preheader, %._crit_edge1256
  %indvar = phi i64 [ 0, %.preheader1136.preheader ], [ %indvar.next, %._crit_edge1256 ] ; 2 uses
  %indvars.iv1593 = phi i64 [ 1, %.preheader1136.preheader ], [ %indvars.iv.next1594, %._crit_edge1256 ] ; 2 uses
  %i.vl = mul i64 %i.vj, %indvar
  %scevgep = getelementptr i8, ptr %i.vk, i64 %i.vl
  %i.vm = mul nuw nsw i64 %indvars.iv1593, %i.vh
  %load_initial = load i32, ptr %scevgep, align 4
  %i.vn = and i32 %load_initial, 255
  br label %.preheader1135

.preheader1133.preheader:                         ; preds = %._crit_edge1256
  %i.vo = zext nneg i32 %0 to i64                 ; 3 uses
  %wide.trip.count1610 = zext nneg i32 %i.on to i64 ; 2 uses
  %n.vec41 = and i64 %i.op, -4                    ; 3 uses
  %i.vp = or disjoint i64 %n.vec41, 1
  %cmp.n49 = icmp eq i64 %i.op, %n.vec41
  br label %.preheader1133

.preheader1135:                                   ; preds = %.preheader1136, %.preheader1135
  %store_forwarded = phi i32 [ %i.vn, %.preheader1136 ], [ %i.vt, %.preheader1135 ]
  %indvars.iv1588 = phi i64 [ 1, %.preheader1136 ], [ %indvars.iv.next1589, %.preheader1135 ] ; 2 uses
  %i.vq = add nuw nsw i64 %indvars.iv1588, %i.vm  ; 2 uses
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.vq ; 2 uses
  %i.vs = load i32, ptr %i.vr, align 4, !tbaa !57
  %i.vt = and i32 %i.vs, 255                      ; 3 uses
  %i.vu = shl nuw nsw i32 %i.vt, 1
  %i.vv = add nuw nsw i32 %i.vu, %store_forwarded
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.vq
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 4
  %i.vy = load i32, ptr %i.vx, align 4, !tbaa !57
  %i.vz = and i32 %i.vy, 255
  %i.wa = add nuw nsw i32 %i.vz, %i.vv
  %i.wb = shl nuw nsw i32 %i.wa, 6
  %i.wc = and i32 %i.wb, 130816
  %i.wd = or disjoint i32 %i.vt, %i.wc
  store i32 %i.wd, ptr %i.vr, align 4, !tbaa !57
  %indvars.iv.next1589 = add nuw nsw i64 %indvars.iv1588, 1 ; 2 uses
  %exitcond1592.not = icmp eq i64 %indvars.iv.next1589, %wide.trip.count1596
  br i1 %exitcond1592.not, label %._crit_edge1256, label %.preheader1135

._crit_edge1256:                                  ; preds = %.preheader1135
  %indvars.iv.next1594 = add nuw nsw i64 %indvars.iv1593, 1 ; 2 uses
  %exitcond1597.not = icmp eq i64 %indvars.iv.next1594, %wide.trip.count1596
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1597.not, label %.preheader1133.preheader, label %.preheader1136

.preheader1133:                                   ; preds = %.preheader1133.preheader, %._crit_edge1263
  %indvars.iv1607 = phi i64 [ 1, %.preheader1133.preheader ], [ %i.wj, %._crit_edge1263 ] ; 3 uses
  %i.we = mul nuw nsw i64 %indvars.iv1607, %i.vo
  %i.wf = add nsw i64 %indvars.iv1607, -1
  %i.wg = mul nuw nsw i64 %i.wf, %i.vo
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.wg ; 2 uses
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.we ; 2 uses
  %i.wj = add nuw nsw i64 %indvars.iv1607, 1      ; 3 uses
  %i.wk = mul nuw nsw i64 %i.wj, %i.vo
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.wk ; 2 uses
  br label %vector.body42

vector.body42:                                    ; preds = %vector.body42, %.preheader1133
  %index43 = phi i64 [ 0, %.preheader1133 ], [ %index.next47, %vector.body42 ] ; 2 uses
  %i.wm = or disjoint i64 %index43, 1             ; 3 uses
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %i.wh, i64 %i.wm
  %wide.load44 = load <4 x i32>, ptr %i.wn, align 4, !tbaa !57
  %i.wo = lshr <4 x i32> %wide.load44, splat (i32 8)
  %i.wp = and <4 x i32> %i.wo, splat (i32 255)
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %i.wi, i64 %i.wm ; 2 uses
  %wide.load45 = load <4 x i32>, ptr %i.wq, align 4, !tbaa !57
  %i.wr = lshr <4 x i32> %wide.load45, splat (i32 7)
  %i.ws = and <4 x i32> %i.wr, splat (i32 510)
  %i.wt = add nuw nsw <4 x i32> %i.ws, %i.wp
  %i.wu = getelementptr inbounds nuw [4 x i8], ptr %i.wl, i64 %i.wm
  %wide.load46 = load <4 x i32>, ptr %i.wu, align 4, !tbaa !57
  %i.wv = lshr <4 x i32> %wide.load46, splat (i32 8)
  %i.ww = and <4 x i32> %i.wv, splat (i32 255)
  %i.wx = add nuw nsw <4 x i32> %i.ww, %i.wt
  %i.wy = lshr <4 x i32> %i.wx, splat (i32 2)     ; 3 uses
  %i.wz = shl nuw nsw <4 x i32> %i.wy, splat (i32 8)
  %i.xa = shl nuw nsw <4 x i32> %i.wy, splat (i32 16)
  %i.xb = or <4 x i32> %i.xa, %i.wz
  %i.xc = or <4 x i32> %i.xb, %i.wy
  %i.xd = or <4 x i32> %i.xc, splat (i32 -16777216)
  store <4 x i32> %i.xd, ptr %i.wq, align 4, !tbaa !57
  %index.next47 = add nuw i64 %index43, 4         ; 2 uses
  %i.xe = icmp eq i64 %index.next47, %n.vec41
  br i1 %i.xe, label %middle.block48, label %vector.body42, !llvm.loop !140

middle.block48:                                   ; preds = %vector.body42
  br i1 %cmp.n49, label %._crit_edge1263, label %.preheader1132

.preheader1132:                                   ; preds = %middle.block48, %.preheader1132
  %indvars.iv1602 = phi i64 [ %indvars.iv.next1603, %.preheader1132 ], [ %i.vp, %middle.block48 ] ; 4 uses
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr %i.wh, i64 %indvars.iv1602
  %i.xg = load i32, ptr %i.xf, align 4, !tbaa !57
  %i.xh = lshr i32 %i.xg, 8
  %i.xi = and i32 %i.xh, 255
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %i.wi, i64 %indvars.iv1602 ; 2 uses
  %i.xk = load i32, ptr %i.xj, align 4, !tbaa !57
  %i.xl = lshr i32 %i.xk, 7
  %i.xm = and i32 %i.xl, 510
  %i.xn = add nuw nsw i32 %i.xm, %i.xi
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %i.wl, i64 %indvars.iv1602
  %i.xp = load i32, ptr %i.xo, align 4, !tbaa !57
  %i.xq = lshr i32 %i.xp, 8
  %i.xr = and i32 %i.xq, 255
  %i.xs = add nuw nsw i32 %i.xr, %i.xn
  %i.xt = lshr i32 %i.xs, 2                       ; 3 uses
  %i.xu = shl nuw nsw i32 %i.xt, 8
  %i.xv = shl nuw nsw i32 %i.xt, 16
  %i.xw = or i32 %i.xv, %i.xu
  %i.xx = or i32 %i.xw, %i.xt
  %i.xy = or i32 %i.xx, -16777216
  store i32 %i.xy, ptr %i.xj, align 4, !tbaa !57
  %indvars.iv.next1603 = add nuw nsw i64 %indvars.iv1602, 1 ; 2 uses
  %exitcond1606.not = icmp eq i64 %indvars.iv.next1603, %wide.trip.count1610
  br i1 %exitcond1606.not, label %._crit_edge1263, label %.preheader1132, !llvm.loop !141

._crit_edge1263:                                  ; preds = %.preheader1132, %middle.block48
  %exitcond1611.not = icmp eq i64 %i.wj, %wide.trip.count1610
  br i1 %exitcond1611.not, label %._crit_edge1267.split, label %.preheader1133

._crit_edge1267.split:                            ; preds = %._crit_edge1263
  tail call fastcc void @makebmp(ptr noundef nonnull @.str.38, ptr noundef %3, i32 noundef %0, i32 noundef %0, ptr noundef %1)
  %i.xz = sub nsw i32 %i.on, %i.h
  %wide.trip.count1620 = zext nneg i32 %i.h to i64
  %wide.trip.count1630 = zext nneg i32 %i.h to i64 ; 2 uses
  %i.ya = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %i.yb = add nsw i32 %i.h, -1
  %xtraiter114 = and i64 %wide.trip.count, 1
  %i.yc = icmp eq i64 %i.ya, 0
  %unroll_iter119 = and i64 %wide.trip.count, 126
  %lcmp.mod116.not = icmp eq i64 %xtraiter114, 0
  %lcmp.mod118 = trunc i32 %i.h to i1
  %min.iters.check65 = icmp samesign ult i32 %0, 48
  %i.yd = trunc nsw i64 %i.ya to i32              ; 2 uses
  %i.ye = icmp ugt i64 %i.ya, 4294967295
  %n.vec68 = and i64 %wide.trip.count, 120        ; 9 uses
  %i.yf = icmp eq i64 %n.vec68, 8
  %i.yg = icmp eq i64 %n.vec68, 16
  %i.yh = icmp eq i64 %n.vec68, 24
  %i.yi = icmp eq i64 %n.vec68, 32
  %i.yj = icmp eq i64 %n.vec68, 40
  %i.yk = icmp eq i64 %n.vec68, 48
  %i.yl = icmp eq i64 %n.vec68, 56
  %cmp.n80 = icmp eq i64 %n.vec68, %wide.trip.count
  %xtraiter121 = and i64 %wide.trip.count, 1
  %lcmp.mod122.not = icmp eq i64 %xtraiter121, 0
  %i.ym = add nsw i64 %wide.trip.count, -1
  %min.iters.check = icmp samesign ult i32 %0, 32
  %n.vec53 = and i64 %wide.trip.count, 120        ; 9 uses
  %i.yn = icmp eq i64 %n.vec53, 8
  %i.yo = icmp eq i64 %n.vec53, 16
  %i.yp = icmp eq i64 %n.vec53, 24
  %i.yq = icmp eq i64 %n.vec53, 32
  %i.yr = icmp eq i64 %n.vec53, 40
  %i.ys = icmp eq i64 %n.vec53, 48
  %i.yt = icmp eq i64 %n.vec53, 56
  %cmp.n62 = icmp eq i64 %n.vec53, %wide.trip.count
  br label %.preheader1131.split.us.preheader

.preheader1131.split.us.preheader:                ; preds = %.split.us, %._crit_edge1267.split
  %.88901289 = phi i32 [ 0, %._crit_edge1267.split ], [ %i.akv, %.split.us ] ; 10 uses
  %i.yu = add i32 %.88901289, -1
  %i.yv = mul i32 %0, %i.yu
  %i.yw = add i32 %i.yb, %.88901289
  %i.yx = mul i32 %0, %i.yw
  %i.yy = mul i32 %.88901289, %0                  ; 2 uses
  %i.yz = add i32 %i.yy, -1
  %i.za = add i32 %.88901289, -1
  %i.zb = mul i32 %i.za, %0                       ; 12 uses
  %i.zc = zext i32 %i.zb to i64
  %i.zd = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.zc
  %i.ze = add i32 %i.p, %.88901289
  %i.zf = mul i32 %i.ze, %0                       ; 11 uses
  %i.zg = xor i32 %i.yv, -1
  %i.zh = icmp ult i32 %i.zg, %i.yd
  %i.zi = xor i32 %i.yx, -1
  %i.zj = icmp ult i32 %i.zi, %i.yd
  %i.zk = or i1 %i.zj, %i.ye
  %i.zl = or i1 %i.zh, %i.zk
  %i.zm = zext i32 %i.zb to i64
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.zm ; 2 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 16
  %i.zp = zext i32 %i.zf to i64
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.zp ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 16
  %i.zs = add i32 %i.zb, 8
  %i.zt = zext i32 %i.zs to i64
  %i.zu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.zt ; 2 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 16
  %i.zw = add i32 %i.zf, 8
  %i.zx = zext i32 %i.zw to i64
  %i.zy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.zx ; 2 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 16
  %i.aaa = add i32 %i.zb, 16
  %i.aab = zext i32 %i.aaa to i64
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aab ; 2 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 16
  %i.aae = add i32 %i.zf, 16
  %i.aaf = zext i32 %i.aae to i64
  %i.aag = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aaf ; 2 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 16
  %i.aai = add i32 %i.zb, 24
  %i.aaj = zext i32 %i.aai to i64
  %i.aak = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aaj ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 16
  %i.aam = add i32 %i.zf, 24
  %i.aan = zext i32 %i.aam to i64
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aan ; 2 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 16
  %i.aaq = add i32 %i.zb, 32
  %i.aar = zext i32 %i.aaq to i64
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aar ; 2 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 16
  %i.aau = add i32 %i.zf, 32
  %i.aav = zext i32 %i.aau to i64
  %i.aaw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aav ; 2 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 16
  %i.aay = add i32 %i.zb, 40
  %i.aaz = zext i32 %i.aay to i64
  %i.aba = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aaz ; 2 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 16
  %i.abc = add i32 %i.zf, 40
  %i.abd = zext i32 %i.abc to i64
  %i.abe = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.abd ; 2 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 16
  %i.abg = add i32 %i.zb, 48
  %i.abh = zext i32 %i.abg to i64
  %i.abi = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.abh ; 2 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 16
  %i.abk = add i32 %i.zf, 48
  %i.abl = zext i32 %i.abk to i64
  %i.abm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.abl ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 16
  %i.abo = add i32 %i.zb, 56
  %i.abp = zext i32 %i.abo to i64
  %i.abq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.abp ; 2 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 16
  %i.abs = add i32 %i.zf, 56
  %i.abt = zext i32 %i.abs to i64
  %i.abu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.abt ; 2 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abu, i64 16
  br label %.preheader1131.split.us

.preheader1131.split.us:                          ; preds = %.preheader1131.split.us.preheader, %.loopexit1128.us
  %.81287.us = phi i32 [ %i.aie, %.loopexit1128.us ], [ 0, %.preheader1131.split.us.preheader ] ; 8 uses
  %i.abw = or i32 %.81287.us, %.88901289
  %or.cond11.us = icmp eq i32 %i.abw, 0
  br i1 %or.cond11.us, label %.preheader1126.us.us, label %bb.bl

bb.bl:                                            ; preds = %.preheader1131.split.us
  %.not971.us = icmp eq i32 %.81287.us, 0
  br i1 %.not971.us, label %.lr.ph1276.us.preheader, label %.lr.ph1271.us

.lr.ph1271.us:                                    ; preds = %bb.bl
  %i.abx = add i32 %i.yz, %.81287.us
  %i.aby = zext i32 %i.abx to i64
  %i.abz = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.aby
  %i.aca = load i32, ptr %i.abz, align 4, !tbaa !57 ; 2 uses
  br i1 %i.yc, label %.epil.preheader, label %.lr.ph1271.us.new

.lr.ph1271.us.new:                                ; preds = %.lr.ph1271.us, %.lr.ph1271.us.new
  %indvars.iv1612 = phi i64 [ %indvars.iv.next1613.1, %.lr.ph1271.us.new ], [ 0, %.lr.ph1271.us ] ; 3 uses
  %.28701269.us = phi i32 [ %i.adh, %.lr.ph1271.us.new ], [ %i.aca, %.lr.ph1271.us ]
  %niter120 = phi i64 [ %niter120.next.1, %.lr.ph1271.us.new ], [ 0, %.lr.ph1271.us ]
  %i.acb = trunc nuw nsw i64 %indvars.iv1612 to i32
  %i.acc = add i32 %.88901289, %i.acb
  %i.acd = mul i32 %i.acc, %0
  %i.ace = add i32 %i.acd, %.81287.us             ; 2 uses
  %i.acf = add i32 %i.ace, -1
  %i.acg = zext i32 %i.acf to i64
  %i.ach = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.acg
  %i.aci = load i32, ptr %i.ach, align 4, !tbaa !57
  %i.acj = and i32 %i.aci, 255
  %i.ack = add i32 %i.p, %i.ace
  %i.acl = zext i32 %i.ack to i64
  %i.acm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.acl
  %i.acn = load i32, ptr %i.acm, align 4, !tbaa !57
  %i.aco = and i32 %i.acn, 255
  %i.acp = trunc i64 %indvars.iv1612 to i32
  %i.acq = or disjoint i32 %i.acp, 1
  %i.acr = add i32 %.88901289, %i.acq
  %i.acs = mul i32 %i.acr, %0
  %i.act = add i32 %i.acs, %.81287.us             ; 2 uses
  %i.acu = add i32 %i.act, -1
  %i.acv = zext i32 %i.acu to i64
  %i.acw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.acv
  %i.acx = load i32, ptr %i.acw, align 4, !tbaa !57
  %i.acy = and i32 %i.acx, 255
  %i.acz = add i32 %.28701269.us, %i.aco
  %i.ada = add nuw nsw i32 %i.acj, %i.acy
  %i.adb = sub i32 %i.acz, %i.ada
  %i.adc = add i32 %i.p, %i.act
  %i.add = zext i32 %i.adc to i64
  %i.ade = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.add
  %i.adf = load i32, ptr %i.ade, align 4, !tbaa !57
  %i.adg = and i32 %i.adf, 255
  %i.adh = add i32 %i.adb, %i.adg                 ; 3 uses
  %indvars.iv.next1613.1 = add nuw nsw i64 %indvars.iv1612, 2 ; 2 uses
  %niter120.next.1 = add nuw nsw i64 %niter120, 2 ; 2 uses
  %niter120.ncmp.1 = icmp eq i64 %niter120.next.1, %unroll_iter119
  br i1 %niter120.ncmp.1, label %.loopexit1128.us.loopexit91.unr-lcssa, label %.lr.ph1271.us.new

.lr.ph1276.us.preheader:                          ; preds = %bb.bl
  %i.adi = load i32, ptr %i.zd, align 4, !tbaa !57 ; 2 uses
  %brmerge138.a = select i1 %min.iters.check65, i1 true, i1 %i.zl
  br i1 %brmerge138.a, label %.lr.ph1276.us.preheader89, label %vector.body69

vector.body69:                                    ; preds = %.lr.ph1276.us.preheader
  %i.adj = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.adi, i64 0
  %wide.load73.a = load <4 x i32>, ptr %i.zn, align 4, !tbaa !57
  %wide.load74.a = load <4 x i32>, ptr %i.zo, align 4, !tbaa !57
  %i.adk = and <4 x i32> %wide.load73.a, splat (i32 255)
  %i.adl = and <4 x i32> %wide.load74.a, splat (i32 255)
  %i.adm = sub <4 x i32> %i.adj, %i.adk
  %wide.load75.a = load <4 x i32>, ptr %i.zq, align 4, !tbaa !57
  %wide.load76 = load <4 x i32>, ptr %i.zr, align 4, !tbaa !57
  %i.adn = and <4 x i32> %wide.load75.a, splat (i32 255)
  %i.ado = and <4 x i32> %wide.load76, splat (i32 255)
  %i.adp = add <4 x i32> %i.adm, %i.adn           ; 2 uses
  %i.adq = sub nsw <4 x i32> %i.ado, %i.adl       ; 2 uses
  br i1 %i.yf, label %middle.block78, label %vector.body69.1

vector.body69.1:                                  ; preds = %vector.body69
  %wide.load73.1.a = load <4 x i32>, ptr %i.zu, align 4, !tbaa !57
  %wide.load74.1.a = load <4 x i32>, ptr %i.zv, align 4, !tbaa !57
  %i.adr = and <4 x i32> %wide.load73.1.a, splat (i32 255)
  %i.ads = and <4 x i32> %wide.load74.1.a, splat (i32 255)
  %i.adt = sub <4 x i32> %i.adp, %i.adr
  %i.adu = sub nsw <4 x i32> %i.adq, %i.ads
  %wide.load75.1.a = load <4 x i32>, ptr %i.zy, align 4, !tbaa !57
  %wide.load76.1 = load <4 x i32>, ptr %i.zz, align 4, !tbaa !57
  %i.adv = and <4 x i32> %wide.load75.1.a, splat (i32 255)
  %i.adw = and <4 x i32> %wide.load76.1, splat (i32 255)
  %i.adx = add <4 x i32> %i.adt, %i.adv           ; 2 uses
  %i.ady = add nsw <4 x i32> %i.adu, %i.adw       ; 2 uses
  br i1 %i.yg, label %middle.block78, label %vector.body69.2

vector.body69.2:                                  ; preds = %vector.body69.1
  %wide.load73.2.a = load <4 x i32>, ptr %i.aac, align 4, !tbaa !57
  %wide.load74.2.a = load <4 x i32>, ptr %i.aad, align 4, !tbaa !57
  %i.adz = and <4 x i32> %wide.load73.2.a, splat (i32 255)
  %i.aea = and <4 x i32> %wide.load74.2.a, splat (i32 255)
  %i.aeb = sub <4 x i32> %i.adx, %i.adz
  %i.aec = sub nsw <4 x i32> %i.ady, %i.aea
  %wide.load75.2.a = load <4 x i32>, ptr %i.aag, align 4, !tbaa !57
  %wide.load76.2 = load <4 x i32>, ptr %i.aah, align 4, !tbaa !57
  %i.aed = and <4 x i32> %wide.load75.2.a, splat (i32 255)
  %i.aee = and <4 x i32> %wide.load76.2, splat (i32 255)
  %i.aef = add <4 x i32> %i.aeb, %i.aed           ; 2 uses
  %i.aeg = add nsw <4 x i32> %i.aec, %i.aee       ; 2 uses
  br i1 %i.yh, label %middle.block78, label %vector.body69.3

vector.body69.3:                                  ; preds = %vector.body69.2
  %wide.load73.3.a = load <4 x i32>, ptr %i.aak, align 4, !tbaa !57
  %wide.load74.3.a = load <4 x i32>, ptr %i.aal, align 4, !tbaa !57
  %i.aeh = and <4 x i32> %wide.load73.3.a, splat (i32 255)
  %i.aei = and <4 x i32> %wide.load74.3.a, splat (i32 255)
  %i.aej = sub <4 x i32> %i.aef, %i.aeh
  %i.aek = sub nsw <4 x i32> %i.aeg, %i.aei
  %wide.load75.3.a = load <4 x i32>, ptr %i.aao, align 4, !tbaa !57
  %wide.load76.3 = load <4 x i32>, ptr %i.aap, align 4, !tbaa !57
  %i.ael = and <4 x i32> %wide.load75.3.a, splat (i32 255)
  %i.aem = and <4 x i32> %wide.load76.3, splat (i32 255)
  %i.aen = add <4 x i32> %i.aej, %i.ael           ; 2 uses
  %i.aeo = add <4 x i32> %i.aek, %i.aem           ; 2 uses
  br i1 %i.yi, label %middle.block78, label %vector.body69.4

vector.body69.4:                                  ; preds = %vector.body69.3
  %wide.load73.4.a = load <4 x i32>, ptr %i.aas, align 4, !tbaa !57
  %wide.load74.4.a = load <4 x i32>, ptr %i.aat, align 4, !tbaa !57
  %i.aep = and <4 x i32> %wide.load73.4.a, splat (i32 255)
  %i.aeq = and <4 x i32> %wide.load74.4.a, splat (i32 255)
  %i.aer = sub <4 x i32> %i.aen, %i.aep
  %i.aes = sub <4 x i32> %i.aeo, %i.aeq
  %wide.load75.4.a = load <4 x i32>, ptr %i.aaw, align 4, !tbaa !57
end_hunk_1

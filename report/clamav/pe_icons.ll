Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/pe_icons?download=true
inline.NumInlined: 21
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 27
begin_hunk_0_@icon_scan_cb:bb.a
  %narrow = add nuw nsw i32 %i.du, %i.cm
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
  %.val.i621.i = load ptr, ptr %i.fg, align 8, !tbaa !115
  %i.fh = getelementptr i8, ptr %i.l, i64 72
  %.val3.i622.i = load i64, ptr %i.fh, align 8, !tbaa !116
  %i.fi = ptrtoint ptr %.0528.i to i64
  %i.fj = ptrtoint ptr %.val.i621.i to i64
  %i.fk = add i64 %.val3.i622.i, %i.fj
  %i.fl = sub i64 %i.fi, %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !117
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
  %i.gb = mul i64 %indvars.iv747.i, %i.ek         ; 3 uses
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
  %i.gs = mul i64 %indvars.iv747.i, %i.ec         ; 2 uses
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
  %i.hi = trunc i64 %indvars.iv747.i to i32
  %i.hj = mul i32 %narrow, %i.hi
  %i.hk = trunc i64 %indvars.iv747.i to i32
  %i.hl = mul i32 %i.cn, %i.hk                    ; 19 uses
  switch i16 %.14..14..14..14..14..i, label %.loopexit655.i [
    i16 1, label %.lr.ph676.i
    i16 4, label %.lr.ph676.i
    i16 8, label %.lr.ph676.i
    i16 16, label %.lr.ph671.i
    i16 24, label %.lr.ph668.i
    i16 32, label %.lr.ph.i
  ]

.lr.ph.i:                                         ; preds = %bb.ah
  %i.hm = xor i64 %indvars.iv747.i, -1
  %i.hn = add nsw i64 %i.hm, %i.dq
  %i.ho = mul i64 %i.hn, %i.dr                    ; 2 uses
  br i1 %min.iters.check99, label %scalar.ph98.preheader, label %vector.scevcheck84

vector.scevcheck84:                               ; preds = %.lr.ph.i
  %i.hp = xor i32 %i.ga, -1
  %i.hq = icmp ult i32 %i.hp, %i.eo
  %i.hr = xor i32 %i.gc, -4
  %i.hs = icmp ult i32 %i.hr, %mul.result86
  %i.ht = xor i32 %i.hl, -1
  %i.hu = icmp ugt i32 %mul.result86, %i.ht
  %i.hv = or i1 %i.hu, %mul.overflow87
  %i.hw = xor i32 %i.gd, -2
  %i.hx = icmp ult i32 %i.hw, %mul.result86
  %i.hy = xor i32 %i.ge, -3
  %i.hz = icmp ult i32 %i.hy, %mul.result86
  %i.ia = or i1 %i.hs, %i.hq
  %i.ib = or i1 %i.ia, %i.hv
  %i.ic = or i1 %i.hx, %i.ib
  %i.id = or i1 %i.hz, %i.ic
  br i1 %i.id, label %scalar.ph98.preheader, label %vector.memcheck88

vector.memcheck88:                                ; preds = %vector.scevcheck84
  %bound095 = icmp ult ptr %scevgep89, %scevgep94
  %bound196 = icmp ult ptr %scevgep92, %scevgep91
  %found.conflict97 = and i1 %bound095, %bound196
  br i1 %found.conflict97, label %scalar.ph98.preheader, label %vector.ph100

vector.ph100:                                     ; preds = %vector.memcheck88
  %i.ie = add i32 %i.hl, %i.er
  %i.if = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.0555679.i, i64 0
  br label %vector.body102

vector.body102:                                   ; preds = %vector.body102, %vector.ph100
  %index103 = phi i64 [ 0, %vector.ph100 ], [ %index.next105, %vector.body102 ] ; 3 uses
  %vec.phi = phi <4 x i32> [ %i.if, %vector.ph100 ], [ %i.op, %vector.body102 ]
  %vec.phi104 = phi <4 x i32> [ zeroinitializer, %vector.ph100 ], [ %i.oq, %vector.body102 ]
  %i.ig = trunc i64 %index103 to i32
  %i.ih = shl i32 %i.ig, 2
  %i.ii = add i32 %i.hl, %i.ih                    ; 32 uses
  %i.ij = add i32 %i.ii, 4
  %i.ik = add i32 %i.ii, 8
  %i.il = add i32 %i.ii, 12
  %i.im = add i32 %i.ii, 16
  %i.in = add i32 %i.ii, 20
  %i.io = add i32 %i.ii, 24
  %i.ip = add i32 %i.ii, 28
  %i.iq = or disjoint i32 %i.ii, 3
  %7 = add i32 %i.ii, 7
  %8 = add i32 %i.ii, 11
  %9 = add i32 %i.ii, 15
  %10 = add i32 %i.ii, 19
  %11 = add i32 %i.ii, 23
  %12 = add i32 %i.ii, 27
  %13 = add i32 %i.ii, 31
  %i.ir = zext i32 %i.iq to i64
  %i.is = zext i32 %7 to i64
  %i.it = zext i32 %8 to i64
  %i.iu = zext i32 %9 to i64
  %i.iv = zext i32 %10 to i64
  %i.iw = zext i32 %11 to i64
  %i.ix = zext i32 %12 to i64
  %i.iy = zext i32 %13 to i64
  %i.iz = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ir
  %i.ja = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.is
  %i.jb = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.it
  %i.jc = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.iu
  %i.jd = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.iv
  %i.je = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.iw
  %i.jf = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ix
  %i.jg = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.iy
  %i.jh = load i8, ptr %i.iz, align 1, !tbaa !74, !alias.scope !118
  %i.ji = load i8, ptr %i.ja, align 1, !tbaa !74, !alias.scope !118
  %i.jj = load i8, ptr %i.jb, align 1, !tbaa !74, !alias.scope !118
  %i.jk = load i8, ptr %i.jc, align 1, !tbaa !74, !alias.scope !118
  %i.jl = insertelement <4 x i8> poison, i8 %i.jh, i64 0
  %i.jm = insertelement <4 x i8> %i.jl, i8 %i.ji, i64 1
  %i.jn = insertelement <4 x i8> %i.jm, i8 %i.jj, i64 2
  %i.jo = insertelement <4 x i8> %i.jn, i8 %i.jk, i64 3
  %i.jp = load i8, ptr %i.jd, align 1, !tbaa !74, !alias.scope !118
  %i.jq = load i8, ptr %i.je, align 1, !tbaa !74, !alias.scope !118
  %i.jr = load i8, ptr %i.jf, align 1, !tbaa !74, !alias.scope !118
  %i.js = load i8, ptr %i.jg, align 1, !tbaa !74, !alias.scope !118
  %i.jt = insertelement <4 x i8> poison, i8 %i.jp, i64 0
  %i.ju = insertelement <4 x i8> %i.jt, i8 %i.jq, i64 1
  %i.jv = insertelement <4 x i8> %i.ju, i8 %i.jr, i64 2
  %i.jw = insertelement <4 x i8> %i.jv, i8 %i.js, i64 3
  %i.jx = zext <4 x i8> %i.jo to <4 x i32>
  %i.jy = zext <4 x i8> %i.jw to <4 x i32>
  %i.jz = shl nuw <4 x i32> %i.jx, splat (i32 24) ; 2 uses
  %i.ka = shl nuw <4 x i32> %i.jy, splat (i32 24) ; 2 uses
  %i.kb = zext i32 %i.ii to i64
  %i.kc = zext i32 %i.ij to i64
  %i.kd = zext i32 %i.ik to i64
  %i.ke = zext i32 %i.il to i64
  %i.kf = zext i32 %i.im to i64
  %i.kg = zext i32 %i.in to i64
  %i.kh = zext i32 %i.io to i64
  %i.ki = zext i32 %i.ip to i64
  %i.kj = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.kb
  %i.kk = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.kc
  %i.kl = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.kd
  %i.km = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ke
  %i.kn = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.kf
  %i.ko = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.kg
  %i.kp = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.kh
  %i.kq = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ki
  %i.kr = load i8, ptr %i.kj, align 1, !tbaa !74, !alias.scope !118
  %i.ks = load i8, ptr %i.kk, align 1, !tbaa !74, !alias.scope !118
  %i.kt = load i8, ptr %i.kl, align 1, !tbaa !74, !alias.scope !118
  %i.ku = load i8, ptr %i.km, align 1, !tbaa !74, !alias.scope !118
  %i.kv = insertelement <4 x i8> poison, i8 %i.kr, i64 0
  %i.kw = insertelement <4 x i8> %i.kv, i8 %i.ks, i64 1
  %i.kx = insertelement <4 x i8> %i.kw, i8 %i.kt, i64 2
  %i.ky = insertelement <4 x i8> %i.kx, i8 %i.ku, i64 3
  %i.kz = load i8, ptr %i.kn, align 1, !tbaa !74, !alias.scope !118
  %i.la = load i8, ptr %i.ko, align 1, !tbaa !74, !alias.scope !118
  %i.lb = load i8, ptr %i.kp, align 1, !tbaa !74, !alias.scope !118
  %i.lc = load i8, ptr %i.kq, align 1, !tbaa !74, !alias.scope !118
  %i.ld = insertelement <4 x i8> poison, i8 %i.kz, i64 0
  %i.le = insertelement <4 x i8> %i.ld, i8 %i.la, i64 1
  %i.lf = insertelement <4 x i8> %i.le, i8 %i.lb, i64 2
  %i.lg = insertelement <4 x i8> %i.lf, i8 %i.lc, i64 3
  %i.lh = zext <4 x i8> %i.ky to <4 x i32>
  %i.li = zext <4 x i8> %i.lg to <4 x i32>
  %i.lj = or disjoint i32 %i.ii, 1
  %14 = add i32 %i.ii, 5
  %15 = add i32 %i.ii, 9
  %16 = add i32 %i.ii, 13
  %17 = add i32 %i.ii, 17
  %18 = add i32 %i.ii, 21
  %19 = add i32 %i.ii, 25
  %20 = add i32 %i.ii, 29
  %i.lk = zext i32 %i.lj to i64
  %i.ll = zext i32 %14 to i64
  %i.lm = zext i32 %15 to i64
  %i.ln = zext i32 %16 to i64
  %i.lo = zext i32 %17 to i64
  %i.lp = zext i32 %18 to i64
  %i.lq = zext i32 %19 to i64
  %i.lr = zext i32 %20 to i64
  %i.ls = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.lk
  %i.lt = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ll
  %i.lu = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.lm
  %i.lv = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ln
  %i.lw = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.lo
  %i.lx = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.lp
  %i.ly = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.lq
  %i.lz = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.lr
  %i.ma = load i8, ptr %i.ls, align 1, !tbaa !74, !alias.scope !118
  %i.mb = load i8, ptr %i.lt, align 1, !tbaa !74, !alias.scope !118
  %i.mc = load i8, ptr %i.lu, align 1, !tbaa !74, !alias.scope !118
  %i.md = load i8, ptr %i.lv, align 1, !tbaa !74, !alias.scope !118
  %i.me = insertelement <4 x i8> poison, i8 %i.ma, i64 0
  %i.mf = insertelement <4 x i8> %i.me, i8 %i.mb, i64 1
  %i.mg = insertelement <4 x i8> %i.mf, i8 %i.mc, i64 2
  %i.mh = insertelement <4 x i8> %i.mg, i8 %i.md, i64 3
  %i.mi = load i8, ptr %i.lw, align 1, !tbaa !74, !alias.scope !118
  %i.mj = load i8, ptr %i.lx, align 1, !tbaa !74, !alias.scope !118
  %i.mk = load i8, ptr %i.ly, align 1, !tbaa !74, !alias.scope !118
  %i.ml = load i8, ptr %i.lz, align 1, !tbaa !74, !alias.scope !118
  %i.mm = insertelement <4 x i8> poison, i8 %i.mi, i64 0
  %i.mn = insertelement <4 x i8> %i.mm, i8 %i.mj, i64 1
  %i.mo = insertelement <4 x i8> %i.mn, i8 %i.mk, i64 2
  %i.mp = insertelement <4 x i8> %i.mo, i8 %i.ml, i64 3
  %i.mq = zext <4 x i8> %i.mh to <4 x i32>
  %i.mr = zext <4 x i8> %i.mp to <4 x i32>
  %i.ms = shl nuw nsw <4 x i32> %i.mq, splat (i32 8)
  %i.mt = shl nuw nsw <4 x i32> %i.mr, splat (i32 8)
  %i.mu = or disjoint i32 %i.ii, 2
  %21 = add i32 %i.ii, 6
  %22 = add i32 %i.ii, 10
  %23 = add i32 %i.ii, 14
  %24 = add i32 %i.ii, 18
  %25 = add i32 %i.ii, 22
  %26 = add i32 %i.ii, 26
  %27 = add i32 %i.ii, 30
  %i.mv = zext i32 %i.mu to i64
  %i.mw = zext i32 %21 to i64
  %i.mx = zext i32 %22 to i64
  %i.my = zext i32 %23 to i64
  %i.mz = zext i32 %24 to i64
  %i.na = zext i32 %25 to i64
  %i.nb = zext i32 %26 to i64
  %i.nc = zext i32 %27 to i64
  %i.nd = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.mv
  %i.ne = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.mw
  %i.nf = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.mx
  %i.ng = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.my
  %i.nh = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.mz
  %i.ni = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.na
  %i.nj = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.nb
  %i.nk = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.nc
  %i.nl = load i8, ptr %i.nd, align 1, !tbaa !74, !alias.scope !118
  %i.nm = load i8, ptr %i.ne, align 1, !tbaa !74, !alias.scope !118
  %i.nn = load i8, ptr %i.nf, align 1, !tbaa !74, !alias.scope !118
  %i.no = load i8, ptr %i.ng, align 1, !tbaa !74, !alias.scope !118
  %i.np = insertelement <4 x i8> poison, i8 %i.nl, i64 0
  %i.nq = insertelement <4 x i8> %i.np, i8 %i.nm, i64 1
  %i.nr = insertelement <4 x i8> %i.nq, i8 %i.nn, i64 2
  %i.ns = insertelement <4 x i8> %i.nr, i8 %i.no, i64 3
  %i.nt = load i8, ptr %i.nh, align 1, !tbaa !74, !alias.scope !118
  %i.nu = load i8, ptr %i.ni, align 1, !tbaa !74, !alias.scope !118
  %i.nv = load i8, ptr %i.nj, align 1, !tbaa !74, !alias.scope !118
  %i.nw = load i8, ptr %i.nk, align 1, !tbaa !74, !alias.scope !118
  %i.nx = insertelement <4 x i8> poison, i8 %i.nt, i64 0
  %i.ny = insertelement <4 x i8> %i.nx, i8 %i.nu, i64 1
  %i.nz = insertelement <4 x i8> %i.ny, i8 %i.nv, i64 2
  %i.oa = insertelement <4 x i8> %i.nz, i8 %i.nw, i64 3
  %i.ob = zext <4 x i8> %i.ns to <4 x i32>
  %i.oc = zext <4 x i8> %i.oa to <4 x i32>
  %i.od = shl nuw nsw <4 x i32> %i.ob, splat (i32 16)
  %i.oe = shl nuw nsw <4 x i32> %i.oc, splat (i32 16)
  %i.of = or disjoint <4 x i32> %i.ms, %i.lh
  %i.og = or disjoint <4 x i32> %i.mt, %i.li
  %i.oh = or disjoint <4 x i32> %i.of, %i.od
  %i.oi = or disjoint <4 x i32> %i.og, %i.oe
  %i.oj = or disjoint <4 x i32> %i.oh, %i.jz
  %i.ok = or disjoint <4 x i32> %i.oi, %i.ka
  %i.ol = add i64 %index103, %i.ho
  %i.om = and i64 %i.ol, 4294967295
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.om ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 16
  store <4 x i32> %i.oj, ptr %i.on, align 4, !tbaa !56, !alias.scope !119, !noalias !118
  store <4 x i32> %i.ok, ptr %i.oo, align 4, !tbaa !56, !alias.scope !119, !noalias !118
  %i.op = or <4 x i32> %i.jz, %vec.phi            ; 2 uses
  %i.oq = or <4 x i32> %i.ka, %vec.phi104         ; 2 uses
  %index.next105 = add nuw i64 %index103, 8       ; 2 uses
  %i.or = icmp eq i64 %index.next105, %n.vec101
  br i1 %i.or, label %middle.block106, label %vector.body102, !llvm.loop !97

middle.block106:                                  ; preds = %vector.body102
  %bin.rdx = or <4 x i32> %i.oq, %i.op
  %i.os = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n107, label %.loopexit655.i, label %scalar.ph98.preheader

scalar.ph98.preheader:                            ; preds = %vector.memcheck88, %vector.scevcheck84, %.lr.ph.i, %middle.block106
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck88 ], [ 0, %vector.scevcheck84 ], [ 0, %.lr.ph.i ], [ %n.vec101, %middle.block106 ]
  %.4552665.i.ph = phi i32 [ %i.hl, %vector.memcheck88 ], [ %i.hl, %vector.scevcheck84 ], [ %i.hl, %.lr.ph.i ], [ %i.ie, %middle.block106 ]
  %.1556664.i.ph = phi i32 [ %.0555679.i, %vector.memcheck88 ], [ %.0555679.i, %vector.scevcheck84 ], [ %.0555679.i, %.lr.ph.i ], [ %i.os, %middle.block106 ]
  br label %scalar.ph98

.lr.ph668.i:                                      ; preds = %bb.ah
  %i.ot = xor i64 %indvars.iv747.i, -1
  %i.ou = add nsw i64 %i.ot, %i.dq
  %i.ov = mul i64 %i.ou, %i.dr                    ; 2 uses
  br i1 %min.iters.check74, label %scalar.ph73.preheader, label %vector.scevcheck59

vector.scevcheck59:                               ; preds = %.lr.ph668.i
  %i.ow = xor i32 %i.gr, -1
  %i.ox = icmp ult i32 %i.ow, %i.es
  %i.oy = xor i32 %i.hl, -1
  %i.oz = icmp ugt i32 %mul.result61, %i.oy
  %i.pa = or i1 %i.oz, %i.eu
  %i.pb = xor i32 %i.gt, -2
  %i.pc = icmp ult i32 %i.pb, %mul.result61
  %.reass = or i1 %i.pc, %invariant.op
  %i.pd = xor i32 %i.gu, -3
  %i.pe = icmp ult i32 %i.pd, %mul.result61
  %i.pf = or i1 %i.pa, %i.ox
  %i.pg = or i1 %i.pf, %.reass
  %i.ph = or i1 %i.pe, %i.pg
  br i1 %i.ph, label %scalar.ph73.preheader, label %vector.memcheck63

vector.memcheck63:                                ; preds = %vector.scevcheck59
  %bound070 = icmp ult ptr %scevgep64, %scevgep69
  %bound171 = icmp ult ptr %scevgep67, %scevgep66
  %found.conflict72 = and i1 %bound070, %bound171
  br i1 %found.conflict72, label %scalar.ph73.preheader, label %vector.ph75

vector.ph75:                                      ; preds = %vector.memcheck63
  %i.pi = add i32 %i.hl, %i.ex
  br label %vector.body77

vector.body77:                                    ; preds = %vector.body77, %vector.ph75
  %index78 = phi i64 [ 0, %vector.ph75 ], [ %index.next79, %vector.body77 ] ; 3 uses
  %i.pj = trunc i64 %index78 to i32
  %i.pk = mul i32 %i.pj, 3
  %i.pl = add i32 %i.hl, %i.pk                    ; 12 uses
  %i.pm = or disjoint i32 %i.pl, 3
  %i.pn = add i32 %i.pl, 6
  %i.po = add i32 %i.pl, 9
  %i.pp = zext i32 %i.pl to i64
  %i.pq = zext i32 %i.pm to i64
  %i.pr = zext i32 %i.pn to i64
  %i.ps = zext i32 %i.po to i64
  %i.pt = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.pp
  %i.pu = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.pq
  %i.pv = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.pr
  %i.pw = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ps
  %i.px = load i8, ptr %i.pt, align 1, !tbaa !74, !alias.scope !120
  %i.py = load i8, ptr %i.pu, align 1, !tbaa !74, !alias.scope !120
  %i.pz = load i8, ptr %i.pv, align 1, !tbaa !74, !alias.scope !120
  %i.qa = load i8, ptr %i.pw, align 1, !tbaa !74, !alias.scope !120
  %i.qb = insertelement <4 x i8> poison, i8 %i.px, i64 0
  %i.qc = insertelement <4 x i8> %i.qb, i8 %i.py, i64 1
  %i.qd = insertelement <4 x i8> %i.qc, i8 %i.pz, i64 2
  %i.qe = insertelement <4 x i8> %i.qd, i8 %i.qa, i64 3
  %i.qf = zext <4 x i8> %i.qe to <4 x i32>
  %i.qg = or disjoint i32 %i.pl, 1
  %i.qh = add i32 %i.pl, 4
  %i.qi = add i32 %i.pl, 7
  %i.qj = add i32 %i.pl, 10
  %i.qk = zext i32 %i.qg to i64
  %i.ql = zext i32 %i.qh to i64
  %i.qm = zext i32 %i.qi to i64
  %i.qn = zext i32 %i.qj to i64
  %i.qo = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.qk
  %i.qp = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ql
  %i.qq = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.qm
  %i.qr = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.qn
  %i.qs = load i8, ptr %i.qo, align 1, !tbaa !74, !alias.scope !120
  %i.qt = load i8, ptr %i.qp, align 1, !tbaa !74, !alias.scope !120
  %i.qu = load i8, ptr %i.qq, align 1, !tbaa !74, !alias.scope !120
  %i.qv = load i8, ptr %i.qr, align 1, !tbaa !74, !alias.scope !120
  %i.qw = insertelement <4 x i8> poison, i8 %i.qs, i64 0
  %i.qx = insertelement <4 x i8> %i.qw, i8 %i.qt, i64 1
  %i.qy = insertelement <4 x i8> %i.qx, i8 %i.qu, i64 2
  %i.qz = insertelement <4 x i8> %i.qy, i8 %i.qv, i64 3
  %i.ra = zext <4 x i8> %i.qz to <4 x i32>
  %i.rb = shl nuw nsw <4 x i32> %i.ra, splat (i32 8)
  %i.rc = or disjoint <4 x i32> %i.rb, %i.qf
  %i.rd = or disjoint i32 %i.pl, 2
  %i.re = add i32 %i.pl, 5
  %i.rf = add i32 %i.pl, 8
  %i.rg = add i32 %i.pl, 11
  %i.rh = zext i32 %i.rd to i64
  %i.ri = zext i32 %i.re to i64
  %i.rj = zext i32 %i.rf to i64
  %i.rk = zext i32 %i.rg to i64
  %i.rl = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.rh
  %i.rm = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ri
  %i.rn = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.rj
  %i.ro = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.rk
  %i.rp = load i8, ptr %i.rl, align 1, !tbaa !74, !alias.scope !120
  %i.rq = load i8, ptr %i.rm, align 1, !tbaa !74, !alias.scope !120
  %i.rr = load i8, ptr %i.rn, align 1, !tbaa !74, !alias.scope !120
  %i.rs = load i8, ptr %i.ro, align 1, !tbaa !74, !alias.scope !120
  %i.rt = insertelement <4 x i8> poison, i8 %i.rp, i64 0
  %i.ru = insertelement <4 x i8> %i.rt, i8 %i.rq, i64 1
  %i.rv = insertelement <4 x i8> %i.ru, i8 %i.rr, i64 2
  %i.rw = insertelement <4 x i8> %i.rv, i8 %i.rs, i64 3
  %i.rx = zext <4 x i8> %i.rw to <4 x i32>
  %i.ry = shl nuw nsw <4 x i32> %i.rx, splat (i32 16)
  %i.rz = or disjoint <4 x i32> %i.rc, %i.ry
  %i.sa = add i64 %index78, %i.ov
  %i.sb = and i64 %i.sa, 4294967295
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.sb
  store <4 x i32> %i.rz, ptr %i.sc, align 4, !tbaa !56, !alias.scope !121, !noalias !120
  %index.next79 = add nuw i64 %index78, 4         ; 2 uses
  %i.sd = icmp eq i64 %index.next79, %n.vec76
  br i1 %i.sd, label %middle.block80, label %vector.body77, !llvm.loop !101

middle.block80:                                   ; preds = %vector.body77
  br i1 %cmp.n81, label %.loopexit655.i, label %scalar.ph73.preheader

scalar.ph73.preheader:                            ; preds = %vector.memcheck63, %vector.scevcheck59, %.lr.ph668.i, %middle.block80
  %indvars.iv733.i.ph = phi i64 [ 0, %vector.memcheck63 ], [ 0, %vector.scevcheck59 ], [ 0, %.lr.ph668.i ], [ %n.vec76, %middle.block80 ]
  %.3551667.i.ph = phi i32 [ %i.hl, %vector.memcheck63 ], [ %i.hl, %vector.scevcheck59 ], [ %i.hl, %.lr.ph668.i ], [ %i.pi, %middle.block80 ]
  br label %scalar.ph73

.lr.ph671.i:                                      ; preds = %bb.ah
  %i.se = xor i64 %indvars.iv747.i, -1
  %i.sf = add nsw i64 %i.se, %i.dq
  %i.sg = mul i64 %i.sf, %i.dr                    ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph671.i
  %i.sh = xor i32 %i.hh, -1
  %i.si = icmp ult i32 %i.sh, %i.ey
  %i.sj = xor i32 %i.hl, -1
  %i.sk = icmp ugt i32 %mul.result, %i.sj
  %i.sl = or i1 %i.sk, %i.fa
  %i.sm = xor i32 %i.hj, -2
  %i.sn = icmp ult i32 %i.sm, %mul.result
  %i.so = or i1 %i.si, %i.sl
  %i.sp = or i1 %i.sn, %i.so
  br i1 %i.sp, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %scevgep, %scevgep57
  %bound1 = icmp ult ptr %scevgep55, %scevgep54
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.sq = add i32 %i.hl, %i.fc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.sr = trunc i64 %index to i32
  %i.ss = shl i32 %i.sr, 1
  %i.st = add i32 %i.hl, %i.ss                    ; 8 uses
  %i.su = or disjoint i32 %i.st, 2
  %i.sv = add i32 %i.st, 4
  %i.sw = add i32 %i.st, 6
  %i.sx = zext i32 %i.st to i64
  %i.sy = zext i32 %i.su to i64
  %i.sz = zext i32 %i.sv to i64
  %i.ta = zext i32 %i.sw to i64
  %i.tb = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.sx
  %i.tc = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.sy
  %i.td = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.sz
  %i.te = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ta
  %i.tf = load i8, ptr %i.tb, align 1, !tbaa !74, !alias.scope !122
  %i.tg = load i8, ptr %i.tc, align 1, !tbaa !74, !alias.scope !122
  %i.th = load i8, ptr %i.td, align 1, !tbaa !74, !alias.scope !122
  %i.ti = load i8, ptr %i.te, align 1, !tbaa !74, !alias.scope !122
  %i.tj = insertelement <4 x i8> poison, i8 %i.tf, i64 0
  %i.tk = insertelement <4 x i8> %i.tj, i8 %i.tg, i64 1
  %i.tl = insertelement <4 x i8> %i.tk, i8 %i.th, i64 2
  %i.tm = insertelement <4 x i8> %i.tl, i8 %i.ti, i64 3
  %i.tn = zext <4 x i8> %i.tm to <4 x i32>        ; 2 uses
  %i.to = and <4 x i32> %i.tn, splat (i32 31)     ; 2 uses
  %i.tp = lshr <4 x i32> %i.tn, splat (i32 5)
  %i.tq = or disjoint i32 %i.st, 1
  %i.tr = or disjoint i32 %i.st, 3
  %28 = add i32 %i.st, 5
  %29 = add i32 %i.st, 7
  %i.ts = zext i32 %i.tq to i64
  %i.tt = zext i32 %i.tr to i64
  %i.tu = zext i32 %28 to i64
  %i.tv = zext i32 %29 to i64
  %i.tw = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ts
  %i.tx = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.tt
  %i.ty = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.tu
  %i.tz = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.tv
  %i.ua = load i8, ptr %i.tw, align 1, !tbaa !74, !alias.scope !122
  %i.ub = load i8, ptr %i.tx, align 1, !tbaa !74, !alias.scope !122
  %i.uc = load i8, ptr %i.ty, align 1, !tbaa !74, !alias.scope !122
  %i.ud = load i8, ptr %i.tz, align 1, !tbaa !74, !alias.scope !122
  %i.ue = insertelement <4 x i8> poison, i8 %i.ua, i64 0
  %i.uf = insertelement <4 x i8> %i.ue, i8 %i.ub, i64 1
  %i.ug = insertelement <4 x i8> %i.uf, i8 %i.uc, i64 2
  %i.uh = insertelement <4 x i8> %i.ug, i8 %i.ud, i64 3
  %i.ui = zext <4 x i8> %i.uh to <4 x i32>        ; 2 uses
  %i.uj = shl nuw nsw <4 x i32> %i.ui, splat (i32 3) ; 2 uses
  %i.uk = and <4 x i32> %i.uj, splat (i32 24)
  %i.ul = or disjoint <4 x i32> %i.uk, %i.tp      ; 2 uses
  %i.um = shl nuw nsw <4 x i32> %i.to, splat (i32 3)
  %i.un = lshr <4 x i32> %i.to, splat (i32 2)
  %i.uo = or disjoint <4 x i32> %i.um, %i.un
  %i.up = shl nuw nsw <4 x i32> %i.ul, splat (i32 14)
  %i.uq = shl nuw nsw <4 x i32> %i.ul, splat (i32 9)
  %i.ur = and <4 x i32> %i.uq, splat (i32 14336)
  %i.us = or disjoint <4 x i32> %i.ur, %i.up
  %i.ut = and <4 x i32> %i.uj, splat (i32 2016)
  %i.uu = lshr <4 x i32> %i.ui, splat (i32 2)
  %i.uv = or <4 x i32> %i.ut, %i.uu
  %i.uw = shl nuw nsw <4 x i32> %i.uv, splat (i32 17)
  %i.ux = or <4 x i32> %i.uw, %i.us
  %i.uy = or disjoint <4 x i32> %i.ux, %i.uo
  %i.uz = add i64 %index, %i.sg
  %i.va = and i64 %i.uz, 4294967295
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.va
  store <4 x i32> %i.uy, ptr %i.vb, align 4, !tbaa !56, !alias.scope !123, !noalias !122
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.vc = icmp eq i64 %index.next, %n.vec
  br i1 %i.vc, label %middle.block, label %vector.body, !llvm.loop !105

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit655.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph671.i, %middle.block
  %indvars.iv738.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph671.i ], [ %n.vec, %middle.block ]
  %.2550670.i.ph = phi i32 [ %i.hl, %vector.memcheck ], [ %i.hl, %vector.scevcheck ], [ %i.hl, %.lr.ph671.i ], [ %i.sq, %middle.block ]
  br label %scalar.ph

.lr.ph676.i:                                      ; preds = %bb.ah, %bb.ah, %bb.ah
  %i.vd = xor i64 %indvars.iv747.i, -1
  %i.ve = add nsw i64 %i.vd, %i.dq
  %i.vf = mul i64 %i.ve, %i.dr
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ak, %.lr.ph676.i
  %indvars.iv743.i = phi i64 [ 0, %.lr.ph676.i ], [ %indvars.iv.next744.i, %bb.ak ] ; 2 uses
  %.0544675.i = phi i8 [ 0, %.lr.ph676.i ], [ %.1545.i, %bb.ak ]
  %.0546674.i = phi i32 [ 0, %.lr.ph676.i ], [ %i.vk, %bb.ak ] ; 2 uses
  %.0548673.i = phi i32 [ %i.hl, %.lr.ph676.i ], [ %.1549.i, %bb.ak ] ; 3 uses
  %.not620.i = icmp eq i32 %.0546674.i, 0
  br i1 %.not620.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.vg = add i32 %.0548673.i, 1
  %i.vh = zext i32 %.0548673.i to i64
  %i.vi = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.vh
  %i.vj = load i8, ptr %i.vi, align 1, !tbaa !74
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.1549.i = phi i32 [ %.0548673.i, %bb.ai ], [ %i.vg, %bb.aj ]
  %.1547.i = phi i32 [ %.0546674.i, %bb.ai ], [ 8, %bb.aj ]
  %.1545.i = phi i8 [ %.0544675.i, %bb.ai ], [ %i.vj, %bb.aj ] ; 2 uses
  %i.vk = sub i32 %.1547.i, %i.be                 ; 2 uses
  %i.vl = zext i8 %.1545.i to i32
  %i.vm = lshr i32 %i.vl, %i.vk
  %i.vn = and i32 %i.vm, %i.dp
  %i.vo = zext nneg i32 %i.vn to i64
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %.0528.i, i64 %i.vo
  %i.vq = load i32, ptr %i.vp, align 1, !tbaa !74
  %i.vr = add i64 %indvars.iv743.i, %i.vf
  %i.vs = and i64 %i.vr, 4294967295
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.vs
  store i32 %i.vq, ptr %i.vt, align 4, !tbaa !56
  %indvars.iv.next744.i = add nuw nsw i64 %indvars.iv743.i, 1 ; 2 uses
  %exitcond746.not.i = icmp eq i64 %indvars.iv.next744.i, %i.dr
  br i1 %exitcond746.not.i, label %.loopexit655.i, label %bb.ai

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv738.i = phi i64 [ %indvars.iv.next739.i, %scalar.ph ], [ %indvars.iv738.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.2550670.i = phi i32 [ %i.wy, %scalar.ph ], [ %.2550670.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.vu = zext i32 %.2550670.i to i64
  %i.vv = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.vu
  %i.vw = load i8, ptr %i.vv, align 1, !tbaa !74
  %i.vx = zext i8 %i.vw to i32                    ; 2 uses
  %i.vy = and i32 %i.vx, 31                       ; 2 uses
  %i.vz = lshr i32 %i.vx, 5
  %i.wa = or disjoint i32 %.2550670.i, 1
  %i.wb = zext i32 %i.wa to i64
  %i.wc = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.wb
  %i.wd = load i8, ptr %i.wc, align 1, !tbaa !74
  %i.we = zext i8 %i.wd to i32                    ; 2 uses
  %i.wf = shl nuw nsw i32 %i.we, 3                ; 2 uses
  %i.wg = and i32 %i.wf, 24
  %i.wh = or disjoint i32 %i.wg, %i.vz            ; 2 uses
  %i.wi = shl nuw nsw i32 %i.vy, 3
  %i.wj = lshr i32 %i.vy, 2
  %i.wk = or disjoint i32 %i.wi, %i.wj
  %i.wl = shl nuw nsw i32 %i.wh, 14
  %i.wm = shl nuw nsw i32 %i.wh, 9
  %i.wn = and i32 %i.wm, 14336
  %i.wo = or disjoint i32 %i.wn, %i.wl
  %i.wp = and i32 %i.wf, 2016
  %i.wq = lshr i32 %i.we, 2
  %i.wr = or i32 %i.wp, %i.wq
  %i.ws = shl nuw nsw i32 %i.wr, 17
  %i.wt = or i32 %i.ws, %i.wo
  %i.wu = or disjoint i32 %i.wt, %i.wk
  %i.wv = add i64 %indvars.iv738.i, %i.sg
  %i.ww = and i64 %i.wv, 4294967295
  %i.wx = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.ww
  store i32 %i.wu, ptr %i.wx, align 4, !tbaa !56
  %i.wy = add i32 %.2550670.i, 2
  %indvars.iv.next739.i = add nuw nsw i64 %indvars.iv738.i, 1 ; 2 uses
  %exitcond742.not.i = icmp eq i64 %indvars.iv.next739.i, %i.dr
  br i1 %exitcond742.not.i, label %.loopexit655.i, label %scalar.ph, !llvm.loop !106

scalar.ph73:                                      ; preds = %scalar.ph73.preheader, %scalar.ph73
  %indvars.iv733.i = phi i64 [ %indvars.iv.next734.i, %scalar.ph73 ], [ %indvars.iv733.i.ph, %scalar.ph73.preheader ] ; 2 uses
  %.3551667.i = phi i32 [ %i.xu, %scalar.ph73 ], [ %.3551667.i.ph, %scalar.ph73.preheader ] ; 4 uses
  %i.wz = zext i32 %.3551667.i to i64
  %i.xa = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.wz
  %i.xb = load i8, ptr %i.xa, align 1, !tbaa !74
  %i.xc = zext i8 %i.xb to i32
  %i.xd = add i32 %.3551667.i, 1
  %i.xe = zext i32 %i.xd to i64
  %i.xf = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.xe
  %i.xg = load i8, ptr %i.xf, align 1, !tbaa !74
  %i.xh = zext i8 %i.xg to i32
  %i.xi = shl nuw nsw i32 %i.xh, 8
  %i.xj = or disjoint i32 %i.xi, %i.xc
  %i.xk = add i32 %.3551667.i, 2
  %i.xl = zext i32 %i.xk to i64
  %i.xm = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.xl
  %i.xn = load i8, ptr %i.xm, align 1, !tbaa !74
  %i.xo = zext i8 %i.xn to i32
  %i.xp = shl nuw nsw i32 %i.xo, 16
  %i.xq = or disjoint i32 %i.xj, %i.xp
  %i.xr = add i64 %indvars.iv733.i, %i.ov
  %i.xs = and i64 %i.xr, 4294967295
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.xs
  store i32 %i.xq, ptr %i.xt, align 4, !tbaa !56
  %i.xu = add i32 %.3551667.i, 3
  %indvars.iv.next734.i = add nuw nsw i64 %indvars.iv733.i, 1 ; 2 uses
  %exitcond737.not.i = icmp eq i64 %indvars.iv.next734.i, %i.dr
  br i1 %exitcond737.not.i, label %.loopexit655.i, label %scalar.ph73, !llvm.loop !107

scalar.ph98:                                      ; preds = %scalar.ph98.preheader, %scalar.ph98
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph98 ], [ %indvars.iv.i.ph, %scalar.ph98.preheader ] ; 2 uses
  %.4552665.i = phi i32 [ %i.yy, %scalar.ph98 ], [ %.4552665.i.ph, %scalar.ph98.preheader ] ; 5 uses
  %.1556664.i = phi i32 [ %i.yx, %scalar.ph98 ], [ %.1556664.i.ph, %scalar.ph98.preheader ]
  %i.xv = or disjoint i32 %.4552665.i, 3
  %i.xw = zext i32 %i.xv to i64
  %i.xx = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.xw
  %i.xy = load i8, ptr %i.xx, align 1, !tbaa !74
  %i.xz = zext i8 %i.xy to i32
  %i.ya = shl nuw i32 %i.xz, 24                   ; 2 uses
  %i.yb = zext i32 %.4552665.i to i64
  %i.yc = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.yb
  %i.yd = load i8, ptr %i.yc, align 1, !tbaa !74
  %i.ye = zext i8 %i.yd to i32
  %i.yf = or disjoint i32 %.4552665.i, 1
  %i.yg = zext i32 %i.yf to i64
  %i.yh = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.yg
  %i.yi = load i8, ptr %i.yh, align 1, !tbaa !74
  %i.yj = zext i8 %i.yi to i32
  %i.yk = shl nuw nsw i32 %i.yj, 8
  %i.yl = or disjoint i32 %.4552665.i, 2
  %i.ym = zext i32 %i.yl to i64
  %i.yn = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ym
  %i.yo = load i8, ptr %i.yn, align 1, !tbaa !74
  %i.yp = zext i8 %i.yo to i32
  %i.yq = shl nuw nsw i32 %i.yp, 16
  %i.yr = or disjoint i32 %i.yk, %i.ye
  %i.ys = or disjoint i32 %i.yr, %i.yq
  %i.yt = or disjoint i32 %i.ys, %i.ya
  %i.yu = add i64 %indvars.iv.i, %i.ho
  %i.yv = and i64 %i.yu, 4294967295
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.yv
  store i32 %i.yt, ptr %i.yw, align 4, !tbaa !56
  %i.yx = or i32 %i.ya, %.1556664.i               ; 2 uses
  %i.yy = add i32 %.4552665.i, 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.dr
  br i1 %exitcond.not.i, label %.loopexit655.i, label %scalar.ph98, !llvm.loop !108

.loopexit655.i:                                   ; preds = %scalar.ph98, %scalar.ph73, %scalar.ph, %bb.ak, %middle.block106, %middle.block80, %middle.block, %bb.ah
  %.2557.i = phi i32 [ %.0555679.i, %bb.ah ], [ %.0555679.i, %middle.block80 ], [ %.0555679.i, %scalar.ph ], [ %.0555679.i, %middle.block ], [ %.0555679.i, %scalar.ph73 ], [ %.0555679.i, %bb.ak ], [ %i.os, %middle.block106 ], [ %i.yx, %scalar.ph98 ] ; 2 uses
  %indvars.iv.next748.i = add nuw nsw i64 %indvars.iv747.i, 1 ; 2 uses
end_hunk_0

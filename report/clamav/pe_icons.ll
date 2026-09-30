Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/pe_icons?download=true
inline.NumInlined: 21
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 27
begin_hunk_0_@icon_scan_cb:bb.a
  %.8..off.i = add i32 %.8..8..8..8..8..i, 1
  %.not717.i = icmp ult i32 %.8..off.i, 3
  br i1 %.not717.i, label %._crit_edge.i, label %.lr.ph680.i

.lr.ph680.i:                                      ; preds = %.preheader662.i
  %notmask.i = shl nsw i32 -1, %i.be
  %i.dp = xor i32 %notmask.i, -1
  %wide.trip.count750.i = zext nneg i32 %i.bd to i64
  %wide.trip.count.i = zext nneg i32 %.4..4..4..4..4..i to i64 ; 18 uses
  %i.dq = add nsw i64 %wide.trip.count.i, -1      ; 3 uses
  %i.dr = lshr i32 %i.ci, 3
  %i.ds = and i32 %i.dr, 536870908
  %narrow = add nuw nsw i32 %i.ds, %i.cm
  %i.dt = shl nuw nsw i64 %wide.trip.count.i, 2
  %scevgep53 = getelementptr i8, ptr %i.do, i64 %i.dt
  %i.du = lshr i32 %i.ci, 3
  %i.dv = and i32 %i.du, 536870908
  %narrow132 = add nuw nsw i32 %i.dv, %i.cm
  %i.dw = shl nuw nsw i64 %wide.trip.count.i, 1
  %scevgep56 = getelementptr i8, ptr %i.da, i64 %i.dw
  %i.dx = add nsw i64 %wide.trip.count.i, -1      ; 4 uses
  %i.dy = lshr i32 %i.ci, 3
  %i.dz = and i32 %i.dy, 536870908
  %narrow133 = add nuw nsw i32 %i.dz, %i.cm
  %i.ea = zext nneg i32 %narrow133 to i64
  %i.eb = shl nuw nsw i64 %wide.trip.count.i, 2
  %scevgep65 = getelementptr i8, ptr %i.do, i64 %i.eb
  %i.ec = lshr i32 %i.ci, 3
  %i.ed = and i32 %i.ec, 536870908
  %narrow134 = add nuw nsw i32 %i.ed, %i.cm
  %i.ee = mul nuw nsw i64 %wide.trip.count.i, 3
  %scevgep68 = getelementptr i8, ptr %i.da, i64 %i.ee
  %i.ef = add nsw i64 %wide.trip.count.i, -1      ; 3 uses
  %i.eg = lshr i32 %i.ci, 3
  %i.eh = and i32 %i.eg, 536870908
  %narrow135 = add nuw nsw i32 %i.eh, %i.cm
  %i.ei = zext nneg i32 %narrow135 to i64
  %i.ej = shl nuw nsw i64 %wide.trip.count.i, 2   ; 2 uses
  %scevgep90 = getelementptr i8, ptr %i.do, i64 %i.ej
  %i.ek = lshr i32 %i.ci, 3
  %i.el = and i32 %i.ek, 536870908
  %narrow136 = add nuw nsw i32 %i.el, %i.cm
  %scevgep93 = getelementptr i8, ptr %i.da, i64 %i.ej
  %min.iters.check99 = icmp ult i32 %.4..4..4..4..4..i, 24
  %i.em = trunc nsw i64 %i.ef to i32
  %i.en = trunc nsw i64 %i.ef to i32
  %mul.result86 = shl i32 %i.en, 2                ; 4 uses
  %mul.overflow87 = icmp ugt i64 %i.ef, 1073741823
  %n.vec101 = and i64 %wide.trip.count.i, 504     ; 4 uses
  %i.eo = trunc nuw nsw i64 %n.vec101 to i32
  %i.ep = shl nuw nsw i32 %i.eo, 2
  %cmp.n107 = icmp eq i64 %n.vec101, %wide.trip.count.i
  %min.iters.check74 = icmp ult i32 %.4..4..4..4..4..i, 24
  %i.eq = trunc nsw i64 %i.dx to i32
  %i.er = trunc nsw i64 %i.dx to i32
  %mul60 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.er, i32 3) ; 2 uses
  %mul.result61 = extractvalue { i32, i1 } %mul60, 0 ; 3 uses
  %mul.overflow62 = extractvalue { i32, i1 } %mul60, 1
  %i.es = icmp ugt i64 %i.dx, 4294967295
  %i.et = icmp ugt i64 %i.dx, 4294967295
  %invariant.op = or i1 %i.et, %mul.overflow62
  %n.vec76 = and i64 %wide.trip.count.i, 508      ; 4 uses
  %i.eu = trunc nuw nsw i64 %n.vec76 to i32
  %i.ev = mul nuw nsw i32 %i.eu, 3
  %cmp.n81 = icmp eq i64 %n.vec76, %wide.trip.count.i
  %min.iters.check = icmp ult i32 %.4..4..4..4..4..i, 12
  %i.ew = trunc nsw i64 %i.dq to i32
  %i.ex = trunc nsw i64 %i.dq to i32
  %mul.result = shl i32 %i.ex, 1                  ; 2 uses
  %i.ey = icmp ugt i64 %i.dq, 4294967295
  %n.vec = and i64 %wide.trip.count.i, 508        ; 4 uses
  %i.ez = trunc nuw nsw i64 %n.vec to i32
  %i.fa = shl nuw nsw i32 %i.ez, 1
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %.not603.i = icmp eq ptr %.0528.i, null
  br i1 %.not603.i, label %parseicon.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fb = shl nuw i32 1, %i.be
  %i.fc = sext i32 %i.fb to i64
  %i.fd = shl nsw i64 %i.fc, 2
  %i.fe = getelementptr i8, ptr %i.l, i64 16
  %.val.i621.i = load ptr, ptr %i.fe, align 8, !tbaa !115
  %i.ff = getelementptr i8, ptr %i.l, i64 72
  %.val3.i622.i = load i64, ptr %i.ff, align 8, !tbaa !116
  %i.fg = ptrtoint ptr %.0528.i to i64
  %i.fh = ptrtoint ptr %.val.i621.i to i64
  %i.fi = add i64 %.val3.i622.i, %i.fh
  %i.fj = sub i64 %i.fg, %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !117
  call void %i.fl(ptr noundef nonnull %i.l, i64 noundef %i.fj, i64 noundef range(i64 -8589934592, 8589934589) %i.fd) #13, !inline_history !93
  br label %parseicon.exit

bb.ah:                                            ; preds = %.loopexit655.i, %.lr.ph680.i
  %indvars.iv747.i = phi i64 [ 0, %.lr.ph680.i ], [ %indvars.iv.next748.i, %.loopexit655.i ] ; 11 uses
  %.0555679.i = phi i32 [ 0, %.lr.ph680.i ], [ %.2557.i, %.loopexit655.i ] ; 10 uses
  %i.fm = trunc i64 %indvars.iv747.i to i32
  %i.fn = xor i32 %i.fm, -1
  %i.fo = add i32 %i.bd, %i.fn
  %i.fp = mul i32 %.4..4..4..4..4..i, %i.fo
  %i.fq = zext i32 %i.fp to i64
  %i.fr = shl nuw nsw i64 %i.fq, 2                ; 2 uses
  %scevgep89 = getelementptr i8, ptr %i.do, i64 %i.fr
  %scevgep91 = getelementptr i8, ptr %scevgep90, i64 %i.fr
  %i.fs = trunc i64 %indvars.iv747.i to i32
  %i.ft = mul i32 %narrow136, %i.fs
  %i.fu = zext i32 %i.ft to i64                   ; 2 uses
  %scevgep92 = getelementptr i8, ptr %i.da, i64 %i.fu
  %scevgep94 = getelementptr i8, ptr %scevgep93, i64 %i.fu
  %i.fv = mul i64 %indvars.iv747.i, %i.ei         ; 3 uses
  %i.fw = trunc i64 %i.fv to i32
  %i.fx = trunc i64 %i.fv to i32
  %i.fy = trunc i64 %i.fv to i32
  %i.fz = trunc i64 %indvars.iv747.i to i32
  %i.ga = xor i32 %i.fz, -1
  %i.gb = add i32 %i.bd, %i.ga
  %i.gc = mul i32 %.4..4..4..4..4..i, %i.gb
  %i.gd = zext i32 %i.gc to i64
  %i.ge = shl nuw nsw i64 %i.gd, 2                ; 2 uses
  %scevgep64 = getelementptr i8, ptr %i.do, i64 %i.ge
  %scevgep66 = getelementptr i8, ptr %scevgep65, i64 %i.ge
  %i.gf = trunc i64 %indvars.iv747.i to i32
  %i.gg = mul i32 %narrow134, %i.gf
  %i.gh = zext i32 %i.gg to i64                   ; 2 uses
  %scevgep67 = getelementptr i8, ptr %i.da, i64 %i.gh
  %scevgep69 = getelementptr i8, ptr %scevgep68, i64 %i.gh
  %i.gi = mul i64 %indvars.iv747.i, %i.ea         ; 2 uses
  %i.gj = trunc i64 %i.gi to i32
  %i.gk = trunc i64 %i.gi to i32
  %i.gl = trunc i64 %indvars.iv747.i to i32
  %i.gm = xor i32 %i.gl, -1
  %i.gn = add i32 %i.bd, %i.gm
  %i.go = mul i32 %.4..4..4..4..4..i, %i.gn
  %i.gp = zext i32 %i.go to i64
  %i.gq = shl nuw nsw i64 %i.gp, 2                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.do, i64 %i.gq
  %scevgep54 = getelementptr i8, ptr %scevgep53, i64 %i.gq
  %i.gr = trunc i64 %indvars.iv747.i to i32
  %i.gs = mul i32 %narrow132, %i.gr
  %i.gt = zext i32 %i.gs to i64                   ; 2 uses
  %scevgep55 = getelementptr i8, ptr %i.da, i64 %i.gt
  %scevgep57 = getelementptr i8, ptr %scevgep56, i64 %i.gt
  %i.gu = trunc i64 %indvars.iv747.i to i32
  %i.gv = mul i32 %narrow, %i.gu
  %i.gw = trunc i64 %indvars.iv747.i to i32       ; 5 uses
  %i.gx = mul i32 %i.cn, %i.gw                    ; 19 uses
  switch i16 %.14..14..14..14..14..i, label %.loopexit655.i [
    i16 1, label %.lr.ph676.i
    i16 4, label %.lr.ph676.i
    i16 8, label %.lr.ph676.i
    i16 16, label %.lr.ph671.i
    i16 24, label %.lr.ph668.i
    i16 32, label %.lr.ph.i
  ]

.lr.ph.i:                                         ; preds = %bb.ah
  %i.gy = xor i32 %i.gw, -1
  %i.gz = add i32 %i.bd, %i.gy
  %i.ha = mul i32 %i.gz, %.4..4..4..4..4..i       ; 3 uses
  br i1 %min.iters.check99, label %scalar.ph98.preheader, label %vector.scevcheck84

vector.scevcheck84:                               ; preds = %.lr.ph.i
  %i.hb = xor i32 %i.ha, -1
  %i.hc = icmp ult i32 %i.hb, %i.em
  %i.hd = xor i32 %i.fw, -4
  %i.he = icmp ult i32 %i.hd, %mul.result86
  %i.hf = xor i32 %i.gx, -1
  %i.hg = icmp ugt i32 %mul.result86, %i.hf
  %i.hh = or i1 %i.hg, %mul.overflow87
  %i.hi = xor i32 %i.fx, -2
  %i.hj = icmp ult i32 %i.hi, %mul.result86
  %i.hk = xor i32 %i.fy, -3
  %i.hl = icmp ult i32 %i.hk, %mul.result86
  %i.hm = or i1 %i.he, %i.hc
  %i.hn = or i1 %i.hm, %i.hh
  %i.ho = or i1 %i.hj, %i.hn
  %i.hp = or i1 %i.hl, %i.ho
  br i1 %i.hp, label %scalar.ph98.preheader, label %vector.memcheck88

vector.memcheck88:                                ; preds = %vector.scevcheck84
  %bound095 = icmp ult ptr %scevgep89, %scevgep94
  %bound196 = icmp ult ptr %scevgep92, %scevgep91
  %found.conflict97 = and i1 %bound095, %bound196
  br i1 %found.conflict97, label %scalar.ph98.preheader, label %vector.ph100

vector.ph100:                                     ; preds = %vector.memcheck88
  %i.hq = add i32 %i.gx, %i.ep
  %i.hr = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.0555679.i, i64 0
  br label %vector.body102

vector.body102:                                   ; preds = %vector.body102, %vector.ph100
  %index103 = phi i64 [ 0, %vector.ph100 ], [ %index.next105, %vector.body102 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.hr, %vector.ph100 ], [ %i.ob, %vector.body102 ]
  %vec.phi104 = phi <4 x i32> [ zeroinitializer, %vector.ph100 ], [ %i.oc, %vector.body102 ]
  %i.hs = trunc i64 %index103 to i32              ; 2 uses
  %i.ht = shl i32 %i.hs, 2
  %i.hu = add i32 %i.gx, %i.ht                    ; 32 uses
  %i.hv = add i32 %i.hu, 4
  %i.hw = add i32 %i.hu, 8
  %i.hx = add i32 %i.hu, 12
  %i.hy = add i32 %i.hu, 16
  %i.hz = add i32 %i.hu, 20
  %i.ia = add i32 %i.hu, 24
  %i.ib = add i32 %i.hu, 28
  %i.ic = or disjoint i32 %i.hu, 3
  %7 = add i32 %i.hu, 7
  %8 = add i32 %i.hu, 11
  %9 = add i32 %i.hu, 15
  %10 = add i32 %i.hu, 19
  %11 = add i32 %i.hu, 23
  %12 = add i32 %i.hu, 27
  %13 = add i32 %i.hu, 31
  %i.id = zext i32 %i.ic to i64
  %i.ie = zext i32 %7 to i64
  %i.if = zext i32 %8 to i64
  %i.ig = zext i32 %9 to i64
  %i.ih = zext i32 %10 to i64
  %i.ii = zext i32 %11 to i64
  %i.ij = zext i32 %12 to i64
  %i.ik = zext i32 %13 to i64
  %i.il = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.id
  %i.im = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ie
  %i.in = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.if
  %i.io = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ig
  %i.ip = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ih
  %i.iq = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ii
  %i.ir = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ij
  %i.is = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ik
  %i.it = load i8, ptr %i.il, align 1, !tbaa !74, !alias.scope !118
  %i.iu = load i8, ptr %i.im, align 1, !tbaa !74, !alias.scope !118
  %i.iv = load i8, ptr %i.in, align 1, !tbaa !74, !alias.scope !118
  %i.iw = load i8, ptr %i.io, align 1, !tbaa !74, !alias.scope !118
  %i.ix = insertelement <4 x i8> poison, i8 %i.it, i64 0
  %i.iy = insertelement <4 x i8> %i.ix, i8 %i.iu, i64 1
  %i.iz = insertelement <4 x i8> %i.iy, i8 %i.iv, i64 2
  %i.ja = insertelement <4 x i8> %i.iz, i8 %i.iw, i64 3
  %i.jb = load i8, ptr %i.ip, align 1, !tbaa !74, !alias.scope !118
  %i.jc = load i8, ptr %i.iq, align 1, !tbaa !74, !alias.scope !118
  %i.jd = load i8, ptr %i.ir, align 1, !tbaa !74, !alias.scope !118
  %i.je = load i8, ptr %i.is, align 1, !tbaa !74, !alias.scope !118
  %i.jf = insertelement <4 x i8> poison, i8 %i.jb, i64 0
  %i.jg = insertelement <4 x i8> %i.jf, i8 %i.jc, i64 1
  %i.jh = insertelement <4 x i8> %i.jg, i8 %i.jd, i64 2
  %i.ji = insertelement <4 x i8> %i.jh, i8 %i.je, i64 3
  %i.jj = zext <4 x i8> %i.ja to <4 x i32>
  %i.jk = zext <4 x i8> %i.ji to <4 x i32>
  %i.jl = shl nuw <4 x i32> %i.jj, splat (i32 24) ; 2 uses
  %i.jm = shl nuw <4 x i32> %i.jk, splat (i32 24) ; 2 uses
  %i.jn = zext i32 %i.hu to i64
  %i.jo = zext i32 %i.hv to i64
  %i.jp = zext i32 %i.hw to i64
  %i.jq = zext i32 %i.hx to i64
  %i.jr = zext i32 %i.hy to i64
  %i.js = zext i32 %i.hz to i64
  %i.jt = zext i32 %i.ia to i64
  %i.ju = zext i32 %i.ib to i64
  %i.jv = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.jn
  %i.jw = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.jo
  %i.jx = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.jp
  %i.jy = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.jq
  %i.jz = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.jr
  %i.ka = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.js
  %i.kb = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.jt
  %i.kc = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ju
  %i.kd = load i8, ptr %i.jv, align 1, !tbaa !74, !alias.scope !118
  %i.ke = load i8, ptr %i.jw, align 1, !tbaa !74, !alias.scope !118
  %i.kf = load i8, ptr %i.jx, align 1, !tbaa !74, !alias.scope !118
  %i.kg = load i8, ptr %i.jy, align 1, !tbaa !74, !alias.scope !118
  %i.kh = insertelement <4 x i8> poison, i8 %i.kd, i64 0
  %i.ki = insertelement <4 x i8> %i.kh, i8 %i.ke, i64 1
  %i.kj = insertelement <4 x i8> %i.ki, i8 %i.kf, i64 2
  %i.kk = insertelement <4 x i8> %i.kj, i8 %i.kg, i64 3
  %i.kl = load i8, ptr %i.jz, align 1, !tbaa !74, !alias.scope !118
  %i.km = load i8, ptr %i.ka, align 1, !tbaa !74, !alias.scope !118
  %i.kn = load i8, ptr %i.kb, align 1, !tbaa !74, !alias.scope !118
  %i.ko = load i8, ptr %i.kc, align 1, !tbaa !74, !alias.scope !118
  %i.kp = insertelement <4 x i8> poison, i8 %i.kl, i64 0
  %i.kq = insertelement <4 x i8> %i.kp, i8 %i.km, i64 1
  %i.kr = insertelement <4 x i8> %i.kq, i8 %i.kn, i64 2
  %i.ks = insertelement <4 x i8> %i.kr, i8 %i.ko, i64 3
  %i.kt = zext <4 x i8> %i.kk to <4 x i32>
  %i.ku = zext <4 x i8> %i.ks to <4 x i32>
  %i.kv = or disjoint i32 %i.hu, 1
  %14 = add i32 %i.hu, 5
  %15 = add i32 %i.hu, 9
  %16 = add i32 %i.hu, 13
  %17 = add i32 %i.hu, 17
  %18 = add i32 %i.hu, 21
  %19 = add i32 %i.hu, 25
  %20 = add i32 %i.hu, 29
  %i.kw = zext i32 %i.kv to i64
  %i.kx = zext i32 %14 to i64
  %i.ky = zext i32 %15 to i64
  %i.kz = zext i32 %16 to i64
  %i.la = zext i32 %17 to i64
  %i.lb = zext i32 %18 to i64
  %i.lc = zext i32 %19 to i64
  %i.ld = zext i32 %20 to i64
  %i.le = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.kw
  %i.lf = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.kx
  %i.lg = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ky
  %i.lh = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.kz
  %i.li = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.la
  %i.lj = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.lb
  %i.lk = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.lc
  %i.ll = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ld
  %i.lm = load i8, ptr %i.le, align 1, !tbaa !74, !alias.scope !118
  %i.ln = load i8, ptr %i.lf, align 1, !tbaa !74, !alias.scope !118
  %i.lo = load i8, ptr %i.lg, align 1, !tbaa !74, !alias.scope !118
  %i.lp = load i8, ptr %i.lh, align 1, !tbaa !74, !alias.scope !118
  %i.lq = insertelement <4 x i8> poison, i8 %i.lm, i64 0
  %i.lr = insertelement <4 x i8> %i.lq, i8 %i.ln, i64 1
  %i.ls = insertelement <4 x i8> %i.lr, i8 %i.lo, i64 2
  %i.lt = insertelement <4 x i8> %i.ls, i8 %i.lp, i64 3
  %i.lu = load i8, ptr %i.li, align 1, !tbaa !74, !alias.scope !118
  %i.lv = load i8, ptr %i.lj, align 1, !tbaa !74, !alias.scope !118
  %i.lw = load i8, ptr %i.lk, align 1, !tbaa !74, !alias.scope !118
  %i.lx = load i8, ptr %i.ll, align 1, !tbaa !74, !alias.scope !118
  %i.ly = insertelement <4 x i8> poison, i8 %i.lu, i64 0
  %i.lz = insertelement <4 x i8> %i.ly, i8 %i.lv, i64 1
  %i.ma = insertelement <4 x i8> %i.lz, i8 %i.lw, i64 2
  %i.mb = insertelement <4 x i8> %i.ma, i8 %i.lx, i64 3
  %i.mc = zext <4 x i8> %i.lt to <4 x i32>
  %i.md = zext <4 x i8> %i.mb to <4 x i32>
  %i.me = shl nuw nsw <4 x i32> %i.mc, splat (i32 8)
  %i.mf = shl nuw nsw <4 x i32> %i.md, splat (i32 8)
  %i.mg = or disjoint i32 %i.hu, 2
  %21 = add i32 %i.hu, 6
  %22 = add i32 %i.hu, 10
  %23 = add i32 %i.hu, 14
  %24 = add i32 %i.hu, 18
  %25 = add i32 %i.hu, 22
  %26 = add i32 %i.hu, 26
  %27 = add i32 %i.hu, 30
  %i.mh = zext i32 %i.mg to i64
  %i.mi = zext i32 %21 to i64
  %i.mj = zext i32 %22 to i64
  %i.mk = zext i32 %23 to i64
  %i.ml = zext i32 %24 to i64
  %i.mm = zext i32 %25 to i64
  %i.mn = zext i32 %26 to i64
  %i.mo = zext i32 %27 to i64
  %i.mp = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.mh
  %i.mq = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.mi
  %i.mr = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.mj
  %i.ms = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.mk
  %i.mt = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ml
  %i.mu = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.mm
  %i.mv = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.mn
  %i.mw = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.mo
  %i.mx = load i8, ptr %i.mp, align 1, !tbaa !74, !alias.scope !118
  %i.my = load i8, ptr %i.mq, align 1, !tbaa !74, !alias.scope !118
  %i.mz = load i8, ptr %i.mr, align 1, !tbaa !74, !alias.scope !118
  %i.na = load i8, ptr %i.ms, align 1, !tbaa !74, !alias.scope !118
  %i.nb = insertelement <4 x i8> poison, i8 %i.mx, i64 0
  %i.nc = insertelement <4 x i8> %i.nb, i8 %i.my, i64 1
  %i.nd = insertelement <4 x i8> %i.nc, i8 %i.mz, i64 2
  %i.ne = insertelement <4 x i8> %i.nd, i8 %i.na, i64 3
  %i.nf = load i8, ptr %i.mt, align 1, !tbaa !74, !alias.scope !118
  %i.ng = load i8, ptr %i.mu, align 1, !tbaa !74, !alias.scope !118
  %i.nh = load i8, ptr %i.mv, align 1, !tbaa !74, !alias.scope !118
  %i.ni = load i8, ptr %i.mw, align 1, !tbaa !74, !alias.scope !118
  %i.nj = insertelement <4 x i8> poison, i8 %i.nf, i64 0
  %i.nk = insertelement <4 x i8> %i.nj, i8 %i.ng, i64 1
  %i.nl = insertelement <4 x i8> %i.nk, i8 %i.nh, i64 2
  %i.nm = insertelement <4 x i8> %i.nl, i8 %i.ni, i64 3
  %i.nn = zext <4 x i8> %i.ne to <4 x i32>
  %i.no = zext <4 x i8> %i.nm to <4 x i32>
  %i.np = shl nuw nsw <4 x i32> %i.nn, splat (i32 16)
  %i.nq = shl nuw nsw <4 x i32> %i.no, splat (i32 16)
  %i.nr = or disjoint <4 x i32> %i.me, %i.kt
  %i.ns = or disjoint <4 x i32> %i.mf, %i.ku
  %i.nt = or disjoint <4 x i32> %i.nr, %i.np
  %i.nu = or disjoint <4 x i32> %i.ns, %i.nq
  %i.nv = or disjoint <4 x i32> %i.nt, %i.jl
  %i.nw = or disjoint <4 x i32> %i.nu, %i.jm
  %i.nx = add i32 %i.ha, %i.hs
  %i.ny = zext i32 %i.nx to i64
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.ny ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  store <4 x i32> %i.nv, ptr %i.nz, align 4, !tbaa !56, !alias.scope !119, !noalias !118
  store <4 x i32> %i.nw, ptr %i.oa, align 4, !tbaa !56, !alias.scope !119, !noalias !118
  %i.ob = or <4 x i32> %i.jl, %vec.phi            ; 2 uses
  %i.oc = or <4 x i32> %i.jm, %vec.phi104         ; 2 uses
  %index.next105 = add nuw i64 %index103, 8       ; 2 uses
  %i.od = icmp eq i64 %index.next105, %n.vec101
  br i1 %i.od, label %middle.block106, label %vector.body102, !llvm.loop !97

middle.block106:                                  ; preds = %vector.body102
  %bin.rdx = or <4 x i32> %i.oc, %i.ob
  %i.oe = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n107, label %.loopexit655.i, label %scalar.ph98.preheader

scalar.ph98.preheader:                            ; preds = %vector.memcheck88, %vector.scevcheck84, %.lr.ph.i, %middle.block106
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck88 ], [ 0, %vector.scevcheck84 ], [ 0, %.lr.ph.i ], [ %n.vec101, %middle.block106 ]
  %.4552665.i.ph = phi i32 [ %i.gx, %vector.memcheck88 ], [ %i.gx, %vector.scevcheck84 ], [ %i.gx, %.lr.ph.i ], [ %i.hq, %middle.block106 ]
  %.1556664.i.ph = phi i32 [ %.0555679.i, %vector.memcheck88 ], [ %.0555679.i, %vector.scevcheck84 ], [ %.0555679.i, %.lr.ph.i ], [ %i.oe, %middle.block106 ]
  br label %scalar.ph98

.lr.ph668.i:                                      ; preds = %bb.ah
  %i.of = xor i32 %i.gw, -1
  %i.og = add nsw i32 %i.bd, %i.of
  %i.oh = mul nuw nsw i32 %i.og, %.4..4..4..4..4..i ; 3 uses
  br i1 %min.iters.check74, label %scalar.ph73.preheader, label %vector.scevcheck59

vector.scevcheck59:                               ; preds = %.lr.ph668.i
  %i.oi = xor i32 %i.oh, -1
  %i.oj = icmp ult i32 %i.oi, %i.eq
  %i.ok = xor i32 %i.gx, -1
  %i.ol = icmp ugt i32 %mul.result61, %i.ok
  %i.om = or i1 %i.ol, %i.es
  %i.on = xor i32 %i.gj, -2
  %i.oo = icmp ult i32 %i.on, %mul.result61
  %.reass = or i1 %i.oo, %invariant.op
  %i.op = xor i32 %i.gk, -3
  %i.oq = icmp ult i32 %i.op, %mul.result61
  %i.or = or i1 %i.om, %i.oj
  %i.os = or i1 %i.or, %.reass
  %i.ot = or i1 %i.oq, %i.os
  br i1 %i.ot, label %scalar.ph73.preheader, label %vector.memcheck63

vector.memcheck63:                                ; preds = %vector.scevcheck59
  %bound070 = icmp ult ptr %scevgep64, %scevgep69
  %bound171 = icmp ult ptr %scevgep67, %scevgep66
  %found.conflict72 = and i1 %bound070, %bound171
  br i1 %found.conflict72, label %scalar.ph73.preheader, label %vector.ph75

vector.ph75:                                      ; preds = %vector.memcheck63
  %i.ou = add i32 %i.gx, %i.ev
  br label %vector.body77

vector.body77:                                    ; preds = %vector.body77, %vector.ph75
  %index78 = phi i64 [ 0, %vector.ph75 ], [ %index.next79, %vector.body77 ] ; 2 uses
  %i.ov = trunc i64 %index78 to i32               ; 2 uses
  %i.ow = mul i32 %i.ov, 3
  %i.ox = add i32 %i.gx, %i.ow                    ; 12 uses
  %i.oy = or disjoint i32 %i.ox, 3
  %i.oz = add i32 %i.ox, 6
  %i.pa = add i32 %i.ox, 9
  %i.pb = zext i32 %i.ox to i64
  %i.pc = zext i32 %i.oy to i64
  %i.pd = zext i32 %i.oz to i64
  %i.pe = zext i32 %i.pa to i64
  %i.pf = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.pb
  %i.pg = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.pc
  %i.ph = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.pd
  %i.pi = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.pe
  %i.pj = load i8, ptr %i.pf, align 1, !tbaa !74, !alias.scope !120
  %i.pk = load i8, ptr %i.pg, align 1, !tbaa !74, !alias.scope !120
  %i.pl = load i8, ptr %i.ph, align 1, !tbaa !74, !alias.scope !120
  %i.pm = load i8, ptr %i.pi, align 1, !tbaa !74, !alias.scope !120
  %i.pn = insertelement <4 x i8> poison, i8 %i.pj, i64 0
  %i.po = insertelement <4 x i8> %i.pn, i8 %i.pk, i64 1
  %i.pp = insertelement <4 x i8> %i.po, i8 %i.pl, i64 2
  %i.pq = insertelement <4 x i8> %i.pp, i8 %i.pm, i64 3
  %i.pr = zext <4 x i8> %i.pq to <4 x i32>
  %i.ps = or disjoint i32 %i.ox, 1
  %i.pt = add i32 %i.ox, 4
  %i.pu = add i32 %i.ox, 7
  %i.pv = add i32 %i.ox, 10
  %i.pw = zext i32 %i.ps to i64
  %i.px = zext i32 %i.pt to i64
  %i.py = zext i32 %i.pu to i64
  %i.pz = zext i32 %i.pv to i64
  %i.qa = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.pw
  %i.qb = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.px
  %i.qc = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.py
  %i.qd = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.pz
  %i.qe = load i8, ptr %i.qa, align 1, !tbaa !74, !alias.scope !120
  %i.qf = load i8, ptr %i.qb, align 1, !tbaa !74, !alias.scope !120
  %i.qg = load i8, ptr %i.qc, align 1, !tbaa !74, !alias.scope !120
  %i.qh = load i8, ptr %i.qd, align 1, !tbaa !74, !alias.scope !120
  %i.qi = insertelement <4 x i8> poison, i8 %i.qe, i64 0
  %i.qj = insertelement <4 x i8> %i.qi, i8 %i.qf, i64 1
  %i.qk = insertelement <4 x i8> %i.qj, i8 %i.qg, i64 2
  %i.ql = insertelement <4 x i8> %i.qk, i8 %i.qh, i64 3
  %i.qm = zext <4 x i8> %i.ql to <4 x i32>
  %i.qn = shl nuw nsw <4 x i32> %i.qm, splat (i32 8)
  %i.qo = or disjoint <4 x i32> %i.qn, %i.pr
  %i.qp = or disjoint i32 %i.ox, 2
  %i.qq = add i32 %i.ox, 5
  %i.qr = add i32 %i.ox, 8
  %i.qs = add i32 %i.ox, 11
  %i.qt = zext i32 %i.qp to i64
  %i.qu = zext i32 %i.qq to i64
  %i.qv = zext i32 %i.qr to i64
  %i.qw = zext i32 %i.qs to i64
  %i.qx = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.qt
  %i.qy = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.qu
  %i.qz = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.qv
  %i.ra = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.qw
  %i.rb = load i8, ptr %i.qx, align 1, !tbaa !74, !alias.scope !120
  %i.rc = load i8, ptr %i.qy, align 1, !tbaa !74, !alias.scope !120
  %i.rd = load i8, ptr %i.qz, align 1, !tbaa !74, !alias.scope !120
  %i.re = load i8, ptr %i.ra, align 1, !tbaa !74, !alias.scope !120
  %i.rf = insertelement <4 x i8> poison, i8 %i.rb, i64 0
  %i.rg = insertelement <4 x i8> %i.rf, i8 %i.rc, i64 1
  %i.rh = insertelement <4 x i8> %i.rg, i8 %i.rd, i64 2
  %i.ri = insertelement <4 x i8> %i.rh, i8 %i.re, i64 3
  %i.rj = zext <4 x i8> %i.ri to <4 x i32>
  %i.rk = shl nuw nsw <4 x i32> %i.rj, splat (i32 16)
  %i.rl = or disjoint <4 x i32> %i.qo, %i.rk
  %i.rm = add i32 %i.oh, %i.ov
  %i.rn = zext i32 %i.rm to i64
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.rn
  store <4 x i32> %i.rl, ptr %i.ro, align 4, !tbaa !56, !alias.scope !121, !noalias !120
  %index.next79 = add nuw i64 %index78, 4         ; 2 uses
  %i.rp = icmp eq i64 %index.next79, %n.vec76
  br i1 %i.rp, label %middle.block80, label %vector.body77, !llvm.loop !101

middle.block80:                                   ; preds = %vector.body77
  br i1 %cmp.n81, label %.loopexit655.i, label %scalar.ph73.preheader

scalar.ph73.preheader:                            ; preds = %vector.memcheck63, %vector.scevcheck59, %.lr.ph668.i, %middle.block80
  %indvars.iv733.i.ph = phi i64 [ 0, %vector.memcheck63 ], [ 0, %vector.scevcheck59 ], [ 0, %.lr.ph668.i ], [ %n.vec76, %middle.block80 ]
  %.3551667.i.ph = phi i32 [ %i.gx, %vector.memcheck63 ], [ %i.gx, %vector.scevcheck59 ], [ %i.gx, %.lr.ph668.i ], [ %i.ou, %middle.block80 ]
  br label %scalar.ph73

.lr.ph671.i:                                      ; preds = %bb.ah
  %i.rq = xor i32 %i.gw, -1
  %i.rr = add i32 %i.bd, %i.rq
  %i.rs = mul i32 %i.rr, %.4..4..4..4..4..i       ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph671.i
  %i.rt = xor i32 %i.rs, -1
  %i.ru = icmp ult i32 %i.rt, %i.ew
  %i.rv = xor i32 %i.gx, -1
  %i.rw = icmp ugt i32 %mul.result, %i.rv
  %i.rx = or i1 %i.rw, %i.ey
  %i.ry = xor i32 %i.gv, -2
  %i.rz = icmp ult i32 %i.ry, %mul.result
  %i.sa = or i1 %i.ru, %i.rx
  %i.sb = or i1 %i.rz, %i.sa
  br i1 %i.sb, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %scevgep, %scevgep57
  %bound1 = icmp ult ptr %scevgep55, %scevgep54
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.sc = add i32 %i.gx, %i.fa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.sd = trunc i64 %index to i32                 ; 2 uses
  %i.se = shl i32 %i.sd, 1
  %i.sf = add i32 %i.gx, %i.se                    ; 8 uses
  %i.sg = or disjoint i32 %i.sf, 2
  %i.sh = add i32 %i.sf, 4
  %i.si = add i32 %i.sf, 6
  %i.sj = zext i32 %i.sf to i64
  %i.sk = zext i32 %i.sg to i64
  %i.sl = zext i32 %i.sh to i64
  %i.sm = zext i32 %i.si to i64
  %i.sn = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.sj
  %i.so = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.sk
  %i.sp = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.sl
  %i.sq = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.sm
  %i.sr = load i8, ptr %i.sn, align 1, !tbaa !74, !alias.scope !122
  %i.ss = load i8, ptr %i.so, align 1, !tbaa !74, !alias.scope !122
  %i.st = load i8, ptr %i.sp, align 1, !tbaa !74, !alias.scope !122
  %i.su = load i8, ptr %i.sq, align 1, !tbaa !74, !alias.scope !122
  %i.sv = insertelement <4 x i8> poison, i8 %i.sr, i64 0
  %i.sw = insertelement <4 x i8> %i.sv, i8 %i.ss, i64 1
  %i.sx = insertelement <4 x i8> %i.sw, i8 %i.st, i64 2
  %i.sy = insertelement <4 x i8> %i.sx, i8 %i.su, i64 3
  %i.sz = zext <4 x i8> %i.sy to <4 x i32>        ; 2 uses
  %i.ta = and <4 x i32> %i.sz, splat (i32 31)     ; 2 uses
  %i.tb = lshr <4 x i32> %i.sz, splat (i32 5)
  %i.tc = or disjoint i32 %i.sf, 1
  %i.td = or disjoint i32 %i.sf, 3
  %28 = add i32 %i.sf, 5
  %29 = add i32 %i.sf, 7
  %i.te = zext i32 %i.tc to i64
  %i.tf = zext i32 %i.td to i64
  %i.tg = zext i32 %28 to i64
  %i.th = zext i32 %29 to i64
  %i.ti = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.te
  %i.tj = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.tf
  %i.tk = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.tg
  %i.tl = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.th
  %i.tm = load i8, ptr %i.ti, align 1, !tbaa !74, !alias.scope !122
  %i.tn = load i8, ptr %i.tj, align 1, !tbaa !74, !alias.scope !122
  %i.to = load i8, ptr %i.tk, align 1, !tbaa !74, !alias.scope !122
  %i.tp = load i8, ptr %i.tl, align 1, !tbaa !74, !alias.scope !122
  %i.tq = insertelement <4 x i8> poison, i8 %i.tm, i64 0
  %i.tr = insertelement <4 x i8> %i.tq, i8 %i.tn, i64 1
  %i.ts = insertelement <4 x i8> %i.tr, i8 %i.to, i64 2
  %i.tt = insertelement <4 x i8> %i.ts, i8 %i.tp, i64 3
  %i.tu = zext <4 x i8> %i.tt to <4 x i32>        ; 2 uses
  %i.tv = shl nuw nsw <4 x i32> %i.tu, splat (i32 3) ; 2 uses
  %i.tw = and <4 x i32> %i.tv, splat (i32 24)
  %i.tx = or disjoint <4 x i32> %i.tw, %i.tb      ; 2 uses
  %i.ty = shl nuw nsw <4 x i32> %i.ta, splat (i32 3)
  %i.tz = lshr <4 x i32> %i.ta, splat (i32 2)
  %i.ua = or disjoint <4 x i32> %i.ty, %i.tz
  %i.ub = shl nuw nsw <4 x i32> %i.tx, splat (i32 14)
  %i.uc = shl nuw nsw <4 x i32> %i.tx, splat (i32 9)
  %i.ud = and <4 x i32> %i.uc, splat (i32 14336)
  %i.ue = or disjoint <4 x i32> %i.ud, %i.ub
  %i.uf = and <4 x i32> %i.tv, splat (i32 2016)
  %i.ug = lshr <4 x i32> %i.tu, splat (i32 2)
  %i.uh = or <4 x i32> %i.uf, %i.ug
  %i.ui = shl nuw nsw <4 x i32> %i.uh, splat (i32 17)
  %i.uj = or <4 x i32> %i.ui, %i.ue
  %i.uk = or disjoint <4 x i32> %i.uj, %i.ua
  %i.ul = add i32 %i.rs, %i.sd
  %i.um = zext i32 %i.ul to i64
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.um
  store <4 x i32> %i.uk, ptr %i.un, align 4, !tbaa !56, !alias.scope !123, !noalias !122
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.uo = icmp eq i64 %index.next, %n.vec
  br i1 %i.uo, label %middle.block, label %vector.body, !llvm.loop !105

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit655.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph671.i, %middle.block
  %indvars.iv738.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph671.i ], [ %n.vec, %middle.block ]
  %.2550670.i.ph = phi i32 [ %i.gx, %vector.memcheck ], [ %i.gx, %vector.scevcheck ], [ %i.gx, %.lr.ph671.i ], [ %i.sc, %middle.block ]
  br label %scalar.ph

.lr.ph676.i:                                      ; preds = %bb.ah, %bb.ah, %bb.ah
  %i.up = xor i32 %i.gw, -1
  %i.uq = add nsw i32 %i.bd, %i.up
  %i.ur = mul nuw nsw i32 %i.uq, %.4..4..4..4..4..i
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ak, %.lr.ph676.i
  %indvars.iv743.i = phi i64 [ 0, %.lr.ph676.i ], [ %indvars.iv.next744.i, %bb.ak ] ; 2 uses
  %.0544675.i = phi i8 [ 0, %.lr.ph676.i ], [ %.1545.i, %bb.ak ]
  %.0546674.i = phi i32 [ 0, %.lr.ph676.i ], [ %i.uw, %bb.ak ] ; 2 uses
  %.0548673.i = phi i32 [ %i.gx, %.lr.ph676.i ], [ %.1549.i, %bb.ak ] ; 3 uses
  %.not620.i = icmp eq i32 %.0546674.i, 0
  br i1 %.not620.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.us = add i32 %.0548673.i, 1
  %i.ut = zext i32 %.0548673.i to i64
  %i.uu = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ut
  %i.uv = load i8, ptr %i.uu, align 1, !tbaa !74
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.1549.i = phi i32 [ %.0548673.i, %bb.ai ], [ %i.us, %bb.aj ]
  %.1547.i = phi i32 [ %.0546674.i, %bb.ai ], [ 8, %bb.aj ]
  %.1545.i = phi i8 [ %.0544675.i, %bb.ai ], [ %i.uv, %bb.aj ] ; 2 uses
  %i.uw = sub i32 %.1547.i, %i.be                 ; 2 uses
  %i.ux = zext i8 %.1545.i to i32
  %i.uy = lshr i32 %i.ux, %i.uw
  %i.uz = and i32 %i.uy, %i.dp
  %i.va = zext nneg i32 %i.uz to i64
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %.0528.i, i64 %i.va
  %i.vc = load i32, ptr %i.vb, align 1, !tbaa !74
  %i.vd = trunc i64 %indvars.iv743.i to i32
  %i.ve = add i32 %i.ur, %i.vd
  %i.vf = zext i32 %i.ve to i64
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.vf
  store i32 %i.vc, ptr %i.vg, align 4, !tbaa !56
  %indvars.iv.next744.i = add nuw nsw i64 %indvars.iv743.i, 1 ; 2 uses
  %exitcond746.not.i = icmp eq i64 %indvars.iv.next744.i, %wide.trip.count.i
  br i1 %exitcond746.not.i, label %.loopexit655.i, label %bb.ai

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv738.i = phi i64 [ %indvars.iv.next739.i, %scalar.ph ], [ %indvars.iv738.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.2550670.i = phi i32 [ %i.wm, %scalar.ph ], [ %.2550670.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.vh = zext i32 %.2550670.i to i64
  %i.vi = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.vh
  %i.vj = load i8, ptr %i.vi, align 1, !tbaa !74
  %i.vk = zext i8 %i.vj to i32                    ; 2 uses
  %i.vl = and i32 %i.vk, 31                       ; 2 uses
  %i.vm = lshr i32 %i.vk, 5
  %i.vn = or disjoint i32 %.2550670.i, 1
  %i.vo = zext i32 %i.vn to i64
  %i.vp = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.vo
  %i.vq = load i8, ptr %i.vp, align 1, !tbaa !74
  %i.vr = zext i8 %i.vq to i32                    ; 2 uses
  %i.vs = shl nuw nsw i32 %i.vr, 3                ; 2 uses
  %i.vt = and i32 %i.vs, 24
  %i.vu = or disjoint i32 %i.vt, %i.vm            ; 2 uses
  %i.vv = shl nuw nsw i32 %i.vl, 3
  %i.vw = lshr i32 %i.vl, 2
  %i.vx = or disjoint i32 %i.vv, %i.vw
  %i.vy = shl nuw nsw i32 %i.vu, 14
  %i.vz = shl nuw nsw i32 %i.vu, 9
  %i.wa = and i32 %i.vz, 14336
  %i.wb = or disjoint i32 %i.wa, %i.vy
  %i.wc = and i32 %i.vs, 2016
  %i.wd = lshr i32 %i.vr, 2
  %i.we = or i32 %i.wc, %i.wd
  %i.wf = shl nuw nsw i32 %i.we, 17
  %i.wg = or i32 %i.wf, %i.wb
  %i.wh = or disjoint i32 %i.wg, %i.vx
  %i.wi = trunc i64 %indvars.iv738.i to i32
  %i.wj = add i32 %i.rs, %i.wi
  %i.wk = zext i32 %i.wj to i64
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.wk
  store i32 %i.wh, ptr %i.wl, align 4, !tbaa !56
  %i.wm = add i32 %.2550670.i, 2
  %indvars.iv.next739.i = add nuw nsw i64 %indvars.iv738.i, 1 ; 2 uses
  %exitcond742.not.i = icmp eq i64 %indvars.iv.next739.i, %wide.trip.count.i
  br i1 %exitcond742.not.i, label %.loopexit655.i, label %scalar.ph, !llvm.loop !106

scalar.ph73:                                      ; preds = %scalar.ph73.preheader, %scalar.ph73
  %indvars.iv733.i = phi i64 [ %indvars.iv.next734.i, %scalar.ph73 ], [ %indvars.iv733.i.ph, %scalar.ph73.preheader ] ; 2 uses
  %.3551667.i = phi i32 [ %i.xj, %scalar.ph73 ], [ %.3551667.i.ph, %scalar.ph73.preheader ] ; 4 uses
  %i.wn = zext i32 %.3551667.i to i64
  %i.wo = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.wn
  %i.wp = load i8, ptr %i.wo, align 1, !tbaa !74
  %i.wq = zext i8 %i.wp to i32
  %i.wr = add i32 %.3551667.i, 1
  %i.ws = zext i32 %i.wr to i64
  %i.wt = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ws
  %i.wu = load i8, ptr %i.wt, align 1, !tbaa !74
  %i.wv = zext i8 %i.wu to i32
  %i.ww = shl nuw nsw i32 %i.wv, 8
  %i.wx = or disjoint i32 %i.ww, %i.wq
  %i.wy = add i32 %.3551667.i, 2
  %i.wz = zext i32 %i.wy to i64
  %i.xa = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.wz
  %i.xb = load i8, ptr %i.xa, align 1, !tbaa !74
  %i.xc = zext i8 %i.xb to i32
  %i.xd = shl nuw nsw i32 %i.xc, 16
  %i.xe = or disjoint i32 %i.wx, %i.xd
  %i.xf = trunc i64 %indvars.iv733.i to i32
  %i.xg = add i32 %i.oh, %i.xf
  %i.xh = zext i32 %i.xg to i64
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.xh
  store i32 %i.xe, ptr %i.xi, align 4, !tbaa !56
  %i.xj = add i32 %.3551667.i, 3
  %indvars.iv.next734.i = add nuw nsw i64 %indvars.iv733.i, 1 ; 2 uses
  %exitcond737.not.i = icmp eq i64 %indvars.iv.next734.i, %wide.trip.count.i
  br i1 %exitcond737.not.i, label %.loopexit655.i, label %scalar.ph73, !llvm.loop !107

scalar.ph98:                                      ; preds = %scalar.ph98.preheader, %scalar.ph98
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph98 ], [ %indvars.iv.i.ph, %scalar.ph98.preheader ] ; 2 uses
  %.4552665.i = phi i32 [ %i.yo, %scalar.ph98 ], [ %.4552665.i.ph, %scalar.ph98.preheader ] ; 5 uses
  %.1556664.i = phi i32 [ %i.yn, %scalar.ph98 ], [ %.1556664.i.ph, %scalar.ph98.preheader ]
  %i.xk = or disjoint i32 %.4552665.i, 3
  %i.xl = zext i32 %i.xk to i64
  %i.xm = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.xl
  %i.xn = load i8, ptr %i.xm, align 1, !tbaa !74
  %i.xo = zext i8 %i.xn to i32
  %i.xp = shl nuw i32 %i.xo, 24                   ; 2 uses
  %i.xq = zext i32 %.4552665.i to i64
  %i.xr = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.xq
  %i.xs = load i8, ptr %i.xr, align 1, !tbaa !74
  %i.xt = zext i8 %i.xs to i32
  %i.xu = or disjoint i32 %.4552665.i, 1
  %i.xv = zext i32 %i.xu to i64
  %i.xw = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.xv
  %i.xx = load i8, ptr %i.xw, align 1, !tbaa !74
  %i.xy = zext i8 %i.xx to i32
  %i.xz = shl nuw nsw i32 %i.xy, 8
  %i.ya = or disjoint i32 %.4552665.i, 2
  %i.yb = zext i32 %i.ya to i64
  %i.yc = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.yb
  %i.yd = load i8, ptr %i.yc, align 1, !tbaa !74
  %i.ye = zext i8 %i.yd to i32
  %i.yf = shl nuw nsw i32 %i.ye, 16
  %i.yg = or disjoint i32 %i.xz, %i.xt
  %i.yh = or disjoint i32 %i.yg, %i.yf
  %i.yi = or disjoint i32 %i.yh, %i.xp
  %i.yj = trunc i64 %indvars.iv.i to i32
  %i.yk = add i32 %i.ha, %i.yj
  %i.yl = zext i32 %i.yk to i64
  %i.ym = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.yl
  store i32 %i.yi, ptr %i.ym, align 4, !tbaa !56
  %i.yn = or i32 %i.xp, %.1556664.i               ; 2 uses
  %i.yo = add i32 %.4552665.i, 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit655.i, label %scalar.ph98, !llvm.loop !108
end_hunk_0

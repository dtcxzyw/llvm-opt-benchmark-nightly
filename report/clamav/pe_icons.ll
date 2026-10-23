Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/pe_icons?download=true
inline.NumInlined: 21
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 27
begin_hunk_0_@icon_scan_cb:bb.a
  br i1 %.not602.i, label %bb.af, label %.preheader662.i

.preheader662.i:                                  ; preds = %bb.ae
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
  %narrow127 = add nuw nsw i32 %i.dv, %i.cm
  %i.dw = shl nuw nsw i64 %wide.trip.count.i, 1
  %scevgep56 = getelementptr i8, ptr %i.da, i64 %i.dw
  %i.dx = add nsw i64 %wide.trip.count.i, -1      ; 4 uses
  %i.dy = lshr i32 %i.ci, 3
  %i.dz = and i32 %i.dy, 536870908
  %narrow128 = add nuw nsw i32 %i.dz, %i.cm
  %i.ea = zext nneg i32 %narrow128 to i64
  %i.eb = shl nuw nsw i64 %wide.trip.count.i, 2
  %scevgep65 = getelementptr i8, ptr %i.do, i64 %i.eb
  %i.ec = lshr i32 %i.ci, 3
  %i.ed = and i32 %i.ec, 536870908
  %narrow129 = add nuw nsw i32 %i.ed, %i.cm
  %i.ee = mul nuw nsw i64 %wide.trip.count.i, 3
  %scevgep68 = getelementptr i8, ptr %i.da, i64 %i.ee
  %i.ef = add nsw i64 %wide.trip.count.i, -1      ; 3 uses
  %i.eg = lshr i32 %i.ci, 3
  %i.eh = and i32 %i.eg, 536870908
  %narrow130 = add nuw nsw i32 %i.eh, %i.cm
  %i.ei = zext nneg i32 %narrow130 to i64
  %i.ej = shl nuw nsw i64 %wide.trip.count.i, 2   ; 2 uses
  %scevgep89 = getelementptr i8, ptr %i.do, i64 %i.ej
  %i.ek = lshr i32 %i.ci, 3
  %i.el = and i32 %i.ek, 536870908
  %narrow131 = add nuw nsw i32 %i.el, %i.cm
  %scevgep92 = getelementptr i8, ptr %i.da, i64 %i.ej
  %min.iters.check98 = icmp ult i32 %.4..4..4..4..4..i, 24
  %i.em = trunc nsw i64 %i.ef to i32
  %i.en = trunc nsw i64 %i.ef to i32
  %mul.result85 = shl i32 %i.en, 2                ; 4 uses
  %mul.overflow86 = icmp ugt i64 %i.ef, 1073741823
  %n.vec100 = and i64 %wide.trip.count.i, 504     ; 4 uses
  %i.eo = trunc nuw nsw i64 %n.vec100 to i32
  %i.ep = shl nuw nsw i32 %i.eo, 2
  %cmp.n106 = icmp eq i64 %n.vec100, %wide.trip.count.i
  %min.iters.check = icmp ult i32 %.4..4..4..4..4..i, 24
  %i.eq = trunc nsw i64 %i.dx to i32
  %i.er = trunc nsw i64 %i.dx to i32
  %mul60 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.er, i32 3) ; 2 uses
  %mul.result61 = extractvalue { i32, i1 } %mul60, 0 ; 3 uses
  %mul.overflow62 = extractvalue { i32, i1 } %mul60, 1
  %i.es = icmp ugt i64 %i.dx, 4294967295
  %i.et = icmp ugt i64 %i.dx, 4294967295
  %invariant.op = or i1 %i.et, %mul.overflow62
  %n.vec75 = and i64 %wide.trip.count.i, 508      ; 4 uses
  %i.eu = trunc nuw nsw i64 %n.vec75 to i32
  %i.ev = mul nuw nsw i32 %i.eu, 3
  %cmp.n80 = icmp eq i64 %n.vec75, %wide.trip.count.i
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
  %scevgep88 = getelementptr i8, ptr %i.do, i64 %i.fr
  %scevgep90 = getelementptr i8, ptr %scevgep89, i64 %i.fr
  %i.fs = trunc i64 %indvars.iv747.i to i32
  %i.ft = mul i32 %narrow131, %i.fs
  %i.fu = zext i32 %i.ft to i64                   ; 2 uses
  %scevgep91 = getelementptr i8, ptr %i.da, i64 %i.fu
  %scevgep93 = getelementptr i8, ptr %scevgep92, i64 %i.fu
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
  %i.gg = mul i32 %narrow129, %i.gf
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
  %i.gs = mul i32 %narrow127, %i.gr
  %i.gt = zext i32 %i.gs to i64                   ; 2 uses
  %scevgep55 = getelementptr i8, ptr %i.da, i64 %i.gt
  %scevgep57 = getelementptr i8, ptr %scevgep56, i64 %i.gt
  %i.gu = trunc i64 %indvars.iv747.i to i32       ; 5 uses
  %i.gv = mul i32 %i.cn, %i.gu                    ; 18 uses
  switch i16 %.14..14..14..14..14..i, label %.loopexit655.i [
    i16 1, label %.lr.ph676.i
    i16 4, label %.lr.ph676.i
    i16 8, label %.lr.ph676.i
    i16 16, label %.lr.ph671.i
    i16 24, label %.lr.ph668.i
    i16 32, label %.lr.ph.i
  ]

.lr.ph.i:                                         ; preds = %bb.ah
  %i.gw = xor i32 %i.gu, -1
  %i.gx = add nsw i32 %i.bd, %i.gw
  %i.gy = mul i32 %i.gx, %.4..4..4..4..4..i       ; 3 uses
  br i1 %min.iters.check98, label %scalar.ph97.preheader, label %vector.scevcheck83

vector.scevcheck83:                               ; preds = %.lr.ph.i
  %i.gz = xor i32 %i.gy, -1
  %i.ha = icmp ult i32 %i.gz, %i.em
  %i.hb = xor i32 %i.fw, -4
  %i.hc = icmp ult i32 %i.hb, %mul.result85
  %i.hd = xor i32 %i.gv, -1
  %i.he = icmp ugt i32 %mul.result85, %i.hd
  %i.hf = or i1 %i.he, %mul.overflow86
  %i.hg = xor i32 %i.fx, -2
  %i.hh = icmp ult i32 %i.hg, %mul.result85
  %i.hi = xor i32 %i.fy, -3
  %i.hj = icmp ult i32 %i.hi, %mul.result85
  %i.hk = or i1 %i.hc, %i.ha
  %i.hl = or i1 %i.hk, %i.hf
  %i.hm = or i1 %i.hh, %i.hl
  %i.hn = or i1 %i.hj, %i.hm
  br i1 %i.hn, label %scalar.ph97.preheader, label %vector.memcheck87

vector.memcheck87:                                ; preds = %vector.scevcheck83
  %bound094 = icmp ult ptr %scevgep88, %scevgep93
  %bound195 = icmp ult ptr %scevgep91, %scevgep90
  %found.conflict96 = and i1 %bound094, %bound195
  br i1 %found.conflict96, label %scalar.ph97.preheader, label %vector.ph99

vector.ph99:                                      ; preds = %vector.memcheck87
  %i.ho = add i32 %i.gv, %i.ep
  %i.hp = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.0555679.i, i64 0
  br label %vector.body101

vector.body101:                                   ; preds = %vector.body101, %vector.ph99
  %index102 = phi i64 [ 0, %vector.ph99 ], [ %index.next104, %vector.body101 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.hp, %vector.ph99 ], [ %i.nz, %vector.body101 ]
  %vec.phi103 = phi <4 x i32> [ zeroinitializer, %vector.ph99 ], [ %i.oa, %vector.body101 ]
  %i.hq = trunc i64 %index102 to i32              ; 2 uses
  %i.hr = shl i32 %i.hq, 2
  %i.hs = add i32 %i.gv, %i.hr                    ; 11 uses
  %i.ht = add i32 %i.hs, 4                        ; 4 uses
  %i.hu = add i32 %i.hs, 8                        ; 4 uses
  %i.hv = add i32 %i.hs, 12                       ; 4 uses
  %i.hw = add i32 %i.hs, 16                       ; 4 uses
  %i.hx = add i32 %i.hs, 20                       ; 4 uses
  %i.hy = add i32 %i.hs, 24                       ; 4 uses
  %i.hz = add i32 %i.hs, 28                       ; 4 uses
  %i.ia = or disjoint i32 %i.hs, 3
  %7 = or disjoint i32 %i.ht, 3
  %8 = or disjoint i32 %i.hu, 3
  %9 = or disjoint i32 %i.hv, 3
  %10 = or disjoint i32 %i.hw, 3
  %11 = or disjoint i32 %i.hx, 3
  %12 = or disjoint i32 %i.hy, 3
  %13 = or disjoint i32 %i.hz, 3
  %i.ib = zext i32 %i.ia to i64
  %i.ic = zext i32 %7 to i64
  %i.id = zext i32 %8 to i64
  %i.ie = zext i32 %9 to i64
  %i.if = zext i32 %10 to i64
  %i.ig = zext i32 %11 to i64
  %i.ih = zext i32 %12 to i64
  %i.ii = zext i32 %13 to i64
  %i.ij = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ib
  %i.ik = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ic
  %i.il = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.id
  %i.im = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ie
  %i.in = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.if
  %i.io = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ig
  %i.ip = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ih
  %i.iq = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ii
  %i.ir = load i8, ptr %i.ij, align 1, !tbaa !74, !alias.scope !118
  %i.is = load i8, ptr %i.ik, align 1, !tbaa !74, !alias.scope !118
  %i.it = load i8, ptr %i.il, align 1, !tbaa !74, !alias.scope !118
  %i.iu = load i8, ptr %i.im, align 1, !tbaa !74, !alias.scope !118
  %i.iv = insertelement <4 x i8> poison, i8 %i.ir, i64 0
  %i.iw = insertelement <4 x i8> %i.iv, i8 %i.is, i64 1
  %i.ix = insertelement <4 x i8> %i.iw, i8 %i.it, i64 2
  %i.iy = insertelement <4 x i8> %i.ix, i8 %i.iu, i64 3
  %i.iz = load i8, ptr %i.in, align 1, !tbaa !74, !alias.scope !118
  %i.ja = load i8, ptr %i.io, align 1, !tbaa !74, !alias.scope !118
  %i.jb = load i8, ptr %i.ip, align 1, !tbaa !74, !alias.scope !118
  %i.jc = load i8, ptr %i.iq, align 1, !tbaa !74, !alias.scope !118
  %i.jd = insertelement <4 x i8> poison, i8 %i.iz, i64 0
  %i.je = insertelement <4 x i8> %i.jd, i8 %i.ja, i64 1
  %i.jf = insertelement <4 x i8> %i.je, i8 %i.jb, i64 2
  %i.jg = insertelement <4 x i8> %i.jf, i8 %i.jc, i64 3
  %i.jh = zext <4 x i8> %i.iy to <4 x i32>
  %i.ji = zext <4 x i8> %i.jg to <4 x i32>
  %i.jj = shl nuw <4 x i32> %i.jh, splat (i32 24) ; 2 uses
  %i.jk = shl nuw <4 x i32> %i.ji, splat (i32 24) ; 2 uses
  %i.jl = zext i32 %i.hs to i64
  %i.jm = zext i32 %i.ht to i64
  %i.jn = zext i32 %i.hu to i64
  %i.jo = zext i32 %i.hv to i64
  %i.jp = zext i32 %i.hw to i64
  %i.jq = zext i32 %i.hx to i64
  %i.jr = zext i32 %i.hy to i64
  %i.js = zext i32 %i.hz to i64
  %i.jt = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.jl
  %i.ju = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.jm
  %i.jv = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.jn
  %i.jw = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.jo
  %i.jx = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.jp
  %i.jy = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.jq
  %i.jz = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.jr
  %i.ka = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.js
  %i.kb = load i8, ptr %i.jt, align 1, !tbaa !74, !alias.scope !118
  %i.kc = load i8, ptr %i.ju, align 1, !tbaa !74, !alias.scope !118
  %i.kd = load i8, ptr %i.jv, align 1, !tbaa !74, !alias.scope !118
  %i.ke = load i8, ptr %i.jw, align 1, !tbaa !74, !alias.scope !118
  %i.kf = insertelement <4 x i8> poison, i8 %i.kb, i64 0
  %i.kg = insertelement <4 x i8> %i.kf, i8 %i.kc, i64 1
  %i.kh = insertelement <4 x i8> %i.kg, i8 %i.kd, i64 2
  %i.ki = insertelement <4 x i8> %i.kh, i8 %i.ke, i64 3
  %i.kj = load i8, ptr %i.jx, align 1, !tbaa !74, !alias.scope !118
  %i.kk = load i8, ptr %i.jy, align 1, !tbaa !74, !alias.scope !118
  %i.kl = load i8, ptr %i.jz, align 1, !tbaa !74, !alias.scope !118
  %i.km = load i8, ptr %i.ka, align 1, !tbaa !74, !alias.scope !118
  %i.kn = insertelement <4 x i8> poison, i8 %i.kj, i64 0
  %i.ko = insertelement <4 x i8> %i.kn, i8 %i.kk, i64 1
  %i.kp = insertelement <4 x i8> %i.ko, i8 %i.kl, i64 2
  %i.kq = insertelement <4 x i8> %i.kp, i8 %i.km, i64 3
  %i.kr = zext <4 x i8> %i.ki to <4 x i32>
  %i.ks = zext <4 x i8> %i.kq to <4 x i32>
  %i.kt = or disjoint i32 %i.hs, 1
  %14 = or disjoint i32 %i.ht, 1
  %15 = or disjoint i32 %i.hu, 1
  %16 = or disjoint i32 %i.hv, 1
  %17 = or disjoint i32 %i.hw, 1
  %18 = or disjoint i32 %i.hx, 1
  %19 = or disjoint i32 %i.hy, 1
  %20 = or disjoint i32 %i.hz, 1
  %i.ku = zext i32 %i.kt to i64
  %i.kv = zext i32 %14 to i64
  %i.kw = zext i32 %15 to i64
  %i.kx = zext i32 %16 to i64
  %i.ky = zext i32 %17 to i64
  %i.kz = zext i32 %18 to i64
  %i.la = zext i32 %19 to i64
  %i.lb = zext i32 %20 to i64
  %i.lc = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ku
  %i.ld = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.kv
  %i.le = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.kw
  %i.lf = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.kx
  %i.lg = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ky
  %i.lh = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.kz
  %i.li = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.la
  %i.lj = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.lb
  %i.lk = load i8, ptr %i.lc, align 1, !tbaa !74, !alias.scope !118
  %i.ll = load i8, ptr %i.ld, align 1, !tbaa !74, !alias.scope !118
  %i.lm = load i8, ptr %i.le, align 1, !tbaa !74, !alias.scope !118
  %i.ln = load i8, ptr %i.lf, align 1, !tbaa !74, !alias.scope !118
  %i.lo = insertelement <4 x i8> poison, i8 %i.lk, i64 0
  %i.lp = insertelement <4 x i8> %i.lo, i8 %i.ll, i64 1
  %i.lq = insertelement <4 x i8> %i.lp, i8 %i.lm, i64 2
  %i.lr = insertelement <4 x i8> %i.lq, i8 %i.ln, i64 3
  %i.ls = load i8, ptr %i.lg, align 1, !tbaa !74, !alias.scope !118
  %i.lt = load i8, ptr %i.lh, align 1, !tbaa !74, !alias.scope !118
  %i.lu = load i8, ptr %i.li, align 1, !tbaa !74, !alias.scope !118
  %i.lv = load i8, ptr %i.lj, align 1, !tbaa !74, !alias.scope !118
  %i.lw = insertelement <4 x i8> poison, i8 %i.ls, i64 0
  %i.lx = insertelement <4 x i8> %i.lw, i8 %i.lt, i64 1
  %i.ly = insertelement <4 x i8> %i.lx, i8 %i.lu, i64 2
  %i.lz = insertelement <4 x i8> %i.ly, i8 %i.lv, i64 3
  %i.ma = zext <4 x i8> %i.lr to <4 x i32>
  %i.mb = zext <4 x i8> %i.lz to <4 x i32>
  %i.mc = shl nuw nsw <4 x i32> %i.ma, splat (i32 8)
  %i.md = shl nuw nsw <4 x i32> %i.mb, splat (i32 8)
  %i.me = or disjoint i32 %i.hs, 2
  %21 = or disjoint i32 %i.ht, 2
  %22 = or disjoint i32 %i.hu, 2
  %23 = or disjoint i32 %i.hv, 2
  %24 = or disjoint i32 %i.hw, 2
  %25 = or disjoint i32 %i.hx, 2
  %26 = or disjoint i32 %i.hy, 2
  %27 = or disjoint i32 %i.hz, 2
  %i.mf = zext i32 %i.me to i64
  %i.mg = zext i32 %21 to i64
  %i.mh = zext i32 %22 to i64
  %i.mi = zext i32 %23 to i64
  %i.mj = zext i32 %24 to i64
  %i.mk = zext i32 %25 to i64
  %i.ml = zext i32 %26 to i64
  %i.mm = zext i32 %27 to i64
  %i.mn = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.mf
  %i.mo = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.mg
  %i.mp = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.mh
  %i.mq = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.mi
  %i.mr = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.mj
  %i.ms = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.mk
  %i.mt = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ml
  %i.mu = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.mm
  %i.mv = load i8, ptr %i.mn, align 1, !tbaa !74, !alias.scope !118
  %i.mw = load i8, ptr %i.mo, align 1, !tbaa !74, !alias.scope !118
  %i.mx = load i8, ptr %i.mp, align 1, !tbaa !74, !alias.scope !118
  %i.my = load i8, ptr %i.mq, align 1, !tbaa !74, !alias.scope !118
  %i.mz = insertelement <4 x i8> poison, i8 %i.mv, i64 0
  %i.na = insertelement <4 x i8> %i.mz, i8 %i.mw, i64 1
  %i.nb = insertelement <4 x i8> %i.na, i8 %i.mx, i64 2
  %i.nc = insertelement <4 x i8> %i.nb, i8 %i.my, i64 3
  %i.nd = load i8, ptr %i.mr, align 1, !tbaa !74, !alias.scope !118
  %i.ne = load i8, ptr %i.ms, align 1, !tbaa !74, !alias.scope !118
  %i.nf = load i8, ptr %i.mt, align 1, !tbaa !74, !alias.scope !118
  %i.ng = load i8, ptr %i.mu, align 1, !tbaa !74, !alias.scope !118
  %i.nh = insertelement <4 x i8> poison, i8 %i.nd, i64 0
  %i.ni = insertelement <4 x i8> %i.nh, i8 %i.ne, i64 1
  %i.nj = insertelement <4 x i8> %i.ni, i8 %i.nf, i64 2
  %i.nk = insertelement <4 x i8> %i.nj, i8 %i.ng, i64 3
  %i.nl = zext <4 x i8> %i.nc to <4 x i32>
  %i.nm = zext <4 x i8> %i.nk to <4 x i32>
  %i.nn = shl nuw nsw <4 x i32> %i.nl, splat (i32 16)
  %i.no = shl nuw nsw <4 x i32> %i.nm, splat (i32 16)
  %i.np = or disjoint <4 x i32> %i.mc, %i.kr
  %i.nq = or disjoint <4 x i32> %i.md, %i.ks
  %i.nr = or disjoint <4 x i32> %i.np, %i.nn
  %i.ns = or disjoint <4 x i32> %i.nq, %i.no
  %i.nt = or disjoint <4 x i32> %i.nr, %i.jj
  %i.nu = or disjoint <4 x i32> %i.ns, %i.jk
  %i.nv = add i32 %i.gy, %i.hq
  %i.nw = zext i32 %i.nv to i64
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.nw ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 16
  store <4 x i32> %i.nt, ptr %i.nx, align 4, !tbaa !56, !alias.scope !119, !noalias !118
  store <4 x i32> %i.nu, ptr %i.ny, align 4, !tbaa !56, !alias.scope !119, !noalias !118
  %i.nz = or <4 x i32> %i.jj, %vec.phi            ; 2 uses
  %i.oa = or <4 x i32> %i.jk, %vec.phi103         ; 2 uses
  %index.next104 = add nuw i64 %index102, 8       ; 2 uses
  %i.ob = icmp eq i64 %index.next104, %n.vec100
  br i1 %i.ob, label %middle.block105, label %vector.body101, !llvm.loop !97

middle.block105:                                  ; preds = %vector.body101
  %bin.rdx = or <4 x i32> %i.oa, %i.nz
  %i.oc = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n106, label %.loopexit655.i, label %scalar.ph97.preheader

scalar.ph97.preheader:                            ; preds = %vector.memcheck87, %vector.scevcheck83, %.lr.ph.i, %middle.block105
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck87 ], [ 0, %vector.scevcheck83 ], [ 0, %.lr.ph.i ], [ %n.vec100, %middle.block105 ]
  %.4552665.i.ph = phi i32 [ %i.gv, %vector.memcheck87 ], [ %i.gv, %vector.scevcheck83 ], [ %i.gv, %.lr.ph.i ], [ %i.ho, %middle.block105 ]
  %.1556664.i.ph = phi i32 [ %.0555679.i, %vector.memcheck87 ], [ %.0555679.i, %vector.scevcheck83 ], [ %.0555679.i, %.lr.ph.i ], [ %i.oc, %middle.block105 ]
  br label %scalar.ph97

.lr.ph668.i:                                      ; preds = %bb.ah
  %i.od = xor i32 %i.gu, -1
  %i.oe = add nsw i32 %i.bd, %i.od
  %i.of = mul nuw nsw i32 %i.oe, %.4..4..4..4..4..i ; 3 uses
  br i1 %min.iters.check, label %scalar.ph73.preheader, label %vector.scevcheck59

vector.scevcheck59:                               ; preds = %.lr.ph668.i
  %i.og = xor i32 %i.of, -1
  %i.oh = icmp ult i32 %i.og, %i.eq
  %i.oi = xor i32 %i.gv, -1
  %i.oj = icmp ugt i32 %mul.result61, %i.oi
  %i.ok = or i1 %i.oj, %i.es
  %i.ol = xor i32 %i.gj, -2
  %i.om = icmp ult i32 %i.ol, %mul.result61
  %.reass = or i1 %i.om, %invariant.op
  %i.on = xor i32 %i.gk, -3
  %i.oo = icmp ult i32 %i.on, %mul.result61
  %i.op = or i1 %i.ok, %i.oh
  %i.oq = or i1 %i.op, %.reass
  %i.or = or i1 %i.oo, %i.oq
  br i1 %i.or, label %scalar.ph73.preheader, label %vector.memcheck63

vector.memcheck63:                                ; preds = %vector.scevcheck59
  %bound070 = icmp ult ptr %scevgep64, %scevgep69
  %bound171 = icmp ult ptr %scevgep67, %scevgep66
  %found.conflict72 = and i1 %bound070, %bound171
  br i1 %found.conflict72, label %scalar.ph73.preheader, label %vector.ph74

vector.ph74:                                      ; preds = %vector.memcheck63
  %i.os = add i32 %i.gv, %i.ev
  br label %vector.body76

vector.body76:                                    ; preds = %vector.body76, %vector.ph74
  %index77 = phi i64 [ 0, %vector.ph74 ], [ %index.next78, %vector.body76 ] ; 2 uses
  %i.ot = trunc i64 %index77 to i32               ; 2 uses
  %i.ou = mul i32 %i.ot, 3
  %i.ov = add i32 %i.gv, %i.ou                    ; 12 uses
  %i.ow = or disjoint i32 %i.ov, 3
  %i.ox = add i32 %i.ov, 6
  %i.oy = add i32 %i.ov, 9
  %i.oz = zext i32 %i.ov to i64
  %i.pa = zext i32 %i.ow to i64
  %i.pb = zext i32 %i.ox to i64
  %i.pc = zext i32 %i.oy to i64
  %i.pd = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.oz
  %i.pe = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.pa
  %i.pf = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.pb
  %i.pg = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.pc
  %i.ph = load i8, ptr %i.pd, align 1, !tbaa !74, !alias.scope !120
  %i.pi = load i8, ptr %i.pe, align 1, !tbaa !74, !alias.scope !120
  %i.pj = load i8, ptr %i.pf, align 1, !tbaa !74, !alias.scope !120
  %i.pk = load i8, ptr %i.pg, align 1, !tbaa !74, !alias.scope !120
  %i.pl = insertelement <4 x i8> poison, i8 %i.ph, i64 0
  %i.pm = insertelement <4 x i8> %i.pl, i8 %i.pi, i64 1
  %i.pn = insertelement <4 x i8> %i.pm, i8 %i.pj, i64 2
  %i.po = insertelement <4 x i8> %i.pn, i8 %i.pk, i64 3
  %i.pp = zext <4 x i8> %i.po to <4 x i32>
  %i.pq = or disjoint i32 %i.ov, 1
  %i.pr = add i32 %i.ov, 4
  %i.ps = add i32 %i.ov, 7
  %i.pt = add i32 %i.ov, 10
  %i.pu = zext i32 %i.pq to i64
  %i.pv = zext i32 %i.pr to i64
  %i.pw = zext i32 %i.ps to i64
  %i.px = zext i32 %i.pt to i64
  %i.py = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.pu
  %i.pz = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.pv
  %i.qa = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.pw
  %i.qb = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.px
  %i.qc = load i8, ptr %i.py, align 1, !tbaa !74, !alias.scope !120
  %i.qd = load i8, ptr %i.pz, align 1, !tbaa !74, !alias.scope !120
  %i.qe = load i8, ptr %i.qa, align 1, !tbaa !74, !alias.scope !120
  %i.qf = load i8, ptr %i.qb, align 1, !tbaa !74, !alias.scope !120
  %i.qg = insertelement <4 x i8> poison, i8 %i.qc, i64 0
  %i.qh = insertelement <4 x i8> %i.qg, i8 %i.qd, i64 1
  %i.qi = insertelement <4 x i8> %i.qh, i8 %i.qe, i64 2
  %i.qj = insertelement <4 x i8> %i.qi, i8 %i.qf, i64 3
  %i.qk = zext <4 x i8> %i.qj to <4 x i32>
  %i.ql = shl nuw nsw <4 x i32> %i.qk, splat (i32 8)
  %i.qm = or disjoint <4 x i32> %i.ql, %i.pp
  %i.qn = or disjoint i32 %i.ov, 2
  %i.qo = add i32 %i.ov, 5
  %i.qp = add i32 %i.ov, 8
  %i.qq = add i32 %i.ov, 11
  %i.qr = zext i32 %i.qn to i64
  %i.qs = zext i32 %i.qo to i64
  %i.qt = zext i32 %i.qp to i64
  %i.qu = zext i32 %i.qq to i64
  %i.qv = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.qr
  %i.qw = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.qs
  %i.qx = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.qt
  %i.qy = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.qu
  %i.qz = load i8, ptr %i.qv, align 1, !tbaa !74, !alias.scope !120
  %i.ra = load i8, ptr %i.qw, align 1, !tbaa !74, !alias.scope !120
  %i.rb = load i8, ptr %i.qx, align 1, !tbaa !74, !alias.scope !120
  %i.rc = load i8, ptr %i.qy, align 1, !tbaa !74, !alias.scope !120
  %i.rd = insertelement <4 x i8> poison, i8 %i.qz, i64 0
  %i.re = insertelement <4 x i8> %i.rd, i8 %i.ra, i64 1
  %i.rf = insertelement <4 x i8> %i.re, i8 %i.rb, i64 2
  %i.rg = insertelement <4 x i8> %i.rf, i8 %i.rc, i64 3
  %i.rh = zext <4 x i8> %i.rg to <4 x i32>
  %i.ri = shl nuw nsw <4 x i32> %i.rh, splat (i32 16)
  %i.rj = or disjoint <4 x i32> %i.qm, %i.ri
  %i.rk = add i32 %i.of, %i.ot
  %i.rl = zext i32 %i.rk to i64
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.rl
  store <4 x i32> %i.rj, ptr %i.rm, align 4, !tbaa !56, !alias.scope !121, !noalias !120
  %index.next78 = add nuw i64 %index77, 4         ; 2 uses
  %i.rn = icmp eq i64 %index.next78, %n.vec75
  br i1 %i.rn, label %middle.block79, label %vector.body76, !llvm.loop !101

middle.block79:                                   ; preds = %vector.body76
  br i1 %cmp.n80, label %.loopexit655.i, label %scalar.ph73.preheader

scalar.ph73.preheader:                            ; preds = %vector.memcheck63, %vector.scevcheck59, %.lr.ph668.i, %middle.block79
  %indvars.iv733.i.ph = phi i64 [ 0, %vector.memcheck63 ], [ 0, %vector.scevcheck59 ], [ 0, %.lr.ph668.i ], [ %n.vec75, %middle.block79 ]
  %.3551667.i.ph = phi i32 [ %i.gv, %vector.memcheck63 ], [ %i.gv, %vector.scevcheck59 ], [ %i.gv, %.lr.ph668.i ], [ %i.os, %middle.block79 ]
  br label %scalar.ph73

.lr.ph671.i:                                      ; preds = %bb.ah
  %i.ro = trunc i64 %indvars.iv747.i to i32
  %i.rp = mul i32 %narrow, %i.ro
  %i.rq = xor i32 %i.gu, -1
  %i.rr = add nsw i32 %i.bd, %i.rq
  %i.rs = mul i32 %i.rr, %.4..4..4..4..4..i       ; 3 uses
  %i.rt = xor i32 %i.rs, -1
  %i.ru = icmp ult i32 %i.rt, %i.ew
  %i.rv = xor i32 %i.gv, -1
  %i.rw = icmp ugt i32 %mul.result, %i.rv
  %i.rx = or i1 %i.rw, %i.ey
  %i.ry = xor i32 %i.rp, -2
  %i.rz = icmp ult i32 %i.ry, %mul.result
  %i.sa = or i1 %i.ru, %i.rx
  %i.sb = or i1 %i.rz, %i.sa
  br i1 %i.sb, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph671.i
  %bound0 = icmp ult ptr %scevgep, %scevgep57
  %bound1 = icmp ult ptr %scevgep55, %scevgep54
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.sc = add i32 %i.gv, %i.fa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.sd = trunc i64 %index to i32                 ; 2 uses
  %i.se = shl i32 %i.sd, 1
  %i.sf = add i32 %i.gv, %i.se                    ; 6 uses
  %i.sg = or disjoint i32 %i.sf, 2
  %i.sh = add i32 %i.sf, 4                        ; 2 uses
  %i.si = add i32 %i.sf, 6                        ; 2 uses
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
  %28 = or disjoint i32 %i.sh, 1
  %29 = or disjoint i32 %i.si, 1
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

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph671.i, %middle.block
  %indvars.iv738.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph671.i ], [ %n.vec, %middle.block ]
  %.2550670.i.ph = phi i32 [ %i.gv, %vector.memcheck ], [ %i.gv, %.lr.ph671.i ], [ %i.sc, %middle.block ]
  br label %scalar.ph

.lr.ph676.i:                                      ; preds = %bb.ah, %bb.ah, %bb.ah
  %i.up = xor i32 %i.gu, -1
  %i.uq = add nsw i32 %i.bd, %i.up
  %i.ur = mul nuw nsw i32 %i.uq, %.4..4..4..4..4..i
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ak, %.lr.ph676.i
  %indvars.iv743.i = phi i64 [ 0, %.lr.ph676.i ], [ %indvars.iv.next744.i, %bb.ak ] ; 2 uses
  %.0544675.i = phi i8 [ 0, %.lr.ph676.i ], [ %.1545.i, %bb.ak ]
  %.0546674.i = phi i32 [ 0, %.lr.ph676.i ], [ %i.uw, %bb.ak ] ; 2 uses
  %.0548673.i = phi i32 [ %i.gv, %.lr.ph676.i ], [ %.1549.i, %bb.ak ] ; 3 uses
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
  %i.xg = add i32 %i.of, %i.xf
  %i.xh = zext i32 %i.xg to i64
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.xh
  store i32 %i.xe, ptr %i.xi, align 4, !tbaa !56
  %i.xj = add i32 %.3551667.i, 3
  %indvars.iv.next734.i = add nuw nsw i64 %indvars.iv733.i, 1 ; 2 uses
  %exitcond737.not.i = icmp eq i64 %indvars.iv.next734.i, %wide.trip.count.i
  br i1 %exitcond737.not.i, label %.loopexit655.i, label %scalar.ph73, !llvm.loop !107

scalar.ph97:                                      ; preds = %scalar.ph97.preheader, %scalar.ph97
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph97 ], [ %indvars.iv.i.ph, %scalar.ph97.preheader ] ; 2 uses
  %.4552665.i = phi i32 [ %i.yo, %scalar.ph97 ], [ %.4552665.i.ph, %scalar.ph97.preheader ] ; 5 uses
  %.1556664.i = phi i32 [ %i.yn, %scalar.ph97 ], [ %.1556664.i.ph, %scalar.ph97.preheader ]
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
  %i.yk = add i32 %i.gy, %i.yj
  %i.yl = zext i32 %i.yk to i64
  %i.ym = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.yl
  store i32 %i.yi, ptr %i.ym, align 4, !tbaa !56
  %i.yn = or i32 %i.xp, %.1556664.i               ; 2 uses
  %i.yo = add i32 %.4552665.i, 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit655.i, label %scalar.ph97, !llvm.loop !108
end_hunk_0

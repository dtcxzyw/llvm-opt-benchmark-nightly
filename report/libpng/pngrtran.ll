Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libpng/original/pngrtran?download=true
inline.NumInlined: 44
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 51
begin_hunk_0_@png_init_read_transformations:bb.a

bb.bb:                                            ; preds = %bb.ba
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !29
  %i.gm = call i32 @png_gamma_significant(i32 noundef %i.gl) #11
  %.not431 = icmp eq i32 %i.gm, 0
  br i1 %.not431, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.ax
  %i.gn = load i32, ptr %i.ab, align 4, !tbaa !25 ; 2 uses
  %i.go = and i32 %i.gn, 8388608
  %.not432 = icmp eq i32 %i.go, 0
  br i1 %.not432, label %bb.cx, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gp = load i32, ptr %i.ai, align 4, !tbaa !33
  %i.gq = call i32 @png_gamma_significant(i32 noundef %i.gp) #11
  %.not433 = icmp eq i32 %i.gq, 0
  br i1 %.not433, label %._crit_edge532, label %bb.be

._crit_edge532:                                   ; preds = %bb.bd
  %.pre533 = load i32, ptr %i.ab, align 4, !tbaa !25
  br label %bb.cx

bb.be:                                            ; preds = %bb.bd, %bb.bb, %bb.az, %bb.ay, %bb.aw, %bb.av, %bb.at
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.gs = load i8, ptr %i.gr, align 8, !tbaa !193
  %i.gt = zext i8 %i.gs to i32
  call void @png_build_gamma_table(ptr noundef nonnull %0, i32 noundef %i.gt) #11
  %i.gu = load i32, ptr %i.ab, align 4, !tbaa !25 ; 7 uses
  %i.gv = and i32 %i.gu, 128
  %.not436 = icmp eq i32 %i.gv, 0
  br i1 %.not436, label %bb.ct, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gw = and i32 %i.gu, 6291456
  %.not437 = icmp eq i32 %i.gw, 0
  br i1 %.not437, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.11) #11
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.gx = load i8, ptr %i.bn, align 1, !tbaa !48
  %i.gy = icmp eq i8 %i.gx, 3
  br i1 %i.gy, label %bb.bi, label %bb.cb

bb.bi:                                            ; preds = %bb.bh
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !43 ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.hc = load i16, ptr %i.hb, align 8, !tbaa !44 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 636
  %i.he = load i8, ptr %i.hd, align 4, !tbaa !30
  switch i8 %i.he, label %bb.bm [
    i8 2, label %bb.bj
    i8 1, label %bb.bk
    i8 3, label %bb.bl
  ]

bb.bj:                                            ; preds = %bb.bi
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !61 ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 646
  %i.hi = load i16, ptr %i.hh, align 2, !tbaa !52
  %i.hj = zext i16 %i.hi to i64                   ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.hj
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !26
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.hn = load i16, ptr %i.hm, align 8, !tbaa !53
  %i.ho = zext i16 %i.hn to i64                   ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.ho
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !26
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 650
  %i.hs = load i16, ptr %i.hr, align 2, !tbaa !54
  %i.ht = zext i16 %i.hs to i64                   ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.ht
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !26
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !62 ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.hj
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !26
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.ho
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !26
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.ht
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !26
  br label %bb.bs

bb.bk:                                            ; preds = %bb.bi
  %i.ie = load i32, ptr %i.ai, align 4, !tbaa !33
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bi
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.ig = load i32, ptr %i.if, align 8, !tbaa !29
  %i.ih = call i32 @png_reciprocal(i32 noundef %i.ig) #11
  %i.ii = load i32, ptr %i.if, align 8, !tbaa !29
  %i.ij = load i32, ptr %i.ai, align 4, !tbaa !33
  %i.ik = call i32 @png_reciprocal2(i32 noundef %i.ii, i32 noundef %i.ij) #11
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bi, %bb.bl, %bb.bk
  %.0405 = phi i32 [ %i.ik, %bb.bl ], [ 100000, %bb.bk ], [ 100000, %bb.bi ] ; 4 uses
  %.0404 = phi i32 [ %i.ih, %bb.bl ], [ %i.ie, %bb.bk ], [ 100000, %bb.bi ] ; 4 uses
  %i.il = call i32 @png_gamma_significant(i32 noundef %.0405) #11
  %.not443 = icmp eq i32 %i.il, 0
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 646
  %i.in = load i16, ptr %i.im, align 2, !tbaa !52 ; 2 uses
  br i1 %.not443, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.io = zext i16 %i.in to i32
  %i.ip = call zeroext i8 @png_gamma_8bit_correct(i32 noundef %i.io, i32 noundef %.0405) #11
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.ir = load i16, ptr %i.iq, align 8, !tbaa !53
  %i.is = zext i16 %i.ir to i32
  %i.it = call zeroext i8 @png_gamma_8bit_correct(i32 noundef %i.is, i32 noundef %.0405) #11
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 650
  %i.iv = load i16, ptr %i.iu, align 2, !tbaa !54
  %i.iw = zext i16 %i.iv to i32
  %i.ix = call zeroext i8 @png_gamma_8bit_correct(i32 noundef %i.iw, i32 noundef %.0405) #11
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  %i.iy = trunc i16 %i.in to i8
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.ja = load i16, ptr %i.iz, align 8, !tbaa !53
  %i.jb = trunc i16 %i.ja to i8
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 650
  %i.jd = load i16, ptr %i.jc, align 2, !tbaa !54
  %i.je = trunc i16 %i.jd to i8
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.sroa.0174.0 = phi i8 [ %i.ip, %bb.bn ], [ %i.iy, %bb.bo ] ; 2 uses
  %.sroa.6175.0 = phi i8 [ %i.it, %bb.bn ], [ %i.jb, %bb.bo ] ; 2 uses
  %.sroa.9.0 = phi i8 [ %i.ix, %bb.bn ], [ %i.je, %bb.bo ] ; 2 uses
  %i.jf = call i32 @png_gamma_significant(i32 noundef %.0404) #11
  %.not444 = icmp eq i32 %i.jf, 0
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 646
  %i.jh = load i16, ptr %i.jg, align 2, !tbaa !52 ; 2 uses
  br i1 %.not444, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ji = zext i16 %i.jh to i32
  %i.jj = call zeroext i8 @png_gamma_8bit_correct(i32 noundef %i.ji, i32 noundef %.0404) #11
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.jl = load i16, ptr %i.jk, align 8, !tbaa !53
  %i.jm = zext i16 %i.jl to i32
  %i.jn = call zeroext i8 @png_gamma_8bit_correct(i32 noundef %i.jm, i32 noundef %.0404) #11
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 650
  %i.jp = load i16, ptr %i.jo, align 2, !tbaa !54
  %i.jq = zext i16 %i.jp to i32
  %i.jr = call zeroext i8 @png_gamma_8bit_correct(i32 noundef %i.jq, i32 noundef %.0404) #11
  br label %bb.bs

bb.br:                                            ; preds = %bb.bp
  %i.js = trunc i16 %i.jh to i8
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.ju = load i16, ptr %i.jt, align 8, !tbaa !53
  %i.jv = trunc i16 %i.ju to i8
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 650
  %i.jx = load i16, ptr %i.jw, align 2, !tbaa !54
  %i.jy = trunc i16 %i.jx to i8
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bq, %bb.br, %bb.bj
  %.sroa.0173.1 = phi i8 [ %i.hz, %bb.bj ], [ %i.jj, %bb.bq ], [ %i.js, %bb.br ]
  %.sroa.6.1 = phi i8 [ %i.ib, %bb.bj ], [ %i.jn, %bb.bq ], [ %i.jv, %bb.br ]
  %.sroa.10.1 = phi i8 [ %i.id, %bb.bj ], [ %i.jr, %bb.bq ], [ %i.jy, %bb.br ]
  %.sroa.0174.1 = phi i8 [ %i.hl, %bb.bj ], [ %.sroa.0174.0, %bb.bq ], [ %.sroa.0174.0, %bb.br ]
  %.sroa.6175.1 = phi i8 [ %i.hq, %bb.bj ], [ %.sroa.6175.0, %bb.bq ], [ %.sroa.6175.0, %bb.br ]
  %.sroa.9.1 = phi i8 [ %i.hv, %bb.bj ], [ %.sroa.9.0, %bb.bq ], [ %.sroa.9.0, %bb.br ]
  %.not = icmp eq i16 %i.hc, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bs
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 2 uses
  %i.kf = zext i8 %.sroa.0173.1 to i32
  %i.kg = zext i8 %.sroa.6.1 to i32
  %i.kh = zext i8 %.sroa.10.1 to i32
  %wide.trip.count = zext i16 %i.hc to i64
  br label %bb.bt

bb.bt:                                            ; preds = %.lr.ph, %bb.ca
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ca ] ; 6 uses
  %i.ki = load i16, ptr %i.jz, align 8, !tbaa !51
  %i.kj = zext i16 %i.ki to i64
  %i.kk = icmp samesign ult i64 %indvars.iv, %i.kj
  br i1 %i.kk, label %bb.bu, label %bb.bz

bb.bu:                                            ; preds = %bb.bt
  %i.kl = load ptr, ptr %i.ka, align 8, !tbaa !56
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 %indvars.iv ; 5 uses
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !26  ; 4 uses
  %1 = zext i8 %i.kn to i32
  switch i8 %i.kn, label %bb.bw [
    i8 -1, label %bb.bz
    i8 0, label %bb.bv
  ]

bb.bv:                                            ; preds = %bb.bu
  %i.ko = getelementptr inbounds nuw [3 x i8], ptr %i.ha, i64 %indvars.iv ; 3 uses
  store i8 %.sroa.0174.1, ptr %i.ko, align 1, !tbaa !26
  %.sroa.6175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ko, i64 1
  store i8 %.sroa.6175.1, ptr %.sroa.6175.0..sroa_idx, align 1, !tbaa !26
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ko, i64 2
  store i8 %.sroa.9.1, ptr %.sroa.9.0..sroa_idx, align 1, !tbaa !26
  br label %bb.ca

bb.bw:                                            ; preds = %bb.bu
  %i.kp = load i32, ptr %i.kc, align 8, !tbaa !24
  %i.kq = and i32 %i.kp, 8192
  %.not447 = icmp eq i32 %i.kq, 0
  %i.kr = load ptr, ptr %i.kd, align 8, !tbaa !62 ; 5 uses
  %i.ks = getelementptr inbounds nuw [3 x i8], ptr %i.ha, i64 %indvars.iv ; 7 uses
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !40
  %i.ku = zext i8 %i.kt to i64
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.ku
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !26  ; 2 uses
  br i1 %.not447, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %2 = zext i8 %i.kw to i16
  %3 = zext i8 %i.kn to i16
  %4 = mul nuw i16 %2, %3
  %.lhs.trunc = add nuw i16 %4, 128
  %i.kx = udiv i16 %.lhs.trunc, 255
  %i.ky = load ptr, ptr %i.ke, align 8, !tbaa !63 ; 3 uses
  %i.kz = zext nneg i16 %i.kx to i64
  %i.la = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.kz
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !26
  store i8 %i.lb, ptr %i.ks, align 1, !tbaa !40
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ks, i64 1 ; 2 uses
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !41
  %i.le = zext i8 %i.ld to i64
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.le
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !26
  %i.lh = zext i8 %i.lg to i16
  %i.li = load i8, ptr %i.km, align 1, !tbaa !26
  %i.lj = zext i8 %i.li to i16
  %i.lk = mul nuw i16 %i.lj, %i.lh
  %.lhs.trunc471 = add nuw i16 %i.lk, 128
  %i.ll = udiv i16 %.lhs.trunc471, 255
  %i.lm = zext nneg i16 %i.ll to i64
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.lm
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !26
  store i8 %i.lo, ptr %i.lc, align 1, !tbaa !41
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ks, i64 2 ; 2 uses
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !42
  %i.lr = zext i8 %i.lq to i64
  %i.ls = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.lr
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !26
  %i.lu = zext i8 %i.lt to i16
  %i.lv = load i8, ptr %i.km, align 1, !tbaa !26
  %i.lw = zext i8 %i.lv to i16
  %i.lx = mul nuw i16 %i.lw, %i.lu
  %.lhs.trunc473 = add nuw i16 %i.lx, 128
  %i.ly = udiv i16 %.lhs.trunc473, 255
  %i.lz = zext nneg i16 %i.ly to i64
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.lz
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !26
  store i8 %i.mb, ptr %i.lp, align 1, !tbaa !42
  br label %bb.ca

bb.by:                                            ; preds = %bb.bw
  %5 = zext i8 %i.kw to i32
  %6 = mul nuw nsw i32 %5, %1
  %i.mc = xor i8 %i.kn, -1
  %i.md = zext i8 %i.mc to i32
  %i.me = mul nuw nsw i32 %i.md, %i.kf
  %i.mf = add nuw nsw i32 %i.me, 128
  %i.mg = add nuw nsw i32 %i.mf, %6               ; 2 uses
  %i.mh = lshr i32 %i.mg, 8
  %i.mi = and i32 %i.mh, 255
  %i.mj = add nuw nsw i32 %i.mi, %i.mg
  %i.mk = lshr i32 %i.mj, 8
  %i.ml = load ptr, ptr %i.ke, align 8, !tbaa !63 ; 3 uses
  %i.mm = and i32 %i.mk, 255
  %i.mn = zext nneg i32 %i.mm to i64
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ml, i64 %i.mn
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !26
  store i8 %i.mp, ptr %i.ks, align 1, !tbaa !40
  %i.mq = getelementptr inbounds nuw i8, ptr %i.ks, i64 1 ; 2 uses
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !41
  %i.ms = zext i8 %i.mr to i64
  %i.mt = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.ms
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !26
  %i.mv = zext i8 %i.mu to i32
  %i.mw = load i8, ptr %i.km, align 1, !tbaa !26  ; 2 uses
  %i.mx = zext i8 %i.mw to i32
  %i.my = mul nuw nsw i32 %i.mx, %i.mv
  %i.mz = xor i8 %i.mw, -1
  %i.na = zext i8 %i.mz to i32
  %i.nb = mul nuw nsw i32 %i.na, %i.kg
  %i.nc = add nuw nsw i32 %i.nb, 128
  %i.nd = add nuw nsw i32 %i.nc, %i.my            ; 2 uses
  %i.ne = lshr i32 %i.nd, 8
  %i.nf = and i32 %i.ne, 255
  %i.ng = add nuw nsw i32 %i.nf, %i.nd
  %i.nh = lshr i32 %i.ng, 8
  %i.ni = and i32 %i.nh, 255
  %i.nj = zext nneg i32 %i.ni to i64
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ml, i64 %i.nj
  %i.nl = load i8, ptr %i.nk, align 1, !tbaa !26
  store i8 %i.nl, ptr %i.mq, align 1, !tbaa !41
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ks, i64 2 ; 2 uses
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !42
  %i.no = zext i8 %i.nn to i64
  %i.np = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.no
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !26
  %i.nr = zext i8 %i.nq to i32
  %i.ns = load i8, ptr %i.km, align 1, !tbaa !26  ; 2 uses
  %i.nt = zext i8 %i.ns to i32
  %i.nu = mul nuw nsw i32 %i.nt, %i.nr
  %i.nv = xor i8 %i.ns, -1
  %i.nw = zext i8 %i.nv to i32
  %i.nx = mul nuw nsw i32 %i.nw, %i.kh
  %i.ny = add nuw nsw i32 %i.nx, 128
  %i.nz = add nuw nsw i32 %i.ny, %i.nu            ; 2 uses
  %i.oa = lshr i32 %i.nz, 8
  %i.ob = and i32 %i.oa, 255
  %i.oc = add nuw nsw i32 %i.ob, %i.nz
  %i.od = lshr i32 %i.oc, 8
  %i.oe = and i32 %i.od, 255
  %i.of = zext nneg i32 %i.oe to i64
  %i.og = getelementptr inbounds nuw i8, ptr %i.ml, i64 %i.of
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !26
  store i8 %i.oh, ptr %i.nm, align 1, !tbaa !42
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bu, %bb.bt
  %i.oi = load ptr, ptr %i.kb, align 8, !tbaa !61 ; 3 uses
  %i.oj = getelementptr inbounds nuw [3 x i8], ptr %i.ha, i64 %indvars.iv ; 4 uses
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !40
  %i.ol = zext i8 %i.ok to i64
  %i.om = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.ol
  %i.on = load i8, ptr %i.om, align 1, !tbaa !26
  store i8 %i.on, ptr %i.oj, align 1, !tbaa !40
  %i.oo = getelementptr inbounds nuw i8, ptr %i.oj, i64 1 ; 2 uses
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !41
  %i.oq = zext i8 %i.op to i64
  %i.or = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.oq
  %i.os = load i8, ptr %i.or, align 1, !tbaa !26
  store i8 %i.os, ptr %i.oo, align 1, !tbaa !41
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oj, i64 2 ; 2 uses
  %i.ou = load i8, ptr %i.ot, align 1, !tbaa !42
  %i.ov = zext i8 %i.ou to i64
  %i.ow = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.ov
  %i.ox = load i8, ptr %i.ow, align 1, !tbaa !26
  store i8 %i.ox, ptr %i.ot, align 1, !tbaa !42
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.bx, %bb.by, %bb.bv
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.bt, !llvm.loop !178

._crit_edge:                                      ; preds = %bb.ca, %bb.bs
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.oz = load <2 x i32>, ptr %i.oy, align 8, !tbaa !32
  %i.pa = and <2 x i32> %i.oz, <i32 -8193, i32 -8321> ; 2 uses
  store <2 x i32> %i.pa, ptr %i.oy, align 8, !tbaa !32
  %i.pb = extractelement <2 x i32> %i.pa, i64 1
  br label %bb.de

bb.cb:                                            ; preds = %bb.bh
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 636 ; 2 uses
  %i.pd = load i8, ptr %i.pc, align 4, !tbaa !30
  switch i8 %i.pd, label %bb.cf [
    i8 1, label %bb.cc
    i8 2, label %bb.cd
    i8 3, label %bb.ce
  ]

bb.cc:                                            ; preds = %bb.cb
  %i.pe = load i32, ptr %i.ai, align 4, !tbaa !33
  br label %bb.cg

bb.cd:                                            ; preds = %bb.cb
  %i.pf = load i32, ptr %i.b, align 8, !tbaa !46
  %i.pg = call i32 @png_reciprocal(i32 noundef %i.pf) #11
  %i.ph = load i32, ptr %i.b, align 8, !tbaa !46
  %i.pi = load i32, ptr %i.ai, align 4, !tbaa !33
  %i.pj = call i32 @png_reciprocal2(i32 noundef %i.ph, i32 noundef %i.pi) #11
  br label %bb.cg

bb.ce:                                            ; preds = %bb.cb
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.pl = load i32, ptr %i.pk, align 8, !tbaa !29
  %i.pm = call i32 @png_reciprocal(i32 noundef %i.pl) #11
  %i.pn = load i32, ptr %i.pk, align 8, !tbaa !29
  %i.po = load i32, ptr %i.ai, align 4, !tbaa !33
  %i.pp = call i32 @png_reciprocal2(i32 noundef %i.pn, i32 noundef %i.po) #11
  br label %bb.cg

bb.cf:                                            ; preds = %bb.cb
  call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.12) #12
  unreachable

bb.cg:                                            ; preds = %bb.ce, %bb.cd, %bb.cc
  %.0402 = phi i32 [ %i.pe, %bb.cc ], [ %i.pg, %bb.cd ], [ %i.pm, %bb.ce ] ; 5 uses
  %.0401 = phi i32 [ 100000, %bb.cc ], [ %i.pj, %bb.cd ], [ %i.pp, %bb.ce ] ; 5 uses
  %i.pq = call i32 @png_gamma_significant(i32 noundef %.0402) #11
  %i.pr = call i32 @png_gamma_significant(i32 noundef %.0401) #11
  %.not438 = icmp eq i32 %i.pq, 0                 ; 2 uses
  br i1 %.not438, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.pt = load i16, ptr %i.ps, align 4, !tbaa !55
  %i.pu = zext i16 %i.pt to i32
  %i.pv = call zeroext i16 @png_gamma_correct(ptr noundef nonnull %0, i32 noundef %i.pu, i32 noundef %.0402) #11
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 662
  store i16 %i.pv, ptr %i.pw, align 2, !tbaa !64
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.not439 = icmp eq i32 %i.pr, 0                 ; 2 uses
  br i1 %.not439, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 2 uses
  %i.py = load i16, ptr %i.px, align 4, !tbaa !55
  %i.pz = zext i16 %i.py to i32
  %i.qa = call zeroext i16 @png_gamma_correct(ptr noundef nonnull %0, i32 noundef %i.pz, i32 noundef %.0401) #11
  store i16 %i.qa, ptr %i.px, align 4, !tbaa !55
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 646 ; 4 uses
  %i.qc = load i16, ptr %i.qb, align 2, !tbaa !52 ; 7 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 5 uses
  %i.qe = load i16, ptr %i.qd, align 8, !tbaa !53
  %.not440 = icmp eq i16 %i.qc, %i.qe
  br i1 %.not440, label %bb.cl, label %bb.cn

bb.cl:                                            ; preds = %bb.ck
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 650 ; 2 uses
  %i.qg = load i16, ptr %i.qf, align 2, !tbaa !54
  %.not441 = icmp eq i16 %i.qc, %i.qg
  br i1 %.not441, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.qi = load i16, ptr %i.qh, align 4, !tbaa !55
  %.not442 = icmp eq i16 %i.qc, %i.qi
  br i1 %.not442, label %bb.cr, label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl, %bb.ck
  br i1 %.not438, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.qj = zext i16 %i.qc to i32
  %i.qk = call zeroext i16 @png_gamma_correct(ptr noundef nonnull %0, i32 noundef %i.qj, i32 noundef %.0402) #11
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 656
  store i16 %i.qk, ptr %i.ql, align 8, !tbaa !65
  %i.qm = load i16, ptr %i.qd, align 8, !tbaa !53
  %i.qn = zext i16 %i.qm to i32
  %i.qo = call zeroext i16 @png_gamma_correct(ptr noundef nonnull %0, i32 noundef %i.qn, i32 noundef %.0402) #11
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 658
  store i16 %i.qo, ptr %i.qp, align 2, !tbaa !66
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 650
  %i.qr = load i16, ptr %i.qq, align 2, !tbaa !54
  %i.qs = zext i16 %i.qr to i32
  %i.qt = call zeroext i16 @png_gamma_correct(ptr noundef nonnull %0, i32 noundef %i.qs, i32 noundef %.0402) #11
  %i.qu = getelementptr inbounds nuw i8, ptr %0, i64 660
  store i16 %i.qt, ptr %i.qu, align 4, !tbaa !67
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  br i1 %.not439, label %bb.cs, label %bb.cq

end_hunk_0

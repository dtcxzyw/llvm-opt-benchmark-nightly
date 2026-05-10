begin_hunk_0_@pc_block:bb.a
  %.0417552 = phi i16 [ %i.dh, %.lr.ph557.preheader ], [ %.1418, %bb.n ] ; 4 uses
  %i.dk = sub nsw i64 %indvars.iv583, %i.dj
  %i.dl = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !4  ; 13 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv583 ; 5 uses
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 -4
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !4  ; 3 uses
  %i.dq = sub i32 %i.dp, %i.dm
  %i.dr = getelementptr inbounds i8, ptr %i.dn, i64 -8
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !4  ; 3 uses
  %i.dt = sub nsw i32 %i.dm, %i.ds                ; 3 uses
  %i.du = getelementptr inbounds i8, ptr %i.dn, i64 -12
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !4  ; 3 uses
  %i.dw = sub nsw i32 %i.dm, %i.dv                ; 3 uses
  %i.dx = getelementptr inbounds i8, ptr %i.dn, i64 -16
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !4  ; 3 uses
  %i.dz = sub nsw i32 %i.dm, %i.dy                ; 3 uses
  %i.ea = sext i16 %.0555 to i32
  %i.eb = sext i16 %.0409554 to i32
  %i.ec = sext i16 %.0413553 to i32
end_hunk_0
begin_hunk_1_@pc_block:bb.a
  %.neg505 = mul i32 %i.dt, %i.eb
  %.neg507 = mul i32 %i.dw, %i.ec
  %.neg509 = mul i32 %i.dz, %i.ed
  %reass.add514 = add i32 %.neg505, %.neg507
  %reass.add515 = add i32 %reass.add514, %.neg509
  %reass.add520.neg = sub i32 %.neg504, %reass.add515
  %7 = add i32 %reass.add520.neg, %i.c
  %i.ee = ashr i32 %7, %6
  %i.ef = load i32, ptr %i.dn, align 4, !tbaa !4
  %i.eg = add i32 %i.dm, %i.ee
end_hunk_1
begin_hunk_2_@pc_block:bb.a
  %i.ej = ashr exact i32 %i.ei, %i.a              ; 5 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv583
  store i32 %i.ej, ptr %i.ek, align 4, !tbaa !4
  %i.el = icmp sgt i32 %i.ej, 0
  br i1 %i.el, label %bb.e, label %bb.i

bb.e:                                             ; preds = %.lr.ph557
  %8 = tail call i32 @llvm.scmp.i32.i32(i32 %i.dm, i32 %i.dy) ; 2 uses
  %i.em = trunc nsw i32 %8 to i16
  %i.en = sub i16 %.0417552, %i.em                ; 4 uses
  %i.eo = mul nsw i32 %8, %i.dz
  %i.ep = ashr i32 %i.eo, %6
  %i.eq = sub nsw i32 %i.ej, %i.ep                ; 2 uses
  %i.er = icmp slt i32 %i.eq, 1
  br i1 %i.er, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %9 = tail call i32 @llvm.scmp.i32.i32(i32 %i.dm, i32 %i.dv) ; 2 uses
  %i.es = trunc nsw i32 %9 to i16
  %i.et = sub i16 %.0413553, %i.es                ; 3 uses
  %i.eu = mul nsw i32 %9, %i.dw
  %i.ev = ashr i32 %i.eu, %6
  %i.ew = shl nsw i32 %i.ev, 1
  %i.ex = sub nsw i32 %i.eq, %i.ew                ; 2 uses
end_hunk_2
begin_hunk_3_@pc_block:bb.a
  br i1 %i.ey, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %10 = tail call i32 @llvm.scmp.i32.i32(i32 %i.dm, i32 %i.ds) ; 2 uses
  %i.ez = trunc nsw i32 %10 to i16
  %i.fa = sub i16 %.0409554, %i.ez                ; 2 uses
  %i.fb = mul nsw i32 %10, %i.dt
  %i.fc = ashr i32 %i.fb, %6
  %.neg478 = mul i32 %i.fc, -3
  %i.fd = add i32 %i.ex, %.neg478
end_hunk_3
begin_hunk_4_@pc_block:bb.a
  br i1 %i.fe, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %11 = tail call i32 @llvm.scmp.i32.i32(i32 %i.dp, i32 %i.dm)
  %i.ff = trunc nsw i32 %11 to i16
  %12 = add i16 %.0555, %i.ff
  br label %bb.n

bb.i:                                             ; preds = %.lr.ph557
  %i.fg = icmp slt i32 %i.ej, 0
  br i1 %i.fg, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %13 = tail call i32 @llvm.scmp.i32.i32(i32 %i.dm, i32 %i.dy) ; 2 uses
  %i.fh = trunc nsw i32 %13 to i16
  %i.fi = add i16 %.0417552, %i.fh                ; 4 uses
  %i.fj = mul i32 %i.dz, %13
  %i.fk = sub i32 0, %i.fj
  %i.fl = ashr i32 %i.fk, %6
  %i.fm = sub nsw i32 %i.ej, %i.fl                ; 2 uses
end_hunk_4
begin_hunk_5_@pc_block:bb.a
  br i1 %i.fn, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %14 = tail call i32 @llvm.scmp.i32.i32(i32 %i.dm, i32 %i.dv) ; 2 uses
  %i.fo = trunc nsw i32 %14 to i16
  %i.fp = add i16 %.0413553, %i.fo                ; 3 uses
  %i.fq = mul i32 %i.dw, %14
  %i.fr = sub i32 0, %i.fq
  %i.fs = ashr i32 %i.fr, %6
  %i.ft = shl nsw i32 %i.fs, 1
end_hunk_5
begin_hunk_6_@pc_block:bb.a
  br i1 %i.fv, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %15 = tail call i32 @llvm.scmp.i32.i32(i32 %i.dm, i32 %i.ds) ; 2 uses
  %i.fw = trunc nsw i32 %15 to i16
  %i.fx = add i16 %.0409554, %i.fw                ; 2 uses
  %i.fy = mul i32 %i.dt, %15
  %i.fz = sub i32 0, %i.fy
  %i.ga = ashr i32 %i.fz, %6
  %.neg477 = mul i32 %i.ga, -3
end_hunk_6
begin_hunk_7_@pc_block:bb.a
  br i1 %i.gc, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %16 = tail call i32 @llvm.scmp.i32.i32(i32 %i.dm, i32 %i.dp)
  %i.gd = trunc nsw i32 %16 to i16
  %i.ge = add i16 %.0555, %i.gd
  br label %bb.n

end_hunk_7
begin_hunk_8_@pc_block:bb.a
  %.1418 = phi i16 [ %i.en, %bb.e ], [ %i.en, %bb.f ], [ %i.en, %bb.g ], [ %i.en, %bb.h ], [ %i.fi, %bb.j ], [ %i.fi, %bb.k ], [ %i.fi, %bb.l ], [ %i.fi, %bb.m ], [ %.0417552, %bb.i ] ; 2 uses
  %.1414 = phi i16 [ %.0413553, %bb.e ], [ %i.et, %bb.f ], [ %i.et, %bb.g ], [ %i.et, %bb.h ], [ %.0413553, %bb.j ], [ %i.fp, %bb.k ], [ %i.fp, %bb.l ], [ %i.fp, %bb.m ], [ %.0413553, %bb.i ] ; 2 uses
  %.1410 = phi i16 [ %.0409554, %bb.e ], [ %.0409554, %bb.f ], [ %i.fa, %bb.g ], [ %i.fa, %bb.h ], [ %.0409554, %bb.j ], [ %.0409554, %bb.k ], [ %i.fx, %bb.l ], [ %i.fx, %bb.m ], [ %.0409554, %bb.i ] ; 2 uses
  %.1 = phi i16 [ %.0555, %bb.e ], [ %.0555, %bb.f ], [ %.0555, %bb.g ], [ %12, %bb.h ], [ %.0555, %bb.j ], [ %.0555, %bb.k ], [ %.0555, %bb.l ], [ %i.ge, %bb.m ], [ %.0555, %bb.i ] ; 2 uses
  %indvars.iv.next584 = add nuw nsw i64 %indvars.iv583, 1 ; 2 uses
  %exitcond586.not = icmp eq i64 %indvars.iv.next584, %wide.trip.count585
  br i1 %exitcond586.not, label %._crit_edge558, label %.lr.ph557, !llvm.loop !33
end_hunk_8
begin_hunk_9_@pc_block:bb.a
  %.0427533 = phi i16 [ %i.gn, %.lr.ph542.preheader ], [ %.1428, %bb.ag ] ; 10 uses
  %i.gw = sub nsw i64 %indvars.iv579, %i.gv
  %i.gx = getelementptr inbounds [4 x i8], ptr %0, i64 %i.gw
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !4  ; 25 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv579 ; 9 uses
  %i.ha = getelementptr inbounds i8, ptr %i.gz, i64 -4
  %i.hb = getelementptr inbounds i8, ptr %i.gz, i64 -8
  %i.hc = load i32, ptr %i.ha, align 4, !tbaa !4  ; 3 uses
  %i.hd = sub i32 %i.hc, %i.gy
  %i.he = getelementptr inbounds i8, ptr %i.gz, i64 -12
  %i.hf = load i32, ptr %i.hb, align 4, !tbaa !4  ; 3 uses
  %i.hg = sub nsw i32 %i.gy, %i.hf                ; 3 uses
  %i.hh = getelementptr inbounds i8, ptr %i.gz, i64 -16
  %i.hi = load i32, ptr %i.he, align 4, !tbaa !4  ; 3 uses
  %i.hj = sub nsw i32 %i.gy, %i.hi                ; 3 uses
  %i.hk = getelementptr inbounds i8, ptr %i.gz, i64 -20
  %i.hl = load i32, ptr %i.hh, align 4, !tbaa !4  ; 3 uses
  %i.hm = sub nsw i32 %i.gy, %i.hl                ; 3 uses
  %i.hn = getelementptr inbounds i8, ptr %i.gz, i64 -24
  %i.ho = load i32, ptr %i.hk, align 4, !tbaa !4  ; 3 uses
  %i.hp = sub nsw i32 %i.gy, %i.ho                ; 3 uses
  %i.hq = getelementptr inbounds i8, ptr %i.gz, i64 -28
  %i.hr = load i32, ptr %i.hn, align 4, !tbaa !4  ; 3 uses
  %i.hs = sub nsw i32 %i.gy, %i.hr                ; 3 uses
  %i.ht = getelementptr inbounds i8, ptr %i.gz, i64 -32
  %i.hu = load i32, ptr %i.hq, align 4, !tbaa !4  ; 3 uses
  %i.hv = sub nsw i32 %i.gy, %i.hu                ; 3 uses
  %i.hw = load i32, ptr %i.ht, align 4, !tbaa !4  ; 3 uses
  %i.hx = sub nsw i32 %i.gy, %i.hw                ; 3 uses
  %i.hy = sext i16 %.2540 to i32
  %i.hz = sext i16 %.2411539 to i32
  %i.ia = sext i16 %.2415538 to i32
end_hunk_9
begin_hunk_10_@pc_block:bb.a
  %.neg489 = mul i32 %i.hs, %i.id
  %.neg491 = mul i32 %i.hv, %i.ie
  %.neg493 = mul i32 %i.hx, %i.if
  %reass.add = add i32 %.neg481, %.neg483.a
  %reass.add498 = add i32 %reass.add, %.neg485
  %reass.add499 = add i32 %reass.add498, %.neg487
  %reass.add500 = add i32 %reass.add499, %.neg489
  %reass.add501 = add i32 %reass.add500, %.neg491
  %reass.add502 = add i32 %reass.add501, %.neg493
  %reass.add507.neg = sub i32 %.neg480.a, %reass.add502
  %17 = add i32 %reass.add507.neg, %i.c
  %i.ig = ashr i32 %17, %6
  %i.ih = load i32, ptr %i.gz, align 4, !tbaa !4
  %i.ii = add i32 %i.gy, %i.ig
  %i.ij = sub i32 %i.ih, %i.ii
end_hunk_10
begin_hunk_11_@pc_block:bb.a
  %i.il = ashr exact i32 %i.ik, %i.a              ; 5 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv579
  store i32 %i.il, ptr %i.im, align 4, !tbaa !4
  %i.in = icmp sgt i32 %i.il, 0
  br i1 %i.in, label %bb.p, label %bb.x

bb.p:                                             ; preds = %.lr.ph542
  %18 = tail call i32 @llvm.scmp.i32.i32(i32 %i.gy, i32 %i.hw) ; 2 uses
  %i.io = trunc nsw i32 %18 to i16
  %i.ip = sub i16 %.0421536, %i.io                ; 8 uses
  %i.iq = mul nsw i32 %18, %i.hx
  %i.ir = ashr i32 %i.iq, %6
  %i.is = sub nsw i32 %i.il, %i.ir                ; 2 uses
  %i.it = icmp slt i32 %i.is, 1
  br i1 %i.it, label %bb.ag, label %bb.q

bb.q:                                             ; preds = %bb.p
  %19 = tail call i32 @llvm.scmp.i32.i32(i32 %i.gy, i32 %i.hu) ; 2 uses
  %i.iu = trunc nsw i32 %19 to i16
  %i.iv = sub i16 %.0423535, %i.iu                ; 7 uses
  %i.iw = mul nsw i32 %19, %i.hv
  %i.ix = ashr i32 %i.iw, %6
  %i.iy = shl nsw i32 %i.ix, 1
  %i.iz = sub nsw i32 %i.is, %i.iy                ; 2 uses
end_hunk_11
begin_hunk_12_@pc_block:bb.a
  br i1 %i.ja, label %bb.ag, label %bb.r

bb.r:                                             ; preds = %bb.q
  %20 = tail call i32 @llvm.scmp.i32.i32(i32 %i.gy, i32 %i.hr) ; 2 uses
  %i.jb = trunc nsw i32 %20 to i16
  %i.jc = sub i16 %.0425534, %i.jb                ; 6 uses
  %i.jd = mul nsw i32 %20, %i.hs
  %i.je = ashr i32 %i.jd, %6
  %.neg473 = mul i32 %i.je, -3
  %i.jf = add i32 %i.iz, %.neg473                 ; 2 uses
end_hunk_12
begin_hunk_13_@pc_block:bb.a
  br i1 %i.jg, label %bb.ag, label %bb.s

bb.s:                                             ; preds = %bb.r
  %21 = tail call i32 @llvm.scmp.i32.i32(i32 %i.gy, i32 %i.ho) ; 2 uses
  %i.jh = trunc nsw i32 %21 to i16
  %i.ji = sub i16 %.0427533, %i.jh                ; 5 uses
  %i.jj = mul nsw i32 %21, %i.hp
  %i.jk = ashr i32 %i.jj, %6
  %i.jl = shl nsw i32 %i.jk, 2
  %i.jm = sub nsw i32 %i.jf, %i.jl                ; 2 uses
end_hunk_13
begin_hunk_14_@pc_block:bb.a
  br i1 %i.jn, label %bb.ag, label %bb.t

bb.t:                                             ; preds = %bb.s
  %22 = tail call i32 @llvm.scmp.i32.i32(i32 %i.gy, i32 %i.hl) ; 2 uses
  %i.jo = trunc nsw i32 %22 to i16
  %i.jp = sub i16 %.2419537, %i.jo                ; 4 uses
  %i.jq = mul nsw i32 %22, %i.hm
  %i.jr = ashr i32 %i.jq, %6
  %.neg474 = mul i32 %i.jr, -5
  %i.js = add i32 %i.jm, %.neg474                 ; 2 uses
end_hunk_14
begin_hunk_15_@pc_block:bb.a
  br i1 %i.jt, label %bb.ag, label %bb.u

bb.u:                                             ; preds = %bb.t
  %23 = tail call i32 @llvm.scmp.i32.i32(i32 %i.gy, i32 %i.hi) ; 2 uses
  %i.ju = trunc nsw i32 %23 to i16
  %i.jv = sub i16 %.2415538, %i.ju                ; 3 uses
  %i.jw = mul nsw i32 %23, %i.hj
  %i.jx = ashr i32 %i.jw, %6
  %.neg475 = mul i32 %i.jx, -6
  %i.jy = add i32 %i.js, %.neg475                 ; 2 uses
end_hunk_15
begin_hunk_16_@pc_block:bb.a
  br i1 %i.jz, label %bb.ag, label %bb.v

bb.v:                                             ; preds = %bb.u
  %24 = tail call i32 @llvm.scmp.i32.i32(i32 %i.gy, i32 %i.hf) ; 2 uses
  %i.ka = trunc nsw i32 %24 to i16
  %i.kb = sub i16 %.2411539, %i.ka                ; 2 uses
  %i.kc = mul nsw i32 %24, %i.hg
  %i.kd = ashr i32 %i.kc, %6
  %.neg476 = mul i32 %i.kd, -7
  %i.ke = add i32 %i.jy, %.neg476
end_hunk_16
begin_hunk_17_@pc_block:bb.a
  br i1 %i.kf, label %bb.ag, label %bb.w

bb.w:                                             ; preds = %bb.v
  %25 = tail call i32 @llvm.scmp.i32.i32(i32 %i.hc, i32 %i.gy)
  %i.kg = trunc nsw i32 %25 to i16
  %26 = add i16 %.2540, %i.kg
  br label %bb.ag

bb.x:                                             ; preds = %.lr.ph542
  %i.kh = icmp slt i32 %i.il, 0
  br i1 %i.kh, label %bb.y, label %bb.ag

bb.y:                                             ; preds = %bb.x
  %27 = tail call i32 @llvm.scmp.i32.i32(i32 %i.gy, i32 %i.hw) ; 2 uses
  %i.ki = trunc nsw i32 %27 to i16
  %i.kj = add i16 %.0421536, %i.ki                ; 8 uses
  %i.kk = mul i32 %i.hx, %27
  %i.kl = sub i32 0, %i.kk
  %i.km = ashr i32 %i.kl, %6
  %i.kn = sub nsw i32 %i.il, %i.km                ; 2 uses
end_hunk_17
begin_hunk_18_@pc_block:bb.a
  br i1 %i.ko, label %bb.ag, label %bb.z

bb.z:                                             ; preds = %bb.y
  %28 = tail call i32 @llvm.scmp.i32.i32(i32 %i.gy, i32 %i.hu) ; 2 uses
  %i.kp = trunc nsw i32 %28 to i16
  %i.kq = add i16 %.0423535, %i.kp                ; 7 uses
  %i.kr = mul i32 %i.hv, %28
  %i.ks = sub i32 0, %i.kr
  %i.kt = ashr i32 %i.ks, %6
  %i.ku = shl nsw i32 %i.kt, 1
end_hunk_18
begin_hunk_19_@pc_block:bb.a
  br i1 %i.kw, label %bb.ag, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %29 = tail call i32 @llvm.scmp.i32.i32(i32 %i.gy, i32 %i.hr) ; 2 uses
  %i.kx = trunc nsw i32 %29 to i16
  %i.ky = add i16 %.0425534, %i.kx                ; 6 uses
  %i.kz = mul i32 %i.hs, %29
  %i.la = sub i32 0, %i.kz
  %i.lb = ashr i32 %i.la, %6
  %.neg469 = mul i32 %i.lb, -3
end_hunk_19
begin_hunk_20_@pc_block:bb.a
  br i1 %i.ld, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %30 = tail call i32 @llvm.scmp.i32.i32(i32 %i.gy, i32 %i.ho) ; 2 uses
  %i.le = trunc nsw i32 %30 to i16
  %i.lf = add i16 %.0427533, %i.le                ; 5 uses
  %i.lg = mul i32 %i.hp, %30
  %i.lh = sub i32 0, %i.lg
  %i.li = ashr i32 %i.lh, %6
  %i.lj = shl nsw i32 %i.li, 2
end_hunk_20
begin_hunk_21_@pc_block:bb.a
  br i1 %i.ll, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %31 = tail call i32 @llvm.scmp.i32.i32(i32 %i.gy, i32 %i.hl) ; 2 uses
  %i.lm = trunc nsw i32 %31 to i16
  %i.ln = add i16 %.2419537, %i.lm                ; 4 uses
  %i.lo = mul i32 %i.hm, %31
  %i.lp = sub i32 0, %i.lo
  %i.lq = ashr i32 %i.lp, %6
  %.neg470 = mul i32 %i.lq, -5
end_hunk_21
begin_hunk_22_@pc_block:bb.a
  br i1 %i.ls, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %32 = tail call i32 @llvm.scmp.i32.i32(i32 %i.gy, i32 %i.hi) ; 2 uses
  %i.lt = trunc nsw i32 %32 to i16
  %i.lu = add i16 %.2415538, %i.lt                ; 3 uses
  %i.lv = mul i32 %i.hj, %32
  %i.lw = sub i32 0, %i.lv
  %i.lx = ashr i32 %i.lw, %6
  %.neg471 = mul i32 %i.lx, -6
end_hunk_22
begin_hunk_23_@pc_block:bb.a
  br i1 %i.lz, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %33 = tail call i32 @llvm.scmp.i32.i32(i32 %i.gy, i32 %i.hf) ; 2 uses
  %i.ma = trunc nsw i32 %33 to i16
  %i.mb = add i16 %.2411539, %i.ma                ; 2 uses
  %i.mc = mul i32 %i.hg, %33
  %i.md = sub i32 0, %i.mc
  %i.me = ashr i32 %i.md, %6
  %.neg472 = mul i32 %i.me, -7
end_hunk_23
begin_hunk_24_@pc_block:bb.a
  br i1 %i.mg, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %34 = tail call i32 @llvm.scmp.i32.i32(i32 %i.gy, i32 %i.hc)
  %i.mh = trunc nsw i32 %34 to i16
  %i.mi = add i16 %.2540, %i.mh
  br label %bb.ag

end_hunk_24
begin_hunk_25_@pc_block:bb.a
  %.3420 = phi i16 [ %.2419537, %bb.p ], [ %.2419537, %bb.q ], [ %.2419537, %bb.r ], [ %.2419537, %bb.s ], [ %i.jp, %bb.t ], [ %i.jp, %bb.u ], [ %i.jp, %bb.v ], [ %i.jp, %bb.w ], [ %.2419537, %bb.y ], [ %.2419537, %bb.z ], [ %.2419537, %bb.aa ], [ %.2419537, %bb.ab ], [ %i.ln, %bb.ac ], [ %i.ln, %bb.ad ], [ %i.ln, %bb.ae ], [ %i.ln, %bb.af ], [ %.2419537, %bb.x ] ; 2 uses
  %.3416 = phi i16 [ %.2415538, %bb.p ], [ %.2415538, %bb.q ], [ %.2415538, %bb.r ], [ %.2415538, %bb.s ], [ %.2415538, %bb.t ], [ %i.jv, %bb.u ], [ %i.jv, %bb.v ], [ %i.jv, %bb.w ], [ %.2415538, %bb.y ], [ %.2415538, %bb.z ], [ %.2415538, %bb.aa ], [ %.2415538, %bb.ab ], [ %.2415538, %bb.ac ], [ %i.lu, %bb.ad ], [ %i.lu, %bb.ae ], [ %i.lu, %bb.af ], [ %.2415538, %bb.x ] ; 2 uses
  %.3412 = phi i16 [ %.2411539, %bb.p ], [ %.2411539, %bb.q ], [ %.2411539, %bb.r ], [ %.2411539, %bb.s ], [ %.2411539, %bb.t ], [ %.2411539, %bb.u ], [ %i.kb, %bb.v ], [ %i.kb, %bb.w ], [ %.2411539, %bb.y ], [ %.2411539, %bb.z ], [ %.2411539, %bb.aa ], [ %.2411539, %bb.ab ], [ %.2411539, %bb.ac ], [ %.2411539, %bb.ad ], [ %i.mb, %bb.ae ], [ %i.mb, %bb.af ], [ %.2411539, %bb.x ] ; 2 uses
  %.3 = phi i16 [ %.2540, %bb.p ], [ %.2540, %bb.q ], [ %.2540, %bb.r ], [ %.2540, %bb.s ], [ %.2540, %bb.t ], [ %.2540, %bb.u ], [ %.2540, %bb.v ], [ %26, %bb.w ], [ %.2540, %bb.y ], [ %.2540, %bb.z ], [ %.2540, %bb.aa ], [ %.2540, %bb.ab ], [ %.2540, %bb.ac ], [ %.2540, %bb.ad ], [ %.2540, %bb.ae ], [ %i.mi, %bb.af ], [ %.2540, %bb.x ] ; 2 uses
  %indvars.iv.next580 = add nuw nsw i64 %indvars.iv579, 1 ; 2 uses
  %exitcond582.not = icmp eq i64 %indvars.iv.next580, %wide.trip.count581
  br i1 %exitcond582.not, label %._crit_edge543, label %.lr.ph542, !llvm.loop !34
end_hunk_25
begin_hunk_26_@pc_block:bb.a
  %indvars.iv600 = phi i64 [ %i.cy, %.lr.ph570.a ], [ %indvars.iv.next601, %.loopexit ] ; 4 uses
  %i.mj = sub nsw i64 %indvars.iv600, %i.cy
  %i.mk = getelementptr inbounds [4 x i8], ptr %0, i64 %i.mj
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !4  ; 7 uses
  %i.mm = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv600 ; 2 uses
  %i.mn = getelementptr inbounds i8, ptr %i.mm, i64 -4 ; 4 uses
  br i1 %i.cw, label %.lr.ph566.preheader, label %._crit_edge567
end_hunk_26
begin_hunk_27_@pc_block:bb.a
  %i.nn = ashr i32 %i.nm, %6
  %i.no = add i32 %i.nn, %i.ml
  %i.np = sub i32 %i.nl, %i.no
  %i.nq = shl i32 %i.np, %i.a                     ; 2 uses
  %i.nr = ashr exact i32 %i.nq, %i.a              ; 4 uses
  %i.ns = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv600
  store i32 %i.nr, ptr %i.ns, align 4, !tbaa !4
  %i.nt = icmp sgt i32 %i.nr, 0
  br i1 %i.nt, label %.preheader.preheader, label %bb.ai

.preheader.preheader:                             ; preds = %._crit_edge567
end_hunk_27
begin_hunk_28_@pc_block:bb.a
  %indvars.iv.next597 = add nsw i64 %indvars.iv596636, -1 ; 3 uses
  %i.nv = sub nsw i64 1, %indvars.iv596636
  %i.nw = getelementptr inbounds [4 x i8], ptr %i.mn, i64 %i.nv
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !4  ; 2 uses
  %i.ny = sub nsw i32 %i.ml, %i.nx
  %35 = tail call i32 @llvm.scmp.i32.i32(i32 %i.ml, i32 %i.nx) ; 2 uses
  %i.nz = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv.next597 ; 2 uses
  %i.oa = load i16, ptr %i.nz, align 2, !tbaa !8
  %i.ob = trunc nsw i32 %35 to i16
  %i.oc = sub i16 %i.oa, %i.ob
  store i16 %i.oc, ptr %i.nz, align 2, !tbaa !8
  %i.od = mul nsw i32 %35, %i.ny
  %i.oe = ashr i32 %i.od, %6
  %i.of = trunc i64 %indvars.iv.next597 to i32
  %i.og = sub i32 %i.of, %4
end_hunk_28
begin_hunk_29_@pc_block:bb.a
  br i1 %i.oi, label %..loopexit.loopexit631_crit_edge, label %.preheader, !llvm.loop !37

bb.ai:                                            ; preds = %._crit_edge567
  %36 = icmp ne i32 %i.nq, 0
  %or.cond687 = and i1 %36, %i.cz
  br i1 %or.cond687, label %.lr.ph635, label %.loopexit

.preheader521:                                    ; preds = %.lr.ph635
end_hunk_29
begin_hunk_30_@pc_block:bb.a
  %indvars.iv.next593 = add nsw i64 %indvars.iv592633, -1 ; 3 uses
  %i.ok = sub nsw i64 1, %indvars.iv592633
  %i.ol = getelementptr inbounds [4 x i8], ptr %i.mn, i64 %i.ok
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !4  ; 2 uses
  %i.on = sub i32 %i.om, %i.ml
  %37 = tail call i32 @llvm.scmp.i32.i32(i32 %i.ml, i32 %i.om) ; 2 uses
  %i.oo = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv.next593 ; 2 uses
  %i.op = load i16, ptr %i.oo, align 2, !tbaa !8
  %i.oq = trunc nsw i32 %37 to i16
  %i.or = add i16 %i.op, %i.oq
  store i16 %i.or, ptr %i.oo, align 2, !tbaa !8
  %i.os = mul i32 %i.on, %37
  %i.ot = ashr i32 %i.os, %6
  %i.ou = trunc i64 %indvars.iv.next593 to i32
  %i.ov = sub i32 %i.ou, %4
  %.neg464 = mul i32 %i.ot, %i.ov
end_hunk_30
begin_hunk_31_@pc_block:bb.a
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
end_hunk_31

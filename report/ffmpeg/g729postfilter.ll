inline.NumInlined: 8
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@ff_g729_postfilter:.preheader.preheader
  %.110.i317.i = select i1 %.not11.i316.i, i32 %spec.select.i314.i, i32 %i.jm
  %i.jn = zext nneg i32 %.110.i317.i to i64
  %i.jo = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.jn
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !23
  %i.jq = add i32 %4, -1                          ; 2 uses
  %i.jr = trunc i32 %i.jq to i16
  %i.js = sext i32 %i.jq to i64
  %i.jt = sext i32 %4 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv387.i = phi i64 [ %i.js, %bb.b ], [ %indvars.iv.next388.i, %bb.c ] ; 4 uses
  %.0242351.i = phi i16 [ %i.jr, %bb.b ], [ %spec.select297.i, %bb.c ]
  %.0270350.i = phi i32 [ 0, %bb.b ], [ %spec.select.i, %bb.c ] ; 2 uses
  %i.ju = load ptr, ptr %0, align 8, !tbaa !31
  %i.jv = sub nsw i64 0, %indvars.iv387.i
  %i.jw = getelementptr inbounds [2 x i8], ptr %i.jj, i64 %i.jv
  %i.jx = call i32 %i.ju(ptr noundef nonnull %i.jj, ptr noundef nonnull %i.jw, i32 noundef %9) #7, !inline_history !34 ; 2 uses
  %i.jy = icmp sgt i32 %i.jx, %.0270350.i
  %i.jz = trunc i64 %indvars.iv387.i to i16
  %spec.select.i = call i32 @llvm.smax.i32(i32 %i.jx, i32 %.0270350.i) ; 3 uses
  %spec.select297.i = select i1 %i.jy, i16 %i.jz, i16 %.0242351.i ; 3 uses
  %indvars.iv.next388.i = add nsw i64 %indvars.iv387.i, 1
  %.not291.i = icmp sgt i64 %indvars.iv387.i, %i.jt
  br i1 %.not291.i, label %bb.d, label %bb.c, !llvm.loop !35

bb.d:                                             ; preds = %bb.c
  %spec.select12.i315.i = select i1 %.not.i313.i, i32 0, i32 16 ; 2 uses
  %i.ka = or disjoint i32 %spec.select12.i315.i, 8
  %.1.i318.i = select i1 %.not11.i316.i, i32 %spec.select12.i315.i, i32 %i.ka
  %i.kb = zext i8 %i.jp to i32
  %i.kc = add nuw nsw i32 %.1.i318.i, %i.kb
  %i.kd = call i32 @llvm.usub.sat.i32(i32 %i.kc, i32 14) ; 3 uses
  %i.ke = ashr i32 %i.jk, %i.kd
  %.not292.i = icmp eq i32 %spec.select.i, 0
  br i1 %.not292.i, label %.thread.i, label %.preheader338.i

.preheader338.i:                                  ; preds = %bb.d
  %i.kf = load ptr, ptr %0, align 8, !tbaa !31
  %i.kg = sext i16 %spec.select297.i to i64       ; 3 uses
  %i.kh = sub nsw i64 0, %i.kg
  %i.ki = getelementptr inbounds [2 x i8], ptr %i.jj, i64 %i.kh ; 2 uses
  %i.kj = call i32 %i.kf(ptr noundef nonnull %i.ki, ptr noundef nonnull %i.ki, i32 noundef %9) #7, !inline_history !34 ; 2 uses
  %i.kk = sub nsw i64 152, %i.kg
  %i.kl = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.kk ; 7 uses
  %i.km = add nsw i32 %9, 1                       ; 8 uses
  call void @ff_acelp_interpolate(ptr noundef nonnull %i.b, ptr noundef nonnull %i.kl, ptr noundef nonnull @ff_g729_interp_filt_short, i32 noundef 8, i32 noundef 7, i32 noundef 2, i32 noundef %i.km) #7
  %i.kn = getelementptr inbounds nuw i8, ptr %i.b, i64 82 ; 3 uses
  call void @ff_acelp_interpolate(ptr noundef nonnull %i.kn, ptr noundef nonnull %i.kl, ptr noundef nonnull @ff_g729_interp_filt_short, i32 noundef 8, i32 noundef 6, i32 noundef 2, i32 noundef %i.km) #7
  %i.ko = getelementptr inbounds nuw i8, ptr %i.b, i64 164 ; 3 uses
  call void @ff_acelp_interpolate(ptr noundef nonnull %i.ko, ptr noundef nonnull %i.kl, ptr noundef nonnull @ff_g729_interp_filt_short, i32 noundef 8, i32 noundef 5, i32 noundef 2, i32 noundef %i.km) #7
  %i.kp = getelementptr inbounds nuw i8, ptr %i.b, i64 246 ; 3 uses
  call void @ff_acelp_interpolate(ptr noundef nonnull %i.kp, ptr noundef nonnull %i.kl, ptr noundef nonnull @ff_g729_interp_filt_short, i32 noundef 8, i32 noundef 4, i32 noundef 2, i32 noundef %i.km) #7
  %i.kq = getelementptr inbounds nuw i8, ptr %i.b, i64 328 ; 3 uses
  call void @ff_acelp_interpolate(ptr noundef nonnull %i.kq, ptr noundef nonnull %i.kl, ptr noundef nonnull @ff_g729_interp_filt_short, i32 noundef 8, i32 noundef 3, i32 noundef 2, i32 noundef %i.km) #7
  %i.kr = getelementptr inbounds nuw i8, ptr %i.b, i64 410 ; 3 uses
  call void @ff_acelp_interpolate(ptr noundef nonnull %i.kr, ptr noundef nonnull %i.kl, ptr noundef nonnull @ff_g729_interp_filt_short, i32 noundef 8, i32 noundef 2, i32 noundef 2, i32 noundef %i.km) #7
  %i.ks = getelementptr inbounds nuw i8, ptr %i.b, i64 492 ; 3 uses
  call void @ff_acelp_interpolate(ptr noundef nonnull %i.ks, ptr noundef nonnull %i.kl, ptr noundef nonnull @ff_g729_interp_filt_short, i32 noundef 8, i32 noundef 1, i32 noundef 2, i32 noundef %i.km) #7
  %i.kt = add nsw i32 %9, -1                      ; 7 uses
  %i.ku = load ptr, ptr %0, align 8, !tbaa !31
  %i.kv = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  %i.kw = call i32 %i.ku(ptr noundef nonnull %i.kv, ptr noundef nonnull %i.kv, i32 noundef %i.kt) #7, !inline_history !34 ; 2 uses
  %i.kx = load i16, ptr %i.b, align 16, !tbaa !9
  %i.ky = sext i16 %i.kx to i32                   ; 2 uses
  %i.kz = mul nsw i32 %i.ky, %i.ky
  %i.la = add nsw i32 %i.kz, %i.kw                ; 2 uses
  store i32 %i.la, ptr %i.c, align 16, !tbaa !36
  %i.lb = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.jg
  %i.lc = load i16, ptr %i.lb, align 2, !tbaa !9
  %i.ld = sext i16 %i.lc to i32                   ; 2 uses
  %i.le = mul nsw i32 %i.ld, %i.ld
  %i.lf = add nsw i32 %i.le, %i.kw                ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.lf, ptr %i.lg, align 4, !tbaa !36
  %.1233..i = call i32 @llvm.smax.i32(i32 %i.kj, i32 %i.la)
  %spec.select333.i = call i32 @llvm.smax.i32(i32 %.1233..i, i32 %i.lf)
  %i.lh = load ptr, ptr %0, align 8, !tbaa !31
  %i.li = getelementptr inbounds nuw i8, ptr %i.b, i64 84 ; 2 uses
  %i.lj = call i32 %i.lh(ptr noundef nonnull %i.li, ptr noundef nonnull %i.li, i32 noundef %i.kt) #7, !inline_history !34 ; 2 uses
  %i.lk = load i16, ptr %i.kn, align 2, !tbaa !9
  %i.ll = sext i16 %i.lk to i32                   ; 2 uses
  %i.lm = mul nsw i32 %i.ll, %i.ll
  %i.ln = add nsw i32 %i.lm, %i.lj                ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.ln, ptr %i.lo, align 8, !tbaa !36
  %i.lp = getelementptr inbounds [2 x i8], ptr %i.kn, i64 %i.jg
  %i.lq = load i16, ptr %i.lp, align 2, !tbaa !9
  %i.lr = sext i16 %i.lq to i32                   ; 2 uses
  %i.ls = mul nsw i32 %i.lr, %i.lr
  %i.lt = add nsw i32 %i.ls, %i.lj                ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 %i.lt, ptr %i.lu, align 4, !tbaa !36
  %.1233..1.i = call i32 @llvm.smax.i32(i32 %spec.select333.i, i32 %i.ln)
  %spec.select333.1.i = call i32 @llvm.smax.i32(i32 %.1233..1.i, i32 %i.lt)
  %i.lv = load ptr, ptr %0, align 8, !tbaa !31
  %i.lw = getelementptr inbounds nuw i8, ptr %i.b, i64 166 ; 2 uses
  %i.lx = call i32 %i.lv(ptr noundef nonnull %i.lw, ptr noundef nonnull %i.lw, i32 noundef %i.kt) #7, !inline_history !34 ; 2 uses
  %i.ly = load i16, ptr %i.ko, align 4, !tbaa !9
  %i.lz = sext i16 %i.ly to i32                   ; 2 uses
  %i.ma = mul nsw i32 %i.lz, %i.lz
  %i.mb = add nsw i32 %i.ma, %i.lx                ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 %i.mb, ptr %i.mc, align 16, !tbaa !36
  %i.md = getelementptr inbounds [2 x i8], ptr %i.ko, i64 %i.jg
  %i.me = load i16, ptr %i.md, align 2, !tbaa !9
  %i.mf = sext i16 %i.me to i32                   ; 2 uses
  %i.mg = mul nsw i32 %i.mf, %i.mf
  %i.mh = add nsw i32 %i.mg, %i.lx                ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i32 %i.mh, ptr %i.mi, align 4, !tbaa !36
  %.1233..2.i = call i32 @llvm.smax.i32(i32 %spec.select333.1.i, i32 %i.mb)
  %spec.select333.2.i = call i32 @llvm.smax.i32(i32 %.1233..2.i, i32 %i.mh)
  %i.mj = load ptr, ptr %0, align 8, !tbaa !31
  %i.mk = getelementptr inbounds nuw i8, ptr %i.b, i64 248 ; 2 uses
  %i.ml = call i32 %i.mj(ptr noundef nonnull %i.mk, ptr noundef nonnull %i.mk, i32 noundef %i.kt) #7, !inline_history !34 ; 2 uses
  %i.mm = load i16, ptr %i.kp, align 2, !tbaa !9
  %i.mn = sext i16 %i.mm to i32                   ; 2 uses
  %i.mo = mul nsw i32 %i.mn, %i.mn
  %i.mp = add nsw i32 %i.mo, %i.ml                ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 %i.mp, ptr %i.mq, align 8, !tbaa !36
  %i.mr = getelementptr inbounds [2 x i8], ptr %i.kp, i64 %i.jg
  %i.ms = load i16, ptr %i.mr, align 2, !tbaa !9
  %i.mt = sext i16 %i.ms to i32                   ; 2 uses
  %i.mu = mul nsw i32 %i.mt, %i.mt
  %i.mv = add nsw i32 %i.mu, %i.ml                ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store i32 %i.mv, ptr %i.mw, align 4, !tbaa !36
  %.1233..3.i = call i32 @llvm.smax.i32(i32 %spec.select333.2.i, i32 %i.mp)
  %spec.select333.3.i = call i32 @llvm.smax.i32(i32 %.1233..3.i, i32 %i.mv)
  %i.mx = load ptr, ptr %0, align 8, !tbaa !31
  %i.my = getelementptr inbounds nuw i8, ptr %i.b, i64 330 ; 2 uses
  %i.mz = call i32 %i.mx(ptr noundef nonnull %i.my, ptr noundef nonnull %i.my, i32 noundef %i.kt) #7, !inline_history !34 ; 2 uses
  %i.na = load i16, ptr %i.kq, align 8, !tbaa !9
  %i.nb = sext i16 %i.na to i32                   ; 2 uses
  %i.nc = mul nsw i32 %i.nb, %i.nb
  %i.nd = add nsw i32 %i.nc, %i.mz                ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i32 %i.nd, ptr %i.ne, align 16, !tbaa !36
  %i.nf = getelementptr inbounds [2 x i8], ptr %i.kq, i64 %i.jg
  %i.ng = load i16, ptr %i.nf, align 2, !tbaa !9
  %i.nh = sext i16 %i.ng to i32                   ; 2 uses
  %i.ni = mul nsw i32 %i.nh, %i.nh
  %i.nj = add nsw i32 %i.ni, %i.mz                ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  store i32 %i.nj, ptr %i.nk, align 4, !tbaa !36
  %.1233..4.i = call i32 @llvm.smax.i32(i32 %spec.select333.3.i, i32 %i.nd)
  %spec.select333.4.i = call i32 @llvm.smax.i32(i32 %.1233..4.i, i32 %i.nj)
  %i.nl = load ptr, ptr %0, align 8, !tbaa !31
  %i.nm = getelementptr inbounds nuw i8, ptr %i.b, i64 412 ; 2 uses
  %i.nn = call i32 %i.nl(ptr noundef nonnull %i.nm, ptr noundef nonnull %i.nm, i32 noundef %i.kt) #7, !inline_history !34 ; 2 uses
  %i.no = load i16, ptr %i.kr, align 2, !tbaa !9
  %i.np = sext i16 %i.no to i32                   ; 2 uses
  %i.nq = mul nsw i32 %i.np, %i.np
  %i.nr = add nsw i32 %i.nq, %i.nn                ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 %i.nr, ptr %i.ns, align 8, !tbaa !36
  %i.nt = getelementptr inbounds [2 x i8], ptr %i.kr, i64 %i.jg
  %i.nu = load i16, ptr %i.nt, align 2, !tbaa !9
  %i.nv = sext i16 %i.nu to i32                   ; 2 uses
  %i.nw = mul nsw i32 %i.nv, %i.nv
  %i.nx = add nsw i32 %i.nw, %i.nn                ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  store i32 %i.nx, ptr %i.ny, align 4, !tbaa !36
  %.1233..5.i = call i32 @llvm.smax.i32(i32 %spec.select333.4.i, i32 %i.nr)
  %spec.select333.5.i = call i32 @llvm.smax.i32(i32 %.1233..5.i, i32 %i.nx)
  %i.nz = load ptr, ptr %0, align 8, !tbaa !31
  %i.oa = getelementptr inbounds nuw i8, ptr %i.b, i64 494 ; 2 uses
  %i.ob = call i32 %i.nz(ptr noundef nonnull %i.oa, ptr noundef nonnull %i.oa, i32 noundef %i.kt) #7, !inline_history !34 ; 2 uses
  %i.oc = load i16, ptr %i.ks, align 4, !tbaa !9
  %i.od = sext i16 %i.oc to i32                   ; 2 uses
  %i.oe = mul nsw i32 %i.od, %i.od
  %i.of = add nsw i32 %i.oe, %i.ob                ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i32 %i.of, ptr %i.og, align 16, !tbaa !36
  %i.oh = getelementptr inbounds [2 x i8], ptr %i.ks, i64 %i.jg
  %i.oi = load i16, ptr %i.oh, align 2, !tbaa !9
  %i.oj = sext i16 %i.oi to i32                   ; 2 uses
  %i.ok = mul nsw i32 %i.oj, %i.oj
  %i.ol = add nsw i32 %i.ok, %i.ob                ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  store i32 %i.ol, ptr %i.om, align 4, !tbaa !36
  %.1233..6.i = call i32 @llvm.smax.i32(i32 %spec.select333.5.i, i32 %i.of)
  %spec.select333.6.i = call i32 @llvm.smax.i32(i32 %.1233..6.i, i32 %i.ol) ; 3 uses
  %.not.i307.i = icmp ult i32 %spec.select333.6.i, 65536 ; 2 uses
  %i.on = lshr i32 %spec.select333.6.i, 16
  %spec.select.i308.i = select i1 %.not.i307.i, i32 %spec.select333.6.i, i32 %i.on ; 3 uses
  %spec.select12.i309.i = select i1 %.not.i307.i, i32 0, i32 16 ; 2 uses
  %.not11.i310.i = icmp samesign ult i32 %spec.select.i308.i, 256 ; 2 uses
  %i.oo = lshr i32 %spec.select.i308.i, 8
  %i.op = or disjoint i32 %spec.select12.i309.i, 8
  %.110.i311.i = select i1 %.not11.i310.i, i32 %spec.select.i308.i, i32 %i.oo
  %.1.i312.i = select i1 %.not11.i310.i, i32 %spec.select12.i309.i, i32 %i.op
  %i.oq = zext nneg i32 %.110.i311.i to i64
  %i.or = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.oq
  %i.os = load i8, ptr %i.or, align 1, !tbaa !23
  %i.ot = zext i8 %i.os to i32
  %i.ou = add nuw nsw i32 %.1.i312.i, %i.ot       ; 2 uses
  %i.ov = trunc nuw nsw i32 %i.ou to i16
  %i.ow = add nsw i16 %i.ov, -14                  ; 4 uses
  %i.ox = sext i16 %i.ow to i32                   ; 5 uses
  %i.oy = icmp samesign ugt i32 %i.ou, 13
  br i1 %i.oy, label %bb.e, label %.thread.i

bb.e:                                             ; preds = %.preheader338.i
  %i.oz = call i32 @llvm.smax.i32(i32 %i.kd, i32 %i.ox) ; 6 uses
  %i.pa = ashr i32 %i.kj, %i.ox
  %i.pb = trunc i32 %i.pa to i16
  %i.pc = lshr i32 %spec.select.i, %i.oz          ; 2 uses
  %i.pd = trunc i32 %i.pc to i16
  %sext.i = shl i32 %i.pc, 16
  %i.pe = ashr exact i32 %sext.i, 16              ; 2 uses
  %i.pf = mul nsw i32 %i.pe, %i.pe
  br label %.preheader337.i

.preheader337.i:                                  ; preds = %bb.i, %bb.e
  %indvars.iv399.i = phi i64 [ 0, %bb.e ], [ %indvars.iv.next400.i, %bb.i ] ; 4 uses
  %.0234366.i = phi i16 [ 1, %bb.e ], [ %.2236.1.i, %bb.i ]
  %.0238365.i = phi i16 [ 0, %bb.e ], [ %.2240.1.i, %bb.i ]
  %.0249364.i = phi i32 [ %i.pf, %bb.e ], [ %.2251.1.i, %bb.i ] ; 2 uses
  %.0258363.i = phi i16 [ %i.pb, %bb.e ], [ %.2260.1.i, %bb.i ] ; 2 uses
  %.0264362.i = phi i16 [ %i.pd, %bb.e ], [ %.2266.1.i, %bb.i ]
  %i.pg = getelementptr inbounds nuw [82 x i8], ptr %i.b, i64 %indvars.iv399.i ; 2 uses
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv399.i ; 2 uses
  %i.pi = trunc i64 %indvars.iv399.i to i16
  %i.pj = add nuw nsw i16 %i.pi, 1                ; 2 uses
  %i.pk = load ptr, ptr %0, align 8, !tbaa !31
  %i.pl = call i32 %i.pk(ptr noundef nonnull %i.pg, ptr noundef nonnull %i.jj, i32 noundef %9) #7, !inline_history !34
  %i.pm = ashr i32 %i.pl, %i.oz
  %i.pn = call i32 @llvm.smax.i32(i32 %i.pm, i32 0) ; 2 uses
  %sext296.i = shl i32 %i.pn, 16
  %i.po = ashr exact i32 %sext296.i, 16           ; 2 uses
  %i.pp = mul nsw i32 %i.po, %i.po                ; 2 uses
  %i.pq = load i32, ptr %i.ph, align 8, !tbaa !36
  %i.pr = ashr i32 %i.pq, %i.ox
  %i.ps = trunc i32 %i.pr to i16                  ; 2 uses
  %i.pt = zext nneg i32 %i.pp to i64              ; 2 uses
  %i.pu = sext i16 %.0258363.i to i64             ; 2 uses
  %i.pv = mul nsw i64 %i.pt, %i.pu
  %i.pw = lshr i64 %i.pv, 15
  %i.px = trunc i64 %i.pw to i32
  %i.py = zext nneg i32 %.0249364.i to i64        ; 2 uses
  %i.pz = sext i16 %i.ps to i64                   ; 2 uses
  %i.qa = mul nsw i64 %i.pz, %i.py
  %i.qb = lshr i64 %i.qa, 15
  %i.qc = trunc i64 %i.qb to i32
  %i.qd = icmp sgt i32 %i.px, %i.qc
  br i1 %i.qd, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.preheader337.i
  %i.qe = trunc i32 %i.pn to i16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.preheader337.i
  %.pre-phi412.i = phi i64 [ %i.pt, %bb.f ], [ %i.py, %.preheader337.i ]
  %.pre-phi.i = phi i64 [ %i.pz, %bb.f ], [ %i.pu, %.preheader337.i ]
  %.2266.i = phi i16 [ %i.qe, %bb.f ], [ %.0264362.i, %.preheader337.i ]
  %.2260.i = phi i16 [ %i.ps, %bb.f ], [ %.0258363.i, %.preheader337.i ]
  %.2251.i = phi i32 [ %i.pp, %bb.f ], [ %.0249364.i, %.preheader337.i ]
  %.2240.i = phi i16 [ %i.pj, %bb.f ], [ %.0238365.i, %.preheader337.i ]
  %.2236.i = phi i16 [ 0, %bb.f ], [ %.0234366.i, %.preheader337.i ]
  %i.qf = load ptr, ptr %0, align 8, !tbaa !31
  %i.qg = getelementptr inbounds nuw i8, ptr %i.pg, i64 2
  %i.qh = call i32 %i.qf(ptr noundef nonnull %i.qg, ptr noundef nonnull %i.jj, i32 noundef %9) #7, !inline_history !34
  %i.qi = ashr i32 %i.qh, %i.oz
  %i.qj = call i32 @llvm.smax.i32(i32 %i.qi, i32 0) ; 2 uses
  %sext296.1.i = shl i32 %i.qj, 16
  %i.qk = ashr exact i32 %sext296.1.i, 16         ; 2 uses
  %i.ql = mul nsw i32 %i.qk, %i.qk                ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ph, i64 4
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !36
  %i.qo = ashr i32 %i.qn, %i.ox
  %i.qp = trunc i32 %i.qo to i16                  ; 2 uses
  %i.qq = zext nneg i32 %i.ql to i64
  %i.qr = mul nsw i64 %.pre-phi.i, %i.qq
  %i.qs = lshr i64 %i.qr, 15
  %i.qt = trunc i64 %i.qs to i32
  %i.qu = sext i16 %i.qp to i64
  %i.qv = mul nsw i64 %.pre-phi412.i, %i.qu
  %i.qw = lshr i64 %i.qv, 15
  %i.qx = trunc i64 %i.qw to i32
  %i.qy = icmp sgt i32 %i.qt, %i.qx
  br i1 %i.qy, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.qz = trunc i32 %i.qj to i16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.2266.1.i = phi i16 [ %i.qz, %bb.h ], [ %.2266.i, %bb.g ] ; 5 uses
  %.2260.1.i = phi i16 [ %i.qp, %bb.h ], [ %.2260.i, %bb.g ] ; 4 uses
  %.2251.1.i = phi i32 [ %i.ql, %bb.h ], [ %.2251.i, %bb.g ] ; 2 uses
  %.2240.1.i = phi i16 [ %i.pj, %bb.h ], [ %.2240.i, %bb.g ] ; 4 uses
  %.2236.1.i = phi i16 [ 1, %bb.h ], [ %.2236.i, %bb.g ] ; 3 uses
  %indvars.iv.next400.i = add nuw nsw i64 %indvars.iv399.i, 1 ; 2 uses
  %exitcond401.not.i = icmp eq i64 %indvars.iv.next400.i, 7
  br i1 %exitcond401.not.i, label %bb.j, label %.preheader337.i, !llvm.loop !37

bb.j:                                             ; preds = %bb.i
  %i.ra = trunc nuw nsw i32 %i.oz to i16          ; 2 uses
  %i.rb = sext i32 %.2251.1.i to i64
  %i.rc = shl nuw nsw i32 %i.oz, 1
  %i.rd = or disjoint i32 %i.rc, 1
  %i.re = zext nneg i32 %i.rd to i64
  %i.rf = shl i64 %i.rb, %i.re
  %i.rg = sext i16 %.2260.1.i to i64              ; 2 uses
  %i.rh = sext i32 %i.ke to i64
  %i.ri = mul nsw i64 %i.rg, %i.rh
  %i.rj = add nsw i32 %i.kd, %i.ox
  %i.rk = zext nneg i32 %i.rj to i64
  %i.rl = shl i64 %i.ri, %i.rk
  %i.rm = icmp slt i64 %i.rf, %i.rl
  %.not293.i = icmp eq i16 %.2266.1.i, 0
  %or.cond.i = select i1 %i.rm, i1 true, i1 %.not293.i
  br i1 %or.cond.i, label %.thread.i, label %bb.k

.thread.i:                                        ; preds = %bb.j, %.preheader338.i, %bb.d, %.loopexit340.i
  %i.rn = shl nsw i64 %i.jg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.jf, ptr nonnull align 2 %i.cq, i64 %i.rn, i1 false)
  br label %long_term_filter.exit

bb.k:                                             ; preds = %bb.j
  %.not294.i = icmp eq i16 %.2240.1.i, 0
  br i1 %.not294.i, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ro = zext nneg i16 %.2236.1.i to i64         ; 2 uses
  %reass.sub.i = sub nsw i64 %i.ro, %i.kg
  %i.rp = getelementptr [2 x i8], ptr %i.a, i64 %reass.sub.i
  %i.rq = getelementptr i8, ptr %i.rp, i64 304
  %i.rr = sext i16 %.2240.1.i to i32
  %i.rs = sub nsw i32 8, %i.rr
  call void @ff_acelp_interpolate(ptr noundef nonnull %i.jf, ptr noundef %i.rq, ptr noundef nonnull @ff_g729_interp_filt_long, i32 noundef 8, i32 noundef %i.rs, i32 noundef 8, i32 noundef %i.km) #7
  %i.rt = load ptr, ptr %0, align 8, !tbaa !31
  %i.ru = call i32 %i.rt(ptr noundef nonnull %i.jf, ptr noundef nonnull %i.jj, i32 noundef %9) #7, !inline_history !34 ; 5 uses
  %i.rv = icmp slt i32 %i.ru, 0
  br i1 %i.rv, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i301.i = icmp samesign ult i32 %i.ru, 65536 ; 2 uses
  %i.rw = lshr i32 %i.ru, 16
  %spec.select.i302.i = select i1 %.not.i301.i, i32 %i.ru, i32 %i.rw ; 3 uses
  %spec.select12.i303.i = select i1 %.not.i301.i, i32 0, i32 16 ; 2 uses
  %.not11.i304.i = icmp samesign ult i32 %spec.select.i302.i, 256 ; 2 uses
  %i.rx = lshr i32 %spec.select.i302.i, 8
  %i.ry = or disjoint i32 %spec.select12.i303.i, 8
  %.110.i305.i = select i1 %.not11.i304.i, i32 %spec.select.i302.i, i32 %i.rx
  %.1.i306.i = select i1 %.not11.i304.i, i32 %spec.select12.i303.i, i32 %i.ry
  %i.rz = zext nneg i32 %.110.i305.i to i64
  %i.sa = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.rz
  %i.sb = load i8, ptr %i.sa, align 1, !tbaa !23
  %i.sc = zext i8 %i.sb to i32
  %i.sd = add nuw nsw i32 %.1.i306.i, %i.sc
  %i.se = call i32 @llvm.usub.sat.i32(i32 %i.sd, i32 14) ; 2 uses
  %i.sf = lshr i32 %i.ru, %i.se
  %i.sg = trunc i32 %i.sf to i16
  %i.sh = trunc nuw nsw i32 %i.se to i16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0248.i = phi i16 [ %i.sg, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %.0246.i = phi i16 [ %i.sh, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %i.si = load ptr, ptr %0, align 8, !tbaa !31
  %i.sj = call i32 %i.si(ptr noundef nonnull %i.jf, ptr noundef nonnull %i.jf, i32 noundef %9) #7, !inline_history !34 ; 4 uses
  %.not.i.i = icmp ult i32 %i.sj, 65536           ; 2 uses
  %i.sk = lshr i32 %i.sj, 16
  %spec.select.i.i = select i1 %.not.i.i, i32 %i.sj, i32 %i.sk ; 3 uses
  %spec.select12.i.i = select i1 %.not.i.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i = icmp samesign ult i32 %spec.select.i.i, 256 ; 2 uses
  %i.sl = lshr i32 %spec.select.i.i, 8
  %i.sm = or disjoint i32 %spec.select12.i.i, 8
  %.110.i.i = select i1 %.not11.i.i, i32 %spec.select.i.i, i32 %i.sl
  %.1.i.i = select i1 %.not11.i.i, i32 %spec.select12.i.i, i32 %i.sm
  %i.sn = zext nneg i32 %.110.i.i to i64
  %i.so = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.sn
  %i.sp = load i8, ptr %i.so, align 1, !tbaa !23
  %i.sq = zext i8 %i.sp to i32
  %i.sr = add nuw nsw i32 %.1.i.i, %i.sq
  %i.ss = call i32 @llvm.usub.sat.i32(i32 %i.sr, i32 14) ; 3 uses
  %i.st = ashr i32 %i.sj, %i.ss
  %i.su = trunc i32 %i.st to i16                  ; 2 uses
  %i.sv = trunc nuw nsw i32 %i.ss to i16
  %i.sw = sext i16 %.2266.1.i to i32              ; 2 uses
  %i.sx = mul nsw i32 %i.sw, %i.sw
  %i.sy = zext nneg i32 %i.sx to i64
  %i.sz = sext i16 %i.su to i64
  %i.ta = mul nsw i64 %i.sz, %i.sy
  %i.tb = lshr i64 %i.ta, 15
  %i.tc = trunc i64 %i.tb to i32                  ; 2 uses
  %i.td = sext i16 %.0248.i to i32                ; 2 uses
  %i.te = mul nsw i32 %i.td, %i.td
  %i.tf = zext nneg i32 %i.te to i64
  %i.tg = mul nsw i64 %i.tf, %i.rg
  %i.th = lshr i64 %i.tg, 15
  %i.ti = trunc i64 %i.th to i32                  ; 2 uses
  %i.tj = zext nneg i16 %.0246.i to i32
  %i.tk = sub nsw i32 %i.tj, %i.oz
  %i.tl = shl nsw i32 %i.tk, 1
  %10 = zext nneg i16 %i.ow to i32
  %.neg.i = sub nsw i32 %10, %i.ss
  %i.tm = add nsw i32 %.neg.i, %i.tl              ; 3 uses
  %i.tn = icmp sgt i32 %i.tm, 0
  br i1 %i.tn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.to = ashr i32 %i.tc, %i.tm
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.tp = sub nsw i32 0, %i.tm
  %i.tq = call i32 @llvm.umin.i32(i32 %i.tp, i32 31)
  %i.tr = ashr i32 %i.ti, %i.tq
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0247.i = phi i32 [ %i.ti, %bb.o ], [ %i.tr, %bb.p ]
  %.0245.i = phi i32 [ %i.to, %bb.o ], [ %i.tc, %bb.p ]
  %i.ts = icmp sgt i32 %.0247.i, %.0245.i
  br i1 %i.ts, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.tt = sext i16 %.2240.1.i to i64
  %i.tu = getelementptr [82 x i8], ptr %i.b, i64 %i.tt
  %i.tv = getelementptr i8, ptr %i.tu, i64 -82
  %i.tw = getelementptr inbounds nuw [2 x i8], ptr %i.tv, i64 %i.ro
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.4268.i = phi i16 [ %.2266.1.i, %bb.r ], [ %.0248.i, %bb.q ] ; 8 uses
  %.4262.i = phi i16 [ %.2260.1.i, %bb.r ], [ %i.su, %bb.q ] ; 8 uses
  %.1256.i = phi i16 [ %i.ra, %bb.r ], [ %.0246.i, %bb.q ] ; 8 uses
  %.1253.i = phi i16 [ %i.ow, %bb.r ], [ %i.sv, %bb.q ] ; 8 uses
  %.0231.i = phi ptr [ %i.tw, %bb.r ], [ %i.jf, %bb.q ] ; 14 uses
  br i1 %i.jh, label %.preheader.i46, label %.preheader335.i

.preheader335.i:                                  ; preds = %bb.s
  br i1 %i.cr, label %iter.check218, label %.loopexit.i

iter.check218:                                    ; preds = %.preheader335.i
  %i.tx = sub nsw i32 0, %.0272423.i              ; 3 uses
  %wide.trip.count405.i = zext nneg i32 %9 to i64 ; 6 uses
  %min.iters.check203 = icmp ult i32 %9, 4
  br i1 %min.iters.check203, label %vec.epilog.scalar.ph219.preheader, label %vector.main.loop.iter.check204

vector.main.loop.iter.check204:                   ; preds = %iter.check218
  %min.iters.check205 = icmp ult i32 %9, 16
  br i1 %min.iters.check205, label %vec.epilog.ph222, label %vector.ph206

vector.ph206:                                     ; preds = %vector.main.loop.iter.check204
  %i.ty = and i64 %wide.trip.count405.i, 12
  %n.vec207 = and i64 %wide.trip.count405.i, 2147483632 ; 4 uses
  %broadcast.splatinsert208 = insertelement <8 x i32> poison, i32 %i.tx, i64 0
  %broadcast.splat209 = shufflevector <8 x i32> %broadcast.splatinsert208, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body210

vector.body210:                                   ; preds = %vector.body210, %vector.ph206
  %index211 = phi i64 [ 0, %vector.ph206 ], [ %index.next214, %vector.body210 ] ; 2 uses
  %i.tz = getelementptr inbounds nuw [2 x i8], ptr %.0231.i, i64 %index211 ; 3 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 16 ; 2 uses
  %wide.load212 = load <8 x i16>, ptr %i.tz, align 2, !tbaa !9
  %wide.load213 = load <8 x i16>, ptr %i.ua, align 2, !tbaa !9
  %i.ub = sext <8 x i16> %wide.load212 to <8 x i32>
  %i.uc = sext <8 x i16> %wide.load213 to <8 x i32>
  %i.ud = ashr <8 x i32> %i.ub, %broadcast.splat209
  %i.ue = ashr <8 x i32> %i.uc, %broadcast.splat209
  %i.uf = trunc nsw <8 x i32> %i.ud to <8 x i16>
  %i.ug = trunc nsw <8 x i32> %i.ue to <8 x i16>
  store <8 x i16> %i.uf, ptr %i.tz, align 2, !tbaa !9
  store <8 x i16> %i.ug, ptr %i.ua, align 2, !tbaa !9
  %index.next214 = add nuw i64 %index211, 16      ; 2 uses
  %i.uh = icmp eq i64 %index.next214, %n.vec207
  br i1 %i.uh, label %middle.block215, label %vector.body210, !llvm.loop !38

middle.block215:                                  ; preds = %vector.body210
  %cmp.n216 = icmp eq i64 %n.vec207, %wide.trip.count405.i
  br i1 %cmp.n216, label %.loopexit.i, label %vec.epilog.iter.check220

vec.epilog.iter.check220:                         ; preds = %middle.block215
  %min.epilog.iters.check221 = icmp eq i64 %i.ty, 0
  br i1 %min.epilog.iters.check221, label %vec.epilog.scalar.ph219.preheader, label %vec.epilog.ph222, !prof !25

vec.epilog.ph222:                                 ; preds = %vector.main.loop.iter.check204, %vec.epilog.iter.check220
  %vec.epilog.resume.val217 = phi i64 [ %n.vec207, %vec.epilog.iter.check220 ], [ 0, %vector.main.loop.iter.check204 ]
  %n.vec223 = and i64 %wide.trip.count405.i, 2147483644 ; 3 uses
  %broadcast.splatinsert224 = insertelement <4 x i32> poison, i32 %i.tx, i64 0
  %broadcast.splat225 = shufflevector <4 x i32> %broadcast.splatinsert224, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body226

vec.epilog.vector.body226:                        ; preds = %vec.epilog.vector.body226, %vec.epilog.ph222
  %index227 = phi i64 [ %vec.epilog.resume.val217, %vec.epilog.ph222 ], [ %index.next229, %vec.epilog.vector.body226 ] ; 2 uses
  %i.ui = getelementptr inbounds nuw [2 x i8], ptr %.0231.i, i64 %index227 ; 2 uses
  %wide.load228 = load <4 x i16>, ptr %i.ui, align 2, !tbaa !9
  %i.uj = sext <4 x i16> %wide.load228 to <4 x i32>
  %i.uk = ashr <4 x i32> %i.uj, %broadcast.splat225
  %i.ul = trunc nsw <4 x i32> %i.uk to <4 x i16>
  store <4 x i16> %i.ul, ptr %i.ui, align 2, !tbaa !9
  %index.next229 = add nuw i64 %index227, 4       ; 2 uses
  %i.um = icmp eq i64 %index.next229, %n.vec223
  br i1 %i.um, label %vec.epilog.middle.block230, label %vec.epilog.vector.body226, !llvm.loop !39

vec.epilog.middle.block230:                       ; preds = %vec.epilog.vector.body226
  %cmp.n231 = icmp eq i64 %n.vec223, %wide.trip.count405.i
  br i1 %cmp.n231, label %.loopexit.i, label %vec.epilog.scalar.ph219.preheader

vec.epilog.scalar.ph219.preheader:                ; preds = %iter.check218, %vec.epilog.iter.check220, %vec.epilog.middle.block230
  %indvars.iv402.i.ph = phi i64 [ 0, %iter.check218 ], [ %n.vec207, %vec.epilog.iter.check220 ], [ %n.vec223, %vec.epilog.middle.block230 ]
  br label %vec.epilog.scalar.ph219

.preheader.i46:                                   ; preds = %bb.s
  br i1 %i.cr, label %iter.check249, label %.loopexit.i

iter.check249:                                    ; preds = %.preheader.i46
  %wide.trip.count410.i = zext nneg i32 %9 to i64 ; 6 uses
  %min.iters.check234 = icmp ult i32 %9, 4
  br i1 %min.iters.check234, label %.lr.ph371.i.preheader, label %vector.main.loop.iter.check235

vector.main.loop.iter.check235:                   ; preds = %iter.check249
  %min.iters.check236 = icmp ult i32 %9, 16
  br i1 %min.iters.check236, label %vec.epilog.ph253, label %vector.ph237

vector.ph237:                                     ; preds = %vector.main.loop.iter.check235
  %i.un = and i64 %wide.trip.count410.i, 12
  %n.vec238 = and i64 %wide.trip.count410.i, 2147483632 ; 4 uses
  %broadcast.splatinsert239 = insertelement <8 x i32> poison, i32 %.0272423.i, i64 0
  %broadcast.splat240 = shufflevector <8 x i32> %broadcast.splatinsert239, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body241

vector.body241:                                   ; preds = %vector.body241, %vector.ph237
  %index242 = phi i64 [ 0, %vector.ph237 ], [ %index.next245, %vector.body241 ] ; 2 uses
  %i.uo = getelementptr inbounds nuw [2 x i8], ptr %.0231.i, i64 %index242 ; 3 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 16 ; 2 uses
  %wide.load243 = load <8 x i16>, ptr %i.uo, align 2, !tbaa !9
  %wide.load244 = load <8 x i16>, ptr %i.up, align 2, !tbaa !9
  %i.uq = zext <8 x i16> %wide.load243 to <8 x i32>
  %i.ur = zext <8 x i16> %wide.load244 to <8 x i32>
  %i.us = shl <8 x i32> %i.uq, %broadcast.splat240
  %i.ut = shl <8 x i32> %i.ur, %broadcast.splat240
  %i.uu = trunc <8 x i32> %i.us to <8 x i16>
  %i.uv = trunc <8 x i32> %i.ut to <8 x i16>
  store <8 x i16> %i.uu, ptr %i.uo, align 2, !tbaa !9
  store <8 x i16> %i.uv, ptr %i.up, align 2, !tbaa !9
  %index.next245 = add nuw i64 %index242, 16      ; 2 uses
  %i.uw = icmp eq i64 %index.next245, %n.vec238
  br i1 %i.uw, label %middle.block246, label %vector.body241, !llvm.loop !40

middle.block246:                                  ; preds = %vector.body241
  %cmp.n247 = icmp eq i64 %n.vec238, %wide.trip.count410.i
  br i1 %cmp.n247, label %.loopexit.i, label %vec.epilog.iter.check251

vec.epilog.iter.check251:                         ; preds = %middle.block246
  %min.epilog.iters.check252 = icmp eq i64 %i.un, 0
  br i1 %min.epilog.iters.check252, label %.lr.ph371.i.preheader, label %vec.epilog.ph253, !prof !25

vec.epilog.ph253:                                 ; preds = %vector.main.loop.iter.check235, %vec.epilog.iter.check251
  %vec.epilog.resume.val248 = phi i64 [ %n.vec238, %vec.epilog.iter.check251 ], [ 0, %vector.main.loop.iter.check235 ]
  %n.vec254 = and i64 %wide.trip.count410.i, 2147483644 ; 3 uses
  %broadcast.splatinsert255 = insertelement <4 x i32> poison, i32 %.0272423.i, i64 0
  %broadcast.splat256 = shufflevector <4 x i32> %broadcast.splatinsert255, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body257

vec.epilog.vector.body257:                        ; preds = %vec.epilog.vector.body257, %vec.epilog.ph253
  %index258 = phi i64 [ %vec.epilog.resume.val248, %vec.epilog.ph253 ], [ %index.next260, %vec.epilog.vector.body257 ] ; 2 uses
  %i.ux = getelementptr inbounds nuw [2 x i8], ptr %.0231.i, i64 %index258 ; 2 uses
  %wide.load259 = load <4 x i16>, ptr %i.ux, align 2, !tbaa !9
  %i.uy = zext <4 x i16> %wide.load259 to <4 x i32>
  %i.uz = shl <4 x i32> %i.uy, %broadcast.splat256
  %i.va = trunc <4 x i32> %i.uz to <4 x i16>
  store <4 x i16> %i.va, ptr %i.ux, align 2, !tbaa !9
  %index.next260 = add nuw i64 %index258, 4       ; 2 uses
  %i.vb = icmp eq i64 %index.next260, %n.vec254
  br i1 %i.vb, label %vec.epilog.middle.block261, label %vec.epilog.vector.body257, !llvm.loop !41

vec.epilog.middle.block261:                       ; preds = %vec.epilog.vector.body257
  %cmp.n262 = icmp eq i64 %n.vec254, %wide.trip.count410.i
  br i1 %cmp.n262, label %.loopexit.i, label %.lr.ph371.i.preheader

.lr.ph371.i.preheader:                            ; preds = %iter.check249, %vec.epilog.iter.check251, %vec.epilog.middle.block261
  %indvars.iv407.i.ph = phi i64 [ 0, %iter.check249 ], [ %n.vec238, %vec.epilog.iter.check251 ], [ %n.vec254, %vec.epilog.middle.block261 ]
  br label %.lr.ph371.i

.lr.ph371.i:                                      ; preds = %.lr.ph371.i.preheader, %.lr.ph371.i
  %indvars.iv407.i = phi i64 [ %indvars.iv.next408.i, %.lr.ph371.i ], [ %indvars.iv407.i.ph, %.lr.ph371.i.preheader ] ; 2 uses
  %i.vc = getelementptr inbounds nuw [2 x i8], ptr %.0231.i, i64 %indvars.iv407.i ; 2 uses
  %i.vd = load i16, ptr %i.vc, align 2, !tbaa !9
  %i.ve = zext i16 %i.vd to i32
  %i.vf = shl i32 %i.ve, %.0272423.i
  %i.vg = trunc i32 %i.vf to i16
  store i16 %i.vg, ptr %i.vc, align 2, !tbaa !9
  %indvars.iv.next408.i = add nuw nsw i64 %indvars.iv407.i, 1 ; 2 uses
  %exitcond411.not.i = icmp eq i64 %indvars.iv.next408.i, %wide.trip.count410.i
  br i1 %exitcond411.not.i, label %.loopexit.i, label %.lr.ph371.i, !llvm.loop !42

vec.epilog.scalar.ph219:                          ; preds = %vec.epilog.scalar.ph219.preheader, %vec.epilog.scalar.ph219
  %indvars.iv402.i = phi i64 [ %indvars.iv.next403.i, %vec.epilog.scalar.ph219 ], [ %indvars.iv402.i.ph, %vec.epilog.scalar.ph219.preheader ] ; 2 uses
  %i.vh = getelementptr inbounds nuw [2 x i8], ptr %.0231.i, i64 %indvars.iv402.i ; 2 uses
  %i.vi = load i16, ptr %i.vh, align 2, !tbaa !9
  %i.vj = sext i16 %i.vi to i32
  %i.vk = ashr i32 %i.vj, %i.tx
  %i.vl = trunc nsw i32 %i.vk to i16
  store i16 %i.vl, ptr %i.vh, align 2, !tbaa !9
end_hunk_0

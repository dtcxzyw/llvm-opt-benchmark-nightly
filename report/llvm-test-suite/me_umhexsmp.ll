inline.NumInlined: 63
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@smpUMHEXIntegerPelBlockMotionSearch:bb.a
  br i1 %.not751, label %.preheader779.1, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.jz = load ptr, ptr @mvbits, align 8, !tbaa !67 ; 2 uses
  %i.ka = shl i32 %i.fn, 2                        ; 2 uses
  %i.kb = sub nsw i32 %i.ka, %i.x
  %i.kc = sext i32 %i.kb to i64
  %i.kd = getelementptr inbounds [4 x i8], ptr %i.jz, i64 %i.kc
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !4
  %i.kf = shl i32 %.0613, 2                       ; 2 uses
  %i.kg = sub nsw i32 %i.kf, %i.aa
  %i.kh = sext i32 %i.kg to i64
  %i.ki = getelementptr inbounds [4 x i8], ptr %i.jz, i64 %i.kh
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !4
  %i.kk = add nsw i32 %i.kj, %i.ke
  %i.kl = mul nsw i32 %i.kk, %12
  %i.km = ashr i32 %i.kl, 16                      ; 2 uses
  %i.kn = load i32, ptr @dist_method, align 4, !tbaa !4
  %i.ko = zext nneg i32 %i.kn to i64
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr @computeUniPred, i64 %i.ko
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !10
  %i.kr = sub nsw i32 %.1606, %i.km
  %i.ks = add i32 %i.ka, 80
  %i.kt = add i32 %i.kf, 80
  %i.ku = tail call i32 %i.kq(ptr noundef %0, i32 noundef %i.t, i32 noundef %i.u, i32 noundef %i.kr, i32 noundef %i.ks, i32 noundef %i.kt) #11
  %i.kv = add nsw i32 %i.km, %i.ku                ; 2 uses
  %i.kw = icmp slt i32 %i.kv, %.1606
  br i1 %i.kw, label %bb.ai, label %.preheader779.1

bb.ai:                                            ; preds = %bb.ah
  br label %.preheader779.1

.preheader779.1:                                  ; preds = %.preheader779.preheader, %bb.ag, %bb.ai, %bb.ah
  %.5650 = phi i32 [ %i.fn, %bb.ai ], [ %.1646, %bb.ah ], [ %.1646, %bb.ag ], [ %.1646, %.preheader779.preheader ] ; 3 uses
  %.5618 = phi i32 [ %.0613, %bb.ai ], [ %.1614, %bb.ah ], [ %.1614, %bb.ag ], [ %.1614, %.preheader779.preheader ] ; 3 uses
  %.5610 = phi i32 [ %i.kv, %bb.ai ], [ %.1606, %bb.ah ], [ %.1606, %bb.ag ], [ %.1606, %.preheader779.preheader ] ; 5 uses
  %i.kx = add nsw i32 %.0645, 1                   ; 3 uses
  %i.ky = sub nsw i32 %i.kx, %i.ad
  %i.kz = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.ky, i1 true)
  %.not750.1 = icmp sgt i32 %i.kz, %10
  br i1 %.not750.1, label %.preheader779.2, label %bb.aj

bb.aj:                                            ; preds = %.preheader779.1
  %i.la = sub nsw i32 %.0613, %i.ag
  %i.lb = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.la, i1 true)
  %.not751.1 = icmp samesign ugt i32 %i.lb, %10
  br i1 %.not751.1, label %.preheader779.2, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.lc = load ptr, ptr @mvbits, align 8, !tbaa !67 ; 2 uses
  %i.ld = shl i32 %i.kx, 2                        ; 2 uses
  %i.le = sub nsw i32 %i.ld, %i.x
  %i.lf = sext i32 %i.le to i64
  %i.lg = getelementptr inbounds [4 x i8], ptr %i.lc, i64 %i.lf
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !4
  %i.li = shl i32 %.0613, 2                       ; 2 uses
  %i.lj = sub nsw i32 %i.li, %i.aa
  %i.lk = sext i32 %i.lj to i64
  %i.ll = getelementptr inbounds [4 x i8], ptr %i.lc, i64 %i.lk
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !4
  %i.ln = add nsw i32 %i.lm, %i.lh
  %i.lo = mul nsw i32 %i.ln, %12
  %i.lp = ashr i32 %i.lo, 16                      ; 2 uses
  %i.lq = load i32, ptr @dist_method, align 4, !tbaa !4
  %i.lr = zext nneg i32 %i.lq to i64
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr @computeUniPred, i64 %i.lr
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !10
  %i.lu = sub nsw i32 %.5610, %i.lp
  %i.lv = add i32 %i.ld, 80
  %i.lw = add i32 %i.li, 80
  %i.lx = tail call i32 %i.lt(ptr noundef %0, i32 noundef %i.t, i32 noundef %i.u, i32 noundef %i.lu, i32 noundef %i.lv, i32 noundef %i.lw) #11
  %i.ly = add nsw i32 %i.lp, %i.lx                ; 2 uses
  %i.lz = icmp slt i32 %i.ly, %.5610
  br i1 %i.lz, label %bb.al, label %.preheader779.2

bb.al:                                            ; preds = %bb.ak
  br label %.preheader779.2

.preheader779.2:                                  ; preds = %bb.al, %bb.ak, %bb.aj, %.preheader779.1
  %.5650.1 = phi i32 [ %i.kx, %bb.al ], [ %.5650, %bb.ak ], [ %.5650, %bb.aj ], [ %.5650, %.preheader779.1 ] ; 3 uses
  %.5618.1 = phi i32 [ %.0613, %bb.al ], [ %.5618, %bb.ak ], [ %.5618, %bb.aj ], [ %.5618, %.preheader779.1 ] ; 3 uses
  %.5610.1 = phi i32 [ %i.ly, %bb.al ], [ %.5610, %bb.ak ], [ %.5610, %bb.aj ], [ %.5610, %.preheader779.1 ] ; 5 uses
  %i.ma = add nsw i32 %.0613, -1                  ; 3 uses
  %i.mb = sub nsw i32 %.0645, %i.ad
  %i.mc = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.mb, i1 true)
  %.not750.2 = icmp sgt i32 %i.mc, %10
  br i1 %.not750.2, label %.preheader779.3, label %bb.am

bb.am:                                            ; preds = %.preheader779.2
  %i.md = sub nsw i32 %i.ma, %i.ag
  %i.me = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.md, i1 true)
  %.not751.2 = icmp samesign ugt i32 %i.me, %10
  br i1 %.not751.2, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.mf = load ptr, ptr @mvbits, align 8, !tbaa !67 ; 2 uses
  %i.mg = shl i32 %.0645, 2                       ; 2 uses
  %i.mh = sub nsw i32 %i.mg, %i.x
  %i.mi = sext i32 %i.mh to i64
  %i.mj = getelementptr inbounds [4 x i8], ptr %i.mf, i64 %i.mi
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !4
  %i.ml = shl i32 %i.ma, 2                        ; 2 uses
  %i.mm = sub nsw i32 %i.ml, %i.aa
  %i.mn = sext i32 %i.mm to i64
  %i.mo = getelementptr inbounds [4 x i8], ptr %i.mf, i64 %i.mn
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !4
  %i.mq = add nsw i32 %i.mp, %i.mk
  %i.mr = mul nsw i32 %i.mq, %12
  %i.ms = ashr i32 %i.mr, 16                      ; 2 uses
  %i.mt = load i32, ptr @dist_method, align 4, !tbaa !4
  %i.mu = zext nneg i32 %i.mt to i64
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr @computeUniPred, i64 %i.mu
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !10
  %i.mx = sub nsw i32 %.5610.1, %i.ms
  %i.my = add i32 %i.mg, 80
  %i.mz = add i32 %i.ml, 80
  %i.na = tail call i32 %i.mw(ptr noundef %0, i32 noundef %i.t, i32 noundef %i.u, i32 noundef %i.mx, i32 noundef %i.my, i32 noundef %i.mz) #11
  %i.nb = add nsw i32 %i.ms, %i.na                ; 2 uses
  %i.nc = icmp slt i32 %i.nb, %.5610.1
  br i1 %i.nc, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am
  %.5650.2.ph = phi i32 [ %.5650.1, %bb.am ], [ %.5650.1, %bb.an ], [ %.0645, %bb.ao ] ; 2 uses
  %.5618.2.ph = phi i32 [ %.5618.1, %bb.am ], [ %.5618.1, %bb.an ], [ %i.ma, %bb.ao ] ; 2 uses
  %.5610.2.ph = phi i32 [ %.5610.1, %bb.am ], [ %.5610.1, %bb.an ], [ %i.nb, %bb.ao ] ; 4 uses
  %i.nd = add nsw i32 %.0613, 1                   ; 3 uses
  %i.ne = sub nsw i32 %i.nd, %i.ag
  %i.nf = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.ne, i1 true)
  %.not751.3 = icmp samesign ugt i32 %i.nf, %10
  br i1 %.not751.3, label %.preheader779.3, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ng = load ptr, ptr @mvbits, align 8, !tbaa !67 ; 2 uses
  %i.nh = shl i32 %.0645, 2                       ; 2 uses
  %i.ni = sub nsw i32 %i.nh, %i.x
  %i.nj = sext i32 %i.ni to i64
  %i.nk = getelementptr inbounds [4 x i8], ptr %i.ng, i64 %i.nj
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !4
  %i.nm = shl i32 %i.nd, 2                        ; 2 uses
  %i.nn = sub nsw i32 %i.nm, %i.aa
  %i.no = sext i32 %i.nn to i64
  %i.np = getelementptr inbounds [4 x i8], ptr %i.ng, i64 %i.no
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !4
  %i.nr = add nsw i32 %i.nq, %i.nl
  %i.ns = mul nsw i32 %i.nr, %12
  %i.nt = ashr i32 %i.ns, 16                      ; 2 uses
  %i.nu = load i32, ptr @dist_method, align 4, !tbaa !4
  %i.nv = zext nneg i32 %i.nu to i64
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr @computeUniPred, i64 %i.nv
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !10
  %i.ny = sub nsw i32 %.5610.2.ph, %i.nt
  %i.nz = add i32 %i.nh, 80
  %i.oa = add i32 %i.nm, 80
  %i.ob = tail call i32 %i.nx(ptr noundef %0, i32 noundef %i.t, i32 noundef %i.u, i32 noundef %i.ny, i32 noundef %i.nz, i32 noundef %i.oa) #11
  %i.oc = add nsw i32 %i.nt, %i.ob                ; 2 uses
  %i.od = icmp slt i32 %i.oc, %.5610.2.ph
  br i1 %i.od, label %bb.ar, label %.preheader779.3

bb.ar:                                            ; preds = %bb.aq
  br label %.preheader779.3

.preheader779.3:                                  ; preds = %.preheader779.2, %bb.ar, %bb.aq, %bb.ap
  %.5650.3 = phi i32 [ %.0645, %bb.ar ], [ %.5650.2.ph, %bb.aq ], [ %.5650.2.ph, %bb.ap ], [ %.5650.1, %.preheader779.2 ] ; 9 uses
  %.5618.3 = phi i32 [ %i.nd, %bb.ar ], [ %.5618.2.ph, %bb.aq ], [ %.5618.2.ph, %bb.ap ], [ %.5618.1, %.preheader779.2 ] ; 9 uses
  %.5610.3 = phi i32 [ %i.oc, %bb.ar ], [ %.5610.2.ph, %bb.aq ], [ %.5610.2.ph, %bb.ap ], [ %.5610.1, %.preheader779.2 ] ; 5 uses
  %i.oe = icmp eq i32 %5, 1
  br i1 %i.oe, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.preheader779.3
  %i.of = load i16, ptr @SymmetricalCrossSearchThreshold1, align 2, !tbaa !8
  %i.og = zext i16 %i.of to i32
  %i.oh = lshr i32 %i.og, %i.fk
  %i.oi = icmp sgt i32 %.5610.3, %i.oh
  br i1 %i.oi, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as, %.preheader779.3
  %i.oj = load i16, ptr @SymmetricalCrossSearchThreshold2, align 2, !tbaa !8
  %i.ok = zext i16 %i.oj to i32
  %i.ol = lshr i32 %i.ok, %i.fk
  %i.om = icmp sgt i32 %.5610.3, %i.ol
  br i1 %i.om, label %bb.au, label %.loopexit777

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.on = sdiv i32 %10, 2
  %.not722784 = icmp slt i32 %10, 2
  br i1 %.not722784, label %.preheader778, label %.lr.ph

.lr.ph:                                           ; preds = %bb.au
  %i.oo = sub nsw i32 %.5618.3, %i.ag
  %i.op = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.oo, i1 true)
  %.not743 = icmp samesign ugt i32 %i.op, %10     ; 2 uses
  %i.oq = shl i32 %.5618.3, 2                     ; 2 uses
  %i.or = sub nsw i32 %i.oq, %i.aa
  %i.os = sext i32 %i.or to i64                   ; 2 uses
  %i.ot = add i32 %i.oq, 80                       ; 2 uses
  %i.ou = sub nsw i32 %.5650.3, %i.ad
  %i.ov = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.ou, i1 true)
  %.not746 = icmp samesign ugt i32 %i.ov, %10
  %i.ow = shl i32 %.5650.3, 2                     ; 2 uses
  %i.ox = sub nsw i32 %i.ow, %i.x
  %i.oy = sext i32 %i.ox to i64                   ; 2 uses
  %i.oz = add i32 %i.ow, 80                       ; 2 uses
  br label %bb.av

.preheader778:                                    ; preds = %bb.bi, %bb.au
  %.6651.lcssa = phi i32 [ %.5650.3, %bb.au ], [ %.10655, %bb.bi ] ; 7 uses
  %.6619.lcssa = phi i32 [ %.5618.3, %bb.au ], [ %.10623, %bb.bi ] ; 9 uses
  %.6611.lcssa = phi i32 [ %.5610.3, %bb.au ], [ %.10, %bb.bi ] ; 5 uses
  %i.pa = add nsw i32 %.6651.lcssa, -2            ; 3 uses
  %i.pb = sub nsw i32 %i.pa, %i.ad
  %i.pc = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.pb, i1 true)
  %.not740 = icmp sgt i32 %i.pc, %10
  br i1 %.not740, label %bb.bl, label %bb.bj

bb.av:                                            ; preds = %.lr.ph, %bb.bi
  %i.pd = phi i32 [ 1, %.lr.ph ], [ %i.sv, %bb.bi ]
  %.0601788 = phi i16 [ 1, %.lr.ph ], [ %i.su, %bb.bi ]
  %.6611787 = phi i32 [ %.5610.3, %.lr.ph ], [ %.10, %bb.bi ] ; 4 uses
  %.6619786 = phi i32 [ %.5618.3, %.lr.ph ], [ %.10623, %bb.bi ] ; 2 uses
  %.6651785 = phi i32 [ %.5650.3, %.lr.ph ], [ %.10655, %bb.bi ] ; 2 uses
  %i.pe = shl nuw nsw i32 %i.pd, 1
  %i.pf = add nsw i32 %i.pe, -1                   ; 4 uses
  %i.pg = add nsw i32 %i.pf, %.5650.3             ; 3 uses
  %i.ph = sub nsw i32 %i.pg, %i.ad
  %i.pi = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.ph, i1 true)
  %.not742 = icmp sgt i32 %i.pi, %10
  %brmerge = select i1 %.not742, i1 true, i1 %.not743
  br i1 %brmerge, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.pj = load ptr, ptr @mvbits, align 8, !tbaa !67 ; 2 uses
  %i.pk = shl i32 %i.pg, 2                        ; 2 uses
  %i.pl = sub nsw i32 %i.pk, %i.x
  %i.pm = sext i32 %i.pl to i64
  %i.pn = getelementptr inbounds [4 x i8], ptr %i.pj, i64 %i.pm
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !4
  %i.pp = getelementptr inbounds [4 x i8], ptr %i.pj, i64 %i.os
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !4
  %i.pr = add nsw i32 %i.pq, %i.po
  %i.ps = mul nsw i32 %i.pr, %12
  %i.pt = ashr i32 %i.ps, 16                      ; 2 uses
  %i.pu = load i32, ptr @dist_method, align 4, !tbaa !4
  %i.pv = zext nneg i32 %i.pu to i64
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr @computeUniPred, i64 %i.pv
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !10
  %i.py = sub nsw i32 %.6611787, %i.pt
  %i.pz = add i32 %i.pk, 80
  %i.qa = tail call i32 %i.px(ptr noundef %0, i32 noundef %i.t, i32 noundef %i.u, i32 noundef %i.py, i32 noundef %i.pz, i32 noundef %i.ot) #11
  %i.qb = add nsw i32 %i.pt, %i.qa                ; 2 uses
  %i.qc = icmp slt i32 %i.qb, %.6611787
  br i1 %i.qc, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  br label %bb.ay

bb.ay:                                            ; preds = %bb.av, %bb.aw, %bb.ax
  %.7652 = phi i32 [ %i.pg, %bb.ax ], [ %.6651785, %bb.aw ], [ %.6651785, %bb.av ] ; 2 uses
  %.7620 = phi i32 [ %.5618.3, %bb.ax ], [ %.6619786, %bb.aw ], [ %.6619786, %bb.av ] ; 2 uses
  %.7612 = phi i32 [ %i.qb, %bb.ax ], [ %.6611787, %bb.aw ], [ %.6611787, %bb.av ] ; 4 uses
  %i.qd = sub nsw i32 %.5650.3, %i.pf             ; 3 uses
  %i.qe = sub nsw i32 %i.qd, %i.ad
  %i.qf = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.qe, i1 true)
  %.not744 = icmp sgt i32 %i.qf, %10
  %brmerge850 = select i1 %.not744, i1 true, i1 %.not743
  br i1 %brmerge850, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.qg = load ptr, ptr @mvbits, align 8, !tbaa !67 ; 2 uses
  %i.qh = shl i32 %i.qd, 2                        ; 2 uses
  %i.qi = sub nsw i32 %i.qh, %i.x
  %i.qj = sext i32 %i.qi to i64
  %i.qk = getelementptr inbounds [4 x i8], ptr %i.qg, i64 %i.qj
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !4
  %i.qm = getelementptr inbounds [4 x i8], ptr %i.qg, i64 %i.os
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !4
  %i.qo = add nsw i32 %i.qn, %i.ql
  %i.qp = mul nsw i32 %i.qo, %12
  %i.qq = ashr i32 %i.qp, 16                      ; 2 uses
  %i.qr = load i32, ptr @dist_method, align 4, !tbaa !4
  %i.qs = zext nneg i32 %i.qr to i64
  %i.qt = getelementptr inbounds nuw [8 x i8], ptr @computeUniPred, i64 %i.qs
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !10
  %i.qv = sub nsw i32 %.7612, %i.qq
  %i.qw = add i32 %i.qh, 80
  %i.qx = tail call i32 %i.qu(ptr noundef %0, i32 noundef %i.t, i32 noundef %i.u, i32 noundef %i.qv, i32 noundef %i.qw, i32 noundef %i.ot) #11
  %i.qy = add nsw i32 %i.qq, %i.qx                ; 2 uses
  %i.qz = icmp slt i32 %i.qy, %.7612
  br i1 %i.qz, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ay, %bb.az, %bb.ba
  %.8653 = phi i32 [ %i.qd, %bb.ba ], [ %.7652, %bb.az ], [ %.7652, %bb.ay ] ; 3 uses
  %.8621 = phi i32 [ %.5618.3, %bb.ba ], [ %.7620, %bb.az ], [ %.7620, %bb.ay ] ; 3 uses
  %.8 = phi i32 [ %i.qy, %bb.ba ], [ %.7612, %bb.az ], [ %.7612, %bb.ay ] ; 5 uses
  %i.ra = add nsw i32 %i.pf, %.5618.3             ; 3 uses
  br i1 %.not746, label %bb.bi, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.rb = sub nsw i32 %i.ra, %i.ag
  %i.rc = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.rb, i1 true)
  %.not747 = icmp samesign ugt i32 %i.rc, %10
  br i1 %.not747, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.rd = load ptr, ptr @mvbits, align 8, !tbaa !67 ; 2 uses
  %i.re = getelementptr inbounds [4 x i8], ptr %i.rd, i64 %i.oy
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !4
  %i.rg = shl i32 %i.ra, 2                        ; 2 uses
  %i.rh = sub nsw i32 %i.rg, %i.aa
  %i.ri = sext i32 %i.rh to i64
  %i.rj = getelementptr inbounds [4 x i8], ptr %i.rd, i64 %i.ri
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !4
  %i.rl = add nsw i32 %i.rk, %i.rf
  %i.rm = mul nsw i32 %i.rl, %12
  %i.rn = ashr i32 %i.rm, 16                      ; 2 uses
  %i.ro = load i32, ptr @dist_method, align 4, !tbaa !4
  %i.rp = zext nneg i32 %i.ro to i64
  %i.rq = getelementptr inbounds nuw [8 x i8], ptr @computeUniPred, i64 %i.rp
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !10
  %i.rs = sub nsw i32 %.8, %i.rn
  %i.rt = add i32 %i.rg, 80
  %i.ru = tail call i32 %i.rr(ptr noundef %0, i32 noundef %i.t, i32 noundef %i.u, i32 noundef %i.rs, i32 noundef %i.oz, i32 noundef %i.rt) #11
  %i.rv = add nsw i32 %i.rn, %i.ru                ; 2 uses
  %i.rw = icmp slt i32 %i.rv, %.8
  br i1 %i.rw, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bd, %bb.be, %bb.bc
  %.9654.ph = phi i32 [ %.8653, %bb.bc ], [ %.8653, %bb.bd ], [ %.5650.3, %bb.be ] ; 2 uses
  %.9622.ph = phi i32 [ %.8621, %bb.bc ], [ %.8621, %bb.bd ], [ %i.ra, %bb.be ] ; 2 uses
  %.9.ph = phi i32 [ %.8, %bb.bc ], [ %.8, %bb.bd ], [ %i.rv, %bb.be ] ; 4 uses
  %i.rx = sub nsw i32 %.5618.3, %i.pf             ; 3 uses
  %i.ry = sub nsw i32 %i.rx, %i.ag
  %i.rz = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.ry, i1 true)
  %.not749 = icmp samesign ugt i32 %i.rz, %10
  br i1 %.not749, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.sa = load ptr, ptr @mvbits, align 8, !tbaa !67 ; 2 uses
  %i.sb = getelementptr inbounds [4 x i8], ptr %i.sa, i64 %i.oy
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !4
  %i.sd = shl i32 %i.rx, 2                        ; 2 uses
  %i.se = sub nsw i32 %i.sd, %i.aa
  %i.sf = sext i32 %i.se to i64
  %i.sg = getelementptr inbounds [4 x i8], ptr %i.sa, i64 %i.sf
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !4
  %i.si = add nsw i32 %i.sh, %i.sc
  %i.sj = mul nsw i32 %i.si, %12
  %i.sk = ashr i32 %i.sj, 16                      ; 2 uses
  %i.sl = load i32, ptr @dist_method, align 4, !tbaa !4
  %i.sm = zext nneg i32 %i.sl to i64
  %i.sn = getelementptr inbounds nuw [8 x i8], ptr @computeUniPred, i64 %i.sm
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !10
  %i.sp = sub nsw i32 %.9.ph, %i.sk
  %i.sq = add i32 %i.sd, 80
  %i.sr = tail call i32 %i.so(ptr noundef %0, i32 noundef %i.t, i32 noundef %i.u, i32 noundef %i.sp, i32 noundef %i.oz, i32 noundef %i.sq) #11
  %i.ss = add nsw i32 %i.sk, %i.sr                ; 2 uses
  %i.st = icmp slt i32 %i.ss, %.9.ph
  br i1 %i.st, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bb, %bb.bf, %bb.bh, %bb.bg
  %.10655 = phi i32 [ %.5650.3, %bb.bh ], [ %.9654.ph, %bb.bg ], [ %.9654.ph, %bb.bf ], [ %.8653, %bb.bb ] ; 2 uses
  %.10623 = phi i32 [ %i.rx, %bb.bh ], [ %.9622.ph, %bb.bg ], [ %.9622.ph, %bb.bf ], [ %.8621, %bb.bb ] ; 2 uses
  %.10 = phi i32 [ %i.ss, %bb.bh ], [ %.9.ph, %bb.bg ], [ %.9.ph, %bb.bf ], [ %.8, %bb.bb ] ; 2 uses
  %i.su = add i16 %.0601788, 1                    ; 2 uses
  %i.sv = zext i16 %i.su to i32                   ; 2 uses
  %.not722 = icmp slt i32 %i.on, %i.sv
  br i1 %.not722, label %.preheader778, label %bb.av, !llvm.loop !72

bb.bj:                                            ; preds = %.preheader778
  %i.sw = sub nsw i32 %.6619.lcssa, %i.ag
  %i.sx = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.sw, i1 true)
  %.not741 = icmp samesign ugt i32 %i.sx, %10
  br i1 %.not741, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.sy = load ptr, ptr @mvbits, align 8, !tbaa !67 ; 2 uses
  %i.sz = shl i32 %i.pa, 2                        ; 2 uses
  %i.ta = sub nsw i32 %i.sz, %i.x
  %i.tb = sext i32 %i.ta to i64
  %i.tc = getelementptr inbounds [4 x i8], ptr %i.sy, i64 %i.tb
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !4
  %i.te = shl i32 %.6619.lcssa, 2                 ; 2 uses
  %i.tf = sub nsw i32 %i.te, %i.aa
  %i.tg = sext i32 %i.tf to i64
  %i.th = getelementptr inbounds [4 x i8], ptr %i.sy, i64 %i.tg
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !4
  %i.tj = add nsw i32 %i.ti, %i.td
  %i.tk = mul nsw i32 %i.tj, %12
  %i.tl = ashr i32 %i.tk, 16                      ; 2 uses
  %i.tm = load i32, ptr @dist_method, align 4, !tbaa !4
end_hunk_0
begin_hunk_1_@smpUMHEXBipredIntegerPelBlockMotionSearch:bb.a
  %i.od = load ptr, ptr @computeBiPred, align 8, !tbaa !10
  %i.oe = sub nsw i32 %.3.21331, %i.ob
  %i.of = add nsw i32 %i.nt, 80
  %i.og = tail call i32 %i.od(ptr noundef %0, i32 noundef %i.o, i32 noundef %i.p, i32 noundef %i.oe, i32 noundef %i.ih, i32 noundef %i.ii, i32 noundef %i.ij, i32 noundef %i.of) #11
  %i.oh = add nsw i32 %i.og, %i.ob                ; 2 uses
  %i.oi = icmp slt i32 %i.oh, %.3.21331
  br i1 %i.oi, label %bb.ap, label %.preheader.3.thread

bb.ap:                                            ; preds = %bb.ao
  br label %.preheader.3.thread

bb.aq:                                            ; preds = %.preheader1115.preheader
  %i.oj = load ptr, ptr @mvbits, align 8, !tbaa !67 ; 4 uses
  %i.ok = getelementptr inbounds [4 x i8], ptr %i.oj, i64 %i.hi
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !4
  %i.om = getelementptr inbounds [4 x i8], ptr %i.oj, i64 %i.ho
  %i.on = load i32, ptr %i.om, align 4, !tbaa !4
  %i.oo = add nsw i32 %i.on, %i.ol
  %i.op = mul nsw i32 %i.oo, %16
  %i.oq = ashr i32 %i.op, 16
  %i.or = shl nsw i32 %i.kf, 2                    ; 2 uses
  %i.os = sub nsw i32 %i.or, %i.v
  %i.ot = sext i32 %i.os to i64
  %i.ou = getelementptr inbounds [4 x i8], ptr %i.oj, i64 %i.ot
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !4
  %i.ow = getelementptr inbounds [4 x i8], ptr %i.oj, i64 %i.ib
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !4
  %i.oy = add nsw i32 %i.ox, %i.ov
  %i.oz = mul nsw i32 %i.oy, %16
  %i.pa = ashr i32 %i.oz, 16
  %i.pb = add nsw i32 %i.pa, %i.oq                ; 3 uses
  %i.pc = icmp slt i32 %i.pb, %.1
  br i1 %i.pc, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.pd = load ptr, ptr @computeBiPred, align 8, !tbaa !10
  %i.pe = sub nsw i32 %.1, %i.pb
  %i.pf = add nsw i32 %i.or, 80
  %i.pg = tail call i32 %i.pd(ptr noundef %0, i32 noundef %i.o, i32 noundef %i.p, i32 noundef %i.pe, i32 noundef %i.ih, i32 noundef %i.ii, i32 noundef %i.pf, i32 noundef %i.ik) #11
  %i.ph = add nsw i32 %i.pg, %i.pb                ; 2 uses
  %i.pi = icmp slt i32 %i.ph, %.1
  br i1 %i.pi, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as, %bb.aq
  %.5919.ph = phi i32 [ %.1915, %bb.aq ], [ %.1915, %bb.ar ], [ %i.kf, %bb.as ] ; 2 uses
  %.5887.ph = phi i32 [ %.1883, %bb.aq ], [ %.1883, %bb.ar ], [ %i.aj, %bb.as ] ; 2 uses
  %.5.ph = phi i32 [ %.1, %bb.aq ], [ %.1, %bb.ar ], [ %i.ph, %bb.as ] ; 5 uses
  %i.pj = add nsw i32 %i.ai, 1                    ; 2 uses
  %i.pk = load ptr, ptr @mvbits, align 8, !tbaa !67 ; 4 uses
  %i.pl = getelementptr inbounds [4 x i8], ptr %i.pk, i64 %i.hi
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !4
  %i.pn = getelementptr inbounds [4 x i8], ptr %i.pk, i64 %i.ho
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !4
  %i.pp = add nsw i32 %i.po, %i.pm
  %i.pq = mul nsw i32 %i.pp, %16
  %i.pr = ashr i32 %i.pq, 16
  %i.ps = shl nsw i32 %i.pj, 2                    ; 2 uses
  %i.pt = sub nsw i32 %i.ps, %i.v
  %i.pu = sext i32 %i.pt to i64
  %i.pv = getelementptr inbounds [4 x i8], ptr %i.pk, i64 %i.pu
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !4
  %i.px = getelementptr inbounds [4 x i8], ptr %i.pk, i64 %i.ib
  %i.py = load i32, ptr %i.px, align 4, !tbaa !4
  %i.pz = add nsw i32 %i.py, %i.pw
  %i.qa = mul nsw i32 %i.pz, %16
  %i.qb = ashr i32 %i.qa, 16
  %i.qc = add nsw i32 %i.qb, %i.pr                ; 3 uses
  %i.qd = icmp slt i32 %i.qc, %.5.ph
  br i1 %i.qd, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.qe = load ptr, ptr @computeBiPred, align 8, !tbaa !10
  %i.qf = sub nsw i32 %.5.ph, %i.qc
  %i.qg = add nsw i32 %i.ps, 80
  %i.qh = tail call i32 %i.qe(ptr noundef %0, i32 noundef %i.o, i32 noundef %i.p, i32 noundef %i.qf, i32 noundef %i.ih, i32 noundef %i.ii, i32 noundef %i.qg, i32 noundef %i.ik) #11
  %i.qi = add nsw i32 %i.qh, %i.qc                ; 2 uses
  %i.qj = icmp slt i32 %i.qi, %.5.ph
  br i1 %i.qj, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at
  %.5919.1.ph = phi i32 [ %.5919.ph, %bb.at ], [ %.5919.ph, %bb.au ], [ %i.pj, %bb.av ]
  %.5887.1.ph = phi i32 [ %.5887.ph, %bb.at ], [ %.5887.ph, %bb.au ], [ %i.aj, %bb.av ]
  %.5.1.ph = phi i32 [ %.5.ph, %bb.at ], [ %.5.ph, %bb.au ], [ %i.qi, %bb.av ] ; 4 uses
  %i.qk = add nsw i32 %i.aj, -1                   ; 2 uses
  %i.ql = load ptr, ptr @mvbits, align 8, !tbaa !67 ; 4 uses
  %i.qm = getelementptr inbounds [4 x i8], ptr %i.ql, i64 %i.hi
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !4
  %i.qo = getelementptr inbounds [4 x i8], ptr %i.ql, i64 %i.ho
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !4
  %i.qq = add nsw i32 %i.qp, %i.qn
  %i.qr = mul nsw i32 %i.qq, %16
  %i.qs = ashr i32 %i.qr, 16
  %i.qt = getelementptr inbounds [4 x i8], ptr %i.ql, i64 %i.hw
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !4
  %i.qv = shl nsw i32 %i.qk, 2                    ; 2 uses
  %i.qw = sub nsw i32 %i.qv, %i.x
  %i.qx = sext i32 %i.qw to i64
  %i.qy = getelementptr inbounds [4 x i8], ptr %i.ql, i64 %i.qx
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !4
  %i.ra = add nsw i32 %i.qz, %i.qu
  %i.rb = mul nsw i32 %i.ra, %16
  %i.rc = ashr i32 %i.rb, 16
  %i.rd = add nsw i32 %i.rc, %i.qs                ; 3 uses
  %i.re = icmp slt i32 %i.rd, %.5.1.ph
  br i1 %i.re, label %bb.ax, label %.preheader1115.3

bb.ax:                                            ; preds = %bb.aw
  %i.rf = load ptr, ptr @computeBiPred, align 8, !tbaa !10
  %i.rg = sub nsw i32 %.5.1.ph, %i.rd
  %i.rh = add nsw i32 %i.qv, 80
  %i.ri = tail call i32 %i.rf(ptr noundef %0, i32 noundef %i.o, i32 noundef %i.p, i32 noundef %i.rg, i32 noundef %i.ih, i32 noundef %i.ii, i32 noundef %i.ij, i32 noundef %i.rh) #11
  %i.rj = add nsw i32 %i.ri, %i.rd                ; 2 uses
  %i.rk = icmp slt i32 %i.rj, %.5.1.ph
  br i1 %i.rk, label %bb.ay, label %.preheader1115.3

.preheader1115.3:                                 ; preds = %bb.ax, %bb.aw
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.preheader1115.3
  %.5.21353 = phi i32 [ %.5.1.ph, %.preheader1115.3 ], [ %i.rj, %bb.ax ] ; 5 uses
  %.5887.21352 = phi i32 [ %.5887.1.ph, %.preheader1115.3 ], [ %i.qk, %bb.ax ] ; 2 uses
  %.5919.21351 = phi i32 [ %.5919.1.ph, %.preheader1115.3 ], [ %i.ai, %bb.ax ] ; 2 uses
  %i.rl = add nsw i32 %i.aj, 1                    ; 2 uses
  %i.rm = load ptr, ptr @mvbits, align 8, !tbaa !67 ; 4 uses
  %i.rn = getelementptr inbounds [4 x i8], ptr %i.rm, i64 %i.hi
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !4
  %i.rp = getelementptr inbounds [4 x i8], ptr %i.rm, i64 %i.ho
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !4
  %i.rr = add nsw i32 %i.rq, %i.ro
  %i.rs = mul nsw i32 %i.rr, %16
  %i.rt = ashr i32 %i.rs, 16
  %i.ru = getelementptr inbounds [4 x i8], ptr %i.rm, i64 %i.hw
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !4
  %i.rw = shl nsw i32 %i.rl, 2                    ; 2 uses
  %i.rx = sub nsw i32 %i.rw, %i.x
  %i.ry = sext i32 %i.rx to i64
  %i.rz = getelementptr inbounds [4 x i8], ptr %i.rm, i64 %i.ry
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !4
  %i.sb = add nsw i32 %i.sa, %i.rv
  %i.sc = mul nsw i32 %i.sb, %16
  %i.sd = ashr i32 %i.sc, 16
  %i.se = add nsw i32 %i.sd, %i.rt                ; 3 uses
  %i.sf = icmp slt i32 %i.se, %.5.21353
  br i1 %i.sf, label %bb.az, label %.preheader1115.3.thread

bb.az:                                            ; preds = %bb.ay
  %i.sg = load ptr, ptr @computeBiPred, align 8, !tbaa !10
  %i.sh = sub nsw i32 %.5.21353, %i.se
  %i.si = add nsw i32 %i.rw, 80
  %i.sj = tail call i32 %i.sg(ptr noundef %0, i32 noundef %i.o, i32 noundef %i.p, i32 noundef %i.sh, i32 noundef %i.ih, i32 noundef %i.ii, i32 noundef %i.ij, i32 noundef %i.si) #11
  %i.sk = add nsw i32 %i.sj, %i.se                ; 2 uses
  %i.sl = icmp slt i32 %i.sk, %.5.21353
  br i1 %i.sl, label %bb.ba, label %.preheader1115.3.thread

bb.ba:                                            ; preds = %bb.az
  br label %.preheader1115.3.thread

.preheader1115.3.thread:                          ; preds = %.preheader1115.preheader, %bb.ba, %bb.az, %bb.ay
  %.5919.3 = phi i32 [ %i.ai, %bb.ba ], [ %.5919.21351, %bb.az ], [ %.5919.21351, %bb.ay ], [ %.1915, %.preheader1115.preheader ] ; 8 uses
  %.5887.3 = phi i32 [ %i.rl, %bb.ba ], [ %.5887.21352, %bb.az ], [ %.5887.21352, %bb.ay ], [ %.1883, %.preheader1115.preheader ] ; 8 uses
  %.5.3 = phi i32 [ %i.sk, %bb.ba ], [ %.5.21353, %bb.az ], [ %.5.21353, %bb.ay ], [ %.1, %.preheader1115.preheader ] ; 4 uses
  %i.sm = icmp eq i32 %5, 1
  %i.sn = shl i32 %.5.3, 2                        ; 2 uses
  br i1 %i.sm, label %bb.bb, label %._crit_edge1223

bb.bb:                                            ; preds = %.preheader1115.3.thread
  %i.so = load i16, ptr @SymmetricalCrossSearchThreshold1, align 2, !tbaa !8
  %i.sp = zext i16 %i.so to i32
  %i.sq = lshr i32 %i.sp, %i.kc
  %i.sr = icmp sgt i32 %i.sn, %i.sq
  br i1 %i.sr, label %bb.bc, label %._crit_edge1223

._crit_edge1223:                                  ; preds = %.preheader1115.3.thread, %bb.bb
  %i.ss = load i16, ptr @SymmetricalCrossSearchThreshold2, align 2, !tbaa !8
  %i.st = zext i16 %i.ss to i32
  %i.su = lshr i32 %i.st, %i.kc
  %i.sv = icmp sgt i32 %i.sn, %i.su
  br i1 %i.sv, label %bb.bc, label %.loopexit1113

bb.bc:                                            ; preds = %._crit_edge1223, %bb.bb
  %.not10271120 = icmp slt i32 %14, 2
  br i1 %.not10271120, label %.preheader1114, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bc
  %i.sw = lshr i32 %14, 1
  %i.sx = sub nsw i32 %.5887.3, %i.aj
  %i.sy = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.sx, i1 true)
  %.not1048 = icmp samesign ugt i32 %i.sy, %14    ; 2 uses
  %i.sz = shl i32 %.5887.3, 2                     ; 2 uses
  %i.ta = sub nsw i32 %i.sz, %i.x
  %i.tb = sext i32 %i.ta to i64                   ; 2 uses
  %i.tc = add nsw i32 %i.sz, 80                   ; 2 uses
  %i.td = sub nsw i32 %.5919.3, %i.ai
  %i.te = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.td, i1 true)
  %.not1051 = icmp samesign ugt i32 %i.te, %14
  %i.tf = shl i32 %.5919.3, 2                     ; 2 uses
  %i.tg = sub nsw i32 %i.tf, %i.v
  %i.th = sext i32 %i.tg to i64                   ; 2 uses
  %i.ti = add nsw i32 %i.tf, 80                   ; 2 uses
  %i.tj = zext i32 %.5919.3 to i64                ; 2 uses
  %i.tk = zext i32 %.5887.3 to i64                ; 2 uses
  %i.tl = add nuw nsw i32 %i.sw, 1
  %wide.trip.count = zext nneg i32 %i.tl to i64
  br label %bb.bd

.preheader1114:                                   ; preds = %bb.bu, %bb.bc
  %.6920.lcssa = phi i32 [ %.5919.3, %bb.bc ], [ %.10924, %bb.bu ] ; 2 uses
  %.6888.lcssa = phi i32 [ %.5887.3, %bb.bc ], [ %.10892, %bb.bu ] ; 2 uses
  %.6.lcssa = phi i32 [ %.5.3, %bb.bc ], [ %.10, %bb.bu ]
  br label %bb.bv

bb.bd:                                            ; preds = %.lr.ph, %bb.bu
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.bu ] ; 2 uses
  %.61124 = phi i32 [ %.5.3, %.lr.ph ], [ %.10, %bb.bu ] ; 6 uses
  %.68881123 = phi i32 [ %.5887.3, %.lr.ph ], [ %.10892, %bb.bu ] ; 3 uses
  %.69201122 = phi i32 [ %.5919.3, %.lr.ph ], [ %.10924, %bb.bu ] ; 3 uses
  %i.tm = shl nuw nsw i64 %indvars.iv, 1
  %i.tn = add nsw i64 %i.tm, -1                   ; 4 uses
  %i.to = add i64 %i.tn, %i.tj                    ; 2 uses
  %i.tp = trunc i64 %i.to to i32
  %i.tq = sub i32 %i.tp, %i.ai
  %i.tr = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.tq, i1 true)
  %.not1047 = icmp sgt i32 %i.tr, %14
  %brmerge = select i1 %.not1047, i1 true, i1 %.not1048
  br i1 %brmerge, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ts = load ptr, ptr @mvbits, align 8, !tbaa !67 ; 4 uses
  %i.tt = getelementptr inbounds [4 x i8], ptr %i.ts, i64 %i.hi
  %i.tu = load i32, ptr %i.tt, align 4, !tbaa !4
  %i.tv = getelementptr inbounds [4 x i8], ptr %i.ts, i64 %i.ho
  %i.tw = load i32, ptr %i.tv, align 4, !tbaa !4
  %i.tx = add nsw i32 %i.tw, %i.tu
  %i.ty = mul nsw i32 %i.tx, %16
  %i.tz = ashr i32 %i.ty, 16
  %i.ua = trunc i64 %i.to to i32                  ; 2 uses
  %i.ub = shl i32 %i.ua, 2                        ; 2 uses
  %i.uc = sub nsw i32 %i.ub, %i.v
  %i.ud = sext i32 %i.uc to i64
  %i.ue = getelementptr inbounds [4 x i8], ptr %i.ts, i64 %i.ud
  %i.uf = load i32, ptr %i.ue, align 4, !tbaa !4
  %i.ug = getelementptr inbounds [4 x i8], ptr %i.ts, i64 %i.tb
  %i.uh = load i32, ptr %i.ug, align 4, !tbaa !4
  %i.ui = add nsw i32 %i.uh, %i.uf
  %i.uj = mul nsw i32 %i.ui, %16
  %i.uk = ashr i32 %i.uj, 16
  %i.ul = add nsw i32 %i.uk, %i.tz                ; 3 uses
  %i.um = icmp slt i32 %i.ul, %.61124
  br i1 %i.um, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %i.un = load ptr, ptr @computeBiPred, align 8, !tbaa !10
  %i.uo = sub nsw i32 %.61124, %i.ul
  %i.up = add nsw i32 %i.ub, 80
  %i.uq = tail call i32 %i.un(ptr noundef %0, i32 noundef %i.o, i32 noundef %i.p, i32 noundef %i.uo, i32 noundef %i.ih, i32 noundef %i.ii, i32 noundef %i.up, i32 noundef %i.tc) #11
  %i.ur = add nsw i32 %i.uq, %i.ul                ; 2 uses
  %i.us = icmp slt i32 %i.ur, %.61124
  br i1 %i.us, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bd, %bb.be, %bb.bg, %bb.bf
  %.7921 = phi i32 [ %i.ua, %bb.bg ], [ %.69201122, %bb.bf ], [ %.69201122, %bb.be ], [ %.69201122, %bb.bd ] ; 3 uses
  %.7889 = phi i32 [ %.5887.3, %bb.bg ], [ %.68881123, %bb.bf ], [ %.68881123, %bb.be ], [ %.68881123, %bb.bd ] ; 3 uses
  %.7 = phi i32 [ %i.ur, %bb.bg ], [ %.61124, %bb.bf ], [ %.61124, %bb.be ], [ %.61124, %bb.bd ] ; 6 uses
  %i.ut = sub i64 %i.tj, %i.tn                    ; 2 uses
  %i.uu = trunc i64 %i.ut to i32
  %i.uv = sub i32 %i.uu, %i.ai
  %i.uw = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.uv, i1 true)
  %.not1049 = icmp sgt i32 %i.uw, %14
  %brmerge1186 = select i1 %.not1049, i1 true, i1 %.not1048
  br i1 %brmerge1186, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ux = load ptr, ptr @mvbits, align 8, !tbaa !67 ; 4 uses
  %i.uy = getelementptr inbounds [4 x i8], ptr %i.ux, i64 %i.hi
  %i.uz = load i32, ptr %i.uy, align 4, !tbaa !4
  %i.va = getelementptr inbounds [4 x i8], ptr %i.ux, i64 %i.ho
  %i.vb = load i32, ptr %i.va, align 4, !tbaa !4
  %i.vc = add nsw i32 %i.vb, %i.uz
  %i.vd = mul nsw i32 %i.vc, %16
  %i.ve = ashr i32 %i.vd, 16
  %i.vf = trunc i64 %i.ut to i32                  ; 2 uses
  %i.vg = shl i32 %i.vf, 2                        ; 2 uses
  %i.vh = sub nsw i32 %i.vg, %i.v
  %i.vi = sext i32 %i.vh to i64
  %i.vj = getelementptr inbounds [4 x i8], ptr %i.ux, i64 %i.vi
  %i.vk = load i32, ptr %i.vj, align 4, !tbaa !4
  %i.vl = getelementptr inbounds [4 x i8], ptr %i.ux, i64 %i.tb
  %i.vm = load i32, ptr %i.vl, align 4, !tbaa !4
  %i.vn = add nsw i32 %i.vm, %i.vk
  %i.vo = mul nsw i32 %i.vn, %16
  %i.vp = ashr i32 %i.vo, 16
  %i.vq = add nsw i32 %i.vp, %i.ve                ; 3 uses
  %i.vr = icmp slt i32 %i.vq, %.7
  br i1 %i.vr, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %i.vs = load ptr, ptr @computeBiPred, align 8, !tbaa !10
  %i.vt = sub nsw i32 %.7, %i.vq
  %i.vu = add nsw i32 %i.vg, 80
  %i.vv = tail call i32 %i.vs(ptr noundef %0, i32 noundef %i.o, i32 noundef %i.p, i32 noundef %i.vt, i32 noundef %i.ih, i32 noundef %i.ii, i32 noundef %i.vu, i32 noundef %i.tc) #11
  %i.vw = add nsw i32 %i.vv, %i.vq                ; 2 uses
  %i.vx = icmp slt i32 %i.vw, %.7
  br i1 %i.vx, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bh, %bb.bi, %bb.bk, %bb.bj
  %.8922 = phi i32 [ %i.vf, %bb.bk ], [ %.7921, %bb.bj ], [ %.7921, %bb.bi ], [ %.7921, %bb.bh ] ; 4 uses
  %.8890 = phi i32 [ %.5887.3, %bb.bk ], [ %.7889, %bb.bj ], [ %.7889, %bb.bi ], [ %.7889, %bb.bh ] ; 4 uses
  %.8 = phi i32 [ %i.vw, %bb.bk ], [ %.7, %bb.bj ], [ %.7, %bb.bi ], [ %.7, %bb.bh ] ; 7 uses
  %i.vy = add i64 %i.tn, %i.tk                    ; 2 uses
  br i1 %.not1051, label %bb.bu, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.vz = trunc i64 %i.vy to i32
  %i.wa = sub i32 %i.vz, %i.aj
  %i.wb = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.wa, i1 true)
  %.not1052 = icmp samesign ugt i32 %i.wb, %14
  br i1 %.not1052, label %bb.bq, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.wc = load ptr, ptr @mvbits, align 8, !tbaa !67 ; 4 uses
  %i.wd = getelementptr inbounds [4 x i8], ptr %i.wc, i64 %i.hi
  %i.we = load i32, ptr %i.wd, align 4, !tbaa !4
  %i.wf = getelementptr inbounds [4 x i8], ptr %i.wc, i64 %i.ho
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !4
  %i.wh = add nsw i32 %i.wg, %i.we
  %i.wi = mul nsw i32 %i.wh, %16
  %i.wj = ashr i32 %i.wi, 16
  %i.wk = getelementptr inbounds [4 x i8], ptr %i.wc, i64 %i.th
  %i.wl = load i32, ptr %i.wk, align 4, !tbaa !4
  %i.wm = trunc i64 %i.vy to i32                  ; 2 uses
  %i.wn = shl i32 %i.wm, 2                        ; 2 uses
  %i.wo = sub nsw i32 %i.wn, %i.x
  %i.wp = sext i32 %i.wo to i64
  %i.wq = getelementptr inbounds [4 x i8], ptr %i.wc, i64 %i.wp
  %i.wr = load i32, ptr %i.wq, align 4, !tbaa !4
  %i.ws = add nsw i32 %i.wr, %i.wl
  %i.wt = mul nsw i32 %i.ws, %16
  %i.wu = ashr i32 %i.wt, 16
  %i.wv = add nsw i32 %i.wu, %i.wj                ; 3 uses
  %i.ww = icmp slt i32 %i.wv, %.8
  br i1 %i.ww, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %i.wx = load ptr, ptr @computeBiPred, align 8, !tbaa !10
  %i.wy = sub nsw i32 %.8, %i.wv
  %i.wz = add nsw i32 %i.wn, 80
  %i.xa = tail call i32 %i.wx(ptr noundef %0, i32 noundef %i.o, i32 noundef %i.p, i32 noundef %i.wy, i32 noundef %i.ih, i32 noundef %i.ii, i32 noundef %i.ti, i32 noundef %i.wz) #11
  %i.xb = add nsw i32 %i.xa, %i.wv                ; 2 uses
  %i.xc = icmp slt i32 %i.xb, %.8
  br i1 %i.xc, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bn, %bb.bp, %bb.bo, %bb.bm
  %.9923.ph = phi i32 [ %.8922, %bb.bm ], [ %.8922, %bb.bn ], [ %.8922, %bb.bo ], [ %.5919.3, %bb.bp ] ; 3 uses
  %.9891.ph = phi i32 [ %.8890, %bb.bm ], [ %.8890, %bb.bn ], [ %.8890, %bb.bo ], [ %i.wm, %bb.bp ] ; 3 uses
  %.9.ph = phi i32 [ %.8, %bb.bm ], [ %.8, %bb.bn ], [ %.8, %bb.bo ], [ %i.xb, %bb.bp ] ; 6 uses
  %i.xd = sub i64 %i.tk, %i.tn                    ; 2 uses
  %i.xe = trunc i64 %i.xd to i32
  %i.xf = sub i32 %i.xe, %i.aj
  %i.xg = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.xf, i1 true)
  %.not1054 = icmp samesign ugt i32 %i.xg, %14
  br i1 %.not1054, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.xh = load ptr, ptr @mvbits, align 8, !tbaa !67 ; 4 uses
  %i.xi = getelementptr inbounds [4 x i8], ptr %i.xh, i64 %i.hi
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !4
  %i.xk = getelementptr inbounds [4 x i8], ptr %i.xh, i64 %i.ho
  %i.xl = load i32, ptr %i.xk, align 4, !tbaa !4
  %i.xm = add nsw i32 %i.xl, %i.xj
  %i.xn = mul nsw i32 %i.xm, %16
  %i.xo = ashr i32 %i.xn, 16
  %i.xp = getelementptr inbounds [4 x i8], ptr %i.xh, i64 %i.th
  %i.xq = load i32, ptr %i.xp, align 4, !tbaa !4
  %i.xr = trunc i64 %i.xd to i32                  ; 2 uses
  %i.xs = shl i32 %i.xr, 2                        ; 2 uses
  %i.xt = sub nsw i32 %i.xs, %i.x
  %i.xu = sext i32 %i.xt to i64
  %i.xv = getelementptr inbounds [4 x i8], ptr %i.xh, i64 %i.xu
  %i.xw = load i32, ptr %i.xv, align 4, !tbaa !4
  %i.xx = add nsw i32 %i.xw, %i.xq
  %i.xy = mul nsw i32 %i.xx, %16
  %i.xz = ashr i32 %i.xy, 16
  %i.ya = add nsw i32 %i.xz, %i.xo                ; 3 uses
  %i.yb = icmp slt i32 %i.ya, %.9.ph
  br i1 %i.yb, label %bb.bs, label %bb.bu

end_hunk_1

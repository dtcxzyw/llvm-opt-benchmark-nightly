Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/sharpyuv?download=true
inline.NumInlined: 53
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@SharpYuvConvertWithOptions:bb.a
  %i.qo = getelementptr inbounds [2 x i8], ptr %i.pi, i64 %i.ew
  %i.qp = load i16, ptr %i.qo, align 2, !tbaa !14
  %i.qq = sext i16 %i.qp to i32
  %i.qr = getelementptr inbounds [2 x i8], ptr %i.ph, i64 %i.ew
  %i.qs = load i16, ptr %i.qr, align 2, !tbaa !14
  %i.qt = sext i16 %i.qs to i32
  %i.qu = load i16, ptr %i.kl, align 2, !tbaa !14
  %i.qv = zext i16 %i.qu to i32
  %i.qw = mul nsw i32 %i.qq, 3
  %i.qx = add nsw i32 %i.qw, 2                    ; 2 uses
  %i.qy = add nsw i32 %i.qx, %i.qt
  %i.qz = ashr i32 %i.qy, 2
  %i.ra = add nsw i32 %i.qz, %i.qv                ; 3 uses
  %i.rb = and i32 %i.ra, %notmask.i.i.i.i
  %.not.i.i66.us.2.i.i = icmp eq i32 %i.rb, 0
  %i.rc = icmp slt i32 %i.ra, 0
  %i.rd = select i1 %i.rc, i32 0, i32 %i.eq
  %i.re = select i1 %.not.i.i66.us.2.i.i, i32 %i.ra, i32 %i.rd
  %i.rf = trunc i32 %i.re to i16
  store i16 %i.rf, ptr %i.fl, align 2, !tbaa !14
  %i.rg = getelementptr inbounds [2 x i8], ptr %i.pj, i64 %i.ew
  %i.rh = load i16, ptr %i.rg, align 2, !tbaa !14
  %i.ri = sext i16 %i.rh to i32
  %i.rj = load i16, ptr %i.kk, align 2, !tbaa !14
  %i.rk = zext i16 %i.rj to i32
  %i.rl = add nsw i32 %i.qx, %i.ri
  %i.rm = ashr i32 %i.rl, 2
  %i.rn = add nsw i32 %i.rm, %i.rk                ; 3 uses
  %i.ro = and i32 %i.rn, %notmask.i.i.i.i
  %.not.i.i68.us.2.i.i = icmp eq i32 %i.ro, 0
  %i.rp = icmp slt i32 %i.rn, 0
  %i.rq = select i1 %i.rp, i32 0, i32 %i.eq
  %i.rr = select i1 %.not.i.i68.us.2.i.i, i32 %i.rn, i32 %i.rq
  %i.rs = trunc i32 %i.rr to i16
  store i16 %i.rs, ptr %i.fm, align 2, !tbaa !14
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %indvars.iv.i260.i = phi i64 [ %indvars.iv.next.i263.i, %bb.r ], [ 0, %bb.q ] ; 5 uses
  %i.rt = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %indvars.iv.i260.i
  %i.ru = load i16, ptr %i.rt, align 2, !tbaa !14
  %i.rv = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.ru, i32 noundef %i.cs, i32 noundef %i.c) #10
  %gep.i261.i = getelementptr [2 x i8], ptr %i.fb, i64 %indvars.iv.i260.i
  %i.rw = load i16, ptr %gep.i261.i, align 2, !tbaa !14
  %i.rx = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.rw, i32 noundef %i.cs, i32 noundef %i.c) #10
  %gep28.i262.i = getelementptr [2 x i8], ptr %invariant.gep27.i259.i, i64 %indvars.iv.i260.i
  %i.ry = load i16, ptr %gep28.i262.i, align 2, !tbaa !14
  %i.rz = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.ry, i32 noundef %i.cs, i32 noundef %i.c) #10
  %i.sa = zext i32 %i.rv to i64
  %i.sb = zext i32 %i.rx to i64
  %i.sc = zext i32 %i.rz to i64
  %i.sd = mul nuw nsw i64 %i.sa, 13933
  %i.se = mul nuw nsw i64 %i.sb, 46871
  %i.sf = mul nuw nsw i64 %i.sc, 4732
  %i.sg = add nuw nsw i64 %i.sd, 32768
  %i.sh = add nuw nsw i64 %i.sg, %i.se
  %i.si = add nuw nsw i64 %i.sh, %i.sf
  %i.sj = lshr i64 %i.si, 16
  %i.sk = trunc nuw i64 %i.sj to i32
  %i.sl = tail call zeroext i16 @SharpYuvLinearToGamma(i32 noundef %i.sk, i32 noundef %i.cs, i32 noundef %i.c) #10
  %i.sm = getelementptr inbounds nuw [2 x i8], ptr %i.df, i64 %indvars.iv.i260.i
  store i16 %i.sl, ptr %i.sm, align 2, !tbaa !14
  %indvars.iv.next.i263.i = add nuw nsw i64 %indvars.iv.i260.i, 1 ; 2 uses
  %exitcond.not.i264.i = icmp eq i64 %indvars.iv.next.i263.i, %wide.trip.count.i257.pre-phi.i
  br i1 %exitcond.not.i264.i, label %UpdateW.exit265.i, label %bb.r, !llvm.loop !23

UpdateW.exit265.i:                                ; preds = %bb.r, %UpdateW.exit265.i
  %indvars.iv.i270.i = phi i64 [ %indvars.iv.next.i273.i, %UpdateW.exit265.i ], [ 0, %bb.r ] ; 5 uses
  %i.sn = getelementptr inbounds nuw [2 x i8], ptr %i.em, i64 %indvars.iv.i270.i
  %i.so = load i16, ptr %i.sn, align 2, !tbaa !14
  %i.sp = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.so, i32 noundef %i.cs, i32 noundef %i.c) #10
  %gep.i271.i = getelementptr [2 x i8], ptr %i.fc, i64 %indvars.iv.i270.i
  %i.sq = load i16, ptr %gep.i271.i, align 2, !tbaa !14
  %i.sr = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.sq, i32 noundef %i.cs, i32 noundef %i.c) #10
  %gep28.i272.i = getelementptr [2 x i8], ptr %invariant.gep27.i269.i, i64 %indvars.iv.i270.i
  %i.ss = load i16, ptr %gep28.i272.i, align 2, !tbaa !14
  %i.st = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.ss, i32 noundef %i.cs, i32 noundef %i.c) #10
  %i.su = zext i32 %i.sp to i64
  %i.sv = zext i32 %i.sr to i64
  %i.sw = zext i32 %i.st to i64
  %i.sx = mul nuw nsw i64 %i.su, 13933
  %i.sy = mul nuw nsw i64 %i.sv, 46871
  %i.sz = mul nuw nsw i64 %i.sw, 4732
  %i.ta = add nuw nsw i64 %i.sx, 32768
  %i.tb = add nuw nsw i64 %i.ta, %i.sy
  %i.tc = add nuw nsw i64 %i.tb, %i.sz
  %i.td = lshr i64 %i.tc, 16
  %i.te = trunc nuw i64 %i.td to i32
  %i.tf = tail call zeroext i16 @SharpYuvLinearToGamma(i32 noundef %i.te, i32 noundef %i.cs, i32 noundef %i.c) #10
  %i.tg = getelementptr inbounds nuw [2 x i8], ptr %i.fn, i64 %indvars.iv.i270.i
  store i16 %i.tf, ptr %i.tg, align 2, !tbaa !14
  %indvars.iv.next.i273.i = add nuw nsw i64 %indvars.iv.i270.i, 1 ; 2 uses
  %exitcond.not.i274.i = icmp eq i64 %indvars.iv.next.i273.i, %wide.trip.count.i257.pre-phi.i
  br i1 %exitcond.not.i274.i, label %UpdateW.exit275.i, label %UpdateW.exit265.i, !llvm.loop !23

UpdateW.exit275.i:                                ; preds = %UpdateW.exit265.i
  tail call fastcc void @UpdateChroma(ptr noundef nonnull %i.cx, ptr noundef nonnull %i.em, ptr noundef %i.do, i32 noundef %i.cq, i32 noundef %5, i32 noundef %i.c)
  %i.th = load ptr, ptr @SharpYuvUpdateY, align 8, !tbaa !9
  %i.ti = tail call i64 %i.th(ptr noundef %.1215.i, ptr noundef nonnull %i.df, ptr noundef nonnull %.1217.i, i32 noundef %.pre-phi.i, i32 noundef %i.cs) #10, !inline_history !26
  %i.tj = add i64 %i.ti, %.0207.i                 ; 4 uses
  %i.tk = load ptr, ptr @SharpYuvUpdateRGB, align 8, !tbaa !9
  tail call void %i.tk(ptr noundef %.1.i, ptr noundef %i.do, ptr noundef %.1213.i, i32 noundef %i.dg) #10, !inline_history !26
  %i.tl = getelementptr inbounds nuw [2 x i8], ptr %.1217.i, i64 %.pre-phi307.i
  %i.tm = getelementptr inbounds nuw [2 x i8], ptr %.1213.i, i64 %i.dh
  %i.tn = getelementptr inbounds nuw [2 x i8], ptr %.1215.i, i64 %.pre-phi307.i
  %i.to = getelementptr inbounds nuw [2 x i8], ptr %.1.i, i64 %i.dh
  %i.tp = add nuw nsw i32 %.1220.i, 2             ; 2 uses
  %i.tq = icmp samesign ult i32 %i.tp, %i.cp
  br i1 %i.tq, label %bb.q, label %bb.s, !llvm.loop !27

bb.s:                                             ; preds = %UpdateW.exit275.i
  %.not.i111 = icmp eq i32 %.0218298.i, 0
  br i1 %.not.i111, label %.preheader.i.backedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.tr = icmp uge i64 %i.tj, %i.dt
  %i.ts = icmp ule i64 %i.tj, %.0221297.i
  %or.cond228.not303.i = and i1 %i.tr, %i.ts
  %i.tt = add nuw nsw i32 %.0218298.i, 1
  %i.tu = icmp ult i32 %.0218298.i, 3
  %or.cond300.i = select i1 %or.cond228.not303.i, i1 %i.tu, i1 false
  br i1 %or.cond300.i, label %.preheader.i.backedge, label %split.i

.preheader.i.backedge:                            ; preds = %bb.t, %bb.s
  %.0218298.i.be = phi i32 [ %i.tt, %bb.t ], [ 1, %bb.s ]
  br label %.preheader.i, !llvm.loop !28

split.i:                                          ; preds = %bb.t
  %i.tv = add nsw i32 %i.j, 16                    ; 9 uses
  %i.tw = add nsw i32 %i.j, 15
  %i.tx = shl nuw i32 1, %i.tw                    ; 7 uses
  %i.ty = icmp slt i32 %12, 9                     ; 2 uses
  %i.tz = sext i32 %7 to i64                      ; 2 uses
  %smax129.i.i = tail call i32 @llvm.smax.i32(i32 %13, i32 1)
  %smax132.i.i = tail call i32 @llvm.smax.i32(i32 %14, i32 1) ; 2 uses
  %wide.trip.count130.i.i = zext nneg i32 %smax129.i.i to i64 ; 4 uses
  br i1 %i.ty, label %.split.us.us.i.i.preheader, label %.split.preheader.i.i

.split.us.us.i.i.preheader:                       ; preds = %split.i
  %i.ua = extractelement <8 x i32> %i.bu, i64 0
  %i.ub = extractelement <8 x i32> %i.bu, i64 1
  br label %.split.us.us.i.i

.split.preheader.i.i:                             ; preds = %split.i
  %i.uc = add i32 %i.cb, %i.tx                    ; 2 uses
  %min.iters.check153 = icmp slt i32 %13, 2
  %n.vec155 = and i64 %wide.trip.count130.i.i, 2147483646 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.sroa.0.0, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splat157 = shufflevector <8 x i32> %i.bu, <8 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splat159 = shufflevector <8 x i32> %i.bu, <8 x i32> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splatinsert160 = insertelement <2 x i32> poison, i32 %i.uc, i64 0
  %broadcast.splat161 = shufflevector <2 x i32> %broadcast.splatinsert160, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert162 = insertelement <2 x i32> poison, i32 %i.tv, i64 0
  %broadcast.splat163 = shufflevector <2 x i32> %broadcast.splatinsert162, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert164 = insertelement <2 x i32> poison, i32 %i.g, i64 0
  %broadcast.splat165 = shufflevector <2 x i32> %broadcast.splatinsert164, <2 x i32> poison, <2 x i32> zeroinitializer
  %cmp.n177 = icmp eq i64 %n.vec155, %wide.trip.count130.i.i
  %i.ud = extractelement <8 x i32> %i.bu, i64 0
  %i.ue = extractelement <8 x i32> %i.bu, i64 1
  br label %.split.i.i

.split.us.us.i.i:                                 ; preds = %.split.us.us.i.i.preheader, %.split109.us.us.i.i
  %.096.us.i.i = phi ptr [ %i.vr, %.split109.us.us.i.i ], [ %6, %.split.us.us.i.i.preheader ] ; 2 uses
  %.094.us.i.i = phi ptr [ %i.vq, %.split109.us.us.i.i ], [ %i.dl, %.split.us.us.i.i.preheader ] ; 4 uses
  %.093.us.i.i = phi ptr [ %i.vl, %.split109.us.us.i.i ], [ %i.dc, %.split.us.us.i.i.preheader ] ; 2 uses
  %.0.us.i.i = phi i32 [ %i.vs, %.split109.us.us.i.i ], [ 0, %.split.us.us.i.i.preheader ] ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.split.us.us.i.i
  %indvars.iv126.i.i = phi i64 [ %indvars.iv.next127.i.i, %bb.u ], [ 0, %.split.us.us.i.i ] ; 4 uses
  %i.uf = trunc nuw nsw i64 %indvars.iv126.i.i to i32
  %i.ug = lshr i32 %i.uf, 1                       ; 3 uses
  %i.uh = getelementptr inbounds nuw [2 x i8], ptr %.093.us.i.i, i64 %indvars.iv126.i.i
  %i.ui = load i16, ptr %i.uh, align 2, !tbaa !14
  %i.uj = zext i16 %i.ui to i32                   ; 3 uses
  %i.uk = zext nneg i32 %i.ug to i64
  %i.ul = getelementptr inbounds nuw [2 x i8], ptr %.094.us.i.i, i64 %i.uk
  %i.um = load i16, ptr %i.ul, align 2, !tbaa !14
  %i.un = sext i16 %i.um to i32
  %i.uo = add nsw i32 %i.un, %i.uj
  %i.up = add nuw nsw i32 %i.ug, %i.cq
  %i.uq = zext nneg i32 %i.up to i64
  %i.ur = getelementptr inbounds nuw [2 x i8], ptr %.094.us.i.i, i64 %i.uq
  %i.us = load i16, ptr %i.ur, align 2, !tbaa !14
  %i.ut = sext i16 %i.us to i32
  %i.uu = add nsw i32 %i.ut, %i.uj
  %i.uv = add nuw nsw i32 %i.ug, %i.cn
  %i.uw = zext nneg i32 %i.uv to i64
  %i.ux = getelementptr inbounds nuw [2 x i8], ptr %.094.us.i.i, i64 %i.uw
  %i.uy = load i16, ptr %i.ux, align 2, !tbaa !14
  %i.uz = sext i16 %i.uy to i32
  %i.va = add nsw i32 %i.uz, %i.uj
  %i.vb = mul nsw i32 %.sroa.0.0, %i.uo
  %i.vc = mul nsw i32 %i.ua, %i.uu
  %i.vd = mul nsw i32 %i.ub, %i.va
  %i.ve = add i32 %i.vb, %i.tx
  %i.vf = add i32 %i.ve, %i.vc
  %i.vg = add i32 %i.vf, %i.vd
  %i.vh = add i32 %i.vg, %i.cb
  %i.vi = ashr i32 %i.vh, %i.tv
  %i.vj = trunc i32 %i.vi to i16
  %16 = tail call i16 @llvm.smax.i16(i16 %i.vj, i16 0)
  %17 = tail call i16 @llvm.umin.i16(i16 %16, i16 255)
  %18 = trunc nuw i16 %17 to i8
  %i.vk = getelementptr inbounds nuw i8, ptr %.096.us.i.i, i64 %indvars.iv126.i.i
  store i8 %18, ptr %i.vk, align 1, !tbaa !18
  %indvars.iv.next127.i.i = add nuw nsw i64 %indvars.iv126.i.i, 1 ; 2 uses
  %exitcond131.not.i.i = icmp eq i64 %indvars.iv.next127.i.i, %wide.trip.count130.i.i
  br i1 %exitcond131.not.i.i, label %.split109.us.us.i.i, label %bb.u, !llvm.loop !29

.split109.us.us.i.i:                              ; preds = %bb.u
  %i.vl = getelementptr inbounds nuw [2 x i8], ptr %.093.us.i.i, i64 %i.cy
  %i.vm = trunc i32 %.0.us.i.i to i1
  %i.vn = select i1 %i.vm, i32 3, i32 0
  %i.vo = mul nuw nsw i32 %i.vn, %i.cq
  %i.vp = zext nneg i32 %i.vo to i64
  %i.vq = getelementptr inbounds nuw [2 x i8], ptr %.094.us.i.i, i64 %i.vp
  %i.vr = getelementptr inbounds i8, ptr %.096.us.i.i, i64 %i.tz
  %i.vs = add nuw nsw i32 %.0.us.i.i, 1           ; 2 uses
  %exitcond133.not.i.i = icmp eq i32 %i.vs, %smax132.i.i
  br i1 %exitcond133.not.i.i, label %.preheader.i.i, label %.split.us.us.i.i, !llvm.loop !30

.split.i.i:                                       ; preds = %.split109.i.i, %.split.preheader.i.i
  %.096.i.i = phi ptr [ %i.ys, %.split109.i.i ], [ %6, %.split.preheader.i.i ] ; 3 uses
  %.094.i.i = phi ptr [ %i.yr, %.split109.i.i ], [ %i.dl, %.split.preheader.i.i ] ; 7 uses
  %.093.i.i = phi ptr [ %i.ym, %.split109.i.i ], [ %i.dc, %.split.preheader.i.i ] ; 3 uses
  %.0.i.i = phi i32 [ %i.yt, %.split109.i.i ], [ 0, %.split.preheader.i.i ] ; 2 uses
  br i1 %min.iters.check153, label %scalar.ph152.preheader, label %vector.body166

vector.body166:                                   ; preds = %.split.i.i, %vector.body166
  %index167 = phi i64 [ %index.next175, %vector.body166 ], [ 0, %.split.i.i ] ; 4 uses
  %i.vt = trunc nuw nsw i64 %index167 to i32
  %i.vu = lshr exact i32 %i.vt, 1                 ; 3 uses
  %i.vv = getelementptr inbounds nuw [2 x i8], ptr %.093.i.i, i64 %index167
  %wide.load168 = load <2 x i16>, ptr %i.vv, align 2, !tbaa !14
  %i.vw = zext <2 x i16> %wide.load168 to <2 x i32> ; 3 uses
  %i.vx = zext nneg i32 %i.vu to i64
  %i.vy = getelementptr inbounds nuw [2 x i8], ptr %.094.i.i, i64 %i.vx
  %i.vz = load i16, ptr %i.vy, align 2, !tbaa !14
  %broadcast.splatinsert169 = insertelement <2 x i16> poison, i16 %i.vz, i64 0
  %broadcast.splat170 = shufflevector <2 x i16> %broadcast.splatinsert169, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.wa = sext <2 x i16> %broadcast.splat170 to <2 x i32>
  %i.wb = add nsw <2 x i32> %i.wa, %i.vw
  %i.wc = add nuw nsw i32 %i.vu, %i.cq
  %i.wd = zext nneg i32 %i.wc to i64
  %i.we = getelementptr inbounds nuw [2 x i8], ptr %.094.i.i, i64 %i.wd
  %i.wf = load i16, ptr %i.we, align 2, !tbaa !14
  %broadcast.splatinsert171 = insertelement <2 x i16> poison, i16 %i.wf, i64 0
  %broadcast.splat172 = shufflevector <2 x i16> %broadcast.splatinsert171, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.wg = sext <2 x i16> %broadcast.splat172 to <2 x i32>
  %i.wh = add nsw <2 x i32> %i.wg, %i.vw
  %i.wi = add nuw nsw i32 %i.vu, %i.cn
  %i.wj = zext nneg i32 %i.wi to i64
  %i.wk = getelementptr inbounds nuw [2 x i8], ptr %.094.i.i, i64 %i.wj
  %i.wl = load i16, ptr %i.wk, align 2, !tbaa !14
  %broadcast.splatinsert173 = insertelement <2 x i16> poison, i16 %i.wl, i64 0
  %broadcast.splat174 = shufflevector <2 x i16> %broadcast.splatinsert173, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.wm = sext <2 x i16> %broadcast.splat174 to <2 x i32>
  %i.wn = add nsw <2 x i32> %i.wm, %i.vw
  %i.wo = mul nsw <2 x i32> %i.wb, %broadcast.splat
  %i.wp = mul nsw <2 x i32> %i.wh, %broadcast.splat157
  %i.wq = mul nsw <2 x i32> %i.wn, %broadcast.splat159
  %i.wr = add <2 x i32> %broadcast.splat161, %i.wo
  %i.ws = add <2 x i32> %i.wr, %i.wp
  %i.wt = add <2 x i32> %i.ws, %i.wq
  %i.wu = ashr <2 x i32> %i.wt, %broadcast.splat163 ; 2 uses
  %i.wv = and <2 x i32> %i.wu, splat (i32 32768)
  %i.ww = icmp eq <2 x i32> %i.wv, zeroinitializer
  %i.wx = and <2 x i32> %i.wu, splat (i32 65535)
  %i.wy = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %broadcast.splat165, <2 x i32> %i.wx)
  %i.wz = trunc nuw <2 x i32> %i.wy to <2 x i16>
  %i.xa = select <2 x i1> %i.ww, <2 x i16> %i.wz, <2 x i16> zeroinitializer
  %i.xb = getelementptr inbounds nuw [2 x i8], ptr %.096.i.i, i64 %index167
  store <2 x i16> %i.xa, ptr %i.xb, align 2, !tbaa !14
  %index.next175 = add nuw i64 %index167, 2       ; 2 uses
  %i.xc = icmp eq i64 %index.next175, %n.vec155
  br i1 %i.xc, label %middle.block176, label %vector.body166, !llvm.loop !31

middle.block176:                                  ; preds = %vector.body166
  br i1 %cmp.n177, label %.split109.i.i, label %scalar.ph152.preheader

scalar.ph152.preheader:                           ; preds = %.split.i.i, %middle.block176
  %indvars.iv.i277.i.ph = phi i64 [ 0, %.split.i.i ], [ %n.vec155, %middle.block176 ]
  br label %scalar.ph152

scalar.ph152:                                     ; preds = %scalar.ph152.preheader, %scalar.ph152
  %indvars.iv.i277.i = phi i64 [ %indvars.iv.next.i278.i, %scalar.ph152 ], [ %indvars.iv.i277.i.ph, %scalar.ph152.preheader ] ; 4 uses
  %i.xd = trunc nuw nsw i64 %indvars.iv.i277.i to i32
  %i.xe = lshr i32 %i.xd, 1                       ; 3 uses
  %i.xf = getelementptr inbounds nuw [2 x i8], ptr %.093.i.i, i64 %indvars.iv.i277.i
  %i.xg = load i16, ptr %i.xf, align 2, !tbaa !14
  %i.xh = zext i16 %i.xg to i32                   ; 3 uses
  %i.xi = zext nneg i32 %i.xe to i64
  %i.xj = getelementptr inbounds nuw [2 x i8], ptr %.094.i.i, i64 %i.xi
  %i.xk = load i16, ptr %i.xj, align 2, !tbaa !14
  %i.xl = sext i16 %i.xk to i32
  %i.xm = add nsw i32 %i.xl, %i.xh
  %i.xn = add nuw nsw i32 %i.xe, %i.cq
  %i.xo = zext nneg i32 %i.xn to i64
  %i.xp = getelementptr inbounds nuw [2 x i8], ptr %.094.i.i, i64 %i.xo
  %i.xq = load i16, ptr %i.xp, align 2, !tbaa !14
  %i.xr = sext i16 %i.xq to i32
  %i.xs = add nsw i32 %i.xr, %i.xh
  %i.xt = add nuw nsw i32 %i.xe, %i.cn
  %i.xu = zext nneg i32 %i.xt to i64
  %i.xv = getelementptr inbounds nuw [2 x i8], ptr %.094.i.i, i64 %i.xu
  %i.xw = load i16, ptr %i.xv, align 2, !tbaa !14
  %i.xx = sext i16 %i.xw to i32
  %i.xy = add nsw i32 %i.xx, %i.xh
  %i.xz = mul nsw i32 %i.xm, %.sroa.0.0
  %i.ya = mul nsw i32 %i.xs, %i.ud
  %i.yb = mul nsw i32 %i.xy, %i.ue
  %i.yc = add i32 %i.uc, %i.xz
  %i.yd = add i32 %i.yc, %i.ya
  %i.ye = add i32 %i.yd, %i.yb
  %i.yf = ashr i32 %i.ye, %i.tv                   ; 2 uses
  %i.yg = and i32 %i.yf, 32768
  %.not.i.i = icmp eq i32 %i.yg, 0
  %i.yh = and i32 %i.yf, 65535
  %i.yi = tail call i32 @llvm.smin.i32(i32 range(i32 -2147483648, 2147483647) %i.g, i32 %i.yh)
  %i.yj = trunc nuw i32 %i.yi to i16
  %i.yk = select i1 %.not.i.i, i16 %i.yj, i16 0
  %i.yl = getelementptr inbounds nuw [2 x i8], ptr %.096.i.i, i64 %indvars.iv.i277.i
  store i16 %i.yk, ptr %i.yl, align 2, !tbaa !14
  %indvars.iv.next.i278.i = add nuw nsw i64 %indvars.iv.i277.i, 1 ; 2 uses
  %exitcond.not.i279.i = icmp eq i64 %indvars.iv.next.i278.i, %wide.trip.count130.i.i
  br i1 %exitcond.not.i279.i, label %.split109.i.i, label %scalar.ph152, !llvm.loop !32

.split109.i.i:                                    ; preds = %scalar.ph152, %middle.block176
  %i.ym = getelementptr inbounds nuw [2 x i8], ptr %.093.i.i, i64 %i.cy
  %i.yn = trunc i32 %.0.i.i to i1
  %i.yo = select i1 %i.yn, i32 3, i32 0
  %i.yp = mul nuw nsw i32 %i.yo, %i.cq
  %i.yq = zext nneg i32 %i.yp to i64
  %i.yr = getelementptr inbounds nuw [2 x i8], ptr %.094.i.i, i64 %i.yq
  %i.ys = getelementptr inbounds i8, ptr %.096.i.i, i64 %i.tz
  %i.yt = add nuw nsw i32 %.0.i.i, 1              ; 2 uses
  %exitcond125.not.i.i = icmp eq i32 %i.yt, %smax132.i.i
  br i1 %exitcond125.not.i.i, label %.preheader.i.i, label %.split.i.i, !llvm.loop !30

.preheader.i.i:                                   ; preds = %.split109.i.i, %.split109.us.us.i.i
  %i.yu = sext i32 %9 to i64                      ; 4 uses
  %i.yv = sext i32 %11 to i64                     ; 4 uses
  %smax145.i.i = tail call i32 @llvm.smax.i32(i32 %i.cq, i32 1)
  %smax148.i.i = tail call i32 @llvm.smax.i32(i32 %i.cr, i32 1) ; 4 uses
  %wide.trip.count146.i.i = zext nneg i32 %smax145.i.i to i64 ; 9 uses
  br i1 %i.ty, label %.split115.us.us.i.i.preheader, label %.split115.preheader.i.i

.split115.us.us.i.i.preheader:                    ; preds = %.preheader.i.i
  %i.yw = zext nneg i32 %smax148.i.i to i64
  %i.yx = add nsw i64 %i.yw, -1                   ; 2 uses
  %i.yy = mul nsw i64 %i.yx, %i.yu
  %i.yz = getelementptr i8, ptr %8, i64 %i.yy
  %scevgep215 = getelementptr i8, ptr %i.yz, i64 %wide.trip.count146.i.i
  %i.za = mul nsw i64 %i.yx, %i.yv
  %i.zb = getelementptr i8, ptr %10, i64 %i.za
  %scevgep216 = getelementptr i8, ptr %i.zb, i64 %wide.trip.count146.i.i
  %min.iters.check223 = icmp ult i32 %13, 15
  %bound0217 = icmp ult ptr %8, %scevgep216
  %bound1218 = icmp ult ptr %10, %scevgep215
  %found.conflict219 = and i1 %bound0217, %bound1218
  %i.zc = or i32 %11, %9
  %i.zd = icmp slt i32 %i.zc, 0
  %i.ze = or i1 %found.conflict219, %i.zd
  %n.vec225 = and i64 %wide.trip.count146.i.i, 2147483640 ; 3 uses
  %broadcast.splat227 = shufflevector <8 x i32> %i.bu, <8 x i32> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat229 = shufflevector <8 x i32> %i.bu, <8 x i32> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat231 = shufflevector <8 x i32> %i.bu, <8 x i32> poison, <8 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %broadcast.splatinsert232 = insertelement <8 x i32> poison, i32 %i.tx, i64 0
  %broadcast.splat233 = shufflevector <8 x i32> %broadcast.splatinsert232, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert234 = insertelement <8 x i32> poison, i32 %i.cg, i64 0
  %broadcast.splat235 = shufflevector <8 x i32> %broadcast.splatinsert234, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert236 = insertelement <8 x i32> poison, i32 %i.tv, i64 0
  %broadcast.splat237 = shufflevector <8 x i32> %broadcast.splatinsert236, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat239 = shufflevector <8 x i32> %i.bu, <8 x i32> poison, <8 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %broadcast.splat241 = shufflevector <8 x i32> %i.bu, <8 x i32> poison, <8 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %broadcast.splat243 = shufflevector <8 x i32> %i.bu, <8 x i32> poison, <8 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  %broadcast.splatinsert244 = insertelement <8 x i32> poison, i32 %i.cl, i64 0
  %broadcast.splat245 = shufflevector <8 x i32> %broadcast.splatinsert244, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n253 = icmp eq i64 %n.vec225, %wide.trip.count146.i.i
  %i.zf = extractelement <8 x i32> %i.bu, i64 2
  %i.zg = extractelement <8 x i32> %i.bu, i64 3
  %i.zh = extractelement <8 x i32> %i.bu, i64 4
  %i.zi = extractelement <8 x i32> %i.bu, i64 5
  %i.zj = extractelement <8 x i32> %i.bu, i64 6
  %i.zk = extractelement <8 x i32> %i.bu, i64 7
  br label %.split115.us.us.i.i

.split115.preheader.i.i:                          ; preds = %.preheader.i.i
  %i.zl = add i32 %i.cg, %i.tx                    ; 2 uses
  %i.zm = add i32 %i.cl, %i.tx                    ; 2 uses
  %i.zn = zext nneg i32 %smax148.i.i to i64
  %i.zo = add nsw i64 %i.zn, -1                   ; 2 uses
  %i.zp = mul nsw i64 %i.zo, %i.yu
  %i.zq = shl nuw nsw i64 %wide.trip.count146.i.i, 1 ; 2 uses
  %i.zr = getelementptr i8, ptr %8, i64 %i.zp
  %scevgep = getelementptr i8, ptr %i.zr, i64 %i.zq
  %i.zs = mul nsw i64 %i.zo, %i.yv
  %i.zt = getelementptr i8, ptr %10, i64 %i.zs
  %scevgep179 = getelementptr i8, ptr %i.zt, i64 %i.zq
  %min.iters.check182 = icmp ult i32 %13, 15
  %bound0 = icmp ult ptr %8, %scevgep179
  %bound1 = icmp ult ptr %10, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.zu = or i32 %11, %9
  %i.zv = icmp slt i32 %i.zu, 0
  %i.zw = or i1 %found.conflict, %i.zv
  %n.vec184 = and i64 %wide.trip.count146.i.i, 2147483640 ; 3 uses
  %broadcast.splat186 = shufflevector <8 x i32> %i.bu, <8 x i32> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat188 = shufflevector <8 x i32> %i.bu, <8 x i32> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat190 = shufflevector <8 x i32> %i.bu, <8 x i32> poison, <8 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %broadcast.splatinsert191 = insertelement <8 x i32> poison, i32 %i.zl, i64 0
  %broadcast.splat192 = shufflevector <8 x i32> %broadcast.splatinsert191, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert193 = insertelement <8 x i32> poison, i32 %i.tv, i64 0
  %broadcast.splat194 = shufflevector <8 x i32> %broadcast.splatinsert193, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat196 = shufflevector <8 x i32> %i.bu, <8 x i32> poison, <8 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %broadcast.splat198 = shufflevector <8 x i32> %i.bu, <8 x i32> poison, <8 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %broadcast.splat200 = shufflevector <8 x i32> %i.bu, <8 x i32> poison, <8 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  %broadcast.splatinsert201 = insertelement <8 x i32> poison, i32 %i.zm, i64 0
  %broadcast.splat202 = shufflevector <8 x i32> %broadcast.splatinsert201, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert203 = insertelement <8 x i32> poison, i32 %i.g, i64 0
  %broadcast.splat204 = shufflevector <8 x i32> %broadcast.splatinsert203, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n212 = icmp eq i64 %n.vec184, %wide.trip.count146.i.i
  %i.zx = extractelement <8 x i32> %i.bu, i64 2
  %i.zy = extractelement <8 x i32> %i.bu, i64 3
  %i.zz = extractelement <8 x i32> %i.bu, i64 4
  %i.aaa = extractelement <8 x i32> %i.bu, i64 5
  %i.aab = extractelement <8 x i32> %i.bu, i64 6
  %i.aac = extractelement <8 x i32> %i.bu, i64 7
  br label %.split115.i.i

.split115.us.us.i.i:                              ; preds = %.split115.us.us.i.i.preheader, %.split117.us.us.i.i
  %.098.us.i.i = phi ptr [ %i.ach, %.split117.us.us.i.i ], [ %10, %.split115.us.us.i.i.preheader ] ; 3 uses
  %.097.us.i.i = phi ptr [ %i.acg, %.split117.us.us.i.i ], [ %8, %.split115.us.us.i.i.preheader ] ; 3 uses
  %.195.us.i.i = phi ptr [ %i.acf, %.split117.us.us.i.i ], [ %i.dl, %.split115.us.us.i.i.preheader ] ; 5 uses
  %.1.us.i.i = phi i32 [ %i.aci, %.split117.us.us.i.i ], [ 0, %.split115.us.us.i.i.preheader ]
  %invariant.gep169.i.i = getelementptr [2 x i8], ptr %.195.us.i.i, i64 %i.er ; 2 uses
  %invariant.gep171.i.i = getelementptr [2 x i8], ptr %.195.us.i.i, i64 %i.cy ; 2 uses
  %brmerge = select i1 %min.iters.check223, i1 true, i1 %i.ze
  br i1 %brmerge, label %scalar.ph222.preheader, label %vector.body246

vector.body246:                                   ; preds = %.split115.us.us.i.i, %vector.body246
  %index247 = phi i64 [ %index.next251, %vector.body246 ], [ 0, %.split115.us.us.i.i ] ; 6 uses
  %i.aad = getelementptr inbounds nuw [2 x i8], ptr %.195.us.i.i, i64 %index247
  %wide.load248 = load <8 x i16>, ptr %i.aad, align 2, !tbaa !14
  %i.aae = sext <8 x i16> %wide.load248 to <8 x i32> ; 2 uses
  %i.aaf = getelementptr [2 x i8], ptr %invariant.gep169.i.i, i64 %index247
  %wide.load249 = load <8 x i16>, ptr %i.aaf, align 2, !tbaa !14
  %i.aag = sext <8 x i16> %wide.load249 to <8 x i32> ; 2 uses
  %i.aah = getelementptr [2 x i8], ptr %invariant.gep171.i.i, i64 %index247
  %wide.load250 = load <8 x i16>, ptr %i.aah, align 2, !tbaa !14
  %i.aai = sext <8 x i16> %wide.load250 to <8 x i32> ; 2 uses
  %i.aaj = mul nsw <8 x i32> %broadcast.splat227, %i.aae
  %i.aak = mul nsw <8 x i32> %broadcast.splat229, %i.aag
  %i.aal = mul nsw <8 x i32> %broadcast.splat231, %i.aai
  %i.aam = add <8 x i32> %i.aaj, %broadcast.splat233
  %i.aan = add <8 x i32> %i.aam, %i.aak
  %i.aao = add <8 x i32> %i.aan, %i.aal
  %i.aap = add <8 x i32> %i.aao, %broadcast.splat235
  %i.aaq = ashr <8 x i32> %i.aap, %broadcast.splat237
  %i.aar = mul nsw <8 x i32> %broadcast.splat239, %i.aae
  %i.aas = mul nsw <8 x i32> %broadcast.splat241, %i.aag
  %i.aat = mul nsw <8 x i32> %broadcast.splat243, %i.aai
  %i.aau = add <8 x i32> %i.aar, %broadcast.splat233
  %i.aav = add <8 x i32> %i.aau, %i.aas
  %i.aaw = add <8 x i32> %i.aav, %i.aat
  %i.aax = add <8 x i32> %i.aaw, %broadcast.splat245
  %i.aay = ashr <8 x i32> %i.aax, %broadcast.splat237
  %i.aaz = trunc <8 x i32> %i.aaq to <8 x i16>
  %19 = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aaz, <8 x i16> zeroinitializer)
  %20 = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %19, <8 x i16> splat (i16 255))
  %21 = trunc nuw <8 x i16> %20 to <8 x i8>
  %i.aba = getelementptr inbounds nuw i8, ptr %.097.us.i.i, i64 %index247
  store <8 x i8> %21, ptr %i.aba, align 1, !tbaa !18, !alias.scope !45, !noalias !46
  %i.abb = trunc <8 x i32> %i.aay to <8 x i16>
  %22 = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.abb, <8 x i16> zeroinitializer)
  %23 = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %22, <8 x i16> splat (i16 255))
  %24 = trunc nuw <8 x i16> %23 to <8 x i8>
  %i.abc = getelementptr inbounds nuw i8, ptr %.098.us.i.i, i64 %index247
  store <8 x i8> %24, ptr %i.abc, align 1, !tbaa !18, !alias.scope !46
  %index.next251 = add nuw i64 %index247, 8       ; 2 uses
  %i.abd = icmp eq i64 %index.next251, %n.vec225
  br i1 %i.abd, label %middle.block252, label %vector.body246, !llvm.loop !36

middle.block252:                                  ; preds = %vector.body246
  br i1 %cmp.n253, label %.split117.us.us.i.i, label %scalar.ph222.preheader

scalar.ph222.preheader:                           ; preds = %.split115.us.us.i.i, %middle.block252
  %indvars.iv142.i.i.ph = phi i64 [ %n.vec225, %middle.block252 ], [ 0, %.split115.us.us.i.i ]
  br label %scalar.ph222

scalar.ph222:                                     ; preds = %scalar.ph222.preheader, %scalar.ph222
  %indvars.iv142.i.i = phi i64 [ %indvars.iv.next143.i.i, %scalar.ph222 ], [ %indvars.iv142.i.i.ph, %scalar.ph222.preheader ] ; 6 uses
  %i.abe = getelementptr inbounds nuw [2 x i8], ptr %.195.us.i.i, i64 %indvars.iv142.i.i
  %i.abf = load i16, ptr %i.abe, align 2, !tbaa !14
  %i.abg = sext i16 %i.abf to i32                 ; 2 uses
  %gep170.i.i = getelementptr [2 x i8], ptr %invariant.gep169.i.i, i64 %indvars.iv142.i.i
  %i.abh = load i16, ptr %gep170.i.i, align 2, !tbaa !14
  %i.abi = sext i16 %i.abh to i32                 ; 2 uses
  %gep172.i.i = getelementptr [2 x i8], ptr %invariant.gep171.i.i, i64 %indvars.iv142.i.i
  %i.abj = load i16, ptr %gep172.i.i, align 2, !tbaa !14
  %i.abk = sext i16 %i.abj to i32                 ; 2 uses
  %i.abl = mul nsw i32 %i.zf, %i.abg
  %i.abm = mul nsw i32 %i.zg, %i.abi
  %i.abn = mul nsw i32 %i.zh, %i.abk
  %i.abo = add i32 %i.abl, %i.tx
  %i.abp = add i32 %i.abo, %i.abm
  %i.abq = add i32 %i.abp, %i.abn
  %i.abr = add i32 %i.abq, %i.cg
  %i.abs = ashr i32 %i.abr, %i.tv
  %i.abt = mul nsw i32 %i.zi, %i.abg
  %i.abu = mul nsw i32 %i.zj, %i.abi
  %i.abv = mul nsw i32 %i.zk, %i.abk
  %i.abw = add i32 %i.abt, %i.tx
  %i.abx = add i32 %i.abw, %i.abu
  %i.aby = add i32 %i.abx, %i.abv
  %i.abz = add i32 %i.aby, %i.cl
  %i.aca = ashr i32 %i.abz, %i.tv
  %i.acb = trunc i32 %i.abs to i16
  %25 = tail call i16 @llvm.smax.i16(i16 %i.acb, i16 0)
  %26 = tail call i16 @llvm.umin.i16(i16 %25, i16 255)
  %27 = trunc nuw i16 %26 to i8
  %i.acc = getelementptr inbounds nuw i8, ptr %.097.us.i.i, i64 %indvars.iv142.i.i
  store i8 %27, ptr %i.acc, align 1, !tbaa !18
  %i.acd = trunc i32 %i.aca to i16
  %28 = tail call i16 @llvm.smax.i16(i16 %i.acd, i16 0)
  %29 = tail call i16 @llvm.umin.i16(i16 %28, i16 255)
  %30 = trunc nuw i16 %29 to i8
  %i.ace = getelementptr inbounds nuw i8, ptr %.098.us.i.i, i64 %indvars.iv142.i.i
  store i8 %30, ptr %i.ace, align 1, !tbaa !18
  %indvars.iv.next143.i.i = add nuw nsw i64 %indvars.iv142.i.i, 1 ; 2 uses
  %exitcond147.not.i.i = icmp eq i64 %indvars.iv.next143.i.i, %wide.trip.count146.i.i
  br i1 %exitcond147.not.i.i, label %.split117.us.us.i.i, label %scalar.ph222, !llvm.loop !37

.split117.us.us.i.i:                              ; preds = %scalar.ph222, %middle.block252
  %i.acf = getelementptr inbounds nuw [2 x i8], ptr %.195.us.i.i, i64 %i.dh
  %i.acg = getelementptr inbounds i8, ptr %.097.us.i.i, i64 %i.yu
  %i.ach = getelementptr inbounds i8, ptr %.098.us.i.i, i64 %i.yv
  %i.aci = add nuw nsw i32 %.1.us.i.i, 1          ; 2 uses
  %exitcond149.not.i.i = icmp eq i32 %i.aci, %smax148.i.i
  br i1 %exitcond149.not.i.i, label %DoSharpArgbToYuv.exit, label %.split115.us.us.i.i, !llvm.loop !38

.split115.i.i:                                    ; preds = %.split117.i.i, %.split115.preheader.i.i
  %.098.i.i = phi ptr [ %i.afb, %.split117.i.i ], [ %10, %.split115.preheader.i.i ] ; 3 uses
  %.097.i.i = phi ptr [ %i.afa, %.split117.i.i ], [ %8, %.split115.preheader.i.i ] ; 3 uses
  %.195.i.i = phi ptr [ %i.aez, %.split117.i.i ], [ %i.dl, %.split115.preheader.i.i ] ; 5 uses
  %.1.i.i = phi i32 [ %i.afc, %.split117.i.i ], [ 0, %.split115.preheader.i.i ]
  %invariant.gep.i280.i = getelementptr [2 x i8], ptr %.195.i.i, i64 %i.er ; 2 uses
  %invariant.gep167.i.i = getelementptr [2 x i8], ptr %.195.i.i, i64 %i.cy ; 2 uses
  %brmerge263 = select i1 %min.iters.check182, i1 true, i1 %i.zw
  br i1 %brmerge263, label %scalar.ph181.preheader, label %vector.body205

vector.body205:                                   ; preds = %.split115.i.i, %vector.body205
  %index206 = phi i64 [ %index.next210, %vector.body205 ], [ 0, %.split115.i.i ] ; 6 uses
  %i.acj = getelementptr inbounds nuw [2 x i8], ptr %.195.i.i, i64 %index206
  %wide.load207 = load <8 x i16>, ptr %i.acj, align 2, !tbaa !14
  %i.ack = sext <8 x i16> %wide.load207 to <8 x i32> ; 2 uses
  %i.acl = getelementptr [2 x i8], ptr %invariant.gep.i280.i, i64 %index206
  %wide.load208 = load <8 x i16>, ptr %i.acl, align 2, !tbaa !14
  %i.acm = sext <8 x i16> %wide.load208 to <8 x i32> ; 2 uses
  %i.acn = getelementptr [2 x i8], ptr %invariant.gep167.i.i, i64 %index206
  %wide.load209 = load <8 x i16>, ptr %i.acn, align 2, !tbaa !14
  %i.aco = sext <8 x i16> %wide.load209 to <8 x i32> ; 2 uses
  %i.acp = mul nsw <8 x i32> %broadcast.splat186, %i.ack
  %i.acq = mul nsw <8 x i32> %broadcast.splat188, %i.acm
  %i.acr = mul nsw <8 x i32> %broadcast.splat190, %i.aco
  %i.acs = add <8 x i32> %broadcast.splat192, %i.acp
  %i.act = add <8 x i32> %i.acs, %i.acq
  %i.acu = add <8 x i32> %i.act, %i.acr
  %i.acv = ashr <8 x i32> %i.acu, %broadcast.splat194 ; 2 uses
  %i.acw = mul nsw <8 x i32> %broadcast.splat196, %i.ack
  %i.acx = mul nsw <8 x i32> %broadcast.splat198, %i.acm
  %i.acy = mul nsw <8 x i32> %broadcast.splat200, %i.aco
  %i.acz = add <8 x i32> %broadcast.splat202, %i.acw
  %i.ada = add <8 x i32> %i.acz, %i.acx
  %i.adb = add <8 x i32> %i.ada, %i.acy
  %i.adc = ashr <8 x i32> %i.adb, %broadcast.splat194 ; 2 uses
  %i.add = and <8 x i32> %i.acv, splat (i32 32768)
  %i.ade = icmp eq <8 x i32> %i.add, zeroinitializer
  %i.adf = and <8 x i32> %i.acv, splat (i32 65535)
  %i.adg = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %broadcast.splat204, <8 x i32> %i.adf)
  %i.adh = trunc nuw <8 x i32> %i.adg to <8 x i16>
  %i.adi = select <8 x i1> %i.ade, <8 x i16> %i.adh, <8 x i16> zeroinitializer
  %i.adj = getelementptr inbounds nuw [2 x i8], ptr %.097.i.i, i64 %index206
  store <8 x i16> %i.adi, ptr %i.adj, align 2, !tbaa !14, !alias.scope !47, !noalias !48
  %i.adk = and <8 x i32> %i.adc, splat (i32 32768)
  %i.adl = icmp eq <8 x i32> %i.adk, zeroinitializer
  %i.adm = and <8 x i32> %i.adc, splat (i32 65535)
  %i.adn = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %broadcast.splat204, <8 x i32> %i.adm)
  %i.ado = trunc nuw <8 x i32> %i.adn to <8 x i16>
  %i.adp = select <8 x i1> %i.adl, <8 x i16> %i.ado, <8 x i16> zeroinitializer
  %i.adq = getelementptr inbounds nuw [2 x i8], ptr %.098.i.i, i64 %index206
  store <8 x i16> %i.adp, ptr %i.adq, align 2, !tbaa !14, !alias.scope !48
  %index.next210 = add nuw i64 %index206, 8       ; 2 uses
  %i.adr = icmp eq i64 %index.next210, %n.vec184
  br i1 %i.adr, label %middle.block211, label %vector.body205, !llvm.loop !42

middle.block211:                                  ; preds = %vector.body205
  br i1 %cmp.n212, label %.split117.i.i, label %scalar.ph181.preheader

scalar.ph181.preheader:                           ; preds = %.split115.i.i, %middle.block211
  %indvars.iv134.i.i.ph = phi i64 [ %n.vec184, %middle.block211 ], [ 0, %.split115.i.i ]
  br label %scalar.ph181

scalar.ph181:                                     ; preds = %scalar.ph181.preheader, %scalar.ph181
  %indvars.iv134.i.i = phi i64 [ %indvars.iv.next135.i.i, %scalar.ph181 ], [ %indvars.iv134.i.i.ph, %scalar.ph181.preheader ] ; 6 uses
  %i.ads = getelementptr inbounds nuw [2 x i8], ptr %.195.i.i, i64 %indvars.iv134.i.i
  %i.adt = load i16, ptr %i.ads, align 2, !tbaa !14
  %i.adu = sext i16 %i.adt to i32                 ; 2 uses
  %gep.i281.i = getelementptr [2 x i8], ptr %invariant.gep.i280.i, i64 %indvars.iv134.i.i
  %i.adv = load i16, ptr %gep.i281.i, align 2, !tbaa !14
  %i.adw = sext i16 %i.adv to i32                 ; 2 uses
  %gep168.i.i = getelementptr [2 x i8], ptr %invariant.gep167.i.i, i64 %indvars.iv134.i.i
  %i.adx = load i16, ptr %gep168.i.i, align 2, !tbaa !14
  %i.ady = sext i16 %i.adx to i32                 ; 2 uses
  %i.adz = mul nsw i32 %i.zx, %i.adu
  %i.aea = mul nsw i32 %i.zy, %i.adw
  %i.aeb = mul nsw i32 %i.zz, %i.ady
  %i.aec = add i32 %i.zl, %i.adz
  %i.aed = add i32 %i.aec, %i.aea
  %i.aee = add i32 %i.aed, %i.aeb
  %i.aef = ashr i32 %i.aee, %i.tv                 ; 2 uses
  %i.aeg = mul nsw i32 %i.aaa, %i.adu
  %i.aeh = mul nsw i32 %i.aab, %i.adw
  %i.aei = mul nsw i32 %i.aac, %i.ady
  %i.aej = add i32 %i.zm, %i.aeg
  %i.aek = add i32 %i.aej, %i.aeh
  %i.ael = add i32 %i.aek, %i.aei
  %i.aem = ashr i32 %i.ael, %i.tv                 ; 2 uses
  %i.aen = and i32 %i.aef, 32768
  %.not104.i.i = icmp eq i32 %i.aen, 0
  %i.aeo = and i32 %i.aef, 65535
  %i.aep = tail call i32 @llvm.smin.i32(i32 range(i32 -2147483648, 2147483647) %i.g, i32 %i.aeo)
  %i.aeq = trunc nuw i32 %i.aep to i16
  %i.aer = select i1 %.not104.i.i, i16 %i.aeq, i16 0
  %i.aes = getelementptr inbounds nuw [2 x i8], ptr %.097.i.i, i64 %indvars.iv134.i.i
  store i16 %i.aer, ptr %i.aes, align 2, !tbaa !14
  %i.aet = and i32 %i.aem, 32768
  %.not105.i.i = icmp eq i32 %i.aet, 0
  %i.aeu = and i32 %i.aem, 65535
  %i.aev = tail call i32 @llvm.smin.i32(i32 range(i32 -2147483648, 2147483647) %i.g, i32 %i.aeu)
  %i.aew = trunc nuw i32 %i.aev to i16
  %i.aex = select i1 %.not105.i.i, i16 %i.aew, i16 0
  %i.aey = getelementptr inbounds nuw [2 x i8], ptr %.098.i.i, i64 %indvars.iv134.i.i
  store i16 %i.aex, ptr %i.aey, align 2, !tbaa !14
  %indvars.iv.next135.i.i = add nuw nsw i64 %indvars.iv134.i.i, 1 ; 2 uses
  %exitcond139.not.i.i = icmp eq i64 %indvars.iv.next135.i.i, %wide.trip.count146.i.i
  br i1 %exitcond139.not.i.i, label %.split117.i.i, label %scalar.ph181, !llvm.loop !43

.split117.i.i:                                    ; preds = %scalar.ph181, %middle.block211
  %i.aez = getelementptr inbounds nuw [2 x i8], ptr %.195.i.i, i64 %i.dh
  %i.afa = getelementptr inbounds i8, ptr %.097.i.i, i64 %i.yu
  %i.afb = getelementptr inbounds i8, ptr %.098.i.i, i64 %i.yv
  %i.afc = add nuw nsw i32 %.1.i.i, 1             ; 2 uses
  %exitcond141.not.i.i = icmp eq i32 %i.afc, %smax148.i.i
  br i1 %exitcond141.not.i.i, label %DoSharpArgbToYuv.exit, label %.split115.i.i, !llvm.loop !38

DoSharpArgbToYuv.exit:                            ; preds = %.split117.i.i, %.split117.us.us.i.i, %.loopexit
  %.0210.i = phi i32 [ 0, %.loopexit ], [ 1, %.split117.us.us.i.i ], [ 1, %.split117.i.i ]
  tail call void @free(ptr noundef %i.dc) #10
  tail call void @free(ptr noundef %i.dl) #10
  tail call void @free(ptr noundef %i.dd) #10
  tail call void @free(ptr noundef %i.dm) #10
  tail call void @free(ptr noundef %i.df) #10
  tail call void @free(ptr noundef %i.do) #10
  tail call void @free(ptr noundef %i.cx) #10
  br label %bb.v

bb.v:                                             ; preds = %bb.g, %bb.e, %bb.c, %bb.b, %bb.a, %DoSharpArgbToYuv.exit
  %.0102 = phi i32 [ %.0210.i, %DoSharpArgbToYuv.exit ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.g ]
  ret i32 %.0102
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 0, 2) i32 @SharpYuvOptionsInitInternal(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ne ptr %1, null
  %i.b = icmp ne ptr %0, null
  %or.cond.not22 = and i1 %i.b, %i.a
  %i.c = and i32 %2, -65536
  %or.cond7.not = icmp eq i32 %i.c, 262144
  %or.cond20 = and i1 %or.cond.not22, %or.cond7.not
  br i1 %or.cond20, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %1, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 13, ptr %i.d, align 8, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @ImportOneRow(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef captures(none) %6) unnamed_addr #6 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 6 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 6 uses
  %i.c = ptrtoaddr ptr %0 to i64                  ; 6 uses
  %i.d = ptrtoaddr ptr %6 to i64                  ; 14 uses
  %i.e = add i32 %5, 1                            ; 2 uses
  %i.f = and i32 %i.e, -2                         ; 4 uses
  %i.g = icmp eq i32 %4, 8
  %i.h = icmp slt i32 %4, 13
  %i.i = sub nsw i32 14, %4
  %i.j = select i1 %i.h, i32 2, i32 %i.i          ; 6 uses
  %i.k = sub nsw i32 0, %i.j                      ; 4 uses
  %i.l = shl i32 %i.f, 1                          ; 2 uses
  br i1 %i.g, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.a
  %i.m = sext i32 %3 to i64
  %i.n = sext i32 %i.f to i64                     ; 2 uses
  %i.o = sext i32 %i.l to i64                     ; 2 uses
  %smax82 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %wide.trip.count83 = zext nneg i32 %smax82 to i64 ; 9 uses
  %invariant.gep93 = getelementptr [2 x i8], ptr %6, i64 %i.n ; 7 uses
  %invariant.gep95 = getelementptr [2 x i8], ptr %6, i64 %i.o ; 7 uses
  %min.iters.check216 = icmp sgt i32 %5, 55
  %ident.check164.not = icmp eq i32 %3, 1
  %or.cond = and i1 %min.iters.check216, %ident.check164.not
  br i1 %or.cond, label %vector.memcheck217, label %.split.us.preheader276
end_hunk_0
begin_hunk_1_@ImportOneRow:bb.a
  store i16 %i.ed, ptr %i.ee, align 2, !tbaa !14
  %i.ef = getelementptr inbounds [2 x i8], ptr %1, i64 %i.dy
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !14
  %i.eh = zext i16 %i.eg to i32
  %i.ei = lshr i32 %i.eh, %i.k
  %i.ej = trunc nuw i32 %i.ei to i16
  %gep90 = getelementptr [2 x i8], ptr %invariant.gep89, i64 %indvars.iv73
  store i16 %i.ej, ptr %gep90, align 2, !tbaa !14
  %i.ek = getelementptr inbounds [2 x i8], ptr %2, i64 %i.dy
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !14
  %i.em = zext i16 %i.el to i32
  %i.en = lshr i32 %i.em, %i.k
  %i.eo = trunc nuw i32 %i.en to i16
  %gep92 = getelementptr [2 x i8], ptr %invariant.gep91, i64 %indvars.iv73
  store i16 %i.eo, ptr %gep92, align 2, !tbaa !14
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %exitcond78.not = icmp eq i64 %indvars.iv.next74, %wide.trip.count77
  br i1 %exitcond78.not, label %.split67.us, label %.split.split.us, !llvm.loop !60

.split.split:                                     ; preds = %.split.split.preheader279, %.split.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.split.split ], [ %indvars.iv.ph, %.split.split.preheader279 ] ; 5 uses
  %i.ep = mul nsw i64 %indvars.iv, %i.bf          ; 3 uses
  %i.eq = getelementptr inbounds [2 x i8], ptr %0, i64 %i.ep
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !14
  %i.es = zext i16 %i.er to i32
  %i.et = shl i32 %i.es, %i.j
  %i.eu = trunc i32 %i.et to i16
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %indvars.iv
  store i16 %i.eu, ptr %i.ev, align 2, !tbaa !14
  %i.ew = getelementptr inbounds [2 x i8], ptr %1, i64 %i.ep
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !14
  %i.ey = zext i16 %i.ex to i32
  %i.ez = shl i32 %i.ey, %i.j
  %i.fa = trunc i32 %i.ez to i16
  %gep = getelementptr [2 x i8], ptr %invariant.gep89, i64 %indvars.iv
  store i16 %i.fa, ptr %gep, align 2, !tbaa !14
  %i.fb = getelementptr inbounds [2 x i8], ptr %2, i64 %i.ep
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !14
  %i.fd = zext i16 %i.fc to i32
  %i.fe = shl i32 %i.fd, %i.j
  %i.ff = trunc i32 %i.fe to i16
  %gep88 = getelementptr [2 x i8], ptr %invariant.gep91, i64 %indvars.iv
  store i16 %i.ff, ptr %gep88, align 2, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count77
  br i1 %exitcond.not, label %.split67.us, label %.split.split, !llvm.loop !61

.split67.us:                                      ; preds = %.split.split, %.split.split.us, %.split.us, %middle.block, %middle.block160, %middle.block270
  %i.fg = and i32 %5, 1
  %.not = icmp eq i32 %i.fg, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.split67.us
  %i.fh = sext i32 %5 to i64
  %i.fi = getelementptr [2 x i8], ptr %6, i64 %i.fh ; 2 uses
  %i.fj = getelementptr i8, ptr %i.fi, i64 -2
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !14
  store i16 %i.fk, ptr %i.fi, align 2, !tbaa !14
  %i.fl = add nsw i32 %i.f, %5
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr [2 x i8], ptr %6, i64 %i.fm ; 2 uses
  %i.fo = getelementptr i8, ptr %i.fn, i64 -2
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !14
  store i16 %i.fp, ptr %i.fn, align 2, !tbaa !14
  %i.fq = shl nsw i32 %i.e, 1
  %i.fr = add nsw i32 %i.fq, %5
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr [2 x i8], ptr %6, i64 %i.fs ; 2 uses
  %i.fu = getelementptr i8, ptr %i.ft, i64 -2
  %i.fv = load i16, ptr %i.fu, align 2, !tbaa !14
  store i16 %i.fv, ptr %i.ft, align 2, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.split67.us
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @UpdateChroma(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef range(i32 -1073741824, 1073741824) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #1 {
bb.a:
  %i.a = icmp slt i32 %4, 13
  %i.b = sub nsw i32 14, %4
  %i.c = select i1 %i.a, i32 2, i32 %i.b
  %i.d = add nsw i32 %i.c, %4                     ; 15 uses
  %i.e = shl nsw i32 %3, 1                        ; 2 uses
  %i.f = sext i32 %i.e to i64                     ; 3 uses
  %i.g = or disjoint i32 %i.e, 1
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = shl nsw i32 %3, 2                        ; 2 uses
  %i.j = sext i32 %i.i to i64                     ; 2 uses
  %i.k = or disjoint i32 %i.i, 1
  %i.l = sext i32 %i.k to i64                     ; 2 uses
  %i.m = sext i32 %3 to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %3, i32 1)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.051 = phi i32 [ 0, %bb.a ], [ %i.cg, %bb.b ]
  %.050 = phi ptr [ %2, %bb.a ], [ %i.cd, %bb.b ] ; 4 uses
  %.049 = phi ptr [ %1, %bb.a ], [ %i.cf, %bb.b ] ; 7 uses
  %.0 = phi ptr [ %0, %bb.a ], [ %i.ce, %bb.b ]   ; 7 uses
  %i.n = load i16, ptr %.0, align 2, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.p = load i16, ptr %i.o, align 2, !tbaa !14
  %i.q = load i16, ptr %.049, align 2, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %.049, i64 2
  %i.s = load i16, ptr %i.r, align 2, !tbaa !14
  %i.t = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.n, i32 noundef %i.d, i32 noundef %5) #10
  %i.u = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.p, i32 noundef %i.d, i32 noundef %5) #10
  %i.v = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.q, i32 noundef %i.d, i32 noundef %5) #10
  %i.w = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.s, i32 noundef %i.d, i32 noundef %5) #10
  %i.x = add i32 %i.t, 2
  %i.y = add i32 %i.x, %i.u
  %i.z = add i32 %i.y, %i.v
  %i.aa = add i32 %i.z, %i.w
  %i.ab = lshr i32 %i.aa, 2
  %i.ac = tail call zeroext i16 @SharpYuvLinearToGamma(i32 noundef %i.ab, i32 noundef %i.d, i32 noundef %5) #10 ; 2 uses
  %i.ad = getelementptr inbounds [2 x i8], ptr %.0, i64 %i.f
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !14
  %i.af = getelementptr inbounds [2 x i8], ptr %.0, i64 %i.h
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !14
  %i.ah = getelementptr inbounds [2 x i8], ptr %.049, i64 %i.f
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !14
  %i.aj = getelementptr inbounds [2 x i8], ptr %.049, i64 %i.h
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !14
  %i.al = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.ae, i32 noundef %i.d, i32 noundef %5) #10
  %i.am = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.ag, i32 noundef %i.d, i32 noundef %5) #10
  %i.an = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.ai, i32 noundef %i.d, i32 noundef %5) #10
  %i.ao = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.ak, i32 noundef %i.d, i32 noundef %5) #10
  %i.ap = add i32 %i.al, 2
  %i.aq = add i32 %i.ap, %i.am
  %i.ar = add i32 %i.aq, %i.an
  %i.as = add i32 %i.ar, %i.ao
  %i.at = lshr i32 %i.as, 2
  %i.au = tail call zeroext i16 @SharpYuvLinearToGamma(i32 noundef %i.at, i32 noundef %i.d, i32 noundef %5) #10 ; 2 uses
  %i.av = getelementptr inbounds [2 x i8], ptr %.0, i64 %i.j
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !14
  %i.ax = getelementptr inbounds [2 x i8], ptr %.0, i64 %i.l
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !14
  %i.az = getelementptr inbounds [2 x i8], ptr %.049, i64 %i.j
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !14
  %i.bb = getelementptr inbounds [2 x i8], ptr %.049, i64 %i.l
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !14
  %i.bd = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.aw, i32 noundef %i.d, i32 noundef %5) #10
  %i.be = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.ay, i32 noundef %i.d, i32 noundef %5) #10
  %i.bf = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.ba, i32 noundef %i.d, i32 noundef %5) #10
  %i.bg = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.bc, i32 noundef %i.d, i32 noundef %5) #10
  %i.bh = add i32 %i.bd, 2
  %i.bi = add i32 %i.bh, %i.be
  %i.bj = add i32 %i.bi, %i.bf
  %i.bk = add i32 %i.bj, %i.bg
  %i.bl = lshr i32 %i.bk, 2
  %i.bm = tail call zeroext i16 @SharpYuvLinearToGamma(i32 noundef %i.bl, i32 noundef %i.d, i32 noundef %5) #10 ; 2 uses
  %i.bn = zext i16 %i.ac to i32
  %i.bo = zext i16 %i.au to i32
  %i.bp = zext i16 %i.bm to i32
  %i.bq = mul nuw nsw i32 %i.bn, 13933
  %i.br = mul nuw i32 %i.bo, 46871
  %i.bs = mul nuw nsw i32 %i.bp, 4732
  %i.bt = add nuw nsw i32 %i.bq, 32768
  %i.bu = add nuw i32 %i.bt, %i.br
  %i.bv = add nuw i32 %i.bu, %i.bs
  %i.bw = lshr i32 %i.bv, 16
  %i.bx = trunc nuw i32 %i.bw to i16              ; 3 uses
  %i.by = sub i16 %i.ac, %i.bx
  store i16 %i.by, ptr %.050, align 2, !tbaa !14
  %i.bz = sub i16 %i.au, %i.bx
  %i.ca = getelementptr inbounds [2 x i8], ptr %.050, i64 %i.m
  store i16 %i.bz, ptr %i.ca, align 2, !tbaa !14
  %i.cb = sub i16 %i.bm, %i.bx
  %i.cc = getelementptr inbounds [2 x i8], ptr %.050, i64 %i.f
  store i16 %i.cb, ptr %i.cc, align 2, !tbaa !14
  %i.cd = getelementptr inbounds nuw i8, ptr %.050, i64 2
  %i.ce = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.cf = getelementptr inbounds nuw i8, ptr %.049, i64 4
  %i.cg = add nuw nsw i32 %.051, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.cg, %smax
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !71

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

declare i32 @SharpYuvGammaToLinear(i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i16 @SharpYuvLinearToGamma(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smax.v8i16(<8 x i16>, <8 x i16>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.umin.v8i16(<8 x i16>, <8 x i16>) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"SharpYuvOptions", !8, i64 0, !5, i64 8}
!11 = !{!10, !8, i64 0}
!12 = !{!10, !5, i64 8}
!13 = !{!"short", !4, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = !{!4, !4, i64 0}
!19 = distinct !{!19, !15, !16, !17}
!20 = distinct !{!20, !15, !17, !16}
!21 = distinct !{!21, !15, !16, !17}
!22 = distinct !{!22, !15, !17, !16}
!23 = distinct !{!23, !15}
!24 = distinct !{!24, !15}
!25 = distinct !{null, null}
!26 = distinct !{null}
!27 = distinct !{!27, !15}
!28 = distinct !{!28, !15}
!29 = distinct !{!29, !15}
!30 = distinct !{!30, !15}
!31 = distinct !{!31, !15, !16, !17}
!32 = distinct !{!32, !15, !17, !16}
!33 = distinct !{!33, !"LVerDomain"}
!34 = distinct !{!34, !33}
!35 = distinct !{!35, !33}
!36 = distinct !{!36, !15, !16, !17}
!37 = distinct !{!37, !15, !16}
!38 = distinct !{!38, !15}
!39 = distinct !{!39, !"LVerDomain"}
!40 = distinct !{!40, !39}
!41 = distinct !{!41, !39}
!42 = distinct !{!42, !15, !16, !17}
!43 = distinct !{!43, !15, !16}
!44 = !{!5, !5, i64 0}
!45 = !{!34}
!46 = !{!35}
!47 = !{!40}
!48 = !{!41}
!49 = distinct !{!49, !"LVerDomain"}
!50 = distinct !{!50, !49}
!51 = distinct !{!51, !49}
!52 = distinct !{!52, !49}
!53 = distinct !{!53, !49}
!54 = distinct !{!54, !49}
!55 = distinct !{!55, !49}
!56 = distinct !{!56, !15, !16, !17}
!57 = distinct !{!57, !15, !16}
!58 = distinct !{!58, !15, !16, !17}
!59 = distinct !{!59, !15, !16, !17}
!60 = distinct !{!60, !15, !16}
!61 = distinct !{!61, !15, !16}
!62 = !{!50}
!63 = !{!51}
!64 = !{!55, !54, !50, !53, !52}
!65 = !{!53}
!66 = !{!55}
!67 = !{!54, !50, !53, !52}
!68 = !{!52}
!69 = !{!54}
!70 = !{!50, !53, !52}
!71 = distinct !{!71, !15}
end_hunk_1

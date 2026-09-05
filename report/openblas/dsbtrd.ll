Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dsbtrd?download=true
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@dsbtrd_:bb.a
  br i1 %lcmp.mod1086.not, label %vec.epilog.scalar.ph995.prol.loopexit, label %vec.epilog.scalar.ph995.prol

vec.epilog.scalar.ph995.prol:                     ; preds = %vec.epilog.scalar.ph995.preheader, %vec.epilog.scalar.ph995.prol
  %indvars.iv859.prol = phi i64 [ %indvars.iv.next860.prol, %vec.epilog.scalar.ph995.prol ], [ %indvars.iv859.ph, %vec.epilog.scalar.ph995.preheader ] ; 3 uses
  %prol.iter1087 = phi i64 [ %prol.iter1087.next, %vec.epilog.scalar.ph995.prol ], [ 0, %vec.epilog.scalar.ph995.preheader ]
  %i.pq = mul nsw i64 %indvars.iv859.prol, %i.oo
  %gep945.prol = getelementptr [8 x i8], ptr %invariant.gep944, i64 %i.pq
  %i.pr = load double, ptr %gep945.prol, align 8, !tbaa !45
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv859.prol
  store double %i.pr, ptr %i.ps, align 8, !tbaa !45
  %indvars.iv.next860.prol = add nuw nsw i64 %indvars.iv859.prol, 1 ; 2 uses
  %prol.iter1087.next = add i64 %prol.iter1087, 1 ; 2 uses
  %prol.iter1087.cmp.not = icmp eq i64 %prol.iter1087.next, %xtraiter1085
  br i1 %prol.iter1087.cmp.not, label %vec.epilog.scalar.ph995.prol.loopexit, label %vec.epilog.scalar.ph995.prol, !llvm.loop !23

vec.epilog.scalar.ph995.prol.loopexit:            ; preds = %vec.epilog.scalar.ph995.prol, %vec.epilog.scalar.ph995.preheader
  %indvars.iv859.unr = phi i64 [ %indvars.iv859.ph, %vec.epilog.scalar.ph995.preheader ], [ %indvars.iv.next860.prol, %vec.epilog.scalar.ph995.prol ]
  %i.pt = icmp ult i64 %i.pp, 7
  br i1 %i.pt, label %.loopexit, label %vec.epilog.scalar.ph995

vec.epilog.scalar.ph995:                          ; preds = %vec.epilog.scalar.ph995.prol.loopexit, %vec.epilog.scalar.ph995
  %indvars.iv859 = phi i64 [ %indvars.iv.next860.7, %vec.epilog.scalar.ph995 ], [ %indvars.iv859.unr, %vec.epilog.scalar.ph995.prol.loopexit ] ; 11 uses
  %i.pu = mul nsw i64 %indvars.iv859, %i.oo
  %gep945 = getelementptr [8 x i8], ptr %invariant.gep944, i64 %i.pu
  %i.pv = load double, ptr %gep945, align 8, !tbaa !45
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv859
  store double %i.pv, ptr %i.pw, align 8, !tbaa !45
  %indvars.iv.next860 = add nuw nsw i64 %indvars.iv859, 1
  %i.px = mul nsw i64 %indvars.iv.next860, %i.oo
  %gep945.1 = getelementptr [8 x i8], ptr %invariant.gep944, i64 %i.px
  %i.py = load double, ptr %gep945.1, align 8, !tbaa !45
  %i.pz = getelementptr [8 x i8], ptr %6, i64 %indvars.iv859
  store double %i.py, ptr %i.pz, align 8, !tbaa !45
  %indvars.iv.next860.1 = add nuw nsw i64 %indvars.iv859, 2 ; 2 uses
  %i.qa = mul nsw i64 %indvars.iv.next860.1, %i.oo
  %gep945.2 = getelementptr [8 x i8], ptr %invariant.gep944, i64 %i.qa
  %i.qb = load double, ptr %gep945.2, align 8, !tbaa !45
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next860.1
  store double %i.qb, ptr %i.qc, align 8, !tbaa !45
  %indvars.iv.next860.2 = add nuw nsw i64 %indvars.iv859, 3 ; 2 uses
  %i.qd = mul nsw i64 %indvars.iv.next860.2, %i.oo
  %gep945.3 = getelementptr [8 x i8], ptr %invariant.gep944, i64 %i.qd
  %i.qe = load double, ptr %gep945.3, align 8, !tbaa !45
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next860.2
  store double %i.qe, ptr %i.qf, align 8, !tbaa !45
  %indvars.iv.next860.3 = add nuw nsw i64 %indvars.iv859, 4 ; 2 uses
  %i.qg = mul nsw i64 %indvars.iv.next860.3, %i.oo
  %gep945.4 = getelementptr [8 x i8], ptr %invariant.gep944, i64 %i.qg
  %i.qh = load double, ptr %gep945.4, align 8, !tbaa !45
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next860.3
  store double %i.qh, ptr %i.qi, align 8, !tbaa !45
  %indvars.iv.next860.4 = add nuw nsw i64 %indvars.iv859, 5 ; 2 uses
  %i.qj = mul nsw i64 %indvars.iv.next860.4, %i.oo
  %gep945.5 = getelementptr [8 x i8], ptr %invariant.gep944, i64 %i.qj
  %i.qk = load double, ptr %gep945.5, align 8, !tbaa !45
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next860.4
  store double %i.qk, ptr %i.ql, align 8, !tbaa !45
  %indvars.iv.next860.5 = add nuw nsw i64 %indvars.iv859, 6 ; 2 uses
  %i.qm = mul nsw i64 %indvars.iv.next860.5, %i.oo
  %gep945.6 = getelementptr [8 x i8], ptr %invariant.gep944, i64 %i.qm
  %i.qn = load double, ptr %gep945.6, align 8, !tbaa !45
  %i.qo = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next860.5
  store double %i.qn, ptr %i.qo, align 8, !tbaa !45
  %indvars.iv.next860.6 = add nuw nsw i64 %indvars.iv859, 7 ; 2 uses
  %i.qp = mul nsw i64 %indvars.iv.next860.6, %i.oo
  %gep945.7 = getelementptr [8 x i8], ptr %invariant.gep944, i64 %i.qp
  %i.qq = load double, ptr %gep945.7, align 8, !tbaa !45
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next860.6
  store double %i.qq, ptr %i.qr, align 8, !tbaa !45
  %indvars.iv.next860.7 = add nuw nsw i64 %indvars.iv859, 8 ; 2 uses
  %exitcond863.not.7 = icmp eq i64 %indvars.iv.next860.7, %wide.trip.count862
  br i1 %exitcond863.not.7, label %.loopexit, label %vec.epilog.scalar.ph995, !llvm.loop !24

bb.aq:                                            ; preds = %bb.o
  br i1 %i.bb, label %bb.ar, label %.loopexit723

bb.ar:                                            ; preds = %bb.aq
  store i32 0, ptr %i.m, align 4, !tbaa !42
  %.not664814 = icmp slt i32 %i.ax, 3
  br i1 %.not664814, label %.loopexit723.thread, label %.lr.ph810.us.preheader

.lr.ph810.us.preheader:                           ; preds = %bb.ar
  %i.qs = add nsw i32 %i.ax, -2
  %i.qt = add i32 %., 1
  %i.qu = add nsw i32 %., 2
  %i.qv = sext i32 %i.q to i64                    ; 3 uses
  %i.qw = sext i32 %i.qt to i64
  %i.qx = sext i32 %i.qs to i64
  br label %.lr.ph810.us

.lr.ph810.us:                                     ; preds = %.lr.ph810.us.preheader, %._crit_edge811.us
  %i.qy = phi i32 [ %i.af, %.lr.ph810.us.preheader ], [ %i.zx, %._crit_edge811.us ]
  %indvars.iv873 = phi i64 [ 1, %.lr.ph810.us.preheader ], [ %indvars.iv.next874, %._crit_edge811.us ] ; 6 uses
  %.4642.neg819.us = phi i32 [ -1, %.lr.ph810.us.preheader ], [ %i.abc, %._crit_edge811.us ] ; 2 uses
  %.3611818.us = phi i32 [ 1, %.lr.ph810.us.preheader ], [ %.5.us, %._crit_edge811.us ]
  %.3615817.us = phi i32 [ %i.qu, %.lr.ph810.us.preheader ], [ %.5617.us, %._crit_edge811.us ]
  %.3623816.us = phi i32 [ 1, %.lr.ph810.us.preheader ], [ %.5625.us, %._crit_edge811.us ]
  %i.qz = add nsw i32 %.4642.neg819.us, 1
  %i.ra = mul nsw i64 %indvars.iv873, %i.qv       ; 2 uses
  %indvars.iv.next874 = add nuw nsw i64 %indvars.iv873, 1 ; 2 uses
  %i.rb = mul nsw i64 %indvars.iv.next874, %i.qv  ; 2 uses
  %i.rc = add i64 %i.rb, 4294967294
  %invariant.gep950 = getelementptr [8 x i8], ptr %i.s, i64 %i.ra
  %invariant.gep952 = getelementptr [8 x i8], ptr %i.s, i64 %i.ra
  %i.rd = add nuw i64 %indvars.iv873, 4294967295
  %invariant.gep954 = getelementptr [8 x i8], ptr %i.s, i64 %i.rb
  %i.re = trunc nuw nsw i64 %indvars.iv873 to i32
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph810.us, %._crit_edge.us822
  %i.rf = phi i32 [ %i.qy, %.lr.ph810.us ], [ %i.zx, %._crit_edge.us822 ] ; 2 uses
  %indvars.iv870 = phi i64 [ %i.qw, %.lr.ph810.us ], [ %indvars.iv.next871, %._crit_edge.us822 ] ; 11 uses
  %.4808.us = phi i32 [ %.3611818.us, %.lr.ph810.us ], [ %.5.us, %._crit_edge.us822 ] ; 2 uses
  %.4616807.us = phi i32 [ %.3615817.us, %.lr.ph810.us ], [ %.5617.us, %._crit_edge.us822 ] ; 2 uses
  %.4624806.us = phi i32 [ %.3623816.us, %.lr.ph810.us ], [ %.5625.us, %._crit_edge.us822 ] ; 4 uses
  %i.rg = add nsw i32 %.4616807.us, %.            ; 6 uses
  %i.rh = add nsw i32 %.4808.us, %.               ; 11 uses
  %i.ri = load i32, ptr %i.m, align 4, !tbaa !42
  %i.rj = icmp sgt i32 %i.ri, 0
  br i1 %i.rj, label %bb.at, label %.loopexit721.us

bb.at:                                            ; preds = %bb.as
  %i.rk = sub nsw i32 %i.rg, %i.rf
  %i.rl = mul nsw i32 %i.rk, %i.q
  %i.rm = add nsw i32 %i.rl, %i.rf
  %i.rn = sext i32 %i.rm to i64
  %i.ro = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.rn
  %i.rp = sext i32 %i.rg to i64                   ; 2 uses
  %i.rq = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.rp ; 2 uses
  %i.rr = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.rp ; 2 uses
  call void @dlargv_(ptr noundef nonnull %i.m, ptr noundef %i.ro, ptr noundef nonnull %i.h, ptr noundef nonnull %i.rq, ptr noundef nonnull %i.n, ptr noundef nonnull %i.rr, ptr noundef nonnull %i.n) #5
  %i.rs = load i32, ptr %i.m, align 4, !tbaa !42  ; 2 uses
  %i.rt = load i32, ptr %3, align 4, !tbaa !42    ; 3 uses
  %i.ru = shl i32 %i.rt, 1
  %.not668.us = icmp slt i32 %i.rs, %i.ru
  br i1 %.not668.us, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.rv = add nsw i32 %i.rt, -1
  store i32 %i.rv, ptr %i.f, align 4, !tbaa !42
  %.not669781.us = icmp slt i32 %i.rt, 2
  br i1 %.not669781.us, label %.loopexit721.us, label %.lr.ph783.us

.lr.ph783.us:                                     ; preds = %bb.au, %.lr.ph783.us
  %.2628782.us = phi i32 [ %i.sh, %.lr.ph783.us ], [ 1, %bb.au ] ; 4 uses
  %i.rw = load i32, ptr %i.n, align 4, !tbaa !42  ; 2 uses
  %i.rx = sub nsw i32 %i.rw, %.2628782.us
  %i.ry = add i32 %.2628782.us, %i.rg
  %i.rz = sub i32 %i.ry, %i.rw
  %i.sa = mul nsw i32 %i.rz, %i.q
  %i.sb = add i32 %i.sa, %i.rx                    ; 2 uses
  %i.sc = sext i32 %i.sb to i64
  %i.sd = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.sc
  %i.se = add i32 %i.sb, 1
  %i.sf = sext i32 %i.se to i64
  %i.sg = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.sf
  call void @dlartv_(ptr noundef nonnull %i.m, ptr noundef %i.sd, ptr noundef nonnull %i.h, ptr noundef %i.sg, ptr noundef nonnull %i.h, ptr noundef nonnull %i.rr, ptr noundef nonnull %i.rq, ptr noundef nonnull %i.n) #5
  %i.sh = add nuw nsw i32 %.2628782.us, 1
  %i.si = load i32, ptr %i.f, align 4, !tbaa !42
  %.not669.us.not = icmp slt i32 %.2628782.us, %i.si
  br i1 %.not669.us.not, label %.lr.ph783.us, label %.loopexit721.us, !llvm.loop !25

bb.av:                                            ; preds = %bb.at
  %i.sj = load i32, ptr %i.n, align 4, !tbaa !42  ; 3 uses
  %i.sk = add nsw i32 %i.rs, -1
  %i.sl = mul nsw i32 %i.sj, %i.sk                ; 3 uses
  %i.sm = add nsw i32 %i.sl, %i.rg
  store i32 %i.sm, ptr %i.f, align 4, !tbaa !42
  store i32 %i.sj, ptr %i.e, align 4, !tbaa !42
  %i.sn = icmp slt i32 %i.sj, 0
  %i.so = icmp slt i32 %i.sl, 1
  %i.sp = icmp sgt i32 %i.sl, -1
  %.in784.us = select i1 %i.sn, i1 %i.so, i1 %i.sp
  br i1 %.in784.us, label %.lr.ph786.us, label %.loopexit721.us

.lr.ph786.us:                                     ; preds = %bb.av, %.lr.ph786.us
  %.1646785.us = phi i32 [ %i.te, %.lr.ph786.us ], [ %i.rg, %bb.av ] ; 3 uses
  %i.sq = load i32, ptr %3, align 4, !tbaa !42    ; 2 uses
  %i.sr = sub nsw i32 %.1646785.us, %i.sq
  %i.ss = mul nsw i32 %i.sr, %i.q                 ; 2 uses
  %i.st = add nsw i32 %i.ss, %i.sq
  %i.su = sext i32 %i.st to i64
  %i.sv = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.su
  %i.sw = load i32, ptr %i.n, align 4, !tbaa !42
  %i.sx = add nsw i32 %i.ss, %i.sw
  %i.sy = sext i32 %i.sx to i64
  %i.sz = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.sy
  %i.ta = sext i32 %.1646785.us to i64            ; 2 uses
  %i.tb = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.ta
  %i.tc = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ta
  call void @drot_(ptr noundef nonnull %i.p, ptr noundef %i.sv, ptr noundef nonnull %i.j, ptr noundef %i.sz, ptr noundef nonnull %i.j, ptr noundef nonnull %i.tb, ptr noundef nonnull %i.tc) #5
  %i.td = load i32, ptr %i.e, align 4, !tbaa !42  ; 2 uses
  %i.te = add nsw i32 %i.td, %.1646785.us         ; 3 uses
  %i.tf = icmp slt i32 %i.td, 0
  %i.tg = load i32, ptr %i.f, align 4             ; 2 uses
  %i.th = icmp sge i32 %i.te, %i.tg
  %i.ti = icmp sle i32 %i.te, %i.tg
  %.in.us = select i1 %i.tf, i1 %i.th, i1 %i.ti
  br i1 %.in.us, label %.lr.ph786.us, label %.loopexit721.us, !llvm.loop !26

.loopexit721.us:                                  ; preds = %.lr.ph783.us, %.lr.ph786.us, %bb.au, %bb.av, %bb.as
  %i.tj = icmp eq i64 %indvars.iv870, 2           ; 2 uses
  br i1 %i.tj, label %thread-pre-split710.us, label %bb.aw

bb.aw:                                            ; preds = %.loopexit721.us
  %i.tk = load i32, ptr %2, align 4, !tbaa !42
  %i.tl = add i32 %i.qz, %i.tk
  %i.tm = sext i32 %i.tl to i64
  %.not671.us = icmp sgt i64 %indvars.iv870, %i.tm
  br i1 %.not671.us, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.tn = add nsw i64 %indvars.iv870, -1          ; 2 uses
  %gep951 = getelementptr [8 x i8], ptr %invariant.gep950, i64 %i.tn ; 2 uses
  %gep953 = getelementptr [8 x i8], ptr %invariant.gep952, i64 %indvars.iv870
  %i.to = add i64 %i.rd, %indvars.iv870
  %sext = shl i64 %i.to, 32
  %i.tp = ashr exact i64 %sext, 32                ; 2 uses
  %i.tq = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.tp ; 2 uses
  %i.tr = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.tp ; 2 uses
  call void @dlartg_(ptr noundef %gep951, ptr noundef %gep953, ptr noundef nonnull %i.tq, ptr noundef nonnull %i.tr, ptr noundef nonnull %i.k) #5
  %i.ts = load double, ptr %i.k, align 8, !tbaa !45
  store double %i.ts, ptr %gep951, align 8, !tbaa !45
  %i.tt = trunc i64 %indvars.iv870 to i32
  %i.tu = add i32 %i.tt, -3
  store i32 %i.tu, ptr %i.e, align 4, !tbaa !42
  %i.tv = load i32, ptr %5, align 4, !tbaa !42
  %i.tw = add nsw i32 %i.tv, -1                   ; 2 uses
  store i32 %i.tw, ptr %i.f, align 4, !tbaa !42
  store i32 %i.tw, ptr %i.g, align 4, !tbaa !42
  %i.tx = add i64 %i.rc, %indvars.iv870
  %sext923 = shl i64 %i.tx, 32
  %i.ty = ashr exact i64 %sext923, 29
  %i.tz = getelementptr inbounds i8, ptr %i.s, i64 %i.ty
  %gep955 = getelementptr [8 x i8], ptr %invariant.gep954, i64 %i.tn
  call void @drot_(ptr noundef nonnull %i.e, ptr noundef %i.tz, ptr noundef nonnull %i.f, ptr noundef %gep955, ptr noundef nonnull %i.g, ptr noundef nonnull %i.tq, ptr noundef nonnull %i.tr) #5
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.ua = load i32, ptr %i.m, align 4, !tbaa !42
  %i.ub = add nsw i32 %i.ua, 1                    ; 2 uses
  store i32 %i.ub, ptr %i.m, align 4, !tbaa !42
  %i.uc = add nsw i32 %.4616807.us, -1
  br label %bb.az

thread-pre-split710.us:                           ; preds = %.loopexit721.us
  %.pr711.us = load i32, ptr %i.m, align 4, !tbaa !42
  br label %bb.az

bb.az:                                            ; preds = %thread-pre-split710.us, %bb.ay
  %i.ud = phi i32 [ %.pr711.us, %thread-pre-split710.us ], [ %i.ub, %bb.ay ]
  %.5617.us = phi i32 [ %i.rg, %thread-pre-split710.us ], [ %i.uc, %bb.ay ] ; 19 uses
  %i.ue = icmp sgt i32 %i.ud, 0
  br i1 %i.ue, label %bb.ba, label %.loopexit720.us

bb.ba:                                            ; preds = %bb.az
  %i.uf = add nsw i32 %.5617.us, -1
  %i.ug = mul nsw i32 %i.uf, %i.q
  %i.uh = sext i32 %i.ug to i64
  %i.ui = getelementptr [8 x i8], ptr %i.s, i64 %i.uh ; 2 uses
  %i.uj = getelementptr i8, ptr %i.ui, i64 8
  %i.uk = mul nsw i32 %.5617.us, %i.q
  %i.ul = sext i32 %i.uk to i64
  %i.um = getelementptr [8 x i8], ptr %i.s, i64 %i.ul
  %i.un = getelementptr i8, ptr %i.um, i64 8
  %i.uo = getelementptr i8, ptr %i.ui, i64 16
  %i.up = sext i32 %.5617.us to i64               ; 2 uses
  %i.uq = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.up
  %i.ur = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.up
  call void @dlar2v_(ptr noundef nonnull %i.m, ptr noundef %i.uj, ptr noundef %i.un, ptr noundef %i.uo, ptr noundef nonnull %i.h, ptr noundef nonnull %i.uq, ptr noundef nonnull %i.ur, ptr noundef nonnull %i.n) #5
  %.pre897 = load i32, ptr %i.m, align 4, !tbaa !42 ; 4 uses
  %i.us = icmp sgt i32 %.pre897, 0
  br i1 %i.us, label %bb.bb, label %.loopexit720.us

bb.bb:                                            ; preds = %bb.ba
  %i.ut = load i32, ptr %3, align 4, !tbaa !42    ; 3 uses
  %i.uu = shl i32 %i.ut, 1
  %.not672.us = icmp slt i32 %.pre897, %i.uu
  br i1 %.not672.us, label %bb.bg, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.uv = add nsw i32 %i.ut, -1                   ; 2 uses
  store i32 %i.uv, ptr %i.e, align 4, !tbaa !42
  %.not676787.us = icmp slt i32 %i.ut, 2
  br i1 %.not676787.us, label %.loopexit720.us, label %.lr.ph789.us

bb.bd:                                            ; preds = %.lr.ph789.us, %bb.bf
  %i.uw = phi i32 [ %i.uv, %.lr.ph789.us ], [ %i.vl, %bb.bf ]
  %i.ux = phi i32 [ %.pre897, %.lr.ph789.us ], [ %i.vm, %bb.bf ] ; 2 uses
  %indvars.iv864 = phi i64 [ 1, %.lr.ph789.us ], [ %indvars.iv.next865, %bb.bf ] ; 4 uses
  %i.uy = add nsw i64 %indvars.iv864, %i.aav
  %i.uz = load i32, ptr %2, align 4, !tbaa !42
  %i.va = sext i32 %i.uz to i64
  %i.vb = icmp sgt i64 %i.uy, %i.va
  %i.vc = sext i1 %i.vb to i32
  %storemerge.us = add nsw i32 %i.ux, %i.vc       ; 2 uses
  store i32 %storemerge.us, ptr %i.o, align 4, !tbaa !42
  %i.vd = icmp sgt i32 %storemerge.us, 0
  br i1 %i.vd, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.ve = trunc nuw nsw i64 %indvars.iv864 to i32 ; 2 uses
  %i.vf = add i32 %i.aap, %i.ve
  %i.vg = sext i32 %i.vf to i64
  %i.vh = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.vg
  %i.vi = add i32 %i.aar, %i.ve
  %i.vj = sext i32 %i.vi to i64
  %i.vk = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.vj
  call void @dlartv_(ptr noundef nonnull %i.o, ptr noundef %i.vh, ptr noundef nonnull %i.h, ptr noundef %i.vk, ptr noundef nonnull %i.h, ptr noundef nonnull %i.aat, ptr noundef nonnull %i.aau, ptr noundef nonnull %i.n) #5
  %.pre898 = load i32, ptr %i.m, align 4
  %.pre900 = load i32, ptr %i.e, align 4, !tbaa !42
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.vl = phi i32 [ %.pre900, %bb.be ], [ %i.uw, %bb.bd ] ; 2 uses
  %i.vm = phi i32 [ %.pre898, %bb.be ], [ %i.ux, %bb.bd ]
  %indvars.iv.next865 = add nuw nsw i64 %indvars.iv864, 1
  %i.vn = sext i32 %i.vl to i64
  %.not676.us.not = icmp slt i64 %indvars.iv864, %i.vn
  br i1 %.not676.us.not, label %bb.bd, label %.loopexit720.us, !llvm.loop !27

bb.bg:                                            ; preds = %bb.bb
  %i.vo = load i32, ptr %i.n, align 4, !tbaa !42  ; 3 uses
  %i.vp = add nsw i32 %.pre897, -2
  %i.vq = mul nsw i32 %i.vo, %i.vp                ; 3 uses
  %i.vr = add nsw i32 %i.vq, %.5617.us            ; 2 uses
  %.not673.us = icmp slt i32 %i.vq, 0
  br i1 %.not673.us, label %.loopexit719.us, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  store i32 %i.vr, ptr %i.e, align 4, !tbaa !42
  store i32 %i.vo, ptr %i.f, align 4, !tbaa !42
  %i.vs = icmp sgt i32 %i.vo, -1
  %i.vt = icmp eq i32 %i.vq, 0
  %.in674790.us = or i1 %i.vs, %i.vt
  br i1 %.in674790.us, label %.lr.ph792.us, label %.loopexit719.us

.lr.ph792.us:                                     ; preds = %bb.bh, %.lr.ph792.us
  %.0644791.us = phi i32 [ %i.wh, %.lr.ph792.us ], [ %.5617.us, %bb.bh ] ; 4 uses
  %i.vu = add nsw i32 %.0644791.us, -1
  %i.vv = mul nsw i32 %i.vu, %i.q
  %i.vw = sext i32 %i.vv to i64
  %i.vx = getelementptr [8 x i8], ptr %i.s, i64 %i.vw
  %i.vy = getelementptr i8, ptr %i.vx, i64 24
  %i.vz = mul nsw i32 %.0644791.us, %i.q
  %i.wa = sext i32 %i.vz to i64
  %i.wb = getelementptr [8 x i8], ptr %i.s, i64 %i.wa
  %i.wc = getelementptr i8, ptr %i.wb, i64 16
  %i.wd = sext i32 %.0644791.us to i64            ; 2 uses
  %i.we = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.wd
  %i.wf = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.wd
  call void @drot_(ptr noundef nonnull %i.p, ptr noundef %i.vy, ptr noundef nonnull @c__1, ptr noundef %i.wc, ptr noundef nonnull @c__1, ptr noundef nonnull %i.we, ptr noundef nonnull %i.wf) #5
  %i.wg = load i32, ptr %i.f, align 4, !tbaa !42  ; 2 uses
  %i.wh = add nsw i32 %i.wg, %.0644791.us         ; 3 uses
  %i.wi = icmp slt i32 %i.wg, 0
  %i.wj = load i32, ptr %i.e, align 4             ; 2 uses
  %i.wk = icmp sge i32 %i.wh, %i.wj
  %i.wl = icmp sle i32 %i.wh, %i.wj
  %.in674.us = select i1 %i.wi, i1 %i.wk, i1 %i.wl
  br i1 %.in674.us, label %.lr.ph792.us, label %.loopexit719.us, !llvm.loop !28

.loopexit719.us:                                  ; preds = %.lr.ph792.us, %bb.bh, %bb.bg
  %i.wm = load i32, ptr %i.p, align 4, !tbaa !42  ; 2 uses
  store i32 %i.wm, ptr %i.f, align 4, !tbaa !42
  %i.wn = load i32, ptr %2, align 4, !tbaa !42
  %i.wo = sub nsw i32 %i.wn, %i.rh                ; 2 uses
  store i32 %i.wo, ptr %i.e, align 4, !tbaa !42
  %i.wp = call i32 @llvm.smin.i32(i32 %i.wm, i32 %i.wo) ; 2 uses
  store i32 %i.wp, ptr %i.i, align 4, !tbaa !42
  %i.wq = icmp sgt i32 %i.wp, 0
  br i1 %i.wq, label %bb.bi, label %.loopexit720.us

bb.bi:                                            ; preds = %.loopexit719.us
  %i.wr = load i32, ptr %i.n, align 4, !tbaa !42
  %i.ws = add nsw i32 %i.wr, %i.vr                ; 3 uses
  %i.wt = add nsw i32 %i.ws, -1
  %i.wu = mul nsw i32 %i.wt, %i.q
  %i.wv = sext i32 %i.wu to i64
  %i.ww = getelementptr [8 x i8], ptr %i.s, i64 %i.wv
  %i.wx = getelementptr i8, ptr %i.ww, i64 24
  %i.wy = mul nsw i32 %i.ws, %i.q
  %i.wz = sext i32 %i.wy to i64
  %i.xa = getelementptr [8 x i8], ptr %i.s, i64 %i.wz
  %i.xb = getelementptr i8, ptr %i.xa, i64 16
  %i.xc = sext i32 %i.ws to i64                   ; 2 uses
  %i.xd = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.xc
  %i.xe = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.xc
  call void @drot_(ptr noundef nonnull %i.i, ptr noundef %i.wx, ptr noundef nonnull @c__1, ptr noundef %i.xb, ptr noundef nonnull @c__1, ptr noundef nonnull %i.xd, ptr noundef nonnull %i.xe) #5
  br label %.loopexit720.us

.loopexit720.us:                                  ; preds = %bb.bf, %bb.az, %bb.bc, %bb.bi, %.loopexit719.us, %bb.ba
  br i1 %i.ac, label %bb.bj, label %.loopexit717.us

bb.bj:                                            ; preds = %.loopexit720.us
  br i1 %.not, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.xf = call i32 @llvm.smax.i32(i32 %.4624806.us, i32 %i.rh) ; 4 uses
  %i.xg = load i32, ptr %3, align 4, !tbaa !42    ; 2 uses
  store i32 %i.rh, ptr %i.f, align 4, !tbaa !42
  %i.xh = load i32, ptr %i.n, align 4, !tbaa !42  ; 2 uses
  store i32 %i.xh, ptr %i.e, align 4, !tbaa !42
  %i.xi = icmp slt i32 %i.xh, 0
  %i.xj = icmp sge i32 %.5617.us, %i.rh
  %i.xk = icmp sle i32 %.5617.us, %i.rh
  %.in680793.us = select i1 %i.xi, i1 %i.xj, i1 %i.xk
  br i1 %.in680793.us, label %.lr.ph797.us.preheader, label %.loopexit717.us

.lr.ph797.us.preheader:                           ; preds = %bb.bk
  %i.xl = trunc i64 %indvars.iv870 to i32
  %i.xm = add i32 %i.xl, -3
  %i.xn = mul nsw i32 %i.xg, %i.re
  %i.xo = add nsw i32 %i.xn, 1
  %i.xp = select i1 %i.tj, i32 %i.xg, i32 0
  %spec.select706.us = add nsw i32 %i.xo, %i.xp
  %i.xq = call i32 @llvm.smin.i32(i32 %spec.select706.us, i32 %i.xf)
  %i.xr = icmp slt i64 %indvars.iv870, 4
  %i.xs = select i1 %i.xr, i32 0, i32 %i.xm
  br label %.lr.ph797.us

.lr.ph797.us:                                     ; preds = %.lr.ph797.us.preheader, %.lr.ph797.us
  %.3796.us = phi i32 [ %i.yc, %.lr.ph797.us ], [ %i.xq, %.lr.ph797.us.preheader ] ; 2 uses
  %.1619795.us = phi i32 [ %i.xv, %.lr.ph797.us ], [ %i.xs, %.lr.ph797.us.preheader ] ; 2 uses
  %.3635794.us = phi i32 [ %i.yq, %.lr.ph797.us ], [ %.5617.us, %.lr.ph797.us.preheader ] ; 5 uses
  %i.xt = load i32, ptr %i.p, align 4, !tbaa !42
  %i.xu = sdiv i32 %.1619795.us, %i.xt
  %i.xv = add nsw i32 %.1619795.us, 1
  %.neg.us = add i32 %.3635794.us, %.4642.neg819.us
  %i.xw = add i32 %.neg.us, %i.xu
  %i.xx = call i32 @llvm.smax.i32(i32 %i.xw, i32 1) ; 3 uses
  %i.xy = add nsw i32 %.3796.us, 1
  %i.xz = sub i32 %i.xy, %i.xx
  store i32 %i.xz, ptr %i.l, align 4, !tbaa !42
  %i.ya = load i32, ptr %3, align 4, !tbaa !42
  %i.yb = add nsw i32 %i.ya, %.3796.us            ; 2 uses
  store i32 %i.yb, ptr %i.g, align 4, !tbaa !42
  %i.yc = call i32 @llvm.smin.i32(i32 %i.yb, i32 %i.xf)
  %i.yd = add nsw i32 %.3635794.us, -1
  %i.ye = mul nsw i32 %i.yd, %i.v
  %i.yf = add nsw i32 %i.xx, %i.ye
  %i.yg = sext i32 %i.yf to i64
  %i.yh = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.yg
  %i.yi = mul nsw i32 %.3635794.us, %i.v
  %i.yj = add nsw i32 %i.xx, %i.yi
  %i.yk = sext i32 %i.yj to i64
  %i.yl = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.yk
  %i.ym = sext i32 %.3635794.us to i64            ; 2 uses
  %i.yn = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.ym
  %i.yo = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ym
  call void @drot_(ptr noundef nonnull %i.l, ptr noundef %i.yh, ptr noundef nonnull @c__1, ptr noundef %i.yl, ptr noundef nonnull @c__1, ptr noundef nonnull %i.yn, ptr noundef nonnull %i.yo) #5
  %i.yp = load i32, ptr %i.e, align 4, !tbaa !42  ; 2 uses
  %i.yq = add nsw i32 %i.yp, %.3635794.us         ; 3 uses
  %i.yr = icmp slt i32 %i.yp, 0
  %i.ys = load i32, ptr %i.f, align 4             ; 2 uses
  %i.yt = icmp sge i32 %i.yq, %i.ys
  %i.yu = icmp sle i32 %i.yq, %i.ys
  %.in680.us = select i1 %i.yr, i1 %i.yt, i1 %i.yu
  br i1 %.in680.us, label %.lr.ph797.us, label %.loopexit717.us, !llvm.loop !29

bb.bl:                                            ; preds = %bb.bj
  store i32 %i.rh, ptr %i.e, align 4, !tbaa !42
  %i.yv = load i32, ptr %i.n, align 4, !tbaa !42  ; 2 uses
  store i32 %i.yv, ptr %i.f, align 4, !tbaa !42
  %i.yw = icmp slt i32 %i.yv, 0
  %i.yx = icmp sge i32 %.5617.us, %i.rh
  %i.yy = icmp sle i32 %.5617.us, %i.rh
  %.in677798.us = select i1 %i.yw, i1 %i.yx, i1 %i.yy
  br i1 %.in677798.us, label %.lr.ph800.us, label %.loopexit717.us

.lr.ph800.us:                                     ; preds = %bb.bl, %.lr.ph800.us
  %.4636799.us = phi i32 [ %i.zm, %.lr.ph800.us ], [ %.5617.us, %bb.bl ] ; 4 uses
  %i.yz = add nsw i32 %.4636799.us, -1
  %i.za = mul nsw i32 %i.yz, %i.v
  %i.zb = sext i32 %i.za to i64
  %i.zc = getelementptr [8 x i8], ptr %i.x, i64 %i.zb
  %i.zd = getelementptr i8, ptr %i.zc, i64 8
  %i.ze = mul nsw i32 %.4636799.us, %i.v
  %i.zf = sext i32 %i.ze to i64
  %i.zg = getelementptr [8 x i8], ptr %i.x, i64 %i.zf
  %i.zh = getelementptr i8, ptr %i.zg, i64 8
  %i.zi = sext i32 %.4636799.us to i64            ; 2 uses
  %i.zj = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.zi
  %i.zk = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.zi
  call void @drot_(ptr noundef nonnull %2, ptr noundef %i.zd, ptr noundef nonnull @c__1, ptr noundef %i.zh, ptr noundef nonnull @c__1, ptr noundef nonnull %i.zj, ptr noundef nonnull %i.zk) #5
  %i.zl = load i32, ptr %i.f, align 4, !tbaa !42  ; 2 uses
  %i.zm = add nsw i32 %i.zl, %.4636799.us         ; 3 uses
  %i.zn = icmp slt i32 %i.zl, 0
  %i.zo = load i32, ptr %i.e, align 4             ; 2 uses
  %i.zp = icmp sge i32 %i.zm, %i.zo
  %i.zq = icmp sle i32 %i.zm, %i.zo
  %.in677.us = select i1 %i.zn, i1 %i.zp, i1 %i.zq
  br i1 %.in677.us, label %.lr.ph800.us, label %.loopexit717.us, !llvm.loop !30

.loopexit717.us:                                  ; preds = %.lr.ph797.us, %.lr.ph800.us, %bb.bk, %bb.bl, %.loopexit720.us
  %.5625.us = phi i32 [ %.4624806.us, %bb.bl ], [ %.4624806.us, %.loopexit720.us ], [ %.4624806.us, %.lr.ph800.us ], [ %i.xf, %bb.bk ], [ %i.xf, %.lr.ph797.us ] ; 2 uses
  %i.zr = add nsw i32 %i.rh, %.
  %i.zs = load i32, ptr %2, align 4, !tbaa !42    ; 2 uses
  %i.zt = icmp sgt i32 %i.zr, %i.zs
  br i1 %i.zt, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %.loopexit717.us
  %i.zu = load i32, ptr %i.m, align 4, !tbaa !42
  %i.zv = add nsw i32 %i.zu, -1
  store i32 %i.zv, ptr %i.m, align 4, !tbaa !42
  %i.zw = add nsw i32 %.4808.us, -1
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %.loopexit717.us
  %.5.us = phi i32 [ %i.zw, %bb.bm ], [ %i.rh, %.loopexit717.us ] ; 6 uses
  store i32 %.5.us, ptr %i.f, align 4, !tbaa !42
  %i.zx = load i32, ptr %i.n, align 4, !tbaa !42  ; 5 uses
  store i32 %i.zx, ptr %i.e, align 4, !tbaa !42
  %i.zy = icmp slt i32 %i.zx, 0                   ; 2 uses
  %i.zz = icmp sge i32 %.5617.us, %.5.us
  %i.aaa = icmp sle i32 %.5617.us, %.5.us
  %.in681801.us = select i1 %i.zy, i1 %i.zz, i1 %i.aaa
  br i1 %.in681801.us, label %.lr.ph803.us, label %._crit_edge.us822

bb.bo:                                            ; preds = %.lr.ph803.us, %bb.bo
  %indvars.iv867 = phi i64 [ %i.aax, %.lr.ph803.us ], [ %indvars.iv.next868, %bb.bo ] ; 5 uses
  %i.aab = getelementptr inbounds [8 x i8], ptr %i.y, i64 %indvars.iv867
  %i.aac = load double, ptr %i.aab, align 8, !tbaa !45
  %i.aad = mul nsw i64 %indvars.iv867, %i.qv
  %gep947 = getelementptr [8 x i8], ptr %invariant.gep946, i64 %i.aad ; 3 uses
  %i.aae = load double, ptr %gep947, align 8, !tbaa !45
  %i.aaf = fmul double %i.aac, %i.aae
  %gep949 = getelementptr [8 x i8], ptr %invariant.gep948, i64 %indvars.iv867
  store double %i.aaf, ptr %gep949, align 8, !tbaa !45
  %i.aag = getelementptr inbounds [8 x i8], ptr %i.t, i64 %indvars.iv867
  %i.aah = load double, ptr %i.aag, align 8, !tbaa !45
  %i.aai = load double, ptr %gep947, align 8, !tbaa !45
  %i.aaj = fmul double %i.aah, %i.aai
  store double %i.aaj, ptr %gep947, align 8, !tbaa !45
  %indvars.iv.next868 = add nsw i64 %indvars.iv867, %i.aay ; 3 uses
  %i.aak = icmp sge i64 %indvars.iv.next868, %i.aba
  %i.aal = icmp sle i64 %indvars.iv.next868, %i.aba
  %.in681.us = select i1 %i.zy, i1 %i.aak, i1 %i.aal
  br i1 %.in681.us, label %bb.bo, label %._crit_edge.us822, !llvm.loop !31

._crit_edge.us822:                                ; preds = %bb.bo, %bb.bn
  %indvars.iv.next871 = add nsw i64 %indvars.iv870, -1
  %i.aam = icmp sgt i64 %indvars.iv870, 2
  br i1 %i.aam, label %bb.as, label %._crit_edge811.us, !llvm.loop !32

.lr.ph789.us:                                     ; preds = %bb.bc
  %i.aan = add nsw i32 %.5617.us, -1
  %i.aao = mul nsw i32 %i.aan, %i.q
  %i.aap = add i32 %i.aao, 2
  %i.aaq = mul nsw i32 %.5617.us, %i.q
  %i.aar = add i32 %i.aaq, 1
  %i.aas = sext i32 %.5617.us to i64              ; 2 uses
  %i.aat = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.aas
  %i.aau = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.aas
  %i.aav = sext i32 %i.rh to i64
  br label %bb.bd

.lr.ph803.us:                                     ; preds = %bb.bn
  %i.aaw = load i32, ptr %3, align 4, !tbaa !42
  %i.aax = sext i32 %.5617.us to i64
  %i.aay = sext i32 %i.zx to i64                  ; 2 uses
  %i.aaz = sext i32 %i.aaw to i64
  %i.aba = sext i32 %.5.us to i64                 ; 2 uses
  %invariant.gep946 = getelementptr [8 x i8], ptr %i.s, i64 %i.aay
  %invariant.gep948 = getelementptr [8 x i8], ptr %i.y, i64 %i.aaz
  br label %bb.bo

._crit_edge811.us:                                ; preds = %._crit_edge.us822
  %.not664.us.not = icmp slt i64 %indvars.iv873, %i.qx
  %i.abb = trunc i64 %indvars.iv873 to i32
  %i.abc = xor i32 %i.abb, -1
  br i1 %.not664.us.not, label %.lr.ph810.us, label %.loopexit723.loopexit, !llvm.loop !33

.loopexit723.loopexit:                            ; preds = %._crit_edge811.us
  %.pre901 = load i32, ptr %3, align 4, !tbaa !42
  br label %.loopexit723

.loopexit723:                                     ; preds = %.loopexit723.loopexit, %bb.aq
  %i.abd = phi i32 [ %i.ax, %bb.aq ], [ %i.zs, %.loopexit723.loopexit ] ; 5 uses
  %i.abe = phi i32 [ %i.aw, %bb.aq ], [ %.pre901, %.loopexit723.loopexit ]
  %i.abf = icmp sgt i32 %i.abe, 0
  br i1 %i.abf, label %.loopexit723.thread, label %bb.bp

.loopexit723.thread:                              ; preds = %bb.ar, %.loopexit723
  %i.abg = phi i32 [ %i.abd, %.loopexit723 ], [ %i.ax, %bb.ar ] ; 9 uses
  %.not666.not827 = icmp sgt i32 %i.abg, 1
  br i1 %.not666.not827, label %iter.check1026, label %.loopexit715

iter.check1026:                                   ; preds = %.loopexit723.thread
  %i.abh = sext i32 %i.q to i64                   ; 9 uses
  %wide.trip.count883 = zext nneg i32 %i.abg to i64 ; 4 uses
  %i.abi = add nsw i64 %wide.trip.count883, -1    ; 5 uses
  %min.iters.check1011 = icmp ugt i32 %i.abg, 4
  %ident.check1008.not = icmp eq i32 %i.q, 1
  %or.cond1073 = select i1 %min.iters.check1011, i1 %ident.check1008.not, i1 false
  br i1 %or.cond1073, label %vector.memcheck1009, label %.lr.ph829.preheader

vector.memcheck1009:                              ; preds = %iter.check1026
  %i.abj = sub i64 %i.c, %i.b
  %i.abk = add i64 %i.abj, -9
  %diff.check1010 = icmp ult i64 %i.abk, 127
  br i1 %diff.check1010, label %.lr.ph829.preheader, label %vector.main.loop.iter.check1012

vector.main.loop.iter.check1012:                  ; preds = %vector.memcheck1009
  %min.iters.check1013 = icmp ult i32 %i.abg, 17
  br i1 %min.iters.check1013, label %vec.epilog.ph1030, label %vector.ph1014

vector.ph1014:                                    ; preds = %vector.main.loop.iter.check1012
  %i.abl = and i64 %i.abi, 12
  %n.vec1015 = and i64 %i.abi, -16                ; 4 uses
  %i.abm = or disjoint i64 %n.vec1015, 1
  br label %vector.body1016

vector.body1016:                                  ; preds = %vector.body1016, %vector.ph1014
  %index1017 = phi i64 [ 0, %vector.ph1014 ], [ %index.next1022, %vector.body1016 ] ; 3 uses
  %i.abn = getelementptr [8 x i8], ptr %i.s, i64 %index1017 ; 4 uses
  %i.abo = getelementptr i8, ptr %i.abn, i64 24
  %i.abp = getelementptr i8, ptr %i.abn, i64 56
  %i.abq = getelementptr i8, ptr %i.abn, i64 88
  %i.abr = getelementptr i8, ptr %i.abn, i64 120
  %wide.load1018 = load <4 x double>, ptr %i.abo, align 8, !tbaa !45
  %wide.load1019 = load <4 x double>, ptr %i.abp, align 8, !tbaa !45
  %wide.load1020 = load <4 x double>, ptr %i.abq, align 8, !tbaa !45
  %wide.load1021 = load <4 x double>, ptr %i.abr, align 8, !tbaa !45
  %i.abs = getelementptr [8 x i8], ptr %7, i64 %index1017 ; 4 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abs, i64 32
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abs, i64 64
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abs, i64 96
  store <4 x double> %wide.load1018, ptr %i.abs, align 8, !tbaa !45
  store <4 x double> %wide.load1019, ptr %i.abt, align 8, !tbaa !45
  store <4 x double> %wide.load1020, ptr %i.abu, align 8, !tbaa !45
  store <4 x double> %wide.load1021, ptr %i.abv, align 8, !tbaa !45
  %index.next1022 = add nuw i64 %index1017, 16    ; 2 uses
  %i.abw = icmp eq i64 %index.next1022, %n.vec1015
  br i1 %i.abw, label %middle.block1023, label %vector.body1016, !llvm.loop !34

middle.block1023:                                 ; preds = %vector.body1016
  %cmp.n1024 = icmp eq i64 %i.abi, %n.vec1015
  br i1 %cmp.n1024, label %iter.check1058, label %vec.epilog.iter.check1028

vec.epilog.iter.check1028:                        ; preds = %middle.block1023
  %min.epilog.iters.check1029 = icmp eq i64 %i.abl, 0
  br i1 %min.epilog.iters.check1029, label %.lr.ph829.preheader, label %vec.epilog.ph1030, !prof !48

vec.epilog.ph1030:                                ; preds = %vector.main.loop.iter.check1012, %vec.epilog.iter.check1028
  %vec.epilog.resume.val1025 = phi i64 [ %n.vec1015, %vec.epilog.iter.check1028 ], [ 0, %vector.main.loop.iter.check1012 ]
  %n.vec1031 = and i64 %i.abi, -4                 ; 3 uses
  %i.abx = or disjoint i64 %n.vec1031, 1
  br label %vec.epilog.vector.body1032

vec.epilog.vector.body1032:                       ; preds = %vec.epilog.vector.body1032, %vec.epilog.ph1030
  %index1033 = phi i64 [ %vec.epilog.resume.val1025, %vec.epilog.ph1030 ], [ %index.next1035, %vec.epilog.vector.body1032 ] ; 3 uses
  %i.aby = getelementptr [8 x i8], ptr %i.s, i64 %index1033
  %i.abz = getelementptr i8, ptr %i.aby, i64 24
  %wide.load1034 = load <4 x double>, ptr %i.abz, align 8, !tbaa !45
  %i.aca = getelementptr [8 x i8], ptr %7, i64 %index1033
  store <4 x double> %wide.load1034, ptr %i.aca, align 8, !tbaa !45
  %index.next1035 = add nuw i64 %index1033, 4     ; 2 uses
  %i.acb = icmp eq i64 %index.next1035, %n.vec1031
  br i1 %i.acb, label %vec.epilog.middle.block1036, label %vec.epilog.vector.body1032, !llvm.loop !35

vec.epilog.middle.block1036:                      ; preds = %vec.epilog.vector.body1032
  %cmp.n1037 = icmp eq i64 %i.abi, %n.vec1031
  br i1 %cmp.n1037, label %iter.check1058, label %.lr.ph829.preheader

.lr.ph829.preheader:                              ; preds = %vector.memcheck1009, %iter.check1026, %vec.epilog.iter.check1028, %vec.epilog.middle.block1036
  %indvars.iv880.ph = phi i64 [ 1, %iter.check1026 ], [ 1, %vector.memcheck1009 ], [ %i.abm, %vec.epilog.iter.check1028 ], [ %i.abx, %vec.epilog.middle.block1036 ] ; 4 uses
  %i.acc = sub nsw i64 %wide.trip.count883, %indvars.iv880.ph
  %xtraiter1088 = and i64 %i.acc, 7               ; 2 uses
  %lcmp.mod1089.not = icmp eq i64 %xtraiter1088, 0
  br i1 %lcmp.mod1089.not, label %.lr.ph829.prol.loopexit, label %.lr.ph829.prol

.lr.ph829.prol:                                   ; preds = %.lr.ph829.preheader, %.lr.ph829.prol
  %indvars.iv880.prol = phi i64 [ %indvars.iv.next881.prol, %.lr.ph829.prol ], [ %indvars.iv880.ph, %.lr.ph829.preheader ] ; 3 uses
  %prol.iter1090 = phi i64 [ %prol.iter1090.next, %.lr.ph829.prol ], [ 0, %.lr.ph829.preheader ]
  %i.acd = mul nsw i64 %indvars.iv880.prol, %i.abh
  %i.ace = getelementptr [8 x i8], ptr %i.s, i64 %i.acd
  %i.acf = getelementptr i8, ptr %i.ace, i64 16
  %i.acg = load double, ptr %i.acf, align 8, !tbaa !45
  %i.ach = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv880.prol
  store double %i.acg, ptr %i.ach, align 8, !tbaa !45
  %indvars.iv.next881.prol = add nuw nsw i64 %indvars.iv880.prol, 1 ; 2 uses
  %prol.iter1090.next = add i64 %prol.iter1090, 1 ; 2 uses
  %prol.iter1090.cmp.not = icmp eq i64 %prol.iter1090.next, %xtraiter1088
  br i1 %prol.iter1090.cmp.not, label %.lr.ph829.prol.loopexit, label %.lr.ph829.prol, !llvm.loop !36

.lr.ph829.prol.loopexit:                          ; preds = %.lr.ph829.prol, %.lr.ph829.preheader
  %indvars.iv880.unr = phi i64 [ %indvars.iv880.ph, %.lr.ph829.preheader ], [ %indvars.iv.next881.prol, %.lr.ph829.prol ]
  %i.aci = sub nsw i64 %indvars.iv880.ph, %wide.trip.count883
  %i.acj = icmp ugt i64 %i.aci, -8
  br i1 %i.acj, label %iter.check1058, label %.lr.ph829

.lr.ph829:                                        ; preds = %.lr.ph829.prol.loopexit, %.lr.ph829
  %indvars.iv880 = phi i64 [ %indvars.iv.next881.7, %.lr.ph829 ], [ %indvars.iv880.unr, %.lr.ph829.prol.loopexit ] ; 11 uses
  %i.ack = mul nsw i64 %indvars.iv880, %i.abh
  %i.acl = getelementptr [8 x i8], ptr %i.s, i64 %i.ack
end_hunk_0

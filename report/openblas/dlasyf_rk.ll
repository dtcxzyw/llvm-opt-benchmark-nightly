loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@dlasyf_rk_:bb.a
  %i.gy = load i32, ptr %1, align 4, !tbaa !8
  %i.gz = load i32, ptr %i.k, align 4, !tbaa !8
  %i.ha = add i32 %i.gy, 1
  %i.hb = sub i32 %i.ha, %i.gz
  store i32 %i.hb, ptr %i.a, align 4, !tbaa !8
  %i.hc = load i32, ptr %i.g, align 4, !tbaa !8
  %i.hd = mul nsw i32 %i.fq, %i.r                 ; 2 uses
  %i.he = add nsw i32 %i.hc, %i.hd
  %i.hf = sext i32 %i.he to i64
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.hf
  %i.hh = load i32, ptr %i.h, align 4, !tbaa !8
  %i.hi = add nsw i32 %i.hh, %i.hd
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.hj
  call void @dswap_(ptr noundef nonnull %i.a, ptr noundef %i.hg, ptr noundef nonnull %9, ptr noundef %i.hk, ptr noundef nonnull %9) #5
  %.pre864 = load i32, ptr %i.k, align 4, !tbaa !8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %.thread
  %i.hl = phi i32 [ %.pre864, %bb.ad ], [ %i.fm, %bb.ac ], [ %i.fm, %.thread ] ; 3 uses
  %i.hm = load i32, ptr %i.l, align 4, !tbaa !8   ; 5 uses
  %.not713 = icmp eq i32 %i.hm, %i.hl
  br i1 %.not713, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hn = load i32, ptr %i.g, align 4, !tbaa !8   ; 2 uses
  %i.ho = mul nsw i32 %i.hn, %i.m                 ; 2 uses
  %i.hp = add nsw i32 %i.ho, %i.hl
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.hq
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !9
  %i.ht = add nsw i32 %i.ho, %i.hm
  %i.hu = sext i32 %i.ht to i64
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.hu
  store double %i.hs, ptr %i.hv, align 8, !tbaa !9
  %i.hw = xor i32 %i.hm, -1
  %i.hx = add i32 %i.hn, %i.hw
  store i32 %i.hx, ptr %i.a, align 4, !tbaa !8
  %i.hy = add nsw i32 %i.hm, 1                    ; 2 uses
  %i.hz = mul nsw i32 %i.hl, %i.m
  %i.ia = add nsw i32 %i.hz, %i.hy
  %i.ib = sext i32 %i.ia to i64
  %i.ic = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.ib
  %i.id = mul nsw i32 %i.hy, %i.m
  %i.ie = add nsw i32 %i.id, %i.hm
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.if
  call void @dcopy_(ptr noundef nonnull %i.a, ptr noundef %i.ic, ptr noundef nonnull @c__1, ptr noundef %i.ig, ptr noundef nonnull %5) #5
  %i.ih = load i32, ptr %i.k, align 4, !tbaa !8
  %i.ii = mul nsw i32 %i.ih, %i.m
  %i.ij = sext i32 %i.ii to i64
  %i.ik = getelementptr [8 x i8], ptr %i.o, i64 %i.ij
  %i.il = getelementptr i8, ptr %i.ik, i64 8
  %i.im = load i32, ptr %i.l, align 4, !tbaa !8
  %i.in = mul nsw i32 %i.im, %i.m
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr [8 x i8], ptr %i.o, i64 %i.io
  %i.iq = getelementptr i8, ptr %i.ip, i64 8
  call void @dcopy_(ptr noundef nonnull %i.l, ptr noundef %i.il, ptr noundef nonnull @c__1, ptr noundef %i.iq, ptr noundef nonnull @c__1) #5
  %i.ir = load i32, ptr %1, align 4, !tbaa !8
  %i.is = load i32, ptr %i.k, align 4, !tbaa !8   ; 3 uses
  %i.it = add i32 %i.ir, 1
  %i.iu = sub i32 %i.it, %i.is
  store i32 %i.iu, ptr %i.a, align 4, !tbaa !8
  %i.iv = mul nsw i32 %i.is, %i.m                 ; 2 uses
  %i.iw = add nsw i32 %i.iv, %i.is
  %i.ix = sext i32 %i.iw to i64
  %i.iy = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.ix
  %i.iz = load i32, ptr %i.l, align 4, !tbaa !8
  %i.ja = add nsw i32 %i.iz, %i.iv
  %i.jb = sext i32 %i.ja to i64
  %i.jc = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.jb
  call void @dswap_(ptr noundef nonnull %i.a, ptr noundef %i.iy, ptr noundef nonnull %5, ptr noundef %i.jc, ptr noundef nonnull %5) #5
  %i.jd = load i32, ptr %1, align 4, !tbaa !8
  %i.je = load i32, ptr %i.k, align 4, !tbaa !8   ; 2 uses
  %i.jf = add i32 %i.jd, 1
  %i.jg = sub i32 %i.jf, %i.je
  store i32 %i.jg, ptr %i.a, align 4, !tbaa !8
  %i.jh = mul nsw i32 %i.fq, %i.r                 ; 2 uses
  %i.ji = add nsw i32 %i.je, %i.jh
  %i.jj = sext i32 %i.ji to i64
  %i.jk = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.jj
  %i.jl = load i32, ptr %i.l, align 4, !tbaa !8
  %i.jm = add nsw i32 %i.jl, %i.jh
  %i.jn = sext i32 %i.jm to i64
  %i.jo = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.jn
  call void @dswap_(ptr noundef nonnull %i.a, ptr noundef %i.jk, ptr noundef nonnull %9, ptr noundef %i.jo, ptr noundef nonnull %9) #5
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.jp = load i32, ptr %i.g, align 4, !tbaa !8   ; 11 uses
  br i1 %i.fk, label %bb.ah, label %bb.an

bb.ah:                                            ; preds = %bb.ag
  %i.jq = mul nsw i32 %i.jp, %i.m
  %i.jr = sext i32 %i.jq to i64
  %i.js = getelementptr [8 x i8], ptr %i.o, i64 %i.jr
  %i.jt = getelementptr i8, ptr %i.js, i64 8
  call void @dcopy_(ptr noundef nonnull %i.g, ptr noundef %i.aq, ptr noundef nonnull @c__1, ptr noundef %i.jt, ptr noundef nonnull @c__1) #5
  %i.ju = load i32, ptr %i.g, align 4, !tbaa !8   ; 13 uses
  %i.jv = icmp sgt i32 %i.ju, 1
  br i1 %i.jv, label %bb.ai, label %bb.ao

bb.ai:                                            ; preds = %bb.ah
  %i.jw = mul i32 %i.ju, %i.x
  %i.jx = sext i32 %i.jw to i64
  %i.jy = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.jx
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !9 ; 3 uses
  %i.ka = call double @llvm.fabs.f64(double %i.jz)
  %i.kb = fcmp ult double %i.ka, %i.u
  br i1 %i.kb, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.kc = fdiv double 1.000000e+00, %i.jz
  store double %i.kc, ptr %i.i, align 8, !tbaa !9
  %i.kd = add nsw i32 %i.ju, -1
  store i32 %i.kd, ptr %i.a, align 4, !tbaa !8
  %i.ke = mul nsw i32 %i.ju, %i.m
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr [8 x i8], ptr %i.o, i64 %i.kf
  %i.kh = getelementptr i8, ptr %i.kg, i64 8
  call void @dscal_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.i, ptr noundef %i.kh, ptr noundef nonnull @c__1) #5
  %.pre865 = load i32, ptr %i.g, align 4, !tbaa !8
  br label %.loopexit771

bb.ak:                                            ; preds = %bb.ai
  %i.ki = fcmp une double %i.jz, 0.000000e+00
  br i1 %i.ki, label %.lr.ph794, label %.loopexit771

.lr.ph794:                                        ; preds = %bb.ak
  %i.kj = add nsw i32 %i.ju, -1
  store i32 %i.kj, ptr %i.a, align 4, !tbaa !8
  %i.kk = mul nsw i32 %i.ju, %i.m                 ; 2 uses
  %i.kl = add nsw i32 %i.kk, %i.ju
  %i.km = sext i32 %i.kl to i64
  %i.kn = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.km ; 9 uses
  %i.ko = sext i32 %i.kk to i64
  %wide.trip.count846 = zext nneg i32 %i.ju to i64
  %invariant.gep989 = getelementptr [8 x i8], ptr %i.o, i64 %i.ko ; 9 uses
  %i.kp = add nsw i64 %wide.trip.count846, -1     ; 2 uses
  %xtraiter1152 = and i64 %i.kp, 7                ; 3 uses
  %i.kq = add nsw i32 %i.ju, -2
  %i.kr = icmp ult i32 %i.kq, 7
  br i1 %i.kr, label %.epil.preheader, label %.lr.ph794.new

.lr.ph794.new:                                    ; preds = %.lr.ph794
  %unroll_iter = and i64 %i.kp, -8
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.lr.ph794.new
  %indvars.iv843 = phi i64 [ 1, %.lr.ph794.new ], [ %indvars.iv.next844.7, %bb.al ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph794.new ], [ %niter.next.7, %bb.al ]
  %i.ks = load double, ptr %i.kn, align 8, !tbaa !9
  %gep990 = getelementptr [8 x i8], ptr %invariant.gep989, i64 %indvars.iv843 ; 2 uses
  %i.kt = load double, ptr %gep990, align 8, !tbaa !9
  %i.ku = fdiv double %i.kt, %i.ks
  store double %i.ku, ptr %gep990, align 8, !tbaa !9
  %i.kv = load double, ptr %i.kn, align 8, !tbaa !9
  %i.kw = getelementptr [8 x i8], ptr %invariant.gep989, i64 %indvars.iv843
  %gep990.1 = getelementptr i8, ptr %i.kw, i64 8  ; 2 uses
  %i.kx = load double, ptr %gep990.1, align 8, !tbaa !9
  %i.ky = fdiv double %i.kx, %i.kv
  store double %i.ky, ptr %gep990.1, align 8, !tbaa !9
  %i.kz = load double, ptr %i.kn, align 8, !tbaa !9
  %i.la = getelementptr [8 x i8], ptr %invariant.gep989, i64 %indvars.iv843
  %gep990.2 = getelementptr i8, ptr %i.la, i64 16 ; 2 uses
  %i.lb = load double, ptr %gep990.2, align 8, !tbaa !9
  %i.lc = fdiv double %i.lb, %i.kz
  store double %i.lc, ptr %gep990.2, align 8, !tbaa !9
  %i.ld = load double, ptr %i.kn, align 8, !tbaa !9
  %i.le = getelementptr [8 x i8], ptr %invariant.gep989, i64 %indvars.iv843
  %gep990.3 = getelementptr i8, ptr %i.le, i64 24 ; 2 uses
  %i.lf = load double, ptr %gep990.3, align 8, !tbaa !9
  %i.lg = fdiv double %i.lf, %i.ld
  store double %i.lg, ptr %gep990.3, align 8, !tbaa !9
  %i.lh = load double, ptr %i.kn, align 8, !tbaa !9
  %i.li = getelementptr [8 x i8], ptr %invariant.gep989, i64 %indvars.iv843
  %gep990.4 = getelementptr i8, ptr %i.li, i64 32 ; 2 uses
  %i.lj = load double, ptr %gep990.4, align 8, !tbaa !9
  %i.lk = fdiv double %i.lj, %i.lh
  store double %i.lk, ptr %gep990.4, align 8, !tbaa !9
  %i.ll = load double, ptr %i.kn, align 8, !tbaa !9
  %i.lm = getelementptr [8 x i8], ptr %invariant.gep989, i64 %indvars.iv843
  %gep990.5 = getelementptr i8, ptr %i.lm, i64 40 ; 2 uses
  %i.ln = load double, ptr %gep990.5, align 8, !tbaa !9
  %i.lo = fdiv double %i.ln, %i.ll
  store double %i.lo, ptr %gep990.5, align 8, !tbaa !9
  %i.lp = load double, ptr %i.kn, align 8, !tbaa !9
  %i.lq = getelementptr [8 x i8], ptr %invariant.gep989, i64 %indvars.iv843
  %gep990.6 = getelementptr i8, ptr %i.lq, i64 48 ; 2 uses
  %i.lr = load double, ptr %gep990.6, align 8, !tbaa !9
  %i.ls = fdiv double %i.lr, %i.lp
  store double %i.ls, ptr %gep990.6, align 8, !tbaa !9
  %i.lt = load double, ptr %i.kn, align 8, !tbaa !9
  %i.lu = getelementptr [8 x i8], ptr %invariant.gep989, i64 %indvars.iv843
  %gep990.7 = getelementptr i8, ptr %i.lu, i64 56 ; 2 uses
  %i.lv = load double, ptr %gep990.7, align 8, !tbaa !9
  %i.lw = fdiv double %i.lv, %i.lt
  store double %i.lw, ptr %gep990.7, align 8, !tbaa !9
  %indvars.iv.next844.7 = add nuw nsw i64 %indvars.iv843, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit771.loopexit.unr-lcssa, label %bb.al, !llvm.loop !11

.loopexit771.loopexit.unr-lcssa:                  ; preds = %bb.al
  %lcmp.mod1153.not = icmp eq i64 %xtraiter1152, 0
  br i1 %lcmp.mod1153.not, label %.loopexit771, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit771.loopexit.unr-lcssa, %.lr.ph794
  %indvars.iv843.epil.init = phi i64 [ 1, %.lr.ph794 ], [ %indvars.iv.next844.7, %.loopexit771.loopexit.unr-lcssa ]
  %lcmp.mod1154 = icmp ne i64 %xtraiter1152, 0
  call void @llvm.assume(i1 %lcmp.mod1154)
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %.epil.preheader
  %indvars.iv843.epil = phi i64 [ %indvars.iv843.epil.init, %.epil.preheader ], [ %indvars.iv.next844.epil, %bb.am ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.am ]
  %i.lx = load double, ptr %i.kn, align 8, !tbaa !9
  %gep990.epil = getelementptr [8 x i8], ptr %invariant.gep989, i64 %indvars.iv843.epil ; 2 uses
  %i.ly = load double, ptr %gep990.epil, align 8, !tbaa !9
  %i.lz = fdiv double %i.ly, %i.lx
  store double %i.lz, ptr %gep990.epil, align 8, !tbaa !9
  %indvars.iv.next844.epil = add nuw nsw i64 %indvars.iv843.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1152
  br i1 %epil.iter.cmp.not, label %.loopexit771, label %bb.am, !llvm.loop !13

.loopexit771:                                     ; preds = %.loopexit771.loopexit.unr-lcssa, %bb.am, %bb.ak, %bb.aj
  %i.ma = phi i32 [ %.pre865, %bb.aj ], [ %i.ju, %bb.ak ], [ %i.ju, %bb.am ], [ %i.ju, %.loopexit771.loopexit.unr-lcssa ] ; 2 uses
  %i.mb = sext i32 %i.ma to i64
  br label %.sink.split

bb.an:                                            ; preds = %bb.ag
  %i.mc = icmp sgt i32 %i.jp, 2
  %i.md = add nsw i32 %i.jp, -1                   ; 8 uses
  %i.me = add nsw i32 %i.jp, %i.an
  %i.mf = sext i32 %i.me to i64                   ; 2 uses
  br i1 %i.mc, label %.lr.ph, label %..loopexit772_crit_edge880

..loopexit772_crit_edge880:                       ; preds = %bb.an
  %.pre899 = add nsw i32 %i.af, -1
  %.pre901 = mul nsw i32 %.pre899, %i.r
  %.pre903 = add nsw i32 %i.md, %.pre901
  %.pre905 = sext i32 %.pre903 to i64
  %.pre911 = add nsw i32 %i.md, %i.an
  %.pre913 = sext i32 %.pre911 to i64
  br label %.loopexit772

.lr.ph:                                           ; preds = %bb.an
  %i.mg = add nsw i32 %i.md, %i.an
  %i.mh = sext i32 %i.mg to i64                   ; 4 uses
  %i.mi = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.mh
  %i.mj = load double, ptr %i.mi, align 8, !tbaa !9 ; 9 uses
  %i.mk = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.mf
  %i.ml = load double, ptr %i.mk, align 8, !tbaa !9
  %i.mm = fdiv double %i.ml, %i.mj                ; 5 uses
  %i.mn = add nsw i32 %i.af, -1
  %i.mo = mul nsw i32 %i.mn, %i.r                 ; 2 uses
  %i.mp = add nsw i32 %i.md, %i.mo
  %i.mq = sext i32 %i.mp to i64                   ; 4 uses
  %i.mr = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.mq
  %i.ms = load double, ptr %i.mr, align 8, !tbaa !9
  %i.mt = fdiv double %i.ms, %i.mj                ; 5 uses
  %i.mu = call double @llvm.fmuladd.f64(double %i.mm, double %i.mt, double -1.000000e+00)
  %i.mv = fdiv double 1.000000e+00, %i.mu         ; 7 uses
  %i.mw = add nsw i32 %i.jp, -2
  store i32 %i.mw, ptr %i.a, align 4, !tbaa !8
  %i.mx = mul nsw i32 %i.md, %i.m
  %i.my = mul nsw i32 %i.jp, %i.m
  %i.mz = sext i32 %i.mo to i64                   ; 2 uses
  %i.na = sext i32 %i.mx to i64                   ; 2 uses
  %i.nb = sext i32 %i.my to i64                   ; 2 uses
  %wide.trip.count = zext nneg i32 %i.md to i64   ; 4 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.t, i64 %i.mz ; 4 uses
  %invariant.gep983 = getelementptr [8 x i8], ptr %i.t, i64 %i.ao ; 4 uses
  %invariant.gep985 = getelementptr [8 x i8], ptr %i.o, i64 %i.na ; 4 uses
  %invariant.gep987 = getelementptr [8 x i8], ptr %i.o, i64 %i.nb ; 4 uses
  %i.nc = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %min.iters.check = icmp ult i64 %i.nc, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.nd = shl nsw i64 %i.na, 3                    ; 2 uses
  %scevgep1040 = getelementptr i8, ptr %scevgep, i64 %i.nd ; 3 uses
  %i.ne = shl nuw nsw i64 %wide.trip.count, 3     ; 4 uses
  %i.nf = getelementptr i8, ptr %scevgep1041, i64 %i.nd
  %scevgep1042 = getelementptr i8, ptr %i.nf, i64 %i.ne ; 3 uses
  %i.ng = shl nsw i64 %i.nb, 3                    ; 2 uses
  %scevgep1044 = getelementptr i8, ptr %scevgep1043, i64 %i.ng ; 3 uses
  %i.nh = getelementptr i8, ptr %scevgep1045, i64 %i.ng
  %scevgep1046 = getelementptr i8, ptr %i.nh, i64 %i.ne ; 3 uses
  %i.ni = shl nsw i64 %i.ao, 3                    ; 2 uses
  %scevgep1048 = getelementptr i8, ptr %scevgep1047, i64 %i.ni ; 2 uses
  %i.nj = getelementptr i8, ptr %scevgep1049, i64 %i.ni
  %scevgep1050 = getelementptr i8, ptr %i.nj, i64 %i.ne ; 2 uses
  %i.nk = shl nsw i64 %i.mz, 3                    ; 2 uses
  %scevgep1052 = getelementptr i8, ptr %scevgep1051, i64 %i.nk ; 2 uses
  %i.nl = getelementptr i8, ptr %scevgep1053, i64 %i.nk
  %scevgep1054 = getelementptr i8, ptr %i.nl, i64 %i.ne ; 2 uses
  %bound0 = icmp ult ptr %scevgep1040, %scevgep1046
  %bound1 = icmp ult ptr %scevgep1044, %scevgep1042
  %found.conflict = and i1 %bound0, %bound1
  %bound01055 = icmp ult ptr %scevgep1040, %scevgep1050
  %bound11056 = icmp ult ptr %scevgep1048, %scevgep1042
  %found.conflict1057 = and i1 %bound01055, %bound11056
  %conflict.rdx = or i1 %found.conflict, %found.conflict1057
  %bound01058 = icmp ult ptr %scevgep1040, %scevgep1054
  %bound11059 = icmp ult ptr %scevgep1052, %scevgep1042
  %found.conflict1060 = and i1 %bound01058, %bound11059
  %conflict.rdx1061 = or i1 %conflict.rdx, %found.conflict1060
  %bound01062 = icmp ult ptr %scevgep1044, %scevgep1050
  %bound11063 = icmp ult ptr %scevgep1048, %scevgep1046
  %found.conflict1064 = and i1 %bound01062, %bound11063
  %conflict.rdx1065 = or i1 %conflict.rdx1061, %found.conflict1064
  %bound01066 = icmp ult ptr %scevgep1044, %scevgep1054
  %bound11067 = icmp ult ptr %scevgep1052, %scevgep1046
  %found.conflict1068 = and i1 %bound01066, %bound11067
  %conflict.rdx1069 = or i1 %conflict.rdx1065, %found.conflict1068
  br i1 %conflict.rdx1069, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.nc, -4                      ; 3 uses
  %i.nm = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.mj, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1070 = insertelement <4 x double> poison, double %i.mm, i64 0
  %broadcast.splat1071 = shufflevector <4 x double> %broadcast.splatinsert1070, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1072 = insertelement <4 x double> poison, double %i.mt, i64 0
  %broadcast.splat1073 = shufflevector <4 x double> %broadcast.splatinsert1072, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1074 = insertelement <4 x double> poison, double %i.mv, i64 0
  %broadcast.splat1075 = shufflevector <4 x double> %broadcast.splatinsert1074, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.nn = or disjoint i64 %index, 1               ; 4 uses
  %i.no = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.nn ; 2 uses
  %wide.load = load <4 x double>, ptr %i.no, align 8, !tbaa !9, !alias.scope !15
  %i.np = getelementptr [8 x i8], ptr %invariant.gep983, i64 %i.nn ; 2 uses
  %wide.load1076 = load <4 x double>, ptr %i.np, align 8, !tbaa !9, !alias.scope !18
  %i.nq = fneg <4 x double> %wide.load1076
  %i.nr = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1071, <4 x double> %wide.load, <4 x double> %i.nq)
  %i.ns = fdiv <4 x double> %i.nr, %broadcast.splat
  %i.nt = fmul <4 x double> %broadcast.splat1075, %i.ns
  %i.nu = getelementptr [8 x i8], ptr %invariant.gep985, i64 %i.nn
  store <4 x double> %i.nt, ptr %i.nu, align 8, !tbaa !9, !alias.scope !20, !noalias !22
  %wide.load1077 = load <4 x double>, ptr %i.np, align 8, !tbaa !9, !alias.scope !18
  %wide.load1078 = load <4 x double>, ptr %i.no, align 8, !tbaa !9, !alias.scope !15
  %i.nv = fneg <4 x double> %wide.load1078
  %i.nw = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1073, <4 x double> %wide.load1077, <4 x double> %i.nv)
  %i.nx = fdiv <4 x double> %i.nw, %broadcast.splat
  %i.ny = fmul <4 x double> %broadcast.splat1075, %i.nx
  %i.nz = getelementptr [8 x i8], ptr %invariant.gep987, i64 %i.nn
  store <4 x double> %i.ny, ptr %i.nz, align 8, !tbaa !9, !alias.scope !24, !noalias !25
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.oa = icmp eq i64 %index.next, %n.vec
  br i1 %i.oa, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.nc, %n.vec
  br i1 %cmp.n, label %.loopexit772, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph ], [ %i.nm, %middle.block ] ; 7 uses
  %i.ob = and i32 %i.jp, 1
  %lcmp.mod.not = icmp eq i32 %i.ob, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.ph ; 2 uses
  %i.oc = load double, ptr %gep.prol, align 8, !tbaa !9
  %gep984.prol = getelementptr [8 x i8], ptr %invariant.gep983, i64 %indvars.iv.ph ; 2 uses
  %i.od = load double, ptr %gep984.prol, align 8, !tbaa !9
  %i.oe = fneg double %i.od
  %i.of = call double @llvm.fmuladd.f64(double %i.mm, double %i.oc, double %i.oe)
  %i.og = fdiv double %i.of, %i.mj
  %i.oh = fmul double %i.mv, %i.og
  %gep986.prol = getelementptr [8 x i8], ptr %invariant.gep985, i64 %indvars.iv.ph
  store double %i.oh, ptr %gep986.prol, align 8, !tbaa !9
  %i.oi = load double, ptr %gep984.prol, align 8, !tbaa !9
  %i.oj = load double, ptr %gep.prol, align 8, !tbaa !9
  %i.ok = fneg double %i.oj
  %i.ol = call double @llvm.fmuladd.f64(double %i.mt, double %i.oi, double %i.ok)
  %i.om = fdiv double %i.ol, %i.mj
  %i.on = fmul double %i.mv, %i.om
  %gep988.prol = getelementptr [8 x i8], ptr %invariant.gep987, i64 %indvars.iv.ph
  store double %i.on, ptr %gep988.prol, align 8, !tbaa !9
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.oo = add nsw i64 %wide.trip.count, -1
  %i.op = icmp eq i64 %indvars.iv.ph, %i.oo
  br i1 %i.op, label %.loopexit772, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.oq = load double, ptr %gep, align 8, !tbaa !9
  %gep984 = getelementptr [8 x i8], ptr %invariant.gep983, i64 %indvars.iv ; 2 uses
end_hunk_0
begin_hunk_1_@dlasyf_rk_:bb.a
  %i.aiw = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1126, <4 x double> %wide.load1131, <4 x double> %i.aiv)
  %i.aix = fdiv <4 x double> %i.aiw, %broadcast.splat1122
  %i.aiy = fmul <4 x double> %broadcast.splat1124, %i.aix
  %i.aiz = getelementptr [8 x i8], ptr %invariant.gep1002, i64 %i.ain
  store <4 x double> %i.aiy, ptr %i.aiz, align 8, !tbaa !9, !alias.scope !43, !noalias !44
  %index.next1133 = add nuw i64 %index1128, 4     ; 2 uses
  %i.aja = icmp eq i64 %index.next1133, %n.vec1118
  br i1 %i.aja, label %middle.block1134, label %vector.body1127, !llvm.loop !45

middle.block1134:                                 ; preds = %vector.body1127
  %cmp.n1135 = icmp eq i64 %i.ahv, %n.vec1118
  br i1 %cmp.n1135, label %.loopexit770, label %scalar.ph1115.preheader

scalar.ph1115.preheader:                          ; preds = %vector.memcheck1079, %.lr.ph806, %middle.block1134
  %indvars.iv851.ph = phi i64 [ %i.ahm, %vector.memcheck1079 ], [ %i.ahm, %.lr.ph806 ], [ %i.aim, %middle.block1134 ] ; 7 uses
  %i.ajb = trunc i64 %indvars.iv851.ph to i32     ; 2 uses
  %i.ajc = add i32 %i.agn, %i.ajb
  %i.ajd = and i32 %i.ajc, 1
  %lcmp.mod1156.not.not = icmp eq i32 %i.ajd, 0
  br i1 %lcmp.mod1156.not.not, label %scalar.ph1115.prol, label %scalar.ph1115.prol.loopexit

scalar.ph1115.prol:                               ; preds = %scalar.ph1115.preheader
  %gep997.prol = getelementptr [8 x i8], ptr %invariant.gep996, i64 %indvars.iv851.ph ; 2 uses
  %i.aje = load double, ptr %gep997.prol, align 8, !tbaa !9
  %gep999.prol = getelementptr [8 x i8], ptr %invariant.gep998, i64 %indvars.iv851.ph ; 2 uses
  %i.ajf = load double, ptr %gep999.prol, align 8, !tbaa !9
  %i.ajg = fneg double %i.ajf
  %i.ajh = call double @llvm.fmuladd.f64(double %i.aha, double %i.aje, double %i.ajg)
  %i.aji = fdiv double %i.ajh, %i.agv
  %i.ajj = fmul double %i.ahh, %i.aji
  %gep1001.prol = getelementptr [8 x i8], ptr %invariant.gep1000, i64 %indvars.iv851.ph
  store double %i.ajj, ptr %gep1001.prol, align 8, !tbaa !9
  %i.ajk = load double, ptr %gep999.prol, align 8, !tbaa !9
  %i.ajl = load double, ptr %gep997.prol, align 8, !tbaa !9
  %i.ajm = fneg double %i.ajl
  %i.ajn = call double @llvm.fmuladd.f64(double %i.ahf, double %i.ajk, double %i.ajm)
  %i.ajo = fdiv double %i.ajn, %i.agv
  %i.ajp = fmul double %i.ahh, %i.ajo
  %gep1003.prol = getelementptr [8 x i8], ptr %invariant.gep1002, i64 %indvars.iv851.ph
  store double %i.ajp, ptr %gep1003.prol, align 8, !tbaa !9
  %indvars.iv.next852.prol = add nsw i64 %indvars.iv851.ph, 1
  br label %scalar.ph1115.prol.loopexit

scalar.ph1115.prol.loopexit:                      ; preds = %scalar.ph1115.prol, %scalar.ph1115.preheader
  %indvars.iv851.unr = phi i64 [ %indvars.iv851.ph, %scalar.ph1115.preheader ], [ %indvars.iv.next852.prol, %scalar.ph1115.prol ]
  %i.ajq = icmp eq i32 %i.agn, %i.ajb
  br i1 %i.ajq, label %.loopexit770, label %scalar.ph1115

scalar.ph1115:                                    ; preds = %scalar.ph1115.prol.loopexit, %scalar.ph1115
  %indvars.iv851 = phi i64 [ %indvars.iv.next852.1, %scalar.ph1115 ], [ %indvars.iv851.unr, %scalar.ph1115.prol.loopexit ] ; 6 uses
  %gep997 = getelementptr [8 x i8], ptr %invariant.gep996, i64 %indvars.iv851 ; 2 uses
  %i.ajr = load double, ptr %gep997, align 8, !tbaa !9
  %gep999 = getelementptr [8 x i8], ptr %invariant.gep998, i64 %indvars.iv851 ; 2 uses
  %i.ajs = load double, ptr %gep999, align 8, !tbaa !9
  %i.ajt = fneg double %i.ajs
  %i.aju = call double @llvm.fmuladd.f64(double %i.aha, double %i.ajr, double %i.ajt)
  %i.ajv = fdiv double %i.aju, %i.agv
  %i.ajw = fmul double %i.ahh, %i.ajv
  %gep1001 = getelementptr [8 x i8], ptr %invariant.gep1000, i64 %indvars.iv851
  store double %i.ajw, ptr %gep1001, align 8, !tbaa !9
  %i.ajx = load double, ptr %gep999, align 8, !tbaa !9
  %i.ajy = load double, ptr %gep997, align 8, !tbaa !9
  %i.ajz = fneg double %i.ajy
  %i.aka = call double @llvm.fmuladd.f64(double %i.ahf, double %i.ajx, double %i.ajz)
  %i.akb = fdiv double %i.aka, %i.agv
  %i.akc = fmul double %i.ahh, %i.akb
  %gep1003 = getelementptr [8 x i8], ptr %invariant.gep1002, i64 %indvars.iv851
  store double %i.akc, ptr %gep1003, align 8, !tbaa !9
  %indvars.iv.next852 = add nsw i64 %indvars.iv851, 1 ; 4 uses
  %gep997.1 = getelementptr [8 x i8], ptr %invariant.gep996, i64 %indvars.iv.next852 ; 2 uses
  %i.akd = load double, ptr %gep997.1, align 8, !tbaa !9
  %gep999.1 = getelementptr [8 x i8], ptr %invariant.gep998, i64 %indvars.iv.next852 ; 2 uses
  %i.ake = load double, ptr %gep999.1, align 8, !tbaa !9
  %i.akf = fneg double %i.ake
  %i.akg = call double @llvm.fmuladd.f64(double %i.aha, double %i.akd, double %i.akf)
  %i.akh = fdiv double %i.akg, %i.agv
  %i.aki = fmul double %i.ahh, %i.akh
  %gep1001.1 = getelementptr [8 x i8], ptr %invariant.gep1000, i64 %indvars.iv.next852
  store double %i.aki, ptr %gep1001.1, align 8, !tbaa !9
  %i.akj = load double, ptr %gep999.1, align 8, !tbaa !9
  %i.akk = load double, ptr %gep997.1, align 8, !tbaa !9
  %i.akl = fneg double %i.akk
  %i.akm = call double @llvm.fmuladd.f64(double %i.ahf, double %i.akj, double %i.akl)
  %i.akn = fdiv double %i.akm, %i.agv
  %i.ako = fmul double %i.ahh, %i.akn
  %gep1003.1 = getelementptr [8 x i8], ptr %invariant.gep1002, i64 %indvars.iv.next852
  store double %i.ako, ptr %gep1003.1, align 8, !tbaa !9
  %indvars.iv.next852.1 = add nsw i64 %indvars.iv851, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next852.1 to i32
  %exitcond854.not.1 = icmp eq i32 %i.ahr, %lftr.wideiv.1
  br i1 %exitcond854.not.1, label %.loopexit770, label %scalar.ph1115, !llvm.loop !46

.sink.split1011:                                  ; preds = %.prol.loopexit, %.lr.ph810.new, %bb.bv, %bb.bw, %bb.bd
  %.sink = phi i32 [ %i.vu, %bb.bd ], [ %.pre875, %bb.bv ], [ %i.aee, %bb.bw ], [ %i.aee, %.lr.ph810.new ], [ %i.aee, %.prol.loopexit ] ; 2 uses
  %.11.ph.ph = phi i32 [ %.66521034, %bb.bd ], [ %.10742, %bb.bv ], [ %.10742, %bb.bw ], [ %.10742, %.lr.ph810.new ], [ %.10742, %.prol.loopexit ]
  %i.akp = sext i32 %.sink to i64
  %i.akq = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.akp
  store double 0.000000e+00, ptr %i.akq, align 8, !tbaa !9
  br label %bb.bz

bb.bz:                                            ; preds = %.sink.split1011, %bb.bd, %bb.bt
  %i.akr = phi i32 [ %i.aee, %bb.bt ], [ %i.vu, %bb.bd ], [ %.sink, %.sink.split1011 ] ; 2 uses
  %.11.ph = phi i32 [ %.10742, %bb.bt ], [ %.66521034, %bb.bd ], [ %.11.ph.ph, %.sink.split1011 ]
  %i.aks = load i32, ptr %i.l, align 4, !tbaa !8
  %i.akt = sext i32 %i.akr to i64
  %i.aku = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.akt
  store i32 %i.aks, ptr %i.aku, align 4, !tbaa !8
  br label %bb.ca

.loopexit770:                                     ; preds = %scalar.ph1115.prol.loopexit, %scalar.ph1115, %middle.block1134, %..loopexit770_crit_edge, %bb.by
  %.pre-phi896 = phi i64 [ %.pre895, %..loopexit770_crit_edge ], [ %i.agt, %bb.by ], [ %i.agt, %middle.block1134 ], [ %i.agt, %scalar.ph1115 ], [ %i.agt, %scalar.ph1115.prol.loopexit ]
  %.pre-phi890 = phi i64 [ %.pre889, %..loopexit770_crit_edge ], [ %i.agx, %bb.by ], [ %i.agx, %middle.block1134 ], [ %i.agx, %scalar.ph1115 ], [ %i.agx, %scalar.ph1115.prol.loopexit ]
  %i.akv = mul i32 %i.agm, %i.tc
  %i.akw = sext i32 %i.akv to i64
  %i.akx = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.akw
  %i.aky = load double, ptr %i.akx, align 8, !tbaa !9
  %i.akz = mul i32 %i.agm, %i.tb
  %i.ala = sext i32 %i.akz to i64
  %i.alb = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.ala
  store double %i.aky, ptr %i.alb, align 8, !tbaa !9
  %i.alc = mul nsw i32 %i.agm, %i.m
  %i.ald = add nsw i32 %i.agq, %i.alc
  %i.ale = sext i32 %i.ald to i64
  %i.alf = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.ale
  store double 0.000000e+00, ptr %i.alf, align 8, !tbaa !9
  %i.alg = getelementptr inbounds [8 x i8], ptr %i.t, i64 %.pre-phi890
  %i.alh = load double, ptr %i.alg, align 8, !tbaa !9
  %i.ali = mul i32 %i.agq, %i.tb
  %i.alj = sext i32 %i.ali to i64
  %i.alk = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.alj
  store double %i.alh, ptr %i.alk, align 8, !tbaa !9
  %i.all = getelementptr inbounds [8 x i8], ptr %i.t, i64 %.pre-phi896
  %i.alm = load double, ptr %i.all, align 8, !tbaa !9
  %i.aln = sext i32 %i.agm to i64                 ; 2 uses
  %i.alo = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.aln
  %i.alp = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.alm, i64 0
  store <2 x double> %i.alp, ptr %i.alo, align 8, !tbaa !9
  %i.alq = load i32, ptr %i.h, align 4, !tbaa !8
  %i.alr = sub nsw i32 0, %i.alq
  %i.als = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.aln ; 2 uses
  store i32 %i.alr, ptr %i.als, align 4, !tbaa !8
  %i.alt = load i32, ptr %i.l, align 4, !tbaa !8
  %i.alu = sub nsw i32 0, %i.alt
  %i.alv = getelementptr i8, ptr %i.als, i64 4
  store i32 %i.alu, ptr %i.alv, align 4, !tbaa !8
  br label %bb.ca

bb.ca:                                            ; preds = %.loopexit770, %bb.bz
  %i.alw = phi i32 [ %i.agm, %.loopexit770 ], [ %i.akr, %bb.bz ]
  %.7753 = phi i32 [ 2, %.loopexit770 ], [ 1, %bb.bz ]
  %.11751 = phi i32 [ %.10742, %.loopexit770 ], [ %.11.ph, %bb.bz ]
  %i.alx = add nsw i32 %i.alw, %.7753             ; 5 uses
  %.pre869.pre = load i32, ptr %1, align 4, !tbaa !8 ; 4 uses
  store i32 %i.alx, ptr %i.g, align 4, !tbaa !8
  %i.aly = load i32, ptr %2, align 4, !tbaa !8    ; 3 uses
  %.not697 = icmp sge i32 %i.alx, %i.aly
  %i.alz = icmp slt i32 %i.aly, %.pre869.pre
  %or.cond966 = select i1 %.not697, i1 %i.alz, i1 false
  %i.ama = icmp sgt i32 %i.alx, %.pre869.pre
  %or.cond967 = select i1 %or.cond966, i1 true, i1 %i.ama
  br i1 %or.cond967, label %._crit_edge1037, label %bb.aw

._crit_edge1037:                                  ; preds = %bb.ca, %bb.av
  %.pre869.lcssa = phi i32 [ %i.sy, %bb.av ], [ %.pre869.pre, %bb.ca ] ; 3 uses
  %storemerge.lcssa = phi i32 [ 1, %bb.av ], [ %i.alx, %bb.ca ] ; 4 uses
  %.lcssa1022 = phi i32 [ %i.td, %bb.av ], [ %i.aly, %bb.ca ] ; 2 uses
  store i32 %.pre869.lcssa, ptr %i.a, align 4, !tbaa !8
  store i32 %.lcssa1022, ptr %i.b, align 4, !tbaa !8
  %i.amb = icmp slt i32 %.lcssa1022, 0
  %i.amc = icmp sge i32 %storemerge.lcssa, %.pre869.lcssa
  %i.amd = icmp sle i32 %storemerge.lcssa, %.pre869.lcssa
  %.in816 = select i1 %i.amb, i1 %i.amc, i1 %i.amd
  br i1 %.in816, label %.lr.ph819, label %._crit_edge820

.lr.ph819:                                        ; preds = %._crit_edge1037
  %i.ame = sext i32 %i.m to i64
  %i.amf = sext i32 %i.r to i64
  %invariant.gep1006 = getelementptr [8 x i8], ptr %i.o, i64 %i.ame
  %invariant.gep1008 = getelementptr [8 x i8], ptr %i.t, i64 %i.amf
  br label %bb.cb

bb.cb:                                            ; preds = %.lr.ph819, %bb.cd
  %.3645817 = phi i32 [ %storemerge.lcssa, %.lr.ph819 ], [ %i.anq, %bb.cd ] ; 9 uses
  %i.amg = load i32, ptr %2, align 4, !tbaa !8
  %i.amh = load i32, ptr %1, align 4, !tbaa !8    ; 2 uses
  %i.ami = sub nsw i32 %i.amh, %.3645817
  %i.amj = add nsw i32 %i.ami, 1
  %i.amk = call i32 @llvm.smin.i32(i32 %i.amg, i32 %i.amj) ; 3 uses
  store i32 %i.amk, ptr %i.j, align 4, !tbaa !8
  %i.aml = add i32 %.3645817, -1
  %i.amm = add i32 %i.aml, %i.amk                 ; 2 uses
  store i32 %i.amm, ptr %i.c, align 4, !tbaa !8
  %.not706811 = icmp sgt i32 %.3645817, %i.amm
  br i1 %.not706811, label %._crit_edge815, label %.lr.ph814.preheader

.lr.ph814.preheader:                              ; preds = %bb.cb
  %i.amn = sext i32 %.3645817 to i64
  br label %.lr.ph814

.lr.ph814:                                        ; preds = %.lr.ph814.preheader, %.lr.ph814
  %indvars.iv860 = phi i64 [ %i.amn, %.lr.ph814.preheader ], [ %indvars.iv.next861, %.lr.ph814 ] ; 5 uses
  %i.amo = load i32, ptr %i.j, align 4, !tbaa !8
  %i.amp = trunc nsw i64 %indvars.iv860 to i32    ; 2 uses
  %i.amq = sub i32 %.3645817, %i.amp
  %i.amr = add i32 %i.amq, %i.amo
  store i32 %i.amr, ptr %i.d, align 4, !tbaa !8
  %i.ams = load i32, ptr %i.g, align 4, !tbaa !8
  %i.amt = add nsw i32 %i.ams, -1
  store i32 %i.amt, ptr %i.e, align 4, !tbaa !8
  %gep1007 = getelementptr [8 x i8], ptr %invariant.gep1006, i64 %indvars.iv860
  %gep1009 = getelementptr [8 x i8], ptr %invariant.gep1008, i64 %indvars.iv860
  %i.amu = mul i32 %i.tb, %i.amp
  %i.amv = sext i32 %i.amu to i64
  %i.amw = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.amv
  call void @dgemv_(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull @c_b9, ptr noundef %gep1007, ptr noundef nonnull %5, ptr noundef %gep1009, ptr noundef nonnull %9, ptr noundef nonnull @c_b10, ptr noundef %i.amw, ptr noundef nonnull @c__1) #5
  %indvars.iv.next861 = add nsw i64 %indvars.iv860, 1
  %i.amx = load i32, ptr %i.c, align 4, !tbaa !8
  %i.amy = sext i32 %i.amx to i64
  %.not706.not = icmp slt i64 %indvars.iv860, %i.amy
  br i1 %.not706.not, label %.lr.ph814, label %._crit_edge815.loopexit, !llvm.loop !47

._crit_edge815.loopexit:                          ; preds = %.lr.ph814
  %.pre876 = load i32, ptr %i.j, align 4, !tbaa !8
  %.pre877 = load i32, ptr %1, align 4, !tbaa !8
  br label %._crit_edge815

._crit_edge815:                                   ; preds = %._crit_edge815.loopexit, %bb.cb
  %i.amz = phi i32 [ %.pre877, %._crit_edge815.loopexit ], [ %i.amh, %bb.cb ] ; 2 uses
  %i.ana = phi i32 [ %.pre876, %._crit_edge815.loopexit ], [ %i.amk, %bb.cb ]
  %i.anb = add nsw i32 %i.ana, %.3645817          ; 4 uses
  %.not707 = icmp sgt i32 %i.anb, %i.amz
  br i1 %.not707, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %._crit_edge815
  %reass.sub828 = sub i32 %i.amz, %i.anb
  %i.anc = add i32 %reass.sub828, 1
  store i32 %i.anc, ptr %i.c, align 4, !tbaa !8
  %i.and = load i32, ptr %i.g, align 4, !tbaa !8
  %i.ane = add nsw i32 %i.and, -1
  store i32 %i.ane, ptr %i.d, align 4, !tbaa !8
  %i.anf = add nsw i32 %i.anb, %i.m
  %i.ang = sext i32 %i.anf to i64
  %i.anh = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.ang
  %i.ani = add nsw i32 %.3645817, %i.r
  %i.anj = sext i32 %i.ani to i64
  %i.ank = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.anj
  %i.anl = mul nsw i32 %.3645817, %i.m
  %i.anm = add nsw i32 %i.anb, %i.anl
  %i.ann = sext i32 %i.anm to i64
  %i.ano = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.ann
  call void @dgemm_(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.c, ptr noundef nonnull %i.j, ptr noundef nonnull %i.d, ptr noundef nonnull @c_b9, ptr noundef %i.anh, ptr noundef nonnull %5, ptr noundef %i.ank, ptr noundef nonnull %9, ptr noundef nonnull @c_b10, ptr noundef %i.ano, ptr noundef nonnull %5) #5
  br label %bb.cd

bb.cd:                                            ; preds = %._crit_edge815, %bb.cc
  %i.anp = load i32, ptr %i.b, align 4, !tbaa !8  ; 2 uses
  %i.anq = add nsw i32 %i.anp, %.3645817          ; 3 uses
  %i.anr = icmp slt i32 %i.anp, 0
  %i.ans = load i32, ptr %i.a, align 4            ; 2 uses
  %i.ant = icmp sge i32 %i.anq, %i.ans
  %i.anu = icmp sle i32 %i.anq, %i.ans
  %.in = select i1 %i.anr, i1 %i.ant, i1 %i.anu
  br i1 %.in, label %bb.cb, label %._crit_edge820.loopexit, !llvm.loop !48

._crit_edge820.loopexit:                          ; preds = %bb.cd
  %.pre878 = load i32, ptr %i.g, align 4, !tbaa !8
  br label %._crit_edge820

._crit_edge820:                                   ; preds = %._crit_edge820.loopexit, %._crit_edge1037
  %i.anv = phi i32 [ %.pre878, %._crit_edge820.loopexit ], [ %storemerge.lcssa, %._crit_edge1037 ]
  %i.anw = add nsw i32 %i.anv, -1
  br label %bb.ce

bb.ce:                                            ; preds = %._crit_edge820, %._crit_edge802
  %storemerge704 = phi i32 [ %i.anw, %._crit_edge820 ], [ %i.sx, %._crit_edge802 ]
  store i32 %storemerge704, ptr %3, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare double @dlamch_(ptr noundef) local_unnamed_addr #2

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dcopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dgemv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @idamax_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dswap_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare void @dgemm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !6, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = !{!16}
!16 = distinct !{!16, !17}
!17 = distinct !{!17, !"LVerDomain"}
!18 = !{!19}
!19 = distinct !{!19, !17}
!20 = !{!21}
!21 = distinct !{!21, !17}
!22 = !{!23, !19, !16}
!23 = distinct !{!23, !17}
!24 = !{!23}
!25 = !{!19, !16}
!26 = distinct !{!26, !12, !27, !28}
!27 = !{!"llvm.loop.isvectorized", i32 1}
!28 = !{!"llvm.loop.unroll.runtime.disable"}
!29 = distinct !{!29, !12, !27}
!30 = distinct !{!30, !12}
!31 = distinct !{!31, !12}
!32 = distinct !{!32, !14}
!33 = distinct !{!33, !12}
!34 = !{!35}
!35 = distinct !{!35, !36}
!36 = distinct !{!36, !"LVerDomain"}
!37 = !{!38}
!38 = distinct !{!38, !36}
!39 = !{!40}
!40 = distinct !{!40, !36}
!41 = !{!42, !38, !35}
!42 = distinct !{!42, !36}
!43 = !{!42}
!44 = !{!38, !35}
!45 = distinct !{!45, !12, !27, !28}
!46 = distinct !{!46, !12, !27}
!47 = distinct !{!47, !12}
!48 = distinct !{!48, !12}
end_hunk_1

inline.NumInlined: 6
inline.NumDeleted: 3
begin_hunk_0_@ucm_optimizeStates:bb.a
  store i32 %i.ig, ptr %i.ie, align 4
  %indvars.iv.next264.i = add nuw nsw i64 %indvars.iv263.i, 1 ; 2 uses
  %i.ih = load i32, ptr %i.c, align 4
  %i.ii = sext i32 %i.ih to i64
  %i.ij = icmp slt i64 %indvars.iv.next264.i, %i.ii
  br i1 %i.ij, label %.lr.ph226.i, label %._crit_edge227.i, !llvm.loop !39

._crit_edge227.i:                                 ; preds = %.lr.ph226.i, %.preheader211.i
  %i.ik = tail call fastcc noundef i32 @_ZL11sumUpStatesP9UCMStates(ptr noundef nonnull %0) ; 5 uses
  %i.il = load ptr, ptr %1, align 8               ; 8 uses
  %i.im = icmp eq i32 %i.ik, 0
  br i1 %i.im, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %._crit_edge227.i
  store ptr null, ptr %1, align 8
  %.not192.i = icmp eq ptr %i.il, null
  br i1 %.not192.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @uprv_free_78(ptr noundef nonnull %i.il) #17
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  tail call void @uprv_free_78(ptr noundef nonnull %i.gc) #17
  br label %_ZL17compactToUnicode2P9UCMStatesPPtP16_MBCSToUFallbackia.exit

bb.ae:                                            ; preds = %._crit_edge227.i
  %i.in = sext i32 %i.ik to i64                   ; 2 uses
  %i.io = shl nsw i64 %i.in, 1
  %i.ip = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.io) #20 ; 2 uses
  store ptr %i.ip, ptr %1, align 8
  %i.iq = icmp eq ptr %i.ip, null
  br i1 %i.iq, label %bb.af, label %.preheader210.i

.preheader210.i:                                  ; preds = %bb.ae
  %i.ir = icmp sgt i32 %i.ik, 0
  br i1 %i.ir, label %.lr.ph229.preheader.i, label %.preheader209.i

.lr.ph229.preheader.i:                            ; preds = %.preheader210.i
  %wide.trip.count269.i = zext nneg i32 %i.ik to i64 ; 2 uses
  %xtraiter118 = and i64 %wide.trip.count269.i, 3 ; 3 uses
  %i.is = icmp ult i32 %i.ik, 4
  br i1 %i.is, label %.lr.ph229.i.epil.preheader, label %.lr.ph229.preheader.i.new

.lr.ph229.preheader.i.new:                        ; preds = %.lr.ph229.preheader.i
  %unroll_iter122 = and i64 %wide.trip.count269.i, 2147483644
  br label %.lr.ph229.i

bb.af:                                            ; preds = %bb.ae
  %i.it = load ptr, ptr @stderr, align 8
  %i.iu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.it, ptr noundef nonnull @.str.58, i64 noundef %i.in) #15 ; 0 uses
  store ptr %i.il, ptr %1, align 8
  %i.iv = load i32, ptr %i.c, align 4
  %i.iw = add nsw i32 %i.iv, -1                   ; 2 uses
  store i32 %i.iw, ptr %i.c, align 4
  %i.ix = shl nsw i32 %i.iw, 10
  %i.iy = sext i32 %i.ix to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %0, ptr nonnull align 4 %i.gc, i64 %i.iy, i1 false)
  tail call void @uprv_free_78(ptr noundef nonnull %i.gc) #17
  br label %_ZL17compactToUnicode2P9UCMStatesPPtP16_MBCSToUFallbackia.exit

.preheader209.i.loopexit.unr-lcssa:               ; preds = %.lr.ph229.i
  %lcmp.mod120.not = icmp eq i64 %xtraiter118, 0
  br i1 %lcmp.mod120.not, label %.preheader209.i, label %.lr.ph229.i.epil.preheader

.lr.ph229.i.epil.preheader:                       ; preds = %.preheader209.i.loopexit.unr-lcssa, %.lr.ph229.preheader.i
  %indvars.iv266.i.epil.init = phi i64 [ 0, %.lr.ph229.preheader.i ], [ %indvars.iv.next267.i.3, %.preheader209.i.loopexit.unr-lcssa ]
  %lcmp.mod121 = icmp ne i64 %xtraiter118, 0
  tail call void @llvm.assume(i1 %lcmp.mod121)
  br label %.lr.ph229.i.epil

.lr.ph229.i.epil:                                 ; preds = %.lr.ph229.i.epil, %.lr.ph229.i.epil.preheader
  %indvars.iv266.i.epil = phi i64 [ %indvars.iv266.i.epil.init, %.lr.ph229.i.epil.preheader ], [ %indvars.iv.next267.i.epil, %.lr.ph229.i.epil ] ; 2 uses
  %epil.iter119 = phi i64 [ 0, %.lr.ph229.i.epil.preheader ], [ %epil.iter119.next, %.lr.ph229.i.epil ]
  %i.iz = load ptr, ptr %1, align 8
  %i.ja = getelementptr inbounds nuw [2 x i8], ptr %i.iz, i64 %indvars.iv266.i.epil
  store i16 -2, ptr %i.ja, align 2
  %indvars.iv.next267.i.epil = add nuw nsw i64 %indvars.iv266.i.epil, 1
  %epil.iter119.next = add i64 %epil.iter119, 1   ; 2 uses
  %epil.iter119.cmp.not = icmp eq i64 %epil.iter119.next, %xtraiter118
  br i1 %epil.iter119.cmp.not, label %.preheader209.i, label %.lr.ph229.i.epil, !llvm.loop !40

.preheader209.i:                                  ; preds = %.preheader209.i.loopexit.unr-lcssa, %.lr.ph229.i.epil, %.preheader210.i
  %i.jb = load i32, ptr %i.c, align 4             ; 3 uses
  %i.jc = icmp sgt i32 %i.jb, 0
  br i1 %i.jc, label %.lr.ph238.i, label %.preheader.i

.lr.ph238.i:                                      ; preds = %.preheader209.i
  br i1 %i.dp, label %.lr.ph238.split.us.i, label %.lr.ph238.split.i

.lr.ph238.split.us.i:                             ; preds = %.lr.ph238.i, %.loopexit208.split.us.us.i
  %i.jd = phi i32 [ %i.ji, %.loopexit208.split.us.us.i ], [ %i.jb, %.lr.ph238.i ]
  %indvars.iv290.i = phi i64 [ %indvars.iv.next291.i, %.loopexit208.split.us.us.i ], [ 0, %.lr.ph238.i ] ; 4 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv290.i
  %i.jf = load i32, ptr %i.je, align 4
  %i.jg = and i32 %i.jf, 15
  %i.jh = icmp eq i32 %i.jg, 1
  br i1 %i.jh, label %.preheader207.us.i, label %.loopexit208.split.us.us.i

.loopexit208.split.us.us.loopexit.i:              ; preds = %.loopexit.split.us235.us.i
  %.pre299.i = load i32, ptr %i.c, align 4
  br label %.loopexit208.split.us.us.i

.loopexit208.split.us.us.i:                       ; preds = %.loopexit208.split.us.us.loopexit.i, %.lr.ph238.split.us.i
  %i.ji = phi i32 [ %.pre299.i, %.loopexit208.split.us.us.loopexit.i ], [ %i.jd, %.lr.ph238.split.us.i ] ; 2 uses
  %indvars.iv.next291.i = add nuw nsw i64 %indvars.iv290.i, 1 ; 2 uses
  %i.jj = sext i32 %i.ji to i64
  %i.jk = icmp slt i64 %indvars.iv.next291.i, %i.jj
  br i1 %i.jk, label %.lr.ph238.split.us.i, label %.preheader.i, !llvm.loop !41

.preheader207.us.i:                               ; preds = %.lr.ph238.split.us.i
  %i.jl = getelementptr inbounds nuw [1024 x i8], ptr %0, i64 %indvars.iv290.i
  %i.jm = getelementptr inbounds nuw [1024 x i8], ptr %i.gc, i64 %indvars.iv290.i
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit.split.us235.us.i, %.preheader207.us.i
  %indvars.iv286.i = phi i64 [ %indvars.iv.next287.i, %.loopexit.split.us235.us.i ], [ 0, %.preheader207.us.i ] ; 3 uses
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %indvars.iv286.i
  %i.jo = load i32, ptr %i.jn, align 4            ; 3 uses
  %i.jp = icmp sgt i32 %i.jo, -1
  br i1 %i.jp, label %bb.ah, label %.loopexit.split.us235.us.i

bb.ah:                                            ; preds = %bb.ag
  %i.jq = lshr i32 %i.jo, 24                      ; 2 uses
  %.not191.us.us.i = icmp eq i32 %i.jq, %i.gg
  br i1 %.not191.us.us.i, label %.loopexit.split.us235.us.i, label %.split231.us236.us.i

.split231.us236.us.i:                             ; preds = %bb.ah
  %i.jr = and i32 %i.jo, 16777215                 ; 2 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %indvars.iv286.i
  %i.jt = load i32, ptr %i.js, align 4
  %i.ju = and i32 %i.jt, 16777215                 ; 2 uses
  %i.jv = zext nneg i32 %i.jq to i64              ; 2 uses
  %i.jw = getelementptr inbounds nuw [1024 x i8], ptr %0, i64 %i.jv
  %i.jx = getelementptr inbounds nuw [1024 x i8], ptr %i.gc, i64 %i.jv ; 2 uses
  br label %bb.ai

bb.ai:                                            ; preds = %ucm_findFallback.exit203.thread.us234.us.i, %.split231.us236.us.i
  %indvars.iv282.i = phi i64 [ %indvars.iv.next283.i, %ucm_findFallback.exit203.thread.us234.us.i ], [ 0, %.split231.us236.us.i ] ; 4 uses
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %indvars.iv282.i
  %i.jz = load i32, ptr %i.jy, align 4            ; 3 uses
  %i.ka = lshr i32 %i.jz, 20
  %i.kb = and i32 %i.ka, 15
  switch i32 %i.kb, label %ucm_findFallback.exit203.thread.us234.us.i [
    i32 4, label %bb.ak
    i32 5, label %bb.aj
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.kc = and i32 %i.jz, 65535
  %i.kd = add nuw nsw i32 %i.kc, %i.jr
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %indvars.iv282.i
  %i.kf = load i32, ptr %i.ke, align 4
  %i.kg = and i32 %i.kf, 65535
  %i.kh = add nuw nsw i32 %i.kg, %i.ju
  %i.ki = zext nneg i32 %i.kh to i64
  %i.kj = getelementptr inbounds nuw [2 x i8], ptr %i.il, i64 %i.ki ; 2 uses
  %i.kk = load i16, ptr %i.kj, align 2
  %i.kl = load ptr, ptr %1, align 8
  %i.km = zext nneg i32 %i.kd to i64              ; 2 uses
  %i.kn = getelementptr inbounds nuw [2 x i8], ptr %i.kl, i64 %i.km
  store i16 %i.kk, ptr %i.kn, align 2
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kj, i64 2
  %i.kp = load i16, ptr %i.ko, align 2
  %i.kq = load ptr, ptr %1, align 8
  %i.kr = getelementptr inbounds nuw [2 x i8], ptr %i.kq, i64 %i.km
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 2
  store i16 %i.kp, ptr %i.ks, align 2
  br label %ucm_findFallback.exit203.thread.us234.us.i

bb.ak:                                            ; preds = %bb.ai
  %i.kt = and i32 %i.jz, 65535
  %i.ku = add nuw nsw i32 %i.kt, %i.jr            ; 2 uses
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %indvars.iv282.i
  %i.kw = load i32, ptr %i.kv, align 4
  %i.kx = and i32 %i.kw, 65535
  %i.ky = add nuw nsw i32 %i.kx, %i.ju            ; 2 uses
  %i.kz = zext nneg i32 %i.ky to i64
  %i.la = getelementptr inbounds nuw [2 x i8], ptr %i.il, i64 %i.kz
  %i.lb = load i16, ptr %i.la, align 2            ; 2 uses
  %i.lc = load ptr, ptr %1, align 8
  %i.ld = zext nneg i32 %i.ku to i64
  %i.le = getelementptr inbounds nuw [2 x i8], ptr %i.lc, i64 %i.ld
  store i16 %i.lb, ptr %i.le, align 2
  %i.lf = icmp eq i16 %i.lb, -2
  br i1 %i.lf, label %.lr.ph.i198.us.us.i, label %ucm_findFallback.exit203.thread.us234.us.i

.lr.ph.i198.us.us.i:                              ; preds = %bb.ak, %bb.al
  %indvars.iv.i199.us.us.i = phi i64 [ %indvars.iv.next.i200.us.us.i, %bb.al ], [ 0, %bb.ak ] ; 3 uses
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i199.us.us.i
  %i.lh = load i32, ptr %i.lg, align 4
  %i.li = icmp eq i32 %i.ky, %i.lh
  br i1 %i.li, label %ucm_findFallback.exit203.us.us.i, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i198.us.us.i
  %indvars.iv.next.i200.us.us.i = add nuw nsw i64 %indvars.iv.i199.us.us.i, 1 ; 2 uses
  %exitcond.not.i201.us.us.i = icmp eq i64 %indvars.iv.next.i200.us.us.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i201.us.us.i, label %ucm_findFallback.exit203.thread.us234.us.i, label %.lr.ph.i198.us.us.i, !llvm.loop !27

ucm_findFallback.exit203.us.us.i:                 ; preds = %.lr.ph.i198.us.us.i
  %5 = or disjoint i32 %i.ku, -2147483648
  %6 = and i64 %indvars.iv.i199.us.us.i, 4294967295
  %7 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %6
  store i32 %5, ptr %7, align 4
  br label %ucm_findFallback.exit203.thread.us234.us.i

ucm_findFallback.exit203.thread.us234.us.i:       ; preds = %bb.al, %ucm_findFallback.exit203.us.us.i, %bb.ak, %bb.aj, %bb.ai
  %indvars.iv.next283.i = add nuw nsw i64 %indvars.iv282.i, 1 ; 2 uses
  %exitcond285.not.i = icmp eq i64 %indvars.iv.next283.i, 256
  br i1 %exitcond285.not.i, label %.loopexit.split.us235.us.i, label %bb.ai, !llvm.loop !42

.loopexit.split.us235.us.i:                       ; preds = %ucm_findFallback.exit203.thread.us234.us.i, %bb.ah, %bb.ag
  %indvars.iv.next287.i = add nuw nsw i64 %indvars.iv286.i, 1 ; 2 uses
  %exitcond289.not.i = icmp eq i64 %indvars.iv.next287.i, 256
  br i1 %exitcond289.not.i, label %.loopexit208.split.us.us.loopexit.i, label %bb.ag, !llvm.loop !43

.lr.ph229.i:                                      ; preds = %.lr.ph229.i, %.lr.ph229.preheader.i.new
  %indvars.iv266.i = phi i64 [ 0, %.lr.ph229.preheader.i.new ], [ %indvars.iv.next267.i.3, %.lr.ph229.i ] ; 5 uses
  %niter123 = phi i64 [ 0, %.lr.ph229.preheader.i.new ], [ %niter123.next.3, %.lr.ph229.i ]
  %i.lj = load ptr, ptr %1, align 8
  %i.lk = getelementptr inbounds nuw [2 x i8], ptr %i.lj, i64 %indvars.iv266.i
  store i16 -2, ptr %i.lk, align 2
  %i.ll = load ptr, ptr %1, align 8
  %i.lm = getelementptr inbounds nuw [2 x i8], ptr %i.ll, i64 %indvars.iv266.i
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 2
  store i16 -2, ptr %i.ln, align 2
  %i.lo = load ptr, ptr %1, align 8
  %i.lp = getelementptr inbounds nuw [2 x i8], ptr %i.lo, i64 %indvars.iv266.i
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 4
  store i16 -2, ptr %i.lq, align 2
  %i.lr = load ptr, ptr %1, align 8
  %i.ls = getelementptr inbounds nuw [2 x i8], ptr %i.lr, i64 %indvars.iv266.i
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 6
  store i16 -2, ptr %i.lt, align 2
  %indvars.iv.next267.i.3 = add nuw nsw i64 %indvars.iv266.i, 4 ; 2 uses
  %niter123.next.3 = add i64 %niter123, 4         ; 2 uses
  %niter123.ncmp.3 = icmp eq i64 %niter123.next.3, %unroll_iter122
  br i1 %niter123.ncmp.3, label %.preheader209.i.loopexit.unr-lcssa, label %.lr.ph229.i, !llvm.loop !44

.preheader.i:                                     ; preds = %.loopexit208.split.i, %.loopexit208.split.us.us.i, %.preheader209.i
  br i1 %i.dp, label %.lr.ph240.i.preheader, label %._crit_edge241.i

.lr.ph240.i.preheader:                            ; preds = %.preheader.i
  %xtraiter124 = and i64 %wide.trip.count.i.i, 3  ; 3 uses
  %i.lu = icmp ult i32 %3, 4
  br i1 %i.lu, label %.lr.ph240.i.epil.preheader, label %.lr.ph240.i.preheader.new

.lr.ph240.i.preheader.new:                        ; preds = %.lr.ph240.i.preheader
  %unroll_iter128 = and i64 %wide.trip.count.i.i, 2147483644
  br label %.lr.ph240.i

.lr.ph238.split.i:                                ; preds = %.lr.ph238.i, %.loopexit208.split.i
  %i.lv = phi i32 [ %i.nu, %.loopexit208.split.i ], [ %i.jb, %.lr.ph238.i ]
  %indvars.iv279.i = phi i64 [ %indvars.iv.next280.i, %.loopexit208.split.i ], [ 0, %.lr.ph238.i ] ; 4 uses
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv279.i
  %i.lx = load i32, ptr %i.lw, align 4
  %i.ly = and i32 %i.lx, 15
  %i.lz = icmp eq i32 %i.ly, 1
  br i1 %i.lz, label %.preheader207.i, label %.loopexit208.split.i

.preheader207.i:                                  ; preds = %.lr.ph238.split.i
  %i.ma = getelementptr inbounds nuw [1024 x i8], ptr %0, i64 %indvars.iv279.i
  %i.mb = getelementptr inbounds nuw [1024 x i8], ptr %i.gc, i64 %indvars.iv279.i
  br label %bb.am

bb.am:                                            ; preds = %.loopexit.split.us.i, %.preheader207.i
  %indvars.iv275.i = phi i64 [ 0, %.preheader207.i ], [ %indvars.iv.next276.i, %.loopexit.split.us.i ] ; 3 uses
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %indvars.iv275.i
  %i.md = load i32, ptr %i.mc, align 4            ; 3 uses
  %i.me = icmp sgt i32 %i.md, -1
  br i1 %i.me, label %bb.an, label %.loopexit.split.us.i

bb.an:                                            ; preds = %bb.am
  %i.mf = lshr i32 %i.md, 24                      ; 2 uses
  %.not191.i = icmp eq i32 %i.mf, %i.gg
  br i1 %.not191.i, label %.loopexit.split.us.i, label %.split231.us.i

.split231.us.i:                                   ; preds = %bb.an
  %i.mg = and i32 %i.md, 16777215                 ; 2 uses
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %indvars.iv275.i
  %i.mi = load i32, ptr %i.mh, align 4
  %i.mj = and i32 %i.mi, 16777215                 ; 2 uses
  %i.mk = zext nneg i32 %i.mf to i64              ; 2 uses
  %i.ml = getelementptr inbounds nuw [1024 x i8], ptr %0, i64 %i.mk
  %i.mm = getelementptr inbounds nuw [1024 x i8], ptr %i.gc, i64 %i.mk ; 2 uses
  br label %bb.ao

bb.ao:                                            ; preds = %ucm_findFallback.exit203.thread.us.i, %.split231.us.i
  %indvars.iv271.i = phi i64 [ %indvars.iv.next272.i, %ucm_findFallback.exit203.thread.us.i ], [ 0, %.split231.us.i ] ; 4 uses
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.ml, i64 %indvars.iv271.i
  %i.mo = load i32, ptr %i.mn, align 4            ; 3 uses
  %i.mp = lshr i32 %i.mo, 20
  %i.mq = and i32 %i.mp, 15
  switch i32 %i.mq, label %ucm_findFallback.exit203.thread.us.i [
    i32 4, label %bb.aq
    i32 5, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.mr = and i32 %i.mo, 65535
  %i.ms = add nuw nsw i32 %i.mr, %i.mg
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.mm, i64 %indvars.iv271.i
  %i.mu = load i32, ptr %i.mt, align 4
  %i.mv = and i32 %i.mu, 65535
  %i.mw = add nuw nsw i32 %i.mv, %i.mj
  %i.mx = zext nneg i32 %i.mw to i64
  %i.my = getelementptr inbounds nuw [2 x i8], ptr %i.il, i64 %i.mx ; 2 uses
  %i.mz = load i16, ptr %i.my, align 2
  %i.na = load ptr, ptr %1, align 8
  %i.nb = zext nneg i32 %i.ms to i64              ; 2 uses
  %i.nc = getelementptr inbounds nuw [2 x i8], ptr %i.na, i64 %i.nb
  store i16 %i.mz, ptr %i.nc, align 2
  %i.nd = getelementptr inbounds nuw i8, ptr %i.my, i64 2
  %i.ne = load i16, ptr %i.nd, align 2
  %i.nf = load ptr, ptr %1, align 8
  %i.ng = getelementptr inbounds nuw [2 x i8], ptr %i.nf, i64 %i.nb
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 2
  store i16 %i.ne, ptr %i.nh, align 2
  br label %ucm_findFallback.exit203.thread.us.i

bb.aq:                                            ; preds = %bb.ao
  %i.ni = and i32 %i.mo, 65535
  %i.nj = add nuw nsw i32 %i.ni, %i.mg
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.mm, i64 %indvars.iv271.i
  %i.nl = load i32, ptr %i.nk, align 4
  %i.nm = and i32 %i.nl, 65535
  %i.nn = add nuw nsw i32 %i.nm, %i.mj
  %i.no = zext nneg i32 %i.nn to i64
  %i.np = getelementptr inbounds nuw [2 x i8], ptr %i.il, i64 %i.no
  %i.nq = load i16, ptr %i.np, align 2
  %i.nr = load ptr, ptr %1, align 8
  %i.ns = zext nneg i32 %i.nj to i64
  %i.nt = getelementptr inbounds nuw [2 x i8], ptr %i.nr, i64 %i.ns
  store i16 %i.nq, ptr %i.nt, align 2
  br label %ucm_findFallback.exit203.thread.us.i

ucm_findFallback.exit203.thread.us.i:             ; preds = %bb.aq, %bb.ap, %bb.ao
  %indvars.iv.next272.i = add nuw nsw i64 %indvars.iv271.i, 1 ; 2 uses
  %exitcond274.not.i = icmp eq i64 %indvars.iv.next272.i, 256
  br i1 %exitcond274.not.i, label %.loopexit.split.us.i, label %bb.ao, !llvm.loop !42

.loopexit.split.us.i:                             ; preds = %ucm_findFallback.exit203.thread.us.i, %bb.an, %bb.am
  %indvars.iv.next276.i = add nuw nsw i64 %indvars.iv275.i, 1 ; 2 uses
  %exitcond278.not.i = icmp eq i64 %indvars.iv.next276.i, 256
  br i1 %exitcond278.not.i, label %.loopexit208.split.loopexit.i, label %bb.am, !llvm.loop !43

.loopexit208.split.loopexit.i:                    ; preds = %.loopexit.split.us.i
  %.pre298.i = load i32, ptr %i.c, align 4
  br label %.loopexit208.split.i

.loopexit208.split.i:                             ; preds = %.loopexit208.split.loopexit.i, %.lr.ph238.split.i
  %i.nu = phi i32 [ %.pre298.i, %.loopexit208.split.loopexit.i ], [ %i.lv, %.lr.ph238.split.i ] ; 2 uses
  %indvars.iv.next280.i = add nuw nsw i64 %indvars.iv279.i, 1 ; 2 uses
  %i.nv = sext i32 %i.nu to i64
  %i.nw = icmp slt i64 %indvars.iv.next280.i, %i.nv
  br i1 %i.nw, label %.lr.ph238.split.i, label %.preheader.i, !llvm.loop !41

.lr.ph240.i:                                      ; preds = %.lr.ph240.i, %.lr.ph240.i.preheader.new
  %indvars.iv293.i = phi i64 [ 0, %.lr.ph240.i.preheader.new ], [ %indvars.iv.next294.i.3, %.lr.ph240.i ] ; 5 uses
  %niter129 = phi i64 [ 0, %.lr.ph240.i.preheader.new ], [ %niter129.next.3, %.lr.ph240.i ]
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv293.i ; 2 uses
  %i.ny = load i32, ptr %i.nx, align 4
  %i.nz = and i32 %i.ny, 2147483647
  store i32 %i.nz, ptr %i.nx, align 4
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv293.i
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 8 ; 2 uses
  %i.oc = load i32, ptr %i.ob, align 4
  %i.od = and i32 %i.oc, 2147483647
  store i32 %i.od, ptr %i.ob, align 4
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv293.i
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 16 ; 2 uses
  %i.og = load i32, ptr %i.of, align 4
  %i.oh = and i32 %i.og, 2147483647
  store i32 %i.oh, ptr %i.of, align 4
  %i.oi = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv293.i
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 24 ; 2 uses
  %i.ok = load i32, ptr %i.oj, align 4
  %i.ol = and i32 %i.ok, 2147483647
  store i32 %i.ol, ptr %i.oj, align 4
  %indvars.iv.next294.i.3 = add nuw nsw i64 %indvars.iv293.i, 4 ; 2 uses
  %niter129.next.3 = add i64 %niter129, 4         ; 2 uses
  %niter129.ncmp.3 = icmp eq i64 %niter129.next.3, %unroll_iter128
  br i1 %niter129.ncmp.3, label %._crit_edge241.i.loopexit.unr-lcssa, label %.lr.ph240.i, !llvm.loop !45

._crit_edge241.i.loopexit.unr-lcssa:              ; preds = %.lr.ph240.i
  %lcmp.mod126.not = icmp eq i64 %xtraiter124, 0
  br i1 %lcmp.mod126.not, label %._crit_edge241.i, label %.lr.ph240.i.epil.preheader

.lr.ph240.i.epil.preheader:                       ; preds = %._crit_edge241.i.loopexit.unr-lcssa, %.lr.ph240.i.preheader
  %indvars.iv293.i.epil.init = phi i64 [ 0, %.lr.ph240.i.preheader ], [ %indvars.iv.next294.i.3, %._crit_edge241.i.loopexit.unr-lcssa ]
  %lcmp.mod127 = icmp ne i64 %xtraiter124, 0
  tail call void @llvm.assume(i1 %lcmp.mod127)
  br label %.lr.ph240.i.epil

.lr.ph240.i.epil:                                 ; preds = %.lr.ph240.i.epil, %.lr.ph240.i.epil.preheader
  %indvars.iv293.i.epil = phi i64 [ %indvars.iv.next294.i.epil, %.lr.ph240.i.epil ], [ %indvars.iv293.i.epil.init, %.lr.ph240.i.epil.preheader ] ; 2 uses
  %epil.iter125 = phi i64 [ %epil.iter125.next, %.lr.ph240.i.epil ], [ 0, %.lr.ph240.i.epil.preheader ]
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv293.i.epil ; 2 uses
  %i.on = load i32, ptr %i.om, align 4
  %i.oo = and i32 %i.on, 2147483647
  store i32 %i.oo, ptr %i.om, align 4
  %indvars.iv.next294.i.epil = add nuw nsw i64 %indvars.iv293.i.epil, 1
  %epil.iter125.next = add i64 %epil.iter125, 1   ; 2 uses
  %epil.iter125.cmp.not = icmp eq i64 %epil.iter125.next, %xtraiter124
end_hunk_0

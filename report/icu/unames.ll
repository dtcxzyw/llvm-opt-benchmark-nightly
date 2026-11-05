Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/unames?download=true
inline.NumInlined: 47
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@u_charFromName_78:bb.a
  %i.ki = icmp ne i64 %i.kh, 0
  %i.kj = zext i1 %i.ki to i32
  %.not102.31 = icmp eq i32 %i.kj, 0
  br i1 %.not102.31, label %bb.n, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.kk = load i128, ptr %i.bi, align 1
  %i.kl = icmp ne i128 %i.kk, 526782459369492306638285818407514740
  %i.km = zext i1 %i.kl to i32
  %.not102.32 = icmp eq i32 %i.km, 0
  br i1 %.not102.32, label %bb.n, label %.loopexit.sink.split

bb.au:                                            ; preds = %.thread
  %i.kn = load ptr, ptr @_ZN6icu_78L10uCharNamesE, align 8, !tbaa !13 ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 12
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !15
  %i.kq = zext i32 %i.kp to i64
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kn, i64 %i.kq ; 2 uses
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !16 ; 2 uses
  %.not100140 = icmp ne i32 %i.ks, 0
  %i.kt = and i32 %0, -3
  %or.cond.not.i = icmp eq i32 %i.kt, 0
  %or.cond146 = and i1 %.not100140, %or.cond.not.i
  br i1 %or.cond146, label %.lr.ph.split.preheader, label %._crit_edge.split

.lr.ph.split.preheader:                           ; preds = %bb.au
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kr, i64 4
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %_ZN6icu_78L11findAlgNameEPNS_16AlgorithmicRangeE15UCharNameChoicePKc.exit.thread
  %.4144 = phi i32 [ %i.oe, %_ZN6icu_78L11findAlgNameEPNS_16AlgorithmicRangeE15UCharNameChoicePKc.exit.thread ], [ %i.ks, %.lr.ph.split.preheader ]
  %.082141 = phi ptr [ %i.od, %_ZN6icu_78L11findAlgNameEPNS_16AlgorithmicRangeE15UCharNameChoicePKc.exit.thread ], [ %i.ku, %.lr.ph.split.preheader ] ; 11 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.082141, i64 8
  %i.kw = load i8, ptr %i.kv, align 4, !tbaa !26
  switch i8 %i.kw, label %_ZN6icu_78L11findAlgNameEPNS_16AlgorithmicRangeE15UCharNameChoicePKc.exit.thread [
    i8 0, label %bb.av
    i8 1, label %bb.bd
  ]

bb.av:                                            ; preds = %.lr.ph.split
  %i.kx = getelementptr inbounds nuw i8, ptr %.082141, i64 12
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ax, %bb.av
  %.090.i = phi ptr [ %i.e, %bb.av ], [ %i.la, %bb.ax ] ; 4 uses
  %.085.i = phi ptr [ %i.kx, %bb.av ], [ %i.kz, %bb.ax ] ; 2 uses
  %i.ky = load i8, ptr %.085.i, align 1, !tbaa !25 ; 2 uses
  %.not107.i = icmp eq i8 %i.ky, 0
  br i1 %.not107.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.kz = getelementptr inbounds nuw i8, ptr %.085.i, i64 1
  %i.la = getelementptr inbounds nuw i8, ptr %.090.i, i64 1
  %i.lb = load i8, ptr %.090.i, align 1, !tbaa !25
  %.not110.i = icmp eq i8 %i.ky, %i.lb
  br i1 %.not110.i, label %bb.aw, label %_ZN6icu_78L11findAlgNameEPNS_16AlgorithmicRangeE15UCharNameChoicePKc.exit.thread, !llvm.loop !55

bb.ay:                                            ; preds = %bb.aw
  %i.lc = getelementptr inbounds nuw i8, ptr %.082141, i64 9
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !27  ; 2 uses
  %i.le = zext i8 %i.ld to i16
  %.not161.i = icmp eq i8 %i.ld, 0
  br i1 %.not161.i, label %._crit_edge157.i, label %.lr.ph156.i

.lr.ph156.i:                                      ; preds = %bb.ay, %bb.ba
  %.084154.i = phi i16 [ %i.ln, %bb.ba ], [ 0, %bb.ay ]
  %.088153.i = phi i32 [ %i.lm, %bb.ba ], [ 0, %bb.ay ]
  %.191152.i = phi ptr [ %i.lf, %bb.ba ], [ %.090.i, %bb.ay ] ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.191152.i, i64 1 ; 2 uses
  %i.lg = load i8, ptr %.191152.i, align 1, !tbaa !25 ; 3 uses
  %i.lh = zext nneg i8 %i.lg to i32
  %i.li = add i8 %i.lg, -48
  %or.cond5.i = icmp ult i8 %i.li, 10
  br i1 %or.cond5.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %.lr.ph156.i
  %i.lj = add i8 %i.lg, -65
  %or.cond8.i = icmp ult i8 %i.lj, 6
  br i1 %or.cond8.i, label %bb.ba, label %_ZN6icu_78L11findAlgNameEPNS_16AlgorithmicRangeE15UCharNameChoicePKc.exit.thread

bb.ba:                                            ; preds = %bb.az, %.lr.ph156.i
  %.sink208.i = phi i32 [ -48, %.lr.ph156.i ], [ -55, %bb.az ]
  %i.lk = shl i32 %.088153.i, 4
  %i.ll = add nsw i32 %.sink208.i, %i.lh
  %i.lm = or i32 %i.ll, %i.lk                     ; 2 uses
  %i.ln = add nuw nsw i16 %.084154.i, 1           ; 2 uses
  %exitcond179.not.i = icmp eq i16 %i.ln, %i.le
  br i1 %exitcond179.not.i, label %._crit_edge157.i, label %.lr.ph156.i, !llvm.loop !56

._crit_edge157.i:                                 ; preds = %bb.ba, %bb.ay
  %.191.lcssa.i = phi ptr [ %.090.i, %bb.ay ], [ %i.lf, %bb.ba ]
  %.088.lcssa.i = phi i32 [ 0, %bb.ay ], [ %i.lm, %bb.ba ] ; 3 uses
  %i.lo = load i8, ptr %.191.lcssa.i, align 1, !tbaa !25
  %i.lp = icmp eq i8 %i.lo, 0
  br i1 %i.lp, label %bb.bb, label %_ZN6icu_78L11findAlgNameEPNS_16AlgorithmicRangeE15UCharNameChoicePKc.exit.thread

bb.bb:                                            ; preds = %._crit_edge157.i
  %i.lq = load i32, ptr %.082141, align 4, !tbaa !19
  %.not108.i = icmp ugt i32 %i.lq, %.088.lcssa.i
  br i1 %.not108.i, label %_ZN6icu_78L11findAlgNameEPNS_16AlgorithmicRangeE15UCharNameChoicePKc.exit.thread, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.lr = getelementptr inbounds nuw i8, ptr %.082141, i64 4
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !20
  %.not109.i = icmp ugt i32 %.088.lcssa.i, %i.ls
  br i1 %.not109.i, label %_ZN6icu_78L11findAlgNameEPNS_16AlgorithmicRangeE15UCharNameChoicePKc.exit.thread, label %_ZN6icu_78L11findAlgNameEPNS_16AlgorithmicRangeE15UCharNameChoicePKc.exit

bb.bd:                                            ; preds = %.lr.ph.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.lt = getelementptr inbounds nuw i8, ptr %.082141, i64 12 ; 4 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %.082141, i64 9
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !27  ; 3 uses
  %i.lw = zext i8 %i.lv to i16                    ; 3 uses
  %i.lx = zext i8 %i.lv to i64
  %i.ly = getelementptr inbounds nuw [2 x i8], ptr %i.lt, i64 %i.lx
  br label %bb.be

bb.be:                                            ; preds = %bb.bf, %bb.bd
  %.292.i = phi ptr [ %i.e, %bb.bd ], [ %i.mb, %bb.bf ] ; 5 uses
  %.080.i = phi ptr [ %i.ly, %bb.bd ], [ %i.lz, %bb.bf ] ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %.080.i, i64 1 ; 2 uses
  %i.ma = load i8, ptr %.080.i, align 1, !tbaa !25 ; 2 uses
  %.not.i = icmp eq i8 %i.ma, 0
  br i1 %.not.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.mb = getelementptr inbounds nuw i8, ptr %.292.i, i64 1
  %i.mc = load i8, ptr %.292.i, align 1, !tbaa !25
  %.not106.i = icmp eq i8 %i.ma, %i.mc
  br i1 %.not106.i, label %bb.be, label %.thread115.i, !llvm.loop !57

bb.bg:                                            ; preds = %bb.be
  %i.md = load i32, ptr %.082141, align 4, !tbaa !19 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.082141, i64 4
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !20 ; 2 uses
  %i.mg = call fastcc noundef zeroext i16 @_ZN6icu_78L17writeFactorSuffixEPKttPKcjPtPS3_S5_Pct(ptr noundef nonnull %i.lt, i16 noundef zeroext %i.lw, ptr noundef nonnull %i.lz, i32 noundef 0, ptr noundef %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, i16 noundef zeroext 64) ; 0 uses
  %i.mh = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.292.i, ptr noundef nonnull dereferenceable(1) %i.a) #12
  %i.mi = icmp eq i32 %i.mh, 0
  br i1 %i.mi, label %.thread115.i, label %.preheader120.i

.preheader120.i:                                  ; preds = %bb.bg
  %i.mj = add i32 %i.mf, 1
  %i.mk = add nsw i32 %i.md, 1                    ; 2 uses
  %i.ml = icmp slt i32 %i.mk, %i.mj
  br i1 %i.ml, label %.preheader.lr.ph.i, label %._crit_edge151.i

.preheader.lr.ph.i:                               ; preds = %.preheader120.i
  %i.mm = add nsw i16 %i.lw, -1                   ; 2 uses
  %i.mn = zext i16 %i.mm to i64                   ; 4 uses
  %i.mo = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.mn ; 3 uses
  %i.mp = getelementptr inbounds nuw [2 x i8], ptr %i.lt, i64 %i.mn
  %.not160.i = icmp eq i8 %i.lv, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.bh, %.preheader.lr.ph.i
  %i.mq = phi i32 [ %i.mk, %.preheader.lr.ph.i ], [ %i.nz, %bb.bh ] ; 3 uses
  %i.mr = load i16, ptr %i.mo, align 2, !tbaa !29
  %i.ms = add i16 %i.mr, 1                        ; 2 uses
  %i.mt = load i16, ptr %i.mp, align 2, !tbaa !29
  %i.mu = icmp ult i16 %i.ms, %i.mt
  br i1 %i.mu, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.lcssa126.i = phi i64 [ %i.mn, %.preheader.i ], [ %i.ne, %.lr.ph.i ]
  %.lcssa125.i = phi ptr [ %i.mo, %.preheader.i ], [ %i.nf, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.ms, %.preheader.i ], [ %i.nh, %.lr.ph.i ]
  store i16 %.lcssa.i, ptr %.lcssa125.i, align 2, !tbaa !29
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.lcssa126.i ; 2 uses
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !32 ; 2 uses
  %strlen.i = call i64 @strlen(ptr nonnull dereferenceable(1) %i.mw)
  %scevgep.i = getelementptr i8, ptr %i.mw, i64 1
  %scevgep178.i = getelementptr i8, ptr %scevgep.i, i64 %strlen.i
  store ptr %scevgep178.i, ptr %i.mv, align 8, !tbaa !32
  br i1 %.not160.i, label %._crit_edge148.thread.i, label %.lr.ph147.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %i.mx = phi ptr [ %i.nf, %.lr.ph.i ], [ %i.mo, %.preheader.i ]
  %i.my = phi i64 [ %i.ne, %.lr.ph.i ], [ %i.mn, %.preheader.i ] ; 2 uses
  %i.mz = phi i16 [ %i.nd, %.lr.ph.i ], [ %i.mm, %.preheader.i ]
  store i16 0, ptr %i.mx, align 2, !tbaa !29
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.my
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !32
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.my
  store ptr %i.nb, ptr %i.nc, align 8, !tbaa !32
  %i.nd = add i16 %i.mz, -1                       ; 2 uses
  %i.ne = zext i16 %i.nd to i64                   ; 4 uses
  %i.nf = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ne ; 3 uses
  %i.ng = load i16, ptr %i.nf, align 2, !tbaa !29
  %i.nh = add i16 %i.ng, 1                        ; 2 uses
  %i.ni = getelementptr inbounds nuw [2 x i8], ptr %i.lt, i64 %i.ne
  %i.nj = load i16, ptr %i.ni, align 2, !tbaa !29
  %i.nk = icmp ult i16 %i.nh, %i.nj
  br i1 %i.nk, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !58

.lr.ph147.i:                                      ; preds = %._crit_edge.i, %._crit_edge141.i
  %.1145.i = phi i16 [ %i.nu, %._crit_edge141.i ], [ 0, %._crit_edge.i ] ; 3 uses
  %.078144.i = phi ptr [ %.179.lcssa.i, %._crit_edge141.i ], [ %.292.i, %._crit_edge.i ] ; 2 uses
  %i.nl = zext nneg i16 %.1145.i to i64
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.nl
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !32 ; 2 uses
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !25  ; 2 uses
  %.not104135.i = icmp eq i8 %i.no, 0
  br i1 %.not104135.i, label %._crit_edge141.i, label %.lr.ph140.i

.lr.ph140.i:                                      ; preds = %.lr.ph147.i, %.lr.ph140.i
  %i.np = phi i8 [ %i.nt, %.lr.ph140.i ], [ %i.no, %.lr.ph147.i ]
  %.2138.i = phi i16 [ %spec.select111.i, %.lr.ph140.i ], [ %.1145.i, %.lr.ph147.i ]
  %.179137.i = phi ptr [ %i.nr, %.lr.ph140.i ], [ %.078144.i, %.lr.ph147.i ] ; 2 uses
  %.282136.i = phi ptr [ %spec.select.i, %.lr.ph140.i ], [ %i.nn, %.lr.ph147.i ]
  %i.nq = getelementptr inbounds nuw i8, ptr %.282136.i, i64 1
  %i.nr = getelementptr inbounds nuw i8, ptr %.179137.i, i64 1 ; 2 uses
  %i.ns = load i8, ptr %.179137.i, align 1, !tbaa !25
  %.not105.i = icmp eq i8 %i.np, %i.ns            ; 2 uses
  %spec.select.i = select i1 %.not105.i, ptr %i.nq, ptr @.str.42 ; 2 uses
  %spec.select111.i = select i1 %.not105.i, i16 %.2138.i, i16 99 ; 2 uses
  %i.nt = load i8, ptr %spec.select.i, align 1, !tbaa !25 ; 2 uses
  %.not104.i = icmp eq i8 %i.nt, 0
  br i1 %.not104.i, label %._crit_edge141.i, label %.lr.ph140.i, !llvm.loop !59

._crit_edge141.i:                                 ; preds = %.lr.ph140.i, %.lr.ph147.i
  %.179.lcssa.i = phi ptr [ %.078144.i, %.lr.ph147.i ], [ %i.nr, %.lr.ph140.i ] ; 2 uses
  %.2.lcssa.i = phi i16 [ %.1145.i, %.lr.ph147.i ], [ %spec.select111.i, %.lr.ph140.i ]
  %i.nu = add i16 %.2.lcssa.i, 1                  ; 3 uses
  %i.nv = icmp ult i16 %i.nu, %i.lw
  br i1 %i.nv, label %.lr.ph147.i, label %._crit_edge148.i, !llvm.loop !60

._crit_edge148.i:                                 ; preds = %._crit_edge141.i
  %i.nw = icmp ult i16 %i.nu, 99
  br i1 %i.nw, label %._crit_edge148.thread.i, label %bb.bh

._crit_edge148.thread.i:                          ; preds = %._crit_edge148.i, %._crit_edge.i
  %.078.lcssa191.i = phi ptr [ %.179.lcssa.i, %._crit_edge148.i ], [ %.292.i, %._crit_edge.i ]
  %i.nx = load i8, ptr %.078.lcssa191.i, align 1, !tbaa !25
  %i.ny = icmp eq i8 %i.nx, 0
  br i1 %i.ny, label %.thread115.i, label %bb.bh

bb.bh:                                            ; preds = %._crit_edge148.thread.i, %._crit_edge148.i
  %i.nz = add i32 %i.mq, 1
  %exitcond.not.i = icmp eq i32 %i.mq, %i.mf
  br i1 %exitcond.not.i, label %._crit_edge151.i, label %.preheader.i, !llvm.loop !61

.thread115.i:                                     ; preds = %bb.bf, %._crit_edge148.thread.i, %bb.bg
  %.194.ph.i = phi i32 [ %i.md, %bb.bg ], [ %i.mq, %._crit_edge148.thread.i ], [ 65535, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %_ZN6icu_78L11findAlgNameEPNS_16AlgorithmicRangeE15UCharNameChoicePKc.exit

._crit_edge151.i:                                 ; preds = %bb.bh, %.preheader120.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %_ZN6icu_78L11findAlgNameEPNS_16AlgorithmicRangeE15UCharNameChoicePKc.exit.thread

_ZN6icu_78L11findAlgNameEPNS_16AlgorithmicRangeE15UCharNameChoicePKc.exit: ; preds = %bb.bc, %.thread115.i
  %.295.i = phi i32 [ %.194.ph.i, %.thread115.i ], [ %.088.lcssa.i, %bb.bc ] ; 2 uses
  %.not101 = icmp eq i32 %.295.i, 65535
  br i1 %.not101, label %_ZN6icu_78L11findAlgNameEPNS_16AlgorithmicRangeE15UCharNameChoicePKc.exit.thread, label %.loopexit

_ZN6icu_78L11findAlgNameEPNS_16AlgorithmicRangeE15UCharNameChoicePKc.exit.thread: ; preds = %bb.ax, %bb.az, %bb.bc, %._crit_edge157.i, %bb.bb, %._crit_edge151.i, %.lr.ph.split, %_ZN6icu_78L11findAlgNameEPNS_16AlgorithmicRangeE15UCharNameChoicePKc.exit
  %i.oa = getelementptr inbounds nuw i8, ptr %.082141, i64 10
  %i.ob = load i16, ptr %i.oa, align 2, !tbaa !21
  %i.oc = zext i16 %i.ob to i64
  %i.od = getelementptr inbounds nuw i8, ptr %.082141, i64 %i.oc
  %i.oe = add i32 %.4144, -1                      ; 2 uses
  %.not100 = icmp eq i32 %i.oe, 0
  br i1 %.not100, label %._crit_edge.split.loopexit, label %.lr.ph.split, !llvm.loop !62

._crit_edge.split.loopexit:                       ; preds = %_ZN6icu_78L11findAlgNameEPNS_16AlgorithmicRangeE15UCharNameChoicePKc.exit.thread
  %.pre = load ptr, ptr @_ZN6icu_78L10uCharNamesE, align 8, !tbaa !13
  br label %._crit_edge.split

._crit_edge.split:                                ; preds = %._crit_edge.split.loopexit, %bb.au
  %i.of = phi ptr [ %.pre, %._crit_edge.split.loopexit ], [ %i.kn, %bb.au ]
  store ptr %i.e, ptr %3, align 8, !tbaa !34
  %i.og = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 65535, ptr %i.og, align 8, !tbaa !35
  %i.oh = call fastcc noundef signext i8 @_ZN6icu_78L9enumNamesEPNS_10UCharNamesEiiPFaPvi15UCharNameChoicePKciES2_S3_(ptr noundef %i.of, i32 noundef 0, i32 noundef 1114112, ptr noundef null, ptr noundef nonnull %3, i32 noundef %0) ; 0 uses
  %i.oi = load i32, ptr %i.og, align 8, !tbaa !35 ; 2 uses
  %i.oj = icmp eq i32 %i.oi, 65535
  br i1 %i.oj, label %.loopexit.sink.split, label %.loopexit

.loopexit.sink.split:                             ; preds = %bb.f, %bb.m, %bb.l, %._crit_edge.split, %bb.g, %bb.h, %.critedge, %.critedge.thread, %bb.n, %bb.at, %bb.c, %bb.d
  %.sink = phi i32 [ 12, %bb.g ], [ 12, %bb.h ], [ 12, %bb.m ], [ 12, %._crit_edge.split ], [ 1, %bb.c ], [ 1, %bb.d ], [ 12, %bb.at ], [ 12, %bb.n ], [ 12, %.critedge.thread ], [ 12, %.critedge ], [ 12, %bb.l ], [ 12, %bb.f ]
  store i32 %.sink, ptr %2, align 4, !tbaa !11
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN6icu_78L11findAlgNameEPNS_16AlgorithmicRangeE15UCharNameChoicePKc.exit, %.loopexit.sink.split, %._crit_edge.split, %bb.n, %bb.e, %bb.a, %bb.b
  %.487 = phi i32 [ 65535, %bb.a ], [ %.077.lcssa, %bb.n ], [ 65535, %bb.b ], [ 65535, %.loopexit.sink.split ], [ %i.oi, %._crit_edge.split ], [ 65535, %bb.e ], [ %.295.i, %_ZN6icu_78L11findAlgNameEPNS_16AlgorithmicRangeE15UCharNameChoicePKc.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  ret i32 %.487
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare signext i8 @uprv_toupper_78(i8 noundef signext) local_unnamed_addr #2

declare signext i8 @uprv_asciitolower_78(i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i8 @_ZN6icu_78L10getCharCatEi(i32 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %0, 64975
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %0, 65008
  br i1 %i.b, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = and i32 %0, 65534
  %i.d = icmp eq i32 %i.c, 65534
  %i.e = icmp samesign ult i32 %0, 1114112
  %or.cond = and i1 %i.e, %i.d
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.f = tail call signext i8 @u_charType_78(i32 noundef %0) ; 2 uses
  %i.g = icmp eq i8 %i.f, 18
  %i.h = and i32 %0, -1024
  %i.i = icmp eq i32 %i.h, 55296
  %i.j = select i1 %i.i, i8 31, i8 32
  %.0 = select i1 %i.g, i8 %i.j, i8 %i.f
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %.010 = phi i8 [ %.0, %bb.d ], [ 30, %bb.b ], [ 30, %bb.c ]
  ret i8 %.010
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal fastcc noundef signext range(i8 0, 2) i8 @_ZN6icu_78L9enumNamesEPNS_10UCharNamesEiiPFaPvi15UCharNameChoicePKciES2_S3_(ptr nofree noundef readonly captures(address) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr noundef %4, i32 noundef range(i32 -2147483648, 4) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [200 x i8], align 16              ; 5 uses
  %i.b = alloca [200 x i8], align 16              ; 6 uses
  %i.c = alloca [200 x i8], align 16              ; 6 uses
  %i.d = alloca [200 x i8], align 16              ; 6 uses
  %i.e = lshr i32 %1, 5                           ; 3 uses
  %i.f = add nsw i32 %2, -1                       ; 4 uses
  %i.g = lshr i32 %i.f, 5                         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !28
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 2 ; 2 uses
  %i.m = load i16, ptr %i.k, align 2, !tbaa !29   ; 3 uses
  %i.n = icmp ugt i16 %i.m, 1
  br i1 %i.n, label %.lr.ph.i, label %._ZN6icu_78L8getGroupEPNS_10UCharNamesEj.exit_crit_edge

._ZN6icu_78L8getGroupEPNS_10UCharNamesEj.exit_crit_edge: ; preds = %bb.a
  %.pre = and i32 %i.e, 65535
  br label %_ZN6icu_78L8getGroupEPNS_10UCharNamesEj.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.o = zext i16 %i.m to i32
  %i.p = and i32 %i.e, 65535                      ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %i.q = phi i32 [ %i.o, %.lr.ph.i ], [ %i.ac, %bb.b ]
  %i.r = phi i32 [ 0, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %.019.i = phi i16 [ %i.m, %.lr.ph.i ], [ %..0.i, %bb.b ]
  %.01418.i = phi i16 [ 0, %.lr.ph.i ], [ %.014..i, %bb.b ]
  %i.s = add nuw nsw i32 %i.r, %i.q
  %i.t = lshr i32 %i.s, 1                         ; 2 uses
  %i.u = trunc nuw i32 %i.t to i16                ; 2 uses
  %i.v = mul nuw nsw i32 %i.t, 3
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.w
  %i.y = load i16, ptr %i.x, align 2, !tbaa !29
  %i.z = zext i16 %i.y to i32
  %i.aa = icmp samesign ult i32 %i.p, %i.z        ; 2 uses
  %.014..i = select i1 %i.aa, i16 %.01418.i, i16 %i.u ; 2 uses
  %..0.i = select i1 %i.aa, i16 %i.u, i16 %.019.i ; 2 uses
  %i.ab = zext i16 %.014..i to i32                ; 3 uses
  %i.ac = zext i16 %..0.i to i32                  ; 2 uses
  %i.ad = add nsw i32 %i.ac, -1
  %i.ae = icmp sgt i32 %i.ad, %i.ab
  br i1 %i.ae, label %bb.b, label %._crit_edge.loopexit.i, !llvm.loop !0

._crit_edge.loopexit.i:                           ; preds = %bb.b
  %i.af = mul nuw nsw i32 %i.ab, 3
  %i.ag = zext nneg i32 %i.af to i64
  br label %_ZN6icu_78L8getGroupEPNS_10UCharNamesEj.exit

_ZN6icu_78L8getGroupEPNS_10UCharNamesEj.exit:     ; preds = %._ZN6icu_78L8getGroupEPNS_10UCharNamesEj.exit_crit_edge, %._crit_edge.loopexit.i
  %.pre-phi = phi i32 [ %.pre, %._ZN6icu_78L8getGroupEPNS_10UCharNamesEj.exit_crit_edge ], [ %i.p, %._crit_edge.loopexit.i ] ; 6 uses
  %.lcssa.i = phi i64 [ 0, %._ZN6icu_78L8getGroupEPNS_10UCharNamesEj.exit_crit_edge ], [ %i.ag, %._crit_edge.loopexit.i ]
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %.lcssa.i ; 11 uses
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !29
end_hunk_0
begin_hunk_1_@uchar_swapNames_78:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i8, ptr %i.ah, align 2, !tbaa !25
  %i.aj = zext i8 %i.ai to i32
  tail call void (ptr, ptr, ...) @udata_printError_78(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %i.z, i32 noundef %i.aa, i32 noundef %i.ad, i32 noundef %i.ag, i32 noundef %i.aj)
  store i32 16, ptr %4, align 4, !tbaa !11
  br label %bb.ai

bb.g:                                             ; preds = %bb.f
  %i.ak = sext i32 %i.f to i64                    ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %1, i64 %i.ak ; 17 uses
  %i.am = icmp eq ptr %3, null
  %i.an = getelementptr inbounds i8, ptr %3, i64 %i.ak ; 6 uses
  %i.ao = select i1 %i.am, ptr null, ptr %i.an    ; 5 uses
  %i.ap = icmp slt i32 %2, 0
  br i1 %i.ap, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = sub nsw i32 %2, %i.f                    ; 6 uses
  %i.ar = icmp slt i32 %i.aq, 20
  br i1 %i.ar, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !99
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.av = load i32, ptr %i.au, align 4, !tbaa !16
  %i.aw = tail call noundef i32 %i.at(i32 noundef %i.av) ; 4 uses
  %i.ax = icmp ult i32 %i.aq, %i.aw
  br i1 %i.ax, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void (ptr, ptr, ...) @udata_printError_78(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %i.aq)
  store i32 8, ptr %4, align 4, !tbaa !11
  br label %bb.ai

bb.k:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !99
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !16
  %i.bc = tail call noundef i32 %i.az(i32 noundef %i.bb) ; 2 uses
  %i.bd = load ptr, ptr %i.ay, align 8, !tbaa !99
  %i.be = zext i32 %i.bc to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !16
  %i.bh = tail call noundef i32 %i.bd(i32 noundef %i.bg) ; 2 uses
  %i.bi = add i32 %i.bc, 4                        ; 2 uses
  %.not350 = icmp eq i32 %i.bh, 0
  br i1 %.not350, label %.loopexit, label %.lr.ph346

.lr.ph346:                                        ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph346, %bb.l
  %.0268344 = phi i32 [ 0, %.lr.ph346 ], [ %i.bs, %bb.l ]
  %.0271343 = phi i32 [ %i.bi, %.lr.ph346 ], [ %i.br, %bb.l ] ; 2 uses
  %i.bk = zext i32 %.0271343 to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.bk
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !100
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 10
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !21
  %i.bp = tail call noundef zeroext i16 %i.bm(i16 noundef zeroext %i.bo)
  %i.bq = zext i16 %i.bp to i32
  %i.br = add i32 %.0271343, %i.bq                ; 2 uses
  %i.bs = add nuw i32 %.0268344, 1                ; 2 uses
  %exitcond380.not = icmp eq i32 %i.bs, %i.bh
  br i1 %exitcond380.not, label %.loopexit, label %bb.l, !llvm.loop !91

bb.m:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %.not288 = icmp eq ptr %i.al, %i.ao
  br i1 %.not288, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bt = zext nneg i32 %i.aq to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ao, ptr nonnull align 4 %i.al, i64 %i.bt, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bu = load ptr, ptr %i.as, align 8, !tbaa !99
  %i.bv = load i32, ptr %i.al, align 4, !tbaa !16
  %i.bw = tail call noundef i32 %i.bu(i32 noundef %i.bv) ; 2 uses
  %i.bx = load ptr, ptr %i.as, align 8, !tbaa !99
  %i.by = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !16
  %i.ca = tail call noundef i32 %i.bx(i32 noundef %i.bz) ; 2 uses
  %i.cb = load ptr, ptr %i.as, align 8, !tbaa !99
  %i.cc = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !16
  %i.ce = tail call noundef i32 %i.cb(i32 noundef %i.cd) ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !101
  %i.ch = tail call noundef i32 %i.cg(ptr noundef nonnull %0, ptr noundef nonnull %i.al, i32 noundef 16, ptr noundef %i.ao, ptr noundef nonnull %4) ; 0 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !100
  %i.cm = load i16, ptr %i.ci, align 4, !tbaa !29
  %i.cn = tail call noundef zeroext i16 %i.cl(i16 noundef zeroext %i.cm) ; 6 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !102
  %i.cq = tail call noundef i32 %i.cp(ptr noundef nonnull %0, ptr noundef nonnull %i.ci, i32 noundef 2, ptr noundef nonnull %i.cj, ptr noundef nonnull %4) ; 0 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.al, i64 18 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.an, i64 18
  %i.ct = zext i16 %i.cn to i32                   ; 5 uses
  %i.cu = icmp ult i16 %i.cn, 513
  %. = select i1 %i.cu, i32 %i.ct, i32 512        ; 4 uses
  %.not = icmp eq i32 %., 0
  br i1 %.not, label %.lr.ph316.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.o
  %wide.trip.count = zext nneg i32 %. to i64
  br label %.lr.ph

.preheader306:                                    ; preds = %.lr.ph
  %i.cv = icmp samesign ult i32 %., 512
  br i1 %i.cv, label %.lr.ph316.preheader, label %._crit_edge

.lr.ph316.preheader:                              ; preds = %bb.o, %.preheader306
  %.1269.lcssa397 = phi i32 [ %., %.preheader306 ], [ 0, %bb.o ] ; 2 uses
  %i.cw = shl nuw nsw i32 %.1269.lcssa397, 1
  %i.cx = zext nneg i32 %i.cw to i64
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.cx
  %i.cy = shl nuw nsw i32 %.1269.lcssa397, 1
  %narrow = sub nuw nsw i32 1024, %i.cy
  %i.cz = zext nneg i32 %narrow to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep, i8 0, i64 range(i64 0, 1025) %i.cz, i1 false), !tbaa !29
  br label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %i.cr, i64 %indvars.iv
  %i.db = load i16, ptr %i.da, align 2, !tbaa !29
  %i.dc = tail call signext i16 @udata_readInt16_78(ptr noundef nonnull %0, i16 noundef signext %i.db)
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv
  store i16 %i.dc, ptr %i.dd, align 2, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader306, label %.lr.ph, !llvm.loop !92

._crit_edge:                                      ; preds = %.lr.ph316.preheader, %.preheader306
  call fastcc void @_ZL12makeTokenMapPK12UDataSwapperPstPhP10UErrorCode(ptr noundef nonnull %0, ptr noundef %i.a, i16 noundef zeroext %i.cn, ptr noundef %i.b, ptr noundef %4)
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %i.df = tail call i16 @llvm.usub.sat.i16(i16 %i.cn, i16 256)
  call fastcc void @_ZL12makeTokenMapPK12UDataSwapperPstPhP10UErrorCode(ptr noundef nonnull %0, ptr noundef %i.de, i16 noundef zeroext %i.df, ptr noundef %i.c, ptr noundef %4)
  %i.dg = load i32, ptr %4, align 4, !tbaa !11
  %i.dh = icmp slt i32 %i.dg, 1
  br i1 %i.dh, label %bb.p, label %.critedge298

bb.p:                                             ; preds = %._crit_edge
  %i.di = shl nuw nsw i32 %i.ct, 1
  %i.dj = zext nneg i32 %i.di to i64              ; 2 uses
  %i.dk = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.dj) #13 ; 5 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %bb.q, label %.preheader305

.preheader305:                                    ; preds = %bb.p
  %invariant.umin = tail call i32 @llvm.umin.i32(i32 %i.ct, i32 256) ; 2 uses
  %.not348 = icmp eq i16 %i.cn, 0
  br i1 %.not348, label %.preheader, label %.lr.ph318.preheader

.lr.ph318.preheader:                              ; preds = %.preheader305
  %wide.trip.count369 = zext nneg i32 %invariant.umin to i64
  br label %.lr.ph318

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ptr, ...) @udata_printError_78(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, i32 noundef %i.ct)
  store i32 7, ptr %4, align 4, !tbaa !11
  br label %.critedge298

.preheader:                                       ; preds = %.lr.ph318, %.preheader305
  %.3.lcssa = phi i32 [ 0, %.preheader305 ], [ %invariant.umin, %.lr.ph318 ] ; 2 uses
  %i.dm = icmp samesign ult i32 %.3.lcssa, %i.ct
  br i1 %i.dm, label %.lr.ph321.preheader, label %._crit_edge322

.lr.ph321.preheader:                              ; preds = %.preheader
  %i.dn = zext nneg i32 %.3.lcssa to i64
  %wide.trip.count374 = zext i16 %i.cn to i64
  br label %.lr.ph321

.lr.ph318:                                        ; preds = %.lr.ph318.preheader, %.lr.ph318
  %indvars.iv366 = phi i64 [ 0, %.lr.ph318.preheader ], [ %indvars.iv.next367, %.lr.ph318 ] ; 3 uses
  %i.do = load ptr, ptr %i.co, align 8, !tbaa !102
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.cr, i64 %indvars.iv366
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv366
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !25
  %i.ds = zext i8 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.dk, i64 %i.ds
  %i.du = tail call noundef i32 %i.do(ptr noundef nonnull %0, ptr noundef nonnull %i.dp, i32 noundef 2, ptr noundef nonnull %i.dt, ptr noundef nonnull %4) ; 0 uses
  %indvars.iv.next367 = add nuw nsw i64 %indvars.iv366, 1 ; 2 uses
  %exitcond370.not = icmp eq i64 %indvars.iv.next367, %wide.trip.count369
  br i1 %exitcond370.not, label %.preheader, label %.lr.ph318, !llvm.loop !93

.lr.ph321:                                        ; preds = %.lr.ph321.preheader, %.lr.ph321
  %indvars.iv371 = phi i64 [ %i.dn, %.lr.ph321.preheader ], [ %indvars.iv.next372, %.lr.ph321 ] ; 4 uses
  %i.dv = load ptr, ptr %i.co, align 8, !tbaa !102
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.cr, i64 %indvars.iv371
  %i.dx = and i64 %indvars.iv371, 65280
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %i.dk, i64 %i.dx
  %i.dz = and i64 %indvars.iv371, 255
  %i.ea = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !25
  %i.ec = zext i8 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.dy, i64 %i.ec
  %i.ee = tail call noundef i32 %i.dv(ptr noundef nonnull %0, ptr noundef nonnull %i.dw, i32 noundef 2, ptr noundef nonnull %i.ed, ptr noundef nonnull %4) ; 0 uses
  %indvars.iv.next372 = add nuw nsw i64 %indvars.iv371, 1 ; 2 uses
  %exitcond375.not = icmp eq i64 %indvars.iv.next372, %wide.trip.count374
  br i1 %exitcond375.not, label %._crit_edge322, label %.lr.ph321, !llvm.loop !94

._crit_edge322:                                   ; preds = %.lr.ph321, %.preheader
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.cs, ptr nonnull align 2 %i.dk, i64 %i.dj, i1 false)
  tail call void @uprv_free_78(ptr noundef nonnull %i.dk)
  %i.ef = zext i32 %i.bw to i64                   ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ef
  %i.eh = sub i32 %i.ca, %i.bw
  %i.ei = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ef
  %i.ej = tail call i32 @udata_swapInvStringBlock_78(ptr noundef nonnull %0, ptr noundef nonnull %i.eg, i32 noundef %i.eh, ptr noundef %i.ei, ptr noundef nonnull %4) ; 0 uses
  %i.ek = load i32, ptr %4, align 4, !tbaa !11
  %i.el = icmp slt i32 %i.ek, 1
  br i1 %i.el, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge322
  tail call void (ptr, ptr, ...) @udata_printError_78(ptr noundef nonnull %0, ptr noundef nonnull @.str.3)
  br label %.critedge298

bb.s:                                             ; preds = %._crit_edge322
  %i.em = load ptr, ptr %i.ck, align 8, !tbaa !100
  %i.en = zext i32 %i.ca to i64                   ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.en ; 2 uses
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !29
  %i.eq = tail call noundef zeroext i16 %i.em(i16 noundef zeroext %i.ep)
  %i.er = zext i16 %i.eq to i32
  %i.es = load ptr, ptr %i.co, align 8, !tbaa !102
  %i.et = mul nuw nsw i32 %i.er, 6
  %i.eu = add nuw nsw i32 %i.et, 2
  %i.ev = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.en
  %i.ew = tail call noundef i32 %i.es(ptr noundef nonnull %0, ptr noundef nonnull %i.eo, i32 noundef %i.eu, ptr noundef %i.ev, ptr noundef nonnull %4) ; 0 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !38
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !39
  %.not291 = icmp eq i8 %i.ey, %i.fa
  br i1 %.not291, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  %i.fb = sub i32 %i.aw, %i.ce                    ; 2 uses
  %i.fc = icmp ugt i32 %i.fb, 32
  br i1 %i.fc, label %.lr.ph335, label %._crit_edge336

.lr.ph335:                                        ; preds = %bb.t
  %i.fd = zext i32 %i.ce to i64                   ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.fd
  %i.fg = getelementptr inbounds nuw i8, ptr %i.d, i64 62
  %i.fh = getelementptr inbounds nuw i8, ptr %i.e, i64 62
  br label %bb.u

.loopexit304:                                     ; preds = %bb.w, %bb.u
  %.1260.lcssa = phi ptr [ %i.fj, %bb.u ], [ %.2261, %bb.w ]
  %.1.lcssa = phi ptr [ %i.fo, %bb.u ], [ %.2, %bb.w ]
  %i.fi = icmp ugt i32 %i.fv, 32
  br i1 %i.fi, label %bb.u, label %._crit_edge336, !llvm.loop !95

bb.u:                                             ; preds = %.lr.ph335, %.loopexit304
  %.0333 = phi ptr [ %i.fe, %.lr.ph335 ], [ %.1.lcssa, %.loopexit304 ]
  %.0259332 = phi ptr [ %i.ff, %.lr.ph335 ], [ %.1260.lcssa, %.loopexit304 ] ; 2 uses
  %.0263331 = phi i32 [ %i.fb, %.lr.ph335 ], [ %i.fv, %.loopexit304 ]
  %i.fj = call fastcc noundef ptr @_ZN6icu_78L18expandGroupLengthsEPKhPtS2_(ptr noundef %.0259332, ptr noundef %i.d, ptr noundef %i.e) ; 3 uses
  %i.fk = ptrtoint ptr %i.fj to i64
  %i.fl = ptrtoint ptr %.0259332 to i64
  %i.fm = sub i64 %i.fk, %i.fl                    ; 2 uses
  %i.fn = trunc i64 %i.fm to i32
  %i.fo = getelementptr inbounds i8, ptr %.0333, i64 %i.fm ; 2 uses
  %i.fp = load i16, ptr %i.fg, align 2, !tbaa !29
  %i.fq = zext i16 %i.fp to i32
  %i.fr = load i16, ptr %i.fh, align 2, !tbaa !29
  %i.fs = zext i16 %i.fr to i32
  %i.ft = add nuw nsw i32 %i.fs, %i.fq            ; 3 uses
  %i.fu = add i32 %i.ft, %i.fn
  %i.fv = sub i32 %.0263331, %i.fu                ; 2 uses
  %.not295323 = icmp eq i32 %i.ft, 0
  br i1 %.not295323, label %.loopexit304, label %.lr.ph328

.lr.ph328:                                        ; preds = %bb.u, %bb.w
  %.1326 = phi ptr [ %.2, %bb.w ], [ %i.fo, %bb.u ] ; 3 uses
  %.1260325 = phi ptr [ %.2261, %bb.w ], [ %i.fj, %bb.u ] ; 3 uses
  %.1266324 = phi i32 [ %i.gk, %bb.w ], [ %i.ft, %bb.u ]
  %i.fw = getelementptr inbounds nuw i8, ptr %.1260325, i64 1 ; 2 uses
  %i.fx = load i8, ptr %.1260325, align 1, !tbaa !25
  %i.fy = zext i8 %i.fx to i64                    ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !25
  %i.gb = getelementptr inbounds nuw i8, ptr %.1326, i64 1 ; 2 uses
  store i8 %i.ga, ptr %.1326, align 1, !tbaa !25
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.fy
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !29
  %.not296 = icmp eq i16 %i.gd, -2
  br i1 %.not296, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph328
  %i.ge = getelementptr inbounds nuw i8, ptr %.1260325, i64 2
  %i.gf = load i8, ptr %i.fw, align 1, !tbaa !25
  %i.gg = zext i8 %i.gf to i64
  %i.gh = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.gg
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !25
  %i.gj = getelementptr inbounds nuw i8, ptr %.1326, i64 2
  store i8 %i.gi, ptr %i.gb, align 1, !tbaa !25
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph328, %bb.v
  %.sink = phi i32 [ -2, %bb.v ], [ -1, %.lr.ph328 ]
  %.2261 = phi ptr [ %i.ge, %bb.v ], [ %i.fw, %.lr.ph328 ] ; 2 uses
  %.2 = phi ptr [ %i.gj, %bb.v ], [ %i.gb, %.lr.ph328 ] ; 2 uses
  %i.gk = add i32 %.1266324, %.sink               ; 2 uses
  %.not295 = icmp eq i32 %i.gk, 0
  br i1 %.not295, label %.loopexit304, label %.lr.ph328, !llvm.loop !96

._crit_edge336:                                   ; preds = %.loopexit304, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge336, %bb.s
  %i.gl = load ptr, ptr %i.as, align 8, !tbaa !99
  %i.gm = zext nneg i32 %i.aw to i64              ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.gm ; 2 uses
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !16
  %i.gp = tail call noundef i32 %i.gl(i32 noundef %i.go) ; 2 uses
  %i.gq = load ptr, ptr %i.cf, align 8, !tbaa !101
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.gm
  %i.gs = tail call noundef i32 %i.gq(ptr noundef nonnull %0, ptr noundef nonnull %i.gn, i32 noundef 4, ptr noundef %i.gr, ptr noundef nonnull %4) ; 0 uses
  %i.gt = add nuw i32 %i.aw, 4                    ; 2 uses
  %.not349 = icmp eq i32 %i.gp, 0
  br i1 %.not349, label %._crit_edge341, label %.lr.ph340

.lr.ph340:                                        ; preds = %bb.x
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph340, %bb.ah
  %.5338 = phi i32 [ 0, %.lr.ph340 ], [ %i.ir, %bb.ah ] ; 4 uses
  %.1272337 = phi i32 [ %i.gt, %.lr.ph340 ], [ %i.he, %bb.ah ] ; 3 uses
  %i.gv = icmp ugt i32 %.1272337, %i.aq
  br i1 %i.gv, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  tail call void (ptr, ptr, ...) @udata_printError_78(ptr noundef nonnull %0, ptr noundef nonnull @.str.4, i32 noundef %i.aq, i32 noundef %.5338)
  store i32 8, ptr %4, align 4, !tbaa !11
  br label %.critedge298

bb.aa:                                            ; preds = %bb.y
  %i.gw = zext nneg i32 %.1272337 to i64          ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.gw ; 6 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.gw ; 4 uses
  %i.gz = load ptr, ptr %i.ck, align 8, !tbaa !100
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 10 ; 2 uses
  %i.hb = load i16, ptr %i.ha, align 2, !tbaa !21
  %i.hc = tail call noundef zeroext i16 %i.gz(i16 noundef zeroext %i.hb)
  %i.hd = zext i16 %i.hc to i32
  %i.he = add nuw i32 %.1272337, %i.hd            ; 4 uses
  %i.hf = load ptr, ptr %i.cf, align 8, !tbaa !101
  %i.hg = tail call noundef i32 %i.hf(ptr noundef nonnull %0, ptr noundef nonnull %i.gx, i32 noundef 8, ptr noundef %i.gy, ptr noundef nonnull %4) ; 0 uses
  %i.hh = load ptr, ptr %i.co, align 8, !tbaa !102
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gy, i64 10
  %i.hj = tail call noundef i32 %i.hh(ptr noundef nonnull %0, ptr noundef nonnull %i.ha, i32 noundef 2, ptr noundef nonnull %i.hi, ptr noundef nonnull %4) ; 0 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.hl = load i8, ptr %i.hk, align 4, !tbaa !26  ; 2 uses
  switch i8 %i.hl, label %bb.ag [
    i8 0, label %bb.ab
    i8 1, label %bb.ad
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.hm = load ptr, ptr %i.gu, align 8, !tbaa !40
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gx, i64 12 ; 2 uses
  %i.ho = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hn) #12
  %i.hp = trunc i64 %i.ho to i32
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gy, i64 12
  %i.hr = tail call noundef i32 %i.hm(ptr noundef nonnull %0, ptr noundef nonnull %i.hn, i32 noundef %i.hp, ptr noundef nonnull %i.hq, ptr noundef nonnull %4) ; 0 uses
  %i.hs = load i32, ptr %4, align 4, !tbaa !11
  %i.ht = icmp slt i32 %i.hs, 1
  br i1 %i.ht, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void (ptr, ptr, ...) @udata_printError_78(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, i32 noundef %.5338)
  br label %.critedge298

bb.ad:                                            ; preds = %bb.aa
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gx, i64 9
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !27  ; 2 uses
  %i.hw = zext i8 %i.hv to i32
  %i.hx = getelementptr inbounds nuw i8, ptr %i.gx, i64 12 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gy, i64 12 ; 2 uses
  %i.hz = load ptr, ptr %i.co, align 8, !tbaa !102
  %i.ia = shl nuw nsw i32 %i.hw, 1
  %i.ib = tail call noundef i32 %i.hz(ptr noundef nonnull %0, ptr noundef nonnull %i.hx, i32 noundef %i.ia, ptr noundef nonnull %i.hy, ptr noundef nonnull %4) ; 0 uses
end_hunk_1

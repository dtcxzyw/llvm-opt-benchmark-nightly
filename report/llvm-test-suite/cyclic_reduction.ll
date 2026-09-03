Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/cyclic_reduction?download=true
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@hypre_CyclicReductionSetup:bb.a
  %i.fo = load i32, ptr %i.an, align 4, !tbaa !7
  store i32 %i.fo, ptr %i.aj, align 8, !tbaa !7
  %i.fp = load <2 x i32>, ptr %i.o, align 8, !tbaa !7
  store <2 x i32> %i.fp, ptr %i.c, align 8, !tbaa !7
  %i.fq = load i32, ptr %i.ap, align 8, !tbaa !7
  store i32 %i.fq, ptr %i.al, align 8, !tbaa !7
  %.pre313 = load i32, ptr %i.ah, align 4, !tbaa !7
  %i.fr = shl nsw i32 %.pre313, 1
  store i32 %i.fr, ptr %i.ah, align 4, !tbaa !7
  %i.fs = load ptr, ptr %i.dm, align 8, !tbaa !50
  %i.ft = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !50
  %i.fv = call i32 @hypre_CycRedSetupCoarseOp(ptr noundef %i.fs, ptr noundef %i.fu, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c) ; 0 uses
  %exitcond294.peel.not = icmp eq i32 %.0.lcssa.wide, 1
  br i1 %exitcond294.peel.not, label %._crit_edge254, label %.peel.next296

.peel.next296:                                    ; preds = %bb.e, %.peel.next296
  %indvars.iv290 = phi i64 [ %indvars.iv.next291, %.peel.next296 ], [ 1, %bb.e ] ; 2 uses
  store i32 0, ptr %i.a, align 8, !tbaa !7
  store i32 0, ptr %i.ai, align 4, !tbaa !7
  store i32 0, ptr %i.aj, align 8, !tbaa !7
  store i32 1, ptr %i.c, align 8, !tbaa !7
  store i32 1, ptr %i.ak, align 4, !tbaa !7
  store i32 1, ptr %i.al, align 8, !tbaa !7
  %.pre314 = load i32, ptr %i.ah, align 4, !tbaa !7
  %i.fw = shl nsw i32 %.pre314, 1
  store i32 %i.fw, ptr %i.ah, align 4, !tbaa !7
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv290
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !50
  %indvars.iv.next291 = add nuw nsw i64 %indvars.iv290, 1 ; 3 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv.next291
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !50
  %i.gb = call i32 @hypre_CycRedSetupCoarseOp(ptr noundef %i.fy, ptr noundef %i.ga, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c) ; 0 uses
  %exitcond294.not = icmp eq i64 %indvars.iv.next291, %wide.trip.count293
  br i1 %exitcond294.not, label %._crit_edge254, label %.peel.next296, !llvm.loop !132

._crit_edge254:                                   ; preds = %.peel.next296, %bb.e, %._crit_edge250.thread
  %i.gc = shl i32 %.0.lcssa.wide, 3               ; 2 uses
  %i.gd = call ptr @hypre_MAlloc(i32 noundef %i.gc) #7 ; 3 uses
  %i.ge = call ptr @hypre_MAlloc(i32 noundef %i.gc) #7 ; 3 uses
  br i1 %.not264, label %._crit_edge258, label %.lr.ph257

.lr.ph257:                                        ; preds = %._crit_edge254
  %i.gf = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.gh = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.v ; 4 uses
  %wide.trip.count301 = zext i32 %.0.lcssa.wide to i64
  %i.gi = load i32, ptr %i.n, align 4, !tbaa !7   ; 2 uses
  store i32 %i.gi, ptr %i.a, align 8, !tbaa !7
  %i.gj = load i32, ptr %i.am, align 8, !tbaa !7  ; 2 uses
  store i32 %i.gj, ptr %i.ai, align 4, !tbaa !7
  %i.gk = load i32, ptr %i.an, align 4, !tbaa !7  ; 2 uses
  store i32 %i.gk, ptr %i.aj, align 8, !tbaa !7
  store i32 %i.gi, ptr %i.b, align 4, !tbaa !7
  store i32 %i.gj, ptr %i.gf, align 4, !tbaa !7
  store i32 %i.gk, ptr %i.gg, align 4, !tbaa !7
  %i.gl = load i32, ptr %i.gh, align 4, !tbaa !7
  %i.gm = add nsw i32 %i.gl, 1
  store i32 %i.gm, ptr %i.gh, align 4, !tbaa !7
  %i.gn = load <2 x i32>, ptr %i.o, align 8, !tbaa !7
  store <2 x i32> %i.gn, ptr %i.c, align 8, !tbaa !7
  %i.go = load i32, ptr %i.ap, align 8, !tbaa !7
  store i32 %i.go, ptr %i.al, align 8, !tbaa !7
  %i.gp = load i32, ptr %i.ah, align 4, !tbaa !7
  %i.gq = shl nsw i32 %i.gp, 1
  store i32 %i.gq, ptr %i.ah, align 4, !tbaa !7
  %i.gr = load ptr, ptr %i.af, align 8, !tbaa !43
  %i.gs = load ptr, ptr %i.dm, align 8, !tbaa !50
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 24
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !140
  %i.gv = call i32 @hypre_CreateComputeInfo(ptr noundef %i.gr, ptr noundef %i.gu, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i) #7 ; 0 uses
  %i.gw = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.gx = call i32 @hypre_ProjectBoxArrayArray(ptr noundef %i.gw, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #7 ; 0 uses
  %i.gy = load ptr, ptr %i.e, align 8, !tbaa !58
  %i.gz = call i32 @hypre_ProjectBoxArrayArray(ptr noundef %i.gy, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #7 ; 0 uses
  %i.ha = load ptr, ptr %i.h, align 8, !tbaa !58
  %i.hb = call i32 @hypre_ProjectBoxArrayArray(ptr noundef %i.ha, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c) #7 ; 0 uses
  %i.hc = load ptr, ptr %i.i, align 8, !tbaa !58
  %i.hd = call i32 @hypre_ProjectBoxArrayArray(ptr noundef %i.hc, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c) #7 ; 0 uses
  %i.he = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.hf = load ptr, ptr %i.e, align 8, !tbaa !58
  %i.hg = load ptr, ptr %i.f, align 8, !tbaa !141
  %i.hh = load ptr, ptr %i.g, align 8, !tbaa !141
  %i.hi = load ptr, ptr %i.h, align 8, !tbaa !58
  %i.hj = load ptr, ptr %i.i, align 8, !tbaa !58
  %i.hk = load ptr, ptr %i.af, align 8, !tbaa !43
  %i.hl = load ptr, ptr %i.dn, align 8, !tbaa !52
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !59
  %i.ho = call i32 @hypre_ComputePkgCreate(ptr noundef %i.he, ptr noundef %i.hf, ptr noundef nonnull %i.c, ptr noundef nonnull %i.c, ptr noundef %i.hg, ptr noundef %i.hh, ptr noundef %i.hi, ptr noundef %i.hj, ptr noundef nonnull %i.c, ptr noundef %i.hk, ptr noundef %i.hn, i32 noundef 1, ptr noundef %i.gd) #7 ; 0 uses
  %i.hp = load ptr, ptr %i.af, align 8, !tbaa !43
  %i.hq = load ptr, ptr %i.dm, align 8, !tbaa !50
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 24
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !140
  %i.ht = call i32 @hypre_CreateComputeInfo(ptr noundef %i.hp, ptr noundef %i.hs, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i) #7 ; 0 uses
  %i.hu = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.hv = call i32 @hypre_ProjectBoxArrayArray(ptr noundef %i.hu, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c) #7 ; 0 uses
  %i.hw = load ptr, ptr %i.e, align 8, !tbaa !58
  %i.hx = call i32 @hypre_ProjectBoxArrayArray(ptr noundef %i.hw, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c) #7 ; 0 uses
  %i.hy = load ptr, ptr %i.h, align 8, !tbaa !58
  %i.hz = call i32 @hypre_ProjectBoxArrayArray(ptr noundef %i.hy, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #7 ; 0 uses
  %i.ia = load ptr, ptr %i.i, align 8, !tbaa !58
  %i.ib = call i32 @hypre_ProjectBoxArrayArray(ptr noundef %i.ia, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #7 ; 0 uses
  %i.ic = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.id = load ptr, ptr %i.e, align 8, !tbaa !58
  %i.ie = load ptr, ptr %i.f, align 8, !tbaa !141
  %i.if = load ptr, ptr %i.g, align 8, !tbaa !141
  %i.ig = load ptr, ptr %i.h, align 8, !tbaa !58
  %i.ih = load ptr, ptr %i.i, align 8, !tbaa !58
  %i.ii = load ptr, ptr %i.af, align 8, !tbaa !43
  %i.ij = load ptr, ptr %i.dn, align 8, !tbaa !52
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !59
  %i.im = call i32 @hypre_ComputePkgCreate(ptr noundef %i.ic, ptr noundef %i.id, ptr noundef nonnull %i.c, ptr noundef nonnull %i.c, ptr noundef %i.ie, ptr noundef %i.if, ptr noundef %i.ig, ptr noundef %i.ih, ptr noundef nonnull %i.c, ptr noundef %i.ii, ptr noundef %i.il, i32 noundef 1, ptr noundef %i.ge) #7 ; 0 uses
  %exitcond302.not.peel = icmp eq i32 %.0.lcssa.wide, 1
  br i1 %exitcond302.not.peel, label %._crit_edge258, label %.lr.ph257.peel.newph

.lr.ph257.peel.newph:                             ; preds = %.lr.ph257, %.lr.ph257.peel.newph
  %indvars.iv298 = phi i64 [ %indvars.iv.next299, %.lr.ph257.peel.newph ], [ 1, %.lr.ph257 ] ; 6 uses
  store i32 0, ptr %i.a, align 8, !tbaa !7
  store i32 0, ptr %i.ai, align 4, !tbaa !7
  store i32 0, ptr %i.aj, align 8, !tbaa !7
  store i32 0, ptr %i.b, align 4, !tbaa !7
  store i32 0, ptr %i.gf, align 4, !tbaa !7
  store i32 0, ptr %i.gg, align 4, !tbaa !7
  %i.in = load i32, ptr %i.gh, align 4, !tbaa !7
  %i.io = add nsw i32 %i.in, 1
  store i32 %i.io, ptr %i.gh, align 4, !tbaa !7
  store i32 1, ptr %i.c, align 8, !tbaa !7
  store i32 1, ptr %i.ak, align 4, !tbaa !7
  store i32 1, ptr %i.al, align 8, !tbaa !7
  %i.ip = load i32, ptr %i.ah, align 4, !tbaa !7
  %i.iq = shl nsw i32 %i.ip, 1
  store i32 %i.iq, ptr %i.ah, align 4, !tbaa !7
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv298 ; 4 uses
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !43
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv298 ; 2 uses
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !50
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 24
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !140
  %i.ix = call i32 @hypre_CreateComputeInfo(ptr noundef %i.is, ptr noundef %i.iw, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i) #7 ; 0 uses
  %i.iy = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.iz = call i32 @hypre_ProjectBoxArrayArray(ptr noundef %i.iy, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #7 ; 0 uses
  %i.ja = load ptr, ptr %i.e, align 8, !tbaa !58
  %i.jb = call i32 @hypre_ProjectBoxArrayArray(ptr noundef %i.ja, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #7 ; 0 uses
  %i.jc = load ptr, ptr %i.h, align 8, !tbaa !58
  %i.jd = call i32 @hypre_ProjectBoxArrayArray(ptr noundef %i.jc, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c) #7 ; 0 uses
  %i.je = load ptr, ptr %i.i, align 8, !tbaa !58
  %i.jf = call i32 @hypre_ProjectBoxArrayArray(ptr noundef %i.je, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c) #7 ; 0 uses
  %i.jg = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.jh = load ptr, ptr %i.e, align 8, !tbaa !58
  %i.ji = load ptr, ptr %i.f, align 8, !tbaa !141
  %i.jj = load ptr, ptr %i.g, align 8, !tbaa !141
  %i.jk = load ptr, ptr %i.h, align 8, !tbaa !58
  %i.jl = load ptr, ptr %i.i, align 8, !tbaa !58
  %i.jm = load ptr, ptr %i.ir, align 8, !tbaa !43
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv298 ; 2 uses
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !52
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !59
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %indvars.iv298
  %i.js = call i32 @hypre_ComputePkgCreate(ptr noundef %i.jg, ptr noundef %i.jh, ptr noundef nonnull %i.c, ptr noundef nonnull %i.c, ptr noundef %i.ji, ptr noundef %i.jj, ptr noundef %i.jk, ptr noundef %i.jl, ptr noundef nonnull %i.c, ptr noundef %i.jm, ptr noundef %i.jq, i32 noundef 1, ptr noundef nonnull %i.jr) #7 ; 0 uses
  %i.jt = load ptr, ptr %i.ir, align 8, !tbaa !43
  %i.ju = load ptr, ptr %i.it, align 8, !tbaa !50
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 24
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !140
  %i.jx = call i32 @hypre_CreateComputeInfo(ptr noundef %i.jt, ptr noundef %i.jw, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i) #7 ; 0 uses
  %i.jy = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.jz = call i32 @hypre_ProjectBoxArrayArray(ptr noundef %i.jy, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c) #7 ; 0 uses
  %i.ka = load ptr, ptr %i.e, align 8, !tbaa !58
  %i.kb = call i32 @hypre_ProjectBoxArrayArray(ptr noundef %i.ka, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c) #7 ; 0 uses
  %i.kc = load ptr, ptr %i.h, align 8, !tbaa !58
  %i.kd = call i32 @hypre_ProjectBoxArrayArray(ptr noundef %i.kc, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #7 ; 0 uses
  %i.ke = load ptr, ptr %i.i, align 8, !tbaa !58
  %i.kf = call i32 @hypre_ProjectBoxArrayArray(ptr noundef %i.ke, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #7 ; 0 uses
  %i.kg = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.kh = load ptr, ptr %i.e, align 8, !tbaa !58
  %i.ki = load ptr, ptr %i.f, align 8, !tbaa !141
  %i.kj = load ptr, ptr %i.g, align 8, !tbaa !141
  %i.kk = load ptr, ptr %i.h, align 8, !tbaa !58
  %i.kl = load ptr, ptr %i.i, align 8, !tbaa !58
  %i.km = load ptr, ptr %i.ir, align 8, !tbaa !43
  %i.kn = load ptr, ptr %i.jn, align 8, !tbaa !52
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !59
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv298
  %i.kr = call i32 @hypre_ComputePkgCreate(ptr noundef %i.kg, ptr noundef %i.kh, ptr noundef nonnull %i.c, ptr noundef nonnull %i.c, ptr noundef %i.ki, ptr noundef %i.kj, ptr noundef %i.kk, ptr noundef %i.kl, ptr noundef nonnull %i.c, ptr noundef %i.km, ptr noundef %i.kp, i32 noundef 1, ptr noundef nonnull %i.kq) #7 ; 0 uses
  %indvars.iv.next299 = add nuw nsw i64 %indvars.iv298, 1 ; 2 uses
  %exitcond302.not = icmp eq i64 %indvars.iv.next299, %wide.trip.count301
  br i1 %exitcond302.not, label %._crit_edge258, label %.lr.ph257.peel.newph, !llvm.loop !133

._crit_edge258:                                   ; preds = %.lr.ph257, %.lr.ph257.peel.newph, %._crit_edge254
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.gd, ptr %i.ks, align 8, !tbaa !60
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.ge, ptr %i.kt, align 8, !tbaa !61
  %i.ku = load i32, ptr %i.o, align 8, !tbaa !7
  %i.kv = load i32, ptr %i.ao, align 4, !tbaa !7
  %i.kw = mul nsw i32 %i.kv, %i.ku
  %i.kx = load i32, ptr %i.ap, align 8, !tbaa !7
  %i.ky = mul nsw i32 %i.kw, %i.kx                ; 2 uses
  %i.kz = load ptr, ptr %i.dn, align 8, !tbaa !52
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 72
  %i.lb = load i32, ptr %i.la, align 8, !tbaa !142 ; 2 uses
  %4 = sdiv i32 %i.lb, 2
  %5 = sdiv i32 %4, %i.ky
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 3 uses
  %7 = mul nsw i32 %i.lb, 5
  %8 = sdiv i32 %7, 2
  %9 = sdiv i32 %8, %i.ky
  %10 = add nsw i32 %9, %5                        ; 4 uses
  store i32 %10, ptr %6, align 4, !tbaa !62
  %i.lc = icmp samesign ugt i32 %.0.lcssa.wide, 1
  br i1 %i.lc, label %.lr.ph261, label %bb.h

.lr.ph261:                                        ; preds = %._crit_edge258
  %wide.trip.count306 = zext i32 %.0.lcssa.wide to i64
  %i.ld = add nsw i64 %wide.trip.count306, -1     ; 2 uses
  %xtraiter = and i64 %i.ld, 3                    ; 3 uses
  %i.le = add i32 %.0.lcssa.wide, -2
  %i.lf = icmp ult i32 %i.le, 3
  br i1 %i.lf, label %.epil.preheader, label %.lr.ph261.new

.lr.ph261.new:                                    ; preds = %.lr.ph261
  %unroll_iter = and i64 %i.ld, -4
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph261.new
  %indvars.iv303 = phi i64 [ 1, %.lr.ph261.new ], [ %indvars.iv.next304.3, %bb.f ] ; 5 uses
  %i.lg = phi i32 [ %10, %.lr.ph261.new ], [ %i.mh, %bb.f ]
  %niter = phi i64 [ 0, %.lr.ph261.new ], [ %niter.next.3, %bb.f ]
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv303
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !52
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 72
  %i.lk = load i32, ptr %i.lj, align 8, !tbaa !142
  %i.ll = mul nsw i32 %i.lk, 5
  %i.lm = add nsw i32 %i.lg, %i.ll
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv303
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !52
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 72
  %i.lr = load i32, ptr %i.lq, align 8, !tbaa !142
  %i.ls = mul nsw i32 %i.lr, 5
  %i.lt = add nsw i32 %i.lm, %i.ls
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv303
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !52
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 72
  %i.ly = load i32, ptr %i.lx, align 8, !tbaa !142
  %i.lz = mul nsw i32 %i.ly, 5
  %i.ma = add nsw i32 %i.lt, %i.lz
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv303
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 24
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !52
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 72
  %i.mf = load i32, ptr %i.me, align 8, !tbaa !142
  %i.mg = mul nsw i32 %i.mf, 5
  %i.mh = add nsw i32 %i.ma, %i.mg                ; 3 uses
  %indvars.iv.next304.3 = add nuw nsw i64 %indvars.iv303, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge262.unr-lcssa, label %bb.f, !llvm.loop !134

._crit_edge262.unr-lcssa:                         ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge262, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge262.unr-lcssa, %.lr.ph261
  %indvars.iv303.epil.init = phi i64 [ 1, %.lr.ph261 ], [ %indvars.iv.next304.3, %._crit_edge262.unr-lcssa ]
  %.epil.init = phi i32 [ %10, %.lr.ph261 ], [ %i.mh, %._crit_edge262.unr-lcssa ]
  %lcmp.mod326 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod326)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %indvars.iv303.epil = phi i64 [ %indvars.iv303.epil.init, %.epil.preheader ], [ %indvars.iv.next304.epil, %bb.g ] ; 2 uses
  %i.mi = phi i32 [ %.epil.init, %.epil.preheader ], [ %i.mo, %bb.g ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv303.epil
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !52
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 72
  %i.mm = load i32, ptr %i.ml, align 8, !tbaa !142
  %i.mn = mul nsw i32 %i.mm, 5
  %i.mo = add nsw i32 %i.mi, %i.mn                ; 2 uses
  %indvars.iv.next304.epil = add nuw nsw i64 %indvars.iv303.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge262, label %bb.g, !llvm.loop !135

._crit_edge262:                                   ; preds = %bb.g, %._crit_edge262.unr-lcssa
  %.lcssa = phi i32 [ %i.mh, %._crit_edge262.unr-lcssa ], [ %i.mo, %bb.g ] ; 2 uses
  %i.mp = add i32 %.0.lcssa.wide, -2
  %i.mq = zext i32 %i.mp to i64
  %i.mr = add nuw nsw i64 %i.mq, 2
  store i32 %.lcssa, ptr %6, align 4, !tbaa !62
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge262, %._crit_edge258
  %i.ms = phi i32 [ %.lcssa, %._crit_edge262 ], [ %10, %._crit_edge258 ]
  %.6.lcssa = phi i64 [ %i.mr, %._crit_edge262 ], [ 1, %._crit_edge258 ]
  br i1 %i.aw, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.6.lcssa
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !52
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 72
  %i.mw = load i32, ptr %i.mv, align 8, !tbaa !142
  %i.mx = sdiv i32 %i.mw, 2
  %i.my = add nsw i32 %i.ms, %i.mx
  store i32 %i.my, ptr %6, align 4, !tbaa !62
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 0
}

declare ptr @hypre_BoxDuplicate(ptr noundef) local_unnamed_addr #2

declare i32 @hypre_Log2(i32 noundef) local_unnamed_addr #2

declare ptr @hypre_MAlloc(i32 noundef) local_unnamed_addr #2

declare i32 @hypre_StructGridRef(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_ProjectBox(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_StructMapFineToCoarse(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_StructCoarsen(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_BoxDestroy(ptr noundef) local_unnamed_addr #2

declare ptr @hypre_BoxArrayDuplicate(ptr noundef) local_unnamed_addr #2

declare i32 @hypre_ProjectBoxArray(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @hypre_StructMatrixRef(ptr noundef) local_unnamed_addr #2

declare ptr @hypre_StructVectorRef(ptr noundef) local_unnamed_addr #2

declare ptr @hypre_StructVectorCreate(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_StructVectorSetNumGhost(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_StructVectorInitializeShell(ptr noundef) local_unnamed_addr #2

declare i32 @hypre_StructMatrixInitializeData(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_StructVectorInitializeData(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_StructVectorAssemble(ptr noundef) local_unnamed_addr #2

declare i32 @hypre_CreateComputeInfo(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_ProjectBoxArrayArray(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_ComputePkgCreate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_CyclicReduction(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca [3 x i32], align 8                ; 10 uses
  %i.c = alloca [3 x i32], align 8                ; 18 uses
  %i.d = alloca [3 x i32], align 4                ; 20 uses
  %i.e = alloca [3 x i32], align 4                ; 16 uses
  %i.f = alloca [3 x i32], align 4                ; 17 uses
  %i.g = alloca [3 x i32], align 4                ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !44   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !46   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !48
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !54   ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !55   ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !60
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !20
  %i.ab = tail call i32 @hypre_BeginTiming(i32 noundef %i.aa) #7 ; 0 uses
  %i.ac = load ptr, ptr %i.s, align 8, !tbaa !50
  %i.ad = tail call i32 @hypre_StructMatrixDestroy(ptr noundef %i.ac) #7 ; 0 uses
  %i.ae = load ptr, ptr %i.u, align 8, !tbaa !52
  %i.af = tail call i32 @hypre_StructVectorDestroy(ptr noundef %i.ae) #7 ; 0 uses
  %i.ag = tail call ptr @hypre_StructMatrixRef(ptr noundef %1) #7
  store ptr %i.ag, ptr %i.s, align 8, !tbaa !50
  %i.ah = tail call ptr @hypre_StructVectorRef(ptr noundef %3) #7
  store ptr %i.ah, ptr %i.u, align 8, !tbaa !52
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !35
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph, label %.preheader1368

.lr.ph:                                           ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %bb.b

.preheader1368:                                   ; preds = %._crit_edge.split, %bb.a
  %i.ax = add nsw i32 %i.i, -1
  %i.ay = sext i32 %i.k to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.ay ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 10 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 10 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 10 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.bo = zext i32 %i.ax to i64
  br label %.loopexit1367

bb.b:                                             ; preds = %.lr.ph, %._crit_edge.split
  %indvars.iv1624 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next1625, %._crit_edge.split ] ; 6 uses
  %i.bp = load ptr, ptr %i.o, align 8, !tbaa !37
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %indvars.iv1624 ; 4 uses
  %i.br = load ptr, ptr %i.al, align 8, !tbaa !59
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !37
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %i.bs, i64 %indvars.iv1624 ; 5 uses
  %i.bu = load ptr, ptr %i.am, align 8, !tbaa !59
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !37
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %i.bv, i64 %indvars.iv1624 ; 5 uses
  %i.bx = load ptr, ptr %i.an, align 8, !tbaa !187 ; 2 uses
  %i.by = ptrtoaddr ptr %i.bx to i64
  %i.bz = load ptr, ptr %i.ao, align 8, !tbaa !188
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv1624
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !7
  %i.cc = sext i32 %i.cb to i64                   ; 2 uses
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.cc ; 6 uses
  %i.ce = load ptr, ptr %i.ap, align 8, !tbaa !187 ; 2 uses
  %i.cf = ptrtoaddr ptr %i.ce to i64
  %i.cg = load ptr, ptr %i.aq, align 8, !tbaa !188
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv1624
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !7
  %i.cj = sext i32 %i.ci to i64                   ; 2 uses
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.cj ; 6 uses
  %i.cl = load i32, ptr %i.bq, align 4, !tbaa !7
  store i32 %i.cl, ptr %i.f, align 4, !tbaa !7
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !7
  store i32 %i.cn, ptr %i.ar, align 4, !tbaa !7
  %i.co = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !7
  store i32 %i.cp, ptr %i.as, align 4, !tbaa !7
  %i.cq = call i32 @hypre_BoxGetStrideSize(ptr noundef nonnull %i.bq, ptr noundef nonnull %i.m, ptr noundef nonnull %i.e) #7 ; 0 uses
  %i.cr = load i32, ptr %i.f, align 4, !tbaa !7   ; 2 uses
  %i.cs = load i32, ptr %i.bt, align 4, !tbaa !7  ; 2 uses
  %i.ct = sub i32 %i.cr, %i.cs
  %i.cu = load i32, ptr %i.ar, align 4, !tbaa !7  ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !7  ; 2 uses
  %i.cx = sub i32 %i.cu, %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !7
  %i.db = sub nsw i32 %i.da, %i.cw                ; 3 uses
  %i.dc = icmp sgt i32 %i.db, -1                  ; 2 uses
  br i1 %i.dc, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.dd = load i32, ptr %i.as, align 4, !tbaa !7
  %i.de = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.df = load i32, ptr %i.de, align 4, !tbaa !7
  %i.dg = sub nsw i32 %i.dd, %i.df
  %i.dh = add nuw nsw i32 %i.db, 1
  %i.di = mul nsw i32 %i.dg, %i.dh
  br label %bb.d
end_hunk_0
begin_hunk_1_@hypre_CyclicReduction:bb.a
  br i1 %i.asn, label %bb.av, label %._crit_edge1554, !llvm.loop !183

._crit_edge1554:                                  ; preds = %._crit_edge1546.split, %.lr.ph1557
  %indvars.iv.next1696 = add nuw nsw i64 %indvars.iv1695, 1 ; 2 uses
  %i.aso = load i32, ptr %i.ajm, align 8, !tbaa !196
  %i.asp = sext i32 %i.aso to i64
  %i.asq = icmp slt i64 %indvars.iv.next1696, %i.asp
  br i1 %i.asq, label %.lr.ph1557, label %._crit_edge1558, !llvm.loop !184

._crit_edge1558:                                  ; preds = %._crit_edge1554, %bb.au
  br i1 %i.ajc, label %bb.ar, label %bb.ba, !llvm.loop !185

bb.ba:                                            ; preds = %._crit_edge1558
  %indvars.iv.next1699 = add nsw i64 %indvars.iv1698, -1
  %i.asr = icmp sgt i64 %indvars.iv1698, 0
  br i1 %i.asr, label %bb.ah, label %._crit_edge1563, !llvm.loop !186

._crit_edge1563:                                  ; preds = %bb.ba, %bb.ag
  %i.ass = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.ast = load i32, ptr %i.ass, align 4, !tbaa !62
  %i.asu = call i32 @hypre_IncFLOPCount(i32 noundef %i.ast) #7 ; 0 uses
  %i.asv = load i32, ptr %i.z, align 8, !tbaa !20
  %i.asw = call i32 @hypre_EndTiming(i32 noundef %i.asv) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 0
}

declare i32 @hypre_BeginTiming(i32 noundef) local_unnamed_addr #2

declare i32 @hypre_StructMatrixDestroy(ptr noundef) local_unnamed_addr #2

declare i32 @hypre_StructVectorDestroy(ptr noundef) local_unnamed_addr #2

declare i32 @hypre_BoxGetStrideSize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_InitializeIndtComputations(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_FinalizeIndtComputations(ptr noundef) local_unnamed_addr #2

declare i32 @hypre_IncFLOPCount(i32 noundef) local_unnamed_addr #2

declare i32 @hypre_EndTiming(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @hypre_CyclicReductionSetBase(ptr nofree noundef writeonly captures(none) initializes((12, 36)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %1, align 4, !tbaa !7
  store i32 %i.c, ptr %i.a, align 4, !tbaa !7
  %i.d = load i32, ptr %2, align 4, !tbaa !7
  store i32 %i.d, ptr %i.b, align 4, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.f, ptr %i.g, align 4, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.i, ptr %i.j, align 4, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.l, ptr %i.m, align 4, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load i32, ptr %i.n, align 4, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.o, ptr %i.p, align 4, !tbaa !7
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_CyclicReductionDestroy(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.c = tail call i32 @hypre_BoxArrayDestroy(ptr noundef %i.b) #7 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !45
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.g = tail call i32 @hypre_StructGridDestroy(ptr noundef %i.f) #7 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !50
  %i.k = tail call i32 @hypre_StructMatrixDestroy(ptr noundef %i.j) #7 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !55
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !52
  %i.o = tail call i32 @hypre_StructVectorDestroy(ptr noundef %i.n) #7 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !44
  %i.r = icmp sgt i32 %i.q, 1
  br i1 %i.r, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !45
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 6 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !43
  %i.y = tail call i32 @hypre_StructGridDestroy(ptr noundef %i.x) #7 ; 0 uses
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !48
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !47
  %i.ac = tail call i32 @hypre_BoxArrayDestroy(ptr noundef %i.ab) #7 ; 0 uses
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !50
  %i.ag = tail call i32 @hypre_StructMatrixDestroy(ptr noundef %i.af) #7 ; 0 uses
  %i.ah = load ptr, ptr %i.l, align 8, !tbaa !55
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !52
  %i.ak = tail call i32 @hypre_StructVectorDestroy(ptr noundef %i.aj) #7 ; 0 uses
  %i.al = load ptr, ptr %i.t, align 8, !tbaa !60
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !65
  %i.ao = tail call i32 @hypre_ComputePkgDestroy(ptr noundef %i.an) #7 ; 0 uses
  %i.ap = load ptr, ptr %i.u, align 8, !tbaa !61
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !65
  %i.as = tail call i32 @hypre_ComputePkgDestroy(ptr noundef %i.ar) #7 ; 0 uses
  %i.at = load i32, ptr %i.p, align 4, !tbaa !44
  %i.au = add nsw i32 %i.at, -1
  %i.av = sext i32 %i.au to i64
  %i.aw = icmp slt i64 %indvars.iv.next, %i.av
  br i1 %i.aw, label %bb.c, label %._crit_edge, !llvm.loop !204

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %.0.lcssa = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %bb.c ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !48
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.0.lcssa
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !47
  %i.bb = tail call i32 @hypre_BoxArrayDestroy(ptr noundef %i.ba) #7 ; 0 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !53
  tail call void @hypre_Free(ptr noundef %i.bd) #7
  store ptr null, ptr %i.bc, align 8, !tbaa !53
  %i.be = load ptr, ptr %i.d, align 8, !tbaa !45
  tail call void @hypre_Free(ptr noundef %i.be) #7
  store ptr null, ptr %i.d, align 8, !tbaa !45
  %i.bf = load ptr, ptr %i.ax, align 8, !tbaa !48
  tail call void @hypre_Free(ptr noundef %i.bf) #7
  store ptr null, ptr %i.ax, align 8, !tbaa !48
  %i.bg = load ptr, ptr %i.h, align 8, !tbaa !54
  tail call void @hypre_Free(ptr noundef %i.bg) #7
  store ptr null, ptr %i.h, align 8, !tbaa !54
  %i.bh = load ptr, ptr %i.l, align 8, !tbaa !55
  tail call void @hypre_Free(ptr noundef %i.bh) #7
  store ptr null, ptr %i.l, align 8, !tbaa !55
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !60
  tail call void @hypre_Free(ptr noundef %i.bj) #7
  store ptr null, ptr %i.bi, align 8, !tbaa !60
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !61
  tail call void @hypre_Free(ptr noundef %i.bl) #7
  store ptr null, ptr %i.bk, align 8, !tbaa !61
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !20
  %i.bo = tail call i32 @hypre_FinalizeTiming(i32 noundef %i.bn) #7 ; 0 uses
  tail call void @hypre_Free(ptr noundef nonnull %0) #7
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret i32 0
}

declare i32 @hypre_BoxArrayDestroy(ptr noundef) local_unnamed_addr #2

declare i32 @hypre_StructGridDestroy(ptr noundef) local_unnamed_addr #2

declare i32 @hypre_ComputePkgDestroy(ptr noundef) local_unnamed_addr #2

declare void @hypre_Free(ptr noundef) local_unnamed_addr #2

declare i32 @hypre_FinalizeTiming(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!"any p2 pointer", !8, i64 0}
!10 = !{!"p2 _ZTS23hypre_StructGrid_struct", !9, i64 0}
!11 = !{!"p1 _ZTS21hypre_BoxArray_struct", !8, i64 0}
!12 = !{!"p2 _ZTS21hypre_BoxArray_struct", !9, i64 0}
!13 = !{!"p1 double", !8, i64 0}
!14 = !{!"p2 _ZTS25hypre_StructMatrix_struct", !9, i64 0}
!15 = !{!"p2 _ZTS25hypre_StructVector_struct", !9, i64 0}
!16 = !{!"p2 _ZTS23hypre_ComputePkg_struct", !9, i64 0}
!17 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !5, i64 12, !5, i64 24, !10, i64 40, !11, i64 48, !12, i64 56, !13, i64 64, !14, i64 72, !15, i64 80, !16, i64 88, !16, i64 96, !6, i64 104, !6, i64 108}
!18 = !{!17, !6, i64 0}
!19 = !{!17, !6, i64 8}
!20 = !{!17, !6, i64 104}
!21 = !{!"p1 _ZTS23hypre_StructGrid_struct", !8, i64 0}
!22 = !{!"p1 _ZTS26hypre_StructStencil_struct", !8, i64 0}
!23 = !{!"p2 int", !9, i64 0}
!24 = !{!"p1 int", !8, i64 0}
!25 = !{!"p1 _ZTS20hypre_CommPkg_struct", !8, i64 0}
!26 = !{!"hypre_StructMatrix_struct", !6, i64 0, !21, i64 8, !22, i64 16, !22, i64 24, !6, i64 32, !11, i64 40, !13, i64 48, !6, i64 56, !6, i64 60, !23, i64 64, !6, i64 72, !24, i64 80, !5, i64 88, !6, i64 112, !25, i64 120, !6, i64 128}
!27 = !{!26, !6, i64 72}
!28 = !{!26, !21, i64 8}
!29 = !{!"p1 _ZTS25hypre_BoxNeighbors_struct", !8, i64 0}
!30 = !{!"p1 _ZTS16hypre_Box_struct", !8, i64 0}
!31 = !{!"hypre_StructGrid_struct", !6, i64 0, !6, i64 4, !11, i64 8, !24, i64 16, !29, i64 24, !6, i64 32, !30, i64 40, !6, i64 48, !6, i64 52, !5, i64 56, !6, i64 68}
!32 = !{!31, !24, i64 16}
!33 = !{!31, !11, i64 8}
!34 = !{!"hypre_BoxArray_struct", !30, i64 0, !6, i64 8, !6, i64 12}
!35 = !{!34, !6, i64 8}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!34, !30, i64 0}
!38 = !{!26, !11, i64 40}
!39 = !{!"double", !5, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!"llvm.loop.isvectorized", i32 1}
!42 = !{!"llvm.loop.unroll.runtime.disable"}
!43 = !{!21, !21, i64 0}
!44 = !{!17, !6, i64 4}
!45 = !{!17, !10, i64 40}
!46 = !{!17, !11, i64 48}
!47 = !{!11, !11, i64 0}
!48 = !{!17, !12, i64 56}
!49 = !{!"p1 _ZTS25hypre_StructMatrix_struct", !8, i64 0}
!50 = !{!49, !49, i64 0}
!51 = !{!"p1 _ZTS25hypre_StructVector_struct", !8, i64 0}
!52 = !{!51, !51, i64 0}
!53 = !{!17, !13, i64 64}
!54 = !{!17, !14, i64 72}
!55 = !{!17, !15, i64 80}
!56 = !{!"hypre_StructVector_struct", !6, i64 0, !21, i64 8, !11, i64 16, !13, i64 24, !6, i64 32, !6, i64 36, !24, i64 40, !5, i64 48, !6, i64 72, !6, i64 76}
!57 = !{!"p1 _ZTS26hypre_BoxArrayArray_struct", !8, i64 0}
!58 = !{!57, !57, i64 0}
!59 = !{!56, !11, i64 16}
!60 = !{!17, !16, i64 88}
!61 = !{!17, !16, i64 96}
!62 = !{!17, !6, i64 108}
!63 = !{!"llvm.loop.unroll.disable"}
!64 = !{!"p1 _ZTS23hypre_ComputePkg_struct", !8, i64 0}
!65 = !{!64, !64, i64 0}
!66 = !{!26, !6, i64 0}
!67 = distinct !{!67, !36}
!68 = distinct !{!68, !"LVerDomain"}
!69 = distinct !{!69, !68}
!70 = distinct !{!70, !68}
!71 = distinct !{!71, !68}
!72 = distinct !{!72, !68}
!73 = distinct !{!73, !68}
!74 = distinct !{!74, !68}
!75 = distinct !{!75, !36, !41, !42}
!76 = distinct !{!76, !36, !41}
!77 = distinct !{!77, !36}
!78 = distinct !{!78, !36}
!79 = distinct !{!79, !"LVerDomain"}
!80 = distinct !{!80, !79}
!81 = distinct !{!81, !79}
!82 = distinct !{!82, !79}
!83 = distinct !{!83, !79}
!84 = distinct !{!84, !79}
!85 = distinct !{!85, !36, !41, !42}
!86 = distinct !{!86, !36, !41}
!87 = distinct !{!87, !36}
!88 = distinct !{!88, !36}
!89 = distinct !{!89, !36}
!90 = distinct !{!90, !"LVerDomain"}
!91 = distinct !{!91, !90}
!92 = distinct !{!92, !90}
!93 = distinct !{!93, !90}
!94 = distinct !{!94, !36, !41, !42}
!95 = distinct !{!95, !36, !41}
!96 = distinct !{!96, !36}
!97 = distinct !{!97, !36}
!98 = distinct !{!98, !"LVerDomain"}
!99 = distinct !{!99, !98}
!100 = distinct !{!100, !98}
!101 = distinct !{!101, !36, !41, !42}
!102 = distinct !{!102, !36, !41}
!103 = distinct !{!103, !36}
!104 = distinct !{!104, !36}
!105 = distinct !{!105, !36}
!106 = !{!69}
!107 = !{!70}
!108 = !{!71}
!109 = !{!74, !73, !69, !70, !72}
!110 = !{!72}
!111 = !{!74}
!112 = !{!73, !69, !70, !72}
!113 = !{!73}
!114 = !{!69, !70, !72}
!115 = !{!80}
!116 = !{!81}
!117 = !{!82}
!118 = !{!84, !80, !81, !83}
!119 = !{!83}
!120 = !{!84}
!121 = !{!80, !81, !83}
!122 = !{!91}
!123 = !{!92}
!124 = !{!93}
!125 = !{!91, !92}
!126 = !{!99}
!127 = !{!100}
!128 = distinct !{!128, !137}
!129 = distinct !{!129, !36, !137}
!130 = distinct !{!130, !36}
!131 = distinct !{!131, !36}
!132 = distinct !{!132, !36, !137}
!133 = distinct !{!133, !36, !137}
!134 = distinct !{!134, !36}
!135 = distinct !{!135, !63}
!136 = !{!31, !30, i64 40}
!137 = !{!"llvm.loop.peeled.count", i32 1}
!138 = !{!26, !6, i64 60}
!139 = !{!56, !6, i64 36}
!140 = !{!26, !22, i64 24}
!141 = !{!23, !23, i64 0}
!142 = !{!56, !6, i64 72}
!143 = distinct !{!143, !36, !41, !42}
!144 = distinct !{!144, !63}
!145 = distinct !{!145, !36, !41}
!146 = distinct !{!146, !36}
!147 = distinct !{!147, !36}
!148 = distinct !{!148, !36}
!149 = distinct !{!149, !36}
!150 = distinct !{!150, !"LVerDomain"}
!151 = distinct !{!151, !150}
!152 = distinct !{!152, !150}
!153 = distinct !{!153, !36, !41, !42}
!154 = distinct !{!154, !36, !41}
!155 = distinct !{!155, !36}
!156 = distinct !{!156, !36}
!157 = distinct !{!157, !36}
!158 = distinct !{!158, !36}
!159 = distinct !{!159, !36, !41, !42}
!160 = distinct !{!160, !36, !41}
!161 = distinct !{!161, !36}
!162 = distinct !{!162, !36}
!163 = distinct !{!163, !36}
!164 = distinct !{!164, !36}
!165 = distinct !{!165, !36}
!166 = distinct !{!166, !36, !41, !42}
!167 = distinct !{!167, !63}
!168 = distinct !{!168, !36, !41}
!169 = distinct !{!169, !36}
!170 = distinct !{!170, !36}
!171 = distinct !{!171, !36}
!172 = distinct !{!172, !"LVerDomain"}
!173 = distinct !{!173, !172}
!174 = distinct !{!174, !172}
!175 = distinct !{!175, !172}
!176 = distinct !{!176, !172}
!177 = distinct !{!177, !172}
!178 = distinct !{!178, !172}
!179 = distinct !{!179, !36, !41, !42}
!180 = distinct !{!180, !36, !41}
!181 = distinct !{!181, !36}
!182 = distinct !{!182, !36}
!183 = distinct !{!183, !36}
end_hunk_1

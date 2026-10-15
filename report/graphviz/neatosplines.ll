Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/neatosplines?download=true
inline.NumInlined: 43
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@makeObstacle:bb.a
  %i.fw = load i8, ptr %i.bo, align 8, !tbaa !134, !range !38, !noundef !55
  %i.fx = trunc nuw i8 %i.fw to i1
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fs, i64 32
  %i.fz = insertelement <2 x double> poison, double %i.fr, i64 0
  %i.ga = shufflevector <2 x double> %i.fz, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.m

bb.m:                                             ; preds = %gv_calloc.exit.split, %bb.o
  %.0270325 = phi i64 [ 0, %gv_calloc.exit.split ], [ %i.ik, %bb.o ] ; 3 uses
  br i1 %i.fx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.gb = load <2 x double>, ptr %1, align 8, !tbaa !14
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.gc = phi <2 x double> [ %i.gb, %bb.n ], [ zeroinitializer, %bb.m ]
  %i.gd = fadd <2 x double> %i.fv, %i.gc
  %i.ge = uitofp nneg i64 %.0270325 to double
  %i.gf = insertelement <2 x double> poison, double %i.ge, i64 0
  %i.gg = shufflevector <2 x double> %i.gf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gh = fadd nnan <2 x double> %i.gg, <double -5.000000e-01, double 5.000000e-01>
  %i.gi = fmul nnan <2 x double> %i.gh, splat (double f0x401921FB54442D18)
  %i.gj = fdiv <2 x double> %i.gi, %i.ga          ; 2 uses
  %i.gk = extractelement <2 x double> %i.gj, i64 0 ; 2 uses
  %i.gl = call double @cos(double noundef %i.gk) #19
  %i.gm = fmul <2 x double> %i.gd, <double 5.000000e-01, double 1.000000e+00> ; 3 uses
  %i.gn = insertelement <2 x double> <double poison, double 5.000000e-01>, double %i.gl, i64 0
  %i.go = fmul <2 x double> %i.gn, %i.gm          ; 3 uses
  %i.gp = call double @sin(double noundef %i.gk) #19
  %i.gq = extractelement <2 x double> %i.gj, i64 1 ; 2 uses
  %i.gr = call double @cos(double noundef %i.gq) #19
  %i.gs = extractelement <2 x double> %i.gm, i64 0
  %i.gt = fmul double %i.gs, %i.gr                ; 2 uses
  %i.gu = call double @sin(double noundef %i.gq) #19
  %i.gv = extractelement <2 x double> %i.go, i64 0 ; 2 uses
  %i.gw = insertelement <2 x double> %i.go, double %i.gt, i64 1 ; 3 uses
  %i.gx = fneg <2 x double> %i.gw
  %i.gy = fmul <2 x double> %i.gw, %i.gx
  %i.gz = shufflevector <2 x double> %i.gm, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ha = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gz, <2 x double> %i.gz, <2 x double> %i.gy) ; 2 uses
  %i.hb = extractelement <2 x double> %i.ha, i64 0
  %i.hc = call double @sqrt(double noundef %i.hb) #19
  %i.hd = extractelement <2 x double> %i.ha, i64 1
  %i.he = call double @sqrt(double noundef %i.hd) #19
  %i.hf = xor i64 %.0270325, -1
  %i.hg = getelementptr [16 x i8], ptr %i.bn, i64 %i.hf
  %i.hh = shufflevector <2 x double> %i.go, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.hi = fmul <2 x double> %i.hh, %i.gw          ; 2 uses
  %i.hj = fneg <2 x double> %i.hi
  %i.hk = insertelement <2 x double> poison, double %i.hc, i64 0
  %i.hl = insertelement <2 x double> %i.hk, double %i.he, i64 1
  %i.hm = fmul <2 x double> %i.gz, %i.hl
  %i.hn = insertelement <2 x double> poison, double %i.gp, i64 0
  %i.ho = insertelement <2 x double> %i.hn, double %i.gu, i64 1
  %i.hp = fmul <2 x double> %i.hh, %i.ho          ; 3 uses
  %i.hq = fcmp oge <2 x double> %i.hp, zeroinitializer
  %i.hr = select <2 x i1> %i.hq, <2 x double> %i.hj, <2 x double> %i.hi
  %i.hs = fdiv <2 x double> %i.hr, %i.hm          ; 2 uses
  %i.ht = extractelement <2 x double> %i.hs, i64 1 ; 2 uses
  %i.hu = fneg double %i.ht
  %i.hv = extractelement <2 x double> %i.hp, i64 0 ; 2 uses
  %i.hw = fneg double %i.hv
  %i.hx = extractelement <2 x double> %i.hs, i64 0 ; 3 uses
  %i.hy = call double @llvm.fmuladd.f64(double %i.hx, double %i.gv, double %i.hw)
  %i.hz = call double @llvm.fmuladd.f64(double %i.hu, double %i.gt, double %i.hy)
  %i.ia = extractelement <2 x double> %i.hp, i64 1
  %i.ib = fadd double %i.ia, %i.hz
  %i.ic = fsub double %i.hx, %i.ht
  %i.id = fdiv double %i.ib, %i.ic                ; 2 uses
  %i.ie = fsub double %i.id, %i.gv
  %i.if = call double @llvm.fmuladd.f64(double %i.hx, double %i.ie, double %i.hv)
  %i.ig = load <2 x double>, ptr %i.fy, align 8, !tbaa !14
  %i.ih = insertelement <2 x double> poison, double %i.id, i64 0
  %i.ii = insertelement <2 x double> %i.ih, double %i.if, i64 1
  %i.ij = fadd <2 x double> %i.ii, %i.ig
  store <2 x double> %i.ij, ptr %i.hg, align 8, !tbaa !14
  %i.ik = add nuw nsw i64 %.0270325, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.ik, %.0267353
  br i1 %exitcond.not, label %.loopexit, label %bb.m, !llvm.loop !117

bb.p:                                             ; preds = %bb.a
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !26 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 24
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !124
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  %i.iq = load <4 x double>, ptr %i.ip, align 8, !tbaa !14 ; 4 uses
  %i.ir = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 1, i64 noundef range(i64 8, 73) 16) #16 ; 5 uses
  %i.is = icmp eq ptr %i.ir, null
  br i1 %i.is, label %bb.q, label %gv_alloc.exit291

bb.q:                                             ; preds = %bb.p
  %i.it = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.iu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.it, ptr noundef nonnull @.str.6, i64 noundef 16) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

gv_alloc.exit291:                                 ; preds = %bb.p
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  store i64 4, ptr %i.iv, align 8, !tbaa !52
  %i.iw = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 4, i64 noundef 16) #16 ; 10 uses
  %i.ix = icmp eq ptr %i.iw, null
  br i1 %i.ix, label %bb.r, label %gv_calloc.exit292

bb.r:                                             ; preds = %gv_alloc.exit291
  %i.iy = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.iz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.iy, ptr noundef nonnull @.str.6, i64 noundef 64) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit292:                                ; preds = %gv_alloc.exit291
  store ptr %i.iw, ptr %i.ir, align 8, !tbaa !53
  %i.ja = getelementptr inbounds nuw i8, ptr %i.im, i64 32
  %i.jb = load <2 x double>, ptr %i.ja, align 8, !tbaa !14 ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.jd = load i8, ptr %i.jc, align 8, !tbaa !134, !range !38, !noundef !55
  %i.je = trunc nuw i8 %i.jd to i1
  %i.jf = load double, ptr %1, align 8, !tbaa !60 ; 2 uses
  br i1 %i.je, label %bb.s, label %bb.t

bb.s:                                             ; preds = %gv_calloc.exit292
  %i.jg = shufflevector <2 x double> %i.jb, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ji = load double, ptr %i.jh, align 8, !tbaa !61
  %i.jj = insertelement <4 x double> poison, double %i.jf, i64 0
  %i.jk = insertelement <4 x double> %i.jj, double %i.ji, i64 1
  %i.jl = shufflevector <4 x double> %i.jk, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.jm = fsub <4 x double> %i.iq, %i.jl
  %i.jn = fadd <4 x double> %i.iq, %i.jl
  %i.jo = shufflevector <4 x double> %i.jm, <4 x double> %i.jn, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.jp = fadd <4 x double> %i.jg, %i.jo          ; 3 uses
  %i.jq = shufflevector <4 x double> %i.jp, <4 x double> poison, <6 x i32> <i32 0, i32 1, i32 0, i32 3, i32 2, i32 3>
  store <6 x double> %i.jq, ptr %i.iw, align 8, !tbaa !14
  %i.jr = getelementptr inbounds nuw i8, ptr %i.iw, i64 48
  %i.js = extractelement <4 x double> %i.jp, i64 2
  store double %i.js, ptr %i.jr, align 8, !tbaa !14
  %i.jt = extractelement <4 x double> %i.jp, i64 1
  br label %.loopexit.sink.split

bb.t:                                             ; preds = %gv_calloc.exit292
  %i.ju = getelementptr i8, ptr %1, i64 8
  %.val290 = load double, ptr %i.ju, align 8, !tbaa !61
  %i.jv = shufflevector <4 x double> %i.iq, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.jw = insertelement <2 x double> poison, double %i.jf, i64 0
  %i.jx = insertelement <2 x double> %i.jw, double %.val290, i64 1 ; 2 uses
  %i.jy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jv, <2 x double> %i.jx, <2 x double> %i.jb) ; 3 uses
  store <2 x double> %i.jy, ptr %i.iw, align 8, !tbaa !14
  %i.jz = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %i.ka = extractelement <2 x double> %i.jy, i64 0
  store double %i.ka, ptr %i.jz, align 8, !tbaa !14
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iw, i64 24
  %i.kb = shufflevector <4 x double> %i.iq, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %i.kc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kb, <2 x double> %i.jx, <2 x double> %i.jb)
  %i.kd = shufflevector <2 x double> %i.kc, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  store <2 x double> %i.kd, ptr %.sroa.420.0..sroa_idx, align 8, !tbaa !14
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iw, i64 40
  store <2 x double> %i.kd, ptr %.sroa.418.0..sroa_idx, align 8, !tbaa !14
  %i.ke = extractelement <2 x double> %i.jy, i64 1
  br label %.loopexit.sink.split

bb.u:                                             ; preds = %bb.a
  %i.kf = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 1, i64 noundef range(i64 8, 73) 16) #16 ; 5 uses
  %i.kg = icmp eq ptr %i.kf, null
  br i1 %i.kg, label %bb.v, label %gv_alloc.exit307

bb.v:                                             ; preds = %bb.u
  %i.kh = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.ki = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kh, ptr noundef nonnull @.str.6, i64 noundef 16) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

gv_alloc.exit307:                                 ; preds = %bb.u
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  store i64 4, ptr %i.kj, align 8, !tbaa !52
  %i.kk = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 4, i64 noundef 16) #16 ; 15 uses
  %i.kl = icmp eq ptr %i.kk, null
  br i1 %i.kl, label %bb.w, label %gv_calloc.exit308

bb.w:                                             ; preds = %gv_alloc.exit307
  %i.km = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.kn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.km, ptr noundef nonnull @.str.6, i64 noundef 64) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit308:                                ; preds = %gv_alloc.exit307
  store ptr %i.kk, ptr %i.kf, align 8, !tbaa !53
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !26 ; 6 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 32
  %i.kr = load <2 x double>, ptr %i.kq, align 8, !tbaa !14 ; 6 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.kt = load i8, ptr %i.ks, align 8, !tbaa !134, !range !38, !noundef !55
  %i.ku = trunc nuw i8 %i.kt to i1
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kp, i64 104 ; 3 uses
  %i.kw = load double, ptr %i.kv, align 8, !tbaa !138
  %i.kx = fneg double %i.kw                       ; 2 uses
  br i1 %i.ku, label %bb.x, label %bb.y

bb.x:                                             ; preds = %gv_calloc.exit308
  %i.ky = load double, ptr %1, align 8, !tbaa !60 ; 4 uses
  %i.kz = fsub double %i.kx, %i.ky
  %i.la = getelementptr inbounds nuw i8, ptr %i.kp, i64 96 ; 4 uses
  %i.lb = load double, ptr %i.la, align 8, !tbaa !139
  %i.lc = fneg double %i.lb
  %i.ld = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.le = load double, ptr %i.ld, align 8, !tbaa !61 ; 4 uses
  %i.lf = fsub double %i.lc, %i.le
  %5 = extractelement <2 x double> %i.kr, i64 0   ; 4 uses
  %i.lg = fadd double %5, %i.kz
  %6 = extractelement <2 x double> %i.kr, i64 1   ; 4 uses
  %i.lh = fadd double %6, %i.lf
  store double %i.lg, ptr %i.kk, align 8, !tbaa !14
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  store double %i.lh, ptr %.sroa.414.0..sroa_idx, align 8, !tbaa !14
  %i.li = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  %i.lj = load double, ptr %i.kv, align 8, !tbaa !138
  %i.lk = fneg double %i.lj
  %i.ll = fsub double %i.lk, %i.ky
  %i.lm = load double, ptr %i.la, align 8, !tbaa !139
  %i.ln = fadd double %i.le, %i.lm
  %i.lo = fadd double %5, %i.ll
  %i.lp = fadd double %6, %i.ln
  store double %i.lo, ptr %i.li, align 8, !tbaa !14
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kk, i64 24
  store double %i.lp, ptr %.sroa.412.0..sroa_idx, align 8, !tbaa !14
  %i.lq = getelementptr inbounds nuw i8, ptr %i.kk, i64 32
  %i.lr = getelementptr inbounds nuw i8, ptr %i.kp, i64 112 ; 2 uses
  %i.ls = load double, ptr %i.lr, align 8, !tbaa !140
  %i.lt = fadd double %i.ky, %i.ls
  %i.lu = load double, ptr %i.la, align 8, !tbaa !139
  %i.lv = fadd double %i.le, %i.lu
  %i.lw = fadd double %5, %i.lt
  %i.lx = fadd double %6, %i.lv
  store double %i.lw, ptr %i.lq, align 8, !tbaa !14
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kk, i64 40
  store double %i.lx, ptr %.sroa.410.0..sroa_idx, align 8, !tbaa !14
  %i.ly = getelementptr inbounds nuw i8, ptr %i.kk, i64 48
  %i.lz = load double, ptr %i.lr, align 8, !tbaa !140
  %i.ma = fadd double %i.ky, %i.lz
  %i.mb = load double, ptr %i.la, align 8, !tbaa !139
  %i.mc = fneg double %i.mb
  %i.md = fsub double %i.mc, %i.le
  %i.me = fadd double %5, %i.ma
  %i.mf = fadd double %6, %i.md
  store double %i.me, ptr %i.ly, align 8, !tbaa !14
  br label %.loopexit.sink.split

bb.y:                                             ; preds = %gv_calloc.exit308
  %i.mg = getelementptr inbounds nuw i8, ptr %i.kp, i64 96 ; 4 uses
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !139
  %i.mi = fneg double %i.mh
  %i.mj = load <2 x double>, ptr %1, align 8, !tbaa !14 ; 4 uses
  %i.mk = insertelement <2 x double> poison, double %i.kx, i64 0
  %i.ml = insertelement <2 x double> %i.mk, double %i.mi, i64 1
  %i.mm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ml, <2 x double> %i.mj, <2 x double> %i.kr)
  store <2 x double> %i.mm, ptr %i.kk, align 8, !tbaa !14
  %i.mn = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  %i.mo = load double, ptr %i.kv, align 8, !tbaa !138
  %i.mp = fneg double %i.mo
  %i.mq = load double, ptr %i.mg, align 8, !tbaa !139
  %i.mr = insertelement <2 x double> poison, double %i.mp, i64 0
  %i.ms = insertelement <2 x double> %i.mr, double %i.mq, i64 1
  %i.mt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ms, <2 x double> %i.mj, <2 x double> %i.kr)
  store <2 x double> %i.mt, ptr %i.mn, align 8, !tbaa !14
  %i.mu = getelementptr inbounds nuw i8, ptr %i.kk, i64 32
  %i.mv = getelementptr inbounds nuw i8, ptr %i.kp, i64 112 ; 2 uses
  %i.mw = load double, ptr %i.mv, align 8, !tbaa !140
  %i.mx = load double, ptr %i.mg, align 8, !tbaa !139
  %i.my = insertelement <2 x double> poison, double %i.mw, i64 0
  %i.mz = insertelement <2 x double> %i.my, double %i.mx, i64 1
  %i.na = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mz, <2 x double> %i.mj, <2 x double> %i.kr)
  store <2 x double> %i.na, ptr %i.mu, align 8, !tbaa !14
  %i.nb = getelementptr inbounds nuw i8, ptr %i.kk, i64 48
  %i.nc = load double, ptr %i.mv, align 8, !tbaa !140
  %i.nd = load double, ptr %i.mg, align 8, !tbaa !139
  %i.ne = fneg double %i.nd
  %i.nf = insertelement <2 x double> poison, double %i.nc, i64 0
  %i.ng = insertelement <2 x double> %i.nf, double %i.ne, i64 1
  %i.nh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ng, <2 x double> %i.mj, <2 x double> %i.kr) ; 2 uses
  %i.ni = extractelement <2 x double> %i.nh, i64 0
  store double %i.ni, ptr %i.nb, align 8, !tbaa !14
  %i.nj = extractelement <2 x double> %i.nh, i64 1
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.t, %bb.s, %bb.y, %bb.x
  %.sink358 = phi ptr [ %i.kk, %bb.x ], [ %i.kk, %bb.y ], [ %i.iw, %bb.s ], [ %i.iw, %bb.t ]
  %.sink = phi double [ %i.mf, %bb.x ], [ %i.nj, %bb.y ], [ %i.jt, %bb.s ], [ %i.ke, %bb.t ]
  %.0.ph = phi ptr [ %i.kf, %bb.x ], [ %i.kf, %bb.y ], [ %i.ir, %bb.s ], [ %i.ir, %bb.t ]
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sink358, i64 56
  store double %.sink, ptr %.sroa.48.0..sroa_idx, align 8, !tbaa !14
  br label %.loopexit

.loopexit:                                        ; preds = %bb.o, %scalar.ph.prol.loopexit, %scalar.ph, %bb.l, %gv_calloc.exit.split.us.split.us.split.us.1, %middle.block, %.loopexit.sink.split, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.b, %bb.l ], [ %.0.ph, %.loopexit.sink.split ], [ %i.b, %middle.block ], [ %i.b, %gv_calloc.exit.split.us.split.us.split.us.1 ], [ %i.b, %scalar.ph.prol.loopexit ], [ %i.b, %scalar.ph ], [ %i.b, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare i32 @shapeOf(ptr noundef) local_unnamed_addr #5

declare void @polyBB(ptr dead_on_unwind writable sret(%struct.boxf) align 8, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare double @late_double(ptr noundef, ptr noundef, double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @hypot(double noundef, double noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define { ptr, i64 } @getPath(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 {
bb.a:
  %3 = alloca %struct.Ppoly_t, align 8            ; 3 uses
  %i.a = load i32, ptr %0, align 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = icmp eq i32 %i.b, 3
  %i.d = select i1 %i.c, i64 56, i64 120
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load <2 x double>, ptr %i.i, align 8
  %i.n = load <2 x double>, ptr %i.l, align 8
  %i.o = icmp eq i32 %i.b, 2
  %i.p = select i1 %i.o, i64 56, i64 -8
  %i.q = getelementptr inbounds i8, ptr %0, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !41
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !26   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.w = load <2 x double>, ptr %i.u, align 8
  %i.x = load <2 x double>, ptr %i.v, align 8
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 452
  %i.z = load i32, ptr %i.y, align 4, !tbaa !62
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 452
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !62
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.023 = phi i32 [ %i.ab, %bb.b ], [ -1111, %bb.a ]
  %.0 = phi i32 [ %i.z, %bb.b ], [ -1111, %bb.a ]
  %i.ac = fadd <2 x double> %i.w, %i.x            ; 2 uses
  %i.ad = fadd <2 x double> %i.m, %i.n            ; 2 uses
  %i.ae = extractelement <2 x double> %i.ac, i64 0
  %i.af = extractelement <2 x double> %i.ac, i64 1
  %i.ag = extractelement <2 x double> %i.ad, i64 0
  %i.ah = extractelement <2 x double> %i.ad, i64 1
  call void @Pobspath(ptr noundef %1, double %i.ag, double %i.ah, i32 noundef %.0, double %i.ae, double %i.af, i32 noundef %.023, ptr noundef nonnull %3) #19
  %.fca.0.load = load ptr, ptr %3, align 8
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.fca.1.load, 1
  ret { ptr, i64 } %.fca.1.insert
}

declare void @Pobspath(ptr noundef, double, double, i32 noundef, double, double, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @makeSpline(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #3 {
bb.a:
  %4 = alloca %struct.Ppoly_t, align 8            ; 5 uses
  %5 = alloca [2 x %struct.pointf_s], align 16    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %.sroa.012.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !63 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !64 ; 2 uses
  %.sroa.01.0.copyload = load double, ptr %.sroa.012.0.copyload, align 8, !tbaa !14
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.012.0.copyload, i64 8
  %.sroa.42.0.copyload = load double, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !14
  %i.d = getelementptr [16 x i8], ptr %.sroa.012.0.copyload, i64 %.sroa.6.0.copyload ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 -16
  %.sroa.0.0.copyload = load double, ptr %i.e, align 8, !tbaa !14
  %.sroa.4.0..sroa_idx = getelementptr i8, ptr %i.d, i64 -8
  %.sroa.4.0.copyload = load double, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %i.f = icmp sgt i32 %2, 0                       ; 3 uses
  %or.cond = and i1 %3, %i.f
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 5 uses
  %.047 = phi i32 [ -1111, %.lr.ph.preheader ], [ %.1, %bb.e ] ; 2 uses
  %.03946 = phi i32 [ -1111, %.lr.ph.preheader ], [ %.140, %bb.e ] ; 2 uses
  %i.g = icmp eq i32 %.03946, -1111
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
end_hunk_0

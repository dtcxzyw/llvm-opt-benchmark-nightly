Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtgsna?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@dtgsna_:bb.a
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr [8 x i8], ptr %i.af, i64 %i.fp
  %i.fr = getelementptr i8, ptr %i.fq, i64 8      ; 3 uses
  %i.fs = call double @dnrm2_(ptr noundef nonnull %3, ptr noundef %i.fr, ptr noundef nonnull @c__1) #6
  store double %i.fs, ptr %i.c, align 8, !tbaa !9
  %i.ft = add nsw i32 %.0422500, 2                ; 3 uses
  %i.fu = mul nsw i32 %i.ft, %i.ad
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr [8 x i8], ptr %i.af, i64 %i.fv
  %i.fx = getelementptr i8, ptr %i.fw, i64 8      ; 3 uses
  %i.fy = call double @dnrm2_(ptr noundef nonnull %3, ptr noundef %i.fx, ptr noundef nonnull @c__1) #6
  store double %i.fy, ptr %i.d, align 8, !tbaa !9
  %i.fz = call double @dlapy2_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #6
  %i.ga = mul nsw i32 %i.fl, %i.aa
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr [8 x i8], ptr %i.ac, i64 %i.gb
  %i.gd = getelementptr i8, ptr %i.gc, i64 8      ; 5 uses
  %i.ge = call double @dnrm2_(ptr noundef nonnull %3, ptr noundef %i.gd, ptr noundef nonnull @c__1) #6
  store double %i.ge, ptr %i.c, align 8, !tbaa !9
  %i.gf = mul nsw i32 %i.ft, %i.aa
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr [8 x i8], ptr %i.ac, i64 %i.gg
  %i.gi = getelementptr i8, ptr %i.gh, i64 8      ; 5 uses
  %i.gj = call double @dnrm2_(ptr noundef nonnull %3, ptr noundef %i.gi, ptr noundef nonnull @c__1) #6
  store double %i.gj, ptr %i.d, align 8, !tbaa !9
  %i.gk = call double @dlapy2_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #6
  call void @dgemv_(ptr noundef nonnull @.str.7, ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef nonnull @c_b19, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %i.fr, ptr noundef nonnull @c__1, ptr noundef nonnull @c_b21, ptr noundef %16, ptr noundef nonnull @c__1) #6
  %i.gl = call double @ddot_(ptr noundef nonnull %3, ptr noundef %16, ptr noundef nonnull @c__1, ptr noundef %i.gd, ptr noundef nonnull @c__1) #6
  %i.gm = call double @ddot_(ptr noundef nonnull %3, ptr noundef %16, ptr noundef nonnull @c__1, ptr noundef %i.gi, ptr noundef nonnull @c__1) #6
  call void @dgemv_(ptr noundef nonnull @.str.7, ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef nonnull @c_b19, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %i.fx, ptr noundef nonnull @c__1, ptr noundef nonnull @c_b21, ptr noundef %16, ptr noundef nonnull @c__1) #6
  %i.gn = call double @ddot_(ptr noundef nonnull %3, ptr noundef %16, ptr noundef nonnull @c__1, ptr noundef %i.gi, ptr noundef nonnull @c__1) #6
  %i.go = call double @ddot_(ptr noundef nonnull %3, ptr noundef %16, ptr noundef nonnull @c__1, ptr noundef %i.gd, ptr noundef nonnull @c__1) #6
  %i.gp = fadd double %i.gl, %i.gn
  store double %i.gp, ptr %i.g, align 8, !tbaa !9
  %i.gq = fsub double %i.go, %i.gm
  store double %i.gq, ptr %i.l, align 8, !tbaa !9
  call void @dgemv_(ptr noundef nonnull @.str.7, ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef nonnull @c_b19, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %i.fr, ptr noundef nonnull @c__1, ptr noundef nonnull @c_b21, ptr noundef %16, ptr noundef nonnull @c__1) #6
  %i.gr = call double @ddot_(ptr noundef nonnull %3, ptr noundef %16, ptr noundef nonnull @c__1, ptr noundef %i.gd, ptr noundef nonnull @c__1) #6
  %i.gs = call double @ddot_(ptr noundef nonnull %3, ptr noundef %16, ptr noundef nonnull @c__1, ptr noundef %i.gi, ptr noundef nonnull @c__1) #6
  call void @dgemv_(ptr noundef nonnull @.str.7, ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef nonnull @c_b19, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %i.fx, ptr noundef nonnull @c__1, ptr noundef nonnull @c_b21, ptr noundef %16, ptr noundef nonnull @c__1) #6
  %i.gt = call double @ddot_(ptr noundef nonnull %3, ptr noundef %16, ptr noundef nonnull @c__1, ptr noundef %i.gi, ptr noundef nonnull @c__1) #6
  %i.gu = call double @ddot_(ptr noundef nonnull %3, ptr noundef %16, ptr noundef nonnull @c__1, ptr noundef %i.gd, ptr noundef nonnull @c__1) #6
  %i.gv = fadd double %i.gr, %i.gt
  store double %i.gv, ptr %i.h, align 8, !tbaa !9
  %i.gw = fsub double %i.gu, %i.gs
  store double %i.gw, ptr %i.m, align 8, !tbaa !9
  %i.gx = call double @dlapy2_(ptr noundef nonnull %i.g, ptr noundef nonnull %i.l) #6
  store double %i.gx, ptr %i.g, align 8, !tbaa !9
  %i.gy = call double @dlapy2_(ptr noundef nonnull %i.h, ptr noundef nonnull %i.m) #6
  store double %i.gy, ptr %i.h, align 8, !tbaa !9
  %i.gz = call double @dlapy2_(ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #6 ; 2 uses
  %i.ha = fmul double %i.fz, %i.gk
  %i.hb = fdiv double %i.gz, %i.ha                ; 2 uses
  %i.hc = sext i32 %i.fl to i64
  %i.hd = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.hc
  store double %i.hb, ptr %i.hd, align 8, !tbaa !9
  br label %.sink.split523

.thread484:                                       ; preds = %.thread515, %.thread480, %bb.at
  %i.he = phi i32 [ %i.fl, %bb.at ], [ %i.fn, %.thread480 ], [ %i.fm, %.thread515 ] ; 6 uses
  %i.hf = mul nsw i32 %i.he, %i.ad
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr [8 x i8], ptr %i.af, i64 %i.hg
  %i.hi = getelementptr i8, ptr %i.hh, i64 8      ; 3 uses
  %i.hj = call double @dnrm2_(ptr noundef nonnull %3, ptr noundef %i.hi, ptr noundef nonnull @c__1) #6
  %i.hk = mul nsw i32 %i.he, %i.aa
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr [8 x i8], ptr %i.ac, i64 %i.hl
  %i.hn = getelementptr i8, ptr %i.hm, i64 8      ; 3 uses
  %i.ho = call double @dnrm2_(ptr noundef nonnull %3, ptr noundef %i.hn, ptr noundef nonnull @c__1) #6
  call void @dgemv_(ptr noundef nonnull @.str.7, ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef nonnull @c_b19, ptr noundef %4, ptr noundef nonnull %5, ptr noundef %i.hi, ptr noundef nonnull @c__1, ptr noundef nonnull @c_b21, ptr noundef %16, ptr noundef nonnull @c__1) #6
  %i.hp = call double @ddot_(ptr noundef nonnull %3, ptr noundef %16, ptr noundef nonnull @c__1, ptr noundef %i.hn, ptr noundef nonnull @c__1) #6
  store double %i.hp, ptr %i.g, align 8, !tbaa !9
  call void @dgemv_(ptr noundef nonnull @.str.7, ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef nonnull @c_b19, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %i.hi, ptr noundef nonnull @c__1, ptr noundef nonnull @c_b21, ptr noundef %16, ptr noundef nonnull @c__1) #6
  %i.hq = call double @ddot_(ptr noundef nonnull %3, ptr noundef %16, ptr noundef nonnull @c__1, ptr noundef %i.hn, ptr noundef nonnull @c__1) #6
  store double %i.hq, ptr %i.h, align 8, !tbaa !9
  %i.hr = call double @dlapy2_(ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #6 ; 4 uses
  %i.hs = fcmp oeq double %i.hr, 0.000000e+00
  br i1 %i.hs, label %.sink.split523, label %bb.av

bb.av:                                            ; preds = %.thread484
  %i.ht = fmul double %i.hj, %i.ho
  %i.hu = fdiv double %i.hr, %i.ht
  br label %.sink.split523

.sink.split523:                                   ; preds = %.thread484, %bb.av, %bb.au
  %.sink528 = phi i32 [ %i.ft, %bb.au ], [ %i.he, %bb.av ], [ %i.he, %.thread484 ]
  %.sink525 = phi double [ %i.hb, %bb.au ], [ %i.hu, %bb.av ], [ -1.000000e+00, %.thread484 ]
  %.ph524 = phi i32 [ %i.fl, %bb.au ], [ %i.he, %bb.av ], [ %i.he, %.thread484 ]
  %.3431475483.ph = phi i32 [ 1, %bb.au ], [ 0, %bb.av ], [ 0, %.thread484 ]
  %.1433.ph = phi double [ %i.gz, %bb.au ], [ %i.hr, %bb.av ], [ %i.hr, %.thread484 ]
  %i.hv = sext i32 %.sink528 to i64
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.hv
  store double %.sink525, ptr %i.hw, align 8, !tbaa !9
  br label %bb.aw

bb.aw:                                            ; preds = %.sink.split523, %.thread515, %.thread480, %bb.as
  %i.hx = phi i32 [ %i.fl, %bb.as ], [ %i.fn, %.thread480 ], [ %i.fm, %.thread515 ], [ %.ph524, %.sink.split523 ] ; 5 uses
  %.3431475483 = phi i32 [ %.3431475, %bb.as ], [ 0, %.thread480 ], [ 0, %.thread515 ], [ %.3431475483.ph, %.sink.split523 ] ; 3 uses
  %.1433 = phi double [ %.0432493, %bb.as ], [ %.0432493, %.thread480 ], [ %.0432493, %.thread515 ], [ %.1433.ph, %.sink.split523 ] ; 3 uses
  br i1 %i.aq, label %bb.ax, label %.critedge466

bb.ax:                                            ; preds = %bb.aw
  %i.hy = load i32, ptr %3, align 4, !tbaa !8
  %i.hz = icmp eq i32 %i.hy, 1
  br i1 %i.hz, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ia = call double @dlapy2_(ptr noundef %4, ptr noundef %6) #6
  %i.ib = sext i32 %i.hx to i64
  %i.ic = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ib
  store double %i.ia, ptr %i.ic, align 8, !tbaa !9
  br label %bb.bf

bb.az:                                            ; preds = %bb.ax
  %.not460 = icmp eq i32 %.3431475483, 0          ; 3 uses
  br i1 %.not460, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.id = mul nsw i64 %indvars.iv505, %i.es       ; 2 uses
  %i.ie = getelementptr [8 x i8], ptr %i.w, i64 %i.id
  %i.if = getelementptr [8 x i8], ptr %i.ie, i64 %indvars.iv505
  %i.ig = load double, ptr %i.if, align 8, !tbaa !9
  store double %i.ig, ptr %16, align 8, !tbaa !9
  %i.ih = add nuw nsw i64 %indvars.iv505, 1       ; 6 uses
  %i.ii = add nuw nsw i32 %indvars507, 1          ; 2 uses
  %i.ij = getelementptr [8 x i8], ptr %i.w, i64 %i.ih
  %i.ik = getelementptr [8 x i8], ptr %i.ij, i64 %i.id
  %i.il = load double, ptr %i.ik, align 8, !tbaa !9
  store double %i.il, ptr %i.ek, align 8, !tbaa !9
  %i.im = mul nsw i64 %i.ih, %i.es
  %i.in = mul nsw i32 %i.ii, %i.u
  %i.io = getelementptr [8 x i8], ptr %i.w, i64 %i.im
  %i.ip = getelementptr [8 x i8], ptr %i.io, i64 %indvars.iv505
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !9
  store double %i.iq, ptr %i.el, align 8, !tbaa !9
  %i.ir = sext i32 %i.in to i64
  %i.is = getelementptr [8 x i8], ptr %i.w, i64 %i.ih
  %i.it = getelementptr [8 x i8], ptr %i.is, i64 %i.ir
  %i.iu = load double, ptr %i.it, align 8, !tbaa !9
  store double %i.iu, ptr %i.em, align 8, !tbaa !9
  %i.iv = mul nsw i64 %indvars.iv505, %i.et       ; 2 uses
  %i.iw = getelementptr [8 x i8], ptr %i.z, i64 %i.iv
  %i.ix = getelementptr [8 x i8], ptr %i.iw, i64 %indvars.iv505
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !9
  store double %i.iy, ptr %i.en, align 8, !tbaa !9
  %i.iz = getelementptr [8 x i8], ptr %i.z, i64 %i.ih
  %i.ja = getelementptr [8 x i8], ptr %i.iz, i64 %i.iv
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !9
  store double %i.jb, ptr %i.eo, align 8, !tbaa !9
  %i.jc = mul nsw i64 %i.ih, %i.et
  %i.jd = mul nsw i32 %i.ii, %i.x
  %i.je = getelementptr [8 x i8], ptr %i.z, i64 %i.jc
  %i.jf = getelementptr [8 x i8], ptr %i.je, i64 %indvars.iv505
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !9
  store double %i.jg, ptr %i.ep, align 8, !tbaa !9
  %i.jh = sext i32 %i.jd to i64
  %i.ji = getelementptr [8 x i8], ptr %i.z, i64 %i.ih
  %i.jj = getelementptr [8 x i8], ptr %i.ji, i64 %i.jh
  %i.jk = load double, ptr %i.jj, align 8, !tbaa !9
  store double %i.jk, ptr %i.eq, align 8, !tbaa !9
  store double %i.er, ptr %i.c, align 8, !tbaa !9
  call void @dlag2_(ptr noundef nonnull %16, ptr noundef nonnull @c__2, ptr noundef nonnull %i.en, ptr noundef nonnull @c__2, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e, ptr noundef nonnull %i.q, ptr noundef nonnull %i.s, ptr noundef nonnull %i.p, ptr noundef nonnull %i.r) #6
  %i.jl = load double, ptr %i.s, align 8, !tbaa !9 ; 2 uses
  %i.jm = load double, ptr %i.r, align 8, !tbaa !9 ; 4 uses
  %i.jn = fmul double %i.jm, %i.jm
  %i.jo = call double @llvm.fmuladd.f64(double %i.jl, double %i.jl, double %i.jn)
  %i.jp = load double, ptr %i.e, align 8, !tbaa !9 ; 4 uses
  %i.jq = call double @llvm.fmuladd.f64(double %i.jp, double %i.jp, double %i.jo)
  %i.jr = fmul double %i.jq, 2.000000e+00         ; 3 uses
  %i.js = fmul double %i.jp, 4.000000e+00
  %i.jt = fmul double %i.jp, %i.js
  %i.ju = fmul double %i.jm, %i.jt
  %i.jv = fmul double %i.jm, %i.ju                ; 2 uses
  %i.jw = fmul double %i.jv, -4.000000e+00
  %i.jx = call double @llvm.fmuladd.f64(double %i.jr, double %i.jr, double %i.jw)
  %i.jy = call double @sqrt(double noundef %i.jx) #6
  %i.jz = fadd double %i.jy, %i.jr                ; 2 uses
  %i.ka = fdiv double %i.jv, %i.jz
  %i.kb = fmul double %i.jz, 5.000000e-01
  %i.kc = call double @sqrt(double noundef %i.kb) #6 ; 3 uses
  store double %i.kc, ptr %i.c, align 8, !tbaa !9
  %i.kd = call double @sqrt(double noundef %i.ka) #6 ; 3 uses
  store double %i.kd, ptr %i.d, align 8, !tbaa !9
  %i.ke = fcmp ole double %i.kc, %i.kd
  %i.kf = select i1 %i.ke, double %i.kc, double %i.kd
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.2434 = phi double [ %i.kf, %bb.ba ], [ %.1433, %bb.az ] ; 6 uses
  call void @dlacpy_(ptr noundef nonnull @.str.8, ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef %4, ptr noundef nonnull %5, ptr noundef %16, ptr noundef nonnull %3) #6
  %i.kg = load i32, ptr %3, align 4, !tbaa !8     ; 2 uses
  %i.kh = mul nsw i32 %i.kg, %i.kg
  %i.ki = zext nneg i32 %i.kh to i64
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ki
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  call void @dlacpy_(ptr noundef nonnull @.str.8, ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef %6, ptr noundef nonnull %7, ptr noundef nonnull %i.kk, ptr noundef nonnull %3) #6
  store i32 %indvars507, ptr %i.i, align 4, !tbaa !8
  store i32 1, ptr %i.j, align 4, !tbaa !8
  %i.kl = load i32, ptr %17, align 4, !tbaa !8
  %i.km = load i32, ptr %3, align 4, !tbaa !8     ; 4 uses
  %20 = shl i32 %i.km, 1
  %21 = mul nsw i32 %20, %i.km
  %i.kn = sub nsw i32 %i.kl, %21
  store i32 %i.kn, ptr %i.b, align 4, !tbaa !8
  %22 = mul nsw i32 %i.km, %i.km                  ; 2 uses
  %i.ko = zext nneg i32 %22 to i64
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ko
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %23 = shl nuw i32 %22, 1
  %i.kr = sext i32 %23 to i64
  %i.ks = getelementptr [8 x i8], ptr %i.ai, i64 %i.kr
  %i.kt = getelementptr i8, ptr %i.ks, i64 8
  call void @dtgexc_(ptr noundef nonnull @c_false, ptr noundef nonnull @c_false, ptr noundef nonnull %3, ptr noundef %16, ptr noundef nonnull %3, ptr noundef nonnull %i.kq, ptr noundef nonnull %3, ptr noundef nonnull %i.p, ptr noundef nonnull @c__1, ptr noundef nonnull %i.q, ptr noundef nonnull @c__1, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef %i.kt, ptr noundef nonnull %i.b, ptr noundef nonnull %i.f) #6
  %i.ku = load i32, ptr %i.f, align 4, !tbaa !8
  %i.kv = icmp sgt i32 %i.ku, 0
  br i1 %i.kv, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.kw = load double, ptr %i.ek, align 8, !tbaa !9
  %i.kx = fcmp une double %i.kw, 0.000000e+00     ; 2 uses
  %spec.store.select = select i1 %i.kx, i32 2, i32 1 ; 5 uses
  store i32 %spec.store.select, ptr %i.n, align 4
  %i.ky = load i32, ptr %3, align 4, !tbaa !8     ; 7 uses
  %i.kz = sub nsw i32 %i.ky, %spec.store.select
  store i32 %i.kz, ptr %i.o, align 4, !tbaa !8
  %i.la = icmp eq i32 %i.ky, %spec.store.select
  br i1 %i.la, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.lb = mul nsw i32 %i.ky, %i.ky
  %i.lc = add nuw nsw i32 %i.lb, 1                ; 3 uses
  %i.ld = shl i32 %i.ky, 1
  %24 = mul nsw i32 %i.ld, %i.ky                  ; 2 uses
  %i.le = load i32, ptr %17, align 4, !tbaa !8
  %i.lf = sub nsw i32 %i.le, %24
  store i32 %i.lf, ptr %i.b, align 4, !tbaa !8
  %i.lg = add i32 %i.ky, 1
  %i.lh = zext i1 %i.kx to i32
  %i.li = shl i32 %i.lg, %i.lh                    ; 2 uses
  %i.lj = sext i32 %i.li to i64
  %i.lk = getelementptr [8 x i8], ptr %i.ai, i64 %i.lj
  %i.ll = getelementptr i8, ptr %i.lk, i64 8
  %i.lm = zext nneg i32 %spec.store.select to i64
  %i.ln = getelementptr [8 x i8], ptr %i.ai, i64 %i.lm
  %i.lo = getelementptr i8, ptr %i.ln, i64 8
  %i.lp = add nsw i32 %i.li, %i.lc
  %i.lq = sext i32 %i.lp to i64
  %i.lr = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.lq
  %i.ls = zext nneg i32 %i.lc to i64
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ls
  %i.lu = add nuw nsw i32 %i.lc, %spec.store.select
  %i.lv = zext nneg i32 %i.lu to i64
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.lv
  %i.lx = sext i32 %i.hx to i64
  %i.ly = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.lx ; 3 uses
  %i.lz = sext i32 %24 to i64
  %i.ma = getelementptr [8 x i8], ptr %i.ai, i64 %i.lz
  %i.mb = getelementptr i8, ptr %i.ma, i64 16
  call void @dtgsyl_(ptr noundef nonnull @.str.7, ptr noundef nonnull @c__3, ptr noundef nonnull %i.o, ptr noundef nonnull %i.n, ptr noundef %i.ll, ptr noundef nonnull %3, ptr noundef nonnull %16, ptr noundef nonnull %3, ptr noundef %i.lo, ptr noundef nonnull %3, ptr noundef nonnull %i.lr, ptr noundef nonnull %3, ptr noundef nonnull %i.lt, ptr noundef nonnull %3, ptr noundef nonnull %i.lw, ptr noundef nonnull %3, ptr noundef nonnull %i.k, ptr noundef nonnull %i.ly, ptr noundef %i.mb, ptr noundef nonnull %i.b, ptr noundef %18, ptr noundef nonnull %i.f) #6
  br i1 %.not460, label %.critedge466, label %.thread488

.thread488:                                       ; preds = %bb.bd
  %i.mc = load double, ptr %i.ly, align 8, !tbaa !9 ; 3 uses
  store double %i.mc, ptr %i.c, align 8, !tbaa !9
  %i.md = fcmp ole double %i.mc, %.2434
  %i.me = select i1 %i.md, double %i.mc, double %.2434 ; 2 uses
  store double %i.me, ptr %i.ly, align 8, !tbaa !9
  br label %._crit_edge508

bb.be:                                            ; preds = %bb.bc, %bb.bb
  %.2434.sink = phi double [ 0.000000e+00, %bb.bb ], [ %.2434, %bb.bc ] ; 2 uses
  %i.mf = sext i32 %i.hx to i64
  %i.mg = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.mf
  store double %.2434.sink, ptr %i.mg, align 8, !tbaa !9
  br i1 %.not460, label %.critedge466, label %._crit_edge508

._crit_edge508:                                   ; preds = %bb.be, %.thread488
  %i.mh = phi double [ %i.me, %.thread488 ], [ %.2434.sink, %bb.be ]
  %i.mi = sext i32 %.0422500 to i64
  %i.mj = getelementptr [8 x i8], ptr %i.ah, i64 %i.mi
  %i.mk = getelementptr i8, ptr %i.mj, i64 16
  store double %i.mh, ptr %i.mk, align 8, !tbaa !9
  br label %.critedge466

.critedge466:                                     ; preds = %bb.bd, %bb.be, %._crit_edge508, %bb.aw
  %.3435 = phi double [ %.2434, %._crit_edge508 ], [ %.2434, %bb.be ], [ %.1433, %bb.aw ], [ %.2434, %bb.bd ]
  %.not461 = icmp ne i32 %.3431475483, 0          ; 2 uses
  %i.ml = add nsw i32 %.0422500, 2
  %spec.select467 = zext i1 %.not461 to i32
  %spec.select468 = select i1 %.not461, i32 %i.ml, i32 %i.hx
  br label %bb.bf

bb.bf:                                            ; preds = %.critedge466, %bb.am, %bb.ay, %bb.ar, %.thread476
  %.4436 = phi double [ %.0432493, %.thread476 ], [ %.1433, %bb.ay ], [ %.0432493, %bb.am ], [ %.3435, %.critedge466 ], [ %.0432493, %bb.ar ]
  %.4 = phi i32 [ 0, %.thread476 ], [ %.3431475483, %bb.ay ], [ 0, %bb.am ], [ %spec.select467, %.critedge466 ], [ 1, %bb.ar ]
  %.1423 = phi i32 [ %.0422500, %.thread476 ], [ %i.hx, %bb.ay ], [ %.0422500, %bb.am ], [ %spec.select468, %.critedge466 ], [ %.0422500, %bb.ar ]
  %indvars.iv.next506 = add nuw nsw i64 %indvars.iv505, 1
  %.not452.not = icmp samesign ult i64 %indvars.iv505, %i.eu
  br i1 %.not452.not, label %bb.am, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.bf, %bb.al
  store double %i.dw, ptr %16, align 8, !tbaa !9
  br label %bb.bg

bb.bg:                                            ; preds = %bb.ak, %._crit_edge, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare double @dlamch_(ptr noundef) local_unnamed_addr #2

declare double @dnrm2_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare double @dlapy2_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dgemv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare double @ddot_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlag2_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #4

declare void @dlacpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dtgexc_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dtgsyl_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

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
!13 = distinct !{!13, !12}
end_hunk_0

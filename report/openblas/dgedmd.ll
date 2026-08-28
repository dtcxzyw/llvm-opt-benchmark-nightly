Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dgedmd?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dgedmd_:bb.a
  %i.hn = getelementptr [8 x i8], ptr %i.y, i64 %i.hm
  %i.ho = getelementptr i8, ptr %i.hn, i64 8
  %i.hp = call i32 @dscal_(ptr noundef nonnull %5, ptr noundef nonnull %i.c, ptr noundef %i.ho, ptr noundef nonnull @c__1) #5 ; 0 uses
  br label %bb.bp

bb.bk:                                            ; preds = %.lr.ph1066
  %i.hq = fcmp olt double %i.hh, %i.hi
  br i1 %i.hq, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.hr = fneg double %i.hh
  store double %i.hr, ptr %i.c, align 8, !tbaa !9
  %i.hs = load double, ptr %i.s, align 8, !tbaa !9
  %i.ht = load i32, ptr %5, align 4, !tbaa !8
  %i.hu = sitofp i32 %i.ht to double
  %i.hv = fdiv double %i.hs, %i.hu
  store double %i.hv, ptr %i.d, align 8, !tbaa !9
  %i.hw = mul nsw i64 %indvars.iv1118, %i.hf
  %i.hx = getelementptr [8 x i8], ptr %i.y, i64 %i.hw
  %i.hy = getelementptr i8, ptr %i.hx, i64 8
  %i.hz = call i32 @dlascl_(ptr noundef nonnull @.str.12, ptr noundef nonnull @c__0, ptr noundef nonnull @c__0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef nonnull @c__1, ptr noundef %i.hy, ptr noundef nonnull %5, ptr noundef nonnull %i.h) #5 ; 0 uses
  br label %bb.bp

bb.bm:                                            ; preds = %bb.bk
  %i.ia = mul nsw i64 %indvars.iv1118, %i.hf      ; 2 uses
  %i.ib = getelementptr [8 x i8], ptr %i.y, i64 %i.ia
  %i.ic = getelementptr i8, ptr %i.ib, i64 8      ; 2 uses
  %i.id = call i32 @idamax_(ptr noundef nonnull %5, ptr noundef %i.ic, ptr noundef nonnull @c__1) #5
  %i.ie = sext i32 %i.id to i64
  %i.if = getelementptr [8 x i8], ptr %i.y, i64 %i.ia
  %i.ig = getelementptr [8 x i8], ptr %i.if, i64 %i.ie
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !9
  %i.ii = load double, ptr %i.e, align 8, !tbaa !9
  %i.ij = fcmp une double %i.ih, %i.ii
  br i1 %i.ij, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %i.ik = call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.2) #5
  %.not983 = icmp eq i32 %i.ik, 0
  br i1 %.not983, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.il = call i32 @dscal_(ptr noundef nonnull %5, ptr noundef nonnull %i.e, ptr noundef %i.ic, ptr noundef nonnull @c__1) #5 ; 0 uses
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bj, %bb.bm, %bb.bo, %bb.bn, %bb.bl
  %.1860 = phi i32 [ %.08591064, %bb.bj ], [ %.08591064, %bb.bl ], [ 1, %bb.bo ], [ 1, %bb.bn ], [ %.08591064, %bb.bm ] ; 2 uses
  %indvars.iv.next1119 = add nuw nsw i64 %indvars.iv1118, 1
  %i.im = load i32, ptr %i.a, align 4, !tbaa !8
  %i.in = sext i32 %i.im to i64
  %.not961.not = icmp slt i64 %indvars.iv1118, %i.in
  br i1 %.not961.not, label %.lr.ph1066, label %.loopexit1059.a, !llvm.loop !14

.loopexit1059.a:                                  ; preds = %bb.bp, %bb.bi, %.thread1033
  %.2861 = phi i32 [ 0, %.thread1033 ], [ 0, %bb.bi ], [ %.1860, %bb.bp ] ; 4 uses
  %.pre1161.a = load i32, ptr %6, align 4, !tbaa !8 ; 4 uses
  br i1 %i.ax, label %bb.bq, label %.loopexit1058

bb.bq:                                            ; preds = %.loopexit1059.a
  store i32 %.pre1161.a, ptr %i.a, align 4, !tbaa !8
  %.not9621067 = icmp slt i32 %.pre1161.a, 1
  br i1 %.not9621067, label %.loopexit1058, label %.lr.ph1070.preheader

.lr.ph1070.preheader:                             ; preds = %bb.bq
  %i.io = sext i32 %i.w to i64
  br label %.lr.ph1070

.lr.ph1070:                                       ; preds = %.lr.ph1070.preheader, %bb.bz
  %indvars.iv1121 = phi i64 [ 1, %.lr.ph1070.preheader ], [ %indvars.iv.next1122, %bb.bz ] ; 6 uses
  %i.ip = load double, ptr %i.e, align 8, !tbaa !9
  store double %i.ip, ptr %i.k, align 8, !tbaa !9
  %i.iq = mul nsw i64 %indvars.iv1121, %i.io
  %i.ir = getelementptr [8 x i8], ptr %i.y, i64 %i.iq
  %i.is = getelementptr i8, ptr %i.ir, i64 8      ; 3 uses
  %i.it = call i32 @dlassq_(ptr noundef nonnull %5, ptr noundef %i.is, ptr noundef nonnull @c__1, ptr noundef nonnull %i.k, ptr noundef nonnull %i.f) #5 ; 0 uses
  %i.iu = call i32 @disnan_(ptr noundef nonnull %i.k) #5
  %.not981 = icmp eq i32 %i.iu, 0
  br i1 %.not981, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %.lr.ph1070
  %i.iv = call i32 @disnan_(ptr noundef nonnull %i.f) #5
  %.not982 = icmp eq i32 %i.iv, 0
  br i1 %.not982, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br, %.lr.ph1070
  store i32 0, ptr %13, align 4, !tbaa !8
  store i32 -10, ptr %29, align 4, !tbaa !8
  store i32 10, ptr %i.b, align 4, !tbaa !8
  %i.iw = call i32 @xerbla_(ptr noundef nonnull @.str.11, ptr noundef nonnull %i.b) #5 ; 0 uses
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.ix = load double, ptr %i.k, align 8, !tbaa !9 ; 3 uses
  %i.iy = load double, ptr %i.e, align 8, !tbaa !9 ; 3 uses
  %i.iz = fcmp une double %i.ix, %i.iy
  br i1 %i.iz, label %bb.bu, label %bb.by

bb.bu:                                            ; preds = %bb.bt
  %i.ja = load double, ptr %i.f, align 8, !tbaa !9 ; 2 uses
  %i.jb = fcmp une double %i.ja, %i.iy
  br i1 %i.jb, label %bb.bv, label %bb.by

bb.bv:                                            ; preds = %bb.bu
  %i.jc = call double @sqrt(double noundef %i.ja) #5 ; 4 uses
  %i.jd = fdiv double %i.fp, %i.jc
  %i.je = fcmp ult double %i.ix, %i.jd
  br i1 %i.je, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.jf = load double, ptr %i.s, align 8, !tbaa !9
  %i.jg = fdiv double %i.jf, %i.jc
  store double %i.jg, ptr %i.c, align 8, !tbaa !9
  %i.jh = call i32 @dlascl_(ptr noundef nonnull @.str.12, ptr noundef nonnull @c__0, ptr noundef nonnull @c__0, ptr noundef nonnull %i.k, ptr noundef nonnull %i.c, ptr noundef nonnull %5, ptr noundef nonnull @c__1, ptr noundef %i.is, ptr noundef nonnull %5, ptr noundef nonnull %i.h) #5 ; 0 uses
  %i.ji = load double, ptr %i.k, align 8, !tbaa !9
  %i.jj = fneg double %i.ji
  %i.jk = load i32, ptr %5, align 4, !tbaa !8
  %i.jl = sitofp i32 %i.jk to double
  %i.jm = fdiv double %i.jc, %i.jl
  %i.jn = fmul double %i.jm, %i.jj
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv1121
  store double %i.jn, ptr %i.jo, align 8, !tbaa !9
  br label %bb.bz

bb.bx:                                            ; preds = %bb.bv
  %i.jp = fmul double %i.ix, %i.jc
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv1121 ; 2 uses
  store double %i.jp, ptr %i.jq, align 8, !tbaa !9
  %i.jr = call i32 @dlascl_(ptr noundef nonnull @.str.12, ptr noundef nonnull @c__0, ptr noundef nonnull @c__0, ptr noundef nonnull %i.jq, ptr noundef nonnull %i.s, ptr noundef nonnull %5, ptr noundef nonnull @c__1, ptr noundef %i.is, ptr noundef nonnull %5, ptr noundef nonnull %i.h) #5 ; 0 uses
  br label %bb.bz

bb.by:                                            ; preds = %bb.bu, %bb.bt
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv1121
  store double %i.iy, ptr %i.js, align 8, !tbaa !9
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx, %bb.bw
  %indvars.iv.next1122 = add nuw nsw i64 %indvars.iv1121, 1
  %i.jt = load i32, ptr %i.a, align 4, !tbaa !8
  %i.ju = sext i32 %i.jt to i64
  %.not962.not = icmp slt i64 %indvars.iv1121, %i.ju
  br i1 %.not962.not, label %.lr.ph1070, label %._crit_edge1071, !llvm.loop !15

._crit_edge1071:                                  ; preds = %bb.bz
  %.pre1159 = load i32, ptr %6, align 4, !tbaa !8 ; 3 uses
  store i32 %.pre1159, ptr %i.a, align 4, !tbaa !8
  %.not9631072 = icmp slt i32 %.pre1159, 1
  br i1 %.not9631072, label %.loopexit1058, label %.lr.ph1076.preheader

.lr.ph1076.preheader:                             ; preds = %._crit_edge1071
  %i.jv = sext i32 %i.t to i64                    ; 3 uses
  br label %.lr.ph1076

.lr.ph1076:                                       ; preds = %.lr.ph1076.preheader, %bb.ce
  %indvars.iv1124 = phi i64 [ 1, %.lr.ph1076.preheader ], [ %indvars.iv.next1125, %bb.ce ] ; 6 uses
  %.31074 = phi i32 [ %.2861, %.lr.ph1076.preheader ], [ %.4, %bb.ce ] ; 3 uses
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv1124
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !9 ; 4 uses
  %i.jy = load double, ptr %i.e, align 8, !tbaa !9 ; 2 uses
  %i.jz = fcmp ogt double %i.jx, %i.jy
  br i1 %i.jz, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %.lr.ph1076
  %i.ka = load double, ptr %i.s, align 8, !tbaa !9
  %i.kb = fdiv double %i.ka, %i.jx
  store double %i.kb, ptr %i.c, align 8, !tbaa !9
  %i.kc = mul nsw i64 %indvars.iv1124, %i.jv
  %i.kd = getelementptr [8 x i8], ptr %i.v, i64 %i.kc
  %i.ke = getelementptr i8, ptr %i.kd, i64 8
  %i.kf = call i32 @dscal_(ptr noundef nonnull %5, ptr noundef nonnull %i.c, ptr noundef %i.ke, ptr noundef nonnull @c__1) #5 ; 0 uses
  br label %bb.ce

bb.cb:                                            ; preds = %.lr.ph1076
  %i.kg = fcmp olt double %i.jx, %i.jy
  br i1 %i.kg, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.kh = fneg double %i.jx
  store double %i.kh, ptr %i.c, align 8, !tbaa !9
  %i.ki = load double, ptr %i.s, align 8, !tbaa !9
  %i.kj = load i32, ptr %5, align 4, !tbaa !8
  %i.kk = sitofp i32 %i.kj to double
  %i.kl = fdiv double %i.ki, %i.kk
  store double %i.kl, ptr %i.d, align 8, !tbaa !9
  %i.km = mul nsw i64 %indvars.iv1124, %i.jv
  %i.kn = getelementptr [8 x i8], ptr %i.v, i64 %i.km
  %i.ko = getelementptr i8, ptr %i.kn, i64 8
  %i.kp = call i32 @dlascl_(ptr noundef nonnull @.str.12, ptr noundef nonnull @c__0, ptr noundef nonnull @c__0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef nonnull @c__1, ptr noundef %i.ko, ptr noundef nonnull %5, ptr noundef nonnull %i.h) #5 ; 0 uses
  br label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  %i.kq = mul nsw i64 %indvars.iv1124, %i.jv      ; 2 uses
  %i.kr = getelementptr [8 x i8], ptr %i.v, i64 %i.kq
  %i.ks = getelementptr i8, ptr %i.kr, i64 8
  %i.kt = call i32 @idamax_(ptr noundef nonnull %5, ptr noundef %i.ks, ptr noundef nonnull @c__1) #5
  %i.ku = sext i32 %i.kt to i64
  %i.kv = getelementptr [8 x i8], ptr %i.v, i64 %i.kq
  %i.kw = getelementptr [8 x i8], ptr %i.kv, i64 %i.ku
  %i.kx = load double, ptr %i.kw, align 8, !tbaa !9
  %i.ky = load double, ptr %i.e, align 8, !tbaa !9
  %i.kz = fcmp une double %i.kx, %i.ky
  %spec.select994 = select i1 %i.kz, i32 1, i32 %.31074
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.ca, %bb.cc
  %.4 = phi i32 [ %.31074, %bb.ca ], [ %.31074, %bb.cc ], [ %spec.select994, %bb.cd ] ; 2 uses
  %indvars.iv.next1125 = add nuw nsw i64 %indvars.iv1124, 1
  %i.la = load i32, ptr %i.a, align 4, !tbaa !8
  %i.lb = sext i32 %i.la to i64
  %.not963.not = icmp slt i64 %indvars.iv1124, %i.lb
  br i1 %.not963.not, label %.lr.ph1076, label %.loopexit1058.loopexit, !llvm.loop !16

.loopexit1058.loopexit:                           ; preds = %bb.ce
  %.pre1160 = load i32, ptr %6, align 4, !tbaa !8
  br label %.loopexit1058

.loopexit1058:                                    ; preds = %bb.bq, %.loopexit1058.loopexit, %._crit_edge1071, %.loopexit1059.a
  %i.lc = phi i32 [ %.pre1161.a, %.loopexit1059.a ], [ %.pre1159, %._crit_edge1071 ], [ %.pre1160, %.loopexit1058.loopexit ], [ %.pre1161.a, %bb.bq ] ; 9 uses
  %.5 = phi i32 [ %.2861, %.loopexit1059.a ], [ %.2861, %._crit_edge1071 ], [ %.4, %.loopexit1058.loopexit ], [ %.2861, %bb.bq ]
  store i32 %i.lc, ptr %i.o, align 4, !tbaa !8
  %i.ld = load i32, ptr %4, align 4, !tbaa !8
  switch i32 %i.ld, label %bb.ck [
    i32 1, label %bb.cf
    i32 2, label %bb.cg
    i32 3, label %bb.ch
    i32 4, label %bb.ci
  ]

bb.cf:                                            ; preds = %.loopexit1058
  %i.le = load i32, ptr %26, align 4, !tbaa !8
  %i.lf = sub nsw i32 %i.le, %i.lc
  store i32 %i.lf, ptr %i.a, align 4, !tbaa !8
  %i.lg = sext i32 %i.lc to i64
  %i.lh = getelementptr [8 x i8], ptr %i.ai, i64 %i.lg
  %i.li = getelementptr i8, ptr %i.lh, i64 8
  %i.lj = call i32 @dgesvd_(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %7, ptr noundef nonnull %8, ptr noundef %25, ptr noundef %19, ptr noundef nonnull %20, ptr noundef %21, ptr noundef nonnull %22, ptr noundef %i.li, ptr noundef nonnull %i.a, ptr noundef nonnull %i.g) #5 ; 0 uses
  store i8 84, ptr %i.n, align 1, !tbaa !11
  br label %bb.ck

bb.cg:                                            ; preds = %.loopexit1058
  %i.lk = load i32, ptr %26, align 4, !tbaa !8
  %i.ll = sub nsw i32 %i.lk, %i.lc
  store i32 %i.ll, ptr %i.a, align 4, !tbaa !8
  %i.lm = sext i32 %i.lc to i64
  %i.ln = getelementptr [8 x i8], ptr %i.ai, i64 %i.lm
  %i.lo = getelementptr i8, ptr %i.ln, i64 8
  %i.lp = call i32 @dgesdd_(ptr noundef nonnull @.str.8, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %7, ptr noundef nonnull %8, ptr noundef %25, ptr noundef %19, ptr noundef nonnull %20, ptr noundef %21, ptr noundef nonnull %22, ptr noundef %i.lo, ptr noundef nonnull %i.a, ptr noundef %27, ptr noundef nonnull %i.g) #5 ; 0 uses
  store i8 84, ptr %i.n, align 1, !tbaa !11
  br label %bb.ck

bb.ch:                                            ; preds = %.loopexit1058
  %i.lq = load i32, ptr %26, align 4, !tbaa !8
  %i.lr = load i32, ptr %5, align 4, !tbaa !8
  %spec.select994.a = call i32 @llvm.smax.i32(i32 %i.lr, i32 2) ; 2 uses
  %i.ls = add i32 %spec.select994.a, %i.lc        ; 2 uses
  %i.lt = sub i32 %i.lq, %i.ls
  store i32 %i.lt, ptr %i.a, align 4, !tbaa !8
  store i32 %spec.select994.a, ptr %i.b, align 4, !tbaa !8
  %i.lu = sext i32 %i.ls to i64
  %i.lv = getelementptr [8 x i8], ptr %i.ai, i64 %i.lu
  %i.lw = getelementptr i8, ptr %i.lv, i64 8
  %i.lx = sext i32 %i.lc to i64
  %i.ly = getelementptr [8 x i8], ptr %i.ai, i64 %i.lx
  %i.lz = getelementptr i8, ptr %i.ly, i64 8
  %i.ma = call i32 @dgesvdq_(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str, ptr noundef nonnull @.str, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %7, ptr noundef nonnull %8, ptr noundef %25, ptr noundef %16, ptr noundef nonnull %17, ptr noundef %21, ptr noundef nonnull %22, ptr noundef nonnull %i.o, ptr noundef %27, ptr noundef nonnull %28, ptr noundef %i.lw, ptr noundef nonnull %i.a, ptr noundef %i.lz, ptr noundef nonnull %i.b, ptr noundef nonnull %i.g) #5 ; 0 uses
  %i.mb = call i32 @dlacpy_(ptr noundef nonnull @.str.13, ptr noundef nonnull %5, ptr noundef nonnull %i.o, ptr noundef %16, ptr noundef nonnull %17, ptr noundef %7, ptr noundef nonnull %8) #5 ; 0 uses
  store i8 84, ptr %i.n, align 1, !tbaa !11
  br label %bb.ck

bb.ci:                                            ; preds = %.loopexit1058
  %i.mc = load i32, ptr %26, align 4, !tbaa !8
  %i.md = sub nsw i32 %i.mc, %i.lc
  store i32 %i.md, ptr %i.a, align 4, !tbaa !8
  %i.me = sext i32 %i.lc to i64
  %i.mf = getelementptr [8 x i8], ptr %i.ai, i64 %i.me
  %i.mg = getelementptr i8, ptr %i.mf, i64 8
  %i.mh = call i32 @dgejsv_(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.q, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.10, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %7, ptr noundef nonnull %8, ptr noundef %25, ptr noundef %16, ptr noundef nonnull %17, ptr noundef %21, ptr noundef nonnull %22, ptr noundef %i.mg, ptr noundef nonnull %i.a, ptr noundef %27, ptr noundef nonnull %i.g) #5 ; 0 uses
  %i.mi = call i32 @dlacpy_(ptr noundef nonnull @.str.13, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %16, ptr noundef nonnull %17, ptr noundef %7, ptr noundef nonnull %8) #5 ; 0 uses
  store i8 78, ptr %i.n, align 1, !tbaa !11
  %i.mj = load i32, ptr %6, align 4, !tbaa !8
  %i.mk = sext i32 %i.mj to i64
  %i.ml = getelementptr [8 x i8], ptr %i.ai, i64 %i.mk ; 2 uses
  %i.mm = getelementptr i8, ptr %i.ml, i64 8
  %i.mn = load double, ptr %i.mm, align 8, !tbaa !9 ; 2 uses
  store double %i.mn, ptr %i.i, align 8, !tbaa !9
  %i.mo = getelementptr i8, ptr %i.ml, i64 16
  %i.mp = load double, ptr %i.mo, align 8, !tbaa !9 ; 2 uses
  store double %i.mp, ptr %i.j, align 8, !tbaa !9
  %i.mq = fcmp une double %i.mn, %i.mp
  br i1 %i.mq, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.mr = call i32 @dlascl_(ptr noundef nonnull @.str.12, ptr noundef nonnull @c__0, ptr noundef nonnull @c__0, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %9, ptr noundef nonnull %10, ptr noundef nonnull %i.h) #5 ; 0 uses
  br label %bb.ck

bb.ck:                                            ; preds = %.loopexit1058, %bb.cg, %bb.cj, %bb.ci, %bb.ch, %bb.cf
  %i.ms = load i32, ptr %i.g, align 4, !tbaa !8
  %i.mt = icmp sgt i32 %i.ms, 0
  br i1 %i.mt, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  store i32 2, ptr %29, align 4, !tbaa !8
  br label %bb.dx

bb.cm:                                            ; preds = %bb.ck
  %i.mu = load double, ptr %25, align 8, !tbaa !9 ; 3 uses
  %i.mv = load double, ptr %i.e, align 8, !tbaa !9
  %i.mw = fcmp oeq double %i.mu, %i.mv
  br i1 %i.mw, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  store i32 0, ptr %13, align 4, !tbaa !8
  store i32 -8, ptr %29, align 4, !tbaa !8
  store i32 8, ptr %i.a, align 4, !tbaa !8
  %i.mx = call i32 @xerbla_(ptr noundef nonnull @.str.11, ptr noundef nonnull %i.a) #5 ; 0 uses
  br label %bb.dx

bb.co:                                            ; preds = %bb.cm
  %i.my = load i32, ptr %11, align 4, !tbaa !8
  store i32 1, ptr %13, align 4, !tbaa !8
  switch i32 %i.my, label %bb.cv [
    i32 -1, label %bb.cp
    i32 -2, label %bb.cs
  ]

bb.cp:                                            ; preds = %bb.co
  %i.mz = load i32, ptr %i.o, align 4, !tbaa !8   ; 3 uses
  store i32 %i.mz, ptr %i.a, align 4, !tbaa !8
  %.not9661083 = icmp slt i32 %i.mz, 2
  br i1 %.not9661083, label %.loopexit1055, label %.lr.ph1086

.lr.ph1086:                                       ; preds = %bb.cp
  %i.na = load double, ptr %12, align 8, !tbaa !9
  %i.nb = fmul double %i.mu, %i.na
  %i.nc = add nuw i32 %i.mz, 1
  %wide.trip.count1133 = zext i32 %i.nc to i64
  br label %bb.cq

bb.cq:                                            ; preds = %.lr.ph1086, %bb.cr
  %i.nd = phi i32 [ 1, %.lr.ph1086 ], [ %i.ni, %bb.cr ]
  %indvars.iv1130 = phi i64 [ 2, %.lr.ph1086 ], [ %indvars.iv.next1131, %bb.cr ] ; 2 uses
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv1130
  %i.nf = load double, ptr %i.ne, align 8, !tbaa !9 ; 2 uses
  %i.ng = fcmp ugt double %i.nf, %i.nb
  %i.nh = fcmp ugt double %i.nf, %i.fq
  %or.cond996 = select i1 %i.ng, i1 %i.nh, i1 false
  br i1 %or.cond996, label %bb.cr, label %.loopexit1055

bb.cr:                                            ; preds = %bb.cq
  %i.ni = add nuw nsw i32 %i.nd, 1                ; 2 uses
  store i32 %i.ni, ptr %13, align 4, !tbaa !8
  %indvars.iv.next1131 = add nuw nsw i64 %indvars.iv1130, 1 ; 2 uses
  %exitcond1134.not = icmp eq i64 %indvars.iv.next1131, %wide.trip.count1133
  br i1 %exitcond1134.not, label %.loopexit1055, label %bb.cq, !llvm.loop !17

bb.cs:                                            ; preds = %bb.co
  %i.nj = load i32, ptr %i.o, align 4, !tbaa !8   ; 3 uses
  %i.nk = add nsw i32 %i.nj, -1
  store i32 %i.nk, ptr %i.a, align 4, !tbaa !8
  %.not965.not1078 = icmp sgt i32 %i.nj, 1
  br i1 %.not965.not1078, label %.lr.ph1081, label %.loopexit1055

.lr.ph1081:                                       ; preds = %bb.cs
  %i.nl = load double, ptr %12, align 8, !tbaa !9
  %wide.trip.count = zext nneg i32 %i.nj to i64
  br label %bb.ct

bb.ct:                                            ; preds = %.lr.ph1081, %bb.cu
  %i.nm = phi i32 [ 1, %.lr.ph1081 ], [ %i.nt, %bb.cu ]
  %i.nn = phi double [ %i.mu, %.lr.ph1081 ], [ %i.np, %bb.cu ] ; 2 uses
  %indvars.iv1127 = phi i64 [ 1, %.lr.ph1081 ], [ %indvars.iv.next1128, %bb.cu ] ; 2 uses
  %i.no = getelementptr [8 x i8], ptr %25, i64 %indvars.iv1127
  %i.np = load double, ptr %i.no, align 8, !tbaa !9 ; 2 uses
  %i.nq = fmul double %i.nn, %i.nl
  %i.nr = fcmp ugt double %i.np, %i.nq
  %i.ns = fcmp ugt double %i.nn, %i.fq
  %or.cond998 = select i1 %i.nr, i1 %i.ns, i1 false
  br i1 %or.cond998, label %bb.cu, label %.loopexit1055

bb.cu:                                            ; preds = %bb.ct
  %indvars.iv.next1128 = add nuw nsw i64 %indvars.iv1127, 1 ; 2 uses
  %i.nt = add nuw nsw i32 %i.nm, 1                ; 2 uses
  store i32 %i.nt, ptr %13, align 4, !tbaa !8
  %exitcond.not = icmp eq i64 %indvars.iv.next1128, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit1055, label %bb.ct, !llvm.loop !18

bb.cv:                                            ; preds = %bb.co
  %i.nu = load i32, ptr %11, align 4, !tbaa !8    ; 3 uses
  store i32 %i.nu, ptr %i.a, align 4, !tbaa !8
  %.not9641088 = icmp slt i32 %i.nu, 2
  br i1 %.not9641088, label %.loopexit1055, label %.lr.ph1091.preheader

.lr.ph1091.preheader:                             ; preds = %bb.cv
  %i.nv = add nuw i32 %i.nu, 1
  %wide.trip.count1138 = zext i32 %i.nv to i64
  br label %.lr.ph1091

.lr.ph1091:                                       ; preds = %.lr.ph1091.preheader, %bb.cw
  %i.nw = phi i32 [ 1, %.lr.ph1091.preheader ], [ %i.oa, %bb.cw ]
  %indvars.iv1135 = phi i64 [ 2, %.lr.ph1091.preheader ], [ %indvars.iv.next1136, %bb.cw ] ; 2 uses
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv1135
  %i.ny = load double, ptr %i.nx, align 8, !tbaa !9
  %i.nz = fcmp ugt double %i.ny, %i.fq
  br i1 %i.nz, label %bb.cw, label %.loopexit1055

bb.cw:                                            ; preds = %.lr.ph1091
end_hunk_0

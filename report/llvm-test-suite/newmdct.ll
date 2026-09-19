Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/newmdct?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@mdct_sub48:bb.a
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 512 ; 2 uses
  %i.gf = load double, ptr %gep.2, align 8, !tbaa !9
  %i.gg = fmul double %i.ga, %i.gf
  store double %i.gg, ptr %gep.2, align 8, !tbaa !9
  %gep.3 = getelementptr i8, ptr %invariant.gep, i64 768 ; 2 uses
  %i.gh = load double, ptr %gep.3, align 8, !tbaa !9
  %i.gi = fmul double %i.ga, %i.gh
  store double %i.gi, ptr %gep.3, align 8, !tbaa !9
  %gep.4 = getelementptr i8, ptr %invariant.gep, i64 1024 ; 2 uses
  %i.gj = load double, ptr %gep.4, align 8, !tbaa !9
  %i.gk = fmul double %i.ga, %i.gj
  store double %i.gk, ptr %gep.4, align 8, !tbaa !9
  %gep.5 = getelementptr i8, ptr %invariant.gep, i64 1280 ; 2 uses
  %i.gl = load double, ptr %gep.5, align 8, !tbaa !9
  %i.gm = fmul double %i.ga, %i.gl
  store double %i.gm, ptr %gep.5, align 8, !tbaa !9
  %gep.6 = getelementptr i8, ptr %invariant.gep, i64 1536 ; 2 uses
  %i.gn = load double, ptr %gep.6, align 8, !tbaa !9
  %i.go = fmul double %i.ga, %i.gn
  store double %i.go, ptr %gep.6, align 8, !tbaa !9
  %gep.7 = getelementptr i8, ptr %invariant.gep, i64 1792 ; 2 uses
  %i.gp = load double, ptr %gep.7, align 8, !tbaa !9
  %i.gq = fmul double %i.ga, %i.gp
  store double %i.gq, ptr %gep.7, align 8, !tbaa !9
  %gep.8 = getelementptr i8, ptr %invariant.gep, i64 2048 ; 2 uses
  %i.gr = load double, ptr %gep.8, align 8, !tbaa !9
  %i.gs = fmul double %i.ga, %i.gr
  store double %i.gs, ptr %gep.8, align 8, !tbaa !9
  %gep.9 = getelementptr i8, ptr %invariant.gep, i64 2304 ; 2 uses
  %i.gt = load double, ptr %gep.9, align 8, !tbaa !9
  %i.gu = fmul double %i.ga, %i.gt
  store double %i.gu, ptr %gep.9, align 8, !tbaa !9
  %gep.10 = getelementptr i8, ptr %invariant.gep, i64 2560 ; 2 uses
  %i.gv = load double, ptr %gep.10, align 8, !tbaa !9
  %i.gw = fmul double %i.ga, %i.gv
  store double %i.gw, ptr %gep.10, align 8, !tbaa !9
  %gep.11 = getelementptr i8, ptr %invariant.gep, i64 2816 ; 2 uses
  %i.gx = load double, ptr %gep.11, align 8, !tbaa !9
  %i.gy = fmul double %i.ga, %i.gx
  store double %i.gy, ptr %gep.11, align 8, !tbaa !9
  %gep.12 = getelementptr i8, ptr %invariant.gep, i64 3072 ; 2 uses
  %i.gz = load double, ptr %gep.12, align 8, !tbaa !9
  %i.ha = fmul double %i.ga, %i.gz
  store double %i.ha, ptr %gep.12, align 8, !tbaa !9
  %gep.13 = getelementptr i8, ptr %invariant.gep, i64 3328 ; 2 uses
  %i.hb = load double, ptr %gep.13, align 8, !tbaa !9
  %i.hc = fmul double %i.ga, %i.hb
  store double %i.hc, ptr %gep.13, align 8, !tbaa !9
  %gep.14 = getelementptr i8, ptr %invariant.gep, i64 3584 ; 2 uses
  %i.hd = load double, ptr %gep.14, align 8, !tbaa !9
  %i.he = fmul double %i.ga, %i.hd
  store double %i.he, ptr %gep.14, align 8, !tbaa !9
  %gep.15 = getelementptr i8, ptr %invariant.gep, i64 3840 ; 2 uses
  %i.hf = load double, ptr %gep.15, align 8, !tbaa !9
  %i.hg = fmul double %i.ga, %i.hf
  store double %i.hg, ptr %gep.15, align 8, !tbaa !9
  %gep.16 = getelementptr i8, ptr %invariant.gep, i64 4096 ; 2 uses
  %i.hh = load double, ptr %gep.16, align 8, !tbaa !9
  %i.hi = fmul double %i.ga, %i.hh
  store double %i.hi, ptr %gep.16, align 8, !tbaa !9
  %gep.17 = getelementptr i8, ptr %invariant.gep, i64 4352 ; 2 uses
  %i.hj = load double, ptr %gep.17, align 8, !tbaa !9
  %i.hk = fmul double %i.ga, %i.hj
  store double %i.hk, ptr %gep.17, align 8, !tbaa !9
  br label %.loopexit217

.loopexit217:                                     ; preds = %.loopexit217.loopexit, %bb.i, %bb.h
  %i.hl = fcmp ogt double %i.fq, %i.fl
  br i1 %i.hl, label %bb.j, label %.loopexit216

bb.j:                                             ; preds = %.loopexit217
  %i.hm = load float, ptr %i.k, align 4, !tbaa !30 ; 2 uses
  %i.hn = fpext float %i.hm to double             ; 2 uses
  %i.ho = fcmp olt double %i.fq, %i.hn
  br i1 %i.ho, label %.loopexit216.loopexit, label %.loopexit216

.loopexit216.loopexit:                            ; preds = %bb.j
  %i.hp = fsub double %i.hn, %i.fq
  %i.hq = fmul double %i.hp, f0x3FF921FB54442D18
  %i.hr = fsub float %i.hm, %i.fk
  %i.hs = fpext float %i.hr to double
  %i.ht = fdiv double %i.hq, %i.hs
  %i.hu = tail call double @cos(double noundef %i.ht) #6, !tbaa !7 ; 18 uses
  %invariant.gep226 = getelementptr [8 x i8], ptr %i.db, i64 %indvars.iv ; 19 uses
  %i.hv = load double, ptr %invariant.gep226, align 8, !tbaa !9
  %i.hw = fmul double %i.hu, %i.hv
  store double %i.hw, ptr %invariant.gep226, align 8, !tbaa !9
  %gep227.1 = getelementptr i8, ptr %invariant.gep226, i64 256 ; 2 uses
  %i.hx = load double, ptr %gep227.1, align 8, !tbaa !9
  %i.hy = fmul double %i.hu, %i.hx
  store double %i.hy, ptr %gep227.1, align 8, !tbaa !9
  %gep227.2 = getelementptr i8, ptr %invariant.gep226, i64 512 ; 2 uses
  %i.hz = load double, ptr %gep227.2, align 8, !tbaa !9
  %i.ia = fmul double %i.hu, %i.hz
  store double %i.ia, ptr %gep227.2, align 8, !tbaa !9
  %gep227.3 = getelementptr i8, ptr %invariant.gep226, i64 768 ; 2 uses
  %i.ib = load double, ptr %gep227.3, align 8, !tbaa !9
  %i.ic = fmul double %i.hu, %i.ib
  store double %i.ic, ptr %gep227.3, align 8, !tbaa !9
  %gep227.4 = getelementptr i8, ptr %invariant.gep226, i64 1024 ; 2 uses
  %i.id = load double, ptr %gep227.4, align 8, !tbaa !9
  %i.ie = fmul double %i.hu, %i.id
  store double %i.ie, ptr %gep227.4, align 8, !tbaa !9
  %gep227.5 = getelementptr i8, ptr %invariant.gep226, i64 1280 ; 2 uses
  %i.if = load double, ptr %gep227.5, align 8, !tbaa !9
  %i.ig = fmul double %i.hu, %i.if
  store double %i.ig, ptr %gep227.5, align 8, !tbaa !9
  %gep227.6 = getelementptr i8, ptr %invariant.gep226, i64 1536 ; 2 uses
  %i.ih = load double, ptr %gep227.6, align 8, !tbaa !9
  %i.ii = fmul double %i.hu, %i.ih
  store double %i.ii, ptr %gep227.6, align 8, !tbaa !9
  %gep227.7 = getelementptr i8, ptr %invariant.gep226, i64 1792 ; 2 uses
  %i.ij = load double, ptr %gep227.7, align 8, !tbaa !9
  %i.ik = fmul double %i.hu, %i.ij
  store double %i.ik, ptr %gep227.7, align 8, !tbaa !9
  %gep227.8 = getelementptr i8, ptr %invariant.gep226, i64 2048 ; 2 uses
  %i.il = load double, ptr %gep227.8, align 8, !tbaa !9
  %i.im = fmul double %i.hu, %i.il
  store double %i.im, ptr %gep227.8, align 8, !tbaa !9
  %gep227.9 = getelementptr i8, ptr %invariant.gep226, i64 2304 ; 2 uses
  %i.in = load double, ptr %gep227.9, align 8, !tbaa !9
  %i.io = fmul double %i.hu, %i.in
  store double %i.io, ptr %gep227.9, align 8, !tbaa !9
  %gep227.10 = getelementptr i8, ptr %invariant.gep226, i64 2560 ; 2 uses
  %i.ip = load double, ptr %gep227.10, align 8, !tbaa !9
  %i.iq = fmul double %i.hu, %i.ip
  store double %i.iq, ptr %gep227.10, align 8, !tbaa !9
  %gep227.11 = getelementptr i8, ptr %invariant.gep226, i64 2816 ; 2 uses
  %i.ir = load double, ptr %gep227.11, align 8, !tbaa !9
  %i.is = fmul double %i.hu, %i.ir
  store double %i.is, ptr %gep227.11, align 8, !tbaa !9
  %gep227.12 = getelementptr i8, ptr %invariant.gep226, i64 3072 ; 2 uses
  %i.it = load double, ptr %gep227.12, align 8, !tbaa !9
  %i.iu = fmul double %i.hu, %i.it
  store double %i.iu, ptr %gep227.12, align 8, !tbaa !9
  %gep227.13 = getelementptr i8, ptr %invariant.gep226, i64 3328 ; 2 uses
  %i.iv = load double, ptr %gep227.13, align 8, !tbaa !9
  %i.iw = fmul double %i.hu, %i.iv
  store double %i.iw, ptr %gep227.13, align 8, !tbaa !9
  %gep227.14 = getelementptr i8, ptr %invariant.gep226, i64 3584 ; 2 uses
  %i.ix = load double, ptr %gep227.14, align 8, !tbaa !9
  %i.iy = fmul double %i.hu, %i.ix
  store double %i.iy, ptr %gep227.14, align 8, !tbaa !9
  %gep227.15 = getelementptr i8, ptr %invariant.gep226, i64 3840 ; 2 uses
  %i.iz = load double, ptr %gep227.15, align 8, !tbaa !9
  %i.ja = fmul double %i.hu, %i.iz
  store double %i.ja, ptr %gep227.15, align 8, !tbaa !9
  %gep227.16 = getelementptr i8, ptr %invariant.gep226, i64 4096 ; 2 uses
  %i.jb = load double, ptr %gep227.16, align 8, !tbaa !9
  %i.jc = fmul double %i.hu, %i.jb
  store double %i.jc, ptr %gep227.16, align 8, !tbaa !9
  %gep227.17 = getelementptr i8, ptr %invariant.gep226, i64 4352 ; 2 uses
  %i.jd = load double, ptr %gep227.17, align 8, !tbaa !9
  %i.je = fmul double %i.hu, %i.jd
  store double %i.je, ptr %gep227.17, align 8, !tbaa !9
  br label %.loopexit216

.loopexit216:                                     ; preds = %.loopexit216.loopexit, %.loopexit217, %bb.j
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.jf = load i32, ptr %i.g, align 8, !tbaa !26
  %i.jg = sext i32 %i.jf to i64
  %i.jh = icmp slt i64 %indvars.iv.next, %i.jg
  br i1 %i.jh, label %bb.h, label %.loopexit218, !llvm.loop !12

.loopexit218:                                     ; preds = %.loopexit216, %bb.g, %bb.f
  %i.ji = getelementptr inbounds nuw i8, ptr %gep267, i64 72
  %i.jj = getelementptr inbounds nuw [4608 x i8], ptr %i.cz, i64 %indvars.iv292 ; 2 uses
  %i.jk = load double, ptr getelementptr inbounds nuw (i8, ptr @win, i64 592), align 16 ; 2 uses
  %i.jl = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 576), align 16 ; 4 uses
  %i.jm = shufflevector <2 x double> %i.jl, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.jn = insertelement <2 x double> %i.jm, double %i.jk, i64 1 ; 3 uses
  %i.jo = insertelement <2 x double> %i.jm, double %i.jk, i64 0 ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %.loopexit218, %.loopexit
  %indvars.iv288 = phi i64 [ 0, %.loopexit218 ], [ %indvars.iv.next289, %.loopexit ] ; 8 uses
  %.0194259 = phi ptr [ %gep265, %.loopexit218 ], [ %i.agg, %.loopexit ] ; 21 uses
  %i.jp = load i32, ptr %i.ji, align 8, !tbaa !33 ; 3 uses
  %i.jq = load i32, ptr %i.g, align 8, !tbaa !26
  %i.jr = sext i32 %i.jq to i64
  %.not = icmp slt i64 %indvars.iv288, %i.jr
  br i1 %.not, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.js = load i32, ptr %i.f, align 4, !tbaa !25
  %i.jt = sext i32 %i.js to i64
  %.not207 = icmp sgt i64 %indvars.iv288, %i.jt
  br i1 %.not207, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(144) %.0194259, i8 0, i64 144, i1 false)
  br label %mdct_short.exit

bb.n:                                             ; preds = %bb.l
  %i.ju = icmp eq i32 %i.jp, 2
  br i1 %i.ju, label %.preheader213, label %.preheader215

.preheader215:                                    ; preds = %bb.n
  %i.jv = sext i32 %i.jp to i64
  %i.jw = getelementptr inbounds [288 x i8], ptr @win, i64 %i.jv ; 19 uses
  %invariant.gep231 = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %indvars.iv288 ; 18 uses
  %invariant.gep235 = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv288 ; 18 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 64
  %i.jy = load double, ptr %i.jx, align 16, !tbaa !9
  %gep232 = getelementptr inbounds nuw i8, ptr %invariant.gep231, i64 2048
  %i.jz = load double, ptr %gep232, align 8, !tbaa !9
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jw, i64 136
  %gep234 = getelementptr inbounds nuw i8, ptr %invariant.gep231, i64 2304
  %i.kb = load double, ptr %gep234, align 8, !tbaa !9
  %i.kc = fneg double %i.kb
  %gep236 = getelementptr inbounds nuw i8, ptr %invariant.gep235, i64 2048
  %i.kd = load double, ptr %gep236, align 8, !tbaa !9
  %gep238 = getelementptr inbounds nuw i8, ptr %invariant.gep235, i64 2304
  %i.ke = load double, ptr %gep238, align 8, !tbaa !9
  %gep232.1 = getelementptr inbounds nuw i8, ptr %invariant.gep231, i64 1792
  %i.kf = load double, ptr %gep232.1, align 8, !tbaa !9
  %gep234.1 = getelementptr inbounds nuw i8, ptr %invariant.gep231, i64 2560
  %i.kg = load double, ptr %gep234.1, align 8, !tbaa !9
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jw, i64 200
  %gep236.1 = getelementptr inbounds nuw i8, ptr %invariant.gep235, i64 1792
  %i.ki = load double, ptr %gep236.1, align 8, !tbaa !9
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jw, i64 272
  %gep238.1 = getelementptr inbounds nuw i8, ptr %invariant.gep235, i64 2560
  %i.kk = load double, ptr %gep238.1, align 8, !tbaa !9
  %i.kl = load <2 x double>, ptr %i.kh, align 8, !tbaa !9
  %i.km = load <2 x double>, ptr %i.kj, align 16, !tbaa !9
  %i.kn = insertelement <2 x double> poison, double %i.kk, i64 0
  %i.ko = insertelement <2 x double> %i.kn, double %i.ke, i64 1
  %i.kp = fmul <2 x double> %i.km, %i.ko
  %i.kq = insertelement <2 x double> poison, double %i.ki, i64 0
  %i.kr = insertelement <2 x double> %i.kq, double %i.kd, i64 1
  %i.ks = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kl, <2 x double> %i.kr, <2 x double> %i.kp)
  store <2 x double> %i.ks, ptr getelementptr inbounds nuw (i8, ptr @win, i64 736), align 16, !tbaa !9
  %i.kt = getelementptr inbounds nuw i8, ptr %i.jw, i64 48
  %gep232.2 = getelementptr inbounds nuw i8, ptr %invariant.gep231, i64 1536
  %i.ku = load double, ptr %gep232.2, align 8, !tbaa !9
  %i.kv = getelementptr inbounds nuw i8, ptr %i.jw, i64 120
  %gep234.2 = getelementptr inbounds nuw i8, ptr %invariant.gep231, i64 2816
  %i.kw = load double, ptr %gep234.2, align 8, !tbaa !9
  %i.kx = load <2 x double>, ptr %i.kt, align 16, !tbaa !9
  %i.ky = load <2 x double>, ptr %i.kv, align 8, !tbaa !9
  %i.kz = insertelement <2 x double> poison, double %i.kw, i64 0
  %i.la = insertelement <2 x double> %i.kz, double %i.kg, i64 1
  %i.lb = fneg <2 x double> %i.la
  %i.lc = fmul <2 x double> %i.ky, %i.lb
  %i.ld = insertelement <2 x double> poison, double %i.ku, i64 0
  %i.le = insertelement <2 x double> %i.ld, double %i.kf, i64 1
  %i.lf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kx, <2 x double> %i.le, <2 x double> %i.lc)
  store <2 x double> %i.lf, ptr getelementptr inbounds nuw (i8, ptr @win, i64 656), align 16, !tbaa !9
  %gep236.2 = getelementptr inbounds nuw i8, ptr %invariant.gep235, i64 1536
  %i.lg = load double, ptr %gep236.2, align 8, !tbaa !9
  %gep238.2 = getelementptr inbounds nuw i8, ptr %invariant.gep235, i64 2816
  %i.lh = load double, ptr %gep238.2, align 8, !tbaa !9
  %gep232.3 = getelementptr inbounds nuw i8, ptr %invariant.gep231, i64 1280
  %i.li = load double, ptr %gep232.3, align 8, !tbaa !9
  %gep234.3 = getelementptr inbounds nuw i8, ptr %invariant.gep231, i64 3072
  %i.lj = load double, ptr %gep234.3, align 8, !tbaa !9
  %i.lk = getelementptr inbounds nuw i8, ptr %i.jw, i64 184
  %gep236.3 = getelementptr inbounds nuw i8, ptr %invariant.gep235, i64 1280
  %i.ll = load double, ptr %gep236.3, align 8, !tbaa !9
  %i.lm = getelementptr inbounds nuw i8, ptr %i.jw, i64 256
  %gep238.3 = getelementptr inbounds nuw i8, ptr %invariant.gep235, i64 3072
  %i.ln = load double, ptr %gep238.3, align 8, !tbaa !9
  %i.lo = load <2 x double>, ptr %i.lk, align 8, !tbaa !9
  %i.lp = load <2 x double>, ptr %i.lm, align 16, !tbaa !9
  %i.lq = insertelement <2 x double> poison, double %i.ln, i64 0
  %i.lr = insertelement <2 x double> %i.lq, double %i.lh, i64 1
  %i.ls = fmul <2 x double> %i.lp, %i.lr
  %i.lt = insertelement <2 x double> poison, double %i.ll, i64 0
  %i.lu = insertelement <2 x double> %i.lt, double %i.lg, i64 1
  %i.lv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lo, <2 x double> %i.lu, <2 x double> %i.ls)
  store <2 x double> %i.lv, ptr getelementptr inbounds nuw (i8, ptr @win, i64 720), align 16, !tbaa !9
  %i.lw = getelementptr inbounds nuw i8, ptr %i.jw, i64 32
  %gep232.4 = getelementptr inbounds nuw i8, ptr %invariant.gep231, i64 1024
  %i.lx = load double, ptr %gep232.4, align 8, !tbaa !9
  %i.ly = getelementptr inbounds nuw i8, ptr %i.jw, i64 104
  %gep234.4 = getelementptr inbounds nuw i8, ptr %invariant.gep231, i64 3328
  %i.lz = load double, ptr %gep234.4, align 8, !tbaa !9
  %i.ma = load <2 x double>, ptr %i.lw, align 16, !tbaa !9
  %i.mb = load <2 x double>, ptr %i.ly, align 8, !tbaa !9
  %i.mc = insertelement <2 x double> poison, double %i.lz, i64 0
  %i.md = insertelement <2 x double> %i.mc, double %i.lj, i64 1
  %i.me = fneg <2 x double> %i.md
  %i.mf = fmul <2 x double> %i.mb, %i.me
  %i.mg = insertelement <2 x double> poison, double %i.lx, i64 0
  %i.mh = insertelement <2 x double> %i.mg, double %i.li, i64 1
  %i.mi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ma, <2 x double> %i.mh, <2 x double> %i.mf)
  store <2 x double> %i.mi, ptr getelementptr inbounds nuw (i8, ptr @win, i64 640), align 16, !tbaa !9
  %gep236.4 = getelementptr inbounds nuw i8, ptr %invariant.gep235, i64 1024
  %i.mj = load double, ptr %gep236.4, align 8, !tbaa !9
  %gep238.4 = getelementptr inbounds nuw i8, ptr %invariant.gep235, i64 3328
  %i.mk = load double, ptr %gep238.4, align 8, !tbaa !9
  %gep232.5 = getelementptr inbounds nuw i8, ptr %invariant.gep231, i64 768
  %i.ml = load double, ptr %gep232.5, align 8, !tbaa !9
  %gep234.5 = getelementptr inbounds nuw i8, ptr %invariant.gep231, i64 3584
  %i.mm = load double, ptr %gep234.5, align 8, !tbaa !9
  %i.mn = getelementptr inbounds nuw i8, ptr %i.jw, i64 168
  %gep236.5 = getelementptr inbounds nuw i8, ptr %invariant.gep235, i64 768
  %i.mo = load double, ptr %gep236.5, align 8, !tbaa !9
  %i.mp = getelementptr inbounds nuw i8, ptr %i.jw, i64 240
  %gep238.5 = getelementptr inbounds nuw i8, ptr %invariant.gep235, i64 3584
  %i.mq = load double, ptr %gep238.5, align 8, !tbaa !9
  %i.mr = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  %gep232.6 = getelementptr inbounds nuw i8, ptr %invariant.gep231, i64 512
  %i.ms = load double, ptr %gep232.6, align 8, !tbaa !9
  %i.mt = getelementptr inbounds nuw i8, ptr %i.jw, i64 88
  %gep234.6 = getelementptr inbounds nuw i8, ptr %invariant.gep231, i64 3840
  %i.mu = load double, ptr %gep234.6, align 8, !tbaa !9
  %i.mv = load <2 x double>, ptr %i.mr, align 16, !tbaa !9
  %i.mw = insertelement <2 x double> poison, double %i.mu, i64 0
  %i.mx = insertelement <2 x double> %i.mw, double %i.mm, i64 1
  %i.my = fneg <2 x double> %i.mx
  %i.mz = insertelement <2 x double> poison, double %i.ms, i64 0
  %i.na = insertelement <2 x double> %i.mz, double %i.ml, i64 1
  %gep236.6 = getelementptr inbounds nuw i8, ptr %invariant.gep235, i64 512
  %i.nb = load double, ptr %gep236.6, align 8, !tbaa !9
  %gep238.6 = getelementptr inbounds nuw i8, ptr %invariant.gep235, i64 3840
  %i.nc = load double, ptr %gep238.6, align 8, !tbaa !9
  %gep232.7 = getelementptr inbounds nuw i8, ptr %invariant.gep231, i64 256
  %i.nd = load double, ptr %gep232.7, align 8, !tbaa !9
  %gep234.7 = getelementptr inbounds nuw i8, ptr %invariant.gep231, i64 4096
  %i.ne = load double, ptr %gep234.7, align 8, !tbaa !9
  %i.nf = getelementptr inbounds nuw i8, ptr %i.jw, i64 152
  %gep236.7 = getelementptr inbounds nuw i8, ptr %invariant.gep235, i64 256
  %i.ng = load double, ptr %gep236.7, align 8, !tbaa !9
  %i.nh = getelementptr inbounds nuw i8, ptr %i.jw, i64 224
  %gep238.7 = getelementptr inbounds nuw i8, ptr %invariant.gep235, i64 4096
  %i.ni = load double, ptr %gep238.7, align 8, !tbaa !9
  %i.nj = load <2 x double>, ptr %i.nf, align 8, !tbaa !9
  %i.nk = load <2 x double>, ptr %i.nh, align 16, !tbaa !9
  %i.nl = insertelement <2 x double> poison, double %i.ni, i64 0
  %i.nm = insertelement <2 x double> %i.nl, double %i.nc, i64 1
  %i.nn = fmul <2 x double> %i.nk, %i.nm
  %i.no = insertelement <2 x double> poison, double %i.ng, i64 0
  %i.np = insertelement <2 x double> %i.no, double %i.nb, i64 1
  %i.nq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nj, <2 x double> %i.np, <2 x double> %i.nn)
  store <2 x double> %i.nq, ptr getelementptr inbounds nuw (i8, ptr @win, i64 688), align 16, !tbaa !9
  %i.nr = load double, ptr %invariant.gep231, align 8, !tbaa !9
  %i.ns = getelementptr inbounds nuw i8, ptr %i.jw, i64 72
  %gep234.8 = getelementptr inbounds nuw i8, ptr %invariant.gep231, i64 4352
  %i.nt = load double, ptr %gep234.8, align 8, !tbaa !9
  %i.nu = load <2 x double>, ptr %i.jw, align 16, !tbaa !9
  %i.nv = load <2 x double>, ptr %i.ns, align 8, !tbaa !9
  %i.nw = insertelement <2 x double> poison, double %i.nt, i64 0
  %i.nx = insertelement <2 x double> %i.nw, double %i.ne, i64 1
  %i.ny = fneg <2 x double> %i.nx
  %i.nz = fmul <2 x double> %i.nv, %i.ny
  %i.oa = insertelement <2 x double> poison, double %i.nr, i64 0
  %i.ob = insertelement <2 x double> %i.oa, double %i.nd, i64 1
  %i.oc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nu, <2 x double> %i.ob, <2 x double> %i.nz)
  store <2 x double> %i.oc, ptr getelementptr inbounds nuw (i8, ptr @win, i64 608), align 16, !tbaa !9
  %i.od = load double, ptr %invariant.gep235, align 8, !tbaa !9
  %i.oe = getelementptr inbounds nuw i8, ptr %i.jw, i64 216
  %i.of = load double, ptr %i.oe, align 8, !tbaa !9
  %gep238.8 = getelementptr inbounds nuw i8, ptr %invariant.gep235, i64 4352
  %i.og = load double, ptr %gep238.8, align 8, !tbaa !9
  %i.oh = load <2 x double>, ptr %i.ka, align 8, !tbaa !9 ; 2 uses
  %i.oi = load <2 x double>, ptr %i.mn, align 8, !tbaa !9
  %i.oj = load <2 x double>, ptr %i.mp, align 16, !tbaa !9
  %i.ok = insertelement <2 x double> poison, double %i.mq, i64 0
  %i.ol = insertelement <2 x double> %i.ok, double %i.mk, i64 1
  %i.om = fmul <2 x double> %i.oj, %i.ol
  %i.on = insertelement <2 x double> poison, double %i.mo, i64 0
  %i.oo = insertelement <2 x double> %i.on, double %i.mj, i64 1
  %i.op = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oi, <2 x double> %i.oo, <2 x double> %i.om)
  store <2 x double> %i.op, ptr getelementptr inbounds nuw (i8, ptr @win, i64 704), align 16, !tbaa !9
  %i.oq = insertelement <2 x double> %i.oh, double %i.of, i64 1
  %i.or = insertelement <2 x double> poison, double %i.kc, i64 0
  %i.os = insertelement <2 x double> %i.or, double %i.og, i64 1
  %i.ot = fmul <2 x double> %i.oq, %i.os
  %i.ou = insertelement <2 x double> %i.oh, double %i.jy, i64 0
  %i.ov = insertelement <2 x double> poison, double %i.jz, i64 0
  %i.ow = insertelement <2 x double> %i.ov, double %i.od, i64 1
  %i.ox = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ou, <2 x double> %i.ow, <2 x double> %i.ot)
  store <2 x double> %i.ox, ptr getelementptr inbounds nuw (i8, ptr @win, i64 672), align 16, !tbaa !9
  %i.oy = load <2 x double>, ptr %i.mt, align 8, !tbaa !9
  %i.oz = fmul <2 x double> %i.oy, %i.my
  %i.pa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mv, <2 x double> %i.na, <2 x double> %i.oz)
  store <2 x double> %i.pa, ptr getelementptr inbounds nuw (i8, ptr @win, i64 624), align 16, !tbaa !9
  %i.pb = load double, ptr getelementptr inbounds nuw (i8, ptr @win, i64 608), align 16, !tbaa !9
  %i.pc = load double, ptr getelementptr inbounds nuw (i8, ptr @win, i64 616), align 8, !tbaa !9
  %i.pd = load double, ptr getelementptr inbounds nuw (i8, ptr @win, i64 624), align 16, !tbaa !9
  %i.pe = load double, ptr getelementptr inbounds nuw (i8, ptr @win, i64 632), align 8, !tbaa !9
  %i.pf = load double, ptr getelementptr inbounds nuw (i8, ptr @win, i64 640), align 16, !tbaa !9
  %i.pg = load double, ptr getelementptr inbounds nuw (i8, ptr @win, i64 648), align 8, !tbaa !9
  %i.ph = load double, ptr getelementptr inbounds nuw (i8, ptr @win, i64 656), align 16, !tbaa !9
  %i.pi = load double, ptr getelementptr inbounds nuw (i8, ptr @win, i64 664), align 8, !tbaa !9
  %i.pj = load double, ptr getelementptr inbounds nuw (i8, ptr @win, i64 672), align 16, !tbaa !9
  %i.pk = load double, ptr getelementptr inbounds nuw (i8, ptr @win, i64 680), align 8, !tbaa !9
  %i.pl = load double, ptr getelementptr inbounds nuw (i8, ptr @win, i64 688), align 16, !tbaa !9
  %i.pm = load double, ptr getelementptr inbounds nuw (i8, ptr @win, i64 696), align 8, !tbaa !9
  %i.pn = load double, ptr getelementptr inbounds nuw (i8, ptr @win, i64 704), align 16, !tbaa !9
  %i.po = load double, ptr getelementptr inbounds nuw (i8, ptr @win, i64 712), align 8, !tbaa !9
  %i.pp = load double, ptr getelementptr inbounds nuw (i8, ptr @win, i64 720), align 16, !tbaa !9
  %i.pq = load double, ptr getelementptr inbounds nuw (i8, ptr @win, i64 728), align 8, !tbaa !9
  %i.pr = load double, ptr getelementptr inbounds nuw (i8, ptr @win, i64 736), align 16, !tbaa !9
  %i.ps = load double, ptr getelementptr inbounds nuw (i8, ptr @win, i64 744), align 8, !tbaa !9
  br label %.preheader214

.preheader213:                                    ; preds = %bb.n
  %invariant.gep240 = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %indvars.iv288 ; 12 uses
  %invariant.gep248 = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv288 ; 12 uses
  %gep241 = getelementptr inbounds nuw i8, ptr %invariant.gep240, i64 2048
  %i.pt = load double, ptr %gep241, align 8, !tbaa !9
  %gep243 = getelementptr inbounds nuw i8, ptr %invariant.gep240, i64 2304
  %i.pu = load double, ptr %gep243, align 8, !tbaa !9
  %i.pv = fneg double %i.pu
  %gep245 = getelementptr inbounds nuw i8, ptr %invariant.gep240, i64 3584
  %i.pw = load double, ptr %gep245, align 8, !tbaa !9 ; 2 uses
  %gep247 = getelementptr inbounds nuw i8, ptr %invariant.gep240, i64 3840
  %i.px = load double, ptr %gep247, align 8, !tbaa !9 ; 2 uses
  %i.py = fneg double %i.px
  %gep249 = getelementptr inbounds nuw i8, ptr %invariant.gep248, i64 512
  %i.pz = load double, ptr %gep249, align 8, !tbaa !9 ; 2 uses
  %gep251 = getelementptr inbounds nuw i8, ptr %invariant.gep248, i64 768
  %i.qa = load double, ptr %gep251, align 8, !tbaa !9 ; 2 uses
  %i.qb = fneg double %i.qa
  %gep253 = getelementptr inbounds nuw i8, ptr %invariant.gep248, i64 2048
  %i.qc = load double, ptr %gep253, align 8, !tbaa !9
  %gep255 = getelementptr inbounds nuw i8, ptr %invariant.gep248, i64 2304
  %i.qd = load double, ptr %gep255, align 8, !tbaa !9
  %gep241.1 = getelementptr inbounds nuw i8, ptr %invariant.gep240, i64 1792
  %i.qe = load double, ptr %gep241.1, align 8, !tbaa !9
  %gep243.1 = getelementptr inbounds nuw i8, ptr %invariant.gep240, i64 2560
  %i.qf = load double, ptr %gep243.1, align 8, !tbaa !9
  %gep245.1 = getelementptr inbounds nuw i8, ptr %invariant.gep240, i64 3328
  %i.qg = load double, ptr %gep245.1, align 8, !tbaa !9 ; 2 uses
  %gep247.1 = getelementptr inbounds nuw i8, ptr %invariant.gep240, i64 4096
  %i.qh = load double, ptr %gep247.1, align 8, !tbaa !9 ; 2 uses
  %gep249.1 = getelementptr inbounds nuw i8, ptr %invariant.gep248, i64 256
  %i.qi = load double, ptr %gep249.1, align 8, !tbaa !9 ; 2 uses
  %gep251.1 = getelementptr inbounds nuw i8, ptr %invariant.gep248, i64 1024
  %i.qj = load double, ptr %gep251.1, align 8, !tbaa !9 ; 2 uses
  %gep253.1 = getelementptr inbounds nuw i8, ptr %invariant.gep248, i64 1792
  %i.qk = load double, ptr %gep253.1, align 8, !tbaa !9
  %gep255.1 = getelementptr inbounds nuw i8, ptr %invariant.gep248, i64 2560
  %i.ql = load double, ptr %gep255.1, align 8, !tbaa !9
  %gep241.2 = getelementptr inbounds nuw i8, ptr %invariant.gep240, i64 1536
  %i.qm = load double, ptr %gep241.2, align 8, !tbaa !9
  %gep243.2 = getelementptr inbounds nuw i8, ptr %invariant.gep240, i64 2816
  %i.qn = load double, ptr %gep243.2, align 8, !tbaa !9
  %i.qo = insertelement <2 x double> poison, double %i.qh, i64 0
  %i.qp = insertelement <2 x double> %i.qo, double %i.px, i64 1
  %i.qq = insertelement <2 x double> poison, double %i.qg, i64 0
  %i.qr = insertelement <2 x double> %i.qq, double %i.pw, i64 1
  %i.qs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qp, <2 x double> %i.jn, <2 x double> %i.qr)
  store <2 x double> %i.qs, ptr getelementptr inbounds nuw (i8, ptr @win, i64 640), align 16, !tbaa !9
  %i.qt = insertelement <2 x double> poison, double %i.qj, i64 0
  %i.qu = insertelement <2 x double> %i.qt, double %i.qa, i64 1
  %i.qv = insertelement <2 x double> poison, double %i.qi, i64 0
  %i.qw = insertelement <2 x double> %i.qv, double %i.pz, i64 1
  %i.qx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qu, <2 x double> %i.jn, <2 x double> %i.qw)
  store <2 x double> %i.qx, ptr getelementptr inbounds nuw (i8, ptr @win, i64 688), align 16, !tbaa !9
  %i.qy = insertelement <2 x double> poison, double %i.ql, i64 0
  %i.qz = insertelement <2 x double> %i.qy, double %i.qd, i64 1
  %i.ra = insertelement <2 x double> poison, double %i.qk, i64 0
  %i.rb = insertelement <2 x double> %i.ra, double %i.qc, i64 1
  %i.rc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qz, <2 x double> %i.jn, <2 x double> %i.rb)
  store <2 x double> %i.rc, ptr getelementptr inbounds nuw (i8, ptr @win, i64 736), align 16, !tbaa !9
  %i.rd = insertelement <2 x double> poison, double %i.qn, i64 0
  %i.re = insertelement <2 x double> %i.rd, double %i.qf, i64 1
  %i.rf = fneg <2 x double> %i.re
  %i.rg = insertelement <2 x double> poison, double %i.qm, i64 0
  %i.rh = insertelement <2 x double> %i.rg, double %i.qe, i64 1
  %i.ri = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rh, <2 x double> %i.jl, <2 x double> %i.rf)
  store <2 x double> %i.ri, ptr getelementptr inbounds nuw (i8, ptr @win, i64 608), align 16, !tbaa !9
  %gep245.2 = getelementptr inbounds nuw i8, ptr %invariant.gep240, i64 3072
  %i.rj = load double, ptr %gep245.2, align 8, !tbaa !9 ; 2 uses
  %gep247.2 = getelementptr inbounds nuw i8, ptr %invariant.gep240, i64 4352
  %i.rk = load double, ptr %gep247.2, align 8, !tbaa !9 ; 2 uses
  %i.rl = insertelement <2 x double> poison, double %i.pt, i64 0
  %i.rm = insertelement <2 x double> %i.rl, double %i.rk, i64 1
  %i.rn = insertelement <2 x double> poison, double %i.pv, i64 0
  %i.ro = insertelement <2 x double> %i.rn, double %i.rj, i64 1
  %i.rp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rm, <2 x double> %i.jo, <2 x double> %i.ro)
  store <2 x double> %i.rp, ptr getelementptr inbounds nuw (i8, ptr @win, i64 624), align 16, !tbaa !9
  %i.rq = insertelement <2 x double> poison, double %i.rk, i64 0
  %i.rr = insertelement <2 x double> %i.rq, double %i.qh, i64 1
  %i.rs = fneg <2 x double> %i.rr
  %i.rt = insertelement <2 x double> poison, double %i.rj, i64 0
  %i.ru = insertelement <2 x double> %i.rt, double %i.qg, i64 1
  %i.rv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ru, <2 x double> %i.jl, <2 x double> %i.rs)
  store <2 x double> %i.rv, ptr getelementptr inbounds nuw (i8, ptr @win, i64 656), align 16, !tbaa !9
  %i.rw = load double, ptr %invariant.gep248, align 8, !tbaa !9 ; 2 uses
  %gep251.2 = getelementptr inbounds nuw i8, ptr %invariant.gep248, i64 1280
  %i.rx = load double, ptr %gep251.2, align 8, !tbaa !9 ; 2 uses
  %i.ry = insertelement <2 x double> poison, double %i.pw, i64 0
  %i.rz = insertelement <2 x double> %i.ry, double %i.rx, i64 1
  %i.sa = insertelement <2 x double> poison, double %i.py, i64 0
  %i.sb = insertelement <2 x double> %i.sa, double %i.rw, i64 1
  %i.sc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rz, <2 x double> %i.jo, <2 x double> %i.sb)
  store <2 x double> %i.sc, ptr getelementptr inbounds nuw (i8, ptr @win, i64 672), align 16, !tbaa !9
  %i.sd = insertelement <2 x double> poison, double %i.rx, i64 0
  %i.se = insertelement <2 x double> %i.sd, double %i.qj, i64 1
  %i.sf = fneg <2 x double> %i.se
  %i.sg = insertelement <2 x double> poison, double %i.rw, i64 0
  %i.sh = insertelement <2 x double> %i.sg, double %i.qi, i64 1
  %i.si = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sh, <2 x double> %i.jl, <2 x double> %i.sf)
  store <2 x double> %i.si, ptr getelementptr inbounds nuw (i8, ptr @win, i64 704), align 16, !tbaa !9
  %gep253.2 = getelementptr inbounds nuw i8, ptr %invariant.gep248, i64 1536
  %i.sj = load double, ptr %gep253.2, align 8, !tbaa !9
  %gep255.2 = getelementptr inbounds nuw i8, ptr %invariant.gep248, i64 2816
  %i.sk = load double, ptr %gep255.2, align 8, !tbaa !9
  %i.sl = insertelement <2 x double> poison, double %i.pz, i64 0
  %i.sm = insertelement <2 x double> %i.sl, double %i.sk, i64 1
  %i.sn = insertelement <2 x double> poison, double %i.qb, i64 0
  %i.so = insertelement <2 x double> %i.sn, double %i.sj, i64 1
  %i.sp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sm, <2 x double> %i.jo, <2 x double> %i.so)
  store <2 x double> %i.sp, ptr getelementptr inbounds nuw (i8, ptr @win, i64 720), align 16, !tbaa !9
  %i.sq = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 704), align 16
  %broadcast.splat310 = shufflevector <2 x double> %i.sq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sr = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 712), align 8
  %broadcast.splat = shufflevector <2 x double> %i.sr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ss = fmul <2 x double> %i.bc, %broadcast.splat
  %i.st = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> %broadcast.splat310, <2 x double> %i.ss)
  %i.su = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 720), align 16
  %broadcast.splat312 = shufflevector <2 x double> %i.su, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bg, <2 x double> %broadcast.splat312, <2 x double> %i.st)
  %i.sw = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 728), align 8
  %broadcast.splat314 = shufflevector <2 x double> %i.sw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> %broadcast.splat314, <2 x double> %i.sv)
  %i.sy = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 736), align 16
  %broadcast.splat316 = shufflevector <2 x double> %i.sy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bo, <2 x double> %broadcast.splat316, <2 x double> %i.sx)
  %i.ta = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 744), align 8
  %broadcast.splat318 = shufflevector <2 x double> %i.ta, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bs, <2 x double> %broadcast.splat318, <2 x double> %i.sz)
  %i.tc = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 656), align 16
  %broadcast.splat322 = shufflevector <2 x double> %i.tc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.td = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 664), align 8
  %broadcast.splat320 = shufflevector <2 x double> %i.td, <2 x double> poison, <2 x i32> zeroinitializer
  %i.te = fmul <2 x double> %i.bc, %broadcast.splat320
  %i.tf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> %broadcast.splat322, <2 x double> %i.te)
  %i.tg = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 672), align 16
  %broadcast.splat324 = shufflevector <2 x double> %i.tg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.th = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bg, <2 x double> %broadcast.splat324, <2 x double> %i.tf)
  %i.ti = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 680), align 8
  %broadcast.splat326 = shufflevector <2 x double> %i.ti, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> %broadcast.splat326, <2 x double> %i.th)
  %i.tk = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 688), align 16
  %broadcast.splat328 = shufflevector <2 x double> %i.tk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bo, <2 x double> %broadcast.splat328, <2 x double> %i.tj)
  %i.tm = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 696), align 8
  %broadcast.splat330 = shufflevector <2 x double> %i.tm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bs, <2 x double> %broadcast.splat330, <2 x double> %i.tl)
  %i.to = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 608), align 16
  %broadcast.splat334 = shufflevector <2 x double> %i.to, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tp = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 616), align 8
  %broadcast.splat332 = shufflevector <2 x double> %i.tp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tq = fmul <2 x double> %i.bc, %broadcast.splat332
  %i.tr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> %broadcast.splat334, <2 x double> %i.tq)
  %i.ts = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 624), align 16
  %broadcast.splat336 = shufflevector <2 x double> %i.ts, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bg, <2 x double> %broadcast.splat336, <2 x double> %i.tr)
  %i.tu = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 632), align 8
  %broadcast.splat338 = shufflevector <2 x double> %i.tu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> %broadcast.splat338, <2 x double> %i.tt)
  %i.tw = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 640), align 16
  %broadcast.splat340 = shufflevector <2 x double> %i.tw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bo, <2 x double> %broadcast.splat340, <2 x double> %i.tv)
  %i.ty = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 648), align 8
  %broadcast.splat342 = shufflevector <2 x double> %i.ty, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bs, <2 x double> %broadcast.splat342, <2 x double> %i.tx)
  %i.ua = getelementptr inbounds nuw i8, ptr %.0194259, i64 96
  %i.ub = shufflevector <2 x double> %i.tz, <2 x double> %i.tn, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.uc = shufflevector <2 x double> %i.tb, <2 x double> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <4 x double> %i.ub, <4 x double> %i.uc, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec, ptr %i.ua, align 8, !tbaa !9
  %i.ud = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 704), align 16
  %broadcast.splat310.1 = shufflevector <2 x double> %i.ud, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ue = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 712), align 8
  %broadcast.splat.1 = shufflevector <2 x double> %i.ue, <2 x double> poison, <2 x i32> zeroinitializer
  %i.uf = fmul <2 x double> %i.ca, %broadcast.splat.1
  %i.ug = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bw, <2 x double> %broadcast.splat310.1, <2 x double> %i.uf)
  %i.uh = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 720), align 16
  %broadcast.splat312.1 = shufflevector <2 x double> %i.uh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ui = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ce, <2 x double> %broadcast.splat312.1, <2 x double> %i.ug)
  %i.uj = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 728), align 8
  %broadcast.splat314.1 = shufflevector <2 x double> %i.uj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.uk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ci, <2 x double> %broadcast.splat314.1, <2 x double> %i.ui)
  %i.ul = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 736), align 16
  %broadcast.splat316.1 = shufflevector <2 x double> %i.ul, <2 x double> poison, <2 x i32> zeroinitializer
  %i.um = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cm, <2 x double> %broadcast.splat316.1, <2 x double> %i.uk)
  %i.un = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 744), align 8
  %broadcast.splat318.1 = shufflevector <2 x double> %i.un, <2 x double> poison, <2 x i32> zeroinitializer
  %i.uo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cq, <2 x double> %broadcast.splat318.1, <2 x double> %i.um)
  %i.up = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 656), align 16
  %broadcast.splat322.1 = shufflevector <2 x double> %i.up, <2 x double> poison, <2 x i32> zeroinitializer
  %i.uq = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 664), align 8
  %broadcast.splat320.1 = shufflevector <2 x double> %i.uq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ur = fmul <2 x double> %i.ca, %broadcast.splat320.1
  %i.us = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bw, <2 x double> %broadcast.splat322.1, <2 x double> %i.ur)
  %i.ut = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 672), align 16
  %broadcast.splat324.1 = shufflevector <2 x double> %i.ut, <2 x double> poison, <2 x i32> zeroinitializer
  %i.uu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ce, <2 x double> %broadcast.splat324.1, <2 x double> %i.us)
  %i.uv = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 680), align 8
  %broadcast.splat326.1 = shufflevector <2 x double> %i.uv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.uw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ci, <2 x double> %broadcast.splat326.1, <2 x double> %i.uu)
  %i.ux = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 688), align 16
  %broadcast.splat328.1 = shufflevector <2 x double> %i.ux, <2 x double> poison, <2 x i32> zeroinitializer
  %i.uy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cm, <2 x double> %broadcast.splat328.1, <2 x double> %i.uw)
  %i.uz = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 696), align 8
  %broadcast.splat330.1 = shufflevector <2 x double> %i.uz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.va = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cq, <2 x double> %broadcast.splat330.1, <2 x double> %i.uy)
  %i.vb = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 608), align 16
  %broadcast.splat334.1 = shufflevector <2 x double> %i.vb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vc = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 616), align 8
  %broadcast.splat332.1 = shufflevector <2 x double> %i.vc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vd = fmul <2 x double> %i.ca, %broadcast.splat332.1
  %i.ve = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bw, <2 x double> %broadcast.splat334.1, <2 x double> %i.vd)
  %i.vf = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 624), align 16
  %broadcast.splat336.1 = shufflevector <2 x double> %i.vf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ce, <2 x double> %broadcast.splat336.1, <2 x double> %i.ve)
  %i.vh = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 632), align 8
  %broadcast.splat338.1 = shufflevector <2 x double> %i.vh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ci, <2 x double> %broadcast.splat338.1, <2 x double> %i.vg)
  %i.vj = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 640), align 16
  %broadcast.splat340.1 = shufflevector <2 x double> %i.vj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cm, <2 x double> %broadcast.splat340.1, <2 x double> %i.vi)
  %i.vl = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 648), align 8
  %broadcast.splat342.1 = shufflevector <2 x double> %i.vl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cq, <2 x double> %broadcast.splat342.1, <2 x double> %i.vk)
  %i.vn = getelementptr inbounds nuw i8, ptr %.0194259, i64 48
  %i.vo = shufflevector <2 x double> %i.vm, <2 x double> %i.va, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.vp = shufflevector <2 x double> %i.uo, <2 x double> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %interleaved.vec.1 = shufflevector <4 x double> %i.vo, <4 x double> %i.vp, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec.1, ptr %i.vn, align 8, !tbaa !9
  %i.vq = load double, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 8), align 8, !tbaa !9
  %i.vr = insertelement <2 x double> %i.cw, double %i.vq, i64 1 ; 3 uses
  %i.vs = load double, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 64), align 16, !tbaa !9
  %i.vt = load double, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 16), align 16, !tbaa !9
  %i.vu = insertelement <2 x double> poison, double %i.vs, i64 0
  %i.vv = insertelement <2 x double> %i.vu, double %i.vt, i64 1 ; 3 uses
  %i.vw = load double, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 72), align 8, !tbaa !9
  %i.vx = load double, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 24), align 8, !tbaa !9
  %i.vy = insertelement <2 x double> poison, double %i.vw, i64 0
  %i.vz = insertelement <2 x double> %i.vy, double %i.vx, i64 1 ; 3 uses
  %i.wa = load double, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 80), align 16, !tbaa !9
  %i.wb = load double, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 32), align 16, !tbaa !9
  %i.wc = insertelement <2 x double> poison, double %i.wa, i64 0
  %i.wd = insertelement <2 x double> %i.wc, double %i.wb, i64 1 ; 3 uses
  %i.we = load double, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 88), align 8, !tbaa !9
  %i.wf = load double, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 40), align 8, !tbaa !9
  %i.wg = insertelement <2 x double> poison, double %i.we, i64 0
  %i.wh = insertelement <2 x double> %i.wg, double %i.wf, i64 1 ; 3 uses
  %i.wi = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 704), align 16
  %broadcast.splat310.2 = shufflevector <2 x double> %i.wi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wj = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 712), align 8
  %broadcast.splat.2 = shufflevector <2 x double> %i.wj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wk = fmul <2 x double> %i.vr, %broadcast.splat.2
  %i.wl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cu, <2 x double> %broadcast.splat310.2, <2 x double> %i.wk)
  %i.wm = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 720), align 16
  %broadcast.splat312.2 = shufflevector <2 x double> %i.wm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vv, <2 x double> %broadcast.splat312.2, <2 x double> %i.wl)
  %i.wo = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 728), align 8
  %broadcast.splat314.2 = shufflevector <2 x double> %i.wo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vz, <2 x double> %broadcast.splat314.2, <2 x double> %i.wn)
  %i.wq = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 736), align 16
  %broadcast.splat316.2 = shufflevector <2 x double> %i.wq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wd, <2 x double> %broadcast.splat316.2, <2 x double> %i.wp)
  %i.ws = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 744), align 8
  %broadcast.splat318.2 = shufflevector <2 x double> %i.ws, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wh, <2 x double> %broadcast.splat318.2, <2 x double> %i.wr)
  %i.wu = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 656), align 16
  %broadcast.splat322.2 = shufflevector <2 x double> %i.wu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wv = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 664), align 8
  %broadcast.splat320.2 = shufflevector <2 x double> %i.wv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ww = fmul <2 x double> %i.vr, %broadcast.splat320.2
  %i.wx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cu, <2 x double> %broadcast.splat322.2, <2 x double> %i.ww)
  %i.wy = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 672), align 16
  %broadcast.splat324.2 = shufflevector <2 x double> %i.wy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vv, <2 x double> %broadcast.splat324.2, <2 x double> %i.wx)
  %i.xa = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 680), align 8
  %broadcast.splat326.2 = shufflevector <2 x double> %i.xa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.xb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vz, <2 x double> %broadcast.splat326.2, <2 x double> %i.wz)
  %i.xc = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 688), align 16
  %broadcast.splat328.2 = shufflevector <2 x double> %i.xc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.xd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wd, <2 x double> %broadcast.splat328.2, <2 x double> %i.xb)
  %i.xe = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 696), align 8
  %broadcast.splat330.2 = shufflevector <2 x double> %i.xe, <2 x double> poison, <2 x i32> zeroinitializer
  %i.xf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wh, <2 x double> %broadcast.splat330.2, <2 x double> %i.xd)
  %i.xg = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 608), align 16
  %broadcast.splat334.2 = shufflevector <2 x double> %i.xg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.xh = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 616), align 8
  %broadcast.splat332.2 = shufflevector <2 x double> %i.xh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.xi = fmul <2 x double> %i.vr, %broadcast.splat332.2
  %i.xj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cu, <2 x double> %broadcast.splat334.2, <2 x double> %i.xi)
  %i.xk = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 624), align 16
  %broadcast.splat336.2 = shufflevector <2 x double> %i.xk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.xl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vv, <2 x double> %broadcast.splat336.2, <2 x double> %i.xj)
  %i.xm = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 632), align 8
  %broadcast.splat338.2 = shufflevector <2 x double> %i.xm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.xn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vz, <2 x double> %broadcast.splat338.2, <2 x double> %i.xl)
  %i.xo = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 640), align 16
  %broadcast.splat340.2 = shufflevector <2 x double> %i.xo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.xp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wd, <2 x double> %broadcast.splat340.2, <2 x double> %i.xn)
  %i.xq = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 648), align 8
  %broadcast.splat342.2 = shufflevector <2 x double> %i.xq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.xr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wh, <2 x double> %broadcast.splat342.2, <2 x double> %i.xp)
  %i.xs = shufflevector <2 x double> %i.xr, <2 x double> %i.xf, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.xt = shufflevector <2 x double> %i.wt, <2 x double> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %interleaved.vec.2 = shufflevector <4 x double> %i.xs, <4 x double> %i.xt, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
end_hunk_0

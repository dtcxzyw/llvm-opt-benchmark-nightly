Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/arkode_lsrkstep?download=true
inline.NumInlined: 15
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@lsrkStep_TakeStepRKL:bb.a
  %i.hm = fsub double 1.000000e+00, %.0267360
  %i.hn = tail call nnan double @llvm.fmuladd.f64(double %i.ha, double 2.000000e+00, double -1.000000e+00)
  %i.ho = fdiv double %i.hn, %i.ha
  %i.hp = fdiv double %i.hl, %.0267360
  %i.hq = fmul double %i.ho, %i.hp                ; 3 uses
  %i.hr = fneg double %i.he
  %i.hs = fdiv double %i.hr, %i.ha
  %i.ht = fdiv double %i.hl, %.0265361
  %i.hu = fmul double %i.hs, %i.ht                ; 2 uses
  %i.hv = fmul double %i.fh, %i.hq                ; 2 uses
  %i.hw = fmul double %i.fh, %i.hf
  %i.hx = fmul double %i.hw, 2.500000e-01         ; 2 uses
  %i.hy = load double, ptr %i.fj, align 8, !tbaa !69
  %i.hz = load double, ptr %i.u, align 8, !tbaa !56 ; 2 uses
  %i.ia = tail call double @llvm.fmuladd.f64(double %i.hz, double %i.hx, double %i.hy)
  store double %i.ia, ptr %i.fn, align 8, !tbaa !71
  store i32 %.0252364, ptr %i.n, align 8, !tbaa !54
  %i.ib = fmul double %i.hv, %i.hz
  store double %i.ib, ptr %i.g, align 8, !tbaa !50
  %i.ic = load ptr, ptr %i.gd, align 8, !tbaa !73
  store ptr %i.ic, ptr %i.i, align 8, !tbaa !74
  store double %i.hu, ptr %i.gf, align 8, !tbaa !50
  store ptr %.0261362, ptr %i.gg, align 8, !tbaa !74
  %i.id = fsub double 1.000000e+00, %i.hq
  %i.ie = fsub double %i.id, %i.hu
  store double %i.ie, ptr %i.gh, align 8, !tbaa !50
  %i.if = load ptr, ptr %i.fo, align 8, !tbaa !70
  store ptr %i.if, ptr %i.gi, align 8, !tbaa !74
  store double %i.hq, ptr %i.gj, align 8, !tbaa !50
  store ptr %.0259363, ptr %i.gk, align 8, !tbaa !74
  %i.ig = fneg double %i.hv
  %i.ih = fmul double %i.hm, %i.ig
  %i.ii = load double, ptr %i.u, align 8, !tbaa !56
  %i.ij = fmul double %i.ih, %i.ii
  store double %i.ij, ptr %i.gl, align 8, !tbaa !50
  %i.ik = load ptr, ptr %i.fr, align 8, !tbaa !48
  store ptr %i.ik, ptr %i.gm, align 8, !tbaa !74
  %i.il = load ptr, ptr %i.gd, align 8, !tbaa !73
  %i.im = tail call i32 @N_VLinearCombination(i32 noundef 5, ptr noundef nonnull %i.g, ptr noundef nonnull %i.i, ptr noundef %i.il) #12
  %.not307 = icmp eq i32 %i.im, 0
  br i1 %.not307, label %bb.am, label %.thread346

bb.am:                                            ; preds = %bb.al
  %i.in = load i32, ptr %i.q, align 4, !tbaa !55  ; 2 uses
  %i.io = icmp slt i32 %.0252364, %i.in
  br i1 %i.io, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.ip = load ptr, ptr %i.fu, align 8, !tbaa !72 ; 2 uses
  %.not308 = icmp eq ptr %i.ip, null
  br i1 %.not308, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.iq = load double, ptr %i.fn, align 8, !tbaa !71
  %i.ir = load ptr, ptr %i.gd, align 8, !tbaa !73
  %i.is = load ptr, ptr %i.gc, align 8, !tbaa !46
  %i.it = tail call i32 %i.ip(double noundef %i.iq, ptr noundef %i.ir, ptr noundef %i.is) #12
  %.not311 = icmp eq i32 %i.it, 0
  br i1 %.not311, label %bb.as, label %.thread346

bb.ap:                                            ; preds = %bb.an, %bb.am
  %i.iu = icmp eq i32 %.0252364, %i.in
  br i1 %i.iu, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.iv = load ptr, ptr %i.gn, align 8, !tbaa !75 ; 2 uses
  %.not309 = icmp eq ptr %i.iv, null
  br i1 %.not309, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.iw = load double, ptr %i.fn, align 8, !tbaa !71
  %i.ix = load double, ptr %i.u, align 8, !tbaa !56
  %i.iy = tail call double @llvm.fmuladd.f64(double %i.ix, double %i.hx, double %i.iw)
  %i.iz = load ptr, ptr %i.gd, align 8, !tbaa !73
  %i.ja = load ptr, ptr %i.gc, align 8, !tbaa !46
  %i.jb = tail call i32 %i.iv(double noundef %i.iy, ptr noundef %i.iz, ptr noundef %i.ja) #12
  %.not310 = icmp eq i32 %i.jb, 0
  br i1 %.not310, label %bb.as, label %.thread346

bb.as:                                            ; preds = %bb.ap, %bb.aq, %bb.ar, %bb.ao
  %i.jc = load i32, ptr %i.q, align 4, !tbaa !55  ; 2 uses
  %i.jd = icmp slt i32 %.0252364, %i.jc
  br i1 %i.jd, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.je = load ptr, ptr %i.gd, align 8, !tbaa !73
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.je, ptr noundef %.0261362) #12
  %.pre374 = load i32, ptr %i.q, align 4, !tbaa !55
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at
  %i.jf = phi i32 [ %.pre374, %bb.at ], [ %i.jc, %bb.as ]
  %.1268 = phi double [ %i.hl, %bb.at ], [ %.0267360, %bb.as ]
  %.1266 = phi double [ %.0267360, %bb.at ], [ %.0265361, %bb.as ]
  %.1262 = phi ptr [ %.0259363, %bb.at ], [ %.0261362, %bb.as ]
  %.1260 = phi ptr [ %.0261362, %bb.at ], [ %.0259363, %bb.as ]
  %.not303 = icmp sgt i32 %i.hi, %i.jf
  br i1 %.not303, label %._crit_edge, label %bb.ah

._crit_edge:                                      ; preds = %bb.au, %bb.ag
  %i.jg = load double, ptr %i.fj, align 8, !tbaa !69
  %i.jh = load double, ptr %i.u, align 8, !tbaa !56
  %i.ji = fadd double %i.jg, %i.jh                ; 3 uses
  store double %i.ji, ptr %i.fn, align 8, !tbaa !71
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !45 ; 2 uses
  %.not312 = icmp eq ptr %i.jk, null
  br i1 %.not312, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %._crit_edge
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !73
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !46
  %i.jp = tail call i32 %i.jk(double noundef %i.ji, ptr noundef %i.jm, ptr noundef %i.jo) #12
  %.not313 = icmp eq i32 %i.jp, 0
  br i1 %.not313, label %._crit_edge375, label %.thread346

._crit_edge375:                                   ; preds = %bb.av
  %.pre376 = load double, ptr %i.fn, align 8, !tbaa !71
  br label %bb.aw

bb.aw:                                            ; preds = %._crit_edge375, %._crit_edge
  %i.jq = phi double [ %.pre376, %._crit_edge375 ], [ %i.ji, %._crit_edge ]
  %i.jr = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !73
  %i.ju = load ptr, ptr %i.l, align 8, !tbaa !52
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !46
  %i.jx = tail call i32 %i.jr(double noundef %i.jq, ptr noundef %i.jt, ptr noundef %i.ju, ptr noundef %i.jw) #12 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !47
  %i.ka = add nsw i64 %i.jz, 1
  store i64 %i.ka, ptr %i.jy, align 8, !tbaa !47
  %i.kb = icmp slt i32 %i.jx, 0
  br i1 %i.kb, label %.thread346, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %.not314 = icmp eq i32 %i.jx, 0
  br i1 %.not314, label %bb.ay, label %.thread346

bb.ay:                                            ; preds = %bb.ax
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.kd = load i32, ptr %i.kc, align 8, !tbaa !42
  %.not315 = icmp eq i32 %i.kd, 0
  br i1 %.not315, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.ke = load ptr, ptr %i.fo, align 8, !tbaa !70
  store ptr %i.ke, ptr %i.i, align 8, !tbaa !74
  store <2 x double> <double 8.000000e-01, double -8.000000e-01>, ptr %i.g, align 8, !tbaa !50
  %i.kf = load ptr, ptr %i.js, align 8, !tbaa !73
  %i.kg = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.kf, ptr %i.kg, align 8, !tbaa !74
  %i.kh = load double, ptr %i.u, align 8, !tbaa !56
  %i.ki = fmul double %i.kh, 4.000000e-01
  %i.kj = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store double %i.ki, ptr %i.kj, align 8, !tbaa !50
  %i.kk = load ptr, ptr %i.fr, align 8, !tbaa !48
  %i.kl = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.kk, ptr %i.kl, align 8, !tbaa !74
  %i.km = load double, ptr %i.u, align 8, !tbaa !56
  %i.kn = fmul double %i.km, 4.000000e-01
  %i.ko = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store double %i.kn, ptr %i.ko, align 8, !tbaa !50
  %i.kp = load ptr, ptr %i.l, align 8, !tbaa !52
  %i.kq = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.kp, ptr %i.kq, align 8, !tbaa !74
  %i.kr = load ptr, ptr %i.j, align 8, !tbaa !51
  %i.ks = tail call i32 @N_VLinearCombination(i32 noundef 4, ptr noundef nonnull %i.g, ptr noundef nonnull %i.i, ptr noundef %i.kr) #12
  %.not316 = icmp eq i32 %i.ks, 0
  br i1 %.not316, label %bb.ba, label %.thread346

bb.ba:                                            ; preds = %bb.az
  %i.kt = load ptr, ptr %i.j, align 8, !tbaa !51
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !76
  %i.kw = tail call double @N_VWrmsNorm(ptr noundef %i.kt, ptr noundef %i.kv) #12 ; 2 uses
  store double %i.kw, ptr %1, align 8, !tbaa !50
  %i.kx = load ptr, ptr %i.l, align 8, !tbaa !52
  tail call void @lsrkStep_DomEigUpdateLogic(ptr noundef nonnull %0, ptr noundef nonnull %i.d, double noundef %i.kw, ptr noundef %i.kx)
  br label %.thread346

bb.bb:                                            ; preds = %bb.ay
  %i.ky = load double, ptr %1, align 8, !tbaa !50
  %i.kz = load ptr, ptr %i.l, align 8, !tbaa !52
  tail call void @lsrkStep_DomEigUpdateLogic(ptr noundef nonnull %0, ptr noundef nonnull %i.d, double noundef %i.ky, ptr noundef %i.kz)
  br label %.thread346

.thread346:                                       ; preds = %.lr.ph400, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.ao, %bb.ar, %bb.v, %bb.w, %bb.n, %lsrkStep_AccessStepMem.exit, %bb.c, %bb.k, %bb.ab, %bb.ac, %bb.af, %bb.av, %bb.aw, %bb.ax, %bb.az, %bb.bb, %bb.ba, %bb.i, %bb.h
  %.6 = phi i32 [ -21, %lsrkStep_AccessStepMem.exit ], [ %i.t, %bb.c ], [ -53, %bb.i ], [ 11, %bb.h ], [ 0, %bb.ba ], [ %i.bi, %bb.k ], [ -41, %bb.ab ], [ -8, %bb.ac ], [ -38, %bb.af ], [ -41, %bb.av ], [ -8, %bb.aw ], [ -28, %bb.az ], [ 9, %bb.ax ], [ -37, %bb.ar ], [ 0, %bb.bb ], [ 11, %bb.v ], [ -53, %bb.w ], [ %i.bo, %bb.n ], [ -41, %bb.ai ], [ -8, %bb.aj ], [ 9, %bb.ak ], [ -28, %bb.al ], [ -38, %bb.ao ], [ %i.bx, %.lr.ph400 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.6
}

; Function Attrs: nounwind uwtable
define range(i32 -22, 1) i32 @lsrkStep_RKL_CheckStabilityNorm(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, double noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [7 x double], align 16            ; 9 uses
  %4 = uitofp nneg i32 %1 to double               ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load double, ptr %i.b, align 8, !tbaa !57
  %i.d = fmul double %2, %i.c                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load double, ptr %i.e, align 8, !tbaa !58
  %i.g = fmul double %2, %i.f                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.i = load i32, ptr %i.h, align 4, !tbaa !85
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.j = insertelement <2 x double> poison, double %4, i64 0
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.l = fmul nnan <2 x double> %i.k, <double 3.000000e-01, double 7.500000e-01>
  store <2 x double> %i.l, ptr %i.a, align 16, !tbaa !50
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = fmul nnan double %4, 6.650000e-01        ; 2 uses
  store double %i.n, ptr %i.m, align 16, !tbaa !50
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store double %i.n, ptr %i.o, align 8, !tbaa !50
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.q = fmul nnan double %4, 6.350000e-01        ; 2 uses
  store double %i.q, ptr %i.p, align 16, !tbaa !50
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.s = fmul nnan <2 x double> %i.k, <double 6.000000e-01, double 5.300000e-01>
  store <2 x double> %i.s, ptr %i.r, align 8, !tbaa !50
  %i.t = tail call double @llvm.fmuladd.f64(double %4, double 2.000000e+00, double 1.000000e+00) ; 2 uses
  %i.u = tail call nnan double @llvm.fmuladd.f64(double %i.t, double %i.t, double -9.000000e+00)
  %i.v = fmul nnan double %i.u, 6.250000e-02      ; 3 uses
  %i.w = icmp slt i32 %1, 7
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = sext i32 %1 to i64
  %i.y = getelementptr [8 x i8], ptr %i.a, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 -16
  %i.aa = load double, ptr %i.z, align 8, !tbaa !50
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.ab = icmp samesign ult i32 %1, 21
  br i1 %i.ab, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = and i32 %1, 1
  %i.ad = sub nuw nsw i32 6, %i.ac
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ae
  %i.ag = load double, ptr %i.af, align 8, !tbaa !50
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.pn = phi double [ %i.aa, %bb.c ], [ %i.ag, %bb.e ], [ %i.q, %bb.d ]
  %.074 = fdiv double %i.v, %.pn
  %i.ah = fadd double %i.v, %i.d
  %i.ai = fdiv double %i.ah, %i.v                 ; 2 uses
  %i.aj = fdiv double %i.g, %.074                 ; 2 uses
  %i.ak = fmul double %i.aj, %i.aj
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.ai, double %i.ak) ; 2 uses
  %i.am = fcmp ugt double %i.al, 0.000000e+00
  %sqrt = tail call double @llvm.sqrt.f64(double %i.al)
  %i.an = select i1 %i.am, double %sqrt, double 0.000000e+00
  store double %i.an, ptr %3, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.ao = tail call double @llvm.fmuladd.f64(double %4, double %4, double %4)
  %i.ap = fadd double %i.ao, -2.000000e+00        ; 2 uses
  %i.aq = icmp slt i32 %1, 0
  br i1 %i.aq, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = fdiv double 4.000000e+00, %i.ap         ; 2 uses
  %i.as = fmul double %i.ar, %i.g
  %i.at = tail call double @llvm.fmuladd.f64(double %i.ar, double %i.d, double 1.000000e+00)
  %i.au = insertelement <2 x double> poison, double %i.as, i64 0 ; 2 uses
  %i.av = insertelement <2 x double> %i.au, double %i.at, i64 1 ; 3 uses
  switch i32 %1, label %.lr.ph.i.preheader [
    i32 0, label %.loopexit
    i32 1, label %bb.i
  ]

.lr.ph.i.preheader:                               ; preds = %bb.h
  %i.aw = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ax = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  br label %.lr.ph.i

bb.i:                                             ; preds = %bb.h
  br label %.loopexit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.048.i = phi i32 [ %i.bd, %.lr.ph.i ], [ 1, %.lr.ph.i.preheader ] ; 2 uses
  %i.ay = phi <2 x double> [ %i.br, %.lr.ph.i ], [ %i.av, %.lr.ph.i.preheader ] ; 4 uses
  %i.az = phi <2 x double> [ %i.ay, %.lr.ph.i ], [ <double 0.000000e+00, double 1.000000e+00>, %.lr.ph.i.preheader ]
  %i.ba = uitofp nneg i32 %.048.i to double       ; 2 uses
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.ba, double 2.000000e+00, double 1.000000e+00)
  %i.bc = fneg double %i.ba
  %i.bd = add nuw nsw i32 %.048.i, 1              ; 3 uses
  %i.be = uitofp nneg i32 %i.bd to double
  %i.bf = fneg <2 x double> %i.ay
  %i.bg = shufflevector <2 x double> %i.ay, <2 x double> %i.bf, <2 x i32> <i32 1, i32 2>
  %i.bh = fmul <2 x double> %i.aw, %i.bg
  %i.bi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> %i.ay, <2 x double> %i.bh)
  %i.bj = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.bk = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bl = fmul <2 x double> %i.az, %i.bk
  %i.bm = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.bn = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bn, <2 x double> %i.bi, <2 x double> %i.bl)
  %i.bp = insertelement <2 x double> poison, double %i.be, i64 0
  %i.bq = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.br = fdiv <2 x double> %i.bo, %i.bq          ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bd, %1
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i

.loopexit:                                        ; preds = %.lr.ph.i, %bb.h, %bb.i
  %i.bs = phi <2 x double> [ <double 0.000000e+00, double 1.000000e+00>, %bb.h ], [ %i.av, %bb.i ], [ %i.br, %.lr.ph.i ] ; 2 uses
  %5 = shl nuw i32 %1, 1
  %6 = uitofp i32 %5 to double
  %7 = add nuw i32 %1, 1
  %8 = uitofp i32 %7 to double
  %i.bt = fmul nnan double %6, %8
  %i.bu = fdiv double %i.ap, %i.bt                ; 3 uses
  %i.bv = fsub double 1.000000e+00, %i.bu
  %i.bw = extractelement <2 x double> %i.bs, i64 1
  %i.bx = tail call double @llvm.fmuladd.f64(double %i.bu, double %i.bw, double %i.bv) ; 2 uses
  %i.by = extractelement <2 x double> %i.bs, i64 0
  %i.bz = fmul double %i.bu, %i.by                ; 2 uses
  %i.ca = fmul double %i.bz, %i.bz
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.bx, double %i.bx, double %i.ca) ; 2 uses
  %i.cc = fcmp ugt double %i.cb, 0.000000e+00
  %sqrt90 = tail call double @llvm.sqrt.f64(double %i.cb)
  %i.cd = select i1 %i.cc, double %sqrt90, double 0.000000e+00
  store double %i.cd, ptr %3, align 8, !tbaa !50
  br label %bb.j

.critedge:                                        ; preds = %bb.g
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef null, i32 noundef -22, i32 noundef 3197, ptr noundef nonnull @__func__.lsrkStep_legendre_P_complex, ptr noundef nonnull @.str, ptr noundef nonnull @.str.54) #12
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %.loopexit, %.critedge
  %.1 = phi i32 [ -22, %.critedge ], [ 0, %.loopexit ], [ 0, %bb.f ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define range(i32 -41, 10) i32 @lsrkStep_TakeStepSSPs2(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) local_unnamed_addr #0 {
bb.a:
  store i32 0, ptr %2, align 4, !tbaa !49
  store double 0.000000e+00, ptr %1, align 8, !tbaa !50
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 11 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %lsrkStep_AccessStepMem.exit, label %bb.b

lsrkStep_AccessStepMem.exit:                      ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -21, i32 noundef 2847, ptr noundef nonnull @__func__.lsrkStep_TakeStepSSPs2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.47) #12
  br label %.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  store i32 0, ptr %i.h, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !55   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  %i.l = load double, ptr %i.k, align 8, !tbaa !56 ; 4 uses
  %i.m = sitofp i32 %i.j to double                ; 2 uses
  %i.n = insertelement <2 x double> poison, double %i.m, i64 0
  %i.o = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> zeroinitializer
  %i.p = fadd <2 x double> %i.o, <double -1.000000e+00, double -0.000000e+00>
  %i.q = fdiv <2 x double> splat (double 1.000000e+00), %i.p ; 2 uses
  %i.r = extractelement <2 x double> %i.q, i64 1  ; 4 uses
  %i.s = extractelement <2 x double> %i.q, i64 0  ; 2 uses
  %i.t = fmul double %i.l, %i.s                   ; 4 uses
  %i.u = fmul double %i.l, %i.r                   ; 4 uses
  %i.v = icmp eq i32 %i.j, 2
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = fmul double %i.l, f0x3FE6356C7DC09B41    ; 2 uses
  %i.x = fsub double %i.l, %i.w
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.y = fadd nnan double %i.r, 1.000000e+00
  %i.z = fmul double %i.u, %i.y
  %i.aa = fsub nnan double 1.000000e+00, %i.r
  %i.ab = fmul double %i.u, %i.aa
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0136 = phi double [ %i.w, %bb.c ], [ %i.z, %bb.d ]
  %.0135 = phi double [ 0.000000e+00, %bb.c ], [ %i.u, %bb.d ]
  %.0134 = phi double [ %i.x, %bb.c ], [ %i.ab, %bb.d ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !44
  %.not148 = icmp eq i32 %i.ad, 0
  br i1 %.not148, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !45 ; 2 uses
  %.not149 = icmp eq ptr %i.af, null
  br i1 %.not149, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !69
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !70
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !46
  %i.am = tail call i32 %i.af(double noundef %i.ah, ptr noundef %i.aj, ptr noundef %i.al) #12
  %.not150 = icmp eq i32 %i.am, 0
  br i1 %.not150, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !69
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !70
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !48
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !46
  %i.aw = tail call i32 %i.an(double noundef %i.ap, ptr noundef %i.ar, ptr noundef %i.at, ptr noundef %i.av) #12
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !47
  %i.az = add nsw i64 %i.ay, 1
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !47
  %.not151 = icmp eq i32 %i.aw, 0
  br i1 %.not151, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %i.ac, align 8, !tbaa !44
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 3 uses
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !69
  %i.bc = fadd double %i.t, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 10 uses
  store double %i.bc, ptr %i.bd, align 8, !tbaa !71
  store i32 1, ptr %i.h, align 8, !tbaa !54
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !70
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !48
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 12 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !73
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.bf, double noundef %i.t, ptr noundef %i.bh, ptr noundef %i.bj) #12
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 3 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !42
  %.not152 = icmp eq i32 %i.bl, 0
  br i1 %.not152, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bm = load ptr, ptr %i.be, align 8, !tbaa !70
  %i.bn = load ptr, ptr %i.bg, align 8, !tbaa !48
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !51
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.bm, double noundef %.0136, ptr noundef %i.bn, ptr noundef %i.bp) #12
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !72 ; 2 uses
  %.not153 = icmp eq ptr %i.br, null
  br i1 %.not153, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bs = load double, ptr %i.bd, align 8, !tbaa !71
  %i.bt = load ptr, ptr %i.bi, align 8, !tbaa !73
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !46
  %i.bw = tail call i32 %i.br(double noundef %i.bs, ptr noundef %i.bt, ptr noundef %i.bv) #12
  %.not154 = icmp eq i32 %i.bw, 0
  br i1 %.not154, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bx = load i32, ptr %i.i, align 4, !tbaa !55
  %.not161184 = icmp sgt i32 %i.bx, 2
  br i1 %.not161184, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 656
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %bb.w
  %.0185 = phi i32 [ 2, %.lr.ph ], [ %i.de, %bb.w ] ; 3 uses
  %i.cd = load ptr, ptr %i.by, align 8, !tbaa !45 ; 2 uses
  %.not155 = icmp eq ptr %i.cd, null
  br i1 %.not155, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ce = load double, ptr %i.bd, align 8, !tbaa !71
  %i.cf = load ptr, ptr %i.bi, align 8, !tbaa !73
  %i.cg = load ptr, ptr %i.bz, align 8, !tbaa !46
  %i.ch = tail call i32 %i.cd(double noundef %i.ce, ptr noundef %i.cf, ptr noundef %i.cg) #12
  %.not156 = icmp eq i32 %i.ch, 0
  br i1 %.not156, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ci = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.cj = load double, ptr %i.bd, align 8, !tbaa !71
  %i.ck = load ptr, ptr %i.bi, align 8, !tbaa !73
  %i.cl = load ptr, ptr %i.ca, align 8, !tbaa !52
  %i.cm = load ptr, ptr %i.bz, align 8, !tbaa !46
  %i.cn = tail call i32 %i.ci(double noundef %i.cj, ptr noundef %i.ck, ptr noundef %i.cl, ptr noundef %i.cm) #12 ; 2 uses
  %i.co = load i64, ptr %i.cb, align 8, !tbaa !47
  %i.cp = add nsw i64 %i.co, 1
  store i64 %i.cp, ptr %i.cb, align 8, !tbaa !47
  %i.cq = icmp slt i32 %i.cn, 0
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/wcsutil?download=true
begin_hunk_0_@ffwldp:bb.a

bb.bo:                                            ; preds = %bb.bm
  %i.jp = tail call double @acos(double noundef %i.jn) #3 ; 2 uses
  %i.jq = fcmp olt double %.scalar, 0.000000e+00
  br i1 %i.jq, label %bb.bp, label %bb.cg

bb.bp:                                            ; preds = %bb.bo
  %i.jr = fneg double %i.jp
  br label %bb.cg

bb.bq:                                            ; preds = %bb.f
  %i.js = getelementptr inbounds nuw i8, ptr %9, i64 2
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !10
  %.not370 = icmp eq i8 %i.jt, 76
  br i1 %.not370, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.ju = getelementptr inbounds nuw i8, ptr %9, i64 3
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !10
  %.not371 = icmp eq i8 %i.jv, 83
  br i1 %.not371, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  store i32 504, ptr %12, align 4, !tbaa !9
  br label %bb.ch

bb.bt:                                            ; preds = %bb.br
  %i.jw = fadd double %.scalar, %i.z              ; 4 uses
  %i.jx = tail call double @llvm.fabs.f64(double %i.jw)
  %i.jy = fcmp ogt double %i.jx, f0x3FF921FB54442D1C
  br i1 %i.jy, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  store i32 501, ptr %12, align 4, !tbaa !9
  br label %bb.ch

bb.bv:                                            ; preds = %bb.bt
  %i.jz = tail call double @cos(double noundef %i.jw) #3 ; 3 uses
  %i.ka = tail call double @llvm.fabs.f64(double %i.aa)
  %i.kb = fmul double %i.jz, f0x401921FB54442D1C
  %i.kc = fmul double %i.kb, 5.000000e-01
  %i.kd = fcmp ogt double %i.ka, %i.kc
  br i1 %i.kd, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  store i32 501, ptr %12, align 4, !tbaa !9
  br label %bb.ch

bb.bx:                                            ; preds = %bb.bv
  %i.ke = fcmp ogt double %i.jz, 1.000000e-05
  br i1 %i.ke, label %bb.by, label %bb.cg

bb.by:                                            ; preds = %bb.bx
  %i.kf = fdiv double %i.aa, %i.jz
  %i.kg = fadd double %i.x, %i.kf
  br label %bb.cg

bb.bz:                                            ; preds = %bb.f
  %i.kh = getelementptr inbounds nuw i8, ptr %9, i64 2
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !10
  %.not368 = icmp eq i8 %i.ki, 69
  br i1 %.not368, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.kj = getelementptr inbounds nuw i8, ptr %9, i64 3
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !10
  %.not369 = icmp eq i8 %i.kk, 82
  br i1 %.not369, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  store i32 504, ptr %12, align 4, !tbaa !9
  br label %bb.ch

bb.cc:                                            ; preds = %bb.ca
  %i.kl = fmul double %6, %i.m
  %i.km = tail call double @llvm.fmuladd.f64(double %7, double %i.l, double %i.kl) ; 2 uses
  %i.kn = fcmp oeq double %i.km, 0.000000e+00
  %spec.store.select15 = select i1 %i.kn, double 1.000000e+00, double %i.km ; 2 uses
  %i.ko = fmul double %3, 5.000000e-01
  %i.kp = fadd double %i.ko, 4.500000e+01
  %i.kq = fmul double %i.kp, f0x3F91DF46A252DD11  ; 2 uses
  %i.kr = fmul double %spec.store.select15, 5.000000e-01
  %i.ks = tail call double @llvm.fmuladd.f64(double %i.kr, double f0x3F91DF46A252DD11, double %i.kq)
  %i.kt = tail call double @tan(double noundef %i.kq) #3
  %i.ku = tail call double @log(double noundef %i.kt) #3 ; 2 uses
  %i.kv = tail call double @tan(double noundef %i.ks) #3
  %i.kw = tail call double @log(double noundef %i.kv) #3
  %i.kx = tail call double @cos(double noundef %.scalar) #3 ; 2 uses
  %i.ky = fcmp ole double %i.kx, 0.000000e+00
  %spec.store.select17 = select i1 %i.ky, double 1.000000e+00, double %i.kx
  %i.kz = fdiv double %i.aa, %spec.store.select17
  %i.la = fadd double %i.x, %i.kz                 ; 2 uses
  %i.lb = fsub double %i.la, %i.x
  %i.lc = tail call double @llvm.fabs.f64(double %i.lb)
  %i.ld = fcmp ogt double %i.lc, f0x401921FB54442D1C
  br i1 %i.ld, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  store i32 501, ptr %12, align 4, !tbaa !9
  br label %bb.ch

bb.ce:                                            ; preds = %bb.cc
  %i.le = fmul double %spec.store.select15, f0x3F91DF46A252DD11
  %i.lf = fsub double %i.kw, %i.ku
  %i.lg = fdiv double %i.le, %i.lf                ; 3 uses
  %i.lh = fmul double %i.ku, %i.lg
  %i.li = fcmp une double %i.lg, 0.000000e+00
  %i.lj = fadd double %i.z, %i.lh
  %i.lk = fdiv double %i.lj, %i.lg
  %.0 = select i1 %i.li, double %i.lk, double 0.000000e+00
  %i.ll = tail call double @exp(double noundef %.0) #3
  %i.lm = tail call double @atan(double noundef %i.ll) #3
  %i.ln = tail call double @llvm.fmuladd.f64(double %i.lm, double 2.000000e+00, double f0xBFF921FB54442D1C)
  br label %bb.cg

bb.cf:                                            ; preds = %bb.f
  store i32 504, ptr %12, align 4, !tbaa !9
  br label %bb.ch

bb.cg:                                            ; preds = %bb.n, %bb.av, %bb.be, %bb.at, %bb.ce, %bb.by, %bb.bx, %bb.bo, %bb.bp, %bb.w, %bb.ai, %bb.j
  %.0350 = phi double [ %i.an, %bb.j ], [ %i.bx, %bb.n ], [ %i.cj, %bb.w ], [ %i.dg, %bb.ai ], [ %i.fa, %bb.at ], [ %i.ip, %bb.be ], [ %.scalar, %bb.av ], [ %i.jr, %bb.bp ], [ %i.jp, %bb.bo ], [ %i.jw, %bb.by ], [ %i.jw, %bb.bx ], [ %i.ln, %bb.ce ]
  %.1 = phi double [ %i.am, %bb.j ], [ %i.bt, %bb.n ], [ %i.cq, %bb.w ], [ %i.el, %bb.ai ], [ %i.fi, %bb.at ], [ %i.ja, %bb.be ], [ %i.x, %bb.av ], [ %i.jj, %bb.bp ], [ %i.jj, %bb.bo ], [ %i.kg, %bb.by ], [ %i.x, %bb.bx ], [ %i.la, %bb.ce ] ; 3 uses
  %i.lo = fsub double %.1, %i.x
  %i.lp = fcmp ogt double %i.lo, f0x400921FB54442D1C
  %i.lq = fadd double %.1, f0xC01921FB54442D1C
  %.2 = select i1 %i.lp, double %i.lq, double %.1 ; 3 uses
  %i.lr = fsub double %.2, %i.x
  %i.ls = fcmp olt double %i.lr, f0xC00921FB54442D1C
  %i.lt = fadd double %.2, f0x401921FB54442D1C
  %.3 = select i1 %i.ls, double %i.lt, double %.2 ; 3 uses
  %i.lu = fcmp olt double %.3, 0.000000e+00
  %i.lv = fadd double %.3, f0x401921FB54442D1C
  %.4 = select i1 %i.lu, double %i.lv, double %.3
  %i.lw = insertelement <2 x double> poison, double %.4, i64 0
  %i.lx = insertelement <2 x double> %i.lw, double %.0350, i64 1
  %i.ly = fdiv <2 x double> %i.lx, splat (double f0x3F91DF46A252DD11) ; 2 uses
  %i.lz = extractelement <2 x double> %i.ly, i64 0
  store double %i.lz, ptr %10, align 8, !tbaa !12
  %i.ma = extractelement <2 x double> %i.ly, i64 1
  store double %i.ma, ptr %11, align 8, !tbaa !12
  %i.mb = load i32, ptr %12, align 4, !tbaa !9
  br label %bb.ch

bb.ch:                                            ; preds = %bb.a, %bb.cg, %bb.cf, %bb.cd, %bb.cb, %bb.bw, %bb.bu, %bb.bs, %bb.bn, %bb.bl, %bb.bj, %bb.bh, %.thread378, %bb.bd, %bb.bb, %bb.az, %bb.ax, %bb.as, %bb.aq, %bb.am, %.thread, %bb.ah, %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.v, %bb.t, %bb.r, %bb.m, %bb.i, %bb.e
  %.0354 = phi i32 [ 504, %bb.cf ], [ 504, %bb.e ], [ 504, %bb.i ], [ %i.mb, %bb.cg ], [ 504, %bb.m ], [ 501, %bb.r ], [ 501, %bb.t ], [ 501, %bb.v ], [ 501, %bb.z ], [ 501, %bb.ab ], [ 501, %bb.ad ], [ 501, %bb.af ], [ 501, %bb.ah ], [ 504, %.thread ], [ 501, %bb.am ], [ 501, %bb.aq ], [ 501, %bb.as ], [ 501, %bb.ax ], [ 501, %bb.az ], [ 501, %bb.bb ], [ 501, %bb.bd ], [ 504, %.thread378 ], [ 504, %bb.bh ], [ 501, %bb.bj ], [ 501, %bb.bl ], [ 501, %bb.bn ], [ 504, %bb.bs ], [ 501, %bb.bu ], [ 501, %bb.bw ], [ 504, %bb.cb ], [ 501, %bb.cd ], [ %i.a, %bb.a ]
  ret i32 %.0354
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @asin(double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @acos(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @tan(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define dso_local i32 @ffxypx(double noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7, double noundef %8, ptr nofree noundef readonly captures(none) %9, ptr nofree noundef writeonly captures(none) %10, ptr nofree noundef writeonly captures(none) %11, ptr nofree noundef captures(none) %12) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %9, align 1, !tbaa !10
  %.not = icmp eq i8 %i.a, 45
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 504, ptr %12, align 4, !tbaa !9
  br label %bb.bn

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 1 ; 2 uses
  %i.c = fsub double %0, %2                       ; 2 uses
  %i.d = fcmp ogt double %i.c, 1.800000e+02
  %i.e = fadd double %0, -3.600000e+02
  %.0302 = select i1 %i.d, double %i.e, double %0
  %i.f = fcmp olt double %i.c, -1.800000e+02
  %i.g = fadd double %0, 3.600000e+02
  %.1303 = select i1 %i.f, double %i.g, double %.0302 ; 2 uses
  %i.h = fmul double %8, f0x3F91DF46A252DD11      ; 2 uses
  %i.i = tail call double @cos(double noundef %i.h) #3 ; 2 uses
  %i.j = tail call double @sin(double noundef %i.h) #3 ; 4 uses
  %i.k = fcmp oeq double %6, 0.000000e+00
  %i.l = fcmp oeq double %7, 0.000000e+00
  %or.cond = or i1 %i.k, %i.l
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store double 0.000000e+00, ptr %10, align 8, !tbaa !12
  store double 0.000000e+00, ptr %11, align 8, !tbaa !12
  store i32 502, ptr %12, align 4, !tbaa !9
  br label %bb.bn

bb.e:                                             ; preds = %bb.c
  %i.m = insertelement <2 x double> poison, double %1, i64 0
  %i.n = insertelement <2 x double> %i.m, double %.1303, i64 1
  %i.o = insertelement <2 x double> poison, double %3, i64 0
  %i.p = insertelement <2 x double> %i.o, double %2, i64 1
  %i.q = fsub <2 x double> %i.n, %i.p             ; 2 uses
  %i.r = fneg double %i.j                         ; 2 uses
  %i.s = insertelement <2 x double> poison, double %i.j, i64 0
  %i.t = insertelement <2 x double> %i.s, double %i.r, i64 1 ; 2 uses
  %i.u = fmul <2 x double> %i.q, %i.t
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.w = insertelement <2 x double> poison, double %i.i, i64 0
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.y = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.q, <2 x double> %i.x, <2 x double> %i.v)
  %i.z = insertelement <2 x double> poison, double %7, i64 0
  %i.aa = insertelement <2 x double> %i.z, double %6, i64 1 ; 4 uses
  %i.ab = fdiv <2 x double> %i.y, %i.aa
  %i.ac = insertelement <2 x double> poison, double %5, i64 0
  %i.ad = insertelement <2 x double> %i.ac, double %4, i64 1 ; 2 uses
  %i.ae = fadd <2 x double> %i.ad, %i.ab          ; 2 uses
  %i.af = extractelement <2 x double> %i.ae, i64 1
  store double %i.af, ptr %10, align 8, !tbaa !12
  %i.ag = extractelement <2 x double> %i.ae, i64 0
  store double %i.ag, ptr %11, align 8, !tbaa !12
  %i.ah = load i8, ptr %i.b, align 1, !tbaa !10
  %i.ai = icmp eq i8 %i.ah, 67
  br i1 %i.ai, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 2
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !10
  %.not321 = icmp eq i8 %i.ak, 65
  br i1 %.not321, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 3
  %i.am = load i8, ptr %i.al, align 1, !tbaa !10
  %.not322 = icmp eq i8 %i.am, 82
  br i1 %.not322, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store i32 504, ptr %12, align 4, !tbaa !9
  br label %bb.bn

bb.i:                                             ; preds = %bb.g
  %i.an = load i32, ptr %12, align 4, !tbaa !9
  br label %bb.bn

bb.j:                                             ; preds = %bb.e
  %.scalar = fmul double %3, f0x3F91DF46A252DD11  ; 25 uses
  %i.ao = fmul double %.1303, f0x3F91DF46A252DD11 ; 3 uses
  %i.ap = fmul double %2, f0x3F91DF46A252DD11     ; 6 uses
  %i.aq = fmul double %1, f0x3F91DF46A252DD11     ; 9 uses
  %i.ar = tail call double @cos(double noundef %i.aq) #3 ; 12 uses
  %i.as = tail call double @sin(double noundef %i.aq) #3 ; 8 uses
  %i.at = tail call double @cos(double noundef %.scalar) #3 ; 5 uses
  %i.au = tail call double @sin(double noundef %.scalar) #3 ; 6 uses
  %i.av = fsub double %i.ao, %i.ap                ; 11 uses
  %i.aw = tail call double @sin(double noundef %i.av) #3
  %i.ax = fmul double %i.ar, %i.aw                ; 4 uses
  %i.ay = fmul double %i.ar, %i.at
  %i.az = tail call double @cos(double noundef %i.av) #3 ; 2 uses
  %i.ba = fmul double %i.ay, %i.az
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.as, double %i.au, double %i.ba) ; 5 uses
  %i.bc = load i8, ptr %i.b, align 1, !tbaa !10
  switch i8 %i.bc, label %bb.bl [
    i8 84, label %bb.k
    i8 83, label %bb.v
    i8 65, label %bb.ag
    i8 78, label %bb.ar
    i8 71, label %bb.ax
    i8 77, label %bb.bf
  ]

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 2
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !10
  %.not319 = icmp eq i8 %i.be, 65
  br i1 %.not319, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 3
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !10
  %.not320 = icmp eq i8 %i.bg, 78
  br i1 %.not320, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  store i32 504, ptr %12, align 4, !tbaa !9
  br label %bb.bn

bb.n:                                             ; preds = %bb.l
  %i.bh = fcmp ugt double %i.bb, 0.000000e+00
  br i1 %i.bh, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 501, ptr %12, align 4, !tbaa !9
  br label %bb.bn

bb.p:                                             ; preds = %bb.n
  %i.bi = fcmp olt double %i.at, 1.000000e-03
  br i1 %i.bi, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bj = fmul double %i.ar, %i.az
  %i.bk = fmul double %i.as, %i.au
  %i.bl = fdiv double %i.bj, %i.bk                ; 3 uses
  %i.bm = fneg double %i.bl
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.bl, double %i.bl, double 1.000000e+00)
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.at, double %i.bn, double %i.bm)
  %i.bp = fdiv double %i.bo, %i.au
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bq = fdiv double %i.as, %i.bb
  %i.br = fsub double %i.bq, %i.au
  %i.bs = fdiv double %i.br, %i.at
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0 = phi double [ %i.bp, %bb.q ], [ %i.bs, %bb.r ] ; 4 uses
  %i.bt = tail call double @sin(double noundef %i.ap) #3
  %i.bu = tail call double @llvm.fabs.f64(double %i.bt)
  %i.bv = fcmp olt double %i.bu, 3.000000e-01
  %i.bw = fneg double %i.at                       ; 2 uses
  br i1 %i.bv, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bx = tail call double @sin(double noundef %i.ao) #3
  %i.by = fmul double %i.ar, %i.bx
  %i.bz = fdiv double %i.by, %i.bb
  %i.ca = tail call double @sin(double noundef %i.ap) #3 ; 2 uses
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.bw, double %i.ca, double %i.bz)
  %i.cc = fmul double %.0, %i.ca
  %i.cd = tail call double @llvm.fmuladd.f64(double %i.cc, double %i.au, double %i.cb)
  %i.ce = tail call double @cos(double noundef %i.ap) #3
  %i.cf = fdiv double %i.cd, %i.ce
  br label %bb.bm

bb.u:                                             ; preds = %bb.s
  %i.cg = tail call double @cos(double noundef %i.ao) #3
  %i.ch = fmul double %i.ar, %i.cg
  %i.ci = fdiv double %i.ch, %i.bb
  %i.cj = tail call double @cos(double noundef %i.ap) #3 ; 2 uses
  %i.ck = tail call double @llvm.fmuladd.f64(double %i.bw, double %i.cj, double %i.ci)
  %i.cl = fmul double %.0, %i.cj
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.cl, double %i.au, double %i.ck)
  %i.cn = tail call double @sin(double noundef %i.ap) #3
  %i.co = fneg double %i.cn
  %i.cp = fdiv double %i.cm, %i.co
  br label %bb.bm

bb.v:                                             ; preds = %bb.j
  %i.cq = getelementptr inbounds nuw i8, ptr %9, i64 2
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !10
  switch i8 %i.cr, label %.thread [
    i8 73, label %bb.w
    i8 84, label %bb.aa
  ]

bb.w:                                             ; preds = %bb.v
  %i.cs = getelementptr inbounds nuw i8, ptr %9, i64 3
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !10
  %i.cu = icmp eq i8 %i.ct, 78
  br i1 %i.cu, label %bb.x, label %.thread

bb.x:                                             ; preds = %bb.w
  %i.cv = fcmp olt double %i.bb, 0.000000e+00
  br i1 %i.cv, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 501, ptr %12, align 4, !tbaa !9
  br label %bb.bn

bb.z:                                             ; preds = %bb.x
  %i.cw = tail call double @cos(double noundef %.scalar) #3
  %i.cx = tail call double @sin(double noundef %.scalar) #3
  %i.cy = fmul double %i.ar, %i.cx
  %i.cz = tail call double @cos(double noundef %i.av) #3
  %i.da = fneg double %i.cz
  %i.db = fmul double %i.cy, %i.da
  %i.dc = tail call double @llvm.fmuladd.f64(double %i.as, double %i.cw, double %i.db)
  br label %bb.bm

bb.aa:                                            ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %9, i64 3
end_hunk_0

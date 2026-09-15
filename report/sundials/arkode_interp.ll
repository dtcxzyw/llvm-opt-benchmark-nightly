Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/arkode_interp?download=true
inline.NumInlined: 17
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@arkInterpSetDegree_Hermite:bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -22, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -20, 1) i32 @arkInterpInit_Hermite(ptr noundef %0, ptr noundef %1, double noundef %2) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !20     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store double %2, ptr %i.b, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store double %2, ptr %i.c, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store double 0.000000e+00, ptr %i.d, align 8, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !42
  %i.j = tail call i32 @arkAllocVec(ptr noundef %0, ptr noundef %i.i, ptr noundef nonnull %i.e) #14
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %arkInterpFree.exit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load ptr, ptr %1, align 8, !tbaa !20
  br label %bb.c

arkInterpFree.exit:                               ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !14
  tail call void %i.n(ptr noundef nonnull %0, ptr noundef nonnull %1) #14, !inline_history !43
  br label %bb.k

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %i.o = phi ptr [ %.pre, %._crit_edge ], [ %i.a, %bb.a ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !39
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !42
  %i.u = tail call i32 @arkAllocVec(ptr noundef %0, ptr noundef %i.t, ptr noundef nonnull %i.p) #14
  %.not32 = icmp eq i32 %i.u, 0
  br i1 %.not32, label %arkInterpFree.exit35, label %._crit_edge38

._crit_edge38:                                    ; preds = %bb.d
  %.pre39 = load ptr, ptr %1, align 8, !tbaa !20
  br label %bb.e

arkInterpFree.exit35:                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !11
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !14
  tail call void %i.y(ptr noundef nonnull %0, ptr noundef nonnull %1) #14, !inline_history !43
  br label %bb.k

bb.e:                                             ; preds = %._crit_edge38, %bb.c
  %i.z = phi ptr [ %.pre39, %._crit_edge38 ], [ %i.o, %bb.c ] ; 3 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !24  ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, 3
  br i1 %i.ab, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !40
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !42
  %i.ah = tail call i32 @arkAllocVec(ptr noundef %0, ptr noundef %i.ag, ptr noundef nonnull %i.ac) #14
  %.not33 = icmp eq i32 %i.ah, 0
  br i1 %.not33, label %arkInterpFree.exit36, label %._crit_edge40

._crit_edge40:                                    ; preds = %bb.g
  %.pre41 = load ptr, ptr %1, align 8, !tbaa !20  ; 2 uses
  %.pre42 = load i32, ptr %.pre41, align 8, !tbaa !24
  br label %bb.h

arkInterpFree.exit36:                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !11
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !14
  tail call void %i.al(ptr noundef nonnull %0, ptr noundef nonnull %1) #14, !inline_history !43
  br label %bb.k

bb.h:                                             ; preds = %._crit_edge40, %bb.f
  %i.am = phi i32 [ %.pre42, %._crit_edge40 ], [ %i.aa, %bb.f ]
  %i.an = phi ptr [ %.pre41, %._crit_edge40 ], [ %i.z, %bb.f ]
  %i.ao = icmp sgt i32 %i.am, 4
  br i1 %i.ao, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !41
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !42
  %i.au = tail call i32 @arkAllocVec(ptr noundef %0, ptr noundef %i.at, ptr noundef nonnull %i.ap) #14
  %.not34 = icmp eq i32 %i.au, 0
  br i1 %.not34, label %arkInterpFree.exit37, label %.thread

arkInterpFree.exit37:                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !11
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !14
  tail call void %i.ay(ptr noundef nonnull %0, ptr noundef nonnull %1) #14, !inline_history !43
  br label %bb.k

.thread:                                          ; preds = %bb.e, %bb.j, %bb.i, %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1004
  store i32 1, ptr %i.az, align 4, !tbaa !64
  br label %bb.k

bb.k:                                             ; preds = %.thread, %arkInterpFree.exit37, %arkInterpFree.exit36, %arkInterpFree.exit35, %arkInterpFree.exit
  %.0 = phi i32 [ 0, %.thread ], [ -20, %arkInterpFree.exit37 ], [ -20, %arkInterpFree.exit36 ], [ -20, %arkInterpFree.exit35 ], [ -20, %arkInterpFree.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -8, 1) i32 @arkInterpUpdate_Hermite(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, double noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !44
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.f = load double, ptr %i.e, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !47
  %i.k = tail call i32 %i.d(ptr noundef nonnull %0, double noundef %i.f, ptr noundef %i.h, ptr noundef %i.j, i32 noundef 0) #14
  %.not18 = icmp eq i32 %i.k, 0
  br i1 %.not18, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.a, align 8, !tbaa !44
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !42
  %i.n = load ptr, ptr %1, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !39
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.m, ptr noundef %i.p) #14
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !47
  %i.s = load ptr, ptr %1, align 8, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !38
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.r, ptr noundef %i.u) #14
  %i.v = load ptr, ptr %1, align 8, !tbaa !20     ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48 ; 2 uses
  %i.x = load double, ptr %i.w, align 8, !tbaa !36
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store double %i.x, ptr %i.y, align 8, !tbaa !35
  store double %2, ptr %i.w, align 8, !tbaa !36
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.aa = load double, ptr %i.z, align 8, !tbaa !48
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  store double %i.aa, ptr %i.ab, align 8, !tbaa !37
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ -8, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -28, 1) i32 @arkInterpEvaluate_Hermite(ptr noundef %0, ptr noundef %1, double noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) #0 {
bb.a:
  %i.a = alloca [6 x double], align 16            ; 58 uses
  %i.b = alloca [6 x ptr], align 16               ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.c = load ptr, ptr %1, align 8, !tbaa !20     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load double, ptr %i.d, align 8, !tbaa !37 ; 23 uses
  %i.f = insertelement <2 x double> poison, double %2, i64 0 ; 11 uses
  %i.g = insertelement <2 x double> %i.f, double %i.e, i64 1 ; 2 uses
  %i.h = fmul <2 x double> %i.g, %i.g             ; 20 uses
  %i.i = extractelement <2 x double> %i.h, i64 0  ; 19 uses
  %i.j = fmul double %2, %i.i                     ; 23 uses
  %i.k = fmul double %2, %i.j                     ; 9 uses
  %i.l = fmul double %2, %i.k                     ; 2 uses
  %6 = extractelement <2 x double> %i.h, i64 1    ; 4 uses
  %i.m = fmul double %i.e, %6                     ; 8 uses
  %i.n = fmul double %i.e, %i.m                   ; 4 uses
  %i.o = fmul double %i.e, %i.n
  %i.p = tail call i32 @llvm.smax.i32(i32 %4, i32 0)
  %i.q = load i32, ptr %i.c, align 8, !tbaa !24
  %. = tail call i32 @llvm.smin.i32(i32 %i.p, i32 %i.q) ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !44
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !45
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.w = load double, ptr %i.v, align 8, !tbaa !46
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !42
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !47
  %i.ab = tail call i32 %i.u(ptr noundef nonnull %0, double noundef %i.w, ptr noundef %i.y, ptr noundef %i.aa, i32 noundef 1) #14
  %.not339 = icmp eq i32 %i.ab, 0
  br i1 %.not339, label %bb.c, label %bb.ap

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.r, align 8, !tbaa !44
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.ac = icmp slt i32 %3, 0
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 482, ptr noundef nonnull @__func__.arkInterpEvaluate_Hermite, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.6) #14
  br label %bb.ap

bb.f:                                             ; preds = %bb.d
  %i.ad = icmp sgt i32 %3, %.
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %5) #14
  br label %bb.ap

bb.h:                                             ; preds = %bb.f
  switch i32 %., label %bb.an [
    i32 0, label %bb.i
    i32 1, label %bb.j
    i32 2, label %bb.k
    i32 3, label %bb.p
    i32 4, label %arkInterpEvaluate.exit
    i32 5, label %arkInterpEvaluate.exit351
  ]

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr %1, align 8, !tbaa !20
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !39
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !42
  tail call void @N_VLinearSum(double noundef 5.000000e-01, ptr noundef %i.ag, double noundef 5.000000e-01, ptr noundef %i.ai, ptr noundef %5) #14
  br label %bb.ao

bb.j:                                             ; preds = %bb.h
  %i.aj = icmp eq i32 %3, 0                       ; 2 uses
  %i.ak = fneg double %2
  %i.al = fadd double %2, 1.000000e+00
  %i.am = insertelement <2 x double> poison, double %i.e, i64 0
  %i.an = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ao = fdiv <2 x double> <double -1.000000e+00, double 1.000000e+00>, %i.an ; 2 uses
  %i.ap = extractelement <2 x double> %i.ao, i64 0
  %.0333 = select i1 %i.aj, double %i.ak, double %i.ap
  %i.aq = extractelement <2 x double> %i.ao, i64 1
  %.0 = select i1 %i.aj, double %i.al, double %i.aq
  %i.ar = load ptr, ptr %1, align 8, !tbaa !20
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !39
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !42
  tail call void @N_VLinearSum(double noundef %.0333, ptr noundef %i.at, double noundef %.0, ptr noundef %i.av, ptr noundef %5) #14
  br label %bb.ao

bb.k:                                             ; preds = %bb.h
  switch i32 %3, label %bb.n [
    i32 0, label %bb.l
    i32 1, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  store double %i.i, ptr %i.a, align 16, !tbaa !49
  %i.aw = fsub double 1.000000e+00, %i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double %i.aw, ptr %i.ax, align 8, !tbaa !49
  %i.ay = fadd double %2, %i.i
  %i.az = fmul double %i.ay, %i.e
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %7 = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ba = fmul <2 x double> %7, <double 2.000000e+00, double -2.000000e+00>
  %i.bb = insertelement <2 x double> poison, double %i.e, i64 0
  %i.bc = shufflevector <2 x double> %i.bb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bd = fdiv <2 x double> %i.ba, %i.bc
  store <2 x double> %i.bd, ptr %i.a, align 16, !tbaa !49
  %i.be = tail call double @llvm.fmuladd.f64(double %2, double 2.000000e+00, double 1.000000e+00)
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.bf = insertelement <2 x double> poison, double %i.e, i64 0
  %i.bg = shufflevector <2 x double> %i.bf, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bh = fdiv <2 x double> <double 2.000000e+00, double -2.000000e+00>, %i.bg ; 2 uses
  %i.bi = fdiv <2 x double> %i.bh, %i.bg
  store <2 x double> %i.bi, ptr %i.a, align 16, !tbaa !49
  %i.bj = extractelement <2 x double> %i.bh, i64 0
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.l
  %.sink = phi double [ %i.be, %bb.m ], [ %i.bj, %bb.n ], [ %i.az, %bb.l ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store double %.sink, ptr %i.bk, align 16, !tbaa !49
  %i.bl = load ptr, ptr %1, align 8, !tbaa !20
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !39
  store ptr %i.bn, ptr %i.b, align 16, !tbaa !50
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bq = load <2 x ptr>, ptr %i.bo, align 8, !tbaa !50
  store <2 x ptr> %i.bq, ptr %i.bp, align 8, !tbaa !50
  %i.br = call i32 @N_VLinearCombination(i32 noundef 3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %5) #14
  %.not349 = icmp eq i32 %i.br, 0
  br i1 %.not349, label %bb.ao, label %bb.ap

bb.p:                                             ; preds = %bb.h
  switch i32 %3, label %bb.t [
    i32 0, label %bb.q
    i32 1, label %bb.r
    i32 2, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  %i.bs = fmul double %i.j, 2.000000e+00
  %i.bt = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bu = insertelement <2 x double> <double 1.000000e+00, double poison>, double %2, i64 1
  %i.bv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bt, <2 x double> <double -3.000000e+00, double 2.000000e+00>, <2 x double> %i.bu) ; 2 uses
  %i.bw = insertelement <2 x double> %i.h, double %i.j, i64 1
  %i.bx = insertelement <2 x double> poison, double %i.bs, i64 0
  %i.by = shufflevector <2 x double> %i.bx, <2 x double> %i.bv, <2 x i32> <i32 0, i32 2>
  %i.bz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bw, <2 x double> <double 3.000000e+00, double -2.000000e+00>, <2 x double> %i.by)
  store <2 x double> %i.bz, ptr %i.a, align 16, !tbaa !49
  %i.ca = fadd double %i.i, %i.j
  %i.cb = fmul double %i.ca, %i.e
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store double %i.cb, ptr %i.cc, align 16, !tbaa !49
  %i.cd = extractelement <2 x double> %i.bv, i64 1
  %i.ce = fadd double %i.cd, %i.j
  %i.cf = fmul double %i.ce, %i.e
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.cg = fadd double %2, %i.i
  %i.ch = insertelement <2 x double> poison, double %i.cg, i64 0
  %i.ci = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cj = fmul <2 x double> %i.ci, <double 6.000000e+00, double -6.000000e+00>
  %i.ck = insertelement <2 x double> poison, double %i.e, i64 0
  %i.cl = shufflevector <2 x double> %i.ck, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cm = fdiv <2 x double> %i.cj, %i.cl
  store <2 x double> %i.cm, ptr %i.a, align 16, !tbaa !49
  %i.cn = fmul double %i.i, 3.000000e+00
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %8 = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cp = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.cn, i64 0
  %i.cq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %8, <2 x double> <double 2.000000e+00, double 4.000000e+00>, <2 x double> %i.cp) ; 2 uses
  %i.cr = extractelement <2 x double> %i.cq, i64 0
  store double %i.cr, ptr %i.co, align 16, !tbaa !49
  %i.cs = extractelement <2 x double> %i.cq, i64 1
  %i.ct = tail call double @llvm.fmuladd.f64(double %i.i, double 3.000000e+00, double %i.cs)
  br label %bb.u

bb.s:                                             ; preds = %bb.p
  %i.cu = tail call double @llvm.fmuladd.f64(double %2, double 2.000000e+00, double 1.000000e+00)
  %i.cv = insertelement <2 x double> poison, double %i.cu, i64 0
  %i.cw = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cx = fmul <2 x double> %i.cw, <double 6.000000e+00, double -6.000000e+00>
  %9 = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %10 = fdiv <2 x double> %i.cx, %9
  store <2 x double> %10, ptr %i.a, align 16, !tbaa !49
  %11 = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %11, <2 x double> splat (double 6.000000e+00), <2 x double> <double 2.000000e+00, double 4.000000e+00>)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.da = insertelement <2 x double> poison, double %i.e, i64 0
  %i.db = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dc = fdiv <2 x double> %i.cy, %i.db          ; 2 uses
  %i.dd = extractelement <2 x double> %i.dc, i64 0
  store double %i.dd, ptr %i.cz, align 16, !tbaa !49
  %i.de = extractelement <2 x double> %i.dc, i64 1
  br label %bb.u

bb.t:                                             ; preds = %bb.p
  %i.df = insertelement <2 x double> poison, double %i.m, i64 0
  %i.dg = shufflevector <2 x double> %i.df, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dh = fdiv <2 x double> <double 1.200000e+01, double -1.200000e+01>, %i.dg
  store <2 x double> %i.dh, ptr %i.a, align 16, !tbaa !49
  %i.di = fdiv double 6.000000e+00, %6            ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store double %i.di, ptr %i.dj, align 16, !tbaa !49
  br label %bb.u

bb.u:                                             ; preds = %bb.r, %bb.t, %bb.s, %bb.q
  %.sink356 = phi double [ %i.ct, %bb.r ], [ %i.di, %bb.t ], [ %i.de, %bb.s ], [ %i.cf, %bb.q ]
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store double %.sink356, ptr %i.dk, align 8, !tbaa !49
  %i.dl = load ptr, ptr %1, align 8, !tbaa !20    ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !39
  store ptr %i.dn, ptr %i.b, align 16, !tbaa !50
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !42
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !50
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !38
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.ds, ptr %i.dt, align 16, !tbaa !50
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !47
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !50
  %i.dx = call i32 @N_VLinearCombination(i32 noundef 4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %5) #14
  %.not348 = icmp eq i32 %i.dx, 0
  br i1 %.not348, label %bb.ao, label %bb.ap

arkInterpEvaluate.exit:                           ; preds = %bb.h
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !11
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 48
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !19
  %i.ec = tail call i32 %i.eb(ptr noundef nonnull %0, ptr noundef nonnull %1, double noundef f0xBFD5555555555555, i32 noundef 0, i32 noundef 3, ptr noundef %5) #14, !inline_history !65
  %.not345 = icmp eq i32 %i.ec, 0
  br i1 %.not345, label %bb.v, label %bb.ap

bb.v:                                             ; preds = %arkInterpEvaluate.exit
  %i.ed = load ptr, ptr %1, align 8, !tbaa !20    ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 48
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !36
  %i.eg = fdiv double %i.e, 3.000000e+00
  %i.eh = fsub double %i.ef, %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !45
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !40
  %i.em = tail call i32 %i.ej(ptr noundef nonnull %0, double noundef %i.eh, ptr noundef %5, ptr noundef %i.el, i32 noundef 2) #14
  %.not346 = icmp eq i32 %i.em, 0
  br i1 %.not346, label %bb.w, label %bb.ap

bb.w:                                             ; preds = %bb.v
  switch i32 %3, label %bb.ab [
    i32 0, label %bb.x
    i32 1, label %bb.y
    i32 2, label %bb.z
    i32 3, label %bb.aa
  ]

bb.x:                                             ; preds = %bb.w
  %i.en = fmul double %i.j, -1.600000e+01
  %i.eo = insertelement <2 x double> %i.h, double %i.j, i64 1
  %i.ep = insertelement <2 x double> poison, double %i.en, i64 0
  %i.eq = insertelement <2 x double> poison, double %i.k, i64 0 ; 2 uses
  %i.er = shufflevector <2 x double> %i.eq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.es = fmul double %i.e, 2.500000e-01
  %i.et = fmul double %i.j, -1.400000e+01
  %i.eu = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ev = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.et, i64 1
  %i.ew = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eu, <2 x double> <double 6.000000e+00, double -5.000000e+00>, <2 x double> %i.ev) ; 2 uses
  %i.ex = shufflevector <2 x double> %i.ep, <2 x double> %i.ew, <2 x i32> <i32 0, i32 2>
  %i.ey = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eo, <2 x double> <double -6.000000e+00, double 1.600000e+01>, <2 x double> %i.ex)
  %i.ez = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.er, <2 x double> <double -9.000000e+00, double 9.000000e+00>, <2 x double> %i.ey)
  store <2 x double> %i.ez, ptr %i.a, align 16, !tbaa !49
  %i.fa = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.fb = shufflevector <2 x double> %i.eq, <2 x double> %i.h, <2 x i32> <i32 0, i32 2>
  %i.fc = shufflevector <2 x double> %i.ew, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.fd = insertelement <2 x double> %i.fc, double %2, i64 1
  %i.fe = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fb, <2 x double> <double -9.000000e+00, double 2.000000e+00>, <2 x double> %i.fd) ; 2 uses
  %i.ff = extractelement <2 x double> %i.fe, i64 0
  %i.fg = fmul double %i.ff, %i.es
  store double %i.fg, ptr %i.fa, align 16, !tbaa !49
  %i.fh = extractelement <2 x double> %i.fe, i64 1
  %i.fi = fadd double %i.fh, %i.j
  %i.fj = fmul double %i.fi, %i.e
  %i.fk = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store double %i.fj, ptr %i.fk, align 8, !tbaa !49
  %i.fl = fmul double %i.e, 2.700000e+01
  %i.fm = fmul double %i.fl, 2.500000e-01
  %i.fn = fneg double %i.k
  %i.fo = tail call double @llvm.fmuladd.f64(double %i.j, double -2.000000e+00, double %i.fn)
  %i.fp = fsub double %i.fo, %i.i
  %i.fq = fmul double %i.fp, %i.fm
  br label %bb.ac

bb.y:                                             ; preds = %bb.w
  %i.fr = fmul double %i.i, 4.800000e+01          ; 2 uses
  %i.fs = fneg double %i.fr
  %12 = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ft = insertelement <2 x double> poison, double %i.fs, i64 0
  %i.fu = insertelement <2 x double> %i.ft, double %i.fr, i64 1
  %i.fv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %12, <2 x double> <double -1.200000e+01, double 1.200000e+01>, <2 x double> %i.fu)
  %i.fw = insertelement <2 x double> poison, double %i.j, i64 0
  %i.fx = shufflevector <2 x double> %i.fw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fx, <2 x double> <double -3.600000e+01, double 3.600000e+01>, <2 x double> %i.fv)
  %i.fz = insertelement <2 x double> poison, double %i.e, i64 0
  %i.ga = shufflevector <2 x double> %i.fz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gb = fdiv <2 x double> %i.fy, %i.ga
  store <2 x double> %i.gb, ptr %i.a, align 16, !tbaa !49
  %i.gc = fmul double %i.i, -2.100000e+01
  %i.gd = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ge = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.gc, i64 0
  %i.gf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %12, <2 x double> <double -5.000000e+00, double 4.000000e+00>, <2 x double> %i.ge) ; 2 uses
  %i.gg = extractelement <2 x double> %i.gf, i64 0
  %i.gh = tail call double @llvm.fmuladd.f64(double %i.j, double -1.800000e+01, double %i.gg)
  %i.gi = fmul double %i.gh, 5.000000e-01
  store double %i.gi, ptr %i.gd, align 16, !tbaa !49
  %i.gj = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.gk = fmul double %i.i, 3.000000e+00
  %i.gl = insertelement <2 x double> %i.h, double %i.j, i64 1
  %i.gm = shufflevector <2 x double> %i.gf, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.gn = insertelement <2 x double> %i.gm, double %i.gk, i64 1
  %i.go = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gl, <2 x double> <double 3.000000e+00, double 2.000000e+00>, <2 x double> %i.gn) ; 2 uses
  %i.gp = extractelement <2 x double> %i.go, i64 0
  store double %i.gp, ptr %i.gj, align 8, !tbaa !49
  %i.gq = extractelement <2 x double> %i.go, i64 1
  %i.gr = fadd double %2, %i.gq
  %i.gs = fmul double %i.gr, -1.350000e+01
  br label %bb.ac

bb.z:                                             ; preds = %bb.w
  %13 = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %13, <2 x double> <double -9.600000e+01, double 9.600000e+01>, <2 x double> <double -1.200000e+01, double 1.200000e+01>)
  %i.gu = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gu, <2 x double> <double -1.080000e+02, double 1.080000e+02>, <2 x double> %i.gt)
  %14 = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.gw = fdiv <2 x double> %i.gv, %14
  store <2 x double> %i.gw, ptr %i.a, align 16, !tbaa !49
  %i.gx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.gy = insertelement <2 x double> <double poison, double -0.000000e+00>, double %2, i64 0
  %i.gz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gy, <2 x double> <double -2.100000e+01, double 0.000000e+00>, <2 x double> <double -2.500000e+00, double 4.000000e+00>)
  %15 = insertelement <2 x double> %i.h, double %2, i64 1
  %i.ha = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %15, <2 x double> <double -2.700000e+01, double 6.000000e+00>, <2 x double> %i.gz)
  %i.hb = insertelement <2 x double> poison, double %i.e, i64 0
  %i.hc = shufflevector <2 x double> %i.hb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hd = fdiv <2 x double> %i.ha, %i.hc
  store <2 x double> %i.hd, ptr %i.gx, align 16, !tbaa !49
  %i.he = tail call double @llvm.fmuladd.f64(double %2, double -8.100000e+01, double -1.350000e+01)
  %i.hf = tail call double @llvm.fmuladd.f64(double %i.i, double -8.100000e+01, double %i.he)
  %i.hg = fdiv double %i.hf, %i.e
  br label %bb.ac

bb.aa:                                            ; preds = %bb.w
  %16 = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %16, <2 x double> <double -2.160000e+02, double 2.160000e+02>, <2 x double> <double -9.600000e+01, double 9.600000e+01>)
  %i.hi = insertelement <2 x double> poison, double %i.m, i64 0
  %i.hj = shufflevector <2 x double> %i.hi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hk = fdiv <2 x double> %i.hh, %i.hj
  store <2 x double> %i.hk, ptr %i.a, align 16, !tbaa !49
  %i.hl = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.hm = insertelement <2 x double> <double poison, double -0.000000e+00>, double %2, i64 0
  %i.hn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hm, <2 x double> <double -5.400000e+01, double 0.000000e+00>, <2 x double> <double -2.100000e+01, double 6.000000e+00>)
  %17 = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ho = fdiv <2 x double> %i.hn, %17
  store <2 x double> %i.ho, ptr %i.hl, align 16, !tbaa !49
  %i.hp = tail call double @llvm.fmuladd.f64(double %2, double -1.620000e+02, double -8.100000e+01)
  %i.hq = fdiv double %i.hp, %6
  br label %bb.ac

bb.ab:                                            ; preds = %bb.w
  %i.hr = insertelement <2 x double> poison, double %i.n, i64 0
  %i.hs = shufflevector <2 x double> %i.hr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ht = fdiv <2 x double> <double -2.160000e+02, double 2.160000e+02>, %i.hs
  store <2 x double> %i.ht, ptr %i.a, align 16, !tbaa !49
  %i.hu = insertelement <2 x double> poison, double %i.m, i64 0
  %i.hv = shufflevector <2 x double> %i.hu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hw = fdiv <2 x double> <double -5.400000e+01, double -1.620000e+02>, %i.hv ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.hy = extractelement <2 x double> %i.hw, i64 0
  store double %i.hy, ptr %i.hx, align 16, !tbaa !49
  %i.hz = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store double 0.000000e+00, ptr %i.hz, align 8, !tbaa !49
  %i.ia = extractelement <2 x double> %i.hw, i64 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.y, %bb.aa, %bb.ab, %bb.z, %bb.x
  %.sink358 = phi double [ %i.gs, %bb.y ], [ %i.hq, %bb.aa ], [ %i.ia, %bb.ab ], [ %i.hg, %bb.z ], [ %i.fq, %bb.x ]
  %i.ib = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store double %.sink358, ptr %i.ib, align 16, !tbaa !49
  %i.ic = load ptr, ptr %1, align 8, !tbaa !20    ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !39
  store ptr %i.ie, ptr %i.b, align 16, !tbaa !50
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !42
  %i.ih = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ig, ptr %i.ih, align 8, !tbaa !50
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !38
  %i.ik = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.ij, ptr %i.ik, align 16, !tbaa !50
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !47
  %i.in = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.im, ptr %i.in, align 8, !tbaa !50
  %i.io = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !40
  %i.iq = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.ip, ptr %i.iq, align 16, !tbaa !50
  %i.ir = call i32 @N_VLinearCombination(i32 noundef 5, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %5) #14
  %.not347 = icmp eq i32 %i.ir, 0
  br i1 %.not347, label %bb.ao, label %bb.ap

arkInterpEvaluate.exit351:                        ; preds = %bb.h
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !11
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 48
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !19
  %i.iw = tail call i32 %i.iv(ptr noundef nonnull %0, ptr noundef nonnull %1, double noundef f0xBFD5555555555555, i32 noundef 0, i32 noundef 4, ptr noundef %5) #14, !inline_history !65
  %.not340 = icmp eq i32 %i.iw, 0
  br i1 %.not340, label %bb.ad, label %bb.ap

bb.ad:                                            ; preds = %arkInterpEvaluate.exit351
  %i.ix = load ptr, ptr %1, align 8, !tbaa !20    ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 48
  %i.iz = load double, ptr %i.iy, align 8, !tbaa !36
  %i.ja = fdiv double %i.e, 3.000000e+00
  %i.jb = fsub double %i.iz, %i.ja
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !45
  %i.je = getelementptr inbounds nuw i8, ptr %i.ix, i64 24
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !40
  %i.jg = tail call i32 %i.jd(ptr noundef nonnull %0, double noundef %i.jb, ptr noundef %5, ptr noundef %i.jf, i32 noundef 2) #14
  %.not341 = icmp eq i32 %i.jg, 0
  br i1 %.not341, label %arkInterpEvaluate.exit353, label %bb.ap

arkInterpEvaluate.exit353:                        ; preds = %bb.ad
  %i.jh = load ptr, ptr %i.is, align 8, !tbaa !11
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 48
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !19
  %i.jk = tail call i32 %i.jj(ptr noundef nonnull %0, ptr noundef nonnull %1, double noundef f0xBFE5555555555555, i32 noundef 0, i32 noundef 4, ptr noundef %5) #14, !inline_history !65
  %.not342 = icmp eq i32 %i.jk, 0
  br i1 %.not342, label %bb.ae, label %bb.ap

bb.ae:                                            ; preds = %arkInterpEvaluate.exit353
  %i.jl = load ptr, ptr %1, align 8, !tbaa !20    ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 48
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !36
  %i.jo = fmul double %i.e, 2.000000e+00          ; 4 uses
  %i.jp = fdiv double %i.jo, 3.000000e+00
  %i.jq = fsub double %i.jn, %i.jp
  %i.jr = load ptr, ptr %i.jc, align 8, !tbaa !45
  %i.js = getelementptr inbounds nuw i8, ptr %i.jl, i64 32
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !41
  %i.ju = tail call i32 %i.jr(ptr noundef nonnull %0, double noundef %i.jq, ptr noundef %5, ptr noundef %i.jt, i32 noundef 2) #14
  %.not343 = icmp eq i32 %i.ju, 0
  br i1 %.not343, label %bb.af, label %bb.ap

bb.af:                                            ; preds = %bb.ae
  switch i32 %3, label %bb.al [
    i32 0, label %bb.ag
    i32 1, label %bb.ah
    i32 2, label %bb.ai
    i32 3, label %bb.aj
    i32 4, label %bb.ak
  ]

bb.ag:                                            ; preds = %bb.af
  %i.jv = insertelement <2 x double> poison, double %i.k, i64 0
  %i.jw = shufflevector <2 x double> %i.jv, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jx = fmul <2 x double> %i.jw, <double 1.350000e+02, double 6.300000e+01>
  %i.jy = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.jz = fmul double %i.e, 2.500000e-01          ; 3 uses
  %i.ka = insertelement <2 x double> poison, double %i.l, i64 0
  %i.kb = shufflevector <2 x double> %i.ka, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kb, <2 x double> <double 5.400000e+01, double 2.700000e+01>, <2 x double> %i.jx)
  %i.kd = insertelement <2 x double> poison, double %i.j, i64 0 ; 2 uses
  %i.ke = shufflevector <2 x double> %i.kd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ke, <2 x double> <double 1.100000e+02, double 4.900000e+01>, <2 x double> %i.kc)
  %i.kg = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kg, <2 x double> <double 3.000000e+01, double 1.300000e+01>, <2 x double> %i.kf) ; 3 uses
  %i.ki = extractelement <2 x double> %i.kh, i64 0
  store double %i.ki, ptr %i.a, align 16, !tbaa !49
  %i.kj = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.jz, i64 1 ; 2 uses
  %i.kk = fsub <2 x double> %i.kj, %i.kh
  %i.kl = fmul <2 x double> %i.kj, %i.kh
  %i.km = shufflevector <2 x double> %i.kk, <2 x double> %i.kl, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.km, ptr %i.jy, align 8, !tbaa !49
  %i.kn = fmul <2 x double> %i.jw, <double 7.200000e+01, double 2.160000e+02>
  %i.ko = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.kp = fmul double %i.k, 1.890000e+02
  %i.kq = insertelement <2 x double> %i.kd, double %i.l, i64 1
  %i.kr = insertelement <2 x double> %i.h, double %i.j, i64 1
  %i.ks = insertelement <2 x double> %i.kg, double %2, i64 0
  %i.kt = insertelement <2 x double> poison, double %i.jz, i64 0
  %i.ku = shufflevector <2 x double> %i.kt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kb, <2 x double> <double 2.700000e+01, double 8.100000e+01>, <2 x double> %i.kn) ; 2 uses
  %i.kw = insertelement <2 x double> %i.kv, double %i.kp, i64 1
  %i.kx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kq, <2 x double> <double 6.700000e+01, double 8.100000e+01>, <2 x double> %i.kw)
  %i.ky = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kr, <2 x double> <double 2.600000e+01, double 1.350000e+02>, <2 x double> %i.kx)
  %i.kz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ks, <2 x double> <double 4.000000e+00, double 2.700000e+01>, <2 x double> %i.ky)
  %i.la = fmul <2 x double> %i.kz, %i.ku
  store <2 x double> %i.la, ptr %i.ko, align 8, !tbaa !49
  %i.lb = extractelement <2 x double> %i.kv, i64 1
  %i.lc = tail call double @llvm.fmuladd.f64(double %i.j, double 1.890000e+02, double %i.lb)
  %i.ld = tail call double @llvm.fmuladd.f64(double %i.i, double 5.400000e+01, double %i.lc)
  %i.le = fmul double %i.ld, %i.jz
  br label %bb.am

bb.ah:                                            ; preds = %bb.af
  %i.lf = fmul double %i.j, 5.400000e+02
  %i.lg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.lh = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.li = fmul double %i.j, 2.520000e+02
  %i.lj = tail call double @llvm.fmuladd.f64(double %i.k, double 2.700000e+02, double %i.lf)
  %i.lk = fmul double %i.j, 2.880000e+02
  %i.ll = tail call double @llvm.fmuladd.f64(double %i.i, double 3.300000e+02, double %i.lj)
  %i.lm = insertelement <2 x double> %i.f, double %i.k, i64 1 ; 2 uses
  %i.ln = insertelement <2 x double> poison, double %i.ll, i64 0
  %i.lo = insertelement <2 x double> %i.ln, double %i.lk, i64 1
  %i.lp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lm, <2 x double> <double 6.000000e+01, double 1.350000e+02>, <2 x double> %i.lo) ; 2 uses
  %i.lq = extractelement <2 x double> %i.lp, i64 0
  %i.lr = fdiv double %i.lq, %i.e                 ; 2 uses
  store double %i.lr, ptr %i.a, align 16, !tbaa !49
  %i.ls = fneg double %i.lr
  store double %i.ls, ptr %i.lg, align 8, !tbaa !49
  %i.lt = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.lu = insertelement <2 x double> %i.lt, double %i.k, i64 0
  %i.lv = insertelement <2 x double> %i.lp, double %i.li, i64 0
  %i.lw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lu, <2 x double> <double 1.350000e+02, double 2.010000e+02>, <2 x double> %i.lv)
  %i.lx = insertelement <2 x double> %i.h, double %2, i64 1
  %i.ly = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lx, <2 x double> <double 1.470000e+02, double 5.200000e+01>, <2 x double> %i.lw)
  %i.lz = insertelement <2 x double> <double poison, double 4.000000e+00>, double %2, i64 0
  %i.ma = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lz, <2 x double> <double 2.600000e+01, double 1.000000e+00>, <2 x double> %i.ly)
  %i.mb = fmul <2 x double> %i.ma, splat (double 2.500000e-01)
  store <2 x double> %i.mb, ptr %i.lh, align 16, !tbaa !49
  %i.mc = fmul double %i.j, 7.560000e+02
  %i.md = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.me = tail call double @llvm.fmuladd.f64(double %i.k, double 4.050000e+02, double %i.mc)
  %i.mf = fmul double %i.j, 8.640000e+02
  %i.mg = tail call double @llvm.fmuladd.f64(double %i.i, double 4.050000e+02, double %i.me)
  %i.mh = insertelement <2 x double> poison, double %i.mg, i64 0
  %i.mi = insertelement <2 x double> %i.mh, double %i.mf, i64 1
  %i.mj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lm, <2 x double> <double 5.400000e+01, double 4.050000e+02>, <2 x double> %i.mi) ; 2 uses
  %i.mk = extractelement <2 x double> %i.mj, i64 0
  %i.ml = fmul double %i.mk, 2.500000e-01
  store double %i.ml, ptr %i.md, align 16, !tbaa !49
  %i.mm = extractelement <2 x double> %i.mj, i64 1
  %i.mn = tail call double @llvm.fmuladd.f64(double %i.i, double 5.670000e+02, double %i.mm)
  %i.mo = tail call double @llvm.fmuladd.f64(double %2, double 1.080000e+02, double %i.mn)
  %i.mp = fmul double %i.mo, 2.500000e-01
  br label %bb.am

bb.ai:                                            ; preds = %bb.af
  %i.mq = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.mr = fmul <2 x double> %i.mq, <double 1.620000e+03, double 1.134000e+03>
  %i.ms = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.mt = fmul <2 x double> %i.mq, <double 3.780000e+02, double 4.320000e+02>
  %i.mu = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.mv = insertelement <2 x double> poison, double %i.j, i64 0
  %i.mw = shufflevector <2 x double> %i.mv, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.mx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mw, <2 x double> splat (double 2.700000e+02), <2 x double> %i.mt)
  %18 = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.my = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %18, <2 x double> <double 1.470000e+02, double 2.010000e+02>, <2 x double> %i.mx)
  %i.mz = fadd <2 x double> %i.my, <double 1.300000e+01, double 2.600000e+01>
  %i.na = insertelement <2 x double> poison, double %i.jo, i64 0
  %i.nb = shufflevector <2 x double> %i.na, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nc = fdiv <2 x double> %i.mz, %i.nb
  store <2 x double> %i.nc, ptr %i.mu, align 16, !tbaa !49
  %i.nd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mw, <2 x double> <double 1.080000e+03, double 8.100000e+02>, <2 x double> %i.mr)
  %i.ne = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %18, <2 x double> <double 6.600000e+02, double 4.050000e+02>, <2 x double> %i.nd)
  %i.nf = fadd <2 x double> %i.ne, <double 6.000000e+01, double 2.700000e+01>
  %19 = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ng = insertelement <2 x double> %19, double %i.jo, i64 1
  %i.nh = fdiv <2 x double> %i.nf, %i.ng          ; 2 uses
  %i.ni = extractelement <2 x double> %i.nh, i64 0 ; 2 uses
  store double %i.ni, ptr %i.a, align 16, !tbaa !49
  %i.nj = fneg double %i.ni
  store double %i.nj, ptr %i.ms, align 8, !tbaa !49
  %i.nk = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.nl = extractelement <2 x double> %i.nh, i64 1
  store double %i.nl, ptr %i.nk, align 16, !tbaa !49
  %i.nm = fmul double %i.i, 1.296000e+03
  %i.nn = tail call double @llvm.fmuladd.f64(double %i.j, double 8.100000e+02, double %i.nm)
  %i.no = tail call double @llvm.fmuladd.f64(double %2, double 5.670000e+02, double %i.nn)
  %i.np = fadd double %i.no, 5.400000e+01
  %i.nq = fdiv double %i.np, %i.jo
  br label %bb.am

bb.aj:                                            ; preds = %bb.af
  %20 = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.nr = fmul <2 x double> %20, <double 3.240000e+03, double 2.268000e+03>
  %i.ns = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.nt = fmul <2 x double> %20, <double 7.560000e+02, double 8.640000e+02>
  %21 = fmul double %6, 2.000000e+00              ; 3 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.nv = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.nw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nv, <2 x double> splat (double 8.100000e+02), <2 x double> %i.nt)
  %i.nx = fadd <2 x double> %i.nw, <double 1.470000e+02, double 2.010000e+02>
  %i.ny = insertelement <2 x double> poison, double %21, i64 0
  %22 = shufflevector <2 x double> %i.ny, <2 x double> poison, <2 x i32> zeroinitializer
  %23 = fdiv <2 x double> %i.nx, %22
  store <2 x double> %23, ptr %i.nu, align 16, !tbaa !49
  %i.nz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nv, <2 x double> <double 3.240000e+03, double 2.430000e+03>, <2 x double> %i.nr)
  %i.oa = fadd <2 x double> %i.nz, <double 6.600000e+02, double 4.050000e+02>
  %24 = insertelement <2 x double> poison, double %i.m, i64 0
  %25 = insertelement <2 x double> %24, double %21, i64 1
  %26 = fdiv <2 x double> %i.oa, %25              ; 2 uses
  %27 = extractelement <2 x double> %26, i64 0    ; 2 uses
  store double %27, ptr %i.a, align 16, !tbaa !49
  %28 = fneg double %27
  store double %28, ptr %i.ns, align 8, !tbaa !49
  %i.ob = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.oc = extractelement <2 x double> %26, i64 1
  store double %i.oc, ptr %i.ob, align 16, !tbaa !49
  %i.od = fmul double %2, 2.592000e+03
  %i.oe = tail call double @llvm.fmuladd.f64(double %i.i, double 2.430000e+03, double %i.od)
  %i.of = fadd double %i.oe, 5.670000e+02
  %i.og = fdiv double %i.of, %21
  br label %bb.am

bb.ak:                                            ; preds = %bb.af
  %29 = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.oh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %29, <2 x double> <double 6.480000e+03, double 2.430000e+03>, <2 x double> <double 3.240000e+03, double 1.134000e+03>)
  %i.oi = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.oj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %29, <2 x double> splat (double 8.100000e+02), <2 x double> <double 3.780000e+02, double 4.320000e+02>)
  %i.ok = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ol = insertelement <2 x double> poison, double %i.m, i64 0
  %i.om = shufflevector <2 x double> %i.ol, <2 x double> poison, <2 x i32> zeroinitializer
  %i.on = fdiv <2 x double> %i.oj, %i.om
  store <2 x double> %i.on, ptr %i.ok, align 16, !tbaa !49
  %i.oo = insertelement <2 x double> poison, double %i.n, i64 0
  %i.op = insertelement <2 x double> %i.oo, double %i.m, i64 1
  %i.oq = fdiv <2 x double> %i.oh, %i.op          ; 2 uses
  %i.or = extractelement <2 x double> %i.oq, i64 0 ; 2 uses
  store double %i.or, ptr %i.a, align 16, !tbaa !49
  %i.os = fneg double %i.or
  store double %i.os, ptr %i.oi, align 8, !tbaa !49
  %i.ot = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ou = extractelement <2 x double> %i.oq, i64 1
  store double %i.ou, ptr %i.ot, align 16, !tbaa !49
  %i.ov = tail call double @llvm.fmuladd.f64(double %2, double 2.430000e+03, double 1.296000e+03)
  %i.ow = fdiv double %i.ov, %i.m
  br label %bb.am

bb.al:                                            ; preds = %bb.af
  %i.ox = fdiv double 6.480000e+03, %i.o          ; 2 uses
  store double %i.ox, ptr %i.a, align 16, !tbaa !49
  %i.oy = fneg double %i.ox
  %i.oz = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double %i.oy, ptr %i.oz, align 8, !tbaa !49
  %i.pa = insertelement <2 x double> poison, double %i.n, i64 0
  %i.pb = shufflevector <2 x double> %i.pa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pc = fdiv <2 x double> <double 8.100000e+02, double 2.430000e+03>, %i.pb ; 3 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.pe = extractelement <2 x double> %i.pc, i64 0
  store double %i.pe, ptr %i.pd, align 16, !tbaa !49
  %i.pf = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store <2 x double> %i.pc, ptr %i.pf, align 8, !tbaa !49
  %i.pg = extractelement <2 x double> %i.pc, i64 1
  br label %bb.am

bb.am:                                            ; preds = %bb.ah, %bb.aj, %bb.al, %bb.ak, %bb.ai, %bb.ag
  %.sink360 = phi double [ %i.mp, %bb.ah ], [ %i.og, %bb.aj ], [ %i.pg, %bb.al ], [ %i.ow, %bb.ak ], [ %i.nq, %bb.ai ], [ %i.le, %bb.ag ]
  %i.ph = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store double %.sink360, ptr %i.ph, align 8, !tbaa !49
  %i.pi = load ptr, ptr %1, align 8, !tbaa !20    ; 4 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 16
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !39
  store ptr %i.pk, ptr %i.b, align 16, !tbaa !50
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !42
  %i.pn = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.pm, ptr %i.pn, align 8, !tbaa !50
  %i.po = getelementptr inbounds nuw i8, ptr %i.pi, i64 8
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !38
  %i.pq = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.pp, ptr %i.pq, align 16, !tbaa !50
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !47
  %i.pt = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.ps, ptr %i.pt, align 8, !tbaa !50
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pi, i64 24
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !40
  %i.pw = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.pv, ptr %i.pw, align 16, !tbaa !50
  %i.px = getelementptr inbounds nuw i8, ptr %i.pi, i64 32
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !41
  %i.pz = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.py, ptr %i.pz, align 8, !tbaa !50
  %i.qa = call i32 @N_VLinearCombination(i32 noundef 6, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %5) #14
  %.not344 = icmp eq i32 %i.qa, 0
  br i1 %.not344, label %bb.ao, label %bb.ap

bb.an:                                            ; preds = %bb.h
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 777, ptr noundef nonnull @__func__.arkInterpEvaluate_Hermite, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.7) #14
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am, %bb.ac, %bb.u, %bb.o, %bb.j, %bb.i
  br label %bb.ap

bb.ap:                                            ; preds = %bb.am, %bb.ae, %arkInterpEvaluate.exit353, %bb.ad, %arkInterpEvaluate.exit351, %bb.ac, %bb.v, %arkInterpEvaluate.exit, %bb.u, %bb.o, %bb.b, %bb.ao, %bb.an, %bb.g, %bb.e
  %.0334 = phi i32 [ -22, %bb.e ], [ 0, %bb.g ], [ -22, %bb.an ], [ 0, %bb.ao ], [ -8, %bb.b ], [ -28, %bb.o ], [ -28, %bb.u ], [ -8, %arkInterpEvaluate.exit ], [ -8, %bb.v ], [ -28, %bb.ac ], [ -8, %arkInterpEvaluate.exit351 ], [ -8, %bb.ad ], [ -8, %arkInterpEvaluate.exit353 ], [ -8, %bb.ae ], [ -28, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.0334
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @arkResizeVec(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @arkFreeVec(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #8

declare void @arkProcessError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #7

declare i32 @arkAllocVec(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @N_VScale(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @N_VConst(double noundef, ptr noundef) local_unnamed_addr #7

declare void @N_VLinearSum(double noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

declare i32 @N_VLinearCombination(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define noundef ptr @arkInterpCreate_Lagrange(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %or.cond = icmp ugt i32 %1, 5
  br i1 %or.cond, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #15 ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noalias dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #15 ; 10 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.a) #14
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  store ptr @arkInterpResize_Lagrange, ptr %i.c, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @arkInterpFree_Lagrange, ptr %i.e, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr @arkInterpPrintMem_Lagrange, ptr %i.f, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @arkInterpSetDegree_Lagrange, ptr %i.g, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr @arkInterpInit_Lagrange, ptr %i.h, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr @arkInterpUpdate_Lagrange, ptr %i.i, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr @arkInterpEvaluate_Lagrange, ptr %i.j, align 8, !tbaa !19
  %calloc = tail call dereferenceable_or_null(40) ptr @calloc(i64 1, i64 40) ; 4 uses
  %i.k = icmp eq ptr %calloc, null
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.c) #14
  tail call void @free(ptr noundef nonnull %i.a) #14
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.l, align 8, !tbaa !11
  store ptr %calloc, ptr %i.a, align 8, !tbaa !20
  %i.m = add nuw nsw i32 %1, 1
  store i32 %i.m, ptr %calloc, align 8, !tbaa !55
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load double, ptr %i.n, align 8, !tbaa !56
  %i.p = fmul double %i.o, 1.000000e+02
  %i.q = getelementptr inbounds nuw i8, ptr %calloc, i64 32
  store double %i.p, ptr %i.q, align 8, !tbaa !57
  %i.r = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.s = shufflevector <2 x i32> %i.r, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.t = add nuw nsw <2 x i32> %i.s, <i32 2, i32 3>
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  %i.v = zext nneg <2 x i32> %i.t to <2 x i64>
  %i.w = load <2 x i64>, ptr %i.u, align 8, !tbaa !26
  %i.x = add nsw <2 x i64> %i.w, %i.v
  store <2 x i64> %i.x, ptr %i.u, align 8, !tbaa !26
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.a, %bb.g, %bb.f, %bb.d
  %.0 = phi ptr [ %i.a, %bb.g ], [ null, %bb.a ], [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -20, 1) i32 @arkInterpResize_Lagrange(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6) #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %.loopexit17, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !20     ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !59
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
end_hunk_0

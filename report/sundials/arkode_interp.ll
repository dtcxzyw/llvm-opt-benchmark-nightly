Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/arkode_interp?download=true
inline.NumInlined: 17
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@arkInterpSetDegree_Hermite:bb.a

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
  %i.e = load double, ptr %i.d, align 8, !tbaa !37 ; 24 uses
  %i.f = insertelement <2 x double> poison, double %2, i64 0 ; 4 uses
  %i.g = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> zeroinitializer ; 14 uses
  %i.h = insertelement <2 x double> %i.f, double 1.000000e+00, i64 1
  %i.i = fmul <2 x double> %i.g, %i.h             ; 15 uses
  %i.j = extractelement <2 x double> %i.i, i64 0  ; 19 uses
  %i.k = fmul double %2, %i.j                     ; 22 uses
  %i.l = fmul double %2, %i.k                     ; 9 uses
  %i.m = fmul double %2, %i.l                     ; 2 uses
  %i.n = fmul double %i.e, %i.e                   ; 8 uses
  %i.o = fmul double %i.e, %i.n                   ; 8 uses
  %i.p = fmul double %i.e, %i.o                   ; 4 uses
  %i.q = fmul double %i.e, %i.p
  %i.r = tail call i32 @llvm.smax.i32(i32 %4, i32 0)
  %i.s = load i32, ptr %i.c, align 8, !tbaa !24
  %. = tail call i32 @llvm.smin.i32(i32 %i.r, i32 %i.s) ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !44
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !45
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.y = load double, ptr %i.x, align 8, !tbaa !46
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !42
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !47
  %i.ad = tail call i32 %i.w(ptr noundef nonnull %0, double noundef %i.y, ptr noundef %i.aa, ptr noundef %i.ac, i32 noundef 1) #14
  %.not339 = icmp eq i32 %i.ad, 0
  br i1 %.not339, label %bb.c, label %bb.ap

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.t, align 8, !tbaa !44
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.ae = icmp slt i32 %3, 0
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 482, ptr noundef nonnull @__func__.arkInterpEvaluate_Hermite, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.6) #14
  br label %bb.ap

bb.f:                                             ; preds = %bb.d
  %i.af = icmp sgt i32 %3, %.
  br i1 %i.af, label %bb.g, label %bb.h

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
  %i.ag = load ptr, ptr %1, align 8, !tbaa !20
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !39
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !42
  tail call void @N_VLinearSum(double noundef 5.000000e-01, ptr noundef %i.ai, double noundef 5.000000e-01, ptr noundef %i.ak, ptr noundef %5) #14
  br label %bb.ao

bb.j:                                             ; preds = %bb.h
  %i.al = icmp eq i32 %3, 0                       ; 2 uses
  %i.am = fneg double %2
  %i.an = fadd double %2, 1.000000e+00
  %i.ao = insertelement <2 x double> poison, double %i.e, i64 0
  %i.ap = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aq = fdiv <2 x double> <double -1.000000e+00, double 1.000000e+00>, %i.ap ; 2 uses
  %i.ar = extractelement <2 x double> %i.aq, i64 0
  %.0333 = select i1 %i.al, double %i.am, double %i.ar
  %i.as = extractelement <2 x double> %i.aq, i64 1
  %.0 = select i1 %i.al, double %i.an, double %i.as
  %i.at = load ptr, ptr %1, align 8, !tbaa !20
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !39
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !42
  tail call void @N_VLinearSum(double noundef %.0333, ptr noundef %i.av, double noundef %.0, ptr noundef %i.ax, ptr noundef %5) #14
  br label %bb.ao

bb.k:                                             ; preds = %bb.h
  switch i32 %3, label %bb.n [
    i32 0, label %bb.l
    i32 1, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  store double %i.j, ptr %i.a, align 16, !tbaa !49
  %i.ay = fsub double 1.000000e+00, %i.j
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double %i.ay, ptr %i.az, align 8, !tbaa !49
  %i.ba = fadd double %2, %i.j
  %i.bb = fmul double %i.ba, %i.e
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.bc = fmul <2 x double> %i.g, <double 2.000000e+00, double -2.000000e+00>
  %i.bd = insertelement <2 x double> poison, double %i.e, i64 0
  %i.be = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bf = fdiv <2 x double> %i.bc, %i.be
  store <2 x double> %i.bf, ptr %i.a, align 16, !tbaa !49
  %i.bg = tail call double @llvm.fmuladd.f64(double %2, double 2.000000e+00, double 1.000000e+00)
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.bh = insertelement <2 x double> poison, double %i.e, i64 0
  %i.bi = shufflevector <2 x double> %i.bh, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bj = fdiv <2 x double> <double 2.000000e+00, double -2.000000e+00>, %i.bi ; 2 uses
  %i.bk = fdiv <2 x double> %i.bj, %i.bi
  store <2 x double> %i.bk, ptr %i.a, align 16, !tbaa !49
  %i.bl = extractelement <2 x double> %i.bj, i64 0
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.l
  %.sink = phi double [ %i.bg, %bb.m ], [ %i.bl, %bb.n ], [ %i.bb, %bb.l ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store double %.sink, ptr %i.bm, align 16, !tbaa !49
  %i.bn = load ptr, ptr %1, align 8, !tbaa !20
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !39
  store ptr %i.bp, ptr %i.b, align 16, !tbaa !50
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bs = load <2 x ptr>, ptr %i.bq, align 8, !tbaa !50
  store <2 x ptr> %i.bs, ptr %i.br, align 8, !tbaa !50
  %i.bt = call i32 @N_VLinearCombination(i32 noundef 3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %5) #14
  %.not349 = icmp eq i32 %i.bt, 0
  br i1 %.not349, label %bb.ao, label %bb.ap

bb.p:                                             ; preds = %bb.h
  switch i32 %3, label %bb.t [
    i32 0, label %bb.q
    i32 1, label %bb.r
    i32 2, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  %i.bu = fmul double %i.k, 2.000000e+00
  %i.bv = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bw = insertelement <2 x double> <double 1.000000e+00, double poison>, double %2, i64 1
  %i.bx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bv, <2 x double> <double -3.000000e+00, double 2.000000e+00>, <2 x double> %i.bw) ; 2 uses
  %i.by = insertelement <2 x double> %i.i, double %i.k, i64 1
  %i.bz = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.ca = shufflevector <2 x double> %i.bz, <2 x double> %i.bx, <2 x i32> <i32 0, i32 2>
  %i.cb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> <double 3.000000e+00, double -2.000000e+00>, <2 x double> %i.ca)
  store <2 x double> %i.cb, ptr %i.a, align 16, !tbaa !49
  %i.cc = fadd double %i.j, %i.k
  %i.cd = fmul double %i.cc, %i.e
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store double %i.cd, ptr %i.ce, align 16, !tbaa !49
  %i.cf = extractelement <2 x double> %i.bx, i64 1
  %i.cg = fadd double %i.cf, %i.k
  %i.ch = fmul double %i.cg, %i.e
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.ci = fadd double %2, %i.j
  %i.cj = insertelement <2 x double> poison, double %i.ci, i64 0
  %i.ck = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cl = fmul <2 x double> %i.ck, <double 6.000000e+00, double -6.000000e+00>
  %i.cm = insertelement <2 x double> poison, double %i.e, i64 0
  %i.cn = shufflevector <2 x double> %i.cm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.co = fdiv <2 x double> %i.cl, %i.cn
  store <2 x double> %i.co, ptr %i.a, align 16, !tbaa !49
  %i.cp = fmul double %i.j, 3.000000e+00
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cr = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.cp, i64 0
  %i.cs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.g, <2 x double> <double 2.000000e+00, double 4.000000e+00>, <2 x double> %i.cr) ; 2 uses
  %i.ct = extractelement <2 x double> %i.cs, i64 0
  store double %i.ct, ptr %i.cq, align 16, !tbaa !49
  %i.cu = extractelement <2 x double> %i.cs, i64 1
  %i.cv = tail call double @llvm.fmuladd.f64(double %i.j, double 3.000000e+00, double %i.cu)
  br label %bb.u

bb.s:                                             ; preds = %bb.p
  %i.cw = tail call double @llvm.fmuladd.f64(double %2, double 2.000000e+00, double 1.000000e+00)
  %i.cx = insertelement <2 x double> poison, double %i.cw, i64 0
  %i.cy = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cz = fmul <2 x double> %i.cy, <double 6.000000e+00, double -6.000000e+00>
  %i.da = insertelement <2 x double> poison, double %i.n, i64 0
  %i.db = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dc = fdiv <2 x double> %i.cz, %i.db
  store <2 x double> %i.dc, ptr %i.a, align 16, !tbaa !49
  %i.dd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.g, <2 x double> splat (double 6.000000e+00), <2 x double> <double 2.000000e+00, double 4.000000e+00>)
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.df = insertelement <2 x double> poison, double %i.e, i64 0
  %i.dg = shufflevector <2 x double> %i.df, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dh = fdiv <2 x double> %i.dd, %i.dg          ; 2 uses
  %i.di = extractelement <2 x double> %i.dh, i64 0
  store double %i.di, ptr %i.de, align 16, !tbaa !49
  %i.dj = extractelement <2 x double> %i.dh, i64 1
  br label %bb.u

bb.t:                                             ; preds = %bb.p
  %i.dk = insertelement <2 x double> poison, double %i.o, i64 0
  %i.dl = shufflevector <2 x double> %i.dk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dm = fdiv <2 x double> <double 1.200000e+01, double -1.200000e+01>, %i.dl
  store <2 x double> %i.dm, ptr %i.a, align 16, !tbaa !49
  %i.dn = fdiv double 6.000000e+00, %i.n          ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store double %i.dn, ptr %i.do, align 16, !tbaa !49
  br label %bb.u

bb.u:                                             ; preds = %bb.r, %bb.t, %bb.s, %bb.q
  %.sink356 = phi double [ %i.cv, %bb.r ], [ %i.dn, %bb.t ], [ %i.dj, %bb.s ], [ %i.ch, %bb.q ]
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store double %.sink356, ptr %i.dp, align 8, !tbaa !49
  %i.dq = load ptr, ptr %1, align 8, !tbaa !20    ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !39
  store ptr %i.ds, ptr %i.b, align 16, !tbaa !50
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !42
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.du, ptr %i.dv, align 8, !tbaa !50
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !38
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.dx, ptr %i.dy, align 16, !tbaa !50
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !47
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.ea, ptr %i.eb, align 8, !tbaa !50
  %i.ec = call i32 @N_VLinearCombination(i32 noundef 4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %5) #14
  %.not348 = icmp eq i32 %i.ec, 0
  br i1 %.not348, label %bb.ao, label %bb.ap

arkInterpEvaluate.exit:                           ; preds = %bb.h
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !11
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 48
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !19
  %i.eh = tail call i32 %i.eg(ptr noundef nonnull %0, ptr noundef nonnull %1, double noundef f0xBFD5555555555555, i32 noundef 0, i32 noundef 3, ptr noundef %5) #14, !inline_history !65
  %.not345 = icmp eq i32 %i.eh, 0
  br i1 %.not345, label %bb.v, label %bb.ap

bb.v:                                             ; preds = %arkInterpEvaluate.exit
  %i.ei = load ptr, ptr %1, align 8, !tbaa !20    ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 48
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !36
  %i.el = fdiv double %i.e, 3.000000e+00
  %i.em = fsub double %i.ek, %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !45
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !40
  %i.er = tail call i32 %i.eo(ptr noundef nonnull %0, double noundef %i.em, ptr noundef %5, ptr noundef %i.eq, i32 noundef 2) #14
  %.not346 = icmp eq i32 %i.er, 0
  br i1 %.not346, label %bb.w, label %bb.ap

bb.w:                                             ; preds = %bb.v
  switch i32 %3, label %bb.ab [
    i32 0, label %bb.x
    i32 1, label %bb.y
    i32 2, label %bb.z
    i32 3, label %bb.aa
  ]

bb.x:                                             ; preds = %bb.w
  %i.es = fmul double %i.k, -1.600000e+01
  %i.et = insertelement <2 x double> %i.i, double %i.k, i64 1
  %i.eu = insertelement <2 x double> poison, double %i.es, i64 0
  %i.ev = insertelement <2 x double> poison, double %i.l, i64 0 ; 2 uses
  %i.ew = shufflevector <2 x double> %i.ev, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ex = fmul double %i.e, 2.500000e-01
  %i.ey = fmul double %i.k, -1.400000e+01
  %i.ez = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fa = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.ey, i64 1
  %i.fb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ez, <2 x double> <double 6.000000e+00, double -5.000000e+00>, <2 x double> %i.fa) ; 2 uses
  %i.fc = shufflevector <2 x double> %i.eu, <2 x double> %i.fb, <2 x i32> <i32 0, i32 2>
  %i.fd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.et, <2 x double> <double -6.000000e+00, double 1.600000e+01>, <2 x double> %i.fc)
  %i.fe = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ew, <2 x double> <double -9.000000e+00, double 9.000000e+00>, <2 x double> %i.fd)
  store <2 x double> %i.fe, ptr %i.a, align 16, !tbaa !49
  %i.ff = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.fg = shufflevector <2 x double> %i.ev, <2 x double> %i.i, <2 x i32> <i32 0, i32 2>
  %i.fh = shufflevector <2 x double> %i.fb, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.fi = insertelement <2 x double> %i.fh, double %2, i64 1
  %i.fj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fg, <2 x double> <double -9.000000e+00, double 2.000000e+00>, <2 x double> %i.fi) ; 2 uses
  %i.fk = extractelement <2 x double> %i.fj, i64 0
  %i.fl = fmul double %i.fk, %i.ex
  store double %i.fl, ptr %i.ff, align 16, !tbaa !49
  %i.fm = extractelement <2 x double> %i.fj, i64 1
  %i.fn = fadd double %i.fm, %i.k
  %i.fo = fmul double %i.fn, %i.e
  %i.fp = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store double %i.fo, ptr %i.fp, align 8, !tbaa !49
  %i.fq = fmul double %i.e, 2.700000e+01
  %i.fr = fmul double %i.fq, 2.500000e-01
  %i.fs = fneg double %i.l
  %i.ft = tail call double @llvm.fmuladd.f64(double %i.k, double -2.000000e+00, double %i.fs)
  %i.fu = fsub double %i.ft, %i.j
  %i.fv = fmul double %i.fu, %i.fr
  br label %bb.ac

bb.y:                                             ; preds = %bb.w
  %i.fw = fmul double %i.j, 4.800000e+01          ; 2 uses
  %i.fx = fneg double %i.fw
  %i.fy = insertelement <2 x double> poison, double %i.fx, i64 0
  %i.fz = insertelement <2 x double> %i.fy, double %i.fw, i64 1
  %i.ga = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.g, <2 x double> <double -1.200000e+01, double 1.200000e+01>, <2 x double> %i.fz)
  %i.gb = insertelement <2 x double> poison, double %i.k, i64 0 ; 2 uses
  %i.gc = shufflevector <2 x double> %i.gb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gc, <2 x double> <double -3.600000e+01, double 3.600000e+01>, <2 x double> %i.ga)
  %i.ge = insertelement <2 x double> poison, double %i.e, i64 0
  %i.gf = shufflevector <2 x double> %i.ge, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gg = fdiv <2 x double> %i.gd, %i.gf
  store <2 x double> %i.gg, ptr %i.a, align 16, !tbaa !49
  %i.gh = fmul double %i.j, -2.100000e+01
  %i.gi = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.gj = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.gh, i64 0
  %i.gk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.g, <2 x double> <double -5.000000e+00, double 4.000000e+00>, <2 x double> %i.gj)
  %6 = shufflevector <2 x double> %i.gb, <2 x double> %i.i, <2 x i32> <i32 0, i32 2>
  %7 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %6, <2 x double> <double -1.800000e+01, double 3.000000e+00>, <2 x double> %i.gk) ; 2 uses
  %8 = extractelement <2 x double> %7, i64 0
  %i.gl = fmul double %8, 5.000000e-01
  store double %i.gl, ptr %i.gi, align 16, !tbaa !49
  %i.gm = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %9 = extractelement <2 x double> %7, i64 1
  store double %9, ptr %i.gm, align 8, !tbaa !49
  %10 = fmul double %i.j, 3.000000e+00
  %11 = tail call double @llvm.fmuladd.f64(double %i.k, double 2.000000e+00, double %10)
  %i.gn = fadd double %2, %11
  %i.go = fmul double %i.gn, -1.350000e+01
  br label %bb.ac

bb.z:                                             ; preds = %bb.w
  %i.gp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.g, <2 x double> <double -9.600000e+01, double 9.600000e+01>, <2 x double> <double -1.200000e+01, double 1.200000e+01>)
  %i.gq = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gq, <2 x double> <double -1.080000e+02, double 1.080000e+02>, <2 x double> %i.gp)
  %i.gs = insertelement <2 x double> poison, double %i.n, i64 0
  %i.gt = shufflevector <2 x double> %i.gs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gu = fdiv <2 x double> %i.gr, %i.gt
  store <2 x double> %i.gu, ptr %i.a, align 16, !tbaa !49
  %i.gv = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.gw = insertelement <2 x double> %i.f, double -0.000000e+00, i64 1
  %i.gx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gw, <2 x double> <double -2.100000e+01, double 0.000000e+00>, <2 x double> <double -2.500000e+00, double 4.000000e+00>)
  %i.gy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.i, <2 x double> <double -2.700000e+01, double 6.000000e+00>, <2 x double> %i.gx)
  %i.gz = insertelement <2 x double> poison, double %i.e, i64 0
  %i.ha = shufflevector <2 x double> %i.gz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hb = fdiv <2 x double> %i.gy, %i.ha
  store <2 x double> %i.hb, ptr %i.gv, align 16, !tbaa !49
  %i.hc = tail call double @llvm.fmuladd.f64(double %2, double -8.100000e+01, double -1.350000e+01)
  %i.hd = tail call double @llvm.fmuladd.f64(double %i.j, double -8.100000e+01, double %i.hc)
  %i.he = fdiv double %i.hd, %i.e
  br label %bb.ac

bb.aa:                                            ; preds = %bb.w
  %i.hf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.g, <2 x double> <double -2.160000e+02, double 2.160000e+02>, <2 x double> <double -9.600000e+01, double 9.600000e+01>)
  %i.hg = insertelement <2 x double> poison, double %i.o, i64 0
  %i.hh = shufflevector <2 x double> %i.hg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hi = fdiv <2 x double> %i.hf, %i.hh
  store <2 x double> %i.hi, ptr %i.a, align 16, !tbaa !49
  %i.hj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.hk = insertelement <2 x double> <double poison, double -0.000000e+00>, double %2, i64 0
  %i.hl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hk, <2 x double> <double -5.400000e+01, double 0.000000e+00>, <2 x double> <double -2.100000e+01, double 6.000000e+00>)
  %i.hm = insertelement <2 x double> poison, double %i.n, i64 0
  %i.hn = shufflevector <2 x double> %i.hm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ho = fdiv <2 x double> %i.hl, %i.hn
  store <2 x double> %i.ho, ptr %i.hj, align 16, !tbaa !49
  %i.hp = tail call double @llvm.fmuladd.f64(double %2, double -1.620000e+02, double -8.100000e+01)
  %i.hq = fdiv double %i.hp, %i.n
  br label %bb.ac

bb.ab:                                            ; preds = %bb.w
  %i.hr = insertelement <2 x double> poison, double %i.p, i64 0
  %i.hs = shufflevector <2 x double> %i.hr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ht = fdiv <2 x double> <double -2.160000e+02, double 2.160000e+02>, %i.hs
  store <2 x double> %i.ht, ptr %i.a, align 16, !tbaa !49
  %i.hu = insertelement <2 x double> poison, double %i.o, i64 0
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
  %.sink358 = phi double [ %i.go, %bb.y ], [ %i.hq, %bb.aa ], [ %i.ia, %bb.ab ], [ %i.he, %bb.z ], [ %i.fv, %bb.x ]
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
  %i.jv = insertelement <2 x double> poison, double %i.l, i64 0
  %i.jw = shufflevector <2 x double> %i.jv, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jx = fmul <2 x double> %i.jw, <double 1.350000e+02, double 6.300000e+01>
  %i.jy = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.jz = fmul double %i.e, 2.500000e-01          ; 3 uses
  %i.ka = insertelement <2 x double> poison, double %i.m, i64 0
  %i.kb = shufflevector <2 x double> %i.ka, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kb, <2 x double> <double 5.400000e+01, double 2.700000e+01>, <2 x double> %i.jx)
  %i.kd = insertelement <2 x double> poison, double %i.k, i64 0 ; 2 uses
  %i.ke = shufflevector <2 x double> %i.kd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ke, <2 x double> <double 1.100000e+02, double 4.900000e+01>, <2 x double> %i.kc)
  %i.kg = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
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
  %i.kp = fmul double %i.l, 1.890000e+02
  %i.kq = insertelement <2 x double> %i.kd, double %i.m, i64 1
  %i.kr = insertelement <2 x double> %i.i, double %i.k, i64 1
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
  %i.lc = tail call double @llvm.fmuladd.f64(double %i.k, double 1.890000e+02, double %i.lb)
  %i.ld = tail call double @llvm.fmuladd.f64(double %i.j, double 5.400000e+01, double %i.lc)
  %i.le = fmul double %i.ld, %i.jz
  br label %bb.am

bb.ah:                                            ; preds = %bb.af
  %i.lf = fmul double %i.k, 5.400000e+02
  %i.lg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.lh = fmul double %i.k, 2.520000e+02
  %i.li = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.lj = fmul double %i.k, 2.880000e+02
  %i.lk = tail call double @llvm.fmuladd.f64(double %i.l, double 2.700000e+02, double %i.lf)
  %i.ll = tail call double @llvm.fmuladd.f64(double %i.j, double 3.300000e+02, double %i.lk)
  %i.lm = insertelement <2 x double> %i.f, double %i.l, i64 1 ; 2 uses
  %i.ln = insertelement <2 x double> poison, double %i.ll, i64 0
  %i.lo = insertelement <2 x double> %i.ln, double %i.lj, i64 1
  %i.lp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lm, <2 x double> <double 6.000000e+01, double 1.350000e+02>, <2 x double> %i.lo) ; 2 uses
  %i.lq = extractelement <2 x double> %i.lp, i64 0
  %i.lr = fdiv double %i.lq, %i.e                 ; 2 uses
  store double %i.lr, ptr %i.a, align 16, !tbaa !49
  %i.ls = fneg double %i.lr
  store double %i.ls, ptr %i.lg, align 8, !tbaa !49
  %i.lt = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.lu = insertelement <2 x double> %i.lt, double %i.l, i64 0
end_hunk_0

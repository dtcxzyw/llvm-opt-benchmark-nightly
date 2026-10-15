Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/arkode_interp?download=true
inline.NumInlined: 17
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@arkInterpSetDegree_Hermite:bb.a

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
  %i.gl = shufflevector <2 x double> %i.gb, <2 x double> %i.i, <2 x i32> <i32 0, i32 2>
  %i.gm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gl, <2 x double> <double -1.800000e+01, double 3.000000e+00>, <2 x double> %i.gk) ; 2 uses
  %i.gn = extractelement <2 x double> %i.gm, i64 0
  %i.go = fmul double %i.gn, 5.000000e-01
  store double %i.go, ptr %i.gi, align 16, !tbaa !49
  %i.gp = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.gq = extractelement <2 x double> %i.gm, i64 1
  store double %i.gq, ptr %i.gp, align 8, !tbaa !49
  %i.gr = fmul double %i.j, 3.000000e+00
  %i.gs = tail call double @llvm.fmuladd.f64(double %i.k, double 2.000000e+00, double %i.gr)
  %i.gt = fadd double %2, %i.gs
  %i.gu = fmul double %i.gt, -1.350000e+01
  br label %bb.ac

bb.z:                                             ; preds = %bb.w
  %i.gv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.g, <2 x double> <double -9.600000e+01, double 9.600000e+01>, <2 x double> <double -1.200000e+01, double 1.200000e+01>)
  %i.gw = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gw, <2 x double> <double -1.080000e+02, double 1.080000e+02>, <2 x double> %i.gv)
  %i.gy = insertelement <2 x double> poison, double %i.n, i64 0
  %i.gz = shufflevector <2 x double> %i.gy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ha = fdiv <2 x double> %i.gx, %i.gz
  store <2 x double> %i.ha, ptr %i.a, align 16, !tbaa !49
  %i.hb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.hc = insertelement <2 x double> %i.f, double -0.000000e+00, i64 1
  %i.hd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hc, <2 x double> <double -2.100000e+01, double 0.000000e+00>, <2 x double> <double -2.500000e+00, double 4.000000e+00>)
  %i.he = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.i, <2 x double> <double -2.700000e+01, double 6.000000e+00>, <2 x double> %i.hd)
  %i.hf = insertelement <2 x double> poison, double %i.e, i64 0
  %i.hg = shufflevector <2 x double> %i.hf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hh = fdiv <2 x double> %i.he, %i.hg
  store <2 x double> %i.hh, ptr %i.hb, align 16, !tbaa !49
  %i.hi = tail call double @llvm.fmuladd.f64(double %2, double -8.100000e+01, double -1.350000e+01)
  %i.hj = tail call double @llvm.fmuladd.f64(double %i.j, double -8.100000e+01, double %i.hi)
  %i.hk = fdiv double %i.hj, %i.e
  br label %bb.ac

bb.aa:                                            ; preds = %bb.w
  %i.hl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.g, <2 x double> <double -2.160000e+02, double 2.160000e+02>, <2 x double> <double -9.600000e+01, double 9.600000e+01>)
  %i.hm = insertelement <2 x double> poison, double %i.o, i64 0
  %i.hn = shufflevector <2 x double> %i.hm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ho = fdiv <2 x double> %i.hl, %i.hn
  store <2 x double> %i.ho, ptr %i.a, align 16, !tbaa !49
  %i.hp = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.scalar = tail call double @llvm.fmuladd.f64(double %2, double -5.400000e+01, double -2.100000e+01)
  %i.hq = insertelement <2 x double> <double poison, double 6.000000e+00>, double %.scalar, i64 0
  %i.hr = insertelement <2 x double> poison, double %i.n, i64 0
  %i.hs = shufflevector <2 x double> %i.hr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ht = fdiv <2 x double> %i.hq, %i.hs
  store <2 x double> %i.ht, ptr %i.hp, align 16, !tbaa !49
  %i.hu = tail call double @llvm.fmuladd.f64(double %2, double -1.620000e+02, double -8.100000e+01)
  %i.hv = fdiv double %i.hu, %i.n
  br label %bb.ac

bb.ab:                                            ; preds = %bb.w
  %i.hw = insertelement <2 x double> poison, double %i.p, i64 0
  %i.hx = shufflevector <2 x double> %i.hw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hy = fdiv <2 x double> <double -2.160000e+02, double 2.160000e+02>, %i.hx
  store <2 x double> %i.hy, ptr %i.a, align 16, !tbaa !49
  %i.hz = insertelement <2 x double> poison, double %i.o, i64 0
  %i.ia = shufflevector <2 x double> %i.hz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ib = fdiv <2 x double> <double -5.400000e+01, double -1.620000e+02>, %i.ia ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %6 = extractelement <2 x double> %i.ib, i64 0
  store double %6, ptr %i.ic, align 16, !tbaa !49
  %7 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store double 0.000000e+00, ptr %7, align 8, !tbaa !49
  %i.id = extractelement <2 x double> %i.ib, i64 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.y, %bb.aa, %bb.ab, %bb.z, %bb.x
  %.sink358 = phi double [ %i.gu, %bb.y ], [ %i.hv, %bb.aa ], [ %i.id, %bb.ab ], [ %i.hk, %bb.z ], [ %i.fv, %bb.x ]
  %i.ie = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store double %.sink358, ptr %i.ie, align 16, !tbaa !49
  %i.if = load ptr, ptr %1, align 8, !tbaa !20    ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !39
  store ptr %i.ih, ptr %i.b, align 16, !tbaa !50
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !42
  %i.ik = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ij, ptr %i.ik, align 8, !tbaa !50
  %i.il = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !38
  %i.in = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.im, ptr %i.in, align 16, !tbaa !50
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !47
  %i.iq = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.ip, ptr %i.iq, align 8, !tbaa !50
  %i.ir = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !40
  %i.it = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.is, ptr %i.it, align 16, !tbaa !50
  %i.iu = call i32 @N_VLinearCombination(i32 noundef 5, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %5) #14
  %.not347 = icmp eq i32 %i.iu, 0
  br i1 %.not347, label %bb.ao, label %bb.ap

arkInterpEvaluate.exit351:                        ; preds = %bb.h
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !11
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 48
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !19
  %i.iz = tail call i32 %i.iy(ptr noundef nonnull %0, ptr noundef nonnull %1, double noundef f0xBFD5555555555555, i32 noundef 0, i32 noundef 4, ptr noundef %5) #14, !inline_history !65
  %.not340 = icmp eq i32 %i.iz, 0
  br i1 %.not340, label %bb.ad, label %bb.ap

bb.ad:                                            ; preds = %arkInterpEvaluate.exit351
  %i.ja = load ptr, ptr %1, align 8, !tbaa !20    ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 48
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !36
  %i.jd = fdiv double %i.e, 3.000000e+00
  %i.je = fsub double %i.jc, %i.jd
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !45
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !40
  %i.jj = tail call i32 %i.jg(ptr noundef nonnull %0, double noundef %i.je, ptr noundef %5, ptr noundef %i.ji, i32 noundef 2) #14
  %.not341 = icmp eq i32 %i.jj, 0
  br i1 %.not341, label %arkInterpEvaluate.exit353, label %bb.ap

arkInterpEvaluate.exit353:                        ; preds = %bb.ad
  %i.jk = load ptr, ptr %i.iv, align 8, !tbaa !11
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 48
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !19
  %i.jn = tail call i32 %i.jm(ptr noundef nonnull %0, ptr noundef nonnull %1, double noundef f0xBFE5555555555555, i32 noundef 0, i32 noundef 4, ptr noundef %5) #14, !inline_history !65
  %.not342 = icmp eq i32 %i.jn, 0
  br i1 %.not342, label %bb.ae, label %bb.ap

bb.ae:                                            ; preds = %arkInterpEvaluate.exit353
  %i.jo = load ptr, ptr %1, align 8, !tbaa !20    ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 48
  %i.jq = load double, ptr %i.jp, align 8, !tbaa !36
  %i.jr = fmul double %i.e, 2.000000e+00          ; 4 uses
  %i.js = fdiv double %i.jr, 3.000000e+00
  %i.jt = fsub double %i.jq, %i.js
  %i.ju = load ptr, ptr %i.jf, align 8, !tbaa !45
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jo, i64 32
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !41
  %i.jx = tail call i32 %i.ju(ptr noundef nonnull %0, double noundef %i.jt, ptr noundef %5, ptr noundef %i.jw, i32 noundef 2) #14
  %.not343 = icmp eq i32 %i.jx, 0
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
  %8 = insertelement <2 x double> poison, double %i.l, i64 0
  %9 = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %10 = fmul <2 x double> %9, <double 1.350000e+02, double 6.300000e+01>
  %i.jy = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.jz = fmul double %i.e, 2.500000e-01          ; 3 uses
  %11 = insertelement <2 x double> poison, double %i.m, i64 0
  %12 = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %13 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %12, <2 x double> <double 5.400000e+01, double 2.700000e+01>, <2 x double> %10)
  %i.ka = insertelement <2 x double> poison, double %i.k, i64 0 ; 2 uses
  %14 = shufflevector <2 x double> %i.ka, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %14, <2 x double> <double 1.100000e+02, double 4.900000e+01>, <2 x double> %13)
  %15 = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %16 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %15, <2 x double> <double 3.000000e+01, double 1.300000e+01>, <2 x double> %i.kb) ; 3 uses
  %17 = extractelement <2 x double> %16, i64 0
  store double %17, ptr %i.a, align 16, !tbaa !49
  %i.kc = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.jz, i64 1 ; 2 uses
  %18 = fsub <2 x double> %i.kc, %16
  %19 = fmul <2 x double> %i.kc, %16
  %20 = shufflevector <2 x double> %18, <2 x double> %19, <2 x i32> <i32 0, i32 3>
  store <2 x double> %20, ptr %i.jy, align 8, !tbaa !49
  %21 = fmul <2 x double> %9, <double 7.200000e+01, double 2.160000e+02>
  %22 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.kd = fmul double %i.l, 1.890000e+02
  %i.ke = insertelement <2 x double> %i.ka, double %i.m, i64 1
  %i.kf = insertelement <2 x double> %i.i, double %i.k, i64 1
  %23 = insertelement <2 x double> %15, double %2, i64 0
  %i.kg = insertelement <2 x double> poison, double %i.jz, i64 0
  %i.kh = shufflevector <2 x double> %i.kg, <2 x double> poison, <2 x i32> zeroinitializer
  %24 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %12, <2 x double> <double 2.700000e+01, double 8.100000e+01>, <2 x double> %21) ; 2 uses
  %25 = insertelement <2 x double> %24, double %i.kd, i64 1
  %26 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ke, <2 x double> <double 6.700000e+01, double 8.100000e+01>, <2 x double> %25)
  %i.ki = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kf, <2 x double> <double 2.600000e+01, double 1.350000e+02>, <2 x double> %26)
  %27 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %23, <2 x double> <double 4.000000e+00, double 2.700000e+01>, <2 x double> %i.ki)
  %28 = fmul <2 x double> %27, %i.kh
  store <2 x double> %28, ptr %22, align 8, !tbaa !49
  %i.kj = extractelement <2 x double> %24, i64 1
  %i.kk = tail call double @llvm.fmuladd.f64(double %i.k, double 1.890000e+02, double %i.kj)
  %i.kl = tail call double @llvm.fmuladd.f64(double %i.j, double 5.400000e+01, double %i.kk)
  %i.km = fmul double %i.kl, %i.jz
  br label %bb.am

bb.ah:                                            ; preds = %bb.af
  %i.kn = fmul double %i.k, 5.400000e+02
  %i.ko = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.kp = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.kq = fmul double %i.k, 2.520000e+02
  %i.kr = tail call double @llvm.fmuladd.f64(double %i.l, double 2.700000e+02, double %i.kn)
  %i.ks = tail call double @llvm.fmuladd.f64(double %i.j, double 3.300000e+02, double %i.kr)
  %i.kt = fmul double %i.k, 2.880000e+02
  %i.ku = insertelement <2 x double> %i.f, double %i.l, i64 1 ; 2 uses
  %i.kv = insertelement <2 x double> poison, double %i.ks, i64 0
  %i.kw = insertelement <2 x double> %i.kv, double %i.kt, i64 1
  %i.kx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ku, <2 x double> <double 6.000000e+01, double 1.350000e+02>, <2 x double> %i.kw) ; 2 uses
  %i.ky = extractelement <2 x double> %i.kx, i64 0
  %i.kz = fdiv double %i.ky, %i.e                 ; 2 uses
  store double %i.kz, ptr %i.a, align 16, !tbaa !49
  %i.la = fneg double %i.kz
  store double %i.la, ptr %i.ko, align 8, !tbaa !49
  %i.lb = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.lc = insertelement <2 x double> %i.lb, double %i.l, i64 0
  %i.ld = insertelement <2 x double> %i.kx, double %i.kq, i64 0
  %i.le = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lc, <2 x double> <double 1.350000e+02, double 2.010000e+02>, <2 x double> %i.ld)
  %i.lf = insertelement <2 x double> %i.i, double %2, i64 1
  %i.lg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lf, <2 x double> <double 1.470000e+02, double 5.200000e+01>, <2 x double> %i.le)
  %i.lh = insertelement <2 x double> <double poison, double 4.000000e+00>, double %2, i64 0
  %i.li = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lh, <2 x double> <double 2.600000e+01, double 1.000000e+00>, <2 x double> %i.lg)
  %i.lj = fmul <2 x double> %i.li, splat (double 2.500000e-01)
  store <2 x double> %i.lj, ptr %i.kp, align 16, !tbaa !49
  %i.lk = fmul double %i.k, 7.560000e+02
  %i.ll = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.lm = tail call double @llvm.fmuladd.f64(double %i.l, double 4.050000e+02, double %i.lk)
  %i.ln = tail call double @llvm.fmuladd.f64(double %i.j, double 4.050000e+02, double %i.lm)
  %i.lo = fmul double %i.k, 8.640000e+02
  %i.lp = insertelement <2 x double> poison, double %i.ln, i64 0
  %i.lq = insertelement <2 x double> %i.lp, double %i.lo, i64 1
  %i.lr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ku, <2 x double> <double 5.400000e+01, double 4.050000e+02>, <2 x double> %i.lq) ; 2 uses
  %i.ls = extractelement <2 x double> %i.lr, i64 0
  %i.lt = fmul double %i.ls, 2.500000e-01
  store double %i.lt, ptr %i.ll, align 16, !tbaa !49
  %i.lu = extractelement <2 x double> %i.lr, i64 1
  %i.lv = tail call double @llvm.fmuladd.f64(double %i.j, double 5.670000e+02, double %i.lu)
  %i.lw = tail call double @llvm.fmuladd.f64(double %2, double 1.080000e+02, double %i.lv)
  %i.lx = fmul double %i.lw, 2.500000e-01
  br label %bb.am

bb.ai:                                            ; preds = %bb.af
  %i.ly = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lz = fmul <2 x double> %i.ly, <double 1.620000e+03, double 1.134000e+03>
  %i.ma = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.mb = fmul <2 x double> %i.ly, <double 3.780000e+02, double 4.320000e+02>
  %i.mc = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.md = insertelement <2 x double> poison, double %i.k, i64 0
  %i.me = shufflevector <2 x double> %i.md, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.mf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.me, <2 x double> splat (double 2.700000e+02), <2 x double> %i.mb)
  %i.mg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.g, <2 x double> <double 1.470000e+02, double 2.010000e+02>, <2 x double> %i.mf)
  %i.mh = fadd <2 x double> %i.mg, <double 1.300000e+01, double 2.600000e+01>
  %i.mi = insertelement <2 x double> poison, double %i.jr, i64 0
  %i.mj = shufflevector <2 x double> %i.mi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mk = fdiv <2 x double> %i.mh, %i.mj
  store <2 x double> %i.mk, ptr %i.mc, align 16, !tbaa !49
  %i.ml = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.me, <2 x double> <double 1.080000e+03, double 8.100000e+02>, <2 x double> %i.lz)
  %i.mm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.g, <2 x double> <double 6.600000e+02, double 4.050000e+02>, <2 x double> %i.ml)
  %i.mn = fadd <2 x double> %i.mm, <double 6.000000e+01, double 2.700000e+01>
  %i.mo = insertelement <2 x double> poison, double %i.n, i64 0
  %i.mp = insertelement <2 x double> %i.mo, double %i.jr, i64 1
  %i.mq = fdiv <2 x double> %i.mn, %i.mp          ; 2 uses
  %i.mr = extractelement <2 x double> %i.mq, i64 0 ; 2 uses
  store double %i.mr, ptr %i.a, align 16, !tbaa !49
  %i.ms = fneg double %i.mr
  store double %i.ms, ptr %i.ma, align 8, !tbaa !49
  %i.mt = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.mu = extractelement <2 x double> %i.mq, i64 1
  store double %i.mu, ptr %i.mt, align 16, !tbaa !49
  %i.mv = fmul double %i.j, 1.296000e+03
  %i.mw = tail call double @llvm.fmuladd.f64(double %i.k, double 8.100000e+02, double %i.mv)
  %i.mx = tail call double @llvm.fmuladd.f64(double %2, double 5.670000e+02, double %i.mw)
  %i.my = fadd double %i.mx, 5.400000e+01
  %i.mz = fdiv double %i.my, %i.jr
  br label %bb.am

bb.aj:                                            ; preds = %bb.af
  %i.na = fmul <2 x double> %i.g, <double 3.240000e+03, double 2.268000e+03>
  %i.nb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.nc = fmul <2 x double> %i.g, <double 7.560000e+02, double 8.640000e+02>
  %i.nd = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ne = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.nf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ne, <2 x double> splat (double 8.100000e+02), <2 x double> %i.nc)
  %i.ng = fadd <2 x double> %i.nf, <double 1.470000e+02, double 2.010000e+02>
  %i.nh = insertelement <2 x double> poison, double %i.o, i64 0
  %i.ni = insertelement <2 x double> %i.nh, double %i.n, i64 1
  %i.nj = fmul <2 x double> %i.ni, <double 1.000000e+00, double 2.000000e+00> ; 3 uses
  %i.nk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ne, <2 x double> <double 3.240000e+03, double 2.430000e+03>, <2 x double> %i.na)
  %i.nl = fadd <2 x double> %i.nk, <double 6.600000e+02, double 4.050000e+02>
  %i.nm = fdiv <2 x double> %i.nl, %i.nj          ; 2 uses
  %i.nn = extractelement <2 x double> %i.nm, i64 0 ; 2 uses
  store double %i.nn, ptr %i.a, align 16, !tbaa !49
  %i.no = fneg double %i.nn
  store double %i.no, ptr %i.nb, align 8, !tbaa !49
  %i.np = shufflevector <2 x double> %i.nj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.nq = fdiv <2 x double> %i.ng, %i.np
  store <2 x double> %i.nq, ptr %i.nd, align 16, !tbaa !49
  %i.nr = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ns = extractelement <2 x double> %i.nm, i64 1
  store double %i.ns, ptr %i.nr, align 16, !tbaa !49
  %i.nt = fmul double %2, 2.592000e+03
  %i.nu = tail call double @llvm.fmuladd.f64(double %i.j, double 2.430000e+03, double %i.nt)
  %i.nv = fadd double %i.nu, 5.670000e+02
  %i.nw = extractelement <2 x double> %i.nj, i64 1
  %i.nx = fdiv double %i.nv, %i.nw
  br label %bb.am

bb.ak:                                            ; preds = %bb.af
  %i.ny = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.g, <2 x double> <double 6.480000e+03, double 2.430000e+03>, <2 x double> <double 3.240000e+03, double 1.134000e+03>)
  %i.nz = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.oa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.g, <2 x double> splat (double 8.100000e+02), <2 x double> <double 3.780000e+02, double 4.320000e+02>)
  %i.ob = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.oc = insertelement <2 x double> poison, double %i.o, i64 0
  %i.od = shufflevector <2 x double> %i.oc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oe = fdiv <2 x double> %i.oa, %i.od
  store <2 x double> %i.oe, ptr %i.ob, align 16, !tbaa !49
  %i.of = insertelement <2 x double> poison, double %i.p, i64 0
  %i.og = insertelement <2 x double> %i.of, double %i.o, i64 1
  %i.oh = fdiv <2 x double> %i.ny, %i.og          ; 2 uses
  %i.oi = extractelement <2 x double> %i.oh, i64 0 ; 2 uses
  store double %i.oi, ptr %i.a, align 16, !tbaa !49
  %i.oj = fneg double %i.oi
  store double %i.oj, ptr %i.nz, align 8, !tbaa !49
  %i.ok = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ol = extractelement <2 x double> %i.oh, i64 1
  store double %i.ol, ptr %i.ok, align 16, !tbaa !49
  %i.om = tail call double @llvm.fmuladd.f64(double %2, double 2.430000e+03, double 1.296000e+03)
  %i.on = fdiv double %i.om, %i.o
  br label %bb.am

bb.al:                                            ; preds = %bb.af
  %i.oo = fdiv double 6.480000e+03, %i.q          ; 2 uses
  store double %i.oo, ptr %i.a, align 16, !tbaa !49
  %i.op = fneg double %i.oo
  %i.oq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double %i.op, ptr %i.oq, align 8, !tbaa !49
  %i.or = insertelement <2 x double> poison, double %i.p, i64 0
  %i.os = shufflevector <2 x double> %i.or, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ot = fdiv <2 x double> <double 8.100000e+02, double 2.430000e+03>, %i.os ; 3 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ov = extractelement <2 x double> %i.ot, i64 0
  store double %i.ov, ptr %i.ou, align 16, !tbaa !49
  %i.ow = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store <2 x double> %i.ot, ptr %i.ow, align 8, !tbaa !49
  %i.ox = extractelement <2 x double> %i.ot, i64 1
  br label %bb.am

bb.am:                                            ; preds = %bb.ah, %bb.aj, %bb.al, %bb.ak, %bb.ai, %bb.ag
  %.sink360 = phi double [ %i.lx, %bb.ah ], [ %i.nx, %bb.aj ], [ %i.ox, %bb.al ], [ %i.on, %bb.ak ], [ %i.mz, %bb.ai ], [ %i.km, %bb.ag ]
  %i.oy = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store double %.sink360, ptr %i.oy, align 8, !tbaa !49
  %i.oz = load ptr, ptr %1, align 8, !tbaa !20    ; 4 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 16
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !39
  store ptr %i.pb, ptr %i.b, align 16, !tbaa !50
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !42
  %i.pe = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.pd, ptr %i.pe, align 8, !tbaa !50
  %i.pf = getelementptr inbounds nuw i8, ptr %i.oz, i64 8
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !38
  %i.ph = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.pg, ptr %i.ph, align 16, !tbaa !50
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !47
  %i.pk = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.pj, ptr %i.pk, align 8, !tbaa !50
  %i.pl = getelementptr inbounds nuw i8, ptr %i.oz, i64 24
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !40
  %i.pn = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.pm, ptr %i.pn, align 16, !tbaa !50
  %i.po = getelementptr inbounds nuw i8, ptr %i.oz, i64 32
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !41
  %i.pq = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.pp, ptr %i.pq, align 8, !tbaa !50
  %i.pr = call i32 @N_VLinearCombination(i32 noundef 6, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %5) #14
  %.not344 = icmp eq i32 %i.pr, 0
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
end_hunk_0

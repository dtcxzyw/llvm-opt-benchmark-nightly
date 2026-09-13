Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/ida?download=true
inline.NumInlined: 26
inline.NumDeleted: 18
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@IDAStopTest1:bb.a
  %i.w = fcmp ult double %i.v, 0.000000e+00
  %i.x = tail call double @llvm.fabs.f64(double %i.u)
  %i.y = fcmp ugt double %i.x, %i.r
  %or.cond = and i1 %i.w, %i.y
  br i1 %or.cond, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = tail call i32 @IDAGetSolution(ptr noundef nonnull %0, double noundef %i.f, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %.not71 = icmp eq i32 %i.z, 0
  %i.aa = load double, ptr %i.e, align 8, !tbaa !83 ; 3 uses
  br i1 %.not71, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = load double, ptr %i.c, align 8, !tbaa !48
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 2208, ptr noundef nonnull @__func__.IDAStopTest1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.19, double noundef %i.aa, double noundef %i.ab)
  br label %bb.t

bb.h:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 680
  store double %i.aa, ptr %i.ac, align 8, !tbaa !85
  store double %i.aa, ptr %2, align 8, !tbaa !21
  store i32 0, ptr %i.a, align 8, !tbaa !82
  br label %bb.t

bb.i:                                             ; preds = %bb.d
  %i.ad = fadd double %i.d, %i.i
  %i.ae = fsub double %i.ad, %i.f
  %i.af = fmul double %i.i, %i.ae
  %i.ag = fcmp ogt double %i.af, 0.000000e+00
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ah = fsub double %i.f, %i.d
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.m, double -4.000000e+00, double 1.000000e+00)
  %i.aj = fmul double %i.ah, %i.ai
  store double %i.aj, ptr %i.h, align 8, !tbaa !80
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j, %bb.i, %bb.a
  switch i32 %5, label %bb.t [
    i32 1, label %bb.l
    i32 2, label %bb.r
  ]

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 3 uses
  %i.al = load double, ptr %i.ak, align 8, !tbaa !85
  %i.am = fcmp oeq double %1, %i.al
  br i1 %i.am, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store double %1, ptr %i.ak, align 8, !tbaa !85
  store double %1, ptr %2, align 8, !tbaa !21
  br label %bb.t

bb.n:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.ao = load double, ptr %i.an, align 8, !tbaa !48
  %i.ap = fsub double %i.ao, %1
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !80
  %i.as = fmul double %i.ap, %i.ar
  %i.at = fcmp ult double %i.as, 0.000000e+00
  br i1 %i.at, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = tail call i32 @IDAGetSolution(ptr noundef nonnull %0, double noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %.not70 = icmp eq i32 %i.au, 0
  br i1 %.not70, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 2242, ptr noundef nonnull @__func__.IDAStopTest1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.37, double noundef %1)
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  store double %1, ptr %i.ak, align 8, !tbaa !85
  store double %1, ptr %2, align 8, !tbaa !21
  br label %bb.t

bb.r:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !48 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !85
  %i.az = fsub double %i.aw, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !80
  %i.bc = fmul double %i.az, %i.bb
  %i.bd = fcmp ogt double %i.bc, 0.000000e+00
  br i1 %i.bd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.be = tail call i32 @IDAGetSolution(ptr noundef nonnull %0, double noundef %i.aw, ptr noundef nonnull %3, ptr noundef nonnull %4) ; 0 uses
  %i.bf = load double, ptr %i.av, align 8, !tbaa !48 ; 2 uses
  store double %i.bf, ptr %i.ax, align 8, !tbaa !85
  store double %i.bf, ptr %2, align 8, !tbaa !21
  br label %bb.t

bb.t:                                             ; preds = %bb.k, %bb.r, %bb.n, %bb.s, %bb.q, %bb.p, %bb.m, %bb.h, %bb.g, %bb.c
  %.0 = phi i32 [ -22, %bb.c ], [ -22, %bb.g ], [ 1, %bb.h ], [ 99, %bb.r ], [ 0, %bb.m ], [ -22, %bb.p ], [ 0, %bb.q ], [ 99, %bb.n ], [ 0, %bb.s ], [ -22, %bb.k ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -99, -2) i32 @IDAHandleFailure(ptr nofree noundef nonnull readonly captures(address_is_null) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  switch i32 %1, label %bb.m [
    i32 -3, label %bb.b
    i32 -4, label %bb.c
    i32 -6, label %bb.d
    i32 -7, label %bb.e
    i32 -9, label %bb.f
    i32 -8, label %bb.g
    i32 -11, label %bb.h
    i32 -20, label %bb.i
    i32 -9999, label %bb.j
    i32 -16, label %bb.k
    i32 -17, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.b = load double, ptr %i.a, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.d = load double, ptr %i.c, align 8, !tbaa !80
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -3, i32 noundef 2365, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.38, double noundef %i.b, double noundef %i.d)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.f = load double, ptr %i.e, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.h = load double, ptr %i.g, align 8, !tbaa !80
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -4, i32 noundef 2370, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.39, double noundef %i.f, double noundef %i.h)
  br label %bb.n

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.j = load double, ptr %i.i, align 8, !tbaa !48
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -6, i32 noundef 2375, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.40, double noundef %i.j)
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.l = load double, ptr %i.k, align 8, !tbaa !48
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -7, i32 noundef 2380, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.41, double noundef %i.l)
  br label %bb.n

bb.f:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.n = load double, ptr %i.m, align 8, !tbaa !48
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -9, i32 noundef 2385, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.42, double noundef %i.n)
  br label %bb.n

bb.g:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.p = load double, ptr %i.o, align 8, !tbaa !48
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -8, i32 noundef 2390, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.43, double noundef %i.p)
  br label %bb.n

bb.h:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.r = load double, ptr %i.q, align 8, !tbaa !48
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -11, i32 noundef 2395, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.44, double noundef %i.r)
  br label %bb.n

bb.i:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, i32 noundef 2400, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3)
  br label %bb.n

bb.j:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.t = load double, ptr %i.s, align 8, !tbaa !48
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -20, i32 noundef 2404, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.45, double noundef %i.t)
  br label %bb.n

bb.k:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.v = load double, ptr %i.u, align 8, !tbaa !48
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -16, i32 noundef 2409, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.46, double noundef %i.v)
  br label %bb.n

bb.l:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.x = load double, ptr %i.w, align 8, !tbaa !48
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -17, i32 noundef 2413, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.47, double noundef %i.x)
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -99, i32 noundef 2419, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.48)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ -99, %bb.m ], [ -3, %bb.b ], [ -4, %bb.c ], [ -6, %bb.d ], [ -7, %bb.e ], [ -9, %bb.f ], [ -8, %bb.g ], [ -11, %bb.h ], [ -20, %bb.i ], [ -20, %bb.j ], [ -16, %bb.k ], [ -17, %bb.l ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -28, 1) i32 @IDAGetDky(ptr noundef %0, double noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [6 x double], align 16            ; 12 uses
  %i.b = alloca [6 x double], align 16            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, i32 noundef 1521, ptr noundef nonnull @__func__.IDAGetDky, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3)
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq ptr %3, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -27, i32 noundef 1530, ptr noundef nonnull @__func__.IDAGetDky, ptr noundef nonnull @.str, ptr noundef nonnull @.str.27)
  br label %bb.o

bb.e:                                             ; preds = %bb.c
  %i.e = icmp slt i32 %2, 0
  br i1 %i.e, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 612
  %i.g = load i32, ptr %i.f, align 4, !tbaa !50   ; 2 uses
  %i.h = icmp sgt i32 %2, %i.g
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -25, i32 noundef 1538, ptr noundef nonnull @__func__.IDAGetDky, ptr noundef nonnull @.str, ptr noundef nonnull @.str.28)
  br label %bb.o

bb.h:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load double, ptr %i.i, align 8, !tbaa !18
  %i.k = fmul double %i.j, 1.000000e+02
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.m = load double, ptr %i.l, align 8, !tbaa !48 ; 4 uses
  %i.n = tail call double @llvm.fabs.f64(double %i.m)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.p = load double, ptr %i.o, align 8, !tbaa !80 ; 3 uses
  %i.q = tail call double @llvm.fabs.f64(double %i.p)
  %i.r = fadd double %i.n, %i.q
  %i.s = fmul double %i.k, %i.r                   ; 2 uses
  %i.t = fcmp olt double %i.p, 0.000000e+00
  %i.u = fneg double %i.s
  %.077 = select i1 %i.t, double %i.u, double %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.w = load double, ptr %i.v, align 8, !tbaa !51
  %i.x = fsub double %i.m, %i.w                   ; 2 uses
  %i.y = fsub double %i.x, %.077
  %i.z = fsub double %1, %i.y
  %i.aa = fmul double %i.p, %i.z
  %i.ab = fcmp olt double %i.aa, 0.000000e+00
  br i1 %i.ab, label %bb.i, label %.lr.ph95

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -26, i32 noundef 1551, ptr noundef nonnull @__func__.IDAGetDky, ptr noundef nonnull @.str, ptr noundef nonnull @.str.29, double noundef %1, double noundef %i.x, double noundef %i.m)
  br label %bb.o

.lr.ph95:                                         ; preds = %bb.h
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, i8 0, i64 48, i1 false), !tbaa !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.b, i8 0, i64 48, i1 false), !tbaa !21
  %i.ac = fsub double %1, %i.m                    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.ae = sub i32 %i.g, %2                        ; 4 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = add nuw i32 %2, 1
  %wide.trip.count = zext i32 %i.ag to i64
  %.not8387 = icmp slt i32 %i.ae, 1
  br label %bb.j

.loopexit:                                        ; preds = %bb.m, %.lr.ph92.preheader
  %indvars.iv.next102 = add nuw i64 %indvars.iv101, 1
  %exitcond.not = icmp eq i64 %indvar.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %.lr.ph95, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph95 ], [ %indvar.next, %.loopexit ] ; 12 uses
  %indvars.iv101 = phi i64 [ 1, %.lr.ph95 ], [ %indvars.iv.next102, %.loopexit ] ; 6 uses
  %4 = shl i64 %indvar, 3
  %scevgep110 = getelementptr i8, ptr %i.a, i64 %4
  %5 = add nuw i64 %indvar, %i.af
  %6 = trunc i64 %indvars.iv101 to i32            ; 2 uses
  %sext114 = shl i64 %indvars.iv101, 32
  %i.ah = ashr exact i64 %sext114, 32             ; 2 uses
  %smax108 = tail call i64 @llvm.smax.i64(i64 %5, i64 %i.ah)
  %7 = sub i64 %smax108, %i.ah                    ; 2 uses
  %i.ai = shl nuw nsw i64 %indvar, 3
  %i.aj = add nuw nsw i64 %i.ai, 8                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.aj
  %scevgep100 = getelementptr i8, ptr %i.a, i64 %i.aj
  %i.ak = trunc i64 %indvar to i32
  %i.al = add i32 %i.ae, %i.ak
  %8 = trunc i64 %indvars.iv101 to i32
  %smax = tail call i32 @llvm.smax.i32(i32 %i.al, i32 %8)
  %i.am = trunc i64 %indvar to i32
  %i.an = xor i32 %i.am, -1
  %i.ao = add i32 %smax, %i.an
  %i.ap = zext i32 %i.ao to i64
  %i.aq = shl nuw nsw i64 %i.ap, 3
  %i.ar = add nuw nsw i64 %i.aq, 8
  %i.as = icmp eq i64 %indvar, 0
  br i1 %i.as, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store double 1.000000e+00, ptr %i.a, align 16, !tbaa !21
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.at = add nsw i64 %indvar, -1                 ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.at
  %i.av = load double, ptr %i.au, align 8, !tbaa !21
  %i.aw = trunc nuw nsw i64 %indvar to i32
  %i.ax = uitofp nneg i32 %i.aw to double
  %i.ay = fmul double %i.av, %i.ax
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.at
  %i.ba = load double, ptr %i.az, align 8, !tbaa !21 ; 2 uses
  %i.bb = fdiv double %i.ay, %i.ba
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvar
  store double %i.bb, ptr %i.bc, align 8, !tbaa !21
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.075 = phi double [ 0.000000e+00, %bb.k ], [ %i.ba, %bb.l ] ; 2 uses
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %i.bd = add nuw nsw i64 %indvar, %i.af          ; 2 uses
  br i1 %.not8387, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.be = trunc nuw nsw i64 %indvar to i32
  %i.bf = uitofp nneg i32 %i.be to double         ; 2 uses
  %9 = trunc i64 %7 to i32
  %10 = add i32 %6, %9
  %11 = icmp slt i32 %10, %6
  %12 = icmp ugt i64 %7, 4294967295
  %13 = or i1 %11, %12
  br i1 %13, label %.ph.lver.orig, label %.ph

.ph.lver.orig:                                    ; preds = %.lr.ph, %.ph.lver.orig
  %indvars.iv97.lver.orig = phi i64 [ %indvars.iv.next98.lver.orig, %.ph.lver.orig ], [ %indvars.iv101, %.lr.ph ] ; 4 uses
  %.17688.lver.orig = phi double [ %23, %.ph.lver.orig ], [ %.075, %.lr.ph ]
  %14 = add nsw i64 %indvars.iv97.lver.orig, -1   ; 3 uses
  %15 = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %14
  %16 = load double, ptr %15, align 8, !tbaa !21
  %17 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %14
  %18 = load double, ptr %17, align 8, !tbaa !21
  %19 = fadd double %i.ac, %.17688.lver.orig
  %20 = fmul double %19, %18
  %21 = tail call double @llvm.fmuladd.f64(double %i.bf, double %16, double %20)
  %22 = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %14
  %23 = load double, ptr %22, align 8, !tbaa !21  ; 2 uses
  %24 = fdiv double %21, %23
  %25 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv97.lver.orig
  store double %24, ptr %25, align 8, !tbaa !21
  %indvars.iv.next98.lver.orig = add nuw nsw i64 %indvars.iv97.lver.orig, 1
  %sext.lver.orig = shl i64 %indvars.iv97.lver.orig, 32
  %26 = ashr exact i64 %sext.lver.orig, 32
  %.not83.not.lver.orig = icmp slt i64 %26, %i.bd
  br i1 %.not83.not.lver.orig, label %.ph.lver.orig, label %.lr.ph92.preheader

.ph:                                              ; preds = %.lr.ph
  %load_initial = load double, ptr %scevgep110, align 8
  br label %bb.n

.lr.ph92.preheader:                               ; preds = %bb.n, %.ph.lver.orig
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %scevgep100, i64 %i.ar, i1 false), !tbaa !21
  br label %.loopexit

bb.n:                                             ; preds = %.ph, %bb.n
  %store_forwarded = phi double [ %load_initial, %.ph ], [ %i.bo, %bb.n ]
  %indvars.iv97 = phi i64 [ %indvars.iv101, %.ph ], [ %indvars.iv.next98, %bb.n ] ; 4 uses
  %.17688 = phi double [ %.075, %.ph ], [ %i.bn, %bb.n ]
  %i.bg = add nsw i64 %indvars.iv97, -1           ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bg
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !21
  %i.bj = fadd double %i.ac, %.17688
  %i.bk = fmul double %i.bj, %store_forwarded
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.bf, double %i.bi, double %i.bk)
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.bg
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !21 ; 2 uses
  %i.bo = fdiv double %i.bl, %i.bn                ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv97
  store double %i.bo, ptr %i.bp, align 8, !tbaa !21
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1
  %sext = shl i64 %indvars.iv97, 32
  %27 = ashr exact i64 %sext, 32
  %.not83.not = icmp slt i64 %27, %i.bd
  br i1 %.not83.not, label %bb.n, label %.lr.ph92.preheader

._crit_edge:                                      ; preds = %.loopexit
  %i.bq = add i32 %i.ae, 1
  %i.br = zext nneg i32 %2 to i64                 ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.br
  %i.bv = call i32 @N_VLinearCombination(i32 noundef %i.bq, ptr noundef nonnull %i.bs, ptr noundef nonnull %i.bu, ptr noundef nonnull %3) #13
  %.not82 = icmp eq i32 %i.bv, 0
  %. = select i1 %.not82, i32 0, i32 -28
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge, %bb.i, %bb.g, %bb.d, %bb.b
  %.078 = phi i32 [ -20, %bb.b ], [ -27, %bb.d ], [ -25, %bb.g ], [ -26, %bb.i ], [ %., %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.078
}

declare i32 @N_VLinearCombination(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define range(i32 -20, 1) i32 @IDAComputeY(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, i32 noundef 1637, ptr noundef nonnull @__func__.IDAComputeY, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.c, double noundef 1.000000e+00, ptr noundef %1, ptr noundef %2) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -20, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

declare void @N_VLinearSum(double noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define range(i32 -20, 1) i32 @IDAComputeYp(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, i32 noundef 1662, ptr noundef nonnull @__func__.IDAComputeYp, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.e = load double, ptr %i.d, align 8, !tbaa !86
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.c, double noundef %i.e, ptr noundef %1, ptr noundef %2) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -20, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @IDAFree(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !190    ; 13 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @IDAFreeVectors(ptr noundef %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 984 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !49
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 976 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !88
  %i.g = tail call i32 @SUNNonlinSolFree(ptr noundef %i.f) #13 ; 0 uses
  store i32 0, ptr %i.c, align 8, !tbaa !49
  store ptr null, ptr %i.e, align 8, !tbaa !88
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1032
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !191  ; 2 uses
  %.not26 = icmp eq ptr %i.i, null
  br i1 %.not26, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 %i.i(ptr noundef nonnull %i.a) #13 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1072
  %i.l = load i32, ptr %i.k, align 8, !tbaa !55
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 1120 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !70
  tail call void @free(ptr noundef %i.o) #13
  store ptr null, ptr %i.n, align 8, !tbaa !70
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 1128 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !71
  tail call void @free(ptr noundef %i.q) #13
  store ptr null, ptr %i.p, align 8, !tbaa !71
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 1136 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !72
  tail call void @free(ptr noundef %i.s) #13
  store ptr null, ptr %i.r, align 8, !tbaa !72
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1080 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !73
  tail call void @free(ptr noundef %i.u) #13
  store ptr null, ptr %i.t, align 8, !tbaa !73
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 1088 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !74
  tail call void @free(ptr noundef %i.w) #13
  store ptr null, ptr %i.v, align 8, !tbaa !74
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 1168 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !75
  tail call void @free(ptr noundef %i.y) #13
  store ptr null, ptr %i.x, align 8, !tbaa !75
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.z = load ptr, ptr %0, align 8, !tbaa !190
  tail call void @free(ptr noundef %i.z) #13
  store ptr null, ptr %0, align 8, !tbaa !190
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  ret void
}

declare i32 @N_VConstrMask(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @idaNlsInit(ptr noundef) local_unnamed_addr #5

declare double @N_VWrmsNormMask(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare double @N_VWrmsNorm(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #8

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #8

declare void @SUNGlobalFallbackErrHandler(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #5

declare i32 @SUNLogger_QueueMsg(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

declare i32 @SUNContext_GetLastError(ptr noundef) local_unnamed_addr #5

declare void @N_VDestroy(ptr noundef) local_unnamed_addr #5

declare void @N_VAbs(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @N_VAddConst(ptr noundef, double noundef, ptr noundef) local_unnamed_addr #5

declare void @N_VInv(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @N_VScaleVectorArray(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @N_VConst(double noundef, ptr noundef) local_unnamed_addr #5

declare i32 @SUNNonlinSolSetup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @SUNNonlinSolSolve(ptr noundef, ptr noundef, ptr noundef, ptr noundef, double noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare i32 @SUNNonlinSolGetNumIters(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @SUNNonlinSolGetNumConvFails(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @N_VCompare(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @N_VProd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @N_VDiv(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare double @N_VMinQuotient(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @N_VLinearSumVectorArray(i32 noundef, double noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS11SUNContext_", !8, i64 0}
!10 = !{!"double", !4, i64 0}
!11 = !{!"p1 _ZTS17_generic_N_Vector", !8, i64 0}
!12 = !{!"long", !4, i64 0}
!13 = !{!"p1 _ZTS27_generic_SUNNonlinearSolver", !8, i64 0}
!14 = !{!"p1 int", !8, i64 0}
!15 = !{!"p1 double", !8, i64 0}
!16 = !{!"IDAMemRec", !9, i64 0, !10, i64 8, !8, i64 16, !8, i64 24, !5, i64 32, !10, i64 40, !10, i64 48, !11, i64 56, !5, i64 64, !5, i64 68, !8, i64 72, !8, i64 80, !5, i64 88, !4, i64 96, !4, i64 144, !4, i64 192, !4, i64 240, !4, i64 288, !4, i64 336, !11, i64 384, !11, i64 392, !11, i64 400, !11, i64 408, !11, i64 416, !11, i64 424, !11, i64 432, !11, i64 440, !11, i64 448, !11, i64 456, !11, i64 464, !11, i64 472, !11, i64 480, !11, i64 488, !11, i64 496, !11, i64 504, !10, i64 512, !11, i64 520, !11, i64 528, !5, i64 536, !5, i64 540, !5, i64 544, !5, i64 548, !5, i64 552, !5, i64 556, !5, i64 560, !5, i64 564, !10, i64 568, !10, i64 576, !10, i64 584, !5, i64 592, !10, i64 600, !5, i64 608, !5, i64 612, !5, i64 616, !5, i64 620, !5, i64 624, !10, i64 632, !10, i64 640, !10, i64 648, !10, i64 656, !10, i64 664, !10, i64 672, !10, i64 680, !10, i64 688, !10, i64 696, !10, i64 704, !10, i64 712, !10, i64 720, !10, i64 728, !10, i64 736, !10, i64 744, !10, i64 752, !10, i64 760, !5, i64 768, !5, i64 772, !5, i64 776, !5, i64 780, !12, i64 784, !10, i64 792, !10, i64 800, !10, i64 808, !10, i64 816, !10, i64 824, !10, i64 832, !10, i64 840, !10, i64 848, !10, i64 856, !12, i64 864, !12, i64 872, !12, i64 880, !12, i64 888, !12, i64 896, !12, i64 904, !12, i64 912, !12, i64 920, !12, i64 928, !12, i64 936, !12, i64 944, !10, i64 952, !5, i64 960, !5, i64 964, !5, i64 968, !5, i64 972, !13, i64 976, !5, i64 984, !8, i64 992, !8, i64 1000, !8, i64 1008, !8, i64 1016, !8, i64 1024, !8, i64 1032, !8, i64 1040, !10, i64 1048, !5, i64 1056, !8, i64 1064, !5, i64 1072, !14, i64 1080, !14, i64 1088, !10, i64 1096, !10, i64 1104, !10, i64 1112, !15, i64 1120, !15, i64 1128, !15, i64 1136, !10, i64 1144, !5, i64 1152, !12, i64 1160, !14, i64 1168, !5, i64 1176, !11, i64 1184, !12, i64 1192, !12, i64 1200, !5, i64 1208, !4, i64 1216, !4, i64 1264, !4, i64 1304, !4, i64 1352}
!17 = !{!16, !9, i64 0}
!18 = !{!16, !10, i64 8}
!19 = !{!16, !5, i64 64}
!20 = !{!16, !12, i64 784}
!21 = !{!10, !10, i64 0}
!22 = !{!16, !10, i64 856}
!23 = !{!16, !10, i64 752}
!24 = !{!16, !10, i64 1048}
!25 = !{!16, !5, i64 1208}
!26 = !{!5, !5, i64 0}
!27 = !{!16, !12, i64 936}
!28 = !{!16, !12, i64 944}
!29 = !{!"p1 _ZTS21_generic_N_Vector_Ops", !8, i64 0}
!30 = !{!"_generic_N_Vector", !8, i64 0, !29, i64 8, !9, i64 16}
!31 = !{!30, !29, i64 8}
!32 = !{!"_generic_N_Vector_Ops", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !8, i64 192, !8, i64 200, !8, i64 208, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !8, i64 280, !8, i64 288, !8, i64 296, !8, i64 304, !8, i64 312, !8, i64 320, !8, i64 328, !8, i64 336, !8, i64 344, !8, i64 352, !8, i64 360, !8, i64 368, !8, i64 376, !8, i64 384, !8, i64 392, !8, i64 400, !8, i64 408, !8, i64 416, !8, i64 424, !8, i64 432, !8, i64 440}
!33 = !{!12, !12, i64 0}
!34 = !{!16, !12, i64 920}
!35 = !{!16, !12, i64 928}
!36 = !{!16, !11, i64 384}
!37 = !{!16, !11, i64 448}
!38 = !{!16, !11, i64 424}
!39 = !{!16, !11, i64 408}
!40 = !{!16, !11, i64 416}
!41 = !{!16, !11, i64 440}
!42 = !{!16, !11, i64 456}
!43 = !{!16, !11, i64 464}
!44 = !{!16, !11, i64 472}
!45 = !{!16, !5, i64 776}
!46 = !{!11, !11, i64 0}
!47 = !{!16, !5, i64 780}
!48 = !{!16, !10, i64 672}
!49 = !{!16, !5, i64 984}
!50 = !{!16, !5, i64 612}
!51 = !{!16, !10, i64 656}
!52 = !{!16, !10, i64 952}
!53 = !{!16, !5, i64 1152}
!54 = !{!16, !8, i64 1064}
!55 = !{!16, !5, i64 1072}
!56 = !{!16, !5, i64 1176}
!57 = !{!16, !5, i64 960}
!58 = !{!16, !5, i64 972}
!59 = !{!16, !5, i64 964}
!60 = !{!16, !11, i64 56}
!61 = !{!16, !11, i64 1184}
!62 = !{!16, !11, i64 432}
!63 = !{!16, !12, i64 1160}
!64 = !{!16, !10, i64 40}
!65 = !{!16, !10, i64 48}
!66 = !{!16, !5, i64 32}
!67 = !{!16, !5, i64 68}
!68 = !{!16, !8, i64 72}
!69 = !{!16, !8, i64 80}
!70 = !{!16, !15, i64 1120}
!71 = !{!16, !15, i64 1128}
!72 = !{!16, !15, i64 1136}
!73 = !{!16, !14, i64 1080}
!74 = !{!16, !14, i64 1088}
!75 = !{!16, !14, i64 1168}
!76 = !{!"llvm.loop.isvectorized", i32 1}
!77 = !{!"llvm.loop.unroll.runtime.disable"}
!78 = !{!16, !11, i64 392}
!79 = !{!16, !11, i64 400}
!80 = !{!16, !10, i64 648}
!81 = !{!16, !5, i64 88}
!82 = !{!16, !5, i64 592}
!83 = !{!16, !10, i64 600}
!84 = !{!16, !10, i64 1096}
!85 = !{!16, !10, i64 680}
!86 = !{!16, !10, i64 688}
!87 = !{!"llvm.loop.unroll.disable"}
!88 = !{!16, !13, i64 976}
!89 = !{!16, !8, i64 24}
!90 = !{!16, !10, i64 1144}
!91 = !{!16, !5, i64 544}
!92 = !{!16, !5, i64 548}
!93 = !{!16, !5, i64 552}
!94 = !{!16, !5, i64 564}
!95 = distinct !{null}
!96 = !{!"p1 _ZTS12SUNProfiler_", !8, i64 0}
!97 = !{!"p1 _ZTS10SUNLogger_", !8, i64 0}
!98 = !{!"p1 _ZTS14SUNErrHandler_", !8, i64 0}
!99 = !{!"SUNContext_", !8, i64 0, !96, i64 8, !5, i64 16, !97, i64 24, !5, i64 32, !5, i64 36, !98, i64 40, !5, i64 48}
!100 = !{!99, !97, i64 24}
!101 = !{!99, !5, i64 36}
!102 = !{!98, !98, i64 0}
!103 = !{!"SUNErrHandler_", !98, i64 0, !8, i64 8, !8, i64 16}
!104 = !{!103, !8, i64 8}
!105 = !{!103, !8, i64 16}
!106 = !{!32, !8, i64 8}
!107 = !{!32, !8, i64 24}
!108 = !{!32, !8, i64 88}
!109 = !{!32, !8, i64 96}
!110 = !{!32, !8, i64 104}
!111 = !{!32, !8, i64 120}
!112 = !{!32, !8, i64 128}
!113 = !{!32, !8, i64 136}
!114 = !{!32, !8, i64 144}
!115 = !{!32, !8, i64 168}
!116 = !{!32, !8, i64 184}
!117 = !{!32, !8, i64 32}
!118 = !{!16, !8, i64 16}
!119 = !{!16, !5, i64 556}
!120 = !{!16, !5, i64 968}
!121 = !{!16, !8, i64 1040}
!122 = distinct !{!122, !76, !77}
!123 = distinct !{!123, !77, !76}
!124 = distinct !{!124, !87}
!125 = distinct !{!125, !76, !77}
!126 = distinct !{!126, !77, !76}
!127 = distinct !{!127, !87}
!128 = distinct !{!128, !76, !77}
!129 = distinct !{!129, !87}
!130 = distinct !{!130, !76}
!131 = distinct !{!131, !87}
!132 = distinct !{!132, !76, !77}
!133 = distinct !{!133, !87}
!134 = distinct !{!134, !76}
!135 = !{!16, !12, i64 864}
!136 = !{!16, !10, i64 632}
!137 = !{!16, !10, i64 792}
!138 = !{!16, !10, i64 800}
!139 = !{!16, !10, i64 640}
!140 = !{!16, !5, i64 608}
!141 = !{!16, !10, i64 744}
!142 = !{!16, !10, i64 760}
!143 = !{!16, !8, i64 1024}
!144 = !{!16, !5, i64 620}
!145 = !{!16, !5, i64 624}
!146 = !{!16, !10, i64 696}
!147 = !{!16, !8, i64 1008}
!148 = !{!16, !10, i64 704}
!149 = !{!16, !10, i64 720}
!150 = !{!16, !10, i64 712}
!151 = !{!"p1 _ZTS31_generic_SUNNonlinearSolver_Ops", !8, i64 0}
!152 = !{!"_generic_SUNNonlinearSolver", !8, i64 0, !8, i64 8, !151, i64 16, !9, i64 24}
!153 = !{!152, !151, i64 16}
!154 = !{!"_generic_SUNNonlinearSolver_Ops", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136}
!155 = !{!154, !8, i64 16}
!156 = !{!16, !12, i64 896}
!157 = !{!16, !12, i64 904}
!158 = !{!16, !12, i64 1192}
!159 = !{!16, !12, i64 1200}
!160 = !{!16, !10, i64 664}
!161 = !{!16, !5, i64 616}
!162 = !{!16, !5, i64 768}
!163 = !{!16, !10, i64 848}
!164 = !{!16, !10, i64 840}
!165 = !{!16, !5, i64 772}
!166 = !{!16, !10, i64 808}
!167 = !{!16, !10, i64 824}
!168 = !{!16, !10, i64 816}
!169 = !{!16, !10, i64 832}
!170 = !{!32, !8, i64 176}
!171 = !{!16, !8, i64 1000}
!172 = distinct !{!172, !76, !77}
!173 = distinct !{!173, !87}
!174 = distinct !{!174, !76}
!175 = distinct !{null}
!176 = distinct !{!176, !76, !77}
!177 = distinct !{!177, !87}
!178 = distinct !{!178, !76}
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/ida?download=true
inline.NumInlined: 26
inline.NumDeleted: 18
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@IDAStopTest1:bb.a
  %i.w = fcmp ult double %i.v, 0.000000e+00
  %i.x = tail call double @llvm.fabs.f64(double %i.u)
  %i.y = fcmp ugt double %i.x, %i.r
  %or.cond = and i1 %i.w, %i.y
  br i1 %or.cond, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = tail call i32 @IDAGetSolution(ptr noundef nonnull %0, double noundef %i.f, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %.not71 = icmp eq i32 %i.z, 0
  %i.aa = load double, ptr %i.e, align 8, !tbaa !120 ; 3 uses
  br i1 %.not71, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = load double, ptr %i.c, align 8, !tbaa !76
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 2208, ptr noundef nonnull @__func__.IDAStopTest1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.19, double noundef %i.aa, double noundef %i.ab)
  br label %bb.t

bb.h:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 680
  store double %i.aa, ptr %i.ac, align 8, !tbaa !127
  store double %i.aa, ptr %2, align 8, !tbaa !21
  store i32 0, ptr %i.a, align 8, !tbaa !119
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
  store double %i.aj, ptr %i.h, align 8, !tbaa !115
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j, %bb.i, %bb.a
  switch i32 %5, label %bb.t [
    i32 1, label %bb.l
    i32 2, label %bb.r
  ]

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 3 uses
  %i.al = load double, ptr %i.ak, align 8, !tbaa !127
  %i.am = fcmp oeq double %1, %i.al
  br i1 %i.am, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store double %1, ptr %i.ak, align 8, !tbaa !127
  store double %1, ptr %2, align 8, !tbaa !21
  br label %bb.t

bb.n:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.ao = load double, ptr %i.an, align 8, !tbaa !76
  %i.ap = fsub double %i.ao, %1
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !115
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
  store double %1, ptr %i.ak, align 8, !tbaa !127
  store double %1, ptr %2, align 8, !tbaa !21
  br label %bb.t

bb.r:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !76 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !127
  %i.az = fsub double %i.aw, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !115
  %i.bc = fmul double %i.az, %i.bb
  %i.bd = fcmp ogt double %i.bc, 0.000000e+00
  br i1 %i.bd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.be = tail call i32 @IDAGetSolution(ptr noundef nonnull %0, double noundef %i.aw, ptr noundef nonnull %3, ptr noundef nonnull %4) ; 0 uses
  %i.bf = load double, ptr %i.av, align 8, !tbaa !76 ; 2 uses
  store double %i.bf, ptr %i.ax, align 8, !tbaa !127
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
  %i.b = load double, ptr %i.a, align 8, !tbaa !76
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.d = load double, ptr %i.c, align 8, !tbaa !115
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -3, i32 noundef 2365, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.38, double noundef %i.b, double noundef %i.d)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.f = load double, ptr %i.e, align 8, !tbaa !76
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.h = load double, ptr %i.g, align 8, !tbaa !115
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -4, i32 noundef 2370, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.39, double noundef %i.f, double noundef %i.h)
  br label %bb.n

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.j = load double, ptr %i.i, align 8, !tbaa !76
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -6, i32 noundef 2375, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.40, double noundef %i.j)
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.l = load double, ptr %i.k, align 8, !tbaa !76
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -7, i32 noundef 2380, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.41, double noundef %i.l)
  br label %bb.n

bb.f:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.n = load double, ptr %i.m, align 8, !tbaa !76
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -9, i32 noundef 2385, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.42, double noundef %i.n)
  br label %bb.n

bb.g:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.p = load double, ptr %i.o, align 8, !tbaa !76
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -8, i32 noundef 2390, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.43, double noundef %i.p)
  br label %bb.n

bb.h:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.r = load double, ptr %i.q, align 8, !tbaa !76
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -11, i32 noundef 2395, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.44, double noundef %i.r)
  br label %bb.n

bb.i:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, i32 noundef 2400, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3)
  br label %bb.n

bb.j:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.t = load double, ptr %i.s, align 8, !tbaa !76
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -20, i32 noundef 2404, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.45, double noundef %i.t)
  br label %bb.n

bb.k:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.v = load double, ptr %i.u, align 8, !tbaa !76
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -16, i32 noundef 2409, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.46, double noundef %i.v)
  br label %bb.n

bb.l:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.x = load double, ptr %i.w, align 8, !tbaa !76
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
  %i.b = alloca [6 x double], align 16            ; 7 uses
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
  %i.g = load i32, ptr %i.f, align 4, !tbaa !78   ; 2 uses
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
  %i.m = load double, ptr %i.l, align 8, !tbaa !76 ; 4 uses
  %i.n = tail call double @llvm.fabs.f64(double %i.m)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.p = load double, ptr %i.o, align 8, !tbaa !115 ; 3 uses
  %i.q = tail call double @llvm.fabs.f64(double %i.p)
  %i.r = fadd double %i.n, %i.q
  %i.s = fmul double %i.k, %i.r                   ; 2 uses
  %i.t = fcmp olt double %i.p, 0.000000e+00
  %i.u = fneg double %i.s
  %.077 = select i1 %i.t, double %i.u, double %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.w = load double, ptr %i.v, align 8, !tbaa !79
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
  %i.ac = fsub double %1, %i.m                    ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
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
  %indvars.iv101 = phi i64 [ 1, %.lr.ph95 ], [ %indvars.iv.next102, %.loopexit ] ; 4 uses
  %indvar = phi i64 [ 0, %.lr.ph95 ], [ %indvar.next, %.loopexit ] ; 14 uses
  %4 = add nuw i64 %indvar, %i.af
  %smax113 = tail call i64 @llvm.smax.i64(i64 %4, i64 %indvars.iv101) ; 2 uses
  %5 = sub i64 %smax113, %indvar
  %.neg = add nuw i64 %indvar, 1
  %6 = shl i64 %indvar, 3
  %scevgep113 = getelementptr i8, ptr %i.a, i64 %6
  %indvars106 = trunc i64 %indvars.iv101 to i32
  %i.ah = shl nuw nsw i64 %indvar, 3
  %i.ai = add nuw nsw i64 %i.ah, 8                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.ai
  %scevgep100 = getelementptr i8, ptr %i.a, i64 %i.ai
  %i.aj = trunc i64 %indvar to i32
  %i.ak = add i32 %i.ae, %i.aj
  %smax = tail call i32 @llvm.smax.i32(i32 %i.ak, i32 %indvars106)
  %i.al = trunc i64 %indvar to i32
  %i.am = xor i32 %i.al, -1
  %i.an = add i32 %smax, %i.am
  %i.ao = zext i32 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.ao, 3
  %i.aq = add nuw nsw i64 %i.ap, 8
  %sext = shl i64 %indvars.iv101, 32
  %i.ar = ashr exact i64 %sext, 32                ; 4 uses
  %i.as = icmp eq i64 %indvar, 0
  br i1 %i.as, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store double 1.000000e+00, ptr %i.a, align 16, !tbaa !21
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.at = add nsw i64 %indvar, -1                 ; 2 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.at
  %i.av = load double, ptr %i.au, align 8, !tbaa !21
  %i.aw = trunc nuw nsw i64 %indvar to i32
  %i.ax = uitofp nneg i32 %i.aw to double
  %i.ay = fmul double %i.av, %i.ax
  %i.az = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.at
  %i.ba = load double, ptr %i.az, align 8, !tbaa !21 ; 2 uses
  %i.bb = fdiv double %i.ay, %i.ba
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvar
  store double %i.bb, ptr %i.bc, align 8, !tbaa !21
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.075 = phi double [ 0.000000e+00, %bb.k ], [ %i.ba, %bb.l ] ; 2 uses
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %i.bd = add nuw nsw i64 %indvar, %i.af
  br i1 %.not8387, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.be = trunc nuw nsw i64 %indvar to i32
  %i.bf = uitofp nneg i32 %i.be to double         ; 3 uses
  %load_initial = load double, ptr %scevgep113, align 8 ; 2 uses
  %xtraiter = and i64 %5, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %7 = add nsw i64 %i.ar, -1                      ; 2 uses
  %8 = getelementptr inbounds [8 x i8], ptr %i.b, i64 %7
  %9 = load double, ptr %8, align 8, !tbaa !21
  %10 = fadd double %i.ac, %.075
  %11 = fmul double %10, %load_initial
  %12 = tail call double @llvm.fmuladd.f64(double %i.bf, double %9, double %11)
  %13 = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %7
  %14 = load double, ptr %13, align 8, !tbaa !21  ; 2 uses
  %15 = fdiv double %12, %14                      ; 2 uses
  %16 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ar
  store double %15, ptr %16, align 8, !tbaa !21
  %indvars.iv.next98.prol = add nuw nsw i64 %i.ar, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %store_forwarded.unr = phi double [ %load_initial, %.lr.ph ], [ %15, %.prol.loopexit.unr-lcssa ]
  %indvars.iv97.unr = phi i64 [ %i.ar, %.lr.ph ], [ %indvars.iv.next98.prol, %.prol.loopexit.unr-lcssa ]
  %.17688.unr = phi double [ %.075, %.lr.ph ], [ %14, %.prol.loopexit.unr-lcssa ]
  %17 = icmp eq i64 %smax113, %.neg
  br i1 %17, label %.lr.ph92.preheader, label %bb.n

.lr.ph92.preheader:                               ; preds = %bb.n, %.prol.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %scevgep100, i64 %i.aq, i1 false), !tbaa !21
  br label %.loopexit

bb.n:                                             ; preds = %.prol.loopexit, %bb.n
  %store_forwarded = phi double [ %i.bo, %bb.n ], [ %store_forwarded.unr, %.prol.loopexit ]
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %bb.n ], [ %indvars.iv97.unr, %.prol.loopexit ] ; 6 uses
  %.17688 = phi double [ %i.bn, %bb.n ], [ %.17688.unr, %.prol.loopexit ]
  %18 = add nsw i64 %indvars.iv97, -1             ; 2 uses
  %19 = getelementptr inbounds [8 x i8], ptr %i.b, i64 %18
  %20 = load double, ptr %19, align 8, !tbaa !21
  %21 = fadd double %i.ac, %.17688
  %22 = fmul double %21, %store_forwarded
  %23 = tail call double @llvm.fmuladd.f64(double %i.bf, double %20, double %22)
  %24 = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %18
  %25 = load double, ptr %24, align 8, !tbaa !21  ; 2 uses
  %26 = fdiv double %23, %25                      ; 2 uses
  %27 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv97
  store double %26, ptr %27, align 8, !tbaa !21
  %i.bg = add nuw nsw i64 %indvars.iv97, 1        ; 2 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv97
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !21
  %i.bj = fadd double %i.ac, %25
  %i.bk = fmul double %i.bj, %26
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.bf, double %i.bi, double %i.bk)
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %indvars.iv97
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !21 ; 2 uses
  %i.bo = fdiv double %i.bl, %i.bn                ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bg
  store double %i.bo, ptr %i.bp, align 8, !tbaa !21
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 2
  %.not83.not = icmp slt i64 %i.bg, %i.bd
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !67
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.e = load double, ptr %i.d, align 8, !tbaa !128
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
  %i.d = load i32, ptr %i.c, align 8, !tbaa !77
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 976 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !140
  %i.g = tail call i32 @SUNNonlinSolFree(ptr noundef %i.f) #13 ; 0 uses
  store i32 0, ptr %i.c, align 8, !tbaa !77
  store ptr null, ptr %i.e, align 8, !tbaa !140
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
  %i.l = load i32, ptr %i.k, align 8, !tbaa !84
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 1120 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !101
  tail call void @free(ptr noundef %i.o) #13
  store ptr null, ptr %i.n, align 8, !tbaa !101
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 1128 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !102
  tail call void @free(ptr noundef %i.q) #13
  store ptr null, ptr %i.p, align 8, !tbaa !102
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 1136 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !103
  tail call void @free(ptr noundef %i.s) #13
  store ptr null, ptr %i.r, align 8, !tbaa !103
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1080 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !104
  tail call void @free(ptr noundef %i.u) #13
  store ptr null, ptr %i.t, align 8, !tbaa !104
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 1088 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !105
  tail call void @free(ptr noundef %i.w) #13
  store ptr null, ptr %i.v, align 8, !tbaa !105
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 1168 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !106
  tail call void @free(ptr noundef %i.y) #13
  store ptr null, ptr %i.x, align 8, !tbaa !106
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
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"IDAMemRec", !10, i64 0, !12, i64 8, !11, i64 16, !11, i64 24, !5, i64 32, !12, i64 40, !12, i64 48, !13, i64 56, !5, i64 64, !5, i64 68, !11, i64 72, !11, i64 80, !5, i64 88, !6, i64 96, !6, i64 144, !6, i64 192, !6, i64 240, !6, i64 288, !6, i64 336, !13, i64 384, !13, i64 392, !13, i64 400, !13, i64 408, !13, i64 416, !13, i64 424, !13, i64 432, !13, i64 440, !13, i64 448, !13, i64 456, !13, i64 464, !13, i64 472, !13, i64 480, !13, i64 488, !13, i64 496, !13, i64 504, !12, i64 512, !13, i64 520, !13, i64 528, !5, i64 536, !5, i64 540, !5, i64 544, !5, i64 548, !5, i64 552, !5, i64 556, !5, i64 560, !5, i64 564, !12, i64 568, !12, i64 576, !12, i64 584, !5, i64 592, !12, i64 600, !5, i64 608, !5, i64 612, !5, i64 616, !5, i64 620, !5, i64 624, !12, i64 632, !12, i64 640, !12, i64 648, !12, i64 656, !12, i64 664, !12, i64 672, !12, i64 680, !12, i64 688, !12, i64 696, !12, i64 704, !12, i64 712, !12, i64 720, !12, i64 728, !12, i64 736, !12, i64 744, !12, i64 752, !12, i64 760, !5, i64 768, !5, i64 772, !5, i64 776, !5, i64 780, !14, i64 784, !12, i64 792, !12, i64 800, !12, i64 808, !12, i64 816, !12, i64 824, !12, i64 832, !12, i64 840, !12, i64 848, !12, i64 856, !14, i64 864, !14, i64 872, !14, i64 880, !14, i64 888, !14, i64 896, !14, i64 904, !14, i64 912, !14, i64 920, !14, i64 928, !14, i64 936, !14, i64 944, !12, i64 952, !5, i64 960, !5, i64 964, !5, i64 968, !5, i64 972, !15, i64 976, !5, i64 984, !11, i64 992, !11, i64 1000, !11, i64 1008, !11, i64 1016, !11, i64 1024, !11, i64 1032, !11, i64 1040, !12, i64 1048, !5, i64 1056, !11, i64 1064, !5, i64 1072, !16, i64 1080, !16, i64 1088, !12, i64 1096, !12, i64 1104, !12, i64 1112, !17, i64 1120, !17, i64 1128, !17, i64 1136, !12, i64 1144, !5, i64 1152, !14, i64 1160, !16, i64 1168, !5, i64 1176, !13, i64 1184, !14, i64 1192, !14, i64 1200, !5, i64 1208, !6, i64 1216, !6, i64 1264, !6, i64 1304, !6, i64 1352}
!10 = !{!"p1 _ZTS11SUNContext_", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"double", !6, i64 0}
!13 = !{!"p1 _ZTS17_generic_N_Vector", !11, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!"p1 _ZTS27_generic_SUNNonlinearSolver", !11, i64 0}
!16 = !{!"p1 int", !11, i64 0}
!17 = !{!"p1 double", !11, i64 0}
!18 = !{!9, !12, i64 8}
!19 = !{!9, !5, i64 64}
!20 = !{!9, !14, i64 784}
!21 = !{!12, !12, i64 0}
!22 = !{!9, !12, i64 856}
!23 = !{!9, !12, i64 752}
!24 = !{!9, !12, i64 1048}
!25 = !{!9, !5, i64 1208}
!26 = !{!5, !5, i64 0}
!27 = !{!9, !5, i64 544}
!28 = !{!9, !5, i64 548}
!29 = !{!9, !5, i64 552}
!30 = !{!9, !5, i64 564}
!31 = !{!9, !14, i64 936}
!32 = !{!9, !14, i64 944}
!33 = !{!34, !36, i64 24}
!34 = !{!"SUNContext_", !11, i64 0, !35, i64 8, !5, i64 16, !36, i64 24, !5, i64 32, !5, i64 36, !37, i64 40, !5, i64 48}
!35 = !{!"p1 _ZTS12SUNProfiler_", !11, i64 0}
!36 = !{!"p1 _ZTS10SUNLogger_", !11, i64 0}
!37 = !{!"p1 _ZTS14SUNErrHandler_", !11, i64 0}
!38 = !{!34, !5, i64 36}
!39 = !{!37, !37, i64 0}
!40 = !{!41, !11, i64 8}
!41 = !{!"SUNErrHandler_", !37, i64 0, !11, i64 8, !11, i64 16}
!42 = !{!41, !11, i64 16}
!43 = distinct !{null}
!44 = !{!45, !46, i64 8}
!45 = !{!"_generic_N_Vector", !11, i64 0, !46, i64 8, !10, i64 16}
!46 = !{!"p1 _ZTS21_generic_N_Vector_Ops", !11, i64 0}
!47 = !{!48, !11, i64 8}
!48 = !{!"_generic_N_Vector_Ops", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !11, i64 368, !11, i64 376, !11, i64 384, !11, i64 392, !11, i64 400, !11, i64 408, !11, i64 416, !11, i64 424, !11, i64 432, !11, i64 440}
!49 = !{!48, !11, i64 24}
!50 = !{!48, !11, i64 88}
!51 = !{!48, !11, i64 96}
!52 = !{!48, !11, i64 104}
!53 = !{!48, !11, i64 120}
!54 = !{!48, !11, i64 128}
!55 = !{!48, !11, i64 136}
!56 = !{!48, !11, i64 144}
!57 = !{!48, !11, i64 168}
!58 = !{!48, !11, i64 184}
!59 = !{!48, !11, i64 32}
!60 = !{!14, !14, i64 0}
!61 = !{!9, !14, i64 920}
!62 = !{!9, !14, i64 928}
!63 = !{!9, !13, i64 384}
!64 = !{!9, !13, i64 448}
!65 = !{!9, !13, i64 424}
!66 = !{!9, !13, i64 408}
!67 = !{!9, !13, i64 416}
!68 = !{!9, !13, i64 440}
!69 = !{!9, !13, i64 456}
!70 = !{!9, !13, i64 464}
!71 = !{!9, !13, i64 472}
!72 = !{!9, !5, i64 776}
!73 = !{!13, !13, i64 0}
!74 = !{!9, !5, i64 780}
!75 = !{!9, !11, i64 16}
!76 = !{!9, !12, i64 672}
!77 = !{!9, !5, i64 984}
!78 = !{!9, !5, i64 612}
!79 = !{!9, !12, i64 656}
!80 = !{!9, !12, i64 952}
!81 = !{!9, !5, i64 1152}
!82 = !{!9, !5, i64 556}
!83 = !{!9, !11, i64 1064}
!84 = !{!9, !5, i64 1072}
!85 = !{!9, !5, i64 1176}
!86 = !{!9, !5, i64 960}
!87 = !{!9, !5, i64 972}
!88 = !{!9, !5, i64 964}
!89 = !{!9, !13, i64 56}
!90 = !{!9, !13, i64 1184}
!91 = !{!9, !5, i64 968}
!92 = !{!9, !13, i64 432}
!93 = !{!9, !14, i64 1160}
!94 = !{!9, !11, i64 1040}
!95 = !{!9, !12, i64 40}
!96 = !{!9, !12, i64 48}
!97 = !{!9, !5, i64 32}
!98 = !{!9, !5, i64 68}
!99 = !{!9, !11, i64 72}
!100 = !{!9, !11, i64 80}
!101 = !{!9, !17, i64 1120}
!102 = !{!9, !17, i64 1128}
!103 = !{!9, !17, i64 1136}
!104 = !{!9, !16, i64 1080}
!105 = !{!9, !16, i64 1088}
!106 = !{!9, !16, i64 1168}
!107 = distinct !{!107, !108, !109}
!108 = !{!"llvm.loop.isvectorized", i32 1}
!109 = !{!"llvm.loop.unroll.runtime.disable"}
!110 = distinct !{!110, !109, !108}
!111 = !{!9, !13, i64 392}
!112 = !{!9, !13, i64 400}
!113 = !{!9, !14, i64 864}
!114 = !{!9, !12, i64 632}
!115 = !{!9, !12, i64 648}
!116 = !{!9, !5, i64 88}
!117 = !{!9, !12, i64 792}
!118 = !{!9, !12, i64 800}
!119 = !{!9, !5, i64 592}
!120 = !{!9, !12, i64 600}
!121 = !{!9, !12, i64 640}
!122 = !{!9, !5, i64 608}
!123 = !{!9, !12, i64 744}
!124 = !{!9, !12, i64 760}
!125 = !{!9, !11, i64 1024}
!126 = !{!9, !12, i64 1096}
!127 = !{!9, !12, i64 680}
!128 = !{!9, !12, i64 688}
!129 = !{!9, !5, i64 620}
!130 = !{!9, !5, i64 624}
!131 = distinct !{!131, !132}
!132 = !{!"llvm.loop.unroll.disable"}
!133 = !{!9, !12, i64 696}
!134 = distinct !{!134, !108, !109}
!135 = distinct !{!135, !109, !108}
!136 = !{!9, !11, i64 1008}
!137 = !{!9, !12, i64 704}
!138 = !{!9, !12, i64 720}
!139 = !{!9, !12, i64 712}
!140 = !{!9, !15, i64 976}
!141 = !{!142, !143, i64 16}
!142 = !{!"_generic_SUNNonlinearSolver", !11, i64 0, !11, i64 8, !143, i64 16, !10, i64 24}
!143 = !{!"p1 _ZTS31_generic_SUNNonlinearSolver_Ops", !11, i64 0}
!144 = !{!145, !11, i64 16}
!145 = !{!"_generic_SUNNonlinearSolver_Ops", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136}
!146 = !{!9, !14, i64 896}
!147 = !{!9, !14, i64 904}
!148 = !{!9, !14, i64 1192}
!149 = !{!9, !14, i64 1200}
!150 = !{!9, !12, i64 664}
!151 = distinct !{!151, !132}
!152 = distinct !{!152, !108, !109}
!153 = distinct !{!153, !132}
!154 = distinct !{!154, !108}
!155 = !{!9, !5, i64 616}
!156 = distinct !{!156, !132}
!157 = distinct !{!157, !108, !109}
!158 = distinct !{!158, !132}
!159 = distinct !{!159, !108}
!160 = !{!9, !5, i64 768}
!161 = !{!9, !12, i64 848}
!162 = !{!9, !12, i64 840}
!163 = !{!9, !5, i64 772}
!164 = !{!9, !12, i64 808}
!165 = !{!9, !12, i64 824}
!166 = !{!9, !12, i64 816}
!167 = !{!9, !12, i64 832}
!168 = !{!48, !11, i64 176}
!169 = !{!9, !11, i64 24}
!170 = !{!9, !11, i64 1000}
!171 = !{!9, !12, i64 1144}
!172 = !{!9, !12, i64 1104}
!173 = !{!9, !12, i64 1112}
!174 = distinct !{!174, !108, !109}
!175 = distinct !{!175, !132}
!176 = distinct !{!176, !108}
!177 = distinct !{null}
!178 = distinct !{!178, !108, !109}
end_hunk_0

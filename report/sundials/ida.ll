inline.NumInlined: 26
inline.NumDeleted: 18
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@IDAStopTest1:bb.a
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
  %i.a = alloca [6 x double], align 16            ; 10 uses
  %i.b = alloca [6 x double], align 16            ; 5 uses
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
  %.078 = select i1 %i.t, double %i.u, double %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.w = load double, ptr %i.v, align 8, !tbaa !79
  %i.x = fsub double %i.m, %i.w                   ; 2 uses
  %i.y = fsub double %i.x, %.078
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
  %i.ac = fsub double %1, %i.m
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ae = sub nsw i32 %i.g, %2                    ; 4 uses
  %4 = zext nneg i32 %i.ae to i64
  %i.af = add nuw i32 %2, 1
  %wide.trip.count = zext i32 %i.af to i64
  %.not8387 = icmp slt i32 %i.ae, 1
  %scevgep113 = getelementptr i8, ptr %i.a, i64 -8
  br label %bb.j

.loopexit:                                        ; preds = %bb.m, %.lr.ph92.preheader
  %indvars.iv.next102 = add nuw i64 %indvars.iv101, 1
  %exitcond.not = icmp eq i64 %indvar.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %.lr.ph95, %.loopexit
  %indvars.iv101 = phi i64 [ 1, %.lr.ph95 ], [ %indvars.iv.next102, %.loopexit ] ; 4 uses
  %indvar = phi i64 [ 0, %.lr.ph95 ], [ %indvar.next, %.loopexit ] ; 10 uses
  %sext115 = shl i64 %indvars.iv101, 32
  %i.ag = ashr exact i64 %sext115, 29
  %scevgep114 = getelementptr i8, ptr %scevgep113, i64 %i.ag
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
  %i.ar = ashr exact i64 %sext, 32
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
  %.076 = phi double [ 0.000000e+00, %bb.k ], [ %i.ba, %bb.l ]
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %i.bd = add nuw nsw i64 %indvar, %4
  br i1 %.not8387, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.be = trunc nuw nsw i64 %indvar to i32
  %i.bf = uitofp nneg i32 %i.be to double
  %load_initial = load double, ptr %scevgep114, align 8
  br label %bb.n

.lr.ph92.preheader:                               ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %scevgep100, i64 %i.aq, i1 false), !tbaa !21
  br label %.loopexit

bb.n:                                             ; preds = %.lr.ph, %bb.n
  %store_forwarded = phi double [ %load_initial, %.lr.ph ], [ %i.bo, %bb.n ]
  %indvars.iv97 = phi i64 [ %i.ar, %.lr.ph ], [ %indvars.iv.next98, %bb.n ] ; 4 uses
  %.17788 = phi double [ %.076, %.lr.ph ], [ %i.bn, %bb.n ]
  %i.bg = add nsw i64 %indvars.iv97, -1           ; 2 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.bg
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !21
  %i.bj = fadd double %i.ac, %.17788
  %i.bk = fmul double %i.bj, %store_forwarded
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.bf, double %i.bi, double %i.bk)
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.bg
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !21 ; 2 uses
  %i.bo = fdiv double %i.bl, %i.bn                ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv97
  store double %i.bo, ptr %i.bp, align 8, !tbaa !21
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1
  %.not83.not = icmp slt i64 %indvars.iv97, %i.bd
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
  %.0 = phi i32 [ -20, %bb.b ], [ -27, %bb.d ], [ -25, %bb.g ], [ -26, %bb.i ], [ %., %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.0
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
end_hunk_0

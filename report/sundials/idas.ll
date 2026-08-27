Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/idas?download=true
inline.NumInlined: 61
inline.NumDeleted: 41
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 34
begin_hunk_0_@IDAQuadSensEwtSet:bb.a

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i12
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !58
  tail call void @N_VInv(ptr noundef %i.z, ptr noundef %i.as) #14
  %indvars.iv.next.i14 = add nuw nsw i64 %indvars.iv.i12, 1 ; 2 uses
  %i.at = load i32, ptr %i.aa, align 8, !tbaa !149
  %i.au = sext i32 %i.at to i64
  %i.av = icmp slt i64 %indvars.iv.next.i14, %i.au
  br i1 %i.av, label %bb.e, label %IDAQuadSensEwtSetEE.exit

bb.h:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !137 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !149
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph.i15, label %IDAQuadSensEwtSetEE.exit

.lr.ph.i15:                                       ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 336
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %.lr.ph.i15
  %indvars.iv.i16 = phi i64 [ 0, %.lr.ph.i15 ], [ %indvars.iv.next.i18, %bb.k ] ; 5 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !58
  tail call void @N_VAbs(ptr noundef %i.bf, ptr noundef %i.ax) #14
  %i.bg = load double, ptr %i.bb, align 8, !tbaa !198
  %i.bh = load ptr, ptr %i.bc, align 8, !tbaa !203
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.i16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !58
  tail call void @N_VLinearSum(double noundef %i.bg, ptr noundef %i.ax, double noundef 1.000000e+00, ptr noundef %i.bj, ptr noundef %i.ax) #14
  %i.bk = load ptr, ptr %i.bd, align 8, !tbaa !201
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv.i16
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !29
  %.not.i17 = icmp eq i32 %i.bm, 0
  br i1 %.not.i17, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bn = tail call double @N_VMin(ptr noundef %i.ax) #14
  %i.bo = fcmp ugt double %i.bn, 0.000000e+00
  br i1 %i.bo, label %bb.k, label %IDAQuadSensEwtSetEE.exit

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !58
  tail call void @N_VInv(ptr noundef %i.ax, ptr noundef %i.bq) #14
  %indvars.iv.next.i18 = add nuw nsw i64 %indvars.iv.i16, 1 ; 2 uses
  %i.br = load i32, ptr %i.ay, align 8, !tbaa !149
  %i.bs = sext i32 %i.br to i64
  %i.bt = icmp slt i64 %indvars.iv.next.i18, %i.bs
  br i1 %i.bt, label %bb.i, label %IDAQuadSensEwtSetEE.exit

IDAQuadSensEwtSetEE.exit:                         ; preds = %bb.k, %bb.j, %bb.g, %bb.f, %bb.c, %.lr.ph.i, %bb.h, %bb.d, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.h ], [ -1, %bb.f ], [ 0, %bb.b ], [ -1, %.lr.ph.i ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.g ], [ -1, %bb.j ], [ 0, %bb.k ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -99, -2) i32 @IDAHandleFailure(ptr nofree noundef nonnull readonly captures(address_is_null) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  switch i32 %1, label %bb.s [
    i32 -3, label %bb.b
    i32 -4, label %bb.c
    i32 -6, label %bb.d
    i32 -7, label %bb.e
    i32 -9, label %bb.f
    i32 -8, label %bb.g
    i32 -33, label %bb.h
    i32 -31, label %bb.i
    i32 -42, label %bb.j
    i32 -41, label %bb.k
    i32 -53, label %bb.l
    i32 -51, label %bb.m
    i32 -11, label %bb.n
    i32 -20, label %bb.o
    i32 -9999, label %bb.p
    i32 -16, label %bb.q
    i32 -17, label %bb.r
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.b = load double, ptr %i.a, align 8, !tbaa !104
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.d = load double, ptr %i.c, align 8, !tbaa !216
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -3, i32 noundef 5773, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.70, double noundef %i.b, double noundef %i.d)
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.f = load double, ptr %i.e, align 8, !tbaa !104
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.h = load double, ptr %i.g, align 8, !tbaa !216
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -4, i32 noundef 5778, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.71, double noundef %i.f, double noundef %i.h)
  br label %bb.t

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.j = load double, ptr %i.i, align 8, !tbaa !104
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -6, i32 noundef 5783, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.72, double noundef %i.j)
  br label %bb.t

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.l = load double, ptr %i.k, align 8, !tbaa !104
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -7, i32 noundef 5788, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.73, double noundef %i.l)
  br label %bb.t

bb.f:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.n = load double, ptr %i.m, align 8, !tbaa !104
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -9, i32 noundef 5793, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.74, double noundef %i.n)
  br label %bb.t

bb.g:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.p = load double, ptr %i.o, align 8, !tbaa !104
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -8, i32 noundef 5798, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.75, double noundef %i.p)
  br label %bb.t

bb.h:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.r = load double, ptr %i.q, align 8, !tbaa !104
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -33, i32 noundef 5803, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.76, double noundef %i.r)
  br label %bb.t

bb.i:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.t = load double, ptr %i.s, align 8, !tbaa !104
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -31, i32 noundef 5808, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.66, double noundef %i.t)
  br label %bb.t

bb.j:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.v = load double, ptr %i.u, align 8, !tbaa !104
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -42, i32 noundef 5813, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.77, double noundef %i.v)
  br label %bb.t

bb.k:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.x = load double, ptr %i.w, align 8, !tbaa !104
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -41, i32 noundef 5818, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.78, double noundef %i.x)
  br label %bb.t

bb.l:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.z = load double, ptr %i.y, align 8, !tbaa !104
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -53, i32 noundef 5823, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.79, double noundef %i.z)
  br label %bb.t

bb.m:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !104
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -51, i32 noundef 5828, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.68, double noundef %i.ab)
  br label %bb.t

bb.n:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !104
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -11, i32 noundef 5833, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.80, double noundef %i.ad)
  br label %bb.t

bb.o:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, i32 noundef 5838, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3)
  br label %bb.t

bb.p:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.af = load double, ptr %i.ae, align 8, !tbaa !104
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -20, i32 noundef 5842, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.81, double noundef %i.af)
  br label %bb.t

bb.q:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !104
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -16, i32 noundef 5847, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.82, double noundef %i.ah)
  br label %bb.t

bb.r:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !104
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -17, i32 noundef 5851, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.83, double noundef %i.aj)
  br label %bb.t

bb.s:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -99, i32 noundef 5857, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.84)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ -99, %bb.s ], [ -3, %bb.b ], [ -4, %bb.c ], [ -6, %bb.d ], [ -7, %bb.e ], [ -9, %bb.f ], [ -8, %bb.g ], [ -33, %bb.h ], [ -31, %bb.i ], [ -42, %bb.j ], [ -41, %bb.k ], [ -53, %bb.l ], [ -51, %bb.m ], [ -11, %bb.n ], [ -20, %bb.o ], [ -20, %bb.p ], [ -16, %bb.q ], [ -17, %bb.r ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -28, 1) i32 @IDAGetDky(ptr noundef %0, double noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [6 x double], align 16            ; 10 uses
  %i.b = alloca [6 x double], align 16            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, i32 noundef 3113, ptr noundef nonnull @__func__.IDAGetDky, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3)
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq ptr %3, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -27, i32 noundef 3122, ptr noundef nonnull @__func__.IDAGetDky, ptr noundef nonnull @.str, ptr noundef nonnull @.str.49)
  br label %bb.o

bb.e:                                             ; preds = %bb.c
  %i.e = icmp slt i32 %2, 0
  br i1 %i.e, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1204
  %i.g = load i32, ptr %i.f, align 4, !tbaa !112  ; 2 uses
  %i.h = icmp sgt i32 %2, %i.g
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -25, i32 noundef 3130, ptr noundef nonnull @__func__.IDAGetDky, ptr noundef nonnull @.str, ptr noundef nonnull @.str.50)
  br label %bb.o

bb.h:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load double, ptr %i.i, align 8, !tbaa !21
  %i.k = fmul double %i.j, 1.000000e+02
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.m = load double, ptr %i.l, align 8, !tbaa !104 ; 4 uses
  %i.n = tail call double @llvm.fabs.f64(double %i.m)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.p = load double, ptr %i.o, align 8, !tbaa !216 ; 3 uses
  %i.q = tail call double @llvm.fabs.f64(double %i.p)
  %i.r = fadd double %i.n, %i.q
  %i.s = fmul double %i.k, %i.r                   ; 2 uses
  %i.t = fcmp olt double %i.p, 0.000000e+00
  %i.u = fneg double %i.s
  %.077 = select i1 %i.t, double %i.u, double %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.w = load double, ptr %i.v, align 8, !tbaa !113
  %i.x = fsub double %i.m, %i.w                   ; 2 uses
  %i.y = fsub double %i.x, %.077
  %i.z = fsub double %1, %i.y
  %i.aa = fmul double %i.p, %i.z
  %i.ab = fcmp olt double %i.aa, 0.000000e+00
  br i1 %i.ab, label %bb.i, label %.lr.ph95

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -26, i32 noundef 3143, ptr noundef nonnull @__func__.IDAGetDky, ptr noundef nonnull @.str, ptr noundef nonnull @.str.51, double noundef %1, double noundef %i.x, double noundef %i.m)
  br label %bb.o

.lr.ph95:                                         ; preds = %bb.h
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, i8 0, i64 48, i1 false), !tbaa !24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.b, i8 0, i64 48, i1 false), !tbaa !24
  %i.ac = fsub double %1, %i.m
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.ae = sub nsw i32 %i.g, %2                    ; 4 uses
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = add nuw i32 %2, 1
  %wide.trip.count = zext i32 %i.ag to i64
  %.not8387 = icmp slt i32 %i.ae, 1
  %scevgep112 = getelementptr i8, ptr %i.a, i64 -8
  br label %bb.j

.loopexit:                                        ; preds = %bb.m, %.lr.ph92.preheader
  %indvars.iv.next102 = add nuw i64 %indvars.iv101, 1
  %exitcond.not = icmp eq i64 %indvar.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %.lr.ph95, %.loopexit
  %indvars.iv101 = phi i64 [ 1, %.lr.ph95 ], [ %indvars.iv.next102, %.loopexit ] ; 4 uses
  %indvar = phi i64 [ 0, %.lr.ph95 ], [ %indvar.next, %.loopexit ] ; 10 uses
  %sext114 = shl i64 %indvars.iv101, 32
  %4 = ashr exact i64 %sext114, 29
  %scevgep113 = getelementptr i8, ptr %scevgep112, i64 %4
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
  store double 1.000000e+00, ptr %i.a, align 16, !tbaa !24
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.at = add nsw i64 %indvar, -1                 ; 2 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.at
  %i.av = load double, ptr %i.au, align 8, !tbaa !24
  %i.aw = trunc nuw nsw i64 %indvar to i32
  %i.ax = uitofp nneg i32 %i.aw to double
  %i.ay = fmul double %i.av, %i.ax
  %i.az = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.at
  %i.ba = load double, ptr %i.az, align 8, !tbaa !24 ; 2 uses
  %i.bb = fdiv double %i.ay, %i.ba
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvar
  store double %i.bb, ptr %i.bc, align 8, !tbaa !24
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.075 = phi double [ 0.000000e+00, %bb.k ], [ %i.ba, %bb.l ]
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %i.bd = add nuw nsw i64 %indvar, %i.af
  br i1 %.not8387, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.be = trunc nuw nsw i64 %indvar to i32
  %i.bf = uitofp nneg i32 %i.be to double
  %load_initial = load double, ptr %scevgep113, align 8
  br label %bb.n

.lr.ph92.preheader:                               ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %scevgep100, i64 %i.aq, i1 false), !tbaa !24
  br label %.loopexit

bb.n:                                             ; preds = %.lr.ph, %bb.n
  %store_forwarded = phi double [ %load_initial, %.lr.ph ], [ %i.bo, %bb.n ]
  %indvars.iv97 = phi i64 [ %i.ar, %.lr.ph ], [ %indvars.iv.next98, %bb.n ] ; 4 uses
  %.17688 = phi double [ %.075, %.lr.ph ], [ %i.bn, %bb.n ]
  %i.bg = add nsw i64 %indvars.iv97, -1           ; 2 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.bg
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !24
  %i.bj = fadd double %i.ac, %.17688
  %i.bk = fmul double %i.bj, %store_forwarded
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.bf, double %i.bi, double %i.bk)
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.bg
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !24 ; 2 uses
  %i.bo = fdiv double %i.bl, %i.bn                ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv97
  store double %i.bo, ptr %i.bp, align 8, !tbaa !24
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1
  %.not83.not = icmp slt i64 %indvars.iv97, %i.bd
  br i1 %.not83.not, label %bb.n, label %.lr.ph92.preheader

._crit_edge:                                      ; preds = %.loopexit
  %i.bq = add i32 %i.ae, 1
  %i.br = zext nneg i32 %2 to i64                 ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.br
  %i.bv = call i32 @N_VLinearCombination(i32 noundef %i.bq, ptr noundef nonnull %i.bs, ptr noundef nonnull %i.bu, ptr noundef nonnull %3) #14
  %.not82 = icmp eq i32 %i.bv, 0
  %. = select i1 %.not82, i32 0, i32 -28
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge, %bb.i, %bb.g, %bb.d, %bb.b
  %.078 = phi i32 [ -20, %bb.b ], [ -27, %bb.d ], [ -25, %bb.g ], [ -26, %bb.i ], [ %., %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.078
}

declare i32 @N_VLinearCombination(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define range(i32 -30, 1) i32 @IDAGetQuad(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, i32 noundef 3234, ptr noundef nonnull @__func__.IDAGetQuad, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.c = load double, ptr %i.b, align 8, !tbaa !233 ; 2 uses
  store double %i.c, ptr %1, align 8, !tbaa !24
  %i.d = tail call i32 @IDAGetQuadDky(ptr noundef nonnull %0, double noundef %i.c, i32 noundef 0, ptr noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -20, %bb.b ], [ %i.d, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -30, 1) i32 @IDAGetQuadDky(ptr noundef %0, double noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [6 x double], align 16            ; 10 uses
  %i.b = alloca [6 x double], align 16            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, i32 noundef 3267, ptr noundef nonnull @__func__.IDAGetQuadDky, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3)
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.e = load i32, ptr %i.d, align 4, !tbaa !142
  %.not = icmp eq i32 %i.e, 1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -30, i32 noundef 3277, ptr noundef nonnull @__func__.IDAGetQuadDky, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12)
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  %i.f = icmp eq ptr %3, null
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -27, i32 noundef 3285, ptr noundef nonnull @__func__.IDAGetQuadDky, ptr noundef nonnull @.str, ptr noundef nonnull @.str.49)
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.g = icmp slt i32 %2, 0
  br i1 %i.g, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.i = load i32, ptr %i.h, align 8, !tbaa !226
  %i.j = icmp sgt i32 %2, %i.i
  br i1 %i.j, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -25, i32 noundef 3293, ptr noundef nonnull @__func__.IDAGetQuadDky, ptr noundef nonnull @.str, ptr noundef nonnull @.str.50)
  br label %bb.q

bb.j:                                             ; preds = %bb.h
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load double, ptr %i.k, align 8, !tbaa !21
  %i.m = fmul double %i.l, 1.000000e+02
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.o = load double, ptr %i.n, align 8, !tbaa !104 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.q = load double, ptr %i.p, align 8, !tbaa !216 ; 2 uses
  %i.r = fadd double %i.o, %i.q
  %i.s = fmul double %i.m, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.u = load double, ptr %i.t, align 8, !tbaa !113
  %i.v = fsub double %i.o, %i.u                   ; 2 uses
  %i.w = fsub double %i.v, %i.s
  %i.x = fsub double %1, %i.w
  %i.y = fmul double %i.q, %i.x
  %i.z = fcmp olt double %i.y, 0.000000e+00
  br i1 %i.z, label %bb.k, label %.lr.ph95

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -26, i32 noundef 3304, ptr noundef nonnull @__func__.IDAGetQuadDky, ptr noundef nonnull @.str, ptr noundef nonnull @.str.51, double noundef %1, double noundef %i.v, double noundef %i.o)
  br label %bb.q

.lr.ph95:                                         ; preds = %bb.j
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, i8 0, i64 48, i1 false), !tbaa !24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.b, i8 0, i64 48, i1 false), !tbaa !24
  %i.aa = fsub double %1, %i.o
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1204
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !112
  %i.ae = sub i32 %i.ad, %2                       ; 4 uses
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = add nuw i32 %2, 1
  %wide.trip.count = zext i32 %i.ag to i64
  %.not8387 = icmp slt i32 %i.ae, 1
  %scevgep112 = getelementptr i8, ptr %i.a, i64 -8
  br label %bb.l

.loopexit:                                        ; preds = %bb.o, %.lr.ph92.preheader
  %indvars.iv.next102 = add nuw i64 %indvars.iv101, 1
  %exitcond.not = icmp eq i64 %indvar.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.l

bb.l:                                             ; preds = %.lr.ph95, %.loopexit
  %indvars.iv101 = phi i64 [ 1, %.lr.ph95 ], [ %indvars.iv.next102, %.loopexit ] ; 4 uses
  %indvar = phi i64 [ 0, %.lr.ph95 ], [ %indvar.next, %.loopexit ] ; 10 uses
  %sext114 = shl i64 %indvars.iv101, 32
  %4 = ashr exact i64 %sext114, 29
  %scevgep113 = getelementptr i8, ptr %scevgep112, i64 %4
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
  br i1 %i.as, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store double 1.000000e+00, ptr %i.a, align 16, !tbaa !24
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.at = add nsw i64 %indvar, -1                 ; 2 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.at
  %i.av = load double, ptr %i.au, align 8, !tbaa !24
  %i.aw = trunc nuw nsw i64 %indvar to i32
  %i.ax = uitofp nneg i32 %i.aw to double
  %i.ay = fmul double %i.av, %i.ax
  %i.az = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.at
  %i.ba = load double, ptr %i.az, align 8, !tbaa !24 ; 2 uses
  %i.bb = fdiv double %i.ay, %i.ba
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvar
  store double %i.bb, ptr %i.bc, align 8, !tbaa !24
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.075 = phi double [ 0.000000e+00, %bb.m ], [ %i.ba, %bb.n ]
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %i.bd = add nuw nsw i64 %indvar, %i.af
  br i1 %.not8387, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %i.be = trunc nuw nsw i64 %indvar to i32
  %i.bf = uitofp nneg i32 %i.be to double
  %load_initial = load double, ptr %scevgep113, align 8
  br label %bb.p

.lr.ph92.preheader:                               ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %scevgep100, i64 %i.aq, i1 false), !tbaa !24
  br label %.loopexit

bb.p:                                             ; preds = %.lr.ph, %bb.p
  %store_forwarded = phi double [ %load_initial, %.lr.ph ], [ %i.bo, %bb.p ]
  %indvars.iv97 = phi i64 [ %i.ar, %.lr.ph ], [ %indvars.iv.next98, %bb.p ] ; 4 uses
  %.17688 = phi double [ %.075, %.lr.ph ], [ %i.bn, %bb.p ]
  %i.bg = add nsw i64 %indvars.iv97, -1           ; 2 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.bg
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !24
  %i.bj = fadd double %i.aa, %.17688
  %i.bk = fmul double %i.bj, %store_forwarded
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.bf, double %i.bi, double %i.bk)
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.bg
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !24 ; 2 uses
  %i.bo = fdiv double %i.bl, %i.bn                ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv97
  store double %i.bo, ptr %i.bp, align 8, !tbaa !24
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1
  %.not83.not = icmp slt i64 %indvars.iv97, %i.bd
  br i1 %.not83.not, label %bb.p, label %.lr.ph92.preheader

._crit_edge:                                      ; preds = %.loopexit
  %i.bq = add i32 %i.ae, 1
  %i.br = zext nneg i32 %2 to i64                 ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.br
  %i.bv = call i32 @N_VLinearCombination(i32 noundef %i.bq, ptr noundef nonnull %i.bs, ptr noundef nonnull %i.bu, ptr noundef nonnull %3) #14
  %.not82 = icmp eq i32 %i.bv, 0
  %. = select i1 %.not82, i32 0, i32 -28
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.k, %bb.i, %bb.f, %bb.d, %bb.b
  %.077 = phi i32 [ -20, %bb.b ], [ -30, %bb.d ], [ -27, %bb.f ], [ -25, %bb.i ], [ -26, %bb.k ], [ %., %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.077
}

; Function Attrs: nounwind uwtable
define range(i32 -43, 1) i32 @IDAGetSens(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, i32 noundef 3374, ptr noundef nonnull @__func__.IDAGetSens, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, null
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -27, i32 noundef 3384, ptr noundef nonnull @__func__.IDAGetSens, ptr noundef nonnull @.str, ptr noundef nonnull @.str.49)
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.d = load i32, ptr %i.c, align 4, !tbaa !171
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -40, i32 noundef 3393, ptr noundef nonnull @__func__.IDAGetSens, ptr noundef nonnull @.str, ptr noundef nonnull @.str.20)
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.g = load double, ptr %i.f, align 8, !tbaa !233
  store double %i.g, ptr %1, align 8, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !149
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %.loopexit

bb.h:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.k = load i32, ptr %i.h, align 8, !tbaa !149
  %i.l = sext i32 %i.k to i64
  %i.m = icmp slt i64 %indvars.iv.next, %i.l
  br i1 %i.m, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 0, %bb.g ] ; 3 uses
  %i.n = load double, ptr %1, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !58
  %i.q = trunc nuw nsw i64 %indvars.iv to i32
  %i.r = tail call i32 @IDAGetSensDky1(ptr noundef nonnull %0, double noundef %i.n, i32 noundef 0, i32 noundef %i.q, ptr noundef %i.p) ; 2 uses
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.h, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.h, %bb.g, %bb.f, %bb.d, %bb.b
  %.018 = phi i32 [ -20, %bb.b ], [ -27, %bb.d ], [ -40, %bb.f ], [ 0, %bb.g ], [ %i.r, %.lr.ph ], [ 0, %bb.h ]
  ret i32 %.018
}

; Function Attrs: nounwind uwtable
define range(i32 -43, 1) i32 @IDAGetSensDky1(ptr nofree noundef readonly captures(address_is_null) %0, double noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [6 x double], align 16            ; 10 uses
  %i.b = alloca [6 x double], align 16            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, i32 noundef 3524, ptr noundef nonnull @__func__.IDAGetSensDky1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3)
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.e = load i32, ptr %i.d, align 4, !tbaa !171
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -40, i32 noundef 3533, ptr noundef nonnull @__func__.IDAGetSensDky1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.20)
  br label %bb.t

bb.e:                                             ; preds = %bb.c
  %i.g = icmp eq ptr %4, null
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -27, i32 noundef 3541, ptr noundef nonnull @__func__.IDAGetSensDky1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.49)
  br label %bb.t

bb.g:                                             ; preds = %bb.e
  %i.h = icmp slt i32 %3, 0
  br i1 %i.h, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.j = load i32, ptr %i.i, align 8, !tbaa !149
  %.not = icmp slt i32 %3, %i.j
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -43, i32 noundef 3550, ptr noundef nonnull @__func__.IDAGetSensDky1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.52)
  br label %bb.t

bb.j:                                             ; preds = %bb.h
  %i.k = icmp slt i32 %2, 0
  br i1 %i.k, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1204
  %i.m = load i32, ptr %i.l, align 4, !tbaa !112  ; 5 uses
  %i.n = icmp sgt i32 %2, %i.m
  br i1 %i.n, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -25, i32 noundef 3559, ptr noundef nonnull @__func__.IDAGetSensDky1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.50)
  br label %bb.t

bb.m:                                             ; preds = %bb.k
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load double, ptr %i.o, align 8, !tbaa !21
  %i.q = fmul double %i.p, 1.000000e+02
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.s = load double, ptr %i.r, align 8, !tbaa !104 ; 4 uses
  %i.t = tail call double @llvm.fabs.f64(double %i.s)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.v = load double, ptr %i.u, align 8, !tbaa !216 ; 3 uses
  %i.w = tail call double @llvm.fabs.f64(double %i.v)
  %i.x = fadd double %i.t, %i.w
  %i.y = fmul double %i.q, %i.x                   ; 2 uses
  %i.z = fcmp olt double %i.v, 0.000000e+00
  %i.aa = fneg double %i.y
  %.092 = select i1 %i.z, double %i.aa, double %i.y
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !113
  %i.ad = fsub double %i.s, %i.ac                 ; 2 uses
  %i.ae = fsub double %i.ad, %.092
  %i.af = fsub double %1, %i.ae
  %i.ag = fmul double %i.v, %i.af
  %i.ah = fcmp olt double %i.ag, 0.000000e+00
  br i1 %i.ah, label %bb.n, label %.lr.ph115

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -26, i32 noundef 3572, ptr noundef nonnull @__func__.IDAGetSensDky1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.51, double noundef %1, double noundef %i.ad, double noundef %i.s)
  br label %bb.t

.lr.ph115:                                        ; preds = %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, i8 0, i64 48, i1 false), !tbaa !24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.b, i8 0, i64 48, i1 false), !tbaa !24
  %i.ai = fsub double %1, %i.s
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.ak = sub i32 %i.m, %2                        ; 4 uses
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = add nuw i32 %2, 1
  %wide.trip.count = zext i32 %i.am to i64
  %.not102107 = icmp slt i32 %i.ak, 1
  %scevgep138 = getelementptr i8, ptr %i.a, i64 -8
  br label %bb.o

.loopexit:                                        ; preds = %bb.r, %.lr.ph112.preheader
  %indvars.iv.next125 = add nuw i64 %indvars.iv124, 1
  %exitcond.not = icmp eq i64 %indvar.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph118, label %bb.o

.lr.ph118:                                        ; preds = %.loopexit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 5 uses
  %i.ao = zext nneg i32 %3 to i64                 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 2112
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !102 ; 6 uses
  %i.ar = zext nneg i32 %2 to i64                 ; 8 uses
  %i.as = add i32 %i.m, 1
  %i.at = sub i32 %i.as, %2
  %xtraiter.a = and i32 %i.at, 3                  ; 2 uses
  %lcmp.mod.not.a = icmp eq i32 %xtraiter.a, 0
  br i1 %lcmp.mod.not.a, label %.prol.loopexit.a, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph118, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.prol.preheader ], [ %i.ar, %.lr.ph118 ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph118 ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.prol
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !158
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ao
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !58
  %i.ay = sub nuw nsw i64 %indvars.iv.prol, %i.ar
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ay
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !58
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter.a
  br i1 %prol.iter.cmp.not, label %.prol.loopexit.a, label %.prol.preheader, !llvm.loop !352

.prol.loopexit.a:                                 ; preds = %.prol.preheader, %.lr.ph118
  %indvars.iv.unr = phi i64 [ %i.ar, %.lr.ph118 ], [ %indvars.iv.next.prol, %.prol.preheader ]
  %i.ba = icmp ult i32 %i.ak, 3
  br i1 %i.ba, label %._crit_edge, label %.lr.ph118.new

bb.o:                                             ; preds = %.lr.ph115, %.loopexit
  %indvars.iv124 = phi i64 [ 1, %.lr.ph115 ], [ %indvars.iv.next125, %.loopexit ] ; 4 uses
  %indvar = phi i64 [ 0, %.lr.ph115 ], [ %indvar.next, %.loopexit ] ; 10 uses
  %sext140 = shl i64 %indvars.iv124, 32
  %5 = ashr exact i64 %sext140, 29
  %scevgep139 = getelementptr i8, ptr %scevgep138, i64 %5
  %indvars129 = trunc i64 %indvars.iv124 to i32
  %i.bb = shl nuw nsw i64 %indvar, 3
  %i.bc = add nuw nsw i64 %i.bb, 8                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.bc
  %scevgep123 = getelementptr i8, ptr %i.a, i64 %i.bc
  %i.bd = trunc i64 %indvar to i32
  %i.be = add i32 %i.ak, %i.bd
  %smax = tail call i32 @llvm.smax.i32(i32 %i.be, i32 %indvars129)
  %i.bf = trunc i64 %indvar to i32
  %i.bg = xor i32 %i.bf, -1
  %i.bh = add i32 %smax, %i.bg
  %i.bi = zext i32 %i.bh to i64
  %i.bj = shl nuw nsw i64 %i.bi, 3
  %i.bk = add nuw nsw i64 %i.bj, 8
  %sext = shl i64 %indvars.iv124, 32
  %i.bl = ashr exact i64 %sext, 32
  %i.bm = icmp eq i64 %indvar, 0
  br i1 %i.bm, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store double 1.000000e+00, ptr %i.a, align 16, !tbaa !24
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bn = add nsw i64 %indvar, -1                 ; 2 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bn
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !24
  %i.bq = trunc nuw nsw i64 %indvar to i32
  %i.br = uitofp nneg i32 %i.bq to double
  %i.bs = fmul double %i.bp, %i.br
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.bn
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !24 ; 2 uses
  %i.bv = fdiv double %i.bs, %i.bu
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvar
  store double %i.bv, ptr %i.bw, align 8, !tbaa !24
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.090 = phi double [ 0.000000e+00, %bb.p ], [ %i.bu, %bb.q ]
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %i.bx = add nuw nsw i64 %indvar, %i.al
  br i1 %.not102107, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.r
  %i.by = trunc nuw nsw i64 %indvar to i32
  %i.bz = uitofp nneg i32 %i.by to double
  %load_initial = load double, ptr %scevgep139, align 8
  br label %bb.s

.lr.ph112.preheader:                              ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %scevgep123, i64 %i.bk, i1 false), !tbaa !24
  br label %.loopexit

bb.s:                                             ; preds = %.lr.ph, %bb.s
  %store_forwarded = phi double [ %load_initial, %.lr.ph ], [ %i.ci, %bb.s ]
  %indvars.iv120 = phi i64 [ %i.bl, %.lr.ph ], [ %indvars.iv.next121, %bb.s ] ; 4 uses
  %.191108 = phi double [ %.090, %.lr.ph ], [ %i.ch, %bb.s ]
  %i.ca = add nsw i64 %indvars.iv120, -1          ; 2 uses
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ca
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !24
  %i.cd = fadd double %i.ai, %.191108
  %i.ce = fmul double %i.cd, %store_forwarded
  %i.cf = tail call double @llvm.fmuladd.f64(double %i.bz, double %i.cc, double %i.ce)
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ca
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !24 ; 2 uses
  %i.ci = fdiv double %i.cf, %i.ch                ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv120
  store double %i.ci, ptr %i.cj, align 8, !tbaa !24
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1
  %.not102.not = icmp slt i64 %indvars.iv120, %i.bx
  br i1 %.not102.not, label %bb.s, label %.lr.ph112.preheader

.lr.ph118.new:                                    ; preds = %.prol.loopexit.a, %.lr.ph118.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph118.new ], [ %indvars.iv.unr, %.prol.loopexit.a ] ; 6 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !158
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.ao
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !58
  %i.co = sub nuw nsw i64 %indvars.iv, %i.ar
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.co
  store ptr %i.cn, ptr %i.cp, align 8, !tbaa !58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.next
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !158
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.ao
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !58
  %i.cu = sub nuw nsw i64 %indvars.iv.next, %i.ar
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.cu
  store ptr %i.ct, ptr %i.cv, align 8, !tbaa !58
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.next.1
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !158
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.ao
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !58
  %i.da = sub nuw nsw i64 %indvars.iv.next.1, %i.ar
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.da
  store ptr %i.cz, ptr %i.db, align 8, !tbaa !58
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 3 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.next.2
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !158
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.ao
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !58
  %i.dg = sub nuw nsw i64 %indvars.iv.next.2, %i.ar
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.dg
  store ptr %i.df, ptr %i.dh, align 8, !tbaa !58
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %i.di = trunc nuw i64 %indvars.iv.next.2 to i32
  %.not100.not.3 = icmp sgt i32 %i.m, %i.di
  br i1 %.not100.not.3, label %.lr.ph118.new, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph118.new, %.prol.loopexit.a
  %reass.sub = sub nsw i32 %i.m, %2
  %i.dj = add i32 %reass.sub, 1
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ar
  %i.dl = call i32 @N_VLinearCombination(i32 noundef %i.dj, ptr noundef nonnull %i.dk, ptr noundef nonnull %i.aq, ptr noundef nonnull %4) #14
  %.not101 = icmp eq i32 %i.dl, 0
  %. = select i1 %.not101, i32 0, i32 -28
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge, %bb.n, %bb.l, %bb.i, %bb.f, %bb.d, %bb.b
  %.093 = phi i32 [ -20, %bb.b ], [ -40, %bb.d ], [ -27, %bb.f ], [ -43, %bb.i ], [ -25, %bb.l ], [ -26, %bb.n ], [ %., %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.093
}

; Function Attrs: nounwind uwtable
define range(i32 -43, 1) i32 @IDAGetSensDky(ptr nofree noundef readonly captures(address_is_null) %0, double noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, i32 noundef 3430, ptr noundef nonnull @__func__.IDAGetSensDky, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.c = load i32, ptr %i.b, align 4, !tbaa !171
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -40, i32 noundef 3439, ptr noundef nonnull @__func__.IDAGetSensDky, ptr noundef nonnull @.str, ptr noundef nonnull @.str.20)
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.e = icmp eq ptr %3, null
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -27, i32 noundef 3447, ptr noundef nonnull @__func__.IDAGetSensDky, ptr noundef nonnull @.str, ptr noundef nonnull @.str.49)
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.f = icmp slt i32 %2, 0
  br i1 %i.f, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.h = load i32, ptr %i.g, align 8, !tbaa !226
  %i.i = icmp sgt i32 %2, %i.h
  br i1 %i.i, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !149
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %.loopexit

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -25, i32 noundef 3455, ptr noundef nonnull @__func__.IDAGetSensDky, ptr noundef nonnull @.str, ptr noundef nonnull @.str.50)
  br label %.loopexit

bb.j:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.m = load i32, ptr %i.j, align 8, !tbaa !149
  %i.n = sext i32 %i.m to i64
  %i.o = icmp slt i64 %indvars.iv.next, %i.n
  br i1 %i.o, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 0, %.preheader ] ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !58
  %i.r = trunc nuw nsw i64 %indvars.iv to i32
  %i.s = tail call i32 @IDAGetSensDky1(ptr noundef nonnull %0, double noundef %1, i32 noundef %2, i32 noundef %i.r, ptr noundef %i.q) ; 2 uses
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.j, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.j, %.preheader, %bb.i, %bb.f, %bb.d, %bb.b
  %.022 = phi i32 [ -20, %bb.b ], [ -40, %bb.d ], [ -27, %bb.f ], [ -25, %bb.i ], [ 0, %.preheader ], [ %i.s, %.lr.ph ], [ 0, %bb.j ]
  ret i32 %.022
}

; Function Attrs: nounwind uwtable
define range(i32 -43, 1) i32 @IDAGetSens1(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, i32 noundef 3485, ptr noundef nonnull @__func__.IDAGetSens1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.c = load double, ptr %i.b, align 8, !tbaa !233 ; 2 uses
  store double %i.c, ptr %1, align 8, !tbaa !24
  %i.d = tail call i32 @IDAGetSensDky1(ptr noundef nonnull %0, double noundef %i.c, i32 noundef 0, i32 noundef %2, ptr noundef %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -20, %bb.b ], [ %i.d, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -50, 1) i32 @IDAGetQuadSens(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, i32 noundef 3647, ptr noundef nonnull @__func__.IDAGetQuadSens, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, null
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -27, i32 noundef 3657, ptr noundef nonnull @__func__.IDAGetQuadSens, ptr noundef nonnull @.str, ptr noundef nonnull @.str.49)
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.d = load i32, ptr %i.c, align 8, !tbaa !194
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -40, i32 noundef 3666, ptr noundef nonnull @__func__.IDAGetQuadSens, ptr noundef nonnull @.str, ptr noundef nonnull @.str.26)
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.g = load double, ptr %i.f, align 8, !tbaa !233
  store double %i.g, ptr %1, align 8, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !149
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %.loopexit

bb.h:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.k = load i32, ptr %i.h, align 8, !tbaa !149
  %i.l = sext i32 %i.k to i64
  %i.m = icmp slt i64 %indvars.iv.next, %i.l
  br i1 %i.m, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 0, %bb.g ] ; 3 uses
  %i.n = load double, ptr %1, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !58
  %i.q = trunc nuw nsw i64 %indvars.iv to i32
  %i.r = tail call i32 @IDAGetQuadSensDky1(ptr noundef nonnull %0, double noundef %i.n, i32 noundef 0, i32 noundef %i.q, ptr noundef %i.p) ; 2 uses
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.h, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.h, %bb.g, %bb.f, %bb.d, %bb.b
  %.018 = phi i32 [ -20, %bb.b ], [ -27, %bb.d ], [ -40, %bb.f ], [ 0, %bb.g ], [ %i.r, %.lr.ph ], [ 0, %bb.h ]
  ret i32 %.018
}

; Function Attrs: nounwind uwtable
define range(i32 -50, 1) i32 @IDAGetQuadSensDky1(ptr nofree noundef readonly captures(address_is_null) %0, double noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [6 x double], align 16            ; 10 uses
  %i.b = alloca [6 x double], align 16            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, i32 noundef 3830, ptr noundef nonnull @__func__.IDAGetQuadSensDky1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3)
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.e = load i32, ptr %i.d, align 4, !tbaa !171
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -40, i32 noundef 3839, ptr noundef nonnull @__func__.IDAGetQuadSensDky1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.20)
  br label %bb.v

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.h = load i32, ptr %i.g, align 8, !tbaa !194
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -50, i32 noundef 3847, ptr noundef nonnull @__func__.IDAGetQuadSensDky1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.26)
  br label %bb.v

bb.g:                                             ; preds = %bb.e
  %i.j = icmp eq ptr %4, null
  br i1 %i.j, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -27, i32 noundef 3855, ptr noundef nonnull @__func__.IDAGetQuadSensDky1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.49)
  br label %bb.v

bb.i:                                             ; preds = %bb.g
  %i.k = icmp slt i32 %3, 0
  br i1 %i.k, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.m = load i32, ptr %i.l, align 8, !tbaa !149
  %.not = icmp slt i32 %3, %i.m
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -43, i32 noundef 3864, ptr noundef nonnull @__func__.IDAGetQuadSensDky1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.52)
  br label %bb.v

bb.l:                                             ; preds = %bb.j
  %i.n = icmp slt i32 %2, 0
  br i1 %i.n, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1204
  %i.p = load i32, ptr %i.o, align 4, !tbaa !112  ; 5 uses
  %i.q = icmp sgt i32 %2, %i.p
  br i1 %i.q, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -25, i32 noundef 3873, ptr noundef nonnull @__func__.IDAGetQuadSensDky1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.50)
  br label %bb.v

bb.o:                                             ; preds = %bb.m
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load double, ptr %i.r, align 8, !tbaa !21
  %i.t = fmul double %i.s, 1.000000e+02
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.v = load double, ptr %i.u, align 8, !tbaa !104 ; 4 uses
  %i.w = tail call double @llvm.fabs.f64(double %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.y = load double, ptr %i.x, align 8, !tbaa !216 ; 3 uses
  %i.z = tail call double @llvm.fabs.f64(double %i.y)
  %i.aa = fadd double %i.w, %i.z
  %i.ab = fmul double %i.t, %i.aa                 ; 2 uses
  %i.ac = fcmp olt double %i.y, 0.000000e+00
  %i.ad = fneg double %i.ab
  %.094 = select i1 %i.ac, double %i.ad, double %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.af = load double, ptr %i.ae, align 8, !tbaa !113
  %i.ag = fsub double %i.v, %i.af                 ; 2 uses
  %i.ah = fsub double %i.ag, %.094
  %i.ai = fsub double %1, %i.ah
  %i.aj = fmul double %i.y, %i.ai
  %i.ak = fcmp olt double %i.aj, 0.000000e+00
  br i1 %i.ak, label %bb.p, label %.lr.ph117

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -26, i32 noundef 3886, ptr noundef nonnull @__func__.IDAGetQuadSensDky1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.51, double noundef %1, double noundef %i.ag, double noundef %i.v)
  br label %bb.v

.lr.ph117:                                        ; preds = %bb.o
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, i8 0, i64 48, i1 false), !tbaa !24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.b, i8 0, i64 48, i1 false), !tbaa !24
  %i.al = fsub double %1, %i.v
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.an = sub i32 %i.p, %2                        ; 4 uses
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = add nuw i32 %2, 1
  %wide.trip.count = zext i32 %i.ap to i64
  %.not104109 = icmp slt i32 %i.an, 1
  %scevgep140 = getelementptr i8, ptr %i.a, i64 -8
  br label %bb.q

.loopexit:                                        ; preds = %bb.t, %.lr.ph114.preheader
  %indvars.iv.next127 = add nuw i64 %indvars.iv126, 1
  %exitcond.not = icmp eq i64 %indvar.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph120, label %bb.q

.lr.ph120:                                        ; preds = %.loopexit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 5 uses
  %i.ar = zext nneg i32 %3 to i64                 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 2112
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !102 ; 6 uses
  %i.au = zext nneg i32 %2 to i64                 ; 8 uses
  %i.av = add i32 %i.p, 1
  %i.aw = sub i32 %i.av, %2
  %xtraiter.a = and i32 %i.aw, 3                  ; 2 uses
  %lcmp.mod.not.a = icmp eq i32 %xtraiter.a, 0
  br i1 %lcmp.mod.not.a, label %.prol.loopexit.a, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph120, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.prol.preheader ], [ %i.au, %.lr.ph120 ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph120 ]
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.prol
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !158
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ar
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !58
  %i.bb = sub nuw nsw i64 %indvars.iv.prol, %i.au
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bb
  store ptr %i.ba, ptr %i.bc, align 8, !tbaa !58
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter.a
  br i1 %prol.iter.cmp.not, label %.prol.loopexit.a, label %.prol.preheader, !llvm.loop !353

.prol.loopexit.a:                                 ; preds = %.prol.preheader, %.lr.ph120
  %indvars.iv.unr = phi i64 [ %i.au, %.lr.ph120 ], [ %indvars.iv.next.prol, %.prol.preheader ]
  %i.bd = icmp ult i32 %i.an, 3
  br i1 %i.bd, label %._crit_edge, label %.lr.ph120.new

bb.q:                                             ; preds = %.lr.ph117, %.loopexit
  %indvars.iv126 = phi i64 [ 1, %.lr.ph117 ], [ %indvars.iv.next127, %.loopexit ] ; 4 uses
  %indvar = phi i64 [ 0, %.lr.ph117 ], [ %indvar.next, %.loopexit ] ; 10 uses
  %sext142 = shl i64 %indvars.iv126, 32
  %5 = ashr exact i64 %sext142, 29
  %scevgep141 = getelementptr i8, ptr %scevgep140, i64 %5
  %indvars131 = trunc i64 %indvars.iv126 to i32
  %i.be = shl nuw nsw i64 %indvar, 3
  %i.bf = add nuw nsw i64 %i.be, 8                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.bf
  %scevgep125 = getelementptr i8, ptr %i.a, i64 %i.bf
  %i.bg = trunc i64 %indvar to i32
  %i.bh = add i32 %i.an, %i.bg
  %smax = tail call i32 @llvm.smax.i32(i32 %i.bh, i32 %indvars131)
  %i.bi = trunc i64 %indvar to i32
  %i.bj = xor i32 %i.bi, -1
  %i.bk = add i32 %smax, %i.bj
  %i.bl = zext i32 %i.bk to i64
  %i.bm = shl nuw nsw i64 %i.bl, 3
  %i.bn = add nuw nsw i64 %i.bm, 8
  %sext = shl i64 %indvars.iv126, 32
  %i.bo = ashr exact i64 %sext, 32
  %i.bp = icmp eq i64 %indvar, 0
  br i1 %i.bp, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store double 1.000000e+00, ptr %i.a, align 16, !tbaa !24
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bq = add nsw i64 %indvar, -1                 ; 2 uses
  %i.br = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bq
  %i.bs = load double, ptr %i.br, align 8, !tbaa !24
  %i.bt = trunc nuw nsw i64 %indvar to i32
  %i.bu = uitofp nneg i32 %i.bt to double
  %i.bv = fmul double %i.bs, %i.bu
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.bq
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !24 ; 2 uses
  %i.by = fdiv double %i.bv, %i.bx
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvar
  store double %i.by, ptr %i.bz, align 8, !tbaa !24
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.092 = phi double [ 0.000000e+00, %bb.r ], [ %i.bx, %bb.s ]
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %i.ca = add nuw nsw i64 %indvar, %i.ao
  br i1 %.not104109, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.t
  %i.cb = trunc nuw nsw i64 %indvar to i32
  %i.cc = uitofp nneg i32 %i.cb to double
  %load_initial = load double, ptr %scevgep141, align 8
  br label %bb.u

.lr.ph114.preheader:                              ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %scevgep125, i64 %i.bn, i1 false), !tbaa !24
  br label %.loopexit

bb.u:                                             ; preds = %.lr.ph, %bb.u
  %store_forwarded = phi double [ %load_initial, %.lr.ph ], [ %i.cl, %bb.u ]
  %indvars.iv122 = phi i64 [ %i.bo, %.lr.ph ], [ %indvars.iv.next123, %bb.u ] ; 4 uses
  %.193110 = phi double [ %.092, %.lr.ph ], [ %i.ck, %bb.u ]
  %i.cd = add nsw i64 %indvars.iv122, -1          ; 2 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.cd
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !24
  %i.cg = fadd double %i.al, %.193110
  %i.ch = fmul double %i.cg, %store_forwarded
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.cc, double %i.cf, double %i.ch)
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.cd
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !24 ; 2 uses
  %i.cl = fdiv double %i.ci, %i.ck                ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv122
  store double %i.cl, ptr %i.cm, align 8, !tbaa !24
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1
  %.not104.not = icmp slt i64 %indvars.iv122, %i.ca
  br i1 %.not104.not, label %bb.u, label %.lr.ph114.preheader

.lr.ph120.new:                                    ; preds = %.prol.loopexit.a, %.lr.ph120.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph120.new ], [ %indvars.iv.unr, %.prol.loopexit.a ] ; 6 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !158
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.ar
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !58
  %i.cr = sub nuw nsw i64 %indvars.iv, %i.au
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.cr
  store ptr %i.cq, ptr %i.cs, align 8, !tbaa !58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.next
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !158
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.ar
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !58
  %i.cx = sub nuw nsw i64 %indvars.iv.next, %i.au
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.cx
  store ptr %i.cw, ptr %i.cy, align 8, !tbaa !58
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.next.1
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !158
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.ar
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !58
  %i.dd = sub nuw nsw i64 %indvars.iv.next.1, %i.au
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dd
  store ptr %i.dc, ptr %i.de, align 8, !tbaa !58
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 3 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.next.2
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !158
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.ar
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !58
  %i.dj = sub nuw nsw i64 %indvars.iv.next.2, %i.au
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dj
  store ptr %i.di, ptr %i.dk, align 8, !tbaa !58
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %i.dl = trunc nuw i64 %indvars.iv.next.2 to i32
  %.not102.not.3 = icmp sgt i32 %i.p, %i.dl
  br i1 %.not102.not.3, label %.lr.ph120.new, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph120.new, %.prol.loopexit.a
  %reass.sub = sub nsw i32 %i.p, %2
  %i.dm = add i32 %reass.sub, 1
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.au
  %i.do = call i32 @N_VLinearCombination(i32 noundef %i.dm, ptr noundef nonnull %i.dn, ptr noundef nonnull %i.at, ptr noundef nonnull %4) #14
  %.not103 = icmp eq i32 %i.do, 0
  %. = select i1 %.not103, i32 0, i32 -28
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge, %bb.p, %bb.n, %bb.k, %bb.h, %bb.f, %bb.d, %bb.b
  %.095 = phi i32 [ -20, %bb.b ], [ -40, %bb.d ], [ -50, %bb.f ], [ -27, %bb.h ], [ -43, %bb.k ], [ -25, %bb.n ], [ -26, %bb.p ], [ %., %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.095
}

; Function Attrs: nounwind uwtable
define range(i32 -50, 1) i32 @IDAGetQuadSensDky(ptr nofree noundef readonly captures(address_is_null) %0, double noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, i32 noundef 3704, ptr noundef nonnull @__func__.IDAGetQuadSensDky, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.c = load i32, ptr %i.b, align 4, !tbaa !171
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -40, i32 noundef 3713, ptr noundef nonnull @__func__.IDAGetQuadSensDky, ptr noundef nonnull @.str, ptr noundef nonnull @.str.20)
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.f = load i32, ptr %i.e, align 8, !tbaa !194
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -50, i32 noundef 3721, ptr noundef nonnull @__func__.IDAGetQuadSensDky, ptr noundef nonnull @.str, ptr noundef nonnull @.str.26)
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.h = icmp eq ptr %3, null
  br i1 %i.h, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -27, i32 noundef 3729, ptr noundef nonnull @__func__.IDAGetQuadSensDky, ptr noundef nonnull @.str, ptr noundef nonnull @.str.49)
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.i = icmp slt i32 %2, 0
  br i1 %i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.k = load i32, ptr %i.j, align 8, !tbaa !226
  %i.l = icmp sgt i32 %2, %i.k
  br i1 %i.l, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.j
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !149
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %.loopexit

bb.k:                                             ; preds = %bb.j, %bb.i
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -25, i32 noundef 3737, ptr noundef nonnull @__func__.IDAGetQuadSensDky, ptr noundef nonnull @.str, ptr noundef nonnull @.str.50)
  br label %.loopexit

bb.l:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.p = load i32, ptr %i.m, align 8, !tbaa !149
  %i.q = sext i32 %i.p to i64
  %i.r = icmp slt i64 %indvars.iv.next, %i.q
  br i1 %i.r, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.l ], [ 0, %.preheader ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !58
  %i.u = trunc nuw nsw i64 %indvars.iv to i32
  %i.v = tail call i32 @IDAGetQuadSensDky1(ptr noundef nonnull %0, double noundef %1, i32 noundef %2, i32 noundef %i.u, ptr noundef %i.t) ; 2 uses
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.l, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.l, %.preheader, %bb.k, %bb.h, %bb.f, %bb.d, %bb.b
  %.024 = phi i32 [ -20, %bb.b ], [ -40, %bb.d ], [ -50, %bb.f ], [ -27, %bb.h ], [ -25, %bb.k ], [ 0, %.preheader ], [ %i.v, %.lr.ph ], [ 0, %bb.l ]
  ret i32 %.024
}

; Function Attrs: nounwind uwtable
define range(i32 -50, 1) i32 @IDAGetQuadSens1(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, i32 noundef 3767, ptr noundef nonnull @__func__.IDAGetQuadSens1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.c = load i32, ptr %i.b, align 4, !tbaa !171
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -40, i32 noundef 3776, ptr noundef nonnull @__func__.IDAGetQuadSens1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.20)
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.f = load i32, ptr %i.e, align 8, !tbaa !194
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -50, i32 noundef 3784, ptr noundef nonnull @__func__.IDAGetQuadSens1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.26)
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.h = icmp eq ptr %3, null
  br i1 %i.h, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -27, i32 noundef 3792, ptr noundef nonnull @__func__.IDAGetQuadSens1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.49)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.j = load double, ptr %i.i, align 8, !tbaa !233 ; 2 uses
  store double %i.j, ptr %1, align 8, !tbaa !24
  %i.k = tail call i32 @IDAGetQuadSensDky1(ptr noundef nonnull %0, double noundef %i.j, i32 noundef 0, i32 noundef %2, ptr noundef nonnull %3)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ -20, %bb.b ], [ -40, %bb.d ], [ -50, %bb.f ], [ -27, %bb.h ], [ %i.k, %bb.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -20, 1) i32 @IDAComputeY(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, i32 noundef 3955, ptr noundef nonnull @__func__.IDAComputeY, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !93
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.c, double noundef 1.000000e+00, ptr noundef %1, ptr noundef %2) #14
  br label %bb.d
end_hunk_0
begin_hunk_1_@IDAHandleNFlag:bb.a

bb.m:                                             ; preds = %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1200
  store i32 1, ptr %i.bx, align 8, !tbaa !226
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1456
  %i.bz = load double, ptr %i.by, align 8, !tbaa !379 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 1408
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !222
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1240 ; 2 uses
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !216 ; 2 uses
  %i.ce = tail call double @llvm.fabs.f64(double %i.cd)
  %i.cf = fdiv double %i.cb, %i.ce                ; 2 uses
  %i.cg = fcmp ogt double %i.bz, %i.cf
  %.103 = select i1 %i.cg, double %i.bz, double %i.cf ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1256
  store double %.103, ptr %i.ch, align 8, !tbaa !273
  %i.ci = fmul double %i.cd, %.103
  store double %i.ci, ptr %i.cc, align 8, !tbaa !216
  br label %bb.n

switch.lookup:                                    ; preds = %bb.c
  %i.cj = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.IDAHandleNFlag, i64 %i.cj
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.n

switch.lookup108:                                 ; preds = %bb.f
  %i.ck = zext nneg i32 %switch.tableidx107 to i64
  %switch.gep109 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.IDAHandleNFlag.3, i64 %i.ck
  %switch.load110 = load i32, ptr %switch.gep109, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.f, %switch.lookup108, %bb.c, %switch.lookup, %bb.l, %bb.m, %bb.k, %bb.i, %bb.g
  %.0 = phi i32 [ %switch.load110, %switch.lookup108 ], [ -3, %bb.l ], [ 20, %bb.m ], [ 20, %bb.k ], [ 20, %bb.i ], [ 20, %bb.g ], [ -17, %bb.c ], [ %switch.load, %switch.lookup ], [ -4, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @IDAReset(ptr nofree noundef nonnull captures(none) initializes((392, 400)) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.b = load double, ptr %i.a, align 8, !tbaa !216
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 392
  store double %i.b, ptr %i.c, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1256 ; 3 uses
  %i.e = load double, ptr %i.d, align 8, !tbaa !273
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58   ; 2 uses
  tail call void @N_VScale(double noundef %i.e, ptr noundef %i.g, ptr noundef %i.g) #14
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.i = load i32, ptr %i.h, align 4, !tbaa !142
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load double, ptr %i.d, align 8, !tbaa !273
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !58   ; 2 uses
  tail call void @N_VScale(double noundef %i.j, ptr noundef %i.l, ptr noundef %i.l) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.n = load i32, ptr %i.m, align 4, !tbaa !171
  %.not26 = icmp eq i32 %i.n, 0                   ; 2 uses
  br i1 %.not26, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.p = load i32, ptr %i.o, align 8, !tbaa !194
  %.not27 = icmp eq i32 %i.p, 0
  br i1 %.not27, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.r = load i32, ptr %i.q, align 8, !tbaa !149  ; 4 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !101  ; 2 uses
  %wide.trip.count = zext nneg i32 %i.r to i64    ; 3 uses
  %.pre = load double, ptr %i.d, align 8, !tbaa !273 ; 2 uses
  %min.iters.check = icmp ult i32 %i.r, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.pre, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <2 x double> %broadcast.splat, ptr %i.v, align 8, !tbaa !24
  store <2 x double> %broadcast.splat, ptr %i.w, align 8, !tbaa !24
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !381

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  store double %.pre, ptr %i.y, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !382

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.e
  br i1 %.not26, label %.thread, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !101
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !158 ; 2 uses
  %i.ad = tail call i32 @N_VScaleVectorArray(i32 noundef %i.r, ptr noundef %i.aa, ptr noundef %i.ac, ptr noundef %i.ac) #14 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.f, %._crit_edge
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !194
  %.not29 = icmp eq i32 %i.af, 0
  br i1 %.not29, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.thread
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !149
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !101
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !158 ; 2 uses
  %i.am = tail call i32 @N_VScaleVectorArray(i32 noundef %i.ah, ptr noundef %i.aj, ptr noundef %i.al, ptr noundef %i.al) #14 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread
  ret void
}

declare i32 @N_VLinearCombinationVectorArray(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @N_VConst(double noundef, ptr noundef) local_unnamed_addr #5

declare i32 @SUNNonlinSolSetup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @SUNNonlinSolSolve(ptr noundef, ptr noundef, ptr noundef, ptr noundef, double noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare i32 @SUNNonlinSolGetNumIters(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @SUNNonlinSolGetNumConvFails(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @N_VCompare(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @N_VProd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @N_VDiv(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare double @N_VMinQuotient(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

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
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind willreturn memory(read) }

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
!9 = !{!"IDAMemRec", !10, i64 0, !11, i64 8, !12, i64 16, !11, i64 24, !11, i64 32, !5, i64 40, !12, i64 48, !12, i64 56, !13, i64 64, !5, i64 72, !5, i64 76, !11, i64 80, !11, i64 88, !5, i64 96, !5, i64 100, !11, i64 104, !11, i64 112, !5, i64 120, !5, i64 124, !12, i64 128, !12, i64 136, !13, i64 144, !5, i64 152, !5, i64 156, !5, i64 160, !5, i64 164, !11, i64 168, !11, i64 176, !5, i64 184, !14, i64 192, !14, i64 200, !15, i64 208, !5, i64 216, !12, i64 224, !5, i64 232, !5, i64 236, !12, i64 240, !14, i64 248, !16, i64 256, !15, i64 264, !5, i64 272, !11, i64 280, !11, i64 288, !5, i64 296, !5, i64 300, !5, i64 304, !12, i64 312, !14, i64 320, !16, i64 328, !15, i64 336, !6, i64 344, !6, i64 392, !6, i64 440, !6, i64 488, !6, i64 536, !6, i64 584, !13, i64 632, !13, i64 640, !13, i64 648, !13, i64 656, !13, i64 664, !13, i64 672, !13, i64 680, !13, i64 688, !13, i64 696, !13, i64 704, !13, i64 712, !13, i64 720, !13, i64 728, !13, i64 736, !13, i64 744, !13, i64 752, !6, i64 760, !13, i64 808, !13, i64 816, !13, i64 824, !13, i64 832, !6, i64 840, !16, i64 888, !16, i64 896, !16, i64 904, !16, i64 912, !16, i64 920, !16, i64 928, !16, i64 936, !13, i64 944, !13, i64 952, !13, i64 960, !16, i64 968, !16, i64 976, !16, i64 984, !16, i64 992, !16, i64 1000, !16, i64 1008, !6, i64 1016, !16, i64 1064, !16, i64 1072, !16, i64 1080, !16, i64 1088, !13, i64 1096, !12, i64 1104, !13, i64 1112, !13, i64 1120, !5, i64 1128, !5, i64 1132, !5, i64 1136, !5, i64 1140, !5, i64 1144, !5, i64 1148, !5, i64 1152, !5, i64 1156, !12, i64 1160, !12, i64 1168, !12, i64 1176, !5, i64 1184, !12, i64 1192, !5, i64 1200, !5, i64 1204, !5, i64 1208, !5, i64 1212, !5, i64 1216, !12, i64 1224, !12, i64 1232, !12, i64 1240, !12, i64 1248, !12, i64 1256, !12, i64 1264, !12, i64 1272, !12, i64 1280, !12, i64 1288, !12, i64 1296, !12, i64 1304, !12, i64 1312, !12, i64 1320, !12, i64 1328, !12, i64 1336, !12, i64 1344, !12, i64 1352, !12, i64 1360, !12, i64 1368, !5, i64 1376, !5, i64 1380, !5, i64 1384, !5, i64 1388, !18, i64 1392, !12, i64 1400, !12, i64 1408, !12, i64 1416, !12, i64 1424, !12, i64 1432, !12, i64 1440, !12, i64 1448, !12, i64 1456, !12, i64 1464, !18, i64 1472, !18, i64 1480, !18, i64 1488, !18, i64 1496, !18, i64 1504, !18, i64 1512, !18, i64 1520, !18, i64 1528, !18, i64 1536, !18, i64 1544, !18, i64 1552, !18, i64 1560, !18, i64 1568, !18, i64 1576, !18, i64 1584, !18, i64 1592, !18, i64 1600, !18, i64 1608, !18, i64 1616, !18, i64 1624, !18, i64 1632, !18, i64 1640, !18, i64 1648, !18, i64 1656, !18, i64 1664, !18, i64 1672, !12, i64 1680, !5, i64 1688, !5, i64 1692, !5, i64 1696, !5, i64 1700, !5, i64 1704, !5, i64 1708, !5, i64 1712, !5, i64 1716, !5, i64 1720, !5, i64 1724, !5, i64 1728, !5, i64 1732, !19, i64 1736, !5, i64 1744, !19, i64 1752, !5, i64 1760, !19, i64 1768, !5, i64 1776, !13, i64 1784, !13, i64 1792, !13, i64 1800, !13, i64 1808, !13, i64 1816, !13, i64 1824, !5, i64 1832, !5, i64 1836, !11, i64 1840, !11, i64 1848, !11, i64 1856, !11, i64 1864, !11, i64 1872, !11, i64 1880, !11, i64 1888, !12, i64 1896, !5, i64 1904, !5, i64 1908, !11, i64 1912, !5, i64 1920, !15, i64 1928, !15, i64 1936, !12, i64 1944, !12, i64 1952, !12, i64 1960, !14, i64 1968, !14, i64 1976, !14, i64 1984, !12, i64 1992, !5, i64 2000, !18, i64 2008, !15, i64 2016, !5, i64 2024, !13, i64 2032, !18, i64 2040, !18, i64 2048, !5, i64 2056, !14, i64 2064, !6, i64 2072, !16, i64 2112, !16, i64 2120, !5, i64 2128, !20, i64 2136, !5, i64 2144}
!10 = !{!"p1 _ZTS11SUNContext_", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"double", !6, i64 0}
!13 = !{!"p1 _ZTS17_generic_N_Vector", !11, i64 0}
!14 = !{!"p1 double", !11, i64 0}
!15 = !{!"p1 int", !11, i64 0}
!16 = !{!"p2 _ZTS17_generic_N_Vector", !17, i64 0}
!17 = !{!"any p2 pointer", !11, i64 0}
!18 = !{!"long", !6, i64 0}
!19 = !{!"p1 _ZTS27_generic_SUNNonlinearSolver", !11, i64 0}
!20 = !{!"p1 _ZTS12IDAadjMemRec", !11, i64 0}
!21 = !{!9, !12, i64 16}
!22 = !{!9, !5, i64 72}
!23 = !{!9, !18, i64 1392}
!24 = !{!12, !12, i64 0}
!25 = !{!9, !12, i64 1464}
!26 = !{!9, !12, i64 1344}
!27 = !{!9, !12, i64 1896}
!28 = !{!9, !5, i64 2056}
!29 = !{!5, !5, i64 0}
!30 = !{!9, !5, i64 1136}
!31 = !{!9, !5, i64 1140}
!32 = !{!9, !5, i64 1144}
!33 = !{!9, !5, i64 1156}
!34 = !{!9, !5, i64 152}
!35 = !{!9, !11, i64 176}
!36 = !{!9, !11, i64 168}
!37 = !{!9, !5, i64 184}
!38 = !{!9, !5, i64 216}
!39 = !{!9, !5, i64 236}
!40 = !{!9, !5, i64 164}
!41 = !{!9, !11, i64 288}
!42 = !{!9, !11, i64 280}
!43 = !{!9, !5, i64 296}
!44 = !{!9, !5, i64 304}
!45 = !{!9, !18, i64 1664}
!46 = !{!9, !18, i64 1672}
!47 = !{!48, !50, i64 24}
!48 = !{!"SUNContext_", !11, i64 0, !49, i64 8, !5, i64 16, !50, i64 24, !5, i64 32, !5, i64 36, !51, i64 40, !5, i64 48}
!49 = !{!"p1 _ZTS12SUNProfiler_", !11, i64 0}
!50 = !{!"p1 _ZTS10SUNLogger_", !11, i64 0}
!51 = !{!"p1 _ZTS14SUNErrHandler_", !11, i64 0}
!52 = !{!48, !5, i64 36}
!53 = !{!51, !51, i64 0}
!54 = !{!55, !11, i64 8}
!55 = !{!"SUNErrHandler_", !51, i64 0, !11, i64 8, !11, i64 16}
!56 = !{!55, !11, i64 16}
!57 = distinct !{null}
!58 = !{!13, !13, i64 0}
!59 = !{!9, !12, i64 48}
!60 = !{!9, !14, i64 200}
!61 = !{!9, !15, i64 208}
!62 = !{!9, !14, i64 192}
!63 = !{!9, !13, i64 632}
!64 = !{!9, !12, i64 224}
!65 = !{!9, !11, i64 24}
!66 = !{!9, !11, i64 32}
!67 = distinct !{null}
!68 = !{!9, !18, i64 1512}
!69 = !{!9, !11, i64 104}
!70 = distinct !{null}
!71 = !{!9, !18, i64 1520}
!72 = !{!73, !74, i64 8}
!73 = !{!"_generic_N_Vector", !11, i64 0, !74, i64 8, !10, i64 16}
!74 = !{!"p1 _ZTS21_generic_N_Vector_Ops", !11, i64 0}
!75 = !{!76, !11, i64 8}
!76 = !{!"_generic_N_Vector_Ops", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !11, i64 368, !11, i64 376, !11, i64 384, !11, i64 392, !11, i64 400, !11, i64 408, !11, i64 416, !11, i64 424, !11, i64 432, !11, i64 440}
!77 = !{!76, !11, i64 24}
!78 = !{!76, !11, i64 88}
!79 = !{!76, !11, i64 96}
!80 = !{!76, !11, i64 104}
!81 = !{!76, !11, i64 120}
!82 = !{!76, !11, i64 128}
!83 = !{!76, !11, i64 136}
!84 = !{!76, !11, i64 144}
!85 = !{!76, !11, i64 168}
!86 = !{!76, !11, i64 184}
!87 = !{!76, !11, i64 32}
!88 = !{!18, !18, i64 0}
!89 = !{!9, !18, i64 1632}
!90 = !{!9, !18, i64 1640}
!91 = !{!9, !13, i64 696}
!92 = !{!9, !13, i64 672}
!93 = !{!9, !13, i64 656}
!94 = !{!9, !13, i64 664}
!95 = !{!9, !13, i64 688}
!96 = !{!9, !13, i64 704}
!97 = !{!9, !13, i64 712}
!98 = !{!9, !13, i64 720}
!99 = !{!9, !5, i64 1384}
!100 = !{!9, !5, i64 1388}
!101 = !{!9, !14, i64 2064}
!102 = !{!9, !16, i64 2112}
!103 = !{!9, !16, i64 2120}
!104 = !{!9, !12, i64 1264}
!105 = !{!9, !5, i64 1744}
!106 = !{!9, !5, i64 1904}
!107 = !{!9, !18, i64 1528}
!108 = !{!9, !18, i64 1552}
!109 = !{!9, !18, i64 1584}
!110 = !{!9, !18, i64 1600}
!111 = !{!9, !18, i64 1616}
!112 = !{!9, !5, i64 1204}
!113 = !{!9, !12, i64 1248}
!114 = !{!9, !12, i64 1680}
!115 = !{!9, !5, i64 2000}
!116 = !{!9, !5, i64 1148}
!117 = !{!9, !11, i64 1912}
!118 = !{!9, !5, i64 1920}
!119 = !{!9, !5, i64 2024}
!120 = !{!9, !5, i64 1688}
!121 = !{!9, !5, i64 1700}
!122 = !{!9, !5, i64 1692}
!123 = !{!9, !13, i64 64}
!124 = !{!9, !13, i64 2032}
!125 = !{!9, !5, i64 1696}
!126 = !{!9, !13, i64 680}
!127 = !{!9, !18, i64 2008}
!128 = !{!9, !11, i64 1888}
!129 = !{!9, !12, i64 56}
!130 = !{!9, !5, i64 40}
!131 = !{!9, !5, i64 76}
!132 = !{!9, !11, i64 80}
!133 = !{!9, !11, i64 88}
!134 = !{!9, !18, i64 1648}
!135 = !{!9, !18, i64 1656}
!136 = !{!9, !13, i64 808}
!137 = !{!9, !13, i64 816}
!138 = !{!9, !13, i64 824}
!139 = !{!9, !13, i64 832}
!140 = !{!9, !18, i64 1488}
!141 = !{!9, !18, i64 1560}
!142 = !{!9, !5, i64 100}
!143 = !{!9, !5, i64 1708}
!144 = !{!9, !5, i64 124}
!145 = !{!9, !12, i64 128}
!146 = !{!9, !12, i64 136}
!147 = !{!9, !5, i64 1704}
!148 = !{!9, !13, i64 144}
!149 = !{!9, !5, i64 160}
!150 = !{!9, !13, i64 960}
!151 = !{!9, !16, i64 888}
!152 = !{!9, !16, i64 896}
!153 = !{!9, !16, i64 904}
!154 = !{!9, !16, i64 912}
!155 = !{!9, !16, i64 920}
!156 = !{!9, !16, i64 928}
!157 = !{!9, !16, i64 936}
!158 = !{!16, !16, i64 0}
!159 = distinct !{!159, !160, !161}
!160 = !{!"llvm.loop.isvectorized", i32 1}
!161 = !{!"llvm.loop.unroll.runtime.disable"}
!162 = distinct !{!162, !161, !160}
!163 = !{!9, !18, i64 1496}
!164 = !{!9, !18, i64 1544}
!165 = !{!9, !18, i64 1568}
!166 = !{!9, !18, i64 1592}
!167 = !{!9, !18, i64 1608}
!168 = !{!9, !18, i64 1624}
!169 = distinct !{!169, !160, !161}
!170 = distinct !{!170, !161, !160}
!171 = !{!9, !5, i64 156}
!172 = !{!9, !5, i64 1720}
!173 = !{!9, !5, i64 1760}
!174 = !{!9, !5, i64 1776}
!175 = !{!9, !5, i64 1712}
!176 = !{!9, !16, i64 256}
!177 = !{!9, !5, i64 1716}
end_hunk_1

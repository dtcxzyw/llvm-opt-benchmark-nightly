Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/idas?download=true
inline.NumInlined: 65
inline.NumDeleted: 43
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@IDASensEwtSet:bb.a

IDASensEwtSetEE.exit:                             ; preds = %bb.j, %bb.i, %bb.g, %bb.f, %bb.d, %bb.c, %bb.h, %bb.e, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.h ], [ -1, %bb.f ], [ 0, %bb.b ], [ -1, %bb.c ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.g ], [ -1, %bb.i ], [ 0, %bb.j ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @IDAQuadSensEwtSet(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.b = load i32, ptr %i.a, align 8, !tbaa !51
  switch i32 %i.b, label %IDAQuadSensEwtSetEE.exit [
    i32 4, label %bb.b
    i32 1, label %bb.d
    i32 2, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !177
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !57   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !139
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.i, label %IDAQuadSensEwtSetEE.exit

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !59
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.l = load double, ptr %i.k, align 8, !tbaa !60
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !57
  tail call void @N_VScale(double noundef %i.l, ptr noundef %i.n, ptr noundef %i.e) #12
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !57
  %i.q = tail call fastcc i32 @IDAQuadEwtSet(ptr noundef nonnull readonly %0, ptr noundef %i.e, ptr noundef %i.p)
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.c, label %IDAQuadSensEwtSetEE.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !59
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.t = load double, ptr %i.s, align 8, !tbaa !60
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !57   ; 2 uses
  tail call void @N_VScale(double noundef %i.t, ptr noundef %i.u, ptr noundef %i.u) #12
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.v = load i32, ptr %i.g, align 4, !tbaa !139
  %i.w = sext i32 %i.v to i64
  %i.x = icmp slt i64 %indvars.iv.next.i, %i.w
  br i1 %i.x, label %.lr.ph.i, label %IDAQuadSensEwtSetEE.exit, !llvm.loop !338

bb.d:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !125  ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !139
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.i10, label %IDAQuadSensEwtSetEE.exit

.lr.ph.i10:                                       ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 296
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i10
  %indvars.iv.i11 = phi i64 [ 0, %.lr.ph.i10 ], [ %indvars.iv.next.i12, %bb.f ] ; 4 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i11
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !57
  tail call void @N_VAbs(ptr noundef %i.ag, ptr noundef %i.z) #12
  %i.ah = load double, ptr %i.ad, align 8, !tbaa !188
  tail call void @N_VScale(double noundef %i.ah, ptr noundef %i.z, ptr noundef %i.z) #12
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !190
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.i11
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !60
  tail call void @N_VAddConst(ptr noundef %i.z, double noundef %i.ak, ptr noundef %i.z) #12
  %i.al = tail call double @N_VMin(ptr noundef %i.z) #12
  %i.am = fcmp ugt double %i.al, 0.000000e+00
  br i1 %i.am, label %bb.f, label %IDAQuadSensEwtSetEE.exit

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i11
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !57
  tail call void @N_VInv(ptr noundef %i.z, ptr noundef %i.ao) #12
  %indvars.iv.next.i12 = add nuw nsw i64 %indvars.iv.i11, 1 ; 2 uses
  %i.ap = load i32, ptr %i.aa, align 4, !tbaa !139
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp slt i64 %indvars.iv.next.i12, %i.aq
  br i1 %i.ar, label %bb.e, label %IDAQuadSensEwtSetEE.exit, !llvm.loop !339

bb.g:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !125 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !139
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph.i13, label %IDAQuadSensEwtSetEE.exit

.lr.ph.i13:                                       ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 304
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i13
  %indvars.iv.i14 = phi i64 [ 0, %.lr.ph.i13 ], [ %indvars.iv.next.i15, %bb.i ] ; 4 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i14
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !57
  tail call void @N_VAbs(ptr noundef %i.ba, ptr noundef %i.at) #12
  %i.bb = load double, ptr %i.ax, align 8, !tbaa !188
  %i.bc = load ptr, ptr %i.ay, align 8, !tbaa !196
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.i14
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !57
  tail call void @N_VLinearSum(double noundef %i.bb, ptr noundef %i.at, double noundef 1.000000e+00, ptr noundef %i.be, ptr noundef %i.at) #12
  %i.bf = tail call double @N_VMin(ptr noundef %i.at) #12
  %i.bg = fcmp ugt double %i.bf, 0.000000e+00
  br i1 %i.bg, label %bb.i, label %IDAQuadSensEwtSetEE.exit

bb.i:                                             ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i14
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !57
  tail call void @N_VInv(ptr noundef %i.at, ptr noundef %i.bi) #12
  %indvars.iv.next.i15 = add nuw nsw i64 %indvars.iv.i14, 1 ; 2 uses
  %i.bj = load i32, ptr %i.au, align 4, !tbaa !139
  %i.bk = sext i32 %i.bj to i64
  %i.bl = icmp slt i64 %indvars.iv.next.i15, %i.bk
  br i1 %i.bl, label %bb.h, label %IDAQuadSensEwtSetEE.exit, !llvm.loop !340

IDAQuadSensEwtSetEE.exit:                         ; preds = %bb.i, %bb.h, %bb.f, %bb.e, %bb.c, %.lr.ph.i, %bb.g, %bb.d, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.g ], [ -1, %bb.e ], [ 0, %bb.b ], [ -1, %.lr.ph.i ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.f ], [ -1, %bb.h ], [ 0, %bb.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -99, -2) i32 @IDAHandleFailure(ptr nofree noundef nonnull readonly captures(address_is_null) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  switch i32 %1, label %bb.i [
    i32 -3, label %bb.b
    i32 -4, label %bb.c
    i32 -6, label %bb.d
    i32 -7, label %bb.e
    i32 -9, label %bb.f
    i32 -8, label %bb.g
    i32 -11, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.b = load double, ptr %i.a, align 8, !tbaa !100
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.d = load double, ptr %i.c, align 8, !tbaa !212
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.114, double noundef %i.b, double noundef %i.d)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.f = load double, ptr %i.e, align 8, !tbaa !100
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.h = load double, ptr %i.g, align 8, !tbaa !212
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.115, double noundef %i.f, double noundef %i.h)
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.j = load double, ptr %i.i, align 8, !tbaa !100
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.116, double noundef %i.j)
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.l = load double, ptr %i.k, align 8, !tbaa !100
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -7, ptr noundef nonnull @.str, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.117, double noundef %i.l)
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.n = load double, ptr %i.m, align 8, !tbaa !100
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -9, ptr noundef nonnull @.str, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.118, double noundef %i.n)
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.p = load double, ptr %i.o, align 8, !tbaa !100
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -8, ptr noundef nonnull @.str, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.119, double noundef %i.p)
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.r = load double, ptr %i.q, align 8, !tbaa !100
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -11, ptr noundef nonnull @.str, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.120, double noundef %i.r)
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ -11, %bb.h ], [ -3, %bb.b ], [ -4, %bb.c ], [ -6, %bb.d ], [ -7, %bb.e ], [ -9, %bb.f ], [ -8, %bb.g ], [ -99, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -27, 1) i32 @IDAGetDky(ptr nofree noundef readonly captures(address_is_null) %0, double noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [6 x double], align 16            ; 10 uses
  %i.b = alloca [6 x double], align 16            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, ptr noundef nonnull @.str, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.4)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq ptr %3, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -27, ptr noundef nonnull @.str, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.74)
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.e = icmp slt i32 %2, 0
  br i1 %i.e, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1660 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !105
  %i.h = icmp sgt i32 %2, %i.g
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -25, ptr noundef nonnull @.str, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.75)
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.i = load double, ptr %0, align 8, !tbaa !8
  %i.j = fmul double %i.i, 1.000000e+02
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 2 uses
  %i.l = load double, ptr %i.k, align 8, !tbaa !100
  %i.m = tail call double @SUNRabs(double noundef %i.l) #12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 2 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !212
  %i.p = tail call double @SUNRabs(double noundef %i.o) #12
  %i.q = fadd double %i.m, %i.p
  %i.r = fmul double %i.j, %i.q                   ; 2 uses
  %i.s = load double, ptr %i.n, align 8, !tbaa !212 ; 2 uses
  %i.t = fcmp olt double %i.s, 0.000000e+00
  %i.u = fneg double %i.r
  %.080 = select i1 %i.t, double %i.u, double %i.r
  %i.v = load double, ptr %i.k, align 8, !tbaa !100 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1672
  %i.x = load double, ptr %i.w, align 8, !tbaa !229
  %i.y = fsub double %i.v, %i.x                   ; 2 uses
  %i.z = fsub double %i.y, %.080
  %i.aa = fsub double %1, %i.z
  %i.ab = fmul double %i.s, %i.aa
  %i.ac = fcmp olt double %i.ab, 0.000000e+00
  br i1 %i.ac, label %bb.i, label %.lr.ph99

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -26, ptr noundef nonnull @.str, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.76, double noundef %1, double noundef %i.y, double noundef %i.v)
  br label %.loopexit

.lr.ph99:                                         ; preds = %bb.h
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, i8 0, i64 48, i1 false), !tbaa !60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.b, i8 0, i64 48, i1 false), !tbaa !60
  %i.ad = fsub double %1, %i.v
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.af = load i32, ptr %i.f, align 4, !tbaa !105
  %i.ag = sub i32 %i.af, %2                       ; 3 uses
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = add nuw i32 %2, 1
  %wide.trip.count = zext i32 %i.ai to i64
  %.not8691 = icmp slt i32 %i.ag, 1
  %scevgep120 = getelementptr i8, ptr %i.a, i64 -8
  br label %bb.j

.loopexit88:                                      ; preds = %bb.m, %.lr.ph96.preheader
  %indvars.iv.next110 = add nuw i64 %indvars.iv109, 1
  %exitcond.not = icmp eq i64 %indvar.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.j, !llvm.loop !341

bb.j:                                             ; preds = %.lr.ph99, %.loopexit88
  %indvars.iv109 = phi i64 [ 1, %.lr.ph99 ], [ %indvars.iv.next110, %.loopexit88 ] ; 4 uses
  %indvar = phi i64 [ 0, %.lr.ph99 ], [ %indvar.next, %.loopexit88 ] ; 10 uses
  %sext122 = shl i64 %indvars.iv109, 32
  %4 = ashr exact i64 %sext122, 29
  %scevgep121 = getelementptr i8, ptr %scevgep120, i64 %4
  %indvars114 = trunc i64 %indvars.iv109 to i32
  %i.aj = shl nuw nsw i64 %indvar, 3
  %i.ak = add nuw nsw i64 %i.aj, 8                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.ak
  %scevgep108 = getelementptr i8, ptr %i.a, i64 %i.ak
  %i.al = trunc i64 %indvar to i32
  %i.am = add i32 %i.ag, %i.al
  %smax = tail call i32 @llvm.smax.i32(i32 %i.am, i32 %indvars114)
  %i.an = trunc i64 %indvar to i32
  %i.ao = xor i32 %i.an, -1
  %i.ap = add i32 %smax, %i.ao
  %i.aq = zext i32 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, 3
  %i.as = add nuw nsw i64 %i.ar, 8
  %sext = shl i64 %indvars.iv109, 32
  %i.at = ashr exact i64 %sext, 32
  %i.au = icmp eq i64 %indvar, 0
  br i1 %i.au, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store double 1.000000e+00, ptr %i.a, align 16, !tbaa !60
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.av = add nsw i64 %indvar, -1                 ; 2 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.av
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !60
  %i.ay = trunc nuw nsw i64 %indvar to i32
  %i.az = uitofp nneg i32 %i.ay to double
  %i.ba = fmul double %i.ax, %i.az
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.av
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !60 ; 2 uses
  %i.bd = fdiv double %i.ba, %i.bc
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvar
  store double %i.bd, ptr %i.be, align 8, !tbaa !60
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.078 = phi double [ 0.000000e+00, %bb.k ], [ %i.bc, %bb.l ]
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %i.bf = add nuw nsw i64 %indvar, %i.ah
  br i1 %.not8691, label %.loopexit88, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.bg = trunc nuw nsw i64 %indvar to i32
  %i.bh = uitofp nneg i32 %i.bg to double
  %load_initial = load double, ptr %scevgep121, align 8
  br label %bb.n

.lr.ph96.preheader:                               ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %scevgep108, i64 %i.as, i1 false), !tbaa !60
  br label %.loopexit88

bb.n:                                             ; preds = %.lr.ph, %bb.n
  %store_forwarded = phi double [ %load_initial, %.lr.ph ], [ %i.bq, %bb.n ]
  %indvars.iv105 = phi i64 [ %i.at, %.lr.ph ], [ %indvars.iv.next106, %bb.n ] ; 4 uses
  %.17992 = phi double [ %.078, %.lr.ph ], [ %i.bp, %bb.n ]
  %i.bi = add nsw i64 %indvars.iv105, -1          ; 2 uses
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.bi
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !60
  %i.bl = fadd double %i.ad, %.17992
  %i.bm = fmul double %i.bl, %store_forwarded
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.bh, double %i.bk, double %i.bm)
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.bi
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !60 ; 2 uses
  %i.bq = fdiv double %i.bn, %i.bp                ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv105
  store double %i.bq, ptr %i.br, align 8, !tbaa !60
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1
  %.not86.not = icmp slt i64 %indvars.iv105, %i.bf
  br i1 %.not86.not, label %bb.n, label %.lr.ph96.preheader, !llvm.loop !342

._crit_edge:                                      ; preds = %.loopexit88
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef nonnull %3) #12
  %i.bs = load i32, ptr %i.f, align 4, !tbaa !105
  %.not85100 = icmp sgt i32 %2, %i.bs
  br i1 %.not85100, label %.loopexit, label %.lr.ph103

.lr.ph103:                                        ; preds = %._crit_edge
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bu = zext nneg i32 %2 to i64
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph103, %bb.o
  %indvars.iv = phi i64 [ %i.bu, %.lr.ph103 ], [ %indvars.iv.next, %bb.o ] ; 4 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !60
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !57
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef nonnull %3, double noundef %i.bw, ptr noundef %i.by, ptr noundef nonnull %3) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.bz = load i32, ptr %i.f, align 4, !tbaa !105
  %i.ca = trunc nuw i64 %indvars.iv to i32
  %.not85.not = icmp sgt i32 %i.bz, %i.ca
  br i1 %.not85.not, label %bb.o, label %.loopexit, !llvm.loop !343

.loopexit:                                        ; preds = %bb.o, %._crit_edge, %bb.i, %bb.g, %bb.d, %bb.b
  %.081 = phi i32 [ -20, %bb.b ], [ -27, %bb.d ], [ -25, %bb.g ], [ -26, %bb.i ], [ 0, %._crit_edge ], [ 0, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.081
}

declare void @N_VLinearSum(double noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define range(i32 -30, 1) i32 @IDAGetQuad(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, ptr noundef nonnull @.str, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.4)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.c = load double, ptr %i.b, align 8, !tbaa !225 ; 2 uses
  store double %i.c, ptr %1, align 8, !tbaa !60
  %i.d = tail call i32 @IDAGetQuadDky(ptr noundef nonnull %0, double noundef %i.c, i32 noundef 0, ptr noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -20, %bb.b ], [ %i.d, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -30, 1) i32 @IDAGetQuadDky(ptr nofree noundef readonly captures(address_is_null) %0, double noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [6 x double], align 16            ; 10 uses
  %i.b = alloca [6 x double], align 16            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, ptr noundef nonnull @.str, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.4)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load i32, ptr %i.d, align 8, !tbaa !33
  %.not = icmp eq i32 %i.e, 1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -30, ptr noundef nonnull @.str, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.18)
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.f = icmp eq ptr %3, null
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -27, ptr noundef nonnull @.str, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.74)
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.g = icmp slt i32 %2, 0
  br i1 %i.g, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.i = load i32, ptr %i.h, align 8, !tbaa !218
  %i.j = icmp sgt i32 %2, %i.i
  br i1 %i.j, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -25, ptr noundef nonnull @.str, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.75)
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.k = load double, ptr %0, align 8, !tbaa !8
  %i.l = fmul double %i.k, 1.000000e+02
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.n = load double, ptr %i.m, align 8, !tbaa !100 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.p = load double, ptr %i.o, align 8, !tbaa !212 ; 2 uses
  %i.q = fadd double %i.n, %i.p
  %i.r = fmul double %i.l, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1672
  %i.t = load double, ptr %i.s, align 8, !tbaa !229
  %i.u = fsub double %i.n, %i.t                   ; 2 uses
  %i.v = fsub double %i.u, %i.r
  %i.w = fsub double %1, %i.v
  %i.x = fmul double %i.p, %i.w
  %i.y = fcmp olt double %i.x, 0.000000e+00
  br i1 %i.y, label %bb.k, label %.lr.ph99

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -26, ptr noundef nonnull @.str, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.76, double noundef %1, double noundef %i.u, double noundef %i.n)
  br label %.loopexit

.lr.ph99:                                         ; preds = %bb.j
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, i8 0, i64 48, i1 false), !tbaa !60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.b, i8 0, i64 48, i1 false), !tbaa !60
  %i.z = fsub double %1, %i.n
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1660
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !105
  %i.ad = sub i32 %i.ac, %2                       ; 3 uses
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = add nuw i32 %2, 1
  %wide.trip.count = zext i32 %i.af to i64
  %.not8691 = icmp slt i32 %i.ad, 1
  %scevgep120 = getelementptr i8, ptr %i.a, i64 -8
  br label %bb.l

.loopexit88:                                      ; preds = %bb.o, %.lr.ph96.preheader
  %indvars.iv.next110 = add nuw i64 %indvars.iv109, 1
  %exitcond.not = icmp eq i64 %indvar.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.l, !llvm.loop !344

bb.l:                                             ; preds = %.lr.ph99, %.loopexit88
  %indvars.iv109 = phi i64 [ 1, %.lr.ph99 ], [ %indvars.iv.next110, %.loopexit88 ] ; 4 uses
  %indvar = phi i64 [ 0, %.lr.ph99 ], [ %indvar.next, %.loopexit88 ] ; 10 uses
  %sext122 = shl i64 %indvars.iv109, 32
  %4 = ashr exact i64 %sext122, 29
  %scevgep121 = getelementptr i8, ptr %scevgep120, i64 %4
  %indvars114 = trunc i64 %indvars.iv109 to i32
  %i.ag = shl nuw nsw i64 %indvar, 3
  %i.ah = add nuw nsw i64 %i.ag, 8                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.ah
  %scevgep108 = getelementptr i8, ptr %i.a, i64 %i.ah
  %i.ai = trunc i64 %indvar to i32
  %i.aj = add i32 %i.ad, %i.ai
  %smax = tail call i32 @llvm.smax.i32(i32 %i.aj, i32 %indvars114)
  %i.ak = trunc i64 %indvar to i32
  %i.al = xor i32 %i.ak, -1
  %i.am = add i32 %smax, %i.al
  %i.an = zext i32 %i.am to i64
  %i.ao = shl nuw nsw i64 %i.an, 3
  %i.ap = add nuw nsw i64 %i.ao, 8
  %sext = shl i64 %indvars.iv109, 32
  %i.aq = ashr exact i64 %sext, 32
  %i.ar = icmp eq i64 %indvar, 0
  br i1 %i.ar, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store double 1.000000e+00, ptr %i.a, align 16, !tbaa !60
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.as = add nsw i64 %indvar, -1                 ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.as
  %i.au = load double, ptr %i.at, align 8, !tbaa !60
  %i.av = trunc nuw nsw i64 %indvar to i32
  %i.aw = uitofp nneg i32 %i.av to double
  %i.ax = fmul double %i.au, %i.aw
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.as
  %i.az = load double, ptr %i.ay, align 8, !tbaa !60 ; 2 uses
  %i.ba = fdiv double %i.ax, %i.az
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvar
  store double %i.ba, ptr %i.bb, align 8, !tbaa !60
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.078 = phi double [ 0.000000e+00, %bb.m ], [ %i.az, %bb.n ]
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %i.bc = add nuw nsw i64 %indvar, %i.ae
  br i1 %.not8691, label %.loopexit88, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %i.bd = trunc nuw nsw i64 %indvar to i32
  %i.be = uitofp nneg i32 %i.bd to double
  %load_initial = load double, ptr %scevgep121, align 8
  br label %bb.p

.lr.ph96.preheader:                               ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %scevgep108, i64 %i.ap, i1 false), !tbaa !60
  br label %.loopexit88

bb.p:                                             ; preds = %.lr.ph, %bb.p
  %store_forwarded = phi double [ %load_initial, %.lr.ph ], [ %i.bn, %bb.p ]
  %indvars.iv105 = phi i64 [ %i.aq, %.lr.ph ], [ %indvars.iv.next106, %bb.p ] ; 4 uses
  %.17992 = phi double [ %.078, %.lr.ph ], [ %i.bm, %bb.p ]
  %i.bf = add nsw i64 %indvars.iv105, -1          ; 2 uses
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.bf
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !60
  %i.bi = fadd double %i.z, %.17992
  %i.bj = fmul double %i.bi, %store_forwarded
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.be, double %i.bh, double %i.bj)
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.bf
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !60 ; 2 uses
  %i.bn = fdiv double %i.bk, %i.bm                ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv105
  store double %i.bn, ptr %i.bo, align 8, !tbaa !60
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1
  %.not86.not = icmp slt i64 %indvars.iv105, %i.bc
  br i1 %.not86.not, label %bb.p, label %.lr.ph96.preheader, !llvm.loop !345

._crit_edge:                                      ; preds = %.loopexit88
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef nonnull %3) #12
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1660 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !105
  %.not85100 = icmp sgt i32 %2, %i.bq
  br i1 %.not85100, label %.loopexit, label %.lr.ph103

.lr.ph103:                                        ; preds = %._crit_edge
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.bs = zext nneg i32 %2 to i64
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph103, %bb.q
  %indvars.iv = phi i64 [ %i.bs, %.lr.ph103 ], [ %indvars.iv.next, %bb.q ] ; 4 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !60
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !57
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef nonnull %3, double noundef %i.bu, ptr noundef %i.bw, ptr noundef nonnull %3) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.bx = load i32, ptr %i.bp, align 4, !tbaa !105
  %i.by = trunc nuw i64 %indvars.iv to i32
  %.not85.not = icmp sgt i32 %i.bx, %i.by
  br i1 %.not85.not, label %bb.q, label %.loopexit, !llvm.loop !346

.loopexit:                                        ; preds = %bb.q, %._crit_edge, %bb.k, %bb.i, %bb.f, %bb.d, %bb.b
  %.080 = phi i32 [ -20, %bb.b ], [ -30, %bb.d ], [ -27, %bb.f ], [ -25, %bb.i ], [ -26, %bb.k ], [ 0, %._crit_edge ], [ 0, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.080
}

; Function Attrs: nounwind uwtable
define range(i32 -40, 1) i32 @IDAGetSens(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, ptr noundef nonnull @.str, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.4)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, null
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -27, ptr noundef nonnull @.str, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.74)
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load i32, ptr %i.c, align 8, !tbaa !37
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -40, ptr noundef nonnull @.str, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.30)
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.g = load double, ptr %i.f, align 8, !tbaa !225
  store double %i.g, ptr %1, align 8, !tbaa !60
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !139
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %.loopexit

bb.h:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.k = load i32, ptr %i.h, align 4, !tbaa !139
  %i.l = sext i32 %i.k to i64
  %i.m = icmp slt i64 %indvars.iv.next, %i.l
  br i1 %i.m, label %.lr.ph, label %.loopexit, !llvm.loop !347

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 0, %bb.g ] ; 3 uses
  %i.n = load double, ptr %1, align 8, !tbaa !60
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !57
  %i.q = trunc nuw nsw i64 %indvars.iv to i32
  %i.r = tail call i32 @IDAGetSensDky1(ptr noundef nonnull %0, double noundef %i.n, i32 noundef 0, i32 noundef %i.q, ptr noundef %i.p) ; 2 uses
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.h, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.h, %bb.g, %bb.f, %bb.d, %bb.b
  %.018 = phi i32 [ -20, %bb.b ], [ -27, %bb.d ], [ -40, %bb.f ], [ 0, %bb.g ], [ %i.r, %.lr.ph ], [ 0, %bb.h ]
  ret i32 %.018
}

; Function Attrs: nounwind uwtable
define range(i32 -40, 1) i32 @IDAGetSensDky1(ptr nofree noundef readonly captures(address_is_null) %0, double noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [6 x double], align 16            ; 10 uses
  %i.b = alloca [6 x double], align 16            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, ptr noundef nonnull @.str, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.4)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.e = load i32, ptr %i.d, align 8, !tbaa !37
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -40, ptr noundef nonnull @.str, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.30)
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.g = icmp eq ptr %4, null
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -27, ptr noundef nonnull @.str, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.74)
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.h = icmp slt i32 %3, 0
  br i1 %i.h, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.j = load i32, ptr %i.i, align 4, !tbaa !139
  %.not = icmp slt i32 %3, %i.j
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -43, ptr noundef nonnull @.str, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.k = icmp slt i32 %2, 0
  br i1 %i.k, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1660 ; 4 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !105
  %i.n = icmp sgt i32 %2, %i.m
  br i1 %i.n, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -25, ptr noundef nonnull @.str, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.75)
  br label %.loopexit

bb.m:                                             ; preds = %bb.k
  %i.o = load double, ptr %0, align 8, !tbaa !8
  %i.p = fmul double %i.o, 1.000000e+02
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 2 uses
  %i.r = load double, ptr %i.q, align 8, !tbaa !100
  %i.s = tail call double @SUNRabs(double noundef %i.r) #12
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 2 uses
  %i.u = load double, ptr %i.t, align 8, !tbaa !212
  %i.v = tail call double @SUNRabs(double noundef %i.u) #12
  %i.w = fadd double %i.s, %i.v
  %i.x = fmul double %i.p, %i.w                   ; 2 uses
  %i.y = load double, ptr %i.t, align 8, !tbaa !212 ; 2 uses
  %i.z = fcmp olt double %i.y, 0.000000e+00
  %i.aa = fneg double %i.x
  %.087 = select i1 %i.z, double %i.aa, double %i.x
  %i.ab = load double, ptr %i.q, align 8, !tbaa !100 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1672
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !229
  %i.ae = fsub double %i.ab, %i.ad                ; 2 uses
  %i.af = fsub double %i.ae, %.087
  %i.ag = fsub double %1, %i.af
  %i.ah = fmul double %i.y, %i.ag
  %i.ai = fcmp olt double %i.ah, 0.000000e+00
  br i1 %i.ai, label %bb.n, label %.lr.ph108

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -26, ptr noundef nonnull @.str, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.76, double noundef %1, double noundef %i.ae, double noundef %i.ab)
  br label %.loopexit

.lr.ph108:                                        ; preds = %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, i8 0, i64 48, i1 false), !tbaa !60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.b, i8 0, i64 48, i1 false), !tbaa !60
  %i.aj = fsub double %1, %i.ab
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.al = load i32, ptr %i.l, align 4, !tbaa !105
  %i.am = sub i32 %i.al, %2                       ; 3 uses
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = add nuw i32 %2, 1
  %wide.trip.count = zext i32 %i.ao to i64
  %.not95100 = icmp slt i32 %i.am, 1
  %scevgep130 = getelementptr i8, ptr %i.a, i64 -8
  br label %bb.o

.loopexit97:                                      ; preds = %bb.r, %.lr.ph105.preheader
  %indvars.iv.next119 = add nuw i64 %indvars.iv118, 1
  %exitcond.not = icmp eq i64 %indvar.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.o, !llvm.loop !348

bb.o:                                             ; preds = %.lr.ph108, %.loopexit97
  %indvars.iv118 = phi i64 [ 1, %.lr.ph108 ], [ %indvars.iv.next119, %.loopexit97 ] ; 4 uses
  %indvar = phi i64 [ 0, %.lr.ph108 ], [ %indvar.next, %.loopexit97 ] ; 10 uses
  %sext132 = shl i64 %indvars.iv118, 32
  %5 = ashr exact i64 %sext132, 29
  %scevgep131 = getelementptr i8, ptr %scevgep130, i64 %5
  %indvars123 = trunc i64 %indvars.iv118 to i32
  %i.ap = shl nuw nsw i64 %indvar, 3
  %i.aq = add nuw nsw i64 %i.ap, 8                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.aq
  %scevgep117 = getelementptr i8, ptr %i.a, i64 %i.aq
  %i.ar = trunc i64 %indvar to i32
  %i.as = add i32 %i.am, %i.ar
  %smax = tail call i32 @llvm.smax.i32(i32 %i.as, i32 %indvars123)
  %i.at = trunc i64 %indvar to i32
  %i.au = xor i32 %i.at, -1
  %i.av = add i32 %smax, %i.au
  %i.aw = zext i32 %i.av to i64
  %i.ax = shl nuw nsw i64 %i.aw, 3
  %i.ay = add nuw nsw i64 %i.ax, 8
  %sext = shl i64 %indvars.iv118, 32
  %i.az = ashr exact i64 %sext, 32
  %i.ba = icmp eq i64 %indvar, 0
  br i1 %i.ba, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store double 1.000000e+00, ptr %i.a, align 16, !tbaa !60
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bb = add nsw i64 %indvar, -1                 ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bb
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !60
  %i.be = trunc nuw nsw i64 %indvar to i32
  %i.bf = uitofp nneg i32 %i.be to double
  %i.bg = fmul double %i.bd, %i.bf
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.bb
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !60 ; 2 uses
  %i.bj = fdiv double %i.bg, %i.bi
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvar
  store double %i.bj, ptr %i.bk, align 8, !tbaa !60
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.085 = phi double [ 0.000000e+00, %bb.p ], [ %i.bi, %bb.q ]
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %i.bl = add nuw nsw i64 %indvar, %i.an
  br i1 %.not95100, label %.loopexit97, label %.lr.ph

.lr.ph:                                           ; preds = %bb.r
  %i.bm = trunc nuw nsw i64 %indvar to i32
  %i.bn = uitofp nneg i32 %i.bm to double
  %load_initial = load double, ptr %scevgep131, align 8
  br label %bb.s

.lr.ph105.preheader:                              ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %scevgep117, i64 %i.ay, i1 false), !tbaa !60
  br label %.loopexit97

bb.s:                                             ; preds = %.lr.ph, %bb.s
  %store_forwarded = phi double [ %load_initial, %.lr.ph ], [ %i.bw, %bb.s ]
  %indvars.iv114 = phi i64 [ %i.az, %.lr.ph ], [ %indvars.iv.next115, %bb.s ] ; 4 uses
  %.186101 = phi double [ %.085, %.lr.ph ], [ %i.bv, %bb.s ]
  %i.bo = add nsw i64 %indvars.iv114, -1          ; 2 uses
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.bo
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !60
  %i.br = fadd double %i.aj, %.186101
  %i.bs = fmul double %i.br, %store_forwarded
  %i.bt = tail call double @llvm.fmuladd.f64(double %i.bn, double %i.bq, double %i.bs)
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.bo
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !60 ; 2 uses
  %i.bw = fdiv double %i.bt, %i.bv                ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv114
  store double %i.bw, ptr %i.bx, align 8, !tbaa !60
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1
  %.not95.not = icmp slt i64 %indvars.iv114, %i.bl
  br i1 %.not95.not, label %bb.s, label %.lr.ph105.preheader, !llvm.loop !349

._crit_edge:                                      ; preds = %.loopexit97
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef nonnull %4) #12
  %i.by = load i32, ptr %i.l, align 4, !tbaa !105
  %.not94109 = icmp sgt i32 %2, %i.by
  br i1 %.not94109, label %.loopexit, label %.lr.ph112

.lr.ph112:                                        ; preds = %._crit_edge
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.ca = sext i32 %3 to i64
  %i.cb = zext nneg i32 %2 to i64
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph112, %bb.t
  %indvars.iv = phi i64 [ %i.cb, %.lr.ph112 ], [ %indvars.iv.next, %bb.t ] ; 4 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !60
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !148
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.ca
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !57
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef nonnull %4, double noundef %i.cd, ptr noundef %i.ch, ptr noundef nonnull %4) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.ci = load i32, ptr %i.l, align 4, !tbaa !105
  %i.cj = trunc nuw i64 %indvars.iv to i32
  %.not94.not = icmp sgt i32 %i.ci, %i.cj
  br i1 %.not94.not, label %bb.t, label %.loopexit, !llvm.loop !350

.loopexit:                                        ; preds = %bb.t, %._crit_edge, %bb.n, %bb.l, %bb.f, %bb.d, %bb.b
  %.088 = phi i32 [ -20, %bb.b ], [ -40, %bb.d ], [ -27, %bb.f ], [ -25, %bb.l ], [ -26, %bb.n ], [ 0, %._crit_edge ], [ 0, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.088
}

; Function Attrs: nounwind uwtable
define range(i32 -40, 1) i32 @IDAGetSensDky(ptr nofree noundef readonly captures(address_is_null) %0, double noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, ptr noundef nonnull @.str, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.4)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load i32, ptr %i.b, align 8, !tbaa !37
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -40, ptr noundef nonnull @.str, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.30)
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.e = icmp eq ptr %3, null
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -27, ptr noundef nonnull @.str, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.74)
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.f = icmp slt i32 %2, 0
  br i1 %i.f, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.h = load i32, ptr %i.g, align 8, !tbaa !218
  %i.i = icmp sgt i32 %2, %i.h
  br i1 %i.i, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !139
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %.loopexit

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -25, ptr noundef nonnull @.str, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.75)
  br label %.loopexit

bb.j:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.m = load i32, ptr %i.j, align 4, !tbaa !139
  %i.n = sext i32 %i.m to i64
  %i.o = icmp slt i64 %indvars.iv.next, %i.n
  br i1 %i.o, label %.lr.ph, label %.loopexit, !llvm.loop !351

.lr.ph:                                           ; preds = %.preheader, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 0, %.preheader ] ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !57
  %i.r = trunc nuw nsw i64 %indvars.iv to i32
  %i.s = tail call i32 @IDAGetSensDky1(ptr noundef nonnull %0, double noundef %1, i32 noundef %2, i32 noundef %i.r, ptr noundef %i.q) ; 2 uses
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.j, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.j, %.preheader, %bb.i, %bb.f, %bb.d, %bb.b
  %.022 = phi i32 [ -20, %bb.b ], [ -40, %bb.d ], [ -27, %bb.f ], [ -25, %bb.i ], [ 0, %.preheader ], [ %i.s, %.lr.ph ], [ 0, %bb.j ]
  ret i32 %.022
}

; Function Attrs: nounwind uwtable
define range(i32 -40, 1) i32 @IDAGetSens1(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, ptr noundef nonnull @.str, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.4)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.c = load double, ptr %i.b, align 8, !tbaa !225 ; 2 uses
  store double %i.c, ptr %1, align 8, !tbaa !60
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
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, ptr noundef nonnull @.str, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.4)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, null
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -27, ptr noundef nonnull @.str, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.74)
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.d = load i32, ptr %i.c, align 8, !tbaa !46
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -40, ptr noundef nonnull @.str, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.40)
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.g = load double, ptr %i.f, align 8, !tbaa !225
  store double %i.g, ptr %1, align 8, !tbaa !60
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !139
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %.loopexit

bb.h:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.k = load i32, ptr %i.h, align 4, !tbaa !139
  %i.l = sext i32 %i.k to i64
  %i.m = icmp slt i64 %indvars.iv.next, %i.l
  br i1 %i.m, label %.lr.ph, label %.loopexit, !llvm.loop !352

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 0, %bb.g ] ; 3 uses
  %i.n = load double, ptr %1, align 8, !tbaa !60
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !57
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, ptr noundef nonnull @.str, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.4)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.e = load i32, ptr %i.d, align 8, !tbaa !37
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -40, ptr noundef nonnull @.str, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.30)
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.h = load i32, ptr %i.g, align 8, !tbaa !46
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -50, ptr noundef nonnull @.str, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.40)
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.j = icmp eq ptr %4, null
  br i1 %i.j, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -27, ptr noundef nonnull @.str, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.74)
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.k = icmp slt i32 %3, 0
  br i1 %i.k, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.m = load i32, ptr %i.l, align 4, !tbaa !139
  %.not = icmp slt i32 %3, %i.m
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -43, ptr noundef nonnull @.str, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.83)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.n = icmp slt i32 %2, 0
  br i1 %i.n, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1660 ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !105
  %i.q = icmp sgt i32 %2, %i.p
  br i1 %i.q, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -25, ptr noundef nonnull @.str, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.75)
  br label %.loopexit

bb.o:                                             ; preds = %bb.m
  %i.r = load double, ptr %0, align 8, !tbaa !8
  %i.s = fmul double %i.r, 1.000000e+02
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 2 uses
  %i.u = load double, ptr %i.t, align 8, !tbaa !100
  %i.v = tail call double @SUNRabs(double noundef %i.u) #12
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 2 uses
  %i.x = load double, ptr %i.w, align 8, !tbaa !212
  %i.y = tail call double @SUNRabs(double noundef %i.x) #12
  %i.z = fadd double %i.v, %i.y
  %i.aa = fmul double %i.s, %i.z                  ; 2 uses
  %i.ab = load double, ptr %i.w, align 8, !tbaa !212 ; 2 uses
  %i.ac = fcmp olt double %i.ab, 0.000000e+00
  %i.ad = fneg double %i.aa
  %.089 = select i1 %i.ac, double %i.ad, double %i.aa
  %i.ae = load double, ptr %i.t, align 8, !tbaa !100 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1672
  %i.ag = load double, ptr %i.af, align 8, !tbaa !229
  %i.ah = fsub double %i.ae, %i.ag                ; 2 uses
  %i.ai = fsub double %i.ah, %.089
  %i.aj = fsub double %1, %i.ai
  %i.ak = fmul double %i.ab, %i.aj
  %i.al = fcmp olt double %i.ak, 0.000000e+00
  br i1 %i.al, label %bb.p, label %.lr.ph110

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -26, ptr noundef nonnull @.str, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.76, double noundef %1, double noundef %i.ah, double noundef %i.ae)
  br label %.loopexit

.lr.ph110:                                        ; preds = %bb.o
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, i8 0, i64 48, i1 false), !tbaa !60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.b, i8 0, i64 48, i1 false), !tbaa !60
  %i.am = fsub double %1, %i.ae
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.ao = load i32, ptr %i.o, align 4, !tbaa !105
  %i.ap = sub i32 %i.ao, %2                       ; 3 uses
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = add nuw i32 %2, 1
  %wide.trip.count = zext i32 %i.ar to i64
  %.not97102 = icmp slt i32 %i.ap, 1
  %scevgep132 = getelementptr i8, ptr %i.a, i64 -8
  br label %bb.q

.loopexit99:                                      ; preds = %bb.t, %.lr.ph107.preheader
  %indvars.iv.next121 = add nuw i64 %indvars.iv120, 1
  %exitcond.not = icmp eq i64 %indvar.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.q, !llvm.loop !353

bb.q:                                             ; preds = %.lr.ph110, %.loopexit99
  %indvars.iv120 = phi i64 [ 1, %.lr.ph110 ], [ %indvars.iv.next121, %.loopexit99 ] ; 4 uses
  %indvar = phi i64 [ 0, %.lr.ph110 ], [ %indvar.next, %.loopexit99 ] ; 10 uses
  %sext134 = shl i64 %indvars.iv120, 32
  %5 = ashr exact i64 %sext134, 29
  %scevgep133 = getelementptr i8, ptr %scevgep132, i64 %5
  %indvars125 = trunc i64 %indvars.iv120 to i32
  %i.as = shl nuw nsw i64 %indvar, 3
  %i.at = add nuw nsw i64 %i.as, 8                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.at
  %scevgep119 = getelementptr i8, ptr %i.a, i64 %i.at
  %i.au = trunc i64 %indvar to i32
  %i.av = add i32 %i.ap, %i.au
  %smax = tail call i32 @llvm.smax.i32(i32 %i.av, i32 %indvars125)
  %i.aw = trunc i64 %indvar to i32
  %i.ax = xor i32 %i.aw, -1
  %i.ay = add i32 %smax, %i.ax
  %i.az = zext i32 %i.ay to i64
  %i.ba = shl nuw nsw i64 %i.az, 3
  %i.bb = add nuw nsw i64 %i.ba, 8
  %sext = shl i64 %indvars.iv120, 32
  %i.bc = ashr exact i64 %sext, 32
  %i.bd = icmp eq i64 %indvar, 0
  br i1 %i.bd, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store double 1.000000e+00, ptr %i.a, align 16, !tbaa !60
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.be = add nsw i64 %indvar, -1                 ; 2 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.be
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !60
  %i.bh = trunc nuw nsw i64 %indvar to i32
  %i.bi = uitofp nneg i32 %i.bh to double
  %i.bj = fmul double %i.bg, %i.bi
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.be
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !60 ; 2 uses
  %i.bm = fdiv double %i.bj, %i.bl
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvar
  store double %i.bm, ptr %i.bn, align 8, !tbaa !60
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.087 = phi double [ 0.000000e+00, %bb.r ], [ %i.bl, %bb.s ]
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %i.bo = add nuw nsw i64 %indvar, %i.aq
  br i1 %.not97102, label %.loopexit99, label %.lr.ph

.lr.ph:                                           ; preds = %bb.t
  %i.bp = trunc nuw nsw i64 %indvar to i32
  %i.bq = uitofp nneg i32 %i.bp to double
  %load_initial = load double, ptr %scevgep133, align 8
  br label %bb.u

.lr.ph107.preheader:                              ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %scevgep119, i64 %i.bb, i1 false), !tbaa !60
  br label %.loopexit99

bb.u:                                             ; preds = %.lr.ph, %bb.u
  %store_forwarded = phi double [ %load_initial, %.lr.ph ], [ %i.bz, %bb.u ]
  %indvars.iv116 = phi i64 [ %i.bc, %.lr.ph ], [ %indvars.iv.next117, %bb.u ] ; 4 uses
  %.188103 = phi double [ %.087, %.lr.ph ], [ %i.by, %bb.u ]
  %i.br = add nsw i64 %indvars.iv116, -1          ; 2 uses
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.br
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !60
  %i.bu = fadd double %i.am, %.188103
  %i.bv = fmul double %i.bu, %store_forwarded
  %i.bw = tail call double @llvm.fmuladd.f64(double %i.bq, double %i.bt, double %i.bv)
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.br
  %i.by = load double, ptr %i.bx, align 8, !tbaa !60 ; 2 uses
  %i.bz = fdiv double %i.bw, %i.by                ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv116
  store double %i.bz, ptr %i.ca, align 8, !tbaa !60
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1
  %.not97.not = icmp slt i64 %indvars.iv116, %i.bo
  br i1 %.not97.not, label %bb.u, label %.lr.ph107.preheader, !llvm.loop !354

._crit_edge:                                      ; preds = %.loopexit99
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef nonnull %4) #12
  %i.cb = load i32, ptr %i.o, align 4, !tbaa !105
  %.not96111 = icmp sgt i32 %2, %i.cb
  br i1 %.not96111, label %.loopexit, label %.lr.ph114

.lr.ph114:                                        ; preds = %._crit_edge
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.cd = sext i32 %3 to i64
  %i.ce = zext nneg i32 %2 to i64
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph114, %bb.v
  %indvars.iv = phi i64 [ %i.ce, %.lr.ph114 ], [ %indvars.iv.next, %bb.v ] ; 4 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !60
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !148
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %i.cd
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !57
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef nonnull %4, double noundef %i.cg, ptr noundef %i.ck, ptr noundef nonnull %4) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.cl = load i32, ptr %i.o, align 4, !tbaa !105
  %i.cm = trunc nuw i64 %indvars.iv to i32
  %.not96.not = icmp sgt i32 %i.cl, %i.cm
  br i1 %.not96.not, label %bb.v, label %.loopexit, !llvm.loop !355

.loopexit:                                        ; preds = %bb.v, %._crit_edge, %bb.p, %bb.n, %bb.h, %bb.f, %bb.d, %bb.b
  %.090 = phi i32 [ -20, %bb.b ], [ -40, %bb.d ], [ -50, %bb.f ], [ -27, %bb.h ], [ -25, %bb.n ], [ -26, %bb.p ], [ 0, %._crit_edge ], [ 0, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.090
}

; Function Attrs: nounwind uwtable
define range(i32 -50, 1) i32 @IDAGetQuadSensDky(ptr nofree noundef readonly captures(address_is_null) %0, double noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, ptr noundef nonnull @.str, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.4)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load i32, ptr %i.b, align 8, !tbaa !37
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -40, ptr noundef nonnull @.str, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.30)
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.f = load i32, ptr %i.e, align 8, !tbaa !46
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -50, ptr noundef nonnull @.str, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.40)
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.h = icmp eq ptr %3, null
  br i1 %i.h, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -27, ptr noundef nonnull @.str, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.74)
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.i = icmp slt i32 %2, 0
  br i1 %i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.k = load i32, ptr %i.j, align 8, !tbaa !218
  %i.l = icmp sgt i32 %2, %i.k
  br i1 %i.l, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.j
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !139
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %.loopexit

bb.k:                                             ; preds = %bb.j, %bb.i
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -25, ptr noundef nonnull @.str, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.75)
  br label %.loopexit

bb.l:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.p = load i32, ptr %i.m, align 4, !tbaa !139
  %i.q = sext i32 %i.p to i64
  %i.r = icmp slt i64 %indvars.iv.next, %i.q
  br i1 %i.r, label %.lr.ph, label %.loopexit, !llvm.loop !356

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.l ], [ 0, %.preheader ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !57
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
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, ptr noundef nonnull @.str, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.4)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load i32, ptr %i.b, align 8, !tbaa !37
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -40, ptr noundef nonnull @.str, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.30)
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.f = load i32, ptr %i.e, align 8, !tbaa !46
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -50, ptr noundef nonnull @.str, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.40)
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.h = icmp eq ptr %3, null
  br i1 %i.h, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -27, ptr noundef nonnull @.str, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.74)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.j = load double, ptr %i.i, align 8, !tbaa !225 ; 2 uses
  store double %i.j, ptr %1, align 8, !tbaa !60
  %i.k = tail call i32 @IDAGetQuadSensDky1(ptr noundef nonnull %0, double noundef %i.j, i32 noundef 0, i32 noundef %2, ptr noundef nonnull %3)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ -20, %bb.b ], [ -40, %bb.d ], [ -50, %bb.f ], [ -27, %bb.h ], [ %i.k, %bb.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @IDAFree(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !357    ; 31 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 600 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63
  tail call void @N_VDestroy(ptr noundef %i.d) #12
  store ptr null, ptr %i.c, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 656 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !92
  tail call void @N_VDestroy(ptr noundef %i.f) #12
  store ptr null, ptr %i.e, align 8, !tbaa !92
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 624 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !93
  tail call void @N_VDestroy(ptr noundef %i.h) #12
  store ptr null, ptr %i.g, align 8, !tbaa !93
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 672 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !94
  tail call void @N_VDestroy(ptr noundef %i.j) #12
  store ptr null, ptr %i.i, align 8, !tbaa !94
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 680 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !95
  tail call void @N_VDestroy(ptr noundef %i.l) #12
  store ptr null, ptr %i.k, align 8, !tbaa !95
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 1288
  %i.n = load i32, ptr %i.m, align 8, !tbaa !27
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.n, i32 3) ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  %i.p = add nuw i32 %spec.select.i, 1
  %wide.trip.count.i = zext i32 %i.p to i64
  br label %bb.c
end_hunk_0
begin_hunk_1_@IDARestore:bb.a
.lr.ph98.split:                                   ; preds = %.lr.ph98, %._crit_edge96
  %i.ct = phi i32 [ %i.dg, %._crit_edge96 ], [ %i.cn, %.lr.ph98 ]
  %i.cu = phi i32 [ %i.dh, %._crit_edge96 ], [ %i.cj, %.lr.ph98 ] ; 2 uses
  %indvars.iv117 = phi i64 [ %indvars.iv.next118, %._crit_edge96 ], [ 0, %.lr.ph98 ] ; 2 uses
  %i.cv = load i32, ptr %i.ai, align 4, !tbaa !232 ; 2 uses
  %.not6992 = icmp sgt i32 %i.cv, %i.cu
  br i1 %.not6992, label %._crit_edge96, label %.lr.ph95

.lr.ph95:                                         ; preds = %.lr.ph98.split
  %i.cw = sext i32 %i.cv to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph95, %bb.h
  %indvars.iv114 = phi i64 [ %i.cw, %.lr.ph95 ], [ %indvars.iv.next115, %bb.h ] ; 4 uses
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %indvars.iv114
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !60
  %i.cz = fdiv double 1.000000e+00, %i.cy
  %i.da = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %indvars.iv114
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !148
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv117
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !57 ; 2 uses
  tail call void @N_VScale(double noundef %i.cz, ptr noundef %i.dd, ptr noundef %i.dd) #12
  %indvars.iv.next115 = add nsw i64 %indvars.iv114, 1
  %i.de = load i32, ptr %i.b, align 8, !tbaa !218 ; 2 uses
  %i.df = sext i32 %i.de to i64
  %.not69.not = icmp slt i64 %indvars.iv114, %i.df
  br i1 %.not69.not, label %bb.h, label %._crit_edge96.loopexit, !llvm.loop !371

._crit_edge96.loopexit:                           ; preds = %bb.h
  %.pre120 = load i32, ptr %i.cm, align 4, !tbaa !139
  br label %._crit_edge96

._crit_edge96:                                    ; preds = %._crit_edge96.loopexit, %.lr.ph98.split
  %i.dg = phi i32 [ %.pre120, %._crit_edge96.loopexit ], [ %i.ct, %.lr.ph98.split ] ; 2 uses
  %i.dh = phi i32 [ %i.de, %._crit_edge96.loopexit ], [ %i.cu, %.lr.ph98.split ]
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %i.di = sext i32 %i.dg to i64
  %i.dj = icmp slt i64 %indvars.iv.next118, %i.di
  br i1 %i.dj, label %.lr.ph98.split, label %.loopexit, !llvm.loop !372

.loopexit:                                        ; preds = %._crit_edge96, %.lr.ph98, %.preheader, %.loopexit72
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 21) i32 @IDAHandleNFlag(ptr nofree noundef nonnull captures(none) initializes((1152, 1156)) %0, i32 noundef %1, double noundef %2, double noundef %3, ptr nofree noundef nonnull captures(none) %4, ptr nofree noundef nonnull captures(none) %5, ptr nofree noundef nonnull captures(none) %6, ptr nofree noundef nonnull captures(none) %7) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1152
  store i32 1, ptr %i.a, align 8, !tbaa !231
  %.not = icmp eq i32 %1, 7
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %5, align 4, !tbaa !26
  %i.c = add nsw i32 %i.b, 1                      ; 2 uses
  store i32 %i.c, ptr %5, align 4, !tbaa !26
  %i.d = load i64, ptr %4, align 8, !tbaa !89
  %i.e = add nsw i64 %i.d, 1
  store i64 %i.e, ptr %4, align 8, !tbaa !89
  %i.f = icmp slt i32 %1, 0
  br i1 %i.f, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not52 = icmp eq i32 %1, 5
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 2 uses
  br i1 %.not52, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.c
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !267
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  store double 2.500000e-01, ptr %.phi.trans.insert, align 8, !tbaa !267
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %i.g = phi double [ %.pre, %._crit_edge ], [ 2.500000e-01, %bb.d ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 2 uses
  %i.i = load double, ptr %i.h, align 8, !tbaa !212
  %i.j = fmul double %i.g, %i.i
  store double %i.j, ptr %i.h, align 8, !tbaa !212
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.l = load i32, ptr %i.k, align 8, !tbaa !373
  %i.m = icmp slt i32 %i.c, %i.l
  br i1 %i.m, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %switch.tableidx = add nsw i32 %1, -1           ; 2 uses
  %i.n = icmp ult i32 %switch.tableidx, 12
  br i1 %i.n, label %switch.lookup, label %bb.m

bb.g:                                             ; preds = %bb.a
  %i.o = load i32, ptr %7, align 4, !tbaa !26     ; 2 uses
  %i.p = add nsw i32 %i.o, 1                      ; 3 uses
  store i32 %i.p, ptr %7, align 4, !tbaa !26
  %i.q = load i64, ptr %6, align 8, !tbaa !89
  %i.r = add nsw i64 %i.q, 1
  store i64 %i.r, ptr %6, align 8, !tbaa !89
  %i.s = icmp eq i32 %i.o, 0
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !218
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1148
  %i.w = load i32, ptr %i.v, align 4, !tbaa !268  ; 3 uses
  %i.x = icmp eq i32 %i.u, %i.w
  %i.y = select i1 %i.x, double %2, double %3
  store i32 %i.w, ptr %i.t, align 8, !tbaa !218
  %i.z = tail call double @llvm.fmuladd.f64(double %i.y, double 2.000000e+00, double 1.000000e-04)
  %i.aa = add nsw i32 %i.w, 1
  %i.ab = sitofp i32 %i.aa to double
  %i.ac = fdiv double -1.000000e+00, %i.ab
  %i.ad = tail call double @SUNRpowerR(double noundef %i.z, double noundef %i.ac) #12
  %i.ae = fmul double %i.ad, 9.000000e-01         ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.ag = fcmp ogt double %i.ae, 9.000000e-01
  %i.ah = fcmp olt double %i.ae, 2.500000e-01
  %.mux = select i1 %i.ag, double 9.000000e-01, double %i.ae
  %i.ai = select i1 %i.ah, double 2.500000e-01, double %.mux ; 2 uses
  store double %i.ai, ptr %i.af, align 8, !tbaa !267
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 2 uses
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !212
  %i.al = fmul double %i.ak, %i.ai
  store double %i.al, ptr %i.aj, align 8, !tbaa !212
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.am = icmp eq i32 %i.p, 2
  br i1 %i.am, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1148
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !268
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1144
  store i32 %i.ao, ptr %i.ap, align 8, !tbaa !218
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1176
  store double 2.500000e-01, ptr %i.aq, align 8, !tbaa !267
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 2 uses
  %i.as = load double, ptr %i.ar, align 8, !tbaa !212
  %i.at = fmul double %i.as, 2.500000e-01
  store double %i.at, ptr %i.ar, align 8, !tbaa !212
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %i.av = load i32, ptr %i.au, align 8, !tbaa !374
  %i.aw = icmp slt i32 %i.p, %i.av
  br i1 %i.aw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1144
  store i32 1, ptr %i.ax, align 8, !tbaa !218
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1176
  store double 2.500000e-01, ptr %i.ay, align 8, !tbaa !267
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 2 uses
  %i.ba = load double, ptr %i.az, align 8, !tbaa !212
  %i.bb = fmul double %i.ba, 2.500000e-01
  store double %i.bb, ptr %i.az, align 8, !tbaa !212
  br label %bb.m

switch.lookup:                                    ; preds = %bb.f
  %i.bc = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.IDAHandleNFlag, i64 %i.bc
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %switch.lookup, %bb.k, %bb.e, %bb.b, %bb.l, %bb.j, %bb.h
  %.0 = phi i32 [ %switch.load, %switch.lookup ], [ %1, %bb.b ], [ 20, %bb.e ], [ -3, %bb.k ], [ 20, %bb.l ], [ 20, %bb.j ], [ 20, %bb.h ], [ -4, %bb.f ]
  ret i32 %.0
}

declare void @N_VCompare(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @N_VProd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @N_VDiv(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare double @N_VMinQuotient(ptr noundef, ptr noundef) local_unnamed_addr #5

declare double @SUNRsqrt(double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"IDAMemRec", !10, i64 0, !11, i64 8, !11, i64 16, !5, i64 24, !10, i64 32, !10, i64 40, !12, i64 48, !5, i64 56, !11, i64 64, !11, i64 72, !5, i64 80, !11, i64 88, !11, i64 96, !5, i64 104, !5, i64 108, !10, i64 112, !10, i64 120, !12, i64 128, !5, i64 136, !5, i64 140, !5, i64 144, !11, i64 152, !11, i64 160, !5, i64 168, !13, i64 176, !13, i64 184, !14, i64 192, !5, i64 200, !10, i64 208, !5, i64 216, !5, i64 220, !10, i64 224, !13, i64 232, !15, i64 240, !5, i64 248, !11, i64 256, !11, i64 264, !5, i64 272, !5, i64 276, !5, i64 280, !10, i64 288, !13, i64 296, !15, i64 304, !6, i64 312, !6, i64 360, !6, i64 408, !6, i64 456, !6, i64 504, !6, i64 552, !12, i64 600, !12, i64 608, !12, i64 616, !12, i64 624, !12, i64 632, !12, i64 640, !12, i64 648, !12, i64 656, !12, i64 664, !12, i64 672, !12, i64 680, !12, i64 688, !12, i64 696, !12, i64 704, !12, i64 712, !6, i64 720, !12, i64 768, !12, i64 776, !12, i64 784, !12, i64 792, !6, i64 800, !15, i64 848, !15, i64 856, !15, i64 864, !15, i64 872, !15, i64 880, !12, i64 888, !12, i64 896, !12, i64 904, !15, i64 912, !15, i64 920, !15, i64 928, !15, i64 936, !15, i64 944, !15, i64 952, !6, i64 960, !15, i64 1008, !15, i64 1016, !15, i64 1024, !15, i64 1032, !12, i64 1040, !10, i64 1048, !12, i64 1056, !12, i64 1064, !5, i64 1072, !5, i64 1076, !5, i64 1080, !5, i64 1084, !5, i64 1088, !5, i64 1092, !5, i64 1096, !10, i64 1104, !10, i64 1112, !10, i64 1120, !5, i64 1128, !10, i64 1136, !5, i64 1144, !5, i64 1148, !5, i64 1152, !5, i64 1156, !10, i64 1160, !10, i64 1168, !10, i64 1176, !10, i64 1184, !10, i64 1192, !10, i64 1200, !10, i64 1208, !10, i64 1216, !10, i64 1224, !10, i64 1232, !10, i64 1240, !10, i64 1248, !10, i64 1256, !10, i64 1264, !5, i64 1272, !5, i64 1276, !5, i64 1280, !5, i64 1284, !5, i64 1288, !17, i64 1296, !10, i64 1304, !5, i64 1312, !17, i64 1320, !17, i64 1328, !17, i64 1336, !17, i64 1344, !17, i64 1352, !17, i64 1360, !17, i64 1368, !17, i64 1376, !17, i64 1384, !17, i64 1392, !17, i64 1400, !17, i64 1408, !17, i64 1416, !17, i64 1424, !17, i64 1432, !17, i64 1440, !17, i64 1448, !17, i64 1456, !17, i64 1464, !17, i64 1472, !17, i64 1480, !17, i64 1488, !17, i64 1496, !17, i64 1504, !11, i64 1512, !11, i64 1520, !18, i64 1528, !5, i64 1536, !5, i64 1540, !5, i64 1544, !5, i64 1548, !5, i64 1552, !5, i64 1556, !5, i64 1560, !5, i64 1564, !5, i64 1568, !5, i64 1572, !5, i64 1576, !5, i64 1580, !5, i64 1584, !11, i64 1592, !11, i64 1600, !11, i64 1608, !11, i64 1616, !11, i64 1624, !11, i64 1632, !5, i64 1640, !5, i64 1644, !5, i64 1648, !5, i64 1652, !5, i64 1656, !5, i64 1660, !10, i64 1664, !10, i64 1672, !10, i64 1680, !11, i64 1688, !5, i64 1696, !14, i64 1704, !14, i64 1712, !10, i64 1720, !10, i64 1728, !10, i64 1736, !13, i64 1744, !13, i64 1752, !13, i64 1760, !10, i64 1768, !10, i64 1776, !5, i64 1784, !5, i64 1788, !17, i64 1792, !14, i64 1800, !5, i64 1808, !5, i64 1812, !19, i64 1816, !5, i64 1824}
!10 = !{!"double", !6, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTS17_generic_N_Vector", !11, i64 0}
!13 = !{!"p1 double", !11, i64 0}
!14 = !{!"p1 int", !11, i64 0}
!15 = !{!"p2 _ZTS17_generic_N_Vector", !16, i64 0}
!16 = !{!"any p2 pointer", !11, i64 0}
!17 = !{!"long", !6, i64 0}
!18 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!19 = !{!"p1 _ZTS12IDAadjMemRec", !11, i64 0}
!20 = !{!9, !11, i64 1512}
!21 = !{!9, !11, i64 1520}
!22 = !{!18, !18, i64 0}
!23 = !{!9, !18, i64 1528}
!24 = !{!9, !17, i64 1296}
!25 = !{!9, !10, i64 1248}
!26 = !{!5, !5, i64 0}
!27 = !{!9, !5, i64 1288}
!28 = !{!9, !10, i64 1104}
!29 = !{!9, !5, i64 1080}
!30 = !{!9, !5, i64 1084}
!31 = !{!9, !5, i64 1088}
!32 = !{!9, !10, i64 1112}
!33 = !{!9, !5, i64 80}
!34 = !{!9, !11, i64 88}
!35 = !{!9, !5, i64 104}
!36 = !{!9, !5, i64 108}
!37 = !{!9, !5, i64 136}
!38 = !{!9, !11, i64 160}
!39 = !{!9, !11, i64 152}
!40 = !{!9, !5, i64 168}
!41 = !{!9, !5, i64 200}
!42 = !{!9, !10, i64 208}
!43 = !{!9, !5, i64 216}
!44 = !{!9, !5, i64 1312}
!45 = !{!9, !5, i64 220}
!46 = !{!9, !5, i64 248}
!47 = !{!9, !11, i64 264}
!48 = !{!9, !11, i64 256}
!49 = !{!9, !5, i64 272}
!50 = !{!9, !5, i64 276}
!51 = !{!9, !5, i64 280}
!52 = !{!9, !5, i64 1812}
!53 = !{!9, !19, i64 1816}
!54 = !{!9, !17, i64 1496}
!55 = !{!9, !17, i64 1504}
!56 = !{!9, !5, i64 1824}
!57 = !{!12, !12, i64 0}
!58 = !{!9, !10, i64 32}
!59 = !{!9, !13, i64 184}
!60 = !{!10, !10, i64 0}
!61 = !{!9, !14, i64 192}
!62 = !{!9, !13, i64 176}
!63 = !{!9, !12, i64 600}
!64 = !{!9, !11, i64 8}
!65 = !{!9, !11, i64 16}
!66 = distinct !{null}
!67 = !{!9, !17, i64 1360}
!68 = distinct !{!68, !69}
!69 = !{!"llvm.loop.mustprogress"}
!70 = distinct !{null}
!71 = !{!9, !17, i64 1368}
!72 = distinct !{!72, !69}
!73 = !{!74, !75, i64 8}
!74 = !{!"_generic_N_Vector", !11, i64 0, !75, i64 8}
!75 = !{!"p1 _ZTS21_generic_N_Vector_Ops", !11, i64 0}
!76 = !{!77, !11, i64 0}
!77 = !{!"_generic_N_Vector_Ops", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192}
!78 = !{!77, !11, i64 16}
!79 = !{!77, !11, i64 48}
!80 = !{!77, !11, i64 56}
!81 = !{!77, !11, i64 64}
!82 = !{!77, !11, i64 80}
!83 = !{!77, !11, i64 88}
!84 = !{!77, !11, i64 96}
!85 = !{!77, !11, i64 104}
!86 = !{!77, !11, i64 128}
!87 = !{!77, !11, i64 144}
!88 = !{!77, !11, i64 24}
!89 = !{!17, !17, i64 0}
!90 = !{!9, !17, i64 1464}
!91 = !{!9, !17, i64 1472}
!92 = !{!9, !12, i64 656}
!93 = !{!9, !12, i64 624}
!94 = !{!9, !12, i64 672}
!95 = !{!9, !12, i64 680}
!96 = !{!9, !12, i64 648}
!97 = !{!9, !5, i64 1284}
!98 = distinct !{!98, !69}
!99 = distinct !{!99, !69}
!100 = !{!9, !10, i64 1184}
!101 = !{!9, !17, i64 1376}
!102 = !{!9, !17, i64 1400}
!103 = !{!9, !17, i64 1432}
!104 = !{!9, !17, i64 1448}
!105 = !{!9, !5, i64 1660}
!106 = !{!9, !5, i64 1092}
!107 = !{!9, !11, i64 1688}
!108 = !{!9, !5, i64 1696}
!109 = !{!9, !5, i64 1808}
!110 = !{!9, !5, i64 1536}
!111 = !{!9, !5, i64 1552}
!112 = !{!9, !5, i64 1640}
!113 = !{!9, !17, i64 1792}
!114 = !{!9, !5, i64 1788}
!115 = !{!9, !10, i64 40}
!116 = !{!9, !5, i64 24}
!117 = !{!9, !5, i64 56}
!118 = !{!9, !11, i64 64}
!119 = !{!9, !11, i64 72}
!120 = !{!9, !12, i64 48}
!121 = !{!9, !5, i64 1540}
!122 = !{!9, !17, i64 1480}
!123 = !{!9, !17, i64 1488}
!124 = !{!9, !12, i64 768}
!125 = !{!9, !12, i64 776}
!126 = !{!9, !12, i64 784}
!127 = !{!9, !12, i64 792}
!128 = distinct !{!128, !69}
!129 = distinct !{!129, !69}
!130 = distinct !{!130, !69}
!131 = !{!9, !17, i64 1336}
!132 = !{!9, !17, i64 1408}
!133 = !{!9, !5, i64 1560}
!134 = distinct !{!134, !69}
!135 = !{!9, !10, i64 112}
!136 = !{!9, !10, i64 120}
!137 = !{!9, !5, i64 1556}
!138 = !{!9, !12, i64 128}
!139 = !{!9, !5, i64 140}
!140 = !{!9, !5, i64 144}
!141 = !{!9, !12, i64 904}
!142 = !{!9, !15, i64 848}
!143 = !{!9, !15, i64 856}
!144 = !{!9, !15, i64 864}
!145 = !{!9, !15, i64 872}
!146 = !{!9, !15, i64 880}
!147 = distinct !{!147, !69}
!148 = !{!15, !15, i64 0}
!149 = distinct !{!149, !69}
!150 = distinct !{!150, !69}
!151 = !{!9, !17, i64 1344}
!152 = !{!9, !17, i64 1392}
!153 = !{!9, !17, i64 1416}
!154 = !{!9, !17, i64 1440}
!155 = !{!9, !17, i64 1456}
!156 = distinct !{!156, !69, !157, !158}
!157 = !{!"llvm.loop.isvectorized", i32 1}
!158 = !{!"llvm.loop.unroll.runtime.disable"}
!159 = distinct !{!159, !69, !158, !157}
!160 = !{!9, !5, i64 1572}
!161 = distinct !{!161, !69}
!162 = distinct !{!162, !69}
!163 = distinct !{!163, !69}
!164 = !{!9, !10, i64 224}
!165 = !{!9, !5, i64 1568}
!166 = !{!9, !13, i64 232}
!167 = distinct !{!167, !69, !157, !158}
!168 = distinct !{!168, !169}
!169 = !{!"llvm.loop.unroll.disable"}
!170 = distinct !{!170, !69, !157}
!171 = distinct !{!171, !69}
!172 = !{!9, !5, i64 1564}
!173 = !{!9, !15, i64 240}
!174 = distinct !{!174, !69}
!175 = !{!9, !15, i64 1024}
!176 = !{!9, !15, i64 1008}
!177 = !{!9, !15, i64 1032}
!178 = !{!9, !15, i64 1016}
!179 = !{!9, !12, i64 1040}
end_hunk_1

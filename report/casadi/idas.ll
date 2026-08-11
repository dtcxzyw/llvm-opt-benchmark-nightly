inline.NumInlined: 65
inline.NumDeleted: 43
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@IDAQuadSensEwtSet:bb.a
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !57
  tail call void @N_VAbs(ptr noundef %i.ag, ptr noundef %i.z) #12
  %i.ah = load double, ptr %i.ad, align 8, !tbaa !188
  tail call void @N_VScale(double noundef %i.ah, ptr noundef %i.z, ptr noundef %i.z) #12
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !190
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.i12
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !60
  tail call void @N_VAddConst(ptr noundef %i.z, double noundef %i.ak, ptr noundef %i.z) #12
  %i.al = tail call double @N_VMin(ptr noundef %i.z) #12
  %i.am = fcmp ugt double %i.al, 0.000000e+00
  br i1 %i.am, label %bb.f, label %IDAQuadSensEwtSetEE.exit

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i12
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !57
  tail call void @N_VInv(ptr noundef %i.z, ptr noundef %i.ao) #12
  %indvars.iv.next.i13 = add nuw nsw i64 %indvars.iv.i12, 1 ; 2 uses
  %i.ap = load i32, ptr %i.aa, align 4, !tbaa !139
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp slt i64 %indvars.iv.next.i13, %i.aq
  br i1 %i.ar, label %bb.e, label %IDAQuadSensEwtSetEE.exit, !llvm.loop !339

bb.g:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !125 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !139
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph.i15, label %IDAQuadSensEwtSetEE.exit

.lr.ph.i15:                                       ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 304
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i15
  %indvars.iv.i16 = phi i64 [ 0, %.lr.ph.i15 ], [ %indvars.iv.next.i17, %bb.i ] ; 4 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !57
  tail call void @N_VAbs(ptr noundef %i.ba, ptr noundef %i.at) #12
  %i.bb = load double, ptr %i.ax, align 8, !tbaa !188
  %i.bc = load ptr, ptr %i.ay, align 8, !tbaa !196
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.i16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !57
  tail call void @N_VLinearSum(double noundef %i.bb, ptr noundef %i.at, double noundef 1.000000e+00, ptr noundef %i.be, ptr noundef %i.at) #12
  %i.bf = tail call double @N_VMin(ptr noundef %i.at) #12
  %i.bg = fcmp ugt double %i.bf, 0.000000e+00
  br i1 %i.bg, label %bb.i, label %IDAQuadSensEwtSetEE.exit

bb.i:                                             ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !57
  tail call void @N_VInv(ptr noundef %i.at, ptr noundef %i.bi) #12
  %indvars.iv.next.i17 = add nuw nsw i64 %indvars.iv.i16, 1 ; 2 uses
  %i.bj = load i32, ptr %i.au, align 4, !tbaa !139
  %i.bk = sext i32 %i.bj to i64
  %i.bl = icmp slt i64 %indvars.iv.next.i17, %i.bk
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
  %.081 = select i1 %i.t, double %i.u, double %i.r
  %i.v = load double, ptr %i.k, align 8, !tbaa !100 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1672
  %i.x = load double, ptr %i.w, align 8, !tbaa !229
  %i.y = fsub double %i.v, %i.x                   ; 2 uses
  %i.z = fsub double %i.y, %.081
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
  %4 = zext nneg i32 %i.ag to i64
  %i.ah = add nuw i32 %2, 1
  %wide.trip.count = zext i32 %i.ah to i64
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
  %i.ai = ashr exact i64 %sext122, 29
  %scevgep121 = getelementptr i8, ptr %scevgep120, i64 %i.ai
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
  %i.bf = add nuw nsw i64 %indvar, %4
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
  %.080 = phi i32 [ -20, %bb.b ], [ -27, %bb.d ], [ -25, %bb.g ], [ -26, %bb.i ], [ 0, %._crit_edge ], [ 0, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.080
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
  %4 = zext nneg i32 %i.ad to i64
  %i.ae = add nuw i32 %2, 1
  %wide.trip.count = zext i32 %i.ae to i64
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
  %i.af = ashr exact i64 %sext122, 29
  %scevgep121 = getelementptr i8, ptr %scevgep120, i64 %i.af
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
  %i.bc = add nuw nsw i64 %indvar, %4
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
  %.088 = select i1 %i.z, double %i.aa, double %i.x
  %i.ab = load double, ptr %i.q, align 8, !tbaa !100 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1672
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !229
  %i.ae = fsub double %i.ab, %i.ad                ; 2 uses
  %i.af = fsub double %i.ae, %.088
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
  %5 = zext nneg i32 %i.am to i64
  %i.an = add nuw i32 %2, 1
  %wide.trip.count = zext i32 %i.an to i64
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
  %i.ao = ashr exact i64 %sext132, 29
  %scevgep131 = getelementptr i8, ptr %scevgep130, i64 %i.ao
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
  %i.bl = add nuw nsw i64 %indvar, %5
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
  %.087 = phi i32 [ -20, %bb.b ], [ -40, %bb.d ], [ -27, %bb.f ], [ -25, %bb.l ], [ -26, %bb.n ], [ 0, %._crit_edge ], [ 0, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.087
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
  %.0 = phi i32 [ -20, %bb.b ], [ -40, %bb.d ], [ -27, %bb.f ], [ -25, %bb.i ], [ 0, %.preheader ], [ %i.s, %.lr.ph ], [ 0, %bb.j ]
  ret i32 %.0
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
  %.090 = select i1 %i.ac, double %i.ad, double %i.aa
  %i.ae = load double, ptr %i.t, align 8, !tbaa !100 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1672
  %i.ag = load double, ptr %i.af, align 8, !tbaa !229
  %i.ah = fsub double %i.ae, %i.ag                ; 2 uses
  %i.ai = fsub double %i.ah, %.090
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
  %5 = zext nneg i32 %i.ap to i64
  %i.aq = add nuw i32 %2, 1
  %wide.trip.count = zext i32 %i.aq to i64
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
  %i.ar = ashr exact i64 %sext134, 29
  %scevgep133 = getelementptr i8, ptr %scevgep132, i64 %i.ar
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
  %i.bo = add nuw nsw i64 %indvar, %5
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
  %.089 = phi i32 [ -20, %bb.b ], [ -40, %bb.d ], [ -50, %bb.f ], [ -27, %bb.h ], [ -25, %bb.n ], [ -26, %bb.p ], [ 0, %._crit_edge ], [ 0, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.089
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
  %.0 = phi i32 [ -20, %bb.b ], [ -40, %bb.d ], [ -50, %bb.f ], [ -27, %bb.h ], [ -25, %bb.k ], [ 0, %.preheader ], [ %i.v, %.lr.ph ], [ 0, %bb.l ]
  ret i32 %.0
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
end_hunk_0

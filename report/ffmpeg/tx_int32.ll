inline.NumInlined: 21
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 31
begin_hunk_0_@ff_tx_mdct_pfa_15xM_inv_int32_c:bb.a
  %i.wz = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv ; 2 uses
  store i32 %i.wy, ptr %i.wz, align 8, !tbaa !47
  %i.xa = mul nsw i64 %i.ws, %i.wo
  %i.xb = mul nsw i64 %i.wn, %i.wt
  %i.xc = add nsw i64 %i.xb, 1073741824
  %i.xd = add i64 %i.xc, %i.xa
  %i.xe = lshr i64 %i.xd, 31
  %i.xf = trunc i64 %i.xe to i32
  %i.xg = getelementptr inbounds nuw i8, ptr %i.wz, i64 4
  store i32 %i.xf, ptr %i.xg, align 4, !tbaa !49
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 15
  br i1 %exitcond.not, label %fft15.exit, label %bb.b, !llvm.loop !117

.lr.ph:                                           ; preds = %.preheader172
  %i.xh = load ptr, ptr %i.az, align 8, !tbaa !52 ; 2 uses
  %i.xi = zext nneg i32 %i.d to i64               ; 2 uses
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %.preheader172
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret void

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv192 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next193, %bb.c ] ; 3 uses
  %i.xj = add nuw nsw i64 %indvars.iv192, %i.xi   ; 3 uses
  %i.xk = xor i64 %indvars.iv192, -1
  %i.xl = add nsw i64 %i.xi, %i.xk                ; 3 uses
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.xj
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !14
  %i.xo = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.xl
  %i.xp = load i32, ptr %i.xo, align 4, !tbaa !14
  %i.xq = sext i32 %i.xp to i64
  %i.xr = getelementptr inbounds [8 x i8], ptr %i.xh, i64 %i.xq ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 4
  %i.xt = load i32, ptr %i.xs, align 4, !tbaa !49
  %i.xu = load i32, ptr %i.xr, align 4, !tbaa !47
  %i.xv = sext i32 %i.xn to i64
  %i.xw = getelementptr inbounds [8 x i8], ptr %i.xh, i64 %i.xv ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 4
  %i.xy = load i32, ptr %i.xx, align 4, !tbaa !49
  %i.xz = load i32, ptr %i.xw, align 4, !tbaa !47
  %i.ya = getelementptr inbounds [8 x i8], ptr %.0.lcssa, i64 %i.xl ; 3 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 4
  %i.yc = load i32, ptr %i.yb, align 4, !tbaa !49
  %i.yd = sext i32 %i.yc to i64                   ; 2 uses
  %i.ye = sext i32 %i.xt to i64                   ; 2 uses
  %i.yf = mul nsw i64 %i.yd, %i.ye
  %i.yg = load i32, ptr %i.ya, align 4, !tbaa !47
  %i.yh = sext i32 %i.yg to i64
  %i.yi = sext i32 %i.xu to i64                   ; 2 uses
  %i.yj = mul nsw i64 %i.yh, %i.yi
  %i.yk = add nsw i64 %i.yf, 1073741824
  %i.yl = sub nsw i64 %i.yk, %i.yj
  %i.ym = lshr i64 %i.yl, 31
  %i.yn = trunc i64 %i.ym to i32
  %i.yo = getelementptr inbounds [8 x i8], ptr %1, i64 %i.xl ; 2 uses
  store i32 %i.yn, ptr %i.yo, align 4, !tbaa !47
  %i.yp = load i32, ptr %i.ya, align 4, !tbaa !47
  %i.yq = sext i32 %i.yp to i64
  %i.yr = mul nsw i64 %i.yq, %i.ye
  %i.ys = mul nsw i64 %i.yd, %i.yi
  %i.yt = add nsw i64 %i.ys, 1073741824
  %i.yu = add i64 %i.yt, %i.yr
  %i.yv = lshr i64 %i.yu, 31
  %i.yw = trunc i64 %i.yv to i32
  %i.yx = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.xj ; 2 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 4
  store i32 %i.yw, ptr %i.yy, align 4, !tbaa !49
  %i.yz = getelementptr inbounds nuw [8 x i8], ptr %.0.lcssa, i64 %i.xj ; 3 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 4
  %i.zb = load i32, ptr %i.za, align 4, !tbaa !49
  %i.zc = sext i32 %i.zb to i64                   ; 2 uses
  %i.zd = sext i32 %i.xy to i64                   ; 2 uses
  %i.ze = mul nsw i64 %i.zc, %i.zd
  %i.zf = load i32, ptr %i.yz, align 4, !tbaa !47
  %i.zg = sext i32 %i.zf to i64
  %i.zh = sext i32 %i.xz to i64                   ; 2 uses
  %i.zi = mul nsw i64 %i.zg, %i.zh
  %i.zj = add nsw i64 %i.ze, 1073741824
  %i.zk = sub nsw i64 %i.zj, %i.zi
  %i.zl = lshr i64 %i.zk, 31
  %i.zm = trunc i64 %i.zl to i32
  store i32 %i.zm, ptr %i.yx, align 4, !tbaa !47
  %i.zn = load i32, ptr %i.yz, align 4, !tbaa !47
  %i.zo = sext i32 %i.zn to i64
  %i.zp = mul nsw i64 %i.zo, %i.zd
  %i.zq = mul nsw i64 %i.zc, %i.zh
  %i.zr = add nsw i64 %i.zq, 1073741824
  %i.zs = add i64 %i.zr, %i.zp
  %i.zt = lshr i64 %i.zs, 31
  %i.zu = trunc i64 %i.zt to i32
  %i.zv = getelementptr inbounds nuw i8, ptr %i.yo, i64 4
  store i32 %i.zu, ptr %i.zv, align 4, !tbaa !49
  %indvars.iv.next193 = add nuw nsw i64 %indvars.iv192, 1 ; 2 uses
  %exitcond195.not = icmp eq i64 %indvars.iv.next193, %wide.trip.count
  br i1 %exitcond195.not, label %._crit_edge, label %bb.c, !llvm.loop !118
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ff_tx_mdct_naive_fwd_int32_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load double, ptr %i.a, align 8, !tbaa !28
  %i.c = load i32, ptr %0, align 8, !tbaa !19     ; 5 uses
  %i.d = sitofp nsz i32 %i.c to double
  %i.e = fmul nnan nsz double %i.d, 4.000000e+00
  %i.f = fdiv nnan nsz double f0x400921FB54442D18, %i.e ; 2 uses
  %i.g = lshr i64 %3, 2
  %i.h = icmp sgt i32 %i.c, 0
  br i1 %i.h, label %.preheader.us.preheader, label %._crit_edge30

.preheader.us.preheader:                          ; preds = %bb.a
  %i.i = shl nuw i32 %i.c, 1
  %i.j = add nuw i32 %i.c, 1                      ; 2 uses
  %wide.trip.count36 = zext nneg i32 %i.c to i64
  %wide.trip.count = zext i32 %i.i to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv33 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next34, %._crit_edge.us ] ; 3 uses
  %indvars.iv33.tr = trunc i64 %indvars.iv33 to i32
  %i.k = shl i32 %indvars.iv33.tr, 1
  %i.l = or disjoint i32 %i.k, 1                  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.us
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.1, %bb.b ] ; 4 uses
  %.02427.us = phi double [ 0.000000e+00, %.preheader.us ], [ %i.ah, %bb.b ]
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.m = shl i32 %indvars.iv.tr, 1
  %i.n = add i32 %i.j, %i.m
  %i.o = mul nsw i32 %i.n, %i.l
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !14
  %i.r = sitofp nsz i32 %i.q to double
  %i.s = fmul nnan nsz double %i.r, f0x3E00000000000000
  %i.t = sitofp nsz i32 %i.o to double
  %i.u = fmul nsz double %i.f, %i.t
  %i.v = tail call nsz double @llvm.cos.f64(double %i.u)
  %i.w = tail call nsz double @llvm.fmuladd.f64(double %i.s, double %i.v, double %.02427.us)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.tr.1 = trunc i64 %indvars.iv.next to i32
  %i.x = shl i32 %indvars.iv.tr.1, 1
  %i.y = add i32 %i.j, %i.x
  %i.z = mul nsw i32 %i.y, %i.l
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !14
  %i.ac = sitofp nsz i32 %i.ab to double
  %i.ad = fmul nnan nsz double %i.ac, f0x3E00000000000000
  %i.ae = sitofp nsz i32 %i.z to double
  %i.af = fmul nsz double %i.f, %i.ae
  %i.ag = tail call nsz double @llvm.cos.f64(double %i.af)
  %i.ah = tail call nsz double @llvm.fmuladd.f64(double %i.ad, double %i.ag, double %i.w) ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge.us, label %bb.b, !llvm.loop !119

._crit_edge.us:                                   ; preds = %bb.b
  %i.ai = fmul nsz double %i.b, %i.ah
  %i.aj = fmul nsz double %i.ai, f0x41E0000000000000
  %i.ak = fptrunc nsz double %i.aj to float
  %i.al = tail call i64 @llvm.llrint.i64.f32(float %i.ak)
  %i.am = tail call i64 @llvm.smax.i64(i64 %i.al, i64 -2147483648)
  %.0.i.us = tail call i64 @llvm.smin.i64(i64 %i.am, i64 2147483647)
  %i.an = trunc nsw i64 %.0.i.us to i32
  %i.ao = mul nuw nsw i64 %i.g, %indvars.iv33
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ao
  store i32 %i.an, ptr %i.ap, align 4, !tbaa !14
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1 ; 2 uses
  %exitcond37.not = icmp eq i64 %indvars.iv.next34, %wide.trip.count36
  br i1 %exitcond37.not, label %._crit_edge30, label %.preheader.us, !llvm.loop !120

._crit_edge30:                                    ; preds = %._crit_edge.us, %bb.a
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @ff_tx_mdct_naive_init_int32_c(ptr nofree noundef writeonly captures(none) initializes((140, 152)) %0, ptr nofree readnone captures(none) %1, i64 %2, ptr nofree readnone captures(none) %3, i32 %4, i32 %5, ptr nofree noundef readonly captures(none) %6) #13 {
bb.a:
  %i.a = load float, ptr %6, align 4, !tbaa !85   ; 2 uses
  %i.b = fpext nsz float %i.a to double
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  store double %i.b, ptr %i.c, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 140
  store float %i.a, ptr %i.d, align 4, !tbaa !86
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ff_tx_mdct_naive_inv_int32_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load double, ptr %i.a, align 8, !tbaa !28 ; 2 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.d = ashr i32 %i.c, 1                         ; 3 uses
  %i.e = lshr i64 %3, 2
  %i.f = icmp sgt i32 %i.d, 0
  br i1 %i.f, label %.lr.ph.us.preheader, label %._crit_edge54

.lr.ph.us.preheader:                              ; preds = %bb.a
  %4 = and i32 %i.c, -2                           ; 3 uses
  %5 = sitofp nsz i32 %4 to double
  %6 = fmul nnan nsz double %5, 4.000000e+00
  %7 = fdiv nnan nsz double f0x400921FB54442D18, %6
  %i.g = shl nuw nsw i32 %i.d, 2
  %i.h = mul nsw i32 %4, 3
  %invariant.op = or disjoint i32 %i.h, 1
  %i.i = zext nneg i32 %i.d to i64                ; 2 uses
  %wide.trip.count61 = zext nneg i32 %4 to i64
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.i
  %8 = insertelement <2 x double> poison, double %7, i64 0
  %9 = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv63 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next64, %._crit_edge.us ] ; 4 uses
  %i.j = shl nuw nsw i64 %indvars.iv63, 1         ; 2 uses
  %i.k = trunc i64 %i.j to i32
  %10 = trunc nuw nsw i64 %i.j to i32
  %11 = xor i32 %10, -1
  %12 = add i32 %invariant.op, %i.k
  %13 = add nsw i32 %i.g, %11
  %14 = insertelement <2 x i32> poison, i32 %13, i64 0
  %15 = insertelement <2 x i32> %14, i32 %12, i64 1
  %16 = sitofp <2 x i32> %15 to <2 x double>
  %17 = fmul nnan nsz <2 x double> %9, %16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.b
  %indvars.iv58 = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next59, %bb.b ] ; 3 uses
  %18 = phi <2 x double> [ zeroinitializer, %.lr.ph.us ], [ %25, %bb.b ]
  %indvars.iv58.tr = trunc i64 %indvars.iv58 to i32
  %i.l = shl i32 %indvars.iv58.tr, 1
  %i.m = or disjoint i32 %i.l, 1
  %i.n = uitofp nneg i32 %i.m to double
  %19 = insertelement <2 x double> poison, double %i.n, i64 0
  %20 = shufflevector <2 x double> %19, <2 x double> poison, <2 x i32> zeroinitializer
  %21 = fmul nnan nsz <2 x double> %17, %20
  %22 = tail call nsz <2 x double> @llvm.cos.v2f64(<2 x double> %21)
  %i.o = mul nuw nsw i64 %i.e, %indvars.iv58
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !14
  %i.r = sitofp nsz i32 %i.q to double
  %i.s = fmul nnan nsz double %i.r, f0x3E00000000000000
  %23 = insertelement <2 x double> poison, double %i.s, i64 0
  %24 = shufflevector <2 x double> %23, <2 x double> poison, <2 x i32> zeroinitializer
  %25 = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %22, <2 x double> %24, <2 x double> %18) ; 3 uses
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1 ; 2 uses
  %exitcond62.not = icmp eq i64 %indvars.iv.next59, %wide.trip.count61
  br i1 %exitcond62.not, label %._crit_edge.us, label %bb.b, !llvm.loop !121

._crit_edge.us:                                   ; preds = %bb.b
  %26 = extractelement <2 x double> %25, i64 0
  %i.t = fmul nsz double %i.b, %26
  %i.u = fmul nsz double %i.t, f0x41E0000000000000
  %i.v = fptrunc nsz double %i.u to float
  %i.w = tail call i64 @llvm.llrint.i64.f32(float %i.v)
  %i.x = tail call i64 @llvm.smax.i64(i64 %i.w, i64 -2147483648)
  %.0.i46.us = tail call i64 @llvm.smin.i64(i64 %i.x, i64 2147483647)
  %i.y = trunc nsw i64 %.0.i46.us to i32
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv63
  store i32 %i.y, ptr %i.z, align 4, !tbaa !14
  %27 = extractelement <2 x double> %25, i64 1
  %i.aa = fneg nsz double %27
  %i.ab = fmul nsz double %i.b, %i.aa
  %i.ac = fmul nsz double %i.ab, f0x41E0000000000000
  %i.ad = fptrunc nsz double %i.ac to float
  %i.ae = tail call i64 @llvm.llrint.i64.f32(float %i.ad)
  %i.af = tail call i64 @llvm.smax.i64(i64 %i.ae, i64 -2147483648)
  %.0.i.us = tail call i64 @llvm.smin.i64(i64 %i.af, i64 2147483647)
  %i.ag = trunc nsw i64 %.0.i.us to i32
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv63
  store i32 %i.ag, ptr %gep, align 4, !tbaa !14
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %exitcond68.not = icmp eq i64 %indvars.iv.next64, %i.i
  br i1 %exitcond68.not, label %._crit_edge54, label %.lr.ph.us, !llvm.loop !122

._crit_edge54:                                    ; preds = %._crit_edge.us, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_inv_full_int32_c(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #3 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.b = shl i32 %i.a, 1                          ; 2 uses
  %i.c = ashr i32 %i.b, 2                         ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !53
  %i.h = sext i32 %i.c to i64
  %i.i = getelementptr inbounds [4 x i8], ptr %1, i64 %i.h
  tail call void %i.e(ptr noundef %i.g, ptr noundef %i.i, ptr noundef %2, i64 noundef %3) #16
  %i.j = lshr i64 %3, 2                           ; 4 uses
  %i.k = icmp sgt i32 %i.c, 0
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.l = and i32 %i.a, 2147483647
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %i.n = xor i64 %indvars.iv, -1                  ; 2 uses
  %i.o = add nsw i64 %i.m, %i.n
  %i.p = mul nsw i64 %i.j, %i.o
  %i.q = getelementptr inbounds [4 x i8], ptr %1, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !14
  %i.s = sub nsw i32 0, %i.r
  %i.t = mul nuw nsw i64 %i.j, %indvars.iv
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.t
  store i32 %i.s, ptr %i.u, align 4, !tbaa !14
  %i.v = add nuw nsw i64 %indvars.iv, %i.m
  %i.w = mul nuw nsw i64 %i.j, %i.v
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !14
  %i.z = trunc nsw i64 %i.n to i32
  %i.aa = add i32 %i.b, %i.z
  %i.ab = sext i32 %i.aa to i64
  %i.ac = mul nsw i64 %i.j, %i.ab
  %i.ad = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ac
  store i32 %i.y, ptr %i.ad, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !123
}

; Function Attrs: cold nounwind optsize uwtable
define internal i32 @ff_tx_mdct_inv_full_init_int32_c(ptr noundef initializes((140, 152)) %0, ptr nofree readnone captures(none) %1, i64 noundef %2, ptr nofree readnone captures(none) %3, i32 noundef %4, i32 %5, ptr noundef %6) #0 {
bb.a:
  %i.a = load float, ptr %6, align 4, !tbaa !85   ; 2 uses
  %i.b = fpext nsz float %i.a to double
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  store double %i.b, ptr %i.c, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 140
  store float %i.a, ptr %i.d, align 4, !tbaa !86
  %i.e = and i64 %2, -5
  %i.f = tail call i32 @ff_tx_init_subtx(ptr noundef %0, i32 noundef 5, i64 noundef %i.e, ptr noundef null, i32 noundef %4, i32 noundef 1, ptr noundef nonnull %6) #16
  ret i32 %i.f
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_rdft_r2c_int32_c(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 %3) #3 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.b = ashr i32 %i.a, 1                         ; 2 uses
  %i.c = ashr i32 %i.a, 2                         ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !29   ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.g = sext i32 %i.c to i64                     ; 2 uses
  %i.h = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !53
  tail call void %i.j(ptr noundef %i.l, ptr noundef %1, ptr noundef %2, i64 noundef 8) #16
  %i.m = load i32, ptr %1, align 4, !tbaa !47     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !49   ; 2 uses
  %i.p = add nsw i32 %i.o, %i.m                   ; 2 uses
  store i32 %i.p, ptr %1, align 4, !tbaa !47
  %i.q = sub nsw i32 %i.m, %i.o                   ; 2 uses
  store i32 %i.q, ptr %i.n, align 4, !tbaa !49
  %i.r = load i32, ptr %i.e, align 4, !tbaa !14
  %i.s = sext i32 %i.r to i64
  %i.t = sext i32 %i.p to i64
  %i.u = mul nsw i64 %i.s, %i.t
  %i.v = add nsw i64 %i.u, 1073741824
  %i.w = lshr i64 %i.v, 31
  %i.x = trunc i64 %i.w to i32
  store i32 %i.x, ptr %1, align 4, !tbaa !47
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !14
  %i.aa = sext i32 %i.z to i64
  %i.ab = sext i32 %i.q to i64
  %i.ac = mul nsw i64 %i.aa, %i.ab
  %i.ad = add nsw i64 %i.ac, 1073741824
  %i.ae = lshr i64 %i.ad, 31
  %i.af = trunc i64 %i.ae to i32
  store i32 %i.af, ptr %i.n, align 4, !tbaa !49
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !14
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [8 x i8], ptr %1, i64 %i.g ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !47
  %i.al = sext i32 %i.ak to i64
  %i.am = mul nsw i64 %i.al, %i.ai
  %i.an = add nsw i64 %i.am, 1073741824
  %i.ao = lshr i64 %i.an, 31
  %i.ap = trunc i64 %i.ao to i32
  store i32 %i.ap, ptr %i.aj, align 4, !tbaa !47
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !14
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 4 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !49
  %i.av = sext i32 %i.au to i64
  %i.aw = mul nsw i64 %i.av, %i.as
  %i.ax = add nsw i64 %i.aw, 1073741824
  %i.ay = lshr i64 %i.ax, 31
  %i.az = trunc i64 %i.ay to i32
  store i32 %i.az, ptr %i.at, align 4, !tbaa !49
  %i.ba = icmp sgt i32 %i.c, 1
  br i1 %i.ba, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre = sext i32 %i.b to i64
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.bf = sext i32 %i.b to i64                    ; 2 uses
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %i.bf, %bb.b ]
  %i.bg = load i32, ptr %i.n, align 4, !tbaa !49
  %i.bh = getelementptr inbounds [8 x i8], ptr %1, i64 %.pre-phi ; 2 uses
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !47
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store i32 0, ptr %i.bi, align 4, !tbaa !49
  store i32 0, ptr %i.n, align 4, !tbaa !49
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 5 uses
  %i.bj = load i32, ptr %i.bb, align 4, !tbaa !14
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !47 ; 2 uses
  %i.bn = sub nsw i64 %i.bf, %indvars.iv
  %i.bo = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bn ; 3 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !47 ; 2 uses
  %i.bq = add nsw i32 %i.bp, %i.bm
  %i.br = sext i32 %i.bq to i64
  %i.bs = mul nsw i64 %i.br, %i.bk
  %i.bt = add nsw i64 %i.bs, 1073741824
  %i.bu = lshr i64 %i.bt, 31
  %i.bv = trunc i64 %i.bu to i32                  ; 2 uses
  %i.bw = load i32, ptr %i.bc, align 4, !tbaa !14
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bl, i64 4 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !49 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bo, i64 4 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !49 ; 2 uses
  %i.cc = sub nsw i32 %i.bz, %i.cb
  %i.cd = sext i32 %i.cc to i64
  %i.ce = mul nsw i64 %i.cd, %i.bx
  %i.cf = add nsw i64 %i.ce, 1073741824
  %i.cg = lshr i64 %i.cf, 31
  %i.ch = trunc i64 %i.cg to i32                  ; 2 uses
  %i.ci = load i32, ptr %i.bd, align 4, !tbaa !14
  %i.cj = sext i32 %i.ci to i64
end_hunk_0
begin_hunk_1_@ff_tx_dctI_int32_c:bb.a
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.epil.init
  store i32 %i.l, ptr %i.o, align 4, !tbaa !14
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %i.p = sext i32 %i.b to i64                     ; 2 uses
  %i.q = mul nsw i64 %i.e, %i.p
  %i.r = getelementptr inbounds [4 x i8], ptr %2, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !14
  %i.t = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.p
  store i32 %i.s, ptr %i.t, align 4, !tbaa !14
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !53
  tail call void %i.v(ptr noundef %i.x, ptr noundef %1, ptr noundef %i.d, i64 noundef 4) #16
  ret void

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.y = mul nuw nsw i64 %i.e, %indvars.iv
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !14  ; 2 uses
  %i.ab = sub nsw i64 %i.h, %indvars.iv
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ab
  store i32 %i.aa, ptr %i.ac, align 4, !tbaa !14
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  store i32 %i.aa, ptr %i.ad, align 4, !tbaa !14
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.ae = mul nuw nsw i64 %i.e, %indvars.iv.next
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !14 ; 2 uses
  %i.ah = sub nsw i64 %i.h, %indvars.iv.next
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ah
  store i32 %i.ag, ptr %i.ai, align 4, !tbaa !14
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next
  store i32 %i.ag, ptr %i.aj, align 4, !tbaa !14
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !153
}

; Function Attrs: cold nounwind optsize uwtable
define internal i32 @ff_tx_dcstI_init_int32_c(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree readnone captures(none) %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6) #0 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = load float, ptr %6, align 4, !tbaa !85   ; 2 uses
  store float %i.b, ptr %i.a, align 4, !tbaa !85
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = shl nsw i32 %4, 1
  %i.d = load i32, ptr %0, align 8, !tbaa !19
  %i.e = shl nsw i32 %i.d, 1
  store i32 %i.e, ptr %0, align 8, !tbaa !19
  %i.f = fmul nsz float %i.b, 5.000000e-01
  store float %i.f, ptr %i.a, align 4, !tbaa !85
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.014 = phi i32 [ %i.c, %bb.b ], [ %4, %bb.a ]  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !154  ; 2 uses
  %i.i = icmp eq i32 %i.h, 14
  %i.j = select i1 %i.i, i64 8, i64 16
  %i.k = or i64 %i.j, %2
  %i.l = add nsw i32 %.014, -1
  %i.m = icmp eq i32 %i.h, 17
  %i.n = select i1 %i.m, i32 2, i32 0
  %i.o = add nsw i32 %i.l, %i.n
  %i.p = shl nsw i32 %i.o, 1
  %i.q = call i32 @ff_tx_init_subtx(ptr noundef %0, i32 noundef 8, i64 noundef %i.k, ptr noundef null, i32 noundef %i.p, i32 noundef 0, ptr noundef nonnull %i.a) #16 ; 2 uses
  %.not16 = icmp eq i32 %i.q, 0
  br i1 %.not16, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = shl i32 %.014, 1
  %i.s = add i32 %i.r, 2
  %i.t = sext i32 %i.s to i64
  %i.u = shl nsw i64 %i.t, 2
  %i.v = call noalias ptr @av_mallocz(i64 noundef %i.u) #16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.v, ptr %i.w, align 8, !tbaa !52
  %.not17 = icmp eq ptr %i.v, null
  %. = select i1 %.not17, i32 -12, i32 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ %., %bb.d ], [ %i.q, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_dstI_int32_c(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.b = add i32 %i.a, 1                          ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52   ; 9 uses
  %i.e = lshr i64 %3, 2                           ; 3 uses
  store i32 0, ptr %i.d, align 4, !tbaa !14
  %.not25 = icmp slt i32 %i.a, 1
  br i1 %.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = shl nuw nsw i32 %i.b, 1
  %i.g = zext nneg i32 %i.f to i64                ; 3 uses
  %wide.trip.count = zext i32 %i.b to i64
  %i.h = add nsw i64 %wide.trip.count, -1         ; 3 uses
  %xtraiter = and i64 %i.h, 1
  %i.i = icmp eq i32 %i.b, 2
  br i1 %i.i, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.h, -2
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod28 = trunc i64 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %i.j = add nsw i64 %indvars.iv.epil.init, -1
  %i.k = mul nuw nsw i64 %i.e, %i.j
  %i.l = getelementptr inbounds [4 x i8], ptr %2, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !14   ; 2 uses
  %i.n = sub nsw i32 0, %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.epil.init
  store i32 %i.n, ptr %i.o, align 4, !tbaa !14
  %i.p = sub nsw i64 %i.g, %indvars.iv.epil.init
  %i.q = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.p
  store i32 %i.m, ptr %i.q, align 4, !tbaa !14
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %i.r = sext i32 %i.b to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.r
  store i32 0, ptr %i.s, align 4, !tbaa !14
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !10
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !53
  tail call void %i.u(ptr noundef %i.w, ptr noundef %1, ptr noundef nonnull %i.d, i64 noundef 4) #16
  ret void

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.x = add nsw i64 %indvars.iv, -1
  %i.y = mul nuw nsw i64 %i.e, %i.x
  %i.z = getelementptr inbounds [4 x i8], ptr %2, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !14  ; 2 uses
  %i.ab = sub nsw i32 0, %i.aa
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !14
  %i.ad = sub nsw i64 %i.g, %indvars.iv
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ad
  store i32 %i.aa, ptr %i.ae, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.af = mul nuw nsw i64 %i.e, %indvars.iv
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !14 ; 2 uses
  %i.ai = sub nsw i32 0, %i.ah
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !14
  %i.ak = sub nsw i64 %i.g, %indvars.iv.next
  %i.al = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ak
  store i32 %i.ah, ptr %i.al, align 4, !tbaa !14
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !157
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.sincos.f64(double) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.cos.v2f64(<2 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { cold nofree norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"branch_weights", i32 1, i32 1048575}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!6, !6, i64 0}
!15 = distinct !{!15, !13}
!16 = !{!17, !11, i64 0}
!17 = !{!"FFTabInitData", !11, i64 0, !7, i64 8}
!18 = distinct !{!18, !13}
!19 = !{!20, !6, i64 0}
!20 = !{!"AVTXContext", !6, i64 0, !6, i64 4, !21, i64 8, !22, i64 16, !22, i64 24, !23, i64 32, !7, i64 40, !6, i64 72, !7, i64 80, !24, i64 112, !6, i64 120, !25, i64 128, !6, i64 136, !26, i64 140, !27, i64 144, !11, i64 152}
!21 = !{!"p1 int", !11, i64 0}
!22 = !{!"p1 _ZTS14AVComplexInt32", !11, i64 0}
!23 = !{!"p1 _ZTS11AVTXContext", !11, i64 0}
!24 = !{!"p1 _ZTS11FFTXCodelet", !11, i64 0}
!25 = !{!"long", !7, i64 0}
!26 = !{!"float", !7, i64 0}
!27 = !{!"double", !7, i64 0}
!28 = !{!20, !27, i64 144}
!29 = !{!20, !22, i64 16}
!30 = distinct !{!30, !13}
!31 = distinct !{!31, !13}
!32 = distinct !{!32, !13}
!33 = distinct !{!33, !13}
!34 = distinct !{!34, !13}
!35 = distinct !{!35, !13}
!36 = distinct !{!36, !13}
!37 = distinct !{!37, !13}
!38 = distinct !{!38, !13}
!39 = distinct !{!39, !13}
!40 = distinct !{!40, !13}
!41 = distinct !{!41, !13}
!42 = distinct !{!42, !13}
!43 = distinct !{!43, !13}
!44 = distinct !{!44, !13}
!45 = distinct !{!45, !13}
!46 = distinct !{!46, !13}
!47 = !{!48, !6, i64 0}
!48 = !{!"AVComplexInt32", !6, i64 0, !6, i64 4}
!49 = !{!48, !6, i64 4}
!50 = distinct !{!50, !13}
!51 = !{!20, !25, i64 128}
!52 = !{!20, !22, i64 24}
!53 = !{!20, !23, i64 32}
!54 = !{!20, !21, i64 8}
!55 = distinct !{!55, !56}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = distinct !{!57, !13}
!58 = !{!59, !6, i64 0}
!59 = !{!"FFTXCodeletOptions", !6, i64 0}
!60 = distinct !{!60, !13}
!61 = distinct !{!61, !13}
!62 = !{!22, !22, i64 0}
!63 = distinct !{!63, !13}
!64 = distinct !{!64, !56}
!65 = distinct !{!65, !13}
!66 = distinct !{!66, !13}
!67 = distinct !{!67, !56}
!68 = distinct !{!68, !13}
!69 = distinct !{!69, !13}
!70 = distinct !{!70, !13}
!71 = distinct !{!71, !13}
!72 = distinct !{!72, !13}
!73 = distinct !{!73, !13}
!74 = distinct !{!74, !56}
!75 = distinct !{!75, !13}
!76 = !{!20, !6, i64 4}
!77 = distinct !{!77, !13}
!78 = distinct !{!78, !13}
!79 = distinct !{!79, !13}
!80 = distinct !{!80, !13}
!81 = distinct !{!81, !13}
!82 = distinct !{!82, !13}
!83 = distinct !{!83, !13}
!84 = distinct !{!84, !13}
!85 = !{!26, !26, i64 0}
!86 = !{!20, !26, i64 140}
!87 = distinct !{!87, !13}
!88 = distinct !{!88, !13}
!89 = distinct !{!89, !13}
!90 = distinct !{!90, !13}
!91 = distinct !{!91, !13}
!92 = distinct !{!92, !13}
!93 = distinct !{!93, !13}
!94 = distinct !{!94, !13}
!95 = distinct !{!95, !13}
!96 = distinct !{!96, !13}
!97 = distinct !{!97, !13}
!98 = distinct !{!98, !13}
!99 = distinct !{!99, !13}
!100 = distinct !{!100, !13}
!101 = distinct !{!101, !13}
!102 = distinct !{!102, !13}
!103 = distinct !{!103, !13}
!104 = distinct !{!104, !13}
!105 = distinct !{!105, !13}
!106 = distinct !{!106, !13}
!107 = distinct !{!107, !13}
!108 = distinct !{!108, !13}
!109 = distinct !{!109, !13}
!110 = distinct !{!110, !13}
!111 = distinct !{!111, !13}
!112 = distinct !{!112, !13}
!113 = distinct !{!113, !13}
!114 = distinct !{!114, !13}
!115 = distinct !{!115, !13}
!116 = distinct !{!116, !13}
!117 = distinct !{!117, !13}
!118 = distinct !{!118, !13}
!119 = distinct !{!119, !13}
!120 = distinct !{!120, !13}
!121 = distinct !{!121, !13}
!122 = distinct !{!122, !13}
!123 = distinct !{!123, !13}
!124 = distinct !{!124, !13}
!125 = distinct !{!125, !13}
!126 = distinct !{!126, !13}
!127 = distinct !{!127, !13, !128, !129}
!128 = !{!"llvm.loop.isvectorized", i32 1}
!129 = !{!"llvm.loop.unroll.runtime.disable"}
!130 = distinct !{!130, !56}
!131 = distinct !{!131, !13}
!132 = distinct !{!132, !13, !128}
!133 = distinct !{!133, !13, !128, !129}
!134 = distinct !{!134, !56}
!135 = distinct !{!135, !13}
!136 = distinct !{!136, !13, !128}
!137 = distinct !{!137, !13, !128, !129}
!138 = distinct !{!138, !56}
!139 = distinct !{!139, !13}
!140 = distinct !{!140, !13, !128}
!141 = distinct !{!141, !13, !128, !129}
!142 = distinct !{!142, !56}
!143 = distinct !{!143, !13}
!144 = distinct !{!144, !13, !128}
!145 = distinct !{!145, !13}
!146 = distinct !{!146, !13}
!147 = distinct !{!147, !13}
!148 = distinct !{!148, !13}
!149 = distinct !{!149, !13}
!150 = distinct !{!150, !13}
!151 = distinct !{!151, !13}
!152 = distinct !{!152, !13}
!153 = distinct !{!153, !13}
!154 = !{!155, !6, i64 16}
!155 = !{!"FFTXCodelet", !156, i64 0, !11, i64 8, !6, i64 16, !25, i64 24, !7, i64 32, !6, i64 96, !6, i64 100, !6, i64 104, !11, i64 112, !11, i64 120, !6, i64 128, !6, i64 132}
!156 = !{!"p1 omnipotent char", !11, i64 0}
!157 = distinct !{!157, !13}
end_hunk_1

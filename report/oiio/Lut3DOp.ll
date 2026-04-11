inline.NumInlined: 385
inline.NumDeleted: 225
begin_hunk_0_@_ZN16OpenColorIO_v2_521GenerateIdentityLut3DEPfiiNS_10Lut3DOrderE:bb.a
bb.f:                                             ; preds = %bb.b
  %i.d = sitofp i32 %1 to float
  %i.e = fadd float %i.d, -1.000000e+00
  %i.f = fdiv float 1.000000e+00, %i.e            ; 4 uses
  switch i32 %3, label %bb.g [
    i32 0, label %.preheader
    i32 1, label %.preheader65
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_521GenerateIdentityLut3DEPfiiNS_10Lut3DOrderE:bb.a
.lr.ph.preheader:                                 ; preds = %.preheader65
  %i.j = zext nneg i32 %2 to i64
  %wide.trip.count = zext nneg i32 %i.h to i64
  %4 = insertelement <2 x float> poison, float %i.f, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph

.preheader:                                       ; preds = %bb.f
end_hunk_1
begin_hunk_2_@_ZN16OpenColorIO_v2_521GenerateIdentityLut3DEPfiiNS_10Lut3DOrderE:bb.a
.lr.ph69.preheader:                               ; preds = %.preheader
  %i.n = zext nneg i32 %2 to i64
  %wide.trip.count75 = zext nneg i32 %i.l to i64
  %6 = insertelement <2 x float> poison, float %i.f, i64 0
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph69

.lr.ph69:                                         ; preds = %.lr.ph69.preheader, %.lr.ph69
  %indvars.iv72 = phi i64 [ 0, %.lr.ph69.preheader ], [ %indvars.iv.next73, %.lr.ph69 ] ; 3 uses
  %i.o = trunc nuw nsw i64 %indvars.iv72 to i32   ; 2 uses
  %8 = mul nuw nsw i64 %indvars.iv72, %i.n
  %9 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %8 ; 2 uses
  %10 = sdiv i32 %i.o, %1                         ; 2 uses
  %11 = srem i32 %10, %1
  %12 = srem i32 %i.o, %1
  %13 = sitofp i32 %11 to float
  %14 = uitofp nneg i32 %12 to float
  %15 = insertelement <2 x float> poison, float %14, i64 0
  %16 = insertelement <2 x float> %15, float %13, i64 1
  %17 = fmul <2 x float> %7, %16
  store <2 x float> %17, ptr %9, align 4, !tbaa !7
  %i.p = sdiv i32 %10, %1
  %i.q = srem i32 %i.p, %1
  %i.r = sitofp i32 %i.q to float
  %i.s = fmul float %i.f, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 8
  store float %i.s, ptr %i.t, align 4, !tbaa !7
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %exitcond76.not = icmp eq i64 %indvars.iv.next73, %wide.trip.count75
end_hunk_2
begin_hunk_3_@_ZN16OpenColorIO_v2_521GenerateIdentityLut3DEPfiiNS_10Lut3DOrderE:bb.a
.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.u = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %18 = mul nuw nsw i64 %indvars.iv, %i.j
  %19 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %18 ; 2 uses
  %20 = sdiv i32 %i.u, %1                         ; 2 uses
  %21 = sdiv i32 %20, %1
  %22 = srem i32 %20, %1
  %23 = srem i32 %21, %1
  %24 = insertelement <2 x i32> poison, i32 %23, i64 0
  %25 = insertelement <2 x i32> %24, i32 %22, i64 1
  %26 = sitofp <2 x i32> %25 to <2 x float>
  %27 = fmul <2 x float> %5, %26
  store <2 x float> %27, ptr %19, align 4, !tbaa !7
  %i.v = srem i32 %i.u, %1
  %i.w = uitofp nneg i32 %i.v to float
  %i.x = fmul float %i.f, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %19, i64 8
  store float %i.x, ptr %i.y, align 4, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
end_hunk_3

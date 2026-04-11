inline.NumInlined: 385
inline.NumDeleted: 225
begin_hunk_0_@_ZN16OpenColorIO_v2_521GenerateIdentityLut3DEPfiiNS_10Lut3DOrderE:bb.a
bb.f:                                             ; preds = %bb.b
  %i.d = sitofp i32 %1 to float
  %i.e = fadd float %i.d, -1.000000e+00
  %i.f = fdiv float 1.000000e+00, %i.e            ; 6 uses
  switch i32 %3, label %bb.g [
    i32 0, label %.preheader
    i32 1, label %.preheader65
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_521GenerateIdentityLut3DEPfiiNS_10Lut3DOrderE:bb.a
.lr.ph.preheader:                                 ; preds = %.preheader65
  %i.j = zext nneg i32 %2 to i64
  %wide.trip.count = zext nneg i32 %i.h to i64
  br label %.lr.ph

.preheader:                                       ; preds = %bb.f
end_hunk_1
begin_hunk_2_@_ZN16OpenColorIO_v2_521GenerateIdentityLut3DEPfiiNS_10Lut3DOrderE:bb.a
.lr.ph69.preheader:                               ; preds = %.preheader
  %i.n = zext nneg i32 %2 to i64
  %wide.trip.count75 = zext nneg i32 %i.l to i64
  br label %.lr.ph69

.lr.ph69:                                         ; preds = %.lr.ph69.preheader, %.lr.ph69
  %indvars.iv72 = phi i64 [ 0, %.lr.ph69.preheader ], [ %indvars.iv.next73, %.lr.ph69 ] ; 3 uses
  %i.o = trunc nuw nsw i64 %indvars.iv72 to i32   ; 2 uses
  %4 = srem i32 %i.o, %1
  %5 = uitofp nneg i32 %4 to float
  %6 = fmul float %i.f, %5
  %7 = mul nuw nsw i64 %indvars.iv72, %i.n
  %8 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %7 ; 3 uses
  store float %6, ptr %8, align 4, !tbaa !7
  %9 = sdiv i32 %i.o, %1                          ; 2 uses
  %10 = srem i32 %9, %1
  %11 = sitofp i32 %10 to float
  %12 = fmul float %i.f, %11
  %13 = getelementptr inbounds nuw i8, ptr %8, i64 4
  store float %12, ptr %13, align 4, !tbaa !7
  %i.p = sdiv i32 %9, %1
  %i.q = srem i32 %i.p, %1
  %i.r = sitofp i32 %i.q to float
  %i.s = fmul float %i.f, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8
  store float %i.s, ptr %i.t, align 4, !tbaa !7
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %exitcond76.not = icmp eq i64 %indvars.iv.next73, %wide.trip.count75
end_hunk_2
begin_hunk_3_@_ZN16OpenColorIO_v2_521GenerateIdentityLut3DEPfiiNS_10Lut3DOrderE:bb.a
.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.u = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %14 = sdiv i32 %i.u, %1                         ; 2 uses
  %15 = sdiv i32 %14, %1
  %16 = srem i32 %15, %1
  %17 = sitofp i32 %16 to float
  %18 = fmul float %i.f, %17
  %19 = mul nuw nsw i64 %indvars.iv, %i.j
  %20 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %19 ; 3 uses
  store float %18, ptr %20, align 4, !tbaa !7
  %21 = srem i32 %14, %1
  %22 = sitofp i32 %21 to float
  %23 = fmul float %i.f, %22
  %24 = getelementptr inbounds nuw i8, ptr %20, i64 4
  store float %23, ptr %24, align 4, !tbaa !7
  %i.v = srem i32 %i.u, %1
  %i.w = uitofp nneg i32 %i.v to float
  %i.x = fmul float %i.f, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %20, i64 8
  store float %i.x, ptr %i.y, align 4, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
end_hunk_3

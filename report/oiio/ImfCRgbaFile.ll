begin_hunk_0

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12halfFunctionIN9Imath_3_14halfEEC2IN27OpenImageIO_v3_1_Imf__3_3_59roundNBitEEET_S1_S1_S1_S1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 %1, i16 %2, i16 %3, i16 %4, i16 %5, i16 %6, i16 %7) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
  %.fr24 = freeze i32 %1                          ; 3 uses
  %9 = tail call noalias noundef nonnull dereferenceable(131072) ptr @_Znam(i64 noundef 131072) #21 ; 9 uses
  store ptr %9, ptr %0, align 8, !tbaa !64
  %10 = load ptr, ptr @imath_half_to_float_table, align 8 ; 4 uses
end_hunk_0
begin_hunk_1
  %12 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %11 ; 2 uses
  %13 = zext i16 %3 to i64
  %14 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %13 ; 2 uses
  %15 = icmp ugt i32 %.fr24, 9
  %16 = sub nuw nsw i32 9, %.fr24                 ; 2 uses
  %17 = sub nuw nsw i32 10, %.fr24
  %18 = shl nsw i32 -1, %17
  br i1 %15, label %.split.us, label %.split

.split.us:                                        ; preds = %8, %45
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %45 ], [ 0, %8 ] ; 7 uses
  %19 = trunc i64 %indvars.iv27 to i16            ; 5 uses
  %20 = and i16 %19, 31744
  %21 = icmp eq i16 %20, 31744
  %22 = and i16 %19, 1023
end_hunk_1
begin_hunk_2
  br i1 %27, label %39, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv27
  %30 = load float, ptr %29, align 4, !tbaa !17   ; 2 uses
  %31 = load float, ptr %12, align 4, !tbaa !17
  %32 = fcmp olt float %30, %31
end_hunk_2
begin_hunk_3
  br i1 %35, label %37, label %_ZN27OpenImageIO_v3_1_Imf__3_3_59roundNBitclEN9Imath_3_14halfE.exit.us

_ZN27OpenImageIO_v3_1_Imf__3_3_59roundNBitclEN9Imath_3_14halfE.exit.us: ; preds = %33
  %36 = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %indvars.iv27
  store i16 %19, ptr %36, align 2, !tbaa !8
  br label %45

37:                                               ; preds = %33, %28
  %38 = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %indvars.iv27
  store i16 %4, ptr %38, align 2, !tbaa !8
  br label %45

39:                                               ; preds = %25
  %40 = icmp slt i16 %19, 0
  %41 = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %indvars.iv27
  %42 = select i1 %40, i16 %6, i16 %5
  store i16 %42, ptr %41, align 2, !tbaa !8
  br label %45

43:                                               ; preds = %.split.us
  %44 = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %indvars.iv27
  store i16 %7, ptr %44, align 2, !tbaa !8
  br label %45

45:                                               ; preds = %43, %39, %37, %_ZN27OpenImageIO_v3_1_Imf__3_3_59roundNBitclEN9Imath_3_14halfE.exit.us
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1 ; 2 uses
  %exitcond30.not = icmp eq i64 %indvars.iv.next28, 65536
  br i1 %exitcond30.not, label %.split23.us, label %.split.us, !llvm.loop !71

.split23.us:                                      ; preds = %83, %45
  ret void
end_hunk_3

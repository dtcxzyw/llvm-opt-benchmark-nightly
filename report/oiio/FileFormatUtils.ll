inline.NumInlined: 160
inline.NumDeleted: 101
begin_hunk_0_@_ZN16OpenColorIO_v2_59HandleLUTINS_11Lut1DOpDataEEESt10shared_ptrIT_ERKS4_NS_13InterpolationERb:bb.a

bb.c:                                             ; preds = %bb.b
  %i.c = load i8, ptr %3, align 1, !tbaa !13, !range !15, !noundef !16
  %5 = zext i1 %i.b to i8
  %6 = or i8 %i.c, %5
  store i8 %6, ptr %3, align 1, !tbaa !13
  %i.d = select i1 %i.b, i32 %2, i32 254          ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 168
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_59HandleLUTINS_11Lut3DOpDataEEESt10shared_ptrIT_ERKS4_NS_13InterpolationERb:bb.a

bb.c:                                             ; preds = %bb.b
  %i.c = load i8, ptr %3, align 1, !tbaa !13, !range !15, !noundef !16
  %5 = zext i1 %i.b to i8
  %6 = or i8 %i.c, %5
  store i8 %6, ptr %3, align 1, !tbaa !13
  %i.d = select i1 %i.b, i32 %2, i32 254          ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !61
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 168
end_hunk_1

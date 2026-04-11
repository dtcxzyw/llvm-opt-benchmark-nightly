inline.NumInlined: 8178
inline.NumDeleted: 2488
begin_hunk_0_@_ZN11OpenImageIO4v3_112get_roi_fullERKNS0_9ImageSpecE:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN11OpenImageIO4v3_17set_roiERNS0_9ImageSpecERKNS0_3ROIE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(160) initializes((0, 24)) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 4, !tbaa !75   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.d, ptr %i.e, align 8, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %2 = load <4 x i32>, ptr %1, align 4, !tbaa !3  ; 2 uses
  %3 = load i32, ptr %i.a, align 4, !tbaa !74
  %4 = load i32, ptr %1, align 4, !tbaa !72
  store i32 %4, ptr %0, align 8, !tbaa !48
  store i32 %3, ptr %i.b, align 4, !tbaa !49
  %5 = shufflevector <4 x i32> %2, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %6 = shufflevector <4 x i32> %2, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %7 = sub nsw <2 x i32> %5, %6
  store <2 x i32> %7, ptr %i.f, align 4, !tbaa !3
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !78
  %i.i = sub nsw i32 %i.h, %i.d
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_17set_roiERNS0_9ImageSpecERKNS0_3ROIE:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN11OpenImageIO4v3_112set_roi_fullERNS0_9ImageSpecERKNS0_3ROIE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(160) initializes((24, 48)) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 4, !tbaa !75   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.e, ptr %i.f, align 8, !tbaa !81
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36
  %2 = load <4 x i32>, ptr %1, align 4, !tbaa !3  ; 2 uses
  %3 = load i32, ptr %i.b, align 4, !tbaa !74
  %4 = load i32, ptr %1, align 4, !tbaa !72
  store i32 %4, ptr %i.a, align 8, !tbaa !79
  store i32 %3, ptr %i.c, align 4, !tbaa !80
  %5 = shufflevector <4 x i32> %2, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %6 = shufflevector <4 x i32> %2, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %7 = sub nsw <2 x i32> %5, %6
  store <2 x i32> %7, ptr %i.g, align 4, !tbaa !3
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !78
  %i.j = sub nsw i32 %i.i, %i.e
end_hunk_1

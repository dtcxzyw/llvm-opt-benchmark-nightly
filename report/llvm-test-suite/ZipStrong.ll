inline.NumInlined: 25
inline.NumDeleted: 9
begin_hunk_0_@_Z16ReadStream_FALSEP19ISequentialInStreamPvm
; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7CBufferIhE11SetCapacityEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !31
  %i.c = icmp eq i64 %1, %i.b
  br i1 %i.c, label %bb.h, label %bb.b

end_hunk_0
begin_hunk_1_@_ZN7CBufferIhE11SetCapacityEm:bb.a

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %1) #14 ; 3 uses
  %2 = load i64, ptr %i.a, align 8, !tbaa !31     ; 2 uses
  %.not10 = icmp eq i64 %2, 0
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.g = tail call noundef i64 @llvm.umin.i64(i64 %2, i64 %1)
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.d, ptr align 1 %i.f, i64 %i.g, i1 false)
  br label %bb.e

end_hunk_1

inline.NumInlined: 16
begin_hunk_0_@sqrt
; Function Attrs: nounwind uwtable
define dso_local void @testStats() local_unnamed_addr #3 {
Stats_new.exit.split:
  %i.a = tail call noalias nonnull dereferenceable(40) dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #14 ; 33 uses
  %i.b = tail call nonnull ptr @IntVector_new(i32 noundef 16) #15
  store ptr %i.b, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
end_hunk_0
begin_hunk_1_@testStats:Stats_new.exit.split
  store i32 0, ptr %i.e, align 4, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.f, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 39 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 41 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
end_hunk_1

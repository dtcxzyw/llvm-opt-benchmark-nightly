inline.NumInlined: 82
inline.NumDeleted: 4
begin_hunk_0_@setDecodeDefaults:bb.a
  store i32 1, ptr %i.c, align 4, !tbaa !338
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1844 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !74
  %i.f = icmp eq i32 %i.e, 3                      ; 2 uses
  %spec.select = select i1 %i.f, i64 96, i64 288
  %spec.select.a = select i1 %i.f, i32 1, i32 3   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1024
  store i32 %spec.select.a, ptr %i.g, align 8, !tbaa !339
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
end_hunk_0
begin_hunk_1_@setDecodeDefaults:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !341
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !342
  %i.m = tail call ptr %i.l(ptr noundef nonnull %i.a, i32 noundef 1, i64 noundef %spec.select) #26 ; 11 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 888
  store ptr %i.m, ptr %i.n, align 8, !tbaa !343
  %i.o = load i32, ptr %i.h, align 8, !tbaa !340  ; 4 uses
end_hunk_1

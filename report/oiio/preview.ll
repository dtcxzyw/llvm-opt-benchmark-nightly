begin_hunk_0_@exr_attr_preview_create:bb.a
bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.h = tail call i32 (ptr, i32, ptr, ...) %i.g(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef %2, i32 noundef %3, i64 noundef %i.d) #3
  br label %exr_attr_preview_init.exit

bb.d:                                             ; preds = %bb.b
end_hunk_0
begin_hunk_1_@exr_attr_preview_create:bb.a
bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.k = tail call i32 %i.j(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.1) #3
  br label %exr_attr_preview_init.exit

bb.f:                                             ; preds = %bb.d
end_hunk_1
begin_hunk_2_@exr_attr_preview_create:bb.a
bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !24
  %i.n = tail call ptr %i.m(i64 noundef %i.d) #3  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.n, ptr %i.o, align 8, !tbaa !25
  %i.p = icmp eq ptr %i.n, null
end_hunk_2
begin_hunk_3_@exr_attr_preview_create:bb.a
bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !27
  %i.s = tail call i32 %i.r(ptr noundef nonnull %0, i32 noundef 1) #3
  br label %exr_attr_preview_init.exit

bb.i:                                             ; preds = %bb.g
end_hunk_3
begin_hunk_4_@exr_attr_preview_destroy:bb.a

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !31
  tail call void %i.f(ptr noundef nonnull %i.b) #3
  br label %bb.f

end_hunk_4
begin_hunk_5_@exr_attr_preview_destroy:bb.a
!28 = !{!26, !13, i64 8}
!29 = !{!26, !4, i64 0}
!30 = !{!26, !4, i64 4}
!31 = !{!8, !11, i64 96}
end_hunk_5

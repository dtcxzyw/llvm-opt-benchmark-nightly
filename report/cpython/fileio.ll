inline.NumInlined: 71
inline.NumDeleted: 34
begin_hunk_0_@_io_FileIO_read:bb.a
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !32
  %i.j = call i32 @_Py_convert_optional_to_ssize_t(ptr noundef %i.i, ptr noundef nonnull %i.b) #11
  %.not20 = icmp eq i32 %i.j, 0
  br i1 %.not20, label %_io_FileIO_read_impl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread
  %5 = load i64, ptr %i.b, align 8, !tbaa !51     ; 3 uses
  %i.k = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !11
  %i.m = icmp slt i32 %i.l, 0
end_hunk_0

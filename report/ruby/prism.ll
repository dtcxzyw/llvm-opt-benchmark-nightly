inline.NumInlined: 2622
inline.NumDeleted: 264
begin_hunk_0_@parser_lex:bb.a
  %i.yx = add i32 %i.yr, 1
  store i32 %i.yx, ptr %i.yq, align 8, !tbaa !201
  %i.yy = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %8 = load i32, ptr %i.yy, align 8, !tbaa !203
  %9 = add i32 %8, 1
  store i32 %9, ptr %i.yy, align 8, !tbaa !203
  %10 = getelementptr i8, ptr %0, i64 20          ; 2 uses
  %11 = load i32, ptr %10, align 4, !tbaa !7
  %12 = shl i32 %11, 1
  store i32 %12, ptr %10, align 4, !tbaa !7
  store i32 %.01867, ptr %i.c, align 8, !tbaa !170
  %i.yz = load ptr, ptr %i.ab, align 8, !tbaa !171 ; 3 uses
  %.not.i2403 = icmp eq ptr %i.yz, null
end_hunk_0

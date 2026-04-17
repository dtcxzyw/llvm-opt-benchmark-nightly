inline.NumInlined: 2622
inline.NumDeleted: 264
begin_hunk_0_@parser_lex:bb.a
  %i.yx = add i32 %i.yr, 1
  store i32 %i.yx, ptr %i.yq, align 8, !tbaa !201
  %i.yy = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %8 = load <2 x i32>, ptr %i.yy, align 8, !tbaa !7 ; 2 uses
  %9 = insertelement <2 x i32> %8, i32 1, i64 0
  %10 = add <2 x i32> %8, %9
  store <2 x i32> %10, ptr %i.yy, align 8, !tbaa !7
  store i32 %.01867, ptr %i.c, align 8, !tbaa !170
  %i.yz = load ptr, ptr %i.ab, align 8, !tbaa !171 ; 3 uses
  %.not.i2403 = icmp eq ptr %i.yz, null
end_hunk_0

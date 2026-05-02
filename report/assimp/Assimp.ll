inline.NumInlined: 1626
inline.NumDeleted: 658
begin_hunk_0_@assimp_stbi_is_16_bit_from_file:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #48
  store ptr %2, ptr %1, align 8
  %i.z = call fastcc noundef i32 @_ZL20stbi__parse_png_fileP9stbi__pngii(ptr noundef nonnull %1, i32 noundef 2, i32 noundef 0)
  %.not.i.i.i = icmp ne i32 %i.z, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load i32, ptr %i.aa, align 8
  %.not1.i.i = icmp eq i32 %i.ab, 16
end_hunk_0
begin_hunk_1_@assimp_stbi_is_16_bit_from_memory:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #48
  store ptr %3, ptr %2, align 8
  %i.j = call fastcc noundef i32 @_ZL20stbi__parse_png_fileP9stbi__pngii(ptr noundef nonnull %2, i32 noundef 2, i32 noundef 0)
  %.not.i.i.i = icmp ne i32 %i.j, 0
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.l = load i32, ptr %i.k, align 8
  %.not1.i.i = icmp eq i32 %i.l, 16
end_hunk_1
begin_hunk_2_@assimp_stbi_is_16_bit_from_callbacks:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #48
  store ptr %3, ptr %2, align 8
  %i.y = call fastcc noundef i32 @_ZL20stbi__parse_png_fileP9stbi__pngii(ptr noundef nonnull %2, i32 noundef 2, i32 noundef 0)
  %.not.i.i.i = icmp ne i32 %i.y, 0
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aa = load i32, ptr %i.z, align 8
  %.not1.i.i = icmp eq i32 %i.aa, 16
end_hunk_2

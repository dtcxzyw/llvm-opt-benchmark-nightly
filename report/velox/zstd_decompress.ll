inline.NumInlined: 251
inline.NumDeleted: 58
begin_hunk_0_@ZSTD_decompress:ZSTD_customMalloc.exit.i
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 30128
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 30168
  store i64 0, ptr %i.c, align 8, !tbaa !42
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 30184 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 29912
  store ptr null, ptr %i.e, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 30204
  store i32 0, ptr %i.f, align 4, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 30208 ; 2 uses
  store i32 0, ptr %i.g, align 8, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 30280
  store i64 0, ptr %i.h, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 30236
end_hunk_0
begin_hunk_1_@ZSTD_decompress:ZSTD_customMalloc.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 95976
  store i64 0, ptr %i.m, align 8, !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 30176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.i, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store i32 1, ptr %i.n, align 8, !tbaa !29
end_hunk_1

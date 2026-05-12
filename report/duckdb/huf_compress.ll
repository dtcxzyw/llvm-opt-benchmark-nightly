inline.NumInlined: 440
inline.NumDeleted: 31
begin_hunk_0_@_ZN11duckdb_zstd21HUF_compress1X_repeatEPvmPKvmjjS0_mPmPNS_10HUF_repeatEi:bb.a
; Function Attrs: mustprogress uwtable
define internal fastcc noundef i64 @_ZN11duckdb_zstdL21HUF_compress_internalEPvmPKvmjjNS_15HUF_nbStreams_eES0_mPmPNS_10HUF_repeatEi(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef range(i32 0, 2) %6, ptr noundef %7, i64 noundef %8, ptr noundef %9, ptr noundef captures(address_is_null) %10, i32 noundef %11) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  store i32 %4, ptr %i.a, align 4, !tbaa !3
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstdL21HUF_compress_internalEPvmPKvmjjNS_15HUF_nbStreams_eES0_mPmPNS_10HUF_repeatEi:bb.a
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.m = phi i32 [ 255, %bb.g ], [ %4, %bb.f ]
  %.not166 = icmp eq i32 %5, 0
  %spec.store.select = select i1 %.not166, i32 11, i32 %5
  %i.n = and i32 %11, 4
end_hunk_1
begin_hunk_2_@_ZN11duckdb_zstdL21HUF_compress_internalEPvmPKvmjjNS_15HUF_nbStreams_eES0_mPmPNS_10HUF_repeatEi:bb.a
  %i.x = zext i32 %i.w to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %12 = load i32, ptr %i.a, align 4, !tbaa !3
  store i32 %12, ptr %i.c, align 4, !tbaa !3
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -4096
  %i.aa = call noundef i32 @_ZN11duckdb_zstd17HIST_count_simpleEPjS0_PKvm(ptr noundef %.0.i, ptr noundef nonnull %i.c, ptr noundef nonnull %i.z, i64 noundef 4096)
end_hunk_2

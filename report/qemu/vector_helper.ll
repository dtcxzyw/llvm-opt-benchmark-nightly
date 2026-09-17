Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/vector_helper?download=true
inline.NumInlined: 5693
inline.NumDeleted: 634
loop-unroll.NumRuntimeUnrolled: 372
loop-unroll.NumUnrolled: 373
begin_hunk_0_@do_vmaxu_vx_w:bb.a
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vmaxu_vx_d(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call void @do_vext_vx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vmaxu_vx_d, i32 noundef 8) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vmaxu_vx_d(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #8 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 2 uses
  %i.b = getelementptr inbounds [8 x i8], ptr %2, i64 %i.a
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 %1)
  %i.e = getelementptr inbounds [8 x i8], ptr %0, i64 %i.a
  store i64 %i.d, ptr %i.e, align 8
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vmax_vx_b(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call void @do_vext_vx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vmax_vx_b, i32 noundef 1) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vmax_vx_b(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #8 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %2, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1
  %i.d = trunc i64 %1 to i8
  %i.e = tail call i8 @llvm.smax.i8(i8 %i.c, i8 %i.d)
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.a
  store i8 %i.e, ptr %i.f, align 1
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vmax_vx_h(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call void @do_vext_vx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vmax_vx_h, i32 noundef 2) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vmax_vx_h(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #8 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 2 uses
  %i.b = getelementptr inbounds [2 x i8], ptr %2, i64 %i.a
  %i.c = load i16, ptr %i.b, align 2
  %i.d = trunc i64 %1 to i16
  %i.e = tail call i16 @llvm.smax.i16(i16 %i.c, i16 %i.d)
  %i.f = getelementptr inbounds [2 x i8], ptr %0, i64 %i.a
  store i16 %i.e, ptr %i.f, align 2
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vmax_vx_w(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call void @do_vext_vx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vmax_vx_w, i32 noundef 4) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vmax_vx_w(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #8 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 2 uses
  %i.b = getelementptr inbounds [4 x i8], ptr %2, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4
  %i.d = trunc i64 %1 to i32
  %i.e = tail call i32 @llvm.smax.i32(i32 %i.c, i32 %i.d)
  %i.f = getelementptr inbounds [4 x i8], ptr %0, i64 %i.a
  store i32 %i.e, ptr %i.f, align 4
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vmax_vx_d(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call void @do_vext_vx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vmax_vx_d, i32 noundef 8) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vmax_vx_d(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #8 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 2 uses
  %i.b = getelementptr inbounds [8 x i8], ptr %2, i64 %i.a
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call i64 @llvm.smax.i64(i64 %i.c, i64 %1)
  %i.e = getelementptr inbounds [8 x i8], ptr %0, i64 %i.a
  store i64 %i.d, ptr %i.e, align 8
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vmul_vv_b(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call void @do_vext_vv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vmul_vv_b, i32 noundef 1) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vmul_vv_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #8 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 3 uses
  %i.b = getelementptr inbounds i8, ptr %1, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.a
  %i.e = load i8, ptr %i.d, align 1
  %i.f = mul i8 %i.e, %i.c
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.a
  store i8 %i.f, ptr %i.g, align 1
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vmul_vv_h(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call void @do_vext_vv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vmul_vv_h, i32 noundef 2) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vmul_vv_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #8 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 3 uses
  %i.b = getelementptr inbounds [2 x i8], ptr %1, i64 %i.a
  %i.c = load i16, ptr %i.b, align 2
  %i.d = getelementptr inbounds [2 x i8], ptr %2, i64 %i.a
  %i.e = load i16, ptr %i.d, align 2
  %i.f = mul i16 %i.e, %i.c
  %i.g = getelementptr inbounds [2 x i8], ptr %0, i64 %i.a
  store i16 %i.f, ptr %i.g, align 2
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vmul_vv_w(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call void @do_vext_vv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vmul_vv_w, i32 noundef 4) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vmul_vv_w(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #8 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 3 uses
  %i.b = getelementptr inbounds [4 x i8], ptr %1, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4
  %i.d = getelementptr inbounds [4 x i8], ptr %2, i64 %i.a
  %i.e = load i32, ptr %i.d, align 4
  %i.f = mul i32 %i.e, %i.c
  %i.g = getelementptr inbounds [4 x i8], ptr %0, i64 %i.a
  store i32 %i.f, ptr %i.g, align 4
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vmul_vv_d(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call void @do_vext_vv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vmul_vv_d, i32 noundef 8) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vmul_vv_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #8 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 3 uses
  %i.b = getelementptr inbounds [8 x i8], ptr %1, i64 %i.a
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds [8 x i8], ptr %2, i64 %i.a
  %i.e = load i64, ptr %i.d, align 8
  %i.f = mul i64 %i.e, %i.c
  %i.g = getelementptr inbounds [8 x i8], ptr %0, i64 %i.a
  store i64 %i.f, ptr %i.g, align 8
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vmulh_vv_b(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call void @do_vext_vv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vmulh_vv_b, i32 noundef 1) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vmulh_vv_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #8 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 3 uses
  %i.b = getelementptr inbounds i8, ptr %1, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.a
  %i.e = load i8, ptr %i.d, align 1
  %4 = sext i8 %i.e to i16
  %5 = sext i8 %i.c to i16
  %6 = mul nsw i16 %4, %5
  %7 = lshr i16 %6, 8
  %8 = trunc nuw i16 %7 to i8
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.a
  store i8 %8, ptr %i.f, align 1
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vmulh_vv_h(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call void @do_vext_vv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vmulh_vv_h, i32 noundef 2) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vmulh_vv_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #8 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 3 uses
  %i.b = getelementptr inbounds [2 x i8], ptr %1, i64 %i.a
  %i.c = load i16, ptr %i.b, align 2
  %i.d = getelementptr inbounds [2 x i8], ptr %2, i64 %i.a
  %i.e = load i16, ptr %i.d, align 2
  %4 = sext i16 %i.e to i32
  %5 = sext i16 %i.c to i32
  %6 = mul nsw i32 %4, %5
  %7 = lshr i32 %6, 16
  %8 = trunc nuw i32 %7 to i16
  %i.f = getelementptr inbounds [2 x i8], ptr %0, i64 %i.a
  store i16 %8, ptr %i.f, align 2
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vmulh_vv_w(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call void @do_vext_vv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vmulh_vv_w, i32 noundef 4) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vmulh_vv_w(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #8 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 3 uses
  %i.b = getelementptr inbounds [4 x i8], ptr %1, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4
  %i.d = getelementptr inbounds [4 x i8], ptr %2, i64 %i.a
  %i.e = load i32, ptr %i.d, align 4
  %4 = sext i32 %i.e to i64
  %5 = sext i32 %i.c to i64
  %6 = mul nsw i64 %4, %5
  %7 = lshr i64 %6, 32
  %8 = trunc nuw i64 %7 to i32
  %i.f = getelementptr inbounds [4 x i8], ptr %0, i64 %i.a
  store i32 %8, ptr %i.f, align 4
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vmulh_vv_d(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call void @do_vext_vv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vmulh_vv_d, i32 noundef 8) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vmulh_vv_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #8 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 3 uses
  %i.b = getelementptr inbounds [8 x i8], ptr %1, i64 %i.a
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds [8 x i8], ptr %2, i64 %i.a
  %i.e = load i64, ptr %i.d, align 8
  %4 = sext i64 %i.c to i128
  %5 = sext i64 %i.e to i128
  %6 = mul nsw i128 %5, %4
  %7 = lshr i128 %6, 64
  %8 = trunc nuw i128 %7 to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %0, i64 %i.a
  store i64 %8, ptr %i.f, align 8
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vmulhu_vv_b(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call void @do_vext_vv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vmulhu_vv_b, i32 noundef 1) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vmulhu_vv_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #8 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 3 uses
  %i.b = getelementptr inbounds i8, ptr %1, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.a
  %i.e = load i8, ptr %i.d, align 1
  %4 = zext i8 %i.e to i16
  %5 = zext i8 %i.c to i16
  %6 = mul nuw i16 %4, %5
  %7 = lshr i16 %6, 8
  %8 = trunc nuw i16 %7 to i8
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.a
  store i8 %8, ptr %i.f, align 1
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vmulhu_vv_h(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call void @do_vext_vv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vmulhu_vv_h, i32 noundef 2) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vmulhu_vv_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #8 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 3 uses
  %i.b = getelementptr inbounds [2 x i8], ptr %1, i64 %i.a
  %i.c = load i16, ptr %i.b, align 2
  %i.d = getelementptr inbounds [2 x i8], ptr %2, i64 %i.a
  %i.e = load i16, ptr %i.d, align 2
  %4 = zext i16 %i.e to i32
  %5 = zext i16 %i.c to i32
  %6 = mul nuw i32 %4, %5
  %7 = lshr i32 %6, 16
  %8 = trunc nuw i32 %7 to i16
  %i.f = getelementptr inbounds [2 x i8], ptr %0, i64 %i.a
  store i16 %8, ptr %i.f, align 2
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vmulhu_vv_w(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call void @do_vext_vv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vmulhu_vv_w, i32 noundef 4) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vmulhu_vv_w(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #8 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 3 uses
  %i.b = getelementptr inbounds [4 x i8], ptr %1, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4
  %i.d = getelementptr inbounds [4 x i8], ptr %2, i64 %i.a
  %i.e = load i32, ptr %i.d, align 4
  %4 = zext i32 %i.e to i64
  %5 = zext i32 %i.c to i64
  %6 = mul nuw i64 %4, %5
  %7 = lshr i64 %6, 32
  %8 = trunc nuw i64 %7 to i32
  %i.f = getelementptr inbounds [4 x i8], ptr %0, i64 %i.a
  store i32 %8, ptr %i.f, align 4
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vmulhu_vv_d(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call void @do_vext_vv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vmulhu_vv_d, i32 noundef 8) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vmulhu_vv_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #8 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 3 uses
  %i.b = getelementptr inbounds [8 x i8], ptr %1, i64 %i.a
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds [8 x i8], ptr %2, i64 %i.a
  %i.e = load i64, ptr %i.d, align 8
  %4 = zext i64 %i.e to i128
  %5 = zext i64 %i.c to i128
  %6 = mul nuw i128 %4, %5
  %7 = lshr i128 %6, 64
  %8 = trunc nuw i128 %7 to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %0, i64 %i.a
  store i64 %8, ptr %i.f, align 8
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vmulhsu_vv_b(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call void @do_vext_vv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vmulhsu_vv_b, i32 noundef 1) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vmulhsu_vv_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #8 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 3 uses
  %i.b = getelementptr inbounds i8, ptr %1, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.a
  %i.e = load i8, ptr %i.d, align 1
  %i.f = sext i8 %i.e to i16
  %i.g = zext i8 %i.c to i16
  %i.h = mul nsw i16 %i.f, %i.g
  %i.i = lshr i16 %i.h, 8
  %i.j = trunc nuw i16 %i.i to i8
  %i.k = getelementptr inbounds i8, ptr %0, i64 %i.a
  store i8 %i.j, ptr %i.k, align 1
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vmulhsu_vv_h(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call void @do_vext_vv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vmulhsu_vv_h, i32 noundef 2) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vmulhsu_vv_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #8 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 3 uses
  %i.b = getelementptr inbounds [2 x i8], ptr %1, i64 %i.a
  %i.c = load i16, ptr %i.b, align 2
  %i.d = getelementptr inbounds [2 x i8], ptr %2, i64 %i.a
  %i.e = load i16, ptr %i.d, align 2
  %i.f = sext i16 %i.e to i32
  %i.g = zext i16 %i.c to i32
  %i.h = mul nsw i32 %i.f, %i.g
  %i.i = lshr i32 %i.h, 16
  %i.j = trunc nuw i32 %i.i to i16
  %i.k = getelementptr inbounds [2 x i8], ptr %0, i64 %i.a
  store i16 %i.j, ptr %i.k, align 2
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vmulhsu_vv_w(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call void @do_vext_vv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vmulhsu_vv_w, i32 noundef 4) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vmulhsu_vv_w(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #8 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 3 uses
  %i.b = getelementptr inbounds [4 x i8], ptr %1, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4
  %i.d = getelementptr inbounds [4 x i8], ptr %2, i64 %i.a
  %i.e = load i32, ptr %i.d, align 4
  %i.f = sext i32 %i.e to i64
  %i.g = zext i32 %i.c to i64
  %i.h = mul nsw i64 %i.f, %i.g
  %i.i = lshr i64 %i.h, 32
  %i.j = trunc nuw i64 %i.i to i32
  %i.k = getelementptr inbounds [4 x i8], ptr %0, i64 %i.a
  store i32 %i.j, ptr %i.k, align 4
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vmulhsu_vv_d(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call void @do_vext_vv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vmulhsu_vv_d, i32 noundef 8) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vmulhsu_vv_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #8 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 3 uses
  %i.b = getelementptr inbounds [8 x i8], ptr %1, i64 %i.a
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds [8 x i8], ptr %2, i64 %i.a
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %4 = zext i64 %i.e to i128
  %5 = zext i64 %i.c to i128
  %6 = mul nuw i128 %4, %5
  %7 = lshr i128 %6, 64
  %8 = trunc nuw i128 %7 to i64
  %i.f = icmp slt i64 %i.e, 0
  %i.g = select i1 %i.f, i64 %i.c, i64 0
  %i.h = sub i64 %8, %i.g
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %i.a
  store i64 %i.h, ptr %i.i, align 8
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vmul_vx_b(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call void @do_vext_vx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vmul_vx_b, i32 noundef 1) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vmul_vx_b(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #8 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %2, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1
  %i.d = trunc i64 %1 to i8
  %i.e = mul i8 %i.c, %i.d
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.a
  store i8 %i.e, ptr %i.f, align 1
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vmul_vx_h(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call void @do_vext_vx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vmul_vx_h, i32 noundef 2) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vmul_vx_h(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #8 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 2 uses
  %i.b = getelementptr inbounds [2 x i8], ptr %2, i64 %i.a
  %i.c = load i16, ptr %i.b, align 2
  %i.d = trunc i64 %1 to i16
  %i.e = mul i16 %i.c, %i.d
  %i.f = getelementptr inbounds [2 x i8], ptr %0, i64 %i.a
  store i16 %i.e, ptr %i.f, align 2
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vmul_vx_w(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call void @do_vext_vx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vmul_vx_w, i32 noundef 4) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vmul_vx_w(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #8 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 2 uses
  %i.b = getelementptr inbounds [4 x i8], ptr %2, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4
  %i.d = trunc i64 %1 to i32
  %i.e = mul i32 %i.c, %i.d
  %i.f = getelementptr inbounds [4 x i8], ptr %0, i64 %i.a
  store i32 %i.e, ptr %i.f, align 4
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vmul_vx_d(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call void @do_vext_vx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vmul_vx_d, i32 noundef 8) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vmul_vx_d(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #8 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 2 uses
  %i.b = getelementptr inbounds [8 x i8], ptr %2, i64 %i.a
  %i.c = load i64, ptr %i.b, align 8
  %i.d = mul i64 %i.c, %1
  %i.e = getelementptr inbounds [8 x i8], ptr %0, i64 %i.a
  store i64 %i.d, ptr %i.e, align 8
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vmulh_vx_b(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call void @do_vext_vx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vmulh_vx_b, i32 noundef 1) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vmulh_vx_b(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #8 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %2, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1
  %i.d = trunc i64 %1 to i8
  %4 = sext i8 %i.c to i16
  %5 = sext i8 %i.d to i16
  %6 = mul nsw i16 %4, %5
  %7 = lshr i16 %6, 8
  %8 = trunc nuw i16 %7 to i8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.a
  store i8 %8, ptr %i.e, align 1
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vmulh_vx_h(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call void @do_vext_vx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vmulh_vx_h, i32 noundef 2) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vmulh_vx_h(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #8 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 2 uses
  %i.b = getelementptr inbounds [2 x i8], ptr %2, i64 %i.a
  %i.c = load i16, ptr %i.b, align 2
  %i.d = trunc i64 %1 to i16
  %4 = sext i16 %i.c to i32
  %5 = sext i16 %i.d to i32
  %6 = mul nsw i32 %4, %5
  %7 = lshr i32 %6, 16
  %8 = trunc nuw i32 %7 to i16
  %i.e = getelementptr inbounds [2 x i8], ptr %0, i64 %i.a
  store i16 %8, ptr %i.e, align 2
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vmulh_vx_w(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call void @do_vext_vx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vmulh_vx_w, i32 noundef 4) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vmulh_vx_w(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #8 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 2 uses
  %i.b = getelementptr inbounds [4 x i8], ptr %2, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4
  %4 = sext i32 %i.c to i64
  %sext = shl i64 %1, 32
  %5 = ashr exact i64 %sext, 32
  %6 = mul nsw i64 %5, %4
  %7 = lshr i64 %6, 32
  %8 = trunc nuw i64 %7 to i32
  %i.d = getelementptr inbounds [4 x i8], ptr %0, i64 %i.a
  store i32 %8, ptr %i.d, align 4
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vmulh_vx_d(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call void @do_vext_vx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vmulh_vx_d, i32 noundef 8) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vmulh_vx_d(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #8 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 2 uses
  %i.b = getelementptr inbounds [8 x i8], ptr %2, i64 %i.a
  %i.c = load i64, ptr %i.b, align 8
  %4 = sext i64 %1 to i128
  %5 = sext i64 %i.c to i128
  %6 = mul nsw i128 %5, %4
  %7 = lshr i128 %6, 64
  %8 = trunc nuw i128 %7 to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %0, i64 %i.a
  store i64 %8, ptr %i.d, align 8
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vmulhu_vx_b(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call void @do_vext_vx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vmulhu_vx_b, i32 noundef 1) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vmulhu_vx_b(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #8 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %2, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1
  %4 = trunc i64 %1 to i16
  %5 = zext i8 %i.c to i16
  %6 = and i16 %4, 255
  %7 = mul nuw i16 %6, %5
  %8 = lshr i16 %7, 8
  %9 = trunc nuw i16 %8 to i8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.a
  store i8 %9, ptr %i.d, align 1
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vmulhu_vx_h(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call void @do_vext_vx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vmulhu_vx_h, i32 noundef 2) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vmulhu_vx_h(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #8 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 2 uses
  %i.b = getelementptr inbounds [2 x i8], ptr %2, i64 %i.a
  %i.c = load i16, ptr %i.b, align 2
  %4 = trunc i64 %1 to i32
  %5 = zext i16 %i.c to i32
  %6 = and i32 %4, 65535
  %7 = mul nuw i32 %6, %5
  %8 = lshr i32 %7, 16
  %9 = trunc nuw i32 %8 to i16
  %i.d = getelementptr inbounds [2 x i8], ptr %0, i64 %i.a
  store i16 %9, ptr %i.d, align 2
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vmulhu_vx_w(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call void @do_vext_vx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vmulhu_vx_w, i32 noundef 4) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vmulhu_vx_w(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #8 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 2 uses
  %i.b = getelementptr inbounds [4 x i8], ptr %2, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4
  %4 = zext i32 %i.c to i64
  %5 = and i64 %1, 4294967295
  %6 = mul nuw i64 %5, %4
  %7 = lshr i64 %6, 32
  %8 = trunc nuw i64 %7 to i32
  %i.d = getelementptr inbounds [4 x i8], ptr %0, i64 %i.a
  store i32 %8, ptr %i.d, align 4
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vmulhu_vx_d(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call void @do_vext_vx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vmulhu_vx_d, i32 noundef 8) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vmulhu_vx_d(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #8 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 2 uses
  %i.b = getelementptr inbounds [8 x i8], ptr %2, i64 %i.a
  %i.c = load i64, ptr %i.b, align 8
  %4 = zext i64 %i.c to i128
  %5 = zext i64 %1 to i128
  %6 = mul nuw i128 %4, %5
  %7 = lshr i128 %6, 64
  %8 = trunc nuw i128 %7 to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %0, i64 %i.a
  store i64 %8, ptr %i.d, align 8
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vmulhsu_vx_b(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call void @do_vext_vx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vmulhsu_vx_b, i32 noundef 1) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vmulhsu_vx_b(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #8 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %2, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1
  %i.d = trunc i64 %1 to i16
  %i.e = sext i8 %i.c to i16
  %i.f = and i16 %i.d, 255
  %i.g = mul nsw i16 %i.f, %i.e
  %i.h = lshr i16 %i.g, 8
  %i.i = trunc nuw i16 %i.h to i8
  %i.j = getelementptr inbounds i8, ptr %0, i64 %i.a
  store i8 %i.i, ptr %i.j, align 1
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vmulhsu_vx_h(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call void @do_vext_vx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vmulhsu_vx_h, i32 noundef 2) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vmulhsu_vx_h(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #8 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 2 uses
  %i.b = getelementptr inbounds [2 x i8], ptr %2, i64 %i.a
  %i.c = load i16, ptr %i.b, align 2
  %i.d = trunc i64 %1 to i32
  %i.e = sext i16 %i.c to i32
  %i.f = and i32 %i.d, 65535
  %i.g = mul nsw i32 %i.f, %i.e
  %i.h = lshr i32 %i.g, 16
  %i.i = trunc nuw i32 %i.h to i16
  %i.j = getelementptr inbounds [2 x i8], ptr %0, i64 %i.a
  store i16 %i.i, ptr %i.j, align 2
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vmulhsu_vx_w(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call void @do_vext_vx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vmulhsu_vx_w, i32 noundef 4) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vmulhsu_vx_w(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #8 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 2 uses
  %i.b = getelementptr inbounds [4 x i8], ptr %2, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4
  %i.d = sext i32 %i.c to i64
  %i.e = and i64 %1, 4294967295
  %i.f = mul nsw i64 %i.e, %i.d
  %i.g = lshr i64 %i.f, 32
  %i.h = trunc nuw i64 %i.g to i32
  %i.i = getelementptr inbounds [4 x i8], ptr %0, i64 %i.a
  store i32 %i.h, ptr %i.i, align 4
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vmulhsu_vx_d(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call void @do_vext_vx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vmulhsu_vx_d, i32 noundef 8) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vmulhsu_vx_d(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #8 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 2 uses
  %i.b = getelementptr inbounds [8 x i8], ptr %2, i64 %i.a
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %4 = zext i64 %i.c to i128
  %5 = zext i64 %1 to i128
  %6 = mul nuw i128 %4, %5
  %7 = lshr i128 %6, 64
  %8 = trunc nuw i128 %7 to i64
  %i.d = icmp slt i64 %i.c, 0
  %i.e = select i1 %i.d, i64 %1, i64 0
  %i.f = sub i64 %8, %i.e
  %i.g = getelementptr inbounds [8 x i8], ptr %0, i64 %i.a
  store i64 %i.f, ptr %i.g, align 8
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vdivu_vv_b(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call void @do_vext_vv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vdivu_vv_b, i32 noundef 1) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vdivu_vv_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #8 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 3 uses
  %i.b = getelementptr inbounds i8, ptr %1, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1               ; 2 uses
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.a
  %i.f = load i8, ptr %i.e, align 1
  %i.g = udiv i8 %i.f, %i.c
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi i8 [ %i.g, %bb.b ], [ -1, %bb.a ]
  %i.i = getelementptr inbounds i8, ptr %0, i64 %i.a
  store i8 %i.h, ptr %i.i, align 1
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vdivu_vv_h(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call void @do_vext_vv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vdivu_vv_h, i32 noundef 2) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vdivu_vv_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #8 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 3 uses
  %i.b = getelementptr inbounds [2 x i8], ptr %1, i64 %i.a
  %i.c = load i16, ptr %i.b, align 2              ; 2 uses
  %i.d = icmp eq i16 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds [2 x i8], ptr %2, i64 %i.a
  %i.f = load i16, ptr %i.e, align 2
  %i.g = udiv i16 %i.f, %i.c
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi i16 [ %i.g, %bb.b ], [ -1, %bb.a ]
  %i.i = getelementptr inbounds [2 x i8], ptr %0, i64 %i.a
  store i16 %i.h, ptr %i.i, align 2
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vdivu_vv_w(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call void @do_vext_vv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vdivu_vv_w, i32 noundef 4) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vdivu_vv_w(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #8 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 3 uses
  %i.b = getelementptr inbounds [4 x i8], ptr %1, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds [4 x i8], ptr %2, i64 %i.a
  %i.f = load i32, ptr %i.e, align 4
  %i.g = udiv i32 %i.f, %i.c
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.g, %bb.b ], [ -1, %bb.a ]
  %i.i = getelementptr inbounds [4 x i8], ptr %0, i64 %i.a
  store i32 %i.h, ptr %i.i, align 4
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vdivu_vv_d(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call void @do_vext_vv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vdivu_vv_d, i32 noundef 8) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vdivu_vv_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #8 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 3 uses
  %i.b = getelementptr inbounds [8 x i8], ptr %1, i64 %i.a
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds [8 x i8], ptr %2, i64 %i.a
  %i.f = load i64, ptr %i.e, align 8
  %i.g = udiv i64 %i.f, %i.c
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi i64 [ %i.g, %bb.b ], [ -1, %bb.a ]
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %i.a
  store i64 %i.h, ptr %i.i, align 8
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vdiv_vv_b(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call void @do_vext_vv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vdiv_vv_b, i32 noundef 1) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vdiv_vv_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #8 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 3 uses
  %i.b = getelementptr inbounds i8, ptr %1, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1               ; 3 uses
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.a
  %i.f = load i8, ptr %i.e, align 1               ; 2 uses
  %i.g = icmp eq i8 %i.f, 0
  %i.h = icmp eq i8 %i.c, -1
  %i.i = and i1 %i.h, %i.g
  br i1 %i.i, label %bb.d, label %bb.c, !prof !23

bb.c:                                             ; preds = %bb.b
  %.lhs.trunc = sext i8 %i.f to i16
  %.rhs.trunc = sext i8 %i.c to i16
  %i.j = sdiv i16 %.lhs.trunc, %.rhs.trunc
  %i.k = trunc i16 %i.j to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.l = phi i8 [ -1, %bb.a ], [ %i.k, %bb.c ], [ 0, %bb.b ]
  %i.m = getelementptr inbounds i8, ptr %0, i64 %i.a
  store i8 %i.l, ptr %i.m, align 1
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vdiv_vv_h(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call void @do_vext_vv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull @do_vdiv_vv_h, i32 noundef 2) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @do_vdiv_vv_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #8 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 3 uses
  %i.b = getelementptr inbounds [2 x i8], ptr %1, i64 %i.a
  %i.c = load i16, ptr %i.b, align 2              ; 3 uses
  %i.d = sext i16 %i.c to i32
  %i.e = icmp eq i16 %i.c, 0
  br i1 %i.e, label %bb.d, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds [2 x i8], ptr %2, i64 %i.a
  %i.g = load i16, ptr %i.f, align 2              ; 2 uses
  %i.h = icmp eq i16 %i.g, 0
  %i.i = icmp eq i16 %i.c, -1
  %i.j = and i1 %i.i, %i.h
  br i1 %i.j, label %bb.d, label %bb.c, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.k = sext i16 %i.g to i32
  %i.l = sdiv i32 %i.k, %i.d
  %i.m = trunc i32 %i.l to i16
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.n = phi i16 [ -1, %bb.a ], [ %i.m, %bb.c ], [ 0, %bb.b ]
  %i.o = getelementptr inbounds [2 x i8], ptr %0, i64 %i.a
  store i16 %i.n, ptr %i.o, align 2
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vdiv_vv_w(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
end_hunk_0
begin_hunk_1_@frec7:extract64.exit
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = zext i8 %i.ay to i64
  %i.ba = shl nuw nsw i64 %i.az, %i.au            ; 2 uses
  %i.bb = sub nuw nsw i32 65, %1
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = lshr i64 -1, %i.bc
  %i.be = shl nuw nsw i64 %i.bd, 1                ; 2 uses
  %i.bf = xor i64 %.171, -1
  %i.bg = add nsw i64 %i.be, %i.bf                ; 3 uses
  %i.bh = sub nsw i64 %i.be, %.171
  %or.cond9 = icmp ult i64 %i.bh, 2
  br i1 %or.cond9, label %bb.f, label %deposit64.exit85

bb.f:                                             ; preds = %bb.e
  %i.bi = icmp eq i64 %i.bg, -1                   ; 2 uses
  %i.bj = lshr i64 %i.ba, 1
  %i.bk = zext nneg i32 %i.l to i64
  %i.bl = shl nuw nsw i64 1, %i.bk
  %i.bm = or i64 %i.bj, %i.bl
  %i.bn = zext i1 %i.bi to i64
  %spec.select = lshr i64 %i.bm, %i.bn
  %spec.select75 = select i1 %i.bi, i64 0, i64 %i.bg
  br label %deposit64.exit85

deposit64.exit85:                                 ; preds = %bb.e, %bb.f
  %.068 = phi i64 [ %i.ba, %bb.e ], [ %spec.select, %bb.f ]
  %.067 = phi i64 [ %i.bg, %bb.e ], [ %spec.select75, %bb.f ]
  %i.bo = shl nuw nsw i64 %i.j, %i.f
  %i.bp = xor i64 %i.bo, -1
  %i.bq = and i64 %.068, %i.bp
  %i.br = and i64 %i.bq, %i.n
  %i.bs = and i64 %.067, %i.j
  %i.bt = shl nuw nsw i64 %i.bs, %i.f
  %i.bu = or i64 %i.bt, %i.br
  %i.bv = shl nuw i64 1, %i.b
  %i.bw = xor i64 %i.bv, -1
  %i.bx = and i64 %i.bu, %i.bw
  %i.by = shl nuw i64 %i.d, %i.b
  %i.bz = or i64 %i.bx, %i.by
  br label %bb.g

bb.g:                                             ; preds = %deposit64.exit85, %bb.d, %bb.c
  %.0 = phi i64 [ %i.ap, %bb.c ], [ %i.as, %bb.d ], [ %i.bz, %deposit64.exit85 ]
  ret i64 %.0
}

declare zeroext i16 @bfloat16_minmax(i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #7

declare i32 @bfloat16_compare_quiet(i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #7

declare i32 @float16_compare_quiet(i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #7

declare i32 @float32_compare_quiet(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

declare i32 @float64_compare_quiet(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

declare i32 @bfloat16_compare(i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #7

declare i32 @float16_compare(i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #7

declare i32 @float32_compare(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

declare i32 @float64_compare(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

declare zeroext i16 @float16_to_uint16(i16 noundef zeroext, ptr noundef) local_unnamed_addr #7

declare i32 @float32_to_uint32(i32 noundef, ptr noundef) local_unnamed_addr #7

declare i64 @float64_to_uint64(i64 noundef, ptr noundef) local_unnamed_addr #7

declare signext i16 @float16_to_int16(i16 noundef zeroext, ptr noundef) local_unnamed_addr #7

declare i32 @float32_to_int32(i32 noundef, ptr noundef) local_unnamed_addr #7

declare i64 @float64_to_int64(i64 noundef, ptr noundef) local_unnamed_addr #7

declare zeroext i16 @uint16_to_float16(i16 noundef zeroext, ptr noundef) local_unnamed_addr #7

declare i32 @uint32_to_float32(i32 noundef, ptr noundef) local_unnamed_addr #7

declare i64 @uint64_to_float64(i64 noundef, ptr noundef) local_unnamed_addr #7

declare zeroext i16 @int16_to_float16(i16 noundef signext, ptr noundef) local_unnamed_addr #7

declare i32 @int32_to_float32(i32 noundef, ptr noundef) local_unnamed_addr #7

declare i64 @int64_to_float64(i64 noundef, ptr noundef) local_unnamed_addr #7

declare i32 @float16_to_uint32(i16 noundef zeroext, ptr noundef) local_unnamed_addr #7

declare i64 @float32_to_uint64(i32 noundef, ptr noundef) local_unnamed_addr #7

declare i32 @float16_to_int32(i16 noundef zeroext, ptr noundef) local_unnamed_addr #7

declare i64 @float32_to_int64(i32 noundef, ptr noundef) local_unnamed_addr #7

declare zeroext i16 @uint8_to_float16(i8 noundef zeroext, ptr noundef) local_unnamed_addr #7

declare zeroext i16 @uint8_to_bfloat16(i8 noundef zeroext, ptr noundef) local_unnamed_addr #7

declare i32 @uint16_to_float32(i16 noundef zeroext, ptr noundef) local_unnamed_addr #7

declare i64 @uint32_to_float64(i32 noundef, ptr noundef) local_unnamed_addr #7

declare zeroext i16 @int8_to_float16(i8 noundef signext, ptr noundef) local_unnamed_addr #7

declare zeroext i16 @int8_to_bfloat16(i8 noundef signext, ptr noundef) local_unnamed_addr #7

declare i32 @int16_to_float32(i16 noundef signext, ptr noundef) local_unnamed_addr #7

declare i64 @int32_to_float64(i32 noundef, ptr noundef) local_unnamed_addr #7

declare zeroext i8 @float16_to_uint8(i16 noundef zeroext, ptr noundef) local_unnamed_addr #7

declare zeroext i8 @bfloat16_to_uint8(i16 noundef zeroext, ptr noundef) local_unnamed_addr #7

declare zeroext i16 @float32_to_uint16(i32 noundef, ptr noundef) local_unnamed_addr #7

declare i32 @float64_to_uint32(i64 noundef, ptr noundef) local_unnamed_addr #7

declare signext i8 @float16_to_int8(i16 noundef zeroext, ptr noundef) local_unnamed_addr #7

declare signext i8 @bfloat16_to_int8(i16 noundef zeroext, ptr noundef) local_unnamed_addr #7

declare signext i16 @float32_to_int16(i32 noundef, ptr noundef) local_unnamed_addr #7

declare i32 @float64_to_int32(i64 noundef, ptr noundef) local_unnamed_addr #7

declare zeroext i16 @uint32_to_float16(i32 noundef, ptr noundef) local_unnamed_addr #7

declare i32 @uint64_to_float32(i64 noundef, ptr noundef) local_unnamed_addr #7

declare zeroext i16 @int32_to_float16(i32 noundef, ptr noundef) local_unnamed_addr #7

declare i32 @int64_to_float32(i64 noundef, ptr noundef) local_unnamed_addr #7

declare zeroext i16 @float32_to_float16(i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #7

declare i32 @float64_to_float32(i64 noundef, ptr noundef) local_unnamed_addr #7

declare zeroext i16 @float32_to_bfloat16(i32 noundef, ptr noundef) local_unnamed_addr #7

declare zeroext i16 @float16_minmax(i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #7

declare i32 @float32_minmax(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare i64 @float64_minmax(i64 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smin.i8(i8, i8) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smax.i8(i8, i8) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.usub.sat.v16i8(<16 x i8>, <16 x i8>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.usub.sat.v4i8(<4 x i8>, <4 x i8>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.usub.sat.v8i16(<8 x i16>, <8 x i16>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.usub.sat.v4i32(<4 x i32>, <4 x i32>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.usub.sat.v4i16(<4 x i16>, <4 x i16>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.smin.v16i16(<16 x i16>, <16 x i16>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.smin.v4i16(<4 x i16>, <4 x i16>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i64> @llvm.smin.v4i64(<4 x i64>, <4 x i64>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.umin.v8i16(<8 x i16>, <8 x i16>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.add.v16i8(<16 x i8>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.add.v8i8(<8 x i8>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.add.v8i16(<8 x i16>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.add.v4i16(<4 x i16>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.umax.v16i8(<16 x i8>, <16 x i8>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.umax.v16i8(<16 x i8>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i8> @llvm.umax.v8i8(<8 x i8>, <8 x i8>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.umax.v8i8(<8 x i8>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.umax.v8i16(<8 x i16>, <8 x i16>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.umax.v8i16(<8 x i16>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.umax.v4i16(<4 x i16>, <4 x i16>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.umax.v4i16(<4 x i16>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v4i32(<4 x i32>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.smax.v16i8(<16 x i8>, <16 x i8>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.smax.v16i8(<16 x i8>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i8> @llvm.smax.v8i8(<8 x i8>, <8 x i8>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.smax.v8i8(<8 x i8>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smax.v8i16(<8 x i16>, <8 x i16>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.smax.v8i16(<8 x i16>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.smax.v4i16(<4 x i16>, <4 x i16>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.smax.v4i16(<4 x i16>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.umin.v16i8(<16 x i8>, <16 x i8>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.umin.v16i8(<16 x i8>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i8> @llvm.umin.v8i8(<8 x i8>, <8 x i8>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.umin.v8i8(<8 x i8>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.umin.v8i16(<8 x i16>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.umin.v4i16(<4 x i16>, <4 x i16>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.umin.v4i16(<4 x i16>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umin.v4i32(<4 x i32>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.smin.v16i8(<16 x i8>, <16 x i8>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.smin.v16i8(<16 x i8>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i8> @llvm.smin.v8i8(<8 x i8>, <8 x i8>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.smin.v8i8(<8 x i8>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smin.v8i16(<8 x i16>, <8 x i16>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.smin.v8i16(<8 x i16>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.smin.v4i16(<4 x i16>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.and.v16i8(<16 x i8>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.and.v8i8(<8 x i8>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.and.v8i16(<8 x i16>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.and.v4i16(<4 x i16>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.and.v4i32(<4 x i32>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.and.v2i64(<2 x i64>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.or.v16i8(<16 x i8>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.or.v8i8(<8 x i8>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.or.v8i16(<8 x i16>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.or.v4i16(<4 x i16>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #15
end_hunk_1

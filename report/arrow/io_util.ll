inline.NumInlined: 2454
inline.NumDeleted: 989
begin_hunk_0_@_ZN5arrow8internal16FileOpenWritableERKNS0_16PlatformFilenameEbbb:bb.a
  %12 = alloca %"class.arrow::Result.38", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  store i32 -1, ptr %7, align 4, !tbaa !302
  %spec.select = select i1 %3, i32 576, i32 64
  %13 = select i1 %3, i32 1600, i32 1088
  %.121 = select i1 %4, i32 %13, i32 %spec.select
  %.222.v = select i1 %2, i32 1, i32 2
  %.222 = or disjoint i32 %.121, %.222.v
end_hunk_0

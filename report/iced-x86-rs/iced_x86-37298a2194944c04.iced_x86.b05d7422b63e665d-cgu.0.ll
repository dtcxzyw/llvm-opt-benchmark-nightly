Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iced-x86-rs/original/iced_x86-37298a2194944c04.iced_x86.b05d7422b63e665d-cgu.0?download=true
inline.NumInlined: 5815
inline.NumDeleted: 1335
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_RNvMsH_NtCsf8MNnN4IDbl_8iced_x8618instruction_createNtNtB7_11instruction11Instruction23try_with_declare_byte_9:bb.a
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %.sroa.535.0..sroa_idx, align 8
  %.sroa.636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 2048, ptr %.sroa.636.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.j, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.837.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.21.sroa.0.0.insert.insert, ptr %.sroa.837.0..sroa_idx, align 4
  %.sroa.938.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 1, ptr %.sroa.938.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.10.0..sroa_idx, i8 0, i64 6, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMsH_NtCsf8MNnN4IDbl_8iced_x8618instruction_createNtNtB7_11instruction11Instruction23try_with_declare_word_1(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, i16 noundef %1) unnamed_addr #14 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.9.sroa.0.0.insert.ext = zext i16 %1 to i32
  %.sroa.812.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %0, i8 0, i64 28, i1 false)
  store i32 %.sroa.9.sroa.0.0.insert.ext, ptr %.sroa.812.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 2, ptr %.sroa.9.0..sroa_idx13, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.10.0..sroa_idx, i8 0, i64 6, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMsH_NtCsf8MNnN4IDbl_8iced_x8618instruction_createNtNtB7_11instruction11Instruction23try_with_declare_word_2(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, i16 noundef %1, i16 noundef %2) unnamed_addr #14 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.11.sroa.6.0.insert.ext = zext i16 %2 to i32
  %.sroa.11.sroa.6.0.insert.shift = shl nuw i32 %.sroa.11.sroa.6.0.insert.ext, 16
  %.sroa.11.sroa.0.0.insert.ext = zext i16 %1 to i32
  %.sroa.11.sroa.0.0.insert.insert = or disjoint i32 %.sroa.11.sroa.6.0.insert.shift, %.sroa.11.sroa.0.0.insert.ext
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  store i32 256, ptr %.sroa.613.0..sroa_idx, align 4
  %.sroa.714.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %.sroa.714.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.11.sroa.0.0.insert.insert, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 2, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.1015.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.1015.0..sroa_idx, i8 0, i64 6, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMsH_NtCsf8MNnN4IDbl_8iced_x8618instruction_createNtNtB7_11instruction11Instruction23try_with_declare_word_3(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, i16 noundef %1, i16 noundef %2, i16 noundef %3) unnamed_addr #14 personality ptr @rust_eh_personality {
bb.a:
  %i.a = zext i16 %3 to i32
  %.sroa.13.sroa.6.0.insert.ext = zext i16 %2 to i32
  %.sroa.13.sroa.6.0.insert.shift = shl nuw i32 %.sroa.13.sroa.6.0.insert.ext, 16
  %.sroa.13.sroa.0.0.insert.ext = zext i16 %1 to i32
  %.sroa.13.sroa.0.0.insert.insert = or disjoint i32 %.sroa.13.sroa.6.0.insert.shift, %.sroa.13.sroa.0.0.insert.ext
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  store i32 512, ptr %.sroa.616.0..sroa_idx, align 4
  %.sroa.717.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.a, ptr %.sroa.717.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.13.sroa.0.0.insert.insert, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 2, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.1018.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.1018.0..sroa_idx, i8 0, i64 6, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMsH_NtCsf8MNnN4IDbl_8iced_x8618instruction_createNtNtB7_11instruction11Instruction23try_with_declare_word_4(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, i16 noundef %1, i16 noundef %2, i16 noundef %3, i16 noundef %4) unnamed_addr #14 personality ptr @rust_eh_personality {
bb.a:
  %i.a = insertelement <2 x i16> poison, i16 %3, i64 0
  %i.b = insertelement <2 x i16> %i.a, i16 %1, i64 1
  %i.c = zext <2 x i16> %i.b to <2 x i32>
  %i.d = insertelement <2 x i16> poison, i16 %4, i64 0
  %i.e = insertelement <2 x i16> %i.d, i16 %2, i64 1
  %i.f = zext <2 x i16> %i.e to <2 x i32>
  %.sroa.620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  store i32 768, ptr %.sroa.620.0..sroa_idx, align 4
  %.sroa.721.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = shl nuw <2 x i32> %i.f, splat (i32 16)
  %i.h = or disjoint <2 x i32> %i.g, %i.c
  store <2 x i32> %i.h, ptr %.sroa.721.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 2, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.1022.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.1022.0..sroa_idx, i8 0, i64 6, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMsH_NtCsf8MNnN4IDbl_8iced_x8618instruction_createNtNtB7_11instruction11Instruction23try_with_declare_word_5(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, i16 noundef %1, i16 noundef %2, i16 noundef %3, i16 noundef %4, i16 noundef %5) unnamed_addr #14 personality ptr @rust_eh_personality {
bb.a:
  %i.a = insertelement <2 x i16> poison, i16 %3, i64 0
  %i.b = insertelement <2 x i16> %i.a, i16 %1, i64 1
  %i.c = zext <2 x i16> %i.b to <2 x i32>
  %i.d = insertelement <2 x i16> poison, i16 %4, i64 0
  %i.e = insertelement <2 x i16> %i.d, i16 %2, i64 1
  %i.f = zext <2 x i16> %i.e to <2 x i32>
  %i.g = zext i16 %5 to i64
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %.sroa.521.0..sroa_idx, align 8
  %.sroa.622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 1024, ptr %.sroa.622.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = shl nuw <2 x i32> %i.f, splat (i32 16)
  %i.i = or disjoint <2 x i32> %i.h, %i.c
  store <2 x i32> %i.i, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.924.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 2, ptr %.sroa.924.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.10.0..sroa_idx, i8 0, i64 6, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMsH_NtCsf8MNnN4IDbl_8iced_x8618instruction_createNtNtB7_11instruction11Instruction23try_with_declare_word_6(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, i16 noundef %1, i16 noundef %2, i16 noundef %3, i16 noundef %4, i16 noundef %5, i16 noundef %6) unnamed_addr #14 personality ptr @rust_eh_personality {
bb.a:
  %i.a = insertelement <2 x i16> poison, i16 %3, i64 0
  %i.b = insertelement <2 x i16> %i.a, i16 %1, i64 1
  %i.c = zext <2 x i16> %i.b to <2 x i32>
  %i.d = insertelement <2 x i16> poison, i16 %4, i64 0
  %i.e = insertelement <2 x i16> %i.d, i16 %2, i64 1
  %i.f = zext <2 x i16> %i.e to <2 x i32>
  %i.g = zext i16 %5 to i64
  %i.h = zext i16 %6 to i64
  %i.i = shl nuw nsw i64 %i.h, 16
  %i.j = or disjoint i64 %i.i, %i.g
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %.sroa.525.0..sroa_idx, align 8
  %.sroa.626.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 1280, ptr %.sroa.626.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = shl nuw <2 x i32> %i.f, splat (i32 16)
  %i.l = or disjoint <2 x i32> %i.k, %i.c
  store <2 x i32> %i.l, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 2, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.1027.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.1027.0..sroa_idx, i8 0, i64 6, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMsH_NtCsf8MNnN4IDbl_8iced_x8618instruction_createNtNtB7_11instruction11Instruction23try_with_declare_word_7(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, i16 noundef %1, i16 noundef %2, i16 noundef %3, i16 noundef %4, i16 noundef %5, i16 noundef %6, i16 noundef %7) unnamed_addr #14 personality ptr @rust_eh_personality {
bb.a:
  %i.a = insertelement <2 x i16> poison, i16 %3, i64 0
  %i.b = insertelement <2 x i16> %i.a, i16 %1, i64 1
  %i.c = zext <2 x i16> %i.b to <2 x i32>
  %i.d = insertelement <2 x i16> poison, i16 %4, i64 0
  %i.e = insertelement <2 x i16> %i.d, i16 %2, i64 1
  %i.f = zext <2 x i16> %i.e to <2 x i32>
  %i.g = zext i16 %5 to i64
  %i.h = zext i16 %6 to i64
  %i.i = shl nuw nsw i64 %i.h, 16
  %i.j = or disjoint i64 %i.i, %i.g
  %i.k = zext i16 %7 to i64
  %i.l = shl nuw nsw i64 %i.k, 32
  %i.m = or disjoint i64 %i.j, %i.l
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %.sroa.529.0..sroa_idx, align 8
  %.sroa.630.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 1536, ptr %.sroa.630.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = shl nuw <2 x i32> %i.f, splat (i32 16)
  %i.o = or disjoint <2 x i32> %i.n, %i.c
  store <2 x i32> %i.o, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 2, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.10.0..sroa_idx, i8 0, i64 6, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMsH_NtCsf8MNnN4IDbl_8iced_x8618instruction_createNtNtB7_11instruction11Instruction23try_with_declare_word_8(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, i16 noundef %1, i16 noundef %2, i16 noundef %3, i16 noundef %4, i16 noundef %5, i16 noundef %6, i16 noundef %7, i16 noundef %8) unnamed_addr #14 personality ptr @rust_eh_personality {
bb.a:
  %i.a = insertelement <2 x i16> poison, i16 %3, i64 0
  %i.b = insertelement <2 x i16> %i.a, i16 %1, i64 1
  %i.c = zext <2 x i16> %i.b to <2 x i32>
  %i.d = insertelement <2 x i16> poison, i16 %4, i64 0
  %i.e = insertelement <2 x i16> %i.d, i16 %2, i64 1
  %i.f = zext <2 x i16> %i.e to <2 x i32>
  %9 = zext i16 %5 to i64
  %10 = zext i16 %6 to i64
  %11 = shl nuw nsw i64 %10, 16
  %12 = or disjoint i64 %11, %9
  %13 = zext i16 %7 to i64
  %14 = shl nuw nsw i64 %13, 32
  %15 = or disjoint i64 %12, %14
  %16 = zext i16 %8 to i64
  %17 = shl nuw i64 %16, 48
  %18 = or disjoint i64 %15, %17
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %18, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %.sroa.533.0..sroa_idx, align 8
  %.sroa.634.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 1792, ptr %.sroa.634.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = shl nuw <2 x i32> %i.f, splat (i32 16)
  %i.h = or disjoint <2 x i32> %i.g, %i.c
  store <2 x i32> %i.h, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 2, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.10.0..sroa_idx, i8 0, i64 6, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMsH_NtCsf8MNnN4IDbl_8iced_x8618instruction_createNtNtB7_11instruction11Instruction24try_with_declare_byte_10(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, i8 noundef %1, i8 noundef %2, i8 noundef %3, i8 noundef %4, i8 noundef %5, i8 noundef %6, i8 noundef %7, i8 noundef %8, i8 noundef %9, i8 noundef %10) unnamed_addr #14 personality ptr @rust_eh_personality {
bb.a:
  %i.a = zext i8 %5 to i32
  %i.b = zext i8 %6 to i32
  %i.c = shl nuw nsw i32 %i.b, 8
  %i.d = or disjoint i32 %i.c, %i.a
  %i.e = zext i8 %7 to i32
  %i.f = shl nuw nsw i32 %i.e, 16
  %i.g = or disjoint i32 %i.d, %i.f
  %i.h = zext i8 %8 to i32
  %i.i = shl nuw i32 %i.h, 24
  %i.j = or disjoint i32 %i.g, %i.i
  %i.k = zext i8 %9 to i64
  %i.l = zext i8 %10 to i64
  %i.m = shl nuw nsw i64 %i.l, 8
  %i.n = or disjoint i64 %i.m, %i.k
  %.sroa.23.sroa.8.0.insert.ext = zext i8 %4 to i32
  %.sroa.23.sroa.8.0.insert.shift = shl nuw i32 %.sroa.23.sroa.8.0.insert.ext, 24
  %.sroa.23.sroa.7.0.insert.ext = zext i8 %3 to i32
  %.sroa.23.sroa.7.0.insert.shift = shl nuw nsw i32 %.sroa.23.sroa.7.0.insert.ext, 16
  %.sroa.23.sroa.7.0.insert.insert = or disjoint i32 %.sroa.23.sroa.8.0.insert.shift, %.sroa.23.sroa.7.0.insert.shift
  %.sroa.23.sroa.6.0.insert.ext = zext i8 %2 to i32
  %.sroa.23.sroa.6.0.insert.shift = shl nuw nsw i32 %.sroa.23.sroa.6.0.insert.ext, 8
  %.sroa.23.sroa.6.0.insert.insert = or disjoint i32 %.sroa.23.sroa.7.0.insert.insert, %.sroa.23.sroa.6.0.insert.shift
  %.sroa.23.sroa.0.0.insert.ext = zext i8 %1 to i32
  %.sroa.23.sroa.0.0.insert.insert = or disjoint i32 %.sroa.23.sroa.6.0.insert.insert, %.sroa.23.sroa.0.0.insert.ext
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %.sroa.539.0..sroa_idx, align 8
  %.sroa.640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 2304, ptr %.sroa.640.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.j, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.23.sroa.0.0.insert.insert, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.1041.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.1041.0..sroa_idx, i8 0, i64 6, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMsH_NtCsf8MNnN4IDbl_8iced_x8618instruction_createNtNtB7_11instruction11Instruction24try_with_declare_byte_11(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, i8 noundef %1, i8 noundef %2, i8 noundef %3, i8 noundef %4, i8 noundef %5, i8 noundef %6, i8 noundef %7, i8 noundef %8, i8 noundef %9, i8 noundef %10, i8 noundef %11) unnamed_addr #14 personality ptr @rust_eh_personality {
bb.a:
  %i.a = zext i8 %5 to i32
  %i.b = zext i8 %6 to i32
  %i.c = shl nuw nsw i32 %i.b, 8
  %i.d = or disjoint i32 %i.c, %i.a
  %i.e = zext i8 %7 to i32
  %i.f = shl nuw nsw i32 %i.e, 16
  %i.g = or disjoint i32 %i.d, %i.f
  %i.h = zext i8 %8 to i32
  %i.i = shl nuw i32 %i.h, 24
  %i.j = or disjoint i32 %i.g, %i.i
  %i.k = zext i8 %9 to i64
  %i.l = zext i8 %10 to i64
  %i.m = shl nuw nsw i64 %i.l, 8
  %i.n = or disjoint i64 %i.m, %i.k
  %i.o = zext i8 %11 to i64
  %i.p = shl nuw nsw i64 %i.o, 16
  %i.q = or disjoint i64 %i.n, %i.p
  %.sroa.25.sroa.8.0.insert.ext = zext i8 %4 to i32
  %.sroa.25.sroa.8.0.insert.shift = shl nuw i32 %.sroa.25.sroa.8.0.insert.ext, 24
  %.sroa.25.sroa.7.0.insert.ext = zext i8 %3 to i32
  %.sroa.25.sroa.7.0.insert.shift = shl nuw nsw i32 %.sroa.25.sroa.7.0.insert.ext, 16
  %.sroa.25.sroa.7.0.insert.insert = or disjoint i32 %.sroa.25.sroa.8.0.insert.shift, %.sroa.25.sroa.7.0.insert.shift
  %.sroa.25.sroa.6.0.insert.ext = zext i8 %2 to i32
  %.sroa.25.sroa.6.0.insert.shift = shl nuw nsw i32 %.sroa.25.sroa.6.0.insert.ext, 8
  %.sroa.25.sroa.6.0.insert.insert = or disjoint i32 %.sroa.25.sroa.7.0.insert.insert, %.sroa.25.sroa.6.0.insert.shift
  %.sroa.25.sroa.0.0.insert.ext = zext i8 %1 to i32
  %.sroa.25.sroa.0.0.insert.insert = or disjoint i32 %.sroa.25.sroa.6.0.insert.insert, %.sroa.25.sroa.0.0.insert.ext
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %.sroa.543.0..sroa_idx, align 8
  %.sroa.644.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 2560, ptr %.sroa.644.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.j, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.25.sroa.0.0.insert.insert, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.10.0..sroa_idx, i8 0, i64 6, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMsH_NtCsf8MNnN4IDbl_8iced_x8618instruction_createNtNtB7_11instruction11Instruction24try_with_declare_byte_12(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, i8 noundef %1, i8 noundef %2, i8 noundef %3, i8 noundef %4, i8 noundef %5, i8 noundef %6, i8 noundef %7, i8 noundef %8, i8 noundef %9, i8 noundef %10, i8 noundef %11, i8 noundef %12) unnamed_addr #14 personality ptr @rust_eh_personality {
bb.a:
  %i.a = zext i8 %5 to i32
  %i.b = zext i8 %6 to i32
  %i.c = shl nuw nsw i32 %i.b, 8
  %i.d = or disjoint i32 %i.c, %i.a
  %i.e = zext i8 %7 to i32
  %i.f = shl nuw nsw i32 %i.e, 16
  %i.g = or disjoint i32 %i.d, %i.f
  %i.h = zext i8 %8 to i32
  %i.i = shl nuw i32 %i.h, 24
  %i.j = or disjoint i32 %i.g, %i.i
  %i.k = zext i8 %9 to i64
  %i.l = zext i8 %10 to i64
  %i.m = shl nuw nsw i64 %i.l, 8
  %i.n = or disjoint i64 %i.m, %i.k
  %i.o = zext i8 %11 to i64
  %i.p = shl nuw nsw i64 %i.o, 16
  %i.q = or disjoint i64 %i.n, %i.p
  %i.r = zext i8 %12 to i64
  %i.s = shl nuw nsw i64 %i.r, 24
  %i.t = or disjoint i64 %i.q, %i.s
  %.sroa.27.sroa.8.0.insert.ext = zext i8 %4 to i32
  %.sroa.27.sroa.8.0.insert.shift = shl nuw i32 %.sroa.27.sroa.8.0.insert.ext, 24
  %.sroa.27.sroa.7.0.insert.ext = zext i8 %3 to i32
  %.sroa.27.sroa.7.0.insert.shift = shl nuw nsw i32 %.sroa.27.sroa.7.0.insert.ext, 16
  %.sroa.27.sroa.7.0.insert.insert = or disjoint i32 %.sroa.27.sroa.8.0.insert.shift, %.sroa.27.sroa.7.0.insert.shift
  %.sroa.27.sroa.6.0.insert.ext = zext i8 %2 to i32
  %.sroa.27.sroa.6.0.insert.shift = shl nuw nsw i32 %.sroa.27.sroa.6.0.insert.ext, 8
  %.sroa.27.sroa.6.0.insert.insert = or disjoint i32 %.sroa.27.sroa.7.0.insert.insert, %.sroa.27.sroa.6.0.insert.shift
  %.sroa.27.sroa.0.0.insert.ext = zext i8 %1 to i32
  %.sroa.27.sroa.0.0.insert.insert = or disjoint i32 %.sroa.27.sroa.6.0.insert.insert, %.sroa.27.sroa.0.0.insert.ext
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.t, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %.sroa.547.0..sroa_idx, align 8
  %.sroa.648.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 2816, ptr %.sroa.648.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.j, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.27.sroa.0.0.insert.insert, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.10.0..sroa_idx, i8 0, i64 6, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMsH_NtCsf8MNnN4IDbl_8iced_x8618instruction_createNtNtB7_11instruction11Instruction24try_with_declare_byte_13(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, i8 noundef %1, i8 noundef %2, i8 noundef %3, i8 noundef %4, i8 noundef %5, i8 noundef %6, i8 noundef %7, i8 noundef %8, i8 noundef %9, i8 noundef %10, i8 noundef %11, i8 noundef %12, i8 noundef %13) unnamed_addr #14 personality ptr @rust_eh_personality {
bb.a:
  %i.a = zext i8 %5 to i32
  %i.b = zext i8 %6 to i32
  %i.c = shl nuw nsw i32 %i.b, 8
  %i.d = or disjoint i32 %i.c, %i.a
  %i.e = zext i8 %7 to i32
  %i.f = shl nuw nsw i32 %i.e, 16
  %i.g = or disjoint i32 %i.d, %i.f
  %i.h = zext i8 %8 to i32
  %i.i = shl nuw i32 %i.h, 24
  %i.j = or disjoint i32 %i.g, %i.i
  %i.k = zext i8 %9 to i64
  %i.l = zext i8 %10 to i64
  %i.m = shl nuw nsw i64 %i.l, 8
  %i.n = or disjoint i64 %i.m, %i.k
  %i.o = zext i8 %11 to i64
  %i.p = shl nuw nsw i64 %i.o, 16
  %i.q = or disjoint i64 %i.n, %i.p
  %i.r = zext i8 %12 to i64
  %i.s = shl nuw nsw i64 %i.r, 24
  %i.t = or disjoint i64 %i.q, %i.s
  %i.u = zext i8 %13 to i64
  %i.v = shl nuw nsw i64 %i.u, 32
  %i.w = or disjoint i64 %i.t, %i.v
  %.sroa.29.sroa.8.0.insert.ext = zext i8 %4 to i32
  %.sroa.29.sroa.8.0.insert.shift = shl nuw i32 %.sroa.29.sroa.8.0.insert.ext, 24
  %.sroa.29.sroa.7.0.insert.ext = zext i8 %3 to i32
  %.sroa.29.sroa.7.0.insert.shift = shl nuw nsw i32 %.sroa.29.sroa.7.0.insert.ext, 16
  %.sroa.29.sroa.7.0.insert.insert = or disjoint i32 %.sroa.29.sroa.8.0.insert.shift, %.sroa.29.sroa.7.0.insert.shift
  %.sroa.29.sroa.6.0.insert.ext = zext i8 %2 to i32
  %.sroa.29.sroa.6.0.insert.shift = shl nuw nsw i32 %.sroa.29.sroa.6.0.insert.ext, 8
  %.sroa.29.sroa.6.0.insert.insert = or disjoint i32 %.sroa.29.sroa.7.0.insert.insert, %.sroa.29.sroa.6.0.insert.shift
  %.sroa.29.sroa.0.0.insert.ext = zext i8 %1 to i32
  %.sroa.29.sroa.0.0.insert.insert = or disjoint i32 %.sroa.29.sroa.6.0.insert.insert, %.sroa.29.sroa.0.0.insert.ext
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.w, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %.sroa.551.0..sroa_idx, align 8
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/quinn_proto-aa4faf9a7542e2b9.quinn_proto.ca9d529fb421aa30-cgu.10?download=true
inline.NumInlined: 675
inline.NumDeleted: 213
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtCshovLROGBtMy_11quinn_proto15bloom_token_log5StateEEEB1S_:bb.a
  %i.h = atomicrmw xchg ptr %.val, i32 0 release, align 4, !dbg !8084
  %i.i = icmp eq i32 %i.h, 2, !dbg !8085
  br i1 %i.i, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCshovLROGBtMy_11quinn_proto15bloom_token_log5StateEEB1z_.exit, !dbg !8085, !prof !2513

bb.e:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val), !dbg !8086
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCshovLROGBtMy_11quinn_proto15bloom_token_log5StateEEB1z_.exit, !dbg !8086

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCshovLROGBtMy_11quinn_proto15bloom_token_log5StateEEB1z_.exit: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.e
  ret void, !dbg !8075
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCshovLROGBtMy_11quinn_proto15bloom_token_log5StateEEB1z_(ptr %.0.val, i8 %.8.val) unnamed_addr #1 !dbg !104 {
bb.a:
    #dbg_value(ptr poison, !2425, !DIExpression(), !8110)
    #dbg_value(ptr poison, !2430, !DIExpression(), !8088)
    #dbg_value(i32 0, !2434, !DIExpression(), !8091)
    #dbg_value(i8 1, !2440, !DIExpression(), !8091)
    #dbg_value(i32 0, !2449, !DIExpression(), !8093)
    #dbg_value(i8 1, !2454, !DIExpression(), !8093)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 4, !dbg !8111
    #dbg_value(ptr %i.a, !2458, !DIExpression(), !8095)
    #dbg_value(ptr poison, !2464, !DIExpression(), !8095)
    #dbg_value(i8 0, !2466, !DIExpression(), !8100)
    #dbg_value(i8 1, !2491, !DIExpression(), !8102)
    #dbg_value(i8 0, !2497, !DIExpression(), !8102)
  %i.b = trunc nuw i8 %.8.val to i1, !dbg !8112
  br i1 %i.b, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i, label %bb.b, !dbg !8112

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT, !2481, !DIExpression(), !8100)
    #dbg_value(ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT, !2500, !DIExpression(), !8104)
    #dbg_value(i8 0, !2503, !DIExpression(), !8104)
  %i.c = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !8113
  %i.d = and i64 %i.c, 9223372036854775807, !dbg !8114
  %i.e = icmp eq i64 %i.d, 0, !dbg !8114
  br i1 %i.e, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i, label %bb.c, !dbg !8114, !prof !2505

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #25, !dbg !8115
  br i1 %i.f, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i, label %bb.d, !dbg !8116

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr %i.a, !2496, !DIExpression(), !8105)
    #dbg_value(ptr %i.a, !2507, !DIExpression(), !8107)
    #dbg_value(i8 1, !2510, !DIExpression(), !8107)
    #dbg_value(i8 0, !2511, !DIExpression(), !8107)
  store atomic i8 1, ptr %i.a monotonic, align 1, !dbg !8117
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i, !dbg !8118

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
    #dbg_value(ptr %.0.val, !2447, !DIExpression(), !8108)
    #dbg_value(ptr %.0.val, !2439, !DIExpression(), !8109)
    #dbg_value(ptr %.0.val, !2453, !DIExpression(), !8093)
  %i.g = atomicrmw xchg ptr %.0.val, i32 0 release, align 4, !dbg !8119
  %i.h = icmp eq i32 %i.g, 2, !dbg !8120
  br i1 %i.h, label %bb.e, label %_RNvXsc_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_10MutexGuardNtNtCshovLROGBtMy_11quinn_proto15bloom_token_log5StateENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB16_.exit, !dbg !8120, !prof !2513

bb.e:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.0.val), !dbg !8121
  br label %_RNvXsc_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_10MutexGuardNtNtCshovLROGBtMy_11quinn_proto15bloom_token_log5StateENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB16_.exit, !dbg !8121

_RNvXsc_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_10MutexGuardNtNtCshovLROGBtMy_11quinn_proto15bloom_token_log5StateENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB16_.exit: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i, %bb.e
  ret void, !dbg !8122
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtBO_5alloc6GlobalEEB2f_(ptr nofree readonly captures(none) %.0.val) unnamed_addr #2 !dbg !143 {
bb.a:
    #dbg_value(ptr poison, !2633, !DIExpression(), !8148)
    #dbg_value(ptr poison, !2638, !DIExpression(), !8124)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 32, !dbg !8155 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !8155, !noundef !2081 ; 3 uses
  %.not.i = icmp eq i64 %i.b, 0, !dbg !8155
  br i1 %.not.i, label %_RNvXNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB8_5DrainppENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtBc_5alloc6GlobalEBV_4dropB1Z_.exit, label %bb.b, !dbg !8155

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %.0.val, !8150, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !8127)
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 16, !dbg !8156
  %i.d = load ptr, ptr %i.c, align 8, !dbg !8156, !nonnull !2081, !noundef !2081 ; 2 uses
    #dbg_value(ptr %i.d, !2641, !DIExpression(), !8128)
    #dbg_value(ptr %i.d, !2652, !DIExpression(), !8130)
    #dbg_value(ptr %i.d, !2658, !DIExpression(), !8132)
    #dbg_value(ptr %i.d, !2663, !DIExpression(), !8134)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !8157 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !8157, !noundef !2081 ; 4 uses
    #dbg_value(i64 %i.f, !2642, !DIExpression(), !8135)
    #dbg_value(i64 %i.f, !2670, !DIExpression(), !8137)
  %i.g = icmp ult i64 %i.f, 164703072086692426, !dbg !8158
  tail call void @llvm.assume(i1 %i.g), !dbg !8159
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 24, !dbg !8160
  %i.i = load i64, ptr %i.h, align 8, !dbg !8160, !noundef !2081 ; 2 uses
    #dbg_value(i64 %i.i, !2643, !DIExpression(), !8138)
    #dbg_value(i64 %i.i, !2696, !DIExpression(), !8140)
  %.not13.i = icmp eq i64 %i.i, %i.f, !dbg !8161
  br i1 %.not13.i, label %bb.c, label %bb.d, !dbg !8161

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.j = phi i64 [ %.pre.i, %bb.d ], [ %i.b, %bb.b ], !dbg !8162
  %i.k = add i64 %i.j, %i.f, !dbg !8163
    #dbg_value(i64 %i.k, !2667, !DIExpression(), !8134)
  store i64 %i.k, ptr %i.e, align 8, !dbg !8164
  br label %_RNvXNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB8_5DrainppENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtBc_5alloc6GlobalEBV_4dropB1Z_.exit, !dbg !8165

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !8166
  %i.m = load ptr, ptr %i.l, align 8, !dbg !8166, !nonnull !2081, !noundef !2081 ; 2 uses
    #dbg_value(ptr %i.m, !2701, !DIExpression(), !8140)
  %i.n = getelementptr inbounds nuw [56 x i8], ptr %i.m, i64 %i.i, !dbg !8167
    #dbg_value(ptr %i.n, !2644, !DIExpression(), !8144)
    #dbg_value(ptr %i.n, !2716, !DIExpression(), !8146)
    #dbg_value(ptr %i.m, !2693, !DIExpression(), !8137)
  %i.o = getelementptr inbounds nuw [56 x i8], ptr %i.m, i64 %i.f, !dbg !8168
    #dbg_value(ptr %i.o, !2646, !DIExpression(), !8147)
    #dbg_value(ptr %i.o, !2719, !DIExpression(), !8146)
    #dbg_value(i64 %i.b, !2720, !DIExpression(), !8146)
  %i.p = mul nuw nsw i64 %i.b, 56, !dbg !8169
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.n, i64 %i.p, i1 false), !dbg !8169
  %.pre.i = load i64, ptr %i.a, align 8, !dbg !8162
  br label %bb.c, !dbg !8170

_RNvXNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB8_5DrainppENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtBc_5alloc6GlobalEBV_4dropB1Z_.exit: ; preds = %bb.a, %bb.c
  ret void, !dbg !8171
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal fastcc void @_RINvNtNtCshJYlBnZeDKb_8chacha208backends4avx29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(256) %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !8181 {
.preheader.preheader:
    #dbg_declare(ptr poison, !8604, !DIExpression(DW_OP_LLVM_fragment, 0, 256), !8205)
    #dbg_value(ptr poison, !8672, !DIExpression(), !8221)
    #dbg_value(ptr poison, !8681, !DIExpression(), !8222)
    #dbg_value(ptr poison, !8704, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8223)
    #dbg_value(ptr poison, !8711, !DIExpression(), !8224)
    #dbg_value(ptr poison, !8650, !DIExpression(), !8225)
    #dbg_value(ptr poison, !8715, !DIExpression(), !8236)
    #dbg_value(ptr poison, !8648, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8237)
    #dbg_value(ptr poison, !8643, !DIExpression(), !8238)
    #dbg_value(ptr poison, !2791, !DIExpression(), !8242)
    #dbg_value(ptr poison, !2805, !DIExpression(), !8243)
    #dbg_value(ptr poison, !2809, !DIExpression(), !8244)
    #dbg_value(ptr %0, !8584, !DIExpression(), !8730)
    #dbg_value(ptr %1, !8585, !DIExpression(), !8730)
    #dbg_value(ptr %0, !8586, !DIExpression(), !8731)
    #dbg_value(ptr %0, !2813, !DIExpression(), !8246)
    #dbg_value(i64 0, !2816, !DIExpression(), !8246)
    #dbg_value(ptr %0, !8732, !DIExpression(), !8250)
    #dbg_value(<2 x i64> zeroinitializer, !8733, !DIExpression(), !8251)
    #dbg_value(ptr %0, !2824, !DIExpression(), !8253)
    #dbg_value(ptr undef, !2827, !DIExpression(), !8253)
    #dbg_value(i64 16, !2828, !DIExpression(), !8253)
  %.sroa.0.0.copyload.i135 = load <4 x i32>, ptr %0, align 4, !dbg !8969, !noalias !8735
    #dbg_value(<2 x i64> poison, !8733, !DIExpression(), !8251)
    #dbg_value(<2 x i64> poison, !8737, !DIExpression(), !8751)
    #dbg_value(ptr %0, !2813, !DIExpression(), !8263)
    #dbg_value(i64 1, !2816, !DIExpression(), !8263)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !8970
    #dbg_value(ptr %i.a, !8732, !DIExpression(), !8265)
    #dbg_value(<2 x i64> zeroinitializer, !8733, !DIExpression(), !8266)
    #dbg_value(ptr %i.a, !2824, !DIExpression(), !8268)
    #dbg_value(ptr undef, !2827, !DIExpression(), !8268)
    #dbg_value(i64 16, !2828, !DIExpression(), !8268)
  %.sroa.0.0.copyload.i32136 = load <4 x i32>, ptr %i.a, align 4, !dbg !8971, !noalias !8752
    #dbg_value(<2 x i64> poison, !8733, !DIExpression(), !8266)
    #dbg_value(<2 x i64> poison, !8737, !DIExpression(), !8754)
    #dbg_value(ptr %0, !2813, !DIExpression(), !8272)
    #dbg_value(i64 2, !2816, !DIExpression(), !8272)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !8972
    #dbg_value(ptr %i.b, !8732, !DIExpression(), !8274)
    #dbg_value(<2 x i64> zeroinitializer, !8733, !DIExpression(), !8275)
    #dbg_value(ptr %i.b, !2824, !DIExpression(), !8277)
    #dbg_value(ptr undef, !2827, !DIExpression(), !8277)
    #dbg_value(i64 16, !2828, !DIExpression(), !8277)
  %.sroa.0.0.copyload.i33137 = load <4 x i32>, ptr %i.b, align 4, !dbg !8973, !noalias !8755
    #dbg_value(<2 x i64> poison, !8733, !DIExpression(), !8275)
    #dbg_value(<2 x i64> poison, !8737, !DIExpression(), !8757)
    #dbg_value(<4 x i64> poison, !8588, !DIExpression(DW_OP_LLVM_fragment, 0, 256), !8758)
    #dbg_value(<4 x i64> poison, !8588, !DIExpression(DW_OP_LLVM_fragment, 256, 256), !8758)
    #dbg_value(<4 x i64> poison, !8588, !DIExpression(DW_OP_LLVM_fragment, 512, 256), !8758)
    #dbg_value(ptr %0, !2813, !DIExpression(), !8281)
    #dbg_value(i64 3, !2816, !DIExpression(), !8281)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !8974 ; 2 uses
    #dbg_value(ptr %i.c, !8732, !DIExpression(), !8283)
    #dbg_value(<2 x i64> zeroinitializer, !8733, !DIExpression(), !8284)
    #dbg_value(ptr %i.c, !2824, !DIExpression(), !8286)
    #dbg_value(ptr undef, !2827, !DIExpression(), !8286)
    #dbg_value(i64 16, !2828, !DIExpression(), !8286)
  %.sroa.0.0.copyload.i34 = load <2 x i64>, ptr %i.c, align 4, !dbg !8975, !noalias !8761
    #dbg_value(<2 x i64> %.sroa.0.0.copyload.i34, !8733, !DIExpression(), !8284)
    #dbg_value(<2 x i64> %.sroa.0.0.copyload.i34, !8737, !DIExpression(), !8763)
  %i.d = shufflevector <2 x i64> %.sroa.0.0.copyload.i34, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>, !dbg !8976 ; 3 uses
    #dbg_value(<4 x i64> %i.d, !8589, !DIExpression(), !8765)
    #dbg_value(<4 x i64> %i.d, !8766, !DIExpression(), !8772)
    #dbg_value(<4 x i64> %i.d, !8766, !DIExpression(), !8774)
    #dbg_value(<4 x i64> <i64 0, i64 0, i64 1, i64 0>, !8769, !DIExpression(), !8772)
  %i.e = add <4 x i64> %i.d, <i64 0, i64 0, i64 1, i64 0>, !dbg !8977 ; 2 uses
    #dbg_value(<4 x i64> %i.e, !8589, !DIExpression(), !8765)
    #dbg_value(<4 x i64> %i.e, !8766, !DIExpression(), !8774)
    #dbg_value(<4 x i64> %i.e, !8591, !DIExpression(DW_OP_LLVM_fragment, 256, 256), !8775)
    #dbg_value(<4 x i64> %i.e, !8766, !DIExpression(), !8772)
    #dbg_value(i64 0, !2806, !DIExpression(), !8290)
    #dbg_value(i64 0, !2832, !DIExpression(), !8292)
    #dbg_value(i64 0, !2839, !DIExpression(), !8294)
    #dbg_value(i64 1, !2836, !DIExpression(), !8292)
    #dbg_value(i64 1, !2843, !DIExpression(), !8294)
    #dbg_value(i64 1, !8592, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8776)
    #dbg_value(i64 0, !8593, !DIExpression(), !8777)
    #dbg_value(<4 x i64> %i.e, !8591, !DIExpression(DW_OP_LLVM_fragment, 0, 256), !8775)
    #dbg_value(<4 x i64> <i64 2, i64 0, i64 2, i64 0>, !8769, !DIExpression(), !8774)
  %i.f = add <4 x i64> %i.d, <i64 2, i64 0, i64 3, i64 0>, !dbg !8978 ; 2 uses
    #dbg_value(ptr undef, !2809, !DIExpression(), !8244)
    #dbg_value(ptr undef, !2805, !DIExpression(), !8243)
    #dbg_value(ptr undef, !2791, !DIExpression(), !8242)
    #dbg_value(ptr undef, !2796, !DIExpression(), !8242)
    #dbg_value(i64 1, !2806, !DIExpression(), !8290)
    #dbg_value(i64 1, !2832, !DIExpression(), !8292)
    #dbg_value(i64 1, !2839, !DIExpression(), !8294)
    #dbg_value(i64 1, !8593, !DIExpression(), !8777)
    #dbg_value(<4 x i64> %i.f, !8591, !DIExpression(DW_OP_LLVM_fragment, 256, 256), !8775)
    #dbg_value(!DIArgList(<4 x i64> %i.f, <4 x i64> <i64 2, i64 0, i64 2, i64 0>), !8766, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !8774)
    #dbg_value(!DIArgList(<4 x i64> %i.f, <4 x i64> <i64 2, i64 0, i64 2, i64 0>), !8766, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !8772)
    #dbg_value(!DIArgList(<4 x i64> %i.f, <4 x i64> <i64 2, i64 0, i64 2, i64 0>), !8589, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !8765)
    #dbg_value(i64 poison, !8592, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8776)
    #dbg_value(<4 x i64> poison, !8588, !DIExpression(DW_OP_LLVM_fragment, 512, 256), !8758)
    #dbg_value(<4 x i64> poison, !8588, !DIExpression(DW_OP_LLVM_fragment, 256, 256), !8758)
    #dbg_value(<4 x i64> poison, !8588, !DIExpression(DW_OP_LLVM_fragment, 0, 256), !8758)
    #dbg_value(<4 x i64> poison, !8594, !DIExpression(DW_OP_LLVM_fragment, 512, 256), !8778)
    #dbg_value(<4 x i64> poison, !8594, !DIExpression(DW_OP_LLVM_fragment, 768, 256), !8778)
    #dbg_value(<4 x i64> poison, !8594, !DIExpression(DW_OP_LLVM_fragment, 1024, 256), !8778)
    #dbg_value(<4 x i64> %i.e, !8594, !DIExpression(DW_OP_LLVM_fragment, 0, 256), !8778)
    #dbg_value(<4 x i64> %i.f, !8594, !DIExpression(DW_OP_LLVM_fragment, 256, 256), !8778)
    #dbg_value(ptr undef, !8643, !DIExpression(), !8238)
    #dbg_value(ptr %1, !8644, !DIExpression(), !8238)
    #dbg_value(i32 4, !8647, !DIExpression(), !8295)
    #dbg_value(i64 8, !8781, !DIExpression(), !8298)
    #dbg_value(ptr poison, !2791, !DIExpression(), !8302)
    #dbg_value(ptr poison, !2805, !DIExpression(), !8303)
    #dbg_value(ptr poison, !2809, !DIExpression(), !8304)
    #dbg_value(ptr poison, !2791, !DIExpression(), !8308)
    #dbg_value(ptr poison, !2805, !DIExpression(), !8309)
    #dbg_value(ptr poison, !2809, !DIExpression(), !8310)
    #dbg_value(ptr poison, !2791, !DIExpression(), !8314)
    #dbg_value(ptr poison, !2805, !DIExpression(), !8315)
    #dbg_value(ptr poison, !2809, !DIExpression(), !8316)
    #dbg_value(ptr poison, !2791, !DIExpression(), !8320)
    #dbg_value(ptr poison, !2805, !DIExpression(), !8321)
    #dbg_value(ptr poison, !2809, !DIExpression(), !8322)
    #dbg_value(ptr poison, !8787, !DIExpression(), !8332)
    #dbg_value(ptr poison, !8791, !DIExpression(), !8333)
    #dbg_value(ptr poison, !8809, !DIExpression(), !8346)
    #dbg_value(ptr poison, !8814, !DIExpression(), !8347)
    #dbg_value(ptr poison, !8810, !DIExpression(), !8348)
    #dbg_value(ptr poison, !8829, !DIExpression(), !8353)
    #dbg_value(ptr poison, !8830, !DIExpression(), !8354)
    #dbg_value(ptr poison, !8809, !DIExpression(), !8356)
    #dbg_value(ptr poison, !8814, !DIExpression(), !8357)
    #dbg_value(ptr poison, !8810, !DIExpression(), !8358)
    #dbg_value(ptr poison, !8807, !DIExpression(), !8359)
    #dbg_value(ptr undef, !8719, !DIExpression(), !8236)
    #dbg_value(ptr undef, !8715, !DIExpression(), !8236)
    #dbg_value(<4 x i64> zeroinitializer, !8720, !DIExpression(DW_OP_LLVM_fragment, 0, 256), !8360)
    #dbg_value(<4 x i64> zeroinitializer, !8720, !DIExpression(DW_OP_LLVM_fragment, 256, 256), !8360)
    #dbg_value(<4 x i64> zeroinitializer, !8720, !DIExpression(DW_OP_LLVM_fragment, 512, 256), !8360)
    #dbg_value(<4 x i64> zeroinitializer, !8720, !DIExpression(DW_OP_LLVM_fragment, 768, 256), !8360)
    #dbg_value(<4 x i64> zeroinitializer, !8720, !DIExpression(DW_OP_LLVM_fragment, 1024, 256), !8360)
    #dbg_value(<4 x i64> zeroinitializer, !8720, !DIExpression(DW_OP_LLVM_fragment, 1280, 256), !8360)
    #dbg_value(<4 x i64> zeroinitializer, !8720, !DIExpression(DW_OP_LLVM_fragment, 1536, 256), !8360)
    #dbg_value(<4 x i64> zeroinitializer, !8720, !DIExpression(DW_OP_LLVM_fragment, 1792, 256), !8360)
  %.cast = shufflevector <4 x i32> %.sroa.0.0.copyload.i33137, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.g = shufflevector <4 x i32> %.sroa.0.0.copyload.i32136, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.h = shufflevector <4 x i32> %.sroa.0.0.copyload.i135, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
    #dbg_value(ptr undef, !2809, !DIExpression(), !8322)
    #dbg_value(ptr undef, !2805, !DIExpression(), !8321)
    #dbg_value(ptr undef, !2791, !DIExpression(), !8320)
    #dbg_value(ptr undef, !2796, !DIExpression(), !8320)
    #dbg_value(i64 1, !2836, !DIExpression(), !8362)
    #dbg_value(i64 1, !2843, !DIExpression(), !8364)
    #dbg_value(<4 x i64> poison, !8720, !DIExpression(DW_OP_LLVM_fragment, 0, 256), !8360)
    #dbg_value(<4 x i64> poison, !8720, !DIExpression(DW_OP_LLVM_fragment, 256, 256), !8360)
    #dbg_value(<4 x i64> poison, !8720, !DIExpression(DW_OP_LLVM_fragment, 512, 256), !8360)
    #dbg_value(<4 x i64> %i.e, !8720, !DIExpression(DW_OP_LLVM_fragment, 768, 256), !8360)
    #dbg_value(i64 1, !2806, !DIExpression(), !8365)
    #dbg_value(i64 1, !2832, !DIExpression(), !8362)
    #dbg_value(i64 1, !2839, !DIExpression(), !8364)
    #dbg_value(<4 x i64> poison, !8720, !DIExpression(DW_OP_LLVM_fragment, 1024, 256), !8360)
    #dbg_value(<4 x i64> poison, !8720, !DIExpression(DW_OP_LLVM_fragment, 1280, 256), !8360)
    #dbg_value(<4 x i64> poison, !8720, !DIExpression(DW_OP_LLVM_fragment, 1536, 256), !8360)
    #dbg_value(<4 x i64> %i.f, !8720, !DIExpression(DW_OP_LLVM_fragment, 1792, 256), !8360)
    #dbg_value(i64 0, !8723, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8366)
    #dbg_value(ptr undef, !2809, !DIExpression(), !8316)
    #dbg_value(ptr undef, !2805, !DIExpression(), !8315)
    #dbg_value(ptr undef, !2791, !DIExpression(), !8314)
    #dbg_value(ptr undef, !2796, !DIExpression(), !8314)
  br label %bb.a, !dbg !8979

bb.a:                                             ; preds = %bb.a, %.preheader.preheader
  %.sroa.46.0.i = phi <4 x i64> [ %i.f, %.preheader.preheader ], [ %i.cp, %bb.a ], !dbg !8980
  %.sroa.19.0.i = phi <4 x i64> [ %i.e, %.preheader.preheader ], [ %i.cl, %bb.a ], !dbg !8980
  %.sroa.033.072.i = phi i64 [ 0, %.preheader.preheader ], [ %i.o, %bb.a ]
  %i.i = phi <8 x i32> [ %i.h, %.preheader.preheader ], [ %i.cm, %bb.a ]
  %i.j = phi <8 x i32> [ %i.g, %.preheader.preheader ], [ %i.ce, %bb.a ] ; 2 uses
  %i.k = phi <8 x i32> [ %i.h, %.preheader.preheader ], [ %i.cq, %bb.a ]
  %i.l = phi <8 x i32> [ %i.g, %.preheader.preheader ], [ %i.ci, %bb.a ] ; 2 uses
  %i.m = phi <8 x i32> [ %.cast, %.preheader.preheader ], [ %i.cj, %bb.a ]
  %i.n = phi <8 x i32> [ %.cast, %.preheader.preheader ], [ %i.cn, %bb.a ]
    #dbg_value(<4 x i64> %.sroa.19.0.i, !8720, !DIExpression(DW_OP_LLVM_fragment, 768, 256), !8360)
    #dbg_value(<4 x i64> %.sroa.46.0.i, !8720, !DIExpression(DW_OP_LLVM_fragment, 1792, 256), !8360)
    #dbg_value(i64 %.sroa.033.072.i, !8723, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8366)
    #dbg_value(i64 %.sroa.033.072.i, !2806, !DIExpression(), !8367)
    #dbg_value(i64 %.sroa.033.072.i, !2832, !DIExpression(), !8369)
    #dbg_value(i64 %.sroa.033.072.i, !2839, !DIExpression(), !8371)
    #dbg_value(i64 1, !2836, !DIExpression(), !8369)
    #dbg_value(i64 1, !2843, !DIExpression(), !8371)
  %i.o = add nuw nsw i64 %.sroa.033.072.i, 1, !dbg !8981 ; 2 uses
    #dbg_value(i64 %i.o, !8723, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8366)
    #dbg_value(ptr undef, !8807, !DIExpression(), !8359)
    #dbg_value(ptr undef, !8810, !DIExpression(), !8358)
    #dbg_value(<4 x i64> <i64 361421592464458498, i64 940142975169071882, i64 361421592464458498, i64 940142975169071882>, !8811, !DIExpression(), !8372)
    #dbg_value(<4 x i64> <i64 361421592464458498, i64 940142975169071882, i64 361421592464458498, i64 940142975169071882>, !8838, !DIExpression(), !8375)
    #dbg_value(<4 x i64> <i64 433757367256023043, i64 1012478749960636427, i64 433757367256023043, i64 1012478749960636427>, !8812, !DIExpression(), !8376)
    #dbg_value(<4 x i64> <i64 433757367256023043, i64 1012478749960636427, i64 433757367256023043, i64 1012478749960636427>, !8838, !DIExpression(), !8378)
    #dbg_value(ptr undef, !8813, !DIExpression(DW_OP_plus_uconst, 256, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !8379)
    #dbg_value(!DIArgList(ptr undef, i64 128), !8813, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8379)
    #dbg_value(ptr undef, !8814, !DIExpression(), !8357)
    #dbg_value(ptr undef, !8815, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !8380)
    #dbg_value(ptr undef, !8816, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !8381)
    #dbg_value(<4 x i64> poison, !8841, !DIExpression(), !8384)
    #dbg_value(<4 x i64> poison, !8842, !DIExpression(), !8384)
  %i.p = add <8 x i32> %i.j, %i.i, !dbg !8982     ; 2 uses
    #dbg_value(<4 x i64> %.sroa.19.0.i, !8844, !DIExpression(), !8387)
    #dbg_value(<8 x i32> %i.p, !8845, !DIExpression(), !8387)
  %i.q = bitcast <8 x i32> %i.p to <4 x i64>, !dbg !8983
  %i.r = xor <4 x i64> %.sroa.19.0.i, %i.q, !dbg !8984
    #dbg_value(<4 x i64> %i.r, !8839, !DIExpression(), !8375)
  %i.s = bitcast <4 x i64> %i.r to <32 x i8>, !dbg !8985
  %i.t = shufflevector <32 x i8> %i.s, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29>, !dbg !8986 ; 2 uses
    #dbg_value(!DIArgList(ptr undef, i64 256), !8813, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8379)
  %i.u = add <8 x i32> %i.l, %i.k, !dbg !8982     ; 2 uses
    #dbg_value(<4 x i64> %.sroa.46.0.i, !8844, !DIExpression(), !8387)
    #dbg_value(<8 x i32> %i.u, !8845, !DIExpression(), !8387)
  %i.v = bitcast <8 x i32> %i.u to <4 x i64>, !dbg !8983
  %i.w = xor <4 x i64> %.sroa.46.0.i, %i.v, !dbg !8984
    #dbg_value(<4 x i64> %i.w, !8839, !DIExpression(), !8375)
  %i.x = bitcast <4 x i64> %i.w to <32 x i8>, !dbg !8985
  %i.y = shufflevector <32 x i8> %i.x, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29>, !dbg !8986 ; 2 uses
    #dbg_value(!DIArgList(ptr undef, i64 128), !8817, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8388)
    #dbg_value(ptr undef, !8818, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !8389)
    #dbg_value(ptr undef, !8819, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !8390)
    #dbg_value(ptr undef, !8820, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !8391)
    #dbg_value(<4 x i64> poison, !8841, !DIExpression(), !8393)
  %i.z = bitcast <32 x i8> %i.t to <8 x i32>, !dbg !8987
    #dbg_value(<4 x i64> poison, !8842, !DIExpression(), !8393)
  %i.aa = add <8 x i32> %i.m, %i.z, !dbg !8988    ; 2 uses
    #dbg_value(<4 x i64> poison, !8844, !DIExpression(), !8395)
    #dbg_value(<8 x i32> %i.aa, !8845, !DIExpression(), !8395)
    #dbg_value(!DIArgList(<4 x i64> poison, <8 x i32> poison), !8847, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !8398)
  %i.ab = xor <8 x i32> %i.aa, %i.j, !dbg !8989   ; 2 uses
    #dbg_value(!DIArgList(<8 x i32> %i.ab, <8 x i32> splat (i32 12)), !8844, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_stack_value), !8400)
    #dbg_value(!DIArgList(<8 x i32> %i.ab, <8 x i32> splat (i32 20)), !8845, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shr, DW_OP_stack_value), !8400)
  %i.ac = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ab, <8 x i32> %i.ab, <8 x i32> splat (i32 12)), !dbg !8990 ; 2 uses
    #dbg_value(!DIArgList(ptr undef, i64 256), !8817, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8388)
  %i.ad = bitcast <32 x i8> %i.y to <8 x i32>, !dbg !8987
  %i.ae = add <8 x i32> %i.n, %i.ad, !dbg !8988   ; 2 uses
    #dbg_value(<8 x i32> %i.ae, !8845, !DIExpression(), !8395)
  %i.af = xor <8 x i32> %i.ae, %i.l, !dbg !8989   ; 2 uses
    #dbg_value(!DIArgList(<8 x i32> %i.af, <8 x i32> splat (i32 12)), !8844, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_stack_value), !8400)
    #dbg_value(!DIArgList(<8 x i32> %i.af, <8 x i32> splat (i32 20)), !8845, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shr, DW_OP_stack_value), !8400)
  %i.ag = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.af, <8 x i32> %i.af, <8 x i32> splat (i32 12)), !dbg !8990 ; 2 uses
    #dbg_value(!DIArgList(ptr undef, i64 128), !8821, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8401)
    #dbg_value(ptr undef, !8809, !DIExpression(), !8356)
    #dbg_value(ptr undef, !8822, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !8402)
    #dbg_value(ptr undef, !8823, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !8403)
    #dbg_value(<4 x i64> poison, !8841, !DIExpression(), !8405)
    #dbg_value(<4 x i64> poison, !8842, !DIExpression(), !8405)
  %i.ah = add <8 x i32> %i.ac, %i.p, !dbg !8991   ; 2 uses
    #dbg_value(<32 x i8> %i.t, !8844, !DIExpression(), !8407)
    #dbg_value(<8 x i32> %i.ah, !8845, !DIExpression(), !8407)
    #dbg_value(!DIArgList(<32 x i8> %i.t, <8 x i32> %i.ah), !8839, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !8378)
  %i.ai = bitcast <8 x i32> %i.ah to <32 x i8>, !dbg !8992
  %i.aj = xor <32 x i8> %i.t, %i.ai, !dbg !8992
  %i.ak = shufflevector <32 x i8> %i.aj, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>, !dbg !8993
    #dbg_value(<32 x i8> %i.ak, !8720, !DIExpression(DW_OP_LLVM_fragment, 768, 256), !8360)
    #dbg_value(!DIArgList(ptr undef, i64 256), !8821, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8401)
  %i.al = add <8 x i32> %i.ag, %i.u, !dbg !8991   ; 2 uses
    #dbg_value(<32 x i8> %i.y, !8844, !DIExpression(), !8407)
    #dbg_value(<8 x i32> %i.al, !8845, !DIExpression(), !8407)
    #dbg_value(!DIArgList(<32 x i8> %i.y, <8 x i32> %i.al), !8839, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !8378)
  %i.am = bitcast <8 x i32> %i.al to <32 x i8>, !dbg !8992
  %i.an = xor <32 x i8> %i.y, %i.am, !dbg !8992
  %i.ao = shufflevector <32 x i8> %i.an, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>, !dbg !8993
    #dbg_value(<32 x i8> %i.ao, !8720, !DIExpression(DW_OP_LLVM_fragment, 1792, 256), !8360)
    #dbg_value(!DIArgList(ptr undef, i64 128), !8824, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8408)
    #dbg_value(ptr undef, !8825, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !8409)
    #dbg_value(ptr undef, !8826, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !8410)
    #dbg_value(ptr undef, !8827, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !8411)
    #dbg_value(<4 x i64> poison, !8841, !DIExpression(), !8413)
  %i.ap = bitcast <32 x i8> %i.ak to <8 x i32>, !dbg !8994 ; 2 uses
    #dbg_value(<4 x i64> poison, !8842, !DIExpression(), !8413)
  %i.aq = add <8 x i32> %i.aa, %i.ap, !dbg !8995  ; 2 uses
    #dbg_value(<4 x i64> poison, !8844, !DIExpression(), !8415)
    #dbg_value(<8 x i32> %i.aq, !8845, !DIExpression(), !8415)
    #dbg_value(!DIArgList(<4 x i64> poison, <8 x i32> poison), !8851, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !8418)
  %i.ar = xor <8 x i32> %i.aq, %i.ac, !dbg !8996  ; 2 uses
    #dbg_value(!DIArgList(<8 x i32> %i.ar, <8 x i32> splat (i32 7)), !8844, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_stack_value), !8420)
    #dbg_value(!DIArgList(<8 x i32> %i.ar, <8 x i32> splat (i32 25)), !8845, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shr, DW_OP_stack_value), !8420)
  %i.as = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ar, <8 x i32> %i.ar, <8 x i32> splat (i32 7)), !dbg !8997 ; 2 uses
    #dbg_value(!DIArgList(ptr undef, i64 256), !8824, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8408)
  %i.at = bitcast <32 x i8> %i.ao to <8 x i32>, !dbg !8994 ; 2 uses
  %i.au = add <8 x i32> %i.ae, %i.at, !dbg !8995  ; 2 uses
    #dbg_value(<8 x i32> %i.au, !8845, !DIExpression(), !8415)
  %i.av = xor <8 x i32> %i.au, %i.ag, !dbg !8996  ; 2 uses
    #dbg_value(!DIArgList(<8 x i32> %i.av, <8 x i32> splat (i32 7)), !8844, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_stack_value), !8420)
    #dbg_value(!DIArgList(<8 x i32> %i.av, <8 x i32> splat (i32 25)), !8845, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shr, DW_OP_stack_value), !8420)
  %i.aw = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.av, <8 x i32> %i.av, <8 x i32> splat (i32 7)), !dbg !8997 ; 2 uses
    #dbg_value(ptr poison, !8824, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8408)
    #dbg_value(ptr undef, !8830, !DIExpression(), !8354)
    #dbg_value(ptr undef, !8831, !DIExpression(DW_OP_plus_uconst, 256, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !8421)
    #dbg_value(!DIArgList(ptr undef, i64 128), !8831, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8421)
    #dbg_value(ptr undef, !8829, !DIExpression(), !8353)
    #dbg_value(ptr undef, !8832, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !8422)
    #dbg_value(ptr undef, !8833, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !8423)
    #dbg_value(<4 x i64> poison, !8853, !DIExpression(), !8428)
  %i.ax = shufflevector <8 x i32> %i.aq, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>, !dbg !8998
    #dbg_value(<4 x i64> poison, !8860, !DIExpression(), !8432)
  %i.ay = shufflevector <8 x i32> %i.ap, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>, !dbg !8999
    #dbg_value(<8 x i32> %i.ay, !8720, !DIExpression(DW_OP_LLVM_fragment, 768, 256), !8360)
    #dbg_value(<4 x i64> poison, !8864, !DIExpression(), !8436)
  %i.az = shufflevector <8 x i32> %i.ah, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6>, !dbg !9000
    #dbg_value(!DIArgList(ptr undef, i64 256), !8831, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8421)
  %i.ba = shufflevector <8 x i32> %i.au, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>, !dbg !8998
  %i.bb = shufflevector <8 x i32> %i.at, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>, !dbg !8999
    #dbg_value(<8 x i32> %i.bb, !8720, !DIExpression(DW_OP_LLVM_fragment, 1792, 256), !8360)
  %i.bc = shufflevector <8 x i32> %i.al, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6>, !dbg !9000
    #dbg_value(ptr poison, !8831, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8421)
    #dbg_value(ptr undef, !8810, !DIExpression(), !8348)
    #dbg_value(<4 x i64> <i64 361421592464458498, i64 940142975169071882, i64 361421592464458498, i64 940142975169071882>, !8811, !DIExpression(), !8437)
    #dbg_value(<4 x i64> <i64 361421592464458498, i64 940142975169071882, i64 361421592464458498, i64 940142975169071882>, !8838, !DIExpression(), !8439)
    #dbg_value(<4 x i64> <i64 433757367256023043, i64 1012478749960636427, i64 433757367256023043, i64 1012478749960636427>, !8812, !DIExpression(), !8440)
    #dbg_value(<4 x i64> <i64 433757367256023043, i64 1012478749960636427, i64 433757367256023043, i64 1012478749960636427>, !8838, !DIExpression(), !8442)
    #dbg_value(ptr undef, !8813, !DIExpression(DW_OP_plus_uconst, 256, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !8443)
    #dbg_value(!DIArgList(ptr undef, i64 128), !8813, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8443)
    #dbg_value(ptr undef, !8814, !DIExpression(), !8347)
    #dbg_value(ptr undef, !8815, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !8444)
    #dbg_value(ptr undef, !8816, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !8445)
    #dbg_value(<4 x i64> poison, !8841, !DIExpression(), !8447)
    #dbg_value(<4 x i64> poison, !8842, !DIExpression(), !8447)
  %i.bd = add <8 x i32> %i.as, %i.az, !dbg !9001  ; 2 uses
    #dbg_value(<8 x i32> %i.ay, !8844, !DIExpression(), !8449)
    #dbg_value(<8 x i32> %i.bd, !8845, !DIExpression(), !8449)
  %i.be = xor <8 x i32> %i.bd, %i.ay, !dbg !9002
    #dbg_value(<8 x i32> %i.be, !8839, !DIExpression(), !8439)
  %i.bf = bitcast <8 x i32> %i.be to <32 x i8>, !dbg !9003
  %i.bg = shufflevector <32 x i8> %i.bf, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29>, !dbg !9004 ; 2 uses
    #dbg_value(!DIArgList(ptr undef, i64 256), !8813, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8443)
  %i.bh = add <8 x i32> %i.aw, %i.bc, !dbg !9001  ; 2 uses
    #dbg_value(<8 x i32> %i.bb, !8844, !DIExpression(), !8449)
    #dbg_value(<8 x i32> %i.bh, !8845, !DIExpression(), !8449)
  %i.bi = xor <8 x i32> %i.bh, %i.bb, !dbg !9002
    #dbg_value(<8 x i32> %i.bi, !8839, !DIExpression(), !8439)
  %i.bj = bitcast <8 x i32> %i.bi to <32 x i8>, !dbg !9003
  %i.bk = shufflevector <32 x i8> %i.bj, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29>, !dbg !9004 ; 2 uses
    #dbg_value(!DIArgList(ptr undef, i64 128), !8817, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8450)
    #dbg_value(ptr undef, !8818, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !8451)
    #dbg_value(ptr undef, !8819, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !8452)
    #dbg_value(ptr undef, !8820, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !8453)
    #dbg_value(<4 x i64> poison, !8841, !DIExpression(), !8455)
  %i.bl = bitcast <32 x i8> %i.bg to <8 x i32>, !dbg !9005
    #dbg_value(<4 x i64> poison, !8842, !DIExpression(), !8455)
  %i.bm = add <8 x i32> %i.ax, %i.bl, !dbg !9006  ; 2 uses
    #dbg_value(<4 x i64> poison, !8844, !DIExpression(), !8457)
    #dbg_value(<8 x i32> %i.bm, !8845, !DIExpression(), !8457)
    #dbg_value(!DIArgList(<4 x i64> poison, <8 x i32> poison), !8847, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !8459)
  %i.bn = xor <8 x i32> %i.bm, %i.as, !dbg !9007  ; 2 uses
    #dbg_value(!DIArgList(<8 x i32> %i.bn, <8 x i32> splat (i32 12)), !8844, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_stack_value), !8461)
    #dbg_value(!DIArgList(<8 x i32> %i.bn, <8 x i32> splat (i32 20)), !8845, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shr, DW_OP_stack_value), !8461)
  %i.bo = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.bn, <8 x i32> %i.bn, <8 x i32> splat (i32 12)), !dbg !9008 ; 2 uses
    #dbg_value(!DIArgList(ptr undef, i64 256), !8817, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8450)
  %i.bp = bitcast <32 x i8> %i.bk to <8 x i32>, !dbg !9005
  %i.bq = add <8 x i32> %i.ba, %i.bp, !dbg !9006  ; 2 uses
    #dbg_value(<8 x i32> %i.bq, !8845, !DIExpression(), !8457)
  %i.br = xor <8 x i32> %i.bq, %i.aw, !dbg !9007  ; 2 uses
end_hunk_0
begin_hunk_1_@llvm.usub.sat.i32
!8572 = distinct !{!8572, i1 true, !"_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrONtNtNtB6_9core_arch3x867___m128i15write_unalignedCshovLROGBtMy_11quinn_proto"}
!8573 = distinct !{!8573, !8572, !"_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrONtNtNtB6_9core_arch3x867___m128i15write_unalignedCshovLROGBtMy_11quinn_proto: argument 0"}
!8574 = distinct !DILocation(line: 1465, column: 18, scope: !187, inlinedAt: !8569)
!8575 = distinct !DILocation(line: 2057, column: 14, scope: !190, inlinedAt: !8574)
!8576 = distinct !DISubprogram(name: "_mm256_extract_epi32<0>", linkageName: "_RINvNtNtNtCskKLDkoKarTP_4core9core_arch3x863avx20__mm256_extract_epi32Kl0_ECshovLROGBtMy_11quinn_proto", scope: !8963, file: !8961, line: 1082, type: !8965, scopeLine: 1082, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !103, templateParams: !2081, retainedNodes: !8966)
!8577 = distinct !DILocation(line: 110, column: 22, scope: !8173)
!8578 = distinct !DILocation(line: 1082, column: 53, scope: !8576, inlinedAt: !8577)
!8579 = distinct !DISubprogram(name: "_mm256_extract_epi32<1>", linkageName: "_RINvNtNtNtCskKLDkoKarTP_4core9core_arch3x863avx20__mm256_extract_epi32Kl1_ECshovLROGBtMy_11quinn_proto", scope: !8963, file: !8961, line: 1082, type: !8965, scopeLine: 1082, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !103, templateParams: !2081, retainedNodes: !8968)
!8580 = distinct !DILocation(line: 111, column: 22, scope: !8173)
!8581 = distinct !DILocation(line: 1082, column: 53, scope: !8579, inlinedAt: !8580)
!8582 = !DIFile(filename: "src/backends/avx2.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/chacha20-0.10.1", checksumkind: CSK_MD5, checksum: "5475b59074661dfbf620f755aee7cf11")
!8583 = !DINamespace(name: "avx2", scope: !2723)
!8584 = !DILocalVariable(name: "core", arg: 1, scope: !8181, file: !8582, line: 84, type: !2724)
!8585 = !DILocalVariable(name: "buffer", arg: 2, scope: !8181, file: !8582, line: 84, type: !2728)
!8586 = !DILocalVariable(name: "state_ptr", scope: !8180, file: !8582, line: 89, type: !2757, align: 64)
!8587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8178, size: 768, align: 256, elements: !2759)
!8588 = !DILocalVariable(name: "v", scope: !8179, file: !8582, line: 90, type: !8587, align: 256)
!8589 = !DILocalVariable(name: "c", scope: !8177, file: !8582, line: 95, type: !8178, align: 256)
!8590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8178, size: 512, align: 256, elements: !2761)
!8591 = !DILocalVariable(name: "ctr", scope: !8176, file: !8582, line: 97, type: !8590, align: 256)
!8592 = !DILocalVariable(name: "iter", scope: !8175, file: !8582, line: 98, type: !172, align: 64)
!8593 = !DILocalVariable(name: "i", scope: !8174, file: !8582, line: 98, type: !2075, align: 64)
!8594 = !DILocalVariable(name: "backend", scope: !8173, file: !8582, line: 102, type: !8172, align: 256)
!8595 = !{!8584, !8585, !8586, !8588, !8589, !8591, !8592, !8593, !8594}
!8596 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !8172, file: !1616, baseType: !8587, size: 768, align: 256, offset: 512, flags: DIFlagPrivate)
!8597 = !DIDerivedType(tag: DW_TAG_member, name: "ctr", scope: !8172, file: !1616, baseType: !8590, size: 512, align: 256, flags: DIFlagPrivate)
!8598 = !DIDerivedType(tag: DW_TAG_member, name: "_pd", scope: !8172, file: !1616, baseType: !167, align: 8, offset: 1280, flags: DIFlagPrivate)
!8599 = !{!8596, !8597, !8598}
!8600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2372, size: 256, align: 64, elements: !2771)
!8601 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !8178, file: !1616, baseType: !8600, size: 256, align: 64, flags: DIFlagPrivate)
!8602 = !{!8601}
!8604 = !DILocalVariable(name: "iter", scope: !8203, file: !8582, line: 195, type: !8189, align: 256)
!8605 = !DINamespace(name: "iter", scope: !2410)
!8606 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !8189, file: !1616, baseType: !8188, size: 2304, align: 256, flags: DIFlagPrivate)
!8607 = !{!8606}
!8608 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !8188, file: !1616, baseType: !8187, size: 2304, align: 256, flags: DIFlagPrivate)
!8609 = !{!8608}
!8610 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !8187, file: !1616, baseType: !8186, size: 2304, align: 256, flags: DIFlagPrivate)
!8611 = !{!8610}
!8612 = !DINamespace(name: "iter_inner", scope: !8605)
!8613 = !DIDerivedType(tag: DW_TAG_member, name: "alive", scope: !8186, file: !1616, baseType: !8185, size: 128, align: 64, flags: DIFlagPrivate)
!8614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8184, size: 2048, align: 256, elements: !2761)
!8615 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !8186, file: !1616, baseType: !8614, size: 2048, align: 256, offset: 256, flags: DIFlagPrivate)
!8616 = !{!8613, !8615}
!8617 = !DIDerivedType(tag: DW_TAG_member, name: "uninit", scope: !8184, file: !1616, baseType: !2072, align: 8)
!8618 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !8184, file: !1616, baseType: !8183, size: 1024, align: 256)
!8619 = !{!8617, !8618}
!8620 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !8183, file: !1616, baseType: !8182, size: 1024, align: 256, flags: DIFlagPrivate)
!8621 = !{!8620}
!8622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8178, size: 1024, align: 256, elements: !2771)
!8623 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !8182, file: !1616, baseType: !8622, size: 1024, align: 256, flags: DIFlagPrivate)
!8624 = !{!8623}
!8625 = !DITemplateTypeParameter(name: "P", type: !8622)
!8626 = !{!8625}
!8627 = !DITemplateTypeParameter(name: "T", type: !8622)
!8628 = !{!8627}
!8629 = !DINamespace(name: "index_range", scope: !2417)
!8630 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !8185, file: !1616, baseType: !2075, size: 64, align: 64, flags: DIFlagPrivate)
!8631 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !8185, file: !1616, baseType: !2075, size: 64, align: 64, offset: 64, flags: DIFlagPrivate)
!8632 = !{!8630, !8631}
!8633 = !DITemplateTypeParameter(name: "DATA", type: !8614)
!8634 = !{!8633}
!8635 = !DITemplateTypeParameter(name: "P", type: !8186)
!8636 = !{!8635}
!8637 = !DITemplateTypeParameter(name: "T", type: !8186)
!8638 = !{!8637}
!8639 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut chacha20::backends::avx2::Backend<chacha20::R12, chacha20::variants::Legacy>", baseType: !8172, size: 64, align: 64, dwarfAddressSpace: 0)
!8640 = !{null, !8639, !2728}
!8641 = !DISubroutineType(types: !8640)
!8642 = !DISubprogram(name: "rng_gen_par_ks_blocks<chacha20::R12, chacha20::variants::Legacy>", linkageName: "_RNvMNtNtCshJYlBnZeDKb_8chacha208backends4avx2INtB2_7BackendNtB6_3R12NtNtB6_8variants6LegacyE21rng_gen_par_ks_blocksCshovLROGBtMy_11quinn_proto", scope: !8172, file: !8582, line: 185, type: !8641, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !2756)
!8643 = !DILocalVariable(name: "self", arg: 1, scope: !8199, file: !8582, line: 185, type: !8639)
!8644 = !DILocalVariable(name: "blocks", arg: 2, scope: !8199, file: !8582, line: 185, type: !2728)
!8645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8622, size: 2048, align: 256, elements: !2761)
!8646 = !DILocalVariable(name: "vs", scope: !8200, file: !8582, line: 187, type: !8645, align: 256)
!8647 = !DILocalVariable(name: "pb", scope: !8201, file: !8582, line: 189, type: !2778, align: 32)
!8648 = !DILocalVariable(name: "iter", scope: !8198, file: !8582, line: 190, type: !8197, align: 64)
!8649 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::core_arch::x86::__m256i", baseType: !8178, size: 64, align: 64, dwarfAddressSpace: 0)
!8650 = !DILocalVariable(name: "c", scope: !8194, file: !8582, line: 190, type: !8649, align: 64)
!8651 = !DILocalVariable(name: "block_ptr", scope: !8202, file: !8582, line: 194, type: !2779, align: 64)
!8652 = !DILocalVariable(name: "v", scope: !8193, file: !8582, line: 195, type: !8622, align: 256)
!8653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 1024, align: 128, elements: !2781)
!8654 = !DILocalVariable(name: "t", scope: !8192, file: !8582, line: 196, type: !8653, align: 128)
!8655 = !DILocalVariable(name: "iter", scope: !8191, file: !8582, line: 197, type: !172, align: 64)
!8656 = !DILocalVariable(name: "i", scope: !8190, file: !8582, line: 197, type: !2075, align: 64)
!8657 = !{!8643, !8644, !8646, !8647, !8648, !8650, !8651, !8604, !8652, !8654, !8655, !8656}
!8658 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !8197, file: !1616, baseType: !8196, size: 64, align: 64, flags: DIFlagPrivate)
!8659 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut core::core_arch::x86::__m256i", baseType: !8178, size: 64, align: 64, dwarfAddressSpace: 0)
!8660 = !DIDerivedType(tag: DW_TAG_member, name: "end_or_len", scope: !8197, file: !1616, baseType: !8659, size: 64, align: 64, offset: 64, flags: DIFlagPrivate)
!8661 = !DIDerivedType(tag: DW_TAG_member, name: "_marker", scope: !8197, file: !1616, baseType: !8195, align: 8, offset: 128, flags: DIFlagPrivate)
!8662 = !{!8658, !8660, !8661}
!8663 = !DITemplateTypeParameter(name: "T", type: !8649)
!8664 = !{!8663}
!8665 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const core::core_arch::x86::__m256i", baseType: !8178, size: 64, align: 64, dwarfAddressSpace: 0)
!8666 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !8196, file: !1616, baseType: !8665, size: 64, align: 64, flags: DIFlagPrivate)
!8667 = !{!8666}
!8668 = !DITemplateTypeParameter(name: "T", type: !8178)
!8669 = !{!8668}
!8670 = !DIFile(filename: "library/core/src/ops/index_range.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "0cbb503d6203e487667028bd8e76f0d1")
!8671 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::ops::index_range::IndexRange", baseType: !8185, size: 64, align: 64, dwarfAddressSpace: 0)
!8672 = !DILocalVariable(name: "self", arg: 1, scope: !8207, file: !8670, line: 58, type: !8671)
!8673 = !{!2075, !8671}
!8674 = !DISubroutineType(types: !8673)
!8675 = !DISubprogram(name: "next_unchecked", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ops11index_rangeNtB2_10IndexRange14next_unchecked", scope: !8185, file: !8670, line: 58, type: !8674, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !2081)
!8676 = !DILocalVariable(name: "value", scope: !8206, file: !8670, line: 61, type: !2075, align: 64)
!8677 = !{!8672, !8676}
!8678 = !DINamespace(name: "{impl#1}", scope: !8629)
!8679 = !{!177, !8671}
!8680 = !DISubroutineType(types: !8679)
!8681 = !DILocalVariable(name: "self", arg: 1, scope: !8208, file: !8670, line: 130, type: !8671)
!8682 = !{!8681}
!8683 = !DIFile(filename: "library/core/src/array/iter/iter_inner.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "48722c666ec792ae4b3ada9f644ba487")
!8684 = !DIDerivedType(tag: DW_TAG_member, name: "alive", scope: !8209, file: !1616, baseType: !8185, size: 128, align: 64, flags: DIFlagPrivate)
!8685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8184, align: 256, elements: !2689)
!8686 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !8209, file: !1616, baseType: !8685, align: 256, offset: 256, flags: DIFlagPrivate)
!8687 = !{!8684, !8686}
!8688 = !DITemplateTypeParameter(name: "DATA", type: !8685)
!8689 = !{!8688}
!8690 = !{!8214, !8210}
!8691 = !DISubroutineType(types: !8690)
!8692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8209, size: 64, align: 64, dwarfAddressSpace: 0)
!8693 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !8210, file: !1616, baseType: !8692, size: 64, align: 64)
!8694 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !8210, file: !1616, baseType: !2075, size: 64, align: 64, offset: 64)
!8695 = !{!8693, !8694}
!8696 = !{!8213}
!8697 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !8213, file: !1616, baseType: !8212, size: 1280, align: 256, extraData: i8 0)
!8698 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !8213, file: !1616, baseType: !8211, size: 1280, align: 256, extraData: i8 1)
!8699 = !{!8697, !8698}
!8700 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !8211, file: !1616, baseType: !8622, size: 1024, align: 256, offset: 256, flags: DIFlagPublic)
!8701 = !{!8700}
!8702 = !DIDerivedType(tag: DW_TAG_member, scope: !8214, file: !1616, baseType: !1619, size: 8, align: 8, flags: DIFlagArtificial)
!8703 = !DISubprogram(name: "next<[core::core_arch::x86::__m256i; 4]>", linkageName: "_RNvMs8_NtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitANtNtNtBb_9core_arch3x867___m256ij4_EE4nextCshovLROGBtMy_11quinn_proto", scope: !8209, file: !8683, line: 206, type: !8691, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !8628)
!8704 = !DILocalVariable(name: "self", arg: 1, scope: !8215, file: !8683, line: 206, type: !8210)
!8705 = !{!8704}
!8706 = !DIFile(filename: "library/core/src/array/iter.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "c1dd90260bb3443fb9d4fc76ebd1ded3")
!8707 = !DINamespace(name: "{impl#5}", scope: !8605)
!8708 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::array::iter::IntoIter<[core::core_arch::x86::__m256i; 4], 2>", baseType: !8189, size: 64, align: 64, dwarfAddressSpace: 0)
!8709 = !{!8214, !8708}
!8710 = !DISubroutineType(types: !8709)
!8711 = !DILocalVariable(name: "self", arg: 1, scope: !8216, file: !8706, line: 245, type: !8708)
!8712 = !{!8711}
!8713 = !DILexicalBlockFile(scope: !8203, file: !8582, discriminator: 2)
!8714 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&[core::core_arch::x86::__m256i; 2]", baseType: !8590, size: 64, align: 64, dwarfAddressSpace: 0)
!8715 = !DILocalVariable(name: "c", arg: 2, scope: !8234, file: !8582, line: 209, type: !8714)
!8716 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&[core::core_arch::x86::__m256i; 3]", baseType: !8587, size: 64, align: 64, dwarfAddressSpace: 0)
!8717 = !{!8645, !8716, !8714}
!8718 = !DISubroutineType(types: !8717)
!8719 = !DILocalVariable(name: "v", arg: 1, scope: !8234, file: !8582, line: 209, type: !8716)
!8720 = !DILocalVariable(name: "vs", scope: !8233, file: !8582, line: 210, type: !8645, align: 256)
!8721 = !DILocalVariable(name: "iter", scope: !8232, file: !8582, line: 211, type: !172, align: 64)
!8722 = !DILocalVariable(name: "i", scope: !8231, file: !8582, line: 211, type: !2075, align: 64)
!8723 = !DILocalVariable(name: "iter", scope: !8230, file: !8582, line: 214, type: !172, align: 64)
!8724 = !DILocalVariable(name: "iter", scope: !8229, file: !8582, line: 218, type: !172, align: 64)
!8725 = !DILocalVariable(name: "i", scope: !8228, file: !8582, line: 218, type: !2075, align: 64)
!8726 = !DILocalVariable(name: "iter", scope: !8227, file: !8582, line: 219, type: !172, align: 64)
!8727 = !DILocalVariable(name: "j", scope: !8226, file: !8582, line: 219, type: !2075, align: 64)
!8728 = !{!8719, !8715, !8720, !8721, !8722, !8723, !8724, !8725, !8726, !8727}
!8729 = !{!2754}
!8730 = !DILocation(line: 0, scope: !8181)
!8731 = !DILocation(line: 0, scope: !8180)
!8732 = !DILocalVariable(name: "mem_addr", arg: 1, scope: !8248, file: !2820, line: 1339, type: !2757)
!8733 = !DILocalVariable(name: "dst", scope: !8247, file: !2820, line: 1340, type: !173, align: 128)
!8734 = !{!8732, !8733}
!8735 = !{!8255}
!8736 = !DIFile(filename: "library/core/src/../../stdarch/crates/core_arch/src/x86/avx2.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "18ed3b1487b9900bdb9d19b7fdd96a2b")
!8737 = !DILocalVariable(name: "a", arg: 1, scope: !8261, file: !8736, line: 589, type: !173)
!8738 = !DINamespace(name: "avx2", scope: !2769)
!8739 = !{!8178, !173}
!8740 = !DISubroutineType(types: !8739)
!8741 = !DILocalVariable(name: "ret", scope: !8260, file: !8736, line: 591, type: !8259, align: 256)
!8742 = !DILocalVariable(name: "ret", scope: !8258, file: !8736, line: 591, type: !8259, align: 256)
!8743 = !DILocalVariable(name: "ret", scope: !8257, file: !8736, line: 591, type: !8259, align: 256)
!8744 = !DILocalVariable(name: "ret", scope: !8256, file: !8736, line: 591, type: !8259, align: 256)
!8745 = !{!8737, !8741, !8742, !8743, !8744}
!8746 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !8259, file: !1616, baseType: !8600, size: 256, align: 64, flags: DIFlagPrivate)
!8747 = !{!8746}
!8748 = !DITemplateTypeParameter(name: "T", type: !2372)
!8749 = !{!8748}
!8750 = !DILocation(line: 91, column: 9, scope: !8180)
!8751 = !DILocation(line: 0, scope: !8261, inlinedAt: !8750)
!8752 = !{!8270}
!8753 = !DILocation(line: 92, column: 9, scope: !8180)
!8754 = !DILocation(line: 0, scope: !8261, inlinedAt: !8753)
!8755 = !{!8279}
!8756 = !DILocation(line: 93, column: 9, scope: !8180)
!8757 = !DILocation(line: 0, scope: !8261, inlinedAt: !8756)
!8758 = !DILocation(line: 0, scope: !8179)
!8761 = !{!8288}
!8762 = !DILocation(line: 95, column: 17, scope: !8179)
!8763 = !DILocation(line: 0, scope: !8261, inlinedAt: !8762)
!8764 = !DILexicalBlockFile(scope: !8261, file: !2831, discriminator: 0)
!8765 = !DILocation(line: 0, scope: !8177)
!8766 = !DILocalVariable(name: "a", arg: 1, scope: !8289, file: !8736, line: 83, type: !8178)
!8767 = !{!8178, !8178, !8178}
!8768 = !DISubroutineType(types: !8767)
!8769 = !DILocalVariable(name: "b", arg: 2, scope: !8289, file: !8736, line: 83, type: !8178)
!8770 = !{!8766, !8769}
!8771 = !DILocation(line: 96, column: 9, scope: !8177)
!8772 = !DILocation(line: 0, scope: !8289, inlinedAt: !8771)
!8773 = !DILocation(line: 100, column: 13, scope: !8174)
!8774 = !DILocation(line: 0, scope: !8289, inlinedAt: !8773)
!8775 = !DILocation(line: 0, scope: !8176)
!8776 = !DILocation(line: 0, scope: !8175)
!8777 = !DILocation(line: 0, scope: !8174)
!8778 = !DILocation(line: 0, scope: !8173)
!8781 = !DILocalVariable(name: "count", scope: !8296, file: !2669, line: 937, type: !2075, align: 64)
!8782 = !{!2779, !2779, !2075, !2673}
!8783 = !DISubroutineType(types: !8782)
!8784 = !DILocalVariable(name: "self", arg: 1, scope: !8296, file: !2669, line: 937, type: !2779)
!8785 = !DILocalVariable(name: "count", arg: 2, scope: !8296, file: !2669, line: 937, type: !2075)
!8786 = !{!8784, !8785, !8781}
!8787 = !DILocalVariable(name: "a", scope: !8328, file: !8582, line: 304, type: !8649, align: 64)
!8788 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut [[core::core_arch::x86::__m256i; 4]; 2]", baseType: !8645, size: 64, align: 64, dwarfAddressSpace: 0)
!8789 = !{null, !8788}
!8790 = !DISubroutineType(types: !8789)
!8791 = !DILocalVariable(name: "vs", arg: 1, scope: !8326, file: !8582, line: 302, type: !8788)
!8792 = !DILocalVariable(name: "iter", scope: !8327, file: !8582, line: 304, type: !8325, align: 64)
!8793 = !DILocalVariable(name: "c", scope: !8328, file: !8582, line: 304, type: !8649, align: 64)
!8794 = !DILocalVariable(name: "d", scope: !8328, file: !8582, line: 304, type: !8649, align: 64)
!8795 = !{!8791, !8792, !8787, !8793, !8794}
!8796 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !8325, file: !1616, baseType: !8324, size: 64, align: 64, flags: DIFlagPrivate)
!8797 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut [core::core_arch::x86::__m256i; 4]", baseType: !8622, size: 64, align: 64, dwarfAddressSpace: 0)
!8798 = !DIDerivedType(tag: DW_TAG_member, name: "end_or_len", scope: !8325, file: !1616, baseType: !8797, size: 64, align: 64, offset: 64, flags: DIFlagPrivate)
!8799 = !DIDerivedType(tag: DW_TAG_member, name: "_marker", scope: !8325, file: !1616, baseType: !8323, align: 8, offset: 128, flags: DIFlagPrivate)
!8800 = !{!8796, !8798, !8799}
!8801 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut [core::core_arch::x86::__m256i; 4]", baseType: !8622, size: 64, align: 64, dwarfAddressSpace: 0)
!8802 = !DITemplateTypeParameter(name: "T", type: !8801)
!8803 = !{!8802}
!8804 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const [core::core_arch::x86::__m256i; 4]", baseType: !8622, size: 64, align: 64, dwarfAddressSpace: 0)
!8805 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !8324, file: !1616, baseType: !8804, size: 64, align: 64, flags: DIFlagPrivate)
!8806 = !{!8805}
!8807 = !DILocalVariable(name: "v", arg: 1, scope: !8329, file: !8582, line: 230, type: !8788)
!8808 = !{!8807}
!8809 = !DILocalVariable(name: "a", scope: !8344, file: !8582, line: 342, type: !8649, align: 64)
!8810 = !DILocalVariable(name: "vs", arg: 1, scope: !8340, file: !8582, line: 313, type: !8788)
!8811 = !DILocalVariable(name: "rol16_mask", scope: !8341, file: !8582, line: 314, type: !8178, align: 256)
!8812 = !DILocalVariable(name: "rol8_mask", scope: !8342, file: !8582, line: 320, type: !8178, align: 256)
!8813 = !DILocalVariable(name: "iter", scope: !8339, file: !8582, line: 328, type: !8325, align: 64)
!8814 = !DILocalVariable(name: "a", scope: !8338, file: !8582, line: 328, type: !8649, align: 64)
!8815 = !DILocalVariable(name: "b", scope: !8338, file: !8582, line: 328, type: !8649, align: 64)
!8816 = !DILocalVariable(name: "d", scope: !8338, file: !8582, line: 328, type: !8649, align: 64)
!8817 = !DILocalVariable(name: "iter", scope: !8337, file: !8582, line: 335, type: !8325, align: 64)
!8818 = !DILocalVariable(name: "b", scope: !8336, file: !8582, line: 335, type: !8649, align: 64)
!8819 = !DILocalVariable(name: "c", scope: !8336, file: !8582, line: 335, type: !8649, align: 64)
!8820 = !DILocalVariable(name: "d", scope: !8336, file: !8582, line: 335, type: !8649, align: 64)
!8821 = !DILocalVariable(name: "iter", scope: !8343, file: !8582, line: 342, type: !8325, align: 64)
!8822 = !DILocalVariable(name: "b", scope: !8344, file: !8582, line: 342, type: !8649, align: 64)
!8823 = !DILocalVariable(name: "d", scope: !8344, file: !8582, line: 342, type: !8649, align: 64)
!8824 = !DILocalVariable(name: "iter", scope: !8335, file: !8582, line: 349, type: !8325, align: 64)
!8825 = !DILocalVariable(name: "b", scope: !8334, file: !8582, line: 349, type: !8649, align: 64)
!8826 = !DILocalVariable(name: "c", scope: !8334, file: !8582, line: 349, type: !8649, align: 64)
!8827 = !DILocalVariable(name: "d", scope: !8334, file: !8582, line: 349, type: !8649, align: 64)
!8828 = !{!8810, !8811, !8812, !8813, !8814, !8815, !8816, !8817, !8818, !8819, !8820, !8821, !8809, !8822, !8823, !8824, !8825, !8826, !8827}
!8829 = !DILocalVariable(name: "a", scope: !8351, file: !8582, line: 276, type: !8649, align: 64)
!8830 = !DILocalVariable(name: "vs", arg: 1, scope: !8349, file: !8582, line: 274, type: !8788)
!8831 = !DILocalVariable(name: "iter", scope: !8350, file: !8582, line: 276, type: !8325, align: 64)
!8832 = !DILocalVariable(name: "c", scope: !8351, file: !8582, line: 276, type: !8649, align: 64)
!8833 = !DILocalVariable(name: "d", scope: !8351, file: !8582, line: 276, type: !8649, align: 64)
!8834 = !{!8830, !8831, !8829, !8832, !8833}
!8838 = !DILocalVariable(name: "b", arg: 2, scope: !8373, file: !8736, line: 2507, type: !8178)
!8839 = !DILocalVariable(name: "a", arg: 1, scope: !8373, file: !8736, line: 2507, type: !8178)
!8840 = !{!8839, !8838}
!8841 = !DILocalVariable(name: "a", arg: 1, scope: !8382, file: !8736, line: 95, type: !8178)
!8842 = !DILocalVariable(name: "b", arg: 2, scope: !8382, file: !8736, line: 95, type: !8178)
!8843 = !{!8841, !8842}
!8844 = !DILocalVariable(name: "a", arg: 1, scope: !8385, file: !8736, line: 3782, type: !8178)
!8845 = !DILocalVariable(name: "b", arg: 2, scope: !8385, file: !8736, line: 3782, type: !8178)
!8846 = !{!8844, !8845}
!8847 = !DILocalVariable(name: "a", arg: 1, scope: !8396, file: !8736, line: 2756, type: !8178)
!8848 = !{!8178, !8178}
!8849 = !DISubroutineType(types: !8848)
!8850 = !{!8847}
!8851 = !DILocalVariable(name: "a", arg: 1, scope: !8416, file: !8736, line: 2756, type: !8178)
!8852 = !{!8851}
!8853 = !DILocalVariable(name: "a", arg: 1, scope: !8426, file: !8736, line: 2547, type: !8178)
!8854 = !DILocalVariable(name: "r", scope: !8425, file: !8736, line: 2550, type: !8424, align: 256)
!8855 = !{!8853, !8854}
!8856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2778, size: 256, align: 32, elements: !2781)
!8857 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !8424, file: !1616, baseType: !8856, size: 256, align: 32, flags: DIFlagPrivate)
!8858 = !{!8857}
!8859 = !DILexicalBlockFile(scope: !8426, file: !2831, discriminator: 0)
!8860 = !DILocalVariable(name: "a", arg: 1, scope: !8430, file: !8736, line: 2547, type: !8178)
!8861 = !DILocalVariable(name: "r", scope: !8429, file: !8736, line: 2550, type: !8424, align: 256)
!8862 = !{!8860, !8861}
!8863 = !DILexicalBlockFile(scope: !8430, file: !2831, discriminator: 0)
!8864 = !DILocalVariable(name: "a", arg: 1, scope: !8434, file: !8736, line: 2547, type: !8178)
!8865 = !DILocalVariable(name: "r", scope: !8433, file: !8736, line: 2550, type: !8424, align: 256)
!8866 = !{!8864, !8865}
!8867 = !DILexicalBlockFile(scope: !8434, file: !2831, discriminator: 0)
!8868 = !DILocalVariable(name: "a", arg: 1, scope: !8485, file: !8736, line: 2547, type: !8178)
!8869 = !DILocalVariable(name: "r", scope: !8484, file: !8736, line: 2550, type: !8424, align: 256)
!8870 = !{!8868, !8869}
!8871 = !DILexicalBlockFile(scope: !8485, file: !2831, discriminator: 0)
!8872 = !DILocalVariable(name: "a", arg: 1, scope: !8489, file: !8736, line: 2547, type: !8178)
!8873 = !DILocalVariable(name: "r", scope: !8488, file: !8736, line: 2550, type: !8424, align: 256)
!8874 = !{!8872, !8873}
!8875 = !DILexicalBlockFile(scope: !8489, file: !2831, discriminator: 0)
!8876 = !DILocalVariable(name: "a", arg: 1, scope: !8493, file: !8736, line: 2547, type: !8178)
!8877 = !DILocalVariable(name: "r", scope: !8492, file: !8736, line: 2550, type: !8424, align: 256)
!8878 = !{!8876, !8877}
!8879 = !DILexicalBlockFile(scope: !8493, file: !2831, discriminator: 0)
!8880 = !DILocalVariable(name: "a", arg: 1, scope: !8508, file: !8736, line: 95, type: !8178)
!8881 = !DILocalVariable(name: "b", arg: 2, scope: !8508, file: !8736, line: 95, type: !8178)
!8882 = !{!8880, !8881}
!8891 = !DILocation(line: 0, scope: !8200, inlinedAt: !8204)
!8892 = !DILocalVariable(name: "a", arg: 1, scope: !8515, file: !8736, line: 83, type: !8178)
!8893 = !DISubroutineType(cc: DW_CC_nocall, types: !8767)
!8894 = !DILocalVariable(name: "b", arg: 2, scope: !8515, file: !8736, line: 83, type: !8178)
!8895 = !{!8892, !8894}
!8896 = !DILocation(line: 0, scope: !8203, inlinedAt: !8204)
!8899 = !DILocalVariable(name: "self", arg: 1, scope: !8521, file: !2838, line: 1031, type: !2075)
!8900 = !DILocalVariable(name: "rhs", scope: !8521, file: !2838, line: 1031, type: !2075, align: 64)
!8901 = !{!8899, !8900}
!8902 = !DILocalVariable(name: "self", arg: 1, scope: !8527, file: !2857, line: 1160, type: !177)
!8903 = !{!8214, !177, !8525}
!8904 = !DISubroutineType(types: !8903)
!8905 = !DINamespace(name: "{impl#10}", scope: !8612)
!8906 = !DINamespace(name: "next", scope: !8905)
!8907 = !DIDerivedType(tag: DW_TAG_member, name: "_ref__self__data", scope: !8525, file: !1616, baseType: !8524, size: 128, align: 64)
!8908 = !{!8907}
!8909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8184, size: 64, align: 64, dwarfAddressSpace: 0)
!8910 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !8524, file: !1616, baseType: !8909, size: 64, align: 64)
!8911 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !8524, file: !1616, baseType: !2075, size: 64, align: 64, offset: 64)
!8912 = !{!8910, !8911}
!8913 = !DITemplateTypeParameter(name: "U", type: !8622)
!8914 = !DITemplateTypeParameter(name: "F", type: !8525)
!8915 = !{!2473, !8913, !8914}
!8916 = !DISubprogram(name: "map<usize, [core::core_arch::x86::__m256i; 4], core::array::iter::iter_inner::{impl#10}::next::{closure_env#0}<[core::core_arch::x86::__m256i; 4]>>", linkageName: "_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionjE3mapANtNtNtB5_9core_arch3x867___m256ij4_NCNvMs8_NtNtNtB5_5array4iter10iter_innerINtB1w_15PolymorphicIterSINtNtNtB5_3mem12maybe_uninit11MaybeUninitBO_EE4next0ECshovLROGBtMy_11quinn_proto", scope: !177, file: !2857, line: 1160, type: !8904, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !8915)
!8917 = !DILocalVariable(name: "f", scope: !8527, file: !2857, line: 1160, type: !8525, align: 64)
!8918 = !DILocalVariable(name: "x", scope: !8526, file: !2857, line: 1165, type: !2075, align: 64)
!8919 = !{!8902, !8917, !8918}
!8920 = !DILocalVariable(name: "idx", arg: 2, scope: !8531, file: !8683, line: 212, type: !2075)
!8921 = !{!8622, !8525, !2075}
!8922 = !DISubroutineType(types: !8921)
!8923 = !DILocalVariable(name: "self__data", scope: !8531, file: !8683, line: 206, type: !8685, align: 256)
!8924 = !{!8920, !8923}
!8925 = !DILocalVariable(name: "index", arg: 2, scope: !8534, file: !2858, line: 640, type: !2075)
!8926 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::mem::maybe_uninit::MaybeUninit<[core::core_arch::x86::__m256i; 4]>", baseType: !8184, size: 64, align: 64, dwarfAddressSpace: 0)
!8927 = !{!8926, !8524, !2075, !2673}
!8928 = !DISubroutineType(types: !8927)
!8929 = !DILocalVariable(name: "self", arg: 1, scope: !8534, file: !2858, line: 640, type: !8524)
!8930 = !{!8929, !8925}
!8931 = !DITemplateTypeParameter(name: "T", type: !8184)
!8932 = !DITemplateTypeParameter(name: "I", type: !2075)
!8933 = !{!8931, !8932}
!8934 = !DILocalVariable(name: "self", arg: 1, scope: !8538, file: !2860, line: 205, type: !2075)
!8935 = !DINamespace(name: "{impl#2}", scope: !2861)
!8936 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const core::mem::maybe_uninit::MaybeUninit<[core::core_arch::x86::__m256i; 4]>", baseType: !8184, size: 64, align: 64, dwarfAddressSpace: 0)
!8937 = !{!8936, !2075, !8537, !2673}
!8938 = !DISubroutineType(types: !8937)
!8939 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !8537, file: !1616, baseType: !8909, size: 64, align: 64)
!8940 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !8537, file: !1616, baseType: !2075, size: 64, align: 64, offset: 64)
!8941 = !{!8939, !8940}
!8942 = !DILocalVariable(name: "slice", arg: 2, scope: !8538, file: !2860, line: 205, type: !8524)
!8943 = !{!8934, !8942}
!8944 = !{!8931}
!8945 = !DILocalVariable(name: "self", arg: 1, scope: !8541, file: !2862, line: 794, type: !8936)
!8946 = !{!8622, !8926, !2673}
!8947 = !DISubroutineType(types: !8946)
!8948 = !DISubprogram(name: "assume_init_read<[core::core_arch::x86::__m256i; 4]>", linkageName: "_RNvMs1_NtNtCskKLDkoKarTP_4core3mem12maybe_uninitINtB5_11MaybeUninitANtNtNtB9_9core_arch3x867___m256ij4_E16assume_init_readCshovLROGBtMy_11quinn_proto", scope: !8184, file: !2862, line: 794, type: !8947, scopeLine: 794, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !8628)
!8949 = !{!8945}
!8950 = !DILocalVariable(name: "self", arg: 1, scope: !8544, file: !2695, line: 1149, type: !8804)
!8951 = !{!8622, !8804, !2673}
!8952 = !DISubroutineType(types: !8951)
!8953 = !{!8950}
!8954 = !DILocalVariable(name: "src", arg: 1, scope: !8547, file: !2421, line: 1717, type: !8804)
!8955 = !{!8954}
!8956 = !DILocation(line: 0, scope: !8193, inlinedAt: !8204)
!8957 = !DILocation(line: 0, scope: !8192, inlinedAt: !8204)
!8958 = !{!8561}
!8960 = !{!8573}
!8961 = !DIFile(filename: "library/core/src/../../stdarch/crates/core_arch/src/x86/avx.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "b879f085ef4a2bd25d9832c384229eb2")
!8962 = !DILocalVariable(name: "a", arg: 1, scope: !8576, file: !8961, line: 1082, type: !8178)
!8963 = !DINamespace(name: "avx", scope: !2769)
!8964 = !{!2778, !8178}
!8965 = !DISubroutineType(cc: DW_CC_nocall, types: !8964)
!8966 = !{!8962}
!8967 = !DILocalVariable(name: "a", arg: 1, scope: !8579, file: !8961, line: 1082, type: !8178)
!8968 = !{!8967}
!8969 = !DILocation(line: 574, column: 14, scope: !183, inlinedAt: !8252)
!8970 = !DILocation(line: 872, column: 18, scope: !182, inlinedAt: !8262)
!8971 = !DILocation(line: 574, column: 14, scope: !183, inlinedAt: !8267)
!8972 = !DILocation(line: 872, column: 18, scope: !182, inlinedAt: !8271)
!8973 = !DILocation(line: 574, column: 14, scope: !183, inlinedAt: !8276)
!8974 = !DILocation(line: 872, column: 18, scope: !182, inlinedAt: !8280)
!8975 = !DILocation(line: 574, column: 14, scope: !183, inlinedAt: !8285)
!8976 = !DILocation(line: 173, column: 9, scope: !8764, inlinedAt: !8762)
!8977 = !DILocation(line: 84, column: 24, scope: !8289, inlinedAt: !8771)
!8978 = !DILocation(line: 84, column: 24, scope: !8289, inlinedAt: !8773)
!8979 = !DILocation(line: 1100, column: 12, scope: !180, inlinedAt: !8312)
!8980 = !DILocation(line: 0, scope: !8233, inlinedAt: !8235)
!8981 = !DILocation(line: 1043, column: 17, scope: !185, inlinedAt: !8370)
!8982 = !DILocation(line: 96, column: 24, scope: !8382, inlinedAt: !8383)
!8983 = !DILocation(line: 3783, column: 47, scope: !8385, inlinedAt: !8386)
!8984 = !DILocation(line: 3783, column: 24, scope: !8385, inlinedAt: !8386)
!8985 = !DILocation(line: 2508, column: 33, scope: !8373, inlinedAt: !8374)
!8986 = !DILocation(line: 2508, column: 24, scope: !8373, inlinedAt: !8374)
!8987 = !DILocation(line: 336, column: 35, scope: !8336, inlinedAt: !8355)
!8988 = !DILocation(line: 96, column: 24, scope: !8382, inlinedAt: !8392)
!8989 = !DILocation(line: 2762, column: 34, scope: !8396, inlinedAt: !8397)
!8990 = !DILocation(line: 3783, column: 24, scope: !8385, inlinedAt: !8399)
!8991 = !DILocation(line: 96, column: 24, scope: !8382, inlinedAt: !8404)
!8992 = !DILocation(line: 2508, column: 33, scope: !8373, inlinedAt: !8377)
!8993 = !DILocation(line: 2508, column: 24, scope: !8373, inlinedAt: !8377)
end_hunk_1

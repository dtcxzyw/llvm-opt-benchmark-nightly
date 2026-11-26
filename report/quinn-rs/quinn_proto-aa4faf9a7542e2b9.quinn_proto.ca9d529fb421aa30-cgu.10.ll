Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/quinn_proto-aa4faf9a7542e2b9.quinn_proto.ca9d529fb421aa30-cgu.10?download=true
inline.NumInlined: 675
inline.NumDeleted: 213
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtCshovLROGBtMy_11quinn_proto15bloom_token_log5StateEEEB1S_:bb.a
  %i.h = atomicrmw xchg ptr %.val, i32 0 release, align 4, !dbg !8082
  %i.i = icmp eq i32 %i.h, 2, !dbg !8083
  br i1 %i.i, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCshovLROGBtMy_11quinn_proto15bloom_token_log5StateEEB1z_.exit, !dbg !8083, !prof !2512

bb.e:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val), !dbg !8084
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCshovLROGBtMy_11quinn_proto15bloom_token_log5StateEEB1z_.exit, !dbg !8084

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCshovLROGBtMy_11quinn_proto15bloom_token_log5StateEEB1z_.exit: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.e
  ret void, !dbg !8073
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCshovLROGBtMy_11quinn_proto15bloom_token_log5StateEEB1z_(ptr %.0.val, i8 %.8.val) unnamed_addr #1 !dbg !104 {
bb.a:
    #dbg_value(ptr poison, !2424, !DIExpression(), !8108)
    #dbg_value(ptr poison, !2429, !DIExpression(), !8086)
    #dbg_value(i32 0, !2433, !DIExpression(), !8089)
    #dbg_value(i8 1, !2439, !DIExpression(), !8089)
    #dbg_value(i32 0, !2448, !DIExpression(), !8091)
    #dbg_value(i8 1, !2453, !DIExpression(), !8091)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 4, !dbg !8109
    #dbg_value(ptr %i.a, !2457, !DIExpression(), !8093)
    #dbg_value(ptr poison, !2463, !DIExpression(), !8093)
    #dbg_value(i8 0, !2465, !DIExpression(), !8098)
    #dbg_value(i8 1, !2490, !DIExpression(), !8100)
    #dbg_value(i8 0, !2496, !DIExpression(), !8100)
  %i.b = trunc nuw i8 %.8.val to i1, !dbg !8110
  br i1 %i.b, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i, label %bb.b, !dbg !8110

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT, !2480, !DIExpression(), !8098)
    #dbg_value(ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT, !2499, !DIExpression(), !8102)
    #dbg_value(i8 0, !2502, !DIExpression(), !8102)
  %i.c = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !8111
  %i.d = and i64 %i.c, 9223372036854775807, !dbg !8112
  %i.e = icmp eq i64 %i.d, 0, !dbg !8112
  br i1 %i.e, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i, label %bb.c, !dbg !8112, !prof !2504

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #25, !dbg !8113
  br i1 %i.f, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i, label %bb.d, !dbg !8114

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr %i.a, !2495, !DIExpression(), !8103)
    #dbg_value(ptr %i.a, !2506, !DIExpression(), !8105)
    #dbg_value(i8 1, !2509, !DIExpression(), !8105)
    #dbg_value(i8 0, !2510, !DIExpression(), !8105)
  store atomic i8 1, ptr %i.a monotonic, align 1, !dbg !8115
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i, !dbg !8116

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
    #dbg_value(ptr %.0.val, !2446, !DIExpression(), !8106)
    #dbg_value(ptr %.0.val, !2438, !DIExpression(), !8107)
    #dbg_value(ptr %.0.val, !2452, !DIExpression(), !8091)
  %i.g = atomicrmw xchg ptr %.0.val, i32 0 release, align 4, !dbg !8117
  %i.h = icmp eq i32 %i.g, 2, !dbg !8118
  br i1 %i.h, label %bb.e, label %_RNvXsc_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_10MutexGuardNtNtCshovLROGBtMy_11quinn_proto15bloom_token_log5StateENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB16_.exit, !dbg !8118, !prof !2512

bb.e:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.0.val), !dbg !8119
  br label %_RNvXsc_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_10MutexGuardNtNtCshovLROGBtMy_11quinn_proto15bloom_token_log5StateENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB16_.exit, !dbg !8119

_RNvXsc_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_10MutexGuardNtNtCshovLROGBtMy_11quinn_proto15bloom_token_log5StateENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB16_.exit: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i, %bb.e
  ret void, !dbg !8120
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtBO_5alloc6GlobalEEB2f_(ptr nofree readonly captures(none) %.0.val) unnamed_addr #2 !dbg !143 {
bb.a:
    #dbg_value(ptr poison, !2632, !DIExpression(), !8146)
    #dbg_value(ptr poison, !2637, !DIExpression(), !8122)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 32, !dbg !8153 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !8153, !noundef !2080 ; 3 uses
  %.not.i = icmp eq i64 %i.b, 0, !dbg !8153
  br i1 %.not.i, label %_RNvXNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB8_5DrainppENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtBc_5alloc6GlobalEBV_4dropB1Z_.exit, label %bb.b, !dbg !8153

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %.0.val, !8148, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !8125)
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 16, !dbg !8154
  %i.d = load ptr, ptr %i.c, align 8, !dbg !8154, !nonnull !2080, !noundef !2080 ; 2 uses
    #dbg_value(ptr %i.d, !2640, !DIExpression(), !8126)
    #dbg_value(ptr %i.d, !2651, !DIExpression(), !8128)
    #dbg_value(ptr %i.d, !2657, !DIExpression(), !8130)
    #dbg_value(ptr %i.d, !2662, !DIExpression(), !8132)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !8155 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !8155, !noundef !2080 ; 4 uses
    #dbg_value(i64 %i.f, !2641, !DIExpression(), !8133)
    #dbg_value(i64 %i.f, !2669, !DIExpression(), !8135)
  %i.g = icmp ult i64 %i.f, 164703072086692426, !dbg !8156
  tail call void @llvm.assume(i1 %i.g), !dbg !8157
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 24, !dbg !8158
  %i.i = load i64, ptr %i.h, align 8, !dbg !8158, !noundef !2080 ; 2 uses
    #dbg_value(i64 %i.i, !2642, !DIExpression(), !8136)
    #dbg_value(i64 %i.i, !2695, !DIExpression(), !8138)
  %.not13.i = icmp eq i64 %i.i, %i.f, !dbg !8159
  br i1 %.not13.i, label %bb.c, label %bb.d, !dbg !8159

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.j = phi i64 [ %.pre.i, %bb.d ], [ %i.b, %bb.b ], !dbg !8160
  %i.k = add i64 %i.j, %i.f, !dbg !8161
    #dbg_value(i64 %i.k, !2666, !DIExpression(), !8132)
  store i64 %i.k, ptr %i.e, align 8, !dbg !8162
  br label %_RNvXNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB8_5DrainppENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtBc_5alloc6GlobalEBV_4dropB1Z_.exit, !dbg !8163

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !8164
  %i.m = load ptr, ptr %i.l, align 8, !dbg !8164, !nonnull !2080, !noundef !2080 ; 2 uses
    #dbg_value(ptr %i.m, !2700, !DIExpression(), !8138)
  %i.n = getelementptr inbounds nuw [56 x i8], ptr %i.m, i64 %i.i, !dbg !8165
    #dbg_value(ptr %i.n, !2643, !DIExpression(), !8142)
    #dbg_value(ptr %i.n, !2715, !DIExpression(), !8144)
    #dbg_value(ptr %i.m, !2692, !DIExpression(), !8135)
  %i.o = getelementptr inbounds nuw [56 x i8], ptr %i.m, i64 %i.f, !dbg !8166
    #dbg_value(ptr %i.o, !2645, !DIExpression(), !8145)
    #dbg_value(ptr %i.o, !2718, !DIExpression(), !8144)
    #dbg_value(i64 %i.b, !2719, !DIExpression(), !8144)
  %i.p = mul nuw nsw i64 %i.b, 56, !dbg !8167
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.n, i64 %i.p, i1 false), !dbg !8167
  %.pre.i = load i64, ptr %i.a, align 8, !dbg !8160
  br label %bb.c, !dbg !8168

_RNvXNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB8_5DrainppENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtNtCshovLROGBtMy_11quinn_proto10connection9assembler6BufferNtNtBc_5alloc6GlobalEBV_4dropB1Z_.exit: ; preds = %bb.a, %bb.c
  ret void, !dbg !8169
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal fastcc void @_RINvNtNtCshJYlBnZeDKb_8chacha208backends4avx29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(256) %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !8179 {
.preheader.preheader:
    #dbg_declare(ptr poison, !8602, !DIExpression(DW_OP_LLVM_fragment, 0, 256), !8203)
    #dbg_value(ptr poison, !8670, !DIExpression(), !8219)
    #dbg_value(ptr poison, !8679, !DIExpression(), !8220)
    #dbg_value(ptr poison, !8702, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8221)
    #dbg_value(ptr poison, !8709, !DIExpression(), !8222)
    #dbg_value(ptr poison, !8648, !DIExpression(), !8223)
    #dbg_value(ptr poison, !8713, !DIExpression(), !8234)
    #dbg_value(ptr poison, !8646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8235)
    #dbg_value(ptr poison, !8641, !DIExpression(), !8236)
    #dbg_value(ptr poison, !2790, !DIExpression(), !8240)
    #dbg_value(ptr poison, !2804, !DIExpression(), !8241)
    #dbg_value(ptr poison, !2808, !DIExpression(), !8242)
    #dbg_value(ptr %0, !8582, !DIExpression(), !8728)
    #dbg_value(ptr %1, !8583, !DIExpression(), !8728)
    #dbg_value(ptr %0, !8584, !DIExpression(), !8729)
    #dbg_value(ptr %0, !2812, !DIExpression(), !8244)
    #dbg_value(i64 0, !2815, !DIExpression(), !8244)
    #dbg_value(ptr %0, !8730, !DIExpression(), !8248)
    #dbg_value(<2 x i64> zeroinitializer, !8731, !DIExpression(), !8249)
    #dbg_value(ptr %0, !2823, !DIExpression(), !8251)
    #dbg_value(ptr undef, !2826, !DIExpression(), !8251)
    #dbg_value(i64 16, !2827, !DIExpression(), !8251)
  %.sroa.0.0.copyload.i135 = load <4 x i32>, ptr %0, align 4, !dbg !8967, !noalias !8733
    #dbg_value(<2 x i64> poison, !8731, !DIExpression(), !8249)
    #dbg_value(<2 x i64> poison, !8735, !DIExpression(), !8749)
    #dbg_value(ptr %0, !2812, !DIExpression(), !8261)
    #dbg_value(i64 1, !2815, !DIExpression(), !8261)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !8968
    #dbg_value(ptr %i.a, !8730, !DIExpression(), !8263)
    #dbg_value(<2 x i64> zeroinitializer, !8731, !DIExpression(), !8264)
    #dbg_value(ptr %i.a, !2823, !DIExpression(), !8266)
    #dbg_value(ptr undef, !2826, !DIExpression(), !8266)
    #dbg_value(i64 16, !2827, !DIExpression(), !8266)
  %.sroa.0.0.copyload.i32136 = load <4 x i32>, ptr %i.a, align 4, !dbg !8969, !noalias !8750
    #dbg_value(<2 x i64> poison, !8731, !DIExpression(), !8264)
    #dbg_value(<2 x i64> poison, !8735, !DIExpression(), !8752)
    #dbg_value(ptr %0, !2812, !DIExpression(), !8270)
    #dbg_value(i64 2, !2815, !DIExpression(), !8270)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !8970
    #dbg_value(ptr %i.b, !8730, !DIExpression(), !8272)
    #dbg_value(<2 x i64> zeroinitializer, !8731, !DIExpression(), !8273)
    #dbg_value(ptr %i.b, !2823, !DIExpression(), !8275)
    #dbg_value(ptr undef, !2826, !DIExpression(), !8275)
    #dbg_value(i64 16, !2827, !DIExpression(), !8275)
  %.sroa.0.0.copyload.i33137 = load <4 x i32>, ptr %i.b, align 4, !dbg !8971, !noalias !8753
    #dbg_value(<2 x i64> poison, !8731, !DIExpression(), !8273)
    #dbg_value(<2 x i64> poison, !8735, !DIExpression(), !8755)
    #dbg_value(<4 x i64> poison, !8586, !DIExpression(DW_OP_LLVM_fragment, 0, 256), !8756)
    #dbg_value(<4 x i64> poison, !8586, !DIExpression(DW_OP_LLVM_fragment, 256, 256), !8756)
    #dbg_value(<4 x i64> poison, !8586, !DIExpression(DW_OP_LLVM_fragment, 512, 256), !8756)
    #dbg_value(ptr %0, !2812, !DIExpression(), !8279)
    #dbg_value(i64 3, !2815, !DIExpression(), !8279)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !8972 ; 2 uses
    #dbg_value(ptr %i.c, !8730, !DIExpression(), !8281)
    #dbg_value(<2 x i64> zeroinitializer, !8731, !DIExpression(), !8282)
    #dbg_value(ptr %i.c, !2823, !DIExpression(), !8284)
    #dbg_value(ptr undef, !2826, !DIExpression(), !8284)
    #dbg_value(i64 16, !2827, !DIExpression(), !8284)
  %.sroa.0.0.copyload.i34 = load <2 x i64>, ptr %i.c, align 4, !dbg !8973, !noalias !8759
    #dbg_value(<2 x i64> %.sroa.0.0.copyload.i34, !8731, !DIExpression(), !8282)
    #dbg_value(<2 x i64> %.sroa.0.0.copyload.i34, !8735, !DIExpression(), !8761)
  %i.d = shufflevector <2 x i64> %.sroa.0.0.copyload.i34, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>, !dbg !8974 ; 3 uses
    #dbg_value(<4 x i64> %i.d, !8587, !DIExpression(), !8763)
    #dbg_value(<4 x i64> %i.d, !8764, !DIExpression(), !8770)
    #dbg_value(<4 x i64> %i.d, !8764, !DIExpression(), !8772)
    #dbg_value(<4 x i64> <i64 0, i64 0, i64 1, i64 0>, !8767, !DIExpression(), !8770)
  %i.e = add <4 x i64> %i.d, <i64 0, i64 0, i64 1, i64 0>, !dbg !8975 ; 2 uses
    #dbg_value(<4 x i64> %i.e, !8587, !DIExpression(), !8763)
    #dbg_value(<4 x i64> %i.e, !8764, !DIExpression(), !8772)
    #dbg_value(<4 x i64> %i.e, !8589, !DIExpression(DW_OP_LLVM_fragment, 256, 256), !8773)
    #dbg_value(<4 x i64> %i.e, !8764, !DIExpression(), !8770)
    #dbg_value(i64 0, !2805, !DIExpression(), !8288)
    #dbg_value(i64 0, !2831, !DIExpression(), !8290)
    #dbg_value(i64 0, !2838, !DIExpression(), !8292)
    #dbg_value(i64 1, !2835, !DIExpression(), !8290)
    #dbg_value(i64 1, !2842, !DIExpression(), !8292)
    #dbg_value(i64 1, !8590, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8774)
    #dbg_value(i64 0, !8591, !DIExpression(), !8775)
    #dbg_value(<4 x i64> %i.e, !8589, !DIExpression(DW_OP_LLVM_fragment, 0, 256), !8773)
    #dbg_value(<4 x i64> <i64 2, i64 0, i64 2, i64 0>, !8767, !DIExpression(), !8772)
  %i.f = add <4 x i64> %i.d, <i64 2, i64 0, i64 3, i64 0>, !dbg !8976 ; 2 uses
    #dbg_value(ptr undef, !2808, !DIExpression(), !8242)
    #dbg_value(ptr undef, !2804, !DIExpression(), !8241)
    #dbg_value(ptr undef, !2790, !DIExpression(), !8240)
    #dbg_value(ptr undef, !2795, !DIExpression(), !8240)
    #dbg_value(i64 1, !2805, !DIExpression(), !8288)
    #dbg_value(i64 1, !2831, !DIExpression(), !8290)
    #dbg_value(i64 1, !2838, !DIExpression(), !8292)
    #dbg_value(i64 1, !8591, !DIExpression(), !8775)
    #dbg_value(<4 x i64> %i.f, !8589, !DIExpression(DW_OP_LLVM_fragment, 256, 256), !8773)
    #dbg_value(!DIArgList(<4 x i64> %i.f, <4 x i64> <i64 2, i64 0, i64 2, i64 0>), !8764, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !8772)
    #dbg_value(!DIArgList(<4 x i64> %i.f, <4 x i64> <i64 2, i64 0, i64 2, i64 0>), !8764, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !8770)
    #dbg_value(!DIArgList(<4 x i64> %i.f, <4 x i64> <i64 2, i64 0, i64 2, i64 0>), !8587, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !8763)
    #dbg_value(i64 poison, !8590, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8774)
    #dbg_value(<4 x i64> poison, !8586, !DIExpression(DW_OP_LLVM_fragment, 512, 256), !8756)
    #dbg_value(<4 x i64> poison, !8586, !DIExpression(DW_OP_LLVM_fragment, 256, 256), !8756)
    #dbg_value(<4 x i64> poison, !8586, !DIExpression(DW_OP_LLVM_fragment, 0, 256), !8756)
    #dbg_value(<4 x i64> poison, !8592, !DIExpression(DW_OP_LLVM_fragment, 512, 256), !8776)
    #dbg_value(<4 x i64> poison, !8592, !DIExpression(DW_OP_LLVM_fragment, 768, 256), !8776)
    #dbg_value(<4 x i64> poison, !8592, !DIExpression(DW_OP_LLVM_fragment, 1024, 256), !8776)
    #dbg_value(<4 x i64> %i.e, !8592, !DIExpression(DW_OP_LLVM_fragment, 0, 256), !8776)
    #dbg_value(<4 x i64> %i.f, !8592, !DIExpression(DW_OP_LLVM_fragment, 256, 256), !8776)
    #dbg_value(ptr undef, !8641, !DIExpression(), !8236)
    #dbg_value(ptr %1, !8642, !DIExpression(), !8236)
    #dbg_value(i32 4, !8645, !DIExpression(), !8293)
    #dbg_value(i64 8, !8779, !DIExpression(), !8296)
    #dbg_value(ptr poison, !2790, !DIExpression(), !8300)
    #dbg_value(ptr poison, !2804, !DIExpression(), !8301)
    #dbg_value(ptr poison, !2808, !DIExpression(), !8302)
    #dbg_value(ptr poison, !2790, !DIExpression(), !8306)
    #dbg_value(ptr poison, !2804, !DIExpression(), !8307)
    #dbg_value(ptr poison, !2808, !DIExpression(), !8308)
    #dbg_value(ptr poison, !2790, !DIExpression(), !8312)
    #dbg_value(ptr poison, !2804, !DIExpression(), !8313)
    #dbg_value(ptr poison, !2808, !DIExpression(), !8314)
    #dbg_value(ptr poison, !2790, !DIExpression(), !8318)
    #dbg_value(ptr poison, !2804, !DIExpression(), !8319)
    #dbg_value(ptr poison, !2808, !DIExpression(), !8320)
    #dbg_value(ptr poison, !8785, !DIExpression(), !8330)
    #dbg_value(ptr poison, !8789, !DIExpression(), !8331)
    #dbg_value(ptr poison, !8807, !DIExpression(), !8344)
    #dbg_value(ptr poison, !8812, !DIExpression(), !8345)
    #dbg_value(ptr poison, !8808, !DIExpression(), !8346)
    #dbg_value(ptr poison, !8827, !DIExpression(), !8351)
    #dbg_value(ptr poison, !8828, !DIExpression(), !8352)
    #dbg_value(ptr poison, !8807, !DIExpression(), !8354)
    #dbg_value(ptr poison, !8812, !DIExpression(), !8355)
    #dbg_value(ptr poison, !8808, !DIExpression(), !8356)
    #dbg_value(ptr poison, !8805, !DIExpression(), !8357)
    #dbg_value(ptr undef, !8717, !DIExpression(), !8234)
    #dbg_value(ptr undef, !8713, !DIExpression(), !8234)
    #dbg_value(<4 x i64> zeroinitializer, !8718, !DIExpression(DW_OP_LLVM_fragment, 0, 256), !8358)
    #dbg_value(<4 x i64> zeroinitializer, !8718, !DIExpression(DW_OP_LLVM_fragment, 256, 256), !8358)
    #dbg_value(<4 x i64> zeroinitializer, !8718, !DIExpression(DW_OP_LLVM_fragment, 512, 256), !8358)
    #dbg_value(<4 x i64> zeroinitializer, !8718, !DIExpression(DW_OP_LLVM_fragment, 768, 256), !8358)
    #dbg_value(<4 x i64> zeroinitializer, !8718, !DIExpression(DW_OP_LLVM_fragment, 1024, 256), !8358)
    #dbg_value(<4 x i64> zeroinitializer, !8718, !DIExpression(DW_OP_LLVM_fragment, 1280, 256), !8358)
    #dbg_value(<4 x i64> zeroinitializer, !8718, !DIExpression(DW_OP_LLVM_fragment, 1536, 256), !8358)
    #dbg_value(<4 x i64> zeroinitializer, !8718, !DIExpression(DW_OP_LLVM_fragment, 1792, 256), !8358)
  %.cast = shufflevector <4 x i32> %.sroa.0.0.copyload.i33137, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.g = shufflevector <4 x i32> %.sroa.0.0.copyload.i32136, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.h = shufflevector <4 x i32> %.sroa.0.0.copyload.i135, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
    #dbg_value(ptr undef, !2808, !DIExpression(), !8320)
    #dbg_value(ptr undef, !2804, !DIExpression(), !8319)
    #dbg_value(ptr undef, !2790, !DIExpression(), !8318)
    #dbg_value(ptr undef, !2795, !DIExpression(), !8318)
    #dbg_value(i64 1, !2835, !DIExpression(), !8360)
    #dbg_value(i64 1, !2842, !DIExpression(), !8362)
    #dbg_value(<4 x i64> poison, !8718, !DIExpression(DW_OP_LLVM_fragment, 0, 256), !8358)
    #dbg_value(<4 x i64> poison, !8718, !DIExpression(DW_OP_LLVM_fragment, 256, 256), !8358)
    #dbg_value(<4 x i64> poison, !8718, !DIExpression(DW_OP_LLVM_fragment, 512, 256), !8358)
    #dbg_value(<4 x i64> %i.e, !8718, !DIExpression(DW_OP_LLVM_fragment, 768, 256), !8358)
    #dbg_value(i64 1, !2805, !DIExpression(), !8363)
    #dbg_value(i64 1, !2831, !DIExpression(), !8360)
    #dbg_value(i64 1, !2838, !DIExpression(), !8362)
    #dbg_value(<4 x i64> poison, !8718, !DIExpression(DW_OP_LLVM_fragment, 1024, 256), !8358)
    #dbg_value(<4 x i64> poison, !8718, !DIExpression(DW_OP_LLVM_fragment, 1280, 256), !8358)
    #dbg_value(<4 x i64> poison, !8718, !DIExpression(DW_OP_LLVM_fragment, 1536, 256), !8358)
    #dbg_value(<4 x i64> %i.f, !8718, !DIExpression(DW_OP_LLVM_fragment, 1792, 256), !8358)
    #dbg_value(i64 0, !8721, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8364)
    #dbg_value(ptr undef, !2808, !DIExpression(), !8314)
    #dbg_value(ptr undef, !2804, !DIExpression(), !8313)
    #dbg_value(ptr undef, !2790, !DIExpression(), !8312)
    #dbg_value(ptr undef, !2795, !DIExpression(), !8312)
  br label %bb.a, !dbg !8977

bb.a:                                             ; preds = %bb.a, %.preheader.preheader
  %.sroa.46.0.i = phi <4 x i64> [ %i.f, %.preheader.preheader ], [ %i.cp, %bb.a ], !dbg !8978
  %.sroa.19.0.i = phi <4 x i64> [ %i.e, %.preheader.preheader ], [ %i.cl, %bb.a ], !dbg !8978
  %.sroa.033.072.i = phi i64 [ 0, %.preheader.preheader ], [ %i.o, %bb.a ]
  %i.i = phi <8 x i32> [ %i.h, %.preheader.preheader ], [ %i.cm, %bb.a ]
  %i.j = phi <8 x i32> [ %i.g, %.preheader.preheader ], [ %i.ce, %bb.a ] ; 2 uses
  %i.k = phi <8 x i32> [ %i.h, %.preheader.preheader ], [ %i.cq, %bb.a ]
  %i.l = phi <8 x i32> [ %i.g, %.preheader.preheader ], [ %i.ci, %bb.a ] ; 2 uses
  %i.m = phi <8 x i32> [ %.cast, %.preheader.preheader ], [ %i.cj, %bb.a ]
  %i.n = phi <8 x i32> [ %.cast, %.preheader.preheader ], [ %i.cn, %bb.a ]
    #dbg_value(<4 x i64> %.sroa.19.0.i, !8718, !DIExpression(DW_OP_LLVM_fragment, 768, 256), !8358)
    #dbg_value(<4 x i64> %.sroa.46.0.i, !8718, !DIExpression(DW_OP_LLVM_fragment, 1792, 256), !8358)
    #dbg_value(i64 %.sroa.033.072.i, !8721, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8364)
    #dbg_value(i64 %.sroa.033.072.i, !2805, !DIExpression(), !8365)
    #dbg_value(i64 %.sroa.033.072.i, !2831, !DIExpression(), !8367)
    #dbg_value(i64 %.sroa.033.072.i, !2838, !DIExpression(), !8369)
    #dbg_value(i64 1, !2835, !DIExpression(), !8367)
    #dbg_value(i64 1, !2842, !DIExpression(), !8369)
  %i.o = add nuw nsw i64 %.sroa.033.072.i, 1, !dbg !8979 ; 2 uses
    #dbg_value(i64 %i.o, !8721, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8364)
    #dbg_value(ptr undef, !8805, !DIExpression(), !8357)
    #dbg_value(ptr undef, !8808, !DIExpression(), !8356)
    #dbg_value(<4 x i64> <i64 361421592464458498, i64 940142975169071882, i64 361421592464458498, i64 940142975169071882>, !8809, !DIExpression(), !8370)
    #dbg_value(<4 x i64> <i64 361421592464458498, i64 940142975169071882, i64 361421592464458498, i64 940142975169071882>, !8836, !DIExpression(), !8373)
    #dbg_value(<4 x i64> <i64 433757367256023043, i64 1012478749960636427, i64 433757367256023043, i64 1012478749960636427>, !8810, !DIExpression(), !8374)
    #dbg_value(<4 x i64> <i64 433757367256023043, i64 1012478749960636427, i64 433757367256023043, i64 1012478749960636427>, !8836, !DIExpression(), !8376)
    #dbg_value(ptr undef, !8811, !DIExpression(DW_OP_plus_uconst, 256, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !8377)
    #dbg_value(!DIArgList(ptr undef, i64 128), !8811, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8377)
    #dbg_value(ptr undef, !8812, !DIExpression(), !8355)
    #dbg_value(ptr undef, !8813, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !8378)
    #dbg_value(ptr undef, !8814, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !8379)
    #dbg_value(<4 x i64> poison, !8839, !DIExpression(), !8382)
    #dbg_value(<4 x i64> poison, !8840, !DIExpression(), !8382)
  %i.p = add <8 x i32> %i.j, %i.i, !dbg !8980     ; 2 uses
    #dbg_value(<4 x i64> %.sroa.19.0.i, !8842, !DIExpression(), !8385)
    #dbg_value(<8 x i32> %i.p, !8843, !DIExpression(), !8385)
  %i.q = bitcast <8 x i32> %i.p to <4 x i64>, !dbg !8981
  %i.r = xor <4 x i64> %.sroa.19.0.i, %i.q, !dbg !8982
    #dbg_value(<4 x i64> %i.r, !8837, !DIExpression(), !8373)
  %i.s = bitcast <4 x i64> %i.r to <32 x i8>, !dbg !8983
  %i.t = shufflevector <32 x i8> %i.s, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29>, !dbg !8984 ; 2 uses
    #dbg_value(!DIArgList(ptr undef, i64 256), !8811, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8377)
  %i.u = add <8 x i32> %i.l, %i.k, !dbg !8980     ; 2 uses
    #dbg_value(<4 x i64> %.sroa.46.0.i, !8842, !DIExpression(), !8385)
    #dbg_value(<8 x i32> %i.u, !8843, !DIExpression(), !8385)
  %i.v = bitcast <8 x i32> %i.u to <4 x i64>, !dbg !8981
  %i.w = xor <4 x i64> %.sroa.46.0.i, %i.v, !dbg !8982
    #dbg_value(<4 x i64> %i.w, !8837, !DIExpression(), !8373)
  %i.x = bitcast <4 x i64> %i.w to <32 x i8>, !dbg !8983
  %i.y = shufflevector <32 x i8> %i.x, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29>, !dbg !8984 ; 2 uses
    #dbg_value(!DIArgList(ptr undef, i64 128), !8815, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8386)
    #dbg_value(ptr undef, !8816, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !8387)
    #dbg_value(ptr undef, !8817, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !8388)
    #dbg_value(ptr undef, !8818, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !8389)
    #dbg_value(<4 x i64> poison, !8839, !DIExpression(), !8391)
  %i.z = bitcast <32 x i8> %i.t to <8 x i32>, !dbg !8985
    #dbg_value(<4 x i64> poison, !8840, !DIExpression(), !8391)
  %i.aa = add <8 x i32> %i.m, %i.z, !dbg !8986    ; 2 uses
    #dbg_value(<4 x i64> poison, !8842, !DIExpression(), !8393)
    #dbg_value(<8 x i32> %i.aa, !8843, !DIExpression(), !8393)
    #dbg_value(!DIArgList(<4 x i64> poison, <8 x i32> poison), !8845, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !8396)
  %i.ab = xor <8 x i32> %i.aa, %i.j, !dbg !8987   ; 2 uses
    #dbg_value(!DIArgList(<8 x i32> %i.ab, <8 x i32> splat (i32 12)), !8842, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_stack_value), !8398)
    #dbg_value(!DIArgList(<8 x i32> %i.ab, <8 x i32> splat (i32 20)), !8843, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shr, DW_OP_stack_value), !8398)
  %i.ac = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ab, <8 x i32> %i.ab, <8 x i32> splat (i32 12)), !dbg !8988 ; 2 uses
    #dbg_value(!DIArgList(ptr undef, i64 256), !8815, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8386)
  %i.ad = bitcast <32 x i8> %i.y to <8 x i32>, !dbg !8985
  %i.ae = add <8 x i32> %i.n, %i.ad, !dbg !8986   ; 2 uses
    #dbg_value(<8 x i32> %i.ae, !8843, !DIExpression(), !8393)
  %i.af = xor <8 x i32> %i.ae, %i.l, !dbg !8987   ; 2 uses
    #dbg_value(!DIArgList(<8 x i32> %i.af, <8 x i32> splat (i32 12)), !8842, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_stack_value), !8398)
    #dbg_value(!DIArgList(<8 x i32> %i.af, <8 x i32> splat (i32 20)), !8843, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shr, DW_OP_stack_value), !8398)
  %i.ag = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.af, <8 x i32> %i.af, <8 x i32> splat (i32 12)), !dbg !8988 ; 2 uses
    #dbg_value(!DIArgList(ptr undef, i64 128), !8819, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8399)
    #dbg_value(ptr undef, !8807, !DIExpression(), !8354)
    #dbg_value(ptr undef, !8820, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !8400)
    #dbg_value(ptr undef, !8821, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !8401)
    #dbg_value(<4 x i64> poison, !8839, !DIExpression(), !8403)
    #dbg_value(<4 x i64> poison, !8840, !DIExpression(), !8403)
  %i.ah = add <8 x i32> %i.ac, %i.p, !dbg !8989   ; 2 uses
    #dbg_value(<32 x i8> %i.t, !8842, !DIExpression(), !8405)
    #dbg_value(<8 x i32> %i.ah, !8843, !DIExpression(), !8405)
    #dbg_value(!DIArgList(<32 x i8> %i.t, <8 x i32> %i.ah), !8837, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !8376)
  %i.ai = bitcast <8 x i32> %i.ah to <32 x i8>, !dbg !8990
  %i.aj = xor <32 x i8> %i.t, %i.ai, !dbg !8990
  %i.ak = shufflevector <32 x i8> %i.aj, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>, !dbg !8991
    #dbg_value(<32 x i8> %i.ak, !8718, !DIExpression(DW_OP_LLVM_fragment, 768, 256), !8358)
    #dbg_value(!DIArgList(ptr undef, i64 256), !8819, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8399)
  %i.al = add <8 x i32> %i.ag, %i.u, !dbg !8989   ; 2 uses
    #dbg_value(<32 x i8> %i.y, !8842, !DIExpression(), !8405)
    #dbg_value(<8 x i32> %i.al, !8843, !DIExpression(), !8405)
    #dbg_value(!DIArgList(<32 x i8> %i.y, <8 x i32> %i.al), !8837, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !8376)
  %i.am = bitcast <8 x i32> %i.al to <32 x i8>, !dbg !8990
  %i.an = xor <32 x i8> %i.y, %i.am, !dbg !8990
  %i.ao = shufflevector <32 x i8> %i.an, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>, !dbg !8991
    #dbg_value(<32 x i8> %i.ao, !8718, !DIExpression(DW_OP_LLVM_fragment, 1792, 256), !8358)
    #dbg_value(!DIArgList(ptr undef, i64 128), !8822, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8406)
    #dbg_value(ptr undef, !8823, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !8407)
    #dbg_value(ptr undef, !8824, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !8408)
    #dbg_value(ptr undef, !8825, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !8409)
    #dbg_value(<4 x i64> poison, !8839, !DIExpression(), !8411)
  %i.ap = bitcast <32 x i8> %i.ak to <8 x i32>, !dbg !8992 ; 2 uses
    #dbg_value(<4 x i64> poison, !8840, !DIExpression(), !8411)
  %i.aq = add <8 x i32> %i.aa, %i.ap, !dbg !8993  ; 2 uses
    #dbg_value(<4 x i64> poison, !8842, !DIExpression(), !8413)
    #dbg_value(<8 x i32> %i.aq, !8843, !DIExpression(), !8413)
    #dbg_value(!DIArgList(<4 x i64> poison, <8 x i32> poison), !8849, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !8416)
  %i.ar = xor <8 x i32> %i.aq, %i.ac, !dbg !8994  ; 2 uses
    #dbg_value(!DIArgList(<8 x i32> %i.ar, <8 x i32> splat (i32 7)), !8842, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_stack_value), !8418)
    #dbg_value(!DIArgList(<8 x i32> %i.ar, <8 x i32> splat (i32 25)), !8843, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shr, DW_OP_stack_value), !8418)
  %i.as = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ar, <8 x i32> %i.ar, <8 x i32> splat (i32 7)), !dbg !8995 ; 2 uses
    #dbg_value(!DIArgList(ptr undef, i64 256), !8822, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8406)
  %i.at = bitcast <32 x i8> %i.ao to <8 x i32>, !dbg !8992 ; 2 uses
  %i.au = add <8 x i32> %i.ae, %i.at, !dbg !8993  ; 2 uses
    #dbg_value(<8 x i32> %i.au, !8843, !DIExpression(), !8413)
  %i.av = xor <8 x i32> %i.au, %i.ag, !dbg !8994  ; 2 uses
    #dbg_value(!DIArgList(<8 x i32> %i.av, <8 x i32> splat (i32 7)), !8842, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_stack_value), !8418)
    #dbg_value(!DIArgList(<8 x i32> %i.av, <8 x i32> splat (i32 25)), !8843, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shr, DW_OP_stack_value), !8418)
  %i.aw = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.av, <8 x i32> %i.av, <8 x i32> splat (i32 7)), !dbg !8995 ; 2 uses
    #dbg_value(ptr poison, !8822, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8406)
    #dbg_value(ptr undef, !8828, !DIExpression(), !8352)
    #dbg_value(ptr undef, !8829, !DIExpression(DW_OP_plus_uconst, 256, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !8419)
    #dbg_value(!DIArgList(ptr undef, i64 128), !8829, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8419)
    #dbg_value(ptr undef, !8827, !DIExpression(), !8351)
    #dbg_value(ptr undef, !8830, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !8420)
    #dbg_value(ptr undef, !8831, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !8421)
    #dbg_value(<4 x i64> poison, !8851, !DIExpression(), !8426)
  %i.ax = shufflevector <8 x i32> %i.aq, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>, !dbg !8996
    #dbg_value(<4 x i64> poison, !8858, !DIExpression(), !8430)
  %i.ay = shufflevector <8 x i32> %i.ap, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>, !dbg !8997
    #dbg_value(<8 x i32> %i.ay, !8718, !DIExpression(DW_OP_LLVM_fragment, 768, 256), !8358)
    #dbg_value(<4 x i64> poison, !8862, !DIExpression(), !8434)
  %i.az = shufflevector <8 x i32> %i.ah, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6>, !dbg !8998
    #dbg_value(!DIArgList(ptr undef, i64 256), !8829, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8419)
  %i.ba = shufflevector <8 x i32> %i.au, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>, !dbg !8996
  %i.bb = shufflevector <8 x i32> %i.at, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>, !dbg !8997
    #dbg_value(<8 x i32> %i.bb, !8718, !DIExpression(DW_OP_LLVM_fragment, 1792, 256), !8358)
  %i.bc = shufflevector <8 x i32> %i.al, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6>, !dbg !8998
    #dbg_value(ptr poison, !8829, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8419)
    #dbg_value(ptr undef, !8808, !DIExpression(), !8346)
    #dbg_value(<4 x i64> <i64 361421592464458498, i64 940142975169071882, i64 361421592464458498, i64 940142975169071882>, !8809, !DIExpression(), !8435)
    #dbg_value(<4 x i64> <i64 361421592464458498, i64 940142975169071882, i64 361421592464458498, i64 940142975169071882>, !8836, !DIExpression(), !8437)
    #dbg_value(<4 x i64> <i64 433757367256023043, i64 1012478749960636427, i64 433757367256023043, i64 1012478749960636427>, !8810, !DIExpression(), !8438)
    #dbg_value(<4 x i64> <i64 433757367256023043, i64 1012478749960636427, i64 433757367256023043, i64 1012478749960636427>, !8836, !DIExpression(), !8440)
    #dbg_value(ptr undef, !8811, !DIExpression(DW_OP_plus_uconst, 256, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !8441)
    #dbg_value(!DIArgList(ptr undef, i64 128), !8811, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8441)
    #dbg_value(ptr undef, !8812, !DIExpression(), !8345)
    #dbg_value(ptr undef, !8813, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !8442)
    #dbg_value(ptr undef, !8814, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !8443)
    #dbg_value(<4 x i64> poison, !8839, !DIExpression(), !8445)
    #dbg_value(<4 x i64> poison, !8840, !DIExpression(), !8445)
  %i.bd = add <8 x i32> %i.as, %i.az, !dbg !8999  ; 2 uses
    #dbg_value(<8 x i32> %i.ay, !8842, !DIExpression(), !8447)
    #dbg_value(<8 x i32> %i.bd, !8843, !DIExpression(), !8447)
  %i.be = xor <8 x i32> %i.bd, %i.ay, !dbg !9000
    #dbg_value(<8 x i32> %i.be, !8837, !DIExpression(), !8437)
  %i.bf = bitcast <8 x i32> %i.be to <32 x i8>, !dbg !9001
  %i.bg = shufflevector <32 x i8> %i.bf, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29>, !dbg !9002 ; 2 uses
    #dbg_value(!DIArgList(ptr undef, i64 256), !8811, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8441)
  %i.bh = add <8 x i32> %i.aw, %i.bc, !dbg !8999  ; 2 uses
    #dbg_value(<8 x i32> %i.bb, !8842, !DIExpression(), !8447)
    #dbg_value(<8 x i32> %i.bh, !8843, !DIExpression(), !8447)
  %i.bi = xor <8 x i32> %i.bh, %i.bb, !dbg !9000
    #dbg_value(<8 x i32> %i.bi, !8837, !DIExpression(), !8437)
  %i.bj = bitcast <8 x i32> %i.bi to <32 x i8>, !dbg !9001
  %i.bk = shufflevector <32 x i8> %i.bj, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29>, !dbg !9002 ; 2 uses
    #dbg_value(!DIArgList(ptr undef, i64 128), !8815, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8448)
    #dbg_value(ptr undef, !8816, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !8449)
    #dbg_value(ptr undef, !8817, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !8450)
    #dbg_value(ptr undef, !8818, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !8451)
    #dbg_value(<4 x i64> poison, !8839, !DIExpression(), !8453)
  %i.bl = bitcast <32 x i8> %i.bg to <8 x i32>, !dbg !9003
    #dbg_value(<4 x i64> poison, !8840, !DIExpression(), !8453)
  %i.bm = add <8 x i32> %i.ax, %i.bl, !dbg !9004  ; 2 uses
    #dbg_value(<4 x i64> poison, !8842, !DIExpression(), !8455)
    #dbg_value(<8 x i32> %i.bm, !8843, !DIExpression(), !8455)
    #dbg_value(!DIArgList(<4 x i64> poison, <8 x i32> poison), !8845, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !8457)
  %i.bn = xor <8 x i32> %i.bm, %i.as, !dbg !9005  ; 2 uses
    #dbg_value(!DIArgList(<8 x i32> %i.bn, <8 x i32> splat (i32 12)), !8842, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_stack_value), !8459)
    #dbg_value(!DIArgList(<8 x i32> %i.bn, <8 x i32> splat (i32 20)), !8843, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shr, DW_OP_stack_value), !8459)
  %i.bo = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.bn, <8 x i32> %i.bn, <8 x i32> splat (i32 12)), !dbg !9006 ; 2 uses
    #dbg_value(!DIArgList(ptr undef, i64 256), !8815, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8448)
  %i.bp = bitcast <32 x i8> %i.bk to <8 x i32>, !dbg !9003
  %i.bq = add <8 x i32> %i.ba, %i.bp, !dbg !9004  ; 2 uses
    #dbg_value(<8 x i32> %i.bq, !8843, !DIExpression(), !8455)
  %i.br = xor <8 x i32> %i.bq, %i.aw, !dbg !9005  ; 2 uses
end_hunk_0
begin_hunk_1_@llvm.usub.sat.i32
!8570 = distinct !{!8570, i1 true, !"_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrONtNtNtB6_9core_arch3x867___m128i15write_unalignedCshovLROGBtMy_11quinn_proto"}
!8571 = distinct !{!8571, !8570, !"_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrONtNtNtB6_9core_arch3x867___m128i15write_unalignedCshovLROGBtMy_11quinn_proto: argument 0"}
!8572 = distinct !DILocation(line: 1465, column: 18, scope: !187, inlinedAt: !8567)
!8573 = distinct !DILocation(line: 2057, column: 14, scope: !190, inlinedAt: !8572)
!8574 = distinct !DISubprogram(name: "_mm256_extract_epi32<0>", linkageName: "_RINvNtNtNtCskKLDkoKarTP_4core9core_arch3x863avx20__mm256_extract_epi32Kl0_ECshovLROGBtMy_11quinn_proto", scope: !8961, file: !8959, line: 1082, type: !8963, scopeLine: 1082, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !103, templateParams: !2080, retainedNodes: !8964)
!8575 = distinct !DILocation(line: 110, column: 22, scope: !8171)
!8576 = distinct !DILocation(line: 1082, column: 53, scope: !8574, inlinedAt: !8575)
!8577 = distinct !DISubprogram(name: "_mm256_extract_epi32<1>", linkageName: "_RINvNtNtNtCskKLDkoKarTP_4core9core_arch3x863avx20__mm256_extract_epi32Kl1_ECshovLROGBtMy_11quinn_proto", scope: !8961, file: !8959, line: 1082, type: !8963, scopeLine: 1082, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !103, templateParams: !2080, retainedNodes: !8966)
!8578 = distinct !DILocation(line: 111, column: 22, scope: !8171)
!8579 = distinct !DILocation(line: 1082, column: 53, scope: !8577, inlinedAt: !8578)
!8580 = !DIFile(filename: "src/backends/avx2.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/chacha20-0.10.1", checksumkind: CSK_MD5, checksum: "5475b59074661dfbf620f755aee7cf11")
!8581 = !DINamespace(name: "avx2", scope: !2722)
!8582 = !DILocalVariable(name: "core", arg: 1, scope: !8179, file: !8580, line: 84, type: !2723)
!8583 = !DILocalVariable(name: "buffer", arg: 2, scope: !8179, file: !8580, line: 84, type: !2727)
!8584 = !DILocalVariable(name: "state_ptr", scope: !8178, file: !8580, line: 89, type: !2756, align: 64)
!8585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8176, size: 768, align: 256, elements: !2758)
!8586 = !DILocalVariable(name: "v", scope: !8177, file: !8580, line: 90, type: !8585, align: 256)
!8587 = !DILocalVariable(name: "c", scope: !8175, file: !8580, line: 95, type: !8176, align: 256)
!8588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8176, size: 512, align: 256, elements: !2760)
!8589 = !DILocalVariable(name: "ctr", scope: !8174, file: !8580, line: 97, type: !8588, align: 256)
!8590 = !DILocalVariable(name: "iter", scope: !8173, file: !8580, line: 98, type: !172, align: 64)
!8591 = !DILocalVariable(name: "i", scope: !8172, file: !8580, line: 98, type: !2074, align: 64)
!8592 = !DILocalVariable(name: "backend", scope: !8171, file: !8580, line: 102, type: !8170, align: 256)
!8593 = !{!8582, !8583, !8584, !8586, !8587, !8589, !8590, !8591, !8592}
!8594 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !8170, file: !1615, baseType: !8585, size: 768, align: 256, offset: 512, flags: DIFlagPrivate)
!8595 = !DIDerivedType(tag: DW_TAG_member, name: "ctr", scope: !8170, file: !1615, baseType: !8588, size: 512, align: 256, flags: DIFlagPrivate)
!8596 = !DIDerivedType(tag: DW_TAG_member, name: "_pd", scope: !8170, file: !1615, baseType: !167, align: 8, offset: 1280, flags: DIFlagPrivate)
!8597 = !{!8594, !8595, !8596}
!8598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2371, size: 256, align: 64, elements: !2770)
!8599 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !8176, file: !1615, baseType: !8598, size: 256, align: 64, flags: DIFlagPrivate)
!8600 = !{!8599}
!8602 = !DILocalVariable(name: "iter", scope: !8201, file: !8580, line: 195, type: !8187, align: 256)
!8603 = !DINamespace(name: "iter", scope: !2409)
!8604 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !8187, file: !1615, baseType: !8186, size: 2304, align: 256, flags: DIFlagPrivate)
!8605 = !{!8604}
!8606 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !8186, file: !1615, baseType: !8185, size: 2304, align: 256, flags: DIFlagPrivate)
!8607 = !{!8606}
!8608 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !8185, file: !1615, baseType: !8184, size: 2304, align: 256, flags: DIFlagPrivate)
!8609 = !{!8608}
!8610 = !DINamespace(name: "iter_inner", scope: !8603)
!8611 = !DIDerivedType(tag: DW_TAG_member, name: "alive", scope: !8184, file: !1615, baseType: !8183, size: 128, align: 64, flags: DIFlagPrivate)
!8612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8182, size: 2048, align: 256, elements: !2760)
!8613 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !8184, file: !1615, baseType: !8612, size: 2048, align: 256, offset: 256, flags: DIFlagPrivate)
!8614 = !{!8611, !8613}
!8615 = !DIDerivedType(tag: DW_TAG_member, name: "uninit", scope: !8182, file: !1615, baseType: !2071, align: 8)
!8616 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !8182, file: !1615, baseType: !8181, size: 1024, align: 256)
!8617 = !{!8615, !8616}
!8618 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !8181, file: !1615, baseType: !8180, size: 1024, align: 256, flags: DIFlagPrivate)
!8619 = !{!8618}
!8620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8176, size: 1024, align: 256, elements: !2770)
!8621 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !8180, file: !1615, baseType: !8620, size: 1024, align: 256, flags: DIFlagPrivate)
!8622 = !{!8621}
!8623 = !DITemplateTypeParameter(name: "P", type: !8620)
!8624 = !{!8623}
!8625 = !DITemplateTypeParameter(name: "T", type: !8620)
!8626 = !{!8625}
!8627 = !DINamespace(name: "index_range", scope: !2416)
!8628 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !8183, file: !1615, baseType: !2074, size: 64, align: 64, flags: DIFlagPrivate)
!8629 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !8183, file: !1615, baseType: !2074, size: 64, align: 64, offset: 64, flags: DIFlagPrivate)
!8630 = !{!8628, !8629}
!8631 = !DITemplateTypeParameter(name: "DATA", type: !8612)
!8632 = !{!8631}
!8633 = !DITemplateTypeParameter(name: "P", type: !8184)
!8634 = !{!8633}
!8635 = !DITemplateTypeParameter(name: "T", type: !8184)
!8636 = !{!8635}
!8637 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut chacha20::backends::avx2::Backend<chacha20::R12, chacha20::variants::Legacy>", baseType: !8170, size: 64, align: 64, dwarfAddressSpace: 0)
!8638 = !{null, !8637, !2727}
!8639 = !DISubroutineType(types: !8638)
!8640 = !DISubprogram(name: "rng_gen_par_ks_blocks<chacha20::R12, chacha20::variants::Legacy>", linkageName: "_RNvMNtNtCshJYlBnZeDKb_8chacha208backends4avx2INtB2_7BackendNtB6_3R12NtNtB6_8variants6LegacyE21rng_gen_par_ks_blocksCshovLROGBtMy_11quinn_proto", scope: !8170, file: !8580, line: 185, type: !8639, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !2755)
!8641 = !DILocalVariable(name: "self", arg: 1, scope: !8197, file: !8580, line: 185, type: !8637)
!8642 = !DILocalVariable(name: "blocks", arg: 2, scope: !8197, file: !8580, line: 185, type: !2727)
!8643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8620, size: 2048, align: 256, elements: !2760)
!8644 = !DILocalVariable(name: "vs", scope: !8198, file: !8580, line: 187, type: !8643, align: 256)
!8645 = !DILocalVariable(name: "pb", scope: !8199, file: !8580, line: 189, type: !2777, align: 32)
!8646 = !DILocalVariable(name: "iter", scope: !8196, file: !8580, line: 190, type: !8195, align: 64)
!8647 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::core_arch::x86::__m256i", baseType: !8176, size: 64, align: 64, dwarfAddressSpace: 0)
!8648 = !DILocalVariable(name: "c", scope: !8192, file: !8580, line: 190, type: !8647, align: 64)
!8649 = !DILocalVariable(name: "block_ptr", scope: !8200, file: !8580, line: 194, type: !2778, align: 64)
!8650 = !DILocalVariable(name: "v", scope: !8191, file: !8580, line: 195, type: !8620, align: 256)
!8651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 1024, align: 128, elements: !2780)
!8652 = !DILocalVariable(name: "t", scope: !8190, file: !8580, line: 196, type: !8651, align: 128)
!8653 = !DILocalVariable(name: "iter", scope: !8189, file: !8580, line: 197, type: !172, align: 64)
!8654 = !DILocalVariable(name: "i", scope: !8188, file: !8580, line: 197, type: !2074, align: 64)
!8655 = !{!8641, !8642, !8644, !8645, !8646, !8648, !8649, !8602, !8650, !8652, !8653, !8654}
!8656 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !8195, file: !1615, baseType: !8194, size: 64, align: 64, flags: DIFlagPrivate)
!8657 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut core::core_arch::x86::__m256i", baseType: !8176, size: 64, align: 64, dwarfAddressSpace: 0)
!8658 = !DIDerivedType(tag: DW_TAG_member, name: "end_or_len", scope: !8195, file: !1615, baseType: !8657, size: 64, align: 64, offset: 64, flags: DIFlagPrivate)
!8659 = !DIDerivedType(tag: DW_TAG_member, name: "_marker", scope: !8195, file: !1615, baseType: !8193, align: 8, offset: 128, flags: DIFlagPrivate)
!8660 = !{!8656, !8658, !8659}
!8661 = !DITemplateTypeParameter(name: "T", type: !8647)
!8662 = !{!8661}
!8663 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const core::core_arch::x86::__m256i", baseType: !8176, size: 64, align: 64, dwarfAddressSpace: 0)
!8664 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !8194, file: !1615, baseType: !8663, size: 64, align: 64, flags: DIFlagPrivate)
!8665 = !{!8664}
!8666 = !DITemplateTypeParameter(name: "T", type: !8176)
!8667 = !{!8666}
!8668 = !DIFile(filename: "library/core/src/ops/index_range.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "0cbb503d6203e487667028bd8e76f0d1")
!8669 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::ops::index_range::IndexRange", baseType: !8183, size: 64, align: 64, dwarfAddressSpace: 0)
!8670 = !DILocalVariable(name: "self", arg: 1, scope: !8205, file: !8668, line: 58, type: !8669)
!8671 = !{!2074, !8669}
!8672 = !DISubroutineType(types: !8671)
!8673 = !DISubprogram(name: "next_unchecked", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ops11index_rangeNtB2_10IndexRange14next_unchecked", scope: !8183, file: !8668, line: 58, type: !8672, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !2080)
!8674 = !DILocalVariable(name: "value", scope: !8204, file: !8668, line: 61, type: !2074, align: 64)
!8675 = !{!8670, !8674}
!8676 = !DINamespace(name: "{impl#1}", scope: !8627)
!8677 = !{!177, !8669}
!8678 = !DISubroutineType(types: !8677)
!8679 = !DILocalVariable(name: "self", arg: 1, scope: !8206, file: !8668, line: 130, type: !8669)
!8680 = !{!8679}
!8681 = !DIFile(filename: "library/core/src/array/iter/iter_inner.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "48722c666ec792ae4b3ada9f644ba487")
!8682 = !DIDerivedType(tag: DW_TAG_member, name: "alive", scope: !8207, file: !1615, baseType: !8183, size: 128, align: 64, flags: DIFlagPrivate)
!8683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8182, align: 256, elements: !2688)
!8684 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !8207, file: !1615, baseType: !8683, align: 256, offset: 256, flags: DIFlagPrivate)
!8685 = !{!8682, !8684}
!8686 = !DITemplateTypeParameter(name: "DATA", type: !8683)
!8687 = !{!8686}
!8688 = !{!8212, !8208}
!8689 = !DISubroutineType(types: !8688)
!8690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8207, size: 64, align: 64, dwarfAddressSpace: 0)
!8691 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !8208, file: !1615, baseType: !8690, size: 64, align: 64)
!8692 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !8208, file: !1615, baseType: !2074, size: 64, align: 64, offset: 64)
!8693 = !{!8691, !8692}
!8694 = !{!8211}
!8695 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !8211, file: !1615, baseType: !8210, size: 1280, align: 256, extraData: i8 0)
!8696 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !8211, file: !1615, baseType: !8209, size: 1280, align: 256, extraData: i8 1)
!8697 = !{!8695, !8696}
!8698 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !8209, file: !1615, baseType: !8620, size: 1024, align: 256, offset: 256, flags: DIFlagPublic)
!8699 = !{!8698}
!8700 = !DIDerivedType(tag: DW_TAG_member, scope: !8212, file: !1615, baseType: !1618, size: 8, align: 8, flags: DIFlagArtificial)
!8701 = !DISubprogram(name: "next<[core::core_arch::x86::__m256i; 4]>", linkageName: "_RNvMs8_NtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitANtNtNtBb_9core_arch3x867___m256ij4_EE4nextCshovLROGBtMy_11quinn_proto", scope: !8207, file: !8681, line: 206, type: !8689, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !8626)
!8702 = !DILocalVariable(name: "self", arg: 1, scope: !8213, file: !8681, line: 206, type: !8208)
!8703 = !{!8702}
!8704 = !DIFile(filename: "library/core/src/array/iter.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "c1dd90260bb3443fb9d4fc76ebd1ded3")
!8705 = !DINamespace(name: "{impl#5}", scope: !8603)
!8706 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::array::iter::IntoIter<[core::core_arch::x86::__m256i; 4], 2>", baseType: !8187, size: 64, align: 64, dwarfAddressSpace: 0)
!8707 = !{!8212, !8706}
!8708 = !DISubroutineType(types: !8707)
!8709 = !DILocalVariable(name: "self", arg: 1, scope: !8214, file: !8704, line: 245, type: !8706)
!8710 = !{!8709}
!8711 = !DILexicalBlockFile(scope: !8201, file: !8580, discriminator: 2)
!8712 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&[core::core_arch::x86::__m256i; 2]", baseType: !8588, size: 64, align: 64, dwarfAddressSpace: 0)
!8713 = !DILocalVariable(name: "c", arg: 2, scope: !8232, file: !8580, line: 209, type: !8712)
!8714 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&[core::core_arch::x86::__m256i; 3]", baseType: !8585, size: 64, align: 64, dwarfAddressSpace: 0)
!8715 = !{!8643, !8714, !8712}
!8716 = !DISubroutineType(types: !8715)
!8717 = !DILocalVariable(name: "v", arg: 1, scope: !8232, file: !8580, line: 209, type: !8714)
!8718 = !DILocalVariable(name: "vs", scope: !8231, file: !8580, line: 210, type: !8643, align: 256)
!8719 = !DILocalVariable(name: "iter", scope: !8230, file: !8580, line: 211, type: !172, align: 64)
!8720 = !DILocalVariable(name: "i", scope: !8229, file: !8580, line: 211, type: !2074, align: 64)
!8721 = !DILocalVariable(name: "iter", scope: !8228, file: !8580, line: 214, type: !172, align: 64)
!8722 = !DILocalVariable(name: "iter", scope: !8227, file: !8580, line: 218, type: !172, align: 64)
!8723 = !DILocalVariable(name: "i", scope: !8226, file: !8580, line: 218, type: !2074, align: 64)
!8724 = !DILocalVariable(name: "iter", scope: !8225, file: !8580, line: 219, type: !172, align: 64)
!8725 = !DILocalVariable(name: "j", scope: !8224, file: !8580, line: 219, type: !2074, align: 64)
!8726 = !{!8717, !8713, !8718, !8719, !8720, !8721, !8722, !8723, !8724, !8725}
!8727 = !{!2753}
!8728 = !DILocation(line: 0, scope: !8179)
!8729 = !DILocation(line: 0, scope: !8178)
!8730 = !DILocalVariable(name: "mem_addr", arg: 1, scope: !8246, file: !2819, line: 1339, type: !2756)
!8731 = !DILocalVariable(name: "dst", scope: !8245, file: !2819, line: 1340, type: !173, align: 128)
!8732 = !{!8730, !8731}
!8733 = !{!8253}
!8734 = !DIFile(filename: "library/core/src/../../stdarch/crates/core_arch/src/x86/avx2.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "18ed3b1487b9900bdb9d19b7fdd96a2b")
!8735 = !DILocalVariable(name: "a", arg: 1, scope: !8259, file: !8734, line: 589, type: !173)
!8736 = !DINamespace(name: "avx2", scope: !2768)
!8737 = !{!8176, !173}
!8738 = !DISubroutineType(types: !8737)
!8739 = !DILocalVariable(name: "ret", scope: !8258, file: !8734, line: 591, type: !8257, align: 256)
!8740 = !DILocalVariable(name: "ret", scope: !8256, file: !8734, line: 591, type: !8257, align: 256)
!8741 = !DILocalVariable(name: "ret", scope: !8255, file: !8734, line: 591, type: !8257, align: 256)
!8742 = !DILocalVariable(name: "ret", scope: !8254, file: !8734, line: 591, type: !8257, align: 256)
!8743 = !{!8735, !8739, !8740, !8741, !8742}
!8744 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !8257, file: !1615, baseType: !8598, size: 256, align: 64, flags: DIFlagPrivate)
!8745 = !{!8744}
!8746 = !DITemplateTypeParameter(name: "T", type: !2371)
!8747 = !{!8746}
!8748 = !DILocation(line: 91, column: 9, scope: !8178)
!8749 = !DILocation(line: 0, scope: !8259, inlinedAt: !8748)
!8750 = !{!8268}
!8751 = !DILocation(line: 92, column: 9, scope: !8178)
!8752 = !DILocation(line: 0, scope: !8259, inlinedAt: !8751)
!8753 = !{!8277}
!8754 = !DILocation(line: 93, column: 9, scope: !8178)
!8755 = !DILocation(line: 0, scope: !8259, inlinedAt: !8754)
!8756 = !DILocation(line: 0, scope: !8177)
!8759 = !{!8286}
!8760 = !DILocation(line: 95, column: 17, scope: !8177)
!8761 = !DILocation(line: 0, scope: !8259, inlinedAt: !8760)
!8762 = !DILexicalBlockFile(scope: !8259, file: !2830, discriminator: 0)
!8763 = !DILocation(line: 0, scope: !8175)
!8764 = !DILocalVariable(name: "a", arg: 1, scope: !8287, file: !8734, line: 83, type: !8176)
!8765 = !{!8176, !8176, !8176}
!8766 = !DISubroutineType(types: !8765)
!8767 = !DILocalVariable(name: "b", arg: 2, scope: !8287, file: !8734, line: 83, type: !8176)
!8768 = !{!8764, !8767}
!8769 = !DILocation(line: 96, column: 9, scope: !8175)
!8770 = !DILocation(line: 0, scope: !8287, inlinedAt: !8769)
!8771 = !DILocation(line: 100, column: 13, scope: !8172)
!8772 = !DILocation(line: 0, scope: !8287, inlinedAt: !8771)
!8773 = !DILocation(line: 0, scope: !8174)
!8774 = !DILocation(line: 0, scope: !8173)
!8775 = !DILocation(line: 0, scope: !8172)
!8776 = !DILocation(line: 0, scope: !8171)
!8779 = !DILocalVariable(name: "count", scope: !8294, file: !2668, line: 937, type: !2074, align: 64)
!8780 = !{!2778, !2778, !2074, !2672}
!8781 = !DISubroutineType(types: !8780)
!8782 = !DILocalVariable(name: "self", arg: 1, scope: !8294, file: !2668, line: 937, type: !2778)
!8783 = !DILocalVariable(name: "count", arg: 2, scope: !8294, file: !2668, line: 937, type: !2074)
!8784 = !{!8782, !8783, !8779}
!8785 = !DILocalVariable(name: "a", scope: !8326, file: !8580, line: 304, type: !8647, align: 64)
!8786 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut [[core::core_arch::x86::__m256i; 4]; 2]", baseType: !8643, size: 64, align: 64, dwarfAddressSpace: 0)
!8787 = !{null, !8786}
!8788 = !DISubroutineType(types: !8787)
!8789 = !DILocalVariable(name: "vs", arg: 1, scope: !8324, file: !8580, line: 302, type: !8786)
!8790 = !DILocalVariable(name: "iter", scope: !8325, file: !8580, line: 304, type: !8323, align: 64)
!8791 = !DILocalVariable(name: "c", scope: !8326, file: !8580, line: 304, type: !8647, align: 64)
!8792 = !DILocalVariable(name: "d", scope: !8326, file: !8580, line: 304, type: !8647, align: 64)
!8793 = !{!8789, !8790, !8785, !8791, !8792}
!8794 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !8323, file: !1615, baseType: !8322, size: 64, align: 64, flags: DIFlagPrivate)
!8795 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut [core::core_arch::x86::__m256i; 4]", baseType: !8620, size: 64, align: 64, dwarfAddressSpace: 0)
!8796 = !DIDerivedType(tag: DW_TAG_member, name: "end_or_len", scope: !8323, file: !1615, baseType: !8795, size: 64, align: 64, offset: 64, flags: DIFlagPrivate)
!8797 = !DIDerivedType(tag: DW_TAG_member, name: "_marker", scope: !8323, file: !1615, baseType: !8321, align: 8, offset: 128, flags: DIFlagPrivate)
!8798 = !{!8794, !8796, !8797}
!8799 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut [core::core_arch::x86::__m256i; 4]", baseType: !8620, size: 64, align: 64, dwarfAddressSpace: 0)
!8800 = !DITemplateTypeParameter(name: "T", type: !8799)
!8801 = !{!8800}
!8802 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const [core::core_arch::x86::__m256i; 4]", baseType: !8620, size: 64, align: 64, dwarfAddressSpace: 0)
!8803 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !8322, file: !1615, baseType: !8802, size: 64, align: 64, flags: DIFlagPrivate)
!8804 = !{!8803}
!8805 = !DILocalVariable(name: "v", arg: 1, scope: !8327, file: !8580, line: 230, type: !8786)
!8806 = !{!8805}
!8807 = !DILocalVariable(name: "a", scope: !8342, file: !8580, line: 342, type: !8647, align: 64)
!8808 = !DILocalVariable(name: "vs", arg: 1, scope: !8338, file: !8580, line: 313, type: !8786)
!8809 = !DILocalVariable(name: "rol16_mask", scope: !8339, file: !8580, line: 314, type: !8176, align: 256)
!8810 = !DILocalVariable(name: "rol8_mask", scope: !8340, file: !8580, line: 320, type: !8176, align: 256)
!8811 = !DILocalVariable(name: "iter", scope: !8337, file: !8580, line: 328, type: !8323, align: 64)
!8812 = !DILocalVariable(name: "a", scope: !8336, file: !8580, line: 328, type: !8647, align: 64)
!8813 = !DILocalVariable(name: "b", scope: !8336, file: !8580, line: 328, type: !8647, align: 64)
!8814 = !DILocalVariable(name: "d", scope: !8336, file: !8580, line: 328, type: !8647, align: 64)
!8815 = !DILocalVariable(name: "iter", scope: !8335, file: !8580, line: 335, type: !8323, align: 64)
!8816 = !DILocalVariable(name: "b", scope: !8334, file: !8580, line: 335, type: !8647, align: 64)
!8817 = !DILocalVariable(name: "c", scope: !8334, file: !8580, line: 335, type: !8647, align: 64)
!8818 = !DILocalVariable(name: "d", scope: !8334, file: !8580, line: 335, type: !8647, align: 64)
!8819 = !DILocalVariable(name: "iter", scope: !8341, file: !8580, line: 342, type: !8323, align: 64)
!8820 = !DILocalVariable(name: "b", scope: !8342, file: !8580, line: 342, type: !8647, align: 64)
!8821 = !DILocalVariable(name: "d", scope: !8342, file: !8580, line: 342, type: !8647, align: 64)
!8822 = !DILocalVariable(name: "iter", scope: !8333, file: !8580, line: 349, type: !8323, align: 64)
!8823 = !DILocalVariable(name: "b", scope: !8332, file: !8580, line: 349, type: !8647, align: 64)
!8824 = !DILocalVariable(name: "c", scope: !8332, file: !8580, line: 349, type: !8647, align: 64)
!8825 = !DILocalVariable(name: "d", scope: !8332, file: !8580, line: 349, type: !8647, align: 64)
!8826 = !{!8808, !8809, !8810, !8811, !8812, !8813, !8814, !8815, !8816, !8817, !8818, !8819, !8807, !8820, !8821, !8822, !8823, !8824, !8825}
!8827 = !DILocalVariable(name: "a", scope: !8349, file: !8580, line: 276, type: !8647, align: 64)
!8828 = !DILocalVariable(name: "vs", arg: 1, scope: !8347, file: !8580, line: 274, type: !8786)
!8829 = !DILocalVariable(name: "iter", scope: !8348, file: !8580, line: 276, type: !8323, align: 64)
!8830 = !DILocalVariable(name: "c", scope: !8349, file: !8580, line: 276, type: !8647, align: 64)
!8831 = !DILocalVariable(name: "d", scope: !8349, file: !8580, line: 276, type: !8647, align: 64)
!8832 = !{!8828, !8829, !8827, !8830, !8831}
!8836 = !DILocalVariable(name: "b", arg: 2, scope: !8371, file: !8734, line: 2507, type: !8176)
!8837 = !DILocalVariable(name: "a", arg: 1, scope: !8371, file: !8734, line: 2507, type: !8176)
!8838 = !{!8837, !8836}
!8839 = !DILocalVariable(name: "a", arg: 1, scope: !8380, file: !8734, line: 95, type: !8176)
!8840 = !DILocalVariable(name: "b", arg: 2, scope: !8380, file: !8734, line: 95, type: !8176)
!8841 = !{!8839, !8840}
!8842 = !DILocalVariable(name: "a", arg: 1, scope: !8383, file: !8734, line: 3782, type: !8176)
!8843 = !DILocalVariable(name: "b", arg: 2, scope: !8383, file: !8734, line: 3782, type: !8176)
!8844 = !{!8842, !8843}
!8845 = !DILocalVariable(name: "a", arg: 1, scope: !8394, file: !8734, line: 2756, type: !8176)
!8846 = !{!8176, !8176}
!8847 = !DISubroutineType(types: !8846)
!8848 = !{!8845}
!8849 = !DILocalVariable(name: "a", arg: 1, scope: !8414, file: !8734, line: 2756, type: !8176)
!8850 = !{!8849}
!8851 = !DILocalVariable(name: "a", arg: 1, scope: !8424, file: !8734, line: 2547, type: !8176)
!8852 = !DILocalVariable(name: "r", scope: !8423, file: !8734, line: 2550, type: !8422, align: 256)
!8853 = !{!8851, !8852}
!8854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2777, size: 256, align: 32, elements: !2780)
!8855 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !8422, file: !1615, baseType: !8854, size: 256, align: 32, flags: DIFlagPrivate)
!8856 = !{!8855}
!8857 = !DILexicalBlockFile(scope: !8424, file: !2830, discriminator: 0)
!8858 = !DILocalVariable(name: "a", arg: 1, scope: !8428, file: !8734, line: 2547, type: !8176)
!8859 = !DILocalVariable(name: "r", scope: !8427, file: !8734, line: 2550, type: !8422, align: 256)
!8860 = !{!8858, !8859}
!8861 = !DILexicalBlockFile(scope: !8428, file: !2830, discriminator: 0)
!8862 = !DILocalVariable(name: "a", arg: 1, scope: !8432, file: !8734, line: 2547, type: !8176)
!8863 = !DILocalVariable(name: "r", scope: !8431, file: !8734, line: 2550, type: !8422, align: 256)
!8864 = !{!8862, !8863}
!8865 = !DILexicalBlockFile(scope: !8432, file: !2830, discriminator: 0)
!8866 = !DILocalVariable(name: "a", arg: 1, scope: !8483, file: !8734, line: 2547, type: !8176)
!8867 = !DILocalVariable(name: "r", scope: !8482, file: !8734, line: 2550, type: !8422, align: 256)
!8868 = !{!8866, !8867}
!8869 = !DILexicalBlockFile(scope: !8483, file: !2830, discriminator: 0)
!8870 = !DILocalVariable(name: "a", arg: 1, scope: !8487, file: !8734, line: 2547, type: !8176)
!8871 = !DILocalVariable(name: "r", scope: !8486, file: !8734, line: 2550, type: !8422, align: 256)
!8872 = !{!8870, !8871}
!8873 = !DILexicalBlockFile(scope: !8487, file: !2830, discriminator: 0)
!8874 = !DILocalVariable(name: "a", arg: 1, scope: !8491, file: !8734, line: 2547, type: !8176)
!8875 = !DILocalVariable(name: "r", scope: !8490, file: !8734, line: 2550, type: !8422, align: 256)
!8876 = !{!8874, !8875}
!8877 = !DILexicalBlockFile(scope: !8491, file: !2830, discriminator: 0)
!8878 = !DILocalVariable(name: "a", arg: 1, scope: !8506, file: !8734, line: 95, type: !8176)
!8879 = !DILocalVariable(name: "b", arg: 2, scope: !8506, file: !8734, line: 95, type: !8176)
!8880 = !{!8878, !8879}
!8889 = !DILocation(line: 0, scope: !8198, inlinedAt: !8202)
!8890 = !DILocalVariable(name: "a", arg: 1, scope: !8513, file: !8734, line: 83, type: !8176)
!8891 = !DISubroutineType(cc: DW_CC_nocall, types: !8765)
!8892 = !DILocalVariable(name: "b", arg: 2, scope: !8513, file: !8734, line: 83, type: !8176)
!8893 = !{!8890, !8892}
!8894 = !DILocation(line: 0, scope: !8201, inlinedAt: !8202)
!8897 = !DILocalVariable(name: "self", arg: 1, scope: !8519, file: !2837, line: 1031, type: !2074)
!8898 = !DILocalVariable(name: "rhs", scope: !8519, file: !2837, line: 1031, type: !2074, align: 64)
!8899 = !{!8897, !8898}
!8900 = !DILocalVariable(name: "self", arg: 1, scope: !8525, file: !2856, line: 1160, type: !177)
!8901 = !{!8212, !177, !8523}
!8902 = !DISubroutineType(types: !8901)
!8903 = !DINamespace(name: "{impl#10}", scope: !8610)
!8904 = !DINamespace(name: "next", scope: !8903)
!8905 = !DIDerivedType(tag: DW_TAG_member, name: "_ref__self__data", scope: !8523, file: !1615, baseType: !8522, size: 128, align: 64)
!8906 = !{!8905}
!8907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8182, size: 64, align: 64, dwarfAddressSpace: 0)
!8908 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !8522, file: !1615, baseType: !8907, size: 64, align: 64)
!8909 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !8522, file: !1615, baseType: !2074, size: 64, align: 64, offset: 64)
!8910 = !{!8908, !8909}
!8911 = !DITemplateTypeParameter(name: "U", type: !8620)
!8912 = !DITemplateTypeParameter(name: "F", type: !8523)
!8913 = !{!2472, !8911, !8912}
!8914 = !DISubprogram(name: "map<usize, [core::core_arch::x86::__m256i; 4], core::array::iter::iter_inner::{impl#10}::next::{closure_env#0}<[core::core_arch::x86::__m256i; 4]>>", linkageName: "_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionjE3mapANtNtNtB5_9core_arch3x867___m256ij4_NCNvMs8_NtNtNtB5_5array4iter10iter_innerINtB1w_15PolymorphicIterSINtNtNtB5_3mem12maybe_uninit11MaybeUninitBO_EE4next0ECshovLROGBtMy_11quinn_proto", scope: !177, file: !2856, line: 1160, type: !8902, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !8913)
!8915 = !DILocalVariable(name: "f", scope: !8525, file: !2856, line: 1160, type: !8523, align: 64)
!8916 = !DILocalVariable(name: "x", scope: !8524, file: !2856, line: 1165, type: !2074, align: 64)
!8917 = !{!8900, !8915, !8916}
!8918 = !DILocalVariable(name: "idx", arg: 2, scope: !8529, file: !8681, line: 212, type: !2074)
!8919 = !{!8620, !8523, !2074}
!8920 = !DISubroutineType(types: !8919)
!8921 = !DILocalVariable(name: "self__data", scope: !8529, file: !8681, line: 206, type: !8683, align: 256)
!8922 = !{!8918, !8921}
!8923 = !DILocalVariable(name: "index", arg: 2, scope: !8532, file: !2857, line: 640, type: !2074)
!8924 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::mem::maybe_uninit::MaybeUninit<[core::core_arch::x86::__m256i; 4]>", baseType: !8182, size: 64, align: 64, dwarfAddressSpace: 0)
!8925 = !{!8924, !8522, !2074, !2672}
!8926 = !DISubroutineType(types: !8925)
!8927 = !DILocalVariable(name: "self", arg: 1, scope: !8532, file: !2857, line: 640, type: !8522)
!8928 = !{!8927, !8923}
!8929 = !DITemplateTypeParameter(name: "T", type: !8182)
!8930 = !DITemplateTypeParameter(name: "I", type: !2074)
!8931 = !{!8929, !8930}
!8932 = !DILocalVariable(name: "self", arg: 1, scope: !8536, file: !2859, line: 205, type: !2074)
!8933 = !DINamespace(name: "{impl#2}", scope: !2860)
!8934 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const core::mem::maybe_uninit::MaybeUninit<[core::core_arch::x86::__m256i; 4]>", baseType: !8182, size: 64, align: 64, dwarfAddressSpace: 0)
!8935 = !{!8934, !2074, !8535, !2672}
!8936 = !DISubroutineType(types: !8935)
!8937 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !8535, file: !1615, baseType: !8907, size: 64, align: 64)
!8938 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !8535, file: !1615, baseType: !2074, size: 64, align: 64, offset: 64)
!8939 = !{!8937, !8938}
!8940 = !DILocalVariable(name: "slice", arg: 2, scope: !8536, file: !2859, line: 205, type: !8522)
!8941 = !{!8932, !8940}
!8942 = !{!8929}
!8943 = !DILocalVariable(name: "self", arg: 1, scope: !8539, file: !2861, line: 794, type: !8934)
!8944 = !{!8620, !8924, !2672}
!8945 = !DISubroutineType(types: !8944)
!8946 = !DISubprogram(name: "assume_init_read<[core::core_arch::x86::__m256i; 4]>", linkageName: "_RNvMs1_NtNtCskKLDkoKarTP_4core3mem12maybe_uninitINtB5_11MaybeUninitANtNtNtB9_9core_arch3x867___m256ij4_E16assume_init_readCshovLROGBtMy_11quinn_proto", scope: !8182, file: !2861, line: 794, type: !8945, scopeLine: 794, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !8626)
!8947 = !{!8943}
!8948 = !DILocalVariable(name: "self", arg: 1, scope: !8542, file: !2694, line: 1149, type: !8802)
!8949 = !{!8620, !8802, !2672}
!8950 = !DISubroutineType(types: !8949)
!8951 = !{!8948}
!8952 = !DILocalVariable(name: "src", arg: 1, scope: !8545, file: !2420, line: 1717, type: !8802)
!8953 = !{!8952}
!8954 = !DILocation(line: 0, scope: !8191, inlinedAt: !8202)
!8955 = !DILocation(line: 0, scope: !8190, inlinedAt: !8202)
!8956 = !{!8559}
!8958 = !{!8571}
!8959 = !DIFile(filename: "library/core/src/../../stdarch/crates/core_arch/src/x86/avx.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "b879f085ef4a2bd25d9832c384229eb2")
!8960 = !DILocalVariable(name: "a", arg: 1, scope: !8574, file: !8959, line: 1082, type: !8176)
!8961 = !DINamespace(name: "avx", scope: !2768)
!8962 = !{!2777, !8176}
!8963 = !DISubroutineType(cc: DW_CC_nocall, types: !8962)
!8964 = !{!8960}
!8965 = !DILocalVariable(name: "a", arg: 1, scope: !8577, file: !8959, line: 1082, type: !8176)
!8966 = !{!8965}
!8967 = !DILocation(line: 574, column: 14, scope: !183, inlinedAt: !8250)
!8968 = !DILocation(line: 872, column: 18, scope: !182, inlinedAt: !8260)
!8969 = !DILocation(line: 574, column: 14, scope: !183, inlinedAt: !8265)
!8970 = !DILocation(line: 872, column: 18, scope: !182, inlinedAt: !8269)
!8971 = !DILocation(line: 574, column: 14, scope: !183, inlinedAt: !8274)
!8972 = !DILocation(line: 872, column: 18, scope: !182, inlinedAt: !8278)
!8973 = !DILocation(line: 574, column: 14, scope: !183, inlinedAt: !8283)
!8974 = !DILocation(line: 173, column: 9, scope: !8762, inlinedAt: !8760)
!8975 = !DILocation(line: 84, column: 24, scope: !8287, inlinedAt: !8769)
!8976 = !DILocation(line: 84, column: 24, scope: !8287, inlinedAt: !8771)
!8977 = !DILocation(line: 1100, column: 12, scope: !180, inlinedAt: !8310)
!8978 = !DILocation(line: 0, scope: !8231, inlinedAt: !8233)
!8979 = !DILocation(line: 1043, column: 17, scope: !185, inlinedAt: !8368)
!8980 = !DILocation(line: 96, column: 24, scope: !8380, inlinedAt: !8381)
!8981 = !DILocation(line: 3783, column: 47, scope: !8383, inlinedAt: !8384)
!8982 = !DILocation(line: 3783, column: 24, scope: !8383, inlinedAt: !8384)
!8983 = !DILocation(line: 2508, column: 33, scope: !8371, inlinedAt: !8372)
!8984 = !DILocation(line: 2508, column: 24, scope: !8371, inlinedAt: !8372)
!8985 = !DILocation(line: 336, column: 35, scope: !8334, inlinedAt: !8353)
!8986 = !DILocation(line: 96, column: 24, scope: !8380, inlinedAt: !8390)
!8987 = !DILocation(line: 2762, column: 34, scope: !8394, inlinedAt: !8395)
!8988 = !DILocation(line: 3783, column: 24, scope: !8383, inlinedAt: !8397)
!8989 = !DILocation(line: 96, column: 24, scope: !8380, inlinedAt: !8402)
!8990 = !DILocation(line: 2508, column: 33, scope: !8371, inlinedAt: !8375)
!8991 = !DILocation(line: 2508, column: 24, scope: !8371, inlinedAt: !8375)
end_hunk_1

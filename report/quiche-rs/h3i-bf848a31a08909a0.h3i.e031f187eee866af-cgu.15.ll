Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/h3i-bf848a31a08909a0.h3i.e031f187eee866af-cgu.15?download=true
inline.NumInlined: 312
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjfnSKV9Rz3v_3h3i:bb.a
    #dbg_value(i64 1, !3713, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18107)
  %i.a = icmp eq i64 %.val, 0, !dbg !18109
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsjfnSKV9Rz3v_3h3i.exit, label %bb.b, !dbg !18109

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18104
  %.val1 = load ptr, ptr %i.b, align 8, !dbg !18104, !nonnull !49, !noundef !49
    #dbg_value(ptr %.val1, !3684, !DIExpression(), !18110)
    #dbg_value(i64 1, !3686, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18110)
    #dbg_value(i64 %.val, !3686, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18110)
    #dbg_value(ptr poison, !2840, !DIExpression(), !18111)
    #dbg_value(ptr poison, !2849, !DIExpression(), !18113)
    #dbg_value(ptr %.val1, !2845, !DIExpression(), !18111)
    #dbg_value(ptr %.val1, !2854, !DIExpression(), !18113)
    #dbg_value(ptr %.val1, !2858, !DIExpression(), !18115)
    #dbg_value(ptr %.val1, !2867, !DIExpression(), !18117)
    #dbg_value(i64 1, !2846, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18111)
    #dbg_value(i64 1, !2855, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18113)
    #dbg_value(i64 1, !2864, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18115)
    #dbg_value(i64 1, !2870, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18117)
    #dbg_value(i64 %.val, !2846, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18111)
    #dbg_value(i64 %.val, !2855, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18113)
    #dbg_value(i64 %.val, !2864, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18115)
    #dbg_value(i64 %.val, !2870, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18117)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !dbg !18119
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsjfnSKV9Rz3v_3h3i.exit, !dbg !18120

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsjfnSKV9Rz3v_3h3i.exit: ; preds = %bb.a, %bb.b
  ret void, !dbg !18121
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 !dbg !18122 {
bb.a:
    #dbg_value(ptr %0, !18132, !DIExpression(), !18133)
  %.val = load i64, ptr %0, align 8, !dbg !18134, !range !2174, !noundef !49 ; 2 uses
    #dbg_value(ptr poison, !3675, !DIExpression(), !18135)
    #dbg_value(i64 8, !3683, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18135)
    #dbg_value(i64 8, !3683, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18135)
    #dbg_value(ptr poison, !3689, !DIExpression(), !18137)
    #dbg_value(i64 8, !3713, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18137)
    #dbg_value(i64 8, !3713, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18137)
    #dbg_value(i64 8, !3720, !DIExpression(), !18139)
  %i.a = icmp eq i64 %.val, 0, !dbg !18141
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsjfnSKV9Rz3v_3h3i.exit, label %bb.b, !dbg !18141

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18134
  %.val1 = load ptr, ptr %i.b, align 8, !dbg !18134, !nonnull !49, !noundef !49
    #dbg_value(i64 %.val, !3725, !DIExpression(), !18139)
  %i.c = shl nuw i64 %.val, 3, !dbg !18142
    #dbg_value(ptr %.val1, !3684, !DIExpression(), !18143)
    #dbg_value(i64 8, !3686, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18143)
    #dbg_value(i64 %i.c, !3686, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18143)
    #dbg_value(ptr poison, !2840, !DIExpression(), !18144)
    #dbg_value(ptr poison, !2849, !DIExpression(), !18146)
    #dbg_value(ptr %.val1, !2845, !DIExpression(), !18144)
    #dbg_value(ptr %.val1, !2854, !DIExpression(), !18146)
    #dbg_value(ptr %.val1, !2858, !DIExpression(), !18148)
    #dbg_value(ptr %.val1, !2867, !DIExpression(), !18150)
    #dbg_value(i64 8, !2846, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18144)
    #dbg_value(i64 8, !2855, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18146)
    #dbg_value(i64 8, !2864, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18148)
    #dbg_value(i64 8, !2870, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18150)
    #dbg_value(i64 %i.c, !2846, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18144)
    #dbg_value(i64 %i.c, !2855, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18146)
    #dbg_value(i64 %i.c, !2864, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18148)
    #dbg_value(i64 %i.c, !2870, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18150)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #30, !dbg !18152
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsjfnSKV9Rz3v_3h3i.exit, !dbg !18153

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsjfnSKV9Rz3v_3h3i.exit: ; preds = %bb.a, %bb.b
  ret void, !dbg !18154
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 !dbg !18155 {
bb.a:
    #dbg_value(ptr %0, !18160, !DIExpression(), !18161)
  %.val = load i64, ptr %0, align 8, !dbg !18162, !range !2174, !noundef !49 ; 2 uses
    #dbg_value(ptr poison, !3675, !DIExpression(), !18163)
    #dbg_value(i64 4, !3683, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18163)
    #dbg_value(i64 4, !3683, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18163)
    #dbg_value(ptr poison, !3689, !DIExpression(), !18165)
    #dbg_value(i64 4, !3713, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18165)
    #dbg_value(i64 4, !3713, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18165)
    #dbg_value(i64 4, !3720, !DIExpression(), !18167)
  %i.a = icmp eq i64 %.val, 0, !dbg !18169
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsjfnSKV9Rz3v_3h3i.exit, label %bb.b, !dbg !18169

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18162
  %.val1 = load ptr, ptr %i.b, align 8, !dbg !18162, !nonnull !49, !noundef !49
    #dbg_value(i64 %.val, !3725, !DIExpression(), !18167)
  %i.c = shl nuw i64 %.val, 2, !dbg !18170
    #dbg_value(ptr %.val1, !3684, !DIExpression(), !18171)
    #dbg_value(i64 4, !3686, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18171)
    #dbg_value(i64 %i.c, !3686, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18171)
    #dbg_value(ptr poison, !2840, !DIExpression(), !18172)
    #dbg_value(ptr poison, !2849, !DIExpression(), !18174)
    #dbg_value(ptr %.val1, !2845, !DIExpression(), !18172)
    #dbg_value(ptr %.val1, !2854, !DIExpression(), !18174)
    #dbg_value(ptr %.val1, !2858, !DIExpression(), !18176)
    #dbg_value(ptr %.val1, !2867, !DIExpression(), !18178)
    #dbg_value(i64 4, !2846, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18172)
    #dbg_value(i64 4, !2855, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18174)
    #dbg_value(i64 4, !2864, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18176)
    #dbg_value(i64 4, !2870, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18178)
    #dbg_value(i64 %i.c, !2846, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18172)
    #dbg_value(i64 %i.c, !2855, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18174)
    #dbg_value(i64 %i.c, !2864, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18176)
    #dbg_value(i64 %i.c, !2870, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18178)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 4) #30, !dbg !18180
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsjfnSKV9Rz3v_3h3i.exit, !dbg !18181

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsjfnSKV9Rz3v_3h3i.exit: ; preds = %bb.a, %bb.b
  ret void, !dbg !18182
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 !dbg !18183 {
bb.a:
    #dbg_value(ptr %0, !18188, !DIExpression(), !18189)
  %.val = load i64, ptr %0, align 8, !dbg !18190, !range !2174, !noundef !49 ; 2 uses
    #dbg_value(ptr poison, !3675, !DIExpression(), !18191)
    #dbg_value(i64 8, !3683, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18191)
    #dbg_value(i64 8, !3683, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18191)
    #dbg_value(ptr poison, !3689, !DIExpression(), !18193)
    #dbg_value(i64 8, !3713, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18193)
    #dbg_value(i64 8, !3713, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18193)
    #dbg_value(i64 8, !3720, !DIExpression(), !18195)
  %i.a = icmp eq i64 %.val, 0, !dbg !18197
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsjfnSKV9Rz3v_3h3i.exit, label %bb.b, !dbg !18197

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18190
  %.val1 = load ptr, ptr %i.b, align 8, !dbg !18190, !nonnull !49, !noundef !49
    #dbg_value(i64 %.val, !3725, !DIExpression(), !18195)
  %i.c = shl nuw i64 %.val, 3, !dbg !18198
    #dbg_value(ptr %.val1, !3684, !DIExpression(), !18199)
    #dbg_value(i64 8, !3686, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18199)
    #dbg_value(i64 %i.c, !3686, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18199)
    #dbg_value(ptr poison, !2840, !DIExpression(), !18200)
    #dbg_value(ptr poison, !2849, !DIExpression(), !18202)
    #dbg_value(ptr %.val1, !2845, !DIExpression(), !18200)
    #dbg_value(ptr %.val1, !2854, !DIExpression(), !18202)
    #dbg_value(ptr %.val1, !2858, !DIExpression(), !18204)
    #dbg_value(ptr %.val1, !2867, !DIExpression(), !18206)
    #dbg_value(i64 8, !2846, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18200)
    #dbg_value(i64 8, !2855, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18202)
    #dbg_value(i64 8, !2864, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18204)
    #dbg_value(i64 8, !2870, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18206)
    #dbg_value(i64 %i.c, !2846, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18200)
    #dbg_value(i64 %i.c, !2855, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18202)
    #dbg_value(i64 %i.c, !2864, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18204)
    #dbg_value(i64 %i.c, !2870, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18206)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #30, !dbg !18208
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsjfnSKV9Rz3v_3h3i.exit, !dbg !18209

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsjfnSKV9Rz3v_3h3i.exit: ; preds = %bb.a, %bb.b
  ret void, !dbg !18210
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h316squish_suggester0INtB7_5FnMutTRRReEE8call_mutBW_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !18211 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = alloca [104 x i8], align 8               ; 24 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
    #dbg_value(ptr %1, !18220, !DIExpression(), !18227)
    #dbg_value(ptr %0, !18219, !DIExpression(), !18227)
  %i.d = load ptr, ptr %0, align 8, !dbg !18228, !nonnull !49, !align !4346, !noundef !49
  %.val = load ptr, ptr %i.d, align 8, !dbg !18229 ; 3 uses
  %.val2 = load ptr, ptr %1, align 8, !dbg !18229, !nonnull !49, !align !4346, !noundef !49 ; 2 uses
    #dbg_value(ptr poison, !18230, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !18236)
    #dbg_value(ptr poison, !18235, !DIExpression(), !18236)
    #dbg_declare(ptr poison, !18238, !DIExpression(), !18248)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !18267
  %i.e = load ptr, ptr %.val2, align 8, !dbg !18267, !nonnull !49, !noundef !49
  %i.f = getelementptr inbounds nuw i8, ptr %.val2, i64 8, !dbg !18267
  %i.g = load i64, ptr %i.f, align 8, !dbg !18267, !noundef !49
  call void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_lowercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef %i.g), !dbg !18268
    #dbg_value(ptr %i.c, !18269, !DIExpression(), !18272)
    #dbg_value(ptr %i.c, !18274, !DIExpression(), !18277)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !18279 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !dbg !18279, !nonnull !49, !noundef !49 ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !18290
  %i.k = load i64, ptr %i.j, align 8, !dbg !18290, !noundef !49 ; 17 uses
    #dbg_value(ptr %i.i, !18262, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18291)
    #dbg_value(ptr %i.i, !18256, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18292)
    #dbg_value(i64 %i.k, !18262, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18291)
    #dbg_value(i64 %i.k, !18256, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18292)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
    #dbg_value(ptr %.val, !18263, !DIExpression(), !18291)
    #dbg_value(ptr %.val, !18255, !DIExpression(), !18292)
    #dbg_value(ptr %.val, !18245, !DIExpression(), !18293)
    #dbg_value(ptr %.val, !18274, !DIExpression(), !18294)
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 8, !dbg !18296
  %i.m = load ptr, ptr %i.l, align 8, !dbg !18296, !nonnull !49, !noundef !49 ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 16, !dbg !18307
  %i.o = load i64, ptr %i.n, align 8, !dbg !18307, !noundef !49 ; 18 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18308), !dbg !18311
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18312), !dbg !18311
    #dbg_value(ptr %i.m, !18314, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18321)
    #dbg_value(ptr %i.m, !18323, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18327)
    #dbg_value(ptr %i.m, !18334, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18384)
    #dbg_value(i64 %i.o, !18314, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18321)
    #dbg_value(i64 %i.o, !18323, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18327)
    #dbg_value(i64 %i.o, !18334, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18384)
    #dbg_value(ptr %i.i, !18318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18321)
    #dbg_value(ptr %i.i, !18326, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18327)
    #dbg_value(ptr %i.i, !18383, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18384)
    #dbg_value(i64 %i.k, !18318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18321)
    #dbg_value(i64 %i.k, !18326, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18327)
    #dbg_value(i64 %i.k, !18383, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18384)
    #dbg_value(ptr %i.m, !18386, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18392)
    #dbg_value(i64 %i.o, !18386, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18392)
    #dbg_value(i64 %i.o, !18390, !DIExpression(), !18400)
    #dbg_value(i64 %i.o, !18401, !DIExpression(), !18408)
    #dbg_value(i64 %i.o, !18406, !DIExpression(), !18410)
  %i.p = icmp eq i64 %i.o, 0, !dbg !18411
  br i1 %i.p, label %.loopexit.i, label %bb.b, !dbg !18411

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %i.i, !18389, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18392)
    #dbg_value(ptr %i.i, !18412, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18418)
    #dbg_value(i64 %i.k, !18389, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18392)
    #dbg_value(i64 %i.k, !18412, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18418)
  %i.q = icmp ult i64 %i.o, %i.k, !dbg !18420
  br i1 %i.q, label %bb.c, label %bb.d, !dbg !18420

bb.c:                                             ; preds = %bb.b
  %i.r = icmp eq i64 %i.o, 1, !dbg !18421
  br i1 %i.r, label %bb.f, label %bb.e, !dbg !18421

bb.d:                                             ; preds = %bb.b
    #dbg_value(ptr poison, !18331, !DIExpression(), !18422)
    #dbg_value(ptr poison, !18332, !DIExpression(), !18423)
    #dbg_value(ptr poison, !18397, !DIExpression(), !18424)
    #dbg_value(ptr poison, !18398, !DIExpression(), !18425)
  %i.s = icmp eq i64 %i.o, %i.k, !dbg !18426
  br i1 %i.s, label %bb.bb, label %.loopexit.i, !dbg !18426

bb.e:                                             ; preds = %bb.c
  %i.t = icmp ult i64 %i.o, 33, !dbg !18427
  br i1 %i.t, label %bb.am, label %_RNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_contains.exit.i.i, !dbg !18427

bb.f:                                             ; preds = %bb.c
    #dbg_value(ptr %i.m, !18417, !DIExpression(), !18418)
  %.val.i.i = load i8, ptr %i.m, align 1, !dbg !18428, !alias.scope !18308, !noalias !18312, !noundef !49 ; 2 uses
    #dbg_value(ptr poison, !18429, !DIExpression(), !18439)
    #dbg_value(ptr %i.i, !18435, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18439)
    #dbg_value(i64 %i.k, !18435, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18439)
    #dbg_value(i8 %.val.i.i, !18436, !DIExpression(), !18441)
    #dbg_value(ptr %i.i, !18438, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18441)
    #dbg_value(i64 %i.k, !18438, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18441)
    #dbg_value(i8 %.val.i.i, !18442, !DIExpression(), !18454)
    #dbg_value(i8 %.val.i.i, !18456, !DIExpression(), !18462)
    #dbg_value(ptr %i.i, !18449, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18454)
    #dbg_value(ptr %i.i, !18459, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18462)
    #dbg_value(i64 %i.k, !18449, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18454)
    #dbg_value(i64 %i.k, !18459, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18462)
  %i.u = icmp samesign ult i64 %i.k, 16, !dbg !18464
  br i1 %i.u, label %.lr.ph.i.i.i.i, label %bb.g, !dbg !18464

bb.g:                                             ; preds = %bb.f
  %i.v = invoke { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef %.val.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef range(i64 0, -9223372036854775808) %i.k)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !dbg !18465 ; 2 uses

.noexc.i:                                         ; preds = %bb.g
  %i.w = extractvalue { i64, i64 } %i.v, 0, !dbg !18465
  %i.x = extractvalue { i64, i64 } %i.v, 1, !dbg !18465
    #dbg_value(i64 %i.w, !18450, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18466)
    #dbg_value(i64 %i.x, !18450, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18466)
  %i.y = trunc nuw i64 %i.w to i1, !dbg !18467
  br i1 %i.y, label %.loopexit13.i.i.i.i, label %.loopexit.i, !dbg !18467

.loopexit13.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.noexc.i
  %.sroa.5.0.i.i.i.i = phi i64 [ %i.x, %.noexc.i ], [ %.sroa.04.015.i.i.i.i, %.lr.ph.i.i.i.i ], !dbg !18468
    #dbg_value(i64 1, !18450, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18466)
    #dbg_value(i64 %.sroa.5.0.i.i.i.i, !18450, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18466)
    #dbg_value(i64 %.sroa.5.0.i.i.i.i, !18452, !DIExpression(), !18469)
  %i.z = icmp ult i64 %.sroa.5.0.i.i.i.i, %i.k, !dbg !18470
    #dbg_value(i1 true, !18471, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !18474)
  tail call void @llvm.assume(i1 %i.z), !dbg !18476
  br label %.loopexit.i, !dbg !18477

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.h
  %.sroa.04.015.i.i.i.i = phi i64 [ %i.ad, %bb.h ], [ 0, %bb.f ] ; 3 uses
    #dbg_value(i64 %.sroa.04.015.i.i.i.i, !18460, !DIExpression(), !18478)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.04.015.i.i.i.i, !dbg !18479
  %i.ab = load i8, ptr %i.aa, align 1, !dbg !18479, !alias.scope !18480, !noalias !18308, !noundef !49
  %i.ac = icmp eq i8 %i.ab, %.val.i.i, !dbg !18479
  br i1 %i.ac, label %.loopexit13.i.i.i.i, label %bb.h, !dbg !18479

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ad = add nuw nsw i64 %.sroa.04.015.i.i.i.i, 1, !dbg !18485 ; 2 uses
    #dbg_value(i64 %i.ad, !18460, !DIExpression(), !18478)
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ad, %i.k, !dbg !18486
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i, !dbg !18486

_RNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_contains.exit.i.i: ; preds = %bb.ao, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !18487, !noalias !18488
  invoke void @_RNvMsu_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef %i.o)
          to label %.noexc7.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !dbg !18489

.noexc7.i:                                        ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_contains.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18490), !dbg !18493
    #dbg_value(ptr %i.b, !18494, !DIExpression(), !18535)
  %i.ae = load i64, ptr %i.b, align 8, !dbg !18537, !range !18538, !alias.scope !18490, !noalias !18539, !noundef !49
  switch i64 %i.ae, label %default.unreachable [
    i64 0, label %.preheader.i.i.i
    i64 1, label %bb.v
    i64 2, label %bb.w
  ], !dbg !18541

.preheader.i.i.i:                                 ; preds = %.noexc7.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.ag = load i8, ptr %i.af, align 2, !range !18542, !alias.scope !18490, !noalias !18539
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !18490, !noalias !18539, !nonnull !49 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !18490, !noalias !18539 ; 14 uses
  br i1 %i.ah, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, label %.lr.ph.preheader.i.i.i, !dbg !18543

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.promoted225.i.i.i = load i8, ptr %i.am, align 8, !alias.scope !18490, !noalias !18539 ; 2 uses
  %.promoted176.i.i.i = load i64, ptr %i.an, align 8, !alias.scope !18490, !noalias !18539 ; 12 uses
  %i.ao = trunc nuw i8 %.promoted225.i.i.i to i1, !dbg !18595
    #dbg_value(i1 %i.ao, !18569, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !18596)
    #dbg_value(i64 %.promoted176.i.i.i, !18571, !DIExpression(), !18597)
    #dbg_value(i64 %.promoted176.i.i.i, !18598, !DIExpression(), !18610)
    #dbg_value(ptr %i.aj, !18617, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18621)
    #dbg_value(ptr %i.aj, !18606, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18622)
    #dbg_value(i64 %i.al, !18617, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18621)
    #dbg_value(i64 %i.al, !18606, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18622)
    #dbg_value(i64 %.promoted176.i.i.i, !18618, !DIExpression(), !18621)
    #dbg_value(i64 %.promoted176.i.i.i, !18605, !DIExpression(), !18622)
    #dbg_value(i64 %i.al, !18607, !DIExpression(), !18610)
    #dbg_value(i64 %.promoted176.i.i.i, !18623, !DIExpression(), !18629)
    #dbg_value(ptr %i.aj, !18628, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18629)
    #dbg_value(ptr %i.aj, !18631, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18637)
    #dbg_value(ptr %i.aj, !18639, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18647)
    #dbg_value(ptr %i.aj, !18649, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18660)
    #dbg_value(i64 %i.al, !18628, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18629)
    #dbg_value(i64 %i.al, !18631, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18637)
    #dbg_value(i64 %i.al, !18639, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18647)
    #dbg_value(i64 %i.al, !18649, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18660)
    #dbg_value(i64 %.promoted176.i.i.i, !18636, !DIExpression(), !18637)
    #dbg_value(i64 %.promoted176.i.i.i, !18644, !DIExpression(), !18647)
    #dbg_value(i64 %.promoted176.i.i.i, !18655, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18660)
    #dbg_value(i64 %.promoted176.i.i.i, !18662, !DIExpression(), !18666)
  %i.ap = icmp eq i64 %.promoted176.i.i.i, 0, !dbg !18668
  br i1 %i.ap, label %bb.k, label %bb.i, !dbg !18668

bb.i:                                             ; preds = %.lr.ph.preheader.i.i.i
  %.not.i.i.us.i.peel.i.i = icmp ult i64 %.promoted176.i.i.i, %i.al, !dbg !18669
  br i1 %.not.i.i.us.i.peel.i.i, label %bb.j, label %.split.i.i.us.i.peel.i.i, !dbg !18669

.split.i.i.us.i.peel.i.i:                         ; preds = %bb.i
  %i.aq = icmp eq i64 %.promoted176.i.i.i, %i.al, !dbg !18670
  br i1 %i.aq, label %bb.k, label %.split.us180.i.i.i, !dbg !18671

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.promoted176.i.i.i, !dbg !18672
  %i.as = load i8, ptr %i.ar, align 1, !dbg !18672, !alias.scope !18673, !noalias !18676, !noundef !49
    #dbg_value(i8 %i.as, !18680, !DIExpression(), !18686)
  %i.at = icmp sgt i8 %i.as, -65, !dbg !18688
  br i1 %i.at, label %bb.k, label %.split.us180.i.i.i, !dbg !18671

bb.k:                                             ; preds = %bb.j, %.split.i.i.us.i.peel.i.i, %.lr.ph.preheader.i.i.i
    #dbg_value(ptr %i.aj, !18656, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18689)
    #dbg_value(i64 %i.al, !18656, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18689)
    #dbg_value(i64 %i.al, !18645, !DIExpression(), !18690)
    #dbg_value(i64 %i.al, !18655, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18660)
    #dbg_value(!DIArgList(i64 %i.al, i64 %.promoted176.i.i.i), !18658, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !18691)
    #dbg_value(ptr %i.aj, !18665, !DIExpression(), !18666)
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.promoted176.i.i.i, !dbg !18692 ; 4 uses
    #dbg_value(ptr undef, !18693, !DIExpression(), !18718)
    #dbg_value(ptr undef, !18720, !DIExpression(), !18757)
    #dbg_value(i32 2, !18759, !DIExpression(), !18765)
    #dbg_value(ptr undef, !1688, !DIExpression(), !18767)
    #dbg_value(i64 1, !1715, !DIExpression(), !18769)
    #dbg_value(ptr %i.au, !1705, !DIExpression(), !18771)
    #dbg_value(ptr %i.au, !1721, !DIExpression(), !18769)
    #dbg_value(!DIArgList(ptr %i.aj, i64 %i.al), !1707, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !18772)
    #dbg_value(ptr poison, !1726, !DIExpression(), !18773)
    #dbg_value(ptr poison, !1732, !DIExpression(), !18775)
  %i.av = icmp samesign eq i64 %.promoted176.i.i.i, %i.al, !dbg !18776
  br i1 %i.av, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, label %bb.l, !dbg !18777

bb.l:                                             ; preds = %bb.k
  %i.aw = load i8, ptr %i.au, align 1, !dbg !18778, !noalias !18779, !noundef !49 ; 5 uses
    #dbg_value(i8 %i.aw, !18727, !DIExpression(), !18782)
    #dbg_value(i8 %i.aw, !18764, !DIExpression(), !18765)
  %i.ax = icmp sgt i8 %i.aw, -1, !dbg !18783
  br i1 %i.ax, label %bb.m, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfnSKV9Rz3v_3h3i.exit26.i.i.us.i.peel.i.i, !dbg !18783

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfnSKV9Rz3v_3h3i.exit26.i.i.us.i.peel.i.i: ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 1, !dbg !18784
  %i.az = and i8 %i.aw, 31, !dbg !18785
  %i.ba = zext nneg i8 %i.az to i32, !dbg !18785  ; 3 uses
    #dbg_value(i32 %i.ba, !18744, !DIExpression(), !18786)
    #dbg_value(i32 %i.ba, !18787, !DIExpression(), !18793)
    #dbg_value(ptr undef, !1688, !DIExpression(), !18795)
    #dbg_value(i64 1, !1715, !DIExpression(), !18797)
    #dbg_value(ptr %i.ay, !1705, !DIExpression(), !18799)
    #dbg_value(ptr %i.ay, !1721, !DIExpression(), !18797)
    #dbg_value(!DIArgList(ptr %i.aj, i64 %i.al), !1707, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !18800)
    #dbg_value(ptr poison, !1726, !DIExpression(), !18801)
    #dbg_value(ptr poison, !1732, !DIExpression(), !18803)
  %i.bb = add nuw nsw i64 %.promoted176.i.i.i, 1, !dbg !18804
  %i.bc = icmp samesign ne i64 %i.bb, %i.al, !dbg !18804
  tail call void @llvm.assume(i1 %i.bc), !dbg !18805
  %i.bd = load i8, ptr %i.ay, align 1, !dbg !18806, !noalias !18779, !noundef !49
    #dbg_value(i8 %i.bd, !18746, !DIExpression(), !18807)
    #dbg_value(i8 %i.bd, !18792, !DIExpression(), !18793)
  %i.be = shl nuw nsw i32 %i.ba, 6, !dbg !18808
  %i.bf = and i8 %i.bd, 63, !dbg !18809
  %i.bg = zext nneg i8 %i.bf to i32, !dbg !18809  ; 2 uses
  %i.bh = or disjoint i32 %i.be, %i.bg, !dbg !18808
    #dbg_value(i32 %i.bh, !18748, !DIExpression(), !18810)
  %i.bi = icmp samesign ugt i8 %i.aw, -33, !dbg !18811
  br i1 %i.bi, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfnSKV9Rz3v_3h3i.exit28.i.i.us.i.peel.i.i, label %bb.n, !dbg !18811

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfnSKV9Rz3v_3h3i.exit28.i.i.us.i.peel.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfnSKV9Rz3v_3h3i.exit26.i.i.us.i.peel.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 2, !dbg !18812
    #dbg_value(ptr undef, !1688, !DIExpression(), !18813)
    #dbg_value(i64 1, !1715, !DIExpression(), !18815)
    #dbg_value(ptr %i.bj, !1705, !DIExpression(), !18817)
    #dbg_value(ptr %i.bj, !1721, !DIExpression(), !18815)
    #dbg_value(!DIArgList(ptr %i.aj, i64 %i.al), !1707, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !18818)
    #dbg_value(ptr poison, !1726, !DIExpression(), !18819)
    #dbg_value(ptr poison, !1732, !DIExpression(), !18821)
  %i.bk = add nuw nsw i64 %.promoted176.i.i.i, 2, !dbg !18822
  %i.bl = icmp samesign ne i64 %i.bk, %i.al, !dbg !18822
  tail call void @llvm.assume(i1 %i.bl), !dbg !18823
  %i.bm = load i8, ptr %i.bj, align 1, !dbg !18824, !noalias !18779, !noundef !49
    #dbg_value(i8 %i.bm, !18750, !DIExpression(), !18825)
    #dbg_value(i8 %i.bm, !18792, !DIExpression(), !18826)
    #dbg_value(i32 %i.bg, !18787, !DIExpression(), !18826)
  %i.bn = shl nuw nsw i32 %i.bg, 6, !dbg !18828
  %i.bo = and i8 %i.bm, 63, !dbg !18829
  %i.bp = zext nneg i8 %i.bo to i32, !dbg !18829
  %i.bq = or disjoint i32 %i.bn, %i.bp, !dbg !18828 ; 2 uses
    #dbg_value(i32 %i.bq, !18752, !DIExpression(), !18830)
    #dbg_value(i32 %i.bq, !18787, !DIExpression(), !18831)
  %i.br = shl nuw nsw i32 %i.ba, 12, !dbg !18833
  %i.bs = or disjoint i32 %i.bq, %i.br, !dbg !18834
    #dbg_value(i32 %i.bs, !18748, !DIExpression(), !18810)
  %i.bt = icmp samesign ugt i8 %i.aw, -17, !dbg !18835
  br i1 %i.bt, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfnSKV9Rz3v_3h3i.exit30.i.i.us.i.peel.i.i, label %bb.n, !dbg !18835

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfnSKV9Rz3v_3h3i.exit30.i.i.us.i.peel.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfnSKV9Rz3v_3h3i.exit28.i.i.us.i.peel.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.au, i64 3, !dbg !18836
    #dbg_value(ptr undef, !1688, !DIExpression(), !18837)
    #dbg_value(i64 1, !1715, !DIExpression(), !18839)
    #dbg_value(ptr %i.bu, !1705, !DIExpression(), !18841)
    #dbg_value(ptr %i.bu, !1721, !DIExpression(), !18839)
    #dbg_value(!DIArgList(ptr %i.aj, i64 %i.al), !1707, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !18842)
    #dbg_value(ptr poison, !1726, !DIExpression(), !18843)
    #dbg_value(ptr poison, !1732, !DIExpression(), !18845)
  %i.bv = add nuw nsw i64 %.promoted176.i.i.i, 3, !dbg !18846
  %i.bw = icmp samesign ne i64 %i.bv, %i.al, !dbg !18846
  tail call void @llvm.assume(i1 %i.bw), !dbg !18847
  %i.bx = load i8, ptr %i.bu, align 1, !dbg !18848, !noalias !18779, !noundef !49
    #dbg_value(i8 %i.bx, !18754, !DIExpression(), !18849)
    #dbg_value(i8 %i.bx, !18792, !DIExpression(), !18831)
  %i.by = shl nuw nsw i32 %i.ba, 18, !dbg !18850
  %i.bz = and i32 %i.by, 1835008, !dbg !18850
  %i.ca = shl nuw nsw i32 %i.bq, 6, !dbg !18851
  %i.cb = and i8 %i.bx, 63, !dbg !18852
  %i.cc = zext nneg i8 %i.cb to i32, !dbg !18852
  %i.cd = or disjoint i32 %i.ca, %i.cc, !dbg !18851
  %i.ce = or disjoint i32 %i.cd, %i.bz, !dbg !18853
    #dbg_value(i32 %i.ce, !18748, !DIExpression(), !18810)
  br label %bb.n, !dbg !18854

bb.m:                                             ; preds = %bb.l
  %i.cf = zext nneg i8 %i.aw to i32, !dbg !18855
  br label %bb.n, !dbg !18856

bb.n:                                             ; preds = %bb.m, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfnSKV9Rz3v_3h3i.exit30.i.i.us.i.peel.i.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfnSKV9Rz3v_3h3i.exit28.i.i.us.i.peel.i.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfnSKV9Rz3v_3h3i.exit26.i.i.us.i.peel.i.i
  %.sroa.4.0.i.ph.i.us.i.peel.i.i = phi i32 [ %i.bs, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfnSKV9Rz3v_3h3i.exit28.i.i.us.i.peel.i.i ], [ %i.ce, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfnSKV9Rz3v_3h3i.exit30.i.i.us.i.peel.i.i ], [ %i.bh, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfnSKV9Rz3v_3h3i.exit26.i.i.us.i.peel.i.i ], [ %i.cf, %bb.m ] ; 4 uses
    #dbg_value(i32 1, !18858, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !18872)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, !18858, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !18872)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, !18870, !DIExpression(), !18874)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, !18875, !DIExpression(), !18880)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, !18882, !DIExpression(), !18887)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, !18889, !DIExpression(), !18896)
  %i.cg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, 1114112, !dbg !18898
  tail call void @llvm.assume(i1 %i.cg), !dbg !18898
  br i1 %i.ao, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, label %bb.o, !dbg !18899

bb.o:                                             ; preds = %bb.n
    #dbg_value(i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, !18573, !DIExpression(), !18900)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, !18901, !DIExpression(), !18906)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, !18908, !DIExpression(), !18913)
  %i.ch = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, 128, !dbg !18915
end_hunk_0
begin_hunk_1_@_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h316squish_suggester0INtB7_5FnMutTRRReEE8call_mutBW_:bb.a
  %i.fw = icmp ult i64 %i.fv, %i.dn, !dbg !19270
  br i1 %i.fw, label %.lr.ph.i34.i.i.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, !dbg !19270

.lr.ph.i34.i.i.i:                                 ; preds = %bb.ai
  %i.fx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.fy = load i64, ptr %i.fx, align 8, !alias.scope !19266, !noalias !19267, !noundef !49
  %i.fz = load i64, ptr %i.dg, align 8, !alias.scope !19266, !noalias !19267
  %.fr234.i.i.i = freeze i64 %i.fz, !dbg !19271   ; 7 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.gb = load i64, ptr %i.ga, align 8, !alias.scope !19266, !noalias !19267
  %umax.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %.fr234.i.i.i, i64 range(i64 0, -9223372036854775808) %i.dr), !dbg !19271
  %i.gc = add i64 %.fr234.i.i.i, -1, !dbg !19271  ; 2 uses
  %.first_iter.i35.i.i.i = icmp ult i64 %i.gc, %i.dr
  %exitcond.not.i36.i.i.i112.not = icmp ult i64 %.fr234.i.i.i, %i.dr
  %invariant.op151 = sub i64 1, %.fr234.i.i.i, !dbg !19271
  %.not58.i.us.i.i.i115 = icmp eq i64 %.fr234.i.i.i, 0 ; 2 uses
  br label %.lr.ph.split.us.i.i.i.i, !dbg !19271

.lr.ph.split.us.i.i.i.i:                          ; preds = %bb.al, %.lr.ph.i34.i.i.i
  %.sink.i37.i56.i.i = phi i64 [ %.sink.i37.i.i.i, %bb.al ], [ %.promoted.i31.i.i.i, %.lr.ph.i34.i.i.i ] ; 5 uses
  %i.gd = phi i64 [ %i.hb, %bb.al ], [ %i.fv, %.lr.ph.i34.i.i.i ]
  %i.ge = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.gd, !dbg !19272
  %i.gf = load i8, ptr %i.ge, align 1, !dbg !19273, !alias.scope !19261, !noalias !19274, !noundef !49
    #dbg_value(i8 %i.gf, !19020, !DIExpression(), !19275)
    #dbg_value(i8 %i.gf, !19078, !DIExpression(), !19079)
  %i.gg = and i8 %i.gf, 63, !dbg !19276
  %i.gh = zext nneg i8 %i.gg to i64, !dbg !19277
  %i.gi = shl nuw i64 1, %i.gh, !dbg !19278
  %i.gj = and i64 %i.gi, %i.fy, !dbg !19278
  %.not.us.i.i.i.i = icmp eq i64 %i.gj, 0, !dbg !19278
  br i1 %.not.us.i.i.i.i, label %bb.ak, label %.preheader59.i.i.i.i.preheader, !dbg !19271

.preheader59.i.i.i.i.preheader:                   ; preds = %.lr.ph.split.us.i.i.i.i
    #dbg_value(i64 %.fr234.i.i.i, !19024, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19279)
    #dbg_value(ptr undef, !19058, !DIExpression(), !19067)
    #dbg_value(ptr undef, !19051, !DIExpression(), !19065)
    #dbg_value(ptr undef, !18958, !DIExpression(), !19047)
    #dbg_value(ptr undef, !18961, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !19280)
  br i1 %exitcond.not.i36.i.i.i112.not, label %.lr.ph114, label %.preheader.i38.preheader.i.i.i, !dbg !19281

.preheader59.i.i.i.i:                             ; preds = %.lr.ph114
  %i.gk = add i64 %.sroa.04.0.us.i.i.i.i113, 1, !dbg !19282 ; 2 uses
    #dbg_value(i64 %i.gk, !19024, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19279)
    #dbg_value(i64 %i.gk, !19024, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19279)
    #dbg_value(ptr undef, !19058, !DIExpression(), !19067)
    #dbg_value(ptr undef, !19051, !DIExpression(), !19065)
    #dbg_value(ptr undef, !18958, !DIExpression(), !19047)
    #dbg_value(ptr undef, !18961, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !19280)
  %exitcond.not.i36.i.i.i = icmp eq i64 %i.gk, %umax.i.i.i.i, !dbg !19283
  br i1 %exitcond.not.i36.i.i.i, label %.preheader.i38.preheader.i.i.i, label %.lr.ph114, !dbg !19281

.preheader.i38.preheader.i.i.i:                   ; preds = %.preheader59.i.i.i.i, %.preheader59.i.i.i.i.preheader
    #dbg_value(ptr undef, !18994, !DIExpression(), !19045)
    #dbg_value(ptr undef, !18994, !DIExpression(), !19045)
    #dbg_value(ptr undef, !18977, !DIExpression(), !19043)
    #dbg_value(ptr undef, !18977, !DIExpression(), !19043)
    #dbg_value(ptr undef, !18972, !DIExpression(), !19041)
    #dbg_value(ptr undef, !18972, !DIExpression(), !19041)
    #dbg_value(ptr undef, !18958, !DIExpression(), !18962)
    #dbg_value(ptr undef, !18958, !DIExpression(), !18962)
    #dbg_value(ptr undef, !18961, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !19284)
    #dbg_value(ptr undef, !18961, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !19284)
  br i1 %.first_iter.i35.i.i.i, label %.preheader.i38.us.i.i.i.preheader, label %.preheader.i38.i.i.i

.preheader.i38.us.i.i.i.preheader:                ; preds = %.preheader.i38.preheader.i.i.i
    #dbg_value(i64 %.fr234.i.i.i, !19029, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19285)
  br i1 %.not58.i.us.i.i.i115, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, label %.lr.ph117, !dbg !19286

.preheader.i38.us.i.i.i:                          ; preds = %.lr.ph117
    #dbg_value(i64 %i.gl, !19029, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19285)
    #dbg_value(ptr undef, !18994, !DIExpression(), !19045)
    #dbg_value(ptr undef, !18977, !DIExpression(), !19043)
    #dbg_value(ptr undef, !18972, !DIExpression(), !19041)
    #dbg_value(ptr undef, !18958, !DIExpression(), !18962)
    #dbg_value(ptr undef, !18961, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !19284)
  %.not58.i.us.i.i.i = icmp eq i64 %i.gl, 0, !dbg !19287
  br i1 %.not58.i.us.i.i.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, label %.lr.ph117, !dbg !19286

.lr.ph117:                                        ; preds = %.preheader.i38.us.i.i.i.preheader, %.preheader.i38.us.i.i.i
  %.sroa.2.0.us.i.us.i.i.i116 = phi i64 [ %i.gl, %.preheader.i38.us.i.i.i ], [ %.fr234.i.i.i, %.preheader.i38.us.i.i.i.preheader ]
    #dbg_value(i64 %.sroa.2.0.us.i.us.i.i.i116, !19029, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19285)
    #dbg_value(i64 %.sroa.2.0.us.i.us.i.i.i116, !19154, !DIExpression(), !19155)
    #dbg_value(i64 %.sroa.2.0.us.i.us.i.i.i116, !19162, !DIExpression(), !19163)
  %i.gl = add i64 %.sroa.2.0.us.i.us.i.i.i116, -1, !dbg !19288 ; 4 uses
    #dbg_value(i64 %i.gl, !19029, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19285)
    #dbg_value(i64 %i.gl, !19030, !DIExpression(), !19289)
  %i.gm = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.gl, !dbg !19290
  %i.gn = load i8, ptr %i.gm, align 1, !dbg !19290, !alias.scope !19263, !noalias !19291, !noundef !49
  %i.go = add i64 %i.gl, %.sink.i37.i56.i.i, !dbg !19292 ; 2 uses
    #dbg_value(i64 %i.go, !19110, !DIExpression(), !19125)
    #dbg_value(i64 %i.go, !19120, !DIExpression(), !19129)
  %i.gp = icmp ult i64 %i.go, %i.dn, !dbg !19293
  tail call void @llvm.assume(i1 %i.gp), !dbg !19294
  %i.gq = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.go, !dbg !19295
  %i.gr = load i8, ptr %i.gq, align 1, !dbg !19296, !alias.scope !19261, !noalias !19274, !noundef !49
  %.not44.us.i.us.i.i.i = icmp eq i8 %i.gn, %i.gr, !dbg !19290
  br i1 %.not44.us.i.us.i.i.i, label %.preheader.i38.us.i.i.i, label %.split.us.i.i.i, !dbg !19290

.split.us.i.i.i:                                  ; preds = %.lr.ph117
  %i.gs = add i64 %.sink.i37.i56.i.i, %i.gb, !dbg !19297
  br label %bb.al, !dbg !19298

.lr.ph114:                                        ; preds = %.preheader59.i.i.i.i.preheader, %.preheader59.i.i.i.i
  %.sroa.04.0.us.i.i.i.i113 = phi i64 [ %i.gk, %.preheader59.i.i.i.i ], [ %.fr234.i.i.i, %.preheader59.i.i.i.i.preheader ] ; 4 uses
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.i113, !19024, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19279)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.i113, !19052, !DIExpression(), !19299)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.i113, !19138, !DIExpression(), !19139)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.i113, !19146, !DIExpression(), !19147)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.i113, !19024, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !19279)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.i113, !19026, !DIExpression(), !19300)
  %i.gt = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.sroa.04.0.us.i.i.i.i113, !dbg !19301
  %i.gu = load i8, ptr %i.gt, align 1, !dbg !19301, !alias.scope !19263, !noalias !19291, !noundef !49
  %i.gv = add i64 %.sroa.04.0.us.i.i.i.i113, %.sink.i37.i56.i.i, !dbg !19302 ; 2 uses
    #dbg_value(i64 %i.gv, !19110, !DIExpression(), !19111)
    #dbg_value(i64 %i.gv, !19120, !DIExpression(), !19121)
  %i.gw = icmp ult i64 %i.gv, %i.dn, !dbg !19303
  tail call void @llvm.assume(i1 %i.gw), !dbg !19304
  %i.gx = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.gv, !dbg !19305
  %i.gy = load i8, ptr %i.gx, align 1, !dbg !19306, !alias.scope !19261, !noalias !19274, !noundef !49
  %.not45.us.i.i.i.i = icmp eq i8 %i.gu, %i.gy, !dbg !19301
  br i1 %.not45.us.i.i.i.i, label %.preheader59.i.i.i.i, label %bb.aj, !dbg !19301

.preheader.i38.i.i.i:                             ; preds = %.preheader.i38.preheader.i.i.i
    #dbg_value(i64 %i.fz, !19029, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19285)
  br i1 %.not58.i.us.i.i.i115, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, label %.invoke.i, !dbg !19286

bb.aj:                                            ; preds = %.lr.ph114
  %.reass301.i.reass.i.reass.i.reass.reass = add i64 %.sink.i37.i56.i.i, %invariant.op151
  %i.gz = add i64 %.reass301.i.reass.i.reass.i.reass.reass, %.sroa.04.0.us.i.i.i.i113, !dbg !19307
  br label %bb.al, !dbg !19308

bb.ak:                                            ; preds = %.lr.ph.split.us.i.i.i.i
  %i.ha = add i64 %.sink.i37.i56.i.i, %i.dr, !dbg !19309
  br label %bb.al, !dbg !19310

bb.al:                                            ; preds = %bb.ak, %bb.aj, %.split.us.i.i.i
  %.sink.i37.i.i.i = phi i64 [ %i.ha, %bb.ak ], [ %i.gz, %bb.aj ], [ %i.gs, %.split.us.i.i.i ] ; 2 uses
  %i.hb = add i64 %.sink.i37.i.i.i, %i.dt, !dbg !19269 ; 2 uses
    #dbg_value(i64 %i.hb, !19088, !DIExpression(), !19090)
    #dbg_value(i64 %i.hb, !19100, !DIExpression(), !19101)
  %i.hc = icmp ult i64 %i.hb, %i.dn, !dbg !19270
  br i1 %i.hc, label %.lr.ph.split.us.i.i.i.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, !dbg !19270

_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i.i: ; preds = %.lr.ph.i.i15.i.i, %.noexc9.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfnSKV9Rz3v_3h3i.exit26.i.i.us.i.i.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfnSKV9Rz3v_3h3i.exit28.i.i.us.i.i.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfnSKV9Rz3v_3h3i.exit30.i.i.us.i.i.i, %bb.u
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, !dbg !19311

_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i: ; preds = %bb.ad, %.preheader60.i.i.i.i.preheader, %.preheader60.i.i.i.i, %bb.al, %.preheader.i38.us.i.i.i.preheader, %.preheader.i38.us.i.i.i, %bb.z, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i.i, %.preheader.i38.i.i.i, %bb.ai, %bb.aa, %.noexc9.i, %bb.v, %bb.t, %bb.n, %bb.k, %.preheader.i.i.i
  %storemerge.i.sink.i.i.i = phi i8 [ 1, %.preheader60.i.i.i.i ], [ 0, %bb.aa ], [ 0, %bb.v ], [ 0, %bb.ai ], [ 1, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i.i ], [ 0, %.noexc9.i ], [ 1, %.preheader.i38.us.i.i.i ], [ 0, %.preheader.i.i.i ], [ 1, %bb.n ], [ 1, %bb.t ], [ 1, %.preheader.i38.us.i.i.i.preheader ], [ 1, %.preheader.i38.i.i.i ], [ %.promoted225.i.i.i, %bb.k ], [ 0, %bb.z ], [ 0, %bb.al ], [ 0, %bb.ad ], [ 1, %.preheader60.i.i.i.i.preheader ]
    #dbg_value(i8 %storemerge.i.sink.i.i.i, !18319, !DIExpression(), !19312)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !19311, !noalias !18488
  br label %.loopexit.i, !dbg !19311

bb.am:                                            ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19313), !dbg !19316
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19317), !dbg !19316
    #dbg_value(ptr poison, !19319, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !19382)
    #dbg_value(ptr poison, !19319, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !19382)
    #dbg_value(ptr poison, !19384, !DIExpression(), !19410)
    #dbg_value(ptr poison, !19441, !DIExpression(), !19478)
    #dbg_value(ptr poison, !19473, !DIExpression(), !19479)
    #dbg_value(ptr poison, !19480, !DIExpression(), !19484)
    #dbg_value(ptr poison, !19488, !DIExpression(), !19563)
    #dbg_value(ptr poison, !19492, !DIExpression(), !19564)
    #dbg_value(ptr poison, !19527, !DIExpression(), !19565)
    #dbg_value(ptr poison, !19558, !DIExpression(), !19566)
    #dbg_value(ptr poison, !19319, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19382)
    #dbg_value(ptr poison, !19529, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !19565)
    #dbg_value(ptr poison, !19559, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !19566)
    #dbg_value(ptr poison, !19567, !DIExpression(), !19571)
    #dbg_value(ptr poison, !19443, !DIExpression(), !19478)
    #dbg_value(ptr poison, !19474, !DIExpression(), !19479)
    #dbg_value(ptr %i.m, !19334, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19592)
    #dbg_value(i64 %i.o, !19334, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19592)
    #dbg_value(ptr %i.i, !19335, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19592)
    #dbg_value(i64 %i.k, !19335, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19592)
    #dbg_declare(ptr %i.a, !19351, !DIExpression(), !19593)
    #dbg_value(i64 4, !19594, !DIExpression(), !19598)
    #dbg_value(i64 1, !19600, !DIExpression(), !19604)
    #dbg_value(i64 1, !19606, !DIExpression(), !19612)
    #dbg_value(i64 1, !19614, !DIExpression(), !19619)
    #dbg_value(ptr %i.m, !19336, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19621)
    #dbg_value(ptr %i.m, !19603, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19604)
    #dbg_value(ptr %i.m, !19609, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19612)
    #dbg_value(ptr %i.m, !19617, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19619)
    #dbg_value(i64 %i.o, !19336, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19621)
    #dbg_value(i64 %i.o, !19603, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19604)
    #dbg_value(i64 %i.o, !19609, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19612)
    #dbg_value(i64 %i.o, !19617, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19619)
    #dbg_value(ptr %i.i, !19337, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19622)
    #dbg_value(i64 %i.k, !19337, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19622)
    #dbg_value(i64 %i.o, !19597, !DIExpression(), !19598)
  %i.hd = load i8, ptr %i.m, align 1, !dbg !19623, !alias.scope !19624, !noalias !19625, !noundef !49 ; 3 uses
    #dbg_value(i8 %i.hd, !19338, !DIExpression(), !19626)
    #dbg_value(i8 %i.hd, !19627, !DIExpression(), !19634)
  %i.he = add nsw i64 %i.o, -1, !dbg !19636       ; 2 uses
    #dbg_value(i64 %i.he, !19339, !DIExpression(), !19637)
  %i.hf = icmp eq i64 %i.o, 2, !dbg !19638
  br i1 %i.hf, label %.thread.i.i.i, label %bb.an, !dbg !19638

bb.an:                                            ; preds = %bb.am
  %i.hg = tail call i64 @llvm.usub.sat.i64(i64 range(i64 2, 33) %i.o, i64 4), !dbg !19639
    #dbg_value(ptr undef, !19558, !DIExpression(), !19566)
    #dbg_value(ptr %i.m, !19559, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19566)
    #dbg_value(i64 %i.o, !19559, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19566)
    #dbg_value(ptr undef, !19559, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19566)
    #dbg_value(ptr %i.m, !19529, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19565)
    #dbg_value(i64 %i.o, !19529, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19565)
    #dbg_value(ptr undef, !19529, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19565)
    #dbg_value(ptr undef, !19527, !DIExpression(), !19565)
    #dbg_declare(ptr poison, !19528, !DIExpression(), !19640)
    #dbg_declare(ptr poison, !19530, !DIExpression(), !19641)
    #dbg_value(ptr undef, !19492, !DIExpression(), !19564)
    #dbg_value(ptr undef, !19488, !DIExpression(), !19563)
    #dbg_value(ptr undef, !19480, !DIExpression(), !19484)
    #dbg_value(ptr undef, !19483, !DIExpression(), !19484)
  br label %.lr.ph, !dbg !19642

bb.ao:                                            ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsjfnSKV9Rz3v_3h3i.exit.i.i.i.i
    #dbg_value(ptr undef, !19492, !DIExpression(), !19564)
    #dbg_value(ptr undef, !19488, !DIExpression(), !19563)
    #dbg_value(ptr undef, !19480, !DIExpression(), !19484)
    #dbg_value(ptr undef, !19483, !DIExpression(), !19484)
  %i.hh = icmp ult i64 %i.hg, %i.hj, !dbg !19643
  br i1 %i.hh, label %.lr.ph, label %_RNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_contains.exit.i.i, !dbg !19642

.lr.ph:                                           ; preds = %bb.an, %bb.ao
  %i.hi = phi i64 [ %i.o, %bb.an ], [ %i.hj, %bb.ao ]
    #dbg_value(i64 %i.hi, !19644, !DIExpression(), !19648)
    #dbg_value(i64 %i.hi, !19650, !DIExpression(), !19654)
    #dbg_value(i64 1, !19647, !DIExpression(), !19648)
    #dbg_value(i64 1, !19653, !DIExpression(), !19654)
  %i.hj = add nsw i64 %i.hi, -1, !dbg !19656      ; 6 uses
    #dbg_value(i64 %i.hj, !19531, !DIExpression(), !19657)
    #dbg_value(ptr poison, !19658, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !19668)
    #dbg_declare(ptr poison, !19665, !DIExpression(), !19670)
    #dbg_value(ptr undef, !19664, !DIExpression(DW_OP_deref), !19668)
    #dbg_value(ptr poison, !19671, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_deref), !19681)
    #dbg_value(ptr poison, !19680, !DIExpression(), !19681)
    #dbg_value(i64 %i.hj, !19678, !DIExpression(), !19683)
  %i.hk = icmp ult i64 %i.hj, %i.o, !dbg !19684
  br i1 %i.hk, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsjfnSKV9Rz3v_3h3i.exit.i.i.i.i, label %.invoke.i, !dbg !19684

.invoke.i:                                        ; preds = %.lr.ph, %.lr.ph111, %.preheader.i38.i.i.i
  %i.hl = phi i64 [ %i.gc, %.preheader.i38.i.i.i ], [ %i.fl, %.lr.ph111 ], [ %i.hj, %.lr.ph ]
  %i.hm = phi i64 [ %i.dr, %.preheader.i38.i.i.i ], [ %i.dr, %.lr.ph111 ], [ %i.o, %.lr.ph ]
  %i.hn = phi ptr [ @26, %.preheader.i38.i.i.i ], [ @26, %.lr.ph111 ], [ @29, %.lr.ph ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.hl, i64 noundef range(i64 0, -9223372036854775808) %i.hm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hn) #32
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !dbg !18321

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsjfnSKV9Rz3v_3h3i.exit.i.i.i.i: ; preds = %.lr.ph
  %i.ho = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.hj, !dbg !19684
  %i.hp = load i8, ptr %i.ho, align 1, !dbg !19684, !alias.scope !19624, !noalias !19685, !noundef !49 ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i8 %i.hp, %i.hd, !dbg !19684
  br i1 %.not.i.not.i.i.i.i, label %bb.ao, label %bb.ap, !dbg !19693

bb.ap:                                            ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsjfnSKV9Rz3v_3h3i.exit.i.i.i.i
  %i.hq = add nuw nsw i64 %i.o, 15, !dbg !19694
  %i.hr = icmp ult i64 %i.k, %i.hq, !dbg !19695
  br i1 %i.hr, label %.lr.ph.split.us.i.i21.i.i, label %bb.aq, !dbg !19695

.thread.i.i.i:                                    ; preds = %bb.am
  %i.hs = icmp ult i64 %i.k, 17, !dbg !19695
  br i1 %i.hs, label %.lr.ph.split.us.i.i21.i.i, label %.thread131.i.i.i, !dbg !19695

.thread131.i.i.i:                                 ; preds = %.thread.i.i.i
    #dbg_value(i8 %i.hd, !19627, !DIExpression(), !19634)
    #dbg_value(i8 %i.hd, !19338, !DIExpression(), !19626)
  %i.ht = insertelement <16 x i8> poison, i8 %i.hd, i64 0, !dbg !19696
  %i.hu = shufflevector <16 x i8> %i.ht, <16 x i8> poison, <16 x i32> zeroinitializer, !dbg !19696
    #dbg_value(<16 x i8> %i.hu, !19343, !DIExpression(), !19697)
    #dbg_value(i64 1, !19340, !DIExpression(), !19698)
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 1, !dbg !19699, !alias.scope !19624, !noalias !19625
  br label %bb.ar, !dbg !19699

bb.aq:                                            ; preds = %bb.ap
    #dbg_value(i8 %i.hd, !19627, !DIExpression(), !19634)
    #dbg_value(i8 %i.hd, !19338, !DIExpression(), !19626)
  %i.hv = insertelement <16 x i8> poison, i8 %i.hd, i64 0, !dbg !19696
  %i.hw = shufflevector <16 x i8> %i.hv, <16 x i8> poison, <16 x i32> zeroinitializer, !dbg !19696
    #dbg_value(<16 x i8> %i.hw, !19343, !DIExpression(), !19697)
    #dbg_value(i64 %i.hj, !19340, !DIExpression(), !19698)
  br label %bb.ar, !dbg !19699

.lr.ph.split.us.i.i21.i.i:                        ; preds = %.thread.i.i.i, %bb.ap
    #dbg_value(ptr undef, !19473, !DIExpression(), !19479)
    #dbg_value(ptr undef, !19474, !DIExpression(), !19479)
    #dbg_value(ptr undef, !19443, !DIExpression(), !19478)
    #dbg_value(ptr undef, !19441, !DIExpression(), !19478)
    #dbg_declare(ptr poison, !19442, !DIExpression(), !19700)
    #dbg_declare(ptr poison, !19444, !DIExpression(), !19701)
    #dbg_value(ptr undef, !19384, !DIExpression(), !19410)
    #dbg_value(i64 0, !19702, !DIExpression(), !19707)
    #dbg_value(i64 1, !19729, !DIExpression(), !19733)
    #dbg_value(i64 1, !19735, !DIExpression(), !19741)
    #dbg_value(i64 1, !19702, !DIExpression(), !19744)
    #dbg_value(ptr %i.i, !19705, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19707)
    #dbg_value(i64 %i.k, !19705, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19707)
    #dbg_value(i64 %i.o, !19706, !DIExpression(), !19707)
    #dbg_value(ptr %i.i, !19408, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19746)
    #dbg_value(i64 %i.o, !19408, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19746)
    #dbg_value(ptr %i.i, !19732, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19733)
    #dbg_value(ptr %i.i, !19738, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19741)
    #dbg_value(ptr %i.i, !19705, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19744)
    #dbg_value(i64 %i.k, !19732, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19733)
    #dbg_value(i64 %i.k, !19738, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19741)
    #dbg_value(i64 %i.k, !19705, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19744)
  %bcmp.i.i.us24.i.i.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.i, ptr noundef nonnull readonly dereferenceable(1) %i.m, i64 range(i64 2, 33) %i.o), !dbg !19747, !alias.scope !19763, !noalias !19764
  %i.hx = icmp eq i32 %bcmp.i.i.us24.i.i.i.i, 0, !dbg !19747
  br i1 %i.hx, label %.loopexit.i, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsjfnSKV9Rz3v_3h3i.exit.backedge.us.i.i.i.i, !dbg !19768

.split.us.i.i.i.i:                                ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsjfnSKV9Rz3v_3h3i.exit.backedge.us.i.i.i.i
  %i.hy = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 1, !dbg !19769 ; 2 uses
    #dbg_value(ptr %i.hy, !19705, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19707)
    #dbg_value(i64 %i.ia, !19705, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19707)
    #dbg_value(i64 %i.o, !19706, !DIExpression(), !19707)
    #dbg_value(ptr %i.hy, !19732, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19733)
    #dbg_value(ptr %i.hy, !19738, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19741)
    #dbg_value(ptr %i.hy, !19705, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19744)
    #dbg_value(i64 %i.ia, !19732, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19733)
    #dbg_value(i64 %i.ia, !19738, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19741)
    #dbg_value(i64 %i.ia, !19705, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19744)
    #dbg_value(i64 %i.ia, !19739, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !19770)
    #dbg_value(i64 %i.ia, !19706, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !19744)
    #dbg_value(ptr %i.hy, !19408, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19746)
    #dbg_value(i64 %i.o, !19408, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19746)
    #dbg_value(ptr %i.hy, !19445, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19771)
    #dbg_value(i64 %i.o, !19445, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19771)
    #dbg_value(ptr poison, !19587, !DIExpression(DW_OP_deref), !19772)
    #dbg_declare(ptr poison, !19588, !DIExpression(), !19773)
    #dbg_value(ptr %i.hy, !19586, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19772)
    #dbg_value(i64 %i.o, !19586, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19772)
    #dbg_value(ptr poison, !19579, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !19774)
    #dbg_value(ptr %i.hy, !19578, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19774)
    #dbg_value(ptr %i.hy, !19759, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19775)
    #dbg_value(i64 %i.o, !19578, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19774)
    #dbg_value(i64 %i.o, !19759, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19775)
    #dbg_value(ptr poison, !19570, !DIExpression(), !19776)
    #dbg_value(ptr undef, !19567, !DIExpression(), !19571)
    #dbg_value(i64 %i.o, !19760, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19775)
    #dbg_value(i64 %i.o, !19761, !DIExpression(), !19777)
    #dbg_value(i64 %i.o, !19753, !DIExpression(), !19778)
    #dbg_value(i64 %i.o, !19754, !DIExpression(), !19779)
    #dbg_value(ptr %i.m, !19760, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19775)
    #dbg_value(ptr %i.hy, !19751, !DIExpression(), !19778)
    #dbg_value(ptr %i.m, !19752, !DIExpression(), !19778)
  %bcmp.i.i.us.i.i.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.hy, ptr noundef nonnull readonly dereferenceable(1) %i.m, i64 range(i64 2, 33) %i.o), !dbg !19747, !alias.scope !19763, !noalias !19764
  %i.hz = icmp eq i32 %bcmp.i.i.us.i.i.i.i, 0, !dbg !19747
  br i1 %i.hz, label %.loopexit.i, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsjfnSKV9Rz3v_3h3i.exit.backedge.us.i.i.i.i, !dbg !19768

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsjfnSKV9Rz3v_3h3i.exit.backedge.us.i.i.i.i: ; preds = %.lr.ph.split.us.i.i21.i.i, %.split.us.i.i.i.i
  %.pn.i.i.i = phi ptr [ %i.hy, %.split.us.i.i.i.i ], [ %i.i, %.lr.ph.split.us.i.i21.i.i ]
  %.in.i.i.i = phi i64 [ %i.ia, %.split.us.i.i.i.i ], [ %i.k, %.lr.ph.split.us.i.i21.i.i ]
  %i.ia = add i64 %.in.i.i.i, -1, !dbg !19780     ; 2 uses
    #dbg_value(ptr undef, !19384, !DIExpression(), !19410)
    #dbg_value(i64 0, !19702, !DIExpression(), !19707)
    #dbg_value(i64 1, !19729, !DIExpression(), !19733)
    #dbg_value(i64 1, !19735, !DIExpression(), !19741)
    #dbg_value(i64 1, !19702, !DIExpression(), !19744)
  %.not29.i.i.i.i = icmp ugt i64 %i.o, %i.ia, !dbg !19781
  br i1 %.not29.i.i.i.i, label %.loopexit.i, label %.split.us.i.i.i.i, !dbg !19781

bb.ar:                                            ; preds = %bb.aq, %.thread131.i.i.i
  %i.ib = phi i8 [ %.pre.i.i.i, %.thread131.i.i.i ], [ %i.hp, %bb.aq ], !dbg !19699
  %i.ic = phi <16 x i8> [ %i.hu, %.thread131.i.i.i ], [ %i.hw, %bb.aq ] ; 6 uses
  %storemerge130133.i.i.i = phi i64 [ 1, %.thread131.i.i.i ], [ %i.hj, %bb.aq ] ; 6 uses
    #dbg_value(i8 %i.ib, !19627, !DIExpression(), !19782)
  %i.id = insertelement <16 x i8> poison, i8 %i.ib, i64 0, !dbg !19784
  %i.ie = shufflevector <16 x i8> %i.id, <16 x i8> poison, <16 x i32> zeroinitializer, !dbg !19784 ; 6 uses
    #dbg_value(<16 x i8> %i.ie, !19349, !DIExpression(), !19785)
    #dbg_value(i64 %i.he, !19610, !DIExpression(), !19786)
    #dbg_value(i64 %i.he, !19618, !DIExpression(), !19619)
  %i.if = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !19787
    #dbg_value(ptr %i.if, !19350, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19788)
    #dbg_value(i64 %i.he, !19350, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19788)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !19789, !noalias !19763
  store ptr %i.i, ptr %i.a, align 8, !dbg !19790, !noalias !19763
  %i.ig = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !19790
  store i64 %i.k, ptr %i.ig, align 8, !dbg !19790, !noalias !19763
  %i.ih = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !19790
  store ptr %i.if, ptr %i.ih, align 8, !dbg !19790, !noalias !19763
  %i.ii = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !19790
  store i64 %i.he, ptr %i.ii, align 8, !dbg !19790, !noalias !19763
    #dbg_value(ptr %i.i, !19319, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19382)
    #dbg_value(i64 %i.k, !19319, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19382)
    #dbg_value(ptr undef, !19319, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19382)
    #dbg_value(ptr undef, !19319, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !19382)
    #dbg_value(ptr undef, !19319, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !19382)
    #dbg_value(i64 0, !19352, !DIExpression(), !19791)
    #dbg_value(i8 0, !19354, !DIExpression(), !19792)
  %i.ij = add nuw nsw i64 %i.o, 63                ; 2 uses
  %.not.i17.i.i = icmp ult i64 %i.ij, %i.k, !dbg !19793
  br i1 %.not.i17.i.i, label %.lr.ph.i19.i.i, label %.preheader.i18.i.i, !dbg !19793

.preheader.i18.i.i:                               ; preds = %bb.av, %bb.ar
  %.sroa.014.0.lcssa.i.i.i = phi i8 [ 0, %bb.ar ], [ %.sroa.014.2.3.i.i.i, %bb.av ], !dbg !19794 ; 2 uses
  %.sroa.06.0.lcssa.i.i.i = phi i64 [ 0, %bb.ar ], [ %i.kf, %bb.av ], !dbg !19382 ; 2 uses
  %i.ik = add nuw nsw i64 %i.o, 15                ; 2 uses
    #dbg_value(i64 %.sroa.06.0.lcssa.i.i.i, !19352, !DIExpression(), !19791)
    #dbg_value(i8 %.sroa.014.0.lcssa.i.i.i, !19354, !DIExpression(), !19792)
  %i.il = add i64 %.sroa.06.0.lcssa.i.i.i, %i.ik, !dbg !19795
  %i.im = icmp uge i64 %i.il, %i.k, !dbg !19795
  %i.in = trunc nuw i8 %.sroa.014.0.lcssa.i.i.i to i1 ; 2 uses
  %or.cond3143.i.i.i = select i1 %i.im, i1 true, i1 %i.in, !dbg !19795
  br i1 %or.cond3143.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph145.i.i.i, !dbg !19795

.lr.ph.i19.i.i:                                   ; preds = %bb.ar, %bb.av
  %.sroa.06.0141.i.i.i = phi i64 [ %i.kf, %bb.av ], [ 0, %bb.ar ] ; 6 uses
    #dbg_value(i64 %.sroa.06.0141.i.i.i, !19352, !DIExpression(), !19791)
    #dbg_value(i16 0, !19356, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !19796)
    #dbg_value(i16 0, !19356, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !19796)
    #dbg_value(i16 0, !19356, !DIExpression(DW_OP_LLVM_fragment, 32, 16), !19796)
    #dbg_value(i16 0, !19356, !DIExpression(DW_OP_LLVM_fragment, 48, 16), !19796)
    #dbg_value(i64 0, !19359, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19797)
    #dbg_value(i64 4, !19359, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19797)
  %i.io = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.06.0141.i.i.i ; 5 uses
    #dbg_value(i64 0, !19359, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !19797)
    #dbg_value(i64 0, !19361, !DIExpression(), !19798)
    #dbg_value(ptr poison, !19799, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_deref), !19829)
    #dbg_value(ptr poison, !19807, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 24, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !19829)
    #dbg_value(ptr poison, !19808, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !19829)
    #dbg_value(!DIArgList(i64 %.sroa.06.0141.i.i.i, i64 0), !19805, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !19829)
    #dbg_value(!DIArgList(i64 %.sroa.06.0141.i.i.i, i64 0), !19831, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !19835)
    #dbg_value(!DIArgList(i64 %.sroa.06.0141.i.i.i, i64 0), !19831, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !19837)
end_hunk_1
begin_hunk_2_@llvm.umax.i64
!19442 = !DILocalVariable(name: "init", arg: 2, scope: !19414, file: !6154, line: 2482, type: !7)
!19443 = !DILocalVariable(name: "f", arg: 3, scope: !19414, file: !6154, line: 2482, type: !19432)
!19444 = !DILocalVariable(name: "accum", scope: !19413, file: !6154, line: 2488, type: !7, align: 8)
!19445 = !DILocalVariable(name: "x", scope: !19412, file: !6154, line: 2489, type: !5943, align: 64)
!19446 = !DILocalVariable(name: "residual", scope: !19447, file: !6154, line: 2490, type: !19448, align: 8)
!19447 = distinct !DILexicalBlock(scope: !19412, file: !6154, line: 2490, column: 32)
!19448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ControlFlow<(), !>", scope: !5823, file: !2, align: 8, flags: DIFlagPublic, elements: !19449, templateParams: !49, identifier: "1472d3dafb8cfb7f6403e55f7aa9f51b")
!19449 = !{!19450}
!19450 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !19448, file: !2, align: 8, elements: !19451, templateParams: !49, identifier: "524710713faff957f797267d0064a1b3")
!19451 = !{!19452, !19458}
!19452 = !DIDerivedType(tag: DW_TAG_member, name: "Continue", scope: !19450, file: !2, baseType: !19453, align: 8)
!19453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Continue", scope: !19448, file: !2, align: 8, flags: DIFlagPublic, elements: !19454, templateParams: !19456, identifier: "353d1b6cffce692bc5a912514b32ecb2")
!19454 = !{!19455}
!19455 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !19453, file: !2, baseType: !2723, align: 8, flags: DIFlagPublic)
!19456 = !{!19426, !19457}
!19457 = !DITemplateTypeParameter(name: "C", type: !2723)
!19458 = !DIDerivedType(tag: DW_TAG_member, name: "Break", scope: !19450, file: !2, baseType: !19459, align: 8)
!19459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Break", scope: !19448, file: !2, align: 8, flags: DIFlagPublic, elements: !19460, templateParams: !19456, identifier: "44542d1e083930073f89cebc61644e29")
!19460 = !{!19461}
!19461 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !19459, file: !2, baseType: !7, align: 8, flags: DIFlagPublic)
!19462 = !DILocalVariable(name: "val", scope: !19463, file: !6154, line: 2490, type: !7, align: 8)
!19463 = distinct !DILexicalBlock(scope: !19412, file: !6154, line: 2490, column: 32)
!19464 = !{!19465, !19426, !19466, !19467}
!19465 = !DITemplateTypeParameter(name: "Self", type: !19403)
!19466 = !DITemplateTypeParameter(name: "F", type: !19432)
!19467 = !DITemplateTypeParameter(name: "R", type: !19417)
!19468 = distinct !DILocation(line: 2893, column: 14, scope: !19469, inlinedAt: !19477)
!19469 = distinct !DISubprogram(name: "any<core::slice::iter::Windows<u8>, core::str::pattern::simd_contains::{closure_env#1}>", linkageName: "_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits8iterator8Iterator3anyNCNvNtNtBa_3str7pattern13simd_containss_0ECsjfnSKV9Rz3v_3h3i", scope: !6155, file: !6154, line: 2881, type: !19470, scopeLine: 2881, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !805, templateParams: !19475, retainedNodes: !19472)
!19470 = !DISubroutineType(types: !19471)
!19471 = !{!143, !19402, !19437}
!19472 = !{!19473, !19474}
!19473 = !DILocalVariable(name: "self", arg: 1, scope: !19469, file: !6154, line: 2881, type: !19402)
!19474 = !DILocalVariable(name: "f", arg: 2, scope: !19469, file: !6154, line: 2881, type: !19437)
!19475 = !{!19465, !19476}
!19476 = !DITemplateTypeParameter(name: "F", type: !19437)
!19477 = distinct !DILocation(line: 1926, column: 52, scope: !19325, inlinedAt: !19383)
!19478 = !DILocation(line: 0, scope: !19414, inlinedAt: !19468)
!19479 = !DILocation(line: 0, scope: !19469, inlinedAt: !19477)
!19480 = !DILocalVariable(name: "self", arg: 1, scope: !19481, file: !3595, line: 2192, type: !3600)
!19481 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCskKLDkoKarTP_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !3596, file: !3595, line: 2192, type: !3598, scopeLine: 2192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !805, templateParams: !49, retainedNodes: !19482)
!19482 = !{!19480, !19483}
!19483 = !DILocalVariable(name: "other", arg: 2, scope: !19481, file: !3595, line: 2192, type: !3600)
!19484 = !DILocation(line: 0, scope: !19481, inlinedAt: !19485)
!19485 = distinct !DILocation(line: 1142, column: 12, scope: !19486, inlinedAt: !19489)
!19486 = distinct !DISubprogram(name: "spec_next_back<usize>", linkageName: "_RNvXs3_NtNtCskKLDkoKarTP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl14spec_next_backCsjfnSKV9Rz3v_3h3i", scope: !18966, file: !18965, line: 1141, type: !18968, scopeLine: 1141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !805, templateParams: !3413, retainedNodes: !19487)
!19487 = !{!19488}
!19488 = !DILocalVariable(name: "self", arg: 1, scope: !19486, file: !18965, line: 1141, type: !18970)
!19489 = distinct !DILocation(line: 1316, column: 14, scope: !19490, inlinedAt: !19493)
!19490 = distinct !DISubprogram(name: "next_back<usize>", linkageName: "_RNvXs5_NtNtCskKLDkoKarTP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits12double_ended19DoubleEndedIterator9next_backCsjfnSKV9Rz3v_3h3i", scope: !18975, file: !18965, line: 1315, type: !18968, scopeLine: 1315, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !805, templateParams: !18978, retainedNodes: !19491)
!19491 = !{!19492}
!19492 = !DILocalVariable(name: "self", arg: 1, scope: !19490, file: !18965, line: 1315, type: !18970)
!19493 = distinct !DILocation(line: 289, column: 34, scope: !19494, inlinedAt: !19553)
!19494 = distinct !DILexicalBlock(scope: !19496, file: !19495, line: 289, column: 46)
!19495 = !DIFile(filename: "library/core/src/iter/traits/double_ended.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "61d88747ca72259b35301c3c51fbcdbe")
!19496 = distinct !DILexicalBlock(scope: !19497, file: !19495, line: 288, column: 9)
!19497 = distinct !DISubprogram(name: "try_rfold<core::ops::range::Range<usize>, (), core::iter::traits::double_ended::DoubleEndedIterator::rfind::check::{closure_env#0}<usize, core::str::pattern::simd_contains::{closure_env#0}>, core::ops::control_flow::ControlFlow<usize, ()>>", linkageName: "_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtNtBa_3str7pattern13simd_contains0E0INtNtB8_12control_flow11ControlFlowjEECsjfnSKV9Rz3v_3h3i", scope: !19498, file: !19495, line: 282, type: !19500, scopeLine: 282, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !805, templateParams: !19549, retainedNodes: !19526)
!19498 = !DINamespace(name: "DoubleEndedIterator", scope: !19499)
!19499 = !DINamespace(name: "double_ended", scope: !6157)
!19500 = !DISubroutineType(types: !19501)
!19501 = !{!19502, !18970, !7, !19517}
!19502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ControlFlow<usize, ()>", scope: !5823, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !19503, templateParams: !49, identifier: "fd5a23dbd5a27454d719078d4fe2e83d")
!19503 = !{!19504}
!19504 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !19502, file: !2, size: 128, align: 64, elements: !19505, templateParams: !49, identifier: "f83098265b70d13c7887e82930d5f00c", discriminator: !19516)
!19505 = !{!19506, !19512}
!19506 = !DIDerivedType(tag: DW_TAG_member, name: "Continue", scope: !19504, file: !2, baseType: !19507, size: 128, align: 64, extraData: i64 0)
!19507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Continue", scope: !19502, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !19508, templateParams: !19510, identifier: "c304e539087f7459c5bcd95700a7382")
!19508 = !{!19509}
!19509 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !19507, file: !2, baseType: !7, align: 8, offset: 64, flags: DIFlagPublic)
!19510 = !{!19511, !6424}
!19511 = !DITemplateTypeParameter(name: "B", type: !9)
!19512 = !DIDerivedType(tag: DW_TAG_member, name: "Break", scope: !19504, file: !2, baseType: !19513, size: 128, align: 64, extraData: i64 1)
!19513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Break", scope: !19502, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !19514, templateParams: !19510, identifier: "54ef86fda17b05b35914a518f8c77877")
!19514 = !{!19515}
!19515 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !19513, file: !2, baseType: !9, size: 64, align: 64, offset: 64, flags: DIFlagPublic)
!19516 = !DIDerivedType(tag: DW_TAG_member, scope: !19502, file: !2, baseType: !18, size: 64, align: 64, flags: DIFlagArtificial)
!19517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<usize, core::str::pattern::simd_contains::{closure_env#0}>", scope: !19518, file: !2, size: 192, align: 64, elements: !19520, templateParams: !49, identifier: "7efe5456816a4e4a787f56f5f5a26c3")
!19518 = !DINamespace(name: "check", scope: !19519)
!19519 = !DINamespace(name: "rfind", scope: !19498)
!19520 = !{!19521}
!19521 = !DIDerivedType(tag: DW_TAG_member, name: "predicate", scope: !19517, file: !2, baseType: !19522, size: 192, align: 64)
!19522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}", scope: !5934, file: !2, size: 192, align: 64, elements: !19523, templateParams: !49, identifier: "b59ce0dabdd5e71c78788b81f91348e2")
!19523 = !{!19524, !19525}
!19524 = !DIDerivedType(tag: DW_TAG_member, name: "_ref__needle", scope: !19522, file: !2, baseType: !5943, size: 128, align: 64)
!19525 = !DIDerivedType(tag: DW_TAG_member, name: "_ref__first_probe", scope: !19522, file: !2, baseType: !267, size: 64, align: 64, offset: 128)
!19526 = !{!19527, !19528, !19529, !19530, !19531, !19532, !19547}
!19527 = !DILocalVariable(name: "self", arg: 1, scope: !19497, file: !19495, line: 282, type: !18970)
!19528 = !DILocalVariable(name: "init", arg: 2, scope: !19497, file: !19495, line: 282, type: !7)
!19529 = !DILocalVariable(name: "f", arg: 3, scope: !19497, file: !19495, line: 282, type: !19517)
!19530 = !DILocalVariable(name: "accum", scope: !19496, file: !19495, line: 288, type: !7, align: 8)
!19531 = !DILocalVariable(name: "x", scope: !19494, file: !19495, line: 289, type: !9, align: 64)
!19532 = !DILocalVariable(name: "residual", scope: !19533, file: !19495, line: 290, type: !19534, align: 64)
!19533 = distinct !DILexicalBlock(scope: !19494, file: !19495, line: 290, column: 32)
!19534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ControlFlow<usize, !>", scope: !5823, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !19535, templateParams: !49, identifier: "e36689d942ab3ae37fc824bb4f7ac907")
!19535 = !{!19536}
!19536 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !19534, file: !2, size: 64, align: 64, elements: !19537, templateParams: !49, identifier: "9e2fc83e01d7cd1bcd2974c1d1852d8a")
!19537 = !{!19538, !19543}
!19538 = !DIDerivedType(tag: DW_TAG_member, name: "Continue", scope: !19536, file: !2, baseType: !19539, size: 64, align: 64)
!19539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Continue", scope: !19534, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !19540, templateParams: !19542, identifier: "5e8dd0f1d09dafe078623b26ded79db3")
!19540 = !{!19541}
!19541 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !19539, file: !2, baseType: !2723, align: 8, flags: DIFlagPublic)
!19542 = !{!19511, !19457}
!19543 = !DIDerivedType(tag: DW_TAG_member, name: "Break", scope: !19536, file: !2, baseType: !19544, size: 64, align: 64)
!19544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Break", scope: !19534, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !19545, templateParams: !19542, identifier: "3c877df1730d7e179840da330bd86686")
!19545 = !{!19546}
!19546 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !19544, file: !2, baseType: !9, size: 64, align: 64, flags: DIFlagPublic)
!19547 = !DILocalVariable(name: "val", scope: !19548, file: !19495, line: 290, type: !7, align: 8)
!19548 = distinct !DILexicalBlock(scope: !19494, file: !19495, line: 290, column: 32)
!19549 = !{!19550, !19426, !19551, !19552}
!19550 = !DITemplateTypeParameter(name: "Self", type: !3480)
!19551 = !DITemplateTypeParameter(name: "F", type: !19517)
!19552 = !DITemplateTypeParameter(name: "R", type: !19502)
!19553 = distinct !DILocation(line: 431, column: 14, scope: !19554, inlinedAt: !19562)
!19554 = distinct !DISubprogram(name: "rfind<core::ops::range::Range<usize>, core::str::pattern::simd_contains::{closure_env#0}>", linkageName: "_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfindNCNvNtNtBa_3str7pattern13simd_contains0ECsjfnSKV9Rz3v_3h3i", scope: !19498, file: !19495, line: 419, type: !19555, scopeLine: 419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !805, templateParams: !19560, retainedNodes: !19557)
!19555 = !DISubroutineType(types: !19556)
!19556 = !{!3407, !18970, !19522}
!19557 = !{!19558, !19559}
!19558 = !DILocalVariable(name: "self", arg: 1, scope: !19554, file: !19495, line: 419, type: !18970)
!19559 = !DILocalVariable(name: "predicate", arg: 2, scope: !19554, file: !19495, line: 419, type: !19522)
!19560 = !{!19550, !19561}
!19561 = !DITemplateTypeParameter(name: "P", type: !19522)
!19562 = distinct !DILocation(line: 1915, column: 60, scope: !19326, inlinedAt: !19383)
!19563 = !DILocation(line: 0, scope: !19486, inlinedAt: !19489)
!19564 = !DILocation(line: 0, scope: !19490, inlinedAt: !19493)
!19565 = !DILocation(line: 0, scope: !19497, inlinedAt: !19553)
!19566 = !DILocation(line: 0, scope: !19554, inlinedAt: !19562)
!19567 = !DILocalVariable(name: "other", arg: 2, scope: !19568, file: !3595, line: 2398, type: !8338)
!19568 = distinct !DISubprogram(name: "eq<[u8], [u8]>", linkageName: "_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRShNtB7_9PartialEq2eqCsjfnSKV9Rz3v_3h3i", scope: !8212, file: !3595, line: 2398, type: !8336, scopeLine: 2398, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !805, templateParams: !8218, retainedNodes: !19569)
!19569 = !{!19570, !19567}
!19570 = !DILocalVariable(name: "self", arg: 1, scope: !19568, file: !3595, line: 2398, type: !8338)
!19571 = !DILocation(line: 0, scope: !19568, inlinedAt: !19572)
!19572 = distinct !DILocation(line: 1926, column: 60, scope: !19573, inlinedAt: !19580)
!19573 = distinct !DISubprogram(name: "{closure#1}", linkageName: "_RNCNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_containss_0CsjfnSKV9Rz3v_3h3i", scope: !5934, file: !5933, line: 1926, type: !19574, scopeLine: 1926, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !805, templateParams: !49, retainedNodes: !19577)
!19574 = !DISubroutineType(cc: DW_CC_nocall, types: !19575)
!19575 = !{!143, !19576, !5943}
!19576 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::str::pattern::simd_contains::{closure_env#1}", baseType: !19437, size: 64, align: 64, dwarfAddressSpace: 0)
!19577 = !{!19578, !19579}
!19578 = !DILocalVariable(name: "c", arg: 2, scope: !19573, file: !5933, line: 1926, type: !5943)
!19579 = !DILocalVariable(name: "needle", scope: !19573, file: !5933, line: 1895, type: !5943, align: 64)
!19580 = distinct !DILocation(line: 2889, column: 20, scope: !19581, inlinedAt: !19591)
!19581 = distinct !DISubprogram(name: "{closure#0}<&[u8], core::str::pattern::simd_contains::{closure_env#1}>", linkageName: "_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsjfnSKV9Rz3v_3h3i", scope: !19433, file: !6154, line: 2888, type: !19582, scopeLine: 2888, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !805, templateParams: !19589, retainedNodes: !19585)
!19582 = !DISubroutineType(cc: DW_CC_nocall, types: !19583)
!19583 = !{!19417, !19584, !7, !5943}
!19584 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::traits::iterator::Iterator::any::check::{closure_env#0}<&[u8], core::str::pattern::simd_contains::{closure_env#1}>", baseType: !19432, size: 64, align: 64, dwarfAddressSpace: 0)
!19585 = !{!19586, !19587, !19588}
!19586 = !DILocalVariable(name: "x", arg: 3, scope: !19581, file: !6154, line: 2888, type: !5943)
!19587 = !DILocalVariable(name: "f", scope: !19581, file: !6154, line: 2887, type: !19437, align: 64)
!19588 = !DILocalVariable(arg: 2, scope: !19581, file: !6154, line: 2888, type: !7)
!19589 = !{!19396, !19590}
!19590 = !DITemplateTypeParameter(name: "impl FnMut(T) -> bool", type: !19437)
!19591 = distinct !DILocation(line: 2490, column: 21, scope: !19412, inlinedAt: !19468)
!19592 = !DILocation(line: 0, scope: !19330, inlinedAt: !19383)
!19593 = !DILocation(line: 1936, column: 9, scope: !19321, inlinedAt: !19383)
!19594 = !DILocalVariable(name: "rhs", scope: !19595, file: !3508, line: 2569, type: !9, align: 64)
!19595 = distinct !DISubprogram(name: "saturating_sub", linkageName: "_RNvMs9_NtCskKLDkoKarTP_4core3numj14saturating_sub", scope: !3509, file: !3508, line: 2569, type: !5881, scopeLine: 2569, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !805, templateParams: !49, retainedNodes: !19596)
!19596 = !{!19597, !19594}
!19597 = !DILocalVariable(name: "self", arg: 1, scope: !19595, file: !3508, line: 2569, type: !9)
!19598 = !DILocation(line: 0, scope: !19595, inlinedAt: !19599)
!19599 = distinct !DILocation(line: 1915, column: 27, scope: !19326, inlinedAt: !19383)
!19600 = !DILocalVariable(name: "index", scope: !19601, file: !3496, line: 18, type: !6025, align: 64)
!19601 = distinct !DISubprogram(name: "index<u8, core::ops::range::RangeFrom<usize>>", linkageName: "_RNvXNtNtCskKLDkoKarTP_4core5slice5indexShINtNtNtB6_3ops5index5IndexINtNtBI_5range9RangeFromjEE5indexCsjfnSKV9Rz3v_3h3i", scope: !18931, file: !3496, line: 18, type: !6023, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !805, templateParams: !6030, retainedNodes: !19602)
!19602 = !{!19603, !19600}
!19603 = !DILocalVariable(name: "self", arg: 1, scope: !19601, file: !3496, line: 18, type: !5943)
!19604 = !DILocation(line: 0, scope: !19601, inlinedAt: !19605)
!19605 = distinct !DILocation(line: 1933, column: 33, scope: !19323, inlinedAt: !19383)
!19606 = !DILocalVariable(name: "self", scope: !19607, file: !3496, line: 543, type: !6025, align: 64)
!19607 = distinct !DISubprogram(name: "index<u8>", linkageName: "_RNvXs5_NtNtCskKLDkoKarTP_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsjfnSKV9Rz3v_3h3i", scope: !6036, file: !3496, line: 543, type: !18938, scopeLine: 543, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !805, templateParams: !44, retainedNodes: !19608)
!19608 = !{!19606, !19609, !19610}
!19609 = !DILocalVariable(name: "slice", arg: 2, scope: !19607, file: !3496, line: 543, type: !5943)
!19610 = !DILocalVariable(name: "new_len", scope: !19611, file: !3496, line: 549, type: !9, align: 64)
!19611 = distinct !DILexicalBlock(scope: !19607, file: !3496, line: 549, column: 13)
!19612 = !DILocation(line: 0, scope: !19607, inlinedAt: !19613)
!19613 = distinct !DILocation(line: 19, column: 15, scope: !19601, inlinedAt: !19605)
!19614 = !DILocalVariable(name: "offset", scope: !19615, file: !3496, line: 85, type: !9, align: 64)
!19615 = distinct !DISubprogram(name: "get_offset_len_noubcheck<u8>", linkageName: "_RINvNtNtCskKLDkoKarTP_4core5slice5index24get_offset_len_noubcheckhECsjfnSKV9Rz3v_3h3i", scope: !3498, file: !3496, line: 83, type: !5999, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !805, templateParams: !44, retainedNodes: !19616)
!19616 = !{!19617, !19614, !19618}
!19617 = !DILocalVariable(name: "ptr", arg: 1, scope: !19615, file: !3496, line: 84, type: !5943)
!19618 = !DILocalVariable(name: "len", arg: 3, scope: !19615, file: !3496, line: 86, type: !9)
!19619 = !DILocation(line: 0, scope: !19615, inlinedAt: !19620)
!19620 = distinct !DILocation(line: 550, column: 15, scope: !19611, inlinedAt: !19613)
!19621 = !DILocation(line: 0, scope: !19329, inlinedAt: !19383)
!19622 = !DILocation(line: 0, scope: !19328, inlinedAt: !19383)
!19623 = !DILocation(line: 1904, column: 23, scope: !19328, inlinedAt: !19383)
!19624 = !{!19314, !18309}
!19625 = !{!19318, !18313}
!19626 = !DILocation(line: 0, scope: !19327, inlinedAt: !19383)
!19627 = !DILocalVariable(name: "value", arg: 1, scope: !19628, file: !19629, line: 151, type: !43)
!19628 = distinct !DISubprogram(name: "splat<u8, 16>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core9core_simd6vectorINtB2_4SimdhKj10_E5splatCsjfnSKV9Rz3v_3h3i", scope: !19344, file: !19629, line: 151, type: !19630, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !805, templateParams: !44, declaration: !19632, retainedNodes: !19633)
!19629 = !DIFile(filename: "library/core/src/../../portable-simd/crates/core_simd/src/vector.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "f47d4c7e2cc1047b4ee9d3a6c1760ee6")
!19630 = !DISubroutineType(types: !19631)
!19631 = !{!19344, !43}
!19632 = !DISubprogram(name: "splat<u8, 16>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core9core_simd6vectorINtB2_4SimdhKj10_E5splatCsjfnSKV9Rz3v_3h3i", scope: !19344, file: !19629, line: 151, type: !19630, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !44)
!19633 = !{!19627}
!19634 = !DILocation(line: 0, scope: !19628, inlinedAt: !19635)
!19635 = distinct !DILocation(line: 1929, column: 30, scope: !19325, inlinedAt: !19383)
!19636 = !DILocation(line: 1905, column: 28, scope: !19327, inlinedAt: !19383)
!19637 = !DILocation(line: 0, scope: !19326, inlinedAt: !19383)
!19638 = !DILocation(line: 1908, column: 34, scope: !19326, inlinedAt: !19383)
!19639 = !DILocation(line: 2570, column: 13, scope: !19595, inlinedAt: !19599)
!19640 = !DILocation(line: 282, column: 38, scope: !19497, inlinedAt: !19553)
!19641 = !DILocation(line: 288, column: 13, scope: !19496, inlinedAt: !19553)
!19642 = !DILocation(line: 1142, column: 12, scope: !19486, inlinedAt: !19489)
!19643 = !DILocation(line: 2192, column: 50, scope: !19481, inlinedAt: !19485)
!19644 = !DILocalVariable(name: "start", arg: 1, scope: !19645, file: !18965, line: 269, type: !9)
!19645 = distinct !DISubprogram(name: "backward_unchecked", linkageName: "_RNvXsL_NtNtCskKLDkoKarTP_4core4iter5rangejNtB5_4Step18backward_unchecked", scope: !19136, file: !18965, line: 269, type: !5881, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !805, templateParams: !49, retainedNodes: !19646)
!19646 = !{!19644, !19647}
!19647 = !DILocalVariable(name: "n", arg: 2, scope: !19645, file: !18965, line: 269, type: !9)
!19648 = !DILocation(line: 0, scope: !19645, inlinedAt: !19649)
!19649 = distinct !DILocation(line: 1144, column: 33, scope: !19486, inlinedAt: !19489)
!19650 = !DILocalVariable(name: "self", arg: 1, scope: !19651, file: !3508, line: 1210, type: !9)
!19651 = distinct !DISubprogram(name: "unchecked_sub", linkageName: "_RNvMs9_NtCskKLDkoKarTP_4core3numj13unchecked_sub", scope: !3509, file: !3508, line: 1210, type: !3722, scopeLine: 1210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !805, templateParams: !49, retainedNodes: !19652)
!19652 = !{!19650, !19653}
!19653 = !DILocalVariable(name: "rhs", arg: 2, scope: !19651, file: !3508, line: 1210, type: !9)
!19654 = !DILocation(line: 0, scope: !19651, inlinedAt: !19655)
!19655 = distinct !DILocation(line: 271, column: 28, scope: !19645, inlinedAt: !19649)
!19656 = !DILocation(line: 1222, column: 17, scope: !19651, inlinedAt: !19655)
!19657 = !DILocation(line: 0, scope: !19494, inlinedAt: !19553)
!19658 = !DILocalVariable(name: "predicate", scope: !19659, file: !19495, line: 425, type: !19522, align: 64)
!19659 = distinct !DISubprogram(name: "{closure#0}<usize, core::str::pattern::simd_contains::{closure_env#0}>", linkageName: "_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsjfnSKV9Rz3v_3h3i", scope: !19518, file: !19495, line: 426, type: !19660, scopeLine: 426, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !805, templateParams: !19666, retainedNodes: !19663)
!19660 = !DISubroutineType(types: !19661)
!19661 = !{!19502, !19662, !7, !9}
!19662 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::traits::double_ended::DoubleEndedIterator::rfind::check::{closure_env#0}<usize, core::str::pattern::simd_contains::{closure_env#0}>", baseType: !19517, size: 64, align: 64, dwarfAddressSpace: 0)
!19663 = !{!19664, !19658, !19665}
!19664 = !DILocalVariable(name: "x", arg: 3, scope: !19659, file: !19495, line: 426, type: !9)
!19665 = !DILocalVariable(arg: 2, scope: !19659, file: !19495, line: 426, type: !7)
!19666 = !{!3414, !19667}
!19667 = !DITemplateTypeParameter(name: "impl FnMut(&T) -> bool", type: !19522)
!19668 = !DILocation(line: 0, scope: !19659, inlinedAt: !19669)
!19669 = distinct !DILocation(line: 290, column: 21, scope: !19494, inlinedAt: !19553)
!19670 = !DILocation(line: 426, column: 19, scope: !19659, inlinedAt: !19669)
!19671 = !DILocalVariable(name: "first_probe", scope: !19672, file: !5933, line: 1904, type: !43, align: 8)
!19672 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_contains0CsjfnSKV9Rz3v_3h3i", scope: !5934, file: !5933, line: 1915, type: !19673, scopeLine: 1915, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !805, templateParams: !49, retainedNodes: !19676)
!19673 = !DISubroutineType(cc: DW_CC_nocall, types: !19674)
!19674 = !{!143, !19675, !3600}
!19675 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::str::pattern::simd_contains::{closure_env#0}", baseType: !19522, size: 64, align: 64, dwarfAddressSpace: 0)
!19676 = !{!19677, !19671, !19678, !19680}
!19677 = !DILocalVariable(name: "needle", scope: !19672, file: !5933, line: 1895, type: !2161, align: 8)
!19678 = !DILocalVariable(name: "idx", scope: !19679, file: !5933, line: 1915, type: !9, align: 64)
!19679 = distinct !DILexicalBlock(scope: !19672, file: !5933, line: 1915, column: 73)
!19680 = !DILocalVariable(arg: 2, scope: !19672, file: !5933, line: 1915, type: !3600)
!19681 = !DILocation(line: 0, scope: !19672, inlinedAt: !19682)
!19682 = distinct !DILocation(line: 427, column: 20, scope: !19659, inlinedAt: !19669)
!19683 = !DILocation(line: 0, scope: !19679, inlinedAt: !19682)
!19684 = !DILocation(line: 1915, column: 73, scope: !19679, inlinedAt: !19682)
!19685 = !{!19686, !19688, !19690, !19692, !19318, !18313}
!19686 = distinct !{!19686, !19687, !"_RNCNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_contains0CsjfnSKV9Rz3v_3h3i: argument 0"}
!19687 = distinct !{!19687, !"_RNCNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_contains0CsjfnSKV9Rz3v_3h3i"}
!19688 = distinct !{!19688, !19689, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsjfnSKV9Rz3v_3h3i: argument 0"}
!19689 = distinct !{!19689, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsjfnSKV9Rz3v_3h3i"}
!19690 = distinct !{!19690, !19691, !"_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtNtBa_3str7pattern13simd_contains0E0INtNtB8_12control_flow11ControlFlowjEECsjfnSKV9Rz3v_3h3i: argument 0"}
!19691 = distinct !{!19691, !"_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtNtBa_3str7pattern13simd_contains0E0INtNtB8_12control_flow11ControlFlowjEECsjfnSKV9Rz3v_3h3i"}
!19692 = distinct !{!19692, !19691, !"_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtNtBa_3str7pattern13simd_contains0E0INtNtB8_12control_flow11ControlFlowjEECsjfnSKV9Rz3v_3h3i: argument 1"}
!19693 = !DILocation(line: 290, column: 21, scope: !19494, inlinedAt: !19553)
!19694 = !DILocation(line: 1925, column: 25, scope: !19325, inlinedAt: !19383)
!19695 = !DILocation(line: 1925, column: 8, scope: !19325, inlinedAt: !19383)
!19696 = !DILocation(line: 153, column: 18, scope: !19628, inlinedAt: !19635)
!19697 = !DILocation(line: 0, scope: !19324, inlinedAt: !19383)
!19698 = !DILocation(line: 0, scope: !19325, inlinedAt: !19383)
!19699 = !DILocation(line: 1930, column: 44, scope: !19324, inlinedAt: !19383)
!19700 = !DILocation(line: 2482, column: 37, scope: !19414, inlinedAt: !19468)
!19701 = !DILocation(line: 2488, column: 13, scope: !19413, inlinedAt: !19468)
!19702 = !DILocalVariable(name: "offset", scope: !19703, file: !3496, line: 85, type: !9, align: 64)
!19703 = distinct !DISubprogram(name: "get_offset_len_noubcheck<u8>", linkageName: "_RINvNtNtCskKLDkoKarTP_4core5slice5index24get_offset_len_noubcheckhECsjfnSKV9Rz3v_3h3i", scope: !3498, file: !3496, line: 83, type: !5999, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !805, templateParams: !44, retainedNodes: !19704)
!19704 = !{!19705, !19702, !19706}
!19705 = !DILocalVariable(name: "ptr", arg: 1, scope: !19703, file: !3496, line: 84, type: !5943)
!19706 = !DILocalVariable(name: "len", arg: 3, scope: !19703, file: !3496, line: 86, type: !9)
!19707 = !DILocation(line: 0, scope: !19703, inlinedAt: !19708)
!19708 = distinct !DILocation(line: 411, column: 24, scope: !19709, inlinedAt: !19716)
!19709 = distinct !DISubprogram(name: "index<u8>", linkageName: "_RNvXs2_NtNtCskKLDkoKarTP_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexShE5indexCsjfnSKV9Rz3v_3h3i", scope: !3497, file: !3496, line: 405, type: !19710, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !805, templateParams: !44, retainedNodes: !19712)
!19710 = !DISubroutineType(types: !19711)
!19711 = !{!5943, !3480, !5943, !2146}
!19712 = !{!19713, !19714, !19715}
!19713 = !DILocalVariable(name: "self", scope: !19709, file: !3496, line: 405, type: !3480, align: 64)
!19714 = !DILocalVariable(name: "slice", arg: 2, scope: !19709, file: !3496, line: 405, type: !5943)
!19715 = !DILocalVariable(name: "new_len", scope: !19709, file: !3496, line: 407, type: !9, align: 64)
!19716 = distinct !DILocation(line: 503, column: 23, scope: !19717, inlinedAt: !19723)
!19717 = distinct !DISubprogram(name: "index<u8>", linkageName: "_RNvXs4_NtNtCskKLDkoKarTP_4core5slice5indexINtNtNtB9_3ops5range7RangeTojEINtB5_10SliceIndexShE5indexCsjfnSKV9Rz3v_3h3i", scope: !5977, file: !3496, line: 502, type: !19718, scopeLine: 502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !805, templateParams: !44, retainedNodes: !19720)
!19718 = !DISubroutineType(types: !19719)
!19719 = !{!5943, !5980, !5943, !2146}
!19720 = !{!19721, !19722}
!19721 = !DILocalVariable(name: "self", scope: !19717, file: !3496, line: 502, type: !5980, align: 64)
!19722 = !DILocalVariable(name: "slice", arg: 2, scope: !19717, file: !3496, line: 502, type: !5943)
!19723 = distinct !DILocation(line: 19, column: 15, scope: !19724, inlinedAt: !19728)
!19724 = distinct !DISubprogram(name: "index<u8, core::ops::range::RangeTo<usize>>", linkageName: "_RNvXNtNtCskKLDkoKarTP_4core5slice5indexShINtNtNtB6_3ops5index5IndexINtNtBI_5range7RangeTojEE5indexCsjfnSKV9Rz3v_3h3i", scope: !18931, file: !3496, line: 18, type: !5989, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !805, templateParams: !5994, retainedNodes: !19725)
!19725 = !{!19726, !19727}
!19726 = !DILocalVariable(name: "self", arg: 1, scope: !19724, file: !3496, line: 18, type: !5943)
!19727 = !DILocalVariable(name: "index", scope: !19724, file: !3496, line: 18, type: !5980, align: 64)
!19728 = distinct !DILocation(line: 1358, column: 35, scope: !19385, inlinedAt: !19411)
!19729 = !DILocalVariable(name: "index", scope: !19730, file: !3496, line: 18, type: !6025, align: 64)
!19730 = distinct !DISubprogram(name: "index<u8, core::ops::range::RangeFrom<usize>>", linkageName: "_RNvXNtNtCskKLDkoKarTP_4core5slice5indexShINtNtNtB6_3ops5index5IndexINtNtBI_5range9RangeFromjEE5indexCsjfnSKV9Rz3v_3h3i", scope: !18931, file: !3496, line: 18, type: !6023, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !805, templateParams: !6030, retainedNodes: !19731)
!19731 = !{!19732, !19729}
!19732 = !DILocalVariable(name: "self", arg: 1, scope: !19730, file: !3496, line: 18, type: !5943)
!19733 = !DILocation(line: 0, scope: !19730, inlinedAt: !19734)
!19734 = distinct !DILocation(line: 1359, column: 29, scope: !19409, inlinedAt: !19411)
!19735 = !DILocalVariable(name: "self", scope: !19736, file: !3496, line: 543, type: !6025, align: 64)
!19736 = distinct !DISubprogram(name: "index<u8>", linkageName: "_RNvXs5_NtNtCskKLDkoKarTP_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsjfnSKV9Rz3v_3h3i", scope: !6036, file: !3496, line: 543, type: !18938, scopeLine: 543, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !805, templateParams: !44, retainedNodes: !19737)
!19737 = !{!19735, !19738, !19739}
!19738 = !DILocalVariable(name: "slice", arg: 2, scope: !19736, file: !3496, line: 543, type: !5943)
!19739 = !DILocalVariable(name: "new_len", scope: !19740, file: !3496, line: 549, type: !9, align: 64)
!19740 = distinct !DILexicalBlock(scope: !19736, file: !3496, line: 549, column: 13)
!19741 = !DILocation(line: 0, scope: !19736, inlinedAt: !19742)
!19742 = distinct !DILocation(line: 19, column: 15, scope: !19743, inlinedAt: !19734)
!19743 = !DILexicalBlockFile(scope: !19730, file: !3496, discriminator: 2)
!19744 = !DILocation(line: 0, scope: !19703, inlinedAt: !19745)
!19745 = distinct !DILocation(line: 550, column: 15, scope: !19740, inlinedAt: !19742)
!19746 = !DILocation(line: 0, scope: !19409, inlinedAt: !19411)
!19747 = !DILocation(line: 157, column: 13, scope: !19748, inlinedAt: !19755)
!19748 = distinct !DILexicalBlock(scope: !19749, file: !8268, line: 156, column: 13)
!19749 = distinct !DISubprogram(name: "equal_same_length<u8, u8>", linkageName: "_RNvXs3_NtNtCskKLDkoKarTP_4core5slice3cmphINtB5_14SlicePartialEqhE17equal_same_lengthCsjfnSKV9Rz3v_3h3i", scope: !8488, file: !8268, line: 151, type: !8489, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !805, templateParams: !8552, retainedNodes: !19750)
!19750 = !{!19751, !19752, !19753, !19754}
!19751 = !DILocalVariable(name: "lhs", arg: 1, scope: !19749, file: !8268, line: 151, type: !42)
!19752 = !DILocalVariable(name: "rhs", arg: 2, scope: !19749, file: !8268, line: 151, type: !42)
!19753 = !DILocalVariable(name: "len", arg: 3, scope: !19749, file: !8268, line: 151, type: !9)
!19754 = !DILocalVariable(name: "size", scope: !19748, file: !8268, line: 156, type: !9, align: 64)
!19755 = distinct !DILocation(line: 24, column: 22, scope: !19756, inlinedAt: !19762)
!19756 = distinct !DILexicalBlock(scope: !19757, file: !8268, line: 20, column: 9)
!19757 = distinct !DISubprogram(name: "eq<u8, u8>", linkageName: "_RNvXNtNtCskKLDkoKarTP_4core5slice3cmpShNtNtB6_3cmp9PartialEq2eqCsjfnSKV9Rz3v_3h3i", scope: !8269, file: !8268, line: 19, type: !6058, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !805, templateParams: !8331, retainedNodes: !19758)
!19758 = !{!19759, !19760, !19761}
!19759 = !DILocalVariable(name: "self", arg: 1, scope: !19757, file: !8268, line: 19, type: !5943)
!19760 = !DILocalVariable(name: "other", arg: 2, scope: !19757, file: !8268, line: 19, type: !5943)
!19761 = !DILocalVariable(name: "len", scope: !19756, file: !8268, line: 20, type: !9, align: 64)
!19762 = distinct !DILocation(line: 2399, column: 13, scope: !19568, inlinedAt: !19572)
!19763 = !{!19314, !19318, !18309, !18313}
!19764 = !{!19765, !19767}
!19765 = distinct !{!19765, !19766, !"_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBO_3any5checkRShNCNvNtNtBa_3str7pattern13simd_containss_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECsjfnSKV9Rz3v_3h3i: argument 0"}
!19766 = distinct !{!19766, !"_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBO_3any5checkRShNCNvNtNtBa_3str7pattern13simd_containss_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECsjfnSKV9Rz3v_3h3i"}
!19767 = distinct !{!19767, !19766, !"_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBO_3any5checkRShNCNvNtNtBa_3str7pattern13simd_containss_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECsjfnSKV9Rz3v_3h3i: argument 1"}
!19768 = !DILocation(line: 2490, column: 21, scope: !19412, inlinedAt: !19468)
!19769 = !DILocation(line: 90, column: 24, scope: !19703, inlinedAt: !19745)
!19770 = !DILocation(line: 0, scope: !19740, inlinedAt: !19742)
!19771 = !DILocation(line: 0, scope: !19412, inlinedAt: !19468)
!19772 = !DILocation(line: 0, scope: !19581, inlinedAt: !19591)
!19773 = !DILocation(line: 2888, column: 19, scope: !19581, inlinedAt: !19591)
!19774 = !DILocation(line: 0, scope: !19573, inlinedAt: !19580)
!19775 = !DILocation(line: 0, scope: !19757, inlinedAt: !19762)
!19776 = !DILocation(line: 2398, column: 15, scope: !19568, inlinedAt: !19572)
!19777 = !DILocation(line: 0, scope: !19756, inlinedAt: !19762)
!19778 = !DILocation(line: 0, scope: !19749, inlinedAt: !19755)
!19779 = !DILocation(line: 0, scope: !19748, inlinedAt: !19755)
!19780 = !DILocation(line: 549, column: 27, scope: !19736, inlinedAt: !19742)
!19781 = !DILocation(line: 1355, column: 12, scope: !19385, inlinedAt: !19411)
!19782 = !DILocation(line: 0, scope: !19628, inlinedAt: !19783)
!19783 = distinct !DILocation(line: 1930, column: 31, scope: !19324, inlinedAt: !19383)
!19784 = !DILocation(line: 153, column: 18, scope: !19628, inlinedAt: !19783)
!19785 = !DILocation(line: 0, scope: !19323, inlinedAt: !19383)
!19786 = !DILocation(line: 0, scope: !19611, inlinedAt: !19613)
!19787 = !DILocation(line: 90, column: 24, scope: !19615, inlinedAt: !19620)
!19788 = !DILocation(line: 0, scope: !19322, inlinedAt: !19383)
!19789 = !DILocation(line: 1936, column: 9, scope: !19322, inlinedAt: !19383)
!19790 = !DILocation(line: 1937, column: 5, scope: !19322, inlinedAt: !19383)
!19791 = !DILocation(line: 0, scope: !19353, inlinedAt: !19383)
!19792 = !DILocation(line: 0, scope: !19355, inlinedAt: !19383)
!19793 = !DILocation(line: 1980, column: 11, scope: !19355, inlinedAt: !19383)
!19794 = !DILocation(line: 1976, column: 22, scope: !19353, inlinedAt: !19383)
!19795 = !DILocation(line: 1993, column: 11, scope: !19355, inlinedAt: !19383)
!19796 = !DILocation(line: 0, scope: !19357, inlinedAt: !19383)
!19797 = !DILocation(line: 0, scope: !19360, inlinedAt: !19383)
!19798 = !DILocation(line: 0, scope: !19362, inlinedAt: !19383)
!19799 = !DILocalVariable(name: "second_probe_offset", scope: !19800, file: !5933, line: 1908, type: !9, align: 64)
!19800 = distinct !DISubprogram(name: "{closure#3}", linkageName: "_RNCNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_containss1_0CsjfnSKV9Rz3v_3h3i", scope: !5934, file: !5933, line: 1961, type: !19801, scopeLine: 1961, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !805, templateParams: !49, retainedNodes: !19804)
!19801 = !DISubroutineType(types: !19802)
!19802 = !{!114, !19803, !9}
!19803 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::str::pattern::simd_contains::{closure_env#3}", baseType: !19375, size: 64, align: 64, dwarfAddressSpace: 0)
!19804 = !{!19805, !19806, !19799, !19807, !19808, !19809, !19811, !19813, !19825, !19827}
!19805 = !DILocalVariable(name: "idx", arg: 2, scope: !19800, file: !5933, line: 1961, type: !9)
!19806 = !DILocalVariable(name: "haystack", scope: !19800, file: !5933, line: 1896, type: !2161, align: 8)
!19807 = !DILocalVariable(name: "first_probe", scope: !19800, file: !5933, line: 1929, type: !19344, align: 128)
!19808 = !DILocalVariable(name: "second_probe", scope: !19800, file: !5933, line: 1930, type: !19344, align: 128)
!19809 = !DILocalVariable(name: "a", scope: !19810, file: !5933, line: 1964, type: !19344, align: 128)
!19810 = distinct !DILexicalBlock(scope: !19800, file: !5933, line: 1964, column: 9)
!19811 = !DILocalVariable(name: "b", scope: !19812, file: !5933, line: 1966, type: !19344, align: 128)
!19812 = distinct !DILexicalBlock(scope: !19810, file: !5933, line: 1966, column: 9)
!19813 = !DILocalVariable(name: "eq_first", scope: !19814, file: !5933, line: 1969, type: !19815, align: 128)
!19814 = distinct !DILexicalBlock(scope: !19812, file: !5933, line: 1969, column: 9)
!19815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Mask<i8, 16>", scope: !19816, file: !2, size: 128, align: 128, flags: DIFlagPublic, elements: !19817, templateParams: !19823, identifier: "47772f3e4eb57bf19e4c35471ec7058c")
!19816 = !DINamespace(name: "masks", scope: !19346)
!19817 = !{!19818}
!19818 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !19815, file: !2, baseType: !19819, size: 128, align: 128, flags: DIFlagPrivate)
!19819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Simd<i8, 16>", scope: !19345, file: !2, size: 128, align: 128, flags: DIFlagPublic, elements: !19820, templateParams: !19823, identifier: "5c9513b43ce54eef43beea5e91a818ac")
!19820 = !{!19821}
!19821 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !19819, file: !2, baseType: !19822, size: 128, align: 8, flags: DIFlagPrivate)
!19822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1167, size: 128, align: 8, elements: !126)
!19823 = !{!19824}
!19824 = !DITemplateTypeParameter(name: "T", type: !1167)
!19825 = !DILocalVariable(name: "eq_last", scope: !19826, file: !5933, line: 1970, type: !19815, align: 128)
!19826 = distinct !DILexicalBlock(scope: !19814, file: !5933, line: 1970, column: 9)
!19827 = !DILocalVariable(name: "both", scope: !19828, file: !5933, line: 1971, type: !19815, align: 128)
!19828 = distinct !DILexicalBlock(scope: !19826, file: !5933, line: 1971, column: 9)
!19829 = !DILocation(line: 0, scope: !19800, inlinedAt: !19830)
!19830 = distinct !DILocation(line: 1983, column: 24, scope: !19362, inlinedAt: !19383)
!19831 = !DILocalVariable(name: "count", arg: 2, scope: !19832, file: !6140, line: 838, type: !9)
!19832 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr9const_ptrPh3addCsjfnSKV9Rz3v_3h3i", scope: !6141, file: !6140, line: 838, type: !6143, scopeLine: 838, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !805, templateParams: !44, retainedNodes: !19833)
!19833 = !{!19834, !19831}
!19834 = !DILocalVariable(name: "self", arg: 1, scope: !19832, file: !6140, line: 838, type: !42)
!19835 = !DILocation(line: 0, scope: !19832, inlinedAt: !19836)
!19836 = distinct !DILocation(line: 1964, column: 51, scope: !19800, inlinedAt: !19830)
!19837 = !DILocation(line: 0, scope: !19832, inlinedAt: !19838)
!19838 = distinct !DILocation(line: 1967, column: 31, scope: !19810, inlinedAt: !19830)
!19839 = !DILocalVariable(name: "self", arg: 1, scope: !19840, file: !6140, line: 1191, type: !19843)
!19840 = distinct !DISubprogram(name: "read_unaligned<core::core_simd::vector::Simd<u8, 16>>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr9const_ptrPINtNtNtB6_9core_simd6vector4SimdhKj10_E14read_unalignedCsjfnSKV9Rz3v_3h3i", scope: !6141, file: !6140, line: 1191, type: !19841, scopeLine: 1191, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !805, templateParams: !19845, retainedNodes: !19844)
!19841 = !DISubroutineType(types: !19842)
!19842 = !{!19344, !19843, !2146}
!19843 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const core::core_simd::vector::Simd<u8, 16>", baseType: !19344, size: 64, align: 64, dwarfAddressSpace: 0)
end_hunk_2

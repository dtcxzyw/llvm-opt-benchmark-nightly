Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff_cli.jiff_cli.28936ee66da4cb41-cgu.08?download=true
inline.NumInlined: 129
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMsm_NtCs3oUPovFnLWP_4core5arrayAlj1_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitReENCINvMBN_BK_10wrap_mut_1lNCINvMsb_NtCslhCKBzvegwQ_10regex_lite6stringNtB22_8Captures7extractKBz_E0E0ECs3tZ2SXJA1qv_8jiff_cli:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store ptr %i.c, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.e, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.d, ptr %i.g, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !21)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22
  store ptr %i.b, ptr %i.a, align 8, !noalias !23
  %i.h = invoke { ptr, i64 } @_RNvXs0_NtNtCs3oUPovFnLWP_4core5array5drainQINtB5_5DrainlNCINvMNtNtB9_3ops9try_traitINtBY_17NeverShortCircuitReE10wrap_mut_1lNCINvMsb_NtCslhCKBzvegwQ_10regex_lite6stringNtB27_8Captures7extractKj1_E0E0EINtNtB10_8function5FnMutTjEE8call_mutCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtNtCs3oUPovFnLWP_4core5array5drainINtB5_5DrainlNCINvMNtNtB9_3ops9try_traitINtBX_17NeverShortCircuitReE10wrap_mut_1lNCINvMsb_NtCslhCKBzvegwQ_10regex_lite6stringNtB26_8Captures7extractKj1_E0E0ENtNtBZ_4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array5drain5DrainlNCINvMNtNtB4_3ops9try_traitINtB1a_17NeverShortCircuitReE10wrap_mut_1lNCINvMsb_NtCslhCKBzvegwQ_10regex_lite6stringNtB2k_8Captures7extractKj1_E0E0EECs3tZ2SXJA1qv_8jiff_cli.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = extractvalue { ptr, i64 } %i.h, 0
  %i.k = extractvalue { ptr, i64 } %i.h, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22
  store ptr %i.j, ptr %0, align 8, !alias.scope !24, !noalias !25
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %.sroa.44.0..sroa_idx.i, align 8, !alias.scope !24, !noalias !25
  call void @_RNvXs1_NtNtCs3oUPovFnLWP_4core5array5drainINtB5_5DrainlNCINvMNtNtB9_3ops9try_traitINtBX_17NeverShortCircuitReE10wrap_mut_1lNCINvMsb_NtCslhCKBzvegwQ_10regex_lite6stringNtB26_8Captures7extractKj1_E0E0ENtNtBZ_4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array5drain5DrainlNCINvMNtNtB4_3ops9try_traitINtB1a_17NeverShortCircuitReE10wrap_mut_1lNCINvMsb_NtCslhCKBzvegwQ_10regex_lite6stringNtB2k_8Captures7extractKj1_E0E0EECs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsm_NtCs3oUPovFnLWP_4core5arrayAlj2_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitReENCINvMBN_BK_10wrap_mut_1lNCINvMsb_NtCslhCKBzvegwQ_10regex_lite6stringNtB22_8Captures7extractKBz_E0E0ECs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef align 8 dereferenceable(112) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.c, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.e, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.d, ptr %i.g, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !35)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !36
  store ptr %i.b, ptr %i.a, align 8, !noalias !37
  %i.h = invoke { ptr, i64 } @_RNvXs0_NtNtCs3oUPovFnLWP_4core5array5drainQINtB5_5DrainlNCINvMNtNtB9_3ops9try_traitINtBY_17NeverShortCircuitReE10wrap_mut_1lNCINvMsb_NtCslhCKBzvegwQ_10regex_lite6stringNtB27_8Captures7extractKj2_E0E0EINtNtB10_8function5FnMutTjEE8call_mutCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.b     ; 2 uses

.noexc:                                           ; preds = %bb.a
  %i.i = invoke { ptr, i64 } @_RNvXs0_NtNtCs3oUPovFnLWP_4core5array5drainQINtB5_5DrainlNCINvMNtNtB9_3ops9try_traitINtBY_17NeverShortCircuitReE10wrap_mut_1lNCINvMsb_NtCslhCKBzvegwQ_10regex_lite6stringNtB27_8Captures7extractKj2_E0E0EINtNtB10_8function5FnMutTjEE8call_mutCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 1)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %.noexc, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtNtCs3oUPovFnLWP_4core5array5drainINtB5_5DrainlNCINvMNtNtB9_3ops9try_traitINtBX_17NeverShortCircuitReE10wrap_mut_1lNCINvMsb_NtCslhCKBzvegwQ_10regex_lite6stringNtB26_8Captures7extractKj2_E0E0ENtNtBZ_4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array5drain5DrainlNCINvMNtNtB4_3ops9try_traitINtB1a_17NeverShortCircuitReE10wrap_mut_1lNCINvMsb_NtCslhCKBzvegwQ_10regex_lite6stringNtB2k_8Captures7extractKj2_E0E0EECs3tZ2SXJA1qv_8jiff_cli.exit unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.k = extractvalue { ptr, i64 } %i.h, 1
  %i.l = extractvalue { ptr, i64 } %i.h, 0
  %i.m = extractvalue { ptr, i64 } %i.i, 0
  %i.n = extractvalue { ptr, i64 } %i.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !36
  store ptr %i.l, ptr %0, align 8, !alias.scope !38, !noalias !39
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %.sroa.46.0..sroa_idx.i, align 8, !alias.scope !38, !noalias !39
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.m, ptr %.sroa.57.0..sroa_idx.i, align 8, !alias.scope !38, !noalias !39
  %.sroa.68.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.n, ptr %.sroa.68.0..sroa_idx.i, align 8, !alias.scope !38, !noalias !39
  call void @_RNvXs1_NtNtCs3oUPovFnLWP_4core5array5drainINtB5_5DrainlNCINvMNtNtB9_3ops9try_traitINtBX_17NeverShortCircuitReE10wrap_mut_1lNCINvMsb_NtCslhCKBzvegwQ_10regex_lite6stringNtB26_8Captures7extractKj2_E0E0ENtNtBZ_4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array5drain5DrainlNCINvMNtNtB4_3ops9try_traitINtB1a_17NeverShortCircuitReE10wrap_mut_1lNCINvMsb_NtCslhCKBzvegwQ_10regex_lite6stringNtB2k_8Captures7extractKj2_E0E0EECs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageEEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2 = load i64, ptr %0, align 8, !range !5, !alias.scope !46, !noundef !6 ; 2 uses
  %i.b = icmp eq i64 %.val2, 0
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageEEB1j_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  %i.d = mul nuw i64 %.val2, 48
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !47
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageEEB1j_.exit

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %0, align 8, !range !5, !alias.scope !46, !noundef !6 ; 2 uses
  %i.e = icmp eq i64 %.val, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageEEB1j_.exit4, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6
  %i.g = mul nuw i64 %.val, 48
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !48
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageEEB1j_.exit4

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageEEB1j_.exit4: ; preds = %bb.d, %bb.e
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageEEB1j_.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEEECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2 = load i64, ptr %0, align 8, !range !5, !alias.scope !55, !noundef !6 ; 2 uses
  %i.b = icmp eq i64 %.val2, 0
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEEECs3tZ2SXJA1qv_8jiff_cli.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  %i.d = mul nuw i64 %.val2, 24
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !56
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEEECs3tZ2SXJA1qv_8jiff_cli.exit

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %0, align 8, !range !5, !alias.scope !55, !noundef !6 ; 2 uses
  %i.e = icmp eq i64 %.val, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEEECs3tZ2SXJA1qv_8jiff_cli.exit4, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6
  %i.g = mul nuw i64 %.val, 24
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !57
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEEECs3tZ2SXJA1qv_8jiff_cli.exit4

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEEECs3tZ2SXJA1qv_8jiff_cli.exit4: ; preds = %bb.d, %bb.e
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEEECs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs3tZ2SXJA1qv_8jiff_cli(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !6 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !5, !invariant.load !6 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !7, !invariant.load !6
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.f) #24
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli.exit

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.c, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i
  ret void

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !5, !invariant.load !6 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli.exit5, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !7, !invariant.load !6
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) %i.l) #24
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli.exit5

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli.exit5: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4, %bb.d
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgWT32ugvpwR_6lexopt5ErrorECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !8, !noundef !6 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775805
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 3
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.f
    i64 1, label %bb.l
    i64 2, label %bb.q
    i64 3, label %bb.v
    i64 4, label %bb.aa
    i64 5, label %bb.af
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5 = load ptr, ptr %i.f, align 8            ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val6 = load ptr, ptr %i.g, align 8, !nonnull !6, !align !9, !noundef !6 ; 5 uses
  %i.h = load ptr, ptr %.val6, align 8, !invariant.load !6 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  invoke void %i.h(ptr noundef nonnull %.val5)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !5, !invariant.load !6 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs3tZ2SXJA1qv_8jiff_cli.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !7, !invariant.load !6
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) %i.m) #24
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs3tZ2SXJA1qv_8jiff_cli.exit

bb.e:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !5, !invariant.load !6 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %common.resume, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !7, !invariant.load !6
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) %i.s) #24
  br label %common.resume

common.resume:                                    ; preds = %bb.ar, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i39, %.body, %.body23, %bb.ak, %bb.al, %bb.ag, %bb.ah, %bb.r, %bb.s, %bb.m, %bb.n, %bb.h, %bb.i, %bb.e, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i
  %common.resume.op = phi { ptr, i32 } [ %i.at, %.body23 ], [ %i.n, %bb.e ], [ %i.w, %bb.h ], [ %i.ac, %bb.m ], [ %i.ai, %bb.r ], [ %i.az, %bb.ag ], [ %i.bg, %bb.ak ], [ %i.n, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i ], [ %i.w, %bb.i ], [ %i.ac, %bb.n ], [ %i.ai, %bb.s ], [ %i.az, %bb.ah ], [ %i.bg, %bb.al ], [ %i.an, %.body ], [ %i.bw, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i39 ], [ %i.bw, %bb.ar ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.u = load i64, ptr %i.t, align 8, !range !136, !alias.scope !137, !noundef !6
  %i.v = icmp eq i64 %i.u, -1
  br i1 %i.v, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs3tZ2SXJA1qv_8jiff_cli.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.t, align 8, !range !5, !alias.scope !138, !noundef !6 ; 2 uses
  %i.x = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.x, label %common.resume, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i.i = load ptr, ptr %i.y, align 8, !alias.scope !139, !nonnull !6, !noundef !6
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !140
  br label %common.resume

bb.j:                                             ; preds = %bb.g
  %.val.i.i.i = load i64, ptr %i.t, align 8, !range !5, !alias.scope !138, !noundef !6 ; 2 uses
  %i.z = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.z, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs3tZ2SXJA1qv_8jiff_cli.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !139, !nonnull !6, !noundef !6
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !141
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs3tZ2SXJA1qv_8jiff_cli.exit

bb.l:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %bb.o unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.ab, align 8, !range !5, !alias.scope !142, !noundef !6 ; 2 uses
  %i.ad = icmp eq i64 %.val2.i.i, 0
  br i1 %i.ad, label %common.resume, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i = load ptr, ptr %i.ae, align 8, !alias.scope !143, !nonnull !6, !noundef !6
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !144
  br label %common.resume

bb.o:                                             ; preds = %bb.l
  %.val.i.i = load i64, ptr %i.ab, align 8, !range !5, !alias.scope !142, !noundef !6 ; 2 uses
  %i.af = icmp eq i64 %.val.i.i, 0
  br i1 %i.af, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs3tZ2SXJA1qv_8jiff_cli.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.ag, align 8, !alias.scope !143, !nonnull !6, !noundef !6
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !145
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs3tZ2SXJA1qv_8jiff_cli.exit

bb.q:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %bb.t unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i7 = load i64, ptr %i.ah, align 8, !range !5, !alias.scope !146, !noundef !6 ; 2 uses
  %i.aj = icmp eq i64 %.val2.i.i.i7, 0
  br i1 %i.aj, label %common.resume, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i.i8 = load ptr, ptr %i.ak, align 8, !alias.scope !147, !nonnull !6, !noundef !6
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i8, i64 noundef %.val2.i.i.i7, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !148
  br label %common.resume

bb.t:                                             ; preds = %bb.q
  %.val.i.i.i10 = load i64, ptr %i.ah, align 8, !range !5, !alias.scope !146, !noundef !6 ; 2 uses
  %i.al = icmp eq i64 %.val.i.i.i10, 0
  br i1 %i.al, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs3tZ2SXJA1qv_8jiff_cli.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i.i11 = load ptr, ptr %i.am, align 8, !alias.scope !147, !nonnull !6, !noundef !6
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i11, i64 noundef %.val.i.i.i10, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !149
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs3tZ2SXJA1qv_8jiff_cli.exit

bb.v:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.y unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.an = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i12 = load i64, ptr %0, align 8, !range !5, !alias.scope !150, !noundef !6 ; 2 uses
  %i.ao = icmp eq i64 %.val2.i.i12, 0
  br i1 %i.ao, label %.body, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i13 = load ptr, ptr %i.ap, align 8, !alias.scope !151, !nonnull !6, !noundef !6
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i13, i64 noundef %.val2.i.i12, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !152
  br label %.body

bb.y:                                             ; preds = %bb.v
  %.val.i.i15 = load i64, ptr %0, align 8, !range !5, !alias.scope !150, !noundef !6 ; 2 uses
  %i.aq = icmp eq i64 %.val.i.i15, 0
  br i1 %i.aq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit17, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i16 = load ptr, ptr %i.ar, align 8, !alias.scope !151, !nonnull !6, !noundef !6
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i16, i64 noundef %.val.i.i15, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !153
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit17

bb.aa:                                            ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %bb.ad unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.at = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i18 = load i64, ptr %i.as, align 8, !range !5, !alias.scope !154, !noundef !6 ; 2 uses
  %i.au = icmp eq i64 %.val2.i.i18, 0
  br i1 %i.au, label %.body23, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i19 = load ptr, ptr %i.av, align 8, !alias.scope !155, !nonnull !6, !noundef !6
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i19, i64 noundef %.val2.i.i18, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !156
  br label %.body23

bb.ad:                                            ; preds = %bb.aa
  %.val.i.i21 = load i64, ptr %i.as, align 8, !range !5, !alias.scope !154, !noundef !6 ; 2 uses
  %i.aw = icmp eq i64 %.val.i.i21, 0
  br i1 %i.aw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit25, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i22 = load ptr, ptr %i.ax, align 8, !alias.scope !155, !nonnull !6, !noundef !6
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i22, i64 noundef %.val.i.i21, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !157
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit25

bb.af:                                            ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %bb.ai unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i26 = load i64, ptr %i.ay, align 8, !range !5, !alias.scope !158, !noundef !6 ; 2 uses
  %i.ba = icmp eq i64 %.val2.i.i.i26, 0
  br i1 %i.ba, label %common.resume, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i.i27 = load ptr, ptr %i.bb, align 8, !alias.scope !159, !nonnull !6, !noundef !6
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i27, i64 noundef %.val2.i.i.i26, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !160
  br label %common.resume

bb.ai:                                            ; preds = %bb.af
  %.val.i.i.i29 = load i64, ptr %i.ay, align 8, !range !5, !alias.scope !158, !noundef !6 ; 2 uses
  %i.bc = icmp eq i64 %.val.i.i.i29, 0
  br i1 %i.bc, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs3tZ2SXJA1qv_8jiff_cli.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i.i30 = load ptr, ptr %i.bd, align 8, !alias.scope !159, !nonnull !6, !noundef !6
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i30, i64 noundef %.val.i.i.i29, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !161
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs3tZ2SXJA1qv_8jiff_cli.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i41, %bb.aq, %bb.an, %bb.am, %bb.aj, %bb.ai, %bb.u, %bb.t, %bb.p, %bb.o, %bb.k, %bb.j, %bb.f, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i, %bb.d
  ret void

.body:                                            ; preds = %bb.w, %bb.x
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(24) %i.be) #25
          to label %common.resume unwind label %bb.ao

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit17: ; preds = %bb.z, %bb.y
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %bb.am unwind label %bb.ak

bb.ak:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit17
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i32 = load i64, ptr %i.bf, align 8, !range !5, !alias.scope !162, !noundef !6 ; 2 uses
  %i.bh = icmp eq i64 %.val2.i.i.i32, 0
  br i1 %i.bh, label %common.resume, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i.i.i33 = load ptr, ptr %i.bi, align 8, !alias.scope !163, !nonnull !6, !noundef !6
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i33, i64 noundef %.val2.i.i.i32, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !164
  br label %common.resume

bb.am:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit17
  %.val.i.i.i35 = load i64, ptr %i.bf, align 8, !range !5, !alias.scope !162, !noundef !6 ; 2 uses
  %i.bj = icmp eq i64 %.val.i.i.i35, 0
  br i1 %i.bj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs3tZ2SXJA1qv_8jiff_cli.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i.i.i36 = load ptr, ptr %i.bk, align 8, !alias.scope !163, !nonnull !6, !noundef !6
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i36, i64 noundef %.val.i.i.i35, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !165
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs3tZ2SXJA1qv_8jiff_cli.exit

bb.ao:                                            ; preds = %.body23, %.body
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

.body23:                                          ; preds = %bb.ab, %bb.ac
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3 = load ptr, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val4 = load ptr, ptr %i.bn, align 8, !nonnull !6, !align !9, !noundef !6
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs3tZ2SXJA1qv_8jiff_cli(ptr %.val3, ptr nonnull %.val4) #25
          to label %common.resume unwind label %bb.ao

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit25: ; preds = %bb.ae, %bb.ad
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.bo, align 8            ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val2 = load ptr, ptr %i.bp, align 8, !nonnull !6, !align !9, !noundef !6 ; 5 uses
  %i.bq = load ptr, ptr %.val2, align 8, !invariant.load !6 ; 2 uses
  %.not.i38 = icmp eq ptr %i.bq, null
  br i1 %.not.i38, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit25
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.bq(ptr noundef nonnull %.val)
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %bb.ap, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit25
  %i.br = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !range !5, !invariant.load !6 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs3tZ2SXJA1qv_8jiff_cli.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i41

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i41: ; preds = %bb.aq
  %i.bu = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !range !7, !invariant.load !6
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.bs, i64 noundef range(i64 1, -9223372036854775807) %i.bv) #24
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs3tZ2SXJA1qv_8jiff_cli.exit

bb.ar:                                            ; preds = %bb.ap
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !range !5, !invariant.load !6 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %common.resume, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i39

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i39: ; preds = %bb.ar
  %i.ca = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !range !7, !invariant.load !6
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.by, i64 noundef range(i64 1, -9223372036854775807) %i.cb) #24
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i = load i64, ptr %0, align 8, !range !5, !alias.scope !176, !noundef !6 ; 2 uses
  %i.b = icmp eq i64 %.val2.i.i, 0
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs3tZ2SXJA1qv_8jiff_cli.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i = load ptr, ptr %i.c, align 8, !alias.scope !177, !nonnull !6, !noundef !6
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !178
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs3tZ2SXJA1qv_8jiff_cli.exit.i.i

bb.d:                                             ; preds = %bb.a
  %.val.i.i = load i64, ptr %0, align 8, !range !5, !alias.scope !176, !noundef !6 ; 2 uses
  %i.d = icmp eq i64 %.val.i.i, 0
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6os_str5bytes3BufECs3tZ2SXJA1qv_8jiff_cli.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.e, align 8, !alias.scope !177, !nonnull !6, !noundef !6
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !179
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6os_str5bytes3BufECs3tZ2SXJA1qv_8jiff_cli.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs3tZ2SXJA1qv_8jiff_cli.exit.i.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6os_str5bytes3BufECs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define hidden void @_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable14driftsort_mainNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_11sort_by_keyReNCNvB11_9configure0E0INtNtB1J_3vec3VecBZ_EEB13_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [4096 x i8], align 8              ; 3 uses
  %i.c = lshr i64 %1, 1
  %i.d = sub nuw nsw i64 %1, %i.c
  %..i = tail call noundef range(i64 0, 384307168202282326) i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %1, i64 166666)
  %..i8 = tail call noundef i64 @llvm.umax.i64(i64 %..i, i64 %i.d) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = icmp samesign ugt i64 %..i8, 85          ; 3 uses
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @_RNvXs8_NtCs1xwejQucwHj_5alloc5sliceINtNtB7_3vec3VecNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageEINtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable8BufGuardBN_E13with_capacityBR_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %..i8)
  %i.f = invoke { ptr, i64 } @_RNvXs8_NtCs1xwejQucwHj_5alloc5sliceINtNtB7_3vec3VecNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageEINtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable8BufGuardBN_E19as_uninit_slice_mutBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.d unwind label %.thread    ; 2 uses

bb.c:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.e, label %bb.l, label %common.resume

.thread:                                          ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.i = extractvalue { ptr, i64 } %i.f, 1
  %i.j = extractvalue { ptr, i64 } %i.f, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.sroa.4.0 = phi i64 [ 85, %bb.a ], [ %i.i, %bb.d ]
  %.pn = phi ptr [ %i.b, %bb.a ], [ %i.j, %bb.d ]
  %i.k = icmp samesign ult i64 %1, 65
  invoke void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_11sort_by_keyReNCNvBY_9configure0E0EB10_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 8 %.pn, i64 noundef %.sroa.4.0, i1 noundef zeroext %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.f unwind label %bb.c

bb.f:                                             ; preds = %bb.e
  br i1 %i.e, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageEEB1c_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageEEB1c_.exit: ; preds = %bb.k, %bb.j, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %i.a, align 8, !range !5, !alias.scope !188, !noundef !6 ; 2 uses
  %i.m = icmp eq i64 %.val2.i, 0
  br i1 %i.m, label %common.resume, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val3.i = load ptr, ptr %i.n, align 8, !alias.scope !189, !nonnull !6, !noundef !6
  %i.o = mul nuw i64 %.val2.i, 48
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !190
  br label %common.resume

bb.j:                                             ; preds = %bb.g
  %.val.i = load i64, ptr %i.a, align 8, !range !5, !alias.scope !188, !noundef !6 ; 2 uses
  %i.p = icmp eq i64 %.val.i, 0
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageEEB1c_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val1.i = load ptr, ptr %i.q, align 8, !alias.scope !189, !nonnull !6, !noundef !6
  %i.r = mul nuw i64 %.val.i, 48
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !191
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageEEB1c_.exit

common.resume:                                    ; preds = %bb.c, %bb.l, %bb.h, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.h ], [ %i.l, %bb.i ], [ %i.s, %bb.l ], [ %i.g, %bb.c ]
  resume { ptr, i32 } %common.resume.op

bb.l:                                             ; preds = %.thread, %bb.c
  %i.s = phi { ptr, i32 } [ %i.h, %.thread ], [ %i.g, %bb.c ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #25
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define hidden void @_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable14driftsort_mainTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0INtNtB1I_3vec3VecBZ_EEB2u_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [4096 x i8], align 8              ; 3 uses
  %i.c = lshr i64 %1, 1
  %i.d = sub nuw nsw i64 %1, %i.c
  %..i = tail call noundef range(i64 0, 384307168202282326) i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %1, i64 333333)
  %..i8 = tail call noundef i64 @llvm.umax.i64(i64 %..i, i64 %i.d) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = icmp samesign ugt i64 %..i8, 170         ; 3 uses
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @_RNvXs8_NtCs1xwejQucwHj_5alloc5sliceINtNtB7_3vec3VecTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEEINtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable8BufGuardBN_E13with_capacityCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %..i8)
  %i.f = invoke { ptr, i64 } @_RNvXs8_NtCs1xwejQucwHj_5alloc5sliceINtNtB7_3vec3VecTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEEINtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable8BufGuardBN_E19as_uninit_slice_mutCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.d unwind label %.thread    ; 2 uses

bb.c:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.e, label %bb.l, label %common.resume

.thread:                                          ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.i = extractvalue { ptr, i64 } %i.f, 1
  %i.j = extractvalue { ptr, i64 } %i.f, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.sroa.4.0 = phi i64 [ 170, %bb.a ], [ %i.i, %bb.d ]
  %.pn = phi ptr [ %i.b, %bb.a ], [ %i.j, %bb.d ]
  %i.k = icmp samesign ult i64 %1, 65
  invoke void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2r_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 8 %.pn, i64 noundef %.sroa.4.0, i1 noundef zeroext %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.f unwind label %bb.c

bb.f:                                             ; preds = %bb.e
  br i1 %i.e, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEEECs3tZ2SXJA1qv_8jiff_cli.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEEECs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.k, %bb.j, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %i.a, align 8, !range !5, !alias.scope !200, !noundef !6 ; 2 uses
  %i.m = icmp eq i64 %.val2.i, 0
  br i1 %i.m, label %common.resume, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val3.i = load ptr, ptr %i.n, align 8, !alias.scope !201, !nonnull !6, !noundef !6
  %i.o = mul nuw i64 %.val2.i, 24
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !202
  br label %common.resume

bb.j:                                             ; preds = %bb.g
  %.val.i = load i64, ptr %i.a, align 8, !range !5, !alias.scope !200, !noundef !6 ; 2 uses
  %i.p = icmp eq i64 %.val.i, 0
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEEECs3tZ2SXJA1qv_8jiff_cli.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val1.i = load ptr, ptr %i.q, align 8, !alias.scope !201, !nonnull !6, !noundef !6
  %i.r = mul nuw i64 %.val.i, 24
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !203
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEEECs3tZ2SXJA1qv_8jiff_cli.exit

common.resume:                                    ; preds = %bb.c, %bb.l, %bb.h, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.h ], [ %i.l, %bb.i ], [ %i.s, %bb.l ], [ %i.g, %bb.c ]
  resume { ptr, i32 } %common.resume.op

bb.l:                                             ; preds = %.thread, %bb.c
  %i.s = phi { ptr, i32 } [ %i.h, %.thread ], [ %i.g, %bb.c ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEEECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #25
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyReNCNvBZ_9configure0E0EB11_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i64 noundef %4, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %4, 0
  %i.b = icmp uge i64 %4, %1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sub nuw nsw i64 %1, %4                   ; 2 uses
  %..i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %4) ; 2 uses
  %i.d = icmp samesign ult i64 %3, %..i
  br i1 %i.d, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.b
  %i.e = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %4 ; 3 uses
  %i.f = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %1 ; 2 uses
  %.not = icmp samesign ugt i64 %4, %i.c          ; 2 uses
  %spec.select = select i1 %.not, ptr %i.e, ptr %0
  %i.g = mul nuw nsw i64 %..i, 48                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select, i64 %i.g, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g ; 4 uses
  br i1 %.not, label %.preheader, label %.lr.ph.i

.preheader:                                       ; preds = %.critedge, %.noexc18
  %.sroa.13.2 = phi ptr [ %i.y, %.noexc18 ], [ %i.e, %.critedge ] ; 3 uses
  %.sroa.7.2 = phi ptr [ %i.z, %.noexc18 ], [ %i.h, %.critedge ] ; 3 uses
  %.sroa.0.0.i = phi ptr [ %i.k, %.noexc18 ], [ %i.f, %.critedge ]
  %i.i = getelementptr inbounds i8, ptr %.sroa.13.2, i64 -48 ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %.sroa.7.2, i64 -48 ; 3 uses
  %i.k = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -48 ; 2 uses
  %.val.i = load ptr, ptr %i.j, align 8, !noalias !234, !nonnull !6, !noundef !6
  %i.l = getelementptr i8, ptr %.sroa.7.2, i64 -40
  %.val12.i = load i64, ptr %i.l, align 8, !noalias !234, !noundef !6
  %.val13.i = load ptr, ptr %i.i, align 8, !noalias !234 ; 2 uses
  %i.m = getelementptr i8, ptr %.sroa.13.2, i64 -40
  %.val14.i = load i64, ptr %i.m, align 8, !noalias !234
  %i.n = invoke fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.val.i, i64 %.val12.i) #26
          to label %.noexc unwind label %.loopexit ; 2 uses

.noexc:                                           ; preds = %.preheader
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i) ]
  %i.o = invoke fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.val13.i, i64 %.val14.i) #26
          to label %.noexc18 unwind label %.loopexit ; 2 uses

.noexc18:                                         ; preds = %.noexc
  %i.p = extractvalue { ptr, i64 } %i.n, 1        ; 2 uses
  %i.q = extractvalue { ptr, i64 } %i.n, 0        ; 2 uses
  %i.r = extractvalue { ptr, i64 } %i.o, 0        ; 2 uses
  %6 = extractvalue { ptr, i64 } %i.o, 1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %6)
  %i.s = tail call i32 @memcmp(ptr nonnull readonly %i.q, ptr nonnull readonly %i.r, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !235, !noalias !234 ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = icmp eq i32 %i.s, 0
  %i.v = sub i64 %i.p, %6
  %spec.select.i.i.i.i.i.i = select i1 %i.u, i64 %i.v, i64 %i.t ; 2 uses
  %i.w = icmp sgt i64 %spec.select.i.i.i.i.i.i, -1 ; 2 uses
  %..i17 = select i1 %i.w, ptr %i.j, ptr %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %..i17, i64 48, i1 false), !noalias !234
  %i.x = zext i1 %i.w to i64
  %i.y = getelementptr inbounds nuw [48 x i8], ptr %i.i, i64 %i.x ; 3 uses
  %spec.select.i.i.i.i.i.lobit.i = lshr i64 %spec.select.i.i.i.i.i.i, 63
  %i.z = getelementptr inbounds nuw [48 x i8], ptr %i.j, i64 %spec.select.i.i.i.i.i.lobit.i ; 3 uses
  %i.aa = icmp eq ptr %i.y, %0
  %i.ab = icmp eq ptr %i.z, %2
  %or.cond.i = select i1 %i.aa, i1 true, i1 %i.ab
  br i1 %or.cond.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_11sort_by_keyReNCNvB1c_9configure0E0EB1e_.exit, label %.preheader

.lr.ph.i:                                         ; preds = %.critedge, %.noexc26
  %.sroa.13.3 = phi ptr [ %i.ar, %.noexc26 ], [ %0, %.critedge ] ; 3 uses
  %.sroa.0.2 = phi ptr [ %i.ap, %.noexc26 ], [ %2, %.critedge ] ; 5 uses
  %.sroa.0.02.i = phi ptr [ %i.aq, %.noexc26 ], [ %i.e, %.critedge ] ; 4 uses
  %.sroa.0.0.val.i = load ptr, ptr %.sroa.0.02.i, align 8, !noalias !236, !nonnull !6, !noundef !6
  %i.ac = getelementptr i8, ptr %.sroa.0.02.i, i64 8
  %.sroa.0.0.val6.i = load i64, ptr %i.ac, align 8, !noalias !236, !noundef !6
  %.val.i20 = load ptr, ptr %.sroa.0.2, align 8, !noalias !236 ; 2 uses
  %i.ad = getelementptr i8, ptr %.sroa.0.2, i64 8
  %.val7.i = load i64, ptr %i.ad, align 8, !noalias !236
  %i.ae = invoke fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.sroa.0.0.val.i, i64 %.sroa.0.0.val6.i) #26
          to label %.noexc25 unwind label %.loopexit.split-lp ; 2 uses

.noexc25:                                         ; preds = %.lr.ph.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i20) ]
  %i.af = invoke fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr %.val.i20, i64 %.val7.i) #26
          to label %.noexc26 unwind label %.loopexit.split-lp ; 2 uses

.noexc26:                                         ; preds = %.noexc25
  %i.ag = extractvalue { ptr, i64 } %i.ae, 1      ; 2 uses
  %i.ah = extractvalue { ptr, i64 } %i.ae, 0      ; 2 uses
  %i.ai = extractvalue { ptr, i64 } %i.af, 0      ; 2 uses
  %7 = extractvalue { ptr, i64 } %i.af, 1         ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ah) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  %spec.store.select.i.i.i.i.i.i21 = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 %7)
  %i.aj = tail call i32 @memcmp(ptr nonnull readonly %i.ah, ptr nonnull readonly %i.ai, i64 %spec.store.select.i.i.i.i.i.i21), !alias.scope !237, !noalias !236 ; 2 uses
  %i.ak = sext i32 %i.aj to i64
  %i.al = icmp eq i32 %i.aj, 0
  %i.am = sub i64 %i.ag, %7
  %spec.select.i.i.i.i.i.i22 = select i1 %i.al, i64 %i.am, i64 %i.ak ; 2 uses
  %i.an = icmp sgt i64 %spec.select.i.i.i.i.i.i22, -1 ; 2 uses
  %.sroa.05.0.i = select i1 %i.an, ptr %.sroa.0.2, ptr %.sroa.0.02.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.13.3, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.05.0.i, i64 48, i1 false), !noalias !236
  %i.ao = zext i1 %i.an to i64
  %i.ap = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.2, i64 %i.ao ; 3 uses
  %spec.select.i.i.i.i.i.lobit.i23 = lshr i64 %spec.select.i.i.i.i.i.i22, 63
  %i.aq = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.02.i, i64 %spec.select.i.i.i.i.i.lobit.i23 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.13.3, i64 48 ; 2 uses
  %i.as = icmp ne ptr %i.ap, %i.h
  %i.at = icmp ne ptr %i.aq, %i.f
  %or.cond.i24 = select i1 %i.as, i1 %i.at, i1 false
  br i1 %or.cond.i24, label %.lr.ph.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_11sort_by_keyReNCNvB1c_9configure0E0EB1e_.exit

_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_11sort_by_keyReNCNvB1c_9configure0E0EB1e_.exit: ; preds = %.noexc26, %.noexc18
  %.sroa.13.1 = phi ptr [ %i.y, %.noexc18 ], [ %i.ar, %.noexc26 ]
  %.sroa.7.1 = phi ptr [ %i.z, %.noexc18 ], [ %i.h, %.noexc26 ]
  %.sroa.0.1 = phi ptr [ %2, %.noexc18 ], [ %i.ap, %.noexc26 ] ; 2 uses
  %i.au = ptrtoint ptr %.sroa.7.1 to i64
  %i.av = ptrtoint ptr %.sroa.0.1 to i64
  %i.aw = sub nuw i64 %i.au, %i.av
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1, ptr align 8 %.sroa.0.1, i64 %i.aw, i1 false), !noalias !238
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_11sort_by_keyReNCNvB1c_9configure0E0EB1e_.exit
  ret void

.loopexit:                                        ; preds = %.noexc, %.preheader
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %.noexc25, %.lr.ph.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %.sroa.13.0 = phi ptr [ %.sroa.13.2, %.loopexit ], [ %.sroa.13.3, %.loopexit.split-lp ]
  %.sroa.7.0 = phi ptr [ %.sroa.7.2, %.loopexit ], [ %i.h, %.loopexit.split-lp ]
  %.sroa.0.0 = phi ptr [ %2, %.loopexit ], [ %.sroa.0.2, %.loopexit.split-lp ] ; 2 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ax = ptrtoint ptr %.sroa.7.0 to i64
  %i.ay = ptrtoint ptr %.sroa.0.0 to i64
  %i.az = sub nuw i64 %i.ax, %i.ay
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.sroa.13.0, ptr nonnull align 8 %.sroa.0.0, i64 %i.az, i1 false), !noalias !239
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2s_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i64 noundef %4, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %4, 0
  %i.b = icmp uge i64 %4, %1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sub nuw nsw i64 %1, %4                   ; 2 uses
  %..i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %4) ; 2 uses
  %i.d = icmp samesign ult i64 %3, %..i
  br i1 %i.d, label %bb.e, label %.critedge

.critedge:                                        ; preds = %bb.b
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %4 ; 3 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %1 ; 2 uses
  %.not = icmp samesign ugt i64 %4, %i.c          ; 2 uses
  %spec.select = select i1 %.not, ptr %i.e, ptr %0
  %i.g = mul nuw nsw i64 %..i, 24                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select, i64 %i.g, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g ; 3 uses
  br i1 %.not, label %.preheader, label %.lr.ph.i

.preheader:                                       ; preds = %.critedge, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i
  %i.i = phi ptr [ %i.x, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i ], [ %i.h, %.critedge ] ; 2 uses
  %i.j = phi ptr [ %i.v, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i ], [ %i.e, %.critedge ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.m, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i ], [ %i.f, %.critedge ]
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -24 ; 3 uses
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -24 ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -24 ; 2 uses
  %i.n = getelementptr i8, ptr %i.i, i64 -16
  %.val12.i = load i64, ptr %i.n, align 8, !noalias !248, !noundef !6 ; 3 uses
  %i.o = getelementptr i8, ptr %i.j, i64 -16
  %.val14.i = load i64, ptr %i.o, align 8, !noalias !248, !noundef !6 ; 2 uses
  %i.p = icmp eq i64 %.val12.i, %.val14.i
  %i.q = icmp ult i64 %.val14.i, %.val12.i
  br i1 %i.p, label %bb.c, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i

bb.c:                                             ; preds = %.preheader
  %.val13.i = load ptr, ptr %i.k, align 8, !noalias !248, !nonnull !6, !noundef !6
  %.val.i = load ptr, ptr %i.l, align 8, !noalias !248, !nonnull !6, !noundef !6
  %i.r = tail call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val13.i, i64 %.val12.i), !noalias !248
  %i.s = icmp sgt i32 %i.r, 0
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i: ; preds = %bb.c, %.preheader
  %.sroa.01.0.neg.i.i.i = phi i1 [ %i.s, %bb.c ], [ %i.q, %.preheader ] ; 3 uses
  %..i17 = select i1 %.sroa.01.0.neg.i.i.i, ptr %i.k, ptr %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %..i17, i64 24, i1 false), !noalias !248
  %i.t = xor i1 %.sroa.01.0.neg.i.i.i, true
  %i.u = zext i1 %i.t to i64
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.u ; 3 uses
  %i.w = zext i1 %.sroa.01.0.neg.i.i.i to i64
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.w ; 3 uses
  %i.y = icmp eq ptr %i.v, %0
  %i.z = icmp eq ptr %i.x, %2
  %or.cond.i = select i1 %i.y, i1 true, i1 %i.z
  br i1 %or.cond.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2T_.exit, label %.preheader

.lr.ph.i:                                         ; preds = %.critedge, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i19
  %i.aa = phi ptr [ %i.an, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i19 ], [ %0, %.critedge ] ; 2 uses
  %.sroa.0.02.i = phi ptr [ %i.am, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i19 ], [ %i.e, %.critedge ] ; 4 uses
  %i.ab = phi ptr [ %i.ak, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i19 ], [ %2, %.critedge ] ; 4 uses
  %i.ac = getelementptr i8, ptr %.sroa.0.02.i, i64 8
  %.sroa.0.0.val6.i = load i64, ptr %i.ac, align 8, !noalias !249, !noundef !6 ; 3 uses
  %i.ad = getelementptr i8, ptr %i.ab, i64 8
  %.val7.i = load i64, ptr %i.ad, align 8, !noalias !249, !noundef !6 ; 2 uses
  %i.ae = icmp eq i64 %.sroa.0.0.val6.i, %.val7.i
  %i.af = icmp ult i64 %.val7.i, %.sroa.0.0.val6.i
  br i1 %i.ae, label %bb.d, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i19

bb.d:                                             ; preds = %.lr.ph.i
  %.val.i22 = load ptr, ptr %i.ab, align 8, !noalias !249, !nonnull !6, !noundef !6
  %.sroa.0.0.val.i = load ptr, ptr %.sroa.0.02.i, align 8, !noalias !249, !nonnull !6, !noundef !6
  %i.ag = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.val.i, ptr nonnull readonly %.val.i22, i64 %.sroa.0.0.val6.i), !noalias !249
  %i.ah = icmp sgt i32 %i.ag, 0
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i19

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i19: ; preds = %bb.d, %.lr.ph.i
  %.sroa.01.0.neg.i.i.i20 = phi i1 [ %i.ah, %bb.d ], [ %i.af, %.lr.ph.i ] ; 3 uses
  %i.ai = xor i1 %.sroa.01.0.neg.i.i.i20, true
  %.sroa.05.0.i = select i1 %.sroa.01.0.neg.i.i.i20, ptr %.sroa.0.02.i, ptr %i.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.05.0.i, i64 24, i1 false), !noalias !249
  %i.aj = zext i1 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.aj ; 3 uses
  %i.al = zext i1 %.sroa.01.0.neg.i.i.i20 to i64
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.02.i, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 2 uses
  %i.ao = icmp ne ptr %i.ak, %i.h
  %i.ap = icmp ne ptr %i.am, %i.f
  %or.cond.i21 = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %or.cond.i21, label %.lr.ph.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2T_.exit

_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2T_.exit: ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i19, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i
  %.sroa.13.0 = phi ptr [ %i.v, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i ], [ %i.an, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i19 ]
  %.sroa.7.0 = phi ptr [ %i.x, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i ], [ %i.h, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i19 ]
  %.sroa.0.0 = phi ptr [ %2, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i ], [ %i.ak, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i19 ] ; 2 uses
  %i.aq = ptrtoint ptr %.sroa.7.0 to i64
  %i.ar = ptrtoint ptr %.sroa.0.0 to i64
  %i.as = sub nuw i64 %i.aq, %i.ar
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.0, ptr align 8 %.sroa.0.0, i64 %i.as, i1 false), !noalias !250
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.a, %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2T_.exit
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253)
  %i.b = icmp eq i64 %4, 0
  br i1 %i.b, label %bb.e, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %0, align 8, !range !5, !alias.scope !253, !noundef !6 ; 2 uses
  %i.f = shl nuw i64 %i.e, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 %i.f)
  %i.g = icmp eq i64 %4, 1
  %i.h = icmp ult i64 %4, 1025
  %..i = select i1 %i.h, i64 4, i64 1
  %.sroa.08.0.i = select i1 %i.g, i64 8, i64 %..i
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !253
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.i, align 8, !alias.scope !253
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.e, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !253
  %i.j = load i64, ptr %i.a, align 8, !range !254, !noalias !253, !noundef !6
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.l, align 8, !range !255, !noalias !253, !noundef !6
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noalias !253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !253
  br label %bb.e

end_hunk_0
begin_hunk_1_@_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_:bb.a
  %i.ew = add i64 %.reass.i.reass.i.reass.reass, %.sroa.04.0.i.i.i84
  br label %bb.w

bb.ab:                                            ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  %.promoted.i12.i.i = load i64, ptr %i.cp, align 8, !alias.scope !306, !noalias !307 ; 3 uses
  %i.ex = add i64 %.promoted.i12.i.i, %i.cq       ; 3 uses
  %i.ey = icmp ult i64 %i.ex, %i.ck
  br i1 %i.ey, label %.lr.ph.i15.i.i, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread

.lr.ph.i15.i.i:                                   ; preds = %bb.ab
  %i.ez = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.fa = load i64, ptr %i.ez, align 8, !alias.scope !306, !noalias !307, !noundef !6 ; 2 uses
  %i.fb = load i64, ptr %i.cd, align 8, !alias.scope !306, !noalias !307
  %.fr215.i.i = freeze i64 %i.fb                  ; 10 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.fd = load i64, ptr %i.fc, align 8, !alias.scope !306, !noalias !307
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %.fr215.i.i, i64 range(i64 0, -9223372036854775808) %i.co) ; 2 uses
  %i.fe = add i64 %.fr215.i.i, -1                 ; 2 uses
  %.first_iter.i16.i.i = icmp ult i64 %i.fe, %i.co
  %reass.sub95.i = sub i64 1, %.fr215.i.i         ; 2 uses
  br i1 %.first_iter.i16.i.i, label %.lr.ph.split.us.i.i.i.us.preheader, label %.lr.ph.split.us.i.i.i.preheader

.lr.ph.split.us.i.i.i.preheader:                  ; preds = %.lr.ph.i15.i.i
  %exitcond.not.i17.i.i88.not = icmp ult i64 %.fr215.i.i, %i.co
  br label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i.us.preheader:               ; preds = %.lr.ph.i15.i.i
  %exitcond.not.i17.i.i.us93.not = icmp ult i64 %.fr215.i.i, %i.co
  %.not34.i.us.i.i.us96 = icmp eq i64 %.fr215.i.i, 0
  br label %.lr.ph.split.us.i.i.i.us

.lr.ph.split.us.i.i.i.us:                         ; preds = %.lr.ph.split.us.i.i.i.us.preheader, %bb.ae
  %.sink.i18.i28.i.us = phi i64 [ %.sink.i18.i.i.us, %bb.ae ], [ %.promoted.i12.i.i, %.lr.ph.split.us.i.i.i.us.preheader ] ; 7 uses
  %i.ff = phi i64 [ %i.gd, %bb.ae ], [ %i.ex, %.lr.ph.split.us.i.i.i.us.preheader ]
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !alias.scope !304, !noalias !308, !noundef !6
  %i.fi = and i8 %i.fh, 63
  %i.fj = zext nneg i8 %i.fi to i64
  %i.fk = shl nuw i64 1, %i.fj
  %i.fl = and i64 %i.fk, %i.fa
  %.not.us.i.i.i.us = icmp eq i64 %i.fl, 0
  br i1 %.not.us.i.i.i.us, label %bb.ad, label %.preheader35.i.i.i.us.preheader

.preheader35.i.i.i.us.preheader:                  ; preds = %.lr.ph.split.us.i.i.i.us
  br i1 %exitcond.not.i17.i.i.us93.not, label %.lr.ph95, label %.preheader.i19.us.i.i.us.preheader

.preheader35.i.i.i.us:                            ; preds = %.lr.ph95
  %i.fm = add i64 %.sroa.04.0.us.i.i.i.us94, 1    ; 2 uses
  %exitcond.not.i17.i.i.us = icmp eq i64 %i.fm, %umax.i.i.i
  br i1 %exitcond.not.i17.i.i.us, label %.preheader.i19.us.i.i.us.preheader, label %.lr.ph95

.preheader.i19.us.i.i.us.preheader:               ; preds = %.preheader35.i.i.i.us, %.preheader35.i.i.i.us.preheader
  br i1 %.not34.i.us.i.i.us96, label %.split.us.i21.i.i, label %.lr.ph98

.lr.ph95:                                         ; preds = %.preheader35.i.i.i.us.preheader, %.preheader35.i.i.i.us
  %.sroa.04.0.us.i.i.i.us94 = phi i64 [ %i.fm, %.preheader35.i.i.i.us ], [ %.fr215.i.i, %.preheader35.i.i.i.us.preheader ] ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.sroa.04.0.us.i.i.i.us94
  %i.fo = load i8, ptr %i.fn, align 1, !alias.scope !305, !noalias !309, !noundef !6
  %i.fp = add i64 %.sroa.04.0.us.i.i.i.us94, %.sink.i18.i28.i.us ; 2 uses
  %i.fq = icmp ult i64 %i.fp, %i.ck
  tail call void @llvm.assume(i1 %i.fq)
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.fp
  %i.fs = load i8, ptr %i.fr, align 1, !alias.scope !304, !noalias !308, !noundef !6
  %.not21.us.i.i.i.us = icmp eq i8 %i.fo, %i.fs
  br i1 %.not21.us.i.i.i.us, label %.preheader35.i.i.i.us, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph95
  %.reass282.i.reass.i.us = add i64 %reass.sub95.i, %.sink.i18.i28.i.us
  %i.ft = add i64 %.reass282.i.reass.i.us, %.sroa.04.0.us.i.i.i.us94
  br label %bb.ae

.preheader.i19.us.i.i.us:                         ; preds = %.lr.ph98
  %.not34.i.us.i.i.us = icmp eq i64 %i.fu, 0
  br i1 %.not34.i.us.i.i.us, label %.split.us.i21.i.i, label %.lr.ph98

.lr.ph98:                                         ; preds = %.preheader.i19.us.i.i.us.preheader, %.preheader.i19.us.i.i.us
  %.sroa.2.0.us.i.us.i.i.us97 = phi i64 [ %i.fu, %.preheader.i19.us.i.i.us ], [ %.fr215.i.i, %.preheader.i19.us.i.i.us.preheader ]
  %i.fu = add i64 %.sroa.2.0.us.i.us.i.i.us97, -1 ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.fu
  %i.fw = load i8, ptr %i.fv, align 1, !alias.scope !305, !noalias !309, !noundef !6
  %i.fx = add i64 %i.fu, %.sink.i18.i28.i.us      ; 2 uses
  %i.fy = icmp ult i64 %i.fx, %i.ck
  tail call void @llvm.assume(i1 %i.fy)
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.fx
  %i.ga = load i8, ptr %i.fz, align 1, !alias.scope !304, !noalias !308, !noundef !6
  %.not20.us.i.us.i.i.us = icmp eq i8 %i.fw, %i.ga
  br i1 %.not20.us.i.us.i.i.us, label %.preheader.i19.us.i.i.us, label %.split.us.i.i.us

.split.us.i.i.us:                                 ; preds = %.lr.ph98
  %i.gb = add i64 %.sink.i18.i28.i.us, %i.fd
  br label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.split.us.i.i.i.us
  %i.gc = add i64 %.sink.i18.i28.i.us, %i.co
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.split.us.i.i.us, %bb.ac
  %.sink.i18.i.i.us = phi i64 [ %i.gc, %bb.ad ], [ %i.ft, %bb.ac ], [ %i.gb, %.split.us.i.i.us ] ; 2 uses
  %i.gd = add i64 %.sink.i18.i.i.us, %i.cq        ; 2 uses
  %i.ge = icmp ult i64 %i.gd, %i.ck
  br i1 %i.ge, label %.lr.ph.split.us.i.i.i.us, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.split.us.i.i.i.preheader, %bb.ah
  %.sink.i18.i28.i = phi i64 [ %.sink.i18.i.i, %bb.ah ], [ %.promoted.i12.i.i, %.lr.ph.split.us.i.i.i.preheader ] ; 4 uses
  %i.gf = phi i64 [ %i.gv, %bb.ah ], [ %i.ex, %.lr.ph.split.us.i.i.i.preheader ]
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1, !alias.scope !304, !noalias !308, !noundef !6
  %i.gi = and i8 %i.gh, 63
  %i.gj = zext nneg i8 %i.gi to i64
  %i.gk = shl nuw i64 1, %i.gj
  %i.gl = and i64 %i.gk, %i.fa
  %.not.us.i.i.i = icmp eq i64 %i.gl, 0
  br i1 %.not.us.i.i.i, label %bb.ag, label %.preheader35.i.i.i.preheader

.preheader35.i.i.i.preheader:                     ; preds = %.lr.ph.split.us.i.i.i
  br i1 %exitcond.not.i17.i.i88.not, label %.lr.ph90, label %.preheader.i19.i.i

.preheader35.i.i.i:                               ; preds = %.lr.ph90
  %i.gm = add i64 %.sroa.04.0.us.i.i.i89, 1       ; 2 uses
  %exitcond.not.i17.i.i = icmp eq i64 %i.gm, %umax.i.i.i
  br i1 %exitcond.not.i17.i.i, label %.preheader.i19.i.i, label %.lr.ph90

.lr.ph90:                                         ; preds = %.preheader35.i.i.i.preheader, %.preheader35.i.i.i
  %.sroa.04.0.us.i.i.i89 = phi i64 [ %i.gm, %.preheader35.i.i.i ], [ %.fr215.i.i, %.preheader35.i.i.i.preheader ] ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.sroa.04.0.us.i.i.i89
  %i.go = load i8, ptr %i.gn, align 1, !alias.scope !305, !noalias !309, !noundef !6
  %i.gp = add i64 %.sroa.04.0.us.i.i.i89, %.sink.i18.i28.i ; 2 uses
  %i.gq = icmp ult i64 %i.gp, %i.ck
  tail call void @llvm.assume(i1 %i.gq)
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.gp
  %i.gs = load i8, ptr %i.gr, align 1, !alias.scope !304, !noalias !308, !noundef !6
  %.not21.us.i.i.i = icmp eq i8 %i.go, %i.gs
  br i1 %.not21.us.i.i.i, label %.preheader35.i.i.i, label %bb.af

.preheader.i19.i.i:                               ; preds = %.preheader35.i.i.i.preheader, %.preheader35.i.i.i
  %.not34.i.i.i = icmp eq i64 %.fr215.i.i, 0
  br i1 %.not34.i.i.i, label %.split.us.i21.i.i, label %.split32.us.i20.i.i

.split32.us.i20.i.i:                              ; preds = %.preheader.i19.i.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.fe, i64 noundef range(i64 0, -9223372036854775808) %i.co, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #28, !noalias !310
  unreachable

bb.af:                                            ; preds = %.lr.ph90
  %.reass282.i.reass.i = add i64 %reass.sub95.i, %.sink.i18.i28.i
  %i.gt = add i64 %.reass282.i.reass.i, %.sroa.04.0.us.i.i.i89
  br label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.split.us.i.i.i
  %i.gu = add i64 %.sink.i18.i28.i, %i.co
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.sink.i18.i.i = phi i64 [ %i.gu, %bb.ag ], [ %i.gt, %bb.af ] ; 2 uses
  %i.gv = add i64 %.sink.i18.i.i, %i.cq           ; 2 uses
  %i.gw = icmp ult i64 %i.gv, %i.ck
  br i1 %i.gw, label %.lr.ph.split.us.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread

.split.us.i21.i.i:                                ; preds = %.preheader.i19.us.i.i.us.preheader, %.preheader.i19.us.i.i.us, %.preheader.i19.i.i
  %.sink.i18.i28.i16 = phi i64 [ %.sink.i18.i28.i, %.preheader.i19.i.i ], [ %.sink.i18.i28.i.us, %.preheader.i19.us.i.i.us ], [ %.sink.i18.i28.i.us, %.preheader.i19.us.i.i.us.preheader ]
  %i.gx = add i64 %.sink.i18.i28.i16, %i.co
  br label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread6

_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread: ; preds = %bb.w, %bb.ah, %bb.ae, %bb.s, %.preheader.i.i, %.split166.us.i.i, %bb.o, %bb.r, %bb.t, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !282
  br label %bb.ai

_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread6: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit12.i.i.us.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit14.i.i.us.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit16.i.i.us.i.i, %bb.n, %.split.us.i21.i.i, %.split.us.i11.i.i, %.loopexit43.i.i, %.split166.us.i.i, %bb.m, %bb.g
  %.sroa.10.0.i.ph.pn = phi i64 [ %i.i, %.split166.us.i.i ], [ %i.gx, %.split.us.i21.i.i ], [ %.promoted157.i.i, %bb.g ], [ %i.i, %bb.m ], [ %i.di, %.loopexit43.i.i ], [ %i.em, %.split.us.i11.i.i ], [ %i.bh, %bb.n ], [ %i.bh, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit16.i.i.us.i.i ], [ %i.bh, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit14.i.i.us.i.i ], [ %i.bh, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit12.i.i.us.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !282
  %i.gy = sub nuw i64 %.8.val, %.sroa.10.0.i.ph.pn
  %i.gz = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.sroa.10.0.i.ph.pn
  br label %bb.ai

bb.ai:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread, %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread6
  %.sroa.3.0 = phi i64 [ %i.gy, %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread6 ], [ %.8.val, %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread ]
  %.sroa.0.0 = phi ptr [ %i.gz, %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread6 ], [ %.0.val, %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread ]
  %i.ha = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.hb = insertvalue { ptr, i64 } %i.ha, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.hb
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #5 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !11
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %4 = mul nuw i64 %3, %.0.val                    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.f = icmp uge i64 %i.b, %4
  tail call void @llvm.assume(i1 %i.f)
  %i.g = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #24
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %i.b, 0
  br i1 %i.h, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.i = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24
  %i.j = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #24
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.g, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit ], [ %i.j, %bb.d ] ; 2 uses
  %i.k = icmp eq ptr %.pn8, null
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.l, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.i, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.m, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.n, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3tZ2SXJA1qv_8jiff_cli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !11
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %3 to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.i, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24
  br i1 %2, label %bb.g, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #24
  br label %bb.h

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.k = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #24
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %.pn9 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.l = icmp eq ptr %.pn9, null
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.n, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.o = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn9, ptr %i.q, align 8
  br label %bb.f
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutuEp6OutputINtNtB1c_6result6ResultuNtNtNtB1c_2io5error5ErrorENtNtB1c_6marker4SendNtB2O_4SyncEL_EENtNtB1a_4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !5, !noundef !6 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = shl nuw i64 %.val, 4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit

_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxNtNtCslhCKBzvegwQ_10regex_lite6pikevm5CacheEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !5, !noundef !6 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = shl nuw i64 %.val, 3
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit

_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CoweEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !5, !noundef !6 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = mul nuw i64 %.val, 24
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit

_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCslhCKBzvegwQ_10regex_lite3int11NonMaxUsizeEENtNtNtBR_3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !5, !noundef !6 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = shl nuw i64 %.val, 3
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit

_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCs35zZu0fmp16_7walkdir4dent8DirEntryNtNtB1s_5error5ErrorEENtNtNtBR_3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !5, !noundef !6 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = mul nuw i64 %.val, 56
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit

_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.a, %bb.b
  ret void
}
end_hunk_1

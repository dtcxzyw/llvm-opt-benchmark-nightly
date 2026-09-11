Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_bb_derive_macros_tests_nostd.iceoryx2_bb_derive_macros_tests_nostd.94e3601a16bbbbda-cgu.0?download=true
inline.NumInlined: 68
inline.NumDeleted: 50
begin_hunk_0_@_RINvNvMs2_NtCsbqH9stoieM8_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.h, align 8, !alias.scope !15
  call fastcc void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner11finish_growCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %i.g) #18
  %i.i = load i64, ptr %i.a, align 8, !range !7, !noalias !15, !noundef !6
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.k, align 8, !range !16, !noalias !15, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.n, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.l, %bb.c ]
  tail call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #19
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.k, align 8, !noalias !15, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15
  store ptr %i.o, ptr %i.h, align 8, !alias.scope !15
  %i.p = icmp sgt i64 %i.g, -1
  tail call void @llvm.assume(i1 %i.p)
  store i64 %i.g, ptr %0, align 8, !alias.scope !15
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef i32 @_RNCINvNtCsigunbJSLHCW_3std2rt10lang_startuE0CscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  tail call fastcc void @_RINvNtNtCsigunbJSLHCW_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd(ptr noundef nonnull %i.a) #20
  ret i32 0
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_RNSNvYNCINvMs_Cs4r84FDkReR_13libtest_mimicNtBc_5Trial14ignorable_testNCINvB9_4testNCNCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0s_0NtNtCsbqH9stoieM8_5alloc6string6StringE0B2o_E0INtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTbEE9call_once6vtableB1o_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, ptr nofree noundef readonly captures(none) %1, i1 zeroext %2) unnamed_addr #3 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !6, !align !8, !noundef !6 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load i64, ptr %i.e, align 8, !range !9, !alias.scope !32, !noalias !33, !noundef !6
  %i.g = icmp eq i64 %i.f, 2
  br i1 %i.g, label %_RNCNCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0s_0B5_.exit.i.i, label %_RNCNCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0s_0B5_.exit.thread.i.i

_RNCNCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0s_0B5_.exit.thread.i.i: ; preds = %bb.a
  tail call void %i.d() #18, !noalias !34, !inline_history !26
  br label %bb.c

_RNCNCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0s_0B5_.exit.i.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !32, !noalias !33, !noundef !6
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !32, !noalias !33
  call void @_RNvNtCslCQgxiHprg6_19iceoryx2_bb_testing12test_harness12expect_panic(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly captures(address, read_provenance) %i.i, i64 %i.k) #18, !noalias !35
  %.pr.i.i = load i64, ptr %i.a, align 8, !noalias !30 ; 2 uses
  %.not.i.i = icmp eq i64 %.pr.i.i, -2
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RNCNCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0s_0B5_.exit.i.i
  %.sroa.9.8..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.48.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.8..sroa_idx4.i, i64 16, i1 false), !noalias !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !30
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.pr.i.i, ptr %i.l, align 8, !alias.scope !27, !noalias !28
  br label %_RNCINvMs_Cs4r84FDkReR_13libtest_mimicNtB7_5Trial14ignorable_testNCINvB4_4testNCNCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0s_0NtNtCsbqH9stoieM8_5alloc6string6StringE0B2j_E0B1j_.exit

bb.c:                                             ; preds = %_RNCNCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0s_0B5_.exit.i.i, %_RNCNCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0s_0B5_.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !30
  br label %_RNCINvMs_Cs4r84FDkReR_13libtest_mimicNtB7_5Trial14ignorable_testNCINvB4_4testNCNCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0s_0NtNtCsbqH9stoieM8_5alloc6string6StringE0B2j_E0B1j_.exit

_RNCINvMs_Cs4r84FDkReR_13libtest_mimicNtB7_5Trial14ignorable_testNCINvB4_4testNCNCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0s_0NtNtCsbqH9stoieM8_5alloc6string6StringE0B2j_E0B1j_.exit: ; preds = %bb.b, %bb.c
  %storemerge.i = phi i64 [ 1, %bb.b ], [ 0, %bb.c ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !27, !noalias !28
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef i32 @_RNSNvYNCINvNtCsigunbJSLHCW_3std2rt10lang_startuE0INtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceuE9call_once6vtableCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd(ptr nofree noundef readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  tail call fastcc void @_RINvNtNtCsigunbJSLHCW_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd(ptr noundef nonnull readonly %i.a) #20, !noalias !38
  ret i32 0
}

; Function Attrs: noreturn nounwind nonlazybind uwtable
define hidden void @_RNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main() unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 3 uses
  %i.c = alloca [104 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMNtCs4r84FDkReR_13libtest_mimic4argsNtB2_9Arguments9from_args(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.c) #18
  %i.d = load i64, ptr %i.c, align 8, !range !7, !alias.scope !41, !noundef !6
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %_RINvMNtCs8Chj7Szqq0n_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.c, align 8, !alias.scope !41
  store i64 1, ptr %i.f, align 8, !alias.scope !41
  br label %_RINvMNtCs8Chj7Szqq0n_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd.exit

_RINvMNtCs8Chj7Szqq0n_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.g = load atomic ptr, ptr @_RNvNvXCslCQgxiHprg6_19iceoryx2_bb_testingNtB4_8TestCaseNtCsfYvvZIldtH5_9inventory7Collect8registry8REGISTRY acquire, align 8
  call fastcc void @_RNvXNtNtCsbqH9stoieM8_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtCs4r84FDkReR_13libtest_mimic5TrialEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map3MapINtNvCsfYvvZIldtH5_9inventory1__4IterNtCslCQgxiHprg6_19iceoryx2_bb_testing8TestCaseENCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0EE9from_iterB4k_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noundef align 8 %i.g) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvCs4r84FDkReR_13libtest_mimic3run(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b) #18
  call void @_RNvMs4_Cs4r84FDkReR_13libtest_mimicNtB5_10Conclusion4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.a) #19
  unreachable
}

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
define hidden noalias noundef ptr @_RNvCsicpYtSlSgpD_7___rustc12___rust_alloc(i64 noundef %0, i64 allocalign noundef range(i64 1, -9223372036854775807) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs0_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocatorNtB5_13HeapAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator8allocate(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @_RNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd6GLOBAL, i64 noundef range(i64 1, -9223372036854775807) %1, i64 noundef %0) #18
  %i.b = load ptr, ptr %i.a, align 8, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
define hidden void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr allocptr noundef captures(address) %0, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2) unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_RNvXs_CscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostdNtB4_19GlobalHeapAllocatorNtNtNtCs8Chj7Szqq0n_4core5alloc6global11GlobalAlloc7dealloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvXs0_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocatorNtB5_13HeapAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator10deallocate(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @_RNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd6GLOBAL, ptr noundef nonnull %0, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %1) #18
  br label %_RNvXs_CscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostdNtB4_19GlobalHeapAllocatorNtNtNtCs8Chj7Szqq0n_4core5alloc6global11GlobalAlloc7dealloc.exit

_RNvXs_CscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostdNtB4_19GlobalHeapAllocatorNtNtNtCs8Chj7Szqq0n_4core5alloc6global11GlobalAlloc7dealloc.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
define hidden noalias noundef ptr @_RNvCsicpYtSlSgpD_7___rustc14___rust_realloc(ptr allocptr noundef %0, i64 noundef %1, i64 allocalign noundef range(i64 1, -9223372036854775807) %2, i64 noundef %3) unnamed_addr #7 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs0_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocatorNtB5_13HeapAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator8allocate(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @_RNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd6GLOBAL, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %3) #18
  %i.b = load ptr, ptr %i.a, align 8, !noundef !6 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RNvYNtCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd19GlobalHeapAllocatorNtNtNtCs8Chj7Szqq0n_4core5alloc6global11GlobalAlloc7reallocB4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @llvm.umin.i64(i64 %1, i64 %3)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.b, ptr align 1 %0, i64 %i.d, i1 false)
  %i.e = icmp eq ptr %0, null
  br i1 %i.e, label %_RNvYNtCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd19GlobalHeapAllocatorNtNtNtCs8Chj7Szqq0n_4core5alloc6global11GlobalAlloc7reallocB4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvXs0_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocatorNtB5_13HeapAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator10deallocate(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @_RNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd6GLOBAL, ptr noundef nonnull %0, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %1) #18
  br label %_RNvYNtCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd19GlobalHeapAllocatorNtNtNtCs8Chj7Szqq0n_4core5alloc6global11GlobalAlloc7reallocB4_.exit

_RNvYNtCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd19GlobalHeapAllocatorNtNtNtCs8Chj7Szqq0n_4core5alloc6global11GlobalAlloc7reallocB4_.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret ptr %i.b
}

; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
define hidden noalias noundef ptr @_RNvCsicpYtSlSgpD_7___rustc19___rust_alloc_zeroed(i64 noundef %0, i64 allocalign noundef range(i64 1, -9223372036854775807) %1) unnamed_addr #8 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs0_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocatorNtB5_13HeapAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator8allocate(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @_RNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd6GLOBAL, i64 noundef range(i64 1, -9223372036854775807) %1, i64 noundef %0) #18
  %i.b = load ptr, ptr %i.a, align 8, !noundef !6 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.b, i8 0, i64 %0, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.b
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner11finish_growCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef range(i64 4, 0) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = mul nuw nsw i64 %1, 72                   ; 4 uses
  %or.cond.not = icmp ugt i64 %1, 128102389400760775
  br i1 %or.cond.not, label %bb.e, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %.0.val, 0
  br i1 %i.d, label %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator4grow.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.e = icmp uge i64 %1, %.0.val
  tail call void @llvm.assume(i1 %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs0_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocatorNtB5_13HeapAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator8allocate(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @_RNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd6GLOBAL, i64 noundef range(i64 1, -9223372036854775807) 8, i64 noundef range(i64 0, 9223372036854775801) %i.c) #18
  %i.f = load ptr, ptr %i.b, align 8, !noundef !6 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator4grow.exit.thread11, label %bb.d

bb.d:                                             ; preds = %bb.c
  %2 = mul nuw nsw i64 %.0.val, 72                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull align 1 %.8.val, i64 %2, i1 false)
  tail call void @_RNvXs0_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocatorNtB5_13HeapAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator10deallocate(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @_RNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd6GLOBAL, ptr noundef nonnull %.8.val, i64 noundef range(i64 1, -9223372036854775807) 8, i64 noundef %2) #18
  br label %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator4grow.exit.thread

_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  tail call void @_RNvCsicpYtSlSgpD_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs0_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocatorNtB5_13HeapAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator8allocate(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @_RNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd6GLOBAL, i64 noundef range(i64 1, 9) 8, i64 noundef range(i64 0, -9223372036854775808) %i.c) #18
  %i.h = load ptr, ptr %i.a, align 8, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator4grow.exit.thread11, label %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator4grow.exit.thread

_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator4grow.exit.thread11: ; preds = %bb.c, %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator4grow.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 8, ptr %i.j, align 8
  br label %bb.e

_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator4grow.exit.thread: ; preds = %bb.d, %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator4grow.exit
  %.sroa.0.0.i.i.pn12 = phi ptr [ %i.f, %bb.d ], [ %i.h, %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator4grow.exit ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i.i.pn12, ptr %i.k, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator4grow.exit.thread11, %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator4grow.exit.thread
  %.sink15 = phi i64 [ 16, %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator4grow.exit.thread11 ], [ 16, %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator4grow.exit.thread ], [ 8, %bb.a ]
  %.sink13 = phi i64 [ %i.c, %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator4grow.exit.thread11 ], [ %i.c, %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator4grow.exit.thread ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator4grow.exit.thread11 ], [ 0, %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator4grow.exit.thread ], [ 1, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %.sink15
  store i64 %.sink13, ptr %i.l, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvXNtNtCsbqH9stoieM8_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtCs4r84FDkReR_13libtest_mimic5TrialEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map3MapINtNvCsfYvvZIldtH5_9inventory1__4IterNtCslCQgxiHprg6_19iceoryx2_bb_testing8TestCaseENCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0EE9from_iterB4k_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [72 x i8], align 8                ; 3 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call fastcc void @_RNvXs0_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters3mapINtB5_3MapINtNvCsfYvvZIldtH5_9inventory1__4IterNtCslCQgxiHprg6_19iceoryx2_bb_testing8TestCaseENCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0ENtNtNtB9_6traits8iterator8Iterator4nextB2m_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.d, ptr noalias nofree noundef align 8 dereferenceable(8) %i.f) #21
  %i.g = load i64, ptr %i.d, align 8, !range !48, !noundef !6
  %.not = icmp eq i64 %i.g, -1
  br i1 %.not, label %bb.d, label %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.a
  tail call void @_RNvCsicpYtSlSgpD_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !49
  call void @_RNvXs0_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocatorNtB5_13HeapAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator8allocate(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @_RNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd6GLOBAL, i64 noundef range(i64 1, 9) 8, i64 noundef range(i64 0, -9223372036854775808) 288) #18, !noalias !49
  %i.h = load ptr, ptr %i.c, align 8, !noalias !49, !noundef !6 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !49
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd.exit

bb.b:                                             ; preds = %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator8allocate.exit.i.i
  tail call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef 8, i64 288) #19
  unreachable

_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd.exit: ; preds = %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator8allocate.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.h, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false)
  store i64 4, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  %i.j = load ptr, ptr %i.f, align 8, !align !8, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !50
  store ptr %i.j, ptr %i.b, align 8, !noalias !52
  call fastcc void @_RNvXs0_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters3mapINtB5_3MapINtNvCsfYvvZIldtH5_9inventory1__4IterNtCslCQgxiHprg6_19iceoryx2_bb_testing8TestCaseENCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0ENtNtNtB9_6traits8iterator8Iterator4nextB2m_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.a, ptr noalias nofree noundef align 8 dereferenceable(8) %i.b) #21, !noalias !52
  %i.k = load i64, ptr %i.a, align 8, !range !48, !noalias !52, !noundef !6
  %.not1.i.i = icmp eq i64 %i.k, -1
  br i1 %.not1.i.i, label %_RNvXNtNtCsbqH9stoieM8_5alloc3vec11spec_extendINtB4_3VecNtCs4r84FDkReR_13libtest_mimic5TrialEINtB2_10SpecExtendBR_INtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map3MapINtNvCsfYvvZIldtH5_9inventory1__4IterNtCslCQgxiHprg6_19iceoryx2_bb_testing8TestCaseENCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0EE11spec_extendB41_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd.exit, %bb.c
  %i.l = phi ptr [ %i.q, %bb.c ], [ %i.h, %_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd.exit ]
  %i.m = phi i64 [ %i.r, %bb.c ], [ 4, %_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd.exit ] ; 3 uses
  %i.n = phi i64 [ %i.t, %bb.c ], [ 1, %_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd.exit ] ; 4 uses
  %i.o = icmp samesign ult i64 %i.n, 128102389400760776
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp eq i64 %i.n, %i.m
  br i1 %i.p, label %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VecNtCs4r84FDkReR_13libtest_mimic5TrialE7reserveCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd.exit.i.i, label %bb.c

_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VecNtCs4r84FDkReR_13libtest_mimic5TrialE7reserveCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd.exit.i.i: ; preds = %.lr.ph.i.i
  call fastcc void @_RINvNvMs2_NtCsbqH9stoieM8_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.m, i64 noundef range(i64 1, 0) 1) #18
  %.pre2.i.i = load i64, ptr %i.e, align 8, !range !5, !alias.scope !52
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !52
  br label %bb.c

bb.c:                                             ; preds = %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VecNtCs4r84FDkReR_13libtest_mimic5TrialE7reserveCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd.exit.i.i, %.lr.ph.i.i
  %i.q = phi ptr [ %i.l, %.lr.ph.i.i ], [ %.pre, %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VecNtCs4r84FDkReR_13libtest_mimic5TrialE7reserveCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd.exit.i.i ] ; 2 uses
  %i.r = phi i64 [ %i.m, %.lr.ph.i.i ], [ %.pre2.i.i, %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VecNtCs4r84FDkReR_13libtest_mimic5TrialE7reserveCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd.exit.i.i ]
  %i.s = getelementptr inbounds nuw [72 x i8], ptr %i.q, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.s, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !52
  %i.t = add nuw nsw i64 %i.n, 1                  ; 2 uses
  store i64 %i.t, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !52
  call fastcc void @_RNvXs0_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters3mapINtB5_3MapINtNvCsfYvvZIldtH5_9inventory1__4IterNtCslCQgxiHprg6_19iceoryx2_bb_testing8TestCaseENCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0ENtNtNtB9_6traits8iterator8Iterator4nextB2m_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.a, ptr noalias nofree noundef align 8 dereferenceable(8) %i.b) #21, !noalias !52
  %i.u = load i64, ptr %i.a, align 8, !range !48, !noalias !52, !noundef !6
  %.not.i.i = icmp eq i64 %i.u, -1
  br i1 %.not.i.i, label %_RNvXNtNtCsbqH9stoieM8_5alloc3vec11spec_extendINtB4_3VecNtCs4r84FDkReR_13libtest_mimic5TrialEINtB2_10SpecExtendBR_INtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map3MapINtNvCsfYvvZIldtH5_9inventory1__4IterNtCslCQgxiHprg6_19iceoryx2_bb_testing8TestCaseENCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0EE11spec_extendB41_.exit, label %.lr.ph.i.i

_RNvXNtNtCsbqH9stoieM8_5alloc3vec11spec_extendINtB4_3VecNtCs4r84FDkReR_13libtest_mimic5TrialEINtB2_10SpecExtendBR_INtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map3MapINtNvCsfYvvZIldtH5_9inventory1__4IterNtCslCQgxiHprg6_19iceoryx2_bb_testing8TestCaseENCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0EE11spec_extendB41_.exit: ; preds = %bb.c, %_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.w, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RNvXNtNtCsbqH9stoieM8_5alloc3vec11spec_extendINtB4_3VecNtCs4r84FDkReR_13libtest_mimic5TrialEINtB2_10SpecExtendBR_INtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map3MapINtNvCsfYvvZIldtH5_9inventory1__4IterNtCslCQgxiHprg6_19iceoryx2_bb_testing8TestCaseENCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0EE11spec_extendB41_.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters3mapINtB5_3MapINtNvCsfYvvZIldtH5_9inventory1__4IterNtCslCQgxiHprg6_19iceoryx2_bb_testing8TestCaseENCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0ENtNtNtB9_6traits8iterator8Iterator4nextB2m_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [104 x i8], align 8               ; 26 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.g = load ptr, ptr %1, align 8, !alias.scope !93, !align !8, !noundef !6 ; 3 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.au, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.g, align 8, !noalias !93, !nonnull !6, !noundef !6 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !noalias !93, !align !8, !noundef !6
  store ptr %i.j, ptr %1, align 8, !alias.scope !93
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !94, !noalias !95, !nonnull !6, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !96
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !94, !noalias !95, !nonnull !6, !noundef !6 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !94, !noalias !95, !noundef !6 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !97
  call void @_RNvMsu_NtNtCs8Chj7Szqq0n_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 2) #18, !noalias !96
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %i.q = load i64, ptr %i.c, align 8, !range !9, !alias.scope !98, !noalias !99, !noundef !6
  switch i64 %i.q, label %default.unreachable [
    i64 0, label %.preheader.i.i.i
    i64 1, label %bb.p
    i64 2, label %bb.q
  ]

.preheader.i.i.i:                                 ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 26
  %i.s = load i8, ptr %i.r, align 2, !range !100, !alias.scope !98, !noalias !99
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !98, !noalias !99, !nonnull !6 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !98, !noalias !99 ; 16 uses
  br i1 %i.t, label %_RINvMNtCs8Chj7Szqq0n_4core3stre4findReECscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd.exit.thread.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.promoted205.i.i.i = load i8, ptr %i.y, align 8, !alias.scope !98, !noalias !99
  %.promoted156.i.i.i = load i64, ptr %i.z, align 8, !alias.scope !98, !noalias !99 ; 13 uses
  %i.aa = trunc i8 %.promoted205.i.i.i to i1      ; 2 uses
  %i.ab = icmp eq i64 %.promoted156.i.i.i, 0
  br i1 %i.ab, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.preheader.i.i.i
  %.not.i.i.us.i.peel.i.i = icmp ult i64 %.promoted156.i.i.i, %i.x
  br i1 %.not.i.i.us.i.peel.i.i, label %bb.d, label %.split.i.i.us.i.peel.i.i

.split.i.i.us.i.peel.i.i:                         ; preds = %bb.c
  %i.ac = icmp eq i64 %.promoted156.i.i.i, %i.x
  br i1 %i.ac, label %bb.e, label %.split.us160.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 %.promoted156.i.i.i
  %i.ae = load i8, ptr %i.ad, align 1, !alias.scope !101, !noalias !102, !noundef !6
  %i.af = icmp sgt i8 %i.ae, -65
  br i1 %i.af, label %bb.e, label %.split.us160.i.i.i

bb.e:                                             ; preds = %bb.d, %.split.i.i.us.i.peel.i.i, %.lr.ph.preheader.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 %.promoted156.i.i.i ; 4 uses
  %i.ah = icmp samesign eq i64 %.promoted156.i.i.i, %i.x
  br i1 %i.ah, label %_RINvMNtCs8Chj7Szqq0n_4core3stre4findReECscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = load i8, ptr %i.ag, align 1, !noalias !103, !noundef !6 ; 5 uses
  %i.aj = icmp sgt i8 %i.ai, -1
  br i1 %i.aj, label %bb.g, label %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd.exit12.i.i.us.i.peel.i.i

_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd.exit12.i.i.us.i.peel.i.i: ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.al = and i8 %i.ai, 31
  %i.am = zext nneg i8 %i.al to i32               ; 3 uses
  %i.an = add nuw nsw i64 %.promoted156.i.i.i, 1
  %i.ao = icmp samesign ne i64 %i.an, %i.x
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = load i8, ptr %i.ak, align 1, !noalias !103, !noundef !6
  %i.aq = shl nuw nsw i32 %i.am, 6
  %i.ar = and i8 %i.ap, 63
  %i.as = zext nneg i8 %i.ar to i32               ; 2 uses
  %i.at = or disjoint i32 %i.aq, %i.as
  %i.au = icmp samesign ugt i8 %i.ai, -33
  br i1 %i.au, label %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd.exit14.i.i.us.i.peel.i.i, label %bb.h
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_bb_derive_macros_tests_nostd.iceoryx2_bb_derive_macros_tests_nostd.94e3601a16bbbbda-cgu.0?download=true
inline.NumInlined: 68
inline.NumDeleted: 50
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs_Cs4r84FDkReR_13libtest_mimicNtBc_5Trial14ignorable_testNCINvB9_4testNCNCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0s_0NtNtCsbqH9stoieM8_5alloc6string6StringE0B2o_E0INtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTbEE9call_once6vtableB1o_ }>, align 8
@1 = private unnamed_addr constant [80 x i8] c"/rustc/0ed41eb4142dda2df61eb1145a312c1a9d62eb56/library/core/src/str/pattern.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"O\00\00\00\00\00\00\00A\06\00\00\14\00\00\00" }>, align 8
@3 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvNtCsigunbJSLHCW_3std2rt10lang_startuE0INtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceuE9call_once6vtableCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd, ptr @_RNCINvNtCsigunbJSLHCW_3std2rt10lang_startuE0CscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd, ptr @_RNCINvNtCsigunbJSLHCW_3std2rt10lang_startuE0CscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd }>, align 8
@4 = private unnamed_addr constant [2 x i8] c"::", align 1
@5 = private unnamed_addr constant [50 x i8] c"iceoryx2-bb/derive-macros/tests-nostd/src/main.rs\00", align 1
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"1\00\00\00\00\00\00\00<\00\00\00\01\00\00\00" }>, align 8
@7 = private unnamed_addr constant [6 x i8] c"\C0\02::\C0\00", align 1
@_RNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd6GLOBAL = internal constant <{}> zeroinitializer, align 1
@_RNvNvXCslCQgxiHprg6_19iceoryx2_bb_testingNtB4_8TestCaseNtCsfYvvZIldtH5_9inventory7Collect8registry8REGISTRY = external local_unnamed_addr global { { { { ptr } } } }
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"O\00\00\00\00\00\00\00|\04\00\00$\00\00\00" }>, align 8

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef i64 @_RINvNtCsigunbJSLHCW_3std2rt10lang_startuECscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd(ptr noundef nonnull %0, i64 noundef %1, ptr noundef %2, i8 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef i64 @_RNvNtCsigunbJSLHCW_3std2rt19lang_start_internal(ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @3, i64 noundef %1, ptr noundef %2, i8 noundef %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.b
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsigunbJSLHCW_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #1 {
bb.a:
  tail call void %0() #18, !inline_history !10
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !11
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCsbqH9stoieM8_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !5, !alias.scope !14, !noundef !6 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %i.f = tail call i64 @llvm.umax.i64(i64 %i.e, i64 %i.b)
  %i.g = tail call i64 @llvm.umax.i64(i64 %i.f, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.h, align 8, !alias.scope !14
  call fastcc void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner11finish_growCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %i.g) #18
  %i.i = load i64, ptr %i.a, align 8, !range !7, !noalias !14, !noundef !6
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.k, align 8, !range !15, !noalias !14, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.n, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.l, %bb.c ]
  tail call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #19
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.k, align 8, !noalias !14, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14
  store ptr %i.o, ptr %i.h, align 8, !alias.scope !14
  %i.p = icmp sgt i64 %i.g, -1
  tail call void @llvm.assume(i1 %i.p)
  store i64 %i.g, ptr %0, align 8, !alias.scope !14
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load i64, ptr %i.e, align 8, !range !9, !alias.scope !31, !noalias !32, !noundef !6
  %i.g = icmp eq i64 %i.f, 2
  br i1 %i.g, label %_RNCNCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0s_0B5_.exit.i.i, label %_RNCNCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0s_0B5_.exit.thread.i.i

_RNCNCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0s_0B5_.exit.thread.i.i: ; preds = %bb.a
  tail call void %i.d() #18, !noalias !33, !inline_history !25
  br label %bb.c

_RNCNCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0s_0B5_.exit.i.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !31, !noalias !32, !noundef !6
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !31, !noalias !32
  call void @_RNvNtCslCQgxiHprg6_19iceoryx2_bb_testing12test_harness12expect_panic(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly captures(address, read_provenance) %i.i, i64 %i.k) #18, !noalias !34
  %.pr.i.i = load i64, ptr %i.a, align 8, !noalias !29 ; 2 uses
  %.not.i.i = icmp eq i64 %.pr.i.i, -2
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RNCNCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0s_0B5_.exit.i.i
  %.sroa.9.8..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.48.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.8..sroa_idx4.i, i64 16, i1 false), !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !29
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.pr.i.i, ptr %i.l, align 8, !alias.scope !26, !noalias !27
  br label %_RNCINvMs_Cs4r84FDkReR_13libtest_mimicNtB7_5Trial14ignorable_testNCINvB4_4testNCNCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0s_0NtNtCsbqH9stoieM8_5alloc6string6StringE0B2j_E0B1j_.exit

bb.c:                                             ; preds = %_RNCNCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0s_0B5_.exit.i.i, %_RNCNCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0s_0B5_.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !29
  br label %_RNCINvMs_Cs4r84FDkReR_13libtest_mimicNtB7_5Trial14ignorable_testNCINvB4_4testNCNCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0s_0NtNtCsbqH9stoieM8_5alloc6string6StringE0B2j_E0B1j_.exit

_RNCINvMs_Cs4r84FDkReR_13libtest_mimicNtB7_5Trial14ignorable_testNCINvB4_4testNCNCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0s_0NtNtCsbqH9stoieM8_5alloc6string6StringE0B2j_E0B1j_.exit: ; preds = %bb.b, %bb.c
  %storemerge.i = phi i64 [ 1, %bb.b ], [ 0, %bb.c ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !26, !noalias !27
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef i32 @_RNSNvYNCINvNtCsigunbJSLHCW_3std2rt10lang_startuE0INtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceuE9call_once6vtableCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd(ptr nofree noundef readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  tail call fastcc void @_RINvNtNtCsigunbJSLHCW_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd(ptr noundef nonnull readonly %i.a) #20, !noalias !37
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
  %i.d = load i64, ptr %i.c, align 8, !range !7, !alias.scope !40, !noundef !6
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %_RINvMNtCs8Chj7Szqq0n_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.c, align 8, !alias.scope !40
  store i64 1, ptr %i.f, align 8, !alias.scope !40
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
  %or.cond = icmp ult i64 %1, 128102389400760776
  br i1 %or.cond, label %bb.b, label %bb.e, !prof !41

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
  br i1 %i.g, label %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator4grow.exit.thread, label %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator4grow.exit.thread10

_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator4grow.exit.thread10: ; preds = %bb.c
  %i.h = mul nuw nsw i64 %.0.val, 72              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull align 1 %.8.val, i64 %i.h, i1 false)
  tail call void @_RNvXs0_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocatorNtB5_13HeapAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator10deallocate(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @_RNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd6GLOBAL, ptr noundef nonnull %.8.val, i64 noundef range(i64 1, -9223372036854775807) 8, i64 noundef %i.h) #18
  br label %bb.d

_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  tail call void @_RNvCsicpYtSlSgpD_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs0_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocatorNtB5_13HeapAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator8allocate(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @_RNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd6GLOBAL, i64 noundef range(i64 1, 9) 8, i64 noundef range(i64 0, -9223372036854775808) %i.c) #18
  %i.i = load ptr, ptr %i.a, align 8, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator4grow.exit.thread, label %bb.d

_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator4grow.exit.thread: ; preds = %bb.c, %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator4grow.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 8, ptr %i.k, align 8
  br label %bb.e

bb.d:                                             ; preds = %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator4grow.exit.thread10, %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator4grow.exit
  %.sroa.0.0.i.i.pn12 = phi ptr [ %i.f, %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator4grow.exit.thread10 ], [ %i.i, %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator4grow.exit ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i.i.pn12, ptr %i.l, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator4grow.exit.thread, %bb.d
  %.sink15 = phi i64 [ 16, %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator4grow.exit.thread ], [ 16, %bb.d ], [ 8, %bb.a ]
  %.sink13 = phi i64 [ %i.c, %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator4grow.exit.thread ], [ %i.c, %bb.d ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator4grow.exit.thread ], [ 0, %bb.d ], [ 1, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %.sink15
  store i64 %.sink13, ptr %i.m, align 8
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
end_hunk_0
begin_hunk_1_@_RNvXs0_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters3mapINtB5_3MapINtNvCsfYvvZIldtH5_9inventory1__4IterNtCslCQgxiHprg6_19iceoryx2_bb_testing8TestCaseENCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0ENtNtNtB9_6traits8iterator8Iterator4nextB2m_:bb.a
  br label %.lr.ph.split.us.i.i.i.us.i

.lr.ph.split.us.i.i.i.us.i:                       ; preds = %.lr.ph.split.us.i.i.i.us.i.preheader, %bb.af
  %i.fv = phi i64 [ %i.gv, %bb.af ], [ %i.fn, %.lr.ph.split.us.i.i.i.us.i.preheader ]
  %i.fw = phi i64 [ %i.gu, %bb.af ], [ %.promoted.i12.i.i.i, %.lr.ph.split.us.i.i.i.us.i.preheader ] ; 7 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.fv
  %i.fy = load i8, ptr %i.fx, align 1, !alias.scope !117, !noalias !121, !noundef !6
  %i.fz = and i8 %i.fy, 63
  %i.ga = zext nneg i8 %i.fz to i64
  %i.gb = shl nuw i64 1, %i.ga
  %i.gc = and i64 %i.gb, %i.fq
  %.not.us.i.i.i.us.i = icmp eq i64 %i.gc, 0
  br i1 %.not.us.i.i.i.us.i, label %bb.ae, label %.preheader35.i.i.i.us.i.preheader

.preheader35.i.i.i.us.i.preheader:                ; preds = %.lr.ph.split.us.i.i.i.us.i
  br i1 %exitcond.not.i17.i.i.us.i109.not, label %.lr.ph111, label %.preheader.i18.us.i.i.us.i.preheader

.preheader35.i.i.i.us.i:                          ; preds = %.lr.ph111
  %i.gd = add i64 %.sroa.04.0.us.i.i.i.us.i110, 1 ; 2 uses
  %exitcond.not.i17.i.i.us.i = icmp eq i64 %i.gd, %umax.i.i.i.i
  br i1 %exitcond.not.i17.i.i.us.i, label %.preheader.i18.us.i.i.us.i.preheader, label %.lr.ph111

.preheader.i18.us.i.i.us.i.preheader:             ; preds = %.preheader35.i.i.i.us.i, %.preheader35.i.i.i.us.i.preheader
  br i1 %.not34.i.us.i.i.us.i112, label %_RINvMNtCs8Chj7Szqq0n_4core3stre4findReECscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd.exit.thread8.i, label %.lr.ph114

.lr.ph111:                                        ; preds = %.preheader35.i.i.i.us.i.preheader, %.preheader35.i.i.i.us.i
  %.sroa.04.0.us.i.i.i.us.i110 = phi i64 [ %i.gd, %.preheader35.i.i.i.us.i ], [ %.fr214.i.i.i, %.preheader35.i.i.i.us.i.preheader ] ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.db, i64 %.sroa.04.0.us.i.i.i.us.i110
  %i.gf = load i8, ptr %i.ge, align 1, !alias.scope !118, !noalias !122, !noundef !6
  %i.gg = add i64 %.sroa.04.0.us.i.i.i.us.i110, %i.fw ; 2 uses
  %i.gh = icmp ult i64 %i.gg, %i.cz
  tail call void @llvm.assume(i1 %i.gh)
  %i.gi = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.gg
  %i.gj = load i8, ptr %i.gi, align 1, !alias.scope !117, !noalias !121, !noundef !6
  %.not21.us.i.i.i.us.i = icmp eq i8 %i.gf, %i.gj
  br i1 %.not21.us.i.i.i.us.i, label %.preheader35.i.i.i.us.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph111
  %.reass281.i.reass.i.us.i = add i64 %i.fw, %reass.sub105.i.i
  %i.gk = add i64 %.reass281.i.reass.i.us.i, %.sroa.04.0.us.i.i.i.us.i110
  br label %bb.af

.preheader.i18.us.i.i.us.i:                       ; preds = %.lr.ph114
  %.not34.i.us.i.i.us.i = icmp eq i64 %i.gl, 0
  br i1 %.not34.i.us.i.i.us.i, label %_RINvMNtCs8Chj7Szqq0n_4core3stre4findReECscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd.exit.thread8.i, label %.lr.ph114

.lr.ph114:                                        ; preds = %.preheader.i18.us.i.i.us.i.preheader, %.preheader.i18.us.i.i.us.i
  %.sroa.2.0.us.i.us.i.i.us.i113 = phi i64 [ %i.gl, %.preheader.i18.us.i.i.us.i ], [ %.fr214.i.i.i, %.preheader.i18.us.i.i.us.i.preheader ]
  %i.gl = add i64 %.sroa.2.0.us.i.us.i.i.us.i113, -1 ; 4 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.gl
  %i.gn = load i8, ptr %i.gm, align 1, !alias.scope !118, !noalias !122, !noundef !6
  %i.go = add i64 %i.gl, %i.fw                    ; 2 uses
  %i.gp = icmp ult i64 %i.go, %i.cz
  tail call void @llvm.assume(i1 %i.gp)
  %i.gq = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.go
  %i.gr = load i8, ptr %i.gq, align 1, !alias.scope !117, !noalias !121, !noundef !6
  %.not20.us.i.us.i.i.us.i = icmp eq i8 %i.gn, %i.gr
  br i1 %.not20.us.i.us.i.i.us.i, label %.preheader.i18.us.i.i.us.i, label %.split.us.i.i.us.i

.split.us.i.i.us.i:                               ; preds = %.lr.ph114
  %i.gs = add i64 %i.fw, %i.ft
  br label %bb.af

bb.ae:                                            ; preds = %.lr.ph.split.us.i.i.i.us.i
  %i.gt = add i64 %i.fw, %i.dd
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.split.us.i.i.us.i, %bb.ad
  %i.gu = phi i64 [ %i.gk, %bb.ad ], [ %i.gt, %bb.ae ], [ %i.gs, %.split.us.i.i.us.i ] ; 2 uses
  %i.gv = add i64 %i.gu, %i.df                    ; 2 uses
  %i.gw = icmp ult i64 %i.gv, %i.cz
  br i1 %i.gw, label %.lr.ph.split.us.i.i.i.us.i, label %_RINvMNtCs8Chj7Szqq0n_4core3stre4findReECscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd.exit.thread.i

.lr.ph.split.us.i.i.i.i:                          ; preds = %.lr.ph.split.us.i.i.i.i.preheader, %bb.ai
  %i.gx = phi i64 [ %i.hp, %bb.ai ], [ %i.fn, %.lr.ph.split.us.i.i.i.i.preheader ]
  %i.gy = phi i64 [ %i.ho, %bb.ai ], [ %.promoted.i12.i.i.i, %.lr.ph.split.us.i.i.i.i.preheader ] ; 4 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.gx
  %i.ha = load i8, ptr %i.gz, align 1, !alias.scope !117, !noalias !121, !noundef !6
  %i.hb = and i8 %i.ha, 63
  %i.hc = zext nneg i8 %i.hb to i64
  %i.hd = shl nuw i64 1, %i.hc
  %i.he = and i64 %i.hd, %i.fq
  %.not.us.i.i.i.i = icmp eq i64 %i.he, 0
  br i1 %.not.us.i.i.i.i, label %bb.ah, label %.preheader35.i.i.i.i.preheader

.preheader35.i.i.i.i.preheader:                   ; preds = %.lr.ph.split.us.i.i.i.i
  br i1 %exitcond.not.i17.i.i.i104.not, label %.lr.ph106, label %.preheader.i18.i.i.i

.preheader35.i.i.i.i:                             ; preds = %.lr.ph106
  %i.hf = add i64 %.sroa.04.0.us.i.i.i.i105, 1    ; 2 uses
  %exitcond.not.i17.i.i.i = icmp eq i64 %i.hf, %umax.i.i.i.i
  br i1 %exitcond.not.i17.i.i.i, label %.preheader.i18.i.i.i, label %.lr.ph106

.lr.ph106:                                        ; preds = %.preheader35.i.i.i.i.preheader, %.preheader35.i.i.i.i
  %.sroa.04.0.us.i.i.i.i105 = phi i64 [ %i.hf, %.preheader35.i.i.i.i ], [ %.fr214.i.i.i, %.preheader35.i.i.i.i.preheader ] ; 4 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.db, i64 %.sroa.04.0.us.i.i.i.i105
  %i.hh = load i8, ptr %i.hg, align 1, !alias.scope !118, !noalias !122, !noundef !6
  %i.hi = add i64 %.sroa.04.0.us.i.i.i.i105, %i.gy ; 2 uses
  %i.hj = icmp ult i64 %i.hi, %i.cz
  tail call void @llvm.assume(i1 %i.hj)
  %i.hk = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.hi
  %i.hl = load i8, ptr %i.hk, align 1, !alias.scope !117, !noalias !121, !noundef !6
  %.not21.us.i.i.i.i = icmp eq i8 %i.hh, %i.hl
  br i1 %.not21.us.i.i.i.i, label %.preheader35.i.i.i.i, label %bb.ag

.preheader.i18.i.i.i:                             ; preds = %.preheader35.i.i.i.i.preheader, %.preheader35.i.i.i.i
  %.not34.i.i.i.i = icmp eq i64 %.fr214.i.i.i, 0
  br i1 %.not34.i.i.i.i, label %_RINvMNtCs8Chj7Szqq0n_4core3stre4findReECscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd.exit.thread8.i, label %.split32.us.i19.i.i.i

.split32.us.i19.i.i.i:                            ; preds = %.preheader.i18.i.i.i
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.fu, i64 noundef range(i64 0, -9223372036854775808) %i.dd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #22, !noalias !123
  unreachable

bb.ag:                                            ; preds = %.lr.ph106
  %.reass281.i.reass.i.i = add i64 %i.gy, %reass.sub105.i.i
  %i.hm = add i64 %.reass281.i.reass.i.i, %.sroa.04.0.us.i.i.i.i105
  br label %bb.ai

bb.ah:                                            ; preds = %.lr.ph.split.us.i.i.i.i
  %i.hn = add i64 %i.gy, %i.dd
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.ho = phi i64 [ %i.hm, %bb.ag ], [ %i.hn, %bb.ah ] ; 2 uses
  %i.hp = add i64 %i.ho, %i.df                    ; 2 uses
  %i.hq = icmp ult i64 %i.hp, %i.cz
  br i1 %i.hq, label %.lr.ph.split.us.i.i.i.i, label %_RINvMNtCs8Chj7Szqq0n_4core3stre4findReECscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd.exit.thread.i

_RINvMNtCs8Chj7Szqq0n_4core3stre4findReECscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd.exit.thread.i: ; preds = %bb.x, %bb.ai, %bb.af, %bb.t, %bb.ac, %bb.u, %bb.s, %bb.p, %.preheader.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !97
  br label %.thread.i

_RINvMNtCs8Chj7Szqq0n_4core3stre4findReECscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd.exit.thread8.i: ; preds = %.preheader36.i.i.i.i.preheader, %.preheader36.i.i.i.i, %.preheader.i18.us.i.i.us.i.preheader, %.preheader.i18.us.i.i.us.i, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd.exit12.i.i.us.i.i.i, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd.exit14.i.i.us.i.i.i, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd.exit16.i.i.us.i.i.i, %bb.o, %.preheader.i18.i.i.i, %.loopexit42.i.i.i, %bb.n, %bb.h
  %.ph.i = phi i64 [ %i.dw, %.loopexit42.i.i.i ], [ %i.eg, %.preheader36.i.i.i.i ], [ %i.gy, %.preheader.i18.i.i.i ], [ %i.x, %bb.n ], [ %.promoted156.i.i.i, %bb.h ], [ %i.bw, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd.exit12.i.i.us.i.i.i ], [ %i.bw, %bb.o ], [ %i.bw, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd.exit16.i.i.us.i.i.i ], [ %i.bw, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd.exit14.i.i.us.i.i.i ], [ %i.fw, %.preheader.i18.us.i.i.us.i.preheader ], [ %i.fw, %.preheader.i18.us.i.i.us.i ], [ %i.eg, %.preheader36.i.i.i.i.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !97
  br label %bb.aj

_RINvMNtCs8Chj7Szqq0n_4core3stre4findReECscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !97
  br i1 %i.aa, label %bb.aj, label %.thread.i

bb.aj:                                            ; preds = %_RINvMNtCs8Chj7Szqq0n_4core3stre4findReECscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd.exit.i, %_RINvMNtCs8Chj7Szqq0n_4core3stre4findReECscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd.exit.thread8.i
  %i.hr = phi i64 [ %.ph.i, %_RINvMNtCs8Chj7Szqq0n_4core3stre4findReECscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd.exit.thread8.i ], [ %i.x, %_RINvMNtCs8Chj7Szqq0n_4core3stre4findReECscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd.exit.i ]
  %i.hs = add i64 %i.hr, 2                        ; 8 uses
  %i.ht = icmp eq i64 %i.hs, 0
  br i1 %i.ht, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.not.i.i = icmp ult i64 %i.hs, %i.p
  br i1 %.not.i.i, label %bb.al, label %.split.i.i

.split.i.i:                                       ; preds = %bb.ak
  %i.hu = icmp eq i64 %i.hs, %i.p
  br i1 %i.hu, label %bb.an, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.hv = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.hs
  %i.hw = load i8, ptr %i.hv, align 1, !alias.scope !124, !noalias !96, !noundef !6
  %i.hx = icmp sgt i8 %i.hw, -65
  br i1 %i.hx, label %bb.an, label %bb.am

.thread.i:                                        ; preds = %_RINvMNtCs8Chj7Szqq0n_4core3stre4findReECscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd.exit.i, %_RINvMNtCs8Chj7Szqq0n_4core3stre4findReECscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd.exit.thread.i
  store ptr inttoptr (i64 1 to ptr), ptr %i.f, align 8, !noalias !96, !captures !125
  %i.hy = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 0, ptr %i.hy, align 8, !noalias !96
  br label %bb.ao

bb.am:                                            ; preds = %bb.al, %.split.i.i
  tail call void @_RNvNtCs8Chj7Szqq0n_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef %i.p, i64 noundef %i.hs, i64 noundef %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #22, !noalias !96
  unreachable

bb.an:                                            ; preds = %bb.al, %.split.i.i, %bb.aj
  %i.hz = sub nuw i64 %i.p, %i.hs
  %i.ia = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.hs
  store ptr %i.ia, ptr %i.f, align 8, !noalias !96, !captures !125
  %i.ib = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.hz, ptr %i.ib, align 8, !noalias !96
  %i.ic = icmp eq i64 %i.p, %i.hs
  br i1 %i.ic, label %bb.ao, label %.split.i

.split.i:                                         ; preds = %bb.an
  %i.id = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !96
  store ptr %i.f, ptr %i.d, align 8, !noalias !96
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd, ptr %.sroa.412.0..sroa_idx.i, align 8, !noalias !96
  %i.ie = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.id, ptr %i.ie, align 8, !noalias !96
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !96
  call void @_RNvNvNtCsbqH9stoieM8_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @7, ptr noundef nonnull %i.d) #18, !noalias !95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !96
  br label %bb.aq

bb.ao:                                            ; preds = %bb.an, %.thread.i
  %i.if = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.ig = load ptr, ptr %i.if, align 8, !alias.scope !94, !noalias !95, !nonnull !6, !noundef !6
  %i.ih = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.ii = load i64, ptr %i.ih, align 8, !alias.scope !94, !noalias !95, !noundef !6 ; 7 uses
  %.not.i26.i = icmp slt i64 %i.ii, 0
  br i1 %.not.i26.i, label %bb.as, label %bb.ap, !prof !126

bb.ap:                                            ; preds = %bb.ao
  %i.ij = icmp eq i64 %i.ii, 0
  br i1 %i.ij, label %_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd.exit.thread18.i, label %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.ap
  tail call void @_RNvCsicpYtSlSgpD_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !127
  call void @_RNvXs0_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocatorNtB5_13HeapAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator8allocate(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @_RNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd6GLOBAL, i64 noundef range(i64 1, 9) 1, i64 noundef range(i64 0, -9223372036854775808) %i.ii) #18, !noalias !127
  %i.ik = load ptr, ptr %i.b, align 8, !noalias !127, !noundef !6 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !127
  %i.il = icmp eq ptr %i.ik, null
  br i1 %i.il, label %bb.as, label %bb.at

bb.aq:                                            ; preds = %_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd.exit.thread18.i, %.split.i
  call void @_RNvCsicpYtSlSgpD_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !129
  call void @_RNvXs0_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocatorNtB5_13HeapAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator8allocate(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @_RNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd6GLOBAL, i64 noundef range(i64 1, -9223372036854775807) 8, i64 noundef 16) #18, !noalias !128
  %i.im = load ptr, ptr %i.a, align 8, !noalias !129, !noundef !6 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !129
  %i.in = icmp eq ptr %i.im, null
  br i1 %i.in, label %bb.ar, label %_RNCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0B3_.exit, !prof !130

bb.ar:                                            ; preds = %bb.aq
  call void @_RNvNtCsbqH9stoieM8_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #19, !noalias !128
  unreachable

bb.as:                                            ; preds = %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator8allocate.exit.i.i, %bb.ao
  %.sroa.44.0.ph.i = phi i64 [ 1, %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %bb.ao ]
  tail call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %.sroa.44.0.ph.i, i64 %i.ii) #19, !noalias !96
  unreachable

_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd.exit.thread18.i: ; preds = %bb.at, %bb.ap
  %i.io = phi ptr [ %i.ik, %bb.at ], [ inttoptr (i64 1 to ptr), %bb.ap ]
  store i64 %i.ii, ptr %i.e, align 8, !noalias !96
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.io, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !96
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.ii, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !96
  br label %bb.aq

bb.at:                                            ; preds = %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator8allocate.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ik, ptr nonnull align 1 %i.ig, i64 %i.ii, i1 false), !noalias !96
  br label %_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd.exit.thread18.i

_RNCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0B3_.exit: ; preds = %bb.aq
  store ptr %i.h, ptr %i.im, align 8, !noalias !128
  %i.ip = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  store ptr %i.l, ptr %i.ip, align 8, !noalias !131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.iq = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ir = load i64, ptr %i.iq, align 8, !range !9, !alias.scope !94, !noalias !95, !noundef !6
  %i.is = icmp eq i64 %i.ir, 1
  %i.it = zext i1 %i.is to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !96
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %i.it, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 49
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 1
  %.sroa.92.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.im, ptr %.sroa.92.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr @0, ptr %.sroa.10.0..sroa_idx, align 8
  br label %bb.av

bb.au:                                            ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %_RNCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0B3_.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !6
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCs8Chj7Szqq0n_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #18
  ret i1 %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i64 @_RNvNtCsigunbJSLHCW_3std2rt19lang_start_internal(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), i64 noundef, ptr noundef, i8 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #13

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtCslCQgxiHprg6_19iceoryx2_bb_testing12test_harness12expect_panic(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noalias nofree noundef readonly captures(address, read_provenance), i64) unnamed_addr #0

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCs8Chj7Szqq0n_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #14

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNvNtCsbqH9stoieM8_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMNtCs4r84FDkReR_13libtest_mimic4argsNtB2_9Arguments9from_args(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(address) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs4r84FDkReR_13libtest_mimic3run(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: noreturn nounwind nonlazybind uwtable
declare void @_RNvMs4_Cs4r84FDkReR_13libtest_mimicNtB5_10Conclusion4exit(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsicpYtSlSgpD_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #0

; Function Attrs: cold minsize noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsbqH9stoieM8_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #13

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCs8Chj7Szqq0n_4core5slice6memchr14memchr_aligned(i8 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCs8Chj7Szqq0n_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXs0_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocatorNtB5_13HeapAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator8allocate(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXs0_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocatorNtB5_13HeapAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator10deallocate(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noundef nonnull, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMsu_NtNtCs8Chj7Szqq0n_4core3str7patternNtB5_11StrSearcher3new(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nounwind nonlazybind
define noundef i32 @main(i32 %0, ptr %1) unnamed_addr #16 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = sext i32 %0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @_RNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main, ptr %i.a, align 8
  %i.c = call noundef i64 @_RNvNtCsigunbJSLHCW_3std2rt19lang_start_internal(ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @3, i64 noundef %i.b, ptr noundef %1, i8 noundef 0) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = trunc i64 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

attributes #0 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold minsize noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { noinline nounwind }
attributes #21 = { inlinehint nounwind }
attributes #22 = { noinline noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"rustc version 1.100.0-nightly (0ed41eb41 2026-09-04)"}
!5 = !{i64 0, i64 -9223372036854775808}
!6 = !{}
!7 = !{i64 0, i64 2}
!8 = !{i64 8}
!9 = !{i64 0, i64 3}
!10 = distinct !{null}
!11 = !{i64 7872584861087728}
!12 = distinct !{!12, !"_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd"}
!13 = distinct !{!13, !12, !"_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd: argument 0"}
!14 = !{!13}
!15 = !{i64 0, i64 -9223372036854775807}
!16 = distinct !{!16, !"_RNCINvMs_Cs4r84FDkReR_13libtest_mimicNtB7_5Trial14ignorable_testNCINvB4_4testNCNCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0s_0NtNtCsbqH9stoieM8_5alloc6string6StringE0B2j_E0B1j_"}
!17 = distinct !{!17, !16, !"_RNCINvMs_Cs4r84FDkReR_13libtest_mimicNtB7_5Trial14ignorable_testNCINvB4_4testNCNCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0s_0NtNtCsbqH9stoieM8_5alloc6string6StringE0B2j_E0B1j_: argument 0"}
!18 = distinct !{!18, !16, !"_RNCINvMs_Cs4r84FDkReR_13libtest_mimicNtB7_5Trial14ignorable_testNCINvB4_4testNCNCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0s_0NtNtCsbqH9stoieM8_5alloc6string6StringE0B2j_E0B1j_: argument 1"}
!19 = distinct !{!19, !"_RNCINvMs_Cs4r84FDkReR_13libtest_mimicNtB7_5Trial4testNCNCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0s_0NtNtCsbqH9stoieM8_5alloc6string6StringE0BV_"}
!20 = distinct !{!20, !19, !"_RNCINvMs_Cs4r84FDkReR_13libtest_mimicNtB7_5Trial4testNCNCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0s_0NtNtCsbqH9stoieM8_5alloc6string6StringE0BV_: argument 1"}
!21 = distinct !{!21, !19, !"_RNCINvMs_Cs4r84FDkReR_13libtest_mimicNtB7_5Trial4testNCNCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0s_0NtNtCsbqH9stoieM8_5alloc6string6StringE0BV_: argument 0"}
!22 = distinct !{!22, !"_RNCNCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0s_0B5_"}
!23 = distinct !{!23, !22, !"_RNCNCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0s_0B5_: argument 1"}
!24 = distinct !{!24, !22, !"_RNCNCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0s_0B5_: argument 0"}
!25 = distinct !{null, null, null}
!26 = !{!17}
!27 = !{!18}
!28 = !{!20}
!29 = !{!21, !20, !17, !18}
!30 = !{!23}
!31 = !{!23, !20, !18}
!32 = !{!24, !21, !17}
!33 = !{!24, !23, !21, !20, !17, !18}
!34 = !{!23, !21, !20, !17, !18}
!35 = distinct !{!35, !"_RNCINvNtCsigunbJSLHCW_3std2rt10lang_startuE0CscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd"}
!36 = distinct !{!36, !35, !"_RNCINvNtCsigunbJSLHCW_3std2rt10lang_startuE0CscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd: argument 0"}
!37 = !{!36}
!38 = distinct !{!38, !"_RINvMNtCs8Chj7Szqq0n_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd"}
!39 = distinct !{!39, !38, !"_RINvMNtCs8Chj7Szqq0n_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd: argument 0"}
!40 = !{!39}
!41 = !{!"branch_weights", i32 2000, i32 2002}
!42 = distinct !{!42, !"_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd"}
!43 = distinct !{!43, !42, !"_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd: argument 0"}
!44 = distinct !{!44, !"_RNvXNtNtCsbqH9stoieM8_5alloc3vec11spec_extendINtB4_3VecNtCs4r84FDkReR_13libtest_mimic5TrialEINtB2_10SpecExtendBR_INtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map3MapINtNvCsfYvvZIldtH5_9inventory1__4IterNtCslCQgxiHprg6_19iceoryx2_bb_testing8TestCaseENCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0EE11spec_extendB41_"}
!45 = distinct !{!45, !44, !"_RNvXNtNtCsbqH9stoieM8_5alloc3vec11spec_extendINtB4_3VecNtCs4r84FDkReR_13libtest_mimic5TrialEINtB2_10SpecExtendBR_INtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map3MapINtNvCsfYvvZIldtH5_9inventory1__4IterNtCslCQgxiHprg6_19iceoryx2_bb_testing8TestCaseENCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0EE11spec_extendB41_: argument 0"}
!46 = distinct !{!46, !"_RINvMsk_NtCsbqH9stoieM8_5alloc3vecINtB6_3VecNtCs4r84FDkReR_13libtest_mimic5TrialE16extend_desugaredINtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map3MapINtNvCsfYvvZIldtH5_9inventory1__4IterNtCslCQgxiHprg6_19iceoryx2_bb_testing8TestCaseENCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0EEB3N_"}
!47 = distinct !{!47, !46, !"_RINvMsk_NtCsbqH9stoieM8_5alloc3vecINtB6_3VecNtCs4r84FDkReR_13libtest_mimic5TrialE16extend_desugaredINtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map3MapINtNvCsfYvvZIldtH5_9inventory1__4IterNtCslCQgxiHprg6_19iceoryx2_bb_testing8TestCaseENCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0EEB3N_: argument 0"}
!48 = !{i64 -1, i64 -9223372036854775808}
!49 = !{!43}
!50 = !{!45}
!51 = !{!47}
!52 = !{!47, !45}
!53 = distinct !{!53, !"_RNvXs0_NvCsfYvvZIldtH5_9inventory1__INtB5_4IterNtCslCQgxiHprg6_19iceoryx2_bb_testing8TestCaseENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd"}
!54 = distinct !{!54, !53, !"_RNvXs0_NvCsfYvvZIldtH5_9inventory1__INtB5_4IterNtCslCQgxiHprg6_19iceoryx2_bb_testing8TestCaseENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd: argument 0"}
!55 = distinct !{!55, !"_RNCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0B3_"}
!56 = distinct !{!56, !55, !"_RNCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0B3_: argument 1"}
!57 = distinct !{!57, !55, !"_RNCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0B3_: argument 0"}
!58 = distinct !{!58, !"_RINvMNtCs8Chj7Szqq0n_4core3stre4findReECscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd"}
!59 = distinct !{!59, !58, !"_RINvMNtCs8Chj7Szqq0n_4core3stre4findReECscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd: argument 0"}
!60 = distinct !{!60, !"_RNvXsv_NtNtCs8Chj7Szqq0n_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match"}
!61 = distinct !{!61, !60, !"_RNvXsv_NtNtCs8Chj7Szqq0n_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match: argument 1"}
!62 = distinct !{!62, !60, !"_RNvXsv_NtNtCs8Chj7Szqq0n_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match: argument 0"}
!63 = distinct !{!63, !"_RNvXs9_NtNtCs8Chj7Szqq0n_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!64 = distinct !{!64, !63, !"_RNvXs9_NtNtCs8Chj7Szqq0n_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!65 = distinct !{!65, !"_RNvXsv_NtNtCs8Chj7Szqq0n_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!66 = distinct !{!66, !65, !"_RNvXsv_NtNtCs8Chj7Szqq0n_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1:Peel0"}
!67 = distinct !{!67, !65, !"_RNvXsv_NtNtCs8Chj7Szqq0n_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 0"}
!68 = distinct !{!68, !"_RINvNtNtCs8Chj7Szqq0n_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd"}
!69 = distinct !{!69, !68, !"_RINvNtNtCs8Chj7Szqq0n_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd: argument 0"}
!70 = distinct !{!70, !65, !"_RNvXsv_NtNtCs8Chj7Szqq0n_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1"}
!71 = distinct !{!71, !"_RNvNtNtCs8Chj7Szqq0n_4core5slice6memchr6memchr"}
!72 = distinct !{!72, !71, !"_RNvNtNtCs8Chj7Szqq0n_4core5slice6memchr6memchr: argument 0"}
!73 = distinct !{!73, !"_RINvMsx_NtNtCs8Chj7Szqq0n_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd"}
!74 = distinct !{!74, !73, !"_RINvMsx_NtNtCs8Chj7Szqq0n_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd: argument 1"}
!75 = distinct !{!75, !73, !"_RINvMsx_NtNtCs8Chj7Szqq0n_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd: argument 2"}
!76 = distinct !{!76, !73, !"_RINvMsx_NtNtCs8Chj7Szqq0n_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd: argument 3"}
!77 = distinct !{!77, !73, !"_RINvMsx_NtNtCs8Chj7Szqq0n_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd: argument 0"}
!78 = distinct !{!78, !"_RINvMsx_NtNtCs8Chj7Szqq0n_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd"}
!79 = distinct !{!79, !78, !"_RINvMsx_NtNtCs8Chj7Szqq0n_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd: argument 1"}
!80 = distinct !{!80, !78, !"_RINvMsx_NtNtCs8Chj7Szqq0n_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd: argument 2"}
!81 = distinct !{!81, !78, !"_RINvMsx_NtNtCs8Chj7Szqq0n_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd: argument 3"}
!82 = distinct !{!82, !78, !"_RINvMsx_NtNtCs8Chj7Szqq0n_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd: argument 0"}
!83 = distinct !{!83, !"_RNvXs9_NtNtCs8Chj7Szqq0n_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!84 = distinct !{!84, !83, !"_RNvXs9_NtNtCs8Chj7Szqq0n_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!85 = distinct !{!85, !"_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd"}
!86 = distinct !{!86, !85, !"_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd: argument 0"}
!87 = distinct !{!87, !"_RINvMs_Cs4r84FDkReR_13libtest_mimicNtB5_5Trial14ignorable_testNCINvB2_4testNCNCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0s_0NtNtCsbqH9stoieM8_5alloc6string6StringE0B2h_EB1h_"}
!88 = distinct !{!88, !87, !"_RINvMs_Cs4r84FDkReR_13libtest_mimicNtB5_5Trial14ignorable_testNCINvB2_4testNCNCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0s_0NtNtCsbqH9stoieM8_5alloc6string6StringE0B2h_EB1h_: argument 2"}
!89 = distinct !{!89, !87, !"_RINvMs_Cs4r84FDkReR_13libtest_mimicNtB5_5Trial14ignorable_testNCINvB2_4testNCNCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0s_0NtNtCsbqH9stoieM8_5alloc6string6StringE0B2h_EB1h_: argument 1"}
!90 = distinct !{!90, !87, !"_RINvMs_Cs4r84FDkReR_13libtest_mimicNtB5_5Trial14ignorable_testNCINvB2_4testNCNCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0s_0NtNtCsbqH9stoieM8_5alloc6string6StringE0B2h_EB1h_: argument 0"}
!91 = distinct !{!91, !"_RNvMNtCsbqH9stoieM8_5alloc5boxedINtB2_3BoxNCINvMs_Cs4r84FDkReR_13libtest_mimicNtBM_5Trial14ignorable_testNCINvBJ_4testNCNCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0s_0NtNtB4_6string6StringE0B2Y_E0E3newB1Y_"}
!92 = distinct !{!92, !91, !"_RNvMNtCsbqH9stoieM8_5alloc5boxedINtB2_3BoxNCINvMs_Cs4r84FDkReR_13libtest_mimicNtBM_5Trial14ignorable_testNCINvBJ_4testNCNCNvCscMwKQt1urZC_37iceoryx2_bb_derive_macros_tests_nostd4main0s_0NtNtB4_6string6StringE0B2Y_E0E3newB1Y_: argument 0"}
!93 = !{!54}
!94 = !{!56}
!95 = !{!57}
!96 = !{!57, !56}
!97 = !{!59, !57, !56}
!98 = !{!61}
!99 = !{!62, !59, !57, !56}
!100 = !{i8 0, i8 2}
!101 = !{!64}
!102 = !{!67, !66, !62, !61, !57, !56}
!103 = !{!69, !67, !66, !62, !61, !57, !56}
!104 = !{!67, !70, !62, !61, !57, !56}
!105 = !{!69, !67, !70, !62, !61, !57, !56}
!106 = !{!62, !61, !57, !56}
!107 = !{!72}
!108 = !{!74}
!109 = !{!75}
!110 = !{!76}
!111 = !{!74, !61}
!112 = !{!77, !75, !76, !62, !59, !57, !56}
!113 = !{!77, !74, !76, !62, !61, !57, !56}
!114 = !{!77, !74, !75, !62, !61, !57, !56}
!115 = !{!77, !74, !75, !76, !62, !61, !57, !56}
!116 = !{!79}
!117 = !{!80}
!118 = !{!81}
!119 = !{!79, !61}
!120 = !{!82, !80, !81, !62, !59, !57, !56}
!121 = !{!82, !79, !81, !62, !61, !57, !56}
!122 = !{!82, !79, !80, !62, !61, !57, !56}
!123 = !{!82, !79, !80, !81, !62, !61, !57, !56}
!124 = !{!84}
!125 = !{!"address", !"read_provenance"}
!126 = !{!"branch_weights", i32 2002, i32 2000}
!127 = !{!86, !57, !56}
!128 = !{!92, !90, !89, !88, !57}
!129 = !{!92, !90, !89, !88, !57, !56}
!130 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!131 = !{!90, !89, !57}
end_hunk_1

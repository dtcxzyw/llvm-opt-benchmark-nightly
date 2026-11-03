Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_conformance_tests_common-f849a92dbd610037.iceoryx2_conformance_tests_common.375569554446ae94-cgu.03?download=true
inline.NumInlined: 5961
inline.NumDeleted: 1943
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvXNvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtB2_11TinyClosureINtNtNtNtB6_13shared_memory6common7details16AllocatorDetailsNtNtNtB6_13shm_allocator14pool_allocator13PoolAllocatorEKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common:bb.a
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void %i.e(ptr noundef nonnull %.val) #28, !inline_history !13459
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !11, !invariant.load !8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc5boxed3BoxDG0_INtNtNtB4_3ops8function5FnMutTQL1_INtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7details16AllocatorDetailsNtNtNtB1V_13shm_allocator14pool_allocator13PoolAllocatorEQL0_NtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorEEp6OutputbEL_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, label %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !23, !invariant.load !8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 0, -9223372036317904881) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #24
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc5boxed3BoxDG0_INtNtNtB4_3ops8function5FnMutTQL1_INtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7details16AllocatorDetailsNtNtNtB1V_13shm_allocator14pool_allocator13PoolAllocatorEQL0_NtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorEEp6OutputbEL_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc5boxed3BoxDG0_INtNtNtB4_3ops8function5FnMutTQL1_INtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7details16AllocatorDetailsNtNtNtB1V_13shm_allocator14pool_allocator13PoolAllocatorEQL0_NtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorEEp6OutputbEL_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator10deallocate.exit.i.i, %bb.e, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXNvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtB2_11TinyClosureNtNtNtCsg6ZEkMtNi4J_8iceoryx24node25global_management_segment5StateKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef align 16 dereferenceable(48) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 16, !align !22, !noundef !8 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !8, !noundef !8
  tail call void %i.c(ptr noundef nonnull %0) #24
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc5boxed3BoxDG0_INtNtNtB4_3ops8function5FnMutTQL1_NtNtNtCsg6ZEkMtNi4J_8iceoryx24node25global_management_segment5StateQL0_NtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorEEp6OutputbEL_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 16              ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !8, !align !22, !noundef !8 ; 3 uses
  %i.e = load ptr, ptr %.val1, align 8, !invariant.load !8 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void %i.e(ptr noundef nonnull %.val) #28, !inline_history !13460
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !11, !invariant.load !8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc5boxed3BoxDG0_INtNtNtB4_3ops8function5FnMutTQL1_NtNtNtCsg6ZEkMtNi4J_8iceoryx24node25global_management_segment5StateQL0_NtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorEEp6OutputbEL_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, label %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !23, !invariant.load !8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 0, -9223372036317904881) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #24
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc5boxed3BoxDG0_INtNtNtB4_3ops8function5FnMutTQL1_NtNtNtCsg6ZEkMtNi4J_8iceoryx24node25global_management_segment5StateQL0_NtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorEEp6OutputbEL_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc5boxed3BoxDG0_INtNtNtB4_3ops8function5FnMutTQL1_NtNtNtCsg6ZEkMtNi4J_8iceoryx24node25global_management_segment5StateQL0_NtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorEEp6OutputbEL_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator10deallocate.exit.i.i, %bb.e, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXNvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtB2_11TinyClosureNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config13DynamicConfigKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef align 16 dereferenceable(48) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 16, !align !22, !noundef !8 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !8, !noundef !8
  tail call void %i.c(ptr noundef nonnull %0) #24
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc5boxed3BoxDG0_INtNtNtB4_3ops8function5FnMutTQL1_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config13DynamicConfigQL0_NtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorEEp6OutputbEL_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 16              ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !8, !align !22, !noundef !8 ; 3 uses
  %i.e = load ptr, ptr %.val1, align 8, !invariant.load !8 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void %i.e(ptr noundef nonnull %.val) #28, !inline_history !13461
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !11, !invariant.load !8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc5boxed3BoxDG0_INtNtNtB4_3ops8function5FnMutTQL1_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config13DynamicConfigQL0_NtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorEEp6OutputbEL_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, label %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !23, !invariant.load !8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 0, -9223372036317904881) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #24
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc5boxed3BoxDG0_INtNtNtB4_3ops8function5FnMutTQL1_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config13DynamicConfigQL0_NtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorEEp6OutputbEL_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc5boxed3BoxDG0_INtNtNtB4_3ops8function5FnMutTQL1_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config13DynamicConfigQL0_NtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorEEp6OutputbEL_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator10deallocate.exit.i.i, %bb.e, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXNvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtB2_11TinyClosureNtNtNtNtB6_20zero_copy_connection6common7details20SharedManagementDataKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef align 16 dereferenceable(48) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 16, !align !22, !noundef !8 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !8, !noundef !8
  tail call void %i.c(ptr noundef nonnull %0) #24
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc5boxed3BoxDG0_INtNtNtB4_3ops8function5FnMutTQL1_NtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details20SharedManagementDataQL0_NtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorEEp6OutputbEL_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 16              ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !8, !align !22, !noundef !8 ; 3 uses
  %i.e = load ptr, ptr %.val1, align 8, !invariant.load !8 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void %i.e(ptr noundef nonnull %.val) #28, !inline_history !13462
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !11, !invariant.load !8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc5boxed3BoxDG0_INtNtNtB4_3ops8function5FnMutTQL1_NtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details20SharedManagementDataQL0_NtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorEEp6OutputbEL_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, label %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !23, !invariant.load !8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 0, -9223372036317904881) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #24
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc5boxed3BoxDG0_INtNtNtB4_3ops8function5FnMutTQL1_NtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details20SharedManagementDataQL0_NtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorEEp6OutputbEL_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc5boxed3BoxDG0_INtNtNtB4_3ops8function5FnMutTQL1_NtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details20SharedManagementDataQL0_NtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorEEp6OutputbEL_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator10deallocate.exit.i.i, %bb.e, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXNvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtB2_11TinyClosureNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder10blackboard4MgmtKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef align 16 dereferenceable(48) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 16, !align !22, !noundef !8 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !8, !noundef !8
  tail call void %i.c(ptr noundef nonnull %0) #24
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc5boxed3BoxDG0_INtNtNtB4_3ops8function5FnMutTQL1_NtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder10blackboard4MgmtQL0_NtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorEEp6OutputbEL_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 16              ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !8, !align !22, !noundef !8 ; 3 uses
  %i.e = load ptr, ptr %.val1, align 8, !invariant.load !8 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void %i.e(ptr noundef nonnull %.val) #28, !inline_history !13463
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !11, !invariant.load !8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc5boxed3BoxDG0_INtNtNtB4_3ops8function5FnMutTQL1_NtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder10blackboard4MgmtQL0_NtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorEEp6OutputbEL_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, label %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !23, !invariant.load !8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 0, -9223372036317904881) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #24
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc5boxed3BoxDG0_INtNtNtB4_3ops8function5FnMutTQL1_NtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder10blackboard4MgmtQL0_NtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorEEp6OutputbEL_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc5boxed3BoxDG0_INtNtNtB4_3ops8function5FnMutTQL1_NtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder10blackboard4MgmtQL0_NtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorEEp6OutputbEL_EECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator10deallocate.exit.i.i, %bb.e, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector10static_vecINtB5_9StaticVecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread6ThreadKj80_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef align 8 dereferenceable(4104) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4096 ; 2 uses
  %.val.i = load i64, ptr %i.a, align 8, !alias.scope !13468, !noundef !8 ; 4 uses
  %.not5.i = icmp eq i64 %.val.i, 0
  br i1 %.not5.i, label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector10static_vec9StaticVecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread6ThreadKj80_EINtB7_6VectorB1d_E5clearCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %.first_iter.i = icmp ult i64 %.val.i, 129
  br i1 %.first_iter.i, label %.lr.ph.i.us, label %.lr.ph.i

.lr.ph.i.us:                                      ; preds = %.lr.ph.preheader.i, %.lr.ph.i.us
  %.sroa.0.06.i.us = phi i64 [ %i.b, %.lr.ph.i.us ], [ %.val.i, %.lr.ph.preheader.i ]
  %i.b = add i64 %.sroa.0.06.i.us, -1             ; 3 uses
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.b
  tail call void @_RNvXs5_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB5_6ThreadNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c) #24
  %.not.i.us = icmp eq i64 %i.b, 0
  br i1 %.not.i.us, label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector10static_vec9StaticVecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread6ThreadKj80_EINtB7_6VectorB1d_E5clearCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, label %.lr.ph.i.us

.lr.ph.i:                                         ; preds = %.lr.ph.preheader.i
  %i.d = add i64 %.val.i, -1
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.d, i64 noundef 128, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1025) #27
  unreachable

_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector10static_vec9StaticVecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread6ThreadKj80_EINtB7_6VectorB1d_E5clearCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %.lr.ph.i.us, %bb.a
  store i64 0, ptr %i.a, align 8, !alias.scope !13469
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector10static_vecINtB5_9StaticVecNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeKj8_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef align 8 captures(none) dereferenceable(2824) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13474)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2816 ; 2 uses
  %.val.i = load i64, ptr %i.a, align 8, !alias.scope !13474, !noundef !8 ; 2 uses
  %.first_iter.i = icmp ult i64 %.val.i, 9
  br i1 %.first_iter.i, label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector10static_vec9StaticVecNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeKj8_EINtB7_6VectorB1d_E5clearCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, label %.split

.split:                                           ; preds = %bb.a
  %i.b = add i64 %.val.i, -1
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.b, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1025) #27, !noalias !13474
  unreachable

_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector10static_vec9StaticVecNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeKj8_EINtB7_6VectorB1d_E5clearCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !alias.scope !13475
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector10static_vecINtB5_9StaticVecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute3key11FixedStringKj8_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef align 8 captures(none) dereferenceable(648) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13480)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %.val.i = load i64, ptr %i.a, align 8, !alias.scope !13480, !noundef !8 ; 2 uses
  %.first_iter.i = icmp ult i64 %.val.i, 9
  br i1 %.first_iter.i, label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector10static_vec9StaticVecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute3key11FixedStringKj8_EINtB7_6VectorB1d_E5clearCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, label %.split

.split:                                           ; preds = %bb.a
  %i.b = add i64 %.val.i, -1
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.b, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1025) #27, !noalias !13480
  unreachable

_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector10static_vec9StaticVecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute3key11FixedStringKj8_EINtB7_6VectorB1d_E5clearCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !alias.scope !13481
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs10_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder10blackboardINtB6_6OpenerxNtNtBa_14ipc_threadsafe7ServiceENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(5384) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @496, i64 noundef 6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @497, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @495) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs10_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder10blackboardINtB6_6OpenerxNtNtBa_16local_threadsafe7ServiceENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(5384) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @496, i64 noundef 6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @497, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @498) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs10_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder10blackboardINtB6_6OpenerxNtNtBa_3ipc7ServiceENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(5384) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @496, i64 noundef 6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @497, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @499) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs10_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder10blackboardINtB6_6OpenerxNtNtBa_5local7ServiceENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(5384) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @496, i64 noundef 6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @497, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @500) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs10_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder10blackboardINtB6_6OpeneryNtNtBa_14ipc_threadsafe7ServiceENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(5384) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @496, i64 noundef 6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @497, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @501) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs10_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder10blackboardINtB6_6OpeneryNtNtBa_16local_threadsafe7ServiceENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(5384) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @496, i64 noundef 6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @497, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @502) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs10_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder10blackboardINtB6_6OpeneryNtNtBa_3ipc7ServiceENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(5384) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @496, i64 noundef 6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @497, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @503) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs10_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder10blackboardINtB6_6OpeneryNtNtBa_5local7ServiceENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(5384) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @496, i64 noundef 6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @497, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @504) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs14_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexNtB6_9MutexTypeNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
switch.lookup:
  %i.a = load i32, ptr %0, align 4, !range !15, !noundef !8 ; 2 uses
  %i.b = zext nneg i32 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs14_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexNtB6_9MutexTypeNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i32 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs14_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexNtB6_9MutexTypeNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt.393, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext) #24
  ret i1 %i.d
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1J_NtCsg6ZEkMtNi4J_8iceoryx211identifiersNtB6_15UniqueServiceIdNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @545, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @544) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container15semantic_stringNtB5_19SemanticStringErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !14, !noundef !8
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 20, i64 14
  %.1 = select i1 %i.b, ptr @547, ptr @546
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.1, i64 noundef %.) #24
  ret i1 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvXs1_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribeINtB5_11PortFactoryNtNtB9_14ipc_threadsafe7ServiceyuENtB7_11PortFactory14dynamic_configCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = tail call noundef nonnull align 8 ptr @_RNvXsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memoryINtB5_7StorageNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config13DynamicConfigEINtB7_14DynamicStorageB1r_E3getCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noundef nonnull align 8 %i.b) #24
  %i.d = tail call noundef nonnull align 8 ptr @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_configNtB5_13DynamicConfig17publish_subscribe(ptr noundef nonnull align 8 %i.c) #24
  ret ptr %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvXs1_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribeINtB5_11PortFactoryNtNtB9_16local_threadsafe7ServiceyuENtB7_11PortFactory14dynamic_configCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.b = getelementptr i8, ptr %i.a, i64 832
  %.val = load ptr, ptr %i.b, align 8, !nonnull !8, !noundef !8
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !noundef !8
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_configNtB5_13DynamicConfig17publish_subscribe(ptr noundef nonnull align 8 %i.d) #24
  ret ptr %i.e
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvXs1_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribeINtB5_11PortFactoryNtNtB9_3ipc7ServiceyuENtB7_11PortFactory14dynamic_configCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = tail call noundef nonnull align 8 ptr @_RNvXsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memoryINtB5_7StorageNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config13DynamicConfigEINtB7_14DynamicStorageB1r_E3getCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noundef nonnull align 8 %i.b) #24
  %i.d = tail call noundef nonnull align 8 ptr @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_configNtB5_13DynamicConfig17publish_subscribe(ptr noundef nonnull align 8 %i.c) #24
  ret ptr %i.d
end_hunk_0

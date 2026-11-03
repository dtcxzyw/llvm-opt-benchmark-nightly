Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_conformance_tests_common-f849a92dbd610037.iceoryx2_conformance_tests_common.375569554446ae94-cgu.15?download=true
inline.NumInlined: 4375
inline.NumDeleted: 1462
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests5local10blackboard7services7_1__6___ctor:bb.a
; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests5local10blackboard7services8_1__6___ctor() unnamed_addr #0 section ".text.startup" {
bb.a:
  %i.a = load ptr, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests5local10blackboard7services8_1__11___INVENTORY, align 8, !nonnull !6, !noundef !6
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests5local10blackboard7services8_1__11___INVENTORY, i64 8), align 8, !nonnull !6, !align !7, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !6, !nonnull !6
  tail call void %i.d(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests5local10blackboard7services8_1__11___INVENTORY) #21
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests5local10blackboard7services9_1__6___ctor() unnamed_addr #0 section ".text.startup" {
bb.a:
  %i.a = load ptr, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests5local10blackboard7services9_1__11___INVENTORY, align 8, !nonnull !6, !noundef !6
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests5local10blackboard7services9_1__11___INVENTORY, i64 8), align 8, !nonnull !6, !align !7, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !6, !nonnull !6
  tail call void %i.d(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests5local10blackboard7services9_1__11___INVENTORY) #21
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests5local10blackboard7services_1__6___ctor() unnamed_addr #0 section ".text.startup" {
bb.a:
  %i.a = load ptr, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests5local10blackboard7services_1__11___INVENTORY, align 8, !nonnull !6, !noundef !6
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests5local10blackboard7services_1__11___INVENTORY, i64 8), align 8, !nonnull !6, !align !7, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !6, !nonnull !6
  tail call void %i.d(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests5local10blackboard7services_1__11___INVENTORY) #21
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests5local10blackboard7servicesa_1__6___ctor() unnamed_addr #0 section ".text.startup" {
bb.a:
  %i.a = load ptr, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests5local10blackboard7servicesa_1__11___INVENTORY, align 8, !nonnull !6, !noundef !6
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests5local10blackboard7servicesa_1__11___INVENTORY, i64 8), align 8, !nonnull !6, !align !7, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !6, !nonnull !6
  tail call void %i.d(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests5local10blackboard7servicesa_1__11___INVENTORY) #21
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests5local10blackboard7servicesb_1__6___ctor() unnamed_addr #0 section ".text.startup" {
bb.a:
  %i.a = load ptr, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests5local10blackboard7servicesb_1__11___INVENTORY, align 8, !nonnull !6, !noundef !6
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests5local10blackboard7servicesb_1__11___INVENTORY, i64 8), align 8, !nonnull !6, !align !7, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !6, !nonnull !6
  tail call void %i.d(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests5local10blackboard7servicesb_1__11___INVENTORY) #21
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests5local10blackboard7servicesc_1__6___ctor() unnamed_addr #0 section ".text.startup" {
bb.a:
  %i.a = load ptr, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests5local10blackboard7servicesc_1__11___INVENTORY, align 8, !nonnull !6, !noundef !6
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests5local10blackboard7servicesc_1__11___INVENTORY, i64 8), align 8, !nonnull !6, !align !7, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !6, !nonnull !6
  tail call void %i.d(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests5local10blackboard7servicesc_1__11___INVENTORY) #21
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests5local10blackboard7servicesd_1__6___ctor() unnamed_addr #0 section ".text.startup" {
bb.a:
  %i.a = load ptr, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests5local10blackboard7servicesd_1__11___INVENTORY, align 8, !nonnull !6, !noundef !6
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests5local10blackboard7servicesd_1__11___INVENTORY, i64 8), align 8, !nonnull !6, !align !7, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !6, !nonnull !6
  tail call void %i.d(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests5local10blackboard7servicesd_1__11___INVENTORY) #21
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests5local10blackboard7servicese_1__6___ctor() unnamed_addr #0 section ".text.startup" {
bb.a:
  %i.a = load ptr, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests5local10blackboard7servicese_1__11___INVENTORY, align 8, !nonnull !6, !noundef !6
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests5local10blackboard7servicese_1__11___INVENTORY, i64 8), align 8, !nonnull !6, !align !7, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !6, !nonnull !6
  tail call void %i.d(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests5local10blackboard7servicese_1__11___INVENTORY) #21
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests5local10blackboard7servicesf_1__6___ctor() unnamed_addr #0 section ".text.startup" {
bb.a:
  %i.a = load ptr, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests5local10blackboard7servicesf_1__11___INVENTORY, align 8, !nonnull !6, !noundef !6
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests5local10blackboard7servicesf_1__11___INVENTORY, i64 8), align 8, !nonnull !6, !align !7, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !6, !nonnull !6
  tail call void %i.d(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests5local10blackboard7servicesf_1__11___INVENTORY) #21
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests5local10blackboard7servicesg_1__6___ctor() unnamed_addr #0 section ".text.startup" {
bb.a:
  %i.a = load ptr, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests5local10blackboard7servicesg_1__11___INVENTORY, align 8, !nonnull !6, !noundef !6
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests5local10blackboard7servicesg_1__11___INVENTORY, i64 8), align 8, !nonnull !6, !align !7, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !6, !nonnull !6
  tail call void %i.d(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests5local10blackboard7servicesg_1__11___INVENTORY) #21
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests5local10blackboard7servicesh_1__6___ctor() unnamed_addr #0 section ".text.startup" {
bb.a:
  %i.a = load ptr, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests5local10blackboard7servicesh_1__11___INVENTORY, align 8, !nonnull !6, !noundef !6
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests5local10blackboard7servicesh_1__11___INVENTORY, i64 8), align 8, !nonnull !6, !align !7, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !6, !nonnull !6
  tail call void %i.d(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests5local10blackboard7servicesh_1__11___INVENTORY) #21
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests5local10blackboard7servicesi_1__6___ctor() unnamed_addr #0 section ".text.startup" {
bb.a:
  %i.a = load ptr, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests5local10blackboard7servicesi_1__11___INVENTORY, align 8, !nonnull !6, !noundef !6
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests5local10blackboard7servicesi_1__11___INVENTORY, i64 8), align 8, !nonnull !6, !align !7, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !6, !nonnull !6
  tail call void %i.d(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 @_RNvNvNtNtNtNtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common13service_tests5local10blackboard7servicesi_1__11___INVENTORY) #21
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vecINtB2_14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtCs8Chj7Szqq0n_4core6option6OptionNtNtB6_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtB2v_3fmt5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [64 x i8], align 8                ; 11 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @964, ptr %i.e, align 8, !captures !5
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 107, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @965, ptr %i.d, align 8, !captures !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 49, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.47.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.d, ptr %i.j, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.411.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.h, ptr %i.k, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr @_RNvXsd_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.415.0..sroa_idx, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %i.i, ptr %i.l, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr @_RNvXsd_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.419.0..sroa_idx, align 8
  %i.m = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !6, !align !7, !noundef !6 ; 4 uses
  %i.p = call noundef zeroext i1 @_RNvNtCs8Chj7Szqq0n_4core3fmt5write(ptr noundef nonnull %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noundef nonnull @1563, ptr noundef nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %i.p, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = load i64, ptr %i.i, align 8, !noundef !6 ; 7 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !29659)
  %.val3.i = load i64, ptr %i.h, align 8, !alias.scope !29659, !noundef !6 ; 2 uses
  %.not.i = icmp ugt i64 %i.q, %.val3.i
  br i1 %.not.i, label %bb.d, label %bb.f, !prof !33

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtNtCs8Chj7Szqq0n_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.q, i64 noundef %.val3.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1792) #18, !noalias !29659
  unreachable

bb.e:                                             ; preds = %bb.f
  %.not = icmp eq i64 %i.q, 1
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %.val3.i79 = load i64, ptr %i.h, align 8, !alias.scope !29660, !noundef !6 ; 2 uses
  %.not.i80 = icmp ugt i64 %i.q, %.val3.i79
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2.i81 = load ptr, ptr %i.s, align 8
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br i1 %.not.i80, label %2, label %.lr.ph.split, !prof !33

bb.f:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2.i = load ptr, ptr %i.t, align 8, !alias.scope !29659, !nonnull !6, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.val2.i, ptr %i.b, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsb_NtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cellINtB5_10UnsafeCellINtNtCs8Chj7Szqq0n_4core6option6OptionNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtB1c_3fmt5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.434.0..sroa_idx, align 8
  %i.u = call noundef zeroext i1 @_RNvNtCs8Chj7Szqq0n_4core3fmt5write(ptr noundef nonnull %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noundef nonnull @1, ptr noundef nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.u, label %bb.g, label %bb.e

bb.g:                                             ; preds = %bb.f, %bb.a, %._crit_edge, %bb.h
  %.sroa.0.0 = phi i1 [ true, %bb.a ], [ true, %bb.h ], [ %i.z, %._crit_edge ], [ true, %bb.f ]
  ret i1 %.sroa.0.0

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.i
  %.sroa.047.084 = phi i64 [ %i.aa, %bb.i ], [ 1, %.lr.ph ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29660)
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %.val2.i81, i64 %.sroa.047.084
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.v, ptr %i.a, align 8
  store ptr @_RNvXsb_NtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cellINtB5_10UnsafeCellINtNtCs8Chj7Szqq0n_4core6option6OptionNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtB1c_3fmt5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.452.0..sroa_idx, align 8
  %i.w = call noundef zeroext i1 @_RNvNtCs8Chj7Szqq0n_4core3fmt5write(ptr noundef nonnull %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noundef nonnull @1565, ptr noundef nonnull %i.a) #17
  br i1 %i.w, label %bb.h, label %bb.i

2:                                                ; preds = %.lr.ph
  call void @_RNvNtNtCs8Chj7Szqq0n_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.q, i64 noundef %.val3.i79, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1792) #18, !noalias !29660
  unreachable

._crit_edge:                                      ; preds = %bb.i, %bb.b, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !6, !nonnull !6
  %i.z = call noundef zeroext i1 %i.y(ptr noundef nonnull %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1564, i64 noundef 4) #21
  br label %bb.g

bb.h:                                             ; preds = %.lr.ph.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.i:                                             ; preds = %.lr.ph.split
  %i.aa = add nuw i64 %.sroa.047.084, 1           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %exitcond.not = icmp eq i64 %i.aa, %i.q
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXNtNtCsg6ZEkMtNi4J_8iceoryx24port6writerINtB2_17WriterSharedStateNtNtNtB6_7service14ipc_threadsafe7ServiceNtNtB18_7builder15CustomKeyMarkerENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !16, !noundef !6
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = tail call noundef nonnull align 8 ptr @_RNvXsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memoryINtB5_7StorageNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config13DynamicConfigEINtB7_14DynamicStorageB1r_E3getCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noundef nonnull align 8 %i.f) #17
  %i.h = tail call noundef nonnull align 8 ptr @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_configNtB5_13DynamicConfig10blackboard(ptr noundef nonnull align 8 %i.g) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @_RNvMNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config10blackboardNtB2_13DynamicConfig21release_writer_handle(ptr noundef nonnull align 8 %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXNtNtCsg6ZEkMtNi4J_8iceoryx24port6writerINtB2_17WriterSharedStateNtNtNtB6_7service14ipc_threadsafe7ServiceNtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests18service_blackboard18service_blackboard3FooENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !16, !noundef !6
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = tail call noundef nonnull align 8 ptr @_RNvXsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memoryINtB5_7StorageNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config13DynamicConfigEINtB7_14DynamicStorageB1r_E3getCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noundef nonnull align 8 %i.f) #17
  %i.h = tail call noundef nonnull align 8 ptr @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_configNtB5_13DynamicConfig10blackboard(ptr noundef nonnull align 8 %i.g) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @_RNvMNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config10blackboardNtB2_13DynamicConfig21release_writer_handle(ptr noundef nonnull align 8 %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXNtNtCsg6ZEkMtNi4J_8iceoryx24port6writerINtB2_17WriterSharedStateNtNtNtB6_7service14ipc_threadsafe7ServicejENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !16, !noundef !6
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = tail call noundef nonnull align 8 ptr @_RNvXsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memoryINtB5_7StorageNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config13DynamicConfigEINtB7_14DynamicStorageB1r_E3getCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noundef nonnull align 8 %i.f) #17
  %i.h = tail call noundef nonnull align 8 ptr @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_configNtB5_13DynamicConfig10blackboard(ptr noundef nonnull align 8 %i.g) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @_RNvMNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config10blackboardNtB2_13DynamicConfig21release_writer_handle(ptr noundef nonnull align 8 %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXNtNtCsg6ZEkMtNi4J_8iceoryx24port6writerINtB2_17WriterSharedStateNtNtNtB6_7service14ipc_threadsafe7ServiceyENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !16, !noundef !6
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = tail call noundef nonnull align 8 ptr @_RNvXsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memoryINtB5_7StorageNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config13DynamicConfigEINtB7_14DynamicStorageB1r_E3getCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noundef nonnull align 8 %i.f) #17
  %i.h = tail call noundef nonnull align 8 ptr @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_configNtB5_13DynamicConfig10blackboard(ptr noundef nonnull align 8 %i.g) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @_RNvMNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config10blackboardNtB2_13DynamicConfig21release_writer_handle(ptr noundef nonnull align 8 %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXNtNtCsg6ZEkMtNi4J_8iceoryx24port6writerINtB2_17WriterSharedStateNtNtNtB6_7service16local_threadsafe7ServiceNtNtB18_7builder15CustomKeyMarkerENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !16, !noundef !6
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.f = getelementptr i8, ptr %i.e, i64 832
  %.val = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noundef !6
  %i.i = tail call noundef nonnull align 8 ptr @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_configNtB5_13DynamicConfig10blackboard(ptr noundef nonnull align 8 %i.h) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @_RNvMNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config10blackboardNtB2_13DynamicConfig21release_writer_handle(ptr noundef nonnull align 8 %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXNtNtCsg6ZEkMtNi4J_8iceoryx24port6writerINtB2_17WriterSharedStateNtNtNtB6_7service16local_threadsafe7ServiceNtNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests18service_blackboard18service_blackboard3FooENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !16, !noundef !6
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.f = getelementptr i8, ptr %i.e, i64 832
  %.val = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noundef !6
  %i.i = tail call noundef nonnull align 8 ptr @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_configNtB5_13DynamicConfig10blackboard(ptr noundef nonnull align 8 %i.h) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @_RNvMNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config10blackboardNtB2_13DynamicConfig21release_writer_handle(ptr noundef nonnull align 8 %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXNtNtCsg6ZEkMtNi4J_8iceoryx24port6writerINtB2_17WriterSharedStateNtNtNtB6_7service16local_threadsafe7ServicejENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !16, !noundef !6
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.f = getelementptr i8, ptr %i.e, i64 832
  %.val = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noundef !6
  %i.i = tail call noundef nonnull align 8 ptr @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_configNtB5_13DynamicConfig10blackboard(ptr noundef nonnull align 8 %i.h) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @_RNvMNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config10blackboardNtB2_13DynamicConfig21release_writer_handle(ptr noundef nonnull align 8 %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXNtNtCsg6ZEkMtNi4J_8iceoryx24port6writerINtB2_17WriterSharedStateNtNtNtB6_7service16local_threadsafe7ServiceyENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 {
end_hunk_0

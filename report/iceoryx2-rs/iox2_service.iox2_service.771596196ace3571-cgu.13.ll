Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iox2_service.iox2_service.771596196ace3571-cgu.13?download=true
inline.NumInlined: 1129
inline.NumDeleted: 412
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender6SenderNtNtNtBK_7service3ipc7ServiceEECsadSKrpJ73hd_12iox2_service:bb.a
  tail call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #25
  tail call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segment11DataSegmentNtNtNtBK_7service3ipc7ServiceEECsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(2488) %i.b) #25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2640 ; 2 uses
  tail call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtCs8Chj7Szqq0n_4core6option6OptionINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender10ConnectionNtNtNtB2p_7service3ipc7ServiceEEEENtNtNtB1J_3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #25
  tail call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtCs8Chj7Szqq0n_4core6option6OptionINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender10ConnectionNtNtNtB2w_7service3ipc7ServiceEEEENtNtNtB1Q_3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #25
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3552 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !373)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !374)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !375)
  %i.e = load ptr, ptr %i.d, align 16, !alias.scope !376, !nonnull !5, !noundef !5
  %i.f = atomicrmw add ptr %i.e, i64 -1 release, align 8, !noalias !376
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.b, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24node10SharedNodeNtNtNtBG_7service3ipc7ServiceEECsadSKrpJ73hd_12iox2_service.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx24node15SharedNodeStateNtNtNtBL_7service3ipc7ServiceEE9drop_slowCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #24
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24node10SharedNodeNtNtNtBG_7service3ipc7ServiceEECsadSKrpJ73hd_12iox2_service.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24node10SharedNodeNtNtNtBG_7service3ipc7ServiceEECsadSKrpJ73hd_12iox2_service.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_RNvXNvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.h) #25
  %i.i = load i128, ptr %0, align 16, !range !14, !alias.scope !377, !noundef !5
  %i.j = icmp eq i128 %i.i, 0
  br i1 %i.j, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECsadSKrpJ73hd_12iox2_service.exit, label %bb.c

bb.c:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24node10SharedNodeNtNtNtBG_7service3ipc7ServiceEECsadSKrpJ73hd_12iox2_service.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXNvNtCsg6ZEkMtNi4J_8iceoryx24port1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.k) #25
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECsadSKrpJ73hd_12iox2_service.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECsadSKrpJ73hd_12iox2_service.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24node10SharedNodeNtNtNtBG_7service3ipc7ServiceEECsadSKrpJ73hd_12iox2_service.exit, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3560 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !381, !nonnull !5, !noundef !5
  %i.n = atomicrmw add ptr %i.m, i64 -1 release, align 8, !noalias !381
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.d, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx27service18SharedServiceStateNtNtBE_3ipc7ServiceNtBE_10NoResourceEECsadSKrpJ73hd_12iox2_service.exit

bb.d:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECsadSKrpJ73hd_12iox2_service.exit
  fence acquire
  tail call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtBJ_3ipc7ServiceNtBJ_10NoResourceEE9drop_slowCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #24
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx27service18SharedServiceStateNtNtBE_3ipc7ServiceNtBE_10NoResourceEECsadSKrpJ73hd_12iox2_service.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx27service18SharedServiceStateNtNtBE_3ipc7ServiceNtBE_10NoResourceEECsadSKrpJ73hd_12iox2_service.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECsadSKrpJ73hd_12iox2_service.exit, %bb.d
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver8ReceiverNtNtNtBK_7service3ipc7ServiceEECsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 16 dereferenceable(1280) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !410)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !412)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.val.i.i.i = load i64, ptr %i.b, align 16, !alias.scope !413, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val6.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !413, !noundef !5 ; 4 uses
  %i.d = add i64 %.val.i.i.i, -1                  ; 2 uses
  %.first_iter.i.i.i = icmp ult i64 %i.d, %.val6.i.i.i
  %.not.i.i.i = icmp eq i64 %.val.i.i.i, 0
  %or.cond.i.i = or i1 %.not.i.i.i, %.first_iter.i.i.i
  br i1 %or.cond.i.i, label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtCs8Chj7Szqq0n_4core6option6OptionNtNtB9_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E5clearCsadSKrpJ73hd_12iox2_service.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.d, i64 noundef %.val6.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @695) #26, !noalias !413
  unreachable

_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtCs8Chj7Szqq0n_4core6option6OptionNtNtB9_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E5clearCsadSKrpJ73hd_12iox2_service.exit.i.i: ; preds = %bb.a
  store i64 0, ptr %i.b, align 16, !alias.scope !414
  %i.e = icmp ugt i64 %.val6.i.i.i, 576460752303423487
  br i1 %i.e, label %.split2.i.i, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBI_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEECsadSKrpJ73hd_12iox2_service.exit

.split2.i.i:                                      ; preds = %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtCs8Chj7Szqq0n_4core6option6OptionNtNtB9_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E5clearCsadSKrpJ73hd_12iox2_service.exit.i.i
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @473) #26, !noalias !415
  unreachable

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBI_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEECsadSKrpJ73hd_12iox2_service.exit: ; preds = %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtCs8Chj7Szqq0n_4core6option6OptionNtNtB9_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E5clearCsadSKrpJ73hd_12iox2_service.exit.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !415, !nonnull !5, !noundef !5
  %i.h = load ptr, ptr %0, align 16, !alias.scope !415, !nonnull !5, !noundef !5
  %i.i = shl nuw nsw i64 %.val6.i.i.i, 4
  tail call void @_RNvXs0_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocatorNtB5_13HeapAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator10deallocate(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, ptr noundef nonnull %i.g, i64 noundef 8, i64 noundef %i.i) #25, !noalias !415
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !416)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !417)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !418)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !419, !nonnull !5, !noundef !5
  %i.l = atomicrmw add ptr %i.k, i64 -1 release, align 8, !noalias !419
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.c, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx27service18SharedServiceStateNtNtBE_3ipc7ServiceNtBE_10NoResourceEECsadSKrpJ73hd_12iox2_service.exit

bb.c:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBI_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEECsadSKrpJ73hd_12iox2_service.exit
  fence acquire
  tail call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtBJ_3ipc7ServiceNtBJ_10NoResourceEE9drop_slowCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #24
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx27service18SharedServiceStateNtNtBE_3ipc7ServiceNtBE_10NoResourceEECsadSKrpJ73hd_12iox2_service.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx27service18SharedServiceStateNtNtBE_3ipc7ServiceNtBE_10NoResourceEECsadSKrpJ73hd_12iox2_service.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBI_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEECsadSKrpJ73hd_12iox2_service.exit, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1224
  tail call void @llvm.experimental.noalias.scope.decl(metadata !420)
  %i.o = load i64, ptr %i.n, align 8, !range !13, !alias.scope !420, !noundef !5
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtB23_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEEEECsadSKrpJ73hd_12iox2_service.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx27service18SharedServiceStateNtNtBE_3ipc7ServiceNtBE_10NoResourceEECsadSKrpJ73hd_12iox2_service.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1232
  tail call void @llvm.experimental.noalias.scope.decl(metadata !421)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1248 ; 2 uses
  %.val.i.i.i.i.i.i = load i64, ptr %i.r, align 16, !alias.scope !426, !noundef !5 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %.val6.i.i.i.i.i.i = load i64, ptr %i.s, align 8, !alias.scope !426, !noundef !5 ; 4 uses
  %i.t = add i64 %.val.i.i.i.i.i.i, -1            ; 2 uses
  %.first_iter.i.i.i.i.i.i = icmp ult i64 %i.t, %.val6.i.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq i64 %.val.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i = or i1 %.not.i.i.i.i.i.i, %.first_iter.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtB9_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E5clearCsadSKrpJ73hd_12iox2_service.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.t, i64 noundef %.val6.i.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @695) #26, !noalias !426
  unreachable

_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtB9_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E5clearCsadSKrpJ73hd_12iox2_service.exit.i.i.i.i.i: ; preds = %bb.d
  store i64 0, ptr %i.r, align 16, !alias.scope !427
  %i.u = icmp ugt i64 %.val6.i.i.i.i.i.i, 1152921504606846975
  br i1 %i.u, label %.split2.i.i.i.i.i, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtB1H_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEEECsadSKrpJ73hd_12iox2_service.exit.i

.split2.i.i.i.i.i:                                ; preds = %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtB9_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E5clearCsadSKrpJ73hd_12iox2_service.exit.i.i.i.i.i
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @473) #26, !noalias !428
  unreachable

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtB1H_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEEECsadSKrpJ73hd_12iox2_service.exit.i: ; preds = %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtB9_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E5clearCsadSKrpJ73hd_12iox2_service.exit.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !428, !nonnull !5, !noundef !5
  %i.x = load ptr, ptr %i.q, align 16, !alias.scope !428, !nonnull !5, !noundef !5
  %i.y = shl nuw nsw i64 %.val6.i.i.i.i.i.i, 3
  tail call void @_RNvXs0_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocatorNtB5_13HeapAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator10deallocate(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.x, ptr noundef nonnull %i.w, i64 noundef 8, i64 noundef %i.y) #25, !noalias !428
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtB23_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEEEECsadSKrpJ73hd_12iox2_service.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtB23_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEEEECsadSKrpJ73hd_12iox2_service.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx27service18SharedServiceStateNtNtBE_3ipc7ServiceNtBE_10NoResourceEECsadSKrpJ73hd_12iox2_service.exit, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtB1H_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEEECsadSKrpJ73hd_12iox2_service.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_RNvXNvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.z) #25
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  tail call void @_RNvXs0_NtCs5kzjBmDVxDj_21iceoryx2_bb_container3vecINtB5_7MetaVecjNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.aa) #25
  tail call void @_RNvXs_NtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointerINtB4_13OwningPointerINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitjEENtNtNtB1x_3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.aa) #25
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  tail call void @_RNvXs0_NtCs5kzjBmDVxDj_21iceoryx2_bb_container3vecINtB5_7MetaVecNtNtB7_7slotmap13FreeListEntryNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ab) #25
  tail call void @_RNvXs_NtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointerINtB4_13OwningPointerINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap13FreeListEntryEENtNtNtB1x_3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ab) #25
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  tail call void @_RNvXs0_NtCs5kzjBmDVxDj_21iceoryx2_bb_container3vecINtB5_7MetaVecINtNtCs8Chj7Szqq0n_4core6option6OptionINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1L_7service3ipc7ServiceEENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerENtNtNtB15_3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ac) #25
  tail call void @_RNvXs_NtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointerINtB4_13OwningPointerINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitINtNtB1x_6option6OptionINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB2R_7service3ipc7ServiceEEEENtNtNtB1x_3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ac) #25
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  tail call void @_RNvXs5_NtCs5kzjBmDVxDj_21iceoryx2_bb_container5queueINtB5_9MetaQueuejNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ad) #25
  tail call void @_RNvXs_NtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointerINtB4_13OwningPointerINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitjEENtNtNtB1x_3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ad) #25
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory9publisher27PreallocatedSamplesOverrideKj18_EECsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 16 dereferenceable(48) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 16, !alias.scope !437, !align !6, !noundef !5 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !noalias !437, !nonnull !5, !noundef !5
  tail call void %i.c(ptr noundef nonnull align 16 dereferenceable(48) %0) #25, !inline_history !433
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory9publisher1__11TinyClosureKj18_EECsadSKrpJ73hd_12iox2_service.exit

bb.c:                                             ; preds = %bb.a
  %.val.i.i = load ptr, ptr %0, align 16, !alias.scope !437 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.d, align 8, !alias.scope !437, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.e = load ptr, ptr %.val1.i.i, align 8, !invariant.load !5, !noalias !437 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void %i.e(ptr noundef nonnull %.val.i.i) #23, !noalias !437, !inline_history !434
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !17, !invariant.load !5, !noalias !437 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory9publisher1__11TinyClosureKj18_EECsadSKrpJ73hd_12iox2_service.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !7, !invariant.load !5, !noalias !437
  tail call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #25, !noalias !437
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory9publisher1__11TinyClosureKj18_EECsadSKrpJ73hd_12iox2_service.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory9publisher1__11TinyClosureKj18_EECsadSKrpJ73hd_12iox2_service.exit: ; preds = %bb.b, %bb.e, %bb.f
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socket18UnixDatagramSenderECsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 8 dereferenceable(280) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs1_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socketNtB5_18UnixDatagramSenderNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(280) %0) #25
  tail call void @_RNvXs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix15file_descriptorNtB5_14FileDescriptorNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(280) %0) #25
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socket20UnixDatagramReceiverECsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 8 dereferenceable(280) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs8_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socketNtB5_20UnixDatagramReceiverNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(280) %0) #25
  tail call void @_RNvXs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix15file_descriptorNtB5_14FileDescriptorNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(280) %0) #25
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtCs7gufeB8TUC6_12iceoryx2_cal5event20unix_datagram_socket8NotifierECsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 8 dereferenceable(544) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs1_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socketNtB5_18UnixDatagramSenderNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(280) %0) #25
  tail call void @_RNvXs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix15file_descriptorNtB5_14FileDescriptorNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(280) %0) #25
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtNtCs5WK5l2q0aFk_12clap_builder6parser7matches11arg_matches10ArgMatchesECsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCs5WK5l2q0aFk_12clap_builder4util2id2IdENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) #25
  tail call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5WK5l2q0aFk_12clap_builder4util2id2IdENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCs5WK5l2q0aFk_12clap_builder6parser7matches11matched_arg10MatchedArgENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #25
  tail call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs5WK5l2q0aFk_12clap_builder6parser7matches11matched_arg10MatchedArgENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !444, !align !6, !noundef !5 ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %common.ret1, label %bb.b

common.ret1:                                      ; preds = %bb.a, %bb.b
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.c) #25, !noalias !445
  tail call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.c) #25, !noalias !445
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  tail call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtNtCs5WK5l2q0aFk_12clap_builder6parser7matches11arg_matches10ArgMatchesECsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 8 dereferenceable(56) %i.e) #25, !noalias !445, !inline_history !442
  tail call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef 80, i64 noundef 8) #25, !noalias !445, !inline_history !443
  br label %common.ret1
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory10subscriber16SubscriberConfigECsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 16 dereferenceable(64) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXNvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.a) #25
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @_RINvNtNtCsg6ZEkMtNi4J_8iceoryx24port8listener29remove_connection_of_listenerNtNtNtB6_7service3ipc7ServiceECsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(4528) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [792 x i8], align 8               ; 4 uses
  %i.d = alloca [264 x i8], align 8               ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %0, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr @13, ptr %i.g, align 8, !captures !18
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 31, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.g, ptr %i.f, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.46.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.i, ptr %i.k, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers16UniqueListenerIdNtB6_5Debug3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.410.0..sroa_idx, align 8
  call void @_RNvNvNtCsbqH9stoieM8_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull @14, ptr noundef nonnull %i.f) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @15, ptr %i.e, align 8, !captures !18
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 40, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.m = load ptr, ptr %i.i, align 8, !nonnull !5, !align !19, !noundef !5
  call void @_RNvNtNtCsg6ZEkMtNi4J_8iceoryx27service13naming_scheme18event_concept_name(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(none) dereferenceable(264) %i.d, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.m) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RINvNtNtCsg6ZEkMtNi4J_8iceoryx27service13config_scheme12event_configNtNtB4_3ipc7ServiceECsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull sret([792 x i8]) align 8 captures(address) dereferenceable(792) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4528) %1) #25
  %i.n = call { i1, i8 } @_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal5event20unix_datagram_socketNtB5_9EventImplNtNtB9_13named_concept16NamedConceptMgmt10remove_cfg(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(792) %i.c) #25 ; 2 uses
  %i.o = extractvalue { i1, i8 } %i.n, 0
  br i1 %i.o, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.split
  %i.p = extractvalue { i1, i8 } %i.n, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.h, ptr %i.b, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsr_NtCsbqH9stoieM8_5alloc6stringNtB5_6StringNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.416.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.a, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.420.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @5, ptr noundef nonnull %i.b, ptr noundef nonnull @16, ptr noundef nonnull %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.b

bb.b:                                             ; preds = %.split, %bb.a
  %.sroa.0.0 = phi i8 [ %i.p, %bb.a ], [ 2, %.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #25
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret i8 %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvXNtNtCs7gufeB8TUC6_12iceoryx2_cal9serialize4tomlNtB3_4TomlNtB5_9Serialize11deserializeNtNtCsg6ZEkMtNi4J_8iceoryx24node11NodeDetailsECsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([4936 x i8]) align 8 captures(none) dereferenceable(4936) initializes((0, 8)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [88 x i8], align 8                ; 7 uses
  %i.d = alloca [4936 x i8], align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RINvNtCs7PFeJTloU4p_4toml2de10from_sliceNtNtCsg6ZEkMtNi4J_8iceoryx24node11NodeDetailsECsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull sret([4936 x i8]) align 8 captures(address) dereferenceable(4936) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #25
  %i.e = load i64, ptr %i.d, align 8, !range !16, !noundef !5
  %i.f = icmp eq i64 %i.e, 2
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.c, ptr noundef nonnull align 8 dereferenceable(88) %i.g, i64 88, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @18, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.42.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs0_NtNtCs7PFeJTloU4p_4toml2de5errorNtB5_5ErrorNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @5, ptr noundef nonnull %i.b, ptr noundef nonnull @19, ptr noundef nonnull %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 2, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #25
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #25
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !454)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !455, !noundef !5 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtCs7PFeJTloU4p_4toml2de5error5ErrorECsadSKrpJ73hd_12iox2_service.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = atomicrmw add ptr %i.j, i64 -1 release, align 8, !noalias !456
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.d, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtCs7PFeJTloU4p_4toml2de5error5ErrorECsadSKrpJ73hd_12iox2_service.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArceE9drop_slowCs7PFeJTloU4p_4toml(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i) #24
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtCs7PFeJTloU4p_4toml2de5error5ErrorECsadSKrpJ73hd_12iox2_service.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtCs7PFeJTloU4p_4toml2de5error5ErrorECsadSKrpJ73hd_12iox2_service.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #25
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4936) %0, ptr noundef nonnull align 8 dereferenceable(4936) %i.d, i64 4936, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtCs7PFeJTloU4p_4toml2de5error5ErrorECsadSKrpJ73hd_12iox2_service.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvXNtNtCs7gufeB8TUC6_12iceoryx2_cal9serialize4tomlNtB3_4TomlNtB5_9Serialize11deserializeNtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config12StaticConfigECsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([5032 x i8]) align 8 captures(none) dereferenceable(5032) initializes((3184, 3188)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
end_hunk_0
begin_hunk_1_@_RNvMs1_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory9publisherINtB5_20PortFactoryPublisherNtNtB9_3ipc7ServiceNtNtNtCslR0xdO7Fetl_27iceoryx2_services_discovery17service_discovery7service9DiscoveryuE6createCsadSKrpJ73hd_12iox2_service:.split
_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit.i: ; preds = %_RNvMs3_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory9publisherINtB5_27PreallocatedSamplesOverrideKj18_E4callCsadSKrpJ73hd_12iox2_service.exit.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.av, i64 336
  %i.ck = load i64, ptr %i.cj, align 8, !alias.scope !537, !noalias !531, !noundef !5
  %i.cl = getelementptr inbounds nuw i8, ptr %i.av, i64 632
  %i.cm = load i64, ptr %i.cl, align 8, !alias.scope !537, !noalias !531, !noundef !5
  %i.cn = getelementptr inbounds nuw i8, ptr %i.av, i64 640
  %i.co = load i64, ptr %i.cn, align 8, !alias.scope !537, !noalias !531, !noundef !5
  %i.cp = getelementptr inbounds nuw i8, ptr %i.av, i64 928
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !537, !noalias !531, !noundef !5
  %i.cr = mul i64 %i.cq, %i.cf
  %i.cs = getelementptr inbounds nuw i8, ptr %i.av, i64 936
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !537, !noalias !531, !noundef !5
  %i.cu = add i64 %i.ck, -2
  %i.cv = add i64 %i.cu, %i.cm
  %i.cw = add i64 %i.cv, %i.co
  %i.cx = add i64 %i.cw, %i.cr
  %i.cy = add i64 %i.cx, %i.ct                    ; 2 uses
  %i.cz = urem i64 %i.cy, %i.ch                   ; 2 uses
  %i.da = icmp eq i64 %i.cz, 0
  %i.db = sub i64 %i.ch, %i.cz
  %i.dc = select i1 %i.da, i64 0, i64 %i.db
  %.sroa.0.0.i.i = add i64 %i.dc, %i.cy           ; 2 uses
  %i.dd = icmp ult i64 %i.ch, -9223372036854775807
  call void @llvm.assume(i1 %i.dd)
  %i.de = call noundef i8 @_RNvMs0_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segmentINtB5_11DataSegmentNtNtNtBb_7service3ipc7ServiceE22max_number_of_segmentsCsadSKrpJ73hd_12iox2_service(i32 noundef %..i.i) #25, !noalias !531 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7118.i)
  %.val94.i = load ptr, ptr %i.an, align 8, !noalias !531, !nonnull !5, !noundef !5
  %i.df = getelementptr inbounds nuw i8, ptr %.val94.i, i64 7280
  %.val101.i = load ptr, ptr %i.df, align 8, !noalias !531, !nonnull !5, !noundef !5 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.val101.i, i64 6312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7118.i, ptr noundef nonnull align 4 dereferenceable(16) %i.dg, i64 16, i1 false), !noalias !531
  %i.dh = getelementptr inbounds nuw i8, ptr %.val101.i, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !530
  call void @_RNvNtNtCsg6ZEkMtNi4J_8iceoryx27service13naming_scheme17data_segment_name(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(none) dereferenceable(264) %i.x, i128 noundef %.sroa.019.0.copyload.i) #25, !noalias !531
  br i1 %i.cc, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit.i
  call void @_RNvMs0_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segmentINtB5_11DataSegmentNtNtNtBb_7service3ipc7ServiceE21create_static_segmentCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull sret([2488 x i8]) align 8 captures(none) dereferenceable(2488) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.x, i64 noundef %i.ch, i64 noundef %.sroa.0.0.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4528) %i.dh, i64 noundef %.sroa.0.0.i.i.i) #25, !noalias !531
  br label %bb.h

bb.g:                                             ; preds = %_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit.i
  %i.di = load i8, ptr %i.ca, align 16, !range !10, !alias.scope !529, !noundef !5
  call void @_RNvMs0_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segmentINtB5_11DataSegmentNtNtNtBb_7service3ipc7ServiceE22create_dynamic_segmentCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull sret([2488 x i8]) align 8 captures(none) dereferenceable(2488) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.x, i64 noundef %i.ch, i64 noundef %.sroa.0.0.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4528) %i.dh, i64 noundef %.sroa.0.0.i.i.i, i8 noundef %i.di) #25, !noalias !531
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.021.0.copyload = load i64, ptr %i.t, align 16, !noalias !530
  %.not.i = icmp eq i64 %.sroa.021.0.copyload, -1
  br i1 %.not.i, label %.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !530
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2488) %i.u, ptr noundef nonnull align 16 dereferenceable(2488) %i.t, i64 2488, i1 false), !noalias !530
  %i.dj = load i64, ptr %i.u, align 8, !range !15, !noalias !530, !noundef !5
  %i.dk = icmp eq i64 %i.dj, -1
  br i1 %i.dk, label %bb.ab, label %bb.j, !prof !12

.thread.i:                                        ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !530
  store ptr %i.ae, ptr %i.w, align 8, !noalias !530
  %.sroa.437.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.437.0..sroa_idx.i, align 8, !noalias !530
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !530
  store ptr %i.af, ptr %i.v, align 8, !noalias !530
  %.sroa.441.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.441.0..sroa_idx.i, align 8, !noalias !530
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @5, ptr noundef nonnull %i.w, ptr noundef nonnull @92, ptr noundef nonnull %i.v) #25, !noalias !531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !530
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7118.i)
  call void @_RNvXs5_NtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage4fileNtB5_7StorageNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(1360) %i.ac) #25, !noalias !531
  call void @_RNvXs2_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix4fileNtB5_4FileNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(1360) %i.ac) #25, !noalias !531
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ac, i64 272
  call void @_RNvXs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix15file_descriptorNtB5_14FileDescriptorNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(8) %i.dl) #25, !noalias !531
  br label %bb.ah

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !530
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.29.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !530
  %i.dm = zext i8 %i.de to i64                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !530
  call void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.dm, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32) #25, !noalias !531
  %i.dn = load i64, ptr %i.c, align 8, !range !13, !noalias !530, !noundef !5
  %i.do = trunc nuw i64 %i.dn to i1
  %i.dp = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.dq = load i64, ptr %i.dp, align 8, !range !21, !noalias !530, !noundef !5 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.do, label %bb.k, label %bb.l, !prof !12

bb.k:                                             ; preds = %bb.j
  %i.ds = load i64, ptr %i.dr, align 8, !noalias !530
  call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %i.dq, i64 %i.ds) #27, !noalias !531
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.dt = load ptr, ptr %i.dr, align 8, !noalias !530, !nonnull !5, !noundef !5
  %i.du = icmp samesign uge i64 %i.dq, %i.dm
  call void @llvm.assume(i1 %i.du)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !530
  store i64 %i.dq, ptr %i.r, align 8, !noalias !530
  %i.dv = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  store ptr %i.dt, ptr %i.dv, align 8, !noalias !530
  %i.dw = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  store i64 0, ptr %i.dw, align 8, !noalias !530
  %.not139.i = icmp eq i8 %i.de, 0
  br i1 %.not139.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCsadSKrpJ73hd_12iox2_service.exit.i, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !530
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !530
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.dy = load i64, ptr %i.dx, align 8, !noalias !531, !noundef !5
  call void @_RNvXNtNtCsbqH9stoieM8_5alloc3vec14spec_from_iterINtB4_3VecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtCs8Chj7Szqq0n_4core6option6OptionINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender10ConnectionNtNtNtB2E_7service3ipc7ServiceEEEEINtB2_12SpecFromIterBU_INtNtNtNtB1Y_4iter8adapters3map3MapINtNtNtB1Y_3ops5range5RangejENCNvMs6_NtB2C_9publisherINtB5C_9PublisherB3x_NtNtNtCslR0xdO7Fetl_27iceoryx2_services_discovery17service_discovery7service9DiscoveryuE3new0EE9from_iterCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, i64 noundef 0, i64 noundef %i.dy) #25, !noalias !531
  %.val.i = load ptr, ptr %i.an, align 8, !noalias !531, !nonnull !5, !noundef !5
  %i.dz = getelementptr inbounds nuw i8, ptr %.val.i, i64 7280
  %.val105.i = load ptr, ptr %i.dz, align 8, !noalias !531, !nonnull !5, !noundef !5 ; 2 uses
  %i.ea = atomicrmw add ptr %.val105.i, i64 1 monotonic, align 8, !noalias !531
  %i.eb = icmp slt i64 %i.ea, 0
  br i1 %i.eb, label %bb.m, label %_RNvXs1v_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB6_10SharedNodeNtNtNtB8_7service3ipc7ServiceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCsadSKrpJ73hd_12iox2_service.exit.i

bb.m:                                             ; preds = %._crit_edge.i
  call void @llvm.trap()
  unreachable

_RNvXs1v_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB6_10SharedNodeNtNtNtB8_7service3ipc7ServiceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCsadSKrpJ73hd_12iox2_service.exit.i: ; preds = %._crit_edge.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ed = load <2 x i64>, ptr %i.ec, align 8, !noalias !531
  %i.ee = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.ef = load i8, ptr %i.ee, align 8, !range !8, !noalias !531, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.o, ptr noundef nonnull align 16 dereferenceable(48) %i.eg, i64 48, i1 false), !noalias !531
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.n, ptr noundef nonnull align 16 dereferenceable(192) %i.ag, i64 64, i1 false), !noalias !531
  %.val106.i = load ptr, ptr %i.an, align 8, !noalias !531, !nonnull !5, !noundef !5 ; 2 uses
  %i.eh = atomicrmw add ptr %.val106.i, i64 1 monotonic, align 8, !noalias !531
  %i.ei = icmp slt i64 %i.eh, 0
  br i1 %i.ei, label %bb.n, label %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_3ipc7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCsadSKrpJ73hd_12iox2_service.exit.i

bb.n:                                             ; preds = %_RNvXs1v_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB6_10SharedNodeNtNtNtB8_7service3ipc7ServiceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCsadSKrpJ73hd_12iox2_service.exit.i
  call void @llvm.trap()
  unreachable

_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_3ipc7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCsadSKrpJ73hd_12iox2_service.exit.i: ; preds = %_RNvXs1v_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB6_10SharedNodeNtNtNtB8_7service3ipc7ServiceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCsadSKrpJ73hd_12iox2_service.exit.i
  %i.ej = load i64, ptr %i.bb, align 16, !alias.scope !529, !noundef !5
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ag, i64 177
  %i.el = load i8, ptr %i.ek, align 1, !range !8, !alias.scope !529, !noundef !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(888) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(888) %i.cd, i64 888, i1 false), !noalias !531
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !530
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !530
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.5.i, ptr noundef nonnull align 16 dereferenceable(48) %i.o, i64 48, i1 false), !noalias !530
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.03.i, ptr noundef nonnull align 16 dereferenceable(64) %i.n, i64 64, i1 false), !noalias !530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.m, ptr noundef nonnull align 16 dereferenceable(24) %i.bb, i64 24, i1 false), !noalias !531
  call void @_RNvMs4_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB5_9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config17publish_subscribe17SubscriberDetailsE9get_stateCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.l, ptr noundef nonnull align 8 %i.ay) #25, !noalias !531
  %i.em = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.en = load i64, ptr %i.em, align 8, !noalias !531, !noundef !5 ; 3 uses
  %i.eo = icmp eq i64 %i.en, 0
  br i1 %i.eo, label %bb.q, label %bb.p

.lr.ph.i:                                         ; preds = %bb.l, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCsadSKrpJ73hd_12iox2_service.exit.i
  %.sroa.089.0138.i = phi i8 [ %i.ep, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCsadSKrpJ73hd_12iox2_service.exit.i ], [ 0, %bb.l ]
  %i.ep = add nuw i8 %.sroa.089.0138.i, 1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !530
  call void @_RNvMNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_stateNtB2_12SegmentState3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.q, i64 noundef %.sroa.0.0.i.i.i) #25, !noalias !531
  %i.eq = load i64, ptr %i.dw, align 8, !alias.scope !539, !noalias !530, !noundef !5 ; 3 uses
  %i.er = load i64, ptr %i.r, align 8, !range !17, !alias.scope !539, !noalias !530, !noundef !5
  %i.es = icmp eq i64 %i.eq, %i.er
  br i1 %i.es, label %bb.o, label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCsadSKrpJ73hd_12iox2_service.exit.i

bb.o:                                             ; preds = %.lr.ph.i
  call void @_RNvMs4_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8grow_oneCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r) #24, !noalias !540
  br label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCsadSKrpJ73hd_12iox2_service.exit.i

_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCsadSKrpJ73hd_12iox2_service.exit.i: ; preds = %bb.o, %.lr.ph.i
  %i.et = load ptr, ptr %i.dv, align 8, !alias.scope !539, !noalias !530, !nonnull !5, !noundef !5
  %i.eu = getelementptr inbounds nuw [32 x i8], ptr %i.et, i64 %i.eq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eu, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.q, i64 32, i1 false), !noalias !531
  %i.ev = add i64 %i.eq, 1
  store i64 %i.ev, ptr %i.dw, align 8, !alias.scope !539, !noalias !530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !530
  %exitcond.not.i = icmp eq i8 %i.ep, %i.de
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.p:                                             ; preds = %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_3ipc7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCsadSKrpJ73hd_12iox2_service.exit.i
  call void @_RNvMNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointerINtB2_13OwningPointerINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitNtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher13OffsetAndSizeEE14new_with_allocCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.57.sroa.0.i, i64 noundef %i.en) #25, !noalias !531
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_3ipc7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCsadSKrpJ73hd_12iox2_service.exit.i
  %.sroa.06.0.i = phi i64 [ 1, %bb.p ], [ 0, %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_3ipc7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCsadSKrpJ73hd_12iox2_service.exit.i ]
  %.sroa.29.3696..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.29.i, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1360) %.sroa.29.3696..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(1360) %i.ac, i64 1360, i1 false), !noalias !530
  call void @_RNvCsicpYtSlSgpD_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !541
  %i.ew = call noundef align 16 dereferenceable_or_null(5168) ptr @_RNvCsicpYtSlSgpD_7___rustc12___rust_alloc(i64 noundef range(i64 8, 6417) 5168, i64 noundef range(i64 8, 17) 16) #25, !noalias !541 ; 38 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %bb.r, label %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service3ipc7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCsadSKrpJ73hd_12iox2_service.exit.i, !prof !12

bb.r:                                             ; preds = %bb.q
  call void @_RNvNtCsbqH9stoieM8_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 5168) #27, !noalias !541
  unreachable

_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service3ipc7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCsadSKrpJ73hd_12iox2_service.exit.i: ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ew) ]
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !542
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.03.i, i64 64, i1 false), !noalias !531
  %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 80
  store i128 %.sroa.019.0.copyload.i, ptr %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx.i, align 16, !noalias !543
  %.sroa.5129.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.5129.0..sroa.5.0..sroa_idx.i.sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.5.i, i64 48, i1 false), !noalias !531
  %.sroa.6130.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(2488) %.sroa.6130.0..sroa.5.0..sroa_idx.i.sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(2488) %i.t, i64 2488, i1 false), !noalias !531
  %.sroa.7131.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 2632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7131.0..sroa.5.0..sroa_idx.i.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, i64 24, i1 false), !noalias !531
  %.sroa.8132.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 2656
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.8132.0..sroa.5.0..sroa_idx.i.sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.8.i, i64 24, i1 false), !noalias !531
  %.sroa.9133.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 2680
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(888) %.sroa.9133.0..sroa.5.0..sroa_idx.i.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(888) %.sroa.9.i, i64 888, i1 false), !noalias !531
  %.sroa.10134.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 3568
  store ptr %.val105.i, ptr %.sroa.10134.0..sroa.5.0..sroa_idx.i.sroa_idx.i, align 16, !noalias !543
  %.sroa.11135.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 3576
  store ptr %.val106.i, ptr %.sroa.11135.0..sroa.5.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !543
  %.sroa.12136.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 3584
  store <2 x i64> %i.ed, ptr %.sroa.12136.0..sroa.5.0..sroa_idx.i.sroa_idx.i, align 16, !noalias !543
  %.sroa.14.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 3600
  store i64 %i.ej, ptr %.sroa.14.0..sroa.5.0..sroa_idx.i.sroa_idx.i, align 16, !noalias !543
  %.sroa.15.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 3608
  store i64 %.sroa.0.0.i.i.i, ptr %.sroa.15.0..sroa.5.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !543
  %.sroa.16.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 3616
  store i64 0, ptr %.sroa.16.0..sroa.5.0..sroa_idx.i.sroa_idx.i, align 16, !noalias !543
  %.sroa.17.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 3624
  store i64 1, ptr %.sroa.17.0..sroa.5.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !543
  %.sroa.18.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 3632
  store i64 0, ptr %.sroa.18.0..sroa.5.0..sroa_idx.i.sroa_idx.i, align 16, !noalias !543
  %.sroa.19.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 3640
  store i8 %i.ef, ptr %.sroa.19.0..sroa.5.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !543
  %.sroa.20.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 3641
  store i8 %i.el, ptr %.sroa.20.0..sroa.5.0..sroa_idx.i.sroa_idx.i, align 1, !noalias !543
  %.sroa.21.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 3642
  store i8 %i.de, ptr %.sroa.21.0..sroa.5.0..sroa_idx.i.sroa_idx.i, align 2, !noalias !543
  %.sroa.22.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 3643 ; 2 uses
  store i8 0, ptr %.sroa.22.0..sroa.5.0..sroa_idx.i.sroa_idx.i, align 1, !noalias !543
  %.sroa.23137.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 3648
  store i64 %.sroa.06.0.i, ptr %.sroa.23137.0..sroa.5.0..sroa_idx.i.sroa_idx.i, align 16, !noalias !543
  %.sroa.24.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 3656
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.24.0..sroa.5.0..sroa_idx.i.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.57.sroa.0.i, i64 24, i1 false), !noalias !531
  %.sroa.25.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 3680
  %.sroa.27.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 3696
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.25.0..sroa.5.0..sroa_idx.i.sroa_idx.i, i8 0, i64 16, i1 false), !noalias !531
  store i64 %i.en, ptr %.sroa.27.0..sroa.5.0..sroa_idx.i.sroa_idx.i, align 16, !noalias !543
  %.sroa.28.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 3704
  store i8 1, ptr %.sroa.28.0..sroa.5.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !543
  %.sroa.29.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 3705
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1367) %.sroa.29.0..sroa.5.0..sroa_idx.i.sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(1367) %.sroa.29.i, i64 1367, i1 false), !noalias !543
  %.sroa.30.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 5072 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.30.0..sroa.5.0..sroa_idx.i.sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(64) %i.l, i64 64, i1 false), !noalias !531
  %.sroa.31.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 5136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.31.0..sroa.5.0..sroa_idx.i.sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !531
  %.sroa.32.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 5160
  store i8 1, ptr %.sroa.32.0..sroa.5.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !543
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.29.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !530
  %i.ey = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr %i.ew, ptr %i.ey, align 8, !noalias !530
  store i64 0, ptr %i.k, align 8, !noalias !530
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !530
  store i64 2, ptr %i.ew, align 16, !noalias !531
  store ptr %i.ew, ptr %i.j, align 8, !noalias !530
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !530
  store i8 -1, ptr %i.a, align 1, !noalias !530
  %i.ez = atomicrmw add ptr %.sroa.22.0..sroa.5.0..sroa_idx.i.sroa_idx.i, i8 1 monotonic, align 1, !noalias !531 ; 0 uses
  call void @_RINvMs0_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB6_14ContainerStateNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config17publish_subscribe17SubscriberDetailsE8for_eachNCNvMs1_NtNtB1u_4port9publisherINtB39_20PublisherSharedStateNtNtB1s_3ipc7ServiceE24force_update_connections0ECsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sroa.30.0..sroa.5.0..sroa_idx.i.sroa_idx.i, ptr noundef nonnull align 16 %.sroa.5.0..sroa_idx.i.i, ptr noalias nofree noundef nonnull dereferenceable(1) %i.a) #25, !noalias !531
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service3ipc7ServiceE30finish_update_connection_cycleCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 16 %.sroa.5.0..sroa_idx.i.i) #25, !noalias !531
  %i.fa = load i8, ptr %i.a, align 1, !range !23, !noalias !530, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !530
  %.not92.i = icmp eq i8 %i.fa, -1
  br i1 %.not92.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service3ipc7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCsadSKrpJ73hd_12iox2_service.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !530
  store i8 %i.fa, ptr %i.i, align 1, !noalias !530
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !530
  store ptr %i.k, ptr %i.h, align 8, !noalias !530
  %.sroa.472.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXsq_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service3ipc7ServiceNtNtNtCslR0xdO7Fetl_27iceoryx2_services_discovery17service_discovery7service9DiscoveryuENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.472.0..sroa_idx.i, align 8, !noalias !530
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !530
  store ptr %i.i, ptr %i.g, align 8, !noalias !530
  %.sroa.476.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXsn_NtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connectionNtB5_21ZeroCopyCreationErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.476.0..sroa_idx.i, align 8, !noalias !530
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 3, ptr noundef nonnull @5, ptr noundef nonnull %i.h, ptr noundef nonnull @89, ptr noundef nonnull %i.g) #25, !noalias !531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !530
  %i.fb = load i64, ptr %i.ew, align 16, !noalias !544, !noundef !5
  %i.fc = add i64 %i.fb, -1                       ; 2 uses
  store i64 %i.fc, ptr %i.ew, align 16, !noalias !544
  %i.fd = icmp eq i64 %i.fc, 0
  br i1 %i.fd, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1V_7service3ipc7ServiceEEECsadSKrpJ73hd_12iox2_service.exit.sink.split.i, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1V_7service3ipc7ServiceEEECsadSKrpJ73hd_12iox2_service.exit.i

bb.t:                                             ; preds = %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service3ipc7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCsadSKrpJ73hd_12iox2_service.exit.i
  %i.fe = load i64, ptr %i.ew, align 16, !noalias !545, !noundef !5
  %i.ff = add i64 %i.fe, -1                       ; 2 uses
  store i64 %i.ff, ptr %i.ew, align 16, !noalias !545
  %i.fg = icmp eq i64 %i.ff, 0
  br i1 %i.fg, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1V_7service3ipc7ServiceEEECsadSKrpJ73hd_12iox2_service.exit.sink.split.i, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1V_7service3ipc7ServiceEEECsadSKrpJ73hd_12iox2_service.exit.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1V_7service3ipc7ServiceEEECsadSKrpJ73hd_12iox2_service.exit.sink.split.i: ; preds = %bb.t, %bb.s
  call void @_RNvMs6_NtCsbqH9stoieM8_5alloc2rcINtB5_2RcINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtBK_7service3ipc7ServiceEE9drop_slowCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.j) #24, !noalias !531
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1V_7service3ipc7ServiceEEECsadSKrpJ73hd_12iox2_service.exit.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1V_7service3ipc7ServiceEEECsadSKrpJ73hd_12iox2_service.exit.i: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1V_7service3ipc7ServiceEEECsadSKrpJ73hd_12iox2_service.exit.sink.split.i, %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !530
  fence syncscope("singlethread") seq_cst
  %.val99.i = load ptr, ptr %i.an, align 8, !noalias !531, !nonnull !5, !noundef !5
  %i.fh = getelementptr inbounds nuw i8, ptr %.val99.i, i64 16
  %i.fi = call noundef nonnull align 8 ptr @_RNvXsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memoryINtB5_7StorageNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config13DynamicConfigEINtB7_14DynamicStorageB1r_E3getCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %i.fh) #25, !noalias !531
  %i.fj = call noundef nonnull align 8 ptr @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_configNtB5_13DynamicConfig17publish_subscribe(ptr noundef nonnull align 8 %i.fi) #25, !noalias !531
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !530
  store i128 %.sroa.019.0.copyload.i, ptr %i.b, align 16, !noalias !530
  %.sroa.7118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.7118.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7118.i, i64 16, i1 false), !noalias !530
  %.sroa.8119.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sroa.0.0.i.i.i, ptr %.sroa.8119.0..sroa_idx.i, align 16, !noalias !530
  %.sroa.9120.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.cf, ptr %.sroa.9120.0..sroa_idx.i, align 8, !noalias !530
  %.sroa.10.0..sroa_idx121.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i32 %..i.i, ptr %.sroa.10.0..sroa_idx121.i, align 16, !noalias !530
  %.sroa.11.0..sroa_idx122.i = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  store i8 %i.de, ptr %.sroa.11.0..sroa_idx122.i, align 4, !noalias !530
  call void @_RNvMNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config17publish_subscribeNtB2_13DynamicConfig16add_publisher_id(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noundef nonnull align 8 %i.fj, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(56) %i.b) #25, !noalias !531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !530
  %i.fk = load i64, ptr %i.f, align 8, !range !13, !noalias !530, !noundef !5
  %i.fl = trunc nuw i64 %i.fk to i1
  br i1 %i.fl, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1V_7service3ipc7ServiceEEECsadSKrpJ73hd_12iox2_service.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !530
  %.sroa.016.0.copyload17 = load i64, ptr %i.k, align 8, !noalias !529 ; 2 uses
  %.sroa.9.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.9.0.copyload19 = load i8, ptr %.sroa.9.0..sroa_idx18, align 8, !noalias !529 ; 2 uses
  %.sroa.13.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.k, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.13, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.13.0..sroa_idx20, i64 31, i1 false), !noalias !529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !530
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7118.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !530
  call void @llvm.experimental.noalias.scope.decl(metadata !546)
  call void @llvm.experimental.noalias.scope.decl(metadata !547)
  call void @llvm.experimental.noalias.scope.decl(metadata !548)
  %i.fm = load ptr, ptr %i.bp, align 16, !alias.scope !549, !align !6, !noundef !5 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fn = load ptr, ptr %i.fm, align 8, !noalias !550, !nonnull !5, !noundef !5
  call void %i.fn(ptr noundef nonnull align 16 dereferenceable(48) %i.bo) #25, !noalias !531, !inline_history !519
  br label %_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service3ipc7ServiceNtNtNtCslR0xdO7Fetl_27iceoryx2_services_discovery17service_discovery7service9DiscoveryuE3newCsadSKrpJ73hd_12iox2_service.exit

bb.w:                                             ; preds = %bb.u
  %.val.i.i.i.i = load ptr, ptr %i.bo, align 16, !alias.scope !549 ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ag, i64 120
  %.val1.i.i.i.i = load ptr, ptr %i.fo, align 8, !alias.scope !549, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.fp = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !5, !noalias !550 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fp, null
  br i1 %.not.i.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  call void %i.fp(ptr noundef nonnull %.val.i.i.i.i) #23, !noalias !550, !inline_history !520
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.fq = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.fr = load i64, ptr %i.fq, align 8, !range !17, !invariant.load !5, !noalias !550 ; 2 uses
  %i.fs = icmp eq i64 %i.fr, 0
  br i1 %i.fs, label %_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service3ipc7ServiceNtNtNtCslR0xdO7Fetl_27iceoryx2_services_discovery17service_discovery7service9DiscoveryuE3newCsadSKrpJ73hd_12iox2_service.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  %i.ft = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.fu = load i64, ptr %i.ft, align 8, !range !7, !invariant.load !5, !noalias !550
  call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.fr, i64 noundef range(i64 1, 536870913) %i.fu) #25, !noalias !550
  br label %_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service3ipc7ServiceNtNtNtCslR0xdO7Fetl_27iceoryx2_services_discovery17service_discovery7service9DiscoveryuE3newCsadSKrpJ73hd_12iox2_service.exit

bb.aa:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1V_7service3ipc7ServiceEEECsadSKrpJ73hd_12iox2_service.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !530
  store ptr %i.ae, ptr %i.e, align 8, !noalias !530
  %.sroa.480.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.480.0..sroa_idx.i, align 8, !noalias !530
  %.val96.i = load ptr, ptr %i.an, align 8, !noalias !531, !nonnull !5, !noundef !5
  %i.fv = getelementptr inbounds nuw i8, ptr %.val96.i, i64 2248
  %i.fw = call noundef nonnull align 8 ptr @_RNvMNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_configNtB2_12StaticConfig17publish_subscribe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(5032) %i.fv) #25, !noalias !531
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !530
  store ptr %i.af, ptr %i.d, align 8, !noalias !530
  %.sroa.484.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.484.0..sroa_idx.i, align 8, !noalias !530
  %i.fy = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.fx, ptr %i.fy, align 8, !noalias !530
  %.sroa.488.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.488.0..sroa_idx.i, align 8, !noalias !530
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @5, ptr noundef nonnull %i.e, ptr noundef nonnull @90, ptr noundef nonnull %i.d) #25, !noalias !531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !530
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher9PublisherNtNtNtBI_7service3ipc7ServiceNtNtNtCslR0xdO7Fetl_27iceoryx2_services_discovery17service_discovery7service9DiscoveryuEECsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 8 dereferenceable(40) %i.k) #25, !noalias !531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !530
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7118.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !530
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECsadSKrpJ73hd_12iox2_service.exit.i

bb.ab:                                            ; preds = %bb.i
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segment11DataSegmentNtNtNtB16_7service3ipc7ServiceENtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory23SharedMemoryCreateErrorEECsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 8 dereferenceable(2488) %i.u) #25, !noalias !531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !530
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @91) #26, !noalias !531
  unreachable

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECsadSKrpJ73hd_12iox2_service.exit.i: ; preds = %bb.ai, %bb.ah, %bb.aa
  %.sroa.9.0 = phi i8 [ %.sroa.9.1, %bb.ah ], [ %.sroa.9.1, %bb.ai ], [ 0, %bb.aa ]
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ag, i64 112 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !551)
  call void @llvm.experimental.noalias.scope.decl(metadata !552)
  call void @llvm.experimental.noalias.scope.decl(metadata !553)
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ag, i64 144
  %i.gb = load ptr, ptr %i.ga, align 16, !alias.scope !554, !align !6, !noundef !5 ; 2 uses
  %.not.i.i.i112.i = icmp eq ptr %i.gb, null
  br i1 %.not.i.i.i112.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECsadSKrpJ73hd_12iox2_service.exit.i
  %i.gc = load ptr, ptr %i.gb, align 8, !noalias !555, !nonnull !5, !noundef !5
  call void %i.gc(ptr noundef nonnull align 16 dereferenceable(48) %i.fz) #25, !noalias !531, !inline_history !519
  br label %_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service3ipc7ServiceNtNtNtCslR0xdO7Fetl_27iceoryx2_services_discovery17service_discovery7service9DiscoveryuE3newCsadSKrpJ73hd_12iox2_service.exit.thread

bb.ad:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECsadSKrpJ73hd_12iox2_service.exit.i
  %.val.i.i.i113.i = load ptr, ptr %i.fz, align 16, !alias.scope !554 ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ag, i64 120
  %.val1.i.i.i114.i = load ptr, ptr %i.gd, align 8, !alias.scope !554, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.ge = load ptr, ptr %.val1.i.i.i114.i, align 8, !invariant.load !5, !noalias !555 ; 2 uses
  %.not.i.i.i.i115.i = icmp eq ptr %i.ge, null
  br i1 %.not.i.i.i.i115.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i113.i) ]
  call void %i.ge(ptr noundef nonnull %.val.i.i.i113.i) #23, !noalias !555, !inline_history !520
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.gf = getelementptr inbounds nuw i8, ptr %.val1.i.i.i114.i, i64 8
  %i.gg = load i64, ptr %i.gf, align 8, !range !17, !invariant.load !5, !noalias !555 ; 2 uses
  %i.gh = icmp eq i64 %i.gg, 0
  br i1 %i.gh, label %_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service3ipc7ServiceNtNtNtCslR0xdO7Fetl_27iceoryx2_services_discovery17service_discovery7service9DiscoveryuE3newCsadSKrpJ73hd_12iox2_service.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i113.i) ]
  %i.gi = getelementptr inbounds nuw i8, ptr %.val1.i.i.i114.i, i64 16
  %i.gj = load i64, ptr %i.gi, align 8, !range !7, !invariant.load !5, !noalias !555
  call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i113.i, i64 noundef range(i64 1, -9223372036854775808) %i.gg, i64 noundef range(i64 1, 536870913) %i.gj) #25, !noalias !555
  br label %_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service3ipc7ServiceNtNtNtCslR0xdO7Fetl_27iceoryx2_services_discovery17service_discovery7service9DiscoveryuE3newCsadSKrpJ73hd_12iox2_service.exit.thread

bb.ah:                                            ; preds = %.thread.i, %bb.a
  %.sroa.9.1 = phi i8 [ 3, %bb.a ], [ 1, %.thread.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !530
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  call void @_RNvXNvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.gk) #25, !noalias !531
  %i.gl = load i128, ptr %i.ag, align 16, !range !14, !alias.scope !556, !noundef !5
  %i.gm = icmp eq i128 %i.gl, 0
  br i1 %i.gm, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECsadSKrpJ73hd_12iox2_service.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  call void @_RNvXNvNtCsg6ZEkMtNi4J_8iceoryx24port1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.gn) #25, !noalias !531
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECsadSKrpJ73hd_12iox2_service.exit.i

_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service3ipc7ServiceNtNtNtCslR0xdO7Fetl_27iceoryx2_services_discovery17service_discovery7service9DiscoveryuE3newCsadSKrpJ73hd_12iox2_service.exit.thread: ; preds = %bb.af, %bb.ag, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.57.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.aj

_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service3ipc7ServiceNtNtNtCslR0xdO7Fetl_27iceoryx2_services_discovery17service_discovery7service9DiscoveryuE3newCsadSKrpJ73hd_12iox2_service.exit: ; preds = %bb.v, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.57.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %.not = icmp eq i64 %.sroa.016.0.copyload17, 2
  br i1 %.not, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service3ipc7ServiceNtNtNtCslR0xdO7Fetl_27iceoryx2_services_discovery17service_discovery7service9DiscoveryuE3newCsadSKrpJ73hd_12iox2_service.exit.thread, %_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service3ipc7ServiceNtNtNtCslR0xdO7Fetl_27iceoryx2_services_discovery17service_discovery7service9DiscoveryuE3newCsadSKrpJ73hd_12iox2_service.exit
  %.sroa.9.225 = phi i8 [ %.sroa.9.0, %_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service3ipc7ServiceNtNtNtCslR0xdO7Fetl_27iceoryx2_services_discovery17service_discovery7service9DiscoveryuE3newCsadSKrpJ73hd_12iox2_service.exit.thread ], [ %.sroa.9.0.copyload19, %_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service3ipc7ServiceNtNtNtCslR0xdO7Fetl_27iceoryx2_services_discovery17service_discovery7service9DiscoveryuE3newCsadSKrpJ73hd_12iox2_service.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store ptr %i.aj, ptr %i.ah, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr @_RNvXsr_NtCsbqH9stoieM8_5alloc6stringNtB5_6StringNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.411.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @5, ptr noundef nonnull %i.ah, ptr noundef nonnull @41, ptr noundef nonnull inttoptr (i64 73 to ptr)) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.9.225, ptr %i.go, align 8
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  br label %bb.al

bb.ak:                                            ; preds = %_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service3ipc7ServiceNtNtNtCslR0xdO7Fetl_27iceoryx2_services_discovery17service_discovery7service9DiscoveryuE3newCsadSKrpJ73hd_12iox2_service.exit
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.13, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  store i64 %.sroa.016.0.copyload17, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.9.0.copyload19, ptr %.sroa.2.0..sroa_idx, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj) #25
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory9publisherINtB5_20PortFactoryPublisherNtNtB9_3ipc7ServiceSNtNtB9_7builder19CustomPayloadMarkerNtB1S_18CustomHeaderMarkerE3newCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([192 x i8]) align 16 captures(none) dereferenceable(192) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7280
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.e = load i8, ptr %i.d, align 8, !range !10, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.g = load i64, ptr %i.f, align 8, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 178
  %i.i = load i8, ptr %i.h, align 2, !range !8, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_RNvMs6_NtCsg6ZEkMtNi4J_8iceoryx24portINtB5_18DegradationHandlerKj18_E8new_with(ptr noalias nofree noundef nonnull sret([48 x i8]) align 16 captures(none) dereferenceable(48) %i.j, i8 noundef 1) #25
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %i.g, ptr %i.k, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 %i.e, ptr %.sroa.5.0..sroa_idx, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 177
  store i8 %i.i, ptr %.sroa.6.0..sroa_idx, align 1
  store i128 0, ptr %0, align 16
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr @12, ptr %.sroa.45.0..sroa_idx, align 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %1, ptr %i.l, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory9publisherINtB5_20PortFactoryPublisherNtNtB9_3ipc7ServiceSNtNtB9_7builder19CustomPayloadMarkerNtB1S_18CustomHeaderMarkerE6createCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 16 captures(address) dead_on_return dereferenceable(192) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [1 x i8], align 1                 ; 5 uses
  %i.b = alloca [56 x i8], align 16               ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [1 x i8], align 1                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [40 x i8], align 8                ; 11 uses
  %.sroa.57.sroa.0.i = alloca [24 x i8], align 8  ; 5 uses
  %i.l = alloca [64 x i8], align 16               ; 5 uses
  %i.m = alloca [24 x i8], align 16               ; 5 uses
  %i.n = alloca [64 x i8], align 16               ; 4 uses
  %i.o = alloca [48 x i8], align 16               ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [32 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 8 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.03.i = alloca [64 x i8], align 16        ; 5 uses
  %.sroa.5.i = alloca [48 x i8], align 16         ; 5 uses
  %i.t = alloca [2488 x i8], align 16             ; 8 uses
  %.sroa.7.i = alloca [24 x i8], align 8          ; 5 uses
  %.sroa.8.i = alloca [24 x i8], align 16         ; 5 uses
  %.sroa.9.i = alloca [888 x i8], align 8         ; 5 uses
  %.sroa.29.i = alloca [1367 x i8], align 1       ; 4 uses
  %i.u = alloca [2488 x i8], align 8              ; 6 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [264 x i8], align 8               ; 7 uses
  %.sroa.7118.i = alloca [16 x i8], align 8       ; 6 uses
  %i.y = alloca [32 x i8], align 8                ; 7 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [1 x i8], align 1                ; 4 uses
  %i.ab = alloca [1360 x i8], align 8             ; 7 uses
  %i.ac = alloca [1360 x i8], align 8             ; 9 uses
  %i.ad = alloca [16 x i8], align 16              ; 6 uses
  %i.ae = alloca [16 x i8], align 8               ; 9 uses
  %i.af = alloca [16 x i8], align 8               ; 9 uses
  %i.ag = alloca [192 x i8], align 16             ; 21 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %.sroa.13 = alloca [31 x i8], align 1           ; 5 uses
  %i.ai = alloca [16 x i8], align 8               ; 5 uses
  %i.aj = alloca [24 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  store ptr %1, ptr %i.ai, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr @_RNvXs8_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory9publisherINtB5_20PortFactoryPublisherNtNtB9_3ipc7ServiceSNtNtB9_7builder19CustomPayloadMarkerNtB1S_18CustomHeaderMarkerENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.43.0..sroa_idx, align 8
  call void @_RNvNvNtCsbqH9stoieM8_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aj, ptr noundef nonnull @5, ptr noundef nonnull %i.ai) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %i.ag, ptr noundef nonnull align 16 dereferenceable(192) %1, i64 192, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !605)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.57.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !606
  store ptr @87, ptr %i.af, align 8, !noalias !606, !captures !18
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 31, ptr %i.ak, align 8, !noalias !606
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !606
  store ptr @88, ptr %i.ae, align 8, !noalias !606, !captures !18
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 16, ptr %i.al, align 8, !noalias !606
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !606
  call void @_RNvMs2_NtCsg6ZEkMtNi4J_8iceoryx211identifiersNtB5_17UniquePublisherId3new(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.ad) #25, !noalias !606
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 184
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !605, !nonnull !5, !align !6, !noundef !5 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !606
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !606
  %.val95.i = load ptr, ptr %i.an, align 8, !noalias !606, !nonnull !5, !noundef !5
  %i.ao = getelementptr inbounds nuw i8, ptr %.val95.i, i64 7280
  %.sroa.019.0.copyload.i = load i128, ptr %i.ad, align 16, !noalias !606 ; 4 uses
  call void @_RNvMsn_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB5_10SharedNodeNtNtNtB7_7service3ipc7ServiceE15create_port_tagCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull sret([1360 x i8]) align 8 captures(address) dereferenceable(1360) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ao, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 16, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 31, i128 noundef %.sroa.019.0.copyload.i) #25, !noalias !606
  %i.ap = load i64, ptr %i.ab, align 8, !range !16, !noalias !606, !noundef !5
  %i.aq = icmp eq i64 %i.ap, 2
  br i1 %i.aq, label %bb.a, label %bb.b

end_hunk_1
begin_hunk_2_@_RNvMs1_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory9publisherINtB5_20PortFactoryPublisherNtNtB9_3ipc7ServiceSNtNtB9_7builder19CustomPayloadMarkerNtB1S_18CustomHeaderMarkerE6createCsadSKrpJ73hd_12iox2_service:.split
_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit.i: ; preds = %_RNvMs3_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory9publisherINtB5_27PreallocatedSamplesOverrideKj18_E4callCsadSKrpJ73hd_12iox2_service.exit.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.av, i64 336
  %i.ck = load i64, ptr %i.cj, align 8, !alias.scope !613, !noalias !607, !noundef !5
  %i.cl = getelementptr inbounds nuw i8, ptr %i.av, i64 632
  %i.cm = load i64, ptr %i.cl, align 8, !alias.scope !613, !noalias !607, !noundef !5
  %i.cn = getelementptr inbounds nuw i8, ptr %i.av, i64 640
  %i.co = load i64, ptr %i.cn, align 8, !alias.scope !613, !noalias !607, !noundef !5
  %i.cp = getelementptr inbounds nuw i8, ptr %i.av, i64 928
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !613, !noalias !607, !noundef !5
  %i.cr = mul i64 %i.cq, %i.cf
  %i.cs = getelementptr inbounds nuw i8, ptr %i.av, i64 936
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !613, !noalias !607, !noundef !5
  %i.cu = add i64 %i.ck, -2
  %i.cv = add i64 %i.cu, %i.cm
  %i.cw = add i64 %i.cv, %i.co
  %i.cx = add i64 %i.cw, %i.cr
  %i.cy = add i64 %i.cx, %i.ct                    ; 2 uses
  %i.cz = urem i64 %i.cy, %i.ch                   ; 2 uses
  %i.da = icmp eq i64 %i.cz, 0
  %i.db = sub i64 %i.ch, %i.cz
  %i.dc = select i1 %i.da, i64 0, i64 %i.db
  %.sroa.0.0.i.i = add i64 %i.dc, %i.cy           ; 2 uses
  %i.dd = icmp ult i64 %i.ch, -9223372036854775807
  call void @llvm.assume(i1 %i.dd)
  %i.de = call noundef i8 @_RNvMs0_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segmentINtB5_11DataSegmentNtNtNtBb_7service3ipc7ServiceE22max_number_of_segmentsCsadSKrpJ73hd_12iox2_service(i32 noundef %..i.i) #25, !noalias !607 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7118.i)
  %.val94.i = load ptr, ptr %i.an, align 8, !noalias !607, !nonnull !5, !noundef !5
  %i.df = getelementptr inbounds nuw i8, ptr %.val94.i, i64 7280
  %.val101.i = load ptr, ptr %i.df, align 8, !noalias !607, !nonnull !5, !noundef !5 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.val101.i, i64 6312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7118.i, ptr noundef nonnull align 4 dereferenceable(16) %i.dg, i64 16, i1 false), !noalias !607
  %i.dh = getelementptr inbounds nuw i8, ptr %.val101.i, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !606
  call void @_RNvNtNtCsg6ZEkMtNi4J_8iceoryx27service13naming_scheme17data_segment_name(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(none) dereferenceable(264) %i.x, i128 noundef %.sroa.019.0.copyload.i) #25, !noalias !607
  br i1 %i.cc, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit.i
  call void @_RNvMs0_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segmentINtB5_11DataSegmentNtNtNtBb_7service3ipc7ServiceE21create_static_segmentCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull sret([2488 x i8]) align 8 captures(none) dereferenceable(2488) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.x, i64 noundef %i.ch, i64 noundef %.sroa.0.0.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4528) %i.dh, i64 noundef %.sroa.0.0.i.i.i) #25, !noalias !607
  br label %bb.h

bb.g:                                             ; preds = %_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit.i
  %i.di = load i8, ptr %i.ca, align 16, !range !10, !alias.scope !605, !noundef !5
  call void @_RNvMs0_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segmentINtB5_11DataSegmentNtNtNtBb_7service3ipc7ServiceE22create_dynamic_segmentCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull sret([2488 x i8]) align 8 captures(none) dereferenceable(2488) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.x, i64 noundef %i.ch, i64 noundef %.sroa.0.0.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4528) %i.dh, i64 noundef %.sroa.0.0.i.i.i, i8 noundef %i.di) #25, !noalias !607
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.021.0.copyload = load i64, ptr %i.t, align 16, !noalias !606
  %.not.i = icmp eq i64 %.sroa.021.0.copyload, -1
  br i1 %.not.i, label %.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !606
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2488) %i.u, ptr noundef nonnull align 16 dereferenceable(2488) %i.t, i64 2488, i1 false), !noalias !606
  %i.dj = load i64, ptr %i.u, align 8, !range !15, !noalias !606, !noundef !5
  %i.dk = icmp eq i64 %i.dj, -1
  br i1 %i.dk, label %bb.ab, label %bb.j, !prof !12

.thread.i:                                        ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !606
  store ptr %i.ae, ptr %i.w, align 8, !noalias !606
  %.sroa.437.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.437.0..sroa_idx.i, align 8, !noalias !606
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !606
  store ptr %i.af, ptr %i.v, align 8, !noalias !606
  %.sroa.441.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.441.0..sroa_idx.i, align 8, !noalias !606
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @5, ptr noundef nonnull %i.w, ptr noundef nonnull @92, ptr noundef nonnull %i.v) #25, !noalias !607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !606
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7118.i)
  call void @_RNvXs5_NtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage4fileNtB5_7StorageNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(1360) %i.ac) #25, !noalias !607
  call void @_RNvXs2_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix4fileNtB5_4FileNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(1360) %i.ac) #25, !noalias !607
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ac, i64 272
  call void @_RNvXs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix15file_descriptorNtB5_14FileDescriptorNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(8) %i.dl) #25, !noalias !607
  br label %bb.ah

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !606
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.29.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !606
  %i.dm = zext i8 %i.de to i64                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !606
  call void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.dm, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32) #25, !noalias !607
  %i.dn = load i64, ptr %i.c, align 8, !range !13, !noalias !606, !noundef !5
  %i.do = trunc nuw i64 %i.dn to i1
  %i.dp = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.dq = load i64, ptr %i.dp, align 8, !range !21, !noalias !606, !noundef !5 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.do, label %bb.k, label %bb.l, !prof !12

bb.k:                                             ; preds = %bb.j
  %i.ds = load i64, ptr %i.dr, align 8, !noalias !606
  call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %i.dq, i64 %i.ds) #27, !noalias !607
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.dt = load ptr, ptr %i.dr, align 8, !noalias !606, !nonnull !5, !noundef !5
  %i.du = icmp samesign uge i64 %i.dq, %i.dm
  call void @llvm.assume(i1 %i.du)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !606
  store i64 %i.dq, ptr %i.r, align 8, !noalias !606
  %i.dv = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  store ptr %i.dt, ptr %i.dv, align 8, !noalias !606
  %i.dw = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  store i64 0, ptr %i.dw, align 8, !noalias !606
  %.not139.i = icmp eq i8 %i.de, 0
  br i1 %.not139.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCsadSKrpJ73hd_12iox2_service.exit.i, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !606
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !606
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.dy = load i64, ptr %i.dx, align 8, !noalias !607, !noundef !5
  call void @_RNvXNtNtCsbqH9stoieM8_5alloc3vec14spec_from_iterINtB4_3VecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtCs8Chj7Szqq0n_4core6option6OptionINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender10ConnectionNtNtNtB2E_7service3ipc7ServiceEEEEINtB2_12SpecFromIterBU_INtNtNtNtB1Y_4iter8adapters3map3MapINtNtNtB1Y_3ops5range5RangejENCNvMs6_NtB2C_9publisherINtB5C_9PublisherB3x_SNtNtB3B_7builder19CustomPayloadMarkerNtB6g_18CustomHeaderMarkerE3new0EE9from_iterCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, i64 noundef 0, i64 noundef %i.dy) #25, !noalias !607
  %.val.i = load ptr, ptr %i.an, align 8, !noalias !607, !nonnull !5, !noundef !5
  %i.dz = getelementptr inbounds nuw i8, ptr %.val.i, i64 7280
  %.val105.i = load ptr, ptr %i.dz, align 8, !noalias !607, !nonnull !5, !noundef !5 ; 2 uses
  %i.ea = atomicrmw add ptr %.val105.i, i64 1 monotonic, align 8, !noalias !607
  %i.eb = icmp slt i64 %i.ea, 0
  br i1 %i.eb, label %bb.m, label %_RNvXs1v_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB6_10SharedNodeNtNtNtB8_7service3ipc7ServiceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCsadSKrpJ73hd_12iox2_service.exit.i

bb.m:                                             ; preds = %._crit_edge.i
  call void @llvm.trap()
  unreachable

_RNvXs1v_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB6_10SharedNodeNtNtNtB8_7service3ipc7ServiceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCsadSKrpJ73hd_12iox2_service.exit.i: ; preds = %._crit_edge.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ed = load <2 x i64>, ptr %i.ec, align 8, !noalias !607
  %i.ee = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.ef = load i8, ptr %i.ee, align 8, !range !8, !noalias !607, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.o, ptr noundef nonnull align 16 dereferenceable(48) %i.eg, i64 48, i1 false), !noalias !607
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.n, ptr noundef nonnull align 16 dereferenceable(192) %i.ag, i64 64, i1 false), !noalias !607
  %.val106.i = load ptr, ptr %i.an, align 8, !noalias !607, !nonnull !5, !noundef !5 ; 2 uses
  %i.eh = atomicrmw add ptr %.val106.i, i64 1 monotonic, align 8, !noalias !607
  %i.ei = icmp slt i64 %i.eh, 0
  br i1 %i.ei, label %bb.n, label %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_3ipc7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCsadSKrpJ73hd_12iox2_service.exit.i

bb.n:                                             ; preds = %_RNvXs1v_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB6_10SharedNodeNtNtNtB8_7service3ipc7ServiceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCsadSKrpJ73hd_12iox2_service.exit.i
  call void @llvm.trap()
  unreachable

_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_3ipc7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCsadSKrpJ73hd_12iox2_service.exit.i: ; preds = %_RNvXs1v_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB6_10SharedNodeNtNtNtB8_7service3ipc7ServiceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCsadSKrpJ73hd_12iox2_service.exit.i
  %i.ej = load i64, ptr %i.bb, align 16, !alias.scope !605, !noundef !5
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ag, i64 177
  %i.el = load i8, ptr %i.ek, align 1, !range !8, !alias.scope !605, !noundef !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(888) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(888) %i.cd, i64 888, i1 false), !noalias !607
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !606
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !606
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.5.i, ptr noundef nonnull align 16 dereferenceable(48) %i.o, i64 48, i1 false), !noalias !606
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.03.i, ptr noundef nonnull align 16 dereferenceable(64) %i.n, i64 64, i1 false), !noalias !606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.m, ptr noundef nonnull align 16 dereferenceable(24) %i.bb, i64 24, i1 false), !noalias !607
  call void @_RNvMs4_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB5_9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config17publish_subscribe17SubscriberDetailsE9get_stateCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.l, ptr noundef nonnull align 8 %i.ay) #25, !noalias !607
  %i.em = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.en = load i64, ptr %i.em, align 8, !noalias !607, !noundef !5 ; 3 uses
  %i.eo = icmp eq i64 %i.en, 0
  br i1 %i.eo, label %bb.q, label %bb.p

.lr.ph.i:                                         ; preds = %bb.l, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCsadSKrpJ73hd_12iox2_service.exit.i
  %.sroa.089.0138.i = phi i8 [ %i.ep, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCsadSKrpJ73hd_12iox2_service.exit.i ], [ 0, %bb.l ]
  %i.ep = add nuw i8 %.sroa.089.0138.i, 1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !606
  call void @_RNvMNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_stateNtB2_12SegmentState3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.q, i64 noundef %.sroa.0.0.i.i.i) #25, !noalias !607
  %i.eq = load i64, ptr %i.dw, align 8, !alias.scope !615, !noalias !606, !noundef !5 ; 3 uses
  %i.er = load i64, ptr %i.r, align 8, !range !17, !alias.scope !615, !noalias !606, !noundef !5
  %i.es = icmp eq i64 %i.eq, %i.er
  br i1 %i.es, label %bb.o, label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCsadSKrpJ73hd_12iox2_service.exit.i

bb.o:                                             ; preds = %.lr.ph.i
  call void @_RNvMs4_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8grow_oneCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r) #24, !noalias !616
  br label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCsadSKrpJ73hd_12iox2_service.exit.i

_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCsadSKrpJ73hd_12iox2_service.exit.i: ; preds = %bb.o, %.lr.ph.i
  %i.et = load ptr, ptr %i.dv, align 8, !alias.scope !615, !noalias !606, !nonnull !5, !noundef !5
  %i.eu = getelementptr inbounds nuw [32 x i8], ptr %i.et, i64 %i.eq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eu, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.q, i64 32, i1 false), !noalias !607
  %i.ev = add i64 %i.eq, 1
  store i64 %i.ev, ptr %i.dw, align 8, !alias.scope !615, !noalias !606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !606
  %exitcond.not.i = icmp eq i8 %i.ep, %i.de
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.p:                                             ; preds = %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_3ipc7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCsadSKrpJ73hd_12iox2_service.exit.i
  call void @_RNvMNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointerINtB2_13OwningPointerINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitNtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher13OffsetAndSizeEE14new_with_allocCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.57.sroa.0.i, i64 noundef %i.en) #25, !noalias !607
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_3ipc7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCsadSKrpJ73hd_12iox2_service.exit.i
  %.sroa.06.0.i = phi i64 [ 1, %bb.p ], [ 0, %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_3ipc7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCsadSKrpJ73hd_12iox2_service.exit.i ]
  %.sroa.29.3696..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.29.i, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1360) %.sroa.29.3696..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(1360) %i.ac, i64 1360, i1 false), !noalias !606
  call void @_RNvCsicpYtSlSgpD_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !617
  %i.ew = call noundef align 16 dereferenceable_or_null(5168) ptr @_RNvCsicpYtSlSgpD_7___rustc12___rust_alloc(i64 noundef range(i64 8, 6417) 5168, i64 noundef range(i64 8, 17) 16) #25, !noalias !617 ; 38 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %bb.r, label %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service3ipc7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCsadSKrpJ73hd_12iox2_service.exit.i, !prof !12

bb.r:                                             ; preds = %bb.q
  call void @_RNvNtCsbqH9stoieM8_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 5168) #27, !noalias !617
  unreachable

_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service3ipc7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCsadSKrpJ73hd_12iox2_service.exit.i: ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ew) ]
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !618
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.03.i, i64 64, i1 false), !noalias !607
  %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 80
  store i128 %.sroa.019.0.copyload.i, ptr %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx.i, align 16, !noalias !619
  %.sroa.5129.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.5129.0..sroa.5.0..sroa_idx.i.sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.5.i, i64 48, i1 false), !noalias !607
  %.sroa.6130.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(2488) %.sroa.6130.0..sroa.5.0..sroa_idx.i.sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(2488) %i.t, i64 2488, i1 false), !noalias !607
  %.sroa.7131.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 2632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7131.0..sroa.5.0..sroa_idx.i.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, i64 24, i1 false), !noalias !607
  %.sroa.8132.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 2656
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.8132.0..sroa.5.0..sroa_idx.i.sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.8.i, i64 24, i1 false), !noalias !607
  %.sroa.9133.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 2680
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(888) %.sroa.9133.0..sroa.5.0..sroa_idx.i.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(888) %.sroa.9.i, i64 888, i1 false), !noalias !607
  %.sroa.10134.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 3568
  store ptr %.val105.i, ptr %.sroa.10134.0..sroa.5.0..sroa_idx.i.sroa_idx.i, align 16, !noalias !619
  %.sroa.11135.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 3576
  store ptr %.val106.i, ptr %.sroa.11135.0..sroa.5.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !619
  %.sroa.12136.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 3584
  store <2 x i64> %i.ed, ptr %.sroa.12136.0..sroa.5.0..sroa_idx.i.sroa_idx.i, align 16, !noalias !619
  %.sroa.14.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 3600
  store i64 %i.ej, ptr %.sroa.14.0..sroa.5.0..sroa_idx.i.sroa_idx.i, align 16, !noalias !619
  %.sroa.15.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 3608
  store i64 %.sroa.0.0.i.i.i, ptr %.sroa.15.0..sroa.5.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !619
  %.sroa.16.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 3616
  store i64 0, ptr %.sroa.16.0..sroa.5.0..sroa_idx.i.sroa_idx.i, align 16, !noalias !619
  %.sroa.17.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 3624
  store i64 1, ptr %.sroa.17.0..sroa.5.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !619
  %.sroa.18.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 3632
  store i64 0, ptr %.sroa.18.0..sroa.5.0..sroa_idx.i.sroa_idx.i, align 16, !noalias !619
  %.sroa.19.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 3640
  store i8 %i.ef, ptr %.sroa.19.0..sroa.5.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !619
  %.sroa.20.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 3641
  store i8 %i.el, ptr %.sroa.20.0..sroa.5.0..sroa_idx.i.sroa_idx.i, align 1, !noalias !619
  %.sroa.21.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 3642
  store i8 %i.de, ptr %.sroa.21.0..sroa.5.0..sroa_idx.i.sroa_idx.i, align 2, !noalias !619
  %.sroa.22.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 3643 ; 2 uses
  store i8 0, ptr %.sroa.22.0..sroa.5.0..sroa_idx.i.sroa_idx.i, align 1, !noalias !619
  %.sroa.23137.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 3648
  store i64 %.sroa.06.0.i, ptr %.sroa.23137.0..sroa.5.0..sroa_idx.i.sroa_idx.i, align 16, !noalias !619
  %.sroa.24.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 3656
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.24.0..sroa.5.0..sroa_idx.i.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.57.sroa.0.i, i64 24, i1 false), !noalias !607
  %.sroa.25.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 3680
  %.sroa.27.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 3696
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.25.0..sroa.5.0..sroa_idx.i.sroa_idx.i, i8 0, i64 16, i1 false), !noalias !607
  store i64 %i.en, ptr %.sroa.27.0..sroa.5.0..sroa_idx.i.sroa_idx.i, align 16, !noalias !619
  %.sroa.28.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 3704
  store i8 1, ptr %.sroa.28.0..sroa.5.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !619
  %.sroa.29.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 3705
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1367) %.sroa.29.0..sroa.5.0..sroa_idx.i.sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(1367) %.sroa.29.i, i64 1367, i1 false), !noalias !619
  %.sroa.30.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 5072 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.30.0..sroa.5.0..sroa_idx.i.sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(64) %i.l, i64 64, i1 false), !noalias !607
  %.sroa.31.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 5136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.31.0..sroa.5.0..sroa_idx.i.sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !607
  %.sroa.32.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 5160
  store i8 1, ptr %.sroa.32.0..sroa.5.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !619
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.29.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !606
  %i.ey = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr %i.ew, ptr %i.ey, align 8, !noalias !606
  store i64 0, ptr %i.k, align 8, !noalias !606
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !606
  store i64 2, ptr %i.ew, align 16, !noalias !607
  store ptr %i.ew, ptr %i.j, align 8, !noalias !606
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !606
  store i8 -1, ptr %i.a, align 1, !noalias !606
  %i.ez = atomicrmw add ptr %.sroa.22.0..sroa.5.0..sroa_idx.i.sroa_idx.i, i8 1 monotonic, align 1, !noalias !607 ; 0 uses
  call void @_RINvMs0_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB6_14ContainerStateNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config17publish_subscribe17SubscriberDetailsE8for_eachNCNvMs1_NtNtB1u_4port9publisherINtB39_20PublisherSharedStateNtNtB1s_3ipc7ServiceE24force_update_connections0ECsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sroa.30.0..sroa.5.0..sroa_idx.i.sroa_idx.i, ptr noundef nonnull align 16 %.sroa.5.0..sroa_idx.i.i, ptr noalias nofree noundef nonnull dereferenceable(1) %i.a) #25, !noalias !607
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service3ipc7ServiceE30finish_update_connection_cycleCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 16 %.sroa.5.0..sroa_idx.i.i) #25, !noalias !607
  %i.fa = load i8, ptr %i.a, align 1, !range !23, !noalias !606, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !606
  %.not92.i = icmp eq i8 %i.fa, -1
  br i1 %.not92.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service3ipc7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCsadSKrpJ73hd_12iox2_service.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !606
  store i8 %i.fa, ptr %i.i, align 1, !noalias !606
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !606
  store ptr %i.k, ptr %i.h, align 8, !noalias !606
  %.sroa.472.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXsq_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service3ipc7ServiceSNtNtB15_7builder19CustomPayloadMarkerNtB1x_18CustomHeaderMarkerENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.472.0..sroa_idx.i, align 8, !noalias !606
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !606
  store ptr %i.i, ptr %i.g, align 8, !noalias !606
  %.sroa.476.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXsn_NtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connectionNtB5_21ZeroCopyCreationErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.476.0..sroa_idx.i, align 8, !noalias !606
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 3, ptr noundef nonnull @5, ptr noundef nonnull %i.h, ptr noundef nonnull @89, ptr noundef nonnull %i.g) #25, !noalias !607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !606
  %i.fb = load i64, ptr %i.ew, align 16, !noalias !620, !noundef !5
  %i.fc = add i64 %i.fb, -1                       ; 2 uses
  store i64 %i.fc, ptr %i.ew, align 16, !noalias !620
  %i.fd = icmp eq i64 %i.fc, 0
  br i1 %i.fd, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1V_7service3ipc7ServiceEEECsadSKrpJ73hd_12iox2_service.exit.sink.split.i, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1V_7service3ipc7ServiceEEECsadSKrpJ73hd_12iox2_service.exit.i

bb.t:                                             ; preds = %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service3ipc7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCsadSKrpJ73hd_12iox2_service.exit.i
  %i.fe = load i64, ptr %i.ew, align 16, !noalias !621, !noundef !5
  %i.ff = add i64 %i.fe, -1                       ; 2 uses
  store i64 %i.ff, ptr %i.ew, align 16, !noalias !621
  %i.fg = icmp eq i64 %i.ff, 0
  br i1 %i.fg, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1V_7service3ipc7ServiceEEECsadSKrpJ73hd_12iox2_service.exit.sink.split.i, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1V_7service3ipc7ServiceEEECsadSKrpJ73hd_12iox2_service.exit.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1V_7service3ipc7ServiceEEECsadSKrpJ73hd_12iox2_service.exit.sink.split.i: ; preds = %bb.t, %bb.s
  call void @_RNvMs6_NtCsbqH9stoieM8_5alloc2rcINtB5_2RcINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtBK_7service3ipc7ServiceEE9drop_slowCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.j) #24, !noalias !607
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1V_7service3ipc7ServiceEEECsadSKrpJ73hd_12iox2_service.exit.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1V_7service3ipc7ServiceEEECsadSKrpJ73hd_12iox2_service.exit.i: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1V_7service3ipc7ServiceEEECsadSKrpJ73hd_12iox2_service.exit.sink.split.i, %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !606
  fence syncscope("singlethread") seq_cst
  %.val99.i = load ptr, ptr %i.an, align 8, !noalias !607, !nonnull !5, !noundef !5
  %i.fh = getelementptr inbounds nuw i8, ptr %.val99.i, i64 16
  %i.fi = call noundef nonnull align 8 ptr @_RNvXsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memoryINtB5_7StorageNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config13DynamicConfigEINtB7_14DynamicStorageB1r_E3getCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %i.fh) #25, !noalias !607
  %i.fj = call noundef nonnull align 8 ptr @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_configNtB5_13DynamicConfig17publish_subscribe(ptr noundef nonnull align 8 %i.fi) #25, !noalias !607
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !606
  store i128 %.sroa.019.0.copyload.i, ptr %i.b, align 16, !noalias !606
  %.sroa.7118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.7118.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7118.i, i64 16, i1 false), !noalias !606
  %.sroa.8119.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sroa.0.0.i.i.i, ptr %.sroa.8119.0..sroa_idx.i, align 16, !noalias !606
  %.sroa.9120.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.cf, ptr %.sroa.9120.0..sroa_idx.i, align 8, !noalias !606
  %.sroa.10.0..sroa_idx121.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i32 %..i.i, ptr %.sroa.10.0..sroa_idx121.i, align 16, !noalias !606
  %.sroa.11.0..sroa_idx122.i = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  store i8 %i.de, ptr %.sroa.11.0..sroa_idx122.i, align 4, !noalias !606
  call void @_RNvMNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config17publish_subscribeNtB2_13DynamicConfig16add_publisher_id(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noundef nonnull align 8 %i.fj, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(56) %i.b) #25, !noalias !607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !606
  %i.fk = load i64, ptr %i.f, align 8, !range !13, !noalias !606, !noundef !5
  %i.fl = trunc nuw i64 %i.fk to i1
  br i1 %i.fl, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1V_7service3ipc7ServiceEEECsadSKrpJ73hd_12iox2_service.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !606
  %.sroa.016.0.copyload17 = load i64, ptr %i.k, align 8, !noalias !605 ; 2 uses
  %.sroa.9.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.9.0.copyload19 = load i8, ptr %.sroa.9.0..sroa_idx18, align 8, !noalias !605 ; 2 uses
  %.sroa.13.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.k, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.13, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.13.0..sroa_idx20, i64 31, i1 false), !noalias !605
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !606
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7118.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !606
  call void @llvm.experimental.noalias.scope.decl(metadata !622)
  call void @llvm.experimental.noalias.scope.decl(metadata !623)
  call void @llvm.experimental.noalias.scope.decl(metadata !624)
  %i.fm = load ptr, ptr %i.bp, align 16, !alias.scope !625, !align !6, !noundef !5 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fn = load ptr, ptr %i.fm, align 8, !noalias !626, !nonnull !5, !noundef !5
  call void %i.fn(ptr noundef nonnull align 16 dereferenceable(48) %i.bo) #25, !noalias !607, !inline_history !595
  br label %_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service3ipc7ServiceSNtNtB15_7builder19CustomPayloadMarkerNtB1x_18CustomHeaderMarkerE3newCsadSKrpJ73hd_12iox2_service.exit

bb.w:                                             ; preds = %bb.u
  %.val.i.i.i.i = load ptr, ptr %i.bo, align 16, !alias.scope !625 ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ag, i64 120
  %.val1.i.i.i.i = load ptr, ptr %i.fo, align 8, !alias.scope !625, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.fp = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !5, !noalias !626 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fp, null
  br i1 %.not.i.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  call void %i.fp(ptr noundef nonnull %.val.i.i.i.i) #23, !noalias !626, !inline_history !596
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.fq = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.fr = load i64, ptr %i.fq, align 8, !range !17, !invariant.load !5, !noalias !626 ; 2 uses
  %i.fs = icmp eq i64 %i.fr, 0
  br i1 %i.fs, label %_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service3ipc7ServiceSNtNtB15_7builder19CustomPayloadMarkerNtB1x_18CustomHeaderMarkerE3newCsadSKrpJ73hd_12iox2_service.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  %i.ft = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.fu = load i64, ptr %i.ft, align 8, !range !7, !invariant.load !5, !noalias !626
  call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.fr, i64 noundef range(i64 1, 536870913) %i.fu) #25, !noalias !626
  br label %_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service3ipc7ServiceSNtNtB15_7builder19CustomPayloadMarkerNtB1x_18CustomHeaderMarkerE3newCsadSKrpJ73hd_12iox2_service.exit

bb.aa:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1V_7service3ipc7ServiceEEECsadSKrpJ73hd_12iox2_service.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !606
  store ptr %i.ae, ptr %i.e, align 8, !noalias !606
  %.sroa.480.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.480.0..sroa_idx.i, align 8, !noalias !606
  %.val96.i = load ptr, ptr %i.an, align 8, !noalias !607, !nonnull !5, !noundef !5
  %i.fv = getelementptr inbounds nuw i8, ptr %.val96.i, i64 2248
  %i.fw = call noundef nonnull align 8 ptr @_RNvMNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_configNtB2_12StaticConfig17publish_subscribe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(5032) %i.fv) #25, !noalias !607
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !606
  store ptr %i.af, ptr %i.d, align 8, !noalias !606
  %.sroa.484.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.484.0..sroa_idx.i, align 8, !noalias !606
  %i.fy = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.fx, ptr %i.fy, align 8, !noalias !606
  %.sroa.488.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.488.0..sroa_idx.i, align 8, !noalias !606
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @5, ptr noundef nonnull %i.e, ptr noundef nonnull @90, ptr noundef nonnull %i.d) #25, !noalias !607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !606
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher9PublisherNtNtNtBI_7service3ipc7ServiceSNtNtB1y_7builder19CustomPayloadMarkerNtB20_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 8 dereferenceable(40) %i.k) #25, !noalias !607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !606
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7118.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !606
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECsadSKrpJ73hd_12iox2_service.exit.i

bb.ab:                                            ; preds = %bb.i
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segment11DataSegmentNtNtNtB16_7service3ipc7ServiceENtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory23SharedMemoryCreateErrorEECsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 8 dereferenceable(2488) %i.u) #25, !noalias !607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !606
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @91) #26, !noalias !607
  unreachable

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECsadSKrpJ73hd_12iox2_service.exit.i: ; preds = %bb.ai, %bb.ah, %bb.aa
  %.sroa.9.0 = phi i8 [ %.sroa.9.1, %bb.ah ], [ %.sroa.9.1, %bb.ai ], [ 0, %bb.aa ]
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ag, i64 112 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !627)
  call void @llvm.experimental.noalias.scope.decl(metadata !628)
  call void @llvm.experimental.noalias.scope.decl(metadata !629)
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ag, i64 144
  %i.gb = load ptr, ptr %i.ga, align 16, !alias.scope !630, !align !6, !noundef !5 ; 2 uses
  %.not.i.i.i112.i = icmp eq ptr %i.gb, null
  br i1 %.not.i.i.i112.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECsadSKrpJ73hd_12iox2_service.exit.i
  %i.gc = load ptr, ptr %i.gb, align 8, !noalias !631, !nonnull !5, !noundef !5
  call void %i.gc(ptr noundef nonnull align 16 dereferenceable(48) %i.fz) #25, !noalias !607, !inline_history !595
  br label %_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service3ipc7ServiceSNtNtB15_7builder19CustomPayloadMarkerNtB1x_18CustomHeaderMarkerE3newCsadSKrpJ73hd_12iox2_service.exit.thread

bb.ad:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECsadSKrpJ73hd_12iox2_service.exit.i
  %.val.i.i.i113.i = load ptr, ptr %i.fz, align 16, !alias.scope !630 ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ag, i64 120
  %.val1.i.i.i114.i = load ptr, ptr %i.gd, align 8, !alias.scope !630, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.ge = load ptr, ptr %.val1.i.i.i114.i, align 8, !invariant.load !5, !noalias !631 ; 2 uses
  %.not.i.i.i.i115.i = icmp eq ptr %i.ge, null
  br i1 %.not.i.i.i.i115.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i113.i) ]
  call void %i.ge(ptr noundef nonnull %.val.i.i.i113.i) #23, !noalias !631, !inline_history !596
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.gf = getelementptr inbounds nuw i8, ptr %.val1.i.i.i114.i, i64 8
  %i.gg = load i64, ptr %i.gf, align 8, !range !17, !invariant.load !5, !noalias !631 ; 2 uses
  %i.gh = icmp eq i64 %i.gg, 0
  br i1 %i.gh, label %_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service3ipc7ServiceSNtNtB15_7builder19CustomPayloadMarkerNtB1x_18CustomHeaderMarkerE3newCsadSKrpJ73hd_12iox2_service.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i113.i) ]
  %i.gi = getelementptr inbounds nuw i8, ptr %.val1.i.i.i114.i, i64 16
  %i.gj = load i64, ptr %i.gi, align 8, !range !7, !invariant.load !5, !noalias !631
  call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i113.i, i64 noundef range(i64 1, -9223372036854775808) %i.gg, i64 noundef range(i64 1, 536870913) %i.gj) #25, !noalias !631
  br label %_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service3ipc7ServiceSNtNtB15_7builder19CustomPayloadMarkerNtB1x_18CustomHeaderMarkerE3newCsadSKrpJ73hd_12iox2_service.exit.thread

bb.ah:                                            ; preds = %.thread.i, %bb.a
  %.sroa.9.1 = phi i8 [ 3, %bb.a ], [ 1, %.thread.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !606
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  call void @_RNvXNvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.gk) #25, !noalias !607
  %i.gl = load i128, ptr %i.ag, align 16, !range !14, !alias.scope !632, !noundef !5
  %i.gm = icmp eq i128 %i.gl, 0
  br i1 %i.gm, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECsadSKrpJ73hd_12iox2_service.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  call void @_RNvXNvNtCsg6ZEkMtNi4J_8iceoryx24port1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.gn) #25, !noalias !607
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECsadSKrpJ73hd_12iox2_service.exit.i

_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service3ipc7ServiceSNtNtB15_7builder19CustomPayloadMarkerNtB1x_18CustomHeaderMarkerE3newCsadSKrpJ73hd_12iox2_service.exit.thread: ; preds = %bb.af, %bb.ag, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.57.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.aj

_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service3ipc7ServiceSNtNtB15_7builder19CustomPayloadMarkerNtB1x_18CustomHeaderMarkerE3newCsadSKrpJ73hd_12iox2_service.exit: ; preds = %bb.v, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.57.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %.not = icmp eq i64 %.sroa.016.0.copyload17, 2
  br i1 %.not, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service3ipc7ServiceSNtNtB15_7builder19CustomPayloadMarkerNtB1x_18CustomHeaderMarkerE3newCsadSKrpJ73hd_12iox2_service.exit.thread, %_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service3ipc7ServiceSNtNtB15_7builder19CustomPayloadMarkerNtB1x_18CustomHeaderMarkerE3newCsadSKrpJ73hd_12iox2_service.exit
  %.sroa.9.225 = phi i8 [ %.sroa.9.0, %_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service3ipc7ServiceSNtNtB15_7builder19CustomPayloadMarkerNtB1x_18CustomHeaderMarkerE3newCsadSKrpJ73hd_12iox2_service.exit.thread ], [ %.sroa.9.0.copyload19, %_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service3ipc7ServiceSNtNtB15_7builder19CustomPayloadMarkerNtB1x_18CustomHeaderMarkerE3newCsadSKrpJ73hd_12iox2_service.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store ptr %i.aj, ptr %i.ah, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr @_RNvXsr_NtCsbqH9stoieM8_5alloc6stringNtB5_6StringNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.411.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @5, ptr noundef nonnull %i.ah, ptr noundef nonnull @41, ptr noundef nonnull inttoptr (i64 73 to ptr)) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.9.225, ptr %i.go, align 8
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  br label %bb.al

bb.ak:                                            ; preds = %_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service3ipc7ServiceSNtNtB15_7builder19CustomPayloadMarkerNtB1x_18CustomHeaderMarkerE3newCsadSKrpJ73hd_12iox2_service.exit
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.13, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  store i64 %.sroa.016.0.copyload17, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.9.0.copyload19, ptr %.sroa.2.0..sroa_idx, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj) #25
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6serverINtB5_17PortFactoryServerNtNtB9_3ipc7ServiceuuSNtNtB9_13static_config12StaticConfiguE3newCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([240 x i8]) align 16 captures(none) dereferenceable(240) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7280
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 269
  %i.e = load i8, ptr %i.d, align 1, !range !8, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 265
  %i.g = load i8, ptr %i.f, align 1, !range !10, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.i = load i64, ptr %i.h, align 8, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_RNvMs6_NtCsg6ZEkMtNi4J_8iceoryx24portINtB5_18DegradationHandlerKj18_E8new_with(ptr noalias nofree noundef nonnull sret([48 x i8]) align 16 captures(none) dereferenceable(48) %i.j, i8 noundef 1) #25
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_RNvMs6_NtCsg6ZEkMtNi4J_8iceoryx24portINtB5_18DegradationHandlerKj18_E8new_with(ptr noalias nofree noundef nonnull sret([48 x i8]) align 16 captures(none) dereferenceable(48) %i.k, i8 noundef 1) #25
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 1, ptr %i.m, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i8 %i.g, ptr %.sroa.5.0..sroa_idx, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 225
  store i8 %i.e, ptr %.sroa.6.0..sroa_idx, align 1
  store i128 0, ptr %0, align 16
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr @10, ptr %.sroa.45.0..sroa_idx, align 16
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6serverINtB5_17PortFactoryServerNtNtB9_3ipc7ServiceuuSNtNtB9_13static_config12StaticConfiguE6createCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 16 captures(address) dead_on_return dereferenceable(240) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [2 x i8], align 1                 ; 6 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [64 x i8], align 8                ; 10 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [2 x i8], align 1                 ; 5 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 13 uses
  %i.p = alloca [64 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.04.i = alloca [64 x i8], align 16        ; 5 uses
  %.sroa.6.i = alloca [48 x i8], align 16         ; 5 uses
  %i.r = alloca [2488 x i8], align 16             ; 8 uses
  %.sroa.8.i = alloca [24 x i8], align 8          ; 5 uses
  %.sroa.9.i = alloca [24 x i8], align 16         ; 5 uses
  %.sroa.10.i = alloca [888 x i8], align 8        ; 5 uses
  %.sroa.23.i = alloca [1364 x i8], align 4       ; 4 uses
  %.sroa.26.i = alloca [88 x i8], align 8         ; 4 uses
  %.sroa.27.i = alloca [24 x i8], align 16        ; 4 uses
  %i.s = alloca [64 x i8], align 16               ; 4 uses
  %i.t = alloca [48 x i8], align 16               ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [32 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 8 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  %i.y = alloca [2488 x i8], align 8              ; 6 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = alloca [264 x i8], align 8              ; 7 uses
  %i.ac = alloca [32 x i8], align 8               ; 6 uses
  %.sroa.5.i = alloca [32 x i8], align 8          ; 4 uses
  %i.ad = alloca [888 x i8], align 8              ; 4 uses
  %i.ae = alloca [1280 x i8], align 16            ; 23 uses
  %i.af = alloca [32 x i8], align 8               ; 7 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [1 x i8], align 1                ; 4 uses
  %i.ai = alloca [1360 x i8], align 8             ; 7 uses
  %i.aj = alloca [1360 x i8], align 8             ; 10 uses
  %i.ak = alloca [16 x i8], align 16              ; 8 uses
  %i.al = alloca [16 x i8], align 8               ; 10 uses
  %i.am = alloca [16 x i8], align 8               ; 10 uses
  %i.an = alloca [240 x i8], align 16             ; 23 uses
  %i.ao = alloca [16 x i8], align 8               ; 5 uses
  %.sroa.9 = alloca [15 x i8], align 1            ; 5 uses
  %.sroa.13 = alloca [7 x i8], align 1            ; 5 uses
  %i.ap = alloca [16 x i8], align 8               ; 5 uses
  %i.aq = alloca [24 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store ptr %1, ptr %i.ap, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr @_RNvXsg_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6serverINtB5_17PortFactoryServerNtNtB9_3ipc7ServiceuuSNtNtB9_13static_config12StaticConfiguENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.45.0..sroa_idx, align 8
  call void @_RNvNvNtCsbqH9stoieM8_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aq, ptr noundef nonnull @5, ptr noundef nonnull %i.ap) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %i.an, ptr noundef nonnull align 16 dereferenceable(240) %1, i64 240, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !707)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.04.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !708
  store ptr @74, ptr %i.am, align 8, !noalias !708, !captures !18
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 28, ptr %i.ar, align 8, !noalias !708
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !708
  store ptr @75, ptr %i.al, align 8, !noalias !708, !captures !18
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 13, ptr %i.as, align 8, !noalias !708
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !708
  call void @_RNvMs15_NtCsg6ZEkMtNi4J_8iceoryx211identifiersNtB6_14UniqueServerId3new(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.ak) #25, !noalias !708
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 232
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !707, !nonnull !5, !align !6, !noundef !5 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !708
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !708
end_hunk_2
begin_hunk_3_@_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6serverINtB5_17PortFactoryServerNtNtB9_3ipc7ServiceuuSNtNtB9_13static_config12StaticConfiguE6createCsadSKrpJ73hd_12iox2_service:.split
  store ptr %.val93.i, ptr %.sroa.11.0..sroa.5.0..sroa_idx.i111.sroa_idx.i, align 8, !noalias !729
  %.sroa.12.0..sroa.5.0..sroa_idx.i111.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ha, i64 3584
  store i64 %i.gj, ptr %.sroa.12.0..sroa.5.0..sroa_idx.i111.sroa_idx.i, align 16, !noalias !729
  %.sroa.13.0..sroa.5.0..sroa_idx.i111.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ha, i64 3592
  store i64 %i.gl, ptr %.sroa.13.0..sroa.5.0..sroa_idx.i111.sroa_idx.i, align 8, !noalias !729
  %.sroa.14.0..sroa.5.0..sroa_idx.i111.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ha, i64 3600
  store i64 %i.gq, ptr %.sroa.14.0..sroa.5.0..sroa_idx.i111.sroa_idx.i, align 16, !noalias !729
  %.sroa.15.0..sroa.5.0..sroa_idx.i111.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ha, i64 3608
  store i64 %.sroa.0.0.i.i.i, ptr %.sroa.15.0..sroa.5.0..sroa_idx.i111.sroa_idx.i, align 8, !noalias !729
  %.sroa.16.0..sroa.5.0..sroa_idx.i111.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ha, i64 3616
  store i64 0, ptr %.sroa.16.0..sroa.5.0..sroa_idx.i111.sroa_idx.i, align 16, !noalias !729
  %.sroa.17.0..sroa.5.0..sroa_idx.i111.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ha, i64 3624
  store i64 %i.bl, ptr %.sroa.17.0..sroa.5.0..sroa_idx.i111.sroa_idx.i, align 8, !noalias !729
  %.sroa.18.0..sroa.5.0..sroa_idx.i111.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ha, i64 3632
  store i64 -1, ptr %.sroa.18.0..sroa.5.0..sroa_idx.i111.sroa_idx.i, align 16, !noalias !729
  %.sroa.19.0..sroa.5.0..sroa_idx.i111.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ha, i64 3640
  store i8 %i.gs, ptr %.sroa.19.0..sroa.5.0..sroa_idx.i111.sroa_idx.i, align 8, !noalias !729
  %.sroa.20.0..sroa.5.0..sroa_idx.i111.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ha, i64 3641
  store i8 %i.gx, ptr %.sroa.20.0..sroa.5.0..sroa_idx.i111.sroa_idx.i, align 1, !noalias !729
  %.sroa.21.0..sroa.5.0..sroa_idx.i111.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ha, i64 3642
  store i8 %i.eo, ptr %.sroa.21.0..sroa.5.0..sroa_idx.i111.sroa_idx.i, align 2, !noalias !729
  %.sroa.22.0..sroa.5.0..sroa_idx.i111.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ha, i64 3643 ; 2 uses
  store i8 0, ptr %.sroa.22.0..sroa.5.0..sroa_idx.i111.sroa_idx.i, align 1, !noalias !729
  %.sroa.23.0..sroa.5.0..sroa_idx.i111.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ha, i64 3644
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1364) %.sroa.23.0..sroa.5.0..sroa_idx.i111.sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(1364) %.sroa.23.i, i64 1364, i1 false), !noalias !729
  %.sroa.24.0..sroa.5.0..sroa_idx.i111.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ha, i64 5008 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1280) %.sroa.24.0..sroa.5.0..sroa_idx.i111.sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(1280) %i.ae, i64 1280, i1 false), !noalias !709
  %.sroa.25.0..sroa.5.0..sroa_idx.i111.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ha, i64 6288
  store i64 0, ptr %.sroa.25.0..sroa.5.0..sroa_idx.i111.sroa_idx.i, align 16, !noalias !729
  %.sroa.26.0..sroa.5.0..sroa_idx.i111.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ha, i64 6296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.26.0..sroa.5.0..sroa_idx.i111.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.26.i, i64 88, i1 false), !noalias !729
  %.sroa.27.0..sroa.5.0..sroa_idx.i111.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ha, i64 6384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.27.0..sroa.5.0..sroa_idx.i111.sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.27.i, i64 24, i1 false), !noalias !729
  %.sroa.28.0..sroa.5.0..sroa_idx.i111.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ha, i64 6408
  store ptr %.val92.i, ptr %.sroa.28.0..sroa.5.0..sroa_idx.i111.sroa_idx.i, align 8, !noalias !729
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.23.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.26.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.27.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !708
  %i.hj = load i64, ptr %i.bp, align 8, !alias.scope !707, !noundef !5
  %.val83.i = load ptr, ptr %i.au, align 8, !noalias !709, !nonnull !5, !noundef !5
  %i.hk = getelementptr inbounds nuw i8, ptr %.val83.i, i64 2248
  %i.hl = call noundef nonnull align 8 ptr @_RNvMNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_configNtB2_12StaticConfig16request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(5032) %i.hk) #25, !noalias !709
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 2
  %i.hn = load i8, ptr %i.hm, align 2, !range !8, !noalias !709, !noundef !5
  store ptr %i.ha, ptr %i.o, align 8, !noalias !708
  %i.ho = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.hj, ptr %i.ho, align 8, !noalias !708
  %i.hp = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  store i8 %i.hn, ptr %i.hp, align 8, !noalias !708
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !708
  store i64 2, ptr %i.ha, align 16, !noalias !709
  store ptr %i.ha, ptr %i.n, align 8, !noalias !708
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ha, i64 6272
  %i.hr = atomicrmw add ptr %i.hq, i8 1 monotonic, align 1, !noalias !709 ; 0 uses
  %i.hs = atomicrmw add ptr %.sroa.22.0..sroa.5.0..sroa_idx.i111.sroa_idx.i, i8 1 monotonic, align 1, !noalias !709 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !708
  store i8 2, ptr %i.a, align 1, !noalias !708
  %i.ht = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ha, i64 6320
  call void @_RINvMs0_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB6_14ContainerStateNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ClientDetailsE8for_eachNCNvMs0_NtNtB1u_4port6serverINtB34_17SharedServerStateNtNtB1s_3ipc7ServiceE24force_update_connections0ECsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.hu, ptr noundef nonnull align 16 %.sroa.5.0..sroa_idx.i111.i, ptr noalias nofree noundef nonnull dereferenceable(2) %i.a) #25, !noalias !709
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service3ipc7ServiceE30finish_update_connection_cycleCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 16 %.sroa.5.0..sroa_idx.i111.i) #25, !noalias !709
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE30finish_update_connection_cycleCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 16 %.sroa.24.0..sroa.5.0..sroa_idx.i111.sroa_idx.i) #25, !noalias !709
  %i.hv = load i8, ptr %i.a, align 1, !range !10, !noalias !708, !noundef !5 ; 2 uses
  %i.hw = load i8, ptr %i.ht, align 1, !noalias !708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !708
  %.not77.i = icmp eq i8 %i.hv, 2
  br i1 %.not77.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service3ipc7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCsadSKrpJ73hd_12iox2_service.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !708
  store i8 %i.hv, ptr %i.m, align 1, !noalias !708
  %i.hx = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store i8 %i.hw, ptr %i.hx, align 1, !noalias !708
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !708
  store ptr %i.o, ptr %i.l, align 8, !noalias !708
  %.sroa.458.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXsb_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service3ipc7ServiceuuSNtNtBZ_13static_config12StaticConfiguENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.458.0..sroa_idx.i, align 8, !noalias !708
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !708
  store ptr %i.m, ptr %i.k, align 8, !noalias !708
  %.sroa.462.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs2_NtNtCsg6ZEkMtNi4J_8iceoryx24port18update_connectionsNtB5_17ConnectionFailureNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.462.0..sroa_idx.i, align 8, !noalias !708
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 3, ptr noundef nonnull @5, ptr noundef nonnull %i.l, ptr noundef nonnull @78, ptr noundef nonnull %i.k) #25, !noalias !709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !708
  %i.hy = load i64, ptr %i.ha, align 16, !noalias !730, !noundef !5
  %i.hz = add i64 %i.hy, -1                       ; 2 uses
  store i64 %i.hz, ptr %i.ha, align 16, !noalias !730
  %i.ia = icmp eq i64 %i.hz, 0
  br i1 %i.ia, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service3ipc7ServiceEEECsadSKrpJ73hd_12iox2_service.exit.sink.split.i, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service3ipc7ServiceEEECsadSKrpJ73hd_12iox2_service.exit.i

bb.y:                                             ; preds = %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service3ipc7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCsadSKrpJ73hd_12iox2_service.exit.i
  %i.ib = load i64, ptr %i.ha, align 16, !noalias !731, !noundef !5
  %i.ic = add i64 %i.ib, -1                       ; 2 uses
  store i64 %i.ic, ptr %i.ha, align 16, !noalias !731
  %i.id = icmp eq i64 %i.ic, 0
  br i1 %i.id, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service3ipc7ServiceEEECsadSKrpJ73hd_12iox2_service.exit.sink.split.i, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service3ipc7ServiceEEECsadSKrpJ73hd_12iox2_service.exit.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service3ipc7ServiceEEECsadSKrpJ73hd_12iox2_service.exit.sink.split.i: ; preds = %bb.y, %bb.x
  call void @_RNvMs6_NtCsbqH9stoieM8_5alloc2rcINtB5_2RcINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtBK_7service3ipc7ServiceEE9drop_slowCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.n) #24, !noalias !709
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service3ipc7ServiceEEECsadSKrpJ73hd_12iox2_service.exit.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service3ipc7ServiceEEECsadSKrpJ73hd_12iox2_service.exit.i: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service3ipc7ServiceEEECsadSKrpJ73hd_12iox2_service.exit.sink.split.i, %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !708
  fence syncscope("singlethread") seq_cst
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !708
  %.val86.i = load ptr, ptr %i.au, align 8, !noalias !709, !nonnull !5, !noundef !5
  %i.ie = getelementptr inbounds nuw i8, ptr %.val86.i, i64 16
  %i.if = call noundef nonnull align 8 ptr @_RNvXsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memoryINtB5_7StorageNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config13DynamicConfigEINtB7_14DynamicStorageB1r_E3getCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 %i.ie) #25, !noalias !709
  %i.ig = call noundef nonnull align 8 ptr @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_configNtB5_13DynamicConfig16request_response(ptr noundef nonnull align 8 %i.if) #25, !noalias !709
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !708
  %.val.i = load ptr, ptr %i.au, align 8, !noalias !709, !nonnull !5, !noundef !5
  %i.ih = getelementptr inbounds nuw i8, ptr %.val.i, i64 7280
  %.val88.i = load ptr, ptr %i.ih, align 8, !noalias !709, !nonnull !5, !noundef !5
  %i.ii = getelementptr inbounds nuw i8, ptr %.val88.i, i64 6312
  %i.ij = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ij, ptr noundef nonnull align 4 dereferenceable(16) %i.ii, i64 16, i1 false), !noalias !709
  %i.ik = load i64, ptr %i.bo, align 16, !alias.scope !707, !noundef !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 16 dereferenceable(16) %i.ak, i64 16, i1 false), !noalias !708
  %i.il = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 %i.dn, ptr %i.il, align 8, !noalias !708
  %i.im = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 %.sroa.0.0.i.i.i, ptr %i.im, align 8, !noalias !708
  %i.in = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store i64 %i.ik, ptr %i.in, align 8, !noalias !708
  %i.io = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store i32 %..i.i, ptr %i.io, align 8, !noalias !708
  %i.ip = getelementptr inbounds nuw i8, ptr %i.i, i64 60
  store i8 %i.eo, ptr %i.ip, align 4, !noalias !708
  call void @_RNvMNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_responseNtB2_13DynamicConfig13add_server_id(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j, ptr noundef nonnull align 8 %i.ig, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.i) #25, !noalias !709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !708
  %i.iq = load i64, ptr %i.j, align 8, !range !13, !noalias !708, !noundef !5
  %i.ir = trunc nuw i64 %i.iq to i1
  br i1 %i.ir, label %bb.z, label %bb.ag

bb.z:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service3ipc7ServiceEEECsadSKrpJ73hd_12iox2_service.exit.i
  %.val100.i = load ptr, ptr %i.o, align 8, !noalias !708, !nonnull !5, !noundef !5 ; 4 uses
  %i.is = load i64, ptr %.val100.i, align 8, !noalias !709, !noundef !5 ; 3 uses
  %i.it = icmp ne i64 %i.is, 0
  call void @llvm.assume(i1 %i.it)
  %i.iu = add i64 %i.is, 1                        ; 2 uses
  store i64 %i.iu, ptr %.val100.i, align 8, !noalias !709
  %i.iv = icmp eq i64 %i.iu, 0
  br i1 %i.iv, label %bb.aa, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service3ipc7ServiceEEECsadSKrpJ73hd_12iox2_service.exit114.i, !prof !12

bb.aa:                                            ; preds = %bb.z
  call void @llvm.trap()
  unreachable

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service3ipc7ServiceEEECsadSKrpJ73hd_12iox2_service.exit114.i: ; preds = %bb.z
  %i.iw = getelementptr inbounds nuw i8, ptr %.val100.i, i64 6288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.iw, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false), !noalias !709
  store i64 %i.is, ptr %.val100.i, align 16, !noalias !732
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !708
  %.sroa.018.0.copyload19 = load i8, ptr %i.o, align 8, !noalias !707 ; 2 uses
  %.sroa.9.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.9, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.9.0..sroa_idx20, i64 15, i1 false), !noalias !707
  %.sroa.921.0.copyload23 = load i8, ptr %i.hp, align 8, !noalias !707 ; 2 uses
  %.sroa.13.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.o, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.0..sroa_idx24, i64 7, i1 false), !noalias !707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !708
  call void @llvm.experimental.noalias.scope.decl(metadata !733)
  call void @llvm.experimental.noalias.scope.decl(metadata !734)
  call void @llvm.experimental.noalias.scope.decl(metadata !735)
  %i.ix = load ptr, ptr %i.cf, align 16, !alias.scope !736, !align !6, !noundef !5 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ix, null
  br i1 %.not.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service3ipc7ServiceEEECsadSKrpJ73hd_12iox2_service.exit114.i
  %i.iy = load ptr, ptr %i.ix, align 8, !noalias !737, !nonnull !5, !noundef !5
  call void %i.iy(ptr noundef nonnull align 16 dereferenceable(48) %i.ce) #25, !noalias !709, !inline_history !689
  br label %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service3ipc7ServiceuuSNtNtBZ_13static_config12StaticConfiguE3newCsadSKrpJ73hd_12iox2_service.exit

bb.ac:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service3ipc7ServiceEEECsadSKrpJ73hd_12iox2_service.exit114.i
  %.val.i.i.i.i = load ptr, ptr %i.ce, align 16, !alias.scope !736 ; 4 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.an, i64 168
  %.val1.i.i.i.i = load ptr, ptr %i.iz, align 8, !alias.scope !736, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.ja = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !5, !noalias !737 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ja, null
  br i1 %.not.i.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  call void %i.ja(ptr noundef nonnull %.val.i.i.i.i) #23, !noalias !737, !inline_history !690
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.jb = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.jc = load i64, ptr %i.jb, align 8, !range !17, !invariant.load !5, !noalias !737 ; 2 uses
  %i.jd = icmp eq i64 %i.jc, 0
  br i1 %i.jd, label %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service3ipc7ServiceuuSNtNtBZ_13static_config12StaticConfiguE3newCsadSKrpJ73hd_12iox2_service.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  %i.je = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.jf = load i64, ptr %i.je, align 8, !range !7, !invariant.load !5, !noalias !737
  call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.jc, i64 noundef range(i64 1, 536870913) %i.jf) #25, !noalias !737
  br label %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service3ipc7ServiceuuSNtNtBZ_13static_config12StaticConfiguE3newCsadSKrpJ73hd_12iox2_service.exit

bb.ag:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service3ipc7ServiceEEECsadSKrpJ73hd_12iox2_service.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !708
  store ptr %i.al, ptr %i.h, align 8, !noalias !708
  %.sroa.466.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.466.0..sroa_idx.i, align 8, !noalias !708
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !708
  %.val82.i = load ptr, ptr %i.au, align 8, !noalias !709, !nonnull !5, !noundef !5
  %i.jg = getelementptr inbounds nuw i8, ptr %.val82.i, i64 2248
  %i.jh = call noundef nonnull align 8 ptr @_RNvMNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_configNtB2_12StaticConfig16request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(5032) %i.jg) #25, !noalias !709
  %i.ji = getelementptr i8, ptr %i.jh, i64 32
  %.val104.i = load i64, ptr %i.ji, align 8, !noalias !709, !noundef !5
  store i64 %.val104.i, ptr %i.g, align 8, !noalias !708
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !708
  store ptr %i.am, ptr %i.f, align 8, !noalias !708
  %.sroa.470.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.470.0..sroa_idx.i, align 8, !noalias !708
  %i.jj = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.g, ptr %i.jj, align 8, !noalias !708
  %.sroa.474.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.474.0..sroa_idx.i, align 8, !noalias !708
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @5, ptr noundef nonnull %i.h, ptr noundef nonnull @79, ptr noundef nonnull %i.f) #25, !noalias !709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !708
  call void @llvm.experimental.noalias.scope.decl(metadata !738)
  call void @llvm.experimental.noalias.scope.decl(metadata !739)
  call void @llvm.experimental.noalias.scope.decl(metadata !740)
  call void @llvm.experimental.noalias.scope.decl(metadata !741)
  %i.jk = load ptr, ptr %i.o, align 8, !alias.scope !742, !noalias !708, !nonnull !5, !noundef !5 ; 2 uses
  %i.jl = load i64, ptr %i.jk, align 8, !noalias !743, !noundef !5
  %i.jm = add i64 %i.jl, -1                       ; 2 uses
  store i64 %i.jm, ptr %i.jk, align 8, !noalias !743
  %i.jn = icmp eq i64 %i.jm, 0
  br i1 %i.jn, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  call void @_RNvMs6_NtCsbqH9stoieM8_5alloc2rcINtB5_2RcINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtBK_7service3ipc7ServiceEE9drop_slowCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.o) #24, !noalias !709
  br label %bb.aj

bb.ai:                                            ; preds = %bb.o
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segment11DataSegmentNtNtNtB16_7service3ipc7ServiceENtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory23SharedMemoryCreateErrorEECsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 8 dereferenceable(2488) %i.y) #25, !noalias !709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !708
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #26, !noalias !709
  unreachable

bb.aj:                                            ; preds = %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !708
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECsadSKrpJ73hd_12iox2_service.exit.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECsadSKrpJ73hd_12iox2_service.exit.i: ; preds = %bb.aq, %bb.ap, %bb.aj
  %.sroa.018.0 = phi i8 [ %.sroa.018.1, %bb.ap ], [ %.sroa.018.1, %bb.aq ], [ 0, %bb.aj ]
  %i.jo = getelementptr inbounds nuw i8, ptr %i.an, i64 160 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !744)
  call void @llvm.experimental.noalias.scope.decl(metadata !745)
  call void @llvm.experimental.noalias.scope.decl(metadata !746)
  %i.jp = getelementptr inbounds nuw i8, ptr %i.an, i64 192
  %i.jq = load ptr, ptr %i.jp, align 16, !alias.scope !747, !align !6, !noundef !5 ; 2 uses
  %.not.i.i.i115.i = icmp eq ptr %i.jq, null
  br i1 %.not.i.i.i115.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECsadSKrpJ73hd_12iox2_service.exit.i
  %i.jr = load ptr, ptr %i.jq, align 8, !noalias !748, !nonnull !5, !noundef !5
  call void %i.jr(ptr noundef nonnull align 16 dereferenceable(48) %i.jo) #25, !noalias !709, !inline_history !689
  br label %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service3ipc7ServiceuuSNtNtBZ_13static_config12StaticConfiguE3newCsadSKrpJ73hd_12iox2_service.exit.thread

bb.al:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECsadSKrpJ73hd_12iox2_service.exit.i
  %.val.i.i.i116.i = load ptr, ptr %i.jo, align 16, !alias.scope !747 ; 4 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.an, i64 168
  %.val1.i.i.i117.i = load ptr, ptr %i.js, align 8, !alias.scope !747, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.jt = load ptr, ptr %.val1.i.i.i117.i, align 8, !invariant.load !5, !noalias !748 ; 2 uses
  %.not.i.i.i.i118.i = icmp eq ptr %i.jt, null
  br i1 %.not.i.i.i.i118.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i116.i) ]
  call void %i.jt(ptr noundef nonnull %.val.i.i.i116.i) #23, !noalias !748, !inline_history !690
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.ju = getelementptr inbounds nuw i8, ptr %.val1.i.i.i117.i, i64 8
  %i.jv = load i64, ptr %i.ju, align 8, !range !17, !invariant.load !5, !noalias !748 ; 2 uses
  %i.jw = icmp eq i64 %i.jv, 0
  br i1 %i.jw, label %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service3ipc7ServiceuuSNtNtBZ_13static_config12StaticConfiguE3newCsadSKrpJ73hd_12iox2_service.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i116.i) ]
  %i.jx = getelementptr inbounds nuw i8, ptr %.val1.i.i.i117.i, i64 16
  %i.jy = load i64, ptr %i.jx, align 8, !range !7, !invariant.load !5, !noalias !748
  call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i116.i, i64 noundef range(i64 1, -9223372036854775808) %i.jv, i64 noundef range(i64 1, 536870913) %i.jy) #25, !noalias !748
  br label %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service3ipc7ServiceuuSNtNtBZ_13static_config12StaticConfiguE3newCsadSKrpJ73hd_12iox2_service.exit.thread

bb.ap:                                            ; preds = %.thread.i, %bb.a
  %.sroa.018.1 = phi i8 [ 3, %bb.a ], [ 1, %.thread.i ] ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.an, i64 112
  call void @_RNvXNvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.jz) #25, !noalias !709
  %i.ka = load i128, ptr %i.an, align 16, !range !14, !alias.scope !749, !noundef !5
  %i.kb = icmp eq i128 %i.ka, 0
  br i1 %i.kb, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECsadSKrpJ73hd_12iox2_service.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.kc = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  call void @_RNvXNvNtCsg6ZEkMtNi4J_8iceoryx24port1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.kc) #25, !noalias !709
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECsadSKrpJ73hd_12iox2_service.exit.i

_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service3ipc7ServiceuuSNtNtBZ_13static_config12StaticConfiguE3newCsadSKrpJ73hd_12iox2_service.exit.thread: ; preds = %bb.an, %bb.ao, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  br label %bb.ar

_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service3ipc7ServiceuuSNtNtBZ_13static_config12StaticConfiguE3newCsadSKrpJ73hd_12iox2_service.exit: ; preds = %bb.ab, %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  %.not = icmp eq i8 %.sroa.921.0.copyload23, 2
  br i1 %.not, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service3ipc7ServiceuuSNtNtBZ_13static_config12StaticConfiguE3newCsadSKrpJ73hd_12iox2_service.exit.thread, %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service3ipc7ServiceuuSNtNtBZ_13static_config12StaticConfiguE3newCsadSKrpJ73hd_12iox2_service.exit
  %.sroa.018.229 = phi i8 [ %.sroa.018.0, %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service3ipc7ServiceuuSNtNtBZ_13static_config12StaticConfiguE3newCsadSKrpJ73hd_12iox2_service.exit.thread ], [ %.sroa.018.0.copyload19, %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service3ipc7ServiceuuSNtNtBZ_13static_config12StaticConfiguE3newCsadSKrpJ73hd_12iox2_service.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store ptr %i.aq, ptr %i.ao, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr @_RNvXsr_NtCsbqH9stoieM8_5alloc6stringNtB5_6StringNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.413.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @5, ptr noundef nonnull %i.ao, ptr noundef nonnull @42, ptr noundef nonnull inttoptr (i64 67 to ptr)) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  store i8 %.sroa.018.229, ptr %0, align 8
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %i.kd, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  br label %bb.at

bb.as:                                            ; preds = %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service3ipc7ServiceuuSNtNtBZ_13static_config12StaticConfiguE3newCsadSKrpJ73hd_12iox2_service.exit
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.9, i64 15, i1 false)
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.441.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  store i8 %.sroa.018.0.copyload19, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.921.0.copyload23, ptr %.sroa.3.0..sroa_idx, align 8
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq) #25
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs3_NtCsg6ZEkMtNi4J_8iceoryx210sample_mutINtB5_9SampleMutNtNtNtB7_7service3ipc7ServiceNtNtNtCslR0xdO7Fetl_27iceoryx2_services_discovery17service_discovery7service9DiscoveryuE4sendCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 14 uses
  %i.c = load i64, ptr %.val, align 8, !noundef !5 ; 2 uses
  %i.d = icmp ne i64 %i.c, 0
  tail call void @llvm.assume(i1 %i.d)
  %i.e = add i64 %i.c, 1                          ; 2 uses
  store i64 %i.e, ptr %.val, align 8
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service3ipc7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCsadSKrpJ73hd_12iox2_service.exit, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service3ipc7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCsadSKrpJ73hd_12iox2_service.exit: ; preds = %bb.a
  store ptr %.val, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i64, ptr %i.h, align 8, !noundef !5 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load i64, ptr %i.j, align 8, !noundef !5
  tail call fastcc void @_RNvMs1_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_20PublisherSharedStateNtNtNtB9_7service3ipc7ServiceE11send_sampleCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %0, ptr noundef nonnull align 16 %i.g, i64 noundef %i.i, i64 noundef %i.k) #25
  %i.l = load i64, ptr %.val, align 8, !noalias !770, !noundef !5
  %i.m = add i64 %i.l, -1                         ; 3 uses
  store i64 %i.m, ptr %.val, align 8, !noalias !770
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.c, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1V_7service3ipc7ServiceEEECsadSKrpJ73hd_12iox2_service.exit

bb.c:                                             ; preds = %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service3ipc7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCsadSKrpJ73hd_12iox2_service.exit
  call void @_RNvMs6_NtCsbqH9stoieM8_5alloc2rcINtB5_2RcINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtBK_7service3ipc7ServiceEE9drop_slowCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.b) #24
  %.pre = load i64, ptr %.val, align 8, !noalias !771
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1V_7service3ipc7ServiceEEECsadSKrpJ73hd_12iox2_service.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1V_7service3ipc7ServiceEEECsadSKrpJ73hd_12iox2_service.exit: ; preds = %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service3ipc7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCsadSKrpJ73hd_12iox2_service.exit, %bb.c
  %i.o = phi i64 [ %i.m, %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service3ipc7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCsadSKrpJ73hd_12iox2_service.exit ], [ %.pre, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !771
  %i.p = icmp ne i64 %i.o, 0
  tail call void @llvm.assume(i1 %i.p)
  %i.q = add i64 %i.o, 1                          ; 2 uses
  store i64 %i.q, ptr %.val, align 8, !noalias !771
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.d, label %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service3ipc7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCsadSKrpJ73hd_12iox2_service.exit.i.i, !prof !12

bb.d:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1V_7service3ipc7ServiceEEECsadSKrpJ73hd_12iox2_service.exit
  tail call void @llvm.trap()
  unreachable

_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service3ipc7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCsadSKrpJ73hd_12iox2_service.exit.i.i: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1V_7service3ipc7ServiceEEECsadSKrpJ73hd_12iox2_service.exit
  store ptr %.val, ptr %i.a, align 8, !noalias !771
  tail call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service3ipc7ServiceE14release_sampleCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 16 %i.g, i64 noundef %i.i) #25, !noalias !771
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 3616
  %i.t = atomicrmw add ptr %i.s, i64 -1 monotonic, align 8, !noalias !771 ; 0 uses
  %i.u = load i64, ptr %.val, align 8, !noalias !772, !noundef !5
  %i.v = add i64 %i.u, -1                         ; 3 uses
  store i64 %i.v, ptr %.val, align 8, !noalias !772
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.e, label %_RNvXs2_NtCsg6ZEkMtNi4J_8iceoryx210sample_mutINtB5_9SampleMutNtNtNtB7_7service3ipc7ServiceNtNtNtCslR0xdO7Fetl_27iceoryx2_services_discovery17service_discovery7service9DiscoveryuENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service.exit.i

bb.e:                                             ; preds = %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service3ipc7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCsadSKrpJ73hd_12iox2_service.exit.i.i
  call void @_RNvMs6_NtCsbqH9stoieM8_5alloc2rcINtB5_2RcINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtBK_7service3ipc7ServiceEE9drop_slowCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.a) #24, !noalias !771
  %.pre.i = load i64, ptr %.val, align 8, !noalias !773
  br label %_RNvXs2_NtCsg6ZEkMtNi4J_8iceoryx210sample_mutINtB5_9SampleMutNtNtNtB7_7service3ipc7ServiceNtNtNtCslR0xdO7Fetl_27iceoryx2_services_discovery17service_discovery7service9DiscoveryuENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service.exit.i

_RNvXs2_NtCsg6ZEkMtNi4J_8iceoryx210sample_mutINtB5_9SampleMutNtNtNtB7_7service3ipc7ServiceNtNtNtCslR0xdO7Fetl_27iceoryx2_services_discovery17service_discovery7service9DiscoveryuENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service.exit.i: ; preds = %bb.e, %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service3ipc7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCsadSKrpJ73hd_12iox2_service.exit.i.i
  %i.x = phi i64 [ %i.v, %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service3ipc7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCsadSKrpJ73hd_12iox2_service.exit.i.i ], [ %.pre.i, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !771
  %i.y = add i64 %i.x, -1                         ; 2 uses
  store i64 %i.y, ptr %.val, align 8, !noalias !773
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.f, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx210sample_mut9SampleMutNtNtNtBG_7service3ipc7ServiceNtNtNtCslR0xdO7Fetl_27iceoryx2_services_discovery17service_discovery7service9DiscoveryuEECsadSKrpJ73hd_12iox2_service.exit

bb.f:                                             ; preds = %_RNvXs2_NtCsg6ZEkMtNi4J_8iceoryx210sample_mutINtB5_9SampleMutNtNtNtB7_7service3ipc7ServiceNtNtNtCslR0xdO7Fetl_27iceoryx2_services_discovery17service_discovery7service9DiscoveryuENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service.exit.i
  tail call void @_RNvMs6_NtCsbqH9stoieM8_5alloc2rcINtB5_2RcINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtBK_7service3ipc7ServiceEE9drop_slowCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %1) #24
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx210sample_mut9SampleMutNtNtNtBG_7service3ipc7ServiceNtNtNtCslR0xdO7Fetl_27iceoryx2_services_discovery17service_discovery7service9DiscoveryuEECsadSKrpJ73hd_12iox2_service.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx210sample_mut9SampleMutNtNtNtBG_7service3ipc7ServiceNtNtNtCslR0xdO7Fetl_27iceoryx2_services_discovery17service_discovery7service9DiscoveryuEECsadSKrpJ73hd_12iox2_service.exit: ; preds = %_RNvXs2_NtCsg6ZEkMtNi4J_8iceoryx210sample_mutINtB5_9SampleMutNtNtNtB7_7service3ipc7ServiceNtNtNtCslR0xdO7Fetl_27iceoryx2_services_discovery17service_discovery7service9DiscoveryuENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service.exit.i, %bb.f
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs3_NtCsg6ZEkMtNi4J_8iceoryx210sample_mutINtB5_9SampleMutNtNtNtB7_7service3ipc7ServiceSNtNtB10_7builder19CustomPayloadMarkerNtB1s_18CustomHeaderMarkerE4sendCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 14 uses
  %i.c = load i64, ptr %.val, align 8, !noundef !5 ; 2 uses
  %i.d = icmp ne i64 %i.c, 0
  tail call void @llvm.assume(i1 %i.d)
  %i.e = add i64 %i.c, 1                          ; 2 uses
  store i64 %i.e, ptr %.val, align 8
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service3ipc7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCsadSKrpJ73hd_12iox2_service.exit, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service3ipc7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCsadSKrpJ73hd_12iox2_service.exit: ; preds = %bb.a
  store ptr %.val, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load i64, ptr %i.h, align 8, !noundef !5 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load i64, ptr %i.j, align 8, !noundef !5
  tail call fastcc void @_RNvMs1_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_20PublisherSharedStateNtNtNtB9_7service3ipc7ServiceE11send_sampleCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %0, ptr noundef nonnull align 16 %i.g, i64 noundef %i.i, i64 noundef %i.k) #25
  %i.l = load i64, ptr %.val, align 8, !noalias !794, !noundef !5
  %i.m = add i64 %i.l, -1                         ; 3 uses
  store i64 %i.m, ptr %.val, align 8, !noalias !794
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.c, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1V_7service3ipc7ServiceEEECsadSKrpJ73hd_12iox2_service.exit

bb.c:                                             ; preds = %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service3ipc7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCsadSKrpJ73hd_12iox2_service.exit
  call void @_RNvMs6_NtCsbqH9stoieM8_5alloc2rcINtB5_2RcINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtBK_7service3ipc7ServiceEE9drop_slowCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.b) #24
  %.pre = load i64, ptr %.val, align 8, !noalias !795
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1V_7service3ipc7ServiceEEECsadSKrpJ73hd_12iox2_service.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1V_7service3ipc7ServiceEEECsadSKrpJ73hd_12iox2_service.exit: ; preds = %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service3ipc7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCsadSKrpJ73hd_12iox2_service.exit, %bb.c
  %i.o = phi i64 [ %i.m, %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service3ipc7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCsadSKrpJ73hd_12iox2_service.exit ], [ %.pre, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !795
  %i.p = icmp ne i64 %i.o, 0
  tail call void @llvm.assume(i1 %i.p)
end_hunk_3

inline.NumInlined: 319
inline.NumDeleted: 202
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewENCNCNvNtCsfY7SmN0bPrO_14deltalake_test4read30read_simple_table_with_version0s_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4b_8for_each4callINtNtBc_6option6OptionxENCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB5L_3VecB5e_E14extend_trustedBN_E0E0EB31_:bb.a
  %i.h = extractvalue { i64, i64 } %i.g, 0
  %i.i = extractvalue { i64, i64 } %i.g, 1
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i ; 2 uses
  store i64 %i.h, ptr %i.j, align 8, !noalias !392
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.i, ptr %i.k, align 8, !noalias !392
  %i.l = add i64 %.val15.i, 1                     ; 2 uses
  %i.m = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.e
  br i1 %i.n, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2s_8adapters3map8map_foldRBQ_INtNtBb_6option6OptionxEuNCNCNvNtCsfY7SmN0bPrO_14deltalake_test4read30read_simple_table_with_version0s_0NCINvNvB2m_8for_each4callB3K_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB62_3VecB3K_E14extend_trustedINtB3c_3MapBF_B49_EE0E0E0EB4h_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !389
  resume { ptr, i32 } %i.o

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2s_8adapters3map8map_foldRBQ_INtNtBb_6option6OptionxEuNCNCNvNtCsfY7SmN0bPrO_14deltalake_test4read30read_simple_table_with_version0s_0NCINvNvB2m_8for_each4callB3K_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB62_3VecB3K_E14extend_trustedINtB3c_3MapBF_B49_EE0E0E0EB4h_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.l, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !389
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesIBY_B1o_EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3t_8for_each4callRDNtNtB1s_5array5ArrayEL_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB54_3VecB4w_E14extend_trustedBN_E0E0ECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !16, !align !98, !noundef !16
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.f = icmp eq ptr %i.a, %i.c
  br i1 %i.f, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1U_8adapters3map8map_foldRBQ_RDNtNtBV_5array5ArrayEL_uNCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesIBG_BR_EE0NCINvNvB1O_8for_each4callB3c_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB5j_3VecB3c_E14extend_trustedINtB2E_3MapBF_B3B_EE0E0E0ECsfY7SmN0bPrO_14deltalake_test.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 3
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.ad, %bb.e ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.ae, %bb.e ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val16.i = load ptr, ptr %i.k, align 8, !noalias !399, !nonnull !16, !align !98, !noundef !16 ; 2 uses
  %i.l = load i64, ptr %i.e, align 8, !noalias !402, !noundef !16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val16.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !402, !noundef !16 ; 2 uses
  %i.o = icmp ult i64 %i.l, %i.n
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.l, i64 noundef %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #28
          to label %.noexc.i unwind label %bb.f, !noalias !399

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.val16.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !noalias !402, !nonnull !16, !noundef !16
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.l ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !noalias !402, !nonnull !16, !noundef !16
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !noalias !402, !nonnull !16, !align !98, !noundef !16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i64, ptr %i.v, align 8, !range !99, !invariant.load !16, !noalias !402
  %i.x = add nsw i64 %i.w, -1
  %i.y = and i64 %i.x, -16
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i ; 2 uses
  store ptr %i.aa, ptr %i.ab, align 8, !noalias !405
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.u, ptr %i.ac, align 8, !noalias !405
  %i.ad = add i64 %.val15.i, 1                    ; 2 uses
  %i.ae = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.af = icmp eq i64 %i.ae, %i.j
  br i1 %i.af, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1U_8adapters3map8map_foldRBQ_RDNtNtBV_5array5ArrayEL_uNCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesIBG_BR_EE0NCINvNvB1O_8for_each4callB3c_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB5j_3VecB3c_E14extend_trustedINtB2E_3MapBF_B3B_EE0E0E0ECsfY7SmN0bPrO_14deltalake_test.exit, label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !399
  resume { ptr, i32 } %i.ag

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1U_8adapters3map8map_foldRBQ_RDNtNtBV_5array5ArrayEL_uNCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesIBG_BR_EE0NCINvNvB1O_8for_each4callB3c_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB5j_3VecB3c_E14extend_trustedINtB2E_3MapBF_B3B_EE0E0E0ECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.e, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.ad, %bb.e ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !399
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesRINtNtCs6Po7BT7Nknu_5alloc3vec3VecB1o_EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3X_8for_each4callRDNtNtB1s_5array5ArrayEL_NCINvMsj_B3l_IB3j_B50_E14extend_trustedBN_E0E0ECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !16, !align !98, !noundef !16
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.f = icmp eq ptr %i.a, %i.c
  br i1 %i.f, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1U_8adapters3map8map_foldRBQ_RDNtNtBV_5array5ArrayEL_uNCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesRINtNtCs6Po7BT7Nknu_5alloc3vec3VecBR_EE0NCINvNvB1O_8for_each4callB3c_NCINvMsj_B4B_IB4z_B3c_E14extend_trustedINtB2E_3MapBF_B3B_EE0E0E0ECsfY7SmN0bPrO_14deltalake_test.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 3
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.ad, %bb.e ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.ae, %bb.e ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val16.i = load ptr, ptr %i.k, align 8, !noalias !412, !nonnull !16, !align !98, !noundef !16 ; 2 uses
  %i.l = load i64, ptr %i.e, align 8, !noalias !415, !noundef !16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val16.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !415, !noundef !16 ; 2 uses
  %i.o = icmp ult i64 %i.l, %i.n
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.l, i64 noundef %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #28
          to label %.noexc.i unwind label %bb.f, !noalias !412

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.val16.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !noalias !415, !nonnull !16, !noundef !16
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.l ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !noalias !415, !nonnull !16, !noundef !16
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !noalias !415, !nonnull !16, !align !98, !noundef !16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i64, ptr %i.v, align 8, !range !99, !invariant.load !16, !noalias !415
  %i.x = add nsw i64 %i.w, -1
  %i.y = and i64 %i.x, -16
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i ; 2 uses
  store ptr %i.aa, ptr %i.ab, align 8, !noalias !418
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.u, ptr %i.ac, align 8, !noalias !418
  %i.ad = add i64 %.val15.i, 1                    ; 2 uses
  %i.ae = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.af = icmp eq i64 %i.ae, %i.j
  br i1 %i.af, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1U_8adapters3map8map_foldRBQ_RDNtNtBV_5array5ArrayEL_uNCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesRINtNtCs6Po7BT7Nknu_5alloc3vec3VecBR_EE0NCINvNvB1O_8for_each4callB3c_NCINvMsj_B4B_IB4z_B3c_E14extend_trustedINtB2E_3MapBF_B3B_EE0E0E0ECsfY7SmN0bPrO_14deltalake_test.exit, label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !412
  resume { ptr, i32 } %i.ag

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1U_8adapters3map8map_foldRBQ_RDNtNtBV_5array5ArrayEL_uNCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesRINtNtCs6Po7BT7Nknu_5alloc3vec3VecBR_EE0NCINvNvB1O_8for_each4callB3c_NCINvMsj_B4B_IB4z_B3c_E14extend_trustedINtB2E_3MapBF_B3B_EE0E0E0ECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.e, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.ad, %bb.e ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !412
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvNtCs6Po7BT7Nknu_5alloc3str13replace_ascii0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2a_8for_each4callhNCINvMsj_NtB1v_3vecINtB3n_3VechE14extend_trustedBN_E0E0ECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !16, !noundef !16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !16, !noundef !16 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  %i.h = icmp eq ptr %i.a, %i.c
  br i1 %i.h, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs6Po7BT7Nknu_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsfY7SmN0bPrO_14deltalake_test.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.k = add i64 %i.i, -1
  %i.l = icmp eq i64 %i.k, %i.j
  br i1 %i.l, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %2 = sub i64 %i.i, %i.j
  %unroll_iter = and i64 %2, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.new
  %i.m = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.z, %bb.g ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.aa, %bb.g ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.g ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i
  %.val16.i = load i8, ptr %i.n, align 1, !noalias !425, !noundef !16 ; 2 uses
  %i.o = load i8, ptr %i.e, align 1, !noalias !428, !noundef !16
  %i.p = icmp eq i8 %.val16.i, %i.o
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = load i8, ptr %i.g, align 1, !noalias !428, !noundef !16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i = phi i8 [ %i.q, %bb.d ], [ %.val16.i, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.m
  store i8 %.sroa.0.0.i.i.i, ptr %i.r, align 1, !noalias !431
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %.val16.i.1 = load i8, ptr %i.t, align 1, !noalias !425, !noundef !16 ; 2 uses
  %i.u = load i8, ptr %i.e, align 1, !noalias !428, !noundef !16
  %i.v = icmp eq i8 %.val16.i.1, %i.u
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = load i8, ptr %i.g, align 1, !noalias !428, !noundef !16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i.i.1 = phi i8 [ %i.w, %bb.f ], [ %.val16.i.1, %bb.e ]
  %i.x = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.m
  %i.y = getelementptr i8, ptr %i.x, i64 1
  store i8 %.sroa.0.0.i.i.i.1, ptr %i.y, align 1, !noalias !431
  %i.z = add i64 %i.m, 2                          ; 2 uses
  %i.aa = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.epil.preheader, label %bb.c

.epil.preheader:                                  ; preds = %bb.b, %bb.g
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.z, %bb.g ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.aa, %bb.g ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.epil.init
  %.val16.i.epil = load i8, ptr %i.ab, align 1, !noalias !425, !noundef !16 ; 2 uses
  %i.ac = load i8, ptr %i.e, align 1, !noalias !428, !noundef !16
  %i.ad = icmp eq i8 %.val16.i.epil, %i.ac
  br i1 %i.ad, label %bb.h, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs6Po7BT7Nknu_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsfY7SmN0bPrO_14deltalake_test.exit.loopexit.epilog-lcssa

bb.h:                                             ; preds = %.epil.preheader
  %i.ae = load i8, ptr %i.g, align 1, !noalias !428, !noundef !16
  br label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs6Po7BT7Nknu_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsfY7SmN0bPrO_14deltalake_test.exit.loopexit.epilog-lcssa

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs6Po7BT7Nknu_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsfY7SmN0bPrO_14deltalake_test.exit.loopexit.epilog-lcssa: ; preds = %bb.h, %.epil.preheader
  %.sroa.0.0.i.i.i.epil = phi i8 [ %i.ae, %bb.h ], [ %.val16.i.epil, %.epil.preheader ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %.epil.init
  store i8 %.sroa.0.0.i.i.i.epil, ptr %i.af, align 1, !noalias !431
  %i.ag = add i64 %.epil.init, 1
  br label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs6Po7BT7Nknu_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsfY7SmN0bPrO_14deltalake_test.exit

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs6Po7BT7Nknu_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs6Po7BT7Nknu_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsfY7SmN0bPrO_14deltalake_test.exit.loopexit.epilog-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.ag, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs6Po7BT7Nknu_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsfY7SmN0bPrO_14deltalake_test.exit.loopexit.epilog-lcssa ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !425
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EBD_9into_data6vtableCsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !16, !noundef !16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !16, !align !98, !noundef !16
  tail call void @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_9into_data(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noundef nonnull %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.c)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBb_5types10UInt32TypeENtB9_5Array9into_data6vtableCsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noundef nonnull captures(address) %1) unnamed_addr #3 {
bb.a:
  tail call void @_RNvXs0_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayNtNtCs3v6NujDNJcu_10arrow_data4data9ArrayDataINtNtCsbvkFyIu7lgC_4core7convert4FromINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeEE4fromCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsbvkFyIu7lgC_4core3anyINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBy_5types10UInt32TypeENtB2_3Any7type_idCsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @16, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array13shrink_to_fitCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(96) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvMs3_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutableNtB5_6Buffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !16
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4nullNtB2_10NullBuffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array18logical_null_countCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !noundef !16
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8
  %.sroa.0.0 = select i1 %.not, i64 0, i64 %i.d
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array21get_array_memory_sizeCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !16, !noundef !16
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0 = load i64, ptr %.sroa.0.0.in, align 8, !noundef !16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noundef !16 ; 2 uses
  %.not3 = icmp eq ptr %i.d, null
  br i1 %.not3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.1 = phi i64 [ %i.f, %bb.c ], [ %.sroa.0.0, %bb.a ]
  %i.e = add i64 %.sroa.0.1, 96
  ret i64 %i.e

bb.c:                                             ; preds = %bb.a
  %.sroa.02.0.in = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.02.0 = load i64, ptr %.sroa.02.0.in, align 8, !noundef !16
  %i.f = add i64 %.sroa.02.0, %.sroa.0.0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array22get_buffer_memory_sizeCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !16, !noundef !16
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0 = load i64, ptr %.sroa.0.0.in, align 8, !noundef !16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noundef !16 ; 2 uses
  %.not4 = icmp eq ptr %i.d, null
  br i1 %.not4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.1 = phi i64 [ %i.e, %bb.c ], [ %.sroa.0.0, %bb.a ]
  ret i64 %.sroa.0.1

bb.c:                                             ; preds = %bb.a
  %.sroa.03.0.in = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.03.0 = load i64, ptr %.sroa.03.0.in, align 8, !noundef !16
  %i.e = add i64 %.sroa.03.0, %.sroa.0.0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i64 0, 4611686018427387904) i64 @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array3lenCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !noundef !16
  %i.c = lshr i64 %i.b, 2
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef align 8 ptr @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array5nullsCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(96) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !16
  %.not = icmp eq ptr %i.b, null
  %. = select i1 %.not, ptr null, ptr %i.a
  ret ptr %.
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array5sliceCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.5.i = alloca [40 x i8], align 8          ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [112 x i8], align 8               ; 8 uses
  %.sroa.0 = alloca [48 x i8], align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !439
  call fastcc void @_RNvXs2_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0) #29, !noalias !441
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !439
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !442)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !445
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !447, !noalias !448, !nonnull !16, !noundef !16 ; 2 uses
  %i.i = atomicrmw add ptr %i.h, i64 1 monotonic, align 8, !noalias !445
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !447, !noalias !448, !noundef !16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !447, !noalias !448, !noundef !16
  store ptr %i.h, ptr %i.b, align 8, !noalias !445
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %i.o, align 8, !noalias !445
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.n, ptr %i.p, align 8, !noalias !445
  tail call void @llvm.experimental.noalias.scope.decl(metadata !449)
  %i.q = shl i64 %1, 2
  %i.r = icmp ugt i64 %1, 4611686018427387903
  br i1 %i.r, label %.invoke.i.i.i, label %bb.c, !prof !21

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ugt i64 %2, 4611686018427387903
  br i1 %i.s, label %.invoke.i.i.i, label %bb.d, !prof !21

bb.d:                                             ; preds = %bb.c
  %i.t = shl nuw i64 %2, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !452
  invoke void @_RNvMs3_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, i64 noundef %i.q, i64 noundef %i.t)
          to label %bb.g unwind label %bb.e, !noalias !454

.invoke.i.i.i:                                    ; preds = %bb.c, %bb.b
  %i.u = phi ptr [ @14, %bb.b ], [ @11, %bb.c ]
  %i.v = phi ptr [ @15, %bb.b ], [ @13, %bb.c ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef 15, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v) #26
          to label %.cont.i.i.i unwind label %bb.e, !noalias !452

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.e:                                             ; preds = %.invoke.i.i.i, %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.i, %bb.h, %bb.e
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.w, %bb.e ], [ %i.ad, %bb.i ], [ %i.ad, %bb.h ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !455)
  call void @llvm.experimental.noalias.scope.decl(metadata !458)
  call void @llvm.experimental.noalias.scope.decl(metadata !461)
  %i.x = load ptr, ptr %i.b, align 8, !alias.scope !464, !noalias !454, !nonnull !16, !noundef !16
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !465
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.f, label %.body.i

bb.f:                                             ; preds = %.body.i.i.i
  fence acquire
end_hunk_0

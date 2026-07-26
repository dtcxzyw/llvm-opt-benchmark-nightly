inline.NumInlined: 8498
inline.NumDeleted: 3151
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB6_4Scan19scan_metadata_innerINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainIB1b_NtNtNtB8_10log_reader6commit12CommitReaderINtNtB1f_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB2O_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB1h_6traits8iterator8Iteratorp4ItemINtNtB1j_6result6ResultIB3Z_DNtNtB8_11engine_data10EngineDataEL_ENtNtB8_5error5ErrorENtNtB1j_6marker4SendEL_ENCNvMNtB8_11log_segmentNtB73_10LogSegment24create_checkpoint_streams_0EINtNtNtB39_8adaptors3map14MapSpecialCaseIB1b_INtNtNtB1h_7sources4once4OnceB5d_EINtNtB1f_7flatten7FlattenINtNtB1j_6option8IntoIterB3Y_EEEINtB8a_18MapSpecialCaseFnOkNCNCB70_s_00EEB6g_ENCB70_s0_0EEIB2O_IB3Z_IB2O_IB2O_IB3Z_INtNtNtB43_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdj_4Scan18scan_metadata_fromBbE_E0ENCBdc_s_0EENCINvB2_18scan_metadata_fromBbk_E0EEEBdp_:bb.a

bb.e:                                             ; preds = %bb.c
  call void @_RINvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan10log_replay16scan_action_iterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainIB18_NtNtNtB6_10log_reader6commit12CommitReaderINtNtB1c_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB2L_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB1e_6traits8iterator8Iteratorp4ItemINtNtB1g_6result6ResultIB3W_DNtNtB6_11engine_data10EngineDataEL_ENtNtB6_5error5ErrorENtNtB1g_6marker4SendEL_ENCNvMNtB6_11log_segmentNtB70_10LogSegment24create_checkpoint_streams_0EINtNtNtB36_8adaptors3map14MapSpecialCaseIB18_INtNtNtB1e_7sources4once4OnceB5a_EINtNtB1c_7flatten7FlattenINtNtB1g_6option8IntoIterB3V_EEEINtB87_18MapSpecialCaseFnOkNCNCB6X_s_00EEB6d_ENCB6X_s0_0EEIB2L_IB3W_IB2L_IB2L_IB3W_INtNtNtB40_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdg_4Scan18scan_metadata_fromBbB_E0ENCBd9_s_0EENCINvMs6_B4_NtB4_4Scan18scan_metadata_fromBbh_E0EEEBdm_(ptr noalias noundef nonnull sret([704 x i8]) align 16 captures(none) dereferenceable(704) %i.b, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %2, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(544) %i.a, ptr noundef nonnull %.8.val)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.i = load i64, ptr %i.h, align 16, !range !499, !noundef !27 ; 2 uses
  %i.j = icmp eq i64 %i.i, 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %.sroa.0, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false)
  br i1 %i.j, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %.sroa.0, i64 96, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 7, ptr %i.k, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.d

bb.h:                                             ; preds = %bb.e
  %.sroa.653.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %.sroa.785.sroa.3.0..sroa.785.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(600) %.sroa.785.sroa.3.0..sroa.785.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(600) %.sroa.653.0..sroa_idx, i64 600, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.785.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %.sroa.785.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(96) %.sroa.0, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %.sroa.280.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 6, ptr %.sroa.280.0..sroa_idx, align 16
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 800
  store i64 6, ptr %.sroa.583.0..sroa_idx, align 16
  %.sroa.785.sroa.2.0..sroa.785.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1504
  store i64 %i.i, ptr %.sroa.785.sroa.2.0..sroa.785.0..sroa_idx.sroa_idx, align 16
  br label %bb.d
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvMsK_NtCs2y6mmZ7bjoM_12tracing_core5fieldNtB6_8FieldSet5fieldReECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %2, align 8, !nonnull !27, !noundef !27
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val4 = load i64, ptr %i.a, align 8, !noundef !27 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !27, !align !108, !noundef !27 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !27 ; 3 uses
  %.idx = shl nuw nsw i64 %i.d, 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RNCINvMsK_NtCs2y6mmZ7bjoM_12tracing_core5fieldNtB8_8FieldSet5fieldReE0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i
  %.sroa.02.011.i = phi i64 [ %i.l, %_RNCINvMsK_NtCs2y6mmZ7bjoM_12tracing_core5fieldNtB8_8FieldSet5fieldReE0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ 0, %bb.a ] ; 3 uses
  %i.g = phi ptr [ %i.h, %_RNCINvMsK_NtCs2y6mmZ7bjoM_12tracing_core5fieldNtB8_8FieldSet5fieldReE0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.i = getelementptr i8, ptr %i.g, i64 8
  %.val8.i = load i64, ptr %i.i, align 8, !noalias !655, !noundef !27
  %i.j = icmp eq i64 %.val8.i, %.val4
  br i1 %i.j, label %_RNCINvMsK_NtCs2y6mmZ7bjoM_12tracing_core5fieldNtB8_8FieldSet5fieldReE0Cs14kWLkQVSKO_14deltalake_core.exit.i, label %_RNCINvMsK_NtCs2y6mmZ7bjoM_12tracing_core5fieldNtB8_8FieldSet5fieldReE0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i

_RNCINvMsK_NtCs2y6mmZ7bjoM_12tracing_core5fieldNtB8_8FieldSet5fieldReE0Cs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.lr.ph.i
  %.val7.i = load ptr, ptr %i.g, align 8, !noalias !655, !nonnull !27, !noundef !27
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val7.i, ptr nonnull readonly %.val, i64 %.val4), !alias.scope !659, !noalias !655
  %i.k = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.k, label %bb.b, label %_RNCINvMsK_NtCs2y6mmZ7bjoM_12tracing_core5fieldNtB8_8FieldSet5fieldReE0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i

_RNCINvMsK_NtCs2y6mmZ7bjoM_12tracing_core5fieldNtB8_8FieldSet5fieldReE0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %_RNCINvMsK_NtCs2y6mmZ7bjoM_12tracing_core5fieldNtB8_8FieldSet5fieldReE0Cs14kWLkQVSKO_14deltalake_core.exit.i, %.lr.ph.i
  %i.l = add nuw nsw i64 %.sroa.02.011.i, 1
  %i.m = icmp eq ptr %i.h, %i.e
  br i1 %i.m, label %.loopexit, label %.lr.ph.i

bb.b:                                             ; preds = %_RNCINvMsK_NtCs2y6mmZ7bjoM_12tracing_core5fieldNtB8_8FieldSet5fieldReE0Cs14kWLkQVSKO_14deltalake_core.exit.i
  %i.n = icmp ult i64 %.sroa.02.011.i, %i.d
  tail call void @llvm.assume(i1 %i.n)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.02.011.i, ptr %.sroa.43.0..sroa_idx, align 8
  br label %bb.c

.loopexit:                                        ; preds = %_RNCINvMsK_NtCs2y6mmZ7bjoM_12tracing_core5fieldNtB8_8FieldSet5fieldReE0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i, %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %.loopexit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB5_11ScanBuilder14with_predicateINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB7_11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !663)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !663, !noundef !27 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !666
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #57
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  store ptr %2, ptr %i.a, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan11ScanBuilderECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %1) #59
          to label %bb.f unwind label %bb.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b, %bb.a, %bb.c
  store ptr %2, ptr %i.a, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB5_20GenericByteViewArrayNtNtB9_5types14StringViewTypeE16from_iter_valuesReAB2b_j1_ECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
.noexc:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [4 x i8], align 4                 ; 4 uses
  %i.h = alloca [16 x i8], align 16               ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.11 = alloca [20 x i8], align 4           ; 5 uses
  %i.k = alloca [208 x i8], align 8               ; 30 uses
  %.sroa.7.sroa.0.0.copyload = load ptr, ptr %1, align 8, !alias.scope !671 ; 4 uses
  %.sroa.7.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.7.sroa.4.0.copyload = load i64, ptr %.sroa.7.sroa.4.0..sroa_idx, align 8, !alias.scope !671 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !675)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !675
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, i64 noundef 1, i1 noundef zeroext false, i64 noundef 16, i64 noundef 16)
  %i.l = load i64, ptr %i.i, align 8, !range !39, !noalias !675, !noundef !27
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !68, !noalias !675, !noundef !27 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  br i1 %i.m, label %.noexc8, label %bb.a, !prof !69

.noexc8:                                          ; preds = %.noexc
  %i.q = load i64, ptr %i.p, align 8, !noalias !675
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.o, i64 %i.q) #56
  unreachable

bb.a:                                             ; preds = %.noexc
  %i.r = load ptr, ptr %i.p, align 8, !noalias !675, !nonnull !27, !noundef !27
  %i.s = icmp ne i64 %i.o, 0
  tail call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !675
  store i64 %i.o, ptr %i.k, align 8, !alias.scope !675
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  store ptr %i.r, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !675
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 5 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !675
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 72 ; 5 uses
  store i64 0, ptr %i.t, align 8, !alias.scope !675
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 112 ; 5 uses
  store i64 0, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !675
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  store i64 1, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !675
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 0, ptr %i.u, align 8, !alias.scope !675
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.45.0..sroa_idx.i, align 8, !alias.scope !675
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !675
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !675
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 64 ; 5 uses
  store i64 0, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !675
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 128 ; 2 uses
  store i32 1, ptr %i.v, align 8, !alias.scope !675
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 132 ; 3 uses
  store i32 8192, ptr %i.w, align 4, !alias.scope !675
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  store ptr null, ptr %i.x, align 8, !alias.scope !675
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  store i32 0, ptr %i.y, align 8, !alias.scope !675
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.0.copyload) ]
  %i.z = icmp ugt i64 %.sroa.7.sroa.4.0.copyload, 4294967295
  %i.aa = trunc nuw nsw i64 %.sroa.7.sroa.4.0.copyload to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 104 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 96 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 80 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 88 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 2 uses
  %i.ag = zext nneg i64 %.sroa.7.sroa.4.0.copyload to i128
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  br i1 %i.z, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !681)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !683
  store i64 %.sroa.7.sroa.4.0.copyload, ptr %i.d, align 8, !noalias !683
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !683
  store ptr %i.d, ptr %i.c, align 8, !noalias !683
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !683
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ai, ptr noundef nonnull @94, ptr noundef nonnull %i.c)
          to label %.noexc13 unwind label %.loopexit.split-lp

.split:                                           ; preds = %bb.a
  %i.aj = icmp samesign ult i64 %.sroa.7.sroa.4.0.copyload, 13
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !681)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  br i1 %i.aj, label %.split.split.us, label %bb.i

.split.split.us:                                  ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !687
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.h, i8 0, i64 16, i1 false), !noalias !687
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !687
  store i32 %i.aa, ptr %i.g, align 4, !noalias !687
  invoke void @_RINvNtCsbvkFyIu7lgC_4core5slice20copy_from_slice_implhECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull %i.h, i64 noundef 4, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26)
          to label %.noexc14.us unwind label %.loopexit.split.us

.noexc14.us:                                      ; preds = %.split.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !687
  invoke void @_RINvNtCsbvkFyIu7lgC_4core5slice20copy_from_slice_implhECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull %i.ah, i64 noundef %.sroa.7.sroa.4.0.copyload, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.7.sroa.0.0.copyload, i64 noundef %.sroa.7.sroa.4.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27)
          to label %.noexc15.us unwind label %.loopexit.split.us

.noexc15.us:                                      ; preds = %.noexc14.us
  %.sroa.014.0.copyload.i.us = load i128, ptr %i.h, align 16, !noalias !687
  %i.ak = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !688, !noalias !691, !noundef !27 ; 3 uses
  %i.al = load i64, ptr %i.k, align 8, !range !76, !alias.scope !688, !noalias !691, !noundef !27
  %i.am = icmp eq i64 %i.ak, %i.al
  br i1 %i.am, label %bb.b, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecoE8push_mutCs14kWLkQVSKO_14deltalake_core.exit.i.us

bb.b:                                             ; preds = %.noexc15.us
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecoE8grow_oneCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(208) %i.k)
          to label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecoE8push_mutCs14kWLkQVSKO_14deltalake_core.exit.i.us unwind label %.loopexit.split.us

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecoE8push_mutCs14kWLkQVSKO_14deltalake_core.exit.i.us: ; preds = %bb.b, %.noexc15.us
  %i.an = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !688, !noalias !691, !nonnull !27, !noundef !27
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.ak
  store i128 %.sroa.014.0.copyload.i.us, ptr %i.ao, align 16, !noalias !692
  %i.ap = add i64 %i.ak, 1
  store i64 %i.ap, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !688, !noalias !691
  %i.aq = load i64, ptr %i.t, align 8, !range !68, !alias.scope !678, !noalias !691, !noundef !27
  %.not95.i.us = icmp eq i64 %i.aq, 0
  br i1 %.not95.i.us, label %bb.h, label %bb.c

bb.c:                                             ; preds = %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecoE8push_mutCs14kWLkQVSKO_14deltalake_core.exit.i.us
  %i.ar = load i64, ptr %i.ab, align 8, !alias.scope !693, !noalias !691, !noundef !27 ; 3 uses
  %i.as = add i64 %i.ar, 1                        ; 3 uses
  %i.at = lshr i64 %i.as, 3
  %i.au = and i64 %i.as, 7
  %.not.i124.i.us = icmp ne i64 %i.au, 0
  %i.av = zext i1 %.not.i124.i.us to i64
  %.sroa.0.0.i125.i.us = add nuw nsw i64 %i.at, %i.av ; 8 uses
  %i.aw = load i64, ptr %i.ac, align 8, !alias.scope !693, !noalias !691, !noundef !27 ; 3 uses
  %i.ax = icmp ugt i64 %.sroa.0.0.i125.i.us, %i.aw
  br i1 %i.ax, label %bb.d, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit131.i.us

bb.d:                                             ; preds = %bb.c
  %i.ay = sub nuw nsw i64 %.sroa.0.0.i125.i.us, %i.aw
  %i.az = load i64, ptr %i.ad, align 8, !alias.scope !696, !noalias !691, !noundef !27 ; 2 uses
  %i.ba = icmp ugt i64 %.sroa.0.0.i125.i.us, %i.az
  br i1 %i.ba, label %bb.e, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i126.i.us, !prof !69

bb.e:                                             ; preds = %bb.d
  %i.bb = and i64 %.sroa.0.0.i125.i.us, 63
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %reass.sub.i.i127.i.us = and i64 %.sroa.0.0.i125.i.us, 4611686018427387840
  %i.bd = add nuw nsw i64 %reass.sub.i.i127.i.us, 64 ; 2 uses
  %i.be = icmp samesign ult i64 %i.bd, %.sroa.0.0.i125.i.us
  br i1 %i.be, label %.invoke, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.4.0.i.i128.i.us = phi i64 [ %.sroa.0.0.i125.i.us, %bb.e ], [ %i.bd, %bb.f ]
  %i.bf = shl nuw nsw i64 %i.az, 1
  %.sroa.0.0.i.i129.i.us = call noundef i64 @llvm.umax.i64(i64 %i.bf, i64 %.sroa.4.0.i.i128.i.us)
  invoke void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.t, i64 noundef %.sroa.0.0.i.i129.i.us)
          to label %.noexc24.us unwind label %.loopexit.split.us

.noexc24.us:                                      ; preds = %bb.g
  %.pre.i130.i.us = load i64, ptr %i.ac, align 8, !alias.scope !693, !noalias !691
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i126.i.us

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i126.i.us: ; preds = %.noexc24.us, %bb.d
  %i.bg = phi i64 [ %i.aw, %bb.d ], [ %.pre.i130.i.us, %.noexc24.us ]
  %i.bh = load ptr, ptr %i.ae, align 8, !alias.scope !693, !noalias !691, !nonnull !27, !noundef !27
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bg
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bi, i8 0, i64 %i.ay, i1 false), !noalias !692
  store i64 %.sroa.0.0.i125.i.us, ptr %i.ac, align 8, !alias.scope !693, !noalias !691
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit131.i.us

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit131.i.us: ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i126.i.us, %bb.c
  store i64 %i.as, ptr %i.ab, align 8, !alias.scope !693, !noalias !691
  %i.bj = load ptr, ptr %i.ae, align 8, !alias.scope !678, !noalias !691, !nonnull !27, !noundef !27
  %i.bk = trunc i64 %i.ar to i8
  %i.bl = and i8 %i.bk, 7
  %i.bm = shl nuw i8 1, %i.bl
  %i.bn = lshr i64 %i.ar, 3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bn ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !noalias !692, !noundef !27
  %i.bq = or i8 %i.bp, %i.bm
  store i8 %i.bq, ptr %i.bo, align 1, !noalias !692
  br label %.split82.us

bb.h:                                             ; preds = %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecoE8push_mutCs14kWLkQVSKO_14deltalake_core.exit.i.us
  %i.br = load i64, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !678, !noalias !691, !noundef !27
  %i.bs = add i64 %i.br, 1
  store i64 %i.bs, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !678, !noalias !691
  br label %.split82.us

.split82.us:                                      ; preds = %bb.h, %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit131.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !687
  br label %.split82

.loopexit.split.us:                               ; preds = %bb.g, %bb.b, %.noexc14.us, %.split.split.us
  %lpad.loopexit52.us = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split:                                  ; preds = %bb.i, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE15append_elementsCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.k, %bb.m, %bb.s
  %lpad.loopexit52 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %.invoke, %.split.us, %bb.n
  %lpad.loopexit.split-lp53 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.noexc13:                                         ; preds = %.split.us
  %i.bt = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !683
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !683
  %.sroa.67.0.copyload.i = load i32, ptr %i.ai, align 8, !noalias !687
  br label %bb.w

bb.i:                                             ; preds = %.split
  invoke fastcc void @_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array7builder26generic_bytes_view_builderINtB4_22GenericByteViewBuilderNtNtB8_5types14StringViewTypeE17flush_in_progressCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(208) %i.k)
          to label %.noexc17 unwind label %.loopexit.split

.noexc17:                                         ; preds = %bb.i
  %i.bu = load i32, ptr %i.v, align 8, !range !699, !alias.scope !678, !noalias !691, !noundef !27
  %i.bv = trunc nuw i32 %i.bu to i1
  %i.bw = load i32, ptr %i.w, align 4, !alias.scope !678, !noalias !691, !noundef !27 ; 3 uses
  br i1 %i.bv, label %bb.j, label %bb.k

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE15append_elementsCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.k
  %.pre146.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !678, !noalias !691 ; 2 uses
  %i.bx = icmp sgt i64 %.pre146.i, -1
  call void @llvm.assume(i1 %i.bx)
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af, i64 noundef %.sroa.7.sroa.4.0.copyload)
          to label %.noexc18 unwind label %.loopexit.split

.noexc18:                                         ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE15append_elementsCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.by = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !700, !noalias !691, !noundef !27 ; 2 uses
  %i.bz = icmp sgt i64 %i.by, -1
  call void @llvm.assume(i1 %i.bz)
  %i.ca = load ptr, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !700, !noalias !691, !nonnull !27, !noundef !27
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.by
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cb, ptr nonnull readonly align 1 %.sroa.7.sroa.0.0.copyload, i64 %.sroa.7.sroa.4.0.copyload, i1 false), !noalias !692
  %.pre.i112.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !700, !noalias !691
  %i.cc = add i64 %.pre.i112.i, %.sroa.7.sroa.4.0.copyload
  store i64 %i.cc, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !700, !noalias !691
  %i.cd = load i64, ptr %.sroa.56.0..sroa_idx.i, align 8, !alias.scope !678, !noalias !691, !noundef !27 ; 4 uses
  %i.ce = icmp ult i64 %i.cd, 384307168202282326
  call void @llvm.assume(i1 %i.ce)
  %i.cf = icmp samesign ugt i64 %i.cd, 4294967295
  br i1 %i.cf, label %bb.n, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i

bb.j:                                             ; preds = %.noexc17
  %i.cg = icmp ult i32 %i.bw, 2097152
  br i1 %i.cg, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j, %.noexc17
  %.sroa.025.0.i = phi i32 [ %i.ci, %bb.l ], [ 2097152, %bb.j ], [ %i.bw, %.noexc17 ]
end_hunk_0

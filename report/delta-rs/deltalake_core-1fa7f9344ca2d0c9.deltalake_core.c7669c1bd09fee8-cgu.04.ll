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
begin_hunk_1_@_RNvXs2_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4execNtB5_15DeltaScanStreamNtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next:bb.a
.noexc85.i.i:                                     ; preds = %.split.i.i.i
  store ptr %i.jd, ptr %i.bz, align 8, !noalias !19493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !19493
  store ptr %i.ca, ptr %i.by, align 8, !noalias !19493
  %.sroa.446.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.446.0..sroa_idx.i.i.i, align 8, !noalias !19493
  %i.je = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store ptr %i.bz, ptr %i.je, align 8, !noalias !19493
  %.sroa.450.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  store ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.450.0..sroa_idx.i.i.i, align 8, !noalias !19493
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cb, ptr noundef nonnull @116, ptr noundef nonnull %i.by)
          to label %.noexc86.i.i unwind label %bb.ab, !noalias !19458

.noexc86.i.i:                                     ; preds = %.noexc85.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !19493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !19493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !19493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !19493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !19493
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bb, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bb unwind label %bb.ba, !noalias !19494

.invoke.i.i:                                      ; preds = %bb.az, %bb.al, %bb.aj
  %i.jf = phi i64 [ %i.gs, %bb.al ], [ %i.ge, %bb.aj ], [ %i.iv, %bb.az ]
  %i.jg = phi ptr [ @113, %bb.al ], [ @115, %bb.aj ], [ @113, %bb.az ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %.sroa.02.010.i.i.i.i, i64 noundef %i.jf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jg) #61
          to label %.cont.i.i unwind label %bb.ab, !noalias !19458

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

.body.i.i.i:                                      ; preds = %bb.bf, %bb.be, %bb.ba
  %.pn.i.i.i = phi { ptr, i32 } [ %i.jq, %bb.be ], [ %i.jh, %bb.ba ], [ %i.jr, %bb.bf ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cb) #59
          to label %.body.i.i unwind label %bb.bk, !noalias !19494

bb.ba:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, %bb.bc, %.noexc86.i.i
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.bb:                                            ; preds = %.noexc86.i.i
  %i.ji = load i64, ptr %i.bb, align 8, !range !39, !noalias !19493, !noundef !27
  %i.jj = trunc nuw i64 %i.ji to i1
  %i.jk = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.jl = load i64, ptr %i.jk, align 8, !range !68, !noalias !19493, !noundef !27 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  br i1 %i.jj, label %bb.bc, label %bb.bd, !prof !69

bb.bc:                                            ; preds = %bb.bb
  %i.jn = load i64, ptr %i.jm, align 8, !noalias !19493
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.jl, i64 %i.jn) #56
          to label %bb.bl unwind label %bb.ba, !noalias !19494

bb.bd:                                            ; preds = %bb.bb
  %i.jo = load ptr, ptr %i.jm, align 8, !noalias !19493, !nonnull !27, !noundef !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !19493
  store i64 %i.jl, ptr %i.bx, align 8, !noalias !19493
  %.sroa.454.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr %i.jo, ptr %.sroa.454.0..sroa_idx.i.i.i, align 8, !noalias !19493
  %.sroa.555.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store i64 0, ptr %.sroa.555.0..sroa_idx.i.i.i, align 8, !noalias !19493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !19493
  store ptr %i.cb, ptr %i.bw, align 8, !noalias !19493
  %.sroa.459.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.459.0..sroa_idx.i.i.i, align 8, !noalias !19493
  %i.jp = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store ptr %i.bx, ptr %i.jp, align 8, !noalias !19493
  %.sroa.463.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.463.0..sroa_idx.i.i.i, align 8, !noalias !19493
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cc, ptr noundef nonnull @29, ptr noundef nonnull %i.bw)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %bb.be, !noalias !19494

bb.be:                                            ; preds = %bb.bd
  %i.jq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bx) #59
          to label %.body.i.i.i unwind label %bb.bk, !noalias !19494

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !19493
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i unwind label %bb.bf, !noalias !19494

bb.bf:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %i.jr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %.body.i.i.i unwind label %bb.bg, !noalias !19494

bb.bg:                                            ; preds = %bb.bf
  %i.js = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58, !noalias !19494
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %bb.ba, !noalias !19494

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !19493
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cb)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit138.i.i.i unwind label %bb.bh, !noalias !19494

bb.bh:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %i.jt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cb)
          to label %.body.i.i unwind label %bb.bi, !noalias !19494

bb.bi:                                            ; preds = %bb.bh
  %i.ju = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58, !noalias !19494
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit138.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cb)
          to label %.noexc88.i.i unwind label %bb.ab, !noalias !19458

.noexc88.i.i:                                     ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit138.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !19493
  %.sroa.10.8.copyload122.i.i = load i64, ptr %i.cc, align 8, !noalias !19505
  %.sroa.18.8..sroa_idx127.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.sroa.18.8.copyload128.i.i = load ptr, ptr %.sroa.18.8..sroa_idx127.i.i, align 8, !noalias !19505
  %.sroa.20.8..sroa_idx136.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %.sroa.20.8.copyload137.i.i = load i64, ptr %.sroa.20.8..sroa_idx136.i.i, align 8, !noalias !19505
  br label %bb.bj

bb.bj:                                            ; preds = %.noexc94.i.i, %.noexc93.i.i, %.noexc88.i.i
  %.sroa.20.0.i.i = phi i64 [ %.sroa.20.8.copyload143.i.i, %.noexc94.i.i ], [ %.sroa.20.8.copyload141.i.i, %.noexc93.i.i ], [ %.sroa.20.8.copyload137.i.i, %.noexc88.i.i ]
  %.sroa.18.0.i.i = phi ptr [ %.sroa.18.8.copyload134.i.i, %.noexc94.i.i ], [ %.sroa.18.8.copyload132.i.i, %.noexc93.i.i ], [ %.sroa.18.8.copyload128.i.i, %.noexc88.i.i ]
  %.sroa.10.0.i.i = phi i64 [ %.sroa.10.8.copyload125.i.i, %.noexc94.i.i ], [ %.sroa.10.8.copyload124.i.i, %.noexc93.i.i ], [ %.sroa.10.8.copyload122.i.i, %.noexc88.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !19493
  br label %bb.dh

bb.bk:                                            ; preds = %bb.dc, %.body173.i.i.i, %bb.cr, %.body159.i.i.i, %bb.cg, %bb.bs, %.body142.i.i.i, %bb.be, %.body.i.i.i
  %i.jv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58, !noalias !19494
  unreachable

bb.bl:                                            ; preds = %bb.da, %bb.cp, %bb.bc
  unreachable

bb.bm:                                            ; preds = %.noexc84.i.i, %.noexc82.i.i
  %.sink228.i.i.i = phi ptr [ %i.ig, %.noexc82.i.i ], [ %i.in, %.noexc84.i.i ] ; 2 uses
  %storemerge.i69.i.i = phi i64 [ 0, %.noexc82.i.i ], [ 1, %.noexc84.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink228.i.i.i) ]
  %i.jw = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr %.sink228.i.i.i, ptr %i.jw, align 8, !noalias !19493
  store i64 %storemerge.i69.i.i, ptr %i.cd, align 8, !noalias !19493
  %i.jx = invoke noundef zeroext i1 @_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_array15DictionaryArrayNtNtB9_5types10UInt16TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.gk, i64 noundef 0)
          to label %.noexc89.i.i unwind label %bb.ab, !noalias !19458

.noexc89.i.i:                                     ; preds = %bb.bm
  br i1 %i.jx, label %.split104.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %.noexc89.i.i
  %i.jy = getelementptr i8, ptr %i.gk, i64 56     ; 2 uses
  %.val130.i.i.i = load ptr, ptr %i.jy, align 8, !noalias !19494
  %i.jz = getelementptr i8, ptr %i.gk, i64 64     ; 2 uses
  %.val131.i.i.i = load i64, ptr %i.jz, align 8, !noalias !19494, !noundef !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !19493
  store i64 0, ptr %i.aq, align 8, !noalias !19493
  %.not202.i.i.i = icmp ult i64 %.val131.i.i.i, 2
  br i1 %.not202.i.i.i, label %bb.bo, label %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt16TypeE5valueCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, !prof !69

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !19493
  store i64 0, ptr %i.ap, align 8, !noalias !19493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !19493
  store ptr %i.aq, ptr %i.ao, align 8, !noalias !19493
  %.sroa.42.0..sroa_idx.i139.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i139.i.i.i, align 8, !noalias !19493
  %i.ka = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr %i.ap, ptr %i.ka, align 8, !noalias !19493
  %.sroa.46.0..sroa_idx.i140.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i140.i.i.i, align 8, !noalias !19493
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @178, ptr noundef nonnull %i.ao, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @180) #61
          to label %.noexc90.i.i unwind label %bb.ab, !noalias !19458

.noexc90.i.i:                                     ; preds = %bb.bo
  unreachable

_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt16TypeE5valueCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.bn
  %i.kb = load i16, ptr %.val130.i.i.i, align 2, !noalias !19494, !noundef !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !19493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !19493
  store i64 0, ptr %i.br, align 8, !noalias !19493
  %i.kc = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.kc, align 8, !noalias !19493
  %i.kd = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 4 uses
  store i64 0, ptr %i.kd, align 8, !noalias !19493
  %.not213.i.i.i = icmp eq i64 %i.ec, 1
  br i1 %.not213.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt16TypeE5valueCs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %i.ke = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %umax.i.i.i = call i64 @llvm.umax.i64(i64 %i.ec, i64 2)
  br label %bb.bq

.split104.i.i.i:                                  ; preds = %.noexc89.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !19493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !19506
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.an, i64 noundef range(i64 0, -9223372036854775808) 30, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc91.i.i unwind label %bb.ab, !noalias !19458

.noexc91.i.i:                                     ; preds = %.split104.i.i.i
  %i.kf = load i64, ptr %i.an, align 8, !range !39, !noalias !19506, !noundef !27
  %i.kg = trunc nuw i64 %i.kf to i1
  %i.kh = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ki = load i64, ptr %i.kh, align 8, !range !68, !noalias !19506, !noundef !27 ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  br i1 %i.kg, label %bb.bp, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit141.i.i.i, !prof !69

bb.bp:                                            ; preds = %.noexc91.i.i
  %i.kk = load i64, ptr %i.kj, align 8, !noalias !19506
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ki, i64 %i.kk) #56
          to label %.noexc92.i.i unwind label %bb.ab, !noalias !19458

.noexc92.i.i:                                     ; preds = %bb.bp
  unreachable

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit141.i.i.i: ; preds = %.noexc91.i.i
  %i.kl = load ptr, ptr %i.kj, align 8, !noalias !19506, !nonnull !27, !noundef !27 ; 2 uses
  %i.km = icmp ugt i64 %i.ki, 29
  call void @llvm.assume(i1 %i.km)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !19506
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.kl, ptr noundef nonnull readonly align 1 dereferenceable(30) @256, i64 range(i64 0, -9223372036854775808) 30, i1 false), !noalias !19519
  store i64 %i.ki, ptr %i.bu, align 8, !noalias !19493
  %.sroa.4.0..sroa_idx188.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %i.kl, ptr %.sroa.4.0..sroa_idx188.i.i.i, align 8, !noalias !19493
  %.sroa.5.0..sroa_idx189.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store i64 30, ptr %.sroa.5.0..sroa_idx189.i.i.i, align 8, !noalias !19493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !19493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !19493
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ba, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.cz unwind label %bb.cy, !noalias !19494

._crit_edge.i.i.i:                                ; preds = %bb.ce, %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt16TypeE5valueCs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %.sroa.024.0.lcssa.i.i.i = phi i64 [ 0, %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt16TypeE5valueCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.024.1.i.i.i, %bb.ce ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !19493
  invoke fastcc void @_RNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4exec21split_by_file_id_runss_0Bd_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.bi, ptr nonnull %i.hs, ptr nonnull %i.cd, i64 noundef %.sroa.024.0.lcssa.i.i.i)
          to label %bb.br unwind label %.loopexit.split-lp.i.i.i, !noalias !19494

bb.bq:                                            ; preds = %bb.ce, %.lr.ph.i.i.i
  %.sroa.081.0212.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i ], [ %i.kn, %bb.ce ] ; 7 uses
  %.sroa.023.0211.i.i.i = phi i16 [ %i.kb, %.lr.ph.i.i.i ], [ %.sroa.023.1.i.i.i, %bb.ce ] ; 2 uses
  %.sroa.024.0210.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %.sroa.024.1.i.i.i, %bb.ce ] ; 4 uses
  %i.kn = add nuw i64 %.sroa.081.0212.i.i.i, 1    ; 2 uses
  %i.ko = invoke noundef zeroext i1 @_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_array15DictionaryArrayNtNtB9_5types10UInt16TypeENtB7_5Array7is_nullCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.gk, i64 noundef %.sroa.081.0212.i.i.i)
          to label %bb.bx unwind label %.loopexit.i70.i.i, !noalias !19494

.body142.i.i.i:                                   ; preds = %bb.cu, %.body159.i.i.i, %bb.cj, %bb.cg, %bb.bv, %bb.bs, %.loopexit.split-lp.i.i.i, %.loopexit.i70.i.i
  %.pn110.pn.i.i.i = phi { ptr, i32 } [ %.pn110.i.i.i, %.body159.i.i.i ], [ %i.kq, %bb.bs ], [ %i.lj, %bb.cg ], [ %i.ln, %bb.cj ], [ %i.kv, %bb.bv ], [ %i.mg, %bb.cu ], [ %lpad.loopexit.i.i.i, %.loopexit.i70.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtBL_6string6StringNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.br) #59
          to label %.body.i.i unwind label %bb.bk, !noalias !19494

.loopexit.i70.i.i:                                ; preds = %bb.cd, %bb.bq
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body142.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i164.i.i.i, %bb.cb, %bb.ca, %bb.bz, %._crit_edge.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body142.i.i.i

bb.br:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !19493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !19493
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i64 24, i1 false), !noalias !19493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !19493
  %i.kp = sub i64 %i.ec, %.sroa.024.0.lcssa.i.i.i
  invoke void @_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch5slice(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.bf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.de, i64 noundef %.sroa.024.0.lcssa.i.i.i, i64 noundef %i.kp)
          to label %bb.bt unwind label %bb.bs, !noalias !19494

bb.bs:                                            ; preds = %bb.br
  %i.kq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bg) #59
          to label %.body142.i.i.i unwind label %bb.bk, !noalias !19494

bb.bt:                                            ; preds = %bb.br
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i64 24, i1 false), !noalias !19493
  %i.kr = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.kr, ptr noundef nonnull align 8 dereferenceable(40) %i.bf, i64 40, i1 false), !noalias !19493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !19493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !19493
  %i.ks = load i64, ptr %i.kd, align 8, !alias.scope !19520, !noalias !19523, !noundef !27 ; 3 uses
  %i.kt = load i64, ptr %i.br, align 8, !range !76, !alias.scope !19520, !noalias !19523, !noundef !27 ; 2 uses
  %i.ku = icmp eq i64 %i.ks, %i.kt
  br i1 %i.ku, label %bb.bu, label %bb.di

bb.bu:                                            ; preds = %bb.bt
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEE8grow_oneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.br)
          to label %._crit_edge395.i.i unwind label %bb.bv, !noalias !19525

._crit_edge395.i.i:                               ; preds = %bb.bu
  %.sroa.10.8.copyload123.pre.i.i = load i64, ptr %i.br, align 8, !noalias !19505
  br label %bb.di

bb.bv:                                            ; preds = %bb.bu
  %i.kv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bh) #59
          to label %.body142.i.i.i unwind label %bb.bw, !noalias !19494

bb.bw:                                            ; preds = %bb.bv
  %i.kw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58, !noalias !19494
  unreachable

bb.bx:                                            ; preds = %bb.bq
  br i1 %i.ko, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %.val128.i.i.i = load ptr, ptr %i.jy, align 8, !noalias !19494
  %.val129.i.i.i = load i64, ptr %i.jz, align 8, !noalias !19494, !noundef !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !19493
  store i64 %.sroa.081.0212.i.i.i, ptr %i.am, align 8, !noalias !19493
  %i.kx = lshr i64 %.val129.i.i.i, 1              ; 2 uses
  %i.ky = icmp samesign ult i64 %.sroa.081.0212.i.i.i, %i.kx
  br i1 %i.ky, label %bb.cc, label %bb.bz, !prof !121

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !19493
  store i64 %i.kx, ptr %i.al, align 8, !noalias !19493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !19493
  store ptr %i.am, ptr %i.ak, align 8, !noalias !19493
  %.sroa.42.0..sroa_idx.i144.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i144.i.i.i, align 8, !noalias !19493
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr %i.al, ptr %i.kz, align 8, !noalias !19493
  %.sroa.46.0..sroa_idx.i145.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i145.i.i.i, align 8, !noalias !19493
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @178, ptr noundef nonnull %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @180) #61
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !19494

.noexc.i.i.i:                                     ; preds = %bb.bz
  unreachable

bb.ca:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !19493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !19526
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aj, i64 noundef range(i64 0, -9223372036854775808) 30, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc149.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !19494

.noexc149.i.i.i:                                  ; preds = %bb.ca
  %i.la = load i64, ptr %i.aj, align 8, !range !39, !noalias !19526, !noundef !27
  %i.lb = trunc nuw i64 %i.la to i1
  %i.lc = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ld = load i64, ptr %i.lc, align 8, !range !68, !noalias !19526, !noundef !27 ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  br i1 %i.lb, label %bb.cb, label %bb.cm, !prof !69

bb.cb:                                            ; preds = %.noexc149.i.i.i
  %i.lf = load i64, ptr %i.le, align 8, !noalias !19526
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ld, i64 %i.lf) #56
          to label %.noexc150.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !19494

.noexc150.i.i.i:                                  ; preds = %bb.cb
  unreachable

bb.cc:                                            ; preds = %bb.by
  %i.lg = getelementptr inbounds nuw [2 x i8], ptr %.val128.i.i.i, i64 %.sroa.081.0212.i.i.i
  %i.lh = load i16, ptr %i.lg, align 2, !noalias !19494, !noundef !27 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !19493
  %.not.i.i.i = icmp eq i16 %i.lh, %.sroa.023.0211.i.i.i
  br i1 %.not.i.i.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !19493
  invoke fastcc void @_RNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4exec21split_by_file_id_runss_0Bd_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.bm, ptr nonnull %i.hs, ptr nonnull %i.cd, i64 noundef %.sroa.024.0210.i.i.i)
          to label %bb.cf unwind label %.loopexit.i70.i.i, !noalias !19494

bb.ce:                                            ; preds = %bb.cl, %bb.cc
  %.sroa.024.1.i.i.i = phi i64 [ %.sroa.081.0212.i.i.i, %bb.cl ], [ %.sroa.024.0210.i.i.i, %bb.cc ] ; 2 uses
  %.sroa.023.1.i.i.i = phi i16 [ %i.lh, %bb.cl ], [ %.sroa.023.0211.i.i.i, %bb.cc ]
  %exitcond.not.i.i.i = icmp eq i64 %i.kn, %umax.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %bb.bq

bb.cf:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !19493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !19493
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 24, i1 false), !noalias !19493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !19493
  %i.li = sub nsw i64 %.sroa.081.0212.i.i.i, %.sroa.024.0210.i.i.i
  invoke void @_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch5slice(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.bj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.de, i64 noundef %.sroa.024.0210.i.i.i, i64 noundef %i.li)
          to label %bb.ch unwind label %bb.cg, !noalias !19494

bb.cg:                                            ; preds = %bb.cf
  %i.lj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bk) #59
          to label %.body142.i.i.i unwind label %bb.bk, !noalias !19494

bb.ch:                                            ; preds = %bb.cf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 24, i1 false), !noalias !19493
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ke, ptr noundef nonnull align 8 dereferenceable(40) %i.bj, i64 40, i1 false), !noalias !19493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !19493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !19493
  %i.lk = load i64, ptr %i.kd, align 8, !alias.scope !19539, !noalias !19542, !noundef !27 ; 3 uses
  %i.ll = load i64, ptr %i.br, align 8, !range !76, !alias.scope !19539, !noalias !19542, !noundef !27
  %i.lm = icmp eq i64 %i.lk, %i.ll
  br i1 %i.lm, label %bb.ci, label %bb.cl

bb.ci:                                            ; preds = %bb.ch
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEE8grow_oneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.br)
          to label %bb.cl unwind label %bb.cj, !noalias !19544

bb.cj:                                            ; preds = %bb.ci
  %i.ln = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bl) #59
          to label %.body142.i.i.i unwind label %bb.ck, !noalias !19494

bb.ck:                                            ; preds = %bb.cj
  %i.lo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58, !noalias !19494
  unreachable

bb.cl:                                            ; preds = %bb.ci, %bb.ch
  %i.lp = load ptr, ptr %i.kc, align 8, !alias.scope !19539, !noalias !19542, !nonnull !27, !noundef !27
  %i.lq = getelementptr inbounds nuw [64 x i8], ptr %i.lp, i64 %i.lk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.lq, ptr noundef nonnull align 8 dereferenceable(64) %i.bl, i64 64, i1 false), !noalias !19494
  %i.lr = add i64 %i.lk, 1
  store i64 %i.lr, ptr %i.kd, align 8, !alias.scope !19539, !noalias !19542
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !19493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !19493
  br label %bb.ce

bb.cm:                                            ; preds = %.noexc149.i.i.i
  %i.ls = load ptr, ptr %i.le, align 8, !noalias !19526, !nonnull !27, !noundef !27 ; 2 uses
  %i.lt = icmp ugt i64 %i.ld, 29
  call void @llvm.assume(i1 %i.lt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !19526
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.ls, ptr noundef nonnull readonly align 1 dereferenceable(30) @256, i64 range(i64 0, -9223372036854775808) 30, i1 false), !noalias !19545
  store i64 %i.ld, ptr %i.bp, align 8, !noalias !19493
  %.sroa.4195.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.ls, ptr %.sroa.4195.0..sroa_idx.i.i.i, align 8, !noalias !19493
  %.sroa.5196.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store i64 30, ptr %.sroa.5196.0..sroa_idx.i.i.i, align 8, !noalias !19493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !19493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !19493
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.az, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.co unwind label %bb.cn, !noalias !19494

.body159.i.i.i:                                   ; preds = %bb.cs, %bb.cr, %bb.cn
  %.pn110.i.i.i = phi { ptr, i32 } [ %i.md, %bb.cr ], [ %i.lu, %bb.cn ], [ %i.me, %bb.cs ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bp) #59
          to label %.body142.i.i.i unwind label %bb.bk, !noalias !19494

bb.cn:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i158.i.i.i, %bb.cp, %bb.cm
  %i.lu = landingpad { ptr, i32 }
          cleanup
  br label %.body159.i.i.i

bb.co:                                            ; preds = %bb.cm
  %i.lv = load i64, ptr %i.az, align 8, !range !39, !noalias !19493, !noundef !27
  %i.lw = trunc nuw i64 %i.lv to i1
  %i.lx = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.ly = load i64, ptr %i.lx, align 8, !range !68, !noalias !19493, !noundef !27 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  br i1 %i.lw, label %bb.cp, label %bb.cq, !prof !69

bb.cp:                                            ; preds = %bb.co
  %i.ma = load i64, ptr %i.lz, align 8, !noalias !19493
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ly, i64 %i.ma) #56
          to label %bb.bl unwind label %bb.cn, !noalias !19494

bb.cq:                                            ; preds = %bb.co
  %i.mb = load ptr, ptr %i.lz, align 8, !noalias !19493, !nonnull !27, !noundef !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !19493
  store i64 %i.ly, ptr %i.bo, align 8, !noalias !19493
  %.sroa.486.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %i.mb, ptr %.sroa.486.0..sroa_idx.i.i.i, align 8, !noalias !19493
  %.sroa.587.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store i64 0, ptr %.sroa.587.0..sroa_idx.i.i.i, align 8, !noalias !19493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !19493
  store ptr %i.bp, ptr %i.bn, align 8, !noalias !19493
  %.sroa.491.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.491.0..sroa_idx.i.i.i, align 8, !noalias !19493
  %i.mc = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store ptr %i.bo, ptr %i.mc, align 8, !noalias !19493
  %.sroa.495.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.495.0..sroa_idx.i.i.i, align 8, !noalias !19493
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bq, ptr noundef nonnull @29, ptr noundef nonnull %i.bn)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit156.i.i.i unwind label %bb.cr, !noalias !19494

bb.cr:                                            ; preds = %bb.cq
  %i.md = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bo) #59
          to label %.body159.i.i.i unwind label %bb.bk, !noalias !19494

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit156.i.i.i: ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !19493
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i158.i.i.i unwind label %bb.cs, !noalias !19494

bb.cs:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit156.i.i.i
  %i.me = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %.body159.i.i.i unwind label %bb.ct, !noalias !19494

bb.ct:                                            ; preds = %bb.cs
  %i.mf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58, !noalias !19494
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i158.i.i.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit156.i.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit162.i.i.i unwind label %bb.cn, !noalias !19494

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit162.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i158.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !19493
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i164.i.i.i unwind label %bb.cu, !noalias !19494

bb.cu:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit162.i.i.i
  %i.mg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %.body142.i.i.i unwind label %bb.cv, !noalias !19494

bb.cv:                                            ; preds = %bb.cu
  %i.mh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58, !noalias !19494
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i164.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit162.i.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit168.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !19494

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit168.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i164.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !19493
  %.sroa.10.8.copyload124.i.i = load i64, ptr %i.bq, align 8, !noalias !19505
  %.sroa.18.8..sroa_idx131.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.sroa.18.8.copyload132.i.i = load ptr, ptr %.sroa.18.8..sroa_idx131.i.i, align 8, !noalias !19505
  %.sroa.20.8..sroa_idx140.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %.sroa.20.8.copyload141.i.i = load i64, ptr %.sroa.20.8..sroa_idx140.i.i, align 8, !noalias !19505
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtB7_6string6StringNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.br)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtBL_6string6StringNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %bb.cw, !noalias !19494

bb.cw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit168.i.i.i
  %i.mi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.br)
          to label %.body.i.i unwind label %bb.cx, !noalias !19494

bb.cx:                                            ; preds = %bb.cw
  %i.mj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58, !noalias !19494
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtBL_6string6StringNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit168.i.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.br)
          to label %.noexc93.i.i unwind label %bb.ab, !noalias !19458

.noexc93.i.i:                                     ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtBL_6string6StringNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !19493
  br label %bb.bj

.body173.i.i.i:                                   ; preds = %bb.dd, %bb.dc, %bb.cy
  %.pn113.i.i.i = phi { ptr, i32 } [ %i.mt, %bb.dc ], [ %i.mk, %bb.cy ], [ %i.mu, %bb.dd ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bu) #59
          to label %.body.i.i unwind label %bb.bk, !noalias !19494

bb.cy:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i172.i.i.i, %bb.da, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit141.i.i.i
  %i.mk = landingpad { ptr, i32 }
          cleanup
  br label %.body173.i.i.i

bb.cz:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit141.i.i.i
end_hunk_1

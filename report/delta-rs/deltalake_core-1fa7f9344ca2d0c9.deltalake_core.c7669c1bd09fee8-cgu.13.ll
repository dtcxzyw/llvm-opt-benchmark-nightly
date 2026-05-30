inline.NumInlined: 13443
inline.NumDeleted: 3890
begin_hunk_0_@_RNvXs1_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream10filter_mapINtB5_9FilterMapINtNtB9_4once4OnceNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB1G_21ReceiverStreamBuilderNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE5build0ENCNCB1D_s_00NCB1D_s_0ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB1M_:bb.a
  call void @_RNvXs_NtCs8CRAYtH5WmW_12futures_util3fnsNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtBH_21ReceiverStreamBuilderNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE5builds_0INtB4_6FnMut1INtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB3v_6result6ResultB27_NtNtBN_6errors15DeltaTableErrorEEE8call_mutBN_(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %.sroa.426, ptr noalias noundef nonnull %i.d, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(96) %i.a)
  %i.k = load i128, ptr %1, align 16, !range !31923, !noalias !31927, !noundef !4
  %i.l = icmp eq i128 %i.k, 0
  br i1 %i.l, label %_RNvMs5_NtCsbvkFyIu7lgC_4core3pinINtB5_3PinQINtNtB7_6option6OptionNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB18_21ReceiverStreamBuilderNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE5builds_00EE3setB1e_.exit12, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = load i8, ptr %i.f, align 16, !range !102, !noalias !31927, !noundef !4
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.j, label %_RNvMs5_NtCsbvkFyIu7lgC_4core3pinINtB5_3PinQINtNtB7_6option6OptionNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB18_21ReceiverStreamBuilderNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE5builds_00EE3setB1e_.exit12

bb.j:                                             ; preds = %bb.i
  %i.o = load i64, ptr %i.e, align 16, !range !1116, !alias.scope !31930, !noalias !31927, !noundef !4
  switch i64 %i.o, label %bb.l [
    i64 -9223372036854775710, label %_RNvMs5_NtCsbvkFyIu7lgC_4core3pinINtB5_3PinQINtNtB7_6option6OptionNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB18_21ReceiverStreamBuilderNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE5builds_00EE3setB1e_.exit12
    i64 -9223372036854775711, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.g)
          to label %_RNvMs5_NtCsbvkFyIu7lgC_4core3pinINtB5_3PinQINtNtB7_6option6OptionNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB18_21ReceiverStreamBuilderNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE5builds_00EE3setB1e_.exit12 unwind label %common.resume

bb.l:                                             ; preds = %bb.j
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEBK_(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.e)
          to label %_RNvMs5_NtCsbvkFyIu7lgC_4core3pinINtB5_3PinQINtNtB7_6option6OptionNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB18_21ReceiverStreamBuilderNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE5builds_00EE3setB1e_.exit12 unwind label %common.resume

common.resume:                                    ; preds = %bb.l, %bb.k
  %i.p = landingpad { ptr, i32 }
          cleanup
  store i128 1, ptr %1, align 16, !noalias !31927
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.e, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.426, i64 112, i1 false)
  resume { ptr, i32 } %i.p

_RNvMs5_NtCsbvkFyIu7lgC_4core3pinINtB5_3PinQINtNtB7_6option6OptionNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB18_21ReceiverStreamBuilderNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE5builds_00EE3setB1e_.exit12: ; preds = %bb.j, %bb.i, %bb.h, %bb.k, %bb.l
  store i128 1, ptr %1, align 16, !noalias !31927
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.e, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.426, i64 112, i1 false)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB2o_.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB2o_.exit: ; preds = %bb.n, %_RNvMs5_NtCsbvkFyIu7lgC_4core3pinINtB5_3PinQINtNtB7_6option6OptionNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB18_21ReceiverStreamBuilderNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE5builds_00EE3setB1e_.exit12
  %extract.t = xor i1 %.off0, true
  br label %bb.b

.loopexit:                                        ; preds = %bb.f, %bb.o
  %.sroa.0.0 = phi i64 [ %.sroa.018.0.copyload19, %bb.o ], [ -9223372036854775710, %bb.f ]
  store i64 %.sroa.0.0, ptr %0, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6, i64 88, i1 false)
  br label %bb.p

bb.m:                                             ; preds = %_RNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB6_21ReceiverStreamBuilderNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE5builds_00Bc_.exit
  store i64 -9223372036854775709, ptr %0, align 16
  br label %bb.p

bb.n:                                             ; preds = %_RNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB6_21ReceiverStreamBuilderNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE5builds_00Bc_.exit
  store i128 0, ptr %1, align 16, !noalias !31933
  %.not9 = icmp eq i64 %.sroa.018.0.copyload19, -9223372036854775710
  br i1 %.not9, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB2o_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(88) %i.g, i64 88, i1 false)
  br label %.loopexit

bb.p:                                             ; preds = %bb.g, %bb.m, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream10filter_mapINtB5_9FilterMapINtNtB9_4once4OnceNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB1G_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE5build0ENCNCB1D_s_00NCB1D_s_0ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB1M_(ptr dead_on_unwind noalias noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 16 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.428 = alloca [112 x i8], align 16        ; 3 uses
  %i.a = alloca [96 x i8], align 16               ; 3 uses
  %i.b = alloca [96 x i8], align 16               ; 3 uses
  %i.c = alloca [96 x i8], align 16               ; 7 uses
  %.sroa.6 = alloca [88 x i8], align 8            ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 184
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.3.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %.sroa.622.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.h = load i128, ptr %1, align 16, !range !31923, !noundef !4
  %i.i = trunc nuw i128 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.j = load i8, ptr %i.f, align 16, !range !102, !noalias !31936, !noundef !4
  switch i8 %i.j, label %default.unreachable [
    i8 0, label %_RNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB6_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE5builds_00Bc_.exit
    i8 1, label %bb.d
    i8 2, label %bb.e
  ]

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @219) #50, !noalias !31936
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @219) #50, !noalias !31936
  unreachable

_RNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB6_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE5builds_00Bc_.exit: ; preds = %bb.c
  %.sroa.020.0.copyload21 = load i64, ptr %i.g, align 16 ; 4 uses
  store i8 1, ptr %i.f, align 16, !noalias !31936
  %i.k = icmp eq i64 %.sroa.020.0.copyload21, -9223372036854775709
  br i1 %i.k, label %bb.k, label %bb.l

bb.f:                                             ; preds = %bb.b
  call void @_RNvXs_NtNtCs8CRAYtH5WmW_12futures_util6stream4onceINtB4_4OnceNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB12_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE5build0ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB18_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.b, ptr noundef nonnull align 8 %i.d, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.l = load i64, ptr %i.b, align 16, !range !19994, !noundef !4 ; 2 uses
  switch i64 %i.l, label %bb.h [
    i64 -9223372036854775708, label %bb.g
    i64 -9223372036854775709, label %.loopexit
  ]

bb.g:                                             ; preds = %bb.f
  store i64 -9223372036854775709, ptr %0, align 16
  br label %bb.o

bb.h:                                             ; preds = %bb.f
  store i64 %i.l, ptr %i.a, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3.0..sroa_idx6, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3.0..sroa_idx, i64 88, i1 false)
  call void @_RNvXs_NtCs8CRAYtH5WmW_12futures_util3fnsNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtBH_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE5builds_0INtB4_6FnMut1INtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB3o_6result6ResultB27_NtNtBN_6errors15DeltaTableErrorEEE8call_mutBN_(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %.sroa.428, ptr noalias noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(96) %i.a)
  %i.m = load i128, ptr %1, align 16, !range !31923, !noalias !31939, !noundef !4
  %i.n = icmp eq i128 %i.m, 0
  br i1 %i.n, label %_RNvMs5_NtCsbvkFyIu7lgC_4core3pinINtB5_3PinQINtNtB7_6option6OptionNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB18_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE5builds_00EE3setB1e_.exit12, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = load i8, ptr %i.f, align 16, !range !102, !noalias !31939, !noundef !4
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.j, label %_RNvMs5_NtCsbvkFyIu7lgC_4core3pinINtB5_3PinQINtNtB7_6option6OptionNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB18_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE5builds_00EE3setB1e_.exit12

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB2h_(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.g)
          to label %_RNvMs5_NtCsbvkFyIu7lgC_4core3pinINtB5_3PinQINtNtB7_6option6OptionNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB18_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE5builds_00EE3setB1e_.exit12 unwind label %common.resume

common.resume:                                    ; preds = %bb.j
  %i.q = landingpad { ptr, i32 }
          cleanup
  store i128 1, ptr %1, align 16, !noalias !31939
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.g, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.428, i64 112, i1 false)
  resume { ptr, i32 } %i.q

_RNvMs5_NtCsbvkFyIu7lgC_4core3pinINtB5_3PinQINtNtB7_6option6OptionNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB18_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE5builds_00EE3setB1e_.exit12: ; preds = %bb.i, %bb.h, %bb.j
  store i128 1, ptr %1, align 16, !noalias !31939
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.g, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.428, i64 112, i1 false)
  br label %.backedge

.loopexit:                                        ; preds = %bb.f, %bb.m
  %.sroa.0.0 = phi i64 [ %.sroa.020.0.copyload21, %bb.m ], [ -9223372036854775710, %bb.f ]
  store i64 %.sroa.0.0, ptr %0, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6, i64 88, i1 false)
  br label %bb.o

bb.k:                                             ; preds = %_RNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB6_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE5builds_00Bc_.exit
  store i64 -9223372036854775709, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.o

bb.l:                                             ; preds = %_RNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB6_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE5builds_00Bc_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.622.0..sroa_idx23, i64 88, i1 false)
  store i64 %.sroa.020.0.copyload21, ptr %i.c, align 16
  store i128 0, ptr %1, align 16, !noalias !31942
  %.not9 = icmp eq i64 %.sroa.020.0.copyload21, -9223372036854775710
  br i1 %.not9, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.622.0..sroa_idx23, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit

bb.n:                                             ; preds = %bb.l
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB2h_(ptr noalias noundef align 16 dereferenceable(96) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.backedge

.backedge:                                        ; preds = %bb.n, %_RNvMs5_NtCsbvkFyIu7lgC_4core3pinINtB5_3PinQINtNtB7_6option6OptionNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB18_21ReceiverStreamBuilderNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataE5builds_00EE3setB1e_.exit12
  br label %bb.b

bb.o:                                             ; preds = %bb.g, %bb.k, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream10filter_mapINtB5_9FilterMapINtNtB9_4once4OnceNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB1G_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB3x_yEEE5build0ENCNCB1D_s_00NCB1D_s_0ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB1M_(ptr dead_on_unwind noalias noundef writable writeonly sret([128 x i8]) align 16 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 16 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.437 = alloca [144 x i8], align 16        ; 3 uses
  %i.a = alloca [128 x i8], align 16              ; 4 uses
  %i.b = alloca [128 x i8], align 16              ; 4 uses
  %i.c = alloca [128 x i8], align 16              ; 7 uses
  %.sroa.0 = alloca [112 x i8], align 16          ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 216
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %.sroa.2.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %.sroa.3.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %.sroa.526.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.4.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.i = load i128, ptr %1, align 16, !range !31923, !noundef !4
  %i.j = trunc nuw i128 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.k = load i8, ptr %i.g, align 16, !range !102, !noalias !31945, !noundef !4
  switch i8 %i.k, label %default.unreachable [
    i8 0, label %_RNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB6_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1W_yEEE5builds_00Bc_.exit
    i8 1, label %bb.d
    i8 2, label %bb.e
  ]

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @219) #50, !noalias !31945
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @219) #50, !noalias !31945
  unreachable

_RNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB6_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1W_yEEE5builds_00Bc_.exit: ; preds = %bb.c
  %3 = load <2 x i64>, ptr %.sroa.526.0..sroa_idx27, align 16 ; 3 uses
  store i8 1, ptr %i.g, align 16, !noalias !31945
  %4 = extractelement <2 x i64> %3, i64 0         ; 3 uses
  %i.l = icmp eq i64 %4, 4
  br i1 %i.l, label %bb.k, label %bb.l

bb.f:                                             ; preds = %bb.b
  call void @_RNvXs_NtNtCs8CRAYtH5WmW_12futures_util6stream4onceINtB4_4OnceNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB12_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB2T_yEEE5build0ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB18_(ptr noalias noundef nonnull sret([128 x i8]) align 16 captures(none) dereferenceable(128) %i.b, ptr noundef nonnull align 8 %i.d, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.m = load i64, ptr %i.f, align 16, !range !31948, !noundef !4 ; 2 uses
  switch i64 %i.m, label %bb.h [
    i64 5, label %bb.g
    i64 4, label %.loopexit
  ]

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 4, ptr %i.n, align 16
  br label %bb.o

bb.h:                                             ; preds = %bb.f
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.a, ptr noundef nonnull align 16 dereferenceable(112) %i.b, i64 112, i1 false)
  store i64 %i.m, ptr %.sroa.2.0..sroa_idx7, align 16
  store i64 %.sroa.3.0.copyload, ptr %.sroa.3.0..sroa_idx9, align 8
  call void @_RNvXs_NtCs8CRAYtH5WmW_12futures_util3fnsNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtBH_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB2x_yEEE5builds_0INtB4_6FnMut1IB2x_INtNtB2B_6result6ResultB27_NtNtBN_6errors15DeltaTableErrorEEE8call_mutBN_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %.sroa.437, ptr noalias noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(128) %i.a)
  %i.o = load i128, ptr %1, align 16, !range !31923, !noalias !31949, !noundef !4
  %i.p = icmp eq i128 %i.o, 0
  br i1 %i.p, label %_RNvMs5_NtCsbvkFyIu7lgC_4core3pinINtB5_3PinQINtNtB7_6option6OptionNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB18_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlIBG_INtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIBG_yEEE5builds_00EE3setB1e_.exit16, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = load i8, ptr %i.g, align 16, !range !102, !noalias !31949, !noundef !4
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_RNvMs5_NtCsbvkFyIu7lgC_4core3pinINtB5_3PinQINtNtB7_6option6OptionNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB18_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlIBG_INtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIBG_yEEE5builds_00EE3setB1e_.exit16

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultTNtCseo6ZV82fEK1_3url3UrlIBH_INtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIBH_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB2C_(ptr noalias noundef nonnull align 16 dereferenceable(128) %i.h)
          to label %_RNvMs5_NtCsbvkFyIu7lgC_4core3pinINtB5_3PinQINtNtB7_6option6OptionNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB18_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlIBG_INtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIBG_yEEE5builds_00EE3setB1e_.exit16 unwind label %common.resume

common.resume:                                    ; preds = %bb.j
  %i.s = landingpad { ptr, i32 }
          cleanup
  store i128 1, ptr %1, align 16, !noalias !31949
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.h, ptr noundef nonnull align 16 dereferenceable(144) %.sroa.437, i64 144, i1 false)
  resume { ptr, i32 } %i.s

_RNvMs5_NtCsbvkFyIu7lgC_4core3pinINtB5_3PinQINtNtB7_6option6OptionNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB18_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlIBG_INtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIBG_yEEE5builds_00EE3setB1e_.exit16: ; preds = %bb.i, %bb.h, %bb.j
  store i128 1, ptr %1, align 16, !noalias !31949
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.h, ptr noundef nonnull align 16 dereferenceable(144) %.sroa.437, i64 144, i1 false)
  br label %.backedge

.loopexit:                                        ; preds = %bb.f, %bb.m
  %.sroa.6.0 = phi i64 [ %5, %bb.m ], [ undef, %bb.f ]
  %.sroa.5.0 = phi i64 [ %4, %bb.m ], [ 3, %bb.f ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %0, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.0, i64 112, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.o

bb.k:                                             ; preds = %_RNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB6_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1W_yEEE5builds_00Bc_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 4, ptr %i.t, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.o

bb.l:                                             ; preds = %_RNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB6_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1W_yEEE5builds_00Bc_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.c, ptr noundef nonnull align 16 dereferenceable(112) %i.h, i64 112, i1 false)
  store <2 x i64> %3, ptr %.sroa.4.0..sroa_idx.a, align 16
  store i128 0, ptr %1, align 16, !noalias !31952
  %.not13 = icmp eq i64 %4, 3
  br i1 %.not13, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.0, ptr noundef nonnull align 16 dereferenceable(112) %i.h, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %5 = extractelement <2 x i64> %3, i64 1
  br label %.loopexit

bb.n:                                             ; preds = %bb.l
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultTNtCseo6ZV82fEK1_3url3UrlIBH_INtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIBH_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB2C_(ptr noalias noundef align 16 dereferenceable(128) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.backedge

.backedge:                                        ; preds = %bb.n, %_RNvMs5_NtCsbvkFyIu7lgC_4core3pinINtB5_3PinQINtNtB7_6option6OptionNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB18_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlIBG_INtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIBG_yEEE5builds_00EE3setB1e_.exit16
  br label %bb.b

bb.o:                                             ; preds = %bb.g, %bb.k, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystemINtB5_15MetricsIteratorINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8buffered8BufferedINtNtB1w_3map3MapINtNtB1y_4iter4IterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtB4q_3ops5range5RangeyEEEEENCNCNvB5_15read_files_impl00EENtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(184) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [832 x i8], align 8               ; 5 uses
  %i.b = alloca [832 x i8], align 8               ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31955)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.f = tail call { ptr, i64 } @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.e), !noalias !31958
  %i.g = extractvalue { ptr, i64 } %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !31955, !noalias !31958, !noundef !4 ; 2 uses
  %i.j = icmp ult i64 %i.i, 82351536043346213
  tail call void @llvm.assume(i1 %i.j)
  %i.k = add i64 %i.g, %i.i
  %i.l = load i64, ptr %i.d, align 8, !alias.scope !31955, !noalias !31958, !noundef !4
  %i.m = icmp ult i64 %i.k, %i.l
  br i1 %i.m, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 824
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !31961
  call void @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB9_4iter4IterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtB2X_3ops5range5RangeyEEEEENCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([832 x i8]) align 8 captures(address) dereferenceable(832) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !noalias !31962
  %i.q = load i64, ptr %i.b, align 8, !range !1069, !noalias !31961, !noundef !4
  %i.r = and i64 %i.q, 1
  %or.cond.not.i = icmp eq i64 %i.r, 0
  br i1 %or.cond.not.i, label %bb.c, label %bb.d

.loopexit.i:                                      ; preds = %bb.d, %bb.c, %bb.a
  call void @_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull align 8 dereferenceable(128) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.s = load i64, ptr %0, align 16, !range !16566, !noundef !4
  switch i64 %i.s, label %bb.h [
    i64 -9223372036854775741, label %bb.f
    i64 -9223372036854775742, label %bb.e
    i64 -9223372036854775743, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !31961
  br label %.loopexit.i

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31961
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(824) %i.a, ptr noundef nonnull align 8 dereferenceable(824) %i.n, i64 824, i1 false), !noalias !31961
  %i.t = load i64, ptr %i.o, align 8, !alias.scope !31955, !noalias !31958, !noundef !4 ; 2 uses
  store i64 %i.t, ptr %i.p, align 8, !noalias !31961
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.o, align 8, !alias.scope !31955, !noalias !31958
  call void @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EE4pushCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.e, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(832) %i.a), !noalias !31962
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !31961
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !31961
  %i.v = call { ptr, i64 } @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.e), !noalias !31962
  %i.w = extractvalue { ptr, i64 } %i.v, 1
  %i.x = load i64, ptr %i.h, align 8, !alias.scope !31955, !noalias !31958, !noundef !4 ; 2 uses
  %i.y = icmp ult i64 %i.x, 82351536043346213
  call void @llvm.assume(i1 %i.y)
  %i.z = add i64 %i.w, %i.x
  %i.aa = load i64, ptr %i.d, align 8, !alias.scope !31955, !noalias !31958, !noundef !4
  %i.ab = icmp ult i64 %i.z, %i.aa
  br i1 %i.ab, label %bb.b, label %.loopexit.i

bb.e:                                             ; preds = %.loopexit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ad = load i8, ptr %i.ac, align 8, !range !178, !alias.scope !31955, !noalias !31958, !noundef !4
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
  call fastcc void @_RNvMNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystemINtB2_15MetricsIteratorINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8buffered8BufferedINtNtB1t_3map3MapINtNtB1v_4iter4IterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtB4n_3ops5range5RangeyEEEEENCNCNvB2_15read_files_impl00EENtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE17emit_metrics_onceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(184) %1)
  store i64 -9223372036854775742, ptr %0, align 16
  br label %bb.h

bb.f:                                             ; preds = %.loopexit.i, %bb.e
  store i64 -9223372036854775741, ptr %0, align 16
  br label %bb.h

bb.g:                                             ; preds = %.loopexit.i
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.3.sroa.2.0.copyload = load i64, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.ag = load <2 x i64>, ptr %i.af, align 8
  %i.ah = insertelement <2 x i64> <i64 1, i64 poison>, i64 %.sroa.3.sroa.2.0.copyload, i64 1
  %i.ai = add <2 x i64> %i.ag, %i.ah
  store <2 x i64> %i.ai, ptr %i.af, align 8
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.i, %bb.g, %.thread, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCNCNvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtBY_13CreateBuilder22into_table_and_actions0s3_0INtB7_5FnMutTRNtNtNtB12_6kernel6models6ActionEE8call_mutB12_(ptr noalias noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(272) %1) unnamed_addr #14 {
bb.a:
  %.val = load i64, ptr %1, align 8, !range !1310, !noundef !4 ; 2 uses
  %i.a = icmp ne i64 %.val, 4
  tail call void @llvm.assume(i1 %i.a)
  %i.b = icmp ne i64 %.val, 3
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providerNtBY_16DeltaScanBuilder5build0s3_0INtB7_5FnMutTRRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEE8call_mutB12_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !18, !noundef !4
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %.val1 = load ptr, ptr %1, align 8, !nonnull !4, !align !18, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = load ptr, ptr %.val1, align 8, !nonnull !4, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = tail call noundef zeroext i1 @_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.c, i64 noundef %i.e)
  %i.i = xor i1 %i.h, true
  ret i1 %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize17build_zorder_plan00INtB7_5FnMutTRRNtNtCs6Po7BT7Nknu_5alloc6string6StringEE8call_mutBY_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !align !18, !noundef !4
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val1 = load i64, ptr %i.b, align 8, !noundef !4
  %.val2 = load ptr, ptr %1, align 8, !nonnull !4, !align !18, !noundef !4
  %i.c = tail call noundef zeroext i1 @_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val, i64 noundef %.val1)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize17build_zorder_plan0s0_0INtB7_5FnMutTRRNtNtCs6Po7BT7Nknu_5alloc6string6StringEE8call_mutBY_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !18, !noundef !4
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %.val1 = load ptr, ptr %1, align 8, !nonnull !4, !align !18, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = tail call noundef zeroext i1 @_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.c, i64 noundef %i.e)
  %i.g = xor i1 %i.f, true
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider17df_logical_schema0INtB7_5FnMutTRRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEE8call_mutBW_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !18, !noundef !4
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %.val1 = load ptr, ptr %1, align 8, !nonnull !4, !align !18, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = load ptr, ptr %.val1, align 8, !nonnull !4, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = tail call noundef zeroext i1 @_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.c, i64 noundef %i.e)
  %i.i = xor i1 %i.h, true
  ret i1 %i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1f_NtCshmPyUV8PP35_6chrono6formatNtB6_10ParseErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @999, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @998)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtNtB8_3ptr8non_null7NonNullINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB18_7runtime4task4join10JoinHandleINtNtB8_6result6ResultTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEB34_yENtNtB3J_6errors15DeltaTableErrorEEEENtB6_5Debug3fmtB3J_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !18, !noundef !4
  %.val = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31963
end_hunk_0

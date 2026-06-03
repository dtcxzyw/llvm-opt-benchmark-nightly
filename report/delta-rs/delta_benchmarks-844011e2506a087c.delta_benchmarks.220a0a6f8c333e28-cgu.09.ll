inline.NumInlined: 4836
inline.NumDeleted: 1728
begin_hunk_0_@_RNCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types9Int32TypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
bb.ai:                                            ; preds = %bb.v, %bb.ac
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.aj:                                            ; preds = %bb.t
  %i.dm = load i32, ptr %i.t, align 4, !noundef !4
  %.not177 = icmp eq i32 %i.dm, 0
  br i1 %.not177, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.s, ptr noundef nonnull align 4 dereferenceable(12) %i.t, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.s, ptr %i.r, align 8
  %.sroa.4114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXsh_NtNtCshmPyUV8PP35_6chrono5naive8datetimeNtB5_13NaiveDateTimeNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt, ptr %.sroa.4114.0..sroa_idx, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.z, ptr %i.dn, align 8
  %.sroa.4118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc4sync3ArceENtB6_7Display3fmtCs2VbMhdeEr66_16delta_benchmarks, ptr %.sroa.4118.0..sroa_idx, align 8
  %i.do = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !nonnull !4, !align !10, !noundef !4
  %i.dr = invoke noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.do, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dq, ptr noundef nonnull @191, ptr noundef nonnull %i.r)
          to label %bb.an unwind label %bb.w

bb.al:                                            ; preds = %bb.aj
  %i.ds = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !nonnull !4, !align !10, !noundef !4
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8, !invariant.load !4, !nonnull !4
  %i.dx = invoke noundef zeroext i1 %i.dw(ptr noundef nonnull %i.ds, ptr noalias noundef nonnull readonly captures(address, read_provenance) @190, i64 noundef 4)
          to label %bb.am unwind label %bb.w

bb.am:                                            ; preds = %bb.al, %bb.an
  %.sroa.0.6.in = phi i1 [ %i.dr, %bb.an ], [ %i.dx, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.ag

bb.an:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.am

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCs1N9T06jgEdt_11arrow_array8timezone7private2TzNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %.body, %bb.v
  resume { ptr, i32 } %.pn

bb.ao:                                            ; preds = %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int32TypeE5valueCs2VbMhdeEr66_16delta_benchmarks.exit191
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store i32 %i.br, ptr %i.ah, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr %i.ah, ptr %i.ag, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr @_RNvXsi_NtNtCshmPyUV8PP35_6chrono5naive4dateNtB5_9NaiveDateNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt, ptr %.sroa.419.0..sroa_idx, align 8
  %i.dy = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !nonnull !4, !align !10, !noundef !4
  %i.eb = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.dy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ea, ptr noundef nonnull @45, ptr noundef nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.s

bb.ap:                                            ; preds = %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int32TypeE5valueCs2VbMhdeEr66_16delta_benchmarks.exit191
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store ptr %i.ai, ptr %i.af, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr @_RNvXse_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.415.0..sroa_idx, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr %.0.val, ptr %i.ec, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCs2VbMhdeEr66_16delta_benchmarks, ptr %.sroa.434.0..sroa_idx, align 8
  %i.ed = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !nonnull !4, !align !10, !noundef !4
  %i.eg = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.ed, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ef, ptr noundef nonnull @192, ptr noundef nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.s

bb.aq:                                            ; preds = %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int32TypeE5valueCs2VbMhdeEr66_16delta_benchmarks.exit194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.ei = load <2 x i32>, ptr %i.eh, align 4
  store <2 x i32> %i.ei, ptr %i.ac, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store ptr %i.ac, ptr %i.ab, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr @_RNvXsb_NtNtCshmPyUV8PP35_6chrono5naive4timeNtB5_9NaiveTimeNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt, ptr %.sroa.454.0..sroa_idx, align 8
  %i.ej = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !nonnull !4, !align !10, !noundef !4
  %i.em = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.ej, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.el, ptr noundef nonnull @45, ptr noundef nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.as

bb.ar:                                            ; preds = %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int32TypeE5valueCs2VbMhdeEr66_16delta_benchmarks.exit194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr %i.ae, ptr %i.aa, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @_RNvXse_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.450.0..sroa_idx, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %.0.val, ptr %i.en, align 8
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCs2VbMhdeEr66_16delta_benchmarks, ptr %.sroa.470.0..sroa_idx, align 8
  %i.eo = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !nonnull !4, !align !10, !noundef !4
  %i.er = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.eo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.eq, ptr noundef nonnull @192, ptr noundef nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %.sroa.0.12.in = phi i1 [ %i.em, %bb.aq ], [ %i.er, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.s
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtBb_5types17GenericStringTypelEENtB9_5Array9into_data6vtableCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noundef nonnull captures(address) %1) unnamed_addr #2 {
bb.a:
  tail call void @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array9into_dataCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(120) %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10list_array16GenericListArraylENtB9_5Array9into_data6vtableCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noundef nonnull captures(address) %1) unnamed_addr #2 {
bb.a:
  tail call void @_RNvXs6_NtNtCs1N9T06jgEdt_11arrow_array5array10list_arrayINtB5_16GenericListArraylENtB7_5Array9into_dataCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10list_array16GenericListArrayxENtB9_5Array9into_data6vtableCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noundef nonnull captures(address) %1) unnamed_addr #2 {
bb.a:
  tail call void @_RNvXs6_NtNtCs1N9T06jgEdt_11arrow_array5array10list_arrayINtB5_16GenericListArrayxENtB7_5Array9into_dataCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBb_5types9Int32TypeENtB9_5Array9into_data6vtableCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noundef nonnull captures(address) %1) unnamed_addr #2 {
bb.a:
  tail call void @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array9into_dataCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNtNtNtCs1N9T06jgEdt_11arrow_array5array12struct_array11StructArrayNtB8_5Array9into_data6vtableCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noundef nonnull captures(address) %1) unnamed_addr #2 {
bb.a:
  tail call void @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array12struct_arrayNtB5_11StructArrayNtB7_5Array9into_data(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNtNtNtCs1N9T06jgEdt_11arrow_array5array21fixed_size_list_array18FixedSizeListArrayNtB8_5Array9into_data6vtableCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noundef nonnull captures(address) %1) unnamed_addr #2 {
bb.a:
  tail call void @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array21fixed_size_list_arrayNtB5_18FixedSizeListArrayNtB7_5Array9into_data(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNtNtNtCs1N9T06jgEdt_11arrow_array5array9map_array8MapArrayNtB8_5Array9into_data6vtableCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noundef nonnull captures(address) %1) unnamed_addr #2 {
bb.a:
  tail call void @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array9map_arrayNtB5_8MapArrayNtB7_5Array9into_data(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(200) %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvMNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collectINtB2_10TryCollectINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB1t_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB1t_6marker4SendEL_EEINtNtB1Z_3vec3VecB41_EE3newCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.b, align 8
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvMNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collectINtB2_10TryCollectINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1t_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB1t_6marker4SendEL_EEINtNtB1Z_3vec3VecB3H_EE3newCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.b, align 8
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB13_6future6future6Futurep6OutputTjINtNtB13_6result6ResultINtNtB1z_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB13_6marker4SendEL_EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE3newCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 528 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !noundef !4 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  store i64 %3, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @201, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %2, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %4, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx, align 8
  %.sroa.510.sroa.6.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %1, ptr %.sroa.510.sroa.6.0..sroa.510.0..sroa_idx.sroa_idx, align 64
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35, !noalias !8589
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 3025) 256, i64 noundef range(i64 8, 129) 128) #35, !noalias !8589 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !37

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #32
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputTjINtNtB4_6result6ResultINtNtB1R_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB4_6marker4SendEL_EEINtNtB1R_4sync3ArcNtNtNtBN_9scheduler14current_thread6HandleEEECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #34
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB13_6future6future6Futurep6OutputTjINtNtB13_6result6ResultINtNtB1z_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB13_6marker4SendEL_EEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 504 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  store i64 %3, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @202, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %2, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %4, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx, align 8
  %.sroa.510.sroa.6.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %1, ptr %.sroa.510.sroa.6.0..sroa.510.0..sroa_idx.sroa_idx, align 64
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35, !noalias !8592
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 3025) 256, i64 noundef range(i64 8, 129) 128) #35, !noalias !8592 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !37

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #32
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputTjINtNtB4_6result6ResultINtNtB1R_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB4_6marker4SendEL_EEINtNtB1R_4sync3ArcNtNtNtNtBN_9scheduler12multi_thread6handle6HandleEEECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #34
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIBZ_IB1v_DNtNtNtB13_6future6future6Futurep6OutputTjINtNtB13_6result6ResultINtNtB1z_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB13_6marker4SendEL_EEEEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE3newCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !noundef !4 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @203, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35, !noalias !8595
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 3025) 256, i64 noundef range(i64 8, 129) 128) #35, !noalias !8595 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !37

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #32
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1x_IB1N_DNtNtNtB4_6future6future6Futurep6OutputTjINtNtB4_6result6ResultINtNtB1R_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB4_6marker4SendEL_EEEEINtNtB1R_4sync3ArcNtNtNtBN_9scheduler14current_thread6HandleEEECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #34
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIBZ_IB1v_DNtNtNtB13_6future6future6Futurep6OutputTjINtNtB13_6result6ResultINtNtB1z_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB13_6marker4SendEL_EEEEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @204, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35, !noalias !8598
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 3025) 256, i64 noundef range(i64 8, 129) 128) #35, !noalias !8598 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !37

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #32
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB1x_IB1N_DNtNtNtB4_6future6future6Futurep6OutputTjINtNtB4_6result6ResultINtNtB1R_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB4_6marker4SendEL_EEEEINtNtB1R_4sync3ArcNtNtNtNtBN_9scheduler12multi_thread6handle6HandleEEECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #34
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2e_8snapshotNtB3o_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1F_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5d_5error5ErrorEEs_0EENtNtB13_8schedule16BlockingScheduleE3newCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 %0, ptr noundef %1, ptr %2, i64 noundef %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = atomicrmw add ptr %1, i64 1 monotonic, align 8
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.5.0.i = phi ptr [ undef, %bb.a ], [ %2, %bb.b ]
  store i64 %3, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @205, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.d, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %2, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %4, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.611.sroa.3.0..sroa.611.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i32 0, ptr %.sroa.611.sroa.3.0..sroa.611.0..sroa_idx.sroa_idx, align 64
  %.sroa.611.sroa.5.0..sroa.611.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %0, ptr %.sroa.611.sroa.5.0..sroa.611.0..sroa_idx.sroa_idx, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr %1, ptr %.sroa.7.0..sroa_idx, align 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  store ptr %.sroa.5.0.i, ptr %.sroa.8.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35, !noalias !8601
  %i.f = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 3025) 256, i64 noundef range(i64 8, 129) 128) #35, !noalias !8601 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.h, !prof !37

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #32
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtBN_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2M_8snapshotNtB3W_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtB2d_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5v_5error5ErrorEEs_0EENtNtB1B_8schedule16BlockingScheduleEECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #34
          to label %.critedge unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.f, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.f

.critedge:                                        ; preds = %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtBb_2fs10create_dir10create_dirRNtNtCs2pqxYH9ZEk8_3std4path7PathBufE00EENtNtB13_8schedule16BlockingScheduleE3newCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 %0, ptr noundef %1, ptr %2, i64 noundef %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = atomicrmw add ptr %1, i64 1 monotonic, align 8
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.5.0.i = phi ptr [ undef, %bb.a ], [ %2, %bb.b ]
  store i64 %3, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @206, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.d, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %2, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %4, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 0, ptr %.sroa.611.0..sroa_idx, align 8
  %.sroa.611.sroa.5.0..sroa.611.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %0, ptr %.sroa.611.sroa.5.0..sroa.611.0..sroa_idx.sroa_idx, align 64
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr %1, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store ptr %.sroa.5.0.i, ptr %.sroa.8.0..sroa_idx, align 128
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35, !noalias !8604
  %i.f = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 3025) 256, i64 noundef range(i64 8, 129) 128) #35, !noalias !8604 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.h, !prof !37

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #32
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtBN_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtBP_2fs10create_dir10create_dirRNtNtCs2pqxYH9ZEk8_3std4path7PathBufE00EENtNtB1B_8schedule16BlockingScheduleEECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #34
          to label %.critedge unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.f, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.f

.critedge:                                        ; preds = %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1F_8snapshotNtB2P_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4U_5error5ErrorEEs_0ENtNtB13_8schedule16BlockingScheduleE3newCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(184) %0, ptr noundef %1, ptr %2, i64 noundef %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.413 = alloca [196 x i8], align 4         ; 2 uses
  %i.a = alloca [384 x i8], align 128             ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = atomicrmw add ptr %1, i64 1 monotonic, align 8
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.5.0.i = phi ptr [ undef, %bb.a ], [ %2, %bb.b ]
  %.sroa.413.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.413, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(184) %.sroa.413.16..sroa_idx, ptr noundef nonnull align 8 dereferenceable(184) %0, i64 184, i1 false)
  store i64 %3, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @207, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.d, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %2, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %4, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.611.sroa.3.0..sroa.611.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i32 0, ptr %.sroa.611.sroa.3.0..sroa.611.0..sroa_idx.sroa_idx, align 64
  %.sroa.611.sroa.4.0..sroa.611.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(196) %.sroa.611.sroa.4.0..sroa.611.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(196) %.sroa.413, i64 196, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr %1, ptr %.sroa.7.0..sroa_idx, align 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  store ptr %.sroa.5.0.i, ptr %.sroa.8.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35, !noalias !8607
  %i.f = tail call noundef align 128 dereferenceable_or_null(384) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 3025) 384, i64 noundef range(i64 8, 129) 128) #35, !noalias !8607 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.h, !prof !37

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 384) #32
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtBN_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2d_8snapshotNtB3n_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5c_5error5ErrorEEs_0ENtNtB1B_8schedule16BlockingScheduleEECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 128 dereferenceable(384) %i.a) #34
          to label %.critedge unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(384) %i.f, ptr noundef nonnull align 128 dereferenceable(384) %i.a, i64 384, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.f

.critedge:                                        ; preds = %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtBb_2fs10create_dir10create_dirRNtNtCs2pqxYH9ZEk8_3std4path7PathBufE00ENtNtB13_8schedule16BlockingScheduleE3newCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noundef %1, ptr %2, i64 noundef %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.413 = alloca [28 x i8], align 4          ; 2 uses
  %i.a = alloca [256 x i8], align 128             ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = atomicrmw add ptr %1, i64 1 monotonic, align 8
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.5.0.i = phi ptr [ undef, %bb.a ], [ %2, %bb.b ]
  %.sroa.413.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.413, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.413.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  store i64 %3, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @208, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.d, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %2, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %4, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 0, ptr %.sroa.611.0..sroa_idx, align 8
  %.sroa.611.sroa.4.0..sroa.611.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.611.sroa.4.0..sroa.611.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.413, i64 28, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr %1, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store ptr %.sroa.5.0.i, ptr %.sroa.8.0..sroa_idx, align 128
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35, !noalias !8610
  %i.f = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 3025) 256, i64 noundef range(i64 8, 129) 128) #35, !noalias !8610 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.h, !prof !37

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #32
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtBN_8blocking4task12BlockingTaskNCNCINvNtNtBP_2fs10create_dir10create_dirRNtNtCs2pqxYH9ZEk8_3std4path7PathBufE00ENtNtB1B_8schedule16BlockingScheduleEECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #34
          to label %.critedge unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.f, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.f

.critedge:                                        ; preds = %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtNtCs6Po7BT7Nknu_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringE9move_tailCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %i.g = add i64 %i.f, %i.d                       ; 2 uses
  %i.h = load i64, ptr %i.b, align 8, !range !463, !noundef !4
  %i.i = sub i64 %i.h, %i.g
  %i.j = icmp ugt i64 %1, %i.i
  br i1 %i.j, label %bb.c, label %bb.b, !prof !37

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.k = add i64 %i.d, %1                         ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.d
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.k
  %i.p = mul i64 %i.f, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.n, i64 %i.p, i1 false)
  store i64 %i.k, ptr %i.c, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef %i.g, i64 noundef %1, i64 noundef 8, i64 noundef 24)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE14set_join_wakerCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessNtNtB6_3raw7RawTask18try_set_join_waker(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !nonnull !4, !align !10, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !noundef !4
  tail call void %i.d(ptr noundef %i.f)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvMs3_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsjHlmExTLNuX_14datafusion_sql6parser9StatementE9pop_frontCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([200 x i8]) align 8 captures(none) dereferenceable(200) initializes((0, 8)) %0, ptr noalias noundef align 8 captures(none) dereferenceable(32) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 -9223372036854775803, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = add i64 %i.e, 1                          ; 2 uses
  %i.g = load i64, ptr %1, align 8, !range !463, !noundef !4 ; 3 uses
  %.not = icmp ult i64 %i.f, %i.g
  %i.h = select i1 %.not, i64 0, i64 %i.g
  %.sroa.0.0 = sub nuw i64 %i.f, %i.h
  store i64 %.sroa.0.0, ptr %i.d, align 8
  %i.i = add i64 %i.b, -1                         ; 2 uses
  store i64 %i.i, ptr %i.a, align 8
  %i.j = icmp ult i64 %i.i, %i.g
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw [200 x i8], ptr %i.l, i64 %i.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(200) %i.m, i64 200, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB13_6future6future6Futurep6OutputTjINtNtB13_6result6ResultINtNtB1z_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB13_6marker4SendEL_EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [56 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 8, !range !1162, !noalias !8613, !noundef !4
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8613
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !3004, !noalias !8613, !noundef !4
  %i.j = tail call noundef i64 @_RNvMs2_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuard5enter(i64 noundef %i.i), !noalias !8613
  store i64 %i.j, ptr %i.a, align 8, !noalias !8613
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputTjINtNtB8_6result6ResultINtNtB10_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB8_6marker4SendEL_EEB1v_4pollCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputTjINtNtB15_6result6ResultINtNtB1B_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE4poll0Cs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @124, ptr noundef nonnull inttoptr (i64 117 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @126) #37, !noalias !8613
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs3_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %common.resume unwind label %bb.e, !noalias !8617

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !8617
  unreachable

end_hunk_0
begin_hunk_1_@_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtBb_2fs10create_dir10create_dirRNtNtCs2pqxYH9ZEk8_3std4path7PathBufE00ENtNtB13_8schedule16BlockingScheduleE9set_stageCs2VbMhdeEr66_16delta_benchmarks:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

.thread:                                          ; preds = %bb.c, %bb.e
  %.pn6 = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.h, %bb.e ]
  resume { ptr, i32 } %.pn6

bb.e:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtNtBN_8blocking4task12BlockingTaskNCNCINvNtNtBP_2fs10create_dir10create_dirRNtNtCs2pqxYH9ZEk8_3std4path7PathBufE00EEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %1) #34
          to label %.thread unwind label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtNtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3map5entryINtB5_11VacantEntryjINtNtBd_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE12insert_entryCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !noundef !4
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.h = invoke { ptr, i64 } @_RINvMs8_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedjINtNtBc_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalECs2VbMhdeEr66_16delta_benchmarks()
          to label %bb.c unwind label %bb.g       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.i = extractvalue { ptr, i64 } %i.h, 0        ; 3 uses
  %i.j = extractvalue { ptr, i64 } %i.h, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  store ptr %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.j, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.j, ptr %i.l, align 8
  store ptr %i.i, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !4
  call void @_RNvMsu_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutjINtNtBb_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtB19_4LeafE16push_with_handleCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef %i.n, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.o = phi ptr [ %.pre, %bb.e ], [ %i.g, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !noundef !4
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.t = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.u = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  store ptr %i.t, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load <2 x i64>, ptr %i.s, align 8
  store <2 x i64> %i.v, ptr %.sroa.4.0..sroa_idx, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.u, ptr %i.w, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i64, ptr %i.x, align 8, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @_RINvMsN_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjINtNtBc_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs6_NtNtB8_3map5entryINtB3M_11VacantEntryjB1E_E12insert_entry0ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.y, ptr noundef nonnull %2, ptr noalias noundef nonnull align 8 dereferenceable(8) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.z)
  %.pre = load ptr, ptr %1, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.g:                                             ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = atomicrmw sub ptr %2, i64 1 release, align 8, !noalias !8720
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs2VbMhdeEr66_16delta_benchmarks.exit9

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs2VbMhdeEr66_16delta_benchmarks.exit9 unwind label %bb.f

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs2VbMhdeEr66_16delta_benchmarks.exit9: ; preds = %bb.g, %bb.h
  resume { ptr, i32 } %i.ab
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMs7_NtNtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryjINtNtBd_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE6insertCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = invoke { ptr, ptr } @_RNvMsS_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutjINtNtBb_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtB1m_14LeafOrInternalENtB1m_2KVE6kv_mutCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = atomicrmw sub ptr %1, i64 1 release, align 8, !noalias !8725
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.f = extractvalue { ptr, ptr } %i.b, 1        ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  store ptr %1, ptr %i.f, align 8
  ret ptr %i.g

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs7_NtNtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryjINtNtBd_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE8into_mutCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMsQ_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutjINtNtBb_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtB1m_14LeafOrInternalENtB1m_2KVE12into_val_mutCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0)
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.c = and i64 %i.b, 1
  %.not = icmp eq i64 %i.c, 0
  %i.d = lshr i64 %i.b, 1                         ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8730)
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8733)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8736)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8739
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %i.d, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !8739
  %i.e = load i64, ptr %i.a, align 8, !range !88, !noalias !8739, !noundef !4
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !89, !noalias !8739, !noundef !4 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.f, label %bb.c, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i, !prof !37

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.i, align 8, !noalias !8739
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.j) #32, !noalias !8739
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i: ; preds = %bb.b
  %i.k = load ptr, ptr %i.i, align 8, !noalias !8739, !nonnull !4, !noundef !4 ; 2 uses
  %i.l = icmp ule i64 %i.d, %i.h
  tail call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8739
  %.not.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i, label %_RNvYNvYeNtNtCs6Po7BT7Nknu_5alloc6borrow7ToOwned8to_ownedINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTReEE9call_onceCs2VbMhdeEr66_16delta_benchmarks.exit.i, label %bb.d

bb.d:                                             ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %i.d, i1 false), !noalias !8746
  br label %_RNvYNvYeNtNtCs6Po7BT7Nknu_5alloc6borrow7ToOwned8to_ownedINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTReEE9call_onceCs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNvYNvYeNtNtCs6Po7BT7Nknu_5alloc6borrow7ToOwned8to_ownedINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTReEE9call_onceCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.d, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i
  store i64 %i.h, ptr %0, align 8, !alias.scope !8747, !noalias !8748
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !8747, !noalias !8748
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !8747, !noalias !8748
  br label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2VbMhdeEr66_16delta_benchmarks.exit

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2), !noalias !8749
  br label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RNvYNvYeNtNtCs6Po7BT7Nknu_5alloc6borrow7ToOwned8to_ownedINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTReEE9call_onceCs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.e
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit(i64 noundef range(i64 8, 129) %0, i64 noundef range(i64 8, 3025) %1) unnamed_addr #2 {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35
  %i.a = tail call noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 3025) %1, i64 noundef range(i64 8, 129) %0) #35 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !37

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef %0, i64 noundef %1) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvNtCsb2ODgYNwnRL_6anyhow9___private10format_err(ptr noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = and i64 %i.b, 1
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 1
  %i.e = tail call noundef nonnull ptr @_RINvMNtCsb2ODgYNwnRL_6anyhow5errorNtB5_5Error3msgReECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %i.d)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %1), !noalias !8750
  %i.f = call noundef nonnull ptr @_RINvMNtCsb2ODgYNwnRL_6anyhow5errorNtB5_5Error3msgNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsbvkFyIu7lgC_4core3anyINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_ENtB2_3Any7type_idCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @213, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsbvkFyIu7lgC_4core3anyINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtBy_5types17GenericStringTypelEENtB2_3Any7type_idCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @11, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsbvkFyIu7lgC_4core3anyINtNtNtCs1N9T06jgEdt_11arrow_array5array10list_array16GenericListArraylENtB2_3Any7type_idCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @214, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsbvkFyIu7lgC_4core3anyINtNtNtCs1N9T06jgEdt_11arrow_array5array10list_array16GenericListArrayxENtB2_3Any7type_idCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @215, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsbvkFyIu7lgC_4core3anyINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBy_5types9Int32TypeENtB2_3Any7type_idCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @12, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsbvkFyIu7lgC_4core3anyNtNtCscEIReFzlGbb_26datafusion_catalog_listing5table12ListingTableNtB2_3Any7type_idCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @216, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsbvkFyIu7lgC_4core3anyNtNtNtCs1N9T06jgEdt_11arrow_array5array12struct_array11StructArrayNtB2_3Any7type_idCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @217, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsbvkFyIu7lgC_4core3anyNtNtNtCs1N9T06jgEdt_11arrow_array5array21fixed_size_list_array18FixedSizeListArrayNtB2_3Any7type_idCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @218, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsbvkFyIu7lgC_4core3anyNtNtNtCs1N9T06jgEdt_11arrow_array5array9map_array8MapArrayNtB2_3Any7type_idCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @219, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsbvkFyIu7lgC_4core3anyNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateNtB2_3Any7type_idCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @220, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsbvkFyIu7lgC_4core3anyNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableNtB2_3Any7type_idCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @221, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_RNvXNtNtCs14kWLkQVSKO_14deltalake_core6kernel5errorNtB2_5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0) unnamed_addr #8 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !3562, !noundef !4 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775786
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, 9223372036854775790
  %i.d = icmp ugt i64 %i.a, -9223372036854775791
  %i.e = select i1 %i.d, i64 %i.c, i64 4
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.i
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.i
    i64 6, label %bb.i
    i64 7, label %bb.i
    i64 8, label %bb.i
    i64 9, label %bb.i
    i64 10, label %bb.i
    i64 11, label %bb.i
    i64 12, label %bb.g
    i64 13, label %bb.h
    i64 14, label %bb.i
    i64 15, label %bb.i
    i64 16, label %bb.i
    i64 17, label %bb.i
    i64 18, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !align !10, !noundef !4
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.20.0 = phi ptr [ @223, %bb.c ], [ undef, %bb.a ], [ %i.j, %bb.d ], [ @225, %bb.e ], [ @227, %bb.f ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ @229, %bb.g ], [ @231, %bb.h ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.f, %bb.c ], [ null, %bb.a ], [ %i.h, %bb.d ], [ %i.k, %bb.e ], [ %0, %bb.f ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ %i.l, %bb.g ], [ %i.m, %bb.h ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ]
  %i.n = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.o = insertvalue { ptr, ptr } %i.n, ptr %.sroa.20.0, 1
  ret { ptr, ptr } %i.o
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtCscEIReFzlGbb_26datafusion_catalog_listing7optionsNtB5_14ListingOptionsNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.g, ptr %i.a, align 8
  store ptr %0, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
end_hunk_1

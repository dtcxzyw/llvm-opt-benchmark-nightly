inline.NumInlined: 16754
inline.NumDeleted: 9657
begin_hunk_0_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtBO_9DataFrame14execute_stream0ECs14kWLkQVSKO_14deltalake_core:bb.a
  br label %common.ret

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1712
  %i.d = load i8, ptr %i.c, align 16, !range !12734, !noundef !3
  switch i8 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtBO_9DataFrame20create_physical_plan0ECs14kWLkQVSKO_14deltalake_core.exit [
end_hunk_0
begin_hunk_1_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtBO_9DataFrame14execute_stream0ECs14kWLkQVSKO_14deltalake_core:bb.a
    i8 3, label %bb.d
  ]

common.ret.sink.split.i:                          ; preds = %bb.d, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.c
  %.pn8 = phi i64 [ 672, %bb.c ], [ 1008, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ 1008, %bb.d ]
  %.sink.i = getelementptr inbounds nuw i8, ptr %0, i64 %.pn8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(336) %.sink.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtBO_9DataFrame20create_physical_plan0ECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.n

end_hunk_1
begin_hunk_2_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtBO_9DataFrame14execute_stream0ECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1696
  %i.g = load i8, ptr %i.f, align 16, !range !12734, !noundef !3
  %cond.i.i = icmp eq i8 %i.g, 3
  br i1 %cond.i.i, label %bb.e, label %common.ret.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1664
end_hunk_2
begin_hunk_3_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtBO_9DataFrame14execute_stream0ECs14kWLkQVSKO_14deltalake_core:bb.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.h, %bb.g
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(320) %i.e)
          to label %common.ret.sink.split.i unwind label %bb.l

bb.k:                                             ; preds = %.body.i.i
  %i.v = landingpad { ptr, i32 }
end_hunk_3
begin_hunk_4_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtBO_9DataFrame14execute_stream0ECs14kWLkQVSKO_14deltalake_core:bb.a
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(336) %i.x) #15
          to label %.body unwind label %bb.m

bb.m:                                             ; preds = %.body.i
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_4
begin_hunk_5_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtBO_11DeltaWriter5write0EBU_:bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.d = load i8, ptr %i.c, align 16, !range !6, !noundef !3
  switch i8 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtBO_11DeltaWriter15write_partition0EBU_.exit [
end_hunk_5
begin_hunk_6_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtBO_11DeltaWriter5write0EBU_:bb.a
  ]

common.ret.sink.split.i:                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.b
  %.pn10 = phi i64 [ 440, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit.i ], [ 376, %bb.b ]
  %.sink.i = getelementptr inbounds nuw i8, ptr %0, i64 %.pn10
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %.sink.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtBO_11DeltaWriter15write_partition0EBU_.exit unwind label %bb.t

end_hunk_6
begin_hunk_7_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtBO_11DeltaWriter5write0EBU_:bb.a
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 545
  store i8 0, ptr %i.z, align 1
  br label %common.ret.sink.split.i

bb.s:                                             ; preds = %.body.i, %bb.m, %bb.h, %bb.g
end_hunk_7

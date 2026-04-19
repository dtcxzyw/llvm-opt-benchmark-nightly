inline.NumInlined: 12000
inline.NumDeleted: 3498
begin_hunk_0_@_RINvMs1_NtNtCsdFjMDJQAyx6_10arrow_json6reader4tapeNtB6_11TapeDecoder9serializeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECs14kWLkQVSKO_14deltalake_core:bb.a
  %.not37.i.i.i.i = icmp ne ptr %i.ap, null       ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !129, !noalias !130
  %.sroa.04.sroa.0.0.i.i.i.i = zext i1 %.not37.i.i.i.i to i64 ; 2 uses
  %.sroa.5.0.i.i.i.i = select i1 %.not37.i.i.i.i, i64 %i.ak, i64 0
  %.sroa.04.sroa.5.sroa.6.0.i.i.i.i.a = select i1 %.not37.i.i.i.i, i64 %i.ar, i64 undef ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !138
  store i64 %.sroa.04.sroa.0.0.i.i.i.i, ptr %i.e, align 8, !noalias !138
  store ptr null, ptr %.sroa.05.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !138
  store ptr %i.ap, ptr %.sroa.05.sroa.5.sroa.5.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !138
  store i64 %.sroa.04.sroa.5.sroa.6.0.i.i.i.i.a, ptr %.sroa.05.sroa.5.sroa.6.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !138
  store i64 %.sroa.04.sroa.0.0.i.i.i.i, ptr %.sroa.05.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !138
  store ptr null, ptr %.sroa.05.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !138
  store ptr %i.ap, ptr %.sroa.05.sroa.7.sroa.5.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !138
  store i64 %.sroa.04.sroa.5.sroa.6.0.i.i.i.i.a, ptr %.sroa.05.sroa.7.sroa.6.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !138
  store i64 %.sroa.5.0.i.i.i.i, ptr %.sroa.56.0..sroa_idx.i.i.i.i, align 8, !noalias !138
  %i.as = call { ptr, ptr } @_RNvXsk_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB5_4IterNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e), !noalias !139 ; 2 uses
  %i.at = extractvalue { ptr, ptr } %i.as, 0      ; 2 uses
  %.not3840.i.i.i.i = icmp eq ptr %i.at, null
end_hunk_0
begin_hunk_1_@_RINvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB6_16CachedParkThread8block_onNCNvMs1_NtNtNtBa_4sync4mpsc7boundedINtB1l_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB25_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB32_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE4send0EB4a_:bb.a
  %.sroa.04.i.i = alloca [112 x i8], align 16     ; 2 uses
  %i.a = alloca [128 x i8], align 16              ; 5 uses
  %i.b = alloca [2 x i8], align 1                 ; 8 uses
  %i.c = alloca [400 x i8], align 16              ; 31 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
end_hunk_1
begin_hunk_2_@_RINvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB6_16CachedParkThread8block_onNCNvMs1_NtNtNtBa_4sync4mpsc7boundedINtB1l_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB25_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB32_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE4send0EB4a_:bb.a
  %.sroa.11.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 200 ; 2 uses
  %.sroa.411.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %.sroa.512.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  br label %bb.e

bb.e:                                             ; preds = %bb.bb, %bb.d
  %.sroa.8.0 = phi i64 [ undef, %bb.d ], [ %.sroa.8.1, %bb.bb ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !227
  %i.ac = load i8, ptr %i.o, align 8, !range !158, !noundef !3 ; 2 uses
  switch i8 %i.ac, label %default.unreachable [
end_hunk_2
begin_hunk_3_@_RINvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB6_16CachedParkThread8block_onNCNvMs1_NtNtNtBa_4sync4mpsc7boundedINtB1l_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB25_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB32_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE4send0EB4a_:bb.a
bb.am:                                            ; preds = %bb.aj, %.thread25.i.i.i
  store i8 1, ptr %.phi.trans.insert.i.i, align 8, !noalias !239
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.04.i.i, ptr noundef nonnull align 16 dereferenceable(112) %i.c, i64 112, i1 false)
  %.sroa.411.0.copyload.i.i = load i64, ptr %.sroa.411.0..sroa_idx.i.i, align 16, !noalias !232
  %.sroa.512.0.copyload.i.i = load i64, ptr %.sroa.512.0..sroa_idx.i.i, align 8, !noalias !232
  br label %bb.aq

bb.an:                                            ; preds = %bb.aj
end_hunk_3
begin_hunk_4_@_RINvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB6_16CachedParkThread8block_onNCNvMs1_NtNtNtBa_4sync4mpsc7boundedINtB1l_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB25_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB32_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE4send0EB4a_:bb.a
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.am
  %.sroa.2.0.i.i = phi i64 [ %.sroa.411.0.copyload.i.i, %bb.am ], [ 3, %bb.ap ]
  %.sroa.3.0.i.i = phi i64 [ %.sroa.512.0.copyload.i.i, %bb.am ], [ undef, %bb.ap ]
  store i8 0, ptr %i.t, align 8, !noalias !232
  br label %bb.aw

end_hunk_4
begin_hunk_5_@_RINvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB6_16CachedParkThread8block_onNCNvMs1_NtNtNtBa_4sync4mpsc7boundedINtB1l_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB25_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB32_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE4send0EB4a_:bb.a
          to label %.body unwind label %bb.ay

bb.aw:                                            ; preds = %bb.aq, %_RNCNvMs1_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7boundedINtB7_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB17_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB24_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE7reserve0B3c_.exit.i.i
  %.sroa.5.0 = phi i64 [ 4, %_RNCNvMs1_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7boundedINtB7_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB17_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB24_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE7reserve0B3c_.exit.i.i ], [ %.sroa.2.0.i.i, %bb.aq ] ; 2 uses
  %.sroa.8.1 = phi i64 [ %.sroa.8.0, %_RNCNvMs1_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7boundedINtB7_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB17_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB24_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE7reserve0B3c_.exit.i.i ], [ %.sroa.3.0.i.i, %bb.aq ] ; 2 uses
  %storemerge.i.i = phi i8 [ 3, %_RNCNvMs1_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7boundedINtB7_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB17_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB24_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE7reserve0B3c_.exit.i.i ], [ 1, %bb.aq ]
  store i8 %storemerge.i.i, ptr %i.q, align 1, !noalias !232
  %i.bv = load i8, ptr %i.b, align 1, !range !158, !alias.scope !255, !noundef !3
  %.not.i23 = icmp eq i8 %i.bv, 2
end_hunk_5
begin_hunk_6_@_RINvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB6_16CachedParkThread8block_onNCNvMs1_NtNtNtBa_4sync4mpsc7boundedINtB1l_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB25_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB32_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE4send0EB4a_:bb.a

bb.ba:                                            ; preds = %bb.ax, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !227
  %i.by = icmp eq i64 %.sroa.5.0, 4
  br i1 %i.by, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
end_hunk_6
begin_hunk_7_@_RINvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB6_16CachedParkThread8block_onNCNvMs1_NtNtNtBa_4sync4mpsc7boundedINtB1l_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB25_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB32_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE4send0EB4a_:bb.a
bb.bc:                                            ; preds = %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %0, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.04.i.i, i64 112, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %.sroa.5.0, ptr %.sroa.2.0..sroa_idx, align 16
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %.sroa.8.1, ptr %.sroa.3.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs1_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc7boundedINtBO_6SenderINtNtB4_6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB2v_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE4send0EB3C_(ptr noundef nonnull align 16 %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtB4_4task4wake5WakerECs14kWLkQVSKO_14deltalake_core.exit28 unwind label %bb.be

end_hunk_7
begin_hunk_8_@_RINvMs8_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13SubqueryAlias7try_newNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs14kWLkQVSKO_14deltalake_core:bb.a
          to label %bb.b unwind label %.thread

.body66.thread132:                                ; preds = %.body66.thread, %.body66
  %.sroa.032.0 = phi i1 [ %.sroa.032.4, %.body66 ], [ %.sroa.032.2130, %.body66.thread ]
  %.pn57 = phi { ptr, i32 } [ %.pn53, %.body66 ], [ %.pn55131, %.body66.thread ] ; 3 uses
  br i1 %.sroa.032.0, label %bb.bw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs14kWLkQVSKO_14deltalake_core.exit84

.body66:                                          ; preds = %.body59
  br i1 %.sroa.031.2.a, label %.body66.thread, label %.body66.thread132

.thread:                                          ; preds = %bb.bp, %bb.b, %bb.a
  %.sroa.032.3.ph = phi i1 [ true, %bb.a ], [ true, %bb.b ], [ false, %bb.bp ]
end_hunk_8
begin_hunk_9_@_RINvMs8_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13SubqueryAlias7try_newNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs14kWLkQVSKO_14deltalake_core:bb.a
  br i1 %.not.i, label %bb.d, label %bb.f

.body59:                                          ; preds = %.thread107, %.thread107.thread, %bb.bv, %bb.p, %bb.e
  %.sroa.031.2.a = phi i1 [ false, %.thread107 ], [ true, %bb.p ], [ true, %bb.e ], [ true, %bb.bv ], [ true, %.thread107.thread ]
  %.sroa.032.4 = phi i1 [ false, %.thread107 ], [ false, %bb.p ], [ %.sroa.032.5, %bb.e ], [ false, %bb.bv ], [ false, %.thread107.thread ] ; 2 uses
  %.pn53 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp122, %.thread107 ], [ %i.bb, %bb.p ], [ %i.am, %bb.e ], [ %.pn49.pn.pn95, %bb.bv ], [ %.pn49.pn.pn95, %.thread107.thread ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionNtNtBL_6string6StringEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.w) #52
          to label %.body66 unwind label %bb.bn
end_hunk_9
begin_hunk_10_@_RINvMs8_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13SubqueryAlias7try_newNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs14kWLkQVSKO_14deltalake_core:bb.a

.body66.thread:                                   ; preds = %.thread, %bb.bo, %.body66
  %.pn55131 = phi { ptr, i32 } [ %.pn53, %.body66 ], [ %i.eg, %bb.bo ], [ %lpad.thr_comm146, %.thread ]
  %.sroa.032.2130 = phi i1 [ %.sroa.032.4, %.body66 ], [ false, %bb.bo ], [ %.sroa.032.3.ph, %.thread ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.x) #52
          to label %.body66.thread132 unwind label %bb.bn

end_hunk_10
begin_hunk_11_@_RINvNtCs1N9T06jgEdt_11arrow_array20temporal_conversions7as_timeNtNtB4_5types23TimestampNanosecondTypeECs14kWLkQVSKO_14deltalake_core:bb.a
          to label %.body unwind label %bb.d, !noalias !680

_RNvNtCs1N9T06jgEdt_11arrow_array20temporal_conversions18date64_to_datetime.exit.i: ; preds = %bb.b, %.noexc42.i
  %.sroa.4.0.a = phi i32 [ undef, %.noexc42.i ], [ %i.o, %bb.b ]
  %.sroa.6.0 = phi i32 [ undef, %.noexc42.i ], [ %i.n, %bb.b ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a)
          to label %bb.f unwind label %bb.e

end_hunk_11
begin_hunk_12_@_RINvNtCs1N9T06jgEdt_11arrow_array20temporal_conversions7as_timeNtNtB4_5types23TimestampNanosecondTypeECs14kWLkQVSKO_14deltalake_core:bb.a

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.4.0.a, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.6.0, ptr %i.t, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
end_hunk_12
begin_hunk_13_@_RINvNtCs1N9T06jgEdt_11arrow_array20temporal_conversions7as_timeNtNtB4_5types24TimestampMicrosecondTypeECs14kWLkQVSKO_14deltalake_core:bb.a
          to label %.body unwind label %bb.d, !noalias !683

_RNvNtCs1N9T06jgEdt_11arrow_array20temporal_conversions18date64_to_datetime.exit.i: ; preds = %bb.b, %.noexc32.i
  %.sroa.4.0.a = phi i32 [ undef, %.noexc32.i ], [ %i.p, %bb.b ]
  %.sroa.6.0 = phi i32 [ undef, %.noexc32.i ], [ %i.o, %bb.b ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a)
          to label %bb.f unwind label %bb.e

end_hunk_13
begin_hunk_14_@_RINvNtCs1N9T06jgEdt_11arrow_array20temporal_conversions7as_timeNtNtB4_5types24TimestampMicrosecondTypeECs14kWLkQVSKO_14deltalake_core:bb.a

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.4.0.a, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.6.0, ptr %i.u, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
end_hunk_14
begin_hunk_15_@_RNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10datafusionNtB2_17ZOrderExecContext3new:bb.a

bb.f:                                             ; preds = %.body14._crit_edge, %bb.h
  %i.y = phi ptr [ %.pre, %.body14._crit_edge ], [ %i.q, %bb.h ]
  %.sroa.01.1 = phi i1 [ %.sroa.01.2, %.body14._crit_edge ], [ true, %bb.h ]
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body14._crit_edge ], [ %i.ab, %bb.h ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32478)
  call void @llvm.experimental.noalias.scope.decl(metadata !32481)
  %i.z = atomicrmw sub ptr %i.y, i64 1 release, align 8, !noalias !32484
end_hunk_15
begin_hunk_16_@_RNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10datafusionNtB2_17ZOrderExecContext3new:bb.a
  unreachable

.body14:                                          ; preds = %bb.u, %bb.k, %bb.q
  %.sroa.01.2 = phi i1 [ false, %bb.q ], [ %.sroa.01.3, %bb.k ], [ false, %bb.u ]
  %.pn = phi { ptr, i32 } [ %i.am, %bb.q ], [ %i.ae, %bb.k ], [ %i.at, %bb.u ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context14SessionContextECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(48) %i.j) #52
          to label %.body14._crit_edge unwind label %bb.w

end_hunk_16
begin_hunk_17_@_RNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10datafusionNtB2_17ZOrderExecContext3new:bb.a
  unreachable

.noexc17:                                         ; preds = %bb.x, %.thread
  br i1 %.sroa.02.024, label %bb.y, label %.thread27

.thread:                                          ; preds = %.noexc11..thread_crit_edge, %bb.b, %bb.d
  %i.ay = phi ptr [ %.pre31, %.noexc11..thread_crit_edge ], [ %3, %bb.d ], [ %3, %bb.b ]
  %.pn.pn.pn26 = phi { ptr, i32 } [ %.pn.pn, %.noexc11..thread_crit_edge ], [ %i.v, %bb.d ], [ %i.t, %bb.b ] ; 2 uses
  %.sroa.02.024 = phi i1 [ false, %.noexc11..thread_crit_edge ], [ true, %bb.d ], [ true, %bb.b ]
  call void @llvm.experimental.noalias.scope.decl(metadata !32498)
  call void @llvm.experimental.noalias.scope.decl(metadata !32499)
  %i.az = atomicrmw sub ptr %i.ay, i64 1 release, align 8, !noalias !32473
end_hunk_17
begin_hunk_18_@_RNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10datafusionNtB2_17ZOrderExecContext3new:bb.a
          to label %.noexc17 unwind label %bb.w

.thread27:                                        ; preds = %.noexc11, %bb.y, %.noexc17
  %.pn.pn.pn2530 = phi { ptr, i32 } [ %.pn.pn.pn26, %.noexc17 ], [ %.pn.pn.pn26, %bb.y ], [ %.pn.pn, %.noexc11 ]
  resume { ptr, i32 } %.pn.pn.pn2530

bb.y:                                             ; preds = %.noexc17
end_hunk_18
begin_hunk_19_@_RNvMs_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replayINtB4_14ScanFileStreamINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1Y_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtBe_6errors15DeltaTableErrorENtNtB1Y_6marker4SendEL_EEE3newBe_:bb.a
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit, %bb.c
  %.sroa.01.0 = phi i1 [ false, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit ], [ true, %bb.c ]
  %.pn = phi { ptr, i32 } [ %i.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.f, %bb.c ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB3B_(ptr nonnull %6, ptr nonnull %7) #52
          to label %bb.k unwind label %bb.j

end_hunk_19

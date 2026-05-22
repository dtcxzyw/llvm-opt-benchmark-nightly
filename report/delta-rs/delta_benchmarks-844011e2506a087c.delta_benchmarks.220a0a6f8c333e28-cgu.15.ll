inline.NumInlined: 3868
inline.NumDeleted: 1539
begin_hunk_0_@_RNvMs_NtNtCskQDtHcQtBkN_5tokio4task8join_setINtB4_7JoinSetTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE6insertCs2VbMhdeEr66_16delta_benchmarks:bb.a

bb.f:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !6486)
  call void @llvm.experimental.noalias.scope.decl(metadata !6489)
  call void @llvm.experimental.noalias.scope.decl(metadata !6492)
  %i.m = load ptr, ptr %i.a, align 8, !alias.scope !6495, !nonnull !8, !noundef !8
  %i.n = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !6495
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set20EntryInOneOfTheListsINtNtNtNtBN_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEECs2VbMhdeEr66_16delta_benchmarks.exit6

bb.g:                                             ; preds = %bb.f
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB7_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #35
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set20EntryInOneOfTheListsINtNtNtNtBN_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEECs2VbMhdeEr66_16delta_benchmarks.exit6

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set20EntryInOneOfTheListsINtNtNtNtBN_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEECs2VbMhdeEr66_16delta_benchmarks.exit6: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %1

bb.h:                                             ; preds = %bb.i, %.thread12, %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

.thread12:                                        ; preds = %bb.e, %bb.d, %.thread17
  %.pn16 = phi { ptr, i32 } [ %i.e, %.thread17 ], [ %i.i, %bb.d ], [ %i.i, %bb.e ]
  invoke void @_RNvXs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task5abortNtB5_11AbortHandleNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %.thread12, %bb.i
  %.pn.pn11 = phi { ptr, i32 } [ %i.q, %bb.i ], [ %.pn16, %.thread12 ]
  resume { ptr, i32 } %.pn.pn11

bb.i:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEENtNtNtB1c_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBU_EE3newCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %i.b = load <16 x i8>, ptr %1, align 16, !noalias !6496
  %i.c = icmp sgt <16 x i8> %i.b, splat (i8 -1)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.c, ptr %i.e, align 8
  store ptr %2, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.g, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBY_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEE3newCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %i.b = load <16 x i8>, ptr %1, align 16, !noalias !6499
  %i.c = icmp sgt <16 x i8> %i.b, splat (i8 -1)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.c, ptr %i.e, align 8
  store ptr %2, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.g, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE3newCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %i.b = load <16 x i8>, ptr %1, align 16, !noalias !6502
  %i.c = icmp sgt <16 x i8> %i.b, splat (i8 -1)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.c, ptr %i.e, align 8
  store ptr %2, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.g, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEE3newCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %i.b = load <16 x i8>, ptr %1, align 16, !noalias !6505
  %i.c = icmp sgt <16 x i8> %i.b, splat (i8 -1)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.c, ptr %i.e, align 8
  store ptr %2, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.g, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjEE3newCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %i.b = load <16 x i8>, ptr %1, align 16, !noalias !6508
  %i.c = icmp sgt <16 x i8> %i.b, splat (i8 -1)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.c, ptr %i.e, align 8
  store ptr %2, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.g, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTReBU_EE3newCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %i.b = load <16 x i8>, ptr %1, align 16, !noalias !6511
  %i.c = icmp sgt <16 x i8> %i.b, splat (i8 -1)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.c, ptr %i.e, align 8
  store ptr %2, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.g, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs2HSpDNxY7OE_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 16              ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load i64, ptr %i.d, align 8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6514)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !6514, !noalias !6517, !noundef !8 ; 6 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false), !noalias !6514
  br label %_RNvXsb_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6519
  %i.h = add i64 %i.f, 1                          ; 2 uses
  %i.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.h, i64 144) ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1
  br i1 %i.j, label %bb.e, label %bb.d, !prof !229

bb.d:                                             ; preds = %bb.c
  %i.k = extractvalue { i64, i1 } %i.i, 0         ; 3 uses
  %i.l = add i64 %i.f, 17                         ; 2 uses
  %i.m = add i64 %i.k, %i.l                       ; 5 uses
  %i.n = icmp ult i64 %i.m, %i.k
  %i.o = icmp ugt i64 %i.m, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.n, %i.o
  br i1 %or.cond.i.i.i, label %bb.e, label %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !prof !6426

_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %bb.d
  %i.p = icmp eq i64 %i.m, 0
  br i1 %i.p, label %_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i, label %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i.i

_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i.i: ; preds = %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !6520
  %i.q = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !6520 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #39, !noalias !6520
  unreachable

bb.f:                                             ; preds = %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i.i
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef %i.m) #36, !noalias !6520
  unreachable

_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i.i, %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %.sroa.0.0.i.i11.i.i.i = phi ptr [ %i.q, %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i11.i.i.i, i64 %i.k ; 3 uses
  %2 = icmp ult i64 %i.f, 8
  %i.t = lshr i64 %i.h, 3
  %i.u = mul nuw nsw i64 %i.t, 7
  %.sroa.07.0.i.i.i = select i1 %2, i64 %i.f, i64 %i.u
  store ptr %i.s, ptr %i.b, align 8, !noalias !6519
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.f, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !6519
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.07.0.i.i.i, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !6519
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !6519
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6525)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6528)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !6530, !noalias !6531, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.s, ptr nonnull align 1 %i.v, i64 %i.l, i1 false), !noalias !6532
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6533)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !6536, !noalias !6537, !noundef !8 ; 3 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.z = load <16 x i8>, ptr %i.v, align 16, !noalias !6539
  %i.aa = icmp sgt <16 x i8> %i.z, splat (i8 -1)
  %i.ab = bitcast <16 x i1> %i.aa to i16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ae = ptrtoint ptr %i.v to i64
  br label %bb.h

bb.g:                                             ; preds = %.loopexit.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.i, %bb.g
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.af, %bb.g ], [ %i.av, %bb.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEENCNvMsd_B1D_B1A_15clone_from_impl0EECs2VbMhdeEr66_16delta_benchmarks(i64 %.sroa.0.023.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #34
          to label %.body.i unwind label %bb.k, !noalias !6542

bb.h:                                             ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %.lr.ph.i.i
  %.sroa.0.023.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bd, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i ]
  %.sroa.14.022.i.i = phi i64 [ %i.x, %.lr.ph.i.i ], [ %i.as, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i ]
  %.sroa.10.021.i.i = phi i16 [ %i.ab, %.lr.ph.i.i ], [ %i.ap, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.sroa.6.020.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.sroa.013.019.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.not9.i.i.i = icmp eq i16 %.sroa.10.021.i.i, 0
  br i1 %.not9.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %.lr.ph.i.i.i
  %i.ag = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.sroa.6.020.i.i, %bb.h ] ; 2 uses
  %i.ah = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.sroa.013.019.i.i, %bb.h ]
  %i.ai = load <16 x i8>, ptr %i.ag, align 16, !noalias !6543
  %i.aj = icmp sgt <16 x i8> %i.ai, splat (i8 -1)
  %i.ak = getelementptr inbounds i8, ptr %i.ah, i64 -2304 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.aj to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.h
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.019.i.i, %bb.h ], [ %i.ak, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.020.i.i, %bb.h ], [ %i.al, %.lr.ph.i.i.i ]
  %.lcssa.i.i.i = phi i16 [ %.sroa.10.021.i.i, %bb.h ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.am = add i16 %.lcssa.i.i.i, -1
  %i.an = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.ao = zext nneg i16 %i.an to i64
  %i.ap = and i16 %i.am, %.lcssa.i.i.i
  %i.aq = sub nsw i64 0, %i.ao
  %i.ar = getelementptr inbounds [144 x i8], ptr %.sroa.013.1.i.i, i64 %i.aq ; 3 uses
  %i.as = add i64 %.sroa.14.022.i.i, -1           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6532
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 -144
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 16 captures(none) dereferenceable(144) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(144) %i.at)
          to label %.noexc.i.i unwind label %bb.g, !noalias !6532

.noexc.i.i:                                       ; preds = %.loopexit.i.i
  %i.au = getelementptr inbounds i8, ptr %i.ar, i64 -112
  invoke fastcc void @_RNvXsV_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.ad, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.au)
          to label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.i, !noalias !6532

bb.i:                                             ; preds = %.noexc.i.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(144) %i.a) #34
          to label %.body.i.i unwind label %bb.j, !noalias !6532

bb.j:                                             ; preds = %bb.i
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6532
  unreachable

_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %.noexc.i.i
  %i.ax = ptrtoint ptr %i.ar to i64
  %i.ay = sub i64 %i.ae, %i.ax
  %i.az = sdiv exact i64 %i.ay, 144               ; 2 uses
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = getelementptr inbounds [144 x i8], ptr %i.s, i64 %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.bc, ptr noundef nonnull align 16 dereferenceable(144) %i.a, i64 144, i1 false), !noalias !6532
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6532
  %i.bd = add nsw i64 %i.az, 1
  %i.be = icmp eq i64 %i.as, 0
  br i1 %i.be, label %.loopexit.i, label %bb.h

bb.k:                                             ; preds = %.body.i.i
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6532
  unreachable

.body.i:                                          ; preds = %.body.i.i
  invoke void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.b, ptr noalias nonnull readonly captures(address, read_provenance) poison, i64 noundef 144, i64 noundef 16)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.l, !noalias !6519

.loopexit.i:                                      ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  store i64 %i.x, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !6525, !noalias !6542
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !6530, !noalias !6531, !noundef !8
  store i64 %i.bh, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !6525, !noalias !6542
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !6514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6519
  br label %_RNvXsb_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.l:                                             ; preds = %.body.i
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6519
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i.i

_RNvXsb_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %.loopexit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.val, ptr %i.bj, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs2HSpDNxY7OE_9hashbrown3mapINtB2_7HashMapNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBM_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2y_4SendEL_EENtNtB2A_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load i64, ptr %i.a, align 8, !noundef !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6548)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !6548, !noalias !6551, !noundef !8 ; 4 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXsb_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2D_4SendEL_EEENtNtB2F_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %i.c, 1
  %i.f = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.e, i64 24) ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  br i1 %i.g, label %bb.d, label %bb.c, !prof !229

bb.c:                                             ; preds = %bb.b
  %i.h = extractvalue { i64, i1 } %i.f, 0
  %i.i = add nuw i64 %i.h, 8
  %i.j = and i64 %i.i, -16                        ; 3 uses
  %i.k = add i64 %i.c, 17                         ; 2 uses
  %i.l = add i64 %i.j, %i.k                       ; 5 uses
  %i.m = icmp ult i64 %i.l, %i.j
  %i.n = icmp ugt i64 %i.l, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.m, %i.n
  br i1 %or.cond.i.i.i, label %bb.d, label %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !prof !6426

_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %bb.c
  %i.o = icmp eq i64 %i.l, 0
  br i1 %i.o, label %_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2D_4SendEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i, label %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i.i

_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i.i: ; preds = %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !6553
  %i.p = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !6553 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.e, label %_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2D_4SendEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #39, !noalias !6553
  unreachable

bb.e:                                             ; preds = %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i.i
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef %i.l) #36, !noalias !6553
  unreachable

_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2D_4SendEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i.i, %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %.sroa.0.0.i.i11.i.i.i = phi ptr [ %i.p, %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i11.i.i.i, i64 %i.j ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6558)
  %i.s = load ptr, ptr %1, align 8, !alias.scope !6561, !noalias !6562, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.r, ptr nonnull align 1 %i.s, i64 %i.k, i1 false), !noalias !6564
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6565)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !6568, !noalias !6569, !noundef !8 ; 3 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2D_4SendEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.w = load <16 x i8>, ptr %i.s, align 16, !noalias !6571
  %i.x = icmp sgt <16 x i8> %i.w, splat (i8 -1)
  %i.y = bitcast <16 x i1> %i.x to i16
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.aa = ptrtoint ptr %i.s to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %.lr.ph.i.i
  %.sroa.14.023.i.i = phi i64 [ %i.u, %.lr.ph.i.i ], [ %i.aq, %bb.h ]
  %.sroa.10.022.i.i = phi i16 [ %i.y, %.lr.ph.i.i ], [ %i.as, %bb.h ] ; 2 uses
  %.sroa.6.021.i.i = phi ptr [ %i.z, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %bb.h ] ; 2 uses
  %.sroa.013.020.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %bb.h ] ; 2 uses
  %.not9.i.i.i = icmp eq i16 %.sroa.10.022.i.i, 0
  br i1 %.not9.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %i.ab = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %.sroa.6.021.i.i, %bb.f ] ; 2 uses
  %i.ac = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.sroa.013.020.i.i, %bb.f ]
  %i.ad = load <16 x i8>, ptr %i.ab, align 16, !noalias !6574
  %i.ae = icmp sgt <16 x i8> %i.ad, splat (i8 -1)
  %i.af = getelementptr inbounds i8, ptr %i.ac, i64 -384 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.ae to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.f
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.020.i.i, %bb.f ], [ %i.af, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.021.i.i, %bb.f ], [ %i.ag, %.lr.ph.i.i.i ]
  %.lcssa.i.i.i = phi i16 [ %.sroa.10.022.i.i, %bb.f ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.ah = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.ai = zext nneg i16 %i.ah to i64
  %i.aj = sub nsw i64 0, %i.ai
  %i.ak = getelementptr inbounds [24 x i8], ptr %.sroa.013.1.i.i, i64 %i.aj ; 4 uses
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6579)
  %.val.i.i.i = load i8, ptr %i.al, align 1, !range !1691, !alias.scope !6579, !noalias !6582, !noundef !8
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -16
  %.val1.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !6579, !noalias !6582, !nonnull !8, !noundef !8 ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.ak, i64 -8
  %.val2.i.i.i = load ptr, ptr %i.an, align 8, !alias.scope !6579, !noalias !6582 ; 2 uses
  %i.ao = atomicrmw add ptr %.val1.i.i.i, i64 1 monotonic, align 8, !noalias !6584
  %i.ap = icmp slt i64 %i.ao, 0
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.loopexit.i.i
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %.loopexit.i.i
  %i.aq = add i64 %.sroa.14.023.i.i, -1           ; 2 uses
  %i.ar = add i16 %.lcssa.i.i.i, -1
  %i.as = and i16 %i.ar, %.lcssa.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i.i) ]
  %i.at = ptrtoint ptr %i.ak to i64
  %i.au = sub i64 %i.aa, %i.at
  %.neg.i.i = sdiv exact i64 %i.au, -24
  %i.av = getelementptr inbounds [24 x i8], ptr %i.r, i64 %.neg.i.i ; 3 uses
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -24
  store i8 %.val.i.i.i, ptr %i.aw, align 8, !noalias !6564
  %.sroa.417.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.av, i64 -16
  store ptr %.val1.i.i.i, ptr %.sroa.417.0..sroa_idx.i.i, align 8, !noalias !6564
  %.sroa.518.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.av, i64 -8
  store ptr %.val2.i.i.i, ptr %.sroa.518.0..sroa_idx.i.i, align 8, !noalias !6564
  %i.ax = icmp eq i64 %i.aq, 0
  br i1 %i.ax, label %.loopexit.i, label %bb.f

.loopexit.i:                                      ; preds = %bb.h, %_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2D_4SendEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !6561, !noalias !6562, !noundef !8
  br label %_RNvXsb_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2D_4SendEL_EEENtNtB2F_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

_RNvXsb_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2D_4SendEL_EEENtNtB2F_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %.loopexit.i
  %.sroa.7.0 = phi i64 [ %i.u, %.loopexit.i ], [ 0, %bb.a ]
  %.sroa.6.0 = phi i64 [ %i.az, %.loopexit.i ], [ 0, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.r, %.loopexit.i ], [ @4, %bb.a ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.val, ptr %i.ba, align 8
  store ptr %.sroa.0.0, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBK_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x i64>, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6585)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !6585, !noalias !6588, !noundef !8 ; 6 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false), !noalias !6585
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6590
  %i.i = add i64 %i.g, 1                          ; 2 uses
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 8, 353) %i.i, i64 48) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.d, !prof !229

bb.d:                                             ; preds = %bb.c
  %i.l = extractvalue { i64, i1 } %i.j, 0         ; 3 uses
  %i.m = add i64 %i.g, 17                         ; 2 uses
  %i.n = add i64 %i.l, %i.m                       ; 5 uses
  %i.o = icmp ult i64 %i.n, %i.l
  %i.p = icmp ugt i64 %i.n, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.o, %i.p
  br i1 %or.cond.i.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !prof !6426

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %bb.d
  %i.q = icmp eq i64 %i.n, 0
  br i1 %i.q, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !6591
  %i.r = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !6591 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !6591
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.u = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.n), !noalias !6591
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i = phi { i64, i64 } [ %i.u, %bb.f ], [ %i.t, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 1
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %.sroa.0.0.i.i9.i.i.i = phi ptr [ %i.r, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i.i, i64 %i.l
  %2 = icmp ult i64 %i.g, 8
  %i.w = lshr i64 %i.i, 3
  %i.x = mul nuw nsw i64 %i.w, 7
  %.sroa.07.0.i.i.i = select i1 %2, i64 %i.g, i64 %i.x
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.g ], [ %i.m, %bb.h ]
  %.sroa.7.0.i = phi i64 [ %.sroa.12.0.ph.i.i, %bb.g ], [ %.sroa.07.0.i.i.i, %bb.h ]
  %.sroa.5.0.i = phi i64 [ %.sroa.7.0.ph.i.i, %bb.g ], [ %i.g, %bb.h ]
  %.sroa.0.0.i = phi ptr [ null, %bb.g ], [ %i.v, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0.i, ptr %i.b, align 8, !noalias !6590
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !6590
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !6590
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !6590
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6596)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6599)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6601)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6604)
  %i.y = load ptr, ptr %1, align 8, !alias.scope !6606, !noalias !6607, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.y, i64 %.pre-phi.i, i1 false), !noalias !6608
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !6606, !noalias !6607, !noundef !8 ; 3 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.ac = load <16 x i8>, ptr %i.y, align 16, !noalias !6609
  %i.ad = icmp sgt <16 x i8> %i.ac, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ah = ptrtoint ptr %i.y to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.k, %bb.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ai, %bb.i ], [ %i.ay, %bb.k ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1W_EEENCNvMse_B1D_B1A_15clone_from_impl0EECs2VbMhdeEr66_16delta_benchmarks(i64 %.sroa.012.028.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #34
          to label %.body.i unwind label %bb.m, !noalias !6614

bb.j:                                             ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.012.028.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.bg, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ]
  %.sroa.1015.027.i.i.i = phi i64 [ %i.aa, %.lr.ph.i.i.i ], [ %i.av, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ]
  %.sroa.013.026.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %.sroa.013.1.i.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.sroa.6.025.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.sroa.6.1.i.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.sroa.814.024.i.i.i = phi i16 [ %i.ae, %.lr.ph.i.i.i ], [ %i.as, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.not10.i.i.i.i = icmp eq i16 %.sroa.814.024.i.i.i, 0
  br i1 %.not10.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.aj = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %.sroa.6.025.i.i.i, %bb.j ] ; 2 uses
  %i.ak = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %.sroa.013.026.i.i.i, %bb.j ]
  %i.al = load <16 x i8>, ptr %i.aj, align 16, !noalias !6615
  %i.am = icmp sgt <16 x i8> %i.al, splat (i8 -1)
  %i.an = getelementptr inbounds i8, ptr %i.ak, i64 -768 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.am to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.j
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.025.i.i.i, %bb.j ], [ %i.ao, %.lr.ph.i.i.i.i ]
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.026.i.i.i, %bb.j ], [ %i.an, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.814.024.i.i.i, %bb.j ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.ap = add i16 %.lcssa.i.i.i.i, -1
  %i.aq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.ar = zext nneg i16 %i.aq to i64
  %i.as = and i16 %i.ap, %.lcssa.i.i.i.i
  %i.at = sub nsw i64 0, %i.ar
  %i.au = getelementptr inbounds [48 x i8], ptr %.sroa.013.1.i.i.i, i64 %i.at ; 3 uses
  %i.av = add i64 %.sroa.1015.027.i.i.i, -1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6608
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 -48
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aw)
          to label %.noexc.i.i.i unwind label %bb.i, !noalias !6608

.noexc.i.i.i:                                     ; preds = %.loopexit.i.i.i
  %i.ax = getelementptr inbounds i8, ptr %i.au, i64 -24
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ax)
          to label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.k, !noalias !6608

bb.k:                                             ; preds = %.noexc.i.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) #34
          to label %.body.i.i.i unwind label %bb.l, !noalias !6608

bb.l:                                             ; preds = %bb.k
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6608
  unreachable

_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %.noexc.i.i.i
  %i.ba = ptrtoint ptr %i.au to i64
  %i.bb = sub i64 %i.ah, %i.ba
  %i.bc = sdiv exact i64 %i.bb, 48                ; 2 uses
  %i.bd = sub nsw i64 0, %i.bc
  %i.be = getelementptr inbounds [48 x i8], ptr %.sroa.0.0.i, i64 %i.bd
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bf, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !6608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6608
  %i.bg = add nsw i64 %i.bc, 1
  %i.bh = icmp eq i64 %i.av, 0
  br i1 %i.bh, label %.loopexit.i, label %bb.j

bb.m:                                             ; preds = %.body.i.i.i
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6608
  unreachable

.body.i:                                          ; preds = %.body.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1n_EEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.b) #34
          to label %bb.o unwind label %bb.n, !noalias !6590

.loopexit.i:                                      ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  store i64 %i.aa, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !6620, !noalias !6614
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !6606, !noalias !6607, !noundef !8
  store i64 %i.bk, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !6620, !noalias !6614
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !6585
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6590
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.n:                                             ; preds = %.body.i
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6590
  unreachable

bb.o:                                             ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %.loopexit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.e, ptr %i.bm, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBO_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_ENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x i64>, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6621)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !6621, !noalias !6624, !noundef !8 ; 6 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false), !noalias !6621
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6626
  %i.i = add i64 %i.g, 1                          ; 2 uses
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 8, 353) %i.i, i64 40) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.d, !prof !229

bb.d:                                             ; preds = %bb.c
  %i.l = extractvalue { i64, i1 } %i.j, 0
  %i.m = add nuw i64 %i.l, 8
  %i.n = and i64 %i.m, -16                        ; 3 uses
  %i.o = add i64 %i.g, 17                         ; 2 uses
  %i.p = add i64 %i.n, %i.o                       ; 5 uses
  %i.q = icmp ult i64 %i.p, %i.n
  %i.r = icmp ugt i64 %i.p, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.q, %i.r
  br i1 %or.cond.i.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !prof !6426

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %bb.d
  %i.s = icmp eq i64 %i.p, 0
  br i1 %i.s, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !6627
  %i.t = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !6627 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.v = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !6627
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.w = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.p), !noalias !6627
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i = phi { i64, i64 } [ %i.w, %bb.f ], [ %i.v, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 1
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %.sroa.0.0.i.i9.i.i.i = phi ptr [ %i.t, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i.i, i64 %i.n
  %2 = icmp ult i64 %i.g, 8
  %i.y = lshr i64 %i.i, 3
  %i.z = mul nuw nsw i64 %i.y, 7
  %.sroa.07.0.i.i.i = select i1 %2, i64 %i.g, i64 %i.z
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.g ], [ %i.o, %bb.h ]
  %.sroa.7.0.i = phi i64 [ %.sroa.12.0.ph.i.i, %bb.g ], [ %.sroa.07.0.i.i.i, %bb.h ]
  %.sroa.5.0.i = phi i64 [ %.sroa.7.0.ph.i.i, %bb.g ], [ %i.g, %bb.h ]
  %.sroa.0.0.i = phi ptr [ null, %bb.g ], [ %i.x, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0.i, ptr %i.b, align 8, !noalias !6626
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !6626
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !6626
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !6626
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6632)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6635)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6637)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6640)
  %i.aa = load ptr, ptr %1, align 8, !alias.scope !6642, !noalias !6643, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.aa, i64 %.pre-phi.i, i1 false), !noalias !6644
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !6642, !noalias !6643, !noundef !8 ; 3 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.ae = load <16 x i8>, ptr %i.aa, align 16, !noalias !6645
  %i.af = icmp sgt <16 x i8> %i.ae, splat (i8 -1)
  %i.ag = bitcast <16 x i1> %i.af to i16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ak = ptrtoint ptr %i.aa to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB20_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEEENCNvMse_B1D_B1A_15clone_from_impl0EECs2VbMhdeEr66_16delta_benchmarks(i64 %.sroa.012.027.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #34
          to label %.body.i unwind label %bb.m, !noalias !6650

bb.j:                                             ; preds = %bb.l, %.lr.ph.i.i.i
  %.sroa.012.027.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.bk, %bb.l ]
  %.sroa.1015.026.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.i.i ], [ %i.ay, %bb.l ]
  %.sroa.013.025.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %.sroa.013.1.i.i.i, %bb.l ] ; 2 uses
  %.sroa.6.024.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %.sroa.6.1.i.i.i, %bb.l ] ; 2 uses
  %.sroa.814.023.i.i.i = phi i16 [ %i.ag, %.lr.ph.i.i.i ], [ %i.av, %bb.l ] ; 2 uses
  %.not10.i.i.i.i = icmp eq i16 %.sroa.814.023.i.i.i, 0
  br i1 %.not10.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.am = phi ptr [ %i.ar, %.lr.ph.i.i.i.i ], [ %.sroa.6.024.i.i.i, %bb.j ] ; 2 uses
  %i.an = phi ptr [ %i.aq, %.lr.ph.i.i.i.i ], [ %.sroa.013.025.i.i.i, %bb.j ]
  %i.ao = load <16 x i8>, ptr %i.am, align 16, !noalias !6651
  %i.ap = icmp sgt <16 x i8> %i.ao, splat (i8 -1)
  %i.aq = getelementptr inbounds i8, ptr %i.an, i64 -640 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.ap to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.j
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.024.i.i.i, %bb.j ], [ %i.ar, %.lr.ph.i.i.i.i ]
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.025.i.i.i, %bb.j ], [ %i.aq, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.814.023.i.i.i, %bb.j ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.as = add i16 %.lcssa.i.i.i.i, -1
  %i.at = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.au = zext nneg i16 %i.at to i64
  %i.av = and i16 %i.as, %.lcssa.i.i.i.i
  %i.aw = sub nsw i64 0, %i.au
  %i.ax = getelementptr inbounds [40 x i8], ptr %.sroa.013.1.i.i.i, i64 %i.aw ; 4 uses
  %i.ay = add i64 %.sroa.1015.026.i.i.i, -1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6644
  %i.az = getelementptr inbounds i8, ptr %i.ax, i64 -40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6656)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6659)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.az)
          to label %.noexc.i.i.i unwind label %bb.i, !noalias !6644

.noexc.i.i.i:                                     ; preds = %.loopexit.i.i.i
  %i.ba = getelementptr inbounds i8, ptr %i.ax, i64 -16
  %.val.i.i.i.i = load ptr, ptr %i.ba, align 8, !alias.scope !6659, !noalias !6661, !nonnull !8, !noundef !8 ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %i.ax, i64 -8
  %.val1.i.i.i.i = load ptr, ptr %i.bb, align 8, !alias.scope !6659, !noalias !6661 ; 2 uses
  %i.bc = atomicrmw add ptr %.val.i.i.i.i, i64 1 monotonic, align 8, !noalias !6661
  %i.bd = icmp slt i64 %i.bc, 0
  br i1 %i.bd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc.i.i.i
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %.noexc.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i) ]
  store ptr %.val.i.i.i.i, ptr %i.ai, align 8, !alias.scope !6656, !noalias !6662
  store ptr %.val1.i.i.i.i, ptr %i.aj, align 8, !alias.scope !6656, !noalias !6662
  %i.be = ptrtoint ptr %i.ax to i64
  %i.bf = sub i64 %i.ak, %i.be
  %i.bg = sdiv exact i64 %i.bf, 40                ; 2 uses
  %i.bh = sub nsw i64 0, %i.bg
  %i.bi = getelementptr inbounds [40 x i8], ptr %.sroa.0.0.i, i64 %i.bh
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bj, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !noalias !6644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6644
  %i.bk = add nsw i64 %i.bg, 1
  %i.bl = icmp eq i64 %i.ay, 0
  br i1 %i.bl, label %.loopexit.i, label %bb.j

bb.m:                                             ; preds = %bb.i
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6644
  unreachable

.body.i:                                          ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1r_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.b) #34
          to label %bb.o unwind label %bb.n, !noalias !6626

.loopexit.i:                                      ; preds = %bb.l, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  store i64 %i.ac, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !6663, !noalias !6650
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !6642, !noalias !6643, !noundef !8
  store i64 %i.bo, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !6663, !noalias !6650
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !6621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6626
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.n:                                             ; preds = %.body.i
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6626
  unreachable

bb.o:                                             ; preds = %.body.i
  resume { ptr, i32 } %i.al

_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %.loopexit.i
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.e, ptr %i.bq, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBO_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_ENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x i64>, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6664)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !6664, !noalias !6667, !noundef !8 ; 6 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false), !noalias !6664
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6669
  %i.i = add i64 %i.g, 1                          ; 2 uses
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 8, 353) %i.i, i64 40) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.d, !prof !229

bb.d:                                             ; preds = %bb.c
  %i.l = extractvalue { i64, i1 } %i.j, 0
  %i.m = add nuw i64 %i.l, 8
  %i.n = and i64 %i.m, -16                        ; 3 uses
  %i.o = add i64 %i.g, 17                         ; 2 uses
  %i.p = add i64 %i.n, %i.o                       ; 5 uses
  %i.q = icmp ult i64 %i.p, %i.n
  %i.r = icmp ugt i64 %i.p, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.q, %i.r
  br i1 %or.cond.i.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !prof !6426

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %bb.d
  %i.s = icmp eq i64 %i.p, 0
  br i1 %i.s, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !6670
  %i.t = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !6670 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.v = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !6670
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.w = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.p), !noalias !6670
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i = phi { i64, i64 } [ %i.w, %bb.f ], [ %i.v, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 1
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %.sroa.0.0.i.i9.i.i.i = phi ptr [ %i.t, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i.i, i64 %i.n
  %2 = icmp ult i64 %i.g, 8
  %i.y = lshr i64 %i.i, 3
  %i.z = mul nuw nsw i64 %i.y, 7
  %.sroa.07.0.i.i.i = select i1 %2, i64 %i.g, i64 %i.z
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.g ], [ %i.o, %bb.h ]
  %.sroa.7.0.i = phi i64 [ %.sroa.12.0.ph.i.i, %bb.g ], [ %.sroa.07.0.i.i.i, %bb.h ]
  %.sroa.5.0.i = phi i64 [ %.sroa.7.0.ph.i.i, %bb.g ], [ %i.g, %bb.h ]
  %.sroa.0.0.i = phi ptr [ null, %bb.g ], [ %i.x, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0.i, ptr %i.b, align 8, !noalias !6669
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !6669
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !6669
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !6669
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6680)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6683)
  %i.aa = load ptr, ptr %1, align 8, !alias.scope !6685, !noalias !6686, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.aa, i64 %.pre-phi.i, i1 false), !noalias !6687
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !6685, !noalias !6686, !noundef !8 ; 3 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.ae = load <16 x i8>, ptr %i.aa, align 16, !noalias !6688
  %i.af = icmp sgt <16 x i8> %i.ae, splat (i8 -1)
  %i.ag = bitcast <16 x i1> %i.af to i16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ak = ptrtoint ptr %i.aa to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB20_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEEENCNvMse_B1D_B1A_15clone_from_impl0EECs2VbMhdeEr66_16delta_benchmarks(i64 %.sroa.012.027.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #34
          to label %.body.i unwind label %bb.m, !noalias !6693

bb.j:                                             ; preds = %bb.l, %.lr.ph.i.i.i
  %.sroa.012.027.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.bk, %bb.l ]
  %.sroa.1015.026.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.i.i ], [ %i.ay, %bb.l ]
  %.sroa.013.025.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %.sroa.013.1.i.i.i, %bb.l ] ; 2 uses
  %.sroa.6.024.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %.sroa.6.1.i.i.i, %bb.l ] ; 2 uses
  %.sroa.814.023.i.i.i = phi i16 [ %i.ag, %.lr.ph.i.i.i ], [ %i.av, %bb.l ] ; 2 uses
  %.not10.i.i.i.i = icmp eq i16 %.sroa.814.023.i.i.i, 0
  br i1 %.not10.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.am = phi ptr [ %i.ar, %.lr.ph.i.i.i.i ], [ %.sroa.6.024.i.i.i, %bb.j ] ; 2 uses
  %i.an = phi ptr [ %i.aq, %.lr.ph.i.i.i.i ], [ %.sroa.013.025.i.i.i, %bb.j ]
  %i.ao = load <16 x i8>, ptr %i.am, align 16, !noalias !6694
  %i.ap = icmp sgt <16 x i8> %i.ao, splat (i8 -1)
  %i.aq = getelementptr inbounds i8, ptr %i.an, i64 -640 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.ap to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.j
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.024.i.i.i, %bb.j ], [ %i.ar, %.lr.ph.i.i.i.i ]
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.025.i.i.i, %bb.j ], [ %i.aq, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.814.023.i.i.i, %bb.j ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.as = add i16 %.lcssa.i.i.i.i, -1
  %i.at = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.au = zext nneg i16 %i.at to i64
  %i.av = and i16 %i.as, %.lcssa.i.i.i.i
  %i.aw = sub nsw i64 0, %i.au
  %i.ax = getelementptr inbounds [40 x i8], ptr %.sroa.013.1.i.i.i, i64 %i.aw ; 4 uses
  %i.ay = add i64 %.sroa.1015.026.i.i.i, -1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6687
  %i.az = getelementptr inbounds i8, ptr %i.ax, i64 -40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6699)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6702)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.az)
          to label %.noexc.i.i.i unwind label %bb.i, !noalias !6687

.noexc.i.i.i:                                     ; preds = %.loopexit.i.i.i
  %i.ba = getelementptr inbounds i8, ptr %i.ax, i64 -16
  %.val.i.i.i.i = load ptr, ptr %i.ba, align 8, !alias.scope !6702, !noalias !6704, !nonnull !8, !noundef !8 ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %i.ax, i64 -8
  %.val1.i.i.i.i = load ptr, ptr %i.bb, align 8, !alias.scope !6702, !noalias !6704 ; 2 uses
  %i.bc = atomicrmw add ptr %.val.i.i.i.i, i64 1 monotonic, align 8, !noalias !6704
  %i.bd = icmp slt i64 %i.bc, 0
  br i1 %i.bd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc.i.i.i
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %.noexc.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i) ]
  store ptr %.val.i.i.i.i, ptr %i.ai, align 8, !alias.scope !6699, !noalias !6705
  store ptr %.val1.i.i.i.i, ptr %i.aj, align 8, !alias.scope !6699, !noalias !6705
  %i.be = ptrtoint ptr %i.ax to i64
  %i.bf = sub i64 %i.ak, %i.be
  %i.bg = sdiv exact i64 %i.bf, 40                ; 2 uses
  %i.bh = sub nsw i64 0, %i.bg
  %i.bi = getelementptr inbounds [40 x i8], ptr %.sroa.0.0.i, i64 %i.bh
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bj, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !noalias !6687
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6687
  %i.bk = add nsw i64 %i.bg, 1
  %i.bl = icmp eq i64 %i.ay, 0
  br i1 %i.bl, label %.loopexit.i, label %bb.j

bb.m:                                             ; preds = %bb.i
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6687
  unreachable

.body.i:                                          ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1r_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.b) #34
          to label %bb.o unwind label %bb.n, !noalias !6669

.loopexit.i:                                      ; preds = %bb.l, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  store i64 %i.ac, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !6706, !noalias !6693
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !6685, !noalias !6686, !noundef !8
  store i64 %i.bo, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !6706, !noalias !6693
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !6664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6669
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.n:                                             ; preds = %.body.i
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6669
  unreachable

bb.o:                                             ; preds = %.body.i
  resume { ptr, i32 } %i.al

_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %.loopexit.i
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.e, ptr %i.bq, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBO_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x i64>, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6707)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !6707, !noalias !6710, !noundef !8 ; 6 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false), !noalias !6707
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6712
  %i.i = add i64 %i.g, 1                          ; 3 uses
  %i.j = icmp ugt i64 %i.i, 576460752303423487
  br i1 %i.j, label %bb.e, label %bb.d, !prof !229

bb.d:                                             ; preds = %bb.c
  %i.k = shl nuw i64 %i.i, 5                      ; 3 uses
  %i.l = add nsw i64 %i.g, 17                     ; 2 uses
  %i.m = add i64 %i.k, %i.l                       ; 5 uses
  %i.n = icmp ult i64 %i.m, %i.k
  %i.o = icmp ugt i64 %i.m, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.n, %i.o
  br i1 %or.cond.i.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !prof !6426

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %bb.d
  %i.p = icmp eq i64 %i.m, 0
  br i1 %i.p, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !6713
  %i.q = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !6713 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !6713
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.t = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.m), !noalias !6713
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i = phi { i64, i64 } [ %i.t, %bb.f ], [ %i.s, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 1
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %.sroa.0.0.i.i9.i.i.i = phi ptr [ %i.q, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i.i, i64 %i.k
  %2 = icmp ult i64 %i.g, 8
  %i.v = lshr i64 %i.i, 3
  %i.w = mul nuw nsw i64 %i.v, 7
  %.sroa.07.0.i.i.i = select i1 %2, i64 %i.g, i64 %i.w
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.g ], [ %i.l, %bb.h ]
  %.sroa.7.0.i = phi i64 [ %.sroa.12.0.ph.i.i, %bb.g ], [ %.sroa.07.0.i.i.i, %bb.h ]
  %.sroa.5.0.i = phi i64 [ %.sroa.7.0.ph.i.i, %bb.g ], [ %i.g, %bb.h ]
  %.sroa.0.0.i = phi ptr [ null, %bb.g ], [ %i.u, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0.i, ptr %i.b, align 8, !noalias !6712
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !6712
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !6712
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !6712
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6718)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6721)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6723)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6726)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !6728, !noalias !6729, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.x, i64 %.pre-phi.i, i1 false), !noalias !6730
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !6728, !noalias !6729, !noundef !8 ; 3 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.ab = load <16 x i8>, ptr %i.x, align 16, !noalias !6731
  %i.ac = icmp sgt <16 x i8> %i.ab, splat (i8 -1)
  %i.ad = bitcast <16 x i1> %i.ac to i16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ag = ptrtoint ptr %i.x to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB20_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEEENCNvMse_B1D_B1A_15clone_from_impl0EECs2VbMhdeEr66_16delta_benchmarks(i64 %.sroa.012.027.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #34
          to label %.body.i unwind label %bb.m, !noalias !6736

bb.j:                                             ; preds = %bb.l, %.lr.ph.i.i.i
  %.sroa.012.027.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.bf, %bb.l ]
  %.sroa.1015.026.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i ], [ %i.au, %bb.l ]
  %.sroa.013.025.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %.sroa.013.1.i.i.i, %bb.l ] ; 2 uses
  %.sroa.6.024.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %.sroa.6.1.i.i.i, %bb.l ] ; 2 uses
  %.sroa.814.023.i.i.i = phi i16 [ %i.ad, %.lr.ph.i.i.i ], [ %i.ar, %bb.l ] ; 2 uses
  %.not10.i.i.i.i = icmp eq i16 %.sroa.814.023.i.i.i, 0
  br i1 %.not10.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.ai = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %.sroa.6.024.i.i.i, %bb.j ] ; 2 uses
  %i.aj = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %.sroa.013.025.i.i.i, %bb.j ]
  %i.ak = load <16 x i8>, ptr %i.ai, align 16, !noalias !6737
  %i.al = icmp sgt <16 x i8> %i.ak, splat (i8 -1)
  %i.am = getelementptr inbounds i8, ptr %i.aj, i64 -512 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.al to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.j
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.024.i.i.i, %bb.j ], [ %i.an, %.lr.ph.i.i.i.i ]
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.025.i.i.i, %bb.j ], [ %i.am, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.814.023.i.i.i, %bb.j ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.ao = add i16 %.lcssa.i.i.i.i, -1
  %i.ap = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.aq = zext nneg i16 %i.ap to i64
  %i.ar = and i16 %i.ao, %.lcssa.i.i.i.i
  %i.as = sub nsw i64 0, %i.aq
  %i.at = getelementptr inbounds [32 x i8], ptr %.sroa.013.1.i.i.i, i64 %i.as ; 3 uses
  %i.au = add i64 %.sroa.1015.026.i.i.i, -1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6730
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 -32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6742)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6745)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.av)
          to label %.noexc.i.i.i unwind label %bb.i, !noalias !6730

.noexc.i.i.i:                                     ; preds = %.loopexit.i.i.i
  %i.aw = getelementptr inbounds i8, ptr %i.at, i64 -8
  %.val.i.i.i.i = load ptr, ptr %i.aw, align 8, !alias.scope !6745, !noalias !6747, !nonnull !8, !noundef !8 ; 2 uses
  %i.ax = atomicrmw add ptr %.val.i.i.i.i, i64 1 monotonic, align 8, !noalias !6747
  %i.ay = icmp slt i64 %i.ax, 0
  br i1 %i.ay, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc.i.i.i
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %.noexc.i.i.i
  store ptr %.val.i.i.i.i, ptr %i.af, align 8, !alias.scope !6742, !noalias !6748
  %i.az = ptrtoint ptr %i.at to i64
  %i.ba = sub i64 %i.ag, %i.az
  %i.bb = ashr exact i64 %i.ba, 5                 ; 2 uses
  %i.bc = sub nsw i64 0, %i.bb
  %i.bd = getelementptr inbounds [32 x i8], ptr %.sroa.0.0.i, i64 %i.bc
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.be, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !6730
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6730
  %i.bf = add nsw i64 %i.bb, 1
  %i.bg = icmp eq i64 %i.au, 0
  br i1 %i.bg, label %.loopexit.i, label %bb.j

bb.m:                                             ; preds = %bb.i
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6730
  unreachable

.body.i:                                          ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1r_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.b) #34
          to label %bb.o unwind label %bb.n, !noalias !6712

.loopexit.i:                                      ; preds = %bb.l, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  store i64 %i.z, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !6749, !noalias !6736
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !6728, !noalias !6729, !noundef !8
  store i64 %i.bj, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !6749, !noalias !6736
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !6707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6712
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.n:                                             ; preds = %.body.i
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6712
  unreachable

bb.o:                                             ; preds = %.body.i
  resume { ptr, i32 } %i.ah

_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %.loopexit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.e, ptr %i.bl, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBO_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x i64>, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6750)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !6750, !noalias !6753, !noundef !8 ; 6 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false), !noalias !6750
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6755
  %i.i = add i64 %i.g, 1                          ; 3 uses
  %i.j = icmp ugt i64 %i.i, 576460752303423487
  br i1 %i.j, label %bb.e, label %bb.d, !prof !229

bb.d:                                             ; preds = %bb.c
  %i.k = shl nuw i64 %i.i, 5                      ; 3 uses
  %i.l = add nsw i64 %i.g, 17                     ; 2 uses
  %i.m = add i64 %i.k, %i.l                       ; 5 uses
  %i.n = icmp ult i64 %i.m, %i.k
  %i.o = icmp ugt i64 %i.m, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.n, %i.o
  br i1 %or.cond.i.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !prof !6426

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %bb.d
  %i.p = icmp eq i64 %i.m, 0
  br i1 %i.p, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !6756
  %i.q = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !6756 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !6756
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.t = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.m), !noalias !6756
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i = phi { i64, i64 } [ %i.t, %bb.f ], [ %i.s, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 1
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %.sroa.0.0.i.i9.i.i.i = phi ptr [ %i.q, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i.i, i64 %i.k
  %2 = icmp ult i64 %i.g, 8
  %i.v = lshr i64 %i.i, 3
  %i.w = mul nuw nsw i64 %i.v, 7
  %.sroa.07.0.i.i.i = select i1 %2, i64 %i.g, i64 %i.w
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.g ], [ %i.l, %bb.h ]
  %.sroa.7.0.i = phi i64 [ %.sroa.12.0.ph.i.i, %bb.g ], [ %.sroa.07.0.i.i.i, %bb.h ]
  %.sroa.5.0.i = phi i64 [ %.sroa.7.0.ph.i.i, %bb.g ], [ %i.g, %bb.h ]
  %.sroa.0.0.i = phi ptr [ null, %bb.g ], [ %i.u, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0.i, ptr %i.b, align 8, !noalias !6755
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !6755
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !6755
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !6755
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6761)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6764)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6766)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6769)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !6771, !noalias !6772, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.x, i64 %.pre-phi.i, i1 false), !noalias !6773
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !6771, !noalias !6772, !noundef !8 ; 3 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.ab = load <16 x i8>, ptr %i.x, align 16, !noalias !6774
  %i.ac = icmp sgt <16 x i8> %i.ab, splat (i8 -1)
  %i.ad = bitcast <16 x i1> %i.ac to i16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ag = ptrtoint ptr %i.x to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB20_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEEENCNvMse_B1D_B1A_15clone_from_impl0EECs2VbMhdeEr66_16delta_benchmarks(i64 %.sroa.012.027.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #34
          to label %.body.i unwind label %bb.m, !noalias !6779

bb.j:                                             ; preds = %bb.l, %.lr.ph.i.i.i
  %.sroa.012.027.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.bf, %bb.l ]
  %.sroa.1015.026.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i ], [ %i.au, %bb.l ]
  %.sroa.013.025.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %.sroa.013.1.i.i.i, %bb.l ] ; 2 uses
  %.sroa.6.024.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %.sroa.6.1.i.i.i, %bb.l ] ; 2 uses
  %.sroa.814.023.i.i.i = phi i16 [ %i.ad, %.lr.ph.i.i.i ], [ %i.ar, %bb.l ] ; 2 uses
  %.not10.i.i.i.i = icmp eq i16 %.sroa.814.023.i.i.i, 0
  br i1 %.not10.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.ai = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %.sroa.6.024.i.i.i, %bb.j ] ; 2 uses
  %i.aj = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %.sroa.013.025.i.i.i, %bb.j ]
  %i.ak = load <16 x i8>, ptr %i.ai, align 16, !noalias !6780
  %i.al = icmp sgt <16 x i8> %i.ak, splat (i8 -1)
  %i.am = getelementptr inbounds i8, ptr %i.aj, i64 -512 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.al to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.j
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.024.i.i.i, %bb.j ], [ %i.an, %.lr.ph.i.i.i.i ]
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.025.i.i.i, %bb.j ], [ %i.am, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.814.023.i.i.i, %bb.j ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.ao = add i16 %.lcssa.i.i.i.i, -1
  %i.ap = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.aq = zext nneg i16 %i.ap to i64
  %i.ar = and i16 %i.ao, %.lcssa.i.i.i.i
  %i.as = sub nsw i64 0, %i.aq
  %i.at = getelementptr inbounds [32 x i8], ptr %.sroa.013.1.i.i.i, i64 %i.as ; 3 uses
  %i.au = add i64 %.sroa.1015.026.i.i.i, -1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6773
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 -32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6785)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6788)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.av)
          to label %.noexc.i.i.i unwind label %bb.i, !noalias !6773

.noexc.i.i.i:                                     ; preds = %.loopexit.i.i.i
  %i.aw = getelementptr inbounds i8, ptr %i.at, i64 -8
  %.val.i.i.i.i = load ptr, ptr %i.aw, align 8, !alias.scope !6788, !noalias !6790, !nonnull !8, !noundef !8 ; 2 uses
  %i.ax = atomicrmw add ptr %.val.i.i.i.i, i64 1 monotonic, align 8, !noalias !6790
  %i.ay = icmp slt i64 %i.ax, 0
  br i1 %i.ay, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc.i.i.i
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %.noexc.i.i.i
  store ptr %.val.i.i.i.i, ptr %i.af, align 8, !alias.scope !6785, !noalias !6791
  %i.az = ptrtoint ptr %i.at to i64
  %i.ba = sub i64 %i.ag, %i.az
  %i.bb = ashr exact i64 %i.ba, 5                 ; 2 uses
  %i.bc = sub nsw i64 0, %i.bb
  %i.bd = getelementptr inbounds [32 x i8], ptr %.sroa.0.0.i, i64 %i.bc
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.be, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !6773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6773
  %i.bf = add nsw i64 %i.bb, 1
  %i.bg = icmp eq i64 %i.au, 0
  br i1 %i.bg, label %.loopexit.i, label %bb.j

bb.m:                                             ; preds = %bb.i
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6773
  unreachable

.body.i:                                          ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1r_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.b) #34
          to label %bb.o unwind label %bb.n, !noalias !6755

.loopexit.i:                                      ; preds = %bb.l, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  store i64 %i.z, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !6792, !noalias !6779
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !6771, !noalias !6772, !noundef !8
  store i64 %i.bj, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !6792, !noalias !6779
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !6750
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6755
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.n:                                             ; preds = %.body.i
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6755
  unreachable

bb.o:                                             ; preds = %.body.i
  resume { ptr, i32 } %i.ah

_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %.loopexit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.e, ptr %i.bl, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBO_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x i64>, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6793)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !6793, !noalias !6796, !noundef !8 ; 6 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false), !noalias !6793
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6798
  %i.i = add i64 %i.g, 1                          ; 3 uses
  %i.j = icmp ugt i64 %i.i, 576460752303423487
  br i1 %i.j, label %bb.e, label %bb.d, !prof !229

bb.d:                                             ; preds = %bb.c
  %i.k = shl nuw i64 %i.i, 5                      ; 3 uses
  %i.l = add nsw i64 %i.g, 17                     ; 2 uses
  %i.m = add i64 %i.k, %i.l                       ; 5 uses
  %i.n = icmp ult i64 %i.m, %i.k
  %i.o = icmp ugt i64 %i.m, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.n, %i.o
  br i1 %or.cond.i.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !prof !6426

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %bb.d
  %i.p = icmp eq i64 %i.m, 0
  br i1 %i.p, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !6799
  %i.q = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !6799 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !6799
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.t = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.m), !noalias !6799
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i = phi { i64, i64 } [ %i.t, %bb.f ], [ %i.s, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 1
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %.sroa.0.0.i.i9.i.i.i = phi ptr [ %i.q, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i.i, i64 %i.k
  %2 = icmp ult i64 %i.g, 8
  %i.v = lshr i64 %i.i, 3
  %i.w = mul nuw nsw i64 %i.v, 7
  %.sroa.07.0.i.i.i = select i1 %2, i64 %i.g, i64 %i.w
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.g ], [ %i.l, %bb.h ]
  %.sroa.7.0.i = phi i64 [ %.sroa.12.0.ph.i.i, %bb.g ], [ %.sroa.07.0.i.i.i, %bb.h ]
  %.sroa.5.0.i = phi i64 [ %.sroa.7.0.ph.i.i, %bb.g ], [ %i.g, %bb.h ]
  %.sroa.0.0.i = phi ptr [ null, %bb.g ], [ %i.u, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0.i, ptr %i.b, align 8, !noalias !6798
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !6798
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !6798
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !6798
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6804)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6807)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6809)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6812)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !6814, !noalias !6815, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.x, i64 %.pre-phi.i, i1 false), !noalias !6816
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !6814, !noalias !6815, !noundef !8 ; 3 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.ab = load <16 x i8>, ptr %i.x, align 16, !noalias !6817
  %i.ac = icmp sgt <16 x i8> %i.ab, splat (i8 -1)
  %i.ad = bitcast <16 x i1> %i.ac to i16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ag = ptrtoint ptr %i.x to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB20_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEEENCNvMse_B1D_B1A_15clone_from_impl0EECs2VbMhdeEr66_16delta_benchmarks(i64 %.sroa.012.027.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #34
          to label %.body.i unwind label %bb.m, !noalias !6822

bb.j:                                             ; preds = %bb.l, %.lr.ph.i.i.i
  %.sroa.012.027.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.bf, %bb.l ]
  %.sroa.1015.026.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i ], [ %i.au, %bb.l ]
  %.sroa.013.025.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %.sroa.013.1.i.i.i, %bb.l ] ; 2 uses
  %.sroa.6.024.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %.sroa.6.1.i.i.i, %bb.l ] ; 2 uses
  %.sroa.814.023.i.i.i = phi i16 [ %i.ad, %.lr.ph.i.i.i ], [ %i.ar, %bb.l ] ; 2 uses
  %.not10.i.i.i.i = icmp eq i16 %.sroa.814.023.i.i.i, 0
  br i1 %.not10.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.ai = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %.sroa.6.024.i.i.i, %bb.j ] ; 2 uses
  %i.aj = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %.sroa.013.025.i.i.i, %bb.j ]
  %i.ak = load <16 x i8>, ptr %i.ai, align 16, !noalias !6823
  %i.al = icmp sgt <16 x i8> %i.ak, splat (i8 -1)
  %i.am = getelementptr inbounds i8, ptr %i.aj, i64 -512 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.al to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.j
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.024.i.i.i, %bb.j ], [ %i.an, %.lr.ph.i.i.i.i ]
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.025.i.i.i, %bb.j ], [ %i.am, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.814.023.i.i.i, %bb.j ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.ao = add i16 %.lcssa.i.i.i.i, -1
  %i.ap = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.aq = zext nneg i16 %i.ap to i64
  %i.ar = and i16 %i.ao, %.lcssa.i.i.i.i
  %i.as = sub nsw i64 0, %i.aq
  %i.at = getelementptr inbounds [32 x i8], ptr %.sroa.013.1.i.i.i, i64 %i.as ; 3 uses
  %i.au = add i64 %.sroa.1015.026.i.i.i, -1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6816
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 -32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6828)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6831)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.av)
          to label %.noexc.i.i.i unwind label %bb.i, !noalias !6816

.noexc.i.i.i:                                     ; preds = %.loopexit.i.i.i
  %i.aw = getelementptr inbounds i8, ptr %i.at, i64 -8
  %.val.i.i.i.i = load ptr, ptr %i.aw, align 8, !alias.scope !6831, !noalias !6833, !nonnull !8, !noundef !8 ; 2 uses
  %i.ax = atomicrmw add ptr %.val.i.i.i.i, i64 1 monotonic, align 8, !noalias !6833
  %i.ay = icmp slt i64 %i.ax, 0
  br i1 %i.ay, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc.i.i.i
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %.noexc.i.i.i
  store ptr %.val.i.i.i.i, ptr %i.af, align 8, !alias.scope !6828, !noalias !6834
  %i.az = ptrtoint ptr %i.at to i64
  %i.ba = sub i64 %i.ag, %i.az
  %i.bb = ashr exact i64 %i.ba, 5                 ; 2 uses
  %i.bc = sub nsw i64 0, %i.bb
  %i.bd = getelementptr inbounds [32 x i8], ptr %.sroa.0.0.i, i64 %i.bc
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.be, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !6816
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6816
  %i.bf = add nsw i64 %i.bb, 1
  %i.bg = icmp eq i64 %i.au, 0
  br i1 %i.bg, label %.loopexit.i, label %bb.j

bb.m:                                             ; preds = %bb.i
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6816
  unreachable

.body.i:                                          ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1r_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.b) #34
          to label %bb.o unwind label %bb.n, !noalias !6798

.loopexit.i:                                      ; preds = %bb.l, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  store i64 %i.z, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !6835, !noalias !6822
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !6814, !noalias !6815, !noundef !8
  store i64 %i.bj, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !6835, !noalias !6822
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !6793
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6798
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.n:                                             ; preds = %.body.i
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6798
  unreachable

bb.o:                                             ; preds = %.body.i
  resume { ptr, i32 } %i.ah

_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %.loopexit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.e, ptr %i.bl, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBO_4sync3ArcNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableFunctionENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x i64>, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6836)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !6836, !noalias !6839, !noundef !8 ; 6 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false), !noalias !6836
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableFunctionEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6841
  %i.i = add i64 %i.g, 1                          ; 3 uses
  %i.j = icmp ugt i64 %i.i, 576460752303423487
  br i1 %i.j, label %bb.e, label %bb.d, !prof !229

bb.d:                                             ; preds = %bb.c
  %i.k = shl nuw i64 %i.i, 5                      ; 3 uses
  %i.l = add nsw i64 %i.g, 17                     ; 2 uses
  %i.m = add i64 %i.k, %i.l                       ; 5 uses
  %i.n = icmp ult i64 %i.m, %i.k
  %i.o = icmp ugt i64 %i.m, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.n, %i.o
  br i1 %or.cond.i.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !prof !6426

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %bb.d
  %i.p = icmp eq i64 %i.m, 0
  br i1 %i.p, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !6842
  %i.q = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !6842 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !6842
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.t = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.m), !noalias !6842
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i = phi { i64, i64 } [ %i.t, %bb.f ], [ %i.s, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 1
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableFunctionEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %.sroa.0.0.i.i9.i.i.i = phi ptr [ %i.q, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i.i, i64 %i.k
  %2 = icmp ult i64 %i.g, 8
  %i.v = lshr i64 %i.i, 3
  %i.w = mul nuw nsw i64 %i.v, 7
  %.sroa.07.0.i.i.i = select i1 %2, i64 %i.g, i64 %i.w
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableFunctionEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableFunctionEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.g ], [ %i.l, %bb.h ]
  %.sroa.7.0.i = phi i64 [ %.sroa.12.0.ph.i.i, %bb.g ], [ %.sroa.07.0.i.i.i, %bb.h ]
  %.sroa.5.0.i = phi i64 [ %.sroa.7.0.ph.i.i, %bb.g ], [ %i.g, %bb.h ]
  %.sroa.0.0.i = phi ptr [ null, %bb.g ], [ %i.u, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0.i, ptr %i.b, align 8, !noalias !6841
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !6841
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !6841
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !6841
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6847)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6850)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6852)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6855)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !6857, !noalias !6858, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.x, i64 %.pre-phi.i, i1 false), !noalias !6859
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !6857, !noalias !6858, !noundef !8 ; 3 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableFunctionEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.ab = load <16 x i8>, ptr %i.x, align 16, !noalias !6860
  %i.ac = icmp sgt <16 x i8> %i.ab, splat (i8 -1)
  %i.ad = bitcast <16 x i1> %i.ac to i16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ag = ptrtoint ptr %i.x to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB20_4sync3ArcNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableFunctionEEEENCNvMse_B1D_B1A_15clone_from_impl0EECs2VbMhdeEr66_16delta_benchmarks(i64 %.sroa.012.027.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #34
          to label %.body.i unwind label %bb.m, !noalias !6865

bb.j:                                             ; preds = %bb.l, %.lr.ph.i.i.i
  %.sroa.012.027.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.bf, %bb.l ]
  %.sroa.1015.026.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i ], [ %i.au, %bb.l ]
  %.sroa.013.025.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %.sroa.013.1.i.i.i, %bb.l ] ; 2 uses
  %.sroa.6.024.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %.sroa.6.1.i.i.i, %bb.l ] ; 2 uses
  %.sroa.814.023.i.i.i = phi i16 [ %i.ad, %.lr.ph.i.i.i ], [ %i.ar, %bb.l ] ; 2 uses
  %.not10.i.i.i.i = icmp eq i16 %.sroa.814.023.i.i.i, 0
  br i1 %.not10.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.ai = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %.sroa.6.024.i.i.i, %bb.j ] ; 2 uses
  %i.aj = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %.sroa.013.025.i.i.i, %bb.j ]
  %i.ak = load <16 x i8>, ptr %i.ai, align 16, !noalias !6866
  %i.al = icmp sgt <16 x i8> %i.ak, splat (i8 -1)
  %i.am = getelementptr inbounds i8, ptr %i.aj, i64 -512 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.al to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.j
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.024.i.i.i, %bb.j ], [ %i.an, %.lr.ph.i.i.i.i ]
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.025.i.i.i, %bb.j ], [ %i.am, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.814.023.i.i.i, %bb.j ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.ao = add i16 %.lcssa.i.i.i.i, -1
  %i.ap = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.aq = zext nneg i16 %i.ap to i64
  %i.ar = and i16 %i.ao, %.lcssa.i.i.i.i
  %i.as = sub nsw i64 0, %i.aq
  %i.at = getelementptr inbounds [32 x i8], ptr %.sroa.013.1.i.i.i, i64 %i.as ; 3 uses
  %i.au = add i64 %.sroa.1015.026.i.i.i, -1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6859
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 -32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6871)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6874)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.av)
          to label %.noexc.i.i.i unwind label %bb.i, !noalias !6859

.noexc.i.i.i:                                     ; preds = %.loopexit.i.i.i
  %i.aw = getelementptr inbounds i8, ptr %i.at, i64 -8
  %.val.i.i.i.i = load ptr, ptr %i.aw, align 8, !alias.scope !6874, !noalias !6876, !nonnull !8, !noundef !8 ; 2 uses
  %i.ax = atomicrmw add ptr %.val.i.i.i.i, i64 1 monotonic, align 8, !noalias !6876
  %i.ay = icmp slt i64 %i.ax, 0
  br i1 %i.ay, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc.i.i.i
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %.noexc.i.i.i
  store ptr %.val.i.i.i.i, ptr %i.af, align 8, !alias.scope !6871, !noalias !6877
  %i.az = ptrtoint ptr %i.at to i64
  %i.ba = sub i64 %i.ag, %i.az
  %i.bb = ashr exact i64 %i.ba, 5                 ; 2 uses
  %i.bc = sub nsw i64 0, %i.bb
  %i.bd = getelementptr inbounds [32 x i8], ptr %.sroa.0.0.i, i64 %i.bc
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.be, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !6859
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6859
  %i.bf = add nsw i64 %i.bb, 1
  %i.bg = icmp eq i64 %i.au, 0
  br i1 %i.bg, label %.loopexit.i, label %bb.j

bb.m:                                             ; preds = %bb.i
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6859
  unreachable

.body.i:                                          ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1r_4sync3ArcNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableFunctionEEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.b) #34
          to label %bb.o unwind label %bb.n, !noalias !6841

.loopexit.i:                                      ; preds = %bb.l, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableFunctionEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  store i64 %i.z, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !6878, !noalias !6865
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !6857, !noalias !6858, !noundef !8
  store i64 %i.bj, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !6878, !noalias !6865
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !6836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6841
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableFunctionEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.n:                                             ; preds = %.body.i
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6841
  unreachable

bb.o:                                             ; preds = %.body.i
  resume { ptr, i32 } %i.ah

_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableFunctionEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %.loopexit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.e, ptr %i.bl, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBO_4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12PreparedPlanENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x i64>, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6879)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !6879, !noalias !6882, !noundef !8 ; 6 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false), !noalias !6879
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12PreparedPlanEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6884
  %i.i = add i64 %i.g, 1                          ; 3 uses
  %i.j = icmp ugt i64 %i.i, 576460752303423487
  br i1 %i.j, label %bb.e, label %bb.d, !prof !229

bb.d:                                             ; preds = %bb.c
  %i.k = shl nuw i64 %i.i, 5                      ; 3 uses
  %i.l = add nsw i64 %i.g, 17                     ; 2 uses
  %i.m = add i64 %i.k, %i.l                       ; 5 uses
  %i.n = icmp ult i64 %i.m, %i.k
  %i.o = icmp ugt i64 %i.m, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.n, %i.o
  br i1 %or.cond.i.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !prof !6426

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %bb.d
  %i.p = icmp eq i64 %i.m, 0
  br i1 %i.p, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !6885
  %i.q = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !6885 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !6885
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.t = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.m), !noalias !6885
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i = phi { i64, i64 } [ %i.t, %bb.f ], [ %i.s, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 1
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12PreparedPlanEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %.sroa.0.0.i.i9.i.i.i = phi ptr [ %i.q, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i.i, i64 %i.k
  %2 = icmp ult i64 %i.g, 8
  %i.v = lshr i64 %i.i, 3
  %i.w = mul nuw nsw i64 %i.v, 7
  %.sroa.07.0.i.i.i = select i1 %2, i64 %i.g, i64 %i.w
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12PreparedPlanEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12PreparedPlanEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.g ], [ %i.l, %bb.h ]
  %.sroa.7.0.i = phi i64 [ %.sroa.12.0.ph.i.i, %bb.g ], [ %.sroa.07.0.i.i.i, %bb.h ]
  %.sroa.5.0.i = phi i64 [ %.sroa.7.0.ph.i.i, %bb.g ], [ %i.g, %bb.h ]
  %.sroa.0.0.i = phi ptr [ null, %bb.g ], [ %i.u, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0.i, ptr %i.b, align 8, !noalias !6884
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !6884
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !6884
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !6884
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6890)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6893)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6895)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6898)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !6900, !noalias !6901, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.x, i64 %.pre-phi.i, i1 false), !noalias !6902
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !6900, !noalias !6901, !noundef !8 ; 3 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12PreparedPlanEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.ab = load <16 x i8>, ptr %i.x, align 16, !noalias !6903
  %i.ac = icmp sgt <16 x i8> %i.ab, splat (i8 -1)
  %i.ad = bitcast <16 x i1> %i.ac to i16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ag = ptrtoint ptr %i.x to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB20_4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12PreparedPlanEEEENCNvMse_B1D_B1A_15clone_from_impl0EECs2VbMhdeEr66_16delta_benchmarks(i64 %.sroa.012.027.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #34
          to label %.body.i unwind label %bb.m, !noalias !6908

bb.j:                                             ; preds = %bb.l, %.lr.ph.i.i.i
  %.sroa.012.027.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.bf, %bb.l ]
  %.sroa.1015.026.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i ], [ %i.au, %bb.l ]
  %.sroa.013.025.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %.sroa.013.1.i.i.i, %bb.l ] ; 2 uses
  %.sroa.6.024.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %.sroa.6.1.i.i.i, %bb.l ] ; 2 uses
  %.sroa.814.023.i.i.i = phi i16 [ %i.ad, %.lr.ph.i.i.i ], [ %i.ar, %bb.l ] ; 2 uses
  %.not10.i.i.i.i = icmp eq i16 %.sroa.814.023.i.i.i, 0
  br i1 %.not10.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.ai = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %.sroa.6.024.i.i.i, %bb.j ] ; 2 uses
  %i.aj = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %.sroa.013.025.i.i.i, %bb.j ]
  %i.ak = load <16 x i8>, ptr %i.ai, align 16, !noalias !6909
  %i.al = icmp sgt <16 x i8> %i.ak, splat (i8 -1)
  %i.am = getelementptr inbounds i8, ptr %i.aj, i64 -512 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.al to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.j
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.024.i.i.i, %bb.j ], [ %i.an, %.lr.ph.i.i.i.i ]
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.025.i.i.i, %bb.j ], [ %i.am, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.814.023.i.i.i, %bb.j ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.ao = add i16 %.lcssa.i.i.i.i, -1
  %i.ap = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.aq = zext nneg i16 %i.ap to i64
  %i.ar = and i16 %i.ao, %.lcssa.i.i.i.i
  %i.as = sub nsw i64 0, %i.aq
  %i.at = getelementptr inbounds [32 x i8], ptr %.sroa.013.1.i.i.i, i64 %i.as ; 3 uses
  %i.au = add i64 %.sroa.1015.026.i.i.i, -1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6902
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 -32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6914)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6917)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.av)
          to label %.noexc.i.i.i unwind label %bb.i, !noalias !6902

.noexc.i.i.i:                                     ; preds = %.loopexit.i.i.i
  %i.aw = getelementptr inbounds i8, ptr %i.at, i64 -8
  %.val.i.i.i.i = load ptr, ptr %i.aw, align 8, !alias.scope !6917, !noalias !6919, !nonnull !8, !noundef !8 ; 2 uses
  %i.ax = atomicrmw add ptr %.val.i.i.i.i, i64 1 monotonic, align 8, !noalias !6919
  %i.ay = icmp slt i64 %i.ax, 0
  br i1 %i.ay, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc.i.i.i
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %.noexc.i.i.i
  store ptr %.val.i.i.i.i, ptr %i.af, align 8, !alias.scope !6914, !noalias !6920
  %i.az = ptrtoint ptr %i.at to i64
  %i.ba = sub i64 %i.ag, %i.az
  %i.bb = ashr exact i64 %i.ba, 5                 ; 2 uses
  %i.bc = sub nsw i64 0, %i.bb
  %i.bd = getelementptr inbounds [32 x i8], ptr %.sroa.0.0.i, i64 %i.bc
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.be, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !6902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6902
  %i.bf = add nsw i64 %i.bb, 1
  %i.bg = icmp eq i64 %i.au, 0
  br i1 %i.bg, label %.loopexit.i, label %bb.j

bb.m:                                             ; preds = %bb.i
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6902
  unreachable

.body.i:                                          ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1r_4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12PreparedPlanEEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.b) #34
          to label %bb.o unwind label %bb.n, !noalias !6884

.loopexit.i:                                      ; preds = %bb.l, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12PreparedPlanEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  store i64 %i.z, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !6921, !noalias !6908
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !6900, !noalias !6901, !noundef !8
  store i64 %i.bj, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !6921, !noalias !6908
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !6879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6884
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12PreparedPlanEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.n:                                             ; preds = %.body.i
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6884
  unreachable

bb.o:                                             ; preds = %.body.i
  resume { ptr, i32 } %i.ah

_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12PreparedPlanEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %.loopexit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.e, ptr %i.bl, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBO_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x i64>, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6922)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !6922, !noalias !6925, !noundef !8 ; 6 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false), !noalias !6922
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6927
  %i.i = add i64 %i.g, 1                          ; 3 uses
  %i.j = icmp ugt i64 %i.i, 576460752303423487
  br i1 %i.j, label %bb.e, label %bb.d, !prof !229

bb.d:                                             ; preds = %bb.c
  %i.k = shl nuw i64 %i.i, 5                      ; 3 uses
  %i.l = add nsw i64 %i.g, 17                     ; 2 uses
  %i.m = add i64 %i.k, %i.l                       ; 5 uses
  %i.n = icmp ult i64 %i.m, %i.k
  %i.o = icmp ugt i64 %i.m, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.n, %i.o
  br i1 %or.cond.i.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !prof !6426

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %bb.d
  %i.p = icmp eq i64 %i.m, 0
  br i1 %i.p, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !6928
  %i.q = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !6928 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !6928
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.t = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.m), !noalias !6928
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i = phi { i64, i64 } [ %i.t, %bb.f ], [ %i.s, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 1
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %.sroa.0.0.i.i9.i.i.i = phi ptr [ %i.q, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i.i, i64 %i.k
  %2 = icmp ult i64 %i.g, 8
  %i.v = lshr i64 %i.i, 3
  %i.w = mul nuw nsw i64 %i.v, 7
  %.sroa.07.0.i.i.i = select i1 %2, i64 %i.g, i64 %i.w
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.g ], [ %i.l, %bb.h ]
  %.sroa.7.0.i = phi i64 [ %.sroa.12.0.ph.i.i, %bb.g ], [ %.sroa.07.0.i.i.i, %bb.h ]
  %.sroa.5.0.i = phi i64 [ %.sroa.7.0.ph.i.i, %bb.g ], [ %i.g, %bb.h ]
  %.sroa.0.0.i = phi ptr [ null, %bb.g ], [ %i.u, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0.i, ptr %i.b, align 8, !noalias !6927
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !6927
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !6927
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !6927
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6933)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6936)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6938)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6941)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !6943, !noalias !6944, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.x, i64 %.pre-phi.i, i1 false), !noalias !6945
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !6943, !noalias !6944, !noundef !8 ; 3 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.ab = load <16 x i8>, ptr %i.x, align 16, !noalias !6946
  %i.ac = icmp sgt <16 x i8> %i.ab, splat (i8 -1)
  %i.ad = bitcast <16 x i1> %i.ac to i16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ag = ptrtoint ptr %i.x to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB20_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEEENCNvMse_B1D_B1A_15clone_from_impl0EECs2VbMhdeEr66_16delta_benchmarks(i64 %.sroa.012.027.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #34
          to label %.body.i unwind label %bb.m, !noalias !6951

bb.j:                                             ; preds = %bb.l, %.lr.ph.i.i.i
  %.sroa.012.027.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.bf, %bb.l ]
  %.sroa.1015.026.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i ], [ %i.au, %bb.l ]
  %.sroa.013.025.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %.sroa.013.1.i.i.i, %bb.l ] ; 2 uses
  %.sroa.6.024.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %.sroa.6.1.i.i.i, %bb.l ] ; 2 uses
  %.sroa.814.023.i.i.i = phi i16 [ %i.ad, %.lr.ph.i.i.i ], [ %i.ar, %bb.l ] ; 2 uses
  %.not10.i.i.i.i = icmp eq i16 %.sroa.814.023.i.i.i, 0
  br i1 %.not10.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.ai = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %.sroa.6.024.i.i.i, %bb.j ] ; 2 uses
  %i.aj = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %.sroa.013.025.i.i.i, %bb.j ]
  %i.ak = load <16 x i8>, ptr %i.ai, align 16, !noalias !6952
  %i.al = icmp sgt <16 x i8> %i.ak, splat (i8 -1)
  %i.am = getelementptr inbounds i8, ptr %i.aj, i64 -512 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.al to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.j
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.024.i.i.i, %bb.j ], [ %i.an, %.lr.ph.i.i.i.i ]
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.025.i.i.i, %bb.j ], [ %i.am, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.814.023.i.i.i, %bb.j ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.ao = add i16 %.lcssa.i.i.i.i, -1
  %i.ap = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.aq = zext nneg i16 %i.ap to i64
  %i.ar = and i16 %i.ao, %.lcssa.i.i.i.i
  %i.as = sub nsw i64 0, %i.aq
  %i.at = getelementptr inbounds [32 x i8], ptr %.sroa.013.1.i.i.i, i64 %i.as ; 3 uses
  %i.au = add i64 %.sroa.1015.026.i.i.i, -1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6945
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 -32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6957)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6960)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.av)
          to label %.noexc.i.i.i unwind label %bb.i, !noalias !6945

.noexc.i.i.i:                                     ; preds = %.loopexit.i.i.i
  %i.aw = getelementptr inbounds i8, ptr %i.at, i64 -8
  %.val.i.i.i.i = load ptr, ptr %i.aw, align 8, !alias.scope !6960, !noalias !6962, !nonnull !8, !noundef !8 ; 2 uses
  %i.ax = atomicrmw add ptr %.val.i.i.i.i, i64 1 monotonic, align 8, !noalias !6962
  %i.ay = icmp slt i64 %i.ax, 0
  br i1 %i.ay, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc.i.i.i
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %.noexc.i.i.i
  store ptr %.val.i.i.i.i, ptr %i.af, align 8, !alias.scope !6957, !noalias !6963
  %i.az = ptrtoint ptr %i.at to i64
  %i.ba = sub i64 %i.ag, %i.az
  %i.bb = ashr exact i64 %i.ba, 5                 ; 2 uses
  %i.bc = sub nsw i64 0, %i.bb
  %i.bd = getelementptr inbounds [32 x i8], ptr %.sroa.0.0.i, i64 %i.bc
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.be, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !6945
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6945
  %i.bf = add nsw i64 %i.bb, 1
  %i.bg = icmp eq i64 %i.au, 0
  br i1 %i.bg, label %.loopexit.i, label %bb.j

bb.m:                                             ; preds = %bb.i
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6945
  unreachable

.body.i:                                          ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1r_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.b) #34
          to label %bb.o unwind label %bb.n, !noalias !6927

.loopexit.i:                                      ; preds = %bb.l, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  store i64 %i.z, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !6964, !noalias !6951
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !6943, !noalias !6944, !noundef !8
  store i64 %i.bj, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !6964, !noalias !6951
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !6922
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6927
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.n:                                             ; preds = %.body.i
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6927
  unreachable

bb.o:                                             ; preds = %.body.i
  resume { ptr, i32 } %i.ah

_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %.loopexit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.e, ptr %i.bl, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBK_ENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtB1r_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x i64>, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6965)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !6965, !noalias !6968, !noundef !8 ; 6 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false), !noalias !6965
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEENtNtB1w_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6970
  %i.i = add i64 %i.g, 1                          ; 2 uses
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 8, 353) %i.i, i64 48) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.d, !prof !229

bb.d:                                             ; preds = %bb.c
  %i.l = extractvalue { i64, i1 } %i.j, 0         ; 3 uses
  %i.m = add i64 %i.g, 17                         ; 2 uses
  %i.n = add i64 %i.l, %i.m                       ; 5 uses
  %i.o = icmp ult i64 %i.n, %i.l
  %i.p = icmp ugt i64 %i.n, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.o, %i.p
  br i1 %or.cond.i.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !prof !6426

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %bb.d
  %i.q = icmp eq i64 %i.n, 0
  br i1 %i.q, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !6971
  %i.r = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !6971 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !6971
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.u = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.n), !noalias !6971
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i = phi { i64, i64 } [ %i.u, %bb.f ], [ %i.t, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 1
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %.sroa.0.0.i.i9.i.i.i = phi ptr [ %i.r, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i.i, i64 %i.l
  %2 = icmp ult i64 %i.g, 8
  %i.w = lshr i64 %i.i, 3
  %i.x = mul nuw nsw i64 %i.w, 7
  %.sroa.07.0.i.i.i = select i1 %2, i64 %i.g, i64 %i.x
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.g ], [ %i.m, %bb.h ]
  %.sroa.7.0.i = phi i64 [ %.sroa.12.0.ph.i.i, %bb.g ], [ %.sroa.07.0.i.i.i, %bb.h ]
  %.sroa.5.0.i = phi i64 [ %.sroa.7.0.ph.i.i, %bb.g ], [ %i.g, %bb.h ]
  %.sroa.0.0.i = phi ptr [ null, %bb.g ], [ %i.v, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0.i, ptr %i.b, align 8, !noalias !6970
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !6970
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !6970
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !6970
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6976)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6979)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6981)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6984)
  %i.y = load ptr, ptr %1, align 8, !alias.scope !6986, !noalias !6987, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.y, i64 %.pre-phi.i, i1 false), !noalias !6988
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !6986, !noalias !6987, !noundef !8 ; 3 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.ac = load <16 x i8>, ptr %i.y, align 16, !noalias !6989
  %i.ad = icmp sgt <16 x i8> %i.ac, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.ah = ptrtoint ptr %i.y to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.m, %bb.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ai, %bb.i ], [ %i.az, %bb.m ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1W_EEEENCNvMse_B1D_B1A_15clone_from_impl0EECs2VbMhdeEr66_16delta_benchmarks(i64 %.sroa.012.028.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #34
          to label %.body.i unwind label %bb.o, !noalias !6994

bb.j:                                             ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB3_EENtNtBK_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.012.028.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.bh, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB3_EENtNtBK_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ]
  %.sroa.1015.027.i.i.i = phi i64 [ %i.aa, %.lr.ph.i.i.i ], [ %i.av, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB3_EENtNtBK_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ]
  %.sroa.013.026.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %.sroa.013.1.i.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB3_EENtNtBK_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.sroa.6.025.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.sroa.6.1.i.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB3_EENtNtBK_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.sroa.814.024.i.i.i = phi i16 [ %i.ae, %.lr.ph.i.i.i ], [ %i.as, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB3_EENtNtBK_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.not10.i.i.i.i = icmp eq i16 %.sroa.814.024.i.i.i, 0
  br i1 %.not10.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.aj = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %.sroa.6.025.i.i.i, %bb.j ] ; 2 uses
  %i.ak = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %.sroa.013.026.i.i.i, %bb.j ]
  %i.al = load <16 x i8>, ptr %i.aj, align 16, !noalias !6995
  %i.am = icmp sgt <16 x i8> %i.al, splat (i8 -1)
  %i.an = getelementptr inbounds i8, ptr %i.ak, i64 -768 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.am to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.j
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.025.i.i.i, %bb.j ], [ %i.ao, %.lr.ph.i.i.i.i ]
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.026.i.i.i, %bb.j ], [ %i.an, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.814.024.i.i.i, %bb.j ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.ap = add i16 %.lcssa.i.i.i.i, -1
  %i.aq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.ar = zext nneg i16 %i.aq to i64
  %i.as = and i16 %i.ap, %.lcssa.i.i.i.i
  %i.at = sub nsw i64 0, %i.ar
  %i.au = getelementptr inbounds [48 x i8], ptr %.sroa.013.1.i.i.i, i64 %i.at ; 3 uses
  %i.av = add i64 %.sroa.1015.027.i.i.i, -1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6988
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 -48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7000)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7003)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aw)
          to label %.noexc.i.i.i unwind label %bb.i, !noalias !6988

.noexc.i.i.i:                                     ; preds = %.loopexit.i.i.i
  %i.ax = getelementptr inbounds i8, ptr %i.au, i64 -24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7005)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7008)
  %i.ay = load i64, ptr %i.ax, align 8, !range !311, !alias.scope !7010, !noalias !7011, !noundef !8
  %.not.i.i.i.i.i = icmp eq i64 %i.ay, -9223372036854775808
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.noexc.i.i.i
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ax)
          to label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB3_EENtNtBK_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.m, !noalias !6988

bb.l:                                             ; preds = %.noexc.i.i.i
  store i64 -9223372036854775808, ptr %i.ag, align 8, !alias.scope !7012, !noalias !7013
  br label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB3_EENtNtBK_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) #34
          to label %.body.i.i.i unwind label %bb.n, !noalias !6988

bb.n:                                             ; preds = %bb.m
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6988
  unreachable

_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB3_EENtNtBK_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %bb.l, %bb.k
  %i.bb = ptrtoint ptr %i.au to i64
  %i.bc = sub i64 %i.ah, %i.bb
  %i.bd = sdiv exact i64 %i.bc, 48                ; 2 uses
  %i.be = sub nsw i64 0, %i.bd
  %i.bf = getelementptr inbounds [48 x i8], ptr %.sroa.0.0.i, i64 %i.be
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bg, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !6988
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6988
  %i.bh = add nsw i64 %i.bd, 1
  %i.bi = icmp eq i64 %i.av, 0
  br i1 %i.bi, label %.loopexit.i, label %bb.j

bb.o:                                             ; preds = %.body.i.i.i
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6988
  unreachable

.body.i:                                          ; preds = %.body.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1n_EEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.b) #34
          to label %bb.q unwind label %bb.p, !noalias !6970

.loopexit.i:                                      ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB3_EENtNtBK_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  store i64 %i.aa, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !7014, !noalias !6994
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !6986, !noalias !6987, !noundef !8
  store i64 %i.bl, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !7014, !noalias !6994
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !6965
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6970
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEENtNtB1w_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.p:                                             ; preds = %.body.i
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6970
  unreachable

bb.q:                                             ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEENtNtB1w_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %.loopexit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.e, ptr %i.bn, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 16              ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x i64>, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7015)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !7015, !noalias !7018, !noundef !8 ; 6 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false), !noalias !7015
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7020
  %i.i = add i64 %i.g, 1                          ; 2 uses
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 8, 353) %i.i, i64 144) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.d, !prof !229

bb.d:                                             ; preds = %bb.c
  %i.l = extractvalue { i64, i1 } %i.j, 0         ; 3 uses
  %i.m = add i64 %i.g, 17                         ; 2 uses
  %i.n = add i64 %i.l, %i.m                       ; 5 uses
  %i.o = icmp ult i64 %i.n, %i.l
  %i.p = icmp ugt i64 %i.n, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.o, %i.p
  br i1 %or.cond.i.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !prof !6426

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %bb.d
  %i.q = icmp eq i64 %i.n, 0
  br i1 %i.q, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !7021
  %i.r = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !7021 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !7021
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.u = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.n), !noalias !7021
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i = phi { i64, i64 } [ %i.u, %bb.f ], [ %i.t, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 1
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %.sroa.0.0.i.i9.i.i.i = phi ptr [ %i.r, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i.i, i64 %i.l
  %2 = icmp ult i64 %i.g, 8
  %i.w = lshr i64 %i.i, 3
  %i.x = mul nuw nsw i64 %i.w, 7
  %.sroa.07.0.i.i.i = select i1 %2, i64 %i.g, i64 %i.x
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.g ], [ %i.m, %bb.h ]
  %.sroa.7.0.i = phi i64 [ %.sroa.12.0.ph.i.i, %bb.g ], [ %.sroa.07.0.i.i.i, %bb.h ]
  %.sroa.5.0.i = phi i64 [ %.sroa.7.0.ph.i.i, %bb.g ], [ %i.g, %bb.h ]
  %.sroa.0.0.i = phi ptr [ null, %bb.g ], [ %i.v, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0.i, ptr %i.b, align 8, !noalias !7020
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !7020
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !7020
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !7020
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7026)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7029)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7031)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7034)
  %i.y = load ptr, ptr %1, align 8, !alias.scope !7036, !noalias !7037, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.y, i64 %.pre-phi.i, i1 false), !noalias !7038
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !7036, !noalias !7037, !noundef !8 ; 3 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.ac = load <16 x i8>, ptr %i.y, align 16, !noalias !7039
  %i.ad = icmp sgt <16 x i8> %i.ac, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ah = ptrtoint ptr %i.y to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.k, %bb.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ai, %bb.i ], [ %i.ay, %bb.k ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEENCNvMse_B1D_B1A_15clone_from_impl0EECs2VbMhdeEr66_16delta_benchmarks(i64 %.sroa.012.028.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #34
          to label %.body.i unwind label %bb.m, !noalias !7044

bb.j:                                             ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.012.028.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.bg, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ]
  %.sroa.1015.027.i.i.i = phi i64 [ %i.aa, %.lr.ph.i.i.i ], [ %i.av, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ]
  %.sroa.013.026.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %.sroa.013.1.i.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.sroa.6.025.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.sroa.6.1.i.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.sroa.814.024.i.i.i = phi i16 [ %i.ae, %.lr.ph.i.i.i ], [ %i.as, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.not10.i.i.i.i = icmp eq i16 %.sroa.814.024.i.i.i, 0
  br i1 %.not10.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.aj = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %.sroa.6.025.i.i.i, %bb.j ] ; 2 uses
  %i.ak = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %.sroa.013.026.i.i.i, %bb.j ]
  %i.al = load <16 x i8>, ptr %i.aj, align 16, !noalias !7045
  %i.am = icmp sgt <16 x i8> %i.al, splat (i8 -1)
  %i.an = getelementptr inbounds i8, ptr %i.ak, i64 -2304 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.am to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.j
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.025.i.i.i, %bb.j ], [ %i.ao, %.lr.ph.i.i.i.i ]
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.026.i.i.i, %bb.j ], [ %i.an, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.814.024.i.i.i, %bb.j ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.ap = add i16 %.lcssa.i.i.i.i, -1
  %i.aq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.ar = zext nneg i16 %i.aq to i64
  %i.as = and i16 %i.ap, %.lcssa.i.i.i.i
  %i.at = sub nsw i64 0, %i.ar
  %i.au = getelementptr inbounds [144 x i8], ptr %.sroa.013.1.i.i.i, i64 %i.at ; 3 uses
  %i.av = add i64 %.sroa.1015.027.i.i.i, -1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7038
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 -144
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 16 captures(none) dereferenceable(144) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(144) %i.aw)
          to label %.noexc.i.i.i unwind label %bb.i, !noalias !7038

.noexc.i.i.i:                                     ; preds = %.loopexit.i.i.i
  %i.ax = getelementptr inbounds i8, ptr %i.au, i64 -112
  invoke fastcc void @_RNvXsV_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.ag, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ax)
          to label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.k, !noalias !7038

bb.k:                                             ; preds = %.noexc.i.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(144) %i.a) #34
          to label %.body.i.i.i unwind label %bb.l, !noalias !7038

bb.l:                                             ; preds = %bb.k
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !7038
  unreachable

_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %.noexc.i.i.i
  %i.ba = ptrtoint ptr %i.au to i64
  %i.bb = sub i64 %i.ah, %i.ba
  %i.bc = sdiv exact i64 %i.bb, 144               ; 2 uses
  %i.bd = sub nsw i64 0, %i.bc
  %i.be = getelementptr inbounds [144 x i8], ptr %.sroa.0.0.i, i64 %i.bd
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.bf, ptr noundef nonnull align 16 dereferenceable(144) %i.a, i64 144, i1 false), !noalias !7038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7038
  %i.bg = add nsw i64 %i.bc, 1
  %i.bh = icmp eq i64 %i.av, 0
  br i1 %i.bh, label %.loopexit.i, label %bb.j

bb.m:                                             ; preds = %.body.i.i.i
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !7038
  unreachable

.body.i:                                          ; preds = %.body.i.i.i
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.n, !noalias !7020

.loopexit.i:                                      ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  store i64 %i.aa, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !7050, !noalias !7044
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !7036, !noalias !7037, !noundef !8
  store i64 %i.bk, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !7050, !noalias !7044
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !7015
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7020
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.n:                                             ; preds = %.body.i
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !7020
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %.loopexit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.e, ptr %i.bm, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 10 uses
  %i.b = alloca [56 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 9 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load <2 x i64>, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7051)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !7051, !noalias !7054, !noundef !8 ; 6 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false), !noalias !7051
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7056
  %i.j = add i64 %i.h, 1                          ; 2 uses
  %i.k = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 8, 353) %i.j, i64 56) ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 1
  br i1 %i.l, label %bb.e, label %bb.d, !prof !229

bb.d:                                             ; preds = %bb.c
  %i.m = extractvalue { i64, i1 } %i.k, 0
  %i.n = add nuw i64 %i.m, 8
  %i.o = and i64 %i.n, -16                        ; 3 uses
  %i.p = add i64 %i.h, 17                         ; 2 uses
  %i.q = add i64 %i.o, %i.p                       ; 5 uses
  %i.r = icmp ult i64 %i.q, %i.o
  %i.s = icmp ugt i64 %i.q, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.r, %i.s
  br i1 %or.cond.i.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !prof !6426

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %bb.d
  %i.t = icmp eq i64 %i.q, 0
  br i1 %i.t, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !7057
  %i.u = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !7057 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.w = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !7057
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.x = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.q), !noalias !7057
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i = phi { i64, i64 } [ %i.x, %bb.f ], [ %i.w, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 1
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %.sroa.0.0.i.i9.i.i.i = phi ptr [ %i.u, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i.i, i64 %i.o
  %2 = icmp ult i64 %i.h, 8
  %i.z = lshr i64 %i.j, 3
  %i.aa = mul nuw nsw i64 %i.z, 7
  %.sroa.07.0.i.i.i = select i1 %2, i64 %i.h, i64 %i.aa
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.g ], [ %i.p, %bb.h ]
  %.sroa.7.0.i = phi i64 [ %.sroa.12.0.ph.i.i, %bb.g ], [ %.sroa.07.0.i.i.i, %bb.h ]
  %.sroa.5.0.i = phi i64 [ %.sroa.7.0.ph.i.i, %bb.g ], [ %i.h, %bb.h ]
  %.sroa.0.0.i = phi ptr [ null, %bb.g ], [ %i.y, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0.i, ptr %i.c, align 8, !noalias !7056
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !7056
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 %.sroa.7.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !7056
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !7056
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7062)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7065)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7067)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7070)
  %i.ab = load ptr, ptr %1, align 8, !alias.scope !7072, !noalias !7073, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.ab, i64 %.pre-phi.i, i1 false), !noalias !7074
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !7072, !noalias !7073, !noundef !8 ; 3 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.af = load <16 x i8>, ptr %i.ab, align 16, !noalias !7075
  %i.ag = icmp sgt <16 x i8> %i.af, splat (i8 -1)
  %i.ah = bitcast <16 x i1> %i.ag to i16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.am = ptrtoint ptr %i.ab to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.v, %bb.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.an, %bb.i ], [ %i.bk, %bb.v ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEEENCNvMse_B1D_B1A_15clone_from_impl0EECs2VbMhdeEr66_16delta_benchmarks(i64 %.sroa.012.030.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.c) #34
          to label %.body.i unwind label %bb.x, !noalias !7080

bb.j:                                             ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.012.030.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.bs, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ]
  %.sroa.1015.029.i.i.i = phi i64 [ %i.ad, %.lr.ph.i.i.i ], [ %i.ba, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ]
  %.sroa.013.028.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %.sroa.013.1.i.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.sroa.6.027.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %.sroa.6.1.i.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.sroa.814.026.i.i.i = phi i16 [ %i.ah, %.lr.ph.i.i.i ], [ %i.ax, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.not10.i.i.i.i = icmp eq i16 %.sroa.814.026.i.i.i, 0
  br i1 %.not10.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.ao = phi ptr [ %i.at, %.lr.ph.i.i.i.i ], [ %.sroa.6.027.i.i.i, %bb.j ] ; 2 uses
  %i.ap = phi ptr [ %i.as, %.lr.ph.i.i.i.i ], [ %.sroa.013.028.i.i.i, %bb.j ]
  %i.aq = load <16 x i8>, ptr %i.ao, align 16, !noalias !7081
  %i.ar = icmp sgt <16 x i8> %i.aq, splat (i8 -1)
  %i.as = getelementptr inbounds i8, ptr %i.ap, i64 -896 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.ar to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.j
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.027.i.i.i, %bb.j ], [ %i.at, %.lr.ph.i.i.i.i ]
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.028.i.i.i, %bb.j ], [ %i.as, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.814.026.i.i.i, %bb.j ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.au = add i16 %.lcssa.i.i.i.i, -1
  %i.av = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.aw = zext nneg i16 %i.av to i64
  %i.ax = and i16 %i.au, %.lcssa.i.i.i.i
  %i.ay = sub nsw i64 0, %i.aw
  %i.az = getelementptr inbounds [56 x i8], ptr %.sroa.013.1.i.i.i, i64 %i.ay ; 7 uses
  %i.ba = add i64 %.sroa.1015.029.i.i.i, -1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7074
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 -56
  call void @llvm.experimental.noalias.scope.decl(metadata !7086)
  call void @llvm.experimental.noalias.scope.decl(metadata !7089)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bb)
          to label %.noexc.i.i.i unwind label %bb.i, !noalias !7074

.noexc.i.i.i:                                     ; preds = %.loopexit.i.i.i
  %i.bc = getelementptr inbounds i8, ptr %i.az, i64 -32 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7091)
  call void @llvm.experimental.noalias.scope.decl(metadata !7094)
  %i.bd = load i8, ptr %i.bc, align 8, !range !1948, !alias.scope !7096, !noalias !7097, !noundef !8 ; 3 uses
  %i.be = add nsw i8 %i.bd, -6
  %i.bf = icmp samesign ugt i8 %i.bd, 5
  %narrow.i.i.i.i.i = select i1 %i.bf, i8 %i.be, i8 3
  switch i8 %narrow.i.i.i.i.i, label %bb.k [
    i8 0, label %bb.l
    i8 1, label %bb.m
    i8 2, label %bb.n
    i8 3, label %bb.o
  ]

bb.k:                                             ; preds = %.noexc.i.i.i
  unreachable

bb.l:                                             ; preds = %.noexc.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.bc, i64 32, i1 false), !alias.scope !7098, !noalias !7074
  br label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

bb.m:                                             ; preds = %.noexc.i.i.i
  %i.bg = getelementptr inbounds i8, ptr %i.az, i64 -24
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bg)
          to label %.noexc.i.i.i.i unwind label %bb.v, !noalias !7074

.noexc.i.i.i.i:                                   ; preds = %bb.m
  store i8 7, ptr %i.aj, align 8, !alias.scope !7099, !noalias !7100
  br label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

bb.n:                                             ; preds = %.noexc.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.bc, i64 32, i1 false), !alias.scope !7098, !noalias !7074
  br label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

bb.o:                                             ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7101
  call void @llvm.experimental.noalias.scope.decl(metadata !7102)
  switch i8 %i.bd, label %default.unreachable1.i.i.i.i.i.i [
    i8 0, label %bb.p
    i8 1, label %bb.q
    i8 2, label %bb.r
    i8 3, label %bb.s
    i8 4, label %bb.t
    i8 5, label %bb.u
  ]

default.unreachable1.i.i.i.i.i.i:                 ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  store i8 0, ptr %i.a, align 8, !alias.scope !7105, !noalias !7107
  br label %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.bc, i64 32, i1 false), !alias.scope !7108, !noalias !7097
  br label %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i.i

bb.r:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.bc, i64 32, i1 false), !alias.scope !7108, !noalias !7097
  br label %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i.i

bb.s:                                             ; preds = %bb.o
  %i.bh = getelementptr inbounds i8, ptr %i.az, i64 -24
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bh)
          to label %.noexc1.i.i.i.i unwind label %bb.v, !noalias !7109

.noexc1.i.i.i.i:                                  ; preds = %bb.s
  store i8 3, ptr %i.a, align 8, !alias.scope !7105, !noalias !7107
  br label %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i.i

bb.t:                                             ; preds = %bb.o
  %i.bi = getelementptr inbounds i8, ptr %i.az, i64 -24
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bi)
          to label %.noexc2.i.i.i.i unwind label %bb.v, !noalias !7109

.noexc2.i.i.i.i:                                  ; preds = %bb.t
  store i8 4, ptr %i.a, align 8, !alias.scope !7105, !noalias !7107
  br label %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i.i

bb.u:                                             ; preds = %bb.o
  %i.bj = getelementptr inbounds i8, ptr %i.az, i64 -24
  invoke void @_RNvXs0_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bj)
          to label %.noexc3.i.i.i.i unwind label %bb.v, !noalias !7109

.noexc3.i.i.i.i:                                  ; preds = %bb.u
  store i8 5, ptr %i.a, align 8, !alias.scope !7105, !noalias !7107
  br label %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i.i

_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i.i: ; preds = %.noexc3.i.i.i.i, %.noexc2.i.i.i.i, %.noexc1.i.i.i.i, %bb.r, %bb.q, %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !7100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7101
  br label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.m
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b) #34
          to label %.body.i.i.i unwind label %bb.w, !noalias !7074

bb.w:                                             ; preds = %bb.v
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !7074
  unreachable

_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i.i, %bb.n, %.noexc.i.i.i.i, %bb.l
  %i.bm = ptrtoint ptr %i.az to i64
  %i.bn = sub i64 %i.am, %i.bm
  %i.bo = sdiv exact i64 %i.bn, 56                ; 2 uses
  %i.bp = sub nsw i64 0, %i.bo
  %i.bq = getelementptr inbounds [56 x i8], ptr %.sroa.0.0.i, i64 %i.bp
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.br, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !noalias !7074
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7074
  %i.bs = add nsw i64 %i.bo, 1
  %i.bt = icmp eq i64 %i.ba, 0
  br i1 %i.bt, label %.loopexit.i, label %bb.j

bb.x:                                             ; preds = %.body.i.i.i
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !7074
  unreachable

.body.i:                                          ; preds = %.body.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.c) #34
          to label %bb.z unwind label %bb.y, !noalias !7056

.loopexit.i:                                      ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  store i64 %i.ad, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !7110, !noalias !7080
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !7072, !noalias !7073, !noundef !8
  store i64 %i.bw, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !7110, !noalias !7080
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !noalias !7051
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7056
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.y:                                             ; preds = %.body.i
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !7056
  unreachable

bb.z:                                             ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %.loopexit.i
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.f, ptr %i.by, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5.i.i.i.i.i = alloca [16 x i8], align 8  ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [136 x i8], align 8               ; 14 uses
  %i.f = alloca [32 x i8], align 8                ; 9 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load <2 x i64>, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7111)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !7111, !noalias !7114, !noundef !8 ; 6 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false), !noalias !7111
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7116
  %i.m = add i64 %i.k, 1                          ; 2 uses
  %i.n = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 8, 353) %i.m, i64 136) ; 2 uses
  %i.o = extractvalue { i64, i1 } %i.n, 1
  br i1 %i.o, label %bb.e, label %bb.d, !prof !229

bb.d:                                             ; preds = %bb.c
  %i.p = extractvalue { i64, i1 } %i.n, 0
  %i.q = add nuw i64 %i.p, 8
  %i.r = and i64 %i.q, -16                        ; 3 uses
  %i.s = add i64 %i.k, 17                         ; 2 uses
  %i.t = add i64 %i.r, %i.s                       ; 5 uses
  %i.u = icmp ult i64 %i.t, %i.r
  %i.v = icmp ugt i64 %i.t, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.u, %i.v
  br i1 %or.cond.i.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !prof !6426

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %bb.d
  %i.w = icmp eq i64 %i.t, 0
  br i1 %i.w, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !7117
  %i.x = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !7117 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.z = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !7117
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.aa = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.t), !noalias !7117
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i = phi { i64, i64 } [ %i.aa, %bb.f ], [ %i.z, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 1
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %.sroa.0.0.i.i9.i.i.i = phi ptr [ %i.x, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i.i, i64 %i.r
  %2 = icmp ult i64 %i.k, 8
  %i.ac = lshr i64 %i.m, 3
  %i.ad = mul nuw nsw i64 %i.ac, 7
  %.sroa.07.0.i.i.i = select i1 %2, i64 %i.k, i64 %i.ad
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.g ], [ %i.s, %bb.h ]
  %.sroa.7.0.i = phi i64 [ %.sroa.12.0.ph.i.i, %bb.g ], [ %.sroa.07.0.i.i.i, %bb.h ]
  %.sroa.5.0.i = phi i64 [ %.sroa.7.0.ph.i.i, %bb.g ], [ %i.k, %bb.h ]
  %.sroa.0.0.i = phi ptr [ null, %bb.g ], [ %i.ab, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0.i, ptr %i.f, align 8, !noalias !7116
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !7116
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 %.sroa.7.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !7116
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !7116
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7130)
  %i.ae = load ptr, ptr %1, align 8, !alias.scope !7132, !noalias !7133, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.ae, i64 %.pre-phi.i, i1 false), !noalias !7134
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !7132, !noalias !7133, !noundef !8 ; 3 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.ai = load <16 x i8>, ptr %i.ae, align 16, !noalias !7135
  %i.aj = icmp sgt <16 x i8> %i.ai, splat (i8 -1)
  %i.ak = bitcast <16 x i1> %i.aj to i16
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.5.0..sroa_idx2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 129
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.au = ptrtoint ptr %i.ae to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.body.i.i.i.i, %bb.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.av, %bb.i ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEEENCNvMse_B1D_B1A_15clone_from_impl0EECs2VbMhdeEr66_16delta_benchmarks(i64 %.sroa.012.032.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.f) #34
          to label %.body.i unwind label %bb.z, !noalias !7140

bb.j:                                             ; preds = %bb.y, %.lr.ph.i.i.i
  %.sroa.012.032.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.cl, %bb.y ]
  %.sroa.1015.031.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i ], [ %i.bi, %bb.y ]
  %.sroa.013.030.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %.sroa.013.1.i.i.i, %bb.y ] ; 2 uses
  %.sroa.6.029.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.sroa.6.1.i.i.i, %bb.y ] ; 2 uses
  %.sroa.814.028.i.i.i = phi i16 [ %i.ak, %.lr.ph.i.i.i ], [ %i.bf, %bb.y ] ; 2 uses
  %.not10.i.i.i.i = icmp eq i16 %.sroa.814.028.i.i.i, 0
  br i1 %.not10.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.aw = phi ptr [ %i.bb, %.lr.ph.i.i.i.i ], [ %.sroa.6.029.i.i.i, %bb.j ] ; 2 uses
  %i.ax = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %.sroa.013.030.i.i.i, %bb.j ]
  %i.ay = load <16 x i8>, ptr %i.aw, align 16, !noalias !7141
  %i.az = icmp sgt <16 x i8> %i.ay, splat (i8 -1)
  %i.ba = getelementptr inbounds i8, ptr %i.ax, i64 -2176 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.az to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.j
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.029.i.i.i, %bb.j ], [ %i.bb, %.lr.ph.i.i.i.i ]
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.030.i.i.i, %bb.j ], [ %i.ba, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.814.028.i.i.i, %bb.j ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.bc = add i16 %.lcssa.i.i.i.i, -1
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.be = zext nneg i16 %i.bd to i64
  %i.bf = and i16 %i.bc, %.lcssa.i.i.i.i
  %i.bg = sub nsw i64 0, %i.be
  %i.bh = getelementptr inbounds [136 x i8], ptr %.sroa.013.1.i.i.i, i64 %i.bg ; 10 uses
  %i.bi = add i64 %.sroa.1015.031.i.i.i, -1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7134
  %i.bj = getelementptr inbounds i8, ptr %i.bh, i64 -136
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7149)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(136) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.bj)
          to label %.noexc.i.i.i unwind label %bb.i, !noalias !7134

.noexc.i.i.i:                                     ; preds = %.loopexit.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7154)
  %i.bk = getelementptr inbounds i8, ptr %i.bh, i64 -8
  %i.bl = load i8, ptr %i.bk, align 8, !range !822, !alias.scope !7156, !noalias !7157, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7158
  %i.bm = getelementptr inbounds i8, ptr %i.bh, i64 -80 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !range !311, !alias.scope !7156, !noalias !7157, !noundef !8
  %.not.i.i.i.i.i = icmp eq i64 %i.bn, -9223372036854775808
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.noexc.i.i.i
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bm)
          to label %.noexc.i.i.i.i unwind label %bb.w, !noalias !7159

bb.l:                                             ; preds = %.noexc.i.i.i
  store i64 -9223372036854775808, ptr %i.d, align 8, !noalias !7158
  br label %.noexc.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.l, %bb.k
  %i.bo = getelementptr inbounds i8, ptr %i.bh, i64 -7
  %i.bp = load i8, ptr %i.bo, align 1, !range !822, !alias.scope !7156, !noalias !7157, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7158
  %i.bq = getelementptr inbounds i8, ptr %i.bh, i64 -56 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !range !311, !alias.scope !7156, !noalias !7157, !noundef !8
  %.not4.i.i.i.i.i = icmp eq i64 %i.br, -9223372036854775808
  br i1 %.not4.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.noexc.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7158
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bq)
          to label %bb.r unwind label %bb.q, !noalias !7157

bb.n:                                             ; preds = %.noexc.i.i.i.i
  store i64 -9223372036854775808, ptr %i.c, align 8, !noalias !7158
  br label %bb.o

bb.o:                                             ; preds = %bb.r, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i)
  %i.bs = getelementptr inbounds i8, ptr %i.bh, i64 -32 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !range !311, !alias.scope !7156, !noalias !7157, !noundef !8
  %.not5.i.i.i.i.i = icmp eq i64 %i.bt, -9223372036854775808
  br i1 %.not5.i.i.i.i.i, label %bb.y, label %bb.s

bb.p:                                             ; preds = %bb.t, %bb.q
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.bv, %bb.t ], [ %i.bu, %bb.q ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.d) #34
          to label %.body.i.i.i.i unwind label %bb.v, !noalias !7157

bb.q:                                             ; preds = %bb.m
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.r:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !7158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7158
  br label %bb.o

bb.s:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7158
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bs)
          to label %bb.u unwind label %bb.t, !noalias !7157

bb.t:                                             ; preds = %bb.s
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.c) #34
          to label %bb.p unwind label %bb.v, !noalias !7157

bb.u:                                             ; preds = %bb.s
  %.sroa.0.0.copyload1.i.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !7158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i.i.i.i, i64 16, i1 false), !noalias !7158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7158
  br label %bb.y

bb.v:                                             ; preds = %bb.t, %bb.p
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !7157
  unreachable

bb.w:                                             ; preds = %bb.k
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.w, %bb.p
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.bx, %bb.w ], [ %.pn.i.i.i.i.i, %bb.p ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.e) #34
          to label %.body.i.i.i unwind label %bb.x, !noalias !7134

bb.x:                                             ; preds = %.body.i.i.i.i
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !7134
  unreachable

bb.y:                                             ; preds = %bb.u, %bb.o
  %.sroa.0.0.i.i.i.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i.i.i.i, %bb.u ], [ -9223372036854775808, %bb.o ]
  %i.bz = getelementptr inbounds i8, ptr %i.bh, i64 -112
  %i.ca = load i64, ptr %i.bz, align 8, !range !181, !alias.scope !7156, !noalias !7157, !noundef !8
  %i.cb = getelementptr inbounds i8, ptr %i.bh, i64 -104
  %i.cc = load double, ptr %i.cb, align 8, !alias.scope !7156, !noalias !7157
  %i.cd = getelementptr inbounds i8, ptr %i.bh, i64 -96
  store i8 %i.bl, ptr %i.an, align 8, !alias.scope !7160, !noalias !7161
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !7161
  store i8 %i.bp, ptr %i.ap, align 1, !alias.scope !7160, !noalias !7161
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !7161
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %i.ar, align 8, !alias.scope !7160, !noalias !7161
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i.i, i64 16, i1 false), !noalias !7161
  store i64 %i.ca, ptr %i.am, align 8, !alias.scope !7160, !noalias !7161
  store double %i.cc, ptr %i.as, align 8, !alias.scope !7160, !noalias !7161
  %i.ce = load <2 x i64>, ptr %i.cd, align 8, !alias.scope !7156, !noalias !7157
  store <2 x i64> %i.ce, ptr %i.at, align 8, !alias.scope !7160, !noalias !7161
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7158
  %i.cf = ptrtoint ptr %i.bh to i64
  %i.cg = sub i64 %i.au, %i.cf
  %i.ch = sdiv exact i64 %i.cg, 136               ; 2 uses
  %i.ci = sub nsw i64 0, %i.ch
  %i.cj = getelementptr inbounds [136 x i8], ptr %.sroa.0.0.i, i64 %i.ci
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 -136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.ck, ptr noundef nonnull align 8 dereferenceable(136) %i.e, i64 136, i1 false), !noalias !7134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7134
  %i.cl = add nsw i64 %i.ch, 1
  %i.cm = icmp eq i64 %i.bi, 0
  br i1 %i.cm, label %.loopexit.i, label %bb.j

bb.z:                                             ; preds = %.body.i.i.i
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !7134
  unreachable

.body.i:                                          ; preds = %.body.i.i.i
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.aa, !noalias !7116

.loopexit.i:                                      ; preds = %bb.y, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  store i64 %i.ag, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !7162, !noalias !7140
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cp = load i64, ptr %i.co, align 8, !alias.scope !7132, !noalias !7133, !noundef !8
  store i64 %i.cp, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !7162, !noalias !7140
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !7111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7116
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.aa:                                            ; preds = %.body.i
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !7116
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %.loopexit.i
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.i, ptr %i.cr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x i64>, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7163)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !7163, !noalias !7166, !noundef !8 ; 6 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false), !noalias !7163
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7168
  %i.i = add i64 %i.g, 1                          ; 2 uses
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 8, 353) %i.i, i64 48) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.d, !prof !229

bb.d:                                             ; preds = %bb.c
  %i.l = extractvalue { i64, i1 } %i.j, 0         ; 3 uses
  %i.m = add i64 %i.g, 17                         ; 2 uses
  %i.n = add i64 %i.l, %i.m                       ; 5 uses
  %i.o = icmp ult i64 %i.n, %i.l
  %i.p = icmp ugt i64 %i.n, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.o, %i.p
  br i1 %or.cond.i.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !prof !6426

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %bb.d
  %i.q = icmp eq i64 %i.n, 0
  br i1 %i.q, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !7169
  %i.r = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !7169 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !7169
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.u = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.n), !noalias !7169
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i = phi { i64, i64 } [ %i.u, %bb.f ], [ %i.t, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 1
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %.sroa.0.0.i.i9.i.i.i = phi ptr [ %i.r, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i.i, i64 %i.l
  %2 = icmp ult i64 %i.g, 8
  %i.w = lshr i64 %i.i, 3
  %i.x = mul nuw nsw i64 %i.w, 7
  %.sroa.07.0.i.i.i = select i1 %2, i64 %i.g, i64 %i.x
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.g ], [ %i.m, %bb.h ]
  %.sroa.7.0.i = phi i64 [ %.sroa.12.0.ph.i.i, %bb.g ], [ %.sroa.07.0.i.i.i, %bb.h ]
  %.sroa.5.0.i = phi i64 [ %.sroa.7.0.ph.i.i, %bb.g ], [ %i.g, %bb.h ]
  %.sroa.0.0.i = phi ptr [ null, %bb.g ], [ %i.v, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0.i, ptr %i.b, align 8, !noalias !7168
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !7168
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !7168
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !7168
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7182)
  %i.y = load ptr, ptr %1, align 8, !alias.scope !7184, !noalias !7185, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.y, i64 %.pre-phi.i, i1 false), !noalias !7186
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !7184, !noalias !7185, !noundef !8 ; 3 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.ac = load <16 x i8>, ptr %i.y, align 16, !noalias !7187
  %i.ad = icmp sgt <16 x i8> %i.ac, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ah = ptrtoint ptr %i.y to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.k, %bb.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ai, %bb.i ], [ %i.ay, %bb.k ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEEENCNvMse_B1D_B1A_15clone_from_impl0EECs2VbMhdeEr66_16delta_benchmarks(i64 %.sroa.012.028.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #34
          to label %.body.i unwind label %bb.m, !noalias !7192

bb.j:                                             ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.012.028.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.bg, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ]
  %.sroa.1015.027.i.i.i = phi i64 [ %i.aa, %.lr.ph.i.i.i ], [ %i.av, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ]
  %.sroa.013.026.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %.sroa.013.1.i.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.sroa.6.025.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.sroa.6.1.i.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.sroa.814.024.i.i.i = phi i16 [ %i.ae, %.lr.ph.i.i.i ], [ %i.as, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.not10.i.i.i.i = icmp eq i16 %.sroa.814.024.i.i.i, 0
  br i1 %.not10.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.aj = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %.sroa.6.025.i.i.i, %bb.j ] ; 2 uses
  %i.ak = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %.sroa.013.026.i.i.i, %bb.j ]
  %i.al = load <16 x i8>, ptr %i.aj, align 16, !noalias !7193
  %i.am = icmp sgt <16 x i8> %i.al, splat (i8 -1)
  %i.an = getelementptr inbounds i8, ptr %i.ak, i64 -768 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.am to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.j
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.025.i.i.i, %bb.j ], [ %i.ao, %.lr.ph.i.i.i.i ]
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.026.i.i.i, %bb.j ], [ %i.an, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.814.024.i.i.i, %bb.j ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.ap = add i16 %.lcssa.i.i.i.i, -1
  %i.aq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.ar = zext nneg i16 %i.aq to i64
  %i.as = and i16 %i.ap, %.lcssa.i.i.i.i
  %i.at = sub nsw i64 0, %i.ar
  %i.au = getelementptr inbounds [48 x i8], ptr %.sroa.013.1.i.i.i, i64 %i.at ; 3 uses
  %i.av = add i64 %.sroa.1015.027.i.i.i, -1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7186
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 -48
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aw)
          to label %.noexc.i.i.i unwind label %bb.i, !noalias !7186

.noexc.i.i.i:                                     ; preds = %.loopexit.i.i.i
  %i.ax = getelementptr inbounds i8, ptr %i.au, i64 -24
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ax)
          to label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.k, !noalias !7186

bb.k:                                             ; preds = %.noexc.i.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) #34
          to label %.body.i.i.i unwind label %bb.l, !noalias !7186

bb.l:                                             ; preds = %bb.k
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !7186
  unreachable

_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %.noexc.i.i.i
  %i.ba = ptrtoint ptr %i.au to i64
  %i.bb = sub i64 %i.ah, %i.ba
  %i.bc = sdiv exact i64 %i.bb, 48                ; 2 uses
  %i.bd = sub nsw i64 0, %i.bc
  %i.be = getelementptr inbounds [48 x i8], ptr %.sroa.0.0.i, i64 %i.bd
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bf, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !7186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7186
  %i.bg = add nsw i64 %i.bc, 1
  %i.bh = icmp eq i64 %i.av, 0
  br i1 %i.bh, label %.loopexit.i, label %bb.j

bb.m:                                             ; preds = %.body.i.i.i
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !7186
  unreachable

.body.i:                                          ; preds = %.body.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.b) #34
          to label %bb.o unwind label %bb.n, !noalias !7168

.loopexit.i:                                      ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  store i64 %i.aa, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !7198, !noalias !7192
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !7184, !noalias !7185, !noundef !8
  store i64 %i.bk, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !7198, !noalias !7192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !7163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7168
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.n:                                             ; preds = %.body.i
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !7168
  unreachable

bb.o:                                             ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %.loopexit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.e, ptr %i.bm, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.i.i.i.i.i = alloca [16 x i8], align 8  ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [72 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 9 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load <2 x i64>, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7199)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !7199, !noalias !7202, !noundef !8 ; 6 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false), !noalias !7199
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7204
  %i.k = add i64 %i.i, 1                          ; 2 uses
  %i.l = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 8, 353) %i.k, i64 72) ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1
  br i1 %i.m, label %bb.e, label %bb.d, !prof !229

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i1 } %i.l, 0
  %i.o = add nuw i64 %i.n, 8
  %i.p = and i64 %i.o, -16                        ; 3 uses
  %i.q = add i64 %i.i, 17                         ; 2 uses
  %i.r = add i64 %i.p, %i.q                       ; 5 uses
  %i.s = icmp ult i64 %i.r, %i.p
  %i.t = icmp ugt i64 %i.r, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.s, %i.t
  br i1 %or.cond.i.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !prof !6426

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %bb.d
  %i.u = icmp eq i64 %i.r, 0
  br i1 %i.u, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !7205
  %i.v = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !7205 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.x = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !7205
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.y = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.r), !noalias !7205
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i = phi { i64, i64 } [ %i.y, %bb.f ], [ %i.x, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 1
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %.sroa.0.0.i.i9.i.i.i = phi ptr [ %i.v, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i.i, i64 %i.p
  %2 = icmp ult i64 %i.i, 8
  %i.aa = lshr i64 %i.k, 3
  %i.ab = mul nuw nsw i64 %i.aa, 7
  %.sroa.07.0.i.i.i = select i1 %2, i64 %i.i, i64 %i.ab
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.g ], [ %i.q, %bb.h ]
  %.sroa.7.0.i = phi i64 [ %.sroa.12.0.ph.i.i, %bb.g ], [ %.sroa.07.0.i.i.i, %bb.h ]
  %.sroa.5.0.i = phi i64 [ %.sroa.7.0.ph.i.i, %bb.g ], [ %i.i, %bb.h ]
  %.sroa.0.0.i = phi ptr [ null, %bb.g ], [ %i.z, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0.i, ptr %i.d, align 8, !noalias !7204
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !7204
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 %.sroa.7.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !7204
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !7204
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7218)
  %i.ac = load ptr, ptr %1, align 8, !alias.scope !7220, !noalias !7221, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.ac, i64 %.pre-phi.i, i1 false), !noalias !7222
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !7220, !noalias !7221, !noundef !8 ; 3 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.ag = load <16 x i8>, ptr %i.ac, align 16, !noalias !7223
  %i.ah = icmp sgt <16 x i8> %i.ag, splat (i8 -1)
  %i.ai = bitcast <16 x i1> %i.ah to i16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.5.0..sroa_idx2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.am = ptrtoint ptr %i.ac to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.body.i.i.i.i, %bb.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.an, %bb.i ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEEENCNvMse_B1D_B1A_15clone_from_impl0EECs2VbMhdeEr66_16delta_benchmarks(i64 %.sroa.012.030.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.d) #34
          to label %.body.i unwind label %bb.r, !noalias !7228

bb.j:                                             ; preds = %bb.q, %.lr.ph.i.i.i
  %.sroa.012.030.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.bp, %bb.q ]
  %.sroa.1015.029.i.i.i = phi i64 [ %i.ae, %.lr.ph.i.i.i ], [ %i.ba, %bb.q ]
  %.sroa.013.028.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %.sroa.013.1.i.i.i, %bb.q ] ; 2 uses
  %.sroa.6.027.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.sroa.6.1.i.i.i, %bb.q ] ; 2 uses
  %.sroa.814.026.i.i.i = phi i16 [ %i.ai, %.lr.ph.i.i.i ], [ %i.ax, %bb.q ] ; 2 uses
  %.not10.i.i.i.i = icmp eq i16 %.sroa.814.026.i.i.i, 0
  br i1 %.not10.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.ao = phi ptr [ %i.at, %.lr.ph.i.i.i.i ], [ %.sroa.6.027.i.i.i, %bb.j ] ; 2 uses
  %i.ap = phi ptr [ %i.as, %.lr.ph.i.i.i.i ], [ %.sroa.013.028.i.i.i, %bb.j ]
  %i.aq = load <16 x i8>, ptr %i.ao, align 16, !noalias !7229
  %i.ar = icmp sgt <16 x i8> %i.aq, splat (i8 -1)
  %i.as = getelementptr inbounds i8, ptr %i.ap, i64 -1152 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.ar to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.j
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.027.i.i.i, %bb.j ], [ %i.at, %.lr.ph.i.i.i.i ]
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.028.i.i.i, %bb.j ], [ %i.as, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.814.026.i.i.i, %bb.j ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.au = add i16 %.lcssa.i.i.i.i, -1
  %i.av = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.aw = zext nneg i16 %i.av to i64
  %i.ax = and i16 %i.au, %.lcssa.i.i.i.i
  %i.ay = sub nsw i64 0, %i.aw
  %i.az = getelementptr inbounds [72 x i8], ptr %.sroa.013.1.i.i.i, i64 %i.ay ; 4 uses
  %i.ba = add i64 %.sroa.1015.029.i.i.i, -1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7222
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 -72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7237)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bb)
          to label %.noexc.i.i.i unwind label %bb.i, !noalias !7222

.noexc.i.i.i:                                     ; preds = %.loopexit.i.i.i
  %i.bc = getelementptr inbounds i8, ptr %i.az, i64 -48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7242)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7244
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bc)
          to label %.noexc.i.i.i.i unwind label %bb.o, !noalias !7245

.noexc.i.i.i.i:                                   ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i)
  %i.bd = getelementptr inbounds i8, ptr %i.az, i64 -24 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !range !311, !alias.scope !7246, !noalias !7247, !noundef !8
  %.not.i.i.i.i.i = icmp eq i64 %i.be, -9223372036854775808
  br i1 %.not.i.i.i.i.i, label %bb.q, label %bb.k

bb.k:                                             ; preds = %.noexc.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7244
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bd)
          to label %bb.m unwind label %bb.l, !noalias !7247

bb.l:                                             ; preds = %bb.k
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #34
          to label %.body.i.i.i.i unwind label %bb.n, !noalias !7247

bb.m:                                             ; preds = %bb.k
  %.sroa.0.0.copyload1.i.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !7244
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i.i.i.i, i64 16, i1 false), !noalias !7244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7244
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !7247
  unreachable

bb.o:                                             ; preds = %.noexc.i.i.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.o, %bb.l
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.bh, %bb.o ], [ %i.bf, %bb.l ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c) #34
          to label %.body.i.i.i unwind label %bb.p, !noalias !7222

bb.p:                                             ; preds = %.body.i.i.i.i
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !7222
  unreachable

bb.q:                                             ; preds = %bb.m, %.noexc.i.i.i.i
  %.sroa.0.0.i.i.i.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i.i.i.i, %bb.m ], [ -9223372036854775808, %.noexc.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !7248
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %i.al, align 8, !alias.scope !7249, !noalias !7248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i.i, i64 16, i1 false), !noalias !7248
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7244
  %i.bj = ptrtoint ptr %i.az to i64
  %i.bk = sub i64 %i.am, %i.bj
  %i.bl = sdiv exact i64 %i.bk, 72                ; 2 uses
  %i.bm = sub nsw i64 0, %i.bl
  %i.bn = getelementptr inbounds [72 x i8], ptr %.sroa.0.0.i, i64 %i.bm
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bo, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !noalias !7222
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7222
  %i.bp = add nsw i64 %i.bl, 1
  %i.bq = icmp eq i64 %i.ba, 0
  br i1 %i.bq, label %.loopexit.i, label %bb.j

bb.r:                                             ; preds = %.body.i.i.i
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !7222
  unreachable

.body.i:                                          ; preds = %.body.i.i.i
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.s, !noalias !7204

.loopexit.i:                                      ; preds = %bb.q, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  store i64 %i.ae, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !7250, !noalias !7228
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !7220, !noalias !7221, !noundef !8
  store i64 %i.bt, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !7250, !noalias !7228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !7199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7204
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.s:                                             ; preds = %.body.i
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !7204
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %.loopexit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.g, ptr %i.bv, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x i64>, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7251)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !7251, !noalias !7254, !noundef !8 ; 6 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false), !noalias !7251
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7256
  %i.i = add i64 %i.g, 1                          ; 2 uses
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 8, 353) %i.i, i64 112) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.d, !prof !229

bb.d:                                             ; preds = %bb.c
  %i.l = extractvalue { i64, i1 } %i.j, 0         ; 3 uses
  %i.m = add i64 %i.g, 17                         ; 2 uses
  %i.n = add i64 %i.l, %i.m                       ; 5 uses
  %i.o = icmp ult i64 %i.n, %i.l
  %i.p = icmp ugt i64 %i.n, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.o, %i.p
  br i1 %or.cond.i.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !prof !6426

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %bb.d
  %i.q = icmp eq i64 %i.n, 0
  br i1 %i.q, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !7257
  %i.r = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !7257 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !7257
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.u = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.n), !noalias !7257
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i = phi { i64, i64 } [ %i.u, %bb.f ], [ %i.t, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 1
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %.sroa.0.0.i.i9.i.i.i = phi ptr [ %i.r, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i.i, i64 %i.l
  %2 = icmp ult i64 %i.g, 8
  %i.w = lshr i64 %i.i, 3
  %i.x = mul nuw nsw i64 %i.w, 7
  %.sroa.07.0.i.i.i = select i1 %2, i64 %i.g, i64 %i.x
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.g ], [ %i.m, %bb.h ]
  %.sroa.7.0.i = phi i64 [ %.sroa.12.0.ph.i.i, %bb.g ], [ %.sroa.07.0.i.i.i, %bb.h ]
  %.sroa.5.0.i = phi i64 [ %.sroa.7.0.ph.i.i, %bb.g ], [ %i.g, %bb.h ]
  %.sroa.0.0.i = phi ptr [ null, %bb.g ], [ %i.v, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0.i, ptr %i.b, align 8, !noalias !7256
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !7256
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !7256
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !7256
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7262)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7270)
  %i.y = load ptr, ptr %1, align 8, !alias.scope !7272, !noalias !7273, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.y, i64 %.pre-phi.i, i1 false), !noalias !7274
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !7272, !noalias !7273, !noundef !8 ; 3 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.ac = load <16 x i8>, ptr %i.y, align 16, !noalias !7275
  %i.ad = icmp sgt <16 x i8> %i.ac, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ag = ptrtoint ptr %i.y to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEEENCNvMse_B1D_B1A_15clone_from_impl0EECs2VbMhdeEr66_16delta_benchmarks(i64 %.sroa.012.026.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #34
          to label %.body.i unwind label %bb.k, !noalias !7280

bb.j:                                             ; preds = %_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.012.026.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.bc, %_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ]
  %.sroa.1015.025.i.i.i = phi i64 [ %i.aa, %.lr.ph.i.i.i ], [ %i.at, %_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ]
  %.sroa.013.024.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %.sroa.013.1.i.i.i, %_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.sroa.6.023.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.sroa.6.1.i.i.i, %_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.sroa.814.022.i.i.i = phi i16 [ %i.ae, %.lr.ph.i.i.i ], [ %i.av, %_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.not10.i.i.i.i = icmp eq i16 %.sroa.814.022.i.i.i, 0
  br i1 %.not10.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.ai = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %.sroa.6.023.i.i.i, %bb.j ] ; 2 uses
  %i.aj = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %.sroa.013.024.i.i.i, %bb.j ]
  %i.ak = load <16 x i8>, ptr %i.ai, align 16, !noalias !7281
  %i.al = icmp sgt <16 x i8> %i.ak, splat (i8 -1)
  %i.am = getelementptr inbounds i8, ptr %i.aj, i64 -1792 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.al to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.j
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.023.i.i.i, %bb.j ], [ %i.an, %.lr.ph.i.i.i.i ]
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.024.i.i.i, %bb.j ], [ %i.am, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.814.022.i.i.i, %bb.j ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.ao = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = sub nsw i64 0, %i.ap
  %i.ar = getelementptr inbounds [112 x i8], ptr %.sroa.013.1.i.i.i, i64 %i.aq ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7274
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -112
  invoke fastcc void @_RNvXsV_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull align 16 captures(none) dereferenceable(112) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.as) #40
          to label %_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.i, !noalias !7274

_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %.loopexit.i.i.i
  %i.at = add i64 %.sroa.1015.025.i.i.i, -1       ; 2 uses
  %i.au = add i16 %.lcssa.i.i.i.i, -1
  %i.av = and i16 %i.au, %.lcssa.i.i.i.i
  %i.aw = ptrtoint ptr %i.ar to i64
  %i.ax = sub i64 %i.ag, %i.aw
  %i.ay = sdiv exact i64 %i.ax, 112               ; 2 uses
  %i.az = sub nsw i64 0, %i.ay
  %i.ba = getelementptr inbounds [112 x i8], ptr %.sroa.0.0.i, i64 %i.az
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.bb, ptr noundef nonnull align 16 dereferenceable(112) %i.a, i64 112, i1 false), !noalias !7274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7274
  %i.bc = add nsw i64 %i.ay, 1
  %i.bd = icmp eq i64 %i.at, 0
  br i1 %i.bd, label %.loopexit.i, label %bb.j

bb.k:                                             ; preds = %bb.i
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !7274
  unreachable

.body.i:                                          ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.b) #34
          to label %bb.m unwind label %bb.l, !noalias !7256

.loopexit.i:                                      ; preds = %_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  store i64 %i.aa, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !7286, !noalias !7280
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !7272, !noalias !7273, !noundef !8
  store i64 %i.bg, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !7286, !noalias !7280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !7251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7256
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.l:                                             ; preds = %.body.i
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !7256
  unreachable

bb.m:                                             ; preds = %.body.i
  resume { ptr, i32 } %i.ah

_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %.loopexit.i
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.e, ptr %i.bi, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load <2 x i64>, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7287)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !7287, !noalias !7290, !noundef !8 ; 5 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %i.d, 1                          ; 2 uses
  %i.g = icmp ugt i64 %i.f, 1152921504606846975
  br i1 %i.g, label %bb.d, label %bb.c, !prof !229

bb.c:                                             ; preds = %bb.b
  %i.h = shl nuw i64 %i.f, 4                      ; 3 uses
  %i.i = add nsw i64 %i.d, 17                     ; 2 uses
  %i.j = add i64 %i.h, %i.i                       ; 5 uses
  %i.k = icmp ult i64 %i.j, %i.h
  %i.l = icmp ugt i64 %i.j, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.k, %i.l
  br i1 %or.cond.i.i.i, label %bb.d, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !prof !6426

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %bb.c
  %i.m = icmp eq i64 %i.j, 0
  br i1 %i.m, label %bb.g, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !7292
  %i.n = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !7292 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.e, label %bb.g

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !7292
  br label %bb.f

bb.e:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.q = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.j), !noalias !7292
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.i.i = phi { i64, i64 } [ %i.q, %bb.e ], [ %i.p, %bb.d ]
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %bb.h

bb.g:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %.sroa.0.0.i.i9.i.i.i = phi ptr [ %i.n, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i.i, i64 %i.h
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre-phi.i = phi i64 [ %i.i, %bb.g ], [ %.pre.i, %bb.f ]
  %.sroa.09.0.i = phi ptr [ %i.r, %bb.g ], [ null, %bb.f ] ; 4 uses
  %.sroa.5.0.i = phi i64 [ %i.d, %bb.g ], [ %.sroa.7.0.ph.i.i, %bb.f ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7297)
  %i.s = load ptr, ptr %1, align 8, !alias.scope !7300, !noalias !7301, !nonnull !8, !noundef !8 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.09.0.i) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.09.0.i, ptr nonnull align 1 %i.s, i64 %.pre-phi.i, i1 false), !noalias !7303
  %i.t = xor i64 %i.d, -1
  %i.u = getelementptr [16 x i8], ptr %i.s, i64 %i.t ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %i.v = xor i64 %.sroa.5.0.i, -1
  %i.w = getelementptr [16 x i8], ptr %.sroa.09.0.i, i64 %i.v ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  %i.x = shl i64 %.sroa.5.0.i, 4
  %i.y = add i64 %i.x, 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 8 %i.u, i64 %i.y, i1 false), !noalias !7303
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load <2 x i64>, ptr %i.z, align 8, !alias.scope !7300, !noalias !7301
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %bb.h
end_hunk_0

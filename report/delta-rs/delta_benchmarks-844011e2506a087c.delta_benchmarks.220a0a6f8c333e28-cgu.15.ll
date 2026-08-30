Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/delta_benchmarks-844011e2506a087c.delta_benchmarks.220a0a6f8c333e28-cgu.15?download=true
inline.NumInlined: 3868
inline.NumDeleted: 1539
begin_hunk_0_@_RNvMs_NtNtCskQDtHcQtBkN_5tokio4task8join_setINtB4_7JoinSetTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE6insertCs2VbMhdeEr66_16delta_benchmarks:bb.a
          cleanup
  br label %.thread12

bb.c:                                             ; preds = %bb.b
  %i.f = extractvalue { ptr, ptr } %i.d, 0
  %i.g = extractvalue { ptr, ptr } %i.d, 1
  store ptr %i.f, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.g, ptr %i.h, align 8
  invoke void @_RINvMs3_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB6_20EntryInOneOfTheListsINtNtNtNtBa_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEE22with_value_and_contextNCNvMs_NtNtBa_4task8join_setINtB5F_7JoinSetB20_E6insert0uECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6274)
  call void @llvm.experimental.noalias.scope.decl(metadata !6277)
  call void @llvm.experimental.noalias.scope.decl(metadata !6280)
  %i.j = load ptr, ptr %i.a, align 8, !alias.scope !6283, !nonnull !8, !noundef !8
  %i.k = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !6283
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.e, label %.thread12

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB7_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #35
          to label %.thread12 unwind label %bb.h

bb.f:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !6284)
  call void @llvm.experimental.noalias.scope.decl(metadata !6287)
  call void @llvm.experimental.noalias.scope.decl(metadata !6290)
  %i.m = load ptr, ptr %i.a, align 8, !alias.scope !6293, !nonnull !8, !noundef !8
  %i.n = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !6293
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
define hidden void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBU_EE3newCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %.val3 = load <16 x i8>, ptr %1, align 16
  %i.b = icmp sgt <16 x i8> %.val3, splat (i8 -1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.b, ptr %i.d, align 8
  store ptr %2, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.f, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBY_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEE3newCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %.val3 = load <16 x i8>, ptr %1, align 16
  %i.b = icmp sgt <16 x i8> %.val3, splat (i8 -1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.b, ptr %i.d, align 8
  store ptr %2, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.f, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE3newCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %.val3 = load <16 x i8>, ptr %1, align 16
  %i.b = icmp sgt <16 x i8> %.val3, splat (i8 -1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.b, ptr %i.d, align 8
  store ptr %2, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.f, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEE3newCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %.val3 = load <16 x i8>, ptr %1, align 16
  %i.b = icmp sgt <16 x i8> %.val3, splat (i8 -1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.b, ptr %i.d, align 8
  store ptr %2, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.f, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjEE3newCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %.val3 = load <16 x i8>, ptr %1, align 16
  %i.b = icmp sgt <16 x i8> %.val3, splat (i8 -1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.b, ptr %i.d, align 8
  store ptr %2, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.f, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTReBU_EE3newCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %.val3 = load <16 x i8>, ptr %1, align 16
  %i.b = icmp sgt <16 x i8> %.val3, splat (i8 -1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.b, ptr %i.d, align 8
  store ptr %2, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.f, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs2HSpDNxY7OE_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 16              ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load i64, ptr %i.d, align 8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6294)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !6294, !noalias !6297, !noundef !8 ; 6 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false), !noalias !6294
  br label %_RNvXsb_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6299
  %i.h = add i64 %i.f, 1                          ; 2 uses
  %i.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.h, i64 144) ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1
  br i1 %i.j, label %bb.e, label %bb.d, !prof !229

bb.d:                                             ; preds = %bb.c
  %i.k = extractvalue { i64, i1 } %i.i, 0         ; 3 uses
  %i.l = add i64 %i.f, 17                         ; 2 uses
  %i.m = add i64 %i.k, %i.l                       ; 4 uses
  %i.n = icmp ult i64 %i.m, %i.k
  %i.o = icmp ugt i64 %i.m, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.n, %i.o
  br i1 %or.cond.i.i.i, label %bb.e, label %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i.i, !prof !6227

_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i.i: ; preds = %bb.d
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !6300
  %i.p = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !6300 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.f, label %_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #39, !noalias !6300
  unreachable

bb.f:                                             ; preds = %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i.i
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef %i.m) #36, !noalias !6300
  unreachable

_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.k ; 3 uses
  %i.s = icmp ult i64 %i.f, 8
  %i.t = lshr i64 %i.h, 3
  %i.u = mul nuw nsw i64 %i.t, 7
  %.sroa.07.0.i.i.i = select i1 %i.s, i64 %i.f, i64 %i.u
  store ptr %i.r, ptr %i.b, align 8, !noalias !6299
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.f, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !6299
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.07.0.i.i.i, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !6299
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !6299
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6305)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6308)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !6310, !noalias !6311, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.r, ptr nonnull align 1 %i.v, i64 %i.l, i1 false), !noalias !6312
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6313)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !6316, !noalias !6317, !noundef !8 ; 3 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.val4.i.i.i = load <16 x i8>, ptr %i.v, align 16, !noalias !6319
  %i.z = icmp sgt <16 x i8> %.val4.i.i.i, splat (i8 -1)
  %i.aa = bitcast <16 x i1> %i.z to i16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ad = ptrtoint ptr %i.v to i64
  br label %bb.h

bb.g:                                             ; preds = %.loopexit.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.i, %bb.g
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ae, %bb.g ], [ %i.at, %bb.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEENCNvMsd_B1D_B1A_15clone_from_impl0EECs2VbMhdeEr66_16delta_benchmarks(i64 %.sroa.0.023.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #34
          to label %.body.i unwind label %bb.k, !noalias !6320

bb.h:                                             ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %.lr.ph.i.i
  %.sroa.0.023.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bb, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i ]
  %.sroa.14.022.i.i = phi i64 [ %i.x, %.lr.ph.i.i ], [ %i.aq, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i ]
  %.sroa.10.021.i.i = phi i16 [ %i.aa, %.lr.ph.i.i ], [ %i.an, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.sroa.6.020.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.sroa.013.019.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.not11.i.i.i = icmp eq i16 %.sroa.10.021.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %.lr.ph.i.i.i
  %i.af = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.sroa.6.020.i.i, %bb.h ] ; 2 uses
  %i.ag = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %.sroa.013.019.i.i, %bb.h ]
  %.val9.i.i.i = load <16 x i8>, ptr %i.af, align 16, !noalias !6321
  %i.ah = icmp sgt <16 x i8> %.val9.i.i.i, splat (i8 -1)
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -2304 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.ah to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.h
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.019.i.i, %bb.h ], [ %i.ai, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.020.i.i, %bb.h ], [ %i.aj, %.lr.ph.i.i.i ]
  %.lcssa.i.i.i = phi i16 [ %.sroa.10.021.i.i, %bb.h ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.ak = add i16 %.lcssa.i.i.i, -1
  %i.al = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.am = zext nneg i16 %i.al to i64
  %i.an = and i16 %i.ak, %.lcssa.i.i.i
  %i.ao = sub nsw i64 0, %i.am
  %i.ap = getelementptr inbounds [144 x i8], ptr %.sroa.013.1.i.i, i64 %i.ao ; 3 uses
  %i.aq = add i64 %.sroa.14.022.i.i, -1           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6312
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 -144
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 16 captures(none) dereferenceable(144) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(144) %i.ar)
          to label %.noexc.i.i unwind label %bb.g, !noalias !6312

.noexc.i.i:                                       ; preds = %.loopexit.i.i
  %i.as = getelementptr inbounds i8, ptr %i.ap, i64 -112
  invoke fastcc void @_RNvXsV_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.ac, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.as)
          to label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %bb.i, !noalias !6312

bb.i:                                             ; preds = %.noexc.i.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(144) %i.a) #34
          to label %.body.i.i unwind label %bb.j, !noalias !6312

bb.j:                                             ; preds = %bb.i
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6312
  unreachable

_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %.noexc.i.i
  %i.av = ptrtoint ptr %i.ap to i64
  %i.aw = sub i64 %i.ad, %i.av
  %i.ax = sdiv exact i64 %i.aw, 144               ; 2 uses
  %i.ay = sub nsw i64 0, %i.ax
  %i.az = getelementptr inbounds [144 x i8], ptr %i.r, i64 %i.ay
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.ba, ptr noundef nonnull align 16 dereferenceable(144) %i.a, i64 144, i1 false), !noalias !6312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6312
  %i.bb = add nsw i64 %i.ax, 1
  %i.bc = icmp eq i64 %i.aq, 0
  br i1 %i.bc, label %.loopexit.i, label %bb.h

bb.k:                                             ; preds = %.body.i.i
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6312
  unreachable

.body.i:                                          ; preds = %.body.i.i
  invoke void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.b, ptr noalias nonnull readonly captures(address, read_provenance) poison, i64 noundef 144, i64 noundef 16)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.l, !noalias !6299

.loopexit.i:                                      ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  store i64 %i.x, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !6305, !noalias !6320
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !6310, !noalias !6311, !noundef !8
  store i64 %i.bf, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !6305, !noalias !6320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !6294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6299
  br label %_RNvXsb_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.l:                                             ; preds = %.body.i
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6299
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i.i

_RNvXsb_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %.loopexit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.val, ptr %i.bh, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs2HSpDNxY7OE_9hashbrown3mapINtB2_7HashMapNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBM_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2y_4SendEL_EENtNtB2A_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load i64, ptr %i.a, align 8, !noundef !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6324)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !6324, !noalias !6327, !noundef !8 ; 4 uses
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
  %i.l = add i64 %i.j, %i.k                       ; 4 uses
  %i.m = icmp ult i64 %i.l, %i.j
  %i.n = icmp ugt i64 %i.l, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.m, %i.n
  br i1 %or.cond.i.i.i, label %bb.d, label %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i.i, !prof !6227

_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i.i: ; preds = %bb.c
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !6329
  %i.o = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !6329 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.e, label %_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2D_4SendEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #39, !noalias !6329
  unreachable

bb.e:                                             ; preds = %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i.i
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef %i.l) #36, !noalias !6329
  unreachable

_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2D_4SendEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.j ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6334)
  %i.r = load ptr, ptr %1, align 8, !alias.scope !6337, !noalias !6338, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.q, ptr nonnull align 1 %i.r, i64 %i.k, i1 false), !noalias !6340
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6341)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !6344, !noalias !6345, !noundef !8 ; 3 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2D_4SendEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.val4.i.i.i = load <16 x i8>, ptr %i.r, align 16, !noalias !6347
  %i.v = icmp sgt <16 x i8> %.val4.i.i.i, splat (i8 -1)
  %i.w = bitcast <16 x i1> %i.v to i16
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.y = ptrtoint ptr %i.r to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %.lr.ph.i.i
  %.sroa.14.023.i.i = phi i64 [ %i.t, %.lr.ph.i.i ], [ %i.an, %bb.h ]
  %.sroa.10.022.i.i = phi i16 [ %i.w, %.lr.ph.i.i ], [ %i.ap, %bb.h ] ; 2 uses
  %.sroa.013.021.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %bb.h ] ; 2 uses
  %.sroa.6.020.i.i = phi ptr [ %i.x, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %bb.h ] ; 2 uses
  %.not11.i.i.i = icmp eq i16 %.sroa.10.022.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %i.z = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %.sroa.6.020.i.i, %bb.f ] ; 2 uses
  %i.aa = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %.sroa.013.021.i.i, %bb.f ]
  %.val9.i.i.i = load <16 x i8>, ptr %i.z, align 16, !noalias !6348
  %i.ab = icmp sgt <16 x i8> %.val9.i.i.i, splat (i8 -1)
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -384 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.ab to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.f
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.020.i.i, %bb.f ], [ %i.ad, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.021.i.i, %bb.f ], [ %i.ac, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.10.022.i.i, %bb.f ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.ae = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.af = zext nneg i16 %i.ae to i64
  %i.ag = sub nsw i64 0, %i.af
  %i.ah = getelementptr inbounds [24 x i8], ptr %.sroa.013.1.i.i, i64 %i.ag ; 4 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6351)
  %.val.i.i.i = load i8, ptr %i.ai, align 1, !range !1579, !alias.scope !6351, !noalias !6354, !noundef !8
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 -16
  %.val1.i.i.i = load ptr, ptr %i.aj, align 8, !alias.scope !6351, !noalias !6354, !nonnull !8, !noundef !8 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.ah, i64 -8
  %.val2.i.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !6351, !noalias !6354 ; 2 uses
  %i.al = atomicrmw add ptr %.val1.i.i.i, i64 1 monotonic, align 8, !noalias !6356
  %i.am = icmp slt i64 %i.al, 0
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.loopexit.i.i
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %.loopexit.i.i
  %i.an = add i64 %.sroa.14.023.i.i, -1           ; 2 uses
  %i.ao = add i16 %.lcssa.i.i.i, -1
  %i.ap = and i16 %i.ao, %.lcssa.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i.i) ]
  %i.aq = ptrtoint ptr %i.ah to i64
  %i.ar = sub i64 %i.y, %i.aq
  %.neg.i.i = sdiv exact i64 %i.ar, -24
  %i.as = getelementptr inbounds [24 x i8], ptr %i.q, i64 %.neg.i.i ; 3 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -24
  store i8 %.val.i.i.i, ptr %i.at, align 8, !noalias !6340
  %.sroa.417.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.as, i64 -16
  store ptr %.val1.i.i.i, ptr %.sroa.417.0..sroa_idx.i.i, align 8, !noalias !6340
  %.sroa.518.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.as, i64 -8
  store ptr %.val2.i.i.i, ptr %.sroa.518.0..sroa_idx.i.i, align 8, !noalias !6340
  %i.au = icmp eq i64 %i.an, 0
  br i1 %i.au, label %.loopexit.i, label %bb.f

.loopexit.i:                                      ; preds = %bb.h, %_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2D_4SendEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !6337, !noalias !6338, !noundef !8
  br label %_RNvXsb_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2D_4SendEL_EEENtNtB2F_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

_RNvXsb_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2D_4SendEL_EEENtNtB2F_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %.loopexit.i
  %.sroa.7.0 = phi i64 [ %i.t, %.loopexit.i ], [ 0, %bb.a ]
  %.sroa.6.0 = phi i64 [ %i.aw, %.loopexit.i ], [ 0, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.q, %.loopexit.i ], [ @4, %bb.a ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.val, ptr %i.ax, align 8
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
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBK_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x i64>, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6357)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !6357, !noalias !6360, !noundef !8 ; 6 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false), !noalias !6357
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6362
  %i.i = add i64 %i.g, 1                          ; 2 uses
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.i, i64 range(i64 8, 353) 48) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.d, !prof !229

bb.d:                                             ; preds = %bb.c
  %i.l = extractvalue { i64, i1 } %i.j, 0         ; 3 uses
  %i.m = add i64 %i.g, 17                         ; 2 uses
  %i.n = add i64 %i.l, %i.m                       ; 4 uses
  %i.o = icmp ult i64 %i.n, %i.l
  %i.p = icmp ugt i64 %i.n, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.o, %i.p
  br i1 %or.cond.i.i.i, label %bb.e, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i, !prof !6227

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.d
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !6363
  %i.q = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !6363 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !6363
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.t = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.n), !noalias !6363
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i = phi { i64, i64 } [ %i.t, %bb.f ], [ %i.s, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 1
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.l
  %i.v = icmp ult i64 %i.g, 8
  %i.w = lshr i64 %i.i, 3
  %i.x = mul nuw nsw i64 %i.w, 7
  %.sroa.07.0.i.i.i = select i1 %i.v, i64 %i.g, i64 %i.x
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.g ], [ %i.m, %bb.h ]
  %.sroa.7.0.i = phi i64 [ %.sroa.12.0.ph.i.i, %bb.g ], [ %.sroa.07.0.i.i.i, %bb.h ]
  %.sroa.5.0.i = phi i64 [ %.sroa.7.0.ph.i.i, %bb.g ], [ %i.g, %bb.h ]
  %.sroa.0.0.i = phi ptr [ null, %bb.g ], [ %i.u, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0.i, ptr %i.b, align 8, !noalias !6362
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !6362
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !6362
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !6362
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6371)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6373)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6376)
  %i.y = load ptr, ptr %1, align 8, !alias.scope !6378, !noalias !6379, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.y, i64 %.pre-phi.i, i1 false), !noalias !6380
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !6378, !noalias !6379, !noundef !8 ; 3 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.val3.i.i.i.i = load <16 x i8>, ptr %i.y, align 16, !noalias !6381
  %i.ac = icmp sgt <16 x i8> %.val3.i.i.i.i, splat (i8 -1)
  %i.ad = bitcast <16 x i1> %i.ac to i16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ag = ptrtoint ptr %i.y to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.k, %bb.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ah, %bb.i ], [ %i.aw, %bb.k ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1W_EEENCNvMse_B1D_B1A_15clone_from_impl0EECs2VbMhdeEr66_16delta_benchmarks(i64 %.sroa.012.028.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #34
          to label %.body.i unwind label %bb.m, !noalias !6384

bb.j:                                             ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.012.028.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.be, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ]
  %.sroa.013.027.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %.sroa.013.1.i.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.sroa.6.026.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %.sroa.6.1.i.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.sroa.814.025.i.i.i = phi i16 [ %i.ad, %.lr.ph.i.i.i ], [ %i.aq, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.sroa.1015.024.i.i.i = phi i64 [ %i.aa, %.lr.ph.i.i.i ], [ %i.at, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ]
  %.not12.i.i.i.i = icmp eq i16 %.sroa.814.025.i.i.i, 0
  br i1 %.not12.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.ai = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %.sroa.6.026.i.i.i, %bb.j ] ; 2 uses
  %i.aj = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %.sroa.013.027.i.i.i, %bb.j ]
  %.val10.i.i.i.i = load <16 x i8>, ptr %i.ai, align 16, !noalias !6385
  %i.ak = icmp sgt <16 x i8> %.val10.i.i.i.i, splat (i8 -1)
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -768 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.ak to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.j
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.026.i.i.i, %bb.j ], [ %i.am, %.lr.ph.i.i.i.i ]
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.027.i.i.i, %bb.j ], [ %i.al, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.814.025.i.i.i, %bb.j ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.an = add i16 %.lcssa.i.i.i.i, -1
  %i.ao = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = and i16 %i.an, %.lcssa.i.i.i.i
  %i.ar = sub nsw i64 0, %i.ap
  %i.as = getelementptr inbounds [48 x i8], ptr %.sroa.013.1.i.i.i, i64 %i.ar ; 3 uses
  %i.at = add i64 %.sroa.1015.024.i.i.i, -1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6380
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 -48
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.au)
          to label %.noexc.i.i.i unwind label %bb.i, !noalias !6380

.noexc.i.i.i:                                     ; preds = %.loopexit.i.i.i
  %i.av = getelementptr inbounds i8, ptr %i.as, i64 -24
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.av)
          to label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.k, !noalias !6380

bb.k:                                             ; preds = %.noexc.i.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) #34
          to label %.body.i.i.i unwind label %bb.l, !noalias !6380

bb.l:                                             ; preds = %bb.k
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6380
  unreachable

_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %.noexc.i.i.i
  %i.ay = ptrtoint ptr %i.as to i64
  %i.az = sub i64 %i.ag, %i.ay
  %i.ba = sdiv exact i64 %i.az, 48                ; 2 uses
  %i.bb = sub nsw i64 0, %i.ba
  %i.bc = getelementptr inbounds [48 x i8], ptr %.sroa.0.0.i, i64 %i.bb
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bd, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !6380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6380
  %i.be = add nsw i64 %i.ba, 1
  %i.bf = icmp eq i64 %i.at, 0
  br i1 %i.bf, label %.loopexit.i, label %bb.j

bb.m:                                             ; preds = %.body.i.i.i
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6380
  unreachable

.body.i:                                          ; preds = %.body.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1n_EEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.b) #34
          to label %bb.o unwind label %bb.n, !noalias !6362

.loopexit.i:                                      ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  store i64 %i.aa, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !6388, !noalias !6384
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !6378, !noalias !6379, !noundef !8
  store i64 %i.bi, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !6388, !noalias !6384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !6357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6362
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.n:                                             ; preds = %.body.i
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6362
  unreachable

bb.o:                                             ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %.loopexit.i
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.e, ptr %i.bk, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBO_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_ENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x i64>, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6389)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !6389, !noalias !6392, !noundef !8 ; 6 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false), !noalias !6389
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6394
  %i.i = add i64 %i.g, 1                          ; 2 uses
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.i, i64 range(i64 8, 353) 40) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.d, !prof !229

bb.d:                                             ; preds = %bb.c
  %i.l = extractvalue { i64, i1 } %i.j, 0
  %i.m = add nuw i64 %i.l, 8
  %i.n = and i64 %i.m, -16                        ; 3 uses
  %i.o = add i64 %i.g, 17                         ; 2 uses
  %i.p = add i64 %i.n, %i.o                       ; 4 uses
  %i.q = icmp ult i64 %i.p, %i.n
  %i.r = icmp ugt i64 %i.p, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.q, %i.r
  br i1 %or.cond.i.i.i, label %bb.e, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i, !prof !6227

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.d
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !6395
  %i.s = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !6395 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.u = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !6395
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.v = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.p), !noalias !6395
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i = phi { i64, i64 } [ %i.v, %bb.f ], [ %i.u, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 1
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.n
  %i.x = icmp ult i64 %i.g, 8
  %i.y = lshr i64 %i.i, 3
  %i.z = mul nuw nsw i64 %i.y, 7
  %.sroa.07.0.i.i.i = select i1 %i.x, i64 %i.g, i64 %i.z
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.g ], [ %i.o, %bb.h ]
  %.sroa.7.0.i = phi i64 [ %.sroa.12.0.ph.i.i, %bb.g ], [ %.sroa.07.0.i.i.i, %bb.h ]
  %.sroa.5.0.i = phi i64 [ %.sroa.7.0.ph.i.i, %bb.g ], [ %i.g, %bb.h ]
  %.sroa.0.0.i = phi ptr [ null, %bb.g ], [ %i.w, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0.i, ptr %i.b, align 8, !noalias !6394
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !6394
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !6394
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !6394
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6400)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6405)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6408)
  %i.aa = load ptr, ptr %1, align 8, !alias.scope !6410, !noalias !6411, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.aa, i64 %.pre-phi.i, i1 false), !noalias !6412
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !6410, !noalias !6411, !noundef !8 ; 3 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.val3.i.i.i.i = load <16 x i8>, ptr %i.aa, align 16, !noalias !6413
  %i.ae = icmp sgt <16 x i8> %.val3.i.i.i.i, splat (i8 -1)
  %i.af = bitcast <16 x i1> %i.ae to i16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.aj = ptrtoint ptr %i.aa to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB20_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEEENCNvMse_B1D_B1A_15clone_from_impl0EECs2VbMhdeEr66_16delta_benchmarks(i64 %.sroa.012.027.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #34
          to label %.body.i unwind label %bb.m, !noalias !6416

bb.j:                                             ; preds = %bb.l, %.lr.ph.i.i.i
  %.sroa.012.027.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.bi, %bb.l ]
  %.sroa.013.026.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %.sroa.013.1.i.i.i, %bb.l ] ; 2 uses
  %.sroa.6.025.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %.sroa.6.1.i.i.i, %bb.l ] ; 2 uses
  %.sroa.814.024.i.i.i = phi i16 [ %i.af, %.lr.ph.i.i.i ], [ %i.at, %bb.l ] ; 2 uses
  %.sroa.1015.023.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.i.i ], [ %i.aw, %bb.l ]
  %.not12.i.i.i.i = icmp eq i16 %.sroa.814.024.i.i.i, 0
  br i1 %.not12.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.al = phi ptr [ %i.ap, %.lr.ph.i.i.i.i ], [ %.sroa.6.025.i.i.i, %bb.j ] ; 2 uses
  %i.am = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %.sroa.013.026.i.i.i, %bb.j ]
  %.val10.i.i.i.i = load <16 x i8>, ptr %i.al, align 16, !noalias !6417
  %i.an = icmp sgt <16 x i8> %.val10.i.i.i.i, splat (i8 -1)
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 -640 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.an to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.j
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.025.i.i.i, %bb.j ], [ %i.ap, %.lr.ph.i.i.i.i ]
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.026.i.i.i, %bb.j ], [ %i.ao, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.814.024.i.i.i, %bb.j ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.aq = add i16 %.lcssa.i.i.i.i, -1
  %i.ar = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.as = zext nneg i16 %i.ar to i64
  %i.at = and i16 %i.aq, %.lcssa.i.i.i.i
  %i.au = sub nsw i64 0, %i.as
  %i.av = getelementptr inbounds [40 x i8], ptr %.sroa.013.1.i.i.i, i64 %i.au ; 4 uses
  %i.aw = add i64 %.sroa.1015.023.i.i.i, -1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6412
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 -40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6420)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6423)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ax)
          to label %.noexc.i.i.i unwind label %bb.i, !noalias !6412

.noexc.i.i.i:                                     ; preds = %.loopexit.i.i.i
  %i.ay = getelementptr inbounds i8, ptr %i.av, i64 -16
  %.val.i.i.i.i = load ptr, ptr %i.ay, align 8, !alias.scope !6423, !noalias !6425, !nonnull !8, !noundef !8 ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %i.av, i64 -8
  %.val1.i.i.i.i = load ptr, ptr %i.az, align 8, !alias.scope !6423, !noalias !6425 ; 2 uses
  %i.ba = atomicrmw add ptr %.val.i.i.i.i, i64 1 monotonic, align 8, !noalias !6425
  %i.bb = icmp slt i64 %i.ba, 0
  br i1 %i.bb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc.i.i.i
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %.noexc.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i) ]
  store ptr %.val.i.i.i.i, ptr %i.ah, align 8, !alias.scope !6420, !noalias !6426
  store ptr %.val1.i.i.i.i, ptr %i.ai, align 8, !alias.scope !6420, !noalias !6426
  %i.bc = ptrtoint ptr %i.av to i64
  %i.bd = sub i64 %i.aj, %i.bc
  %i.be = sdiv exact i64 %i.bd, 40                ; 2 uses
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = getelementptr inbounds [40 x i8], ptr %.sroa.0.0.i, i64 %i.bf
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bh, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !noalias !6412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6412
  %i.bi = add nsw i64 %i.be, 1
  %i.bj = icmp eq i64 %i.aw, 0
  br i1 %i.bj, label %.loopexit.i, label %bb.j

bb.m:                                             ; preds = %bb.i
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6412
  unreachable

.body.i:                                          ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1r_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.b) #34
          to label %bb.o unwind label %bb.n, !noalias !6394

.loopexit.i:                                      ; preds = %bb.l, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  store i64 %i.ac, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !6427, !noalias !6416
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !6410, !noalias !6411, !noundef !8
  store i64 %i.bm, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !6427, !noalias !6416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !6389
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6394
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.n:                                             ; preds = %.body.i
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6394
  unreachable

bb.o:                                             ; preds = %.body.i
  resume { ptr, i32 } %i.ak

_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %.loopexit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.e, ptr %i.bo, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBO_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_ENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x i64>, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6428)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !6428, !noalias !6431, !noundef !8 ; 6 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false), !noalias !6428
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6433
  %i.i = add i64 %i.g, 1                          ; 2 uses
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.i, i64 range(i64 8, 353) 40) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.d, !prof !229

bb.d:                                             ; preds = %bb.c
  %i.l = extractvalue { i64, i1 } %i.j, 0
  %i.m = add nuw i64 %i.l, 8
  %i.n = and i64 %i.m, -16                        ; 3 uses
  %i.o = add i64 %i.g, 17                         ; 2 uses
  %i.p = add i64 %i.n, %i.o                       ; 4 uses
  %i.q = icmp ult i64 %i.p, %i.n
  %i.r = icmp ugt i64 %i.p, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.q, %i.r
  br i1 %or.cond.i.i.i, label %bb.e, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i, !prof !6227

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.d
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !6434
  %i.s = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !6434 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.u = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !6434
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.v = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.p), !noalias !6434
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i = phi { i64, i64 } [ %i.v, %bb.f ], [ %i.u, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 1
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.n
  %i.x = icmp ult i64 %i.g, 8
  %i.y = lshr i64 %i.i, 3
  %i.z = mul nuw nsw i64 %i.y, 7
  %.sroa.07.0.i.i.i = select i1 %i.x, i64 %i.g, i64 %i.z
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.g ], [ %i.o, %bb.h ]
  %.sroa.7.0.i = phi i64 [ %.sroa.12.0.ph.i.i, %bb.g ], [ %.sroa.07.0.i.i.i, %bb.h ]
  %.sroa.5.0.i = phi i64 [ %.sroa.7.0.ph.i.i, %bb.g ], [ %i.g, %bb.h ]
  %.sroa.0.0.i = phi ptr [ null, %bb.g ], [ %i.w, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0.i, ptr %i.b, align 8, !noalias !6433
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !6433
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !6433
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !6433
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6439)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6442)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6447)
  %i.aa = load ptr, ptr %1, align 8, !alias.scope !6449, !noalias !6450, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.aa, i64 %.pre-phi.i, i1 false), !noalias !6451
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !6449, !noalias !6450, !noundef !8 ; 3 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.val3.i.i.i.i = load <16 x i8>, ptr %i.aa, align 16, !noalias !6452
  %i.ae = icmp sgt <16 x i8> %.val3.i.i.i.i, splat (i8 -1)
  %i.af = bitcast <16 x i1> %i.ae to i16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.aj = ptrtoint ptr %i.aa to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB20_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEEENCNvMse_B1D_B1A_15clone_from_impl0EECs2VbMhdeEr66_16delta_benchmarks(i64 %.sroa.012.027.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #34
          to label %.body.i unwind label %bb.m, !noalias !6455

bb.j:                                             ; preds = %bb.l, %.lr.ph.i.i.i
  %.sroa.012.027.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.bi, %bb.l ]
  %.sroa.013.026.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %.sroa.013.1.i.i.i, %bb.l ] ; 2 uses
  %.sroa.6.025.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %.sroa.6.1.i.i.i, %bb.l ] ; 2 uses
  %.sroa.814.024.i.i.i = phi i16 [ %i.af, %.lr.ph.i.i.i ], [ %i.at, %bb.l ] ; 2 uses
  %.sroa.1015.023.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.i.i ], [ %i.aw, %bb.l ]
  %.not12.i.i.i.i = icmp eq i16 %.sroa.814.024.i.i.i, 0
  br i1 %.not12.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.al = phi ptr [ %i.ap, %.lr.ph.i.i.i.i ], [ %.sroa.6.025.i.i.i, %bb.j ] ; 2 uses
  %i.am = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %.sroa.013.026.i.i.i, %bb.j ]
  %.val10.i.i.i.i = load <16 x i8>, ptr %i.al, align 16, !noalias !6456
  %i.an = icmp sgt <16 x i8> %.val10.i.i.i.i, splat (i8 -1)
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 -640 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.an to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.j
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.025.i.i.i, %bb.j ], [ %i.ap, %.lr.ph.i.i.i.i ]
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.026.i.i.i, %bb.j ], [ %i.ao, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.814.024.i.i.i, %bb.j ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.aq = add i16 %.lcssa.i.i.i.i, -1
  %i.ar = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.as = zext nneg i16 %i.ar to i64
  %i.at = and i16 %i.aq, %.lcssa.i.i.i.i
  %i.au = sub nsw i64 0, %i.as
  %i.av = getelementptr inbounds [40 x i8], ptr %.sroa.013.1.i.i.i, i64 %i.au ; 4 uses
  %i.aw = add i64 %.sroa.1015.023.i.i.i, -1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6451
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 -40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6459)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6462)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ax)
          to label %.noexc.i.i.i unwind label %bb.i, !noalias !6451

.noexc.i.i.i:                                     ; preds = %.loopexit.i.i.i
  %i.ay = getelementptr inbounds i8, ptr %i.av, i64 -16
  %.val.i.i.i.i = load ptr, ptr %i.ay, align 8, !alias.scope !6462, !noalias !6464, !nonnull !8, !noundef !8 ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %i.av, i64 -8
  %.val1.i.i.i.i = load ptr, ptr %i.az, align 8, !alias.scope !6462, !noalias !6464 ; 2 uses
  %i.ba = atomicrmw add ptr %.val.i.i.i.i, i64 1 monotonic, align 8, !noalias !6464
  %i.bb = icmp slt i64 %i.ba, 0
  br i1 %i.bb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc.i.i.i
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %.noexc.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i) ]
  store ptr %.val.i.i.i.i, ptr %i.ah, align 8, !alias.scope !6459, !noalias !6465
  store ptr %.val1.i.i.i.i, ptr %i.ai, align 8, !alias.scope !6459, !noalias !6465
  %i.bc = ptrtoint ptr %i.av to i64
  %i.bd = sub i64 %i.aj, %i.bc
  %i.be = sdiv exact i64 %i.bd, 40                ; 2 uses
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = getelementptr inbounds [40 x i8], ptr %.sroa.0.0.i, i64 %i.bf
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bh, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !noalias !6451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6451
  %i.bi = add nsw i64 %i.be, 1
  %i.bj = icmp eq i64 %i.aw, 0
  br i1 %i.bj, label %.loopexit.i, label %bb.j

bb.m:                                             ; preds = %bb.i
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6451
  unreachable

.body.i:                                          ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1r_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.b) #34
          to label %bb.o unwind label %bb.n, !noalias !6433

.loopexit.i:                                      ; preds = %bb.l, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  store i64 %i.ac, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !6466, !noalias !6455
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !6449, !noalias !6450, !noundef !8
  store i64 %i.bm, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !6466, !noalias !6455
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !6428
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6433
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.n:                                             ; preds = %.body.i
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6433
  unreachable

bb.o:                                             ; preds = %.body.i
  resume { ptr, i32 } %i.ak

_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %.loopexit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.e, ptr %i.bo, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBO_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x i64>, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6467)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !6467, !noalias !6470, !noundef !8 ; 6 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false), !noalias !6467
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6472
  %i.i = add i64 %i.g, 1                          ; 3 uses
  %i.j = icmp ugt i64 %i.i, 576460752303423487
  br i1 %i.j, label %bb.e, label %bb.d, !prof !229

bb.d:                                             ; preds = %bb.c
  %i.k = shl nuw i64 %i.i, 5                      ; 3 uses
  %i.l = add nsw i64 %i.g, 17                     ; 2 uses
  %i.m = add i64 %i.k, %i.l                       ; 4 uses
  %i.n = icmp ult i64 %i.m, %i.k
  %i.o = icmp ugt i64 %i.m, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.n, %i.o
  br i1 %or.cond.i.i.i, label %bb.e, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i, !prof !6227

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.d
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !6473
  %i.p = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !6473 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !6473
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.s = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.m), !noalias !6473
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i = phi { i64, i64 } [ %i.s, %bb.f ], [ %i.r, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 1
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.k
  %i.u = icmp ult i64 %i.g, 8
  %i.v = lshr i64 %i.i, 3
  %i.w = mul nuw nsw i64 %i.v, 7
  %.sroa.07.0.i.i.i = select i1 %i.u, i64 %i.g, i64 %i.w
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.g ], [ %i.l, %bb.h ]
  %.sroa.7.0.i = phi i64 [ %.sroa.12.0.ph.i.i, %bb.g ], [ %.sroa.07.0.i.i.i, %bb.h ]
  %.sroa.5.0.i = phi i64 [ %.sroa.7.0.ph.i.i, %bb.g ], [ %i.g, %bb.h ]
  %.sroa.0.0.i = phi ptr [ null, %bb.g ], [ %i.t, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0.i, ptr %i.b, align 8, !noalias !6472
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !6472
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !6472
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !6472
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6481)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6483)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6486)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !6488, !noalias !6489, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.x, i64 %.pre-phi.i, i1 false), !noalias !6490
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !6488, !noalias !6489, !noundef !8 ; 3 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.val3.i.i.i.i = load <16 x i8>, ptr %i.x, align 16, !noalias !6491
  %i.ab = icmp sgt <16 x i8> %.val3.i.i.i.i, splat (i8 -1)
  %i.ac = bitcast <16 x i1> %i.ab to i16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.af = ptrtoint ptr %i.x to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB20_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEEENCNvMse_B1D_B1A_15clone_from_impl0EECs2VbMhdeEr66_16delta_benchmarks(i64 %.sroa.012.027.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #34
          to label %.body.i unwind label %bb.m, !noalias !6494

bb.j:                                             ; preds = %bb.l, %.lr.ph.i.i.i
  %.sroa.012.027.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.bd, %bb.l ]
  %.sroa.013.026.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %.sroa.013.1.i.i.i, %bb.l ] ; 2 uses
  %.sroa.6.025.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %.sroa.6.1.i.i.i, %bb.l ] ; 2 uses
  %.sroa.814.024.i.i.i = phi i16 [ %i.ac, %.lr.ph.i.i.i ], [ %i.ap, %bb.l ] ; 2 uses
  %.sroa.1015.023.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i ], [ %i.as, %bb.l ]
  %.not12.i.i.i.i = icmp eq i16 %.sroa.814.024.i.i.i, 0
  br i1 %.not12.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.ah = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %.sroa.6.025.i.i.i, %bb.j ] ; 2 uses
  %i.ai = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %.sroa.013.026.i.i.i, %bb.j ]
  %.val10.i.i.i.i = load <16 x i8>, ptr %i.ah, align 16, !noalias !6495
  %i.aj = icmp sgt <16 x i8> %.val10.i.i.i.i, splat (i8 -1)
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -512 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.aj to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.j
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.025.i.i.i, %bb.j ], [ %i.al, %.lr.ph.i.i.i.i ]
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.026.i.i.i, %bb.j ], [ %i.ak, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.814.024.i.i.i, %bb.j ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.am = add i16 %.lcssa.i.i.i.i, -1
  %i.an = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.ao = zext nneg i16 %i.an to i64
  %i.ap = and i16 %i.am, %.lcssa.i.i.i.i
  %i.aq = sub nsw i64 0, %i.ao
  %i.ar = getelementptr inbounds [32 x i8], ptr %.sroa.013.1.i.i.i, i64 %i.aq ; 3 uses
  %i.as = add i64 %.sroa.1015.023.i.i.i, -1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6490
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 -32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6498)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6501)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.at)
          to label %.noexc.i.i.i unwind label %bb.i, !noalias !6490

.noexc.i.i.i:                                     ; preds = %.loopexit.i.i.i
  %i.au = getelementptr inbounds i8, ptr %i.ar, i64 -8
  %.val.i.i.i.i = load ptr, ptr %i.au, align 8, !alias.scope !6501, !noalias !6503, !nonnull !8, !noundef !8 ; 2 uses
  %i.av = atomicrmw add ptr %.val.i.i.i.i, i64 1 monotonic, align 8, !noalias !6503
  %i.aw = icmp slt i64 %i.av, 0
  br i1 %i.aw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc.i.i.i
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %.noexc.i.i.i
  store ptr %.val.i.i.i.i, ptr %i.ae, align 8, !alias.scope !6498, !noalias !6504
  %i.ax = ptrtoint ptr %i.ar to i64
  %i.ay = sub i64 %i.af, %i.ax
  %i.az = ashr exact i64 %i.ay, 5                 ; 2 uses
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = getelementptr inbounds [32 x i8], ptr %.sroa.0.0.i, i64 %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !6490
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6490
  %i.bd = add nsw i64 %i.az, 1
  %i.be = icmp eq i64 %i.as, 0
  br i1 %i.be, label %.loopexit.i, label %bb.j

bb.m:                                             ; preds = %bb.i
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6490
  unreachable

.body.i:                                          ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1r_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.b) #34
          to label %bb.o unwind label %bb.n, !noalias !6472

.loopexit.i:                                      ; preds = %bb.l, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  store i64 %i.z, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !6505, !noalias !6494
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !6488, !noalias !6489, !noundef !8
  store i64 %i.bh, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !6505, !noalias !6494
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !6467
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6472
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.n:                                             ; preds = %.body.i
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6472
  unreachable

bb.o:                                             ; preds = %.body.i
  resume { ptr, i32 } %i.ag

_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %.loopexit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.e, ptr %i.bj, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBO_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x i64>, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6506)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !6506, !noalias !6509, !noundef !8 ; 6 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false), !noalias !6506
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6511
  %i.i = add i64 %i.g, 1                          ; 3 uses
  %i.j = icmp ugt i64 %i.i, 576460752303423487
  br i1 %i.j, label %bb.e, label %bb.d, !prof !229

bb.d:                                             ; preds = %bb.c
  %i.k = shl nuw i64 %i.i, 5                      ; 3 uses
  %i.l = add nsw i64 %i.g, 17                     ; 2 uses
  %i.m = add i64 %i.k, %i.l                       ; 4 uses
  %i.n = icmp ult i64 %i.m, %i.k
  %i.o = icmp ugt i64 %i.m, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.n, %i.o
  br i1 %or.cond.i.i.i, label %bb.e, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i, !prof !6227

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.d
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !6512
  %i.p = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !6512 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !6512
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.s = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.m), !noalias !6512
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i = phi { i64, i64 } [ %i.s, %bb.f ], [ %i.r, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 1
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.k
  %i.u = icmp ult i64 %i.g, 8
  %i.v = lshr i64 %i.i, 3
  %i.w = mul nuw nsw i64 %i.v, 7
  %.sroa.07.0.i.i.i = select i1 %i.u, i64 %i.g, i64 %i.w
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.g ], [ %i.l, %bb.h ]
  %.sroa.7.0.i = phi i64 [ %.sroa.12.0.ph.i.i, %bb.g ], [ %.sroa.07.0.i.i.i, %bb.h ]
  %.sroa.5.0.i = phi i64 [ %.sroa.7.0.ph.i.i, %bb.g ], [ %i.g, %bb.h ]
  %.sroa.0.0.i = phi ptr [ null, %bb.g ], [ %i.t, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0.i, ptr %i.b, align 8, !noalias !6511
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !6511
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !6511
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !6511
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6517)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6520)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6525)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !6527, !noalias !6528, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.x, i64 %.pre-phi.i, i1 false), !noalias !6529
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !6527, !noalias !6528, !noundef !8 ; 3 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.val3.i.i.i.i = load <16 x i8>, ptr %i.x, align 16, !noalias !6530
  %i.ab = icmp sgt <16 x i8> %.val3.i.i.i.i, splat (i8 -1)
  %i.ac = bitcast <16 x i1> %i.ab to i16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.af = ptrtoint ptr %i.x to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB20_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEEENCNvMse_B1D_B1A_15clone_from_impl0EECs2VbMhdeEr66_16delta_benchmarks(i64 %.sroa.012.027.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #34
          to label %.body.i unwind label %bb.m, !noalias !6533

bb.j:                                             ; preds = %bb.l, %.lr.ph.i.i.i
  %.sroa.012.027.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.bd, %bb.l ]
  %.sroa.013.026.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %.sroa.013.1.i.i.i, %bb.l ] ; 2 uses
  %.sroa.6.025.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %.sroa.6.1.i.i.i, %bb.l ] ; 2 uses
  %.sroa.814.024.i.i.i = phi i16 [ %i.ac, %.lr.ph.i.i.i ], [ %i.ap, %bb.l ] ; 2 uses
  %.sroa.1015.023.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i ], [ %i.as, %bb.l ]
  %.not12.i.i.i.i = icmp eq i16 %.sroa.814.024.i.i.i, 0
  br i1 %.not12.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.ah = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %.sroa.6.025.i.i.i, %bb.j ] ; 2 uses
  %i.ai = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %.sroa.013.026.i.i.i, %bb.j ]
  %.val10.i.i.i.i = load <16 x i8>, ptr %i.ah, align 16, !noalias !6534
  %i.aj = icmp sgt <16 x i8> %.val10.i.i.i.i, splat (i8 -1)
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -512 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.aj to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.j
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.025.i.i.i, %bb.j ], [ %i.al, %.lr.ph.i.i.i.i ]
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.026.i.i.i, %bb.j ], [ %i.ak, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.814.024.i.i.i, %bb.j ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.am = add i16 %.lcssa.i.i.i.i, -1
  %i.an = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.ao = zext nneg i16 %i.an to i64
  %i.ap = and i16 %i.am, %.lcssa.i.i.i.i
  %i.aq = sub nsw i64 0, %i.ao
  %i.ar = getelementptr inbounds [32 x i8], ptr %.sroa.013.1.i.i.i, i64 %i.aq ; 3 uses
  %i.as = add i64 %.sroa.1015.023.i.i.i, -1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6529
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 -32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6537)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6540)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.at)
          to label %.noexc.i.i.i unwind label %bb.i, !noalias !6529

.noexc.i.i.i:                                     ; preds = %.loopexit.i.i.i
  %i.au = getelementptr inbounds i8, ptr %i.ar, i64 -8
  %.val.i.i.i.i = load ptr, ptr %i.au, align 8, !alias.scope !6540, !noalias !6542, !nonnull !8, !noundef !8 ; 2 uses
  %i.av = atomicrmw add ptr %.val.i.i.i.i, i64 1 monotonic, align 8, !noalias !6542
  %i.aw = icmp slt i64 %i.av, 0
  br i1 %i.aw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc.i.i.i
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %.noexc.i.i.i
  store ptr %.val.i.i.i.i, ptr %i.ae, align 8, !alias.scope !6537, !noalias !6543
  %i.ax = ptrtoint ptr %i.ar to i64
  %i.ay = sub i64 %i.af, %i.ax
  %i.az = ashr exact i64 %i.ay, 5                 ; 2 uses
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = getelementptr inbounds [32 x i8], ptr %.sroa.0.0.i, i64 %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !6529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6529
  %i.bd = add nsw i64 %i.az, 1
  %i.be = icmp eq i64 %i.as, 0
  br i1 %i.be, label %.loopexit.i, label %bb.j

bb.m:                                             ; preds = %bb.i
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6529
  unreachable

.body.i:                                          ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1r_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.b) #34
          to label %bb.o unwind label %bb.n, !noalias !6511

.loopexit.i:                                      ; preds = %bb.l, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  store i64 %i.z, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !6544, !noalias !6533
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !6527, !noalias !6528, !noundef !8
  store i64 %i.bh, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !6544, !noalias !6533
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !6506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6511
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.n:                                             ; preds = %.body.i
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6511
  unreachable

bb.o:                                             ; preds = %.body.i
  resume { ptr, i32 } %i.ag

_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %.loopexit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.e, ptr %i.bj, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBO_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x i64>, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6545)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !6545, !noalias !6548, !noundef !8 ; 6 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false), !noalias !6545
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6550
  %i.i = add i64 %i.g, 1                          ; 3 uses
  %i.j = icmp ugt i64 %i.i, 576460752303423487
  br i1 %i.j, label %bb.e, label %bb.d, !prof !229

bb.d:                                             ; preds = %bb.c
  %i.k = shl nuw i64 %i.i, 5                      ; 3 uses
  %i.l = add nsw i64 %i.g, 17                     ; 2 uses
  %i.m = add i64 %i.k, %i.l                       ; 4 uses
  %i.n = icmp ult i64 %i.m, %i.k
  %i.o = icmp ugt i64 %i.m, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.n, %i.o
  br i1 %or.cond.i.i.i, label %bb.e, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i, !prof !6227

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.d
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !6551
  %i.p = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !6551 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !6551
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.s = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.m), !noalias !6551
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i = phi { i64, i64 } [ %i.s, %bb.f ], [ %i.r, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 1
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.k
  %i.u = icmp ult i64 %i.g, 8
  %i.v = lshr i64 %i.i, 3
  %i.w = mul nuw nsw i64 %i.v, 7
  %.sroa.07.0.i.i.i = select i1 %i.u, i64 %i.g, i64 %i.w
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.g ], [ %i.l, %bb.h ]
  %.sroa.7.0.i = phi i64 [ %.sroa.12.0.ph.i.i, %bb.g ], [ %.sroa.07.0.i.i.i, %bb.h ]
  %.sroa.5.0.i = phi i64 [ %.sroa.7.0.ph.i.i, %bb.g ], [ %i.g, %bb.h ]
  %.sroa.0.0.i = phi ptr [ null, %bb.g ], [ %i.t, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0.i, ptr %i.b, align 8, !noalias !6550
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !6550
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !6550
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !6550
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6556)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6559)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6561)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6564)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !6566, !noalias !6567, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.x, i64 %.pre-phi.i, i1 false), !noalias !6568
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !6566, !noalias !6567, !noundef !8 ; 3 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.val3.i.i.i.i = load <16 x i8>, ptr %i.x, align 16, !noalias !6569
  %i.ab = icmp sgt <16 x i8> %.val3.i.i.i.i, splat (i8 -1)
  %i.ac = bitcast <16 x i1> %i.ab to i16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.af = ptrtoint ptr %i.x to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB20_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEEENCNvMse_B1D_B1A_15clone_from_impl0EECs2VbMhdeEr66_16delta_benchmarks(i64 %.sroa.012.027.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #34
          to label %.body.i unwind label %bb.m, !noalias !6572

bb.j:                                             ; preds = %bb.l, %.lr.ph.i.i.i
  %.sroa.012.027.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.bd, %bb.l ]
  %.sroa.013.026.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %.sroa.013.1.i.i.i, %bb.l ] ; 2 uses
  %.sroa.6.025.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %.sroa.6.1.i.i.i, %bb.l ] ; 2 uses
  %.sroa.814.024.i.i.i = phi i16 [ %i.ac, %.lr.ph.i.i.i ], [ %i.ap, %bb.l ] ; 2 uses
  %.sroa.1015.023.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i ], [ %i.as, %bb.l ]
  %.not12.i.i.i.i = icmp eq i16 %.sroa.814.024.i.i.i, 0
  br i1 %.not12.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.ah = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %.sroa.6.025.i.i.i, %bb.j ] ; 2 uses
  %i.ai = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %.sroa.013.026.i.i.i, %bb.j ]
  %.val10.i.i.i.i = load <16 x i8>, ptr %i.ah, align 16, !noalias !6573
  %i.aj = icmp sgt <16 x i8> %.val10.i.i.i.i, splat (i8 -1)
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -512 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.aj to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.j
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.025.i.i.i, %bb.j ], [ %i.al, %.lr.ph.i.i.i.i ]
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.026.i.i.i, %bb.j ], [ %i.ak, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.814.024.i.i.i, %bb.j ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.am = add i16 %.lcssa.i.i.i.i, -1
  %i.an = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.ao = zext nneg i16 %i.an to i64
  %i.ap = and i16 %i.am, %.lcssa.i.i.i.i
  %i.aq = sub nsw i64 0, %i.ao
  %i.ar = getelementptr inbounds [32 x i8], ptr %.sroa.013.1.i.i.i, i64 %i.aq ; 3 uses
  %i.as = add i64 %.sroa.1015.023.i.i.i, -1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6568
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 -32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6576)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6579)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.at)
          to label %.noexc.i.i.i unwind label %bb.i, !noalias !6568

.noexc.i.i.i:                                     ; preds = %.loopexit.i.i.i
  %i.au = getelementptr inbounds i8, ptr %i.ar, i64 -8
  %.val.i.i.i.i = load ptr, ptr %i.au, align 8, !alias.scope !6579, !noalias !6581, !nonnull !8, !noundef !8 ; 2 uses
  %i.av = atomicrmw add ptr %.val.i.i.i.i, i64 1 monotonic, align 8, !noalias !6581
  %i.aw = icmp slt i64 %i.av, 0
  br i1 %i.aw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc.i.i.i
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %.noexc.i.i.i
  store ptr %.val.i.i.i.i, ptr %i.ae, align 8, !alias.scope !6576, !noalias !6582
  %i.ax = ptrtoint ptr %i.ar to i64
  %i.ay = sub i64 %i.af, %i.ax
  %i.az = ashr exact i64 %i.ay, 5                 ; 2 uses
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = getelementptr inbounds [32 x i8], ptr %.sroa.0.0.i, i64 %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !6568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6568
  %i.bd = add nsw i64 %i.az, 1
  %i.be = icmp eq i64 %i.as, 0
  br i1 %i.be, label %.loopexit.i, label %bb.j

bb.m:                                             ; preds = %bb.i
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6568
  unreachable

.body.i:                                          ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1r_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.b) #34
          to label %bb.o unwind label %bb.n, !noalias !6550

.loopexit.i:                                      ; preds = %bb.l, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  store i64 %i.z, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !6583, !noalias !6572
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !6566, !noalias !6567, !noundef !8
  store i64 %i.bh, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !6583, !noalias !6572
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !6545
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6550
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.n:                                             ; preds = %.body.i
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6550
  unreachable

bb.o:                                             ; preds = %.body.i
  resume { ptr, i32 } %i.ag

_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %.loopexit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.e, ptr %i.bj, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBO_4sync3ArcNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableFunctionENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x i64>, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6584)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !6584, !noalias !6587, !noundef !8 ; 6 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false), !noalias !6584
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableFunctionEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6589
  %i.i = add i64 %i.g, 1                          ; 3 uses
  %i.j = icmp ugt i64 %i.i, 576460752303423487
  br i1 %i.j, label %bb.e, label %bb.d, !prof !229

bb.d:                                             ; preds = %bb.c
  %i.k = shl nuw i64 %i.i, 5                      ; 3 uses
  %i.l = add nsw i64 %i.g, 17                     ; 2 uses
  %i.m = add i64 %i.k, %i.l                       ; 4 uses
  %i.n = icmp ult i64 %i.m, %i.k
  %i.o = icmp ugt i64 %i.m, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.n, %i.o
  br i1 %or.cond.i.i.i, label %bb.e, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i, !prof !6227

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.d
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !6590
  %i.p = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !6590 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !6590
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.s = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.m), !noalias !6590
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i = phi { i64, i64 } [ %i.s, %bb.f ], [ %i.r, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 1
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableFunctionEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.k
  %i.u = icmp ult i64 %i.g, 8
  %i.v = lshr i64 %i.i, 3
  %i.w = mul nuw nsw i64 %i.v, 7
  %.sroa.07.0.i.i.i = select i1 %i.u, i64 %i.g, i64 %i.w
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableFunctionEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableFunctionEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.g ], [ %i.l, %bb.h ]
  %.sroa.7.0.i = phi i64 [ %.sroa.12.0.ph.i.i, %bb.g ], [ %.sroa.07.0.i.i.i, %bb.h ]
  %.sroa.5.0.i = phi i64 [ %.sroa.7.0.ph.i.i, %bb.g ], [ %i.g, %bb.h ]
  %.sroa.0.0.i = phi ptr [ null, %bb.g ], [ %i.t, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0.i, ptr %i.b, align 8, !noalias !6589
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !6589
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !6589
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !6589
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6595)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6598)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6600)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6603)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !6605, !noalias !6606, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.x, i64 %.pre-phi.i, i1 false), !noalias !6607
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !6605, !noalias !6606, !noundef !8 ; 3 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableFunctionEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.val3.i.i.i.i = load <16 x i8>, ptr %i.x, align 16, !noalias !6608
  %i.ab = icmp sgt <16 x i8> %.val3.i.i.i.i, splat (i8 -1)
  %i.ac = bitcast <16 x i1> %i.ab to i16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.af = ptrtoint ptr %i.x to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB20_4sync3ArcNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableFunctionEEEENCNvMse_B1D_B1A_15clone_from_impl0EECs2VbMhdeEr66_16delta_benchmarks(i64 %.sroa.012.027.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #34
          to label %.body.i unwind label %bb.m, !noalias !6611

bb.j:                                             ; preds = %bb.l, %.lr.ph.i.i.i
  %.sroa.012.027.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.bd, %bb.l ]
  %.sroa.013.026.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %.sroa.013.1.i.i.i, %bb.l ] ; 2 uses
  %.sroa.6.025.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %.sroa.6.1.i.i.i, %bb.l ] ; 2 uses
  %.sroa.814.024.i.i.i = phi i16 [ %i.ac, %.lr.ph.i.i.i ], [ %i.ap, %bb.l ] ; 2 uses
  %.sroa.1015.023.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i ], [ %i.as, %bb.l ]
  %.not12.i.i.i.i = icmp eq i16 %.sroa.814.024.i.i.i, 0
  br i1 %.not12.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.ah = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %.sroa.6.025.i.i.i, %bb.j ] ; 2 uses
  %i.ai = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %.sroa.013.026.i.i.i, %bb.j ]
  %.val10.i.i.i.i = load <16 x i8>, ptr %i.ah, align 16, !noalias !6612
  %i.aj = icmp sgt <16 x i8> %.val10.i.i.i.i, splat (i8 -1)
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -512 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.aj to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.j
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.025.i.i.i, %bb.j ], [ %i.al, %.lr.ph.i.i.i.i ]
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.026.i.i.i, %bb.j ], [ %i.ak, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.814.024.i.i.i, %bb.j ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.am = add i16 %.lcssa.i.i.i.i, -1
  %i.an = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.ao = zext nneg i16 %i.an to i64
  %i.ap = and i16 %i.am, %.lcssa.i.i.i.i
  %i.aq = sub nsw i64 0, %i.ao
  %i.ar = getelementptr inbounds [32 x i8], ptr %.sroa.013.1.i.i.i, i64 %i.aq ; 3 uses
  %i.as = add i64 %.sroa.1015.023.i.i.i, -1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6607
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 -32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6615)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6618)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.at)
          to label %.noexc.i.i.i unwind label %bb.i, !noalias !6607

.noexc.i.i.i:                                     ; preds = %.loopexit.i.i.i
  %i.au = getelementptr inbounds i8, ptr %i.ar, i64 -8
  %.val.i.i.i.i = load ptr, ptr %i.au, align 8, !alias.scope !6618, !noalias !6620, !nonnull !8, !noundef !8 ; 2 uses
  %i.av = atomicrmw add ptr %.val.i.i.i.i, i64 1 monotonic, align 8, !noalias !6620
  %i.aw = icmp slt i64 %i.av, 0
  br i1 %i.aw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc.i.i.i
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %.noexc.i.i.i
  store ptr %.val.i.i.i.i, ptr %i.ae, align 8, !alias.scope !6615, !noalias !6621
  %i.ax = ptrtoint ptr %i.ar to i64
  %i.ay = sub i64 %i.af, %i.ax
  %i.az = ashr exact i64 %i.ay, 5                 ; 2 uses
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = getelementptr inbounds [32 x i8], ptr %.sroa.0.0.i, i64 %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !6607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6607
  %i.bd = add nsw i64 %i.az, 1
  %i.be = icmp eq i64 %i.as, 0
  br i1 %i.be, label %.loopexit.i, label %bb.j

bb.m:                                             ; preds = %bb.i
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6607
  unreachable

.body.i:                                          ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1r_4sync3ArcNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableFunctionEEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.b) #34
          to label %bb.o unwind label %bb.n, !noalias !6589

.loopexit.i:                                      ; preds = %bb.l, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableFunctionEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  store i64 %i.z, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !6622, !noalias !6611
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !6605, !noalias !6606, !noundef !8
  store i64 %i.bh, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !6622, !noalias !6611
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !6584
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6589
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableFunctionEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.n:                                             ; preds = %.body.i
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6589
  unreachable

bb.o:                                             ; preds = %.body.i
  resume { ptr, i32 } %i.ag

_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableFunctionEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %.loopexit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.e, ptr %i.bj, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBO_4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12PreparedPlanENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x i64>, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6623)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !6623, !noalias !6626, !noundef !8 ; 6 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false), !noalias !6623
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12PreparedPlanEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6628
  %i.i = add i64 %i.g, 1                          ; 3 uses
  %i.j = icmp ugt i64 %i.i, 576460752303423487
  br i1 %i.j, label %bb.e, label %bb.d, !prof !229

bb.d:                                             ; preds = %bb.c
  %i.k = shl nuw i64 %i.i, 5                      ; 3 uses
  %i.l = add nsw i64 %i.g, 17                     ; 2 uses
  %i.m = add i64 %i.k, %i.l                       ; 4 uses
  %i.n = icmp ult i64 %i.m, %i.k
  %i.o = icmp ugt i64 %i.m, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.n, %i.o
  br i1 %or.cond.i.i.i, label %bb.e, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i, !prof !6227

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.d
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !6629
  %i.p = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !6629 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !6629
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.s = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.m), !noalias !6629
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i = phi { i64, i64 } [ %i.s, %bb.f ], [ %i.r, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 1
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12PreparedPlanEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.k
  %i.u = icmp ult i64 %i.g, 8
  %i.v = lshr i64 %i.i, 3
  %i.w = mul nuw nsw i64 %i.v, 7
  %.sroa.07.0.i.i.i = select i1 %i.u, i64 %i.g, i64 %i.w
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12PreparedPlanEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12PreparedPlanEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.g ], [ %i.l, %bb.h ]
  %.sroa.7.0.i = phi i64 [ %.sroa.12.0.ph.i.i, %bb.g ], [ %.sroa.07.0.i.i.i, %bb.h ]
  %.sroa.5.0.i = phi i64 [ %.sroa.7.0.ph.i.i, %bb.g ], [ %i.g, %bb.h ]
  %.sroa.0.0.i = phi ptr [ null, %bb.g ], [ %i.t, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0.i, ptr %i.b, align 8, !noalias !6628
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !6628
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !6628
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !6628
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6634)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6637)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6639)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6642)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !6644, !noalias !6645, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.x, i64 %.pre-phi.i, i1 false), !noalias !6646
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !6644, !noalias !6645, !noundef !8 ; 3 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12PreparedPlanEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.val3.i.i.i.i = load <16 x i8>, ptr %i.x, align 16, !noalias !6647
  %i.ab = icmp sgt <16 x i8> %.val3.i.i.i.i, splat (i8 -1)
  %i.ac = bitcast <16 x i1> %i.ab to i16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.af = ptrtoint ptr %i.x to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB20_4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12PreparedPlanEEEENCNvMse_B1D_B1A_15clone_from_impl0EECs2VbMhdeEr66_16delta_benchmarks(i64 %.sroa.012.027.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #34
          to label %.body.i unwind label %bb.m, !noalias !6650

bb.j:                                             ; preds = %bb.l, %.lr.ph.i.i.i
  %.sroa.012.027.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.bd, %bb.l ]
  %.sroa.013.026.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %.sroa.013.1.i.i.i, %bb.l ] ; 2 uses
  %.sroa.6.025.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %.sroa.6.1.i.i.i, %bb.l ] ; 2 uses
  %.sroa.814.024.i.i.i = phi i16 [ %i.ac, %.lr.ph.i.i.i ], [ %i.ap, %bb.l ] ; 2 uses
  %.sroa.1015.023.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i ], [ %i.as, %bb.l ]
  %.not12.i.i.i.i = icmp eq i16 %.sroa.814.024.i.i.i, 0
  br i1 %.not12.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.ah = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %.sroa.6.025.i.i.i, %bb.j ] ; 2 uses
  %i.ai = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %.sroa.013.026.i.i.i, %bb.j ]
  %.val10.i.i.i.i = load <16 x i8>, ptr %i.ah, align 16, !noalias !6651
  %i.aj = icmp sgt <16 x i8> %.val10.i.i.i.i, splat (i8 -1)
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -512 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.aj to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.j
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.025.i.i.i, %bb.j ], [ %i.al, %.lr.ph.i.i.i.i ]
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.026.i.i.i, %bb.j ], [ %i.ak, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.814.024.i.i.i, %bb.j ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.am = add i16 %.lcssa.i.i.i.i, -1
  %i.an = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.ao = zext nneg i16 %i.an to i64
  %i.ap = and i16 %i.am, %.lcssa.i.i.i.i
  %i.aq = sub nsw i64 0, %i.ao
  %i.ar = getelementptr inbounds [32 x i8], ptr %.sroa.013.1.i.i.i, i64 %i.aq ; 3 uses
  %i.as = add i64 %.sroa.1015.023.i.i.i, -1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6646
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 -32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6654)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6657)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.at)
          to label %.noexc.i.i.i unwind label %bb.i, !noalias !6646

.noexc.i.i.i:                                     ; preds = %.loopexit.i.i.i
  %i.au = getelementptr inbounds i8, ptr %i.ar, i64 -8
  %.val.i.i.i.i = load ptr, ptr %i.au, align 8, !alias.scope !6657, !noalias !6659, !nonnull !8, !noundef !8 ; 2 uses
  %i.av = atomicrmw add ptr %.val.i.i.i.i, i64 1 monotonic, align 8, !noalias !6659
  %i.aw = icmp slt i64 %i.av, 0
  br i1 %i.aw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc.i.i.i
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %.noexc.i.i.i
  store ptr %.val.i.i.i.i, ptr %i.ae, align 8, !alias.scope !6654, !noalias !6660
  %i.ax = ptrtoint ptr %i.ar to i64
  %i.ay = sub i64 %i.af, %i.ax
  %i.az = ashr exact i64 %i.ay, 5                 ; 2 uses
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = getelementptr inbounds [32 x i8], ptr %.sroa.0.0.i, i64 %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !6646
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6646
  %i.bd = add nsw i64 %i.az, 1
  %i.be = icmp eq i64 %i.as, 0
  br i1 %i.be, label %.loopexit.i, label %bb.j

bb.m:                                             ; preds = %bb.i
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6646
  unreachable

.body.i:                                          ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1r_4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12PreparedPlanEEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.b) #34
          to label %bb.o unwind label %bb.n, !noalias !6628

.loopexit.i:                                      ; preds = %bb.l, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12PreparedPlanEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  store i64 %i.z, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !6661, !noalias !6650
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !6644, !noalias !6645, !noundef !8
  store i64 %i.bh, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !6661, !noalias !6650
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !6623
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6628
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12PreparedPlanEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.n:                                             ; preds = %.body.i
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6628
  unreachable

bb.o:                                             ; preds = %.body.i
  resume { ptr, i32 } %i.ag

_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12PreparedPlanEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %.loopexit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.e, ptr %i.bj, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBO_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x i64>, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6662)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !6662, !noalias !6665, !noundef !8 ; 6 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false), !noalias !6662
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6667
  %i.i = add i64 %i.g, 1                          ; 3 uses
  %i.j = icmp ugt i64 %i.i, 576460752303423487
  br i1 %i.j, label %bb.e, label %bb.d, !prof !229

bb.d:                                             ; preds = %bb.c
  %i.k = shl nuw i64 %i.i, 5                      ; 3 uses
  %i.l = add nsw i64 %i.g, 17                     ; 2 uses
  %i.m = add i64 %i.k, %i.l                       ; 4 uses
  %i.n = icmp ult i64 %i.m, %i.k
  %i.o = icmp ugt i64 %i.m, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.n, %i.o
  br i1 %or.cond.i.i.i, label %bb.e, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i, !prof !6227

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.d
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !6668
  %i.p = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !6668 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !6668
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.s = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.m), !noalias !6668
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i = phi { i64, i64 } [ %i.s, %bb.f ], [ %i.r, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 1
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.k
  %i.u = icmp ult i64 %i.g, 8
  %i.v = lshr i64 %i.i, 3
  %i.w = mul nuw nsw i64 %i.v, 7
  %.sroa.07.0.i.i.i = select i1 %i.u, i64 %i.g, i64 %i.w
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.g ], [ %i.l, %bb.h ]
  %.sroa.7.0.i = phi i64 [ %.sroa.12.0.ph.i.i, %bb.g ], [ %.sroa.07.0.i.i.i, %bb.h ]
  %.sroa.5.0.i = phi i64 [ %.sroa.7.0.ph.i.i, %bb.g ], [ %i.g, %bb.h ]
  %.sroa.0.0.i = phi ptr [ null, %bb.g ], [ %i.t, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0.i, ptr %i.b, align 8, !noalias !6667
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !6667
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !6667
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !6667
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6673)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6676)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6681)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !6683, !noalias !6684, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.x, i64 %.pre-phi.i, i1 false), !noalias !6685
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !6683, !noalias !6684, !noundef !8 ; 3 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.val3.i.i.i.i = load <16 x i8>, ptr %i.x, align 16, !noalias !6686
  %i.ab = icmp sgt <16 x i8> %.val3.i.i.i.i, splat (i8 -1)
  %i.ac = bitcast <16 x i1> %i.ab to i16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.af = ptrtoint ptr %i.x to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB20_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEEENCNvMse_B1D_B1A_15clone_from_impl0EECs2VbMhdeEr66_16delta_benchmarks(i64 %.sroa.012.027.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #34
          to label %.body.i unwind label %bb.m, !noalias !6689

bb.j:                                             ; preds = %bb.l, %.lr.ph.i.i.i
  %.sroa.012.027.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.bd, %bb.l ]
  %.sroa.013.026.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %.sroa.013.1.i.i.i, %bb.l ] ; 2 uses
  %.sroa.6.025.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %.sroa.6.1.i.i.i, %bb.l ] ; 2 uses
  %.sroa.814.024.i.i.i = phi i16 [ %i.ac, %.lr.ph.i.i.i ], [ %i.ap, %bb.l ] ; 2 uses
  %.sroa.1015.023.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i ], [ %i.as, %bb.l ]
  %.not12.i.i.i.i = icmp eq i16 %.sroa.814.024.i.i.i, 0
  br i1 %.not12.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.ah = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %.sroa.6.025.i.i.i, %bb.j ] ; 2 uses
  %i.ai = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %.sroa.013.026.i.i.i, %bb.j ]
  %.val10.i.i.i.i = load <16 x i8>, ptr %i.ah, align 16, !noalias !6690
  %i.aj = icmp sgt <16 x i8> %.val10.i.i.i.i, splat (i8 -1)
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -512 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.aj to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.j
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.025.i.i.i, %bb.j ], [ %i.al, %.lr.ph.i.i.i.i ]
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.026.i.i.i, %bb.j ], [ %i.ak, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.814.024.i.i.i, %bb.j ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.am = add i16 %.lcssa.i.i.i.i, -1
  %i.an = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.ao = zext nneg i16 %i.an to i64
  %i.ap = and i16 %i.am, %.lcssa.i.i.i.i
  %i.aq = sub nsw i64 0, %i.ao
  %i.ar = getelementptr inbounds [32 x i8], ptr %.sroa.013.1.i.i.i, i64 %i.aq ; 3 uses
  %i.as = add i64 %.sroa.1015.023.i.i.i, -1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6685
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 -32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6693)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6696)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.at)
          to label %.noexc.i.i.i unwind label %bb.i, !noalias !6685

.noexc.i.i.i:                                     ; preds = %.loopexit.i.i.i
  %i.au = getelementptr inbounds i8, ptr %i.ar, i64 -8
  %.val.i.i.i.i = load ptr, ptr %i.au, align 8, !alias.scope !6696, !noalias !6698, !nonnull !8, !noundef !8 ; 2 uses
  %i.av = atomicrmw add ptr %.val.i.i.i.i, i64 1 monotonic, align 8, !noalias !6698
  %i.aw = icmp slt i64 %i.av, 0
  br i1 %i.aw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc.i.i.i
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %.noexc.i.i.i
  store ptr %.val.i.i.i.i, ptr %i.ae, align 8, !alias.scope !6693, !noalias !6699
  %i.ax = ptrtoint ptr %i.ar to i64
  %i.ay = sub i64 %i.af, %i.ax
  %i.az = ashr exact i64 %i.ay, 5                 ; 2 uses
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = getelementptr inbounds [32 x i8], ptr %.sroa.0.0.i, i64 %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !6685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6685
  %i.bd = add nsw i64 %i.az, 1
  %i.be = icmp eq i64 %i.as, 0
  br i1 %i.be, label %.loopexit.i, label %bb.j

bb.m:                                             ; preds = %bb.i
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6685
  unreachable

.body.i:                                          ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1r_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.b) #34
          to label %bb.o unwind label %bb.n, !noalias !6667

.loopexit.i:                                      ; preds = %bb.l, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  store i64 %i.z, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !6700, !noalias !6689
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !6683, !noalias !6684, !noundef !8
  store i64 %i.bh, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !6700, !noalias !6689
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !6662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6667
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.n:                                             ; preds = %.body.i
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6667
  unreachable

bb.o:                                             ; preds = %.body.i
  resume { ptr, i32 } %i.ag

_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %.loopexit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.e, ptr %i.bj, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBK_ENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtB1r_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x i64>, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6701)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !6701, !noalias !6704, !noundef !8 ; 6 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false), !noalias !6701
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEENtNtB1w_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6706
  %i.i = add i64 %i.g, 1                          ; 2 uses
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.i, i64 range(i64 8, 353) 48) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.d, !prof !229

bb.d:                                             ; preds = %bb.c
  %i.l = extractvalue { i64, i1 } %i.j, 0         ; 3 uses
  %i.m = add i64 %i.g, 17                         ; 2 uses
  %i.n = add i64 %i.l, %i.m                       ; 4 uses
  %i.o = icmp ult i64 %i.n, %i.l
  %i.p = icmp ugt i64 %i.n, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.o, %i.p
  br i1 %or.cond.i.i.i, label %bb.e, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i, !prof !6227

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.d
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !6707
  %i.q = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !6707 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !6707
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.t = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.n), !noalias !6707
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i = phi { i64, i64 } [ %i.t, %bb.f ], [ %i.s, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 1
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.l
  %i.v = icmp ult i64 %i.g, 8
  %i.w = lshr i64 %i.i, 3
  %i.x = mul nuw nsw i64 %i.w, 7
  %.sroa.07.0.i.i.i = select i1 %i.v, i64 %i.g, i64 %i.x
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.g ], [ %i.m, %bb.h ]
  %.sroa.7.0.i = phi i64 [ %.sroa.12.0.ph.i.i, %bb.g ], [ %.sroa.07.0.i.i.i, %bb.h ]
  %.sroa.5.0.i = phi i64 [ %.sroa.7.0.ph.i.i, %bb.g ], [ %i.g, %bb.h ]
  %.sroa.0.0.i = phi ptr [ null, %bb.g ], [ %i.u, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0.i, ptr %i.b, align 8, !noalias !6706
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !6706
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !6706
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !6706
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6712)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6715)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6717)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6720)
  %i.y = load ptr, ptr %1, align 8, !alias.scope !6722, !noalias !6723, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.y, i64 %.pre-phi.i, i1 false), !noalias !6724
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !6722, !noalias !6723, !noundef !8 ; 3 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.val3.i.i.i.i = load <16 x i8>, ptr %i.y, align 16, !noalias !6725
  %i.ac = icmp sgt <16 x i8> %.val3.i.i.i.i, splat (i8 -1)
  %i.ad = bitcast <16 x i1> %i.ac to i16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.ag = ptrtoint ptr %i.y to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.m, %bb.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ah, %bb.i ], [ %i.ax, %bb.m ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1W_EEEENCNvMse_B1D_B1A_15clone_from_impl0EECs2VbMhdeEr66_16delta_benchmarks(i64 %.sroa.012.028.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #34
          to label %.body.i unwind label %bb.o, !noalias !6728

bb.j:                                             ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB3_EENtNtBK_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.012.028.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.bf, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB3_EENtNtBK_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ]
  %.sroa.013.027.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %.sroa.013.1.i.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB3_EENtNtBK_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.sroa.6.026.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %.sroa.6.1.i.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB3_EENtNtBK_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.sroa.814.025.i.i.i = phi i16 [ %i.ad, %.lr.ph.i.i.i ], [ %i.aq, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB3_EENtNtBK_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.sroa.1015.024.i.i.i = phi i64 [ %i.aa, %.lr.ph.i.i.i ], [ %i.at, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB3_EENtNtBK_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ]
  %.not12.i.i.i.i = icmp eq i16 %.sroa.814.025.i.i.i, 0
  br i1 %.not12.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.ai = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %.sroa.6.026.i.i.i, %bb.j ] ; 2 uses
  %i.aj = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %.sroa.013.027.i.i.i, %bb.j ]
  %.val10.i.i.i.i = load <16 x i8>, ptr %i.ai, align 16, !noalias !6729
  %i.ak = icmp sgt <16 x i8> %.val10.i.i.i.i, splat (i8 -1)
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -768 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.ak to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.j
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.026.i.i.i, %bb.j ], [ %i.am, %.lr.ph.i.i.i.i ]
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.027.i.i.i, %bb.j ], [ %i.al, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.814.025.i.i.i, %bb.j ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.an = add i16 %.lcssa.i.i.i.i, -1
  %i.ao = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = and i16 %i.an, %.lcssa.i.i.i.i
  %i.ar = sub nsw i64 0, %i.ap
  %i.as = getelementptr inbounds [48 x i8], ptr %.sroa.013.1.i.i.i, i64 %i.ar ; 3 uses
  %i.at = add i64 %.sroa.1015.024.i.i.i, -1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6724
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 -48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6732)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6735)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.au)
          to label %.noexc.i.i.i unwind label %bb.i, !noalias !6724

.noexc.i.i.i:                                     ; preds = %.loopexit.i.i.i
  %i.av = getelementptr inbounds i8, ptr %i.as, i64 -24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6737)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6740)
  %i.aw = load i64, ptr %i.av, align 8, !range !311, !alias.scope !6742, !noalias !6743, !noundef !8
  %.not.i.i.i.i.i = icmp eq i64 %i.aw, -9223372036854775808
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.noexc.i.i.i
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.av)
          to label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB3_EENtNtBK_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.m, !noalias !6724

bb.l:                                             ; preds = %.noexc.i.i.i
  store i64 -9223372036854775808, ptr %i.af, align 8, !alias.scope !6744, !noalias !6745
  br label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB3_EENtNtBK_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) #34
          to label %.body.i.i.i unwind label %bb.n, !noalias !6724

bb.n:                                             ; preds = %bb.m
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6724
  unreachable

_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB3_EENtNtBK_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %bb.l, %bb.k
  %i.az = ptrtoint ptr %i.as to i64
  %i.ba = sub i64 %i.ag, %i.az
  %i.bb = sdiv exact i64 %i.ba, 48                ; 2 uses
  %i.bc = sub nsw i64 0, %i.bb
  %i.bd = getelementptr inbounds [48 x i8], ptr %.sroa.0.0.i, i64 %i.bc
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.be, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !6724
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6724
  %i.bf = add nsw i64 %i.bb, 1
  %i.bg = icmp eq i64 %i.at, 0
  br i1 %i.bg, label %.loopexit.i, label %bb.j

bb.o:                                             ; preds = %.body.i.i.i
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6724
  unreachable

.body.i:                                          ; preds = %.body.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1n_EEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.b) #34
          to label %bb.q unwind label %bb.p, !noalias !6706

.loopexit.i:                                      ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB3_EENtNtBK_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  store i64 %i.aa, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !6746, !noalias !6728
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !6722, !noalias !6723, !noundef !8
  store i64 %i.bj, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !6746, !noalias !6728
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !6701
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6706
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEENtNtB1w_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.p:                                             ; preds = %.body.i
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6706
  unreachable

bb.q:                                             ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEENtNtB1w_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %.loopexit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.e, ptr %i.bl, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 16              ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x i64>, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6747)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !6747, !noalias !6750, !noundef !8 ; 6 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false), !noalias !6747
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6752
  %i.i = add i64 %i.g, 1                          ; 2 uses
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.i, i64 range(i64 8, 353) 144) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.d, !prof !229

bb.d:                                             ; preds = %bb.c
  %i.l = extractvalue { i64, i1 } %i.j, 0         ; 3 uses
  %i.m = add i64 %i.g, 17                         ; 2 uses
  %i.n = add i64 %i.l, %i.m                       ; 4 uses
  %i.o = icmp ult i64 %i.n, %i.l
  %i.p = icmp ugt i64 %i.n, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.o, %i.p
  br i1 %or.cond.i.i.i, label %bb.e, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i, !prof !6227

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.d
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !6753
  %i.q = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !6753 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !6753
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.t = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.n), !noalias !6753
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i = phi { i64, i64 } [ %i.t, %bb.f ], [ %i.s, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 1
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.l
  %i.v = icmp ult i64 %i.g, 8
  %i.w = lshr i64 %i.i, 3
  %i.x = mul nuw nsw i64 %i.w, 7
  %.sroa.07.0.i.i.i = select i1 %i.v, i64 %i.g, i64 %i.x
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.g ], [ %i.m, %bb.h ]
  %.sroa.7.0.i = phi i64 [ %.sroa.12.0.ph.i.i, %bb.g ], [ %.sroa.07.0.i.i.i, %bb.h ]
  %.sroa.5.0.i = phi i64 [ %.sroa.7.0.ph.i.i, %bb.g ], [ %i.g, %bb.h ]
  %.sroa.0.0.i = phi ptr [ null, %bb.g ], [ %i.u, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0.i, ptr %i.b, align 8, !noalias !6752
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !6752
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !6752
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !6752
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6758)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6761)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6763)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6766)
  %i.y = load ptr, ptr %1, align 8, !alias.scope !6768, !noalias !6769, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.y, i64 %.pre-phi.i, i1 false), !noalias !6770
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !6768, !noalias !6769, !noundef !8 ; 3 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.val3.i.i.i.i = load <16 x i8>, ptr %i.y, align 16, !noalias !6771
  %i.ac = icmp sgt <16 x i8> %.val3.i.i.i.i, splat (i8 -1)
  %i.ad = bitcast <16 x i1> %i.ac to i16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ag = ptrtoint ptr %i.y to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.k, %bb.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ah, %bb.i ], [ %i.aw, %bb.k ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEENCNvMse_B1D_B1A_15clone_from_impl0EECs2VbMhdeEr66_16delta_benchmarks(i64 %.sroa.012.028.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #34
          to label %.body.i unwind label %bb.m, !noalias !6774

bb.j:                                             ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.012.028.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.be, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ]
  %.sroa.013.027.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %.sroa.013.1.i.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.sroa.6.026.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %.sroa.6.1.i.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.sroa.814.025.i.i.i = phi i16 [ %i.ad, %.lr.ph.i.i.i ], [ %i.aq, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.sroa.1015.024.i.i.i = phi i64 [ %i.aa, %.lr.ph.i.i.i ], [ %i.at, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ]
  %.not12.i.i.i.i = icmp eq i16 %.sroa.814.025.i.i.i, 0
  br i1 %.not12.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.ai = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %.sroa.6.026.i.i.i, %bb.j ] ; 2 uses
  %i.aj = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %.sroa.013.027.i.i.i, %bb.j ]
  %.val10.i.i.i.i = load <16 x i8>, ptr %i.ai, align 16, !noalias !6775
  %i.ak = icmp sgt <16 x i8> %.val10.i.i.i.i, splat (i8 -1)
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -2304 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.ak to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.j
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.026.i.i.i, %bb.j ], [ %i.am, %.lr.ph.i.i.i.i ]
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.027.i.i.i, %bb.j ], [ %i.al, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.814.025.i.i.i, %bb.j ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.an = add i16 %.lcssa.i.i.i.i, -1
  %i.ao = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = and i16 %i.an, %.lcssa.i.i.i.i
  %i.ar = sub nsw i64 0, %i.ap
  %i.as = getelementptr inbounds [144 x i8], ptr %.sroa.013.1.i.i.i, i64 %i.ar ; 3 uses
  %i.at = add i64 %.sroa.1015.024.i.i.i, -1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6770
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 -144
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 16 captures(none) dereferenceable(144) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(144) %i.au)
          to label %.noexc.i.i.i unwind label %bb.i, !noalias !6770

.noexc.i.i.i:                                     ; preds = %.loopexit.i.i.i
  %i.av = getelementptr inbounds i8, ptr %i.as, i64 -112
  invoke fastcc void @_RNvXsV_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.af, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.av)
          to label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.k, !noalias !6770

bb.k:                                             ; preds = %.noexc.i.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(144) %i.a) #34
          to label %.body.i.i.i unwind label %bb.l, !noalias !6770

bb.l:                                             ; preds = %bb.k
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6770
  unreachable

_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %.noexc.i.i.i
  %i.ay = ptrtoint ptr %i.as to i64
  %i.az = sub i64 %i.ag, %i.ay
  %i.ba = sdiv exact i64 %i.az, 144               ; 2 uses
  %i.bb = sub nsw i64 0, %i.ba
  %i.bc = getelementptr inbounds [144 x i8], ptr %.sroa.0.0.i, i64 %i.bb
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.bd, ptr noundef nonnull align 16 dereferenceable(144) %i.a, i64 144, i1 false), !noalias !6770
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6770
  %i.be = add nsw i64 %i.ba, 1
  %i.bf = icmp eq i64 %i.at, 0
  br i1 %i.bf, label %.loopexit.i, label %bb.j

bb.m:                                             ; preds = %.body.i.i.i
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6770
  unreachable

.body.i:                                          ; preds = %.body.i.i.i
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.n, !noalias !6752

.loopexit.i:                                      ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  store i64 %i.aa, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !6778, !noalias !6774
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !6768, !noalias !6769, !noundef !8
  store i64 %i.bi, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !6778, !noalias !6774
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !6747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6752
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.n:                                             ; preds = %.body.i
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6752
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %.loopexit.i
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.e, ptr %i.bk, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 10 uses
  %i.b = alloca [56 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 9 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load <2 x i64>, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6779)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !6779, !noalias !6782, !noundef !8 ; 6 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false), !noalias !6779
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6784
  %i.j = add i64 %i.h, 1                          ; 2 uses
  %i.k = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.j, i64 range(i64 8, 353) 56) ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 1
  br i1 %i.l, label %bb.e, label %bb.d, !prof !229

bb.d:                                             ; preds = %bb.c
  %i.m = extractvalue { i64, i1 } %i.k, 0
  %i.n = add nuw i64 %i.m, 8
  %i.o = and i64 %i.n, -16                        ; 3 uses
  %i.p = add i64 %i.h, 17                         ; 2 uses
  %i.q = add i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp ult i64 %i.q, %i.o
  %i.s = icmp ugt i64 %i.q, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.r, %i.s
  br i1 %or.cond.i.i.i, label %bb.e, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i, !prof !6227

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.d
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !6785
  %i.t = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !6785 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.v = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !6785
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.w = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.q), !noalias !6785
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i = phi { i64, i64 } [ %i.w, %bb.f ], [ %i.v, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 1
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.o
  %i.y = icmp ult i64 %i.h, 8
  %i.z = lshr i64 %i.j, 3
  %i.aa = mul nuw nsw i64 %i.z, 7
  %.sroa.07.0.i.i.i = select i1 %i.y, i64 %i.h, i64 %i.aa
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.g ], [ %i.p, %bb.h ]
  %.sroa.7.0.i = phi i64 [ %.sroa.12.0.ph.i.i, %bb.g ], [ %.sroa.07.0.i.i.i, %bb.h ]
  %.sroa.5.0.i = phi i64 [ %.sroa.7.0.ph.i.i, %bb.g ], [ %i.h, %bb.h ]
  %.sroa.0.0.i = phi ptr [ null, %bb.g ], [ %i.x, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0.i, ptr %i.c, align 8, !noalias !6784
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !6784
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 %.sroa.7.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !6784
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !6784
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6790)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6793)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6795)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6798)
  %i.ab = load ptr, ptr %1, align 8, !alias.scope !6800, !noalias !6801, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.ab, i64 %.pre-phi.i, i1 false), !noalias !6802
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !6800, !noalias !6801, !noundef !8 ; 3 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.val3.i.i.i.i = load <16 x i8>, ptr %i.ab, align 16, !noalias !6803
  %i.af = icmp sgt <16 x i8> %.val3.i.i.i.i, splat (i8 -1)
  %i.ag = bitcast <16 x i1> %i.af to i16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.al = ptrtoint ptr %i.ab to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.v, %bb.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.am, %bb.i ], [ %i.bi, %bb.v ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEEENCNvMse_B1D_B1A_15clone_from_impl0EECs2VbMhdeEr66_16delta_benchmarks(i64 %.sroa.012.030.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.c) #34
          to label %.body.i unwind label %bb.x, !noalias !6806

bb.j:                                             ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.012.030.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.bq, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ]
  %.sroa.013.029.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %.sroa.013.1.i.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.sroa.6.028.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %.sroa.6.1.i.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.sroa.814.027.i.i.i = phi i16 [ %i.ag, %.lr.ph.i.i.i ], [ %i.av, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.sroa.1015.026.i.i.i = phi i64 [ %i.ad, %.lr.ph.i.i.i ], [ %i.ay, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ]
  %.not12.i.i.i.i = icmp eq i16 %.sroa.814.027.i.i.i, 0
  br i1 %.not12.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.an = phi ptr [ %i.ar, %.lr.ph.i.i.i.i ], [ %.sroa.6.028.i.i.i, %bb.j ] ; 2 uses
  %i.ao = phi ptr [ %i.aq, %.lr.ph.i.i.i.i ], [ %.sroa.013.029.i.i.i, %bb.j ]
  %.val10.i.i.i.i = load <16 x i8>, ptr %i.an, align 16, !noalias !6807
  %i.ap = icmp sgt <16 x i8> %.val10.i.i.i.i, splat (i8 -1)
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 -896 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.ap to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.j
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.028.i.i.i, %bb.j ], [ %i.ar, %.lr.ph.i.i.i.i ]
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.029.i.i.i, %bb.j ], [ %i.aq, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.814.027.i.i.i, %bb.j ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.as = add i16 %.lcssa.i.i.i.i, -1
  %i.at = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.au = zext nneg i16 %i.at to i64
  %i.av = and i16 %i.as, %.lcssa.i.i.i.i
  %i.aw = sub nsw i64 0, %i.au
  %i.ax = getelementptr inbounds [56 x i8], ptr %.sroa.013.1.i.i.i, i64 %i.aw ; 7 uses
  %i.ay = add i64 %.sroa.1015.026.i.i.i, -1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6802
  %i.az = getelementptr inbounds i8, ptr %i.ax, i64 -56
  call void @llvm.experimental.noalias.scope.decl(metadata !6810)
  call void @llvm.experimental.noalias.scope.decl(metadata !6813)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.az)
          to label %.noexc.i.i.i unwind label %bb.i, !noalias !6802

.noexc.i.i.i:                                     ; preds = %.loopexit.i.i.i
  %i.ba = getelementptr inbounds i8, ptr %i.ax, i64 -32 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6815)
  call void @llvm.experimental.noalias.scope.decl(metadata !6818)
  %i.bb = load i8, ptr %i.ba, align 8, !range !1836, !alias.scope !6820, !noalias !6821, !noundef !8 ; 3 uses
  %i.bc = add nsw i8 %i.bb, -6
  %i.bd = icmp samesign ugt i8 %i.bb, 5
  %narrow.i.i.i.i.i = select i1 %i.bd, i8 %i.bc, i8 3
  switch i8 %narrow.i.i.i.i.i, label %bb.k [
    i8 0, label %bb.l
    i8 1, label %bb.m
    i8 2, label %bb.n
    i8 3, label %bb.o
  ]

bb.k:                                             ; preds = %.noexc.i.i.i
  unreachable

bb.l:                                             ; preds = %.noexc.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ba, i64 32, i1 false), !alias.scope !6822, !noalias !6802
  br label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

bb.m:                                             ; preds = %.noexc.i.i.i
  %i.be = getelementptr inbounds i8, ptr %i.ax, i64 -24
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.be)
          to label %.noexc.i.i.i.i unwind label %bb.v, !noalias !6802

.noexc.i.i.i.i:                                   ; preds = %bb.m
  store i8 7, ptr %i.ai, align 8, !alias.scope !6823, !noalias !6824
  br label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

bb.n:                                             ; preds = %.noexc.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ba, i64 32, i1 false), !alias.scope !6822, !noalias !6802
  br label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

bb.o:                                             ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6825
  call void @llvm.experimental.noalias.scope.decl(metadata !6826)
  switch i8 %i.bb, label %default.unreachable1.i.i.i.i.i.i [
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
  store i8 0, ptr %i.a, align 8, !alias.scope !6829, !noalias !6831
  br label %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ba, i64 32, i1 false), !alias.scope !6832, !noalias !6821
  br label %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i.i

bb.r:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ba, i64 32, i1 false), !alias.scope !6832, !noalias !6821
  br label %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i.i

bb.s:                                             ; preds = %bb.o
  %i.bf = getelementptr inbounds i8, ptr %i.ax, i64 -24
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bf)
          to label %.noexc1.i.i.i.i unwind label %bb.v, !noalias !6833

.noexc1.i.i.i.i:                                  ; preds = %bb.s
  store i8 3, ptr %i.a, align 8, !alias.scope !6829, !noalias !6831
  br label %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i.i

bb.t:                                             ; preds = %bb.o
  %i.bg = getelementptr inbounds i8, ptr %i.ax, i64 -24
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bg)
          to label %.noexc2.i.i.i.i unwind label %bb.v, !noalias !6833

.noexc2.i.i.i.i:                                  ; preds = %bb.t
  store i8 4, ptr %i.a, align 8, !alias.scope !6829, !noalias !6831
  br label %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i.i

bb.u:                                             ; preds = %bb.o
  %i.bh = getelementptr inbounds i8, ptr %i.ax, i64 -24
  invoke void @_RNvXs0_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bh)
          to label %.noexc3.i.i.i.i unwind label %bb.v, !noalias !6833

.noexc3.i.i.i.i:                                  ; preds = %bb.u
  store i8 5, ptr %i.a, align 8, !alias.scope !6829, !noalias !6831
  br label %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i.i

_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i.i: ; preds = %.noexc3.i.i.i.i, %.noexc2.i.i.i.i, %.noexc1.i.i.i.i, %bb.r, %bb.q, %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !6824
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6825
  br label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.m
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b) #34
          to label %.body.i.i.i unwind label %bb.w, !noalias !6802

bb.w:                                             ; preds = %bb.v
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6802
  unreachable

_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i.i, %bb.n, %.noexc.i.i.i.i, %bb.l
  %i.bk = ptrtoint ptr %i.ax to i64
  %i.bl = sub i64 %i.al, %i.bk
  %i.bm = sdiv exact i64 %i.bl, 56                ; 2 uses
  %i.bn = sub nsw i64 0, %i.bm
  %i.bo = getelementptr inbounds [56 x i8], ptr %.sroa.0.0.i, i64 %i.bn
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bp, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !noalias !6802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6802
  %i.bq = add nsw i64 %i.bm, 1
  %i.br = icmp eq i64 %i.ay, 0
  br i1 %i.br, label %.loopexit.i, label %bb.j

bb.x:                                             ; preds = %.body.i.i.i
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6802
  unreachable

.body.i:                                          ; preds = %.body.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.c) #34
          to label %bb.z unwind label %bb.y, !noalias !6784

.loopexit.i:                                      ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  store i64 %i.ad, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !6834, !noalias !6806
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !6800, !noalias !6801, !noundef !8
  store i64 %i.bu, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !6834, !noalias !6806
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !noalias !6779
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6784
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.y:                                             ; preds = %.body.i
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6784
  unreachable

bb.z:                                             ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %.loopexit.i
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.f, ptr %i.bw, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6835)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !6835, !noalias !6838, !noundef !8 ; 6 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false), !noalias !6835
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !6840
  %i.m = add i64 %i.k, 1                          ; 2 uses
  %i.n = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.m, i64 range(i64 8, 353) 136) ; 2 uses
  %i.o = extractvalue { i64, i1 } %i.n, 1
  br i1 %i.o, label %bb.e, label %bb.d, !prof !229

bb.d:                                             ; preds = %bb.c
  %i.p = extractvalue { i64, i1 } %i.n, 0
  %i.q = add nuw i64 %i.p, 8
  %i.r = and i64 %i.q, -16                        ; 3 uses
  %i.s = add i64 %i.k, 17                         ; 2 uses
  %i.t = add i64 %i.r, %i.s                       ; 4 uses
  %i.u = icmp ult i64 %i.t, %i.r
  %i.v = icmp ugt i64 %i.t, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.u, %i.v
  br i1 %or.cond.i.i.i, label %bb.e, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i, !prof !6227

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.d
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !6841
  %i.w = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !6841 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.y = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !6841
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.z = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.t), !noalias !6841
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i = phi { i64, i64 } [ %i.z, %bb.f ], [ %i.y, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 1
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r
  %i.ab = icmp ult i64 %i.k, 8
  %i.ac = lshr i64 %i.m, 3
  %i.ad = mul nuw nsw i64 %i.ac, 7
  %.sroa.07.0.i.i.i = select i1 %i.ab, i64 %i.k, i64 %i.ad
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.g ], [ %i.s, %bb.h ]
  %.sroa.7.0.i = phi i64 [ %.sroa.12.0.ph.i.i, %bb.g ], [ %.sroa.07.0.i.i.i, %bb.h ]
  %.sroa.5.0.i = phi i64 [ %.sroa.7.0.ph.i.i, %bb.g ], [ %i.k, %bb.h ]
  %.sroa.0.0.i = phi ptr [ null, %bb.g ], [ %i.aa, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0.i, ptr %i.f, align 8, !noalias !6840
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !6840
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 %.sroa.7.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !6840
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !6840
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6846)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6849)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6851)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6854)
  %i.ae = load ptr, ptr %1, align 8, !alias.scope !6856, !noalias !6857, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.ae, i64 %.pre-phi.i, i1 false), !noalias !6858
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !6856, !noalias !6857, !noundef !8 ; 3 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.val3.i.i.i.i = load <16 x i8>, ptr %i.ae, align 16, !noalias !6859
  %i.ai = icmp sgt <16 x i8> %.val3.i.i.i.i, splat (i8 -1)
  %i.aj = bitcast <16 x i1> %i.ai to i16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.5.0..sroa_idx2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 129
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.at = ptrtoint ptr %i.ae to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.body.i.i.i.i, %bb.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.au, %bb.i ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEEENCNvMse_B1D_B1A_15clone_from_impl0EECs2VbMhdeEr66_16delta_benchmarks(i64 %.sroa.012.032.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.f) #34
          to label %.body.i unwind label %bb.z, !noalias !6862

bb.j:                                             ; preds = %bb.y, %.lr.ph.i.i.i
  %.sroa.012.032.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.cj, %bb.y ]
  %.sroa.013.031.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %.sroa.013.1.i.i.i, %bb.y ] ; 2 uses
  %.sroa.6.030.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.sroa.6.1.i.i.i, %bb.y ] ; 2 uses
  %.sroa.814.029.i.i.i = phi i16 [ %i.aj, %.lr.ph.i.i.i ], [ %i.bd, %bb.y ] ; 2 uses
  %.sroa.1015.028.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i ], [ %i.bg, %bb.y ]
  %.not12.i.i.i.i = icmp eq i16 %.sroa.814.029.i.i.i, 0
  br i1 %.not12.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.av = phi ptr [ %i.az, %.lr.ph.i.i.i.i ], [ %.sroa.6.030.i.i.i, %bb.j ] ; 2 uses
  %i.aw = phi ptr [ %i.ay, %.lr.ph.i.i.i.i ], [ %.sroa.013.031.i.i.i, %bb.j ]
  %.val10.i.i.i.i = load <16 x i8>, ptr %i.av, align 16, !noalias !6863
  %i.ax = icmp sgt <16 x i8> %.val10.i.i.i.i, splat (i8 -1)
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 -2176 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.ax to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.j
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.030.i.i.i, %bb.j ], [ %i.az, %.lr.ph.i.i.i.i ]
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.031.i.i.i, %bb.j ], [ %i.ay, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.814.029.i.i.i, %bb.j ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.ba = add i16 %.lcssa.i.i.i.i, -1
  %i.bb = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.bc = zext nneg i16 %i.bb to i64
  %i.bd = and i16 %i.ba, %.lcssa.i.i.i.i
  %i.be = sub nsw i64 0, %i.bc
  %i.bf = getelementptr inbounds [136 x i8], ptr %.sroa.013.1.i.i.i, i64 %i.be ; 10 uses
  %i.bg = add i64 %.sroa.1015.028.i.i.i, -1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6858
  %i.bh = getelementptr inbounds i8, ptr %i.bf, i64 -136
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6866)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6869)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(136) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.bh)
          to label %.noexc.i.i.i unwind label %bb.i, !noalias !6858

.noexc.i.i.i:                                     ; preds = %.loopexit.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6871)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6874)
  %i.bi = getelementptr inbounds i8, ptr %i.bf, i64 -8
  %i.bj = load i8, ptr %i.bi, align 8, !range !810, !alias.scope !6876, !noalias !6877, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6878
  %i.bk = getelementptr inbounds i8, ptr %i.bf, i64 -80 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !range !311, !alias.scope !6876, !noalias !6877, !noundef !8
  %.not.i.i.i.i.i = icmp eq i64 %i.bl, -9223372036854775808
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.noexc.i.i.i
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bk)
          to label %.noexc.i.i.i.i unwind label %bb.w, !noalias !6879

bb.l:                                             ; preds = %.noexc.i.i.i
  store i64 -9223372036854775808, ptr %i.d, align 8, !noalias !6878
  br label %.noexc.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.l, %bb.k
  %i.bm = getelementptr inbounds i8, ptr %i.bf, i64 -7
  %i.bn = load i8, ptr %i.bm, align 1, !range !810, !alias.scope !6876, !noalias !6877, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6878
  %i.bo = getelementptr inbounds i8, ptr %i.bf, i64 -56 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !range !311, !alias.scope !6876, !noalias !6877, !noundef !8
  %.not4.i.i.i.i.i = icmp eq i64 %i.bp, -9223372036854775808
  br i1 %.not4.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.noexc.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6878
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bo)
          to label %bb.r unwind label %bb.q, !noalias !6877

bb.n:                                             ; preds = %.noexc.i.i.i.i
  store i64 -9223372036854775808, ptr %i.c, align 8, !noalias !6878
  br label %bb.o

bb.o:                                             ; preds = %bb.r, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i)
  %i.bq = getelementptr inbounds i8, ptr %i.bf, i64 -32 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !range !311, !alias.scope !6876, !noalias !6877, !noundef !8
  %.not5.i.i.i.i.i = icmp eq i64 %i.br, -9223372036854775808
  br i1 %.not5.i.i.i.i.i, label %bb.y, label %bb.s

bb.p:                                             ; preds = %bb.t, %bb.q
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.bt, %bb.t ], [ %i.bs, %bb.q ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.d) #34
          to label %.body.i.i.i.i unwind label %bb.v, !noalias !6877

bb.q:                                             ; preds = %bb.m
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.r:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !6878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6878
  br label %bb.o

bb.s:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6878
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bq)
          to label %bb.u unwind label %bb.t, !noalias !6877

bb.t:                                             ; preds = %bb.s
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.c) #34
          to label %bb.p unwind label %bb.v, !noalias !6877

bb.u:                                             ; preds = %bb.s
  %.sroa.0.0.copyload1.i.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !6878
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i.i.i.i, i64 16, i1 false), !noalias !6878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6878
  br label %bb.y

bb.v:                                             ; preds = %bb.t, %bb.p
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6877
  unreachable

bb.w:                                             ; preds = %bb.k
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.w, %bb.p
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.bv, %bb.w ], [ %.pn.i.i.i.i.i, %bb.p ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.e) #34
          to label %.body.i.i.i unwind label %bb.x, !noalias !6858

bb.x:                                             ; preds = %.body.i.i.i.i
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6858
  unreachable

bb.y:                                             ; preds = %bb.u, %bb.o
  %.sroa.0.0.i.i.i.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i.i.i.i, %bb.u ], [ -9223372036854775808, %bb.o ]
  %i.bx = getelementptr inbounds i8, ptr %i.bf, i64 -112
  %i.by = load i64, ptr %i.bx, align 8, !range !181, !alias.scope !6876, !noalias !6877, !noundef !8
  %i.bz = getelementptr inbounds i8, ptr %i.bf, i64 -104
  %i.ca = load double, ptr %i.bz, align 8, !alias.scope !6876, !noalias !6877
  %i.cb = getelementptr inbounds i8, ptr %i.bf, i64 -96
  store i8 %i.bj, ptr %i.am, align 8, !alias.scope !6880, !noalias !6881
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !6881
  store i8 %i.bn, ptr %i.ao, align 1, !alias.scope !6880, !noalias !6881
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !6881
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %i.aq, align 8, !alias.scope !6880, !noalias !6881
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i.i, i64 16, i1 false), !noalias !6881
  store i64 %i.by, ptr %i.al, align 8, !alias.scope !6880, !noalias !6881
  store double %i.ca, ptr %i.ar, align 8, !alias.scope !6880, !noalias !6881
  %i.cc = load <2 x i64>, ptr %i.cb, align 8, !alias.scope !6876, !noalias !6877
  store <2 x i64> %i.cc, ptr %i.as, align 8, !alias.scope !6880, !noalias !6881
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6878
  %i.cd = ptrtoint ptr %i.bf to i64
  %i.ce = sub i64 %i.at, %i.cd
  %i.cf = sdiv exact i64 %i.ce, 136               ; 2 uses
  %i.cg = sub nsw i64 0, %i.cf
  %i.ch = getelementptr inbounds [136 x i8], ptr %.sroa.0.0.i, i64 %i.cg
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.ci, ptr noundef nonnull align 8 dereferenceable(136) %i.e, i64 136, i1 false), !noalias !6858
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6858
  %i.cj = add nsw i64 %i.cf, 1
  %i.ck = icmp eq i64 %i.bg, 0
  br i1 %i.ck, label %.loopexit.i, label %bb.j

bb.z:                                             ; preds = %.body.i.i.i
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6858
  unreachable

.body.i:                                          ; preds = %.body.i.i.i
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.aa, !noalias !6840

.loopexit.i:                                      ; preds = %bb.y, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  store i64 %i.ag, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !6882, !noalias !6862
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cn = load i64, ptr %i.cm, align 8, !alias.scope !6856, !noalias !6857, !noundef !8
  store i64 %i.cn, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !6882, !noalias !6862
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !6835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6840
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.aa:                                            ; preds = %.body.i
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6840
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %.loopexit.i
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.i, ptr %i.cp, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x i64>, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6883)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !6883, !noalias !6886, !noundef !8 ; 6 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false), !noalias !6883
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6888
  %i.i = add i64 %i.g, 1                          ; 2 uses
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.i, i64 range(i64 8, 353) 48) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.d, !prof !229

bb.d:                                             ; preds = %bb.c
  %i.l = extractvalue { i64, i1 } %i.j, 0         ; 3 uses
  %i.m = add i64 %i.g, 17                         ; 2 uses
  %i.n = add i64 %i.l, %i.m                       ; 4 uses
  %i.o = icmp ult i64 %i.n, %i.l
  %i.p = icmp ugt i64 %i.n, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.o, %i.p
  br i1 %or.cond.i.i.i, label %bb.e, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i, !prof !6227

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.d
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !6889
  %i.q = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !6889 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !6889
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.t = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.n), !noalias !6889
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i = phi { i64, i64 } [ %i.t, %bb.f ], [ %i.s, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 1
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.l
  %i.v = icmp ult i64 %i.g, 8
  %i.w = lshr i64 %i.i, 3
  %i.x = mul nuw nsw i64 %i.w, 7
  %.sroa.07.0.i.i.i = select i1 %i.v, i64 %i.g, i64 %i.x
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.g ], [ %i.m, %bb.h ]
  %.sroa.7.0.i = phi i64 [ %.sroa.12.0.ph.i.i, %bb.g ], [ %.sroa.07.0.i.i.i, %bb.h ]
  %.sroa.5.0.i = phi i64 [ %.sroa.7.0.ph.i.i, %bb.g ], [ %i.g, %bb.h ]
  %.sroa.0.0.i = phi ptr [ null, %bb.g ], [ %i.u, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0.i, ptr %i.b, align 8, !noalias !6888
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !6888
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !6888
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !6888
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6894)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6897)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6899)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6902)
  %i.y = load ptr, ptr %1, align 8, !alias.scope !6904, !noalias !6905, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.y, i64 %.pre-phi.i, i1 false), !noalias !6906
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !6904, !noalias !6905, !noundef !8 ; 3 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.val3.i.i.i.i = load <16 x i8>, ptr %i.y, align 16, !noalias !6907
  %i.ac = icmp sgt <16 x i8> %.val3.i.i.i.i, splat (i8 -1)
  %i.ad = bitcast <16 x i1> %i.ac to i16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ag = ptrtoint ptr %i.y to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.k, %bb.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ah, %bb.i ], [ %i.aw, %bb.k ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEEENCNvMse_B1D_B1A_15clone_from_impl0EECs2VbMhdeEr66_16delta_benchmarks(i64 %.sroa.012.028.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #34
          to label %.body.i unwind label %bb.m, !noalias !6910

bb.j:                                             ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.012.028.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.be, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ]
  %.sroa.013.027.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %.sroa.013.1.i.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.sroa.6.026.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %.sroa.6.1.i.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.sroa.814.025.i.i.i = phi i16 [ %i.ad, %.lr.ph.i.i.i ], [ %i.aq, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.sroa.1015.024.i.i.i = phi i64 [ %i.aa, %.lr.ph.i.i.i ], [ %i.at, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ]
  %.not12.i.i.i.i = icmp eq i16 %.sroa.814.025.i.i.i, 0
  br i1 %.not12.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.ai = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %.sroa.6.026.i.i.i, %bb.j ] ; 2 uses
  %i.aj = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %.sroa.013.027.i.i.i, %bb.j ]
  %.val10.i.i.i.i = load <16 x i8>, ptr %i.ai, align 16, !noalias !6911
  %i.ak = icmp sgt <16 x i8> %.val10.i.i.i.i, splat (i8 -1)
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -768 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.ak to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.j
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.026.i.i.i, %bb.j ], [ %i.am, %.lr.ph.i.i.i.i ]
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.027.i.i.i, %bb.j ], [ %i.al, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.814.025.i.i.i, %bb.j ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.an = add i16 %.lcssa.i.i.i.i, -1
  %i.ao = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = and i16 %i.an, %.lcssa.i.i.i.i
  %i.ar = sub nsw i64 0, %i.ap
  %i.as = getelementptr inbounds [48 x i8], ptr %.sroa.013.1.i.i.i, i64 %i.ar ; 3 uses
  %i.at = add i64 %.sroa.1015.024.i.i.i, -1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6906
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 -48
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.au)
          to label %.noexc.i.i.i unwind label %bb.i, !noalias !6906

.noexc.i.i.i:                                     ; preds = %.loopexit.i.i.i
  %i.av = getelementptr inbounds i8, ptr %i.as, i64 -24
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.av)
          to label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.k, !noalias !6906

bb.k:                                             ; preds = %.noexc.i.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) #34
          to label %.body.i.i.i unwind label %bb.l, !noalias !6906

bb.l:                                             ; preds = %bb.k
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6906
  unreachable

_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %.noexc.i.i.i
  %i.ay = ptrtoint ptr %i.as to i64
  %i.az = sub i64 %i.ag, %i.ay
  %i.ba = sdiv exact i64 %i.az, 48                ; 2 uses
  %i.bb = sub nsw i64 0, %i.ba
  %i.bc = getelementptr inbounds [48 x i8], ptr %.sroa.0.0.i, i64 %i.bb
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bd, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !6906
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6906
  %i.be = add nsw i64 %i.ba, 1
  %i.bf = icmp eq i64 %i.at, 0
  br i1 %i.bf, label %.loopexit.i, label %bb.j

bb.m:                                             ; preds = %.body.i.i.i
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6906
  unreachable

.body.i:                                          ; preds = %.body.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.b) #34
          to label %bb.o unwind label %bb.n, !noalias !6888

.loopexit.i:                                      ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  store i64 %i.aa, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !6914, !noalias !6910
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !6904, !noalias !6905, !noundef !8
  store i64 %i.bi, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !6914, !noalias !6910
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !6883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6888
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.n:                                             ; preds = %.body.i
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6888
  unreachable

bb.o:                                             ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %.loopexit.i
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.e, ptr %i.bk, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6915)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !6915, !noalias !6918, !noundef !8 ; 6 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false), !noalias !6915
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6920
  %i.k = add i64 %i.i, 1                          ; 2 uses
  %i.l = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.k, i64 range(i64 8, 353) 72) ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1
  br i1 %i.m, label %bb.e, label %bb.d, !prof !229

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i1 } %i.l, 0
  %i.o = add nuw i64 %i.n, 8
  %i.p = and i64 %i.o, -16                        ; 3 uses
  %i.q = add i64 %i.i, 17                         ; 2 uses
  %i.r = add i64 %i.p, %i.q                       ; 4 uses
  %i.s = icmp ult i64 %i.r, %i.p
  %i.t = icmp ugt i64 %i.r, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.s, %i.t
  br i1 %or.cond.i.i.i, label %bb.e, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i, !prof !6227

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.d
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !6921
  %i.u = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !6921 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.w = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !6921
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.x = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.r), !noalias !6921
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i = phi { i64, i64 } [ %i.x, %bb.f ], [ %i.w, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 1
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.p
  %i.z = icmp ult i64 %i.i, 8
  %i.aa = lshr i64 %i.k, 3
  %i.ab = mul nuw nsw i64 %i.aa, 7
  %.sroa.07.0.i.i.i = select i1 %i.z, i64 %i.i, i64 %i.ab
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.g ], [ %i.q, %bb.h ]
  %.sroa.7.0.i = phi i64 [ %.sroa.12.0.ph.i.i, %bb.g ], [ %.sroa.07.0.i.i.i, %bb.h ]
  %.sroa.5.0.i = phi i64 [ %.sroa.7.0.ph.i.i, %bb.g ], [ %i.i, %bb.h ]
  %.sroa.0.0.i = phi ptr [ null, %bb.g ], [ %i.y, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0.i, ptr %i.d, align 8, !noalias !6920
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !6920
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 %.sroa.7.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !6920
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !6920
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6926)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6929)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6931)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6934)
  %i.ac = load ptr, ptr %1, align 8, !alias.scope !6936, !noalias !6937, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.ac, i64 %.pre-phi.i, i1 false), !noalias !6938
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !6936, !noalias !6937, !noundef !8 ; 3 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.val3.i.i.i.i = load <16 x i8>, ptr %i.ac, align 16, !noalias !6939
  %i.ag = icmp sgt <16 x i8> %.val3.i.i.i.i, splat (i8 -1)
  %i.ah = bitcast <16 x i1> %i.ag to i16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.5.0..sroa_idx2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.al = ptrtoint ptr %i.ac to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.body.i.i.i.i, %bb.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.am, %bb.i ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEEENCNvMse_B1D_B1A_15clone_from_impl0EECs2VbMhdeEr66_16delta_benchmarks(i64 %.sroa.012.030.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.d) #34
          to label %.body.i unwind label %bb.r, !noalias !6942

bb.j:                                             ; preds = %bb.q, %.lr.ph.i.i.i
  %.sroa.012.030.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.bn, %bb.q ]
  %.sroa.013.029.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %.sroa.013.1.i.i.i, %bb.q ] ; 2 uses
  %.sroa.6.028.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %.sroa.6.1.i.i.i, %bb.q ] ; 2 uses
  %.sroa.814.027.i.i.i = phi i16 [ %i.ah, %.lr.ph.i.i.i ], [ %i.av, %bb.q ] ; 2 uses
  %.sroa.1015.026.i.i.i = phi i64 [ %i.ae, %.lr.ph.i.i.i ], [ %i.ay, %bb.q ]
  %.not12.i.i.i.i = icmp eq i16 %.sroa.814.027.i.i.i, 0
  br i1 %.not12.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.an = phi ptr [ %i.ar, %.lr.ph.i.i.i.i ], [ %.sroa.6.028.i.i.i, %bb.j ] ; 2 uses
  %i.ao = phi ptr [ %i.aq, %.lr.ph.i.i.i.i ], [ %.sroa.013.029.i.i.i, %bb.j ]
  %.val10.i.i.i.i = load <16 x i8>, ptr %i.an, align 16, !noalias !6943
  %i.ap = icmp sgt <16 x i8> %.val10.i.i.i.i, splat (i8 -1)
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 -1152 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.ap to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.j
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.028.i.i.i, %bb.j ], [ %i.ar, %.lr.ph.i.i.i.i ]
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.029.i.i.i, %bb.j ], [ %i.aq, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.814.027.i.i.i, %bb.j ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.as = add i16 %.lcssa.i.i.i.i, -1
  %i.at = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.au = zext nneg i16 %i.at to i64
  %i.av = and i16 %i.as, %.lcssa.i.i.i.i
  %i.aw = sub nsw i64 0, %i.au
  %i.ax = getelementptr inbounds [72 x i8], ptr %.sroa.013.1.i.i.i, i64 %i.aw ; 4 uses
  %i.ay = add i64 %.sroa.1015.026.i.i.i, -1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6938
  %i.az = getelementptr inbounds i8, ptr %i.ax, i64 -72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6946)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6949)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.az)
          to label %.noexc.i.i.i unwind label %bb.i, !noalias !6938

.noexc.i.i.i:                                     ; preds = %.loopexit.i.i.i
  %i.ba = getelementptr inbounds i8, ptr %i.ax, i64 -48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6951)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6954)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6956
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ba)
          to label %.noexc.i.i.i.i unwind label %bb.o, !noalias !6957

.noexc.i.i.i.i:                                   ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i)
  %i.bb = getelementptr inbounds i8, ptr %i.ax, i64 -24 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !range !311, !alias.scope !6958, !noalias !6959, !noundef !8
  %.not.i.i.i.i.i = icmp eq i64 %i.bc, -9223372036854775808
  br i1 %.not.i.i.i.i.i, label %bb.q, label %bb.k

bb.k:                                             ; preds = %.noexc.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6956
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bb)
          to label %bb.m unwind label %bb.l, !noalias !6959

bb.l:                                             ; preds = %bb.k
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #34
          to label %.body.i.i.i.i unwind label %bb.n, !noalias !6959

bb.m:                                             ; preds = %bb.k
  %.sroa.0.0.copyload1.i.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !6956
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i.i.i.i, i64 16, i1 false), !noalias !6956
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6956
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6959
  unreachable

bb.o:                                             ; preds = %.noexc.i.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.o, %bb.l
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.bf, %bb.o ], [ %i.bd, %bb.l ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c) #34
          to label %.body.i.i.i unwind label %bb.p, !noalias !6938

bb.p:                                             ; preds = %.body.i.i.i.i
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6938
  unreachable

bb.q:                                             ; preds = %bb.m, %.noexc.i.i.i.i
  %.sroa.0.0.i.i.i.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i.i.i.i, %bb.m ], [ -9223372036854775808, %.noexc.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !6960
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %i.ak, align 8, !alias.scope !6961, !noalias !6960
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i.i, i64 16, i1 false), !noalias !6960
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6956
  %i.bh = ptrtoint ptr %i.ax to i64
  %i.bi = sub i64 %i.al, %i.bh
  %i.bj = sdiv exact i64 %i.bi, 72                ; 2 uses
  %i.bk = sub nsw i64 0, %i.bj
  %i.bl = getelementptr inbounds [72 x i8], ptr %.sroa.0.0.i, i64 %i.bk
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bm, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !noalias !6938
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6938
  %i.bn = add nsw i64 %i.bj, 1
  %i.bo = icmp eq i64 %i.ay, 0
  br i1 %i.bo, label %.loopexit.i, label %bb.j

bb.r:                                             ; preds = %.body.i.i.i
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6938
  unreachable

.body.i:                                          ; preds = %.body.i.i.i
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.s, !noalias !6920

.loopexit.i:                                      ; preds = %bb.q, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  store i64 %i.ae, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !6962, !noalias !6942
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !6936, !noalias !6937, !noundef !8
  store i64 %i.br, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !6962, !noalias !6942
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !6915
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6920
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.s:                                             ; preds = %.body.i
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6920
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %.loopexit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.g, ptr %i.bt, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x i64>, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6963)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !6963, !noalias !6966, !noundef !8 ; 6 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false), !noalias !6963
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6968
  %i.i = add i64 %i.g, 1                          ; 2 uses
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.i, i64 range(i64 8, 353) 112) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.d, !prof !229

bb.d:                                             ; preds = %bb.c
  %i.l = extractvalue { i64, i1 } %i.j, 0         ; 3 uses
  %i.m = add i64 %i.g, 17                         ; 2 uses
  %i.n = add i64 %i.l, %i.m                       ; 4 uses
  %i.o = icmp ult i64 %i.n, %i.l
  %i.p = icmp ugt i64 %i.n, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.o, %i.p
  br i1 %or.cond.i.i.i, label %bb.e, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i, !prof !6227

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.d
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !6969
  %i.q = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !6969 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !6969
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.t = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.n), !noalias !6969
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i = phi { i64, i64 } [ %i.t, %bb.f ], [ %i.s, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 1
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.l
  %i.v = icmp ult i64 %i.g, 8
  %i.w = lshr i64 %i.i, 3
  %i.x = mul nuw nsw i64 %i.w, 7
  %.sroa.07.0.i.i.i = select i1 %i.v, i64 %i.g, i64 %i.x
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.g ], [ %i.m, %bb.h ]
  %.sroa.7.0.i = phi i64 [ %.sroa.12.0.ph.i.i, %bb.g ], [ %.sroa.07.0.i.i.i, %bb.h ]
  %.sroa.5.0.i = phi i64 [ %.sroa.7.0.ph.i.i, %bb.g ], [ %i.g, %bb.h ]
  %.sroa.0.0.i = phi ptr [ null, %bb.g ], [ %i.u, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0.i, ptr %i.b, align 8, !noalias !6968
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !6968
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !6968
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !6968
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6974)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6977)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6979)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6982)
  %i.y = load ptr, ptr %1, align 8, !alias.scope !6984, !noalias !6985, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.y, i64 %.pre-phi.i, i1 false), !noalias !6986
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !6984, !noalias !6985, !noundef !8 ; 3 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.val3.i.i.i.i = load <16 x i8>, ptr %i.y, align 16, !noalias !6987
  %i.ac = icmp sgt <16 x i8> %.val3.i.i.i.i, splat (i8 -1)
  %i.ad = bitcast <16 x i1> %i.ac to i16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.af = ptrtoint ptr %i.y to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEEENCNvMse_B1D_B1A_15clone_from_impl0EECs2VbMhdeEr66_16delta_benchmarks(i64 %.sroa.012.026.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #34
          to label %.body.i unwind label %bb.k, !noalias !6990

bb.j:                                             ; preds = %_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.012.026.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.ba, %_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ]
  %.sroa.013.025.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %.sroa.013.1.i.i.i, %_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.sroa.6.024.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %.sroa.6.1.i.i.i, %_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.sroa.814.023.i.i.i = phi i16 [ %i.ad, %.lr.ph.i.i.i ], [ %i.at, %_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %.sroa.1015.022.i.i.i = phi i64 [ %i.aa, %.lr.ph.i.i.i ], [ %i.ar, %_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ]
  %.not12.i.i.i.i = icmp eq i16 %.sroa.814.023.i.i.i, 0
  br i1 %.not12.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.ah = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %.sroa.6.024.i.i.i, %bb.j ] ; 2 uses
  %i.ai = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %.sroa.013.025.i.i.i, %bb.j ]
  %.val10.i.i.i.i = load <16 x i8>, ptr %i.ah, align 16, !noalias !6991
  %i.aj = icmp sgt <16 x i8> %.val10.i.i.i.i, splat (i8 -1)
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -1792 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.aj to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.j
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.024.i.i.i, %bb.j ], [ %i.al, %.lr.ph.i.i.i.i ]
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.025.i.i.i, %bb.j ], [ %i.ak, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.814.023.i.i.i, %bb.j ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.am = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.an = zext nneg i16 %i.am to i64
  %i.ao = sub nsw i64 0, %i.an
  %i.ap = getelementptr inbounds [112 x i8], ptr %.sroa.013.1.i.i.i, i64 %i.ao ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6986
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -112
  invoke fastcc void @_RNvXsV_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull align 16 captures(none) dereferenceable(112) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.aq) #40
          to label %_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.i, !noalias !6986

_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %.loopexit.i.i.i
  %i.ar = add i64 %.sroa.1015.022.i.i.i, -1       ; 2 uses
  %i.as = add i16 %.lcssa.i.i.i.i, -1
  %i.at = and i16 %i.as, %.lcssa.i.i.i.i
  %i.au = ptrtoint ptr %i.ap to i64
  %i.av = sub i64 %i.af, %i.au
  %i.aw = sdiv exact i64 %i.av, 112               ; 2 uses
  %i.ax = sub nsw i64 0, %i.aw
  %i.ay = getelementptr inbounds [112 x i8], ptr %.sroa.0.0.i, i64 %i.ax
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.az, ptr noundef nonnull align 16 dereferenceable(112) %i.a, i64 112, i1 false), !noalias !6986
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6986
  %i.ba = add nsw i64 %i.aw, 1
  %i.bb = icmp eq i64 %i.ar, 0
  br i1 %i.bb, label %.loopexit.i, label %bb.j

bb.k:                                             ; preds = %bb.i
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6986
  unreachable

.body.i:                                          ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.b) #34
          to label %bb.m unwind label %bb.l, !noalias !6968

.loopexit.i:                                      ; preds = %_RNvYTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  store i64 %i.aa, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !6994, !noalias !6990
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !6984, !noalias !6985, !noundef !8
  store i64 %i.be, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !6994, !noalias !6990
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !6963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6968
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

bb.l:                                             ; preds = %.body.i
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !6968
  unreachable

bb.m:                                             ; preds = %.body.i
  resume { ptr, i32 } %i.ag

_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %.loopexit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.e, ptr %i.bg, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load <2 x i64>, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6995)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !6995, !noalias !6998, !noundef !8 ; 5 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %i.d, 1                          ; 2 uses
  %i.g = icmp ugt i64 %i.f, 1152921504606846975
  br i1 %i.g, label %bb.d, label %bb.c, !prof !229

bb.c:                                             ; preds = %bb.b
  %i.h = shl nuw i64 %i.f, 4                      ; 3 uses
  %i.i = add nsw i64 %i.d, 17                     ; 2 uses
  %i.j = add i64 %i.h, %i.i                       ; 4 uses
  %i.k = icmp ult i64 %i.j, %i.h
  %i.l = icmp ugt i64 %i.j, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.k, %i.l
  br i1 %or.cond.i.i.i, label %bb.d, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i, !prof !6227

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.c
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !7000
  %i.m = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !7000 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %bb.g

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !7000
  br label %bb.f

bb.e:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.p = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.j), !noalias !7000
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.i.i = phi { i64, i64 } [ %i.p, %bb.e ], [ %i.o, %bb.d ]
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %bb.h

bb.g:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.h
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre-phi.i = phi i64 [ %i.i, %bb.g ], [ %.pre.i, %bb.f ]
  %.sroa.5.0.i = phi i64 [ %i.d, %bb.g ], [ %.sroa.7.0.ph.i.i, %bb.f ] ; 3 uses
  %.sroa.09.0.i = phi ptr [ %i.q, %bb.g ], [ null, %bb.f ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7005)
  %i.r = load ptr, ptr %1, align 8, !alias.scope !7008, !noalias !7009, !nonnull !8, !noundef !8 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.09.0.i) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.09.0.i, ptr nonnull align 1 %i.r, i64 %.pre-phi.i, i1 false), !noalias !7011
  %i.s = xor i64 %i.d, -1
  %i.t = getelementptr [16 x i8], ptr %i.r, i64 %i.s ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  %i.u = xor i64 %.sroa.5.0.i, -1
  %i.v = getelementptr [16 x i8], ptr %.sroa.09.0.i, i64 %i.u ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.v) ]
  %i.w = shl i64 %.sroa.5.0.i, 4
  %i.x = add i64 %i.w, 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 8 %i.t, i64 %i.x, i1 false), !noalias !7011
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load <2 x i64>, ptr %i.y, align 8, !alias.scope !7008, !noalias !7009
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %bb.h
  %.sroa.5.0 = phi i64 [ %.sroa.5.0.i, %bb.h ], [ 0, %bb.a ]
  %.sroa.0.0 = phi ptr [ %.sroa.09.0.i, %bb.h ], [ @4, %bb.a ]
  %i.aa = phi <2 x i64> [ %i.z, %bb.h ], [ zeroinitializer, %bb.a ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.b, ptr %i.ab, align 8
  store ptr %.sroa.0.0, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %i.aa, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBM_3AnyNtNtBO_6marker4SyncNtB22_4SendEL_EINtNtBO_4hash18BuildHasherDefaultNtNtCs4m0Tg8nAduX_20datafusion_execution6config8IdHasherEENtNtBO_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7012)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !7012, !noalias !7015, !noundef !8 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_3AnyNtNtBT_6marker4SyncNtB27_4SendEL_EEENtNtBT_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1                          ; 2 uses
  %i.e = icmp ugt i64 %i.d, 576460752303423487
  br i1 %i.e, label %bb.d, label %bb.c, !prof !229

bb.c:                                             ; preds = %bb.b
  %i.f = shl nuw i64 %i.d, 5                      ; 3 uses
  %i.g = add nsw i64 %i.b, 17                     ; 2 uses
  %i.h = add i64 %i.f, %i.g                       ; 4 uses
  %i.i = icmp ult i64 %i.h, %i.f
  %i.j = icmp ugt i64 %i.h, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.i, %i.j
  br i1 %or.cond.i.i.i, label %bb.d, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i, !prof !6227

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.c
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !7017
  %i.k = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !7017 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %bb.g

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !7017
  br label %bb.f

bb.e:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.n = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.h), !noalias !7017
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.i.i = phi { i64, i64 } [ %i.n, %bb.e ], [ %i.m, %bb.d ]
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_3AnyNtNtBT_6marker4SyncNtB27_4SendEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.g:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_3AnyNtNtBT_6marker4SyncNtB27_4SendEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_3AnyNtNtBT_6marker4SyncNtB27_4SendEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.g, %bb.f
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.f ], [ %i.g, %bb.g ]
  %.sroa.5.0.i = phi i64 [ %.sroa.7.0.ph.i.i, %bb.f ], [ %i.b, %bb.g ]
  %.sroa.0.0.i = phi ptr [ null, %bb.f ], [ %i.o, %bb.g ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7022)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7025)
  %i.p = load ptr, ptr %1, align 8, !alias.scope !7028, !noalias !7029, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.p, i64 %.pre-phi.i, i1 false), !noalias !7032
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !7028, !noalias !7029, !noundef !8 ; 3 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_3AnyNtNtBT_6marker4SyncNtB27_4SendEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.val3.i.i.i.i = load <16 x i8>, ptr %i.p, align 16, !noalias !7033
  %i.t = icmp sgt <16 x i8> %.val3.i.i.i.i, splat (i8 -1)
  %i.u = bitcast <16 x i1> %i.t to i16
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.w = ptrtoint ptr %i.p to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %.lr.ph.i.i.i
  %.sroa.013.027.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.013.1.i.i.i, %bb.j ] ; 2 uses
  %.sroa.6.026.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %.sroa.6.1.i.i.i, %bb.j ] ; 2 uses
  %.sroa.814.025.i.i.i = phi i16 [ %i.u, %.lr.ph.i.i.i ], [ %i.an, %bb.j ] ; 2 uses
  %.sroa.1015.024.i.i.i = phi i64 [ %i.r, %.lr.ph.i.i.i ], [ %i.al, %bb.j ]
  %.not12.i.i.i.i = icmp eq i16 %.sroa.814.025.i.i.i, 0
  br i1 %.not12.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %.lr.ph.i.i.i.i
  %i.x = phi ptr [ %i.ab, %.lr.ph.i.i.i.i ], [ %.sroa.6.026.i.i.i, %bb.h ] ; 2 uses
  %i.y = phi ptr [ %i.aa, %.lr.ph.i.i.i.i ], [ %.sroa.013.027.i.i.i, %bb.h ]
  %.val10.i.i.i.i = load <16 x i8>, ptr %i.x, align 16, !noalias !7036
  %i.z = icmp sgt <16 x i8> %.val10.i.i.i.i, splat (i8 -1)
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 -512 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.z to i16  ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.h
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.026.i.i.i, %bb.h ], [ %i.ab, %.lr.ph.i.i.i.i ]
  %.sroa.013.1.i.i.i = phi ptr [ %.sroa.013.027.i.i.i, %bb.h ], [ %i.aa, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.814.025.i.i.i, %bb.h ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.ac = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.ad = zext nneg i16 %i.ac to i64
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = getelementptr inbounds [32 x i8], ptr %.sroa.013.1.i.i.i, i64 %i.ae ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7039)
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -16
  %.val.i.i.i.i = load ptr, ptr %i.ag, align 8, !alias.scope !7039, !noalias !7042, !nonnull !8, !noundef !8 ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 -8
  %.val1.i.i.i.i = load ptr, ptr %i.ah, align 8, !alias.scope !7039, !noalias !7042 ; 2 uses
  %i.ai = atomicrmw add ptr %.val.i.i.i.i, i64 1 monotonic, align 8, !noalias !7044
  %i.aj = icmp slt i64 %i.ai, 0
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i.i
  tail call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %.loopexit.i.i.i
  %i.ak = getelementptr inbounds i8, ptr %i.af, i64 -32
  %i.al = add i64 %.sroa.1015.024.i.i.i, -1       ; 2 uses
  %i.am = add i16 %.lcssa.i.i.i.i, -1
  %i.an = and i16 %i.am, %.lcssa.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i) ]
  %i.ao = ptrtoint ptr %i.af to i64
  %i.ap = sub i64 %i.w, %i.ao
  %i.aq = ashr exact i64 %i.ap, 5
  %i.ar = sub nsw i64 0, %i.aq
  %i.as = getelementptr inbounds [32 x i8], ptr %.sroa.0.0.i, i64 %i.ar ; 3 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -32
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 16, i1 false), !noalias !7032
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %i.as, i64 -16
  store ptr %.val.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !7032
  %.sroa.517.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %i.as, i64 -8
  store ptr %.val1.i.i.i.i, ptr %.sroa.517.0..sroa_idx.i.i.i, align 8, !noalias !7032
  %i.au = icmp eq i64 %i.al, 0
  br i1 %i.au, label %.loopexit.i, label %bb.h

.loopexit.i:                                      ; preds = %bb.j, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_3AnyNtNtBT_6marker4SyncNtB27_4SendEL_EEE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !7028, !noalias !7029, !noundef !8
  br label %_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_3AnyNtNtBT_6marker4SyncNtB27_4SendEL_EEENtNtBT_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_3AnyNtNtBT_6marker4SyncNtB27_4SendEL_EEENtNtBT_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %.loopexit.i
  %.sroa.7.0 = phi i64 [ %i.r, %.loopexit.i ], [ 0, %bb.a ]
  %.sroa.6.0 = phi i64 [ %i.aw, %.loopexit.i ], [ 0, %bb.a ]
  %.sroa.5.0 = phi i64 [ %.sroa.5.0.i, %.loopexit.i ], [ 0, %bb.a ]
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.i, %.loopexit.i ], [ @4, %bb.a ]
  store ptr %.sroa.0.0, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXNtCs4Y5ccqZjUYD_25datafusion_common_runtime11trace_utilsNtB2_10NoopTracerNtB2_13JoinSetTracer11trace_block(ptr noalias nonnull readonly captures(none) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %2, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXNtCs4Y5ccqZjUYD_25datafusion_common_runtime11trace_utilsNtB2_10NoopTracerNtB2_13JoinSetTracer12trace_future(ptr noalias nonnull readonly captures(none) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %2, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs8CRAYtH5WmW_12futures_util3fnsNCINvNtCs4Y5ccqZjUYD_25datafusion_common_runtime11trace_utils12trace_futureTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENCNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned000Es_0INtB2_7FnOnce1INtNtB2w_5boxed3BoxDNtNtB1U_3any3AnyNtNtB1U_6marker4SendEL_EE9call_onceCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7045)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7048)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7051
  store ptr %1, ptr %i.c, align 8, !noalias !7053
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.d, align 8, !noalias !7053
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7053
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !8, !alias.scope !7055, !noalias !7056, !nonnull !8
  invoke void %i.f(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef nonnull %1)
          to label %_RINvMsb_NtNtCs6Po7BT7Nknu_5alloc5boxed7convertINtB8_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBX_6marker4SendEL_E8downcastTjINtNtBX_6result6ResultINtNtBa_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.b, !noalias !7056

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #34
          to label %common.resume.i unwind label %bb.c, !noalias !7056

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !7056
  unreachable

common.resume.i:                                  ; preds = %bb.e, %bb.b
  %common.resume.op.i = phi { ptr, i32 } [ %i.g, %bb.b ], [ %i.l, %bb.e ]
  resume { ptr, i32 } %common.resume.op.i

_RINvMsb_NtNtCs6Po7BT7Nknu_5alloc5boxed7convertINtB8_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBX_6marker4SendEL_E8downcastTjINtNtBX_6result6ResultINtNtBa_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.a
  %i.i = load i128, ptr %i.b, align 16, !noalias !7053, !noundef !8
  %i.j = icmp eq i128 %i.i, -37062676355244807409671512867870684984
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7053
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7051
  br i1 %i.j, label %_RNCINvNtCs4Y5ccqZjUYD_25datafusion_common_runtime11trace_utils12trace_futureTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENCNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned000Es_0Cs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.d, !prof !228

bb.d:                                             ; preds = %_RINvMsb_NtNtCs6Po7BT7Nknu_5alloc5boxed7convertINtB8_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBX_6marker4SendEL_E8downcastTjINtNtBX_6result6ResultINtNtBa_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7051
  store ptr %1, ptr %i.a, align 8, !noalias !7051
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.k, align 8, !noalias !7051
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 48, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @30, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #36
          to label %bb.f unwind label %bb.e, !noalias !7057

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #34
          to label %common.resume.i unwind label %bb.g, !noalias !7057

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !7057
  unreachable

_RNCINvNtCs4Y5ccqZjUYD_25datafusion_common_runtime11trace_utils12trace_futureTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENCNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned000Es_0Cs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RINvMsb_NtNtCs6Po7BT7Nknu_5alloc5boxed7convertINtB8_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBX_6marker4SendEL_E8downcastTjINtNtBX_6result6ResultINtNtBa_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !noalias !7045
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 48, i64 noundef 8) #37, !noalias !7057
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsbvkFyIu7lgC_4core3anyTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtB2_3Any7type_idCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @10, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCskQDtHcQtBkN_5tokio4task8join_setINtB5_7JoinSetTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEENtNtNtB12_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RINvMs2_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB6_15IdleNotifiedSetINtNtNtNtBa_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEE5drainNCNvXs0_NtNtBa_4task8join_setINtB5j_7JoinSetB1V_ENtNtNtB22_3ops4drop4Drop4drop0ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
end_hunk_0
begin_hunk_1_@_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks:bb.a
  %.sroa.015.0.copyload.i = load i16, ptr %i.l, align 1, !alias.scope !7906
  %i.m = zext i16 %.sroa.015.0.copyload.i to i64
  %i.n = shl nuw nsw i64 %.sroa.03.0.i, 3
  %i.o = shl nuw nsw i64 %i.m, %i.n
  %i.p = or i64 %i.o, %.sroa.0.0.i10
  %i.q = or disjoint i64 %.sroa.03.0.i, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.03.1.i = phi i64 [ %i.q, %bb.e ], [ %.sroa.03.0.i, %bb.d ] ; 3 uses
  %.sroa.0.1.i = phi i64 [ %i.p, %bb.e ], [ %.sroa.0.0.i10, %bb.d ] ; 2 uses
  %i.r = icmp samesign ult i64 %.sroa.03.1.i, %.sroa.0.0.i
  br i1 %i.r, label %bb.g, label %_RNvNtNtCsbvkFyIu7lgC_4core4hash3sip9u8to64_le.exit

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.03.1.i
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !7906, !noundef !8
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %.sroa.03.1.i, 3
  %i.w = shl nuw nsw i64 %i.u, %i.v
  %i.x = or i64 %i.w, %.sroa.0.1.i
  br label %_RNvNtNtCsbvkFyIu7lgC_4core4hash3sip9u8to64_le.exit

_RNvNtNtCsbvkFyIu7lgC_4core4hash3sip9u8to64_le.exit: ; preds = %bb.f, %bb.g
  %.sroa.0.2.i = phi i64 [ %i.x, %bb.g ], [ %.sroa.0.1.i, %bb.f ]
  %i.y = shl i64 %i.e, 3
  %i.z = and i64 %i.y, 56
  %i.aa = shl i64 %.sroa.0.2.i, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !8
  %i.ad = or i64 %i.ac, %i.aa                     ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8
  %i.ae = icmp ult i64 %2, %i.g
  br i1 %i.ae, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.a, %bb.i
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.g, %bb.i ] ; 4 uses
  %i.af = sub nsw i64 %2, %.sroa.0.0              ; 2 uses
  %i.ag = and i64 %i.af, 7                        ; 4 uses
  %i.ah = and i64 %i.af, -8                       ; 2 uses
  %i.ai = icmp ult i64 %.sroa.0.0, %i.ah
  br i1 %i.ai, label %.lr.ph, label %bb.k

.lr.ph:                                           ; preds = %bb.h
  %.promoted = load i64, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted20 = load i64, ptr %i.aj, align 8
  %.promoted21 = load i64, ptr %i.ak, align 8, !alias.scope !7909
  %.promoted23 = load i64, ptr %i.al, align 8, !alias.scope !7909
  br label %bb.q

bb.i:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core4hash3sip9u8to64_le.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !noundef !8
  %i.ao = xor i64 %i.an, %i.ad                    ; 3 uses
  %i.ap = load i64, ptr %0, align 8, !alias.scope !7912, !noundef !8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !7912, !noundef !8 ; 3 uses
  %i.as = add i64 %i.ar, %i.ap                    ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !7912, !noundef !8
  %i.av = add i64 %i.au, %i.ao                    ; 2 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 13)
  %i.ax = xor i64 %i.aw, %i.as                    ; 3 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.az = xor i64 %i.av, %i.ay                    ; 3 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 32)
  %i.bb = add i64 %i.av, %i.ax                    ; 3 uses
  %i.bc = add i64 %i.az, %i.ba                    ; 2 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 17)
  %i.be = xor i64 %i.bb, %i.bd
  store i64 %i.be, ptr %i.aq, align 8, !alias.scope !7912
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 21)
  %i.bg = xor i64 %i.bf, %i.bc
  store i64 %i.bg, ptr %i.am, align 8, !alias.scope !7912
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 32)
  store i64 %i.bh, ptr %i.at, align 8, !alias.scope !7912
  %i.bi = xor i64 %i.bc, %i.ad
  store i64 %i.bi, ptr %0, align 8
  br label %bb.h

bb.j:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core4hash3sip9u8to64_le.exit
  %i.bj = add i64 %i.e, %2
  br label %bb.r

._crit_edge:                                      ; preds = %bb.q
  store i64 %i.cy, ptr %i.aj, align 8
  store i64 %i.cw, ptr %i.ak, align 8, !alias.scope !7909
  store i64 %i.cz, ptr %i.al, align 8, !alias.scope !7909
  store i64 %i.da, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.h
  %.sroa.0.1.lcssa = phi i64 [ %i.db, %._crit_edge ], [ %.sroa.0.0, %bb.h ] ; 3 uses
  %i.bk = icmp samesign ugt i64 %i.ag, 3
  br i1 %i.bk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.lcssa
  %.sroa.014.0.copyload.i17 = load i32, ptr %i.bl, align 1, !alias.scope !7915
  %i.bm = zext i32 %.sroa.014.0.copyload.i17 to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.03.0.i11 = phi i64 [ 4, %bb.l ], [ 0, %bb.k ] ; 5 uses
  %.sroa.0.0.i12 = phi i64 [ %i.bm, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.bn = or disjoint i64 %.sroa.03.0.i11, 1
  %i.bo = icmp samesign ult i64 %i.bn, %i.ag
  br i1 %i.bo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bp = getelementptr i8, ptr %1, i64 %.sroa.0.1.lcssa
  %i.bq = getelementptr i8, ptr %i.bp, i64 %.sroa.03.0.i11
  %.sroa.015.0.copyload.i16 = load i16, ptr %i.bq, align 1, !alias.scope !7915
  %i.br = zext i16 %.sroa.015.0.copyload.i16 to i64
  %i.bs = shl nuw nsw i64 %.sroa.03.0.i11, 3
  %i.bt = shl nuw nsw i64 %i.br, %i.bs
  %i.bu = or i64 %i.bt, %.sroa.0.0.i12
  %i.bv = or disjoint i64 %.sroa.03.0.i11, 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.03.1.i13 = phi i64 [ %i.bv, %bb.n ], [ %.sroa.03.0.i11, %bb.m ] ; 3 uses
  %.sroa.0.1.i14 = phi i64 [ %i.bu, %bb.n ], [ %.sroa.0.0.i12, %bb.m ] ; 2 uses
  %i.bw = icmp samesign ult i64 %.sroa.03.1.i13, %i.ag
  br i1 %i.bw, label %bb.p, label %_RNvNtNtCsbvkFyIu7lgC_4core4hash3sip9u8to64_le.exit18

bb.p:                                             ; preds = %bb.o
  %i.bx = add i64 %.sroa.03.1.i13, %.sroa.0.1.lcssa ; 2 uses
  %i.by = icmp ult i64 %i.bx, %2
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %i.bx
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !7915, !noundef !8
  %i.cb = zext i8 %i.ca to i64
  %i.cc = shl nuw nsw i64 %.sroa.03.1.i13, 3
  %i.cd = shl nuw nsw i64 %i.cb, %i.cc
  %i.ce = or i64 %i.cd, %.sroa.0.1.i14
  br label %_RNvNtNtCsbvkFyIu7lgC_4core4hash3sip9u8to64_le.exit18

_RNvNtNtCsbvkFyIu7lgC_4core4hash3sip9u8to64_le.exit18: ; preds = %bb.o, %bb.p
  %.sroa.0.2.i15 = phi i64 [ %i.ce, %bb.p ], [ %.sroa.0.1.i14, %bb.o ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.0.2.i15, ptr %i.cf, align 8
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %i.cg = phi i64 [ %.promoted23, %.lr.ph ], [ %i.cz, %bb.q ]
  %i.ch = phi i64 [ %.promoted21, %.lr.ph ], [ %i.cw, %bb.q ] ; 3 uses
  %i.ci = phi i64 [ %.promoted20, %.lr.ph ], [ %i.cy, %bb.q ]
  %.sroa.0.119 = phi i64 [ %.sroa.0.0, %.lr.ph ], [ %i.db, %bb.q ] ; 2 uses
  %i.cj = phi i64 [ %.promoted, %.lr.ph ], [ %i.da, %bb.q ]
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.119
  %.sroa.07.0.copyload = load i64, ptr %i.ck, align 1 ; 2 uses
  %i.cl = xor i64 %i.ci, %.sroa.07.0.copyload     ; 3 uses
  %i.cm = add i64 %i.ch, %i.cj                    ; 3 uses
  %i.cn = add i64 %i.cg, %i.cl                    ; 2 uses
  %i.co = tail call noundef i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.ch, i64 13)
  %i.cp = xor i64 %i.co, %i.cm                    ; 3 uses
  %i.cq = tail call noundef i64 @llvm.fshl.i64(i64 %i.cl, i64 %i.cl, i64 16)
  %i.cr = xor i64 %i.cn, %i.cq                    ; 3 uses
  %i.cs = tail call noundef i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 32)
  %i.ct = add i64 %i.cn, %i.cp                    ; 3 uses
  %i.cu = add i64 %i.cr, %i.cs                    ; 2 uses
  %i.cv = tail call noundef i64 @llvm.fshl.i64(i64 %i.cp, i64 %i.cp, i64 17)
  %i.cw = xor i64 %i.ct, %i.cv                    ; 2 uses
  %i.cx = tail call noundef i64 @llvm.fshl.i64(i64 %i.cr, i64 %i.cr, i64 21)
  %i.cy = xor i64 %i.cx, %i.cu                    ; 2 uses
  %i.cz = tail call noundef i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 32) ; 2 uses
  %i.da = xor i64 %i.cu, %.sroa.07.0.copyload     ; 2 uses
  %i.db = add nuw i64 %.sroa.0.119, 8             ; 3 uses
  %i.dc = icmp ult i64 %i.db, %i.ah
  br i1 %i.dc, label %bb.q, label %._crit_edge

bb.r:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core4hash3sip9u8to64_le.exit18, %bb.j
  %storemerge = phi i64 [ %i.bj, %bb.j ], [ %i.ag, %_RNvNtNtCsbvkFyIu7lgC_4core4hash3sip9u8to64_le.exit18 ]
  store i64 %storemerge, ptr %i.d, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtCs2HSpDNxY7OE_9hashbrown5tableINtB5_9HashTablejENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7918)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !7918, !noalias !7921, !noundef !8 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXsb_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTablejENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1                          ; 2 uses
  %or.cond.i.i = icmp ugt i64 %i.d, 2305843009213693950
  br i1 %or.cond.i.i, label %bb.d, label %bb.c, !prof !7923

bb.c:                                             ; preds = %bb.b
  %i.e = shl nuw i64 %i.d, 3
  %i.f = add nuw i64 %i.e, 8
  %i.g = and i64 %i.f, -16                        ; 3 uses
  %i.h = add nsw i64 %i.b, 17                     ; 2 uses
  %i.i = add i64 %i.g, %i.h                       ; 4 uses
  %i.j = icmp ult i64 %i.i, %i.g
  %i.k = icmp ugt i64 %i.i, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.j, %i.k
  br i1 %or.cond.i.i.i, label %bb.d, label %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i.i, !prof !6227

_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i.i: ; preds = %bb.c
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !7924
  %i.l = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !7924 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTablejE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #39, !noalias !7924
  unreachable

bb.e:                                             ; preds = %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i.i
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef %i.i) #36, !noalias !7924
  unreachable

_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTablejE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.g ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7929)
  %i.o = load ptr, ptr %1, align 8, !alias.scope !7932, !noalias !7933, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.n, ptr nonnull align 1 %i.o, i64 %i.h, i1 false), !noalias !7935
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7936)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !7939, !noalias !7940, !noundef !8 ; 3 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTablejE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.val4.i.i.i = load <16 x i8>, ptr %i.o, align 16, !noalias !7942
  %i.s = icmp sgt <16 x i8> %.val4.i.i.i, splat (i8 -1)
  %i.t = bitcast <16 x i1> %i.s to i16
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.v = ptrtoint ptr %i.o to i64
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.i.i, %.lr.ph.i.i
  %.sroa.14.018.i.i = phi i64 [ %i.q, %.lr.ph.i.i ], [ %i.ah, %.loopexit.i.i ]
  %.sroa.10.017.i.i = phi i16 [ %i.t, %.lr.ph.i.i ], [ %i.ae, %.loopexit.i.i ] ; 2 uses
  %.sroa.6.016.i.i = phi ptr [ %i.u, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %.loopexit.i.i ] ; 2 uses
  %.sroa.012.015.i.i = phi ptr [ %i.o, %.lr.ph.i.i ], [ %.sroa.012.1.i.i, %.loopexit.i.i ] ; 2 uses
  %.not11.i.i.i = icmp eq i16 %.sroa.10.017.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %i.w = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %.sroa.6.016.i.i, %bb.f ] ; 2 uses
  %i.x = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %.sroa.012.015.i.i, %bb.f ]
  %.val9.i.i.i = load <16 x i8>, ptr %i.w, align 16, !noalias !7943
  %i.y = icmp sgt <16 x i8> %.val9.i.i.i, splat (i8 -1)
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 -128 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.y to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.f
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.015.i.i, %bb.f ], [ %i.z, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.016.i.i, %bb.f ], [ %i.aa, %.lr.ph.i.i.i ]
  %.lcssa.i.i.i = phi i16 [ %.sroa.10.017.i.i, %bb.f ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.ab = add i16 %.lcssa.i.i.i, -1
  %i.ac = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.ad = zext nneg i16 %i.ac to i64
  %i.ae = and i16 %i.ab, %.lcssa.i.i.i
  %i.af = sub nsw i64 0, %i.ad
  %i.ag = getelementptr inbounds [8 x i8], ptr %.sroa.012.1.i.i, i64 %i.af ; 2 uses
  %i.ah = add i64 %.sroa.14.018.i.i, -1           ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -8
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !7946, !noalias !7935, !noundef !8
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.v, %i.ak
  %i.am = ashr exact i64 %i.al, 3
  %i.an = sub nsw i64 0, %i.am
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.an
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -8
  store i64 %i.aj, ptr %i.ap, align 8, !noalias !7935
  %i.aq = icmp eq i64 %i.ah, 0
  br i1 %i.aq, label %.loopexit.i, label %bb.f

.loopexit.i:                                      ; preds = %.loopexit.i.i, %_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTablejE17new_uninitializedCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !7932, !noalias !7933, !noundef !8
  br label %_RNvXsb_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTablejENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit

_RNvXsb_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTablejENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %.loopexit.i
  %.sroa.7.0 = phi i64 [ %i.q, %.loopexit.i ], [ 0, %bb.a ]
  %.sroa.6.0 = phi i64 [ %i.as, %.loopexit.i ], [ 0, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.n, %.loopexit.i ], [ @4, %bb.a ]
  store ptr %.sroa.0.0, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtCsjhHCjzi9uUI_17datafusion_common6formatNtB5_13ExplainFormatNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !1538, !noundef !8 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs4_NtCsjhHCjzi9uUI_17datafusion_common6formatNtB5_13ExplainFormatNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs4_NtCsjhHCjzi9uUI_17datafusion_common6formatNtB5_13ExplainFormatNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.414, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs7_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6ColumnNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 10 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [56 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = load i64, ptr %1, align 8, !range !390, !noundef !8 ; 3 uses
  %.not = icmp eq i64 %i.e, 3
  %.sink18.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sink18.i.sroa.gep2 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sink15.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sink15.i.sroa.gep3 = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7949)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7952)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !7952, !noalias !7949, !nonnull !8, !noundef !8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !7952, !noalias !7949, !noundef !8 ; 3 uses
  %i.j = atomicrmw add ptr %i.g, i64 1 monotonic, align 8, !noalias !7954
  %i.k = icmp slt i64 %i.j, 0                     ; 3 uses
  switch i64 %i.e, label %default.unreachable [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  br i1 %i.k, label %bb.f, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.d:                                             ; preds = %bb.b
  br i1 %i.k, label %bb.h, label %bb.g

bb.e:                                             ; preds = %bb.b
  br i1 %i.k, label %bb.k, label %bb.j

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

.sink.split.i:                                    ; preds = %bb.n, %bb.g
  %.sink18.i.sroa.phi = phi ptr [ %.sink18.i.sroa.gep, %bb.n ], [ %.sink18.i.sroa.gep2, %bb.g ]
  %.sink16.i = phi ptr [ %i.s, %bb.n ], [ %i.g, %bb.g ]
  %.sink15.i.sroa.phi = phi ptr [ %.sink15.i.sroa.gep, %bb.n ], [ %.sink15.i.sroa.gep3, %bb.g ]
  %.sink13.i = phi i64 [ %i.u, %bb.n ], [ %i.i, %bb.g ]
  %.sink12.ph.i = phi i64 [ 40, %bb.n ], [ 24, %bb.g ]
  %.sink10.ph.i = phi ptr [ %i.y, %bb.n ], [ %i.m, %bb.g ]
  %.sink9.ph.i = phi i64 [ 48, %bb.n ], [ 32, %bb.g ]
  %.sink7.ph.i = phi i64 [ %i.aa, %bb.n ], [ %i.o, %bb.g ]
  store ptr %.sink16.i, ptr %.sink18.i.sroa.phi, align 8, !alias.scope !7949, !noalias !7952
  store i64 %.sink13.i, ptr %.sink15.i.sroa.phi, align 8, !alias.scope !7949, !noalias !7952
  br label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.g:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !7952, !noalias !7949, !nonnull !8, !noundef !8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !7952, !noalias !7949, !noundef !8
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !noalias !7954
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.i, label %.sink.split.i

bb.h:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !7952, !noalias !7949, !nonnull !8, !noundef !8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !7952, !noalias !7949, !noundef !8
  %i.v = atomicrmw add ptr %i.s, i64 1 monotonic, align 8, !noalias !7954
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !7952, !noalias !7949, !nonnull !8, !noundef !8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !7952, !noalias !7949, !noundef !8
  %i.ab = atomicrmw add ptr %i.y, i64 1 monotonic, align 8, !noalias !7954
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.j
  tail call void @llvm.trap()
  unreachable

bb.n:                                             ; preds = %bb.l
  store ptr %i.g, ptr %.sink18.i.sroa.gep2, align 8, !alias.scope !7949, !noalias !7952
  store i64 %i.i, ptr %.sink15.i.sroa.gep3, align 8, !alias.scope !7949, !noalias !7952
end_hunk_1

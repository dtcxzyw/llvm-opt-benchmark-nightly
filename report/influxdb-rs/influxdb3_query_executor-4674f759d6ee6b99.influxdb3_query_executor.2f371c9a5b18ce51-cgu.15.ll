Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_query_executor-4674f759d6ee6b99.influxdb3_query_executor.2f371c9a5b18ce51-cgu.15?download=true
inline.NumInlined: 5556
inline.NumDeleted: 2435
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs_NtNtCseCDlJsl44RV_5tokio4task8join_setINtB4_7JoinSetuE6insertCs43kcu4yvms7_24influxdb3_query_executor:bb.a
          to label %.thread12 unwind label %bb.h

bb.f:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !7872)
  call void @llvm.experimental.noalias.scope.decl(metadata !7875)
  call void @llvm.experimental.noalias.scope.decl(metadata !7878)
  %i.m = load ptr, ptr %i.a, align 8, !alias.scope !7881, !nonnull !11, !noundef !11
  %i.n = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !7881
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4util17idle_notified_set20EntryInOneOfTheListsINtNtNtNtBI_7runtime4task4join10JoinHandleuEEECs43kcu4yvms7_24influxdb3_query_executor.exit6

bb.g:                                             ; preds = %bb.f
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtCseCDlJsl44RV_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBM_7runtime4task4join10JoinHandleuEEE9drop_slowCsjU3KQFpSKkZ_24datafusion_udf_wasm_host(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4util17idle_notified_set20EntryInOneOfTheListsINtNtNtNtBI_7runtime4task4join10JoinHandleuEEECs43kcu4yvms7_24influxdb3_query_executor.exit6

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4util17idle_notified_set20EntryInOneOfTheListsINtNtNtNtBI_7runtime4task4join10JoinHandleuEEECs43kcu4yvms7_24influxdb3_query_executor.exit6: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %1

bb.h:                                             ; preds = %bb.i, %.thread12, %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

.thread12:                                        ; preds = %bb.e, %bb.d, %.thread17
  %.pn16 = phi { ptr, i32 } [ %i.e, %.thread17 ], [ %i.i, %bb.d ], [ %i.i, %bb.e ]
  invoke void @_RNvXs4_NtNtNtCseCDlJsl44RV_5tokio7runtime4task5abortNtB5_11AbortHandleNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio7runtime4task4join10JoinHandleuEECs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.h

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio7runtime4task4join10JoinHandleuEECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %.thread12, %bb.i
  %.pn.pn11 = phi { ptr, i32 } [ %i.q, %bb.i ], [ %.pn16, %.thread12 ]
  resume { ptr, i32 } %.pn.pn11

bb.i:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4joinINtB5_10JoinHandleuENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio7runtime4task4join10JoinHandleuEECs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvNtCscdodAO9FK5_5alloc3fmt6format(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.c = and i64 %i.b, 1
  %.not = icmp eq i64 %i.c, 0
  %i.d = lshr i64 %i.b, 1                         ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7882)
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7885)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7888)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7891
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %i.d, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !7891
  %i.e = load i64, ptr %i.a, align 8, !range !455, !noalias !7891, !noundef !11
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !456, !noalias !7891, !noundef !11 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.f, label %bb.c, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i, !prof !31

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.i, align 8, !noalias !7891
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.j) #35, !noalias !7891
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i: ; preds = %bb.b
  %i.k = load ptr, ptr %i.i, align 8, !noalias !7891, !nonnull !11, !noundef !11 ; 2 uses
  %i.l = icmp ule i64 %i.d, %i.h
  tail call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7891
  %.not.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i, label %_RNvYNvYeNtNtCscdodAO9FK5_5alloc6borrow7ToOwned8to_ownedINtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTReEE9call_onceCs43kcu4yvms7_24influxdb3_query_executor.exit.i, label %bb.d

bb.d:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %i.d, i1 false), !noalias !7898
  br label %_RNvYNvYeNtNtCscdodAO9FK5_5alloc6borrow7ToOwned8to_ownedINtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTReEE9call_onceCs43kcu4yvms7_24influxdb3_query_executor.exit.i

_RNvYNvYeNtNtCscdodAO9FK5_5alloc6borrow7ToOwned8to_ownedINtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTReEE9call_onceCs43kcu4yvms7_24influxdb3_query_executor.exit.i: ; preds = %bb.d, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i.i
  store i64 %i.h, ptr %0, align 8, !alias.scope !7899, !noalias !7900
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !7899, !noalias !7900
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !7899, !noalias !7900
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2), !noalias !7901
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs43kcu4yvms7_24influxdb3_query_executor.exit

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %_RNvYNvYeNtNtCscdodAO9FK5_5alloc6borrow7ToOwned8to_ownedINtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTReEE9call_onceCs43kcu4yvms7_24influxdb3_query_executor.exit.i, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownINtNtCsaaj5M71uUq9_5bimap3mem7WrappereEINtB2_10EquivalentINtBt_3RefINtNtCscdodAO9FK5_5alloc4sync3ArceEEE10equivalentCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #7 {
bb.a:
  %.val = load ptr, ptr %2, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.a = getelementptr i8, ptr %.val, i64 24
  %.val1.i = load i64, ptr %i.a, align 8, !noundef !11
  %i.b = icmp eq i64 %1, %.val1.i
  br i1 %i.b, label %bb.b, label %_RNvXsd_NtCsaaj5M71uUq9_5bimap3memINtB5_7WrappereENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs43kcu4yvms7_24influxdb3_query_executor.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %.val.i = load ptr, ptr %i.c, align 8, !nonnull !11, !noundef !11
  %i.d = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %0, ptr nonnull readonly %i.d, i64 %1), !alias.scope !7902
  %i.e = icmp eq i32 %bcmp.i.i, 0
  br label %_RNvXsd_NtCsaaj5M71uUq9_5bimap3memINtB5_7WrappereENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs43kcu4yvms7_24influxdb3_query_executor.exit

_RNvXsd_NtCsaaj5M71uUq9_5bimap3memINtB5_7WrappereENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i1 [ %i.e, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrowneINtB2_10EquivalentNtNtCscdodAO9FK5_5alloc6string6StringE10equivalentCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val1 = load i64, ptr %i.a, align 8, !noundef !11
  %i.b = icmp eq i64 %1, %.val1
  br i1 %i.b, label %bb.b, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !11, !noundef !11
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %0, ptr nonnull readonly %.val, i64 %1), !alias.scope !7909
  %i.d = icmp eq i32 %bcmp.i, 0
  br label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ %i.d, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyINtNtNtCs6ePPILGZvJ2_11arrow_array5array10list_array16GenericListArraylENtB2_3Any7type_idCs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @412, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyINtNtNtCs6ePPILGZvJ2_11arrow_array5array10list_array16GenericListArrayxENtB2_3Any7type_idCs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @413, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyNtNtCs43kcu4yvms7_24influxdb3_query_executor13query_planner10SchemaExecNtB2_3Any7type_idBv_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @414, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyNtNtNtCs6ePPILGZvJ2_11arrow_array5array12struct_array11StructArrayNtB2_3Any7type_idCs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @415, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyNtNtNtCs6ePPILGZvJ2_11arrow_array5array21fixed_size_list_array18FixedSizeListArrayNtB2_3Any7type_idCs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @416, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyNtNtNtCs6ePPILGZvJ2_11arrow_array5array9map_array8MapArrayNtB2_3Any7type_idCs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @417, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCsc96bKABWO34_9hashbrown3mapINtB2_7HashMapINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCs3bxdDoT6cu5_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EuENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7913)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !7913, !noalias !7916, !noundef !11 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXsb_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB5_8RawTableTINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCs3bxdDoT6cu5_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EuEENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs43kcu4yvms7_24influxdb3_query_executor.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1                          ; 2 uses
  %i.e = icmp ugt i64 %i.d, 1152921504606846975
  br i1 %i.e, label %bb.d, label %bb.c, !prof !31

bb.c:                                             ; preds = %bb.b
  %i.f = shl nuw i64 %i.d, 4                      ; 3 uses
  %i.g = add nsw i64 %i.b, 17                     ; 2 uses
  %i.h = add i64 %i.f, %i.g                       ; 5 uses
  %i.i = icmp ult i64 %i.h, %i.f
  %i.j = icmp ugt i64 %i.h, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.i, %i.j
  br i1 %or.cond.i.i.i, label %bb.d, label %_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !prof !7918

_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %bb.c
  %2 = icmp eq i64 %i.h, 0
  br i1 %2, label %_RNvMs6_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB5_8RawTableTINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCs3bxdDoT6cu5_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EuEE17new_uninitializedCs43kcu4yvms7_24influxdb3_query_executor.exit.i, label %_RNvXs_NtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i.i

_RNvXs_NtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i.i: ; preds = %_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !7919
  %i.k = tail call noundef align 16 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 16) #34, !noalias !7919 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %_RNvMs6_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB5_8RawTableTINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCs3bxdDoT6cu5_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EuEE17new_uninitializedCs43kcu4yvms7_24influxdb3_query_executor.exit.i

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @176, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @178) #35, !noalias !7919
  unreachable

bb.e:                                             ; preds = %_RNvXs_NtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i.i
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef %i.h) #35, !noalias !7919
  unreachable

_RNvMs6_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB5_8RawTableTINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCs3bxdDoT6cu5_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EuEE17new_uninitializedCs43kcu4yvms7_24influxdb3_query_executor.exit.i: ; preds = %_RNvXs_NtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i.i, %_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %.sroa.0.0.i.i7.i.i.i = phi ptr [ %i.k, %_RNvXs_NtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i7.i.i.i, i64 %i.f ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7924)
  %i.n = load ptr, ptr %1, align 8, !alias.scope !7927, !noalias !7928, !nonnull !11, !noundef !11 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.m, ptr nonnull align 1 %i.n, i64 %i.g, i1 false), !noalias !7930
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7931)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !7934, !noalias !7935, !noundef !11 ; 3 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB5_8RawTableTINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCs3bxdDoT6cu5_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EuEE17new_uninitializedCs43kcu4yvms7_24influxdb3_query_executor.exit.i
  %.val24.i.i.i = load <16 x i8>, ptr %i.n, align 16, !noalias !7937
  %i.r = icmp sgt <16 x i8> %.val24.i.i.i, splat (i8 -1)
  %i.s = bitcast <16 x i1> %i.r to i16
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.u = ptrtoint ptr %i.n to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %.lr.ph.i.i
  %.sroa.14.021.i.i = phi i64 [ %i.p, %.lr.ph.i.i ], [ %i.ai, %bb.h ]
  %.sroa.10.020.i.i = phi i16 [ %i.s, %.lr.ph.i.i ], [ %i.ak, %bb.h ] ; 2 uses
  %.sroa.6.019.i.i = phi ptr [ %i.t, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %bb.h ] ; 2 uses
  %.sroa.015.018.i.i = phi ptr [ %i.n, %.lr.ph.i.i ], [ %.sroa.015.1.i.i, %bb.h ] ; 2 uses
  %.not11.i.i.i = icmp eq i16 %.sroa.10.020.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %i.v = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %.sroa.6.019.i.i, %bb.f ] ; 2 uses
  %i.w = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %.sroa.015.018.i.i, %bb.f ]
  %.val79.i.i.i = load <16 x i8>, ptr %i.v, align 16, !noalias !7938
  %i.x = icmp sgt <16 x i8> %.val79.i.i.i, splat (i8 -1)
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -256 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.x to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.f
  %.sroa.015.1.i.i = phi ptr [ %.sroa.015.018.i.i, %bb.f ], [ %i.y, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.019.i.i, %bb.f ], [ %i.z, %.lr.ph.i.i.i ]
  %.lcssa.i.i.i = phi i16 [ %.sroa.10.020.i.i, %bb.f ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.aa = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.ab = zext nneg i16 %i.aa to i64
  %i.ac = sub nsw i64 0, %i.ab
  %i.ad = getelementptr inbounds [16 x i8], ptr %.sroa.015.1.i.i, i64 %i.ac ; 3 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -16
  %.val10.i.i = load ptr, ptr %i.ae, align 8, !noalias !7930, !nonnull !11, !noundef !11 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ad, i64 -8
  %.val11.i.i = load ptr, ptr %i.af, align 8, !noalias !7930 ; 2 uses
  %i.ag = atomicrmw add ptr %.val10.i.i, i64 1 monotonic, align 8, !noalias !7930
  %i.ah = icmp slt i64 %i.ag, 0
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.loopexit.i.i
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %.loopexit.i.i
  %i.ai = add i64 %.sroa.14.021.i.i, -1           ; 2 uses
  %i.aj = add i16 %.lcssa.i.i.i, -1
  %i.ak = and i16 %i.aj, %.lcssa.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11.i.i) ]
  %i.al = ptrtoint ptr %i.ad to i64
  %i.am = sub i64 %i.u, %i.al
  %i.an = ashr exact i64 %i.am, 4
  %i.ao = sub nsw i64 0, %i.an
  %i.ap = getelementptr inbounds [16 x i8], ptr %i.m, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -16
  store ptr %.val10.i.i, ptr %i.aq, align 16, !noalias !7930
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 -8
  store ptr %.val11.i.i, ptr %i.ar, align 8, !noalias !7930
  %i.as = icmp eq i64 %i.ai, 0
  br i1 %i.as, label %.loopexit.i, label %bb.f

.loopexit.i:                                      ; preds = %bb.h, %_RNvMs6_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB5_8RawTableTINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCs3bxdDoT6cu5_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EuEE17new_uninitializedCs43kcu4yvms7_24influxdb3_query_executor.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !7927, !noalias !7928, !noundef !11
  br label %_RNvXsb_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB5_8RawTableTINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCs3bxdDoT6cu5_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EuEENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs43kcu4yvms7_24influxdb3_query_executor.exit

_RNvXsb_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB5_8RawTableTINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCs3bxdDoT6cu5_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EuEENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.a, %.loopexit.i
  %.sroa.7.0 = phi i64 [ %i.p, %.loopexit.i ], [ 0, %bb.a ]
  %.sroa.6.0 = phi i64 [ %i.au, %.loopexit.i ], [ 0, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.m, %.loopexit.i ], [ @463, %bb.a ]
  store ptr %.sroa.0.0, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCsc96bKABWO34_9hashbrown3mapINtB2_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 16              ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7941)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !7941, !noalias !7944, !noundef !11 ; 6 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @464, i64 32, i1 false), !noalias !7941
  br label %_RNvXsb_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs43kcu4yvms7_24influxdb3_query_executor.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7946
  %i.g = add i64 %i.e, 1                          ; 2 uses
  %i.h = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.g, i64 144) ; 2 uses
  %i.i = extractvalue { i64, i1 } %i.h, 1
  br i1 %i.i, label %bb.e, label %bb.d, !prof !31

bb.d:                                             ; preds = %bb.c
  %i.j = extractvalue { i64, i1 } %i.h, 0         ; 3 uses
  %i.k = add i64 %i.e, 17                         ; 2 uses
  %i.l = add i64 %i.j, %i.k                       ; 5 uses
  %i.m = icmp ult i64 %i.l, %i.j
  %i.n = icmp ugt i64 %i.l, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.m, %i.n
  br i1 %or.cond.i.i.i, label %bb.e, label %_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !prof !7918

_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %bb.d
  %2 = icmp eq i64 %i.l, 0
  br i1 %2, label %_RNvMs6_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEE17new_uninitializedCs43kcu4yvms7_24influxdb3_query_executor.exit.i, label %_RNvXs_NtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i.i

_RNvXs_NtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i.i: ; preds = %_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !7947
  %i.o = tail call noundef align 16 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 16) #34, !noalias !7947 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %_RNvMs6_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEE17new_uninitializedCs43kcu4yvms7_24influxdb3_query_executor.exit.i

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @176, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @178) #35, !noalias !7947
  unreachable

bb.f:                                             ; preds = %_RNvXs_NtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i.i
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef %i.l) #35, !noalias !7947
  unreachable

_RNvMs6_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEE17new_uninitializedCs43kcu4yvms7_24influxdb3_query_executor.exit.i: ; preds = %_RNvXs_NtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i.i, %_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %.sroa.0.0.i.i7.i.i.i = phi ptr [ %i.o, %_RNvXs_NtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i7.i.i.i, i64 %i.j ; 3 uses
  %i.r = icmp ult i64 %i.e, 8
  %i.s = lshr i64 %i.g, 3
  %i.t = mul nuw nsw i64 %i.s, 7
  %.sroa.02.0.i.i.i = select i1 %i.r, i64 %i.e, i64 %i.t
  store ptr %i.q, ptr %i.b, align 8, !noalias !7946
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.e, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !7946
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.02.0.i.i.i, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !7946
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !7946
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7952)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7955)
  %i.u = load ptr, ptr %1, align 8, !alias.scope !7957, !noalias !7958, !nonnull !11, !noundef !11 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.q, ptr nonnull align 1 %i.u, i64 %i.k, i1 false), !noalias !7959
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7960)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !7963, !noalias !7964, !noundef !11 ; 3 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEE17new_uninitializedCs43kcu4yvms7_24influxdb3_query_executor.exit.i
  %.val24.i.i.i = load <16 x i8>, ptr %i.u, align 16, !noalias !7966
  %i.y = icmp sgt <16 x i8> %.val24.i.i.i, splat (i8 -1)
  %i.z = bitcast <16 x i1> %i.y to i16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ac = ptrtoint ptr %i.u to i64
  br label %bb.h

bb.g:                                             ; preds = %.loopexit.i.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.i, %bb.g
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ad, %bb.g ], [ %i.as, %bb.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown10scopeguard10ScopeGuardTjQINtNtNtBG_3raw5inner8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEEENCNvMsd_B1y_B1v_15clone_from_impl0EECs43kcu4yvms7_24influxdb3_query_executor(i64 %.sroa.0.023.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #32
          to label %.body.i unwind label %bb.k, !noalias !7967

bb.h:                                             ; preds = %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs43kcu4yvms7_24influxdb3_query_executor.exit.i.i, %.lr.ph.i.i
  %.sroa.0.023.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ba, %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs43kcu4yvms7_24influxdb3_query_executor.exit.i.i ]
  %.sroa.14.022.i.i = phi i64 [ %i.w, %.lr.ph.i.i ], [ %i.ap, %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs43kcu4yvms7_24influxdb3_query_executor.exit.i.i ]
  %.sroa.10.021.i.i = phi i16 [ %i.z, %.lr.ph.i.i ], [ %i.am, %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs43kcu4yvms7_24influxdb3_query_executor.exit.i.i ] ; 2 uses
  %.sroa.6.020.i.i = phi ptr [ %i.aa, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs43kcu4yvms7_24influxdb3_query_executor.exit.i.i ] ; 2 uses
  %.sroa.013.019.i.i = phi ptr [ %i.u, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs43kcu4yvms7_24influxdb3_query_executor.exit.i.i ] ; 2 uses
  %.not11.i.i.i = icmp eq i16 %.sroa.10.021.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %.lr.ph.i.i.i
  %i.ae = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %.sroa.6.020.i.i, %bb.h ] ; 2 uses
  %i.af = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %.sroa.013.019.i.i, %bb.h ]
  %.val79.i.i.i = load <16 x i8>, ptr %i.ae, align 16, !noalias !7968
  %i.ag = icmp sgt <16 x i8> %.val79.i.i.i, splat (i8 -1)
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 -2304 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.ag to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.h
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.019.i.i, %bb.h ], [ %i.ah, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.020.i.i, %bb.h ], [ %i.ai, %.lr.ph.i.i.i ]
  %.lcssa.i.i.i = phi i16 [ %.sroa.10.021.i.i, %bb.h ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.aj = add i16 %.lcssa.i.i.i, -1
  %i.ak = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.al = zext nneg i16 %i.ak to i64
  %i.am = and i16 %i.aj, %.lcssa.i.i.i
  %i.an = sub nsw i64 0, %i.al
  %i.ao = getelementptr inbounds [144 x i8], ptr %.sroa.013.1.i.i, i64 %i.an ; 3 uses
  %i.ap = add i64 %.sroa.14.022.i.i, -1           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7959
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 -144
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 16 captures(none) dereferenceable(144) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(144) %i.aq)
          to label %.noexc.i.i unwind label %bb.g, !noalias !7959

.noexc.i.i:                                       ; preds = %.loopexit.i.i
  %i.ar = getelementptr inbounds i8, ptr %i.ao, i64 -112
  invoke fastcc void @_RNvXsV_NtCs7fnekraeopg_15datafusion_expr4exprNtB5_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.ab, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ar)
          to label %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs43kcu4yvms7_24influxdb3_query_executor.exit.i.i unwind label %bb.i, !noalias !7959

bb.i:                                             ; preds = %.noexc.i.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 16 dereferenceable(144) %i.a) #32
          to label %.body.i.i unwind label %bb.j, !noalias !7959

bb.j:                                             ; preds = %bb.i
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !7959
  unreachable

_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs43kcu4yvms7_24influxdb3_query_executor.exit.i.i: ; preds = %.noexc.i.i
  %i.au = ptrtoint ptr %i.ao to i64
  %i.av = sub i64 %i.ac, %i.au
  %i.aw = sdiv exact i64 %i.av, 144               ; 2 uses
  %i.ax = sub nsw i64 0, %i.aw
  %i.ay = getelementptr inbounds [144 x i8], ptr %i.q, i64 %i.ax
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.az, ptr noundef nonnull align 16 dereferenceable(144) %i.a, i64 144, i1 false), !noalias !7959
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7959
  %i.ba = add nsw i64 %i.aw, 1
  %i.bb = icmp eq i64 %i.ap, 0
  br i1 %i.bb, label %.loopexit.i, label %bb.h

bb.k:                                             ; preds = %.body.i.i
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !7959
  unreachable

.body.i:                                          ; preds = %.body.i.i
  invoke void @_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprENtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.b, ptr noalias nonnull readonly captures(address, read_provenance) poison, i64 noundef 144, i64 noundef 16)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEEECs43kcu4yvms7_24influxdb3_query_executor.exit.i unwind label %bb.l, !noalias !7946

.loopexit.i:                                      ; preds = %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs43kcu4yvms7_24influxdb3_query_executor.exit.i.i, %_RNvMs6_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEE17new_uninitializedCs43kcu4yvms7_24influxdb3_query_executor.exit.i
  store i64 %i.w, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !7952, !noalias !7967
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !7957, !noalias !7958, !noundef !11
  store i64 %i.be, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !7952, !noalias !7967
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !7941
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7946
  br label %_RNvXsb_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs43kcu4yvms7_24influxdb3_query_executor.exit

bb.l:                                             ; preds = %.body.i
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !7946
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEEECs43kcu4yvms7_24influxdb3_query_executor.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i.i

_RNvXsb_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.b, %.loopexit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCsgQfI1edjipl_9hashbrown3mapINtB2_7HashMapNtNtCs7fnekraeopg_15datafusion_expr4expr4ExpruNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load <2 x i64>, ptr %i.a, align 8
  tail call void @_RNvXsb_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs7fnekraeopg_15datafusion_expr4expr4ExpruEENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  store <2 x i64> %i.c, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCsgQfI1edjipl_9hashbrown3mapINtB2_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringBK_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load <2 x i64>, ptr %i.a, align 8
  tail call void @_RNvXsb_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringBP_EENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  store <2 x i64> %i.c, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCsgQfI1edjipl_9hashbrown3mapINtB2_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtBO_4sync3ArcNtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan11LogicalPlanENtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load <2 x i64>, ptr %i.a, align 8
  tail call void @_RNvXsb_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan11LogicalPlanEEENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  store <2 x i64> %i.c, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCsgQfI1edjipl_9hashbrown3mapINtB2_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load <2 x i64>, ptr %i.a, align 8
  tail call void @_RNvXsb_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamEENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  store <2 x i64> %i.c, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCsgQfI1edjipl_9hashbrown3mapINtB2_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load <2 x i64>, ptr %i.a, align 8
  tail call void @_RNvXsb_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  store <2 x i64> %i.c, ptr %i.b, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef nonnull align 8 ptr @_RNvXNtNtCs6EdGyLKtjWH_18iox_query_influxql8frontend7plannerNtB2_21ContextSchemaProviderNtNtNtB6_4plan7planner14SchemaProvider15execution_props(ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !align !12, !noundef !11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1440
end_hunk_0

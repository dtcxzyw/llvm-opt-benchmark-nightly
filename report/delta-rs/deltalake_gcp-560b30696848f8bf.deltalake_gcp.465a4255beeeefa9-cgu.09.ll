inline.NumInlined: 200
inline.NumDeleted: 87
begin_hunk_0_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store6client13ClientOptionsECs62u4JVtZyFF_13deltalake_gcp:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !60, !noundef !4
  invoke void %i.g(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef %i.j, i64 noundef %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsjyY8HP3IvQ6_12object_store6config11ConfigValueNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueEEECs62u4JVtZyFF_13deltalake_gcp.exit unwind label %bb.g, !inline_history !61

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a)
end_hunk_0
begin_hunk_1_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store6client13ClientOptionsECs62u4JVtZyFF_13deltalake_gcp:bb.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i.i: ; preds = %bb.d
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsjyY8HP3IvQ6_12object_store6config11ConfigValueNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueEEECs62u4JVtZyFF_13deltalake_gcp.exit unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i.i, %bb.c
  %i.o = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEE9drop_slowB36_:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %.val3.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  invoke void %i.h(ptr noundef %.val4.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs7cL0Iqqqcdm_12futures_core4task10___internal12atomic_waker11AtomicWakerECs62u4JVtZyFF_13deltalake_gcp.exit.i unwind label %bb.i, !inline_history !171

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
end_hunk_2
begin_hunk_3_@_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEE9drop_slowB36_:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  invoke void %i.m(ptr noundef %.val2.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs7cL0Iqqqcdm_12futures_core4task10___internal12atomic_waker11AtomicWakerECs62u4JVtZyFF_13deltalake_gcp.exit6.i unwind label %bb.g, !inline_history !171

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs7cL0Iqqqcdm_12futures_core4task10___internal12atomic_waker11AtomicWakerECs62u4JVtZyFF_13deltalake_gcp.exit.i: ; preds = %bb.g, %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.q, %bb.g ], [ %i.c, %bb.c ], [ %i.c, %bb.b ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  %i.n = load ptr, ptr %i.b, align 8, !alias.scope !178, !nonnull !4, !noundef !4
  %i.o = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !179
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.f, label %.body

end_hunk_3
begin_hunk_4_@_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEE9drop_slowB36_:bb.a
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs7cL0Iqqqcdm_12futures_core4task10___internal12atomic_waker11AtomicWakerECs62u4JVtZyFF_13deltalake_gcp.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs7cL0Iqqqcdm_12futures_core4task10___internal12atomic_waker11AtomicWakerECs62u4JVtZyFF_13deltalake_gcp.exit6.i: ; preds = %bb.e, %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  %i.r = load ptr, ptr %i.b, align 8, !alias.scope !186, !nonnull !4, !noundef !4
  %i.s = atomicrmw sub ptr %i.r, i64 1 release, align 8, !noalias !187
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEB36_.exit

end_hunk_4
begin_hunk_5_@_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEE9drop_slowB2F_:bb.a

bb.d:                                             ; preds = %bb.g, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.j, %bb.g ], [ %i.c, %bb.b ]
  %.val2.i = load ptr, ptr %i.b, align 8, !alias.scope !188, !nonnull !4, !noundef !4 ; 3 uses
  %i.f = icmp eq ptr %.val2.i, inttoptr (i64 -1 to ptr)
  br i1 %i.f, label %.body, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !191
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.f, label %.body

bb.f:                                             ; preds = %bb.e
  fence acquire
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef 64, i64 noundef 8) #13, !noalias !191
  br label %.body

bb.g:                                             ; preds = %bb.c
end_hunk_5
begin_hunk_6_@_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEE9drop_slowB2F_:bb.a
  br label %bb.d

bb.h:                                             ; preds = %bb.c
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !188, !nonnull !4, !noundef !4 ; 3 uses
  %i.k = icmp eq ptr %.val.i, inttoptr (i64 -1 to ptr)
  br i1 %i.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEB2F_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.m = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !194
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEB2F_.exit

bb.j:                                             ; preds = %bb.i
  fence acquire
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 64, i64 noundef 8) #13, !noalias !194
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEB2F_.exit

bb.k:                                             ; preds = %bb.b
end_hunk_6
begin_hunk_7_@_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtB8_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringENtB6_5Debug3fmtCs62u4JVtZyFF_13deltalake_gcp:bb.a
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !13, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  %i.c = load i64, ptr %i.b, align 8, !range !34, !alias.scope !197, !noalias !200, !noundef !4
  %.not.i = icmp eq i64 %i.c, -9223372036854775808
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !202
  store ptr %i.b, ptr %i.a, align 8, !noalias !202
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !202
  br label %_RNvXsR_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB7_3fmt5Debug3fmtCs62u4JVtZyFF_13deltalake_gcp.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 4), !noalias !197
  br label %_RNvXsR_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB7_3fmt5Debug3fmtCs62u4JVtZyFF_13deltalake_gcp.exit

_RNvXsR_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB7_3fmt5Debug3fmtCs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %bb.b, %bb.c
end_hunk_7
begin_hunk_8_@_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtB8_6option6OptionhENtB6_5Debug3fmtCs62u4JVtZyFF_13deltalake_gcp:bb.a
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  %i.c = load i8, ptr %i.b, align 1, !range !206, !alias.scope !203, !noalias !207, !noundef !4
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !209
  store ptr %i.e, ptr %i.a, align 8, !noalias !209
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @48)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !209
  br label %_RNvXsR_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionhENtNtB7_3fmt5Debug3fmtCs62u4JVtZyFF_13deltalake_gcp.exit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 4), !noalias !203
  br label %_RNvXsR_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionhENtNtB7_3fmt5Debug3fmtCs62u4JVtZyFF_13deltalake_gcp.exit

_RNvXsR_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionhENtNtB7_3fmt5Debug3fmtCs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %bb.b, %bb.c
end_hunk_8
begin_hunk_9_@_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtNtCsjyY8HP3IvQ6_12object_store6client4http10connection11HttpServiceEL_ENtB6_5Debug3fmtCs62u4JVtZyFF_13deltalake_gcp:bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !align !13, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !range !15, !invariant.load !4, !noalias !210
  %i.e = add nsw i64 %i.d, -1
  %i.f = and i64 %i.e, -16
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !invariant.load !4, !noalias !210, !nonnull !4
  %i.k = tail call noundef zeroext i1 %i.j(ptr noundef nonnull %i.h, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #20, !inline_history !213
  ret i1 %i.k
}

end_hunk_9
begin_hunk_10_@_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsjyY8HP3IvQ6_12object_store3gcp6client24GoogleCloudStorageClientENtB6_5Debug3fmtCs62u4JVtZyFF_13deltalake_gcp:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 832
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 784
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !214
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 808
  store ptr %i.f, ptr %i.a, align 8, !noalias !214
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 24, ptr noalias noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 6, ptr noundef nonnull align 8 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @33, ptr noalias noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 6, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @34, ptr noalias noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 19, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @16, ptr noalias noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 16, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @35)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !214
  ret i1 %i.g
}

end_hunk_10
begin_hunk_11_@_RNvXsZ_NtNtCsbvkFyIu7lgC_4core3fmt3numjNtB7_5Debug3fmt:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtNtNtBa_3ops5range5RangeyEEENtNtNtB8_6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !alias.scope !219, !nonnull !4, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !219, !nonnull !4, !noundef !4
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterINtNtNtBa_3ops5range5RangeyEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %1, align 8, !alias.scope !219
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load <2 x i64>, ptr %i.a, align 8
  store <2 x i64> %i.g, ptr %i.f, align 8
end_hunk_11
begin_hunk_12_@llvm.experimental.noalias.scope.decl
!168 = !{!169}
!169 = distinct !{!169, !170, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEB36_: argument 0"}
!170 = distinct !{!170, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEB36_"}
!171 = distinct !{null}
!172 = !{!173}
!173 = distinct !{!173, !174, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEEB3e_: argument 0"}
!174 = distinct !{!174, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEEB3e_"}
!175 = !{!176}
!176 = distinct !{!176, !177, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB2F_: argument 0"}
!177 = distinct !{!177, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB2F_"}
!178 = !{!176, !173, !169}
!179 = !{!176, !173}
!180 = !{!181}
!181 = distinct !{!181, !182, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEEB3e_: argument 0"}
!182 = distinct !{!182, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEEB3e_"}
!183 = !{!184}
!184 = distinct !{!184, !185, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB2F_: argument 0"}
!185 = distinct !{!185, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB2F_"}
!186 = !{!184, !181, !169}
!187 = !{!184, !181}
!188 = !{!189}
!189 = distinct !{!189, !190, !"_RNvXsO_NtCs6Po7BT7Nknu_5alloc4syncINtB5_4WeakINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBO_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB37_: argument 0"}
!190 = distinct !{!190, !"_RNvXsO_NtCs6Po7BT7Nknu_5alloc4syncINtB5_4WeakINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBO_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB37_"}
!191 = !{!192}
!192 = distinct !{!192, !193, !"_RNvXsO_NtCs6Po7BT7Nknu_5alloc4syncINtB5_4WeakINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBO_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB37_: argument 0"}
!193 = distinct !{!193, !"_RNvXsO_NtCs6Po7BT7Nknu_5alloc4syncINtB5_4WeakINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBO_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB37_"}
!194 = !{!195}
!195 = distinct !{!195, !196, !"_RNvXsO_NtCs6Po7BT7Nknu_5alloc4syncINtB5_4WeakINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBO_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB37_: argument 0"}
!196 = distinct !{!196, !"_RNvXsO_NtCs6Po7BT7Nknu_5alloc4syncINtB5_4WeakINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBO_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB37_"}
!197 = !{!198}
!198 = distinct !{!198, !199, !"_RNvXsR_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB7_3fmt5Debug3fmtCs62u4JVtZyFF_13deltalake_gcp: argument 0"}
!199 = distinct !{!199, !"_RNvXsR_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB7_3fmt5Debug3fmtCs62u4JVtZyFF_13deltalake_gcp"}
!200 = !{!201}
!201 = distinct !{!201, !199, !"_RNvXsR_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB7_3fmt5Debug3fmtCs62u4JVtZyFF_13deltalake_gcp: argument 1"}
!202 = !{!198, !201}
!203 = !{!204}
!204 = distinct !{!204, !205, !"_RNvXsR_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionhENtNtB7_3fmt5Debug3fmtCs62u4JVtZyFF_13deltalake_gcp: argument 0"}
!205 = distinct !{!205, !"_RNvXsR_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionhENtNtB7_3fmt5Debug3fmtCs62u4JVtZyFF_13deltalake_gcp"}
!206 = !{i8 0, i8 2}
!207 = !{!208}
!208 = distinct !{!208, !205, !"_RNvXsR_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionhENtNtB7_3fmt5Debug3fmtCs62u4JVtZyFF_13deltalake_gcp: argument 1"}
!209 = !{!204, !208}
!210 = !{!211}
!211 = distinct !{!211, !212, !"_RNvXsW_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtNtCsjyY8HP3IvQ6_12object_store6client4http10connection11HttpServiceEL_ENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs62u4JVtZyFF_13deltalake_gcp: argument 0"}
!212 = distinct !{!212, !"_RNvXsW_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtNtCsjyY8HP3IvQ6_12object_store6client4http10connection11HttpServiceEL_ENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs62u4JVtZyFF_13deltalake_gcp"}
!213 = distinct !{null}
!214 = !{!215, !217}
!215 = distinct !{!215, !216, !"_RNvXs7_NtNtCsjyY8HP3IvQ6_12object_store3gcp6clientNtB5_24GoogleCloudStorageClientNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt: argument 0"}
!216 = distinct !{!216, !"_RNvXs7_NtNtCsjyY8HP3IvQ6_12object_store3gcp6clientNtB5_24GoogleCloudStorageClientNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt"}
!217 = distinct !{!217, !218, !"_RNvXsW_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCsjyY8HP3IvQ6_12object_store3gcp6client24GoogleCloudStorageClientENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs62u4JVtZyFF_13deltalake_gcp: argument 0"}
!218 = distinct !{!218, !"_RNvXsW_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCsjyY8HP3IvQ6_12object_store3gcp6client24GoogleCloudStorageClientENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs62u4JVtZyFF_13deltalake_gcp"}
!219 = !{!220}
!220 = distinct !{!220, !221, !"_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterINtNtNtBa_3ops5range5RangeyEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp: argument 0"}
!221 = distinct !{!221, !"_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterINtNtNtBa_3ops5range5RangeyEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp"}
end_hunk_12

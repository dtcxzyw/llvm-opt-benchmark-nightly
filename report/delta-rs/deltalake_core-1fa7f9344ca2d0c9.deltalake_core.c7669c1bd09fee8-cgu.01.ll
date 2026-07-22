inline.NumInlined: 11461
inline.NumDeleted: 4051
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_RNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6deleteNtB5_13DeleteBuilder27with_custom_execute_handler
define void @_RNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6deleteNtB5_13DeleteBuilder27with_custom_execute_handler(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([544 x i8]) align 16 captures(none) dereferenceable(544) %0, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(544) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29875)
  %i.b = load ptr, ptr %i.a, align 16, !alias.scope !29875, !noundef !8 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !29878
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  store ptr %2, ptr %i.a, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 184
  store ptr %3, ptr %i.g, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations6delete13DeleteBuilderEBM_(ptr noalias noundef align 16 dereferenceable(544) %1) #42
          to label %bb.f unwind label %bb.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit: ; preds = %bb.b, %bb.a, %bb.c
  store ptr %2, ptr %i.a, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 184
  store ptr %3, ptr %i.h, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(544) %0, ptr noundef nonnull align 16 dereferenceable(544) %1, i64 544, i1 false)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6deleteNtB5_13DeleteBuilder3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([544 x i8]) align 16 captures(none) dereferenceable(544) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) %2, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [112 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 38, ptr %i.d, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs3_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtB5_16CommitPropertiesNtNtCsbvkFyIu7lgC_4core7default7Default7default(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.a)
          to label %bb.b unwind label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8PD1TAMvwcd_18datafusion_session7session7SessionEL_EEECs14kWLkQVSKO_14deltalake_core.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %0, ptr noundef nonnull align 16 dereferenceable(112) %i.d, i64 112, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %1, ptr %i.g, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %2, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr null, ptr %i.i, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i8 0, ptr %i.j, align 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 2, ptr %i.k, align 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 440
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.l, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr null, ptr %i.m, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.c:                                             ; preds = %bb.e, %bb.d, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotEEB18_.exit
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8PD1TAMvwcd_18datafusion_session7session7SessionEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = atomicrmw sub ptr %1, i64 1 release, align 8, !noalias !29883
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8PD1TAMvwcd_18datafusion_session7session7SessionEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit unwind label %bb.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8PD1TAMvwcd_18datafusion_session7session7SessionEL_EEECs14kWLkQVSKO_14deltalake_core.exit, %bb.d
  %i.r = load i64, ptr %i.c, align 8, !range !65, !alias.scope !29888, !noundef !8
  %i.s = icmp eq i64 %i.r, -9223372036854775808
  br i1 %i.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotEEB18_.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotEBM_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotEEB18_.exit unwind label %bb.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotEEB18_.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit, %bb.e
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEEB18_(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.d) #42
          to label %bb.f unwind label %bb.c

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotEEB18_.exit
  resume { ptr, i32 } %i.o
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations6deleteNtB5_28DeleteMetricExtensionPlanner3new() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !29891
  %i.a = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 7409) 16, i64 noundef range(i64 8, 17) 8) #46, !noalias !29891 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit, !prof !308

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #41, !noalias !29891
  unreachable

_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store i64 1, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core8logstore6configNtB5_13StorageConfig15with_io_runtime(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([224 x i8]) align 8 captures(none) dereferenceable(224) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(224) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime9IORuntimeEEB1a_(ptr noalias noundef align 8 dereferenceable(48) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore6config13StorageConfigEBM_(ptr noalias noundef align 8 dereferenceable(224) %1) #42
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(224) %1, i64 224, i1 false)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core8logstore6configNtB5_13StorageConfig3raw(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(224) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 176
  tail call void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_E4iterCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs2_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2n_3pin3PinINtNtB9_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2j_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB2n_6marker4SendEL_EEB5l_EEE3popCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i.i.i = alloca [112 x i8], align 16    ; 5 uses
  %i.a = alloca [112 x i8], align 16              ; 6 uses
  %.sroa.6 = alloca [104 x i8], align 8           ; 5 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !29894, !noalias !29897 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29894)
  %i.b = icmp eq i64 %.pre, 0
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtBN_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2R_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB5C_EEEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %i.c = phi i64 [ %2, %.thread ], [ %.pre, %bb.b ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = add nsw i64 %i.c, -1                     ; 7 uses
  store i64 %i.e, ptr %i.d, align 8, !alias.scope !29894, !noalias !29897
  %i.f = load i64, ptr %1, align 8, !range !231, !alias.scope !29894, !noalias !29897, !noundef !8
  %i.g = icmp samesign ult i64 %i.e, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !29894, !noalias !29897, !nonnull !8, !noundef !8 ; 13 uses
  %i.j = icmp ult i64 %i.c, 82351536043346214
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw [112 x i8], ptr %i.i, i64 %i.e ; 2 uses
  %.sroa.05.0.copyload.i = load i64, ptr %i.k, align 16, !noalias !29899 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !29899
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.57.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4.0..sroa_idx.i, i64 104, i1 false), !noalias !29899
  store i64 %.sroa.05.0.copyload.i, ptr %i.a, align 16, !noalias !29899
  %i.l = icmp eq i64 %i.e, 0
  br i1 %i.l, label %_RNCNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2t_3pin3PinINtNtBb_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2p_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB2t_6marker4SendEL_EEB5r_EEE3pop0Cs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 16 dereferenceable(112) %i.a, ptr noundef nonnull %i.i, i64 noundef 14)
          to label %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2c_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB5e_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.e, !noalias !29900

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #43, !noalias !29900
  unreachable

_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2c_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB5e_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.0.i.i.i, ptr noundef nonnull align 16 dereferenceable(112) %i.i, i64 112, i1 false), !noalias !29903
  %3 = add nsw i64 %i.c, -3
  %.not.not8.i.i.i = icmp samesign ult i64 %i.c, 4
  br i1 %.not.not8.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2c_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB5e_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.sroa.12.0.lcssa.i.i.i = phi i64 [ 0, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2c_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB5e_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.ai, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 1, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2c_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB5e_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.am, %.lr.ph.i.i.i ] ; 3 uses
  %i.n = add nsw i64 %i.c, -2
  %i.o = icmp eq i64 %.sroa.05.0.lcssa.i.i.i, %i.n
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.p = getelementptr inbounds nuw [112 x i8], ptr %i.i, i64 %.sroa.05.0.lcssa.i.i.i
  %i.q = getelementptr inbounds nuw [112 x i8], ptr %i.i, i64 %.sroa.12.0.lcssa.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.q, ptr noundef nonnull align 16 dereferenceable(112) %i.p, i64 112, i1 false), !noalias !29903
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i.i
  %.sroa.12.1.i.i.i = phi i64 [ %.sroa.05.0.lcssa.i.i.i, %bb.f ], [ %.sroa.12.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 4 uses
  %i.r = getelementptr inbounds nuw [112 x i8], ptr %i.i, i64 %.sroa.12.1.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.r, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.0.i.i.i, i64 112, i1 false), !noalias !29903
  %i.s = icmp samesign ult i64 %.sroa.12.1.i.i.i, %i.e
  call void @llvm.assume(i1 %i.s)
  %.sroa.423.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 96 ; 2 uses
  %i.t = load <2 x i64>, ptr %.sroa.423.0..sroa_idx.i.i.i.i, align 16, !noalias !29903
  %.sroa.423.0.copyload.i.i.i.i = load i64, ptr %.sroa.423.0..sroa_idx.i.i.i.i, align 16, !noalias !29903
  %.not26.i.i.i.i = icmp eq i64 %.sroa.12.1.i.i.i, 0
  br i1 %.not26.i.i.i.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2r_3pin3PinINtNtB9_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2n_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB2r_6marker4SendEL_EEB5p_EEE19sift_down_to_bottomCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %bb.h
  %.sroa.13.027.i.i.i.i = phi i64 [ %i.v, %bb.h ], [ %.sroa.12.1.i.i.i, %bb.g ] ; 3 uses
  %i.u = add nsw i64 %.sroa.13.027.i.i.i.i, -1
  %i.v = lshr i64 %i.u, 1                         ; 4 uses
  %i.w = icmp samesign ult i64 %i.v, %i.e
  call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw [112 x i8], ptr %i.i, i64 %i.v ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 96
  %.val1.i.i.i.i = load i64, ptr %i.y, align 16, !noalias !29903, !noundef !8
  %.not25.i.i.i.i = icmp sgt i64 %.val1.i.i.i.i, %.sroa.423.0.copyload.i.i.i.i
  br i1 %.not25.i.i.i.i, label %bb.h, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2r_3pin3PinINtNtB9_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2n_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB2r_6marker4SendEL_EEB5p_EEE19sift_down_to_bottomCs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.z = getelementptr inbounds nuw [112 x i8], ptr %i.i, i64 %.sroa.13.027.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.z, ptr noundef nonnull align 16 dereferenceable(112) %i.x, i64 112, i1 false), !noalias !29903
  %.not.i.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2r_3pin3PinINtNtB9_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2n_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB2r_6marker4SendEL_EEB5p_EEE19sift_down_to_bottomCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2c_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB5e_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i, %.lr.ph.i.i.i
  %.sroa.05.010.i.i.i = phi i64 [ %i.am, %.lr.ph.i.i.i ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2c_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB5e_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i ] ; 3 uses
  %.sroa.12.09.i.i.i = phi i64 [ %i.ai, %.lr.ph.i.i.i ], [ 0, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2c_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB5e_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  %i.aa = getelementptr inbounds nuw [112 x i8], ptr %i.i, i64 %.sroa.05.010.i.i.i
  %i.ab = add nuw nsw i64 %.sroa.05.010.i.i.i, 1  ; 2 uses
  %i.ac = icmp samesign ult i64 %i.ab, %i.e
  call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw [112 x i8], ptr %i.i, i64 %i.ab
  %i.ae = getelementptr i8, ptr %i.aa, i64 96
  %.val.i.i.i = load i64, ptr %i.ae, align 16, !noalias !29903, !noundef !8
  %i.af = getelementptr i8, ptr %i.ad, i64 96
  %.val17.i.i.i = load i64, ptr %i.af, align 16, !noalias !29903, !noundef !8
  %i.ag = icmp sle i64 %.val17.i.i.i, %.val.i.i.i
  %i.ah = zext i1 %i.ag to i64
  %i.ai = add nuw nsw i64 %.sroa.05.010.i.i.i, %i.ah ; 4 uses
  %i.aj = getelementptr inbounds nuw [112 x i8], ptr %i.i, i64 %i.ai
  %i.ak = getelementptr inbounds nuw [112 x i8], ptr %i.i, i64 %.sroa.12.09.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.ak, ptr noundef nonnull align 16 dereferenceable(112) %i.aj, i64 112, i1 false), !noalias !29903
  %i.al = shl nuw nsw i64 %i.ai, 1                ; 2 uses
  %i.am = or disjoint i64 %i.al, 1                ; 2 uses
  %.not.not.not.i.i.i = icmp samesign ult i64 %i.al, %3
  br i1 %.not.not.not.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2r_3pin3PinINtNtB9_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2n_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB2r_6marker4SendEL_EEB5p_EEE19sift_down_to_bottomCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.h, %.lr.ph.i.i.i.i, %bb.g
  %.sroa.13.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.g ], [ %.sroa.13.027.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.h ]
  %i.an = getelementptr inbounds nuw [112 x i8], ptr %i.i, i64 %.sroa.13.0.lcssa.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.an, ptr noundef nonnull align 16 dereferenceable(96) %.sroa.0.i.i.i, i64 96, i1 false), !noalias !29903
  %.sroa.5.0..sroa_idx1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 96
  store <2 x i64> %i.t, ptr %.sroa.5.0..sroa_idx1.i.i.i.i, align 16, !noalias !29903
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %.sroa.012.0.copyload13.pre = load i64, ptr %i.a, align 16, !noalias !29894
  br label %_RNCNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2t_3pin3PinINtNtBb_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2p_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB2t_6marker4SendEL_EEB5r_EEE3pop0Cs14kWLkQVSKO_14deltalake_core.exit.i

_RNCNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2t_3pin3PinINtNtBb_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2p_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB2t_6marker4SendEL_EEB5r_EEE3pop0Cs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2r_3pin3PinINtNtB9_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2n_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB2r_6marker4SendEL_EEB5p_EEE19sift_down_to_bottomCs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.c
  %.sroa.012.0.copyload13 = phi i64 [ %.sroa.012.0.copyload13.pre, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2r_3pin3PinINtNtB9_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2n_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB2r_6marker4SendEL_EEB5p_EEE19sift_down_to_bottomCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %.sroa.05.0.copyload.i, %bb.c ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.57.0..sroa_idx.i, i64 104, i1 false), !noalias !29894
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !29899
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtBN_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2R_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB5C_EEEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtBN_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2R_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB5C_EEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b, %_RNCNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2t_3pin3PinINtNtBb_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2p_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB2t_6marker4SendEL_EEB5r_EEE3pop0Cs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.012.0 = phi i64 [ %.sroa.012.0.copyload13, %_RNCNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2t_3pin3PinINtNtBb_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2p_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB2t_6marker4SendEL_EEB5r_EEE3pop0Cs14kWLkQVSKO_14deltalake_core.exit.i ], [ -9223372036854775742, %bb.b ] ; 2 uses
  %i.ao = icmp ne i64 %.sroa.012.0, -9223372036854775742
  call void @llvm.assume(i1 %i.ao)
  store i64 %.sroa.012.0, ptr %0, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs2_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB9_3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENtNtB3i_6errors15DeltaTableErrorEEE3popB3i_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i.i.i = alloca [112 x i8], align 16    ; 5 uses
  %i.a = alloca [112 x i8], align 16              ; 6 uses
  %.sroa.6 = alloca [104 x i8], align 8           ; 5 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !29905, !noalias !29908 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29905)
  %i.b = icmp eq i64 %.pre, 0
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtBN_3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENtNtB3A_6errors15DeltaTableErrorEEEEB3A_.exit, label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %i.c = phi i64 [ %2, %.thread ], [ %.pre, %bb.b ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = add nsw i64 %i.c, -1                     ; 7 uses
  store i64 %i.e, ptr %i.d, align 8, !alias.scope !29905, !noalias !29908
  %i.f = load i64, ptr %1, align 8, !range !231, !alias.scope !29905, !noalias !29908, !noundef !8
  %i.g = icmp samesign ult i64 %i.e, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !29905, !noalias !29908, !nonnull !8, !noundef !8 ; 13 uses
  %i.j = icmp ult i64 %i.c, 82351536043346214
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw [112 x i8], ptr %i.i, i64 %i.e ; 2 uses
  %.sroa.05.0.copyload.i = load i64, ptr %i.k, align 16, !noalias !29910 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !29910
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.57.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4.0..sroa_idx.i, i64 104, i1 false), !noalias !29910
  store i64 %.sroa.05.0.copyload.i, ptr %i.a, align 16, !noalias !29910
  %i.l = icmp eq i64 %i.e, 0
  br i1 %i.l, label %_RNCNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBb_3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENtNtB3o_6errors15DeltaTableErrorEEE3pop0B3o_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 16 dereferenceable(112) %i.a, ptr noundef nonnull %i.i, i64 noundef 14)
          to label %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENtNtB3c_6errors15DeltaTableErrorEEEB3c_.exit.i.i unwind label %bb.e, !noalias !29911

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #43, !noalias !29911
  unreachable

_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENtNtB3c_6errors15DeltaTableErrorEEEB3c_.exit.i.i: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.0.i.i.i, ptr noundef nonnull align 16 dereferenceable(112) %i.i, i64 112, i1 false), !noalias !29914
  %3 = add nsw i64 %i.c, -3
  %.not.not8.i.i.i = icmp samesign ult i64 %i.c, 4
  br i1 %.not.not8.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENtNtB3c_6errors15DeltaTableErrorEEEB3c_.exit.i.i
  %.sroa.12.0.lcssa.i.i.i = phi i64 [ 0, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENtNtB3c_6errors15DeltaTableErrorEEEB3c_.exit.i.i ], [ %i.ai, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 1, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENtNtB3c_6errors15DeltaTableErrorEEEB3c_.exit.i.i ], [ %i.am, %.lr.ph.i.i.i ] ; 3 uses
  %i.n = add nsw i64 %i.c, -2
  %i.o = icmp eq i64 %.sroa.05.0.lcssa.i.i.i, %i.n
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.p = getelementptr inbounds nuw [112 x i8], ptr %i.i, i64 %.sroa.05.0.lcssa.i.i.i
  %i.q = getelementptr inbounds nuw [112 x i8], ptr %i.i, i64 %.sroa.12.0.lcssa.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.q, ptr noundef nonnull align 16 dereferenceable(112) %i.p, i64 112, i1 false), !noalias !29914
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i.i
  %.sroa.12.1.i.i.i = phi i64 [ %.sroa.05.0.lcssa.i.i.i, %bb.f ], [ %.sroa.12.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 4 uses
  %i.r = getelementptr inbounds nuw [112 x i8], ptr %i.i, i64 %.sroa.12.1.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.r, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.0.i.i.i, i64 112, i1 false), !noalias !29914
  %i.s = icmp samesign ult i64 %.sroa.12.1.i.i.i, %i.e
  call void @llvm.assume(i1 %i.s)
  %.sroa.423.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 96 ; 2 uses
  %i.t = load <2 x i64>, ptr %.sroa.423.0..sroa_idx.i.i.i.i, align 16, !noalias !29914
  %.sroa.423.0.copyload.i.i.i.i = load i64, ptr %.sroa.423.0..sroa_idx.i.i.i.i, align 16, !noalias !29914
  %.not26.i.i.i.i = icmp eq i64 %.sroa.12.1.i.i.i, 0
  br i1 %.not26.i.i.i.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB9_3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENtNtB3m_6errors15DeltaTableErrorEEE19sift_down_to_bottomB3m_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %bb.h
  %.sroa.13.027.i.i.i.i = phi i64 [ %i.v, %bb.h ], [ %.sroa.12.1.i.i.i, %bb.g ] ; 3 uses
  %i.u = add nsw i64 %.sroa.13.027.i.i.i.i, -1
  %i.v = lshr i64 %i.u, 1                         ; 4 uses
  %i.w = icmp samesign ult i64 %i.v, %i.e
  call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw [112 x i8], ptr %i.i, i64 %i.v ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 96
  %.val1.i.i.i.i = load i64, ptr %i.y, align 16, !noalias !29914, !noundef !8
  %.not25.i.i.i.i = icmp sgt i64 %.val1.i.i.i.i, %.sroa.423.0.copyload.i.i.i.i
  br i1 %.not25.i.i.i.i, label %bb.h, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB9_3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENtNtB3m_6errors15DeltaTableErrorEEE19sift_down_to_bottomB3m_.exit.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.z = getelementptr inbounds nuw [112 x i8], ptr %i.i, i64 %.sroa.13.027.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.z, ptr noundef nonnull align 16 dereferenceable(112) %i.x, i64 112, i1 false), !noalias !29914
  %.not.i.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB9_3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENtNtB3m_6errors15DeltaTableErrorEEE19sift_down_to_bottomB3m_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENtNtB3c_6errors15DeltaTableErrorEEEB3c_.exit.i.i, %.lr.ph.i.i.i
  %.sroa.05.010.i.i.i = phi i64 [ %i.am, %.lr.ph.i.i.i ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENtNtB3c_6errors15DeltaTableErrorEEEB3c_.exit.i.i ] ; 3 uses
  %.sroa.12.09.i.i.i = phi i64 [ %i.ai, %.lr.ph.i.i.i ], [ 0, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENtNtB3c_6errors15DeltaTableErrorEEEB3c_.exit.i.i ]
  %i.aa = getelementptr inbounds nuw [112 x i8], ptr %i.i, i64 %.sroa.05.010.i.i.i
  %i.ab = add nuw nsw i64 %.sroa.05.010.i.i.i, 1  ; 2 uses
  %i.ac = icmp samesign ult i64 %i.ab, %i.e
  call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw [112 x i8], ptr %i.i, i64 %i.ab
  %i.ae = getelementptr i8, ptr %i.aa, i64 96
  %.val.i.i.i = load i64, ptr %i.ae, align 16, !noalias !29914, !noundef !8
  %i.af = getelementptr i8, ptr %i.ad, i64 96
  %.val17.i.i.i = load i64, ptr %i.af, align 16, !noalias !29914, !noundef !8
  %i.ag = icmp sle i64 %.val17.i.i.i, %.val.i.i.i
  %i.ah = zext i1 %i.ag to i64
  %i.ai = add nuw nsw i64 %.sroa.05.010.i.i.i, %i.ah ; 4 uses
  %i.aj = getelementptr inbounds nuw [112 x i8], ptr %i.i, i64 %i.ai
  %i.ak = getelementptr inbounds nuw [112 x i8], ptr %i.i, i64 %.sroa.12.09.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.ak, ptr noundef nonnull align 16 dereferenceable(112) %i.aj, i64 112, i1 false), !noalias !29914
  %i.al = shl nuw nsw i64 %i.ai, 1                ; 2 uses
  %i.am = or disjoint i64 %i.al, 1                ; 2 uses
  %.not.not.not.i.i.i = icmp samesign ult i64 %i.al, %3
  br i1 %.not.not.not.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB9_3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENtNtB3m_6errors15DeltaTableErrorEEE19sift_down_to_bottomB3m_.exit.i.i: ; preds = %bb.h, %.lr.ph.i.i.i.i, %bb.g
  %.sroa.13.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.g ], [ %.sroa.13.027.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.h ]
  %i.an = getelementptr inbounds nuw [112 x i8], ptr %i.i, i64 %.sroa.13.0.lcssa.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.an, ptr noundef nonnull align 16 dereferenceable(96) %.sroa.0.i.i.i, i64 96, i1 false), !noalias !29914
  %.sroa.5.0..sroa_idx1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 96
  store <2 x i64> %i.t, ptr %.sroa.5.0..sroa_idx1.i.i.i.i, align 16, !noalias !29914
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %.sroa.012.0.copyload13.pre = load i64, ptr %i.a, align 16, !noalias !29905
  br label %_RNCNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBb_3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENtNtB3o_6errors15DeltaTableErrorEEE3pop0B3o_.exit.i

_RNCNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBb_3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENtNtB3o_6errors15DeltaTableErrorEEE3pop0B3o_.exit.i: ; preds = %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB9_3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENtNtB3m_6errors15DeltaTableErrorEEE19sift_down_to_bottomB3m_.exit.i.i, %bb.c
  %.sroa.012.0.copyload13 = phi i64 [ %.sroa.012.0.copyload13.pre, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB9_3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENtNtB3m_6errors15DeltaTableErrorEEE19sift_down_to_bottomB3m_.exit.i.i ], [ %.sroa.05.0.copyload.i, %bb.c ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.57.0..sroa_idx.i, i64 104, i1 false), !noalias !29905
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !29910
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtBN_3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENtNtB3A_6errors15DeltaTableErrorEEEEB3A_.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtBN_3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENtNtB3A_6errors15DeltaTableErrorEEEEB3A_.exit: ; preds = %bb.b, %_RNCNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBb_3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENtNtB3o_6errors15DeltaTableErrorEEE3pop0B3o_.exit.i
  %.sroa.012.0 = phi i64 [ %.sroa.012.0.copyload13, %_RNCNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBb_3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENtNtB3o_6errors15DeltaTableErrorEEE3pop0B3o_.exit.i ], [ -9223372036854775710, %bb.b ] ; 2 uses
  %i.ao = icmp ne i64 %.sroa.012.0, -9223372036854775710
  call void @llvm.assume(i1 %i.ao)
  store i64 %.sroa.012.0, ptr %0, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs2_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE3popCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i.i.i = alloca [56 x i8], align 8      ; 6 uses
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  %.sroa.6 = alloca [48 x i8], align 8            ; 5 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !29916, !noalias !29919 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29916)
  %i.b = icmp eq i64 %.pre, 0
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %i.c = phi i64 [ %2, %.thread ], [ %.pre, %bb.b ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = add nsw i64 %i.c, -1                     ; 8 uses
  store i64 %i.e, ptr %i.d, align 8, !alias.scope !29916, !noalias !29919
  %i.f = load i64, ptr %1, align 8, !range !231, !alias.scope !29916, !noalias !29919, !noundef !8
  %i.g = icmp samesign ult i64 %i.e, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !29916, !noalias !29919, !nonnull !8, !noundef !8 ; 13 uses
  %i.j = icmp ult i64 %i.c, 164703072086692427
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw [56 x i8], ptr %i.i, i64 %i.e ; 2 uses
  %.sroa.05.0.copyload.i = load i64, ptr %i.k, align 8, !noalias !29921 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !29921
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.57.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.0..sroa_idx.i, i64 48, i1 false), !noalias !29921
  store i64 %.sroa.05.0.copyload.i, ptr %i.a, align 8, !noalias !29921
  %i.l = icmp eq i64 %i.e, 0
  br i1 %i.l, label %_RNCNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE3pop0Cs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull %i.i, i64 noundef 7)
          to label %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.e, !noalias !29922

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #43, !noalias !29922
  unreachable

_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 56, i1 false), !noalias !29925
  %3 = add nsw i64 %i.c, -3
  %.not.not8.i.i.i = icmp samesign ult i64 %i.c, 4
  br i1 %.not.not8.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.sroa.12.0.lcssa.i.i.i = phi i64 [ 0, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.ai, %.lr.ph.i.i.i ] ; 5 uses
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 1, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.am, %.lr.ph.i.i.i ] ; 4 uses
  %i.n = add nsw i64 %i.c, -2
  %i.o = icmp eq i64 %.sroa.05.0.lcssa.i.i.i, %i.n
  br i1 %i.o, label %.thread.i.i, label %bb.f

.thread.i.i:                                      ; preds = %._crit_edge.i.i.i
  %i.p = getelementptr inbounds nuw [56 x i8], ptr %i.i, i64 %.sroa.05.0.lcssa.i.i.i ; 3 uses
  %i.q = getelementptr inbounds nuw [56 x i8], ptr %i.i, i64 %.sroa.12.0.lcssa.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.q, ptr noundef nonnull align 8 dereferenceable(56) %i.p, i64 56, i1 false), !noalias !29925
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.i.i.i, i64 56, i1 false), !noalias !29925
  %i.r = icmp samesign ult i64 %.sroa.05.0.lcssa.i.i.i, %i.e
  call void @llvm.assume(i1 %i.r)
  %.sroa.416.0..sroa_idx.i.i6.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %.sroa.416.0.copyload.i.i7.i.i = load i64, ptr %.sroa.416.0..sroa_idx.i.i6.i.i, align 8, !noalias !29925
  br label %.lr.ph.i.i.preheader.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.s = getelementptr inbounds nuw [56 x i8], ptr %i.i, i64 %.sroa.12.0.lcssa.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.i.i.i, i64 56, i1 false), !noalias !29925
  %i.t = icmp samesign ult i64 %.sroa.12.0.lcssa.i.i.i, %i.e
  call void @llvm.assume(i1 %i.t)
  %.sroa.416.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %.sroa.416.0.copyload.i.i.i.i = load i64, ptr %.sroa.416.0..sroa_idx.i.i.i.i, align 8, !noalias !29925 ; 2 uses
  %.not18.i.i.i.i = icmp eq i64 %.sroa.12.0.lcssa.i.i.i, 0
  br i1 %.not18.i.i.i.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE19sift_down_to_bottomCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.f, %.thread.i.i
  %.sroa.416.0.copyload.i.i10.i.i = phi i64 [ %.sroa.416.0.copyload.i.i7.i.i, %.thread.i.i ], [ %.sroa.416.0.copyload.i.i.i.i, %bb.f ] ; 3 uses
  %.sroa.12.1.i9.i.i = phi i64 [ %.sroa.05.0.lcssa.i.i.i, %.thread.i.i ], [ %.sroa.12.0.lcssa.i.i.i, %bb.f ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %.lr.ph.i.i.preheader.i.i
  %.sroa.13.019.i.i.i.i = phi i64 [ %i.v, %bb.g ], [ %.sroa.12.1.i9.i.i, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %i.u = add nsw i64 %.sroa.13.019.i.i.i.i, -1
  %i.v = lshr i64 %i.u, 1                         ; 4 uses
  %i.w = icmp samesign ult i64 %i.v, %i.e
  call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw [56 x i8], ptr %i.i, i64 %i.v ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 48
  %.val1.i.i.i.i = load i64, ptr %i.y, align 8, !noalias !29925, !noundef !8
  %.not17.i.i.i.i = icmp sgt i64 %.val1.i.i.i.i, %.sroa.416.0.copyload.i.i10.i.i
  br i1 %.not17.i.i.i.i, label %bb.g, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE19sift_down_to_bottomCs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.z = getelementptr inbounds nuw [56 x i8], ptr %i.i, i64 %.sroa.13.019.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.z, ptr noundef nonnull align 8 dereferenceable(56) %i.x, i64 56, i1 false), !noalias !29925
  %.not.i.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE19sift_down_to_bottomCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i, %.lr.ph.i.i.i
  %.sroa.05.010.i.i.i = phi i64 [ %i.am, %.lr.ph.i.i.i ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i ] ; 3 uses
  %.sroa.12.09.i.i.i = phi i64 [ %i.ai, %.lr.ph.i.i.i ], [ 0, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  %i.aa = getelementptr inbounds nuw [56 x i8], ptr %i.i, i64 %.sroa.05.010.i.i.i
  %i.ab = add nuw nsw i64 %.sroa.05.010.i.i.i, 1  ; 2 uses
  %i.ac = icmp samesign ult i64 %i.ab, %i.e
  call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw [56 x i8], ptr %i.i, i64 %i.ab
  %i.ae = getelementptr i8, ptr %i.aa, i64 48
  %.val.i.i.i = load i64, ptr %i.ae, align 8, !noalias !29925, !noundef !8
  %i.af = getelementptr i8, ptr %i.ad, i64 48
  %.val17.i.i.i = load i64, ptr %i.af, align 8, !noalias !29925, !noundef !8
  %i.ag = icmp sle i64 %.val17.i.i.i, %.val.i.i.i
  %i.ah = zext i1 %i.ag to i64
  %i.ai = add nuw nsw i64 %.sroa.05.010.i.i.i, %i.ah ; 4 uses
  %i.aj = getelementptr inbounds nuw [56 x i8], ptr %i.i, i64 %i.ai
  %i.ak = getelementptr inbounds nuw [56 x i8], ptr %i.i, i64 %.sroa.12.09.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ak, ptr noundef nonnull align 8 dereferenceable(56) %i.aj, i64 56, i1 false), !noalias !29925
  %i.al = shl nuw nsw i64 %i.ai, 1                ; 2 uses
  %i.am = or disjoint i64 %i.al, 1                ; 2 uses
  %.not.not.not.i.i.i = icmp samesign ult i64 %i.al, %3
  br i1 %.not.not.not.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE19sift_down_to_bottomCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i, %bb.f
  %.sroa.416.0.copyload.i.i11.i.i = phi i64 [ %.sroa.416.0.copyload.i.i.i.i, %bb.f ], [ %.sroa.416.0.copyload.i.i10.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.416.0.copyload.i.i10.i.i, %bb.g ]
  %.sroa.13.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.f ], [ 0, %bb.g ], [ %.sroa.13.019.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.an = getelementptr inbounds nuw [56 x i8], ptr %i.i, i64 %.sroa.13.0.lcssa.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.an, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.i.i.i, i64 48, i1 false), !noalias !29925
  %.sroa.5.0..sroa_idx1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  store i64 %.sroa.416.0.copyload.i.i11.i.i, ptr %.sroa.5.0..sroa_idx1.i.i.i.i, align 8, !noalias !29925
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %.sroa.012.0.copyload13.pre = load i64, ptr %i.a, align 8, !noalias !29916
  br label %_RNCNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE3pop0Cs14kWLkQVSKO_14deltalake_core.exit.i

_RNCNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE3pop0Cs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE19sift_down_to_bottomCs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.c
  %.sroa.012.0.copyload13 = phi i64 [ %.sroa.012.0.copyload13.pre, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE19sift_down_to_bottomCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %.sroa.05.0.copyload.i, %bb.c ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.57.0..sroa_idx.i, i64 48, i1 false), !noalias !29916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !29921
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b, %_RNCNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE3pop0Cs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.012.0 = phi i64 [ %.sroa.012.0.copyload13, %_RNCNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE3pop0Cs14kWLkQVSKO_14deltalake_core.exit.i ], [ 2, %bb.b ] ; 2 uses
  %i.ao = icmp ne i64 %.sroa.012.0, 2
  call void @llvm.assume(i1 %i.ao)
  store i64 %.sroa.012.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs2_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE3popCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i.i.i = alloca [80 x i8], align 8      ; 6 uses
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  %.sroa.6 = alloca [72 x i8], align 8            ; 5 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !29927, !noalias !29930 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29927)
  %i.b = icmp eq i64 %.pre, 0
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %i.c = phi i64 [ %2, %.thread ], [ %.pre, %bb.b ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = add nsw i64 %i.c, -1                     ; 8 uses
  store i64 %i.e, ptr %i.d, align 8, !alias.scope !29927, !noalias !29930
  %i.f = load i64, ptr %1, align 8, !range !231, !alias.scope !29927, !noalias !29930, !noundef !8
  %i.g = icmp samesign ult i64 %i.e, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !29927, !noalias !29930, !nonnull !8, !noundef !8 ; 13 uses
  %i.j = icmp ult i64 %i.c, 115292150460684699
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %i.e ; 2 uses
  %.sroa.05.0.copyload.i = load i64, ptr %i.k, align 8, !noalias !29932 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !29932
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.57.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx.i, i64 72, i1 false), !noalias !29932
  store i64 %.sroa.05.0.copyload.i, ptr %i.a, align 8, !noalias !29932
  %i.l = icmp eq i64 %i.e, 0
  br i1 %i.l, label %_RNCNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE3pop0Cs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull %i.i, i64 noundef 10)
          to label %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.e, !noalias !29933

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #43, !noalias !29933
  unreachable

_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.i, i64 80, i1 false), !noalias !29936
  %3 = add nsw i64 %i.c, -3
  %.not.not8.i.i.i = icmp samesign ult i64 %i.c, 4
  br i1 %.not.not8.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.sroa.12.0.lcssa.i.i.i = phi i64 [ 0, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.ai, %.lr.ph.i.i.i ] ; 5 uses
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 1, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.am, %.lr.ph.i.i.i ] ; 4 uses
  %i.n = add nsw i64 %i.c, -2
  %i.o = icmp eq i64 %.sroa.05.0.lcssa.i.i.i, %i.n
  br i1 %i.o, label %.thread.i.i, label %bb.f

.thread.i.i:                                      ; preds = %._crit_edge.i.i.i
  %i.p = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.05.0.lcssa.i.i.i ; 3 uses
  %i.q = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.12.0.lcssa.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.q, ptr noundef nonnull align 8 dereferenceable(80) %i.p, i64 80, i1 false), !noalias !29936
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.p, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.i.i.i, i64 80, i1 false), !noalias !29936
  %i.r = icmp samesign ult i64 %.sroa.05.0.lcssa.i.i.i, %i.e
  call void @llvm.assume(i1 %i.r)
  %.sroa.416.0..sroa_idx.i.i6.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %.sroa.416.0.copyload.i.i7.i.i = load i64, ptr %.sroa.416.0..sroa_idx.i.i6.i.i, align 8, !noalias !29936
  br label %.lr.ph.i.i.preheader.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.s = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.12.0.lcssa.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.s, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.i.i.i, i64 80, i1 false), !noalias !29936
  %i.t = icmp samesign ult i64 %.sroa.12.0.lcssa.i.i.i, %i.e
  call void @llvm.assume(i1 %i.t)
  %.sroa.416.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %.sroa.416.0.copyload.i.i.i.i = load i64, ptr %.sroa.416.0..sroa_idx.i.i.i.i, align 8, !noalias !29936 ; 2 uses
  %.not18.i.i.i.i = icmp eq i64 %.sroa.12.0.lcssa.i.i.i, 0
  br i1 %.not18.i.i.i.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE19sift_down_to_bottomCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.f, %.thread.i.i
  %.sroa.416.0.copyload.i.i10.i.i = phi i64 [ %.sroa.416.0.copyload.i.i7.i.i, %.thread.i.i ], [ %.sroa.416.0.copyload.i.i.i.i, %bb.f ] ; 3 uses
  %.sroa.12.1.i9.i.i = phi i64 [ %.sroa.05.0.lcssa.i.i.i, %.thread.i.i ], [ %.sroa.12.0.lcssa.i.i.i, %bb.f ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %.lr.ph.i.i.preheader.i.i
  %.sroa.13.019.i.i.i.i = phi i64 [ %i.v, %bb.g ], [ %.sroa.12.1.i9.i.i, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %i.u = add nsw i64 %.sroa.13.019.i.i.i.i, -1
  %i.v = lshr i64 %i.u, 1                         ; 4 uses
  %i.w = icmp samesign ult i64 %i.v, %i.e
  call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %i.v ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 72
  %.val1.i.i.i.i = load i64, ptr %i.y, align 8, !noalias !29936, !noundef !8
  %.not17.i.i.i.i = icmp sgt i64 %.val1.i.i.i.i, %.sroa.416.0.copyload.i.i10.i.i
  br i1 %.not17.i.i.i.i, label %bb.g, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE19sift_down_to_bottomCs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.z = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.13.019.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.z, ptr noundef nonnull align 8 dereferenceable(80) %i.x, i64 80, i1 false), !noalias !29936
  %.not.i.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE19sift_down_to_bottomCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i, %.lr.ph.i.i.i
  %.sroa.05.010.i.i.i = phi i64 [ %i.am, %.lr.ph.i.i.i ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i ] ; 3 uses
  %.sroa.12.09.i.i.i = phi i64 [ %i.ai, %.lr.ph.i.i.i ], [ 0, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  %i.aa = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.05.010.i.i.i
  %i.ab = add nuw nsw i64 %.sroa.05.010.i.i.i, 1  ; 2 uses
  %i.ac = icmp samesign ult i64 %i.ab, %i.e
  call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %i.ab
  %i.ae = getelementptr i8, ptr %i.aa, i64 72
  %.val.i.i.i = load i64, ptr %i.ae, align 8, !noalias !29936, !noundef !8
  %i.af = getelementptr i8, ptr %i.ad, i64 72
  %.val17.i.i.i = load i64, ptr %i.af, align 8, !noalias !29936, !noundef !8
  %i.ag = icmp sle i64 %.val17.i.i.i, %.val.i.i.i
  %i.ah = zext i1 %i.ag to i64
  %i.ai = add nuw nsw i64 %.sroa.05.010.i.i.i, %i.ah ; 4 uses
  %i.aj = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %i.ai
  %i.ak = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.12.09.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ak, ptr noundef nonnull align 8 dereferenceable(80) %i.aj, i64 80, i1 false), !noalias !29936
  %i.al = shl nuw nsw i64 %i.ai, 1                ; 2 uses
  %i.am = or disjoint i64 %i.al, 1                ; 2 uses
  %.not.not.not.i.i.i = icmp samesign ult i64 %i.al, %3
  br i1 %.not.not.not.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE19sift_down_to_bottomCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i, %bb.f
  %.sroa.416.0.copyload.i.i11.i.i = phi i64 [ %.sroa.416.0.copyload.i.i.i.i, %bb.f ], [ %.sroa.416.0.copyload.i.i10.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.416.0.copyload.i.i10.i.i, %bb.g ]
  %.sroa.13.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.f ], [ 0, %bb.g ], [ %.sroa.13.019.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.an = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.13.0.lcssa.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.an, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.i.i.i, i64 72, i1 false), !noalias !29936
  %.sroa.5.0..sroa_idx1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  store i64 %.sroa.416.0.copyload.i.i11.i.i, ptr %.sroa.5.0..sroa_idx1.i.i.i.i, align 8, !noalias !29936
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %.sroa.012.0.copyload13.pre = load i64, ptr %i.a, align 8, !noalias !29927
  br label %_RNCNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE3pop0Cs14kWLkQVSKO_14deltalake_core.exit.i

_RNCNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE3pop0Cs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE19sift_down_to_bottomCs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.c
  %.sroa.012.0.copyload13 = phi i64 [ %.sroa.012.0.copyload13.pre, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE19sift_down_to_bottomCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %.sroa.05.0.copyload.i, %bb.c ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.57.0..sroa_idx.i, i64 72, i1 false), !noalias !29927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !29932
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b, %_RNCNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE3pop0Cs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.012.0 = phi i64 [ %.sroa.012.0.copyload13, %_RNCNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE3pop0Cs14kWLkQVSKO_14deltalake_core.exit.i ], [ -9223372036854775789, %bb.b ] ; 2 uses
  %i.ao = icmp ne i64 %.sroa.012.0, -9223372036854775789
  call void @llvm.assume(i1 %i.ao)
  store i64 %.sroa.012.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs2_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEE3popCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i.i.i = alloca [112 x i8], align 16    ; 5 uses
  %i.a = alloca [112 x i8], align 16              ; 6 uses
  %.sroa.6 = alloca [104 x i8], align 8           ; 5 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !29938, !noalias !29941 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29938)
  %i.b = icmp eq i64 %.pre, 0
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %i.c = phi i64 [ %2, %.thread ], [ %.pre, %bb.b ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = add nsw i64 %i.c, -1                     ; 7 uses
  store i64 %i.e, ptr %i.d, align 8, !alias.scope !29938, !noalias !29941
  %i.f = load i64, ptr %1, align 8, !range !231, !alias.scope !29938, !noalias !29941, !noundef !8
  %i.g = icmp samesign ult i64 %i.e, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !29938, !noalias !29941, !nonnull !8, !noundef !8 ; 13 uses
  %i.j = icmp ult i64 %i.c, 82351536043346214
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw [112 x i8], ptr %i.i, i64 %i.e ; 2 uses
  %.sroa.05.0.copyload.i = load i64, ptr %i.k, align 16, !noalias !29943 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !29943
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.57.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4.0..sroa_idx.i, i64 104, i1 false), !noalias !29943
  store i64 %.sroa.05.0.copyload.i, ptr %i.a, align 16, !noalias !29943
  %i.l = icmp eq i64 %i.e, 0
  br i1 %i.l, label %_RNCNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEE3pop0Cs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 16 dereferenceable(112) %i.a, ptr noundef nonnull %i.i, i64 noundef 14)
          to label %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.e, !noalias !29944

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #43, !noalias !29944
  unreachable

_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.0.i.i.i, ptr noundef nonnull align 16 dereferenceable(112) %i.i, i64 112, i1 false), !noalias !29947
  %3 = add nsw i64 %i.c, -3
  %.not.not8.i.i.i = icmp samesign ult i64 %i.c, 4
  br i1 %.not.not8.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.sroa.12.0.lcssa.i.i.i = phi i64 [ 0, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.ai, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 1, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.am, %.lr.ph.i.i.i ] ; 3 uses
  %i.n = add nsw i64 %i.c, -2
  %i.o = icmp eq i64 %.sroa.05.0.lcssa.i.i.i, %i.n
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.p = getelementptr inbounds nuw [112 x i8], ptr %i.i, i64 %.sroa.05.0.lcssa.i.i.i
  %i.q = getelementptr inbounds nuw [112 x i8], ptr %i.i, i64 %.sroa.12.0.lcssa.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.q, ptr noundef nonnull align 16 dereferenceable(112) %i.p, i64 112, i1 false), !noalias !29947
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i.i
  %.sroa.12.1.i.i.i = phi i64 [ %.sroa.05.0.lcssa.i.i.i, %bb.f ], [ %.sroa.12.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 4 uses
  %i.r = getelementptr inbounds nuw [112 x i8], ptr %i.i, i64 %.sroa.12.1.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.r, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.0.i.i.i, i64 112, i1 false), !noalias !29947
  %i.s = icmp samesign ult i64 %.sroa.12.1.i.i.i, %i.e
  call void @llvm.assume(i1 %i.s)
  %.sroa.423.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 96 ; 2 uses
  %i.t = load <2 x i64>, ptr %.sroa.423.0..sroa_idx.i.i.i.i, align 16, !noalias !29947
  %.sroa.423.0.copyload.i.i.i.i = load i64, ptr %.sroa.423.0..sroa_idx.i.i.i.i, align 16, !noalias !29947
  %.not26.i.i.i.i = icmp eq i64 %.sroa.12.1.i.i.i, 0
  br i1 %.not26.i.i.i.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEE19sift_down_to_bottomCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %bb.h
  %.sroa.13.027.i.i.i.i = phi i64 [ %i.v, %bb.h ], [ %.sroa.12.1.i.i.i, %bb.g ] ; 3 uses
  %i.u = add nsw i64 %.sroa.13.027.i.i.i.i, -1
  %i.v = lshr i64 %i.u, 1                         ; 4 uses
  %i.w = icmp samesign ult i64 %i.v, %i.e
  call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw [112 x i8], ptr %i.i, i64 %i.v ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 96
  %.val1.i.i.i.i = load i64, ptr %i.y, align 16, !noalias !29947, !noundef !8
  %.not25.i.i.i.i = icmp sgt i64 %.val1.i.i.i.i, %.sroa.423.0.copyload.i.i.i.i
  br i1 %.not25.i.i.i.i, label %bb.h, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEE19sift_down_to_bottomCs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.z = getelementptr inbounds nuw [112 x i8], ptr %i.i, i64 %.sroa.13.027.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.z, ptr noundef nonnull align 16 dereferenceable(112) %i.x, i64 112, i1 false), !noalias !29947
  %.not.i.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEE19sift_down_to_bottomCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i, %.lr.ph.i.i.i
  %.sroa.05.010.i.i.i = phi i64 [ %i.am, %.lr.ph.i.i.i ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i ] ; 3 uses
  %.sroa.12.09.i.i.i = phi i64 [ %i.ai, %.lr.ph.i.i.i ], [ 0, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  %i.aa = getelementptr inbounds nuw [112 x i8], ptr %i.i, i64 %.sroa.05.010.i.i.i
  %i.ab = add nuw nsw i64 %.sroa.05.010.i.i.i, 1  ; 2 uses
  %i.ac = icmp samesign ult i64 %i.ab, %i.e
  call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw [112 x i8], ptr %i.i, i64 %i.ab
  %i.ae = getelementptr i8, ptr %i.aa, i64 96
  %.val.i.i.i = load i64, ptr %i.ae, align 16, !noalias !29947, !noundef !8
  %i.af = getelementptr i8, ptr %i.ad, i64 96
  %.val17.i.i.i = load i64, ptr %i.af, align 16, !noalias !29947, !noundef !8
  %i.ag = icmp sle i64 %.val17.i.i.i, %.val.i.i.i
  %i.ah = zext i1 %i.ag to i64
  %i.ai = add nuw nsw i64 %.sroa.05.010.i.i.i, %i.ah ; 4 uses
  %i.aj = getelementptr inbounds nuw [112 x i8], ptr %i.i, i64 %i.ai
  %i.ak = getelementptr inbounds nuw [112 x i8], ptr %i.i, i64 %.sroa.12.09.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.ak, ptr noundef nonnull align 16 dereferenceable(112) %i.aj, i64 112, i1 false), !noalias !29947
  %i.al = shl nuw nsw i64 %i.ai, 1                ; 2 uses
  %i.am = or disjoint i64 %i.al, 1                ; 2 uses
  %.not.not.not.i.i.i = icmp samesign ult i64 %i.al, %3
  br i1 %.not.not.not.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEE19sift_down_to_bottomCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.h, %.lr.ph.i.i.i.i, %bb.g
  %.sroa.13.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.g ], [ %.sroa.13.027.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.h ]
  %i.an = getelementptr inbounds nuw [112 x i8], ptr %i.i, i64 %.sroa.13.0.lcssa.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.an, ptr noundef nonnull align 16 dereferenceable(96) %.sroa.0.i.i.i, i64 96, i1 false), !noalias !29947
  %.sroa.5.0..sroa_idx1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 96
  store <2 x i64> %i.t, ptr %.sroa.5.0..sroa_idx1.i.i.i.i, align 16, !noalias !29947
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %.sroa.012.0.copyload13.pre = load i64, ptr %i.a, align 16, !noalias !29938
  br label %_RNCNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEE3pop0Cs14kWLkQVSKO_14deltalake_core.exit.i

_RNCNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEE3pop0Cs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEE19sift_down_to_bottomCs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.c
  %.sroa.012.0.copyload13 = phi i64 [ %.sroa.012.0.copyload13.pre, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEE19sift_down_to_bottomCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %.sroa.05.0.copyload.i, %bb.c ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.57.0..sroa_idx.i, i64 104, i1 false), !noalias !29938
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !29943
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b, %_RNCNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEE3pop0Cs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.012.0 = phi i64 [ %.sroa.012.0.copyload13, %_RNCNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEE3pop0Cs14kWLkQVSKO_14deltalake_core.exit.i ], [ -9223372036854775742, %bb.b ] ; 2 uses
  %i.ao = icmp ne i64 %.sroa.012.0, -9223372036854775742
  call void @llvm.assume(i1 %i.ao)
  store i64 %.sroa.012.0, ptr %0, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs2_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2Y_5ErrorEEE3popCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i.i.i = alloca [80 x i8], align 8      ; 6 uses
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  %.sroa.6 = alloca [72 x i8], align 8            ; 5 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !29949, !noalias !29952 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29949)
  %i.b = icmp eq i64 %.pre, 0
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3g_5ErrorEEEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %i.c = phi i64 [ %2, %.thread ], [ %.pre, %bb.b ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = add nsw i64 %i.c, -1                     ; 8 uses
  store i64 %i.e, ptr %i.d, align 8, !alias.scope !29949, !noalias !29952
  %i.f = load i64, ptr %1, align 8, !range !231, !alias.scope !29949, !noalias !29952, !noundef !8
  %i.g = icmp samesign ult i64 %i.e, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !29949, !noalias !29952, !nonnull !8, !noundef !8 ; 13 uses
  %i.j = icmp ult i64 %i.c, 115292150460684699
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %i.e ; 2 uses
  %.sroa.05.0.copyload.i = load i64, ptr %i.k, align 8, !noalias !29954 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !29954
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.57.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx.i, i64 72, i1 false), !noalias !29954
  store i64 %.sroa.05.0.copyload.i, ptr %i.a, align 8, !noalias !29954
  %i.l = icmp eq i64 %i.e, 0
  br i1 %i.l, label %_RNCNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB34_5ErrorEEE3pop0Cs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull %i.i, i64 noundef 10)
          to label %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2B_5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.e, !noalias !29955

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #43, !noalias !29955
  unreachable

_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2B_5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.i, i64 80, i1 false), !noalias !29958
  %3 = add nsw i64 %i.c, -3
  %.not.not8.i.i.i = icmp samesign ult i64 %i.c, 4
  br i1 %.not.not8.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2B_5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.sroa.12.0.lcssa.i.i.i = phi i64 [ 0, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2B_5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.ai, %.lr.ph.i.i.i ] ; 5 uses
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 1, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2B_5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.am, %.lr.ph.i.i.i ] ; 4 uses
  %i.n = add nsw i64 %i.c, -2
  %i.o = icmp eq i64 %.sroa.05.0.lcssa.i.i.i, %i.n
  br i1 %i.o, label %.thread.i.i, label %bb.f

.thread.i.i:                                      ; preds = %._crit_edge.i.i.i
  %i.p = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.05.0.lcssa.i.i.i ; 3 uses
  %i.q = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.12.0.lcssa.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.q, ptr noundef nonnull align 8 dereferenceable(80) %i.p, i64 80, i1 false), !noalias !29958
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.p, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.i.i.i, i64 80, i1 false), !noalias !29958
  %i.r = icmp samesign ult i64 %.sroa.05.0.lcssa.i.i.i, %i.e
  call void @llvm.assume(i1 %i.r)
  %.sroa.416.0..sroa_idx.i.i6.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %.sroa.416.0.copyload.i.i7.i.i = load i64, ptr %.sroa.416.0..sroa_idx.i.i6.i.i, align 8, !noalias !29958
  br label %.lr.ph.i.i.preheader.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.s = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.12.0.lcssa.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.s, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.i.i.i, i64 80, i1 false), !noalias !29958
  %i.t = icmp samesign ult i64 %.sroa.12.0.lcssa.i.i.i, %i.e
  call void @llvm.assume(i1 %i.t)
  %.sroa.416.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %.sroa.416.0.copyload.i.i.i.i = load i64, ptr %.sroa.416.0..sroa_idx.i.i.i.i, align 8, !noalias !29958 ; 2 uses
  %.not18.i.i.i.i = icmp eq i64 %.sroa.12.0.lcssa.i.i.i, 0
  br i1 %.not18.i.i.i.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE19sift_down_to_bottomCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.f, %.thread.i.i
  %.sroa.416.0.copyload.i.i10.i.i = phi i64 [ %.sroa.416.0.copyload.i.i7.i.i, %.thread.i.i ], [ %.sroa.416.0.copyload.i.i.i.i, %bb.f ] ; 3 uses
  %.sroa.12.1.i9.i.i = phi i64 [ %.sroa.05.0.lcssa.i.i.i, %.thread.i.i ], [ %.sroa.12.0.lcssa.i.i.i, %bb.f ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %.lr.ph.i.i.preheader.i.i
  %.sroa.13.019.i.i.i.i = phi i64 [ %i.v, %bb.g ], [ %.sroa.12.1.i9.i.i, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %i.u = add nsw i64 %.sroa.13.019.i.i.i.i, -1
  %i.v = lshr i64 %i.u, 1                         ; 4 uses
  %i.w = icmp samesign ult i64 %i.v, %i.e
  call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %i.v ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 72
  %.val1.i.i.i.i = load i64, ptr %i.y, align 8, !noalias !29958, !noundef !8
  %.not17.i.i.i.i = icmp sgt i64 %.val1.i.i.i.i, %.sroa.416.0.copyload.i.i10.i.i
  br i1 %.not17.i.i.i.i, label %bb.g, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE19sift_down_to_bottomCs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.z = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.13.019.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.z, ptr noundef nonnull align 8 dereferenceable(80) %i.x, i64 80, i1 false), !noalias !29958
  %.not.i.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE19sift_down_to_bottomCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2B_5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i, %.lr.ph.i.i.i
  %.sroa.05.010.i.i.i = phi i64 [ %i.am, %.lr.ph.i.i.i ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2B_5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i ] ; 3 uses
  %.sroa.12.09.i.i.i = phi i64 [ %i.ai, %.lr.ph.i.i.i ], [ 0, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2B_5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  %i.aa = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.05.010.i.i.i
  %i.ab = add nuw nsw i64 %.sroa.05.010.i.i.i, 1  ; 2 uses
  %i.ac = icmp samesign ult i64 %i.ab, %i.e
  call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %i.ab
  %i.ae = getelementptr i8, ptr %i.aa, i64 72
  %.val.i.i.i = load i64, ptr %i.ae, align 8, !noalias !29958, !noundef !8
  %i.af = getelementptr i8, ptr %i.ad, i64 72
  %.val17.i.i.i = load i64, ptr %i.af, align 8, !noalias !29958, !noundef !8
  %i.ag = icmp sle i64 %.val17.i.i.i, %.val.i.i.i
  %i.ah = zext i1 %i.ag to i64
  %i.ai = add nuw nsw i64 %.sroa.05.010.i.i.i, %i.ah ; 4 uses
  %i.aj = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %i.ai
  %i.ak = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.12.09.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ak, ptr noundef nonnull align 8 dereferenceable(80) %i.aj, i64 80, i1 false), !noalias !29958
  %i.al = shl nuw nsw i64 %i.ai, 1                ; 2 uses
  %i.am = or disjoint i64 %i.al, 1                ; 2 uses
  %.not.not.not.i.i.i = icmp samesign ult i64 %i.al, %3
  br i1 %.not.not.not.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE19sift_down_to_bottomCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i, %bb.f
  %.sroa.416.0.copyload.i.i11.i.i = phi i64 [ %.sroa.416.0.copyload.i.i.i.i, %bb.f ], [ %.sroa.416.0.copyload.i.i10.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.416.0.copyload.i.i10.i.i, %bb.g ]
  %.sroa.13.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.f ], [ 0, %bb.g ], [ %.sroa.13.019.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.an = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.13.0.lcssa.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.an, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.i.i.i, i64 72, i1 false), !noalias !29958
  %.sroa.5.0..sroa_idx1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  store i64 %.sroa.416.0.copyload.i.i11.i.i, ptr %.sroa.5.0..sroa_idx1.i.i.i.i, align 8, !noalias !29958
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %.sroa.012.0.copyload13.pre = load i64, ptr %i.a, align 8, !noalias !29949
  br label %_RNCNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB34_5ErrorEEE3pop0Cs14kWLkQVSKO_14deltalake_core.exit.i

_RNCNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB34_5ErrorEEE3pop0Cs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE19sift_down_to_bottomCs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.c
  %.sroa.012.0.copyload13 = phi i64 [ %.sroa.012.0.copyload13.pre, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE19sift_down_to_bottomCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %.sroa.05.0.copyload.i, %bb.c ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.57.0..sroa_idx.i, i64 72, i1 false), !noalias !29949
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !29954
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3g_5ErrorEEEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3g_5ErrorEEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b, %_RNCNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB34_5ErrorEEE3pop0Cs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.012.0 = phi i64 [ %.sroa.012.0.copyload13, %_RNCNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB34_5ErrorEEE3pop0Cs14kWLkQVSKO_14deltalake_core.exit.i ], [ -9223372036854775789, %bb.b ] ; 2 uses
  %i.ao = icmp ne i64 %.sroa.012.0, -9223372036854775789
  call void @llvm.assume(i1 %i.ao)
  store i64 %.sroa.012.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadRShEE10peek_errorCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val = load i64, ptr %i.a, align 8, !noundef !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val2 = load i64, ptr %i.b, align 8, !noundef !8
  %i.c = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5Error6syntax(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %.val, i64 noundef %.val2)
  ret ptr %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadRShEE11parse_identCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(104) %0, ptr noalias noundef nonnull readonly captures(address) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 89
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = icmp samesign eq i64 %2, 0
  br i1 %i.l, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %.thread
  %i.m = icmp eq ptr %i.n, %i.d
  br i1 %i.m, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.030 = phi ptr [ %i.n, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.030, i64 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29960)
  %i.o = load i8, ptr %i.f, align 8, !range !89, !alias.scope !29960, !noalias !29963, !noundef !8
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = load i8, ptr %i.g, align 1, !alias.scope !29960, !noalias !29963 ; 3 uses
  store i8 0, ptr %i.f, align 8, !alias.scope !29960, !noalias !29963
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.r = load i64, ptr %i.e, align 8, !range !65, !alias.scope !29960, !noalias !29963, !noundef !8 ; 2 uses
  %.not5.i = icmp eq i64 %i.r, -9223372036854775808
  br i1 %.not5.i, label %.thread, label %bb.h

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !29965
  call void @_RNvXs_NtCseqDwI8vvjGQ_10serde_json4iterINtB4_15LineColIteratorINtNtCs2pqxYH9ZEk8_3std2io5BytesRShEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.h), !noalias !29963
  %i.s = load i8, ptr %i.a, align 8, !range !466, !noalias !29965, !noundef !8
  switch i8 %i.s, label %bb.j [
    i8 2, label %bb.k
    i8 0, label %bb.e
  ], !prof !9989

bb.e:                                             ; preds = %bb.d
  %i.t = load i8, ptr %i.i, align 1, !noalias !29965, !noundef !8 ; 2 uses
  %i.u = load i64, ptr %i.e, align 8, !range !65, !alias.scope !29960, !noalias !29963, !noundef !8 ; 2 uses
  %.not4.i = icmp eq i64 %i.u, -9223372036854775808
  br i1 %.not4.i, label %.thread26, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i64, ptr %i.j, align 8, !alias.scope !29966, !noalias !29963, !noundef !8 ; 3 uses
  %i.w = icmp eq i64 %i.v, %i.u
  br i1 %i.w, label %bb.g, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE8push_mutCs14kWLkQVSKO_14deltalake_core.exit.i

bb.g:                                             ; preds = %bb.f
  call void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e), !noalias !29963
  br label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE8push_mutCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE8push_mutCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.g, %bb.f
  %i.x = load ptr, ptr %i.k, align 8, !alias.scope !29966, !noalias !29963, !nonnull !8, !noundef !8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 %i.t, ptr %i.y, align 1, !noalias !29963
  %i.z = add i64 %i.v, 1
  store i64 %i.z, ptr %i.j, align 8, !alias.scope !29966, !noalias !29963
  br label %.thread26

bb.h:                                             ; preds = %bb.c
  %i.aa = load i64, ptr %i.j, align 8, !alias.scope !29969, !noalias !29963, !noundef !8 ; 3 uses
  %i.ab = icmp eq i64 %i.aa, %i.r
  br i1 %i.ab, label %bb.i, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE8push_mutCs14kWLkQVSKO_14deltalake_core.exit6.i

bb.i:                                             ; preds = %bb.h
  call void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e), !noalias !29963
  br label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE8push_mutCs14kWLkQVSKO_14deltalake_core.exit6.i

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE8push_mutCs14kWLkQVSKO_14deltalake_core.exit6.i: ; preds = %bb.i, %bb.h
  %i.ac = load ptr, ptr %i.k, align 8, !alias.scope !29969, !noalias !29963, !nonnull !8, !noundef !8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 %i.q, ptr %i.ad, align 1, !noalias !29963
  %i.ae = add i64 %i.aa, 1
  store i64 %i.ae, ptr %i.j, align 8, !alias.scope !29969, !noalias !29963
  br label %.thread
end_hunk_0

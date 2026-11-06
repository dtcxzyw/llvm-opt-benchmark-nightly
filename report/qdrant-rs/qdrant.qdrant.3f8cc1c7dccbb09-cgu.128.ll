Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.128?download=true
inline.NumInlined: 610
inline.NumDeleted: 138
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecOINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEEECsl8OoimOLbh_6qdrant:bb.a

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4util12sharded_list10ShardGuardINtNtNtBI_7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1C_9scheduler14current_thread6HandleEEEECsl8OoimOLbh_6qdrant(ptr %.0.val) unnamed_addr #0 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = ptrtoint ptr %.0.val to i64
  tail call void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.a)
  %i.b = cmpxchg ptr %.0.val, i8 1, i8 0 release monotonic, align 1
  %i.c = extractvalue { i8, i1 } %i.b, 1
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBK_4util11linked_list10LinkedListINtNtNtBK_7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB2l_9scheduler14current_thread6HandleEEEEECsl8OoimOLbh_6qdrant.exit, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs1_NtCs27TyLBeV75a_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %.0.val, i1 noundef zeroext false)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBK_4util11linked_list10LinkedListINtNtNtBK_7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB2l_9scheduler14current_thread6HandleEEEEECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBK_4util11linked_list10LinkedListINtNtNtBK_7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB2l_9scheduler14current_thread6HandleEEEEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4util12sharded_list10ShardGuardINtNtNtBI_7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB1C_9scheduler12multi_thread6handle6HandleEEEECsl8OoimOLbh_6qdrant(ptr %.0.val) unnamed_addr #0 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = ptrtoint ptr %.0.val to i64
  tail call void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.a)
  %i.b = cmpxchg ptr %.0.val, i8 1, i8 0 release monotonic, align 1
  %i.c = extractvalue { i8, i1 } %i.b, 1
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBK_4util11linked_list10LinkedListINtNtNtBK_7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB2l_9scheduler12multi_thread6handle6HandleEEEEECsl8OoimOLbh_6qdrant.exit, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs1_NtCs27TyLBeV75a_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %.0.val, i1 noundef zeroext false)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBK_4util11linked_list10LinkedListINtNtNtBK_7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB2l_9scheduler12multi_thread6handle6HandleEEEEECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBK_4util11linked_list10LinkedListINtNtNtBK_7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB2l_9scheduler12multi_thread6handle6HandleEEEEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBK_4util17idle_notified_set10ListsInnerINtNtNtNtBK_7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtBK_3net3tcp6stream9TcpStreamEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB60_4SyncEL_EEEEEECsl8OoimOLbh_6qdrant(ptr %.0.val) unnamed_addr #0 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = ptrtoint ptr %.0.val to i64
  tail call void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.a)
  %i.b = cmpxchg ptr %.0.val, i8 1, i8 0 release monotonic, align 1
  %i.c = extractvalue { i8, i1 } %i.b, 1
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api5mutex10MutexGuardNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexINtNtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_set10ListsInnerINtNtNtNtB2g_7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtB2g_3net3tcp6stream9TcpStreamEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB6Q_4SyncEL_EEEEEECsl8OoimOLbh_6qdrant.exit, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs1_NtCs27TyLBeV75a_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %.0.val, i1 noundef zeroext false)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api5mutex10MutexGuardNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexINtNtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_set10ListsInnerINtNtNtNtB2g_7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtB2g_3net3tcp6stream9TcpStreamEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB6Q_4SyncEL_EEEEEECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api5mutex10MutexGuardNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexINtNtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_set10ListsInnerINtNtNtNtB2g_7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtB2g_3net3tcp6stream9TcpStreamEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB6Q_4SyncEL_EEEEEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBK_4util17idle_notified_set10ListsInnerINtNtNtNtBK_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEEEECsl8OoimOLbh_6qdrant(ptr %.0.val) unnamed_addr #0 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = ptrtoint ptr %.0.val to i64
  tail call void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.a)
  %i.b = cmpxchg ptr %.0.val, i8 1, i8 0 release monotonic, align 1
  %i.c = extractvalue { i8, i1 } %i.b, 1
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api5mutex10MutexGuardNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexINtNtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_set10ListsInnerINtNtNtNtB2g_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEEEECsl8OoimOLbh_6qdrant.exit, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs1_NtCs27TyLBeV75a_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %.0.val, i1 noundef zeroext false)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api5mutex10MutexGuardNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexINtNtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_set10ListsInnerINtNtNtNtB2g_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEEEECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api5mutex10MutexGuardNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexINtNtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_set10ListsInnerINtNtNtNtB2g_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEEEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvMs2_NtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_setINtBK_15IdleNotifiedSetpE5drain10AllEntriesINtNtNtNtBO_7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtBO_3net3tcp6stream9TcpStreamEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB5R_4SyncEL_EEEINvNtB4_3mem4dropB2d_EEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = tail call noundef ptr @_RNvMs2_NtNtCsjZG7hsAZr3B_5tokio4util11linked_listINtB5_10LinkedListINtNtB7_17idle_notified_set9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtB9_3net3tcp6stream9TcpStreamEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB2p_5error5ErrorNtNtB2p_6marker4SendNtB5z_4SyncEL_EEEEE8pop_backCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %.not.i.not2.i = icmp eq ptr %i.c, null
  br i1 %.not.i.not2.i, label %_RNvXs_NvMs2_NtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_setINtBa_15IdleNotifiedSetpE5drainINtB4_10AllEntriesINtNtNtNtBe_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtBe_3net3tcp6stream9TcpStreamEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB2u_5error5ErrorNtNtB2u_6marker4SendNtB5E_4SyncEL_EEEINvNtB2u_3mem4dropB1J_EENtNtNtB2u_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RNvMNvMs2_NtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_setINtB8_15IdleNotifiedSetpE5drainINtB2_10AllEntriesINtNtNtNtBc_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtBc_3net3tcp6stream9TcpStreamEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB2s_5error5ErrorNtNtB2s_6marker4SendNtB5C_4SyncEL_EEEINvNtB2s_3mem4dropB1H_EE8pop_nextCsl8OoimOLbh_6qdrant.exit.i
  %i.d = phi ptr [ %i.m, %_RNvMNvMs2_NtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_setINtB8_15IdleNotifiedSetpE5drainINtB2_10AllEntriesINtNtNtNtBc_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtBc_3net3tcp6stream9TcpStreamEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB2s_5error5ErrorNtNtB2s_6marker4SendNtB5C_4SyncEL_EEEINvNtB2s_3mem4dropB1H_EE8pop_nextCsl8OoimOLbh_6qdrant.exit.i ], [ %i.c, %bb.a ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !43
  store ptr %i.d, ptr %i.b, align 8, !noalias !43
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !7, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !43
  store ptr %i.f, ptr %i.a, align 8, !noalias !43
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtBb_3net3tcp6stream9TcpStreamEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB1a_5error5ErrorNtNtB1a_6marker4SendNtB4k_4SyncEL_EEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !44
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1g_7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtB1g_3net3tcp6stream9TcpStreamEINtNtBG_5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB5x_4SyncEL_EEEEEECsl8OoimOLbh_6qdrant.exit.i.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtBN_3net3tcp6stream9TcpStreamEINtNtB7_5boxed3BoxDNtNtB2q_5error5ErrorNtNtB2q_6marker4SendNtB5j_4SyncEL_EEEEE9drop_slowCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1g_7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtB1g_3net3tcp6stream9TcpStreamEINtNtBG_5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB5x_4SyncEL_EEEEEECsl8OoimOLbh_6qdrant.exit.i.i unwind label %bb.f

bb.d:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !43
  %i.j = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !45
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RNvMNvMs2_NtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_setINtB8_15IdleNotifiedSetpE5drainINtB2_10AllEntriesINtNtNtNtBc_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtBc_3net3tcp6stream9TcpStreamEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB2s_5error5ErrorNtNtB2s_6marker4SendNtB5C_4SyncEL_EEEINvNtB2s_3mem4dropB1H_EE8pop_nextCsl8OoimOLbh_6qdrant.exit.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtBN_3net3tcp6stream9TcpStreamEINtNtB7_5boxed3BoxDNtNtB2q_5error5ErrorNtNtB2q_6marker4SendNtB5j_4SyncEL_EEEEE9drop_slowCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #21
  br label %_RNvMNvMs2_NtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_setINtB8_15IdleNotifiedSetpE5drainINtB2_10AllEntriesINtNtNtNtBc_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtBc_3net3tcp6stream9TcpStreamEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB2s_5error5ErrorNtNtB2s_6marker4SendNtB5C_4SyncEL_EEEINvNtB2s_3mem4dropB1H_EE8pop_nextCsl8OoimOLbh_6qdrant.exit.i

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1g_7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtB1g_3net3tcp6stream9TcpStreamEINtNtBG_5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB5x_4SyncEL_EEEEEECsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.g

_RNvMNvMs2_NtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_setINtB8_15IdleNotifiedSetpE5drainINtB2_10AllEntriesINtNtNtNtBc_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtBc_3net3tcp6stream9TcpStreamEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB2s_5error5ErrorNtNtB2s_6marker4SendNtB5C_4SyncEL_EEEINvNtB2s_3mem4dropB1H_EE8pop_nextCsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !43
  %i.m = call noundef ptr @_RNvMs2_NtNtCsjZG7hsAZr3B_5tokio4util11linked_listINtB5_10LinkedListINtNtB7_17idle_notified_set9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtB9_3net3tcp6stream9TcpStreamEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB2p_5error5ErrorNtNtB2p_6marker4SendNtB5z_4SyncEL_EEEEE8pop_backCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %.not.i.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i.not.i, label %_RNvXs_NvMs2_NtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_setINtBa_15IdleNotifiedSetpE5drainINtB4_10AllEntriesINtNtNtNtBe_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtBe_3net3tcp6stream9TcpStreamEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB2u_5error5ErrorNtNtB2u_6marker4SendNtB5E_4SyncEL_EEEINvNtB2u_3mem4dropB1J_EENtNtNtB2u_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant.exit, label %.lr.ph.i

_RNvXs_NvMs2_NtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_setINtBa_15IdleNotifiedSetpE5drainINtB4_10AllEntriesINtNtNtNtBe_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtBe_3net3tcp6stream9TcpStreamEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB2u_5error5ErrorNtNtB2u_6marker4SendNtB5E_4SyncEL_EEEINvNtB2u_3mem4dropB1J_EENtNtNtB2u_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant.exit: ; preds = %_RNvMNvMs2_NtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_setINtB8_15IdleNotifiedSetpE5drainINtB2_10AllEntriesINtNtNtNtBc_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtBc_3net3tcp6stream9TcpStreamEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB2s_5error5ErrorNtNtB2s_6marker4SendNtB5C_4SyncEL_EEEINvNtB2s_3mem4dropB1H_EE8pop_nextCsl8OoimOLbh_6qdrant.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvMs2_NtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_setINtBK_15IdleNotifiedSetpE5drain10AllEntriesINtNtNtNtBO_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEINvNtB4_3mem4dropB2d_EEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = tail call noundef ptr @_RNvMs2_NtNtCsjZG7hsAZr3B_5tokio4util11linked_listINtB5_10LinkedListINtNtB7_17idle_notified_set9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEEE8pop_backCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %.not.i.not2.i = icmp eq ptr %i.c, null
  br i1 %.not.i.not2.i, label %_RNvXs_NvMs2_NtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_setINtBa_15IdleNotifiedSetpE5drainINtB4_10AllEntriesINtNtNtNtBe_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEINvNtB2u_3mem4dropB1J_EENtNtNtB2u_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RNvMNvMs2_NtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_setINtB8_15IdleNotifiedSetpE5drainINtB2_10AllEntriesINtNtNtNtBc_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEINvNtB2s_3mem4dropB1H_EE8pop_nextCsl8OoimOLbh_6qdrant.exit.i
  %i.d = phi ptr [ %i.m, %_RNvMNvMs2_NtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_setINtB8_15IdleNotifiedSetpE5drainINtB2_10AllEntriesINtNtNtNtBc_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEINvNtB2s_3mem4dropB1H_EE8pop_nextCsl8OoimOLbh_6qdrant.exit.i ], [ %i.c, %bb.a ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !58
  store ptr %i.d, ptr %i.b, align 8, !noalias !58
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !7, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !58
  store ptr %i.f, ptr %i.a, align 8, !noalias !58
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !59
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1g_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEEEECsl8OoimOLbh_6qdrant.exit.i.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEEE9drop_slowB30_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1g_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEEEECsl8OoimOLbh_6qdrant.exit.i.i unwind label %bb.f

bb.d:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !58
  %i.j = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !60
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RNvMNvMs2_NtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_setINtB8_15IdleNotifiedSetpE5drainINtB2_10AllEntriesINtNtNtNtBc_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEINvNtB2s_3mem4dropB1H_EE8pop_nextCsl8OoimOLbh_6qdrant.exit.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEEE9drop_slowB30_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #21
  br label %_RNvMNvMs2_NtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_setINtB8_15IdleNotifiedSetpE5drainINtB2_10AllEntriesINtNtNtNtBc_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEINvNtB2s_3mem4dropB1H_EE8pop_nextCsl8OoimOLbh_6qdrant.exit.i

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1g_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEEEECsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.g

_RNvMNvMs2_NtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_setINtB8_15IdleNotifiedSetpE5drainINtB2_10AllEntriesINtNtNtNtBc_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEINvNtB2s_3mem4dropB1H_EE8pop_nextCsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !58
  %i.m = call noundef ptr @_RNvMs2_NtNtCsjZG7hsAZr3B_5tokio4util11linked_listINtB5_10LinkedListINtNtB7_17idle_notified_set9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEEE8pop_backCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %.not.i.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i.not.i, label %_RNvXs_NvMs2_NtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_setINtBa_15IdleNotifiedSetpE5drainINtB4_10AllEntriesINtNtNtNtBe_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEINvNtB2u_3mem4dropB1J_EENtNtNtB2u_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant.exit, label %.lr.ph.i

_RNvXs_NvMs2_NtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_setINtBa_15IdleNotifiedSetpE5drainINtB4_10AllEntriesINtNtNtNtBe_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEINvNtB2u_3mem4dropB1J_EENtNtNtB2u_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant.exit: ; preds = %_RNvMNvMs2_NtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_setINtB8_15IdleNotifiedSetpE5drainINtB2_10AllEntriesINtNtNtNtBc_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEINvNtB2s_3mem4dropB1H_EE8pop_nextCsl8OoimOLbh_6qdrant.exit.i, %bb.a
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal fastcc void @_RINvNtNtCs1XrQGnCAlpr_8chacha208backends4avx29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(256) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
.preheader.preheader:
  %.sroa.0.0.copyload.i = load <2 x i64>, ptr %0, align 4, !noalias !73
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i18 = load <2 x i64>, ptr %i.a, align 4, !noalias !74
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i19 = load <2 x i64>, ptr %i.b, align 4, !noalias !75
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i20 = load <2 x i64>, ptr %i.c, align 4, !noalias !76
  %i.d = shufflevector <2 x i64> %.sroa.0.0.copyload.i20, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.e = add <4 x i64> %i.d, <i64 0, i64 0, i64 1, i64 0> ; 2 uses
  %i.f = add <4 x i64> %i.d, <i64 2, i64 0, i64 3, i64 0> ; 2 uses
  %2 = shufflevector <2 x i64> %.sroa.0.0.copyload.i19, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %.cast = bitcast <4 x i64> %2 to <8 x i32>      ; 4 uses
  %3 = shufflevector <2 x i64> %.sroa.0.0.copyload.i18, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %4 = bitcast <4 x i64> %3 to <8 x i32>          ; 4 uses
  %5 = shufflevector <2 x i64> %.sroa.0.0.copyload.i, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %6 = bitcast <4 x i64> %5 to <8 x i32>          ; 4 uses
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %.preheader.preheader
  %.sroa.46.0.i = phi <4 x i64> [ %i.f, %.preheader.preheader ], [ %18, %bb.a ]
  %.sroa.19.0.i = phi <4 x i64> [ %i.e, %.preheader.preheader ], [ %17, %bb.a ]
  %.sroa.023.062.i = phi i64 [ 0, %.preheader.preheader ], [ %i.m, %bb.a ]
  %i.g = phi <8 x i32> [ %6, %.preheader.preheader ], [ %i.ce, %bb.a ]
  %i.h = phi <8 x i32> [ %4, %.preheader.preheader ], [ %i.by, %bb.a ] ; 2 uses
  %i.i = phi <8 x i32> [ %6, %.preheader.preheader ], [ %i.cg, %bb.a ]
  %i.j = phi <8 x i32> [ %4, %.preheader.preheader ], [ %i.cc, %bb.a ] ; 2 uses
  %i.k = phi <8 x i32> [ %.cast, %.preheader.preheader ], [ %i.cd, %bb.a ]
  %i.l = phi <8 x i32> [ %.cast, %.preheader.preheader ], [ %i.cf, %bb.a ]
  %i.m = add nuw nsw i64 %.sroa.023.062.i, 1      ; 2 uses
  %i.n = add <8 x i32> %i.h, %i.g                 ; 2 uses
  %i.o = bitcast <8 x i32> %i.n to <4 x i64>
  %i.p = xor <4 x i64> %.sroa.19.0.i, %i.o
  %i.q = bitcast <4 x i64> %i.p to <32 x i8>
  %i.r = shufflevector <32 x i8> %i.q, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.s = add <8 x i32> %i.j, %i.i                 ; 2 uses
  %i.t = bitcast <8 x i32> %i.s to <4 x i64>
  %i.u = xor <4 x i64> %.sroa.46.0.i, %i.t
  %i.v = bitcast <4 x i64> %i.u to <32 x i8>
  %i.w = shufflevector <32 x i8> %i.v, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.x = bitcast <32 x i8> %i.r to <8 x i32>
  %i.y = add <8 x i32> %i.k, %i.x                 ; 2 uses
  %i.z = xor <8 x i32> %i.y, %i.h                 ; 2 uses
  %i.aa = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.z, <8 x i32> %i.z, <8 x i32> splat (i32 12)) ; 2 uses
  %i.ab = bitcast <32 x i8> %i.w to <8 x i32>
  %i.ac = add <8 x i32> %i.l, %i.ab               ; 2 uses
  %i.ad = xor <8 x i32> %i.ac, %i.j               ; 2 uses
  %i.ae = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ad, <8 x i32> %i.ad, <8 x i32> splat (i32 12)) ; 2 uses
  %i.af = add <8 x i32> %i.aa, %i.n               ; 2 uses
  %i.ag = bitcast <8 x i32> %i.af to <32 x i8>
  %i.ah = xor <32 x i8> %i.r, %i.ag
  %i.ai = shufflevector <32 x i8> %i.ah, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30> ; 2 uses
  %7 = bitcast <32 x i8> %i.ai to <4 x i64>
  %i.aj = add <8 x i32> %i.ae, %i.s               ; 2 uses
  %i.ak = bitcast <8 x i32> %i.aj to <32 x i8>
  %i.al = xor <32 x i8> %i.w, %i.ak
  %i.am = shufflevector <32 x i8> %i.al, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30> ; 2 uses
  %8 = bitcast <32 x i8> %i.am to <4 x i64>
  %i.an = bitcast <32 x i8> %i.ai to <8 x i32>
  %i.ao = add <8 x i32> %i.y, %i.an               ; 2 uses
  %i.ap = xor <8 x i32> %i.ao, %i.aa              ; 2 uses
  %i.aq = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ap, <8 x i32> %i.ap, <8 x i32> splat (i32 7)) ; 2 uses
  %i.ar = bitcast <32 x i8> %i.am to <8 x i32>
  %i.as = add <8 x i32> %i.ac, %i.ar              ; 2 uses
  %i.at = xor <8 x i32> %i.as, %i.ae              ; 2 uses
  %i.au = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.at, <8 x i32> %i.at, <8 x i32> splat (i32 7)) ; 2 uses
  %i.av = shufflevector <8 x i32> %i.ao, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %9 = shufflevector <4 x i64> %7, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.aw = shufflevector <8 x i32> %i.af, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6>
  %i.ax = shufflevector <8 x i32> %i.as, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %10 = shufflevector <4 x i64> %8, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.ay = shufflevector <8 x i32> %i.aj, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6>
  %i.az = add <8 x i32> %i.aq, %i.aw              ; 2 uses
  %11 = bitcast <8 x i32> %i.az to <4 x i64>
  %12 = xor <4 x i64> %9, %11
  %i.ba = bitcast <4 x i64> %12 to <32 x i8>
  %i.bb = shufflevector <32 x i8> %i.ba, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.bc = add <8 x i32> %i.au, %i.ay              ; 2 uses
  %13 = bitcast <8 x i32> %i.bc to <4 x i64>
  %14 = xor <4 x i64> %10, %13
  %i.bd = bitcast <4 x i64> %14 to <32 x i8>
  %i.be = shufflevector <32 x i8> %i.bd, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.bf = bitcast <32 x i8> %i.bb to <8 x i32>
  %i.bg = add <8 x i32> %i.av, %i.bf              ; 2 uses
  %i.bh = xor <8 x i32> %i.bg, %i.aq              ; 2 uses
  %i.bi = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.bh, <8 x i32> %i.bh, <8 x i32> splat (i32 12)) ; 2 uses
  %i.bj = bitcast <32 x i8> %i.be to <8 x i32>
  %i.bk = add <8 x i32> %i.ax, %i.bj              ; 2 uses
  %i.bl = xor <8 x i32> %i.bk, %i.au              ; 2 uses
  %i.bm = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.bl, <8 x i32> %i.bl, <8 x i32> splat (i32 12)) ; 2 uses
  %i.bn = add <8 x i32> %i.bi, %i.az              ; 2 uses
  %i.bo = bitcast <8 x i32> %i.bn to <32 x i8>
  %i.bp = xor <32 x i8> %i.bb, %i.bo
  %i.bq = shufflevector <32 x i8> %i.bp, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30> ; 2 uses
  %15 = bitcast <32 x i8> %i.bq to <4 x i64>
  %i.br = add <8 x i32> %i.bm, %i.bc              ; 2 uses
  %i.bs = bitcast <8 x i32> %i.br to <32 x i8>
  %i.bt = xor <32 x i8> %i.be, %i.bs
  %i.bu = shufflevector <32 x i8> %i.bt, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30> ; 2 uses
  %16 = bitcast <32 x i8> %i.bu to <4 x i64>
  %i.bv = bitcast <32 x i8> %i.bq to <8 x i32>
  %i.bw = add <8 x i32> %i.bg, %i.bv              ; 2 uses
  %i.bx = xor <8 x i32> %i.bw, %i.bi              ; 2 uses
  %i.by = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.bx, <8 x i32> %i.bx, <8 x i32> splat (i32 7)) ; 2 uses
  %i.bz = bitcast <32 x i8> %i.bu to <8 x i32>
  %i.ca = add <8 x i32> %i.bk, %i.bz              ; 2 uses
  %i.cb = xor <8 x i32> %i.ca, %i.bm              ; 2 uses
  %i.cc = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.cb, <8 x i32> %i.cb, <8 x i32> splat (i32 7)) ; 2 uses
  %i.cd = shufflevector <8 x i32> %i.bw, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6> ; 2 uses
  %17 = shufflevector <4 x i64> %15, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.ce = shufflevector <8 x i32> %i.bn, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 2 uses
  %i.cf = shufflevector <8 x i32> %i.ca, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6> ; 2 uses
  %18 = shufflevector <4 x i64> %16, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.cg = shufflevector <8 x i32> %i.br, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.m, 6
  br i1 %exitcond.not.i, label %_RNvMNtNtCs1XrQGnCAlpr_8chacha208backends4avx2INtB2_7BackendNtB6_3R12NtNtB6_8variants6LegacyE21rng_gen_par_ks_blocksCsl8OoimOLbh_6qdrant.exit, label %bb.a

_RNvMNtNtCs1XrQGnCAlpr_8chacha208backends4avx2INtB2_7BackendNtB6_3R12NtNtB6_8variants6LegacyE21rng_gen_par_ks_blocksCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a
  %19 = bitcast <4 x i64> %18 to <8 x i32>
  %i.ch = bitcast <4 x i64> %i.f to <8 x i32>
  %i.ci = add <8 x i32> %19, %i.ch                ; 2 uses
  %i.cj = add <8 x i32> %i.cf, %.cast             ; 2 uses
  %i.ck = add <8 x i32> %i.cc, %4                 ; 2 uses
  %i.cl = add <8 x i32> %i.cg, %6                 ; 2 uses
  %20 = bitcast <4 x i64> %17 to <8 x i32>
  %i.cm = bitcast <4 x i64> %i.e to <8 x i32>
  %i.cn = add <8 x i32> %20, %i.cm                ; 2 uses
  %i.co = add <8 x i32> %i.cd, %.cast             ; 2 uses
  %i.cp = add <8 x i32> %i.by, %4                 ; 2 uses
  %i.cq = add <8 x i32> %i.ce, %6                 ; 2 uses
  %.sroa.2.32.vec.extract = shufflevector <8 x i32> %i.cq, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.2.48.vec.extract = shufflevector <8 x i32> %i.cq, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.5.64.vec.extract = shufflevector <8 x i32> %i.cp, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.5.80.vec.extract = shufflevector <8 x i32> %i.cp, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.8.96.vec.extract = shufflevector <8 x i32> %i.co, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.8.112.vec.extract = shufflevector <8 x i32> %i.co, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.11.128.vec.extract = shufflevector <8 x i32> %i.cn, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.11.144.vec.extract = shufflevector <8 x i32> %i.cn, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %.sroa.2.32.vec.extract, ptr %1, align 4, !noalias !77
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 64
  store <4 x i32> %.sroa.2.48.vec.extract, ptr %i.cr, align 4, !noalias !78
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <4 x i32> %.sroa.5.64.vec.extract, ptr %i.cs, align 4, !noalias !77
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 80
  store <4 x i32> %.sroa.5.80.vec.extract, ptr %i.ct, align 4, !noalias !78
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 32
  store <4 x i32> %.sroa.8.96.vec.extract, ptr %i.cu, align 4, !noalias !77
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 96
  store <4 x i32> %.sroa.8.112.vec.extract, ptr %i.cv, align 4, !noalias !78
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <4 x i32> %.sroa.11.128.vec.extract, ptr %i.cw, align 4, !noalias !77
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 112
  store <4 x i32> %.sroa.11.144.vec.extract, ptr %i.cx, align 4, !noalias !78
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.14.160.vec.extract = shufflevector <8 x i32> %i.cl, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.14.176.vec.extract = shufflevector <8 x i32> %i.cl, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.17.192.vec.extract = shufflevector <8 x i32> %i.ck, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.17.208.vec.extract = shufflevector <8 x i32> %i.ck, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.20.224.vec.extract = shufflevector <8 x i32> %i.cj, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.20.240.vec.extract = shufflevector <8 x i32> %i.cj, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.23.256.vec.extract = shufflevector <8 x i32> %i.ci, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.23.272.vec.extract = shufflevector <8 x i32> %i.ci, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %.sroa.14.160.vec.extract, ptr %i.cy, align 4, !noalias !77
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 192
  store <4 x i32> %.sroa.14.176.vec.extract, ptr %i.cz, align 4, !noalias !78
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 144
  store <4 x i32> %.sroa.17.192.vec.extract, ptr %i.da, align 4, !noalias !77
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 208
  store <4 x i32> %.sroa.17.208.vec.extract, ptr %i.db, align 4, !noalias !78
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 160
  store <4 x i32> %.sroa.20.224.vec.extract, ptr %i.dc, align 4, !noalias !77
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 224
  store <4 x i32> %.sroa.20.240.vec.extract, ptr %i.dd, align 4, !noalias !78
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 176
  store <4 x i32> %.sroa.23.256.vec.extract, ptr %i.de, align 4, !noalias !77
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 240
  store <4 x i32> %.sroa.23.272.vec.extract, ptr %i.df, align 4, !noalias !78
  %i.dg = add <4 x i64> %i.d, <i64 4, i64 poison, i64 poison, i64 poison>
  %21 = shufflevector <4 x i64> %i.dg, <4 x i64> poison, <1 x i32> zeroinitializer
  store <1 x i64> %21, ptr %i.c, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtCsjZG7hsAZr3B_5tokio4util4wake12drop_arc_rawINtNtB4_17idle_notified_set9ListEntryINtNtNtNtB6_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtB6_3net3tcp6stream9TcpStreamEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB2a_5error5ErrorNtNtB2a_6marker4SendNtB5k_4SyncEL_EEEEECsl8OoimOLbh_6qdrant(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call noundef i64 @_RINvNtCsexYYUdYSQU6_5alloc4sync11data_offsetINtNtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtBN_3net3tcp6stream9TcpStreamEINtNtB4_5boxed3BoxDNtNtB2q_5error5ErrorNtNtB2q_6marker4SendNtB5j_4SyncEL_EEEEECsl8OoimOLbh_6qdrant(ptr noundef %0)
  %i.c = sub nsw i64 0, %i.b
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  store ptr %i.d, ptr %i.a, align 8
  %i.e = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !83
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1g_7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtB1g_3net3tcp6stream9TcpStreamEINtNtBG_5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB5x_4SyncEL_EEEEEECsl8OoimOLbh_6qdrant.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtBN_3net3tcp6stream9TcpStreamEINtNtB7_5boxed3BoxDNtNtB2q_5error5ErrorNtNtB2q_6marker4SendNtB5j_4SyncEL_EEEEE9drop_slowCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1g_7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtB1g_3net3tcp6stream9TcpStreamEINtNtBG_5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB5x_4SyncEL_EEEEEECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1g_7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtB1g_3net3tcp6stream9TcpStreamEINtNtBG_5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB5x_4SyncEL_EEEEEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtCsjZG7hsAZr3B_5tokio4util4wake12drop_arc_rawINtNtB4_17idle_notified_set9ListEntryINtNtNtNtB6_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEEECsl8OoimOLbh_6qdrant(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call noundef i64 @_RINvNtCsexYYUdYSQU6_5alloc4sync11data_offsetINtNtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEEECsl8OoimOLbh_6qdrant(ptr noundef %0)
  %i.c = sub nsw i64 0, %i.b
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  store ptr %i.d, ptr %i.a, align 8
  %i.e = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !88
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1g_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEEEECsl8OoimOLbh_6qdrant.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEEE9drop_slowB30_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1g_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEEEECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1g_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEEEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtCsjZG7hsAZr3B_5tokio4util4wake12wake_arc_rawINtNtB4_17idle_notified_set9ListEntryINtNtNtNtB6_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtB6_3net3tcp6stream9TcpStreamEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB2a_5error5ErrorNtNtB2a_6marker4SendNtB5k_4SyncEL_EEEEECsl8OoimOLbh_6qdrant(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = tail call noundef i64 @_RINvNtCsexYYUdYSQU6_5alloc4sync11data_offsetINtNtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtBN_3net3tcp6stream9TcpStreamEINtNtB4_5boxed3BoxDNtNtB2q_5error5ErrorNtNtB2q_6marker4SendNtB5j_4SyncEL_EEEEECsl8OoimOLbh_6qdrant(ptr noundef %0)
  %i.c = sub nsw i64 0, %i.b
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  invoke fastcc void @_RNvXs5_NtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtB9_3net3tcp6stream9TcpStreamEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB1S_5error5ErrorNtNtB1S_6marker4SendNtB52_4SyncEL_EEEENtNtB7_4wake4Wake11wake_by_refCsl8OoimOLbh_6qdrant(ptr nonnull %i.d)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !97
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1g_7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtB1g_3net3tcp6stream9TcpStreamEINtNtBG_5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB5x_4SyncEL_EEEEEECsl8OoimOLbh_6qdrant.exit.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtBN_3net3tcp6stream9TcpStreamEINtNtB7_5boxed3BoxDNtNtB2q_5error5ErrorNtNtB2q_6marker4SendNtB5j_4SyncEL_EEEEE9drop_slowCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1g_7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtB1g_3net3tcp6stream9TcpStreamEINtNtBG_5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB5x_4SyncEL_EEEEEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.h = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !98
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %_RNvXs5_NtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtB9_3net3tcp6stream9TcpStreamEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB1S_5error5ErrorNtNtB1S_6marker4SendNtB52_4SyncEL_EEEENtNtB7_4wake4Wake4wakeCsl8OoimOLbh_6qdrant.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtBN_3net3tcp6stream9TcpStreamEINtNtB7_5boxed3BoxDNtNtB2q_5error5ErrorNtNtB2q_6marker4SendNtB5j_4SyncEL_EEEEE9drop_slowCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #21
  br label %_RNvXs5_NtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtB9_3net3tcp6stream9TcpStreamEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB1S_5error5ErrorNtNtB1S_6marker4SendNtB52_4SyncEL_EEEENtNtB7_4wake4Wake4wakeCsl8OoimOLbh_6qdrant.exit

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1g_7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtB1g_3net3tcp6stream9TcpStreamEINtNtBG_5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB5x_4SyncEL_EEEEEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.e

_RNvXs5_NtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtB9_3net3tcp6stream9TcpStreamEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB1S_5error5ErrorNtNtB1S_6marker4SendNtB52_4SyncEL_EEEENtNtB7_4wake4Wake4wakeCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtCsjZG7hsAZr3B_5tokio4util4wake12wake_arc_rawINtNtB4_17idle_notified_set9ListEntryINtNtNtNtB6_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEEECsl8OoimOLbh_6qdrant(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = tail call noundef i64 @_RINvNtCsexYYUdYSQU6_5alloc4sync11data_offsetINtNtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEEECsl8OoimOLbh_6qdrant(ptr noundef %0)
  %i.c = sub nsw i64 0, %i.b
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  invoke fastcc void @_RNvXs5_NtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEENtNtB7_4wake4Wake11wake_by_refCsl8OoimOLbh_6qdrant(ptr nonnull %i.d)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !107
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1g_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEEEECsl8OoimOLbh_6qdrant.exit.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEEE9drop_slowB30_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1g_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEEEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.h = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !108
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %_RNvXs5_NtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEENtNtB7_4wake4Wake4wakeCsl8OoimOLbh_6qdrant.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEEE9drop_slowB30_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #21
  br label %_RNvXs5_NtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEENtNtB7_4wake4Wake4wakeCsl8OoimOLbh_6qdrant.exit

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1g_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEEEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.e

_RNvXs5_NtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEENtNtB7_4wake4Wake4wakeCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RINvNtNtCsjZG7hsAZr3B_5tokio4util4wake13clone_arc_rawINtNtB4_17idle_notified_set9ListEntryINtNtNtNtB6_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtB6_3net3tcp6stream9TcpStreamEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB2b_5error5ErrorNtNtB2b_6marker4SendNtB5l_4SyncEL_EEEEECsl8OoimOLbh_6qdrant(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef i64 @_RINvNtCsexYYUdYSQU6_5alloc4sync11data_offsetINtNtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtBN_3net3tcp6stream9TcpStreamEINtNtB4_5boxed3BoxDNtNtB2q_5error5ErrorNtNtB2q_6marker4SendNtB5j_4SyncEL_EEEEECsl8OoimOLbh_6qdrant(ptr noundef %0)
  %i.b = sub nsw i64 0, %i.a
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtBN_3net3tcp6stream9TcpStreamEINtNtB7_5boxed3BoxDNtNtB2q_5error5ErrorNtNtB2q_6marker4SendNtB5j_4SyncEL_EEEEE25increment_strong_count_inCsl8OoimOLbh_6qdrant.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtBN_3net3tcp6stream9TcpStreamEINtNtB7_5boxed3BoxDNtNtB2q_5error5ErrorNtNtB2q_6marker4SendNtB5j_4SyncEL_EEEEE25increment_strong_count_inCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a
  %i.f = insertvalue { ptr, ptr } { ptr @0, ptr poison }, ptr %0, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RINvNtNtCsjZG7hsAZr3B_5tokio4util4wake13clone_arc_rawINtNtB4_17idle_notified_set9ListEntryINtNtNtNtB6_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEEECsl8OoimOLbh_6qdrant(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef i64 @_RINvNtCsexYYUdYSQU6_5alloc4sync11data_offsetINtNtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEEECsl8OoimOLbh_6qdrant(ptr noundef %0)
  %i.b = sub nsw i64 0, %i.a
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEEE25increment_strong_count_inCsl8OoimOLbh_6qdrant.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEEE25increment_strong_count_inCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a
  %i.f = insertvalue { ptr, ptr } { ptr @1, ptr poison }, ptr %0, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtCsjZG7hsAZr3B_5tokio4util4wake19wake_by_ref_arc_rawINtNtB4_17idle_notified_set9ListEntryINtNtNtNtB6_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtB6_3net3tcp6stream9TcpStreamEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB2h_5error5ErrorNtNtB2h_6marker4SendNtB5r_4SyncEL_EEEEECsl8OoimOLbh_6qdrant(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef i64 @_RINvNtCsexYYUdYSQU6_5alloc4sync11data_offsetINtNtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtBN_3net3tcp6stream9TcpStreamEINtNtB4_5boxed3BoxDNtNtB2q_5error5ErrorNtNtB2q_6marker4SendNtB5j_4SyncEL_EEEEECsl8OoimOLbh_6qdrant(ptr noundef %0)
  %i.b = sub nsw i64 0, %i.a
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  tail call fastcc void @_RNvXs5_NtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtB9_3net3tcp6stream9TcpStreamEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB1S_5error5ErrorNtNtB1S_6marker4SendNtB52_4SyncEL_EEEENtNtB7_4wake4Wake11wake_by_refCsl8OoimOLbh_6qdrant(ptr nonnull %i.c)
  ret void
}

end_hunk_0
begin_hunk_1_@_RNvXs5_NtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtB9_3net3tcp6stream9TcpStreamEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB1S_5error5ErrorNtNtB1S_6marker4SendNtB52_4SyncEL_EEEENtNtB7_4wake4Wake11wake_by_refCsl8OoimOLbh_6qdrant:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !align !12, !noundef !7 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  store ptr null, ptr %i.o, align 8
  %.not9 = icmp eq ptr %i.p, null
  br i1 %.not9, label %bb.d, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.g)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.k
  %i.s = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.t = extractvalue { i8, i1 } %i.s, 1
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBK_4util17idle_notified_set10ListsInnerINtNtNtNtBK_7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtBK_3net3tcp6stream9TcpStreamEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB60_4SyncEL_EEEEEECsl8OoimOLbh_6qdrant.exit16, label %bb.l, !prof !8

bb.l:                                             ; preds = %.noexc
  invoke void @_RNvMs1_NtCs27TyLBeV75a_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBK_4util17idle_notified_set10ListsInnerINtNtNtNtBK_7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtBK_3net3tcp6stream9TcpStreamEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB60_4SyncEL_EEEEEECsl8OoimOLbh_6qdrant.exit16 unwind label %bb.m

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBK_4util17idle_notified_set10ListsInnerINtNtNtNtBK_7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtBK_3net3tcp6stream9TcpStreamEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB60_4SyncEL_EEEEEECsl8OoimOLbh_6qdrant.exit16: ; preds = %.noexc, %bb.l
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !7, !noundef !7
  tail call void %i.v(ptr noundef %i.r)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBK_4util17idle_notified_set10ListsInnerINtNtNtNtBK_7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtBK_3net3tcp6stream9TcpStreamEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB60_4SyncEL_EEEEEECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBK_4util17idle_notified_set10ListsInnerINtNtNtNtBK_7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtBK_3net3tcp6stream9TcpStreamEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB60_4SyncEL_EEEEEECsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBK_4util17idle_notified_set10ListsInnerINtNtNtNtBK_7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtBK_3net3tcp6stream9TcpStreamEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB60_4SyncEL_EEEEEECsl8OoimOLbh_6qdrant.exit16, %bb.e, %bb.d
  ret void

bb.m:                                             ; preds = %bb.l, %bb.k
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !7, !noundef !7
  invoke void %i.x(ptr noundef %i.r)
          to label %.thread unwind label %bb.n, !inline_history !1

bb.n:                                             ; preds = %bb.m, %bb.o
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

.thread:                                          ; preds = %bb.m, %bb.o
  %.pn8 = phi { ptr, i32 } [ %i.z, %bb.o ], [ %lpad.thr_comm, %bb.m ]
  resume { ptr, i32 } %.pn8

bb.o:                                             ; preds = %bb.h, %bb.g, %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBK_4util17idle_notified_set10ListsInnerINtNtNtNtBK_7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtBK_3net3tcp6stream9TcpStreamEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB60_4SyncEL_EEEEEECsl8OoimOLbh_6qdrant(ptr nonnull %i.c) #19
          to label %.thread unwind label %bb.n
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs5_NtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEENtNtB7_4wake4Wake11wake_by_refCsl8OoimOLbh_6qdrant(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 8 uses
  %i.d = cmpxchg weak ptr %i.c, i8 0, i8 1 acquire monotonic, align 1
  %i.e = extractvalue { i8, i1 } %i.d, 1
  br i1 %i.e, label %_RNvXNtCs27TyLBeV75a_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCsbO4BqjCww8C_8lock_api5mutex8RawMutex4lock.exit, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMs1_NtCs27TyLBeV75a_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.c, i64 undef, i32 noundef -1) ; 0 uses
  br label %_RNvXNtCs27TyLBeV75a_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCsbO4BqjCww8C_8lock_api5mutex8RawMutex4lock.exit

_RNvXNtCs27TyLBeV75a_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCsbO4BqjCww8C_8lock_api5mutex8RawMutex4lock.exit: ; preds = %bb.a, %bb.b
  %i.g = ptrtoint ptr %i.c to i64                 ; 3 uses
  tail call void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16acquire_resource(i64 noundef %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 48 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !range !13, !noundef !7
  %cond = icmp eq i8 %i.i, 1
  br i1 %cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvXNtCs27TyLBeV75a_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCsbO4BqjCww8C_8lock_api5mutex8RawMutex4lock.exit
  store i8 0, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.k = invoke noundef ptr @_RNvMs2_NtNtCsjZG7hsAZr3B_5tokio4util11linked_listINtB5_10LinkedListINtNtB7_17idle_notified_set9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEEE6removeCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull %i.a)
          to label %bb.f unwind label %bb.o       ; 2 uses

bb.d:                                             ; preds = %bb.j, %_RNvXNtCs27TyLBeV75a_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCsbO4BqjCww8C_8lock_api5mutex8RawMutex4lock.exit
  tail call void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.g)
  %i.l = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.m = extractvalue { i8, i1 } %i.l, 1
  br i1 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBK_4util17idle_notified_set10ListsInnerINtNtNtNtBK_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEEEECsl8OoimOLbh_6qdrant.exit, label %bb.e, !prof !8

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvMs1_NtCs27TyLBeV75a_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBK_4util17idle_notified_set10ListsInnerINtNtNtNtBK_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEEEECsl8OoimOLbh_6qdrant.exit

bb.f:                                             ; preds = %bb.c
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.h, label %bb.g, !prof !9

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  invoke void @_RNvMs2_NtNtCsjZG7hsAZr3B_5tokio4util11linked_listINtB5_10LinkedListINtNtB7_17idle_notified_set9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEEE10push_frontCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull %i.k)
          to label %bb.j unwind label %bb.o

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #20
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !align !12, !noundef !7 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  store ptr null, ptr %i.o, align 8
  %.not9 = icmp eq ptr %i.p, null
  br i1 %.not9, label %bb.d, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.g)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.k
  %i.s = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.t = extractvalue { i8, i1 } %i.s, 1
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBK_4util17idle_notified_set10ListsInnerINtNtNtNtBK_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEEEECsl8OoimOLbh_6qdrant.exit16, label %bb.l, !prof !8

bb.l:                                             ; preds = %.noexc
  invoke void @_RNvMs1_NtCs27TyLBeV75a_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBK_4util17idle_notified_set10ListsInnerINtNtNtNtBK_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEEEECsl8OoimOLbh_6qdrant.exit16 unwind label %bb.m

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBK_4util17idle_notified_set10ListsInnerINtNtNtNtBK_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEEEECsl8OoimOLbh_6qdrant.exit16: ; preds = %.noexc, %bb.l
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !7, !noundef !7
  tail call void %i.v(ptr noundef %i.r)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBK_4util17idle_notified_set10ListsInnerINtNtNtNtBK_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEEEECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBK_4util17idle_notified_set10ListsInnerINtNtNtNtBK_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEEEECsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBK_4util17idle_notified_set10ListsInnerINtNtNtNtBK_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEEEECsl8OoimOLbh_6qdrant.exit16, %bb.e, %bb.d
  ret void

bb.m:                                             ; preds = %bb.l, %bb.k
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !7, !noundef !7
  invoke void %i.x(ptr noundef %i.r)
          to label %.thread unwind label %bb.n, !inline_history !1

bb.n:                                             ; preds = %bb.m, %bb.o
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

.thread:                                          ; preds = %bb.m, %bb.o
  %.pn8 = phi { ptr, i32 } [ %i.z, %bb.o ], [ %lpad.thr_comm, %bb.m ]
  resume { ptr, i32 } %.pn8

bb.o:                                             ; preds = %bb.h, %bb.g, %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4loom3std11parking_lot10MutexGuardINtNtNtBK_4util17idle_notified_set10ListsInnerINtNtNtNtBK_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEEEECsl8OoimOLbh_6qdrant(ptr nonnull %i.c) #19
          to label %.thread unwind label %bb.n
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvXs6_NtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtB9_3net3tcp6stream9TcpStreamEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB1S_5error5ErrorNtNtB1S_6marker4SendNtB52_4SyncEL_EEEENtNtB7_11linked_list4Link8from_rawCsl8OoimOLbh_6qdrant(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef i64 @_RINvNtCsexYYUdYSQU6_5alloc4sync11data_offsetINtNtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtBN_3net3tcp6stream9TcpStreamEINtNtB4_5boxed3BoxDNtNtB2q_5error5ErrorNtNtB2q_6marker4SendNtB5j_4SyncEL_EEEEECsl8OoimOLbh_6qdrant(ptr noundef nonnull %0)
  %i.b = sub nsw i64 0, %i.a
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b
  ret ptr %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvXs6_NtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEENtNtB7_11linked_list4Link8from_rawCsl8OoimOLbh_6qdrant(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef i64 @_RINvNtCsexYYUdYSQU6_5alloc4sync11data_offsetINtNtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtCs20yfr1g8LCf_12object_store5ErrorEEEECsl8OoimOLbh_6qdrant(ptr noundef nonnull %0)
  %i.b = sub nsw i64 0, %i.a
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b
  ret ptr %i.c
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXs_NtCs1XrQGnCAlpr_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCs8EjlWUFl8r5_9rand_core5block9Generator8generateCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 4 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef writeonly align 4 captures(none) dereferenceable(256) %1) unnamed_addr #3 {
bb.a:
  %i.a = load atomic i8, ptr @_RNvNtCs1XrQGnCAlpr_8chacha2010avx2_cpuid7STORAGE monotonic, align 1
  %i.b = icmp eq i8 %i.a, 1
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %.sroa.012.0.copyload24.i = load <4 x i32>, ptr %0, align 4, !alias.scope !257 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.013.0.copyload25.i = load <4 x i32>, ptr %i.c, align 4, !alias.scope !257 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.014.0.copyload26.i = load <4 x i32>, ptr %i.d, align 4, !alias.scope !257 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.015.0.copyload.i = load <2 x i64>, ptr %i.e, align 4, !alias.scope !257 ; 6 uses
  %i.f = add <2 x i64> %.sroa.015.0.copyload.i, <i64 1, i64 0> ; 2 uses
  %i.g = add <2 x i64> %.sroa.015.0.copyload.i, <i64 2, i64 0> ; 2 uses
  %i.h = add <2 x i64> %.sroa.015.0.copyload.i, <i64 3, i64 0> ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.89.0.i.i = phi <2 x i64> [ %i.h, %bb.b ], [ %19, %bb.c ]
  %.sroa.64.0.i.i = phi <2 x i64> [ %i.g, %bb.b ], [ %18, %bb.c ]
  %.sroa.39.0.i.i = phi <2 x i64> [ %i.f, %bb.b ], [ %17, %bb.c ]
  %.sroa.16.0.i.i = phi <2 x i64> [ %.sroa.015.0.copyload.i, %bb.b ], [ %16, %bb.c ]
  %.sroa.042.0102.i.i = phi i64 [ 0, %bb.b ], [ %i.u, %bb.c ]
  %i.i = phi <4 x i32> [ %.sroa.012.0.copyload24.i, %bb.b ], [ %i.du, %bb.c ]
  %i.j = phi <4 x i32> [ %.sroa.013.0.copyload25.i, %bb.b ], [ %i.ci, %bb.c ] ; 2 uses
  %i.k = phi <4 x i32> [ %.sroa.014.0.copyload26.i, %bb.b ], [ %i.dt, %bb.c ]
  %i.l = phi <4 x i32> [ %.sroa.012.0.copyload24.i, %bb.b ], [ %i.dw, %bb.c ]
  %i.m = phi <4 x i32> [ %.sroa.013.0.copyload25.i, %bb.b ], [ %i.cu, %bb.c ] ; 2 uses
  %i.n = phi <4 x i32> [ %.sroa.014.0.copyload26.i, %bb.b ], [ %i.dv, %bb.c ]
  %i.o = phi <4 x i32> [ %.sroa.012.0.copyload24.i, %bb.b ], [ %i.dy, %bb.c ]
  %i.p = phi <4 x i32> [ %.sroa.013.0.copyload25.i, %bb.b ], [ %i.dg, %bb.c ] ; 2 uses
  %i.q = phi <4 x i32> [ %.sroa.014.0.copyload26.i, %bb.b ], [ %i.dx, %bb.c ]
  %i.r = phi <4 x i32> [ %.sroa.012.0.copyload24.i, %bb.b ], [ %i.ea, %bb.c ]
  %i.s = phi <4 x i32> [ %.sroa.013.0.copyload25.i, %bb.b ], [ %i.ds, %bb.c ] ; 2 uses
  %i.t = phi <4 x i32> [ %.sroa.014.0.copyload26.i, %bb.b ], [ %i.dz, %bb.c ]
  %i.u = add nuw nsw i64 %.sroa.042.0102.i.i, 1   ; 2 uses
  %i.v = add <4 x i32> %i.j, %i.i                 ; 2 uses
  %2 = bitcast <2 x i64> %.sroa.16.0.i.i to <4 x i32>
  %i.w = xor <4 x i32> %i.v, %2                   ; 2 uses
  %i.x = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.w, <4 x i32> %i.w, <4 x i32> splat (i32 16)) ; 2 uses
  %i.y = add <4 x i32> %i.x, %i.k                 ; 2 uses
  %i.z = xor <4 x i32> %i.y, %i.j                 ; 2 uses
  %i.aa = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.z, <4 x i32> %i.z, <4 x i32> splat (i32 12)) ; 2 uses
  %i.ab = add <4 x i32> %i.aa, %i.v               ; 2 uses
  %i.ac = xor <4 x i32> %i.ab, %i.x               ; 2 uses
  %i.ad = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ac, <4 x i32> %i.ac, <4 x i32> splat (i32 8)) ; 2 uses
  %i.ae = add <4 x i32> %i.ad, %i.y               ; 2 uses
  %i.af = xor <4 x i32> %i.ae, %i.aa              ; 2 uses
  %i.ag = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.af, <4 x i32> %i.af, <4 x i32> splat (i32 7)) ; 2 uses
  %i.ah = add <4 x i32> %i.m, %i.l                ; 2 uses
  %3 = bitcast <2 x i64> %.sroa.39.0.i.i to <4 x i32>
  %i.ai = xor <4 x i32> %i.ah, %3                 ; 2 uses
  %i.aj = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ai, <4 x i32> %i.ai, <4 x i32> splat (i32 16)) ; 2 uses
  %i.ak = add <4 x i32> %i.aj, %i.n               ; 2 uses
  %i.al = xor <4 x i32> %i.ak, %i.m               ; 2 uses
  %i.am = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.al, <4 x i32> %i.al, <4 x i32> splat (i32 12)) ; 2 uses
  %i.an = add <4 x i32> %i.am, %i.ah              ; 2 uses
  %i.ao = xor <4 x i32> %i.an, %i.aj              ; 2 uses
  %i.ap = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ao, <4 x i32> %i.ao, <4 x i32> splat (i32 8)) ; 2 uses
  %i.aq = add <4 x i32> %i.ap, %i.ak              ; 2 uses
  %i.ar = xor <4 x i32> %i.aq, %i.am              ; 2 uses
  %i.as = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ar, <4 x i32> %i.ar, <4 x i32> splat (i32 7)) ; 2 uses
  %i.at = add <4 x i32> %i.p, %i.o                ; 2 uses
  %4 = bitcast <2 x i64> %.sroa.64.0.i.i to <4 x i32>
  %i.au = xor <4 x i32> %i.at, %4                 ; 2 uses
  %i.av = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.au, <4 x i32> %i.au, <4 x i32> splat (i32 16)) ; 2 uses
  %i.aw = add <4 x i32> %i.av, %i.q               ; 2 uses
  %i.ax = xor <4 x i32> %i.aw, %i.p               ; 2 uses
  %i.ay = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ax, <4 x i32> %i.ax, <4 x i32> splat (i32 12)) ; 2 uses
  %i.az = add <4 x i32> %i.ay, %i.at              ; 2 uses
  %i.ba = xor <4 x i32> %i.az, %i.av              ; 2 uses
  %i.bb = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ba, <4 x i32> %i.ba, <4 x i32> splat (i32 8)) ; 2 uses
  %i.bc = add <4 x i32> %i.bb, %i.aw              ; 2 uses
  %i.bd = xor <4 x i32> %i.bc, %i.ay              ; 2 uses
  %i.be = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bd, <4 x i32> %i.bd, <4 x i32> splat (i32 7)) ; 2 uses
  %i.bf = add <4 x i32> %i.s, %i.r                ; 2 uses
  %5 = bitcast <2 x i64> %.sroa.89.0.i.i to <4 x i32>
  %i.bg = xor <4 x i32> %i.bf, %5                 ; 2 uses
  %i.bh = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bg, <4 x i32> %i.bg, <4 x i32> splat (i32 16)) ; 2 uses
  %i.bi = add <4 x i32> %i.bh, %i.t               ; 2 uses
  %i.bj = xor <4 x i32> %i.bi, %i.s               ; 2 uses
  %i.bk = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bj, <4 x i32> %i.bj, <4 x i32> splat (i32 12)) ; 2 uses
  %i.bl = add <4 x i32> %i.bk, %i.bf              ; 2 uses
  %i.bm = xor <4 x i32> %i.bl, %i.bh              ; 2 uses
  %i.bn = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bm, <4 x i32> %i.bm, <4 x i32> splat (i32 8)) ; 2 uses
  %i.bo = add <4 x i32> %i.bn, %i.bi              ; 2 uses
  %i.bp = xor <4 x i32> %i.bo, %i.bk              ; 2 uses
  %i.bq = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bp, <4 x i32> %i.bp, <4 x i32> splat (i32 7)) ; 2 uses
  %i.br = shufflevector <4 x i32> %i.ae, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.bs = shufflevector <4 x i32> %i.ab, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.bt = shufflevector <4 x i32> %i.aq, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.bu = shufflevector <4 x i32> %i.an, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.bv = shufflevector <4 x i32> %i.bc, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.bw = shufflevector <4 x i32> %i.az, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.bx = shufflevector <4 x i32> %i.bo, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %6 = shufflevector <4 x i32> %i.bl, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %7 = add <4 x i32> %i.ag, %i.bs                 ; 2 uses
  %8 = shufflevector <4 x i32> %i.ad, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.by = xor <4 x i32> %7, %8                    ; 2 uses
  %i.bz = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.by, <4 x i32> %i.by, <4 x i32> splat (i32 16)) ; 2 uses
  %i.ca = add <4 x i32> %i.bz, %i.br              ; 2 uses
  %i.cb = xor <4 x i32> %i.ca, %i.ag              ; 2 uses
  %i.cc = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cb, <4 x i32> %i.cb, <4 x i32> splat (i32 12)) ; 2 uses
  %i.cd = add <4 x i32> %i.cc, %7                 ; 2 uses
  %i.ce = xor <4 x i32> %i.cd, %i.bz              ; 2 uses
  %i.cf = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ce, <4 x i32> %i.ce, <4 x i32> splat (i32 8)) ; 2 uses
  %9 = bitcast <4 x i32> %i.cf to <2 x i64>
  %i.cg = add <4 x i32> %i.cf, %i.ca              ; 2 uses
  %i.ch = xor <4 x i32> %i.cg, %i.cc              ; 2 uses
  %i.ci = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ch, <4 x i32> %i.ch, <4 x i32> splat (i32 7)) ; 2 uses
  %i.cj = add <4 x i32> %i.as, %i.bu              ; 2 uses
  %10 = shufflevector <4 x i32> %i.ap, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.ck = xor <4 x i32> %i.cj, %10                ; 2 uses
  %i.cl = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ck, <4 x i32> %i.ck, <4 x i32> splat (i32 16)) ; 2 uses
  %i.cm = add <4 x i32> %i.cl, %i.bt              ; 2 uses
  %i.cn = xor <4 x i32> %i.cm, %i.as              ; 2 uses
  %i.co = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cn, <4 x i32> %i.cn, <4 x i32> splat (i32 12)) ; 2 uses
  %i.cp = add <4 x i32> %i.co, %i.cj              ; 2 uses
  %i.cq = xor <4 x i32> %i.cp, %i.cl              ; 2 uses
  %i.cr = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cq, <4 x i32> %i.cq, <4 x i32> splat (i32 8)) ; 2 uses
  %11 = bitcast <4 x i32> %i.cr to <2 x i64>
  %i.cs = add <4 x i32> %i.cr, %i.cm              ; 2 uses
  %i.ct = xor <4 x i32> %i.cs, %i.co              ; 2 uses
  %i.cu = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ct, <4 x i32> %i.ct, <4 x i32> splat (i32 7)) ; 2 uses
  %i.cv = add <4 x i32> %i.be, %i.bw              ; 2 uses
  %12 = shufflevector <4 x i32> %i.bb, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.cw = xor <4 x i32> %i.cv, %12                ; 2 uses
  %i.cx = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cw, <4 x i32> %i.cw, <4 x i32> splat (i32 16)) ; 2 uses
  %i.cy = add <4 x i32> %i.cx, %i.bv              ; 2 uses
  %i.cz = xor <4 x i32> %i.cy, %i.be              ; 2 uses
  %i.da = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cz, <4 x i32> %i.cz, <4 x i32> splat (i32 12)) ; 2 uses
  %i.db = add <4 x i32> %i.da, %i.cv              ; 2 uses
  %i.dc = xor <4 x i32> %i.db, %i.cx              ; 2 uses
  %i.dd = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dc, <4 x i32> %i.dc, <4 x i32> splat (i32 8)) ; 2 uses
  %13 = bitcast <4 x i32> %i.dd to <2 x i64>
  %i.de = add <4 x i32> %i.dd, %i.cy              ; 2 uses
  %i.df = xor <4 x i32> %i.de, %i.da              ; 2 uses
  %i.dg = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.df, <4 x i32> %i.df, <4 x i32> splat (i32 7)) ; 2 uses
  %i.dh = add <4 x i32> %i.bq, %6                 ; 2 uses
  %14 = shufflevector <4 x i32> %i.bn, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.di = xor <4 x i32> %i.dh, %14                ; 2 uses
  %i.dj = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.di, <4 x i32> %i.di, <4 x i32> splat (i32 16)) ; 2 uses
  %i.dk = add <4 x i32> %i.dj, %i.bx              ; 2 uses
  %i.dl = xor <4 x i32> %i.dk, %i.bq              ; 2 uses
  %i.dm = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dl, <4 x i32> %i.dl, <4 x i32> splat (i32 12)) ; 2 uses
  %i.dn = add <4 x i32> %i.dm, %i.dh              ; 2 uses
  %i.do = xor <4 x i32> %i.dn, %i.dj              ; 2 uses
  %i.dp = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.do, <4 x i32> %i.do, <4 x i32> splat (i32 8)) ; 2 uses
  %15 = bitcast <4 x i32> %i.dp to <2 x i64>
  %i.dq = add <4 x i32> %i.dp, %i.dk              ; 2 uses
  %i.dr = xor <4 x i32> %i.dq, %i.dm              ; 2 uses
  %i.ds = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dr, <4 x i32> %i.dr, <4 x i32> splat (i32 7)) ; 2 uses
  %i.dt = shufflevector <4 x i32> %i.cg, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %16 = shufflevector <2 x i64> %9, <2 x i64> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.du = shufflevector <4 x i32> %i.cd, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.dv = shufflevector <4 x i32> %i.cs, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %17 = shufflevector <2 x i64> %11, <2 x i64> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dw = shufflevector <4 x i32> %i.cp, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.dx = shufflevector <4 x i32> %i.de, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %18 = shufflevector <2 x i64> %13, <2 x i64> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dy = shufflevector <4 x i32> %i.db, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.dz = shufflevector <4 x i32> %i.dq, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %19 = shufflevector <2 x i64> %15, <2 x i64> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ea = shufflevector <4 x i32> %i.dn, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.u, 6
  br i1 %exitcond.not.i.i, label %_RINvNtNtCs1XrQGnCAlpr_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECsl8OoimOLbh_6qdrant.exit, label %bb.c

_RINvNtNtCs1XrQGnCAlpr_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.c
  %i.eb = add <4 x i32> %i.du, %.sroa.012.0.copyload24.i
  %i.ec = add <4 x i32> %i.ci, %.sroa.013.0.copyload25.i
  %i.ed = add <4 x i32> %i.dt, %.sroa.014.0.copyload26.i
  %20 = bitcast <2 x i64> %16 to <4 x i32>
  %21 = bitcast <2 x i64> %.sroa.015.0.copyload.i to <4 x i32>
  %i.ee = add <4 x i32> %20, %21
  %i.ef = add <4 x i32> %i.dw, %.sroa.012.0.copyload24.i
  %i.eg = add <4 x i32> %i.cu, %.sroa.013.0.copyload25.i
  %i.eh = add <4 x i32> %i.dv, %.sroa.014.0.copyload26.i
  %22 = bitcast <2 x i64> %17 to <4 x i32>
  %23 = bitcast <2 x i64> %i.f to <4 x i32>
  %i.ei = add <4 x i32> %22, %23
  %i.ej = add <4 x i32> %i.dy, %.sroa.012.0.copyload24.i
  %i.ek = add <4 x i32> %i.dg, %.sroa.013.0.copyload25.i
  %i.el = add <4 x i32> %i.dx, %.sroa.014.0.copyload26.i
  %24 = bitcast <2 x i64> %18 to <4 x i32>
  %25 = bitcast <2 x i64> %i.g to <4 x i32>
  %i.em = add <4 x i32> %24, %25
  %i.en = add <4 x i32> %i.ea, %.sroa.012.0.copyload24.i
  %i.eo = add <4 x i32> %i.ds, %.sroa.013.0.copyload25.i
  %i.ep = add <4 x i32> %i.dz, %.sroa.014.0.copyload26.i
  %26 = bitcast <2 x i64> %19 to <4 x i32>
  %27 = bitcast <2 x i64> %i.h to <4 x i32>
  %i.eq = add <4 x i32> %26, %27
  store <4 x i32> %i.eb, ptr %1, align 4, !alias.scope !258, !noalias !7
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <4 x i32> %i.ec, ptr %.sroa.4.0..sroa_idx.i, align 4, !alias.scope !258, !noalias !7
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  store <4 x i32> %i.ed, ptr %.sroa.5.0..sroa_idx.i, align 4, !alias.scope !258, !noalias !7
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <4 x i32> %i.ee, ptr %.sroa.6.0..sroa_idx.i, align 4, !alias.scope !258, !noalias !7
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  store <4 x i32> %i.ef, ptr %.sroa.7.0..sroa_idx.i, align 4, !alias.scope !258, !noalias !7
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  store <4 x i32> %i.eg, ptr %.sroa.8.0..sroa_idx.i, align 4, !alias.scope !258, !noalias !7
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  store <4 x i32> %i.eh, ptr %.sroa.9.0..sroa_idx.i, align 4, !alias.scope !258, !noalias !7
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  store <4 x i32> %i.ei, ptr %.sroa.10.0..sroa_idx.i, align 4, !alias.scope !258, !noalias !7
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  store <4 x i32> %i.ej, ptr %.sroa.11.0..sroa_idx.i, align 4, !alias.scope !258, !noalias !7
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 144
  store <4 x i32> %i.ek, ptr %.sroa.12.0..sroa_idx.i, align 4, !alias.scope !258, !noalias !7
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 160
  store <4 x i32> %i.el, ptr %.sroa.13.0..sroa_idx.i, align 4, !alias.scope !258, !noalias !7
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 176
  store <4 x i32> %i.em, ptr %.sroa.14.0..sroa_idx.i, align 4, !alias.scope !258, !noalias !7
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 192
  store <4 x i32> %i.en, ptr %.sroa.15.0..sroa_idx.i, align 4, !alias.scope !258, !noalias !7
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 208
  store <4 x i32> %i.eo, ptr %.sroa.16.0..sroa_idx.i, align 4, !alias.scope !258, !noalias !7
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 224
  store <4 x i32> %i.ep, ptr %.sroa.17.0..sroa_idx.i, align 4, !alias.scope !258, !noalias !7
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 240
  store <4 x i32> %i.eq, ptr %.sroa.18.0..sroa_idx.i, align 4, !alias.scope !258, !noalias !7
  %i.er = add <2 x i64> %.sroa.015.0.copyload.i, <i64 4, i64 0> ; 2 uses
  %i.es = bitcast <2 x i64> %i.er to <4 x i32>
  %i.et = extractelement <4 x i32> %i.es, i64 0
  store i32 %i.et, ptr %i.e, align 4, !alias.scope !257
  %i.eu = tail call fastcc noundef i32 @_RINvNtNtNtCskKLDkoKarTP_4core9core_arch3x865sse4117__mm_extract_epi32Kl1_ECsl8OoimOLbh_6qdrant(<2 x i64> %i.er) #23
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.eu, ptr %i.ev, align 4, !alias.scope !257
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtNtCs1XrQGnCAlpr_8chacha208backends4avx29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 4 dereferenceable(64) %0, ptr noalias nofree noundef align 4 dereferenceable(256) %1) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RINvNtNtCs1XrQGnCAlpr_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECsl8OoimOLbh_6qdrant.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsl_NtCskKLDkoKarTP_4core3fmtPINtNtNtCsjZG7hsAZr3B_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBC_7runtime4task4join10JoinHandleINtNtB7_6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtBC_3net3tcp6stream9TcpStreamEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB58_4SyncEL_EEEENtB5_7Pointer3fmtCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !7
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = tail call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt17pointer_fmt_inner(i64 noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvXs_NtCsces4Lhf2vbX_12actix_server7serviceINtB1Y_13StreamServiceINtNtCs519D4kX01I1_13actix_service8and_then14AndThenServiceIB2X_INtNtB31_7map_err6MapErrNtNtNtCsb7qiAEi3wj_9actix_tls6accept11rustls_0_2315AcceptorServiceNtNtNtNtB6_3net3tcp6stream9TcpStreamINvMB4q_INtB4q_8TlsErrorNtNtNtBR_2io5error5ErrorzE18into_service_errorNtNtCs6EFb6a2W5dE_10actix_http5error13DispatchErrorEIB69_B6o_B78_EEINtNtB31_10fn_service9FnServiceNCNvMNtNtB7c_7service11rustls_0_23INtB8P_11HttpServiceINtB4o_9TlsStreamB5q_EINtNtB31_10map_config9MapConfigINtB41_20MapErrServiceFactoryINtNtCsgoPClq0H8JF_9actix_web11app_service7AppInitINtNtB31_9transform14ApplyTransformNtNtNtBaZ_10middleware8compress8CompressNtBaX_8AppEntryNtNtBaZ_7service14ServiceRequestEINtNtNtB7c_4body6either10EitherBodyINtNtNtB7c_8encoding7encoder7EncoderNtNtBdM_5boxed7BoxBodyEEEINtNtNtB7c_8requests7request7RequestIBN_IB1j_DNtNtCs3aP4uAeNgCL_12futures_core6stream6Streamp4ItemINtNtBR_6result6ResultNtNtCs14kzo5Se9zC_5bytes5bytes5BytesNtB7a_12PayloadErrorEEL_EEENCNCNvMNtBaZ_6serverINtBij_10HttpServerNCNCNvNtNtCsl8OoimOLbh_6qdrant5actix15metrics_service12init_metrics00INtNtBaZ_3app3AppBbI_EBaU_BdH_E24listen_rustls_0_23_inner0s0_0NtNtNtBaZ_8response8response12HttpResponseEBff_NCBie_s1_0uEBdH_E23rustls_0_23_with_configs_0NCNCB8K_s_00B9A_TB9A_NtB7c_8ProtocolINtNtBR_6option6OptionNtNtNtBR_3net11socket_addr10SocketAddrEEB7Y_EB5q_EIB3Z_INtB8P_18HttpServiceHandlerB9A_IB3Z_INtBaX_14AppInitServiceINtBcj_18CompressMiddlewareNtBaX_10AppRoutingEBdH_EBff_Bic_BkW_EBdH_NtNtNtB7c_2h16expect13ExpectHandlerNtNtBqm_7upgrade14UpgradeHandlerEBmG_NcNtB7Y_7Service0B7Y_EB5q_EB5q_EINtB31_7ServiceTNtNtB20_6worker18WorkerCounterGuardNtNtB20_6socket9MioStreamEE4call0EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEBiZ_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvXs_NtCsces4Lhf2vbX_12actix_server7serviceINtB1Y_13StreamServiceINtNtCs519D4kX01I1_13actix_service8and_then14AndThenServiceIB2X_INtNtB31_7map_err6MapErrNtNtNtCsb7qiAEi3wj_9actix_tls6accept11rustls_0_2315AcceptorServiceNtNtNtNtB6_3net3tcp6stream9TcpStreamINvMB4q_INtB4q_8TlsErrorNtNtNtBR_2io5error5ErrorzE18into_service_errorNtNtCs6EFb6a2W5dE_10actix_http5error13DispatchErrorEIB69_B6o_B78_EEINtNtB31_10fn_service9FnServiceNCNvMNtNtB7c_7service11rustls_0_23INtB8P_11HttpServiceINtB4o_9TlsStreamB5q_EINtNtB31_10map_config9MapConfigINtB41_20MapErrServiceFactoryINtNtCsgoPClq0H8JF_9actix_web11app_service7AppInitINtNtB31_9transform14ApplyTransformNtNtNtCsl8OoimOLbh_6qdrant5actix15actix_telemetry23ActixTelemetryTransformIBbJ_NtNtNtBaZ_10middleware6logger6LoggerIBbJ_INtNtBdC_9condition9ConditionNtNtCsbEyXj2whuwq_10actix_cors7builder4CorsEIBbJ_NtNtBdC_9normalize13NormalizePathIBbJ_INtNtNtCs9kmuiX5O2xo_16actix_web_extras10middleware9condition9ConditionNtNtBcl_4auth13AuthTransformEIBbJ_NtNtBdC_8compress8CompressNtBaX_8AppEntryNtNtBaZ_7service14ServiceRequestEBir_EBir_EBir_EBir_EBir_EINtBdA_9StreamLogINtNtNtB7c_4body6either10EitherBodyIBjF_IBjF_IBjF_INtNtNtB7c_8encoding7encoder7EncoderNtNtBjJ_5boxed7BoxBodyEEBkn_EEBki_EEEINtNtNtB7c_8requests7request7RequestIBN_IB1j_DNtNtCs3aP4uAeNgCL_12futures_core6stream6Streamp4ItemINtNtBR_6result6ResultNtNtCs14kzo5Se9zC_5bytes5bytes5BytesNtB7a_12PayloadErrorEEL_EEENCNCNvMNtBaZ_6serverINtBoH_10HttpServerNCNCNvBcl_4init00INtNtBaZ_3app3AppBbI_EBaU_Bjn_E24listen_rustls_0_23_inner0s0_0NtNtNtBaZ_8response8response12HttpResponseEBlD_NCBoC_s1_0uEBjn_E23rustls_0_23_with_configs_0NCNCB8K_s_00B9A_TB9A_NtB7c_8ProtocolINtNtBR_6option6OptionNtNtNtBR_3net11socket_addr10SocketAddrEEB7Y_EB5q_EIB3Z_INtB8P_18HttpServiceHandlerB9A_IB3Z_INtBaX_14AppInitServiceINtBcj_21ActixTelemetryServiceINtBdA_16LoggerMiddlewareINtBeg_19ConditionMiddlewareINtNtBeK_10middleware14CorsMiddlewareINtBfv_26NormalizePathNormalizationINtBg8_19ConditionMiddlewareINtBhg_14AuthMiddlewareINtBhO_18CompressMiddlewareNtBaX_10AppRoutingEEBy4_EEEBwG_EEEBjn_EBlD_BoA_Bqu_EBjn_NtNtNtB7c_2h16expect13ExpectHandlerNtNtBzt_7upgrade14UpgradeHandlerEBse_NcNtB7Y_7Service0B7Y_EB5q_EB5q_EINtB31_7ServiceTNtNtB20_6worker18WorkerCounterGuardNtNtB20_6socket9MioStreamEE4call0EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEBcn_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvXs_NtCsces4Lhf2vbX_12actix_server7serviceINtB1Y_13StreamServiceINtNtCs519D4kX01I1_13actix_service8and_then14AndThenServiceINtNtB31_10fn_service9FnServiceNCNvMs1_NtCs6EFb6a2W5dE_10actix_http7serviceINtB4w_11HttpServiceNtNtNtNtB6_3net3tcp6stream9TcpStreamINtNtB31_10map_config9MapConfigINtNtB31_7map_err20MapErrServiceFactoryINtNtCsgoPClq0H8JF_9actix_web11app_service7AppInitINtNtB31_9transform14ApplyTransformNtNtNtB7d_10middleware8compress8CompressNtB7b_8AppEntryNtNtB7d_7service14ServiceRequestEINtNtNtB4y_4body6either10EitherBodyINtNtNtB4y_8encoding7encoder7EncoderNtNtBa0_5boxed7BoxBodyEEEINtNtNtB4y_8requests7request7RequestIBN_IB1j_DNtNtCs3aP4uAeNgCL_12futures_core6stream6Streamp4ItemINtNtBR_6result6ResultNtNtCs14kzo5Se9zC_5bytes5bytes5BytesNtNtB4y_5error12PayloadErrorEEL_EEENCNCNvMNtB7d_6serverINtBeF_10HttpServerNCNCNvNtNtCsl8OoimOLbh_6qdrant5actix15metrics_service12init_metrics00INtNtB7d_3app3AppB7W_EB78_B9V_E6listen0s0_0NtNtNtB7d_8response8response12HttpResponseEBbt_NCBeA_s1_0uEB9V_E3tcp0NCNCB4q_00B5q_TB5q_NtB4y_8ProtocolINtNtBR_6option6OptionNtNtNtBR_3net11socket_addr10SocketAddrEENtBe1_13DispatchErrorEINtB4w_18HttpServiceHandlerB5q_INtB6y_6MapErrINtB7b_14AppInitServiceINtB8x_18CompressMiddlewareNtB7b_10AppRoutingEB9V_EBbt_Bey_BgZ_EB9V_NtNtNtB4y_2h16expect13ExpectHandlerNtNtBmg_7upgrade14UpgradeHandlerEB5q_EB5q_EINtB31_7ServiceTNtNtB20_6worker18WorkerCounterGuardNtNtB20_6socket9MioStreamEE4call0EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEBfl_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvXs_NtCsces4Lhf2vbX_12actix_server7serviceINtB1Y_13StreamServiceINtNtCs519D4kX01I1_13actix_service8and_then14AndThenServiceINtNtB31_10fn_service9FnServiceNCNvMs1_NtCs6EFb6a2W5dE_10actix_http7serviceINtB4w_11HttpServiceNtNtNtNtB6_3net3tcp6stream9TcpStreamINtNtB31_10map_config9MapConfigINtNtB31_7map_err20MapErrServiceFactoryINtNtCsgoPClq0H8JF_9actix_web11app_service7AppInitINtNtB31_9transform14ApplyTransformNtNtNtCsl8OoimOLbh_6qdrant5actix15actix_telemetry23ActixTelemetryTransformIB7X_NtNtNtB7d_10middleware6logger6LoggerIB7X_INtNtB9Q_9condition9ConditionNtNtCsbEyXj2whuwq_10actix_cors7builder4CorsEIB7X_NtNtB9Q_9normalize13NormalizePathIB7X_INtNtNtCs9kmuiX5O2xo_16actix_web_extras10middleware9condition9ConditionNtNtB8z_4auth13AuthTransformEIB7X_NtNtB9Q_8compress8CompressNtB7b_8AppEntryNtNtB7d_7service14ServiceRequestEBeF_EBeF_EBeF_EBeF_EBeF_EINtB9O_9StreamLogINtNtNtB4y_4body6either10EitherBodyIBfT_IBfT_IBfT_INtNtNtB4y_8encoding7encoder7EncoderNtNtBfX_5boxed7BoxBodyEEBgB_EEBgw_EEEINtNtNtB4y_8requests7request7RequestIBN_IB1j_DNtNtCs3aP4uAeNgCL_12futures_core6stream6Streamp4ItemINtNtBR_6result6ResultNtNtCs14kzo5Se9zC_5bytes5bytes5BytesNtNtB4y_5error12PayloadErrorEEL_EEENCNCNvMNtB7d_6serverINtBl3_10HttpServerNCNCNvB8z_4init00INtNtB7d_3app3AppB7W_EB78_BfB_E6listen0s0_0NtNtNtB7d_8response8response12HttpResponseEBhR_NCBkY_s1_0uEBfB_E3tcp0NCNCB4q_00B5q_TB5q_NtB4y_8ProtocolINtNtBR_6option6OptionNtNtNtBR_3net11socket_addr10SocketAddrEENtBkp_13DispatchErrorEINtB4w_18HttpServiceHandlerB5q_INtB6y_6MapErrINtB7b_14AppInitServiceINtB8x_21ActixTelemetryServiceINtB9O_16LoggerMiddlewareINtBau_19ConditionMiddlewareINtNtBaY_10middleware14CorsMiddlewareINtBbJ_26NormalizePathNormalizationINtBcm_19ConditionMiddlewareINtBdu_14AuthMiddlewareINtBe2_18CompressMiddlewareNtB7b_10AppRoutingEEBtY_EEEBsA_EEEBfB_EBhR_BkW_Bmx_EBfB_NtNtNtB4y_2h16expect13ExpectHandlerNtNtBvn_7upgrade14UpgradeHandlerEB5q_EB5q_EINtB31_7ServiceTNtNtB20_6worker18WorkerCounterGuardNtNtB20_6socket9MioStreamEE4call0EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB8B_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvXs_NtNtCs6EFb6a2W5dE_10actix_http2h210dispatcherINtB1Y_10DispatcherINtNtNtCsb7qiAEi3wj_9actix_tls6accept11rustls_0_239TlsStreamNtNtNtNtB6_3net3tcp6stream9TcpStreamEINtNtCs519D4kX01I1_13actix_service7map_err6MapErrINtNtCsgoPClq0H8JF_9actix_web11app_service14AppInitServiceINtNtNtB5r_10middleware8compress18CompressMiddlewareNtB5p_10AppRoutingEINtNtNtB22_4body6either10EitherBodyINtNtNtB22_8encoding7encoder7EncoderNtNtB7w_5boxed7BoxBodyEEEINtNtNtB22_8requests7request7RequestIBN_IB1j_DNtNtCs3aP4uAeNgCL_12futures_core6stream6Streamp4ItemINtNtBR_6result6ResultNtNtCs14kzo5Se9zC_5bytes5bytes5BytesNtNtB22_5error12PayloadErrorEEL_EEENCNCNvMNtB5r_6serverINtBcb_10HttpServerNCNCNvNtNtCsl8OoimOLbh_6qdrant5actix15metrics_service12init_metrics00INtNtB5r_3app3AppINtNtB4E_9transform14ApplyTransformNtB6l_8CompressNtB5p_8AppEntryNtNtB5r_7service14ServiceRequestEEINtB5p_7AppInitBe5_B7r_EB7r_E24listen_rustls_0_23_inner0s0_0NtNtNtB5r_8response8response12HttpResponseEB7r_NtNtNtB22_2h16expect13ExpectHandlerNtNtBht_7upgrade14UpgradeHandlerENtNtNtBR_6future6future6Future4poll0EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEBcR_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvXs_NtNtCs6EFb6a2W5dE_10actix_http2h210dispatcherINtB1Y_10DispatcherINtNtNtCsb7qiAEi3wj_9actix_tls6accept11rustls_0_239TlsStreamNtNtNtNtB6_3net3tcp6stream9TcpStreamEINtNtCs519D4kX01I1_13actix_service7map_err6MapErrINtNtCsgoPClq0H8JF_9actix_web11app_service14AppInitServiceINtNtNtCsl8OoimOLbh_6qdrant5actix15actix_telemetry21ActixTelemetryServiceINtNtNtB5r_10middleware6logger16LoggerMiddlewareINtNtB7y_9condition19ConditionMiddlewareINtNtCsbEyXj2whuwq_10actix_cors10middleware14CorsMiddlewareINtNtB7y_9normalize26NormalizePathNormalizationINtNtNtCs9kmuiX5O2xo_16actix_web_extras10middleware9condition19ConditionMiddlewareINtNtB6n_4auth14AuthMiddlewareINtNtB7y_8compress18CompressMiddlewareNtB5p_10AppRoutingEEBcp_EEEB9Q_EEEINtB7w_9StreamLogINtNtNtB22_4body6either10EitherBodyIBdR_IBdR_IBdR_INtNtNtB22_8encoding7encoder7EncoderNtNtBdV_5boxed7BoxBodyEEBez_EEBeu_EEEINtNtNtB22_8requests7request7RequestIBN_IB1j_DNtNtCs3aP4uAeNgCL_12futures_core6stream6Streamp4ItemINtNtBR_6result6ResultNtNtCs14kzo5Se9zC_5bytes5bytes5BytesNtNtB22_5error12PayloadErrorEEL_EEENCNCNvMNtB5r_6serverINtBj1_10HttpServerNCNCNvB6n_4init00INtNtB5r_3app3AppINtNtB4E_9transform14ApplyTransformNtB6l_23ActixTelemetryTransformIBk6_NtB7w_6LoggerIBk6_INtB8i_9ConditionNtNtB8Y_7builder4CorsEIBk6_NtB9T_13NormalizePathIBk6_INtBaE_9ConditionNtBbY_13AuthTransformEIBk6_NtBcs_8CompressNtB5p_8AppEntryNtNtB5r_7service14ServiceRequestEBnQ_EBnQ_EBnQ_EBnQ_EBnQ_EEINtB5p_7AppInitBk5_Bdz_EBdz_E24listen_rustls_0_23_inner0s0_0NtNtNtB5r_8response8response12HttpResponseEBdz_NtNtNtB22_2h16expect13ExpectHandlerNtNtBqA_7upgrade14UpgradeHandlerENtNtNtBR_6future6future6Future4poll0EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB6p_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvXs_NtNtCs6EFb6a2W5dE_10actix_http2h210dispatcherINtB1Y_10DispatcherNtNtNtNtB6_3net3tcp6stream9TcpStreamINtNtCs519D4kX01I1_13actix_service7map_err6MapErrINtNtCsgoPClq0H8JF_9actix_web11app_service14AppInitServiceINtNtNtB4s_10middleware8compress18CompressMiddlewareNtB4q_10AppRoutingEINtNtNtB22_4body6either10EitherBodyINtNtNtB22_8encoding7encoder7EncoderNtNtB6x_5boxed7BoxBodyEEEINtNtNtB22_8requests7request7RequestIBN_IB1j_DNtNtCs3aP4uAeNgCL_12futures_core6stream6Streamp4ItemINtNtBR_6result6ResultNtNtCs14kzo5Se9zC_5bytes5bytes5BytesNtNtB22_5error12PayloadErrorEEL_EEENCNCNvMNtB4s_6serverINtBbc_10HttpServerNCNCNvNtNtCsl8OoimOLbh_6qdrant5actix15metrics_service12init_metrics00INtNtB4s_3app3AppINtNtB3F_9transform14ApplyTransformNtB5m_8CompressNtB4q_8AppEntryNtNtB4s_7service14ServiceRequestEEINtB4q_7AppInitBd6_B6s_EB6s_E6listen0s0_0NtNtNtB4s_8response8response12HttpResponseEB6s_NtNtNtB22_2h16expect13ExpectHandlerNtNtBgb_7upgrade14UpgradeHandlerENtNtNtBR_6future6future6Future4poll0EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEBbS_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvXs_NtNtCs6EFb6a2W5dE_10actix_http2h210dispatcherINtB1Y_10DispatcherNtNtNtNtB6_3net3tcp6stream9TcpStreamINtNtCs519D4kX01I1_13actix_service7map_err6MapErrINtNtCsgoPClq0H8JF_9actix_web11app_service14AppInitServiceINtNtNtCsl8OoimOLbh_6qdrant5actix15actix_telemetry21ActixTelemetryServiceINtNtNtB4s_10middleware6logger16LoggerMiddlewareINtNtB6z_9condition19ConditionMiddlewareINtNtCsbEyXj2whuwq_10actix_cors10middleware14CorsMiddlewareINtNtB6z_9normalize26NormalizePathNormalizationINtNtNtCs9kmuiX5O2xo_16actix_web_extras10middleware9condition19ConditionMiddlewareINtNtB5o_4auth14AuthMiddlewareINtNtB6z_8compress18CompressMiddlewareNtB4q_10AppRoutingEEBbq_EEEB8R_EEEINtB6x_9StreamLogINtNtNtB22_4body6either10EitherBodyIBcS_IBcS_IBcS_INtNtNtB22_8encoding7encoder7EncoderNtNtBcW_5boxed7BoxBodyEEBdA_EEBdv_EEEINtNtNtB22_8requests7request7RequestIBN_IB1j_DNtNtCs3aP4uAeNgCL_12futures_core6stream6Streamp4ItemINtNtBR_6result6ResultNtNtCs14kzo5Se9zC_5bytes5bytes5BytesNtNtB22_5error12PayloadErrorEEL_EEENCNCNvMNtB4s_6serverINtBi2_10HttpServerNCNCNvB5o_4init00INtNtB4s_3app3AppINtNtB3F_9transform14ApplyTransformNtB5m_23ActixTelemetryTransformIBj7_NtB6x_6LoggerIBj7_INtB7j_9ConditionNtNtB7Z_7builder4CorsEIBj7_NtB8U_13NormalizePathIBj7_INtB9F_9ConditionNtBaZ_13AuthTransformEIBj7_NtBbt_8CompressNtB4q_8AppEntryNtNtB4s_7service14ServiceRequestEBmR_EBmR_EBmR_EBmR_EBmR_EEINtB4q_7AppInitBj6_BcA_EBcA_E6listen0s0_0NtNtNtB4s_8response8response12HttpResponseEBcA_NtNtNtB22_2h16expect13ExpectHandlerNtNtBpi_7upgrade14UpgradeHandlerENtNtNtBR_6future6future6Future4poll0EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB5q_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskNCNvXs_NtCsces4Lhf2vbX_12actix_server7serviceINtBT_13StreamServiceINtNtCs519D4kX01I1_13actix_service8and_then14AndThenServiceIB1R_INtNtB1V_7map_err6MapErrNtNtNtCsb7qiAEi3wj_9actix_tls6accept11rustls_0_2315AcceptorServiceNtNtNtNtB6_3net3tcp6stream9TcpStreamINvMB3k_INtB3k_8TlsErrorNtNtNtCskKLDkoKarTP_4core2io5error5ErrorzE18into_service_errorNtNtCs6EFb6a2W5dE_10actix_http5error13DispatchErrorEIB53_B5i_B6i_EEINtNtB1V_10fn_service9FnServiceNCNvMNtNtB6m_7service11rustls_0_23INtB7Z_11HttpServiceINtB3i_9TlsStreamB4k_EINtNtB1V_10map_config9MapConfigINtB2V_20MapErrServiceFactoryINtNtCsgoPClq0H8JF_9actix_web11app_service7AppInitINtNtB1V_9transform14ApplyTransformNtNtNtBa9_10middleware8compress8CompressNtBa7_8AppEntryNtNtBa9_7service14ServiceRequestEINtNtNtB6m_4body6either10EitherBodyINtNtNtB6m_8encoding7encoder7EncoderNtNtBcW_5boxed7BoxBodyEEEINtNtNtB6m_8requests7request7RequestINtNtB5o_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs3aP4uAeNgCL_12futures_core6stream6Streamp4ItemINtNtB5o_6result6ResultNtNtCs14kzo5Se9zC_5bytes5bytes5BytesNtB6k_12PayloadErrorEEL_EEENCNCNvMNtBa9_6serverINtBib_10HttpServerNCNCNvNtNtCsl8OoimOLbh_6qdrant5actix15metrics_service12init_metrics00INtNtBa9_3app3AppBaS_EBa4_BcR_E24listen_rustls_0_23_inner0s0_0NtNtNtBa9_8response8response12HttpResponseEBep_NCBi6_s1_0uEBcR_E23rustls_0_23_with_configs_0NCNCB7U_s_00B8K_TB8K_NtB6m_8ProtocolINtNtB5o_6option6OptionNtNtNtB5o_3net11socket_addr10SocketAddrEEB78_EB4k_EIB2T_INtB7Z_18HttpServiceHandlerB8K_IB2T_INtBa7_14AppInitServiceINtBbt_18CompressMiddlewareNtBa7_10AppRoutingEBcR_EBep_Bi4_BkO_EBcR_NtNtNtB6m_2h16expect13ExpectHandlerNtNtBqg_7upgrade14UpgradeHandlerEBmy_NcNtB78_7Service0B78_EB4k_EB4k_EINtB1V_7ServiceTNtNtBV_6worker18WorkerCounterGuardNtNtBV_6socket9MioStreamEE4call0INtNtBfl_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEBiR_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(4984), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskNCNvXs_NtCsces4Lhf2vbX_12actix_server7serviceINtBT_13StreamServiceINtNtCs519D4kX01I1_13actix_service8and_then14AndThenServiceIB1R_INtNtB1V_7map_err6MapErrNtNtNtCsb7qiAEi3wj_9actix_tls6accept11rustls_0_2315AcceptorServiceNtNtNtNtB6_3net3tcp6stream9TcpStreamINvMB3k_INtB3k_8TlsErrorNtNtNtCskKLDkoKarTP_4core2io5error5ErrorzE18into_service_errorNtNtCs6EFb6a2W5dE_10actix_http5error13DispatchErrorEIB53_B5i_B6i_EEINtNtB1V_10fn_service9FnServiceNCNvMNtNtB6m_7service11rustls_0_23INtB7Z_11HttpServiceINtB3i_9TlsStreamB4k_EINtNtB1V_10map_config9MapConfigINtB2V_20MapErrServiceFactoryINtNtCsgoPClq0H8JF_9actix_web11app_service7AppInitINtNtB1V_9transform14ApplyTransformNtNtNtCsl8OoimOLbh_6qdrant5actix15actix_telemetry23ActixTelemetryTransformIBaT_NtNtNtBa9_10middleware6logger6LoggerIBaT_INtNtBcM_9condition9ConditionNtNtCsbEyXj2whuwq_10actix_cors7builder4CorsEIBaT_NtNtBcM_9normalize13NormalizePathIBaT_INtNtNtCs9kmuiX5O2xo_16actix_web_extras10middleware9condition9ConditionNtNtBbv_4auth13AuthTransformEIBaT_NtNtBcM_8compress8CompressNtBa7_8AppEntryNtNtBa9_7service14ServiceRequestEBhB_EBhB_EBhB_EBhB_EBhB_EINtBcK_9StreamLogINtNtNtB6m_4body6either10EitherBodyIBiP_IBiP_IBiP_INtNtNtB6m_8encoding7encoder7EncoderNtNtBiT_5boxed7BoxBodyEEBjx_EEBjs_EEEINtNtNtB6m_8requests7request7RequestINtNtB5o_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs3aP4uAeNgCL_12futures_core6stream6Streamp4ItemINtNtB5o_6result6ResultNtNtCs14kzo5Se9zC_5bytes5bytes5BytesNtB6k_12PayloadErrorEEL_EEENCNCNvMNtBa9_6serverINtBoz_10HttpServerNCNCNvBbv_4init00INtNtBa9_3app3AppBaS_EBa4_Bix_E24listen_rustls_0_23_inner0s0_0NtNtNtBa9_8response8response12HttpResponseEBkN_NCBou_s1_0uEBix_E23rustls_0_23_with_configs_0NCNCB7U_s_00B8K_TB8K_NtB6m_8ProtocolINtNtB5o_6option6OptionNtNtNtB5o_3net11socket_addr10SocketAddrEEB78_EB4k_EIB2T_INtB7Z_18HttpServiceHandlerB8K_IB2T_INtBa7_14AppInitServiceINtBbt_21ActixTelemetryServiceINtBcK_16LoggerMiddlewareINtBdq_19ConditionMiddlewareINtNtBdU_10middleware14CorsMiddlewareINtBeF_26NormalizePathNormalizationINtBfi_19ConditionMiddlewareINtBgq_14AuthMiddlewareINtBgY_18CompressMiddlewareNtBa7_10AppRoutingEEBxY_EEEBwA_EEEBix_EBkN_Bos_Bqm_EBix_NtNtNtB6m_2h16expect13ExpectHandlerNtNtBzn_7upgrade14UpgradeHandlerEBs6_NcNtB78_7Service0B78_EB4k_EB4k_EINtB1V_7ServiceTNtNtBV_6worker18WorkerCounterGuardNtNtBV_6socket9MioStreamEE4call0INtNtBlJ_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEBbx_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(4984), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskNCNvXs_NtCsces4Lhf2vbX_12actix_server7serviceINtBT_13StreamServiceINtNtCs519D4kX01I1_13actix_service8and_then14AndThenServiceINtNtB1V_10fn_service9FnServiceNCNvMs1_NtCs6EFb6a2W5dE_10actix_http7serviceINtB3q_11HttpServiceNtNtNtNtB6_3net3tcp6stream9TcpStreamINtNtB1V_10map_config9MapConfigINtNtB1V_7map_err20MapErrServiceFactoryINtNtCsgoPClq0H8JF_9actix_web11app_service7AppInitINtNtB1V_9transform14ApplyTransformNtNtNtB67_10middleware8compress8CompressNtB65_8AppEntryNtNtB67_7service14ServiceRequestEINtNtNtB3s_4body6either10EitherBodyINtNtNtB3s_8encoding7encoder7EncoderNtNtB8U_5boxed7BoxBodyEEEINtNtNtB3s_8requests7request7RequestINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs3aP4uAeNgCL_12futures_core6stream6Streamp4ItemINtNtBb2_6result6ResultNtNtCs14kzo5Se9zC_5bytes5bytes5BytesNtNtB3s_5error12PayloadErrorEEL_EEENCNCNvMNtB67_6serverINtBew_10HttpServerNCNCNvNtNtCsl8OoimOLbh_6qdrant5actix15metrics_service12init_metrics00INtNtB67_3app3AppB6Q_EB62_B8P_E6listen0s0_0NtNtNtB67_8response8response12HttpResponseEBan_NCBer_s1_0uEB8P_E3tcp0NCNCB3k_00B4k_TB4k_NtB3s_8ProtocolINtNtBb2_6option6OptionNtNtNtBb2_3net11socket_addr10SocketAddrEENtBdS_13DispatchErrorEINtB3q_18HttpServiceHandlerB4k_INtB5s_6MapErrINtB65_14AppInitServiceINtB7r_18CompressMiddlewareNtB65_10AppRoutingEB8P_EBan_Bep_BgQ_EB8P_NtNtNtB3s_2h16expect13ExpectHandlerNtNtBm9_7upgrade14UpgradeHandlerEB4k_EB4k_EINtB1V_7ServiceTNtNtBV_6worker18WorkerCounterGuardNtNtBV_6socket9MioStreamEE4call0INtNtBby_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEBfc_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(2632), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskNCNvXs_NtCsces4Lhf2vbX_12actix_server7serviceINtBT_13StreamServiceINtNtCs519D4kX01I1_13actix_service8and_then14AndThenServiceINtNtB1V_10fn_service9FnServiceNCNvMs1_NtCs6EFb6a2W5dE_10actix_http7serviceINtB3q_11HttpServiceNtNtNtNtB6_3net3tcp6stream9TcpStreamINtNtB1V_10map_config9MapConfigINtNtB1V_7map_err20MapErrServiceFactoryINtNtCsgoPClq0H8JF_9actix_web11app_service7AppInitINtNtB1V_9transform14ApplyTransformNtNtNtCsl8OoimOLbh_6qdrant5actix15actix_telemetry23ActixTelemetryTransformIB6R_NtNtNtB67_10middleware6logger6LoggerIB6R_INtNtB8K_9condition9ConditionNtNtCsbEyXj2whuwq_10actix_cors7builder4CorsEIB6R_NtNtB8K_9normalize13NormalizePathIB6R_INtNtNtCs9kmuiX5O2xo_16actix_web_extras10middleware9condition9ConditionNtNtB7t_4auth13AuthTransformEIB6R_NtNtB8K_8compress8CompressNtB65_8AppEntryNtNtB67_7service14ServiceRequestEBdz_EBdz_EBdz_EBdz_EBdz_EINtB8I_9StreamLogINtNtNtB3s_4body6either10EitherBodyIBeN_IBeN_IBeN_INtNtNtB3s_8encoding7encoder7EncoderNtNtBeR_5boxed7BoxBodyEEBfv_EEBfq_EEEINtNtNtB3s_8requests7request7RequestINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs3aP4uAeNgCL_12futures_core6stream6Streamp4ItemINtNtBhq_6result6ResultNtNtCs14kzo5Se9zC_5bytes5bytes5BytesNtNtB3s_5error12PayloadErrorEEL_EEENCNCNvMNtB67_6serverINtBkU_10HttpServerNCNCNvB7t_4init00INtNtB67_3app3AppB6Q_EB62_Bev_E6listen0s0_0NtNtNtB67_8response8response12HttpResponseEBgL_NCBkP_s1_0uEBev_E3tcp0NCNCB3k_00B4k_TB4k_NtB3s_8ProtocolINtNtBhq_6option6OptionNtNtNtBhq_3net11socket_addr10SocketAddrEENtBkg_13DispatchErrorEINtB3q_18HttpServiceHandlerB4k_INtB5s_6MapErrINtB65_14AppInitServiceINtB7r_21ActixTelemetryServiceINtB8I_16LoggerMiddlewareINtB9o_19ConditionMiddlewareINtNtB9S_10middleware14CorsMiddlewareINtBaD_26NormalizePathNormalizationINtBbg_19ConditionMiddlewareINtBco_14AuthMiddlewareINtBcW_18CompressMiddlewareNtB65_10AppRoutingEEBtR_EEEBst_EEEBev_EBgL_BkN_Bmo_EBev_NtNtNtB3s_2h16expect13ExpectHandlerNtNtBvg_7upgrade14UpgradeHandlerEB4k_EB4k_EINtB1V_7ServiceTNtNtBV_6worker18WorkerCounterGuardNtNtBV_6socket9MioStreamEE4call0INtNtBhW_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB7v_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(2632), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskNCNvXs_NtNtCs6EFb6a2W5dE_10actix_http2h210dispatcherINtBT_10DispatcherINtNtNtCsb7qiAEi3wj_9actix_tls6accept11rustls_0_239TlsStreamNtNtNtNtB6_3net3tcp6stream9TcpStreamEINtNtCs519D4kX01I1_13actix_service7map_err6MapErrINtNtCsgoPClq0H8JF_9actix_web11app_service14AppInitServiceINtNtNtB4l_10middleware8compress18CompressMiddlewareNtB4j_10AppRoutingEINtNtNtBX_4body6either10EitherBodyINtNtNtBX_8encoding7encoder7EncoderNtNtB6q_5boxed7BoxBodyEEEINtNtNtBX_8requests7request7RequestINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs3aP4uAeNgCL_12futures_core6stream6Streamp4ItemINtNtB8v_6result6ResultNtNtCs14kzo5Se9zC_5bytes5bytes5BytesNtNtBX_5error12PayloadErrorEEL_EEENCNCNvMNtB4l_6serverINtBbY_10HttpServerNCNCNvNtNtCsl8OoimOLbh_6qdrant5actix15metrics_service12init_metrics00INtNtB4l_3app3AppINtNtB3y_9transform14ApplyTransformNtB5f_8CompressNtB4j_8AppEntryNtNtB4l_7service14ServiceRequestEEINtB4j_7AppInitBdS_B6l_EB6l_E24listen_rustls_0_23_inner0s0_0NtNtNtB4l_8response8response12HttpResponseEB6l_NtNtNtBX_2h16expect13ExpectHandlerNtNtBhg_7upgrade14UpgradeHandlerENtNtNtB8v_6future6future6Future4poll0INtNtB91_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEBcE_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(1128), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskNCNvXs_NtNtCs6EFb6a2W5dE_10actix_http2h210dispatcherINtBT_10DispatcherINtNtNtCsb7qiAEi3wj_9actix_tls6accept11rustls_0_239TlsStreamNtNtNtNtB6_3net3tcp6stream9TcpStreamEINtNtCs519D4kX01I1_13actix_service7map_err6MapErrINtNtCsgoPClq0H8JF_9actix_web11app_service14AppInitServiceINtNtNtCsl8OoimOLbh_6qdrant5actix15actix_telemetry21ActixTelemetryServiceINtNtNtB4l_10middleware6logger16LoggerMiddlewareINtNtB6s_9condition19ConditionMiddlewareINtNtCsbEyXj2whuwq_10actix_cors10middleware14CorsMiddlewareINtNtB6s_9normalize26NormalizePathNormalizationINtNtNtCs9kmuiX5O2xo_16actix_web_extras10middleware9condition19ConditionMiddlewareINtNtB5h_4auth14AuthMiddlewareINtNtB6s_8compress18CompressMiddlewareNtB4j_10AppRoutingEEBbj_EEEB8K_EEEINtB6q_9StreamLogINtNtNtBX_4body6either10EitherBodyIBcL_IBcL_IBcL_INtNtNtBX_8encoding7encoder7EncoderNtNtBcP_5boxed7BoxBodyEEBds_EEBdn_EEEINtNtNtBX_8requests7request7RequestINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs3aP4uAeNgCL_12futures_core6stream6Streamp4ItemINtNtBfl_6result6ResultNtNtCs14kzo5Se9zC_5bytes5bytes5BytesNtNtBX_5error12PayloadErrorEEL_EEENCNCNvMNtB4l_6serverINtBiO_10HttpServerNCNCNvB5h_4init00INtNtB4l_3app3AppINtNtB3y_9transform14ApplyTransformNtB5f_23ActixTelemetryTransformIBjT_NtB6q_6LoggerIBjT_INtB7c_9ConditionNtNtB7S_7builder4CorsEIBjT_NtB8N_13NormalizePathIBjT_INtB9y_9ConditionNtBaS_13AuthTransformEIBjT_NtBbm_8CompressNtB4j_8AppEntryNtNtB4l_7service14ServiceRequestEBnD_EBnD_EBnD_EBnD_EBnD_EEINtB4j_7AppInitBjS_Bct_EBct_E24listen_rustls_0_23_inner0s0_0NtNtNtB4l_8response8response12HttpResponseEBct_NtNtNtBX_2h16expect13ExpectHandlerNtNtBqn_7upgrade14UpgradeHandlerENtNtNtBfl_6future6future6Future4poll0INtNtBfR_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB5j_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(1168), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskNCNvXs_NtNtCs6EFb6a2W5dE_10actix_http2h210dispatcherINtBT_10DispatcherNtNtNtNtB6_3net3tcp6stream9TcpStreamINtNtCs519D4kX01I1_13actix_service7map_err6MapErrINtNtCsgoPClq0H8JF_9actix_web11app_service14AppInitServiceINtNtNtB3m_10middleware8compress18CompressMiddlewareNtB3k_10AppRoutingEINtNtNtBX_4body6either10EitherBodyINtNtNtBX_8encoding7encoder7EncoderNtNtB5r_5boxed7BoxBodyEEEINtNtNtBX_8requests7request7RequestINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs3aP4uAeNgCL_12futures_core6stream6Streamp4ItemINtNtB7w_6result6ResultNtNtCs14kzo5Se9zC_5bytes5bytes5BytesNtNtBX_5error12PayloadErrorEEL_EEENCNCNvMNtB3m_6serverINtBaZ_10HttpServerNCNCNvNtNtCsl8OoimOLbh_6qdrant5actix15metrics_service12init_metrics00INtNtB3m_3app3AppINtNtB2z_9transform14ApplyTransformNtB4g_8CompressNtB3k_8AppEntryNtNtB3m_7service14ServiceRequestEEINtB3k_7AppInitBcT_B5m_EB5m_E6listen0s0_0NtNtNtB3m_8response8response12HttpResponseEB5m_NtNtNtBX_2h16expect13ExpectHandlerNtNtBfY_7upgrade14UpgradeHandlerENtNtNtB7w_6future6future6Future4poll0INtNtB82_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEBbF_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(1128), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskNCNvXs_NtNtCs6EFb6a2W5dE_10actix_http2h210dispatcherINtBT_10DispatcherNtNtNtNtB6_3net3tcp6stream9TcpStreamINtNtCs519D4kX01I1_13actix_service7map_err6MapErrINtNtCsgoPClq0H8JF_9actix_web11app_service14AppInitServiceINtNtNtCsl8OoimOLbh_6qdrant5actix15actix_telemetry21ActixTelemetryServiceINtNtNtB3m_10middleware6logger16LoggerMiddlewareINtNtB5t_9condition19ConditionMiddlewareINtNtCsbEyXj2whuwq_10actix_cors10middleware14CorsMiddlewareINtNtB5t_9normalize26NormalizePathNormalizationINtNtNtCs9kmuiX5O2xo_16actix_web_extras10middleware9condition19ConditionMiddlewareINtNtB4i_4auth14AuthMiddlewareINtNtB5t_8compress18CompressMiddlewareNtB3k_10AppRoutingEEBak_EEEB7L_EEEINtB5r_9StreamLogINtNtNtBX_4body6either10EitherBodyIBbM_IBbM_IBbM_INtNtNtBX_8encoding7encoder7EncoderNtNtBbQ_5boxed7BoxBodyEEBct_EEBco_EEEINtNtNtBX_8requests7request7RequestINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs3aP4uAeNgCL_12futures_core6stream6Streamp4ItemINtNtBem_6result6ResultNtNtCs14kzo5Se9zC_5bytes5bytes5BytesNtNtBX_5error12PayloadErrorEEL_EEENCNCNvMNtB3m_6serverINtBhP_10HttpServerNCNCNvB4i_4init00INtNtB3m_3app3AppINtNtB2z_9transform14ApplyTransformNtB4g_23ActixTelemetryTransformIBiU_NtB5r_6LoggerIBiU_INtB6d_9ConditionNtNtB6T_7builder4CorsEIBiU_NtB7O_13NormalizePathIBiU_INtB8z_9ConditionNtB9T_13AuthTransformEIBiU_NtBan_8CompressNtB3k_8AppEntryNtNtB3m_7service14ServiceRequestEBmE_EBmE_EBmE_EBmE_EBmE_EEINtB3k_7AppInitBiT_Bbu_EBbu_E6listen0s0_0NtNtNtB3m_8response8response12HttpResponseEBbu_NtNtNtBX_2h16expect13ExpectHandlerNtNtBp5_7upgrade14UpgradeHandlerENtNtNtBem_6future6future6Future4poll0INtNtBeS_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB4k_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(1168), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINCNCNCNvNtNtCsl8OoimOLbh_6qdrant6common9snapshots22recover_shard_snapshot000lEINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEBZ_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(11528), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINCNCNCNvNvXsh_NtNtNtCsl8OoimOLbh_6qdrant5actix3api12snapshot_apiNtB11_21upload_shard_snapshotNtNtCsgoPClq0H8JF_9actix_web7service18HttpServiceFactory8register21upload_shard_snapshot000lEINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB17_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(11448), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINCNCNCNvNvXsl_NtNtNtCsl8OoimOLbh_6qdrant5actix3api12snapshot_apiNtB11_24recover_partial_snapshotNtNtCsgoPClq0H8JF_9actix_web7service18HttpServiceFactory8register24recover_partial_snapshot000lEINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB17_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(11496), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINCNCNCNvNvXso_NtNtNtCsl8OoimOLbh_6qdrant5actix3api12snapshot_apiNtB11_29recover_partial_snapshot_fromNtNtCsgoPClq0H8JF_9actix_web7service18HttpServiceFactory8register29recover_partial_snapshot_from000lEINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB17_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(11664), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINCNCNCNvNtNtCsl8OoimOLbh_6qdrant6common9snapshots22recover_shard_snapshot000lEEEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB24_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINCNCNCNvNvXsh_NtNtNtCsl8OoimOLbh_6qdrant5actix3api12snapshot_apiNtB26_21upload_shard_snapshotNtNtCsgoPClq0H8JF_9actix_web7service18HttpServiceFactory8register21upload_shard_snapshot000lEEEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB2c_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINCNCNCNvNvXsl_NtNtNtCsl8OoimOLbh_6qdrant5actix3api12snapshot_apiNtB26_24recover_partial_snapshotNtNtCsgoPClq0H8JF_9actix_web7service18HttpServiceFactory8register24recover_partial_snapshot000lEEEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB2c_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINCNCNCNvNvXso_NtNtNtCsl8OoimOLbh_6qdrant5actix3api12snapshot_apiNtB26_29recover_partial_snapshot_fromNtNtCsgoPClq0H8JF_9actix_web7service18HttpServiceFactory8register29recover_partial_snapshot_from000lEEEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB2c_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCs3WWrd2JY12C_5hyper5proto2h26server8H2StreamINtNtNtCslfxrBSw8aGw_10hyper_util7service4glue25TowerToHyperServiceFutureINtNtNtCs5TwP8AC98I6_5tower4util11map_request10MapRequestINtNtB3Z_11boxed_clone15BoxCloneServiceINtNtCs577yCKf7gy3_4http7request7RequestNtNtCsgOCJwUSa4vG_5tonic4body4BodyEINtNtB5x_8response8ResponseB66_EIB1j_DNtNtBR_5error5ErrorNtNtBR_6marker4SendNtB7C_4SyncEL_EENCNCINvMs0_NtNtB6a_9transport6serverINtB8k_6ServerINtNtCskAVbmAUIDVC_11tower_layer5stack5StackIB8Y_INtNtB3Z_6either6EitherNtNtNtCsl8OoimOLbh_6qdrant5tonic4auth9AuthLayerNtNtB92_8identity8IdentityEIB8Y_NtNtBab_15tonic_telemetry19TonicTelemetryLayerIB8Y_NtNtBab_7logging22LoggingMiddlewareLayerBaS_EEEBaS_EE14serve_internalNtNtNtB6a_7service6router6RoutesNtNtB8k_8incoming11TcpIncomingNCNCNvBab_13init_internal00NtNtNtNtB6_3net3tcp6stream9TcpStreamNtNtNtBR_2io5error5ErrorB66_E0s_0EIB5t_NtNtNtB20_4body8incoming8IncomingEEB66_NtNtNtB2Q_2rt5tokio13TokioExecutorEEEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEBad_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCs3WWrd2JY12C_5hyper5proto2h26server8H2StreamINtNtNtCslfxrBSw8aGw_10hyper_util7service4glue25TowerToHyperServiceFutureINtNtNtCs5TwP8AC98I6_5tower4util11map_request10MapRequestINtNtB3Z_11boxed_clone15BoxCloneServiceINtNtCs577yCKf7gy3_4http7request7RequestNtNtCsgOCJwUSa4vG_5tonic4body4BodyEINtNtB5x_8response8ResponseB66_EIB1j_DNtNtBR_5error5ErrorNtNtBR_6marker4SendNtB7C_4SyncEL_EENCNCINvMs0_NtNtB6a_9transport6serverINtB8k_6ServerINtNtCskAVbmAUIDVC_11tower_layer5stack5StackIB8Y_INtNtB3Z_6either6EitherNtNtNtCsl8OoimOLbh_6qdrant5tonic4auth9AuthLayerNtNtB92_8identity8IdentityEIB8Y_NtNtBab_15tonic_telemetry19TonicTelemetryLayerIB8Y_NtNtBab_7logging22LoggingMiddlewareLayerBaS_EEEBaS_EE14serve_internalNtNtNtB6a_7service6router6RoutesNtNtB8k_8incoming11TcpIncomingNCNCNvBab_4init00NtNtNtNtB6_3net3tcp6stream9TcpStreamNtNtNtBR_2io5error5ErrorB66_E0s_0EIB5t_NtNtNtB20_4body8incoming8IncomingEEB66_NtNtNtB2Q_2rt5tokio13TokioExecutorEEEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEBad_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCs3WWrd2JY12C_5hyper5proto2h27upgrade22UpgradedSendStreamTaskNtNtCs14kzo5Se9zC_5bytes5bytes5BytesEEEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsiHzErX7aQFk_12futures_util6stream6stream7collect7CollectINtNtB1Y_17futures_unordered16FuturesUnorderedNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection9point_opsNtB3P_10Collection18update_from_client00EINtNtB1n_3vec3VecINtNtBR_6result6ResultNtNtNtB3R_10operations5types12UpdateResultNtB5W_15CollectionErrorEEEEEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvNtNtCsPYQCUnoTxQ_10collection6common20stoppable_task_async23spawn_async_cancellableNCINvNtNtNtB20_6shards8transfer6driver19spawn_transfer_taskNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc19collection_meta_opsNtB4n_14TableOfContent15handle_transfer0s1_0NCB4g_s2_0E0NCNCB3j_00E0EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvNtNtCsgOCJwUSa4vG_5tonic9transport6server16serve_connectionNtNtB20_4body4BodyINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoINtNtNtB1W_7service2io8ServerIoNtNtNtNtB6_3net3tcp6stream9TcpStreamEEINtNtNtB3i_7service4glue19TowerToHyperServiceINtNtNtCs5TwP8AC98I6_5tower4util11map_request10MapRequestINtNtB5U_11boxed_clone15BoxCloneServiceINtNtCs577yCKf7gy3_4http7request7RequestB2T_EINtNtB7s_8response8ResponseB2T_EIB1j_DNtNtBR_5error5ErrorNtNtBR_6marker4SendNtB93_4SyncEL_EENCNCINvMs0_B1W_INtB1W_6ServerINtNtCskAVbmAUIDVC_11tower_layer5stack5StackIBa4_INtNtB5U_6either6EitherNtNtNtCsl8OoimOLbh_6qdrant5tonic4auth9AuthLayerNtNtBa8_8identity8IdentityEIBa4_NtNtBbh_15tonic_telemetry19TonicTelemetryLayerIBa4_NtNtBbh_7logging22LoggingMiddlewareLayerBbY_EEEBbY_EE14serve_internalNtNtNtB20_7service6router6RoutesNtNtB1W_8incoming11TcpIncomingNCNCNvBbh_13init_internal00B4u_NtNtNtBR_2io5error5ErrorB2T_E0s_0EENtB3e_13TokioExecutorE0EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEBbj_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCINvNtNtCsgOCJwUSa4vG_5tonic9transport6server16serve_connectionNtNtB20_4body4BodyINtNtNtCslfxrBSw8aGw_10hyper_util2rt5tokio7TokioIoINtNtNtB1W_7service2io8ServerIoNtNtNtNtB6_3net3tcp6stream9TcpStreamEEINtNtNtB3i_7service4glue19TowerToHyperServiceINtNtNtCs5TwP8AC98I6_5tower4util11map_request10MapRequestINtNtB5U_11boxed_clone15BoxCloneServiceINtNtCs577yCKf7gy3_4http7request7RequestB2T_EINtNtB7s_8response8ResponseB2T_EIB1j_DNtNtBR_5error5ErrorNtNtBR_6marker4SendNtB93_4SyncEL_EENCNCINvMs0_B1W_INtB1W_6ServerINtNtCskAVbmAUIDVC_11tower_layer5stack5StackIBa4_INtNtB5U_6either6EitherNtNtNtCsl8OoimOLbh_6qdrant5tonic4auth9AuthLayerNtNtBa8_8identity8IdentityEIBa4_NtNtBbh_15tonic_telemetry19TonicTelemetryLayerIBa4_NtNtBbh_7logging22LoggingMiddlewareLayerBbY_EEEBbY_EE14serve_internalNtNtNtB20_7service6router6RoutesNtNtB1W_8incoming11TcpIncomingNCNCNvBbh_4init00B4u_NtNtNtBR_2io5error5ErrorB2T_E0s_0EENtB3e_13TokioExecutorE0EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEBbj_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCINvNtNtCsl8OoimOLbh_6qdrant5actix7helpers14time_or_acceptNtNtNtCsPYQCUnoTxQ_10collection10operations12snapshot_ops19SnapshotDescriptionNCNCNvNvXs4_NtNtB22_3api12snapshot_apiNtB4k_15create_snapshotNtNtCsgoPClq0H8JF_9actix_web7service18HttpServiceFactory8register15create_snapshot00E000EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB24_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCINvNtNtCsl8OoimOLbh_6qdrant5actix7helpers14time_or_acceptNtNtNtCsPYQCUnoTxQ_10collection10operations12snapshot_ops19SnapshotDescriptionNCNCNvNvXs9_NtNtB22_3api12snapshot_apiNtB4k_20create_full_snapshotNtNtCsgoPClq0H8JF_9actix_web7service18HttpServiceFactory8register20create_full_snapshot00E000EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB24_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCINvNtNtCsl8OoimOLbh_6qdrant5actix7helpers14time_or_acceptNtNtNtCsPYQCUnoTxQ_10collection10operations12snapshot_ops19SnapshotDescriptionNCNCNvNvXse_NtNtB22_3api12snapshot_apiNtB4k_21create_shard_snapshotNtNtCsgoPClq0H8JF_9actix_web7service18HttpServiceFactory8register21create_shard_snapshot00E000EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB24_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCINvNtNtCsl8OoimOLbh_6qdrant5actix7helpers14time_or_acceptbINtNtNtCsiHzErX7aQFk_12futures_util6future6future3MapNCINvNtCscmBEibYz9XM_6cancel6future20spawn_cancel_on_dropNCNCNvNvXso_NtNtB22_3api12snapshot_apiNtB4R_29recover_partial_snapshot_fromNtNtCsgoPClq0H8JF_9actix_web7service18HttpServiceFactory8register29recover_partial_snapshot_from00INCNCB4H_00lEE0NCB4H_s_0EE000EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB24_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCINvNtNtCsl8OoimOLbh_6qdrant5actix7helpers14time_or_acceptbNCNCNvNvXs5_NtNtB22_3api12snapshot_apiNtB35_15upload_snapshotNtNtCsgoPClq0H8JF_9actix_web7service18HttpServiceFactory8register15upload_snapshot00E000EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB24_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCINvNtNtCsl8OoimOLbh_6qdrant5actix7helpers14time_or_acceptbNCNCNvNvXs6_NtNtB22_3api12snapshot_apiNtB35_21recover_from_snapshotNtNtCsgoPClq0H8JF_9actix_web7service18HttpServiceFactory8register21recover_from_snapshot00E000EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB24_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCINvNtNtCsl8OoimOLbh_6qdrant5actix7helpers14time_or_acceptbNCNCNvNvXsb_NtNtB22_3api12snapshot_apiNtB35_20delete_full_snapshotNtNtCsgoPClq0H8JF_9actix_web7service18HttpServiceFactory8register20delete_full_snapshot00E000EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB24_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCINvNtNtCsl8OoimOLbh_6qdrant5actix7helpers14time_or_acceptbNCNCNvNvXsc_NtNtB22_3api12snapshot_apiNtB35_26delete_collection_snapshotNtNtCsgoPClq0H8JF_9actix_web7service18HttpServiceFactory8register26delete_collection_snapshot00E000EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB24_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCINvNtNtCsl8OoimOLbh_6qdrant5actix7helpers14time_or_acceptbNCNCNvNvXsg_NtNtB22_3api12snapshot_apiNtB35_22recover_shard_snapshotNtNtCsgoPClq0H8JF_9actix_web7service18HttpServiceFactory8register22recover_shard_snapshot00E000EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB24_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCINvNtNtCsl8OoimOLbh_6qdrant5actix7helpers14time_or_acceptbNCNCNvNvXsj_NtNtB22_3api12snapshot_apiNtB35_21delete_shard_snapshotNtNtCsgoPClq0H8JF_9actix_web7service18HttpServiceFactory8register21delete_shard_snapshot00E000EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB24_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCINvNtNtCsl8OoimOLbh_6qdrant5actix7helpers14time_or_acceptjNCNCNvNvXse_NtNtB22_3api11service_apiNtB35_22truncate_unapplied_walNtNtCsgoPClq0H8JF_9actix_web7service18HttpServiceFactory8register22truncate_unapplied_wal00E000EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB24_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCINvNtNtCsl8OoimOLbh_6qdrant5actix7helpers14time_or_acceptuINtNtNtCsiHzErX7aQFk_12futures_util6future6future3MapNCINvNtCscmBEibYz9XM_6cancel6future20spawn_cancel_on_dropNCNCNvNvXsh_NtNtB22_3api12snapshot_apiNtB4R_21upload_shard_snapshotNtNtCsgoPClq0H8JF_9actix_web7service18HttpServiceFactory8register21upload_shard_snapshot00INCNCB4H_00lEE0NCB4H_s_0EE000EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB24_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjZG7hsAZr3B_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNCINvNtNtCsl8OoimOLbh_6qdrant5actix7helpers14time_or_acceptuINtNtNtCsiHzErX7aQFk_12futures_util6future6future3MapNCINvNtCscmBEibYz9XM_6cancel6future20spawn_cancel_on_dropNCNCNvNvXsl_NtNtB22_3api12snapshot_apiNtB4R_24recover_partial_snapshotNtNtCsgoPClq0H8JF_9actix_web7service18HttpServiceFactory8register24recover_partial_snapshot00INCNCB4H_00lEE0NCB4H_s_0EE000EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB24_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0
end_hunk_1

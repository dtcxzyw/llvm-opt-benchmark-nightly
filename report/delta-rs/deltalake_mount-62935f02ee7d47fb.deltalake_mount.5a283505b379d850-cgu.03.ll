inline.NumInlined: 284
inline.NumDeleted: 110
begin_hunk_0_@_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs7JU2D1aBbVY_15deltalake_mount:bb.a
  %i.w = phi ptr [ %i.q, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE28atomic_load_head_and_len_allCs7JU2D1aBbVY_15deltalake_mount.exit ], [ %.pre, %bb.p ]
  %.sroa.010.0 = phi i64 [ 0, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE28atomic_load_head_and_len_allCs7JU2D1aBbVY_15deltalake_mount.exit ], [ %.sroa.010.1, %bb.p ] ; 2 uses
  %.sroa.08.0 = phi i64 [ 0, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE28atomic_load_head_and_len_allCs7JU2D1aBbVY_15deltalake_mount.exit ], [ %.sroa.08.1, %bb.p ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.y = call { i64, ptr } @_RNvMNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queueINtB2_15ReadyToRunQueueINtNtB6_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2p_6future6future6Futurep6OutputINtNtB2p_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB2p_6marker4SendEL_EEEE7dequeueCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 8 %i.x) ; 2 uses
  %i.z = extractvalue { i64, ptr } %i.y, 0
  %i.aa = extractvalue { i64, ptr } %i.y, 1       ; 5 uses
end_hunk_0
begin_hunk_1_@_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs7JU2D1aBbVY_15deltalake_mount:bb.a
  br i1 %i.by, label %.critedge.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %3 = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bz = load ptr, ptr %4, align 8, !nonnull !3, !noundef !3
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  br label %bb.y
end_hunk_1
begin_hunk_2_@_RNvXs8_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEENtNtNtB27_3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount
define hidden void @_RNvXs8_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEENtNtNtB27_3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE6unlinkCs7JU2D1aBbVY_15deltalake_mount.exit, %bb.a
  %i.c = phi ptr [ %i.ab, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE6unlinkCs7JU2D1aBbVY_15deltalake_mount.exit ], [ %i.b, %bb.a ] ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.d

end_hunk_2
begin_hunk_3_@_RNvXs8_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEENtNtNtB27_3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  %i.l = load atomic ptr, ptr %i.k monotonic, align 8, !noalias !296 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 2 uses
  %1 = load ptr, ptr %i.m, align 8, !noalias !296, !noundef !3 ; 4 uses
  %i.n = load ptr, ptr %0, align 8, !alias.scope !296, !nonnull !3, !noundef !3
  %2 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.o = load ptr, ptr %2, align 8, !noalias !296, !nonnull !3, !noundef !3
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store atomic ptr %i.p, ptr %i.k monotonic, align 8, !noalias !296
  store ptr null, ptr %i.m, align 8, !noalias !296
end_hunk_3
begin_hunk_4_@_RNvXs8_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEENtNtNtB27_3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount:bb.a

bb.e:                                             ; preds = %.noexc
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr %1, ptr %i.r, align 8, !noalias !296
  %i.s = icmp eq ptr %1, null
  br i1 %i.s, label %bb.f, label %.thread.i

.thread4.i:                                       ; preds = %.noexc
  %i.t = icmp eq ptr %1, null
  br i1 %i.t, label %.thread5.i, label %.thread.i

.thread5.i:                                       ; preds = %.thread4.i
end_hunk_4
begin_hunk_5_@_RNvXs8_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEENtNtNtB27_3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount:bb.a
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE6unlinkCs7JU2D1aBbVY_15deltalake_mount.exit

.thread.i:                                        ; preds = %.thread4.i, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  store atomic ptr %i.l, ptr %i.u monotonic, align 8, !noalias !296
  br label %bb.g

end_hunk_5
begin_hunk_6_@_RNvXs8_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB47_13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount
define hidden void @_RNvXs8_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB47_13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.promoted = load ptr, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %i.c = icmp eq ptr %.promoted, null
  br i1 %i.c, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB47_13delete_stream00EE12release_taskCs7JU2D1aBbVY_15deltalake_mount.exit, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB47_13delete_stream00EE12release_taskCs7JU2D1aBbVY_15deltalake_mount.exit
  %i.d = phi ptr [ %3, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB47_13delete_stream00EE12release_taskCs7JU2D1aBbVY_15deltalake_mount.exit ], [ %.promoted, %bb.a ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !299)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.f = load i64, ptr %i.e, align 8, !noalias !299, !noundef !3
end_hunk_6
begin_hunk_7_@_RNvXs8_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB47_13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 168 ; 2 uses
  %i.l = load atomic ptr, ptr %i.k monotonic, align 8, !noalias !299 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 176 ; 2 uses
  %1 = load ptr, ptr %i.m, align 8, !noalias !299, !noundef !3 ; 4 uses
  %i.n = load ptr, ptr %0, align 8, !alias.scope !299, !nonnull !3, !noundef !3
  %2 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.o = load ptr, ptr %2, align 8, !noalias !299, !nonnull !3, !noundef !3
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store atomic ptr %i.p, ptr %i.k monotonic, align 8, !noalias !299
end_hunk_7
begin_hunk_8_@_RNvXs8_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB47_13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount:bb.a

bb.c:                                             ; preds = %.noexc
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 160
  store ptr %1, ptr %i.r, align 8, !noalias !299
  %i.s = icmp eq ptr %1, null
  br i1 %i.s, label %bb.d, label %.thread.i

.thread4.i:                                       ; preds = %.noexc
  %i.t = icmp eq ptr %1, null
  br i1 %i.t, label %.thread5.i, label %.thread.i

.thread5.i:                                       ; preds = %.thread4.i
end_hunk_8
begin_hunk_9_@_RNvXs8_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB47_13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount:bb.a
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB47_13delete_stream00EE6unlinkCs7JU2D1aBbVY_15deltalake_mount.exit

.thread.i:                                        ; preds = %.thread4.i, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 152
  store atomic ptr %i.l, ptr %i.u monotonic, align 8, !noalias !299
  br label %bb.e

end_hunk_9
begin_hunk_10_@_RNvXs8_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB47_13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount:bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread.i
  %i.v = phi ptr [ %i.d, %.thread.i ], [ %i.l, %bb.d ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 168
  store i64 %i.g, ptr %i.w, align 8, !noalias !299
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB47_13delete_stream00EE6unlinkCs7JU2D1aBbVY_15deltalake_mount.exit
end_hunk_10
begin_hunk_11_@_RNvXs8_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB47_13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount:bb.a
  unreachable

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB47_13delete_stream00EE6unlinkCs7JU2D1aBbVY_15deltalake_mount.exit: ; preds = %bb.e, %.thread5.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.j, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 200
end_hunk_11
begin_hunk_12_@_RNvXs8_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB47_13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount:bb.a

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB47_13delete_stream00EE12release_taskCs7JU2D1aBbVY_15deltalake_mount.exit: ; preds = %bb.k, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %3 = load ptr, ptr %i.b, align 8, !noundef !3   ; 2 uses
  %i.al = icmp eq ptr %3, null
  br i1 %i.al, label %._crit_edge, label %bb.b

end_hunk_12
begin_hunk_13_@_RNvXs8_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB2d_
define hidden void @_RNvXs8_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB2d_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.promoted = load ptr, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %i.c = icmp eq ptr %.promoted, null
  br i1 %i.c, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EE12release_taskB2d_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EE12release_taskB2d_.exit
  %i.d = phi ptr [ %3, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EE12release_taskB2d_.exit ], [ %.promoted, %bb.a ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !312)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.f = load i64, ptr %i.e, align 8, !noalias !312, !noundef !3
end_hunk_13
begin_hunk_14_@_RNvXs8_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB2d_:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 168 ; 2 uses
  %i.l = load atomic ptr, ptr %i.k monotonic, align 8, !noalias !312 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 176 ; 2 uses
  %1 = load ptr, ptr %i.m, align 8, !noalias !312, !noundef !3 ; 4 uses
  %i.n = load ptr, ptr %0, align 8, !alias.scope !312, !nonnull !3, !noundef !3
  %2 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.o = load ptr, ptr %2, align 8, !noalias !312, !nonnull !3, !noundef !3
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store atomic ptr %i.p, ptr %i.k monotonic, align 8, !noalias !312
end_hunk_14
begin_hunk_15_@_RNvXs8_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB2d_:bb.a

bb.c:                                             ; preds = %.noexc
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 160
  store ptr %1, ptr %i.r, align 8, !noalias !312
  %i.s = icmp eq ptr %1, null
  br i1 %i.s, label %bb.d, label %.thread.i

.thread4.i:                                       ; preds = %.noexc
  %i.t = icmp eq ptr %1, null
  br i1 %i.t, label %.thread5.i, label %.thread.i

.thread5.i:                                       ; preds = %.thread4.i
end_hunk_15
begin_hunk_16_@_RNvXs8_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB2d_:bb.a
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EE6unlinkB2d_.exit

.thread.i:                                        ; preds = %.thread4.i, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 152
  store atomic ptr %i.l, ptr %i.u monotonic, align 8, !noalias !312
  br label %bb.e

end_hunk_16
begin_hunk_17_@_RNvXs8_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB2d_:bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread.i
  %i.v = phi ptr [ %i.d, %.thread.i ], [ %i.l, %bb.d ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 168
  store i64 %i.g, ptr %i.w, align 8, !noalias !312
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EE6unlinkB2d_.exit
end_hunk_17
begin_hunk_18_@_RNvXs8_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB2d_:bb.a
  unreachable

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EE6unlinkB2d_.exit: ; preds = %bb.e, %.thread5.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.j, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 200
end_hunk_18
begin_hunk_19_@_RNvXs8_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB2d_:bb.a

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EE12release_taskB2d_.exit: ; preds = %bb.k, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %3 = load ptr, ptr %i.b, align 8, !noundef !3   ; 2 uses
  %i.al = icmp eq ptr %3, null
  br i1 %i.al, label %._crit_edge, label %bb.b

end_hunk_19
begin_hunk_20_@_RNvXs8_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount
define hidden void @_RNvXs8_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.promoted = load ptr, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %i.c = icmp eq ptr %.promoted, null
  br i1 %i.c, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EE12release_taskCs7JU2D1aBbVY_15deltalake_mount.exit, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EE12release_taskCs7JU2D1aBbVY_15deltalake_mount.exit
  %i.d = phi ptr [ %3, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EE12release_taskCs7JU2D1aBbVY_15deltalake_mount.exit ], [ %.promoted, %bb.a ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !325)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.f = load i64, ptr %i.e, align 8, !noalias !325, !noundef !3
end_hunk_20
begin_hunk_21_@_RNvXs8_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 168 ; 2 uses
  %i.l = load atomic ptr, ptr %i.k monotonic, align 8, !noalias !325 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 176 ; 2 uses
  %1 = load ptr, ptr %i.m, align 8, !noalias !325, !noundef !3 ; 4 uses
  %i.n = load ptr, ptr %0, align 8, !alias.scope !325, !nonnull !3, !noundef !3
  %2 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.o = load ptr, ptr %2, align 8, !noalias !325, !nonnull !3, !noundef !3
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store atomic ptr %i.p, ptr %i.k monotonic, align 8, !noalias !325
end_hunk_21
begin_hunk_22_@_RNvXs8_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount:bb.a

bb.c:                                             ; preds = %.noexc
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 160
  store ptr %1, ptr %i.r, align 8, !noalias !325
  %i.s = icmp eq ptr %1, null
  br i1 %i.s, label %bb.d, label %.thread.i

.thread4.i:                                       ; preds = %.noexc
  %i.t = icmp eq ptr %1, null
  br i1 %i.t, label %.thread5.i, label %.thread.i

.thread5.i:                                       ; preds = %.thread4.i
end_hunk_22
begin_hunk_23_@_RNvXs8_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount:bb.a
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EE6unlinkCs7JU2D1aBbVY_15deltalake_mount.exit

.thread.i:                                        ; preds = %.thread4.i, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 152
  store atomic ptr %i.l, ptr %i.u monotonic, align 8, !noalias !325
  br label %bb.e

end_hunk_23
begin_hunk_24_@_RNvXs8_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount:bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread.i
  %i.v = phi ptr [ %i.d, %.thread.i ], [ %i.l, %bb.d ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 168
  store i64 %i.g, ptr %i.w, align 8, !noalias !325
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EE6unlinkCs7JU2D1aBbVY_15deltalake_mount.exit
end_hunk_24
begin_hunk_25_@_RNvXs8_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount:bb.a
  unreachable

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EE6unlinkCs7JU2D1aBbVY_15deltalake_mount.exit: ; preds = %bb.e, %.thread5.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.j, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 200
end_hunk_25
begin_hunk_26_@_RNvXs8_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount:bb.a

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EE12release_taskCs7JU2D1aBbVY_15deltalake_mount.exit: ; preds = %bb.k, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %3 = load ptr, ptr %i.b, align 8, !noundef !3   ; 2 uses
  %i.al = icmp eq ptr %3, null
  br i1 %i.al, label %._crit_edge, label %bb.b

end_hunk_26

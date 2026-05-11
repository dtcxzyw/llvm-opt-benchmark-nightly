inline.NumInlined: 230
inline.NumDeleted: 92
begin_hunk_0_@_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs62u4JVtZyFF_13deltalake_gcp:bb.a
  %i.w = phi ptr [ %i.q, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE28atomic_load_head_and_len_allCs62u4JVtZyFF_13deltalake_gcp.exit ], [ %.pre, %bb.p ]
  %.sroa.010.0 = phi i64 [ 0, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE28atomic_load_head_and_len_allCs62u4JVtZyFF_13deltalake_gcp.exit ], [ %.sroa.010.1, %bb.p ] ; 2 uses
  %.sroa.08.0 = phi i64 [ 0, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE28atomic_load_head_and_len_allCs62u4JVtZyFF_13deltalake_gcp.exit ], [ %.sroa.08.1, %bb.p ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.y = call { i64, ptr } @_RNvMNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queueINtB2_15ReadyToRunQueueINtNtB6_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2p_6future6future6Futurep6OutputINtNtB2p_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB2p_6marker4SendEL_EEEE7dequeueCs62u4JVtZyFF_13deltalake_gcp(ptr noundef nonnull align 8 %i.x) ; 2 uses
  %i.z = extractvalue { i64, ptr } %i.y, 0
  %i.aa = extractvalue { i64, ptr } %i.y, 1       ; 5 uses
end_hunk_0
begin_hunk_1_@_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs62u4JVtZyFF_13deltalake_gcp:bb.a
  br i1 %i.by, label %.critedge.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %3 = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bz = load ptr, ptr %4, align 8, !nonnull !3, !noundef !3
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  br label %bb.y
end_hunk_1
begin_hunk_2_@_RNvXs8_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEENtNtNtB27_3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp
define hidden void @_RNvXs8_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEENtNtNtB27_3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE6unlinkCs62u4JVtZyFF_13deltalake_gcp.exit, %bb.a
  %i.b = phi ptr [ %i.aa, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE6unlinkCs62u4JVtZyFF_13deltalake_gcp.exit ], [ %.pre, %bb.a ] ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.d

end_hunk_2
begin_hunk_3_@_RNvXs8_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEENtNtNtB27_3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  %i.k = load atomic ptr, ptr %i.j monotonic, align 8, !noalias !224 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 56 ; 2 uses
  %1 = load ptr, ptr %i.l, align 8, !noalias !224, !noundef !3 ; 4 uses
  %i.m = load ptr, ptr %0, align 8, !alias.scope !224, !nonnull !3, !noundef !3
  %2 = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.n = load ptr, ptr %2, align 8, !noalias !224, !nonnull !3, !noundef !3
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store atomic ptr %i.o, ptr %i.j monotonic, align 8, !noalias !224
  store ptr null, ptr %i.l, align 8, !noalias !224
end_hunk_3
begin_hunk_4_@_RNvXs8_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEENtNtNtB27_3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp:bb.a

bb.e:                                             ; preds = %.noexc
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store ptr %1, ptr %i.q, align 8, !noalias !224
  %i.r = icmp eq ptr %1, null
  br i1 %i.r, label %bb.f, label %.thread.i

.thread4.i:                                       ; preds = %.noexc
  %i.s = icmp eq ptr %1, null
  br i1 %i.s, label %.thread5.i, label %.thread.i

.thread5.i:                                       ; preds = %.thread4.i
end_hunk_4
begin_hunk_5_@_RNvXs8_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEENtNtNtB27_3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp:bb.a
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE6unlinkCs62u4JVtZyFF_13deltalake_gcp.exit

.thread.i:                                        ; preds = %.thread4.i, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  store atomic ptr %i.k, ptr %i.t monotonic, align 8, !noalias !224
  br label %bb.g

end_hunk_5
begin_hunk_6_@_RNvXs8_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB2d_
define hidden void @_RNvXs8_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB2d_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %._crit_edge, label %.lr.ph.a

._crit_edge:                                      ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EE12release_taskB2d_.exit, %bb.a
  ret void

.lr.ph.a:                                         ; preds = %bb.a, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EE12release_taskB2d_.exit
  %i.e = phi ptr [ %3, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EE12release_taskB2d_.exit ], [ %i.c, %bb.a ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !227)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %i.g = load i64, ptr %i.f, align 8, !noalias !227, !noundef !3
end_hunk_6
begin_hunk_7_@_RNvXs8_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB2d_:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 168 ; 2 uses
  %i.m = load atomic ptr, ptr %i.l monotonic, align 8, !noalias !227 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 176 ; 2 uses
  %1 = load ptr, ptr %i.n, align 8, !noalias !227, !noundef !3 ; 4 uses
  %i.o = load ptr, ptr %0, align 8, !alias.scope !227, !nonnull !3, !noundef !3
  %2 = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.p = load ptr, ptr %2, align 8, !noalias !227, !nonnull !3, !noundef !3
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store atomic ptr %i.q, ptr %i.l monotonic, align 8, !noalias !227
end_hunk_7
begin_hunk_8_@_RNvXs8_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB2d_:bb.a

bb.b:                                             ; preds = %.noexc
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 160
  store ptr %1, ptr %i.s, align 8, !noalias !227
  %i.t = icmp eq ptr %1, null
  br i1 %i.t, label %bb.c, label %.thread.i

.thread4.i:                                       ; preds = %.noexc
  %i.u = icmp eq ptr %1, null
  br i1 %i.u, label %.thread5.i, label %.thread.i

.thread5.i:                                       ; preds = %.thread4.i
end_hunk_8
begin_hunk_9_@_RNvXs8_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB2d_:bb.a
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EE6unlinkB2d_.exit

.thread.i:                                        ; preds = %.thread4.i, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 152
  store atomic ptr %i.m, ptr %i.v monotonic, align 8, !noalias !227
  br label %bb.d

end_hunk_9
begin_hunk_10_@_RNvXs8_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB2d_:bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread.i
  %i.w = phi ptr [ %i.e, %.thread.i ], [ %i.m, %bb.c ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 168
  store i64 %i.h, ptr %i.x, align 8, !noalias !227
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EE6unlinkB2d_.exit
end_hunk_10
begin_hunk_11_@_RNvXs8_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB2d_:bb.a
  unreachable

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EE6unlinkB2d_.exit: ; preds = %bb.d, %.thread5.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.k, ptr %i.a, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 200
end_hunk_11
begin_hunk_12_@_RNvXs8_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB2d_:bb.a

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EE12release_taskB2d_.exit: ; preds = %bb.j, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %3 = load ptr, ptr %i.b, align 8, !noundef !3   ; 2 uses
  %i.am = icmp eq ptr %3, null
  br i1 %i.am, label %._crit_edge, label %.lr.ph.a

end_hunk_12
begin_hunk_13_@_RNvXs8_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp
define hidden void @_RNvXs8_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %._crit_edge, label %.lr.ph.a

._crit_edge:                                      ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EE12release_taskCs62u4JVtZyFF_13deltalake_gcp.exit, %bb.a
  ret void

.lr.ph.a:                                         ; preds = %bb.a, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EE12release_taskCs62u4JVtZyFF_13deltalake_gcp.exit
  %i.e = phi ptr [ %3, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EE12release_taskCs62u4JVtZyFF_13deltalake_gcp.exit ], [ %i.c, %bb.a ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !240)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %i.g = load i64, ptr %i.f, align 8, !noalias !240, !noundef !3
end_hunk_13
begin_hunk_14_@_RNvXs8_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 168 ; 2 uses
  %i.m = load atomic ptr, ptr %i.l monotonic, align 8, !noalias !240 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 176 ; 2 uses
  %1 = load ptr, ptr %i.n, align 8, !noalias !240, !noundef !3 ; 4 uses
  %i.o = load ptr, ptr %0, align 8, !alias.scope !240, !nonnull !3, !noundef !3
  %2 = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.p = load ptr, ptr %2, align 8, !noalias !240, !nonnull !3, !noundef !3
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store atomic ptr %i.q, ptr %i.l monotonic, align 8, !noalias !240
end_hunk_14
begin_hunk_15_@_RNvXs8_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp:bb.a

bb.b:                                             ; preds = %.noexc
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 160
  store ptr %1, ptr %i.s, align 8, !noalias !240
  %i.t = icmp eq ptr %1, null
  br i1 %i.t, label %bb.c, label %.thread.i

.thread4.i:                                       ; preds = %.noexc
  %i.u = icmp eq ptr %1, null
  br i1 %i.u, label %.thread5.i, label %.thread.i

.thread5.i:                                       ; preds = %.thread4.i
end_hunk_15
begin_hunk_16_@_RNvXs8_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp:bb.a
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EE6unlinkCs62u4JVtZyFF_13deltalake_gcp.exit

.thread.i:                                        ; preds = %.thread4.i, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 152
  store atomic ptr %i.m, ptr %i.v monotonic, align 8, !noalias !240
  br label %bb.d

end_hunk_16
begin_hunk_17_@_RNvXs8_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp:bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread.i
  %i.w = phi ptr [ %i.e, %.thread.i ], [ %i.m, %bb.c ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 168
  store i64 %i.h, ptr %i.x, align 8, !noalias !240
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EE6unlinkCs62u4JVtZyFF_13deltalake_gcp.exit
end_hunk_17
begin_hunk_18_@_RNvXs8_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp:bb.a
  unreachable

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EE6unlinkCs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %bb.d, %.thread5.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.k, ptr %i.a, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 200
end_hunk_18
begin_hunk_19_@_RNvXs8_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp:bb.a

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EE12release_taskCs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %bb.j, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %3 = load ptr, ptr %i.b, align 8, !noundef !3   ; 2 uses
  %i.am = icmp eq ptr %3, null
  br i1 %i.am, label %._crit_edge, label %.lr.ph.a

end_hunk_19

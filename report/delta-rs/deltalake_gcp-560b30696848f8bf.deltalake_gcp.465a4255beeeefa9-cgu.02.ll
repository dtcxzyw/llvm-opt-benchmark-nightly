inline.NumInlined: 230
inline.NumDeleted: 92
begin_hunk_0_@_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EE3newCs62u4JVtZyFF_13deltalake_gcp:bb.a
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB17_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB3r_11ObjectStore13delete_stream00EEEE3newCs62u4JVtZyFF_13deltalake_gcp.exit, !prof !153

bb.e:                                             ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB30_11ObjectStore13delete_stream00EEEE3newCs62u4JVtZyFF_13deltalake_gcp.exit
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #18
          to label %.noexc24 unwind label %bb.f

.noexc24:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1q_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB3K_11ObjectStore13delete_stream00EEEECs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) #15
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16
  unreachable

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB17_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB3r_11ObjectStore13delete_stream00EEEE3newCs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB30_11ObjectStore13delete_stream00EEEE3newCs62u4JVtZyFF_13deltalake_gcp.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.m, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.r, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EE4pushCs62u4JVtZyFF_13deltalake_gcp(ptr noundef nonnull align 8 captures(address, read_provenance) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(136) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [208 x i8], align 8               ; 12 uses
  %i.b = alloca [144 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.42.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %1, i64 136, i1 false)
  %i.c = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !3, !noundef !3
  %i.f = invoke noundef nonnull ptr @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB36_11ObjectStore13delete_stream00EEE9downgradeCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2o_11ObjectStore13delete_stream00EEECs62u4JVtZyFF_13deltalake_gcp(ptr noundef nonnull align 8 %i.b)
          to label %common.resume unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = ptrtoint ptr %i.h to i64
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(144) %i.b, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %i.k, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store i64 %i.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, i8 0, i64 24, i1 false)
  store i8 1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 201
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 1
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !175
  %i.l = tail call noundef align 8 dereferenceable_or_null(208) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 64, 209) 208, i64 noundef 8) #14, !noalias !175 ; 7 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %bb.g, !prof !153

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 208) #18
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1q_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB3j_11ObjectStore13delete_stream00EEEECs62u4JVtZyFF_13deltalake_gcp(ptr noundef nonnull align 8 dereferenceable(208) %i.a) #15
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.g, %bb.b ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.l, ptr noundef nonnull align 8 dereferenceable(208) %i.a, i64 208, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store atomic i8 0, ptr %i.p monotonic, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = atomicrmw xchg ptr %i.r, ptr %i.q acq_rel, align 8 ; 5 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !3, !noundef !3
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 152
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %i.z = load atomic ptr, ptr %i.y acquire, align 8
  %.not.i = icmp eq ptr %i.z, %i.x
  br i1 %.not.i, label %bb.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 168
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !3
  %i.ac = add i64 %i.ab, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 184
  store i64 %i.ac, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 168
  store atomic ptr %i.s, ptr %i.ae release, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 160
  store ptr %i.q, ptr %i.af, align 8
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EE4linkCs62u4JVtZyFF_13deltalake_gcp.exit

.critedge.i:                                      ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 184
  store i64 1, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 168
  store atomic ptr null, ptr %i.ah release, align 8
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EE4linkCs62u4JVtZyFF_13deltalake_gcp.exit

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EE4linkCs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %.critedge.i, %bb.j
  %i.ai = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  tail call void @_RNvMNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queueINtB2_15ReadyToRunQueueINtNtB6_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2v_11ObjectStore13delete_stream00EE7enqueueCs62u4JVtZyFF_13deltalake_gcp(ptr noundef nonnull align 8 %i.aj, ptr noundef nonnull %i.q)
  ret void

bb.k:                                             ; preds = %bb.b
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs62u4JVtZyFF_13deltalake_gcp(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.g = load atomic ptr, ptr %i.f acquire, align 8 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE28atomic_load_head_and_len_allCs62u4JVtZyFF_13deltalake_gcp.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !3, !noundef !3
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.n = load atomic ptr, ptr %i.m acquire, align 8
  %.not.i = icmp eq ptr %i.n, %i.l
  br i1 %.not.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.p = load i64, ptr %i.o, align 8, !noundef !3
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE28atomic_load_head_and_len_allCs62u4JVtZyFF_13deltalake_gcp.exit

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE28atomic_load_head_and_len_allCs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %bb.a, %bb.d
  %.sroa.0.0.i = phi i64 [ %i.p, %bb.d ], [ 0, %bb.a ]
  %i.q = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %2, align 8, !nonnull !3, !align !8, !noundef !3 ; 5 uses
  tail call void @_RNvMNtNtNtCs7cL0Iqqqcdm_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker8register(ptr noundef nonnull align 8 %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.e

bb.e:                                             ; preds = %6, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE28atomic_load_head_and_len_allCs62u4JVtZyFF_13deltalake_gcp.exit
  %i.w = phi ptr [ %i.q, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE28atomic_load_head_and_len_allCs62u4JVtZyFF_13deltalake_gcp.exit ], [ %.pre, %6 ]
  %.sroa.010.0 = phi i64 [ 0, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE28atomic_load_head_and_len_allCs62u4JVtZyFF_13deltalake_gcp.exit ], [ %.sroa.010.1, %6 ] ; 2 uses
  %.sroa.08.0 = phi i64 [ 0, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE28atomic_load_head_and_len_allCs62u4JVtZyFF_13deltalake_gcp.exit ], [ %.sroa.08.1, %6 ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 3 uses
  %3 = call { i64, ptr } @_RNvMNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queueINtB2_15ReadyToRunQueueINtNtB6_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2p_6future6future6Futurep6OutputINtNtB2p_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB2p_6marker4SendEL_EEEE7dequeueCs62u4JVtZyFF_13deltalake_gcp(ptr noundef nonnull align 8 %i.x) ; 2 uses
  %4 = extractvalue { i64, ptr } %3, 0
  %5 = extractvalue { i64, ptr } %3, 1            ; 5 uses
  switch i64 %4, label %bb.f [
    i64 0, label %bb.g
    i64 1, label %bb.h
    i64 2, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !noundef !3
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %bb.n, label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.aa = load atomic ptr, ptr %i.f monotonic, align 8
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.ae, label %bb.af

bb.i:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %i.s, align 8, !nonnull !3, !align !8, !noundef !3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !3, !noundef !3
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !noundef !3
  call void %i.ae(ptr noundef %i.ag)
  store i64 -9223372036854775788, ptr %0, align 8
  br label %bb.aa

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %i.ah = load ptr, ptr %i.f, align 8, !alias.scope !178, !noundef !3 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !178, !noundef !3
  %i.ak = add i64 %i.aj, -1
  %i.al = call noundef i64 @_RINvNtCs6Po7BT7Nknu_5alloc4sync11data_offsetINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB4_5boxed3BoxDNtNtNtB2z_6future6future6Futurep6OutputINtNtB2z_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB2z_6marker4SendEL_EEEEECs62u4JVtZyFF_13deltalake_gcp(ptr noundef nonnull %5), !noalias !178
  %i.am = sub nsw i64 0, %i.al
  %i.an = getelementptr inbounds i8, ptr %5, i64 %i.am ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48 ; 2 uses
  %i.ap = load atomic ptr, ptr %i.ao monotonic, align 8, !noalias !178 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 56 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !178, !noundef !3 ; 4 uses
  %i.as = load ptr, ptr %i.x, align 8, !noalias !178, !nonnull !3, !noundef !3
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store atomic ptr %i.at, ptr %i.ao monotonic, align 8, !noalias !178
  store ptr null, ptr %i.aq, align 8, !noalias !178
  %i.au = icmp eq ptr %i.ap, null
  br i1 %i.au, label %.thread4.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  store ptr %i.ar, ptr %i.av, align 8, !noalias !178
  %i.aw = icmp eq ptr %i.ar, null
  br i1 %i.aw, label %bb.l, label %.thread.i

.thread4.i:                                       ; preds = %bb.j
  %i.ax = icmp eq ptr %i.ar, null
  br i1 %i.ax, label %.thread5.i, label %.thread.i

.thread5.i:                                       ; preds = %.thread4.i
  store ptr null, ptr %i.f, align 8, !alias.scope !178
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE6unlinkCs62u4JVtZyFF_13deltalake_gcp.exit

.thread.i:                                        ; preds = %.thread4.i, %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  store atomic ptr %i.ap, ptr %i.ay monotonic, align 8, !noalias !178
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  store ptr %i.ap, ptr %i.f, align 8, !alias.scope !178
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.thread.i
  %i.az = phi ptr [ %i.ah, %.thread.i ], [ %i.ap, %bb.l ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  store i64 %i.ak, ptr %i.ba, align 8, !noalias !178
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE6unlinkCs62u4JVtZyFF_13deltalake_gcp.exit

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE6unlinkCs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %.thread5.i, %bb.m
  store ptr %i.an, ptr %i.d, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  %i.bc = atomicrmw xchg ptr %i.bb, i8 0 seq_cst, align 1
  %i.bd = icmp eq i8 %i.bc, 0
  br i1 %i.bd, label %bb.p, label %bb.s, !prof !153

bb.n:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.be = call noundef i64 @_RINvNtCs6Po7BT7Nknu_5alloc4sync11data_offsetINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB4_5boxed3BoxDNtNtNtB2z_6future6future6Futurep6OutputINtNtB2z_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB2z_6marker4SendEL_EEEEECs62u4JVtZyFF_13deltalake_gcp(ptr noundef nonnull %5)
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = getelementptr inbounds i8, ptr %5, i64 %i.bf ; 2 uses
  store ptr %i.bg, ptr %i.e, align 8
  %i.bh = atomicrmw sub ptr %i.bg, i64 1 release, align 8, !noalias !181
  %i.bi = icmp eq i64 %i.bh, 1
  br i1 %i.bi, label %bb.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs62u4JVtZyFF_13deltalake_gcp.exit

bb.o:                                             ; preds = %bb.n
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB2z_6future6future6Futurep6OutputINtNtB2z_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB2z_6marker4SendEL_EEEEE9drop_slowB4V_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #17
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs62u4JVtZyFF_13deltalake_gcp.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %6

6:                                                ; preds = %bb.z, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs62u4JVtZyFF_13deltalake_gcp.exit
  %.sroa.010.1 = phi i64 [ %i.bt, %bb.z ], [ %.sroa.010.0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs62u4JVtZyFF_13deltalake_gcp.exit ]
  %.sroa.08.1 = phi i64 [ %i.bn, %bb.z ], [ %.sroa.08.0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs62u4JVtZyFF_13deltalake_gcp.exit ]
  %.pre = load ptr, ptr %1, align 8
  br label %bb.e

bb.p:                                             ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE6unlinkCs62u4JVtZyFF_13deltalake_gcp.exit
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 22, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #18
          to label %bb.q unwind label %bb.ac

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.s
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE12release_taskCs62u4JVtZyFF_13deltalake_gcp(ptr noundef nonnull %i.bk)
          to label %.thread unwind label %bb.ab

bb.s:                                             ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE6unlinkCs62u4JVtZyFF_13deltalake_gcp.exit
  %i.bk = load ptr, ptr %i.d, align 8, !nonnull !3, !noundef !3 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 81 ; 2 uses
  store atomic i8 0, ptr %i.bl monotonic, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @3, ptr %i.b, align 8
  store ptr %i.bm, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr %i.b, ptr %i.u, align 8
  store ptr null, ptr %i.v, align 8
  invoke void @_RNvXs2_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB1o_6future6future6Futurep6OutputINtNtB1o_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB1o_6marker4SendEL_EEEB2p_4pollCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %bb.t unwind label %bb.r

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bn = add i64 %.sroa.08.0, 1                  ; 2 uses
  %i.bo = load i64, ptr %i.c, align 8, !range !186, !noundef !3
  %i.bp = icmp eq i64 %i.bo, -9223372036854775789
  br i1 %i.bp, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call fastcc void @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE12release_taskCs62u4JVtZyFF_13deltalake_gcp(ptr noundef nonnull %i.bk)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtBP_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next4BombINtNtBR_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEECs62u4JVtZyFF_13deltalake_gcp.exit30

bb.v:                                             ; preds = %bb.t
  %i.bq = load atomic i8, ptr %i.bl monotonic, align 1
  %i.br = icmp ne i8 %i.bq, 0
  %i.bs = zext i1 %i.br to i64
  %i.bt = add nuw nsw i64 %.sroa.010.0, %i.bs     ; 2 uses
  %i.bu = atomicrmw xchg ptr %i.f, ptr %i.bm acq_rel, align 8 ; 5 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %.critedge.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bw = load ptr, ptr %i.x, align 8, !nonnull !3, !noundef !3
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %bb.w
  %i.bz = load atomic ptr, ptr %i.by acquire, align 8
  %.not.i31 = icmp eq ptr %i.bz, %i.bx
  br i1 %.not.i31, label %bb.x, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.cb = load i64, ptr %i.ca, align 8, !noundef !3
  %i.cc = add i64 %i.cb, 1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  store i64 %i.cc, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  store atomic ptr %i.bu, ptr %i.ce release, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  store ptr %i.bm, ptr %i.cf, align 8
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE4linkCs62u4JVtZyFF_13deltalake_gcp.exit

.critedge.i:                                      ; preds = %bb.v
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  store i64 1, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  store atomic ptr null, ptr %i.ch release, align 8
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE4linkCs62u4JVtZyFF_13deltalake_gcp.exit

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE4linkCs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %.critedge.i, %bb.y
  %i.ci = icmp ugt i64 %i.bt, 1
  %i.cj = icmp eq i64 %i.bn, %.sroa.0.0.i
  %or.cond = select i1 %i.ci, i1 true, i1 %i.cj
  br i1 %or.cond, label %.thread56, label %bb.z

bb.z:                                             ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE4linkCs62u4JVtZyFF_13deltalake_gcp.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %6

.thread56:                                        ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE4linkCs62u4JVtZyFF_13deltalake_gcp.exit
  %i.ck = load ptr, ptr %i.s, align 8, !nonnull !3, !align !8, !noundef !3
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !nonnull !3, !noundef !3
  %i.cn = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !noundef !3
  call void %i.cm(ptr noundef %i.co)
  store i64 -9223372036854775788, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtBP_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next4BombINtNtBR_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEECs62u4JVtZyFF_13deltalake_gcp.exit30

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtBP_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next4BombINtNtBR_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEECs62u4JVtZyFF_13deltalake_gcp.exit30: ; preds = %bb.u, %.thread56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.i, %bb.af, %bb.ae, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtBP_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next4BombINtNtBR_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEECs62u4JVtZyFF_13deltalake_gcp.exit30
  ret void

bb.ab:                                            ; preds = %bb.ad, %bb.r
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16
  unreachable

.thread:                                          ; preds = %bb.ac, %bb.ad, %bb.r
  %.pn2544 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.ac ], [ %i.bj, %bb.r ], [ %lpad.thr_comm.split-lp, %bb.ad ]
  resume { ptr, i32 } %.pn2544

bb.ac:                                            ; preds = %bb.p
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !187)
  call void @llvm.experimental.noalias.scope.decl(metadata !190)
  %i.cq = load ptr, ptr %i.d, align 8, !alias.scope !193, !nonnull !3, !noundef !3
  %i.cr = atomicrmw sub ptr %i.cq, i64 1 release, align 8, !noalias !193
  %i.cs = icmp eq i64 %i.cr, 1
  br i1 %i.cs, label %bb.ad, label %.thread

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB2z_6future6future6Futurep6OutputINtNtB2z_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB2z_6marker4SendEL_EEEEE9drop_slowB4V_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #17
          to label %.thread unwind label %bb.ab

bb.ae:                                            ; preds = %bb.h
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 1, ptr %i.ct, align 8
  store i64 -9223372036854775789, ptr %0, align 8
  br label %bb.aa

bb.af:                                            ; preds = %bb.h
  store i64 -9223372036854775788, ptr %0, align 8
  br label %bb.aa
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB2d_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [80 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 9 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.h = load atomic ptr, ptr %i.g acquire, align 8 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allB2d_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !3, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.o = load atomic ptr, ptr %i.n acquire, align 8
  %.not.i = icmp eq ptr %i.o, %i.m
  br i1 %.not.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 168
  %i.q = load i64, ptr %i.p, align 8, !noundef !3
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allB2d_.exit

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allB2d_.exit: ; preds = %bb.a, %bb.d
  %.sroa.0.0.i = phi i64 [ %i.q, %bb.d ], [ 0, %bb.a ]
  %i.r = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %2, align 8, !nonnull !3, !align !8, !noundef !3 ; 5 uses
  tail call void @_RNvMNtNtNtCs7cL0Iqqqcdm_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker8register(ptr noundef nonnull align 8 %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %.outer

.outer:                                           ; preds = %bb.ad, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allB2d_.exit
  %.sroa.010.0.ph = phi i64 [ %i.ce, %bb.ad ], [ 0, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allB2d_.exit ]
  %.sroa.08.0.ph = phi i64 [ %i.bv, %bb.ad ], [ 0, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allB2d_.exit ]
  br label %bb.e

bb.e:                                             ; preds = %.outer, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEEB3e_.exit
  %i.y = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = call { i64, ptr } @_RNvMNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queueINtB2_15ReadyToRunQueueINtNtB6_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EE7dequeueB2v_(ptr noundef nonnull align 8 %i.z) ; 2 uses
  %i.ab = extractvalue { i64, ptr } %i.aa, 0
  %i.ac = extractvalue { i64, ptr } %i.aa, 1      ; 6 uses
  switch i64 %i.ab, label %bb.f [
    i64 0, label %bb.g
    i64 1, label %bb.h
    i64 2, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !6, !noundef !3
  %i.af = trunc nuw i64 %i.ae to i1
  br i1 %i.af, label %bb.j, label %bb.n

bb.h:                                             ; preds = %bb.e
  %i.ag = load atomic ptr, ptr %i.g monotonic, align 8
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.ak, label %bb.al

bb.i:                                             ; preds = %bb.e
  %i.ai = load ptr, ptr %i.t, align 8, !nonnull !3, !align !8, !noundef !3
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !3, !noundef !3
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !noundef !3
  call void %i.ak(ptr noundef %i.am)
  store i64 -9223372036854775788, ptr %0, align 8
  br label %bb.ag

bb.j:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !194)
  %i.ao = load ptr, ptr %i.g, align 8, !alias.scope !194, !noundef !3 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 168
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !194, !noundef !3
  %i.ar = add i64 %i.aq, -1
  %i.as = call noundef i64 @_RINvNtCs6Po7BT7Nknu_5alloc4sync11data_offsetINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEB2F_(ptr noundef nonnull %i.ac), !noalias !194
  %i.at = sub nsw i64 0, %i.as
  %i.au = getelementptr inbounds i8, ptr %i.ac, i64 %i.at ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 168 ; 2 uses
  %i.aw = load atomic ptr, ptr %i.av monotonic, align 8, !noalias !194 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 176 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !194, !noundef !3 ; 4 uses
  %i.az = load ptr, ptr %1, align 8, !alias.scope !194, !nonnull !3, !noundef !3
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !194, !nonnull !3, !noundef !3
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store atomic ptr %i.bc, ptr %i.av monotonic, align 8, !noalias !194
  store ptr null, ptr %i.ax, align 8, !noalias !194
  %i.bd = icmp eq ptr %i.aw, null
  br i1 %i.bd, label %.thread4.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 160
  store ptr %i.ay, ptr %i.be, align 8, !noalias !194
  %i.bf = icmp eq ptr %i.ay, null
  br i1 %i.bf, label %bb.l, label %.thread.i

.thread4.i:                                       ; preds = %bb.j
  %i.bg = icmp eq ptr %i.ay, null
  br i1 %i.bg, label %.thread5.i, label %.thread.i

.thread5.i:                                       ; preds = %.thread4.i
  store ptr null, ptr %i.g, align 8, !alias.scope !194
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EE6unlinkB2d_.exit

.thread.i:                                        ; preds = %.thread4.i, %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 152
  store atomic ptr %i.aw, ptr %i.bh monotonic, align 8, !noalias !194
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  store ptr %i.aw, ptr %i.g, align 8, !alias.scope !194
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.thread.i
  %i.bi = phi ptr [ %i.ao, %.thread.i ], [ %i.aw, %bb.l ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 168
  store i64 %i.ar, ptr %i.bj, align 8, !noalias !194
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EE6unlinkB2d_.exit

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EE6unlinkB2d_.exit: ; preds = %.thread5.i, %bb.m
  store ptr %i.au, ptr %i.e, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.au, i64 200
  %i.bl = atomicrmw xchg ptr %i.bk, i8 0 seq_cst, align 1
  %i.bm = icmp eq i8 %i.bl, 0
  br i1 %i.bm, label %bb.p, label %bb.s, !prof !153

end_hunk_0

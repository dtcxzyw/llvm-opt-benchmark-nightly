Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/ech_client.ech_client.d1de0ba1dca76c98-cgu.03?download=true
inline.NumInlined: 1062
inline.NumDeleted: 450
begin_hunk_0_@_RINvNtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered4task9waker_ref12wake_arc_rawINtB4_4TaskNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB1S_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EECsi17nFaBu4HY_10ech_client:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  invoke fastcc void @_RNvXs0_NtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered4taskINtB5_4TaskNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB1v_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00ENtB5_7ArcWake11wake_by_refCsi17nFaBu4HY_10ech_client(ptr nonnull %i.d)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !736
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered4task4TaskNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB2w_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EEECsi17nFaBu4HY_10ech_client.exit.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered4task4TaskNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB23_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EE9drop_slowCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #22
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered4task4TaskNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB2w_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EEECsi17nFaBu4HY_10ech_client.exit.i unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.h = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !741
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %_RNvYINtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered4task4TaskNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB1p_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00ENtB5_7ArcWake4wakeCsi17nFaBu4HY_10ech_client.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered4task4TaskNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB23_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EE9drop_slowCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #22
  br label %_RNvYINtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered4task4TaskNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB1p_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00ENtB5_7ArcWake4wakeCsi17nFaBu4HY_10ech_client.exit

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered4task4TaskNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB2w_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EEECsi17nFaBu4HY_10ech_client.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.e

_RNvYINtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered4task4TaskNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB1p_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00ENtB5_7ArcWake4wakeCsi17nFaBu4HY_10ech_client.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered4task9waker_ref12wake_arc_rawINtB4_4TaskNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB1O_10UdpRequestNtNtNtB1S_7runtime13tokio_runtime20TokioRuntimeProviderENtB1O_7Request4send0EECsi17nFaBu4HY_10ech_client(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = tail call noundef i64 @_RINvNtCs4wP2HXfJTCR_5alloc4sync11data_offsetINtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered4task4TaskNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB1Z_10UdpRequestNtNtNtB23_7runtime13tokio_runtime20TokioRuntimeProviderENtB1Z_7Request4send0EECsi17nFaBu4HY_10ech_client(ptr noundef %0)
  %i.c = sub nsw i64 0, %i.b
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  invoke fastcc void @_RNvXs0_NtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered4taskINtB5_4TaskNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB1r_10UdpRequestNtNtNtB1v_7runtime13tokio_runtime20TokioRuntimeProviderENtB1r_7Request4send0ENtB5_7ArcWake11wake_by_refCsi17nFaBu4HY_10ech_client(ptr nonnull %i.d)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !746
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered4task4TaskNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB2s_10UdpRequestNtNtNtB2w_7runtime13tokio_runtime20TokioRuntimeProviderENtB2s_7Request4send0EEECsi17nFaBu4HY_10ech_client.exit.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered4task4TaskNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB1Z_10UdpRequestNtNtNtB23_7runtime13tokio_runtime20TokioRuntimeProviderENtB1Z_7Request4send0EE9drop_slowCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #22
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered4task4TaskNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB2s_10UdpRequestNtNtNtB2w_7runtime13tokio_runtime20TokioRuntimeProviderENtB2s_7Request4send0EEECsi17nFaBu4HY_10ech_client.exit.i unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.h = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !751
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %_RNvYINtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered4task4TaskNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB1l_10UdpRequestNtNtNtB1p_7runtime13tokio_runtime20TokioRuntimeProviderENtB1l_7Request4send0ENtB5_7ArcWake4wakeCsi17nFaBu4HY_10ech_client.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered4task4TaskNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB1Z_10UdpRequestNtNtNtB23_7runtime13tokio_runtime20TokioRuntimeProviderENtB1Z_7Request4send0EE9drop_slowCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #22
  br label %_RNvYINtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered4task4TaskNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB1l_10UdpRequestNtNtNtB1p_7runtime13tokio_runtime20TokioRuntimeProviderENtB1l_7Request4send0ENtB5_7ArcWake4wakeCsi17nFaBu4HY_10ech_client.exit

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered4task4TaskNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB2s_10UdpRequestNtNtNtB2w_7runtime13tokio_runtime20TokioRuntimeProviderENtB2s_7Request4send0EEECsi17nFaBu4HY_10ech_client.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.e

_RNvYINtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered4task4TaskNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB1l_10UdpRequestNtNtNtB1p_7runtime13tokio_runtime20TokioRuntimeProviderENtB1l_7Request4send0ENtB5_7ArcWake4wakeCsi17nFaBu4HY_10ech_client.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RINvNtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered4task9waker_ref13clone_arc_rawINtB4_4TaskNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB1T_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EECsi17nFaBu4HY_10ech_client(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef i64 @_RINvNtCs4wP2HXfJTCR_5alloc4sync11data_offsetINtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered4task4TaskNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB23_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EECsi17nFaBu4HY_10ech_client(ptr noundef %0)
  %i.b = sub nsw i64 0, %i.a
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_RINvNtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered4task9waker_ref17increase_refcountINtB4_4TaskNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB1X_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EECsi17nFaBu4HY_10ech_client.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

_RINvNtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered4task9waker_ref17increase_refcountINtB4_4TaskNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB1X_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EECsi17nFaBu4HY_10ech_client.exit: ; preds = %bb.a
  %i.f = insertvalue { ptr, ptr } { ptr @7, ptr poison }, ptr %0, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RINvNtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered4task9waker_ref13clone_arc_rawINtB4_4TaskNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB1P_10UdpRequestNtNtNtB1T_7runtime13tokio_runtime20TokioRuntimeProviderENtB1P_7Request4send0EECsi17nFaBu4HY_10ech_client(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef i64 @_RINvNtCs4wP2HXfJTCR_5alloc4sync11data_offsetINtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered4task4TaskNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB1Z_10UdpRequestNtNtNtB23_7runtime13tokio_runtime20TokioRuntimeProviderENtB1Z_7Request4send0EECsi17nFaBu4HY_10ech_client(ptr noundef %0)
  %i.b = sub nsw i64 0, %i.a
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_RINvNtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered4task9waker_ref17increase_refcountINtB4_4TaskNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB1T_10UdpRequestNtNtNtB1X_7runtime13tokio_runtime20TokioRuntimeProviderENtB1T_7Request4send0EECsi17nFaBu4HY_10ech_client.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

_RINvNtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered4task9waker_ref17increase_refcountINtB4_4TaskNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB1T_10UdpRequestNtNtNtB1X_7runtime13tokio_runtime20TokioRuntimeProviderENtB1T_7Request4send0EECsi17nFaBu4HY_10ech_client.exit: ; preds = %bb.a
  %i.f = insertvalue { ptr, ptr } { ptr @8, ptr poison }, ptr %0, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered4task9waker_ref19wake_by_ref_arc_rawINtB4_4TaskNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB1Z_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EECsi17nFaBu4HY_10ech_client(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef i64 @_RINvNtCs4wP2HXfJTCR_5alloc4sync11data_offsetINtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered4task4TaskNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB23_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EECsi17nFaBu4HY_10ech_client(ptr noundef %0)
  %i.b = sub nsw i64 0, %i.a
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  tail call fastcc void @_RNvXs0_NtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered4taskINtB5_4TaskNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB1v_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00ENtB5_7ArcWake11wake_by_refCsi17nFaBu4HY_10ech_client(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered4task9waker_ref19wake_by_ref_arc_rawINtB4_4TaskNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB1V_10UdpRequestNtNtNtB1Z_7runtime13tokio_runtime20TokioRuntimeProviderENtB1V_7Request4send0EECsi17nFaBu4HY_10ech_client(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef i64 @_RINvNtCs4wP2HXfJTCR_5alloc4sync11data_offsetINtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered4task4TaskNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB1Z_10UdpRequestNtNtNtB23_7runtime13tokio_runtime20TokioRuntimeProviderENtB1Z_7Request4send0EECsi17nFaBu4HY_10ech_client(ptr noundef %0)
  %i.b = sub nsw i64 0, %i.a
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  tail call fastcc void @_RNvXs0_NtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered4taskINtB5_4TaskNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB1r_10UdpRequestNtNtNtB1v_7runtime13tokio_runtime20TokioRuntimeProviderENtB1r_7Request4send0ENtB5_7ArcWake11wake_by_refCsi17nFaBu4HY_10ech_client(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsc_NtNtCsgO2xhGITpH9_12futures_util6stream17futures_unorderedINtB6_16FuturesUnorderedNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB1C_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorB1q_E9from_iterINtNtNtB4m_8adapters3map3MapINtCsdhoN4pTjS9m_8smallvec8IntoIterAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtB1E_11name_server10NameServerB2J_EEj2_ENCB1u_s_0EECsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 11 uses
  %i.b = alloca [2048 x i8], align 8              ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !756
  store i64 1, ptr %i.b, align 8, !noalias !756
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.d, align 8, !noalias !756
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 -1 to ptr), ptr %i.e, align 8, !noalias !756
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !756
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2008
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2040
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i, i8 0, i64 32, i1 false), !noalias !756
  store i8 1, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !756
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2041
  store i8 0, ptr %.sroa.10.0..sroa_idx.i, align 1, !noalias !756
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !759
  %i.f = tail call noundef align 8 dereferenceable_or_null(2048) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 16, 2049) 2048, i64 noundef 8) #26, !noalias !759 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered4task4TaskNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB2n_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EEE3newCsi17nFaBu4HY_10ech_client.exit.i, !prof !385

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 2048) #27
          to label %.noexc.i unwind label %bb.c, !noalias !756

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync8ArcInnerINtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered4task4TaskNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB2B_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EEECsi17nFaBu4HY_10ech_client(ptr noundef nonnull align 8 dereferenceable(2048) %i.b) #24
          to label %bb.k unwind label %bb.d, !noalias !756

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !noalias !756
  unreachable

_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered4task4TaskNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB2n_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EEE3newCsi17nFaBu4HY_10ech_client.exit.i: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.f, ptr noundef nonnull align 8 dereferenceable(2048) %i.b, i64 2048, i1 false), !noalias !756
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !756
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !756
  store i64 1, ptr %i.a, align 8, !noalias !756
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.k, align 8, !noalias !756
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %i.l, align 8, !noalias !756
  %.sroa.4.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr null, ptr %.sroa.4.0..sroa_idx10.i, align 8, !noalias !756
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx.i, align 8, !noalias !756
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.j, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !756
  %.sroa.612.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.j, ptr %.sroa.612.0..sroa_idx.i, align 8, !noalias !756
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !762
  %i.m = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 16, 2049) 64, i64 noundef 8) #26, !noalias !762 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %bb.h, !prof !385

bb.e:                                             ; preds = %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered4task4TaskNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB2n_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EEE3newCsi17nFaBu4HY_10ech_client.exit.i
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #27
          to label %.noexc24.i unwind label %bb.f, !noalias !756

.noexc24.i:                                       ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync8ArcInnerINtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB32_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a) #24
          to label %bb.k unwind label %bb.g, !noalias !756

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !noalias !756
  unreachable

bb.h:                                             ; preds = %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered4task4TaskNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB2n_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EEE3newCsi17nFaBu4HY_10ech_client.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false), !noalias !756
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !756
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.m, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtCsdhoN4pTjS9m_8smallvec8IntoIterAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_ENCNCNvMs0_NtB2a_16name_server_poolINtB4B_9PoolStateB35_E8try_send0s_0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered16FuturesUnorderedNCNCB4t_s_00ENCINvXsc_B6f_B6c_INtNtB5D_7collect12FromIteratorB7t_E9from_iterBN_E0ECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.i:                                             ; preds = %bb.k
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.j:                                             ; preds = %bb.k
  resume { ptr, i32 } %eh.lpad-body

bb.k:                                             ; preds = %bb.c, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.o, %bb.f ], [ %i.h, %bb.c ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtCsdhoN4pTjS9m_8smallvec8IntoIterAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_ENCNCNvMs0_NtB2m_16name_server_poolINtB4N_9PoolStateB3h_E8try_send0s_0EECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(72) %1) #24
          to label %bb.j unwind label %bb.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, ptr } @_RNCNvYNtNtNtCskruEhpekJ3V_5tokio3net3udp9UdpSocketNtNtCs5MfxasYgTEl_11hickory_net7runtime12DnsUdpSocket7send_to0Csi17nFaBu4HY_10ech_client(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !range !155, !noundef !15
  switch i8 %i.b, label %default.unreachable19 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable19:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8, !noundef !15
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load <2 x ptr>, ptr %i.c, align 8
  store <2 x ptr> %i.h, ptr %i.g, align 8
  %.sroa.718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.f, ptr %.sroa.718.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.d, ptr %.sroa.8.0..sroa_idx, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #25
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #25
  unreachable

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = invoke { i64, ptr } @_RNvXs0_NtNtCsj6eKBz9Db1c_4core6future7poll_fnINtB5_6PollFnNCNCNvYNtNtNtCskruEhpekJ3V_5tokio3net3udp9UdpSocketNtNtCs5MfxasYgTEl_11hickory_net7runtime12DnsUdpSocket7send_to00ENtNtB7_6future6Future4pollCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %common.ret unwind label %bb.f ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  store i8 2, ptr %i.a, align 8
  resume { ptr, i32 } %i.k

common.ret:                                       ; preds = %bb.e
  %i.l = extractvalue { i64, ptr } %i.j, 0
  %i.m = icmp eq i64 %i.l, 2                      ; 2 uses
  %. = select i1 %i.m, i8 3, i8 1
  %.11 = select i1 %i.m, { i64, ptr } { i64 2, ptr undef }, { i64, ptr } %i.j
  store i8 %., ptr %i.a, align 8
  ret { i64, ptr } %.11
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvYNtNtNtCskruEhpekJ3V_5tokio3net3udp9UdpSocketNtNtCs5MfxasYgTEl_11hickory_net7runtime12DnsUdpSocket9recv_from0Csi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !range !155, !noundef !15
  switch i8 %i.c, label %default.unreachable9 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable9:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !15
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load <2 x ptr>, ptr %1, align 8
  store <2 x ptr> %i.g, ptr %i.f, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.e, ptr %.sroa.8.0..sroa_idx, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #25
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #25
  unreachable

bb.e:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_RNvXs0_NtNtCsj6eKBz9Db1c_4core6future7poll_fnINtB5_6PollFnNCNCNvYNtNtNtCskruEhpekJ3V_5tokio3net3udp9UdpSocketNtNtCs5MfxasYgTEl_11hickory_net7runtime12DnsUdpSocket9recv_from00ENtNtB7_6future6Future4pollCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i8 2, ptr %i.b, align 8
  resume { ptr, i32 } %i.i

bb.g:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i16, ptr %i.j, align 8, !range !765, !noundef !15
  %i.l = icmp eq i16 %i.k, -1
  br i1 %i.l, label %bb.h, label %bb.i

common.ret:                                       ; preds = %bb.i, %bb.h
  %storemerge = phi i8 [ 1, %bb.i ], [ 3, %bb.h ]
  store i8 %storemerge, ptr %i.b, align 8
  ret void

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 -1, ptr %i.m, align 8
  br label %common.ret

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %common.ret
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCs9RFwvXNxPyg_16hickory_resolver11name_serverINtB2_10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE16record_cancelledCsi17nFaBu4HY_10ech_client(ptr noundef nonnull align 8 %0, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2) unnamed_addr #0 {
bb.a:
  %i.a = add nuw nsw i32 %2, 5000000
  %i.b = icmp samesign ugt i32 %2, 994999999
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %1, -1
  br i1 %i.c, label %bb.e, label %bb.c, !prof !385

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i64 %1, 1
  %i.e = add nsw i32 %2, -995000000
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.i.ph = phi i32 [ %i.a, %bb.a ], [ %i.e, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ %1, %bb.a ], [ %i.d, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @_RNvMs3_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtB5_12DecayingSrtt6record(ptr noundef nonnull align 8 %i.f, i64 noundef %.sroa.0.0.i.ph, i32 noundef %.sroa.4.0.i.ph)
  ret void

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMNtNtNtCskruEhpekJ3V_5tokio7runtime4task4listINtB2_10OwnedTasksINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEE10bind_innerCsi17nFaBu4HY_10ech_client(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [40 x i8], align 8                ; 8 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  store ptr %1, ptr %i.f, align 8
  store ptr %2, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !range !766, !noundef !15
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.h, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !noalias !767, !nonnull !15, !align !51, !noundef !15
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.m = load i64, ptr %i.l, align 8, !noalias !767, !noundef !15
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8, !range !766, !noalias !767, !noundef !15 ; 3 uses
  %i.p = load ptr, ptr %0, align 8, !noalias !767, !nonnull !15, !noundef !15
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
begin_hunk_1_@_RNvMs3_NtNtNtCs4okMlIQ9Z13_2h25proto7streams5storeINtB5_5QueueNtNtB7_6stream8NextSendE4pushCsi17nFaBu4HY_10ech_client:bb.a
bb.h:                                             ; preds = %bb.g
  br i1 %i.ag, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ah = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs3_NtNtNtCs4okMlIQ9Z13_2h25proto7streams5storeINtB7_5QueuepE4pushs1_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.ah, label %bb.j [
    i8 0, label %bb.l
    i8 1, label %bb.k
    i8 2, label %bb.k
  ], !prof !50

bb.j:                                             ; preds = %bb.i
  %i.ai = call noundef i8 @_RNvMNtCsjpgBhlqJ253_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs3_NtNtNtCs4okMlIQ9Z13_2h25proto7streams5storeINtB7_5QueuepE4pushs1_10___CALLSITE) #22 ; 2 uses
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.i, %bb.j
  %.sroa.036.0 = phi i8 [ %i.ai, %bb.j ], [ %i.ah, %bb.i ], [ %i.ah, %bb.i ]
  %i.ak = load ptr, ptr @_RNvNvMs3_NtNtNtCs4okMlIQ9Z13_2h25proto7streams5storeINtB7_5QueuepE4pushs1_10___CALLSITE, align 8, !nonnull !15, !align !51, !noundef !15
  %i.al = call noundef zeroext i1 @_RNvNtCsiIyHGM5EznH_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ak, i8 noundef %.sroa.036.0)
  br i1 %i.al, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.m, %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 1, ptr %0, align 4
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.an = load <2 x i32>, ptr %i.am, align 8
  %i.ao = shufflevector <2 x i32> %i.an, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  store <4 x i32> %i.ao, ptr %.sroa.441.0..sroa_idx, align 4
  br label %bb.t

bb.m:                                             ; preds = %bb.k
  %i.ap = load ptr, ptr @_RNvNvMs3_NtNtNtCs4okMlIQ9Z13_2h25proto7streams5storeINtB7_5QueuepE4pushs1_10___CALLSITE, align 8, !nonnull !15, !align !51, !noundef !15 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @49, ptr %i.e, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 31 to ptr), ptr %i.ar, align 8
  store ptr %i.e, ptr %i.f, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @10, ptr %i.as, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %.sroa.038.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %.sroa.038.sroa.4.0..sroa_idx, align 8
  %.sroa.038.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %.sroa.038.sroa.5.0..sroa_idx, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.aq, ptr %.sroa.439.0..sroa_idx, align 8
  call void @_RNvMNtCsjpgBhlqJ253_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ap, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.l

bb.n:                                             ; preds = %bb.g
  br i1 %i.ag, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.at = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs3_NtNtNtCs4okMlIQ9Z13_2h25proto7streams5storeINtB7_5QueuepE4pushs0_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.at, label %bb.p [
    i8 0, label %bb.r
    i8 1, label %bb.q
    i8 2, label %bb.q
  ], !prof !50

bb.p:                                             ; preds = %bb.o
  %i.au = call noundef i8 @_RNvMNtCsjpgBhlqJ253_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs3_NtNtNtCs4okMlIQ9Z13_2h25proto7streams5storeINtB7_5QueuepE4pushs0_10___CALLSITE) #22 ; 2 uses
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.o, %bb.p
  %.sroa.026.0 = phi i8 [ %i.au, %bb.p ], [ %i.at, %bb.o ], [ %i.at, %bb.o ]
  %i.aw = load ptr, ptr @_RNvNvMs3_NtNtNtCs4okMlIQ9Z13_2h25proto7streams5storeINtB7_5QueuepE4pushs0_10___CALLSITE, align 8, !nonnull !15, !align !51, !noundef !15
  %i.ax = call noundef zeroext i1 @_RNvNtCsiIyHGM5EznH_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aw, i8 noundef %.sroa.026.0)
  br i1 %i.ax, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.s, %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ba = load ptr, ptr %1, align 8, !nonnull !15, !align !51, !noundef !15
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bc = load <2 x i32>, ptr %i.az, align 4
  store <2 x i32> %i.bc, ptr %i.bb, align 8
  store ptr %i.ba, ptr %i.g, align 8
  %i.bd = load <2 x i32>, ptr %i.ay, align 8
  %i.be = call noundef nonnull align 8 ptr @_RNvXs8_NtNtNtCs4okMlIQ9Z13_2h25proto7streams5storeNtB5_3PtrNtNtNtCsj6eKBz9Db1c_4core3ops5deref8DerefMut9deref_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g) ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 200
  store i32 1, ptr %i.bf, align 8, !alias.scope !796
  %.sroa.4.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %i.be, i64 204
  store <2 x i32> %i.bd, ptr %.sroa.4.0..sroa_idx64, align 4, !alias.scope !796
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bg = load <2 x i32>, ptr %i.ay, align 8
  store <2 x i32> %i.bg, ptr %i.az, align 4
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bh = load ptr, ptr @_RNvNvMs3_NtNtNtCs4okMlIQ9Z13_2h25proto7streams5storeINtB7_5QueuepE4pushs0_10___CALLSITE, align 8, !nonnull !15, !align !51, !noundef !15 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @50, ptr %i.h, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr inttoptr (i64 41 to ptr), ptr %i.bj, align 8
  store ptr %i.h, ptr %i.i, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @10, ptr %i.bk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %.sroa.028.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %.sroa.028.sroa.4.0..sroa_idx, align 8
  %.sroa.028.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1, ptr %.sroa.028.sroa.5.0..sroa_idx, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.bi, ptr %.sroa.429.0..sroa_idx, align 8
  call void @_RNvMNtCsjpgBhlqJ253_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.r

bb.t:                                             ; preds = %bb.x, %bb.y, %bb.u, %bb.v, %bb.w, %bb.l, %bb.r
  %.sroa.0.0 = xor i1 %i.w, true
  ret i1 %.sroa.0.0

bb.u:                                             ; preds = %bb.e
  %i.bl = load atomic i64, ptr @_RNvNtCsjpgBhlqJ253_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %bb.v, label %bb.t

bb.v:                                             ; preds = %bb.u
  %i.bn = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs3_NtNtNtCs4okMlIQ9Z13_2h25proto7streams5storeINtB7_5QueuepE4pushs_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.bn, label %bb.w [
    i8 0, label %bb.t
    i8 1, label %bb.x
    i8 2, label %bb.x
  ], !prof !50

bb.w:                                             ; preds = %bb.v
  %i.bo = call noundef i8 @_RNvMNtCsjpgBhlqJ253_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs3_NtNtNtCs4okMlIQ9Z13_2h25proto7streams5storeINtB7_5QueuepE4pushs_10___CALLSITE) #22 ; 2 uses
  %i.bp = icmp eq i8 %i.bo, 0
  br i1 %i.bp, label %bb.t, label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.v, %bb.w
  %.sroa.016.0 = phi i8 [ %i.bo, %bb.w ], [ %i.bn, %bb.v ], [ %i.bn, %bb.v ]
  %i.bq = load ptr, ptr @_RNvNvMs3_NtNtNtCs4okMlIQ9Z13_2h25proto7streams5storeINtB7_5QueuepE4pushs_10___CALLSITE, align 8, !nonnull !15, !align !51, !noundef !15
  %i.br = call noundef zeroext i1 @_RNvNtCsiIyHGM5EznH_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bq, i8 noundef %.sroa.016.0)
  br i1 %i.br, label %bb.y, label %bb.t

bb.y:                                             ; preds = %bb.x
  %i.bs = load ptr, ptr @_RNvNvMs3_NtNtNtCs4okMlIQ9Z13_2h25proto7streams5storeINtB7_5QueuepE4pushs_10___CALLSITE, align 8, !nonnull !15, !align !51, !noundef !15 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr @51, ptr %i.j, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr inttoptr (i64 37 to ptr), ptr %i.bu, align 8
  store ptr %i.j, ptr %i.k, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @10, ptr %i.bv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.c, align 8
  %.sroa.018.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.k, ptr %.sroa.018.sroa.4.0..sroa_idx, align 8
  %.sroa.018.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 1, ptr %.sroa.018.sroa.5.0..sroa_idx, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.bt, ptr %.sroa.419.0..sroa_idx, align 8
  call void @_RNvMNtCsjpgBhlqJ253_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.t
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCsgO2xhGITpH9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB1B_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00E4pushCsi17nFaBu4HY_10ech_client(ptr noundef nonnull align 8 captures(address, read_provenance) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(1976) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2048 x i8], align 8              ; 12 uses
  %i.b = alloca [1984 x i8], align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1976) %.sroa.42.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1976) %1, i64 1976, i1 false)
  %i.c = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !15, !noundef !15
  %i.f = invoke noundef nonnull ptr @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB2u_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EE9downgradeCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB19_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EECsi17nFaBu4HY_10ech_client(ptr noundef nonnull align 8 %i.b)
          to label %common.resume unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1984) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1984) %i.b, i64 1984, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %i.j, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2008
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2016
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2040
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, i8 0, i64 24, i1 false)
  store i8 1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2041
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 1
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !800
  %i.k = tail call noundef align 8 dereferenceable_or_null(2048) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 16, 2049) 2048, i64 noundef 8) #26, !noalias !800 ; 8 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %bb.g, !prof !385

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 2048) #27
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync8ArcInnerINtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered4task4TaskNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB2B_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EEECsi17nFaBu4HY_10ech_client(ptr noundef nonnull align 8 dereferenceable(2048) %i.a) #24
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.g, %bb.b ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.k, ptr noundef nonnull align 8 dereferenceable(2048) %i.a, i64 2048, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store atomic i8 0, ptr %i.o monotonic, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = atomicrmw xchg ptr %i.q, ptr %i.p acq_rel, align 8 ; 5 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !15, !noundef !15
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 1992
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %i.y = load atomic ptr, ptr %i.x acquire, align 8
  %.not.i = icmp eq ptr %i.y, %i.w
  br i1 %.not.i, label %bb.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 2008
  %i.aa = load i64, ptr %i.z, align 8, !noundef !15
  %i.ab = add i64 %i.aa, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 2024
  store i64 %i.ab, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 2008
  store atomic ptr %i.r, ptr %i.ad release, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 2000
  store ptr %i.p, ptr %i.ae, align 8
  br label %bb.k

.critedge.i:                                      ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 2024
  store i64 1, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 2008
  store atomic ptr null, ptr %i.ag release, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.critedge.i
  %i.ah = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 2032
  store atomic ptr null, ptr %i.ai monotonic, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.ak = atomicrmw xchg ptr %i.aj, ptr %i.p acq_rel, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 2016
  store atomic ptr %i.p, ptr %i.al release, align 8
  ret void

bb.l:                                             ; preds = %bb.b
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCsgO2xhGITpH9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB1x_10UdpRequestNtNtNtB1B_7runtime13tokio_runtime20TokioRuntimeProviderENtB1x_7Request4send0E3newCsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 11 uses
  %i.b = alloca [776 x i8], align 8               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 -1 to ptr), ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 736
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 768
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx, i8 0, i64 32, i1 false)
  store i8 1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 769
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 1
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !803
  %i.e = tail call noundef align 8 dereferenceable_or_null(776) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 16, 2049) 776, i64 noundef 8) #26, !noalias !803 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered4task4TaskNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB2j_10UdpRequestNtNtNtB2n_7runtime13tokio_runtime20TokioRuntimeProviderENtB2j_7Request4send0EEE3newCsi17nFaBu4HY_10ech_client.exit, !prof !385

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 776) #27
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync8ArcInnerINtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered4task4TaskNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB2x_10UdpRequestNtNtNtB2B_7runtime13tokio_runtime20TokioRuntimeProviderENtB2x_7Request4send0EEECsi17nFaBu4HY_10ech_client(ptr noundef nonnull align 8 dereferenceable(776) %i.b) #24
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.n, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered4task4TaskNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB2j_10UdpRequestNtNtNtB2n_7runtime13tokio_runtime20TokioRuntimeProviderENtB2j_7Request4send0EEE3newCsi17nFaBu4HY_10ech_client.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %i.e, ptr noundef nonnull align 8 dereferenceable(776) %i.b, i64 776, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.k, align 8
  %.sroa.4.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr null, ptr %.sroa.4.0..sroa_idx10, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.i, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.i, ptr %.sroa.612.0..sroa_idx, align 8
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !806
  %i.l = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 16, 2049) 64, i64 noundef 8) #26, !noalias !806 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB2K_10UdpRequestNtNtNtB2O_7runtime13tokio_runtime20TokioRuntimeProviderENtB2K_7Request4send0EEE3newCsi17nFaBu4HY_10ech_client.exit, !prof !385

bb.e:                                             ; preds = %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered4task4TaskNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB2j_10UdpRequestNtNtNtB2n_7runtime13tokio_runtime20TokioRuntimeProviderENtB2j_7Request4send0EEE3newCsi17nFaBu4HY_10ech_client.exit
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #27
          to label %.noexc24 unwind label %bb.f

.noexc24:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync8ArcInnerINtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB2Y_10UdpRequestNtNtNtB32_7runtime13tokio_runtime20TokioRuntimeProviderENtB2Y_7Request4send0EEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a) #24
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB2K_10UdpRequestNtNtNtB2O_7runtime13tokio_runtime20TokioRuntimeProviderENtB2K_7Request4send0EEE3newCsi17nFaBu4HY_10ech_client.exit: ; preds = %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered4task4TaskNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB2j_10UdpRequestNtNtNtB2n_7runtime13tokio_runtime20TokioRuntimeProviderENtB2j_7Request4send0EEE3newCsi17nFaBu4HY_10ech_client.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.l, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.l, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.q, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCsgO2xhGITpH9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB1x_10UdpRequestNtNtNtB1B_7runtime13tokio_runtime20TokioRuntimeProviderENtB1x_7Request4send0E4pushCsi17nFaBu4HY_10ech_client(ptr noundef nonnull align 8 captures(address, read_provenance) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(704) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [776 x i8], align 8               ; 12 uses
  %i.b = alloca [712 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(704) %.sroa.42.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(704) %1, i64 704, i1 false)
  %i.c = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !15, !noundef !15
  %i.f = invoke noundef nonnull ptr @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB2q_10UdpRequestNtNtNtB2u_7runtime13tokio_runtime20TokioRuntimeProviderENtB2q_7Request4send0EE9downgradeCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB15_10UdpRequestNtNtNtB19_7runtime13tokio_runtime20TokioRuntimeProviderENtB15_7Request4send0EECsi17nFaBu4HY_10ech_client(ptr noundef nonnull align 8 %i.b)
          to label %common.resume unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(712) %i.b, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %i.j, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 736
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 744
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 768
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, i8 0, i64 24, i1 false)
  store i8 1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 769
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 1
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !809
  %i.k = tail call noundef align 8 dereferenceable_or_null(776) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 16, 2049) 776, i64 noundef 8) #26, !noalias !809 ; 8 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %bb.g, !prof !385

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 776) #27
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync8ArcInnerINtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered4task4TaskNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB2x_10UdpRequestNtNtNtB2B_7runtime13tokio_runtime20TokioRuntimeProviderENtB2x_7Request4send0EEECsi17nFaBu4HY_10ech_client(ptr noundef nonnull align 8 dereferenceable(776) %i.a) #24
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.g, %bb.b ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %i.k, ptr noundef nonnull align 8 dereferenceable(776) %i.a, i64 776, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store atomic i8 0, ptr %i.o monotonic, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = atomicrmw xchg ptr %i.q, ptr %i.p acq_rel, align 8 ; 5 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !15, !noundef !15
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 720
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %i.y = load atomic ptr, ptr %i.x acquire, align 8
  %.not.i = icmp eq ptr %i.y, %i.w
  br i1 %.not.i, label %bb.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 736
  %i.aa = load i64, ptr %i.z, align 8, !noundef !15
  %i.ab = add i64 %i.aa, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 752
  store i64 %i.ab, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 736
  store atomic ptr %i.r, ptr %i.ad release, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 728
  store ptr %i.p, ptr %i.ae, align 8
  br label %bb.k

.critedge.i:                                      ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 752
  store i64 1, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 736
  store atomic ptr null, ptr %i.ag release, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.critedge.i
  %i.ah = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 760
  store atomic ptr null, ptr %i.ai monotonic, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.ak = atomicrmw xchg ptr %i.aj, ptr %i.p acq_rel, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 744
  store atomic ptr %i.p, ptr %i.al release, align 8
  ret void

bb.l:                                             ; preds = %bb.b
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvNtCsl0TPHHzpGH6_5bytes5bytes11static_drop(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvNtCsl0TPHHzpGH6_5bytes5bytes12static_clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.c, align 8
  store ptr @13, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvNtCsl0TPHHzpGH6_5bytes5bytes16static_is_unique(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered4taskINtB5_4TaskNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB1v_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00ENtB5_7ArcWake11wake_by_refCsi17nFaBu4HY_10ech_client(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 3 uses
  %i.c = tail call noundef ptr @_RNvMsK_NtCs4wP2HXfJTCR_5alloc4syncINtB5_4WeakINtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB2v_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EE7upgradeCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b) ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB2X_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EEECsi17nFaBu4HY_10ech_client.exit4, label %bb.d

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB2X_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EEECsi17nFaBu4HY_10ech_client.exit4: ; preds = %bb.a, %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.b:                                             ; preds = %bb.g
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !812)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !815)
  %i.e = load ptr, ptr %i.a, align 8, !alias.scope !818, !nonnull !15, !noundef !15
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !818
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB2X_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EEECsi17nFaBu4HY_10ech_client.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB2u_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EE9drop_slowCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #22
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB2X_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EEECsi17nFaBu4HY_10ech_client.exit unwind label %bb.h

bb.d:                                             ; preds = %bb.a
  store ptr %i.c, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 2041
  store atomic i8 1, ptr %i.h monotonic, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 2040
  %i.j = atomicrmw xchg ptr %i.i, i8 1 seq_cst, align 1
  %.not3 = icmp eq i8 %i.j, 0
  br i1 %.not3, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !819)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !822)
  %i.k = load ptr, ptr %i.a, align 8, !alias.scope !825, !nonnull !15, !noundef !15
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !825
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB2X_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EEECsi17nFaBu4HY_10ech_client.exit4

bb.f:                                             ; preds = %bb.e
  fence acquire
  call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB2u_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EE9drop_slowCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #22
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB2X_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EEECsi17nFaBu4HY_10ech_client.exit4

bb.g:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.a, align 8, !nonnull !15, !noundef !15
  %i.o = getelementptr inbounds nuw i8, ptr %.0.val, i64 2032
  store atomic ptr null, ptr %i.o monotonic, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.q = atomicrmw xchg ptr %i.p, ptr %i.b acq_rel, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 2016
  store atomic ptr %i.b, ptr %i.r release, align 8
  %i.s = load ptr, ptr %i.a, align 8, !nonnull !15, !noundef !15
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  invoke void @_RNvMNtNtNtCsjeNDyKnSdUK_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.t)
          to label %bb.e unwind label %bb.b

bb.h:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB2X_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EEECsi17nFaBu4HY_10ech_client.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered4taskINtB5_4TaskNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB1r_10UdpRequestNtNtNtB1v_7runtime13tokio_runtime20TokioRuntimeProviderENtB1r_7Request4send0ENtB5_7ArcWake11wake_by_refCsi17nFaBu4HY_10ech_client(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
end_hunk_1
begin_hunk_2_@_RNvYINtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs9RFwvXNxPyg_16hickory_resolver16name_server_poolINtB1v_9PoolStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00ENtNtB7_6stream9StreamExt15poll_next_unpinCsi17nFaBu4HY_10ech_client:bb.a
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !noalias !1056
  unreachable

bb.ib:                                            ; preds = %bb.hy
  store i64 1, ptr %i.ya, align 8, !noalias !1056
  %.sroa.4.0..sroa_idx.i242.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ya, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i242.i.i.i.i, align 8, !noalias !1056
  %.sroa.5.0..sroa_idx.i243.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ya, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx.i243.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !noalias !1056
  %i.yd = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1656
  store i8 %i.xy, ptr %i.yd, align 8, !alias.scope !1049, !noalias !1057
  %i.ye = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ye, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.w, i64 24, i1 false), !alias.scope !1058, !noalias !916
  store ptr %i.ya, ptr %i.xz, align 8, !alias.scope !1049, !noalias !1057
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1054
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !920
  %i.yf = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1618
  store i8 1, ptr %i.yf, align 2, !noalias !916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !920
  %i.yg = atomicrmw add ptr %i.ya, i64 1 monotonic, align 8, !noalias !922
  %i.yh = icmp slt i64 %i.yg, 0
  br i1 %i.yh, label %bb.ic, label %bb.id

bb.ic:                                            ; preds = %bb.ib
  call void @llvm.trap()
  unreachable

bb.id:                                            ; preds = %bb.ib
  %i.yi = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1664
  store ptr %i.ya, ptr %i.yi, align 8, !noalias !916
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !920
  %i.yj = load ptr, ptr %i.wr, align 8, !noalias !916, !nonnull !15, !align !51, !noundef !15
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 56
  %i.yl = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1672
  store ptr %i.yk, ptr %i.yl, align 8, !noalias !916
  %i.ym = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1680
  store i64 -1, ptr %i.ym, align 8, !noalias !916
  br label %bb.ii

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit263.i.i.i.i: ; preds = %bb.it, %.body258.i.i.i.i, %bb.in, %bb.ij
  %.pn68.i.i.i.i = phi { ptr, i32 } [ %i.zv, %bb.it ], [ %i.zf, %bb.ij ], [ %i.zh, %bb.in ], [ %i.zp, %.body258.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !920
  %i.yn = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1664 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1059)
  call void @llvm.experimental.noalias.scope.decl(metadata !1062)
  %i.yo = load ptr, ptr %i.yn, align 8, !alias.scope !1065, !noalias !916, !nonnull !15, !noundef !15
  %i.yp = atomicrmw sub ptr %i.yo, i64 1 release, align 8, !noalias !1066
  %i.yq = icmp eq i64 %i.yp, 1
  br i1 %i.yq, label %bb.ie, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver11name_server14ConnectionMetaEECsi17nFaBu4HY_10ech_client.exit.i.i.i.i

bb.ie:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit263.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver11name_server14ConnectionMetaE9drop_slowCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.yn) #22
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver11name_server14ConnectionMetaEECsi17nFaBu4HY_10ech_client.exit.i.i.i.i unwind label %bb.ar, !noalias !922

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver11name_server14ConnectionMetaEECsi17nFaBu4HY_10ech_client.exit.i.i.i.i: ; preds = %bb.ie, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit263.i.i.i.i
  %i.yr = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1618
  %i.ys = load i8, ptr %i.yr, align 2, !range !147, !noalias !916, !noundef !15
  %i.yt = trunc nuw i8 %i.ys to i1
  br i1 %i.yt, label %bb.iu, label %bb.if

.body245.i.i.i.i:                                 ; preds = %bb.hx, %bb.hv
  %.pn62.i.i.i.i = phi { ptr, i32 } [ %i.xw, %bb.hv ], [ %lpad.phi.i, %bb.hx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !920
  br label %bb.if

bb.if:                                            ; preds = %bb.iu, %.body245.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver11name_server14ConnectionMetaEECsi17nFaBu4HY_10ech_client.exit.i.i.i.i
  %i.yu = phi ptr [ %i.zb, %bb.iu ], [ %i.zb, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver11name_server14ConnectionMetaEECsi17nFaBu4HY_10ech_client.exit.i.i.i.i ], [ %i.wq, %.body245.i.i.i.i ]
  %i.yv = phi ptr [ %i.zc, %bb.iu ], [ %i.zc, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver11name_server14ConnectionMetaEECsi17nFaBu4HY_10ech_client.exit.i.i.i.i ], [ %i.wr, %.body245.i.i.i.i ]
  %.pn68.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn68.i.i.i.i, %bb.iu ], [ %.pn68.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver11name_server14ConnectionMetaEECsi17nFaBu4HY_10ech_client.exit.i.i.i.i ], [ %.pn62.i.i.i.i, %.body245.i.i.i.i ]
  %i.yw = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1618
  store i8 0, ptr %i.yw, align 2, !noalias !916
  br label %bb.ih

bb.ig:                                            ; preds = %.body232.i.i.i.i
  %i.yx = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1632
  invoke void @_RNvXsf_NtNtCsgO2xhGITpH9_12futures_util4lock5mutexINtB5_15MutexLockFutureNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.yx)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateEECsi17nFaBu4HY_10ech_client.exit250.i.i.i.i unwind label %bb.ar, !noalias !922

bb.ih:                                            ; preds = %bb.if, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateEECsi17nFaBu4HY_10ech_client.exit250.i.i.i.i
  %i.yy = phi ptr [ %i.yu, %bb.if ], [ %i.ww, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateEECsi17nFaBu4HY_10ech_client.exit250.i.i.i.i ]
  %i.yz = phi ptr [ %i.yv, %bb.if ], [ %i.wx, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateEECsi17nFaBu4HY_10ech_client.exit250.i.i.i.i ]
  %.pn68.pn.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn68.pn.pn.i.i.i.i, %bb.if ], [ %.pn60.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateEECsi17nFaBu4HY_10ech_client.exit250.i.i.i.i ]
  %i.za = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1576
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs5MfxasYgTEl_11hickory_net4xfer25BufDnsRequestStreamHandleNtNtNtBG_7runtime13tokio_runtime20TokioRuntimeProviderEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.za)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit.i.i.i.i unwind label %bb.ar, !noalias !922

bb.ii:                                            ; preds = %bb.id, %bb.ag
  %i.zb = phi ptr [ %i.wq, %bb.id ], [ %.phi.trans.insert.i.i.i, %bb.ag ] ; 4 uses
  %i.zc = phi ptr [ %i.wr, %bb.id ], [ %i.gk, %bb.ag ] ; 3 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1672 ; 3 uses
  %i.ze = invoke noundef align 8 ptr @_RNvXse_NtNtCsgO2xhGITpH9_12futures_util4lock5mutexINtB5_15MutexLockFutureINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEENtNtNtCsj6eKBz9Db1c_4core6future6future6Future4pollCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.zd, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bf)
          to label %bb.ik unwind label %bb.ij, !noalias !922 ; 5 uses

bb.ij:                                            ; preds = %bb.ii
  %i.zf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsf_NtNtCsgO2xhGITpH9_12futures_util4lock5mutexINtB5_15MutexLockFutureINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.zd)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit263.i.i.i.i unwind label %bb.ar, !noalias !922

bb.ik:                                            ; preds = %bb.ii
  %i.zg = icmp eq ptr %i.ze, null
  br i1 %i.zg, label %bb.il, label %bb.im

bb.il:                                            ; preds = %bb.ik
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !920
  br label %bb.iw

bb.im:                                            ; preds = %bb.ik
  store ptr %i.ze, ptr %i.v, align 8, !noalias !920
  invoke void @_RNvXsf_NtNtCsgO2xhGITpH9_12futures_util4lock5mutexINtB5_15MutexLockFutureINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.zd)
          to label %bb.io unwind label %bb.in, !noalias !922

bb.in:                                            ; preds = %bb.im
  %i.zh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit263.i.i.i.i

bb.io:                                            ; preds = %bb.im
  %i.zi = getelementptr inbounds nuw i8, ptr %i.ze, i64 56 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !920
  %i.zj = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1618 ; 2 uses
  store i8 0, ptr %i.zj, align 2, !noalias !916
  %i.zk = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1624
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.u, ptr noundef nonnull align 8 dereferenceable(40) %i.zk, i64 40, i1 false), !noalias !916
  %i.zl = getelementptr inbounds nuw i8, ptr %i.ze, i64 72 ; 2 uses
  %i.zm = load i64, ptr %i.zl, align 8, !alias.scope !1067, !noalias !1072, !noundef !15 ; 3 uses
  %i.zn = load i64, ptr %i.zi, align 8, !range !152, !alias.scope !1067, !noalias !1072, !noundef !15
  %i.zo = icmp eq i64 %i.zm, %i.zn
  br i1 %i.zo, label %bb.ip, label %bb.is

bb.ip:                                            ; preds = %bb.io
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE8grow_oneCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.zi)
          to label %bb.is unwind label %bb.iq, !noalias !1072

bb.iq:                                            ; preds = %bb.ip
  %i.zp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.u) #24
          to label %.body258.i.i.i.i unwind label %bb.ir, !noalias !922

bb.ir:                                            ; preds = %bb.iq
  %i.zq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !noalias !922
  unreachable

.body258.i.i.i.i:                                 ; preds = %bb.iq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !920
  invoke void @_RNvXsi_NtNtCsgO2xhGITpH9_12futures_util4lock5mutexINtB5_10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit263.i.i.i.i unwind label %bb.ar, !noalias !922

bb.is:                                            ; preds = %bb.ip, %bb.io
  %i.zr = getelementptr inbounds nuw i8, ptr %i.ze, i64 64
  %i.zs = load ptr, ptr %i.zr, align 8, !alias.scope !1067, !noalias !1072, !nonnull !15, !noundef !15
  %i.zt = getelementptr inbounds nuw [40 x i8], ptr %i.zs, i64 %i.zm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.zt, ptr noundef nonnull align 8 dereferenceable(40) %i.u, i64 40, i1 false), !noalias !922
  %i.zu = add i64 %i.zm, 1
  store i64 %i.zu, ptr %i.zl, align 8, !alias.scope !1067, !noalias !1072
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !920
  invoke void @_RNvXsi_NtNtCsgO2xhGITpH9_12futures_util4lock5mutexINtB5_10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit261.i.i.i.i unwind label %bb.it, !noalias !922

bb.it:                                            ; preds = %bb.is
  %i.zv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit263.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit261.i.i.i.i: ; preds = %bb.is
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !920
  %i.zw = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1576
  %i.zx = load <2 x ptr>, ptr %i.zw, align 8, !noalias !916
  %.sroa.5363.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1592
  %.sroa.5363.0.copyload.i.i.i.i = load i64, ptr %.sroa.5363.0..sroa_idx.i.i.i.i, align 8, !noalias !916
  %i.zy = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1664
  %i.zz = load ptr, ptr %i.zy, align 8, !noalias !916, !nonnull !15, !noundef !15
  %i.aaa = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1617
  %i.aab = load i8, ptr %i.aaa, align 1, !range !155, !noalias !916, !noundef !15
  store i8 0, ptr %i.zj, align 2, !noalias !916
  br label %bb.ix

bb.iu:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver11name_server14ConnectionMetaEECsi17nFaBu4HY_10ech_client.exit.i.i.i.i
  %i.aac = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1624
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(40) %i.aac) #24
          to label %bb.if unwind label %bb.ar, !noalias !922

bb.iv:                                            ; preds = %bb.aj, %bb.ai
  %i.aad = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.iw:                                            ; preds = %bb.il, %bb.hq, %bb.gt, %bb.gd, %bb.dm, %bb.cp, %bb.bc, %bb.am
  %i.aae = phi ptr [ %i.gw, %bb.am ], [ %i.ic, %bb.bc ], [ %i.nl, %bb.cp ], [ %i.pc, %bb.dm ], [ %i.ro, %bb.gd ], [ %i.vs, %bb.gt ], [ %i.xf, %bb.hq ], [ %i.zb, %bb.il ]
  %.sink.i.ph.i.i.i = phi i8 [ 3, %bb.am ], [ 4, %bb.bc ], [ 5, %bb.cp ], [ 6, %bb.dm ], [ 7, %bb.gd ], [ 8, %bb.gt ], [ 9, %bb.hq ], [ 10, %bb.il ]
  store i8 %.sink.i.ph.i.i.i, ptr %i.aae, align 1, !noalias !916
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.sroa.0.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5342.sroa.3.i.i.i.i)
  br label %.thread.i28.i

bb.ix:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit261.i.i.i.i, %bb.hf, %bb.gn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateEECsi17nFaBu4HY_10ech_client.exit183.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateEECsi17nFaBu4HY_10ech_client.exit.i.i.i.i
  %i.aaf = phi ptr [ %i.nl, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateEECsi17nFaBu4HY_10ech_client.exit183.i.i.i.i ], [ %i.zb, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit261.i.i.i.i ], [ %i.ic, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateEECsi17nFaBu4HY_10ech_client.exit.i.i.i.i ], [ %i.vs, %bb.hf ], [ %i.uv, %bb.gn ]
  %i.aag = phi ptr [ %i.nm, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateEECsi17nFaBu4HY_10ech_client.exit183.i.i.i.i ], [ %i.zc, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit261.i.i.i.i ], [ %i.id, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateEECsi17nFaBu4HY_10ech_client.exit.i.i.i.i ], [ %i.vt, %bb.hf ], [ %i.uw, %bb.gn ] ; 2 uses
  %.sroa.15.sroa.0.0.i.i.i.i = phi i64 [ %.sroa.17.sroa.11.0.copyload.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateEECsi17nFaBu4HY_10ech_client.exit183.i.i.i.i ], [ %.sroa.5363.0.copyload.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit261.i.i.i.i ], [ %.sroa.06.sroa.6.0.copyload.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateEECsi17nFaBu4HY_10ech_client.exit.i.i.i.i ], [ %.sroa.3.sroa.6.0.copyload.i.i.i.i, %bb.hf ], [ %.sroa.14334.sroa.0.0.copyload.i.i.i.i, %bb.gn ] ; 2 uses
  %.sroa.19.0.i.i.i.i = phi i8 [ %.sroa.17.sroa.13.0.copyload.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateEECsi17nFaBu4HY_10ech_client.exit183.i.i.i.i ], [ %i.aab, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit261.i.i.i.i ], [ %i.md, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateEECsi17nFaBu4HY_10ech_client.exit.i.i.i.i ], [ %.sroa.5342.sroa.2.0.copyload.i.i.i.i, %bb.hf ], [ %.sroa.14334.sroa.9.0.copyload.i.i.i.i, %bb.gn ] ; 2 uses
  %.sroa.16.0.i.i.i.i = phi ptr [ %.sroa.17.sroa.12.0.copyload.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateEECsi17nFaBu4HY_10ech_client.exit183.i.i.i.i ], [ %i.zz, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit261.i.i.i.i ], [ %.val110.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateEECsi17nFaBu4HY_10ech_client.exit.i.i.i.i ], [ %.sroa.5342.sroa.0.0.copyload.i.i.i.i, %bb.hf ], [ %.sroa.14334.sroa.8.0.copyload.i.i.i.i, %bb.gn ] ; 3 uses
  %.sroa.0354.0.i.i.i.i = phi i8 [ 7, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateEECsi17nFaBu4HY_10ech_client.exit183.i.i.i.i ], [ -1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit261.i.i.i.i ], [ -1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateEECsi17nFaBu4HY_10ech_client.exit.i.i.i.i ], [ %i.vw, %bb.hf ], [ %i.vf, %bb.gn ] ; 2 uses
  %i.aah = phi <2 x ptr> [ %i.ot, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateEECsi17nFaBu4HY_10ech_client.exit183.i.i.i.i ], [ %i.zx, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit261.i.i.i.i ], [ %i.me, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateEECsi17nFaBu4HY_10ech_client.exit.i.i.i.i ], [ %i.vy, %bb.hf ], [ %i.vo, %bb.gn ] ; 2 uses
  store i8 1, ptr %i.aaf, align 1, !noalias !916
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.sroa.0.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5342.sroa.3.i.i.i.i)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMNtCs9RFwvXNxPyg_16hickory_resolver11name_serverINtBG_10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE20connected_mut_client0ECsi17nFaBu4HY_10ech_client(ptr noundef nonnull align 8 %i.aag)
          to label %bb.iz unwind label %bb.iy, !noalias !921

bb.iy:                                            ; preds = %bb.ix
  %i.aai = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs5MfxasYgTEl_11hickory_net4xfer12dns_exchange11DnsExchangeNtNtNtBI_7runtime13tokio_runtime20TokioRuntimeProviderEECsi17nFaBu4HY_10ech_client.exit.i.i.i

bb.iz:                                            ; preds = %bb.ix
  %.not.i103.i.i.i = icmp eq i8 %.sroa.0354.0.i.i.i.i, -1
  br i1 %.not.i103.i.i.i, label %bb.ja, label %bb.ji

bb.ja:                                            ; preds = %bb.iz
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.16.0.i.i.i.i) ]
  %i.aaj = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1312 ; 2 uses
  store <2 x ptr> %i.aah, ptr %i.aaj, align 8, !noalias !911
  %.sroa.0.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1328
  store i64 %.sroa.15.sroa.0.0.i.i.i.i, ptr %.sroa.0.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !911
  %i.aak = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1336
  store ptr %.sroa.16.0.i.i.i.i, ptr %i.aak, align 8, !noalias !911
  %i.aal = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1538
  store i8 %.sroa.19.0.i.i.i.i, ptr %i.aal, align 2, !noalias !911
  %i.aam = invoke { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant3now()
          to label %bb.je unwind label %bb.jd, !noalias !921 ; 2 uses

bb.jb:                                            ; preds = %bb.lv, %bb.jd
  %.pn54.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn54.pn.pn.pn.i.i.i, %bb.lv ], [ %i.aar, %bb.jd ] ; 2 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1336 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1075)
  call void @llvm.experimental.noalias.scope.decl(metadata !1078)
  %i.aao = load ptr, ptr %i.aan, align 8, !alias.scope !1081, !noalias !911, !nonnull !15, !noundef !15
  %i.aap = atomicrmw sub ptr %i.aao, i64 1 release, align 8, !noalias !1082
  %i.aaq = icmp eq i64 %i.aap, 1
  br i1 %i.aaq, label %bb.jc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver11name_server14ConnectionMetaEECsi17nFaBu4HY_10ech_client.exit.i.i.i

bb.jc:                                            ; preds = %bb.jb
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver11name_server14ConnectionMetaE9drop_slowCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aan) #22
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver11name_server14ConnectionMetaEECsi17nFaBu4HY_10ech_client.exit.i.i.i unwind label %bb.jj, !noalias !921

bb.jd:                                            ; preds = %bb.ja
  %i.aar = landingpad { ptr, i32 }
          cleanup
  br label %bb.jb

bb.je:                                            ; preds = %bb.ja
  %i.aas = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1344
  %i.aat = extractvalue { i64, i32 } %i.aam, 0
  %i.aau = extractvalue { i64, i32 } %i.aam, 1
  store i64 %i.aat, ptr %i.aas, align 8, !noalias !911
  %i.aav = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1352
  store i32 %i.aau, ptr %i.aav, align 8, !noalias !911
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !1042
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !1042
  %i.aaw = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1539
  store i8 0, ptr %i.aaw, align 1, !noalias !911
  %i.aax = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1712
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.bc, ptr noundef nonnull align 8 dereferenceable(272) %i.aax, i64 272, i1 false), !noalias !911
  invoke void @_RNvXs0_NtNtCs5MfxasYgTEl_11hickory_net4xfer12dns_exchangeINtB5_11DnsExchangeNtNtNtB9_7runtime13tokio_runtime20TokioRuntimeProviderENtNtB7_10dns_handle9DnsHandle4sendCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.bd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aaj, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(272) %i.bc)
          to label %bb.jg unwind label %bb.jf, !noalias !921

bb.jf:                                            ; preds = %bb.je
  %i.aay = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !1042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !1042
  br label %bb.jh

bb.jg:                                            ; preds = %bb.je
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !1042
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.be, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.bd, i64 104, i1 false), !noalias !1042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !1042
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.aag, ptr noundef nonnull align 8 dereferenceable(104) %i.be, i64 104, i1 false), !noalias !911
  br label %bb.jk

bb.jh:                                            ; preds = %bb.jp, %bb.jl, %bb.jf
  %.pn20.i.i.i = phi { ptr, i32 } [ %i.abp, %bb.jp ], [ %i.abj, %bb.jl ], [ %i.aay, %bb.jf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  br label %bb.lv

bb.ji:                                            ; preds = %bb.iz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8246.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.i.i.i.i, i64 7, i1 false), !noalias !1042
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.14274.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.17.sroa.14.i.i.i.i, i64 31, i1 false), !noalias !1044
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs5MfxasYgTEl_11hickory_net4xfer12dns_exchange11DnsExchangeNtNtNtBI_7runtime13tokio_runtime20TokioRuntimeProviderEECsi17nFaBu4HY_10ech_client.exit121.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs5MfxasYgTEl_11hickory_net4xfer12dns_exchange11DnsExchangeNtNtNtBI_7runtime13tokio_runtime20TokioRuntimeProviderEECsi17nFaBu4HY_10ech_client.exit121.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver11name_server14ConnectionMetaEECsi17nFaBu4HY_10ech_client.exit107.i.i.i, %bb.ji
  %.sroa.0240.0.i.i.i = phi i64 [ -1, %bb.ji ], [ %.sroa.0295.0.copyload.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver11name_server14ConnectionMetaEECsi17nFaBu4HY_10ech_client.exit107.i.i.i ] ; 2 uses
  %.sroa.5242.0.i.i.i = phi i8 [ %.sroa.0354.0.i.i.i.i, %bb.ji ], [ %.sroa.4296.0.copyload.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver11name_server14ConnectionMetaEECsi17nFaBu4HY_10ech_client.exit107.i.i.i ] ; 2 uses
  %.sroa.11259.0.i.i.i = phi i64 [ %.sroa.15.sroa.0.0.i.i.i.i, %bb.ji ], [ %.sroa.8300.0.copyload.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver11name_server14ConnectionMetaEECsi17nFaBu4HY_10ech_client.exit107.i.i.i ] ; 2 uses
  %.sroa.12264.0.i.i.i = phi ptr [ %.sroa.16.0.i.i.i.i, %bb.ji ], [ %.sroa.9301.0.copyload.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver11name_server14ConnectionMetaEECsi17nFaBu4HY_10ech_client.exit107.i.i.i ] ; 2 uses
  %.sroa.13269.0.i.i.i = phi i8 [ %.sroa.19.0.i.i.i.i, %bb.ji ], [ %.sroa.10302.0.copyload.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver11name_server14ConnectionMetaEECsi17nFaBu4HY_10ech_client.exit107.i.i.i ] ; 2 uses
  %i.aaz = phi <2 x ptr> [ %i.aah, %bb.ji ], [ %i.acp, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver11name_server14ConnectionMetaEECsi17nFaBu4HY_10ech_client.exit107.i.i.i ] ; 2 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1539 ; 2 uses
  %i.abb = load i8, ptr %i.aba, align 1, !range !147, !noalias !911, !noundef !15
  %i.abc = trunc nuw i8 %i.abb to i1
  br i1 %i.abc, label %bb.mo, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op11dns_request10DnsRequestECsi17nFaBu4HY_10ech_client.exit.i.i.i

.body.i.i.i:                                      ; preds = %bb.iv, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit.i.i.i.i
  %i.abd = phi ptr [ %i.hs, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit.i.i.i.i ], [ %i.gk, %bb.iv ]
  %.pn12.i.i.i = phi { ptr, i32 } [ %.pn84.pn.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server15ConnectionStateNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsi17nFaBu4HY_10ech_client.exit.i.i.i.i ], [ %i.aad, %bb.iv ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMNtCs9RFwvXNxPyg_16hickory_resolver11name_serverINtBG_10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE20connected_mut_client0ECsi17nFaBu4HY_10ech_client(ptr noundef nonnull align 8 %i.abd) #24
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs5MfxasYgTEl_11hickory_net4xfer12dns_exchange11DnsExchangeNtNtNtBI_7runtime13tokio_runtime20TokioRuntimeProviderEECsi17nFaBu4HY_10ech_client.exit.i.i.i unwind label %bb.jj, !noalias !921

bb.jj:                                            ; preds = %bb.op, %bb.oo, %bb.on, %bb.ok, %bb.og, %bb.nt, %bb.nr, %bb.nq, %bb.nl, %bb.mx, %bb.mu, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver11name_server14ConnectionMetaEECsi17nFaBu4HY_10ech_client.exit.i.i.i, %bb.mi, %bb.lm, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateEECsi17nFaBu4HY_10ech_client.exit150.i.i.i, %bb.kh, %bb.jl, %.body.i.i.i, %bb.jc
  %i.abe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !noalias !921
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs5MfxasYgTEl_11hickory_net4xfer12dns_exchange11DnsExchangeNtNtNtBI_7runtime13tokio_runtime20TokioRuntimeProviderEECsi17nFaBu4HY_10ech_client.exit.i.i.i: ; preds = %bb.mm, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver11name_server14ConnectionMetaEECsi17nFaBu4HY_10ech_client.exit.i.i.i, %.body.i.i.i, %bb.iy
  %.pn63.pn.i.i.i = phi { ptr, i32 } [ %.pn61.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver11name_server14ConnectionMetaEECsi17nFaBu4HY_10ech_client.exit.i.i.i ], [ %i.agr, %bb.mm ], [ %.pn12.i.i.i, %.body.i.i.i ], [ %i.aai, %bb.iy ] ; 2 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1539
  %i.abg = load i8, ptr %i.abf, align 1, !range !147, !noalias !911, !noundef !15
  %i.abh = trunc nuw i8 %i.abg to i1
  br i1 %i.abh, label %bb.op, label %.body124.i.i.i

bb.jk:                                            ; preds = %bb.jg, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !1042
  %i.abi = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1544 ; 8 uses
  invoke void @_RNvXsb_NtCs5MfxasYgTEl_11hickory_net4xferINtB5_17FirstAnswerFutureINtNtB5_12dns_exchange15DnsExchangeSendNtNtNtB7_7runtime13tokio_runtime20TokioRuntimeProviderEENtNtNtCsj6eKBz9Db1c_4core6future6future6Future4pollCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.bb, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.abi, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bf)
          to label %bb.jm unwind label %bb.jl, !noalias !921

bb.jl:                                            ; preds = %bb.jk
  %i.abj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !1042
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs5MfxasYgTEl_11hickory_net4xfer17FirstAnswerFutureINtNtBE_12dns_exchange15DnsExchangeSendNtNtNtBG_7runtime13tokio_runtime20TokioRuntimeProviderEEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(104) %i.abi) #24
          to label %bb.jh unwind label %bb.jj, !noalias !921

bb.jm:                                            ; preds = %bb.jk
  %i.abk = load i64, ptr %i.bb, align 8, !range !977, !noalias !1042, !noundef !15
  %i.abl = icmp eq i64 %i.abk, -2
  br i1 %i.abl, label %bb.jn, label %bb.jo

bb.jn:                                            ; preds = %bb.jm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !1042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  br label %.thread.i28.i

bb.jo:                                            ; preds = %bb.jm
  %i.abm = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1360 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.abm, ptr noundef nonnull align 8 dereferenceable(176) %i.bb, i64 176, i1 false), !noalias !911
  %i.abn = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1542 ; 2 uses
  store i8 1, ptr %i.abn, align 2, !noalias !911
  %i.abo = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1543 ; 2 uses
  store i8 1, ptr %i.abo, align 1, !noalias !911
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !1042
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs5MfxasYgTEl_11hickory_net4xfer17FirstAnswerFutureINtNtBE_12dns_exchange15DnsExchangeSendNtNtNtBG_7runtime13tokio_runtime20TokioRuntimeProviderEEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(104) %i.abi)
          to label %bb.jq unwind label %bb.jp, !noalias !921

bb.jp:                                            ; preds = %bb.jo
  %i.abp = landingpad { ptr, i32 }
          cleanup
  br label %bb.jh

bb.jq:                                            ; preds = %bb.jo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  %i.abq = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1344
  %i.abr = invoke { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant7elapsed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.abq)
          to label %bb.js unwind label %bb.jr, !noalias !921 ; 2 uses

bb.jr:                                            ; preds = %bb.jq
  %i.abs = landingpad { ptr, i32 }
          cleanup
  br label %bb.lu

bb.js:                                            ; preds = %bb.jq
  %i.abt = extractvalue { i64, i32 } %i.abr, 0    ; 4 uses
  %i.abu = extractvalue { i64, i32 } %i.abr, 1    ; 4 uses
  %i.abv = load i64, ptr %i.abm, align 8, !range !192, !noalias !911, !noundef !15
  %i.abw = icmp eq i64 %i.abv, -1
  br i1 %i.abw, label %.noexc.i.i.i, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !1042
  store i8 0, ptr %i.abn, align 2, !noalias !911
  %i.abx = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1541 ; 2 uses
  store i8 1, ptr %i.abx, align 1, !noalias !911
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.ba, ptr noundef nonnull align 8 dereferenceable(176) %i.abm, i64 176, i1 false), !noalias !911
  %i.aby = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1336 ; 3 uses
  %.val100.i.i.i = load ptr, ptr %i.aby, align 8, !noalias !911, !nonnull !15, !noundef !15
  %i.abz = getelementptr inbounds nuw i8, ptr %.val100.i.i.i, i64 16
  invoke void @_RNvMs1_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtB5_14ConnectionMeta10set_status(ptr noundef nonnull align 8 %i.abz, i8 noundef 2)
          to label %bb.jv unwind label %bb.ju, !noalias !921

bb.ju:                                            ; preds = %bb.jt
  %i.aca = landingpad { ptr, i32 }
          cleanup
  br label %bb.kw

bb.jv:                                            ; preds = %bb.jt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !1042
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !1042
  store i8 0, ptr %i.abx, align 1, !noalias !911
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.ay, ptr noundef nonnull align 8 dereferenceable(176) %i.ba, i64 176, i1 false), !noalias !1042
  invoke void @_RNvMs6_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8DnsError13from_response(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.az, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(176) %i.ay)
          to label %bb.jx unwind label %bb.jw, !noalias !921

bb.jw:                                            ; preds = %bb.jv
  %i.acb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !1042
  br label %bb.kv

bb.jx:                                            ; preds = %bb.jv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !1042
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !1042
  %i.acc = load i64, ptr %i.az, align 8, !range !192, !noalias !1042, !noundef !15
  %i.acd = icmp eq i64 %i.acc, -1
  br i1 %i.acd, label %bb.jy, label %bb.jz

bb.jy:                                            ; preds = %bb.jx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ax, ptr noundef nonnull align 8 dereferenceable(64) %i.cl, i64 64, i1 false), !noalias !1042
  %i.ace = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1540 ; 2 uses
  store i8 1, ptr %i.ace, align 4, !noalias !911
  %i.acf = load i32, ptr %i.ax, align 8, !range !529, !noalias !1042, !noundef !15
  %.not30.not.i.i.i = icmp eq i32 %i.acf, 2
  br i1 %.not30.not.i.i.i, label %bb.ks, label %bb.ki

bb.jz:                                            ; preds = %bb.jx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.abi, ptr noundef nonnull align 8 dereferenceable(176) %i.az, i64 176, i1 false), !noalias !911
  %.val99.i.i.i = load ptr, ptr %i.aby, align 8, !noalias !911, !nonnull !15, !noundef !15
  %i.acg = getelementptr inbounds nuw i8, ptr %.val99.i.i.i, i64 16
  invoke void @_RNvMs3_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtB5_12DecayingSrtt6record(ptr noundef nonnull align 8 %i.acg, i64 noundef %i.abt, i32 noundef %i.abu)
          to label %bb.kb unwind label %bb.ka, !noalias !921

bb.ka:                                            ; preds = %bb.jz
  %i.ach = landingpad { ptr, i32 }
          cleanup
  br label %bb.kh

bb.kb:                                            ; preds = %bb.jz
  %i.aci = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1296
  %.val79.i.i.i = load ptr, ptr %i.aci, align 8, !noalias !911, !nonnull !15, !noundef !15
  %i.acj = getelementptr inbounds nuw i8, ptr %.val79.i.i.i, i64 152
  invoke void @_RNvMs3_NtCs9RFwvXNxPyg_16hickory_resolver11name_serverNtB5_12DecayingSrtt6record(ptr noundef nonnull align 8 %i.acj, i64 noundef %i.abt, i32 noundef %i.abu)
          to label %bb.kd unwind label %bb.kc, !noalias !921

bb.kc:                                            ; preds = %bb.kb
  %i.ack = landingpad { ptr, i32 }
          cleanup
  br label %bb.kh

bb.kd:                                            ; preds = %bb.kb
  %i.acl = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1304
  %i.acm = load ptr, ptr %i.acl, align 8, !noalias !911, !nonnull !15, !align !51, !noundef !15 ; 2 uses
  %.val86.i.i.i = load ptr, ptr %i.acm, align 8, !noalias !921, !nonnull !15, !noundef !15
  %i.acn = getelementptr inbounds nuw i8, ptr %.val86.i.i.i, i64 816
  %.val90.i.i.i = load i64, ptr %i.acn, align 8, !range !977, !noalias !921, !noundef !15
  %.not.i.i.i = icmp eq i64 %.val90.i.i.i, -2
  br i1 %.not.i.i.i, label %bb.ke, label %bb.kg

bb.ke:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsgO2xhGITpH9_12futures_util4lock5mutex10MutexGuardNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool24NameServerTransportStateEECsi17nFaBu4HY_10ech_client.exit.i.i.i, %bb.kg, %bb.kd
  %i.aco = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1544
  %.sroa.0295.0.copyload.i.i.i = load i64, ptr %i.aco, align 8, !noalias !911
  %.sroa.4296.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1552
  %.sroa.4296.0.copyload.i.i.i = load i8, ptr %.sroa.4296.0..sroa_idx.i.i.i, align 8, !noalias !911
  %.sroa.5297.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1553
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8246.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5297.0..sroa_idx.i.i.i, i64 7, i1 false), !noalias !911
  %.sroa.6298.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1560
  %i.acp = load <2 x ptr>, ptr %.sroa.6298.0..sroa_idx.i.i.i, align 8, !noalias !911
  %.sroa.8300.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1576
  %.sroa.8300.0.copyload.i.i.i = load i64, ptr %.sroa.8300.0..sroa_idx.i.i.i, align 8, !noalias !911
  %.sroa.9301.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1584
  %.sroa.9301.0.copyload.i.i.i = load ptr, ptr %.sroa.9301.0..sroa_idx.i.i.i, align 8, !noalias !911
  %.sroa.10302.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1592
  %.sroa.10302.0.copyload.i.i.i = load i8, ptr %.sroa.10302.0..sroa_idx.i.i.i, align 8, !noalias !911
  %.sroa.11303.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1593
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.14274.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.11303.0..sroa_idx.i.i.i, i64 31, i1 false), !noalias !911
  %.sroa.12304.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1624
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.15277.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.12304.0..sroa_idx.i.i.i, i64 96, i1 false), !noalias !911
  %i.acq = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1540
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !1042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !1042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !1042
  store <4 x i8> zeroinitializer, ptr %i.acq, align 4, !noalias !911
  %i.acr = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1336 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1083)
  call void @llvm.experimental.noalias.scope.decl(metadata !1086)
  %i.acs = load ptr, ptr %i.acr, align 8, !alias.scope !1089, !noalias !911, !nonnull !15, !noundef !15
  %i.act = atomicrmw sub ptr %i.acs, i64 1 release, align 8, !noalias !1090
  %i.acu = icmp eq i64 %i.act, 1
  br i1 %i.acu, label %bb.kf, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver11name_server14ConnectionMetaEECsi17nFaBu4HY_10ech_client.exit107.i.i.i

bb.kf:                                            ; preds = %bb.ke
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver11name_server14ConnectionMetaE9drop_slowCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.acr) #22
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver11name_server14ConnectionMetaEECsi17nFaBu4HY_10ech_client.exit107.i.i.i unwind label %bb.ml, !noalias !921

end_hunk_2
begin_hunk_3_@_RNvYINtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered16FuturesUnorderedNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB1r_10UdpRequestNtNtNtB1v_7runtime13tokio_runtime20TokioRuntimeProviderENtB1r_7Request4send0ENtNtB7_6stream9StreamExt15poll_next_unpinCsi17nFaBu4HY_10ech_client:bb.a
  %i.mb = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.mb, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ma, i64 32, i1 false), !alias.scope !1257, !noalias !1193
  %i.mc = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 264
  store i16 %.sroa.0.0.i248.i.i, ptr %i.mc, align 8, !alias.scope !1194, !noalias !1256
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 266
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(38) %.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 2 dereferenceable(38) %.sroa.5.sroa.0.sroa.0.i.i.i, i64 38, i1 false), !noalias !1256
  %.sroa.5.sroa.0.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 304
  store i16 %.sroa.5.sroa.0.sroa.4.0.i.i.i, ptr %.sroa.5.sroa.0.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !1194, !noalias !1256
  %.sroa.5.sroa.0.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 306
  store i16 %.sroa.5.sroa.0.sroa.5.0.i.i.i, ptr %.sroa.5.sroa.0.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 2, !alias.scope !1194, !noalias !1256
  %.sroa.5.sroa.0.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 308
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.5.sroa.0.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.5.sroa.4.i.i.i.i, i64 28, i1 false), !noalias !1256
  %.sroa.5.sroa.0.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 336
  store i8 %.sroa.5.sroa.0.sroa.7.0.i.i.i, ptr %.sroa.5.sroa.0.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !1194, !noalias !1256
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 344
  store <4 x i16> %i.lz, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !1194, !noalias !1256
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.0.sroa.0.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1199
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.4.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !1189
  invoke void @_RNvMNtNtCsjXdHNeFfodD_13hickory_proto2op7messageNtB2_7Message6to_vec(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.bs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.hu)
          to label %bb.cq unwind label %bb.cp, !noalias !1193

bb.cp:                                            ; preds = %bb.co
  %i.md = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

bb.cq:                                            ; preds = %bb.co
  %i.me = load i8, ptr %i.bs, align 8, !range !1258, !noalias !1189, !noundef !15
  %.not.i28.i = icmp eq i8 %i.me, -1
  br i1 %.not.i28.i, label %bb.cr, label %bb.dr

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %i.dg, i64 24, i1 false), !noalias !1189
  %i.mf = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 600
  %i.mg = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 214
  %i.mh = load i16, ptr %i.mg, align 2, !noalias !1185, !noundef !15
  store i16 %i.mh, ptr %i.mf, align 8, !noalias !1185
  store i8 0, ptr %i.hn, align 2, !noalias !1185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  %i.mi = load ptr, ptr %i.ho, align 8, !noalias !1185, !nonnull !15, !align !51, !noundef !15
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.br, ptr noundef nonnull align 8 dereferenceable(32) %i.mj, i64 32, i1 false), !noalias !1193
  %i.mk = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 384 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mk, ptr noundef nonnull align 8 dereferenceable(24) %i.dg, i64 24, i1 false), !noalias !1185
  %i.ml = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 408 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ml, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.br, i64 32, i1 false), !alias.scope !1259, !noalias !1263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fz, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ml, i64 32, i1 false), !alias.scope !1265, !noalias !1185
  invoke void @_RNvMNtNtCsjXdHNeFfodD_13hickory_proto2op14serial_messageNtB2_13SerialMessage10to_message(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(address) dereferenceable(152) %i.bq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.mk)
          to label %bb.ct unwind label %bb.cs, !noalias !1193

bb.cs:                                            ; preds = %bb.cr
  %i.mm = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.ct:                                            ; preds = %bb.cr
  %i.mn = load i64, ptr %i.bq, align 8, !range !192, !noalias !1189, !noundef !15
  %i.mo = icmp eq i64 %i.mn, -1
  br i1 %i.mo, label %bb.dk, label %.noexc199.i.i

.noexc199.i.i:                                    ; preds = %bb.ct
  %i.mp = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 440 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.mp, ptr noundef nonnull align 8 dereferenceable(152) %i.bq, i64 152, i1 false), !noalias !1185
  %i.mq = load atomic i64, ptr @_RNvNtCsjpgBhlqJ253_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !1189
  %.off968.i.i = add i64 %i.mq, -2
  %switch969.i.i = icmp ult i64 %.off968.i.i, 4
  br i1 %switch969.i.i, label %.critedge155.i.i, label %bb.cu

bb.cu:                                            ; preds = %.noexc199.i.i
  %i.mr = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB9_10UdpRequestpENtB9_7Request4send010___CALLSITE, i64 16) monotonic, align 8, !noalias !1189 ; 2 uses
  %i.ms = icmp ult i8 %i.mr, 3
  br i1 %i.ms, label %bb.cx, label %bb.cv, !prof !973

bb.cv:                                            ; preds = %bb.cu
  %i.mt = invoke noundef i8 @_RNvMNtCsjpgBhlqJ253_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB9_10UdpRequestpENtB9_7Request4send010___CALLSITE) #22
          to label %bb.cx unwind label %bb.cw, !noalias !1193

bb.cw:                                            ; preds = %bb.cv
  %i.mu = landingpad { ptr, i32 }
          cleanup
  br label %.body289.i.i

bb.cx:                                            ; preds = %bb.cv, %bb.cu
  %.sroa.0.0.i251.i.i = phi i8 [ %i.mr, %bb.cu ], [ %i.mt, %bb.cv ] ; 2 uses
  %i.mv = icmp eq i8 %.sroa.0.0.i251.i.i, 0
  br i1 %i.mv, label %.critedge155.i.i, label %bb.cz

bb.cy:                                            ; preds = %bb.cz
  %i.mw = landingpad { ptr, i32 }
          cleanup
  br label %.body289.i.i

bb.cz:                                            ; preds = %bb.cx
  %i.mx = load ptr, ptr @_RNvNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB9_10UdpRequestpENtB9_7Request4send010___CALLSITE, align 8, !noalias !1189, !nonnull !15, !align !51, !noundef !15
  %i.my = invoke noundef zeroext i1 @_RNvNtCsiIyHGM5EznH_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.mx, i8 noundef %.sroa.0.0.i251.i.i)
          to label %bb.da unwind label %bb.cy, !noalias !1193

bb.da:                                            ; preds = %bb.cz
  br i1 %i.my, label %bb.dc, label %.critedge155.i.i

.critedge155.i.i:                                 ; preds = %_RNCNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB9_10UdpRequestNtNtNtBd_7runtime13tokio_runtime20TokioRuntimeProviderENtB9_7Request4send0s0_0Csi17nFaBu4HY_10ech_client.exit.i.i, %bb.da, %bb.cx, %.noexc199.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6568.i.i)
  %.sroa.0566.0.copyload.i.i = load i16, ptr %i.fz, align 8, !noalias !1185 ; 2 uses
  %.sroa.6568.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.6568.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.6568.0..sroa_idx.i.i, i64 30, i1 false), !noalias !1185
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7572.i.i)
  %i.mz = load ptr, ptr %i.ho, align 8, !noalias !1185, !nonnull !15, !align !51, !noundef !15 ; 7 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 304
  %.sroa.0569.0.copyload.i.i = load i16, ptr %i.na, align 8, !noalias !1193 ; 2 uses
  %.sroa.5570.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mz, i64 306
  %.sroa.5570.0.copyload.i.i = load i32, ptr %.sroa.5570.0..sroa_idx.i.i, align 2, !noalias !1193
  %.sroa.6571.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mz, i64 310
  %.sroa.6571.0.copyload.i.i = load i16, ptr %.sroa.6571.0..sroa_idx.i.i, align 2, !noalias !1193
  %.sroa.7572.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mz, i64 312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7572.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.7572.0..sroa_idx.i.i, i64 12, i1 false), !noalias !1193
  %.sroa.8573.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mz, i64 324
  %i.nb = load <2 x i32>, ptr %.sroa.8573.0..sroa_idx.i.i, align 4, !noalias !1193
  %.sroa.10575.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mz, i64 332
  %i.nc = load <2 x i16>, ptr %.sroa.10575.0..sroa_idx.i.i, align 4, !noalias !1193
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mz, i64 336
  %.val227.i.i = load ptr, ptr %i.nd, align 8, !noalias !1193, !nonnull !15, !noundef !15 ; 2 uses
  %i.ne = atomicrmw add ptr %.val227.i.i, i64 1 monotonic, align 8, !noalias !1193
  %i.nf = icmp slt i64 %i.ne, 0
  br i1 %i.nf, label %bb.db, label %_RNvXsu_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3set7HashSettEENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsi17nFaBu4HY_10ech_client.exit.i.i

bb.db:                                            ; preds = %.critedge155.i.i
  call void @llvm.trap()
  unreachable

bb.dc:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !1189
  %i.ng = load ptr, ptr @_RNvNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB9_10UdpRequestpENtB9_7Request4send010___CALLSITE, align 8, !noalias !1189, !nonnull !15, !align !51, !noundef !15 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !1189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !1189
  store <2 x ptr> <ptr @27, ptr inttoptr (i64 27 to ptr)>, ptr %i.bn, align 16, !noalias !1189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !1189
  store ptr %i.mp, ptr %i.bm, align 8, !noalias !1189
  store ptr %i.bn, ptr %i.bo, align 8, !noalias !1189
  store ptr @10, ptr %i.dh, align 8, !noalias !1189
  store ptr %i.bm, ptr %i.di, align 8, !noalias !1189
  store ptr @28, ptr %i.dj, align 8, !noalias !1189
  store i64 1, ptr %i.bp, align 8, !noalias !1189
  store ptr %i.bo, ptr %.sroa.7540.0..sroa_idx.i.i, align 8, !noalias !1189
  store i64 2, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !1189
  store ptr %i.nh, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !1189
  invoke void @_RNvMNtCsjpgBhlqJ253_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ng, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bp)
          to label %_RNCNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB9_10UdpRequestNtNtNtBd_7runtime13tokio_runtime20TokioRuntimeProviderENtB9_7Request4send0s0_0Csi17nFaBu4HY_10ech_client.exit.i.i unwind label %bb.dd, !noalias !1193

bb.dd:                                            ; preds = %bb.dc
  %i.ni = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !1189
  br label %.body289.i.i

_RNCNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB9_10UdpRequestNtNtNtBd_7runtime13tokio_runtime20TokioRuntimeProviderENtB9_7Request4send0s0_0Csi17nFaBu4HY_10ech_client.exit.i.i: ; preds = %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !1189
  br label %.critedge155.i.i

_RNvXsu_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3set7HashSettEENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsi17nFaBu4HY_10ech_client.exit.i.i: ; preds = %.critedge155.i.i
  %i.nj = load ptr, ptr %i.ho, align 8, !noalias !1185, !nonnull !15, !align !51, !noundef !15 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 360
  %i.nl = load i8, ptr %i.nk, align 8, !range !147, !noalias !1193, !noundef !15
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nj, i64 344
  %.val228.i.i = load ptr, ptr %i.nm, align 8, !noalias !1193, !nonnull !15, !noundef !15 ; 2 uses
  %i.nn = atomicrmw add ptr %.val228.i.i, i64 1 monotonic, align 8, !noalias !1193
  %i.no = icmp slt i64 %i.nn, 0
  br i1 %i.no, label %bb.de, label %_RNvXs3_NtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtimeNtB5_20TokioRuntimeProviderNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i

bb.de:                                            ; preds = %_RNvXsu_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3set7HashSettEENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsi17nFaBu4HY_10ech_client.exit.i.i
  call void @llvm.trap()
  unreachable

_RNvXs3_NtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtimeNtB5_20TokioRuntimeProviderNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i: ; preds = %_RNvXsu_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3set7HashSettEENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsi17nFaBu4HY_10ech_client.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.sroa.0.sroa.5.i.i.i)
  %.not.i255.i.i = icmp eq i16 %.sroa.0569.0.copyload.i.i, 2
  br i1 %.not.i255.i.i, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %_RNvXs3_NtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtimeNtB5_20TokioRuntimeProviderNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4.sroa.0.sroa.5.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7572.i.i, i64 12, i1 false), !noalias !1269
  br label %bb.di

bb.dg:                                            ; preds = %_RNvXs3_NtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtimeNtB5_20TokioRuntimeProviderNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i
  %i.np = trunc nuw i16 %.sroa.0566.0.copyload.i.i to i1
  br i1 %i.np, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4.sroa.0.sroa.5.i.i.i, i8 0, i64 12, i1 false), !noalias !1273
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg, %bb.df
  %.sroa.4.sroa.0.sroa.0.sroa.3.0.i.i.i = phi i32 [ 0, %bb.dh ], [ %.sroa.5570.0.copyload.i.i, %bb.df ], [ 0, %bb.dg ]
  %.sroa.4.sroa.0.sroa.4.0.i.i.i = phi i16 [ 0, %bb.dh ], [ %.sroa.6571.0.copyload.i.i, %bb.df ], [ 0, %bb.dg ]
  %.sroa.0.0.i257.i.i = phi i16 [ 1, %bb.dh ], [ %.sroa.0569.0.copyload.i.i, %bb.df ], [ 0, %bb.dg ]
  %i.nq = phi <2 x i16> [ <i16 0, i16 undef>, %bb.dh ], [ %i.nc, %bb.df ], [ undef, %bb.dg ]
  %i.nr = phi <2 x i32> [ zeroinitializer, %bb.dh ], [ %i.nb, %bb.df ], [ undef, %bb.dg ]
  %.sroa.0555.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 610
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.0555.sroa.8.0..sroa_idx.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.6568.i.i, i64 30, i1 false), !noalias !1185
  %.sroa.11559.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 648
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.11559.0..sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4.sroa.0.sroa.5.i.i.i, i64 12, i1 false), !noalias !1185
  %.sroa.18.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 688
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !1185
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.sroa.0.sroa.5.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7572.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6568.i.i)
  %i.ns = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 608
  store i16 %.sroa.0566.0.copyload.i.i, ptr %i.ns, align 8, !noalias !1185
  %.sroa.8556.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 640
  store i16 %.sroa.0.0.i257.i.i, ptr %.sroa.8556.0..sroa_idx.i.i, align 8, !noalias !1185
  %.sroa.9557.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 642
  store i32 %.sroa.4.sroa.0.sroa.0.sroa.3.0.i.i.i, ptr %.sroa.9557.0..sroa_idx.i.i, align 2, !noalias !1185
  %.sroa.10558.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 646
  store i16 %.sroa.4.sroa.0.sroa.4.0.i.i.i, ptr %.sroa.10558.0..sroa_idx.i.i, align 2, !noalias !1185
  %.sroa.12560.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 660
  store <2 x i32> %i.nr, ptr %.sroa.12560.0..sroa_idx.i.i, align 4, !noalias !1185
  %.sroa.14562.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 668
  store <2 x i16> %i.nq, ptr %.sroa.14562.0..sroa_idx.i.i, align 4, !noalias !1185
  %.sroa.16564.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 672
  store ptr %.val228.i.i, ptr %.sroa.16564.0..sroa_idx.i.i, align 8, !noalias !1185
  %.sroa.17565.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 680
  store ptr %.val227.i.i, ptr %.sroa.17565.0..sroa_idx.i.i, align 8, !noalias !1185
  %.sroa.20.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 712
  store i8 %i.nl, ptr %.sroa.20.0..sroa_idx.i.i, align 8, !noalias !1185
  br label %bb.ee

bb.dj:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsi17nFaBu4HY_10ech_client.exit.i, %bb.ea, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtCsUoH6ltOcnV_3mio3net3udp9UdpSocketEECsi17nFaBu4HY_10ech_client.exit.i, %bb.mh, %bb.mq, %bb.mm, %.thread887.i.i, %bb.ju, %bb.gc, %bb.eq, %bb.ef, %.body289.i.i
  %i.nt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.mg, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsUoH6ltOcnV_3mio3net3udp9UdpSocketEECsi17nFaBu4HY_10ech_client.exit.i.i, %bb.dx, %bb.dy, %bb.dp, %bb.dj
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !noalias !1193
  unreachable

.body289.i.i:                                     ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtCsUoH6ltOcnV_3mio3net3udp9UdpSocketEECsi17nFaBu4HY_10ech_client.exit.i, %bb.lv, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsUoH6ltOcnV_3mio3net3udp9UdpSocketEECsi17nFaBu4HY_10ech_client.exit.i.i511.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsUoH6ltOcnV_3mio3net3udp9UdpSocketEECsi17nFaBu4HY_10ech_client.exit.i.i.i.i, %bb.ej, %bb.ef, %bb.dd, %bb.cy, %bb.cw
  %.pn141.pn.i.i = phi { ptr, i32 } [ %i.mw, %bb.cy ], [ %i.mu, %bb.cw ], [ %i.pc, %bb.ej ], [ %i.ni, %bb.dd ], [ %i.rw, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsUoH6ltOcnV_3mio3net3udp9UdpSocketEECsi17nFaBu4HY_10ech_client.exit.i.i.i.i ], [ %i.adk, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsUoH6ltOcnV_3mio3net3udp9UdpSocketEECsi17nFaBu4HY_10ech_client.exit.i.i511.i.i ], [ %i.ads, %bb.lv ], [ %i.oz, %bb.ef ], [ %.pn137.pn.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtCsUoH6ltOcnV_3mio3net3udp9UdpSocketEECsi17nFaBu4HY_10ech_client.exit.i ]
  %i.nu = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 440
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op7message7MessageECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(152) %i.nu) #24
          to label %bb.do unwind label %bb.dj, !noalias !1193

bb.dk:                                            ; preds = %bb.ct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %.sroa.4.8..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.eo, i64 40, i1 false), !noalias !1189
  store i8 8, ptr %i.df, align 8, !noalias !1189
  store i8 1, ptr %.sroa.5831.0..sroa_idx.i.i, align 8, !noalias !1189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.5.0..sroa_idx.i349.i.i, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.4.i.i.i.i, i64 47, i1 false), !noalias !1189
  store i64 -1, ptr %i.t, align 8, !noalias !1189
  br label %bb.dl

bb.dl:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCskruEhpekJ3V_5tokio3net3udp9UdpSocketECsi17nFaBu4HY_10ech_client.exit.i.i, %bb.dk
  %i.nv = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 384 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.nv)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsi17nFaBu4HY_10ech_client.exit.i.i.i unwind label %bb.dm, !noalias !1193

bb.dm:                                            ; preds = %bb.dl
  %i.nw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.nv)
          to label %.body259.i.i unwind label %bb.dn, !noalias !1193

bb.dn:                                            ; preds = %bb.dm
  %i.nx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !noalias !1193
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsi17nFaBu4HY_10ech_client.exit.i.i.i: ; preds = %bb.dl
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.nv)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op14serial_message13SerialMessageECsi17nFaBu4HY_10ech_client.exit.i.i unwind label %bb.ma, !noalias !1193

bb.do:                                            ; preds = %bb.lw, %.body289.i.i, %bb.cs
  %.pn144.pn.i.i = phi { ptr, i32 } [ %i.mm, %bb.cs ], [ %i.adu, %bb.lw ], [ %.pn141.pn.i.i, %.body289.i.i ]
  %i.ny = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 384 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ny)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsi17nFaBu4HY_10ech_client.exit.i unwind label %bb.dp, !noalias !1193

bb.dp:                                            ; preds = %bb.do
  %i.nz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ny)
          to label %.body unwind label %bb.dq, !noalias !1193

bb.dq:                                            ; preds = %bb.dp
  %i.oa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !noalias !1193
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsi17nFaBu4HY_10ech_client.exit.i: ; preds = %bb.do
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ny)
          to label %.body259.i.i unwind label %bb.dj

.body259.i.i:                                     ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsi17nFaBu4HY_10ech_client.exit.i, %bb.ma, %bb.ly, %bb.dm
  %.pn147.i.i = phi { ptr, i32 } [ %i.adw, %bb.ly ], [ %i.nw, %bb.dm ], [ %i.ady, %bb.ma ], [ %.pn144.pn.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsi17nFaBu4HY_10ech_client.exit.i ] ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 602
  %i.oc = load i8, ptr %i.ob, align 2, !range !147, !noalias !1185, !noundef !15
  %i.od = trunc nuw i8 %i.oc to i1
  br i1 %i.od, label %bb.mq, label %bb.dw

bb.dr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %.sroa.5.8..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.bs, i64 48, i1 false), !noalias !1189
  store i8 8, ptr %i.df, align 8, !noalias !1189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.5.i.i, i64 55, i1 false), !noalias !1189
  store i64 -1, ptr %i.t, align 8, !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op14serial_message13SerialMessageECsi17nFaBu4HY_10ech_client.exit.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op14serial_message13SerialMessageECsi17nFaBu4HY_10ech_client.exit.i.i: ; preds = %bb.dr, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsi17nFaBu4HY_10ech_client.exit.i.i.i
  %i.oe = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 602
  store i8 0, ptr %i.oe, align 2, !noalias !1185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !1189
  %i.of = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 80
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op7message7MessageECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %i.of)
          to label %bb.du unwind label %bb.ds, !noalias !1193

bb.ds:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op14serial_message13SerialMessageECsi17nFaBu4HY_10ech_client.exit.i.i
  %i.og = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 264 ; 2 uses
  %i.oi = load i16, ptr %i.oh, align 8, !range !183, !alias.scope !1275, !noalias !1185, !noundef !15
  %i.oj = icmp eq i16 %i.oi, 2
  br i1 %i.oj, label %.body.i.i, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4name4NameECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.oh)
          to label %.body.i.i unwind label %bb.dv, !noalias !1193

bb.du:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op14serial_message13SerialMessageECsi17nFaBu4HY_10ech_client.exit.i.i
  %i.ok = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 264 ; 2 uses
  %i.ol = load i16, ptr %i.ok, align 8, !range !183, !alias.scope !1280, !noalias !1185, !noundef !15
  %i.om = icmp eq i16 %i.ol, 2
  br i1 %i.om, label %bb.mr, label %.invoke.i.i

bb.dv:                                            ; preds = %bb.dt
  %i.on = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !noalias !1193
  unreachable

bb.dw:                                            ; preds = %bb.mq, %.body259.i.i, %bb.cp
  %.pn149.pn.i.i = phi { ptr, i32 } [ %i.md, %bb.cp ], [ %.pn147.i.i, %bb.mq ], [ %.pn147.i.i, %.body259.i.i ] ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 602
  store i8 0, ptr %i.oo, align 2, !noalias !1185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !1189
  %i.op = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 80
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op7message7MessageECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %i.op)
          to label %bb.dz unwind label %bb.dx, !noalias !1193

bb.dx:                                            ; preds = %bb.dw
  %i.oq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.or = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 264 ; 2 uses
  %i.os = load i16, ptr %i.or, align 8, !range !183, !alias.scope !1283, !noalias !1193, !noundef !15
  %i.ot = icmp eq i16 %i.os, 2
  br i1 %i.ot, label %.body, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4name4NameECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.or)
          to label %.body unwind label %bb.eb, !noalias !1193

bb.dz:                                            ; preds = %bb.dw
  %i.ou = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 264 ; 2 uses
  %i.ov = load i16, ptr %i.ou, align 8, !range !183, !alias.scope !1288, !noalias !1193, !noundef !15
  %i.ow = icmp eq i16 %i.ov, 2
  br i1 %i.ow, label %.body.i.i, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4name4NameECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.ou)
          to label %.body.i.i unwind label %bb.dj

bb.eb:                                            ; preds = %bb.dy
  %i.ox = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !noalias !1193
  unreachable

.body.i.i:                                        ; preds = %bb.dz, %bb.ea, %bb.mf, %bb.mc, %bb.mb, %bb.dt, %bb.ds, %bb.cn, %.body.i.i.i, %bb.ab
  %.pn152.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.aeb, %bb.mc ], [ %i.aeb, %bb.mb ], [ %i.ly, %bb.cn ], [ %.pn.pn.pn.pn.i.i.i.i, %bb.ab ], [ %i.og, %bb.ds ], [ %i.og, %bb.dt ], [ %i.aek, %bb.mf ], [ %.pn149.pn.i.i, %bb.ea ], [ %.pn149.pn.i.i, %bb.dz ]
  store i8 2, ptr %i.hl, align 1, !noalias !1185
  br label %.body.i

bb.ec:                                            ; preds = %bb.w
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #25
          to label %.noexc.i unwind label %bb.v, !noalias !1162

.noexc.i:                                         ; preds = %bb.ec
  unreachable

bb.ed:                                            ; preds = %bb.w
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #25
          to label %.noexc29.i unwind label %bb.v, !noalias !1162

.noexc29.i:                                       ; preds = %bb.ed
  unreachable

bb.ee:                                            ; preds = %bb.di, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !1189
  %i.oy = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 608 ; 4 uses
  invoke void @_RNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp10udp_streamINtB5_19NextRandomUdpSocketNtNtNtB9_7runtime13tokio_runtime20TokioRuntimeProviderENtNtNtCsj6eKBz9Db1c_4core6future6future6Future4pollCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.bl, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.oy, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bu)
          to label %bb.eg unwind label %bb.ef, !noalias !1193

bb.ef:                                            ; preds = %bb.ee
  %i.oz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !1189
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs5MfxasYgTEl_11hickory_net3udp10udp_stream19NextRandomUdpSocketNtNtNtBI_7runtime13tokio_runtime20TokioRuntimeProviderEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(112) %i.oy) #24
          to label %.body289.i.i unwind label %bb.dj, !noalias !1193

bb.eg:                                            ; preds = %bb.ee
  %i.pa = load i8, ptr %i.bl, align 8, !range !1045, !noalias !1189, !noundef !15 ; 3 uses
  %i.pb = icmp eq i8 %i.pa, -2
end_hunk_3
begin_hunk_4_@_RNvYINtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered16FuturesUnorderedNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB1r_10UdpRequestNtNtNtB1v_7runtime13tokio_runtime20TokioRuntimeProviderENtB1r_7Request4send0ENtNtB7_6stream9StreamExt15poll_next_unpinCsi17nFaBu4HY_10ech_client:bb.a
  store ptr %i.bk, ptr %i.bf, align 8, !noalias !1189
  store ptr @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.5586.0..sroa_idx.i.i, align 8, !noalias !1189
  store ptr %i.bg, ptr %i.dk, align 8, !noalias !1189
  store ptr @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.5588.0..sroa_idx.i.i, align 8, !noalias !1189
  invoke void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bh, ptr noundef nonnull @33, ptr noundef nonnull %i.bf)
          to label %bb.fu unwind label %bb.ft, !noalias !1193

bb.ft:                                            ; preds = %bb.fs
  %i.ru = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5583.i.i)
  br label %.body271.i.i

bb.fu:                                            ; preds = %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !1189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bh, i64 24, i1 false), !alias.scope !1322, !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !1189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.5583.8..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i64 24, i1 false), !alias.scope !1326, !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  store i8 5, ptr %i.df, align 8, !noalias !1189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.5583.i.i, i64 31, i1 false), !noalias !1189
  store i64 -1, ptr %i.t, align 8, !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5583.i.i)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsi17nFaBu4HY_10ech_client.exit.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsi17nFaBu4HY_10ech_client.exit.i.i: ; preds = %bb.kp, %bb.fu, %_RNvXsq_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtNtB7_2io5error5ErrorEE13from_residualCsi17nFaBu4HY_10ech_client.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !1189
  %i.rv = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 48 ; 3 uses
  invoke void @_RNvXs3_NtNtCskruEhpekJ3V_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtCsUoH6ltOcnV_3mio3net3udp9UdpSocketENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.rv)
          to label %bb.fx unwind label %bb.fv, !noalias !1193

bb.fv:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsi17nFaBu4HY_10ech_client.exit.i.i
  %i.rw = landingpad { ptr, i32 }
          cleanup
  %i.rx = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 72
  %.val2.i.i.i.i = load i32, ptr %i.rx, align 4, !alias.scope !1330, !noalias !1185, !noundef !15 ; 2 uses
  %i.ry = icmp eq i32 %.val2.i.i.i.i, -1
  br i1 %i.ry, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsUoH6ltOcnV_3mio3net3udp9UdpSocketEECsi17nFaBu4HY_10ech_client.exit.i.i.i.i, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.rz = call noundef i32 @close(i32 noundef %.val2.i.i.i.i) #26, !noalias !1193 ; 0 uses
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsUoH6ltOcnV_3mio3net3udp9UdpSocketEECsi17nFaBu4HY_10ech_client.exit.i.i.i.i

bb.fx:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsi17nFaBu4HY_10ech_client.exit.i.i
  %i.sa = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 72
  %.val.i.i.i.i = load i32, ptr %i.sa, align 8, !alias.scope !1330, !noalias !1185, !noundef !15 ; 2 uses
  %i.sb = icmp eq i32 %.val.i.i.i.i, -1
  br i1 %i.sb, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtCsUoH6ltOcnV_3mio3net3udp9UdpSocketEECsi17nFaBu4HY_10ech_client.exit.i.i.i, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.sc = call noundef i32 @close(i32 noundef %.val.i.i.i.i) #26, !noalias !1193 ; 0 uses
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtCsUoH6ltOcnV_3mio3net3udp9UdpSocketEECsi17nFaBu4HY_10ech_client.exit.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsUoH6ltOcnV_3mio3net3udp9UdpSocketEECsi17nFaBu4HY_10ech_client.exit.i.i.i.i: ; preds = %bb.fw, %bb.fv
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12registration12RegistrationECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.rv) #24
          to label %.body289.i.i unwind label %bb.fz, !noalias !1193

bb.fz:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsUoH6ltOcnV_3mio3net3udp9UdpSocketEECsi17nFaBu4HY_10ech_client.exit.i.i.i.i
  %i.sd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !noalias !1193
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtCsUoH6ltOcnV_3mio3net3udp9UdpSocketEECsi17nFaBu4HY_10ech_client.exit.i.i.i: ; preds = %bb.fy, %bb.fx
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12registration12RegistrationECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.rv)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCskruEhpekJ3V_5tokio3net3udp9UdpSocketECsi17nFaBu4HY_10ech_client.exit.i.i unwind label %bb.lv, !noalias !1193

bb.ga:                                            ; preds = %bb.ez
  %i.se = landingpad { ptr, i32 }
          cleanup
  br label %.body271.i.i

bb.gb:                                            ; preds = %bb.ml, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !1189
  %i.sf = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 640 ; 3 uses
  invoke void @_RNvXs_NtNtCsj6eKBz9Db1c_4core6future6futureINtNtB8_3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultTjNtNtNtB8_3net11socket_addr10SocketAddrENtNtNtB8_2io5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ba, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.sf, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bu)
          to label %bb.gd unwind label %bb.gc, !noalias !1193

bb.gc:                                            ; preds = %bb.gb
  %i.sg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !1189
  %.val216.i.i = load ptr, ptr %i.sf, align 8, !noalias !1185
  %i.sh = getelementptr i8, ptr %.sroa.01.0.i.i, i64 648
  %.val217.i.i = load ptr, ptr %i.sh, align 8, !noalias !1185, !nonnull !15, !align !51, !noundef !15
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTjNtNtNtB4_3net11socket_addr10SocketAddrENtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendEL_EEECsi17nFaBu4HY_10ech_client(ptr %.val216.i.i, ptr nonnull %.val217.i.i) #24
          to label %.body293.i.i unwind label %bb.dj, !noalias !1193

bb.gd:                                            ; preds = %bb.gb
  %i.si = load i16, ptr %i.do, align 8, !range !765, !noalias !1189, !noundef !15 ; 3 uses
  %i.sj = icmp eq i16 %i.si, -1
  br i1 %i.sj, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !1189
  br label %.thread55.i

bb.gf:                                            ; preds = %bb.gd
  %.sroa.0601.0.copyload.i.i = load i64, ptr %i.ba, align 8, !noalias !1189 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.5603.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.5603.0..sroa_idx.i.i, i64 30, i1 false), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !1189
  %.val218.i.i = load ptr, ptr %i.sf, align 8, !noalias !1185 ; 5 uses
  %i.sk = getelementptr i8, ptr %.sroa.01.0.i.i, i64 648
  %.val219.i.i = load ptr, ptr %i.sk, align 8, !noalias !1185, !nonnull !15, !align !51, !noundef !15 ; 5 uses
  %i.sl = load ptr, ptr %.val219.i.i, align 8, !invariant.load !15, !noalias !1193 ; 2 uses
  %.not.i.i292.i.i = icmp eq ptr %i.sl, null
  br i1 %.not.i.i292.i.i, label %bb.gh, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val218.i.i) ]
  invoke void %i.sl(ptr noundef nonnull %.val218.i.i)
          to label %bb.gh unwind label %bb.gj, !noalias !1193

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %i.sm = getelementptr inbounds nuw i8, ptr %.val219.i.i, i64 8
  %i.sn = load i64, ptr %i.sm, align 8, !range !152, !invariant.load !15, !noalias !1193 ; 2 uses
  %i.so = icmp eq i64 %i.sn, 0
  br i1 %i.so, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTjNtNtNtB4_3net11socket_addr10SocketAddrENtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendEL_EEECsi17nFaBu4HY_10ech_client.exit.i.i, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.sp = getelementptr inbounds nuw i8, ptr %.val219.i.i, i64 16
  %i.sq = load i64, ptr %i.sp, align 8, !range !153, !invariant.load !15, !noalias !1193
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val218.i.i) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val218.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.sn, i64 noundef range(i64 1, 536870913) %i.sq) #26, !noalias !1193
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTjNtNtNtB4_3net11socket_addr10SocketAddrENtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendEL_EEECsi17nFaBu4HY_10ech_client.exit.i.i

bb.gj:                                            ; preds = %bb.gg
  %i.sr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %.val219.i.i, i64 8
  %i.st = load i64, ptr %i.ss, align 8, !range !152, !invariant.load !15, !noalias !1193 ; 2 uses
  %i.su = icmp eq i64 %i.st, 0
  br i1 %i.su, label %.body293.i.i, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.sv = getelementptr inbounds nuw i8, ptr %.val219.i.i, i64 16
  %i.sw = load i64, ptr %i.sv, align 8, !range !153, !invariant.load !15, !noalias !1193
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val218.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.st, i64 noundef range(i64 1, 536870913) %i.sw) #26, !noalias !1193
  br label %.body293.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTjNtNtNtB4_3net11socket_addr10SocketAddrENtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendEL_EEECsi17nFaBu4HY_10ech_client.exit.i.i: ; preds = %bb.gi, %bb.gh
  %i.sx = icmp eq i16 %i.si, 2
  br i1 %i.sx, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTjNtNtNtB4_3net11socket_addr10SocketAddrENtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendEL_EEECsi17nFaBu4HY_10ech_client.exit.i.i
  %i.sy = inttoptr i64 %.sroa.0601.0.copyload.i.i to ptr
  invoke void @_RNvXs3_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtNtBX_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.df, ptr noundef nonnull %i.sy)
          to label %bb.mp unwind label %bb.mo, !noalias !1193

bb.gm:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTjNtNtNtB4_3net11socket_addr10SocketAddrENtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendEL_EEECsi17nFaBu4HY_10ech_client.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !1189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.2.sroa.2.0..sroa_idx.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.5603.i.i, i64 30, i1 false), !noalias !1189
  store i16 %i.si, ptr %i.bb, align 4, !noalias !1189
  %i.sz = getelementptr i8, ptr %.sroa.01.0.i.i, i64 624
  %.val234.i.i = load i64, ptr %i.sz, align 8, !noalias !1185, !noundef !15 ; 2 uses
  %.not.i.i297.i.i = icmp ugt i64 %.sroa.0601.0.copyload.i.i, %.val234.i.i
  br i1 %.not.i.i297.i.i, label %bb.gn, label %bb.gp, !prof !385

bb.gn:                                            ; preds = %bb.gm
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.0601.0.copyload.i.i, i64 noundef range(i64 0, -9223372036854775808) %.val234.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #25
          to label %.noexc298.i.i unwind label %bb.go, !noalias !1193

.noexc298.i.i:                                    ; preds = %bb.gn
  unreachable

bb.go:                                            ; preds = %bb.gn
  %i.ta = landingpad { ptr, i32 }
          cleanup
  br label %bb.mn

bb.gp:                                            ; preds = %bb.gm
  %i.tb = getelementptr i8, ptr %.sroa.01.0.i.i, i64 616
  %.val233.i.i = load ptr, ptr %i.tb, align 8, !noalias !1185, !nonnull !15, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !1189
  invoke void @_RNvXsw_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechEINtNtCsj6eKBz9Db1c_4core7convert4FromRShE4fromCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.az, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val233.i.i, i64 noundef %.sroa.0601.0.copyload.i.i)
          to label %bb.gr unwind label %bb.gq, !noalias !1193

.body502.i.i:                                     ; preds = %bb.mm, %bb.li, %.body37.i, %bb.gq
  %.pn123.i.i = phi { ptr, i32 } [ %.pn103.pn.i.i, %.body37.i ], [ %.pn116.pn.pn.pn.pn.pn.ph.i.i, %bb.mm ], [ %i.tc, %bb.gq ], [ %i.add, %bb.li ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !1189
  br label %bb.mn

bb.gq:                                            ; preds = %bb.lj, %bb.gp
  %i.tc = landingpad { ptr, i32 }
          cleanup
  br label %.body502.i.i

bb.gr:                                            ; preds = %bb.gp
  %i.td = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 408
  %.sroa.0608.0.copyload.i.i = load i16, ptr %i.td, align 8, !alias.scope !1335, !noalias !1185
  %.sroa.10612.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 410
  %.sroa.10612.0.copyload.i.i = load i32, ptr %.sroa.10612.0..sroa_idx.i.i, align 2, !alias.scope !1335, !noalias !1185 ; 5 uses
  %.sroa.14614.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 414
  %.sroa.14614.0.copyload.i.i = load i16, ptr %.sroa.14614.0..sroa_idx.i.i, align 2, !alias.scope !1335, !noalias !1185 ; 7 uses
  %.sroa.16617.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 416
  %.sroa.16617.sroa.0.0.copyload.i.i = load i96, ptr %.sroa.16617.0..sroa_idx.i.i, align 8, !alias.scope !1335, !noalias !1185 ; 12 uses
  %.sroa.16619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 436
  %.sroa.16619.0.copyload.i.i = load i16, ptr %.sroa.16619.0..sroa_idx.i.i, align 4, !alias.scope !1335, !noalias !1185 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1339)
  %i.te = load i16, ptr %i.bb, align 4, !range !193, !alias.scope !1342, !noalias !1344, !noundef !15
  %i.tf = trunc nuw i16 %i.te to i1               ; 2 uses
  %3 = lshr i16 %.sroa.14614.0.copyload.i.i, 8    ; 2 uses
  br i1 %i.tf, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  %.sroa.8638.1.copyload.i.i = load i128, ptr %i.dp, align 4, !alias.scope !1345, !noalias !1189 ; 15 uses
  %.sroa.8638.2.extract.shift.i.i = lshr i128 %.sroa.8638.1.copyload.i.i, 8
  %i.tg = or i128 %.sroa.8638.2.extract.shift.i.i, %.sroa.8638.1.copyload.i.i
  %i.th = trunc i128 %i.tg to i8
  %or.cond.i.i.i.i = icmp eq i8 %i.th, 0
  br i1 %or.cond.i.i.i.i, label %_RNvMsi_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_8Ipv6Addr14to_ipv4_mapped.exit.i.i.i, label %_RNvMs0_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_6IpAddr12to_canonical.exit.i.i

_RNvMsi_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_8Ipv6Addr14to_ipv4_mapped.exit.i.i.i: ; preds = %bb.gs
  %.sroa.8638.12.extract.shift.i.i = lshr i128 %.sroa.8638.1.copyload.i.i, 88
  %.sroa.8638.11.extract.shift.i.i = lshr i128 %.sroa.8638.1.copyload.i.i, 80
  %.sroa.8638.10.extract.shift.i.i = lshr i128 %.sroa.8638.1.copyload.i.i, 72
  %.sroa.8638.9.extract.shift.i.i = lshr i128 %.sroa.8638.1.copyload.i.i, 64
  %.sroa.8638.8.extract.shift.i.i = lshr i128 %.sroa.8638.1.copyload.i.i, 56
  %.sroa.8638.7.extract.shift.i.i = lshr i128 %.sroa.8638.1.copyload.i.i, 48
  %.sroa.8638.6.extract.shift.i.i = lshr i128 %.sroa.8638.1.copyload.i.i, 40
  %.sroa.8638.5.extract.shift.i.i = lshr i128 %.sroa.8638.1.copyload.i.i, 32
  %.sroa.8638.4.extract.shift.i.i = lshr i128 %.sroa.8638.1.copyload.i.i, 24
  %.sroa.8638.3.extract.shift.i.i = lshr i128 %.sroa.8638.1.copyload.i.i, 16
  %i.ti = or i128 %.sroa.8638.9.extract.shift.i.i, %.sroa.8638.10.extract.shift.i.i
  %i.tj = or i128 %i.ti, %.sroa.8638.8.extract.shift.i.i
  %i.tk = or i128 %i.tj, %.sroa.8638.7.extract.shift.i.i
  %i.tl = or i128 %i.tk, %.sroa.8638.4.extract.shift.i.i
  %i.tm = or i128 %i.tl, %.sroa.8638.3.extract.shift.i.i
  %i.tn = or i128 %i.tm, %.sroa.8638.6.extract.shift.i.i
  %i.to = or i128 %i.tn, %.sroa.8638.5.extract.shift.i.i
  %i.tp = and i128 %i.to, 255
  %or.cond31.i.i.i.i = icmp eq i128 %i.tp, 0
  %i.tq = and i128 %.sroa.8638.11.extract.shift.i.i, %.sroa.8638.12.extract.shift.i.i
  %i.tr = trunc i128 %i.tq to i8
  %or.cond17.i.i.i.i = icmp eq i8 %i.tr, -1
  %or.cond32.i.i.i.i = and i1 %or.cond17.i.i.i.i, %or.cond31.i.i.i.i
  br i1 %or.cond32.i.i.i.i, label %bb.gu, label %_RNvMs0_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_6IpAddr12to_canonical.exit.i.i

bb.gt:                                            ; preds = %bb.gr
  %.sroa.0.0.copyload.i299.i.i = load i32, ptr %.sroa.2.sroa.2.0..sroa_idx.i.i, align 2, !alias.scope !1342, !noalias !1344
  %.sroa.8638.1.insert.ext.i.i = zext i32 %.sroa.0.0.copyload.i299.i.i to i128
  br label %_RNvMs0_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_6IpAddr12to_canonical.exit.i.i

bb.gu:                                            ; preds = %_RNvMsi_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_8Ipv6Addr14to_ipv4_mapped.exit.i.i.i
  %.sroa.8638.13.extract.shift.i.i = lshr i128 %.sroa.8638.1.copyload.i.i, 96
  br label %_RNvMs0_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_6IpAddr12to_canonical.exit.i.i

_RNvMs0_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_6IpAddr12to_canonical.exit.i.i: ; preds = %bb.gu, %bb.gt, %_RNvMsi_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_8Ipv6Addr14to_ipv4_mapped.exit.i.i.i, %bb.gs
  %.sroa.8631.0.i.i = phi i128 [ %.sroa.8638.13.extract.shift.i.i, %bb.gu ], [ %.sroa.8638.1.insert.ext.i.i, %bb.gt ], [ %.sroa.8638.1.copyload.i.i, %_RNvMsi_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_8Ipv6Addr14to_ipv4_mapped.exit.i.i.i ], [ %.sroa.8638.1.copyload.i.i, %bb.gs ] ; 2 uses
  %.sroa.0629.0.i.i = phi i8 [ 0, %bb.gu ], [ 0, %bb.gt ], [ 1, %_RNvMsi_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_8Ipv6Addr14to_ipv4_mapped.exit.i.i.i ], [ 1, %bb.gs ] ; 2 uses
  %i.ts = trunc nuw i16 %.sroa.0608.0.copyload.i.i to i1 ; 3 uses
  br i1 %i.ts, label %bb.gv, label %bb.gw

bb.gv:                                            ; preds = %_RNvMs0_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_6IpAddr12to_canonical.exit.i.i
  %.sroa.10612.2.extract.shift.i.i = lshr i32 %.sroa.10612.0.copyload.i.i, 16 ; 2 uses
  %.sroa.8650.1.insert.ext653.i.i = zext nneg i32 %.sroa.10612.2.extract.shift.i.i to i128 ; 2 uses
  %.sroa.8650.3.insert.ext.i.i = zext i16 %.sroa.14614.0.copyload.i.i to i128
  %.sroa.8650.3.insert.shift.i.i = shl nuw nsw i128 %.sroa.8650.3.insert.ext.i.i, 16
  %.sroa.8650.5.insert.ext.i.i = zext i96 %.sroa.16617.sroa.0.0.copyload.i.i to i128 ; 9 uses
  %.sroa.8650.5.insert.shift.i.i = shl nuw i128 %.sroa.8650.5.insert.ext.i.i, 32
  %i.tt = or disjoint i128 %.sroa.8650.3.insert.shift.i.i, %.sroa.8650.5.insert.shift.i.i
  %.sroa.8650.5.insert.insert.i.i = or disjoint i128 %i.tt, %.sroa.8650.1.insert.ext653.i.i ; 2 uses
  %.sroa.8650.1.extract.trunc.i.i = trunc i32 %.sroa.10612.2.extract.shift.i.i to i8
  %.sroa.8650.2.extract.shift.i.i = lshr i128 %.sroa.8650.1.insert.ext653.i.i, 8
  %.sroa.8650.2.extract.trunc.i.i = trunc nuw i128 %.sroa.8650.2.extract.shift.i.i to i8
  %i.tu = or i8 %.sroa.8650.2.extract.trunc.i.i, %.sroa.8650.1.extract.trunc.i.i
  %or.cond.i.i307.i.i = icmp eq i8 %i.tu, 0
  br i1 %or.cond.i.i307.i.i, label %_RNvMsi_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_8Ipv6Addr14to_ipv4_mapped.exit.i309.i.i, label %_RNvMs0_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_6IpAddr12to_canonical.exit341.i.i

_RNvMsi_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_8Ipv6Addr14to_ipv4_mapped.exit.i309.i.i: ; preds = %bb.gv
  %.sroa.8650.12.extract.shift.i.i = lshr i128 %.sroa.8650.5.insert.ext.i.i, 56
  %.sroa.8650.11.extract.shift.i.i = lshr i128 %.sroa.8650.5.insert.ext.i.i, 48
  %.sroa.8650.10.extract.shift.i.i = lshr i128 %.sroa.8650.5.insert.ext.i.i, 40
  %.sroa.8650.9.extract.shift.i.i = lshr i128 %.sroa.8650.5.insert.ext.i.i, 32
  %.sroa.8650.8.extract.shift.i.i = lshr i128 %.sroa.8650.5.insert.ext.i.i, 24
  %.sroa.8650.7.extract.shift.i.i = lshr i128 %.sroa.8650.5.insert.ext.i.i, 16
  %.sroa.8650.6.extract.shift.i.i = lshr i128 %.sroa.8650.5.insert.ext.i.i, 8
  %.sroa.8650.6.extract.trunc.i.i = trunc i128 %.sroa.8650.6.extract.shift.i.i to i8
  %.sroa.8650.5.extract.trunc.i.i = trunc i96 %.sroa.16617.sroa.0.0.copyload.i.i to i8
  %.sroa.14614.0.copyload.masked.i.i = and i16 %.sroa.14614.0.copyload.i.i, 255
  %i.tv = or i16 %.sroa.14614.0.copyload.masked.i.i, %3
  %or.cond5.i.i330.i.i = icmp eq i16 %i.tv, 0
  %i.tw = or i8 %.sroa.8650.6.extract.trunc.i.i, %.sroa.8650.5.extract.trunc.i.i
  %or.cond8.i.i331.i.i = icmp eq i8 %i.tw, 0
  %or.cond29.i.i332.i.i = select i1 %or.cond5.i.i330.i.i, i1 %or.cond8.i.i331.i.i, i1 false
  %i.tx = or i128 %.sroa.8650.7.extract.shift.i.i, %.sroa.8650.8.extract.shift.i.i
  %i.ty = trunc i128 %i.tx to i8
  %or.cond11.i.i333.i.i = icmp eq i8 %i.ty, 0
  %or.cond30.i.i334.i.i = select i1 %or.cond29.i.i332.i.i, i1 %or.cond11.i.i333.i.i, i1 false
  %i.tz = or i128 %.sroa.8650.9.extract.shift.i.i, %.sroa.8650.10.extract.shift.i.i
  %i.ua = trunc i128 %i.tz to i8
  %or.cond14.i.i335.i.i = icmp eq i8 %i.ua, 0
  %or.cond31.i.i336.i.i = select i1 %or.cond30.i.i334.i.i, i1 %or.cond14.i.i335.i.i, i1 false
  %i.ub = and i128 %.sroa.8650.11.extract.shift.i.i, %.sroa.8650.12.extract.shift.i.i
  %i.uc = trunc i128 %i.ub to i8
  %or.cond17.i.i337.i.i = icmp eq i8 %i.uc, -1
  %or.cond32.i.i338.i.i = select i1 %or.cond31.i.i336.i.i, i1 %or.cond17.i.i337.i.i, i1 false
  br i1 %or.cond32.i.i338.i.i, label %bb.gx, label %_RNvMs0_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_6IpAddr12to_canonical.exit341.i.i

bb.gw:                                            ; preds = %_RNvMs0_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_6IpAddr12to_canonical.exit.i.i
  %.sroa.8650.1.insert.ext.i.i = zext i32 %.sroa.10612.0.copyload.i.i to i128
  br label %_RNvMs0_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_6IpAddr12to_canonical.exit341.i.i

bb.gx:                                            ; preds = %_RNvMsi_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_8Ipv6Addr14to_ipv4_mapped.exit.i309.i.i
  %.sroa.8650.13.extract.shift.i.i = lshr i128 %.sroa.8650.5.insert.ext.i.i, 64
  br label %_RNvMs0_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_6IpAddr12to_canonical.exit341.i.i

_RNvMs0_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_6IpAddr12to_canonical.exit341.i.i: ; preds = %bb.gx, %bb.gw, %_RNvMsi_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_8Ipv6Addr14to_ipv4_mapped.exit.i309.i.i, %bb.gv
  %.sroa.8643.0.i.i = phi i128 [ %.sroa.8650.13.extract.shift.i.i, %bb.gx ], [ %.sroa.8650.1.insert.ext.i.i, %bb.gw ], [ %.sroa.8650.5.insert.insert.i.i, %_RNvMsi_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_8Ipv6Addr14to_ipv4_mapped.exit.i309.i.i ], [ %.sroa.8650.5.insert.insert.i.i, %bb.gv ] ; 2 uses
  %.sroa.0641.0.i.i = phi i8 [ 0, %bb.gx ], [ 0, %bb.gw ], [ 1, %_RNvMsi_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_8Ipv6Addr14to_ipv4_mapped.exit.i309.i.i ], [ 1, %bb.gv ] ; 2 uses
  %i.ud = trunc nuw i8 %.sroa.0641.0.i.i to i1
  %i.ue = icmp eq i8 %.sroa.0629.0.i.i, %.sroa.0641.0.i.i
  br i1 %i.ue, label %bb.gy, label %.noexc.i.i

bb.gy:                                            ; preds = %_RNvMs0_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_6IpAddr12to_canonical.exit341.i.i
  %i.uf = trunc nuw i8 %.sroa.0629.0.i.i to i1
  br i1 %i.uf, label %.split.i.i, label %bb.gz

.split.i.i:                                       ; preds = %bb.gy
  call void @llvm.assume(i1 %i.ud)
  %i.ug = icmp eq i128 %.sroa.8631.0.i.i, %.sroa.8643.0.i.i
  br i1 %i.ug, label %bb.ha, label %.noexc.i.i

bb.gz:                                            ; preds = %bb.gy
  %.sroa.8631.1.extract.trunc.i.i = trunc i128 %.sroa.8631.0.i.i to i32
  %.sroa.8643.1.extract.trunc.i.i = trunc i128 %.sroa.8643.0.i.i to i32
  %i.uh = icmp eq i32 %.sroa.8631.1.extract.trunc.i.i, %.sroa.8643.1.extract.trunc.i.i
  br i1 %i.uh, label %bb.ha, label %.noexc.i.i

bb.ha:                                            ; preds = %bb.gz, %.split.i.i
  %.sroa.0.0.in.v.i446.sroa.sel.v.sroa.gep985.val.i.i = load i16, ptr %.sroa.0.0.in.v.i446.sroa.sel.v.sroa.gep985.i.i, align 4, !noalias !1189
  %.sroa.0.0.in.v.i446.sroa.sel.v.sroa.gep.val.i.i = load i16, ptr %.sroa.0.0.in.v.i446.sroa.sel.v.sroa.gep.i.i, align 2, !noalias !1189
  %.sroa.0.0.i342.i.i = select i1 %i.tf, i16 %.sroa.0.0.in.v.i446.sroa.sel.v.sroa.gep985.val.i.i, i16 %.sroa.0.0.in.v.i446.sroa.sel.v.sroa.gep.val.i.i
  %.sroa.0.0.i345.sroa.speculated.i.i = select i1 %i.ts, i16 %.sroa.16619.0.copyload.i.i, i16 %.sroa.14614.0.copyload.i.i
  %.not55.i.i = icmp eq i16 %.sroa.0.0.i342.i.i, %.sroa.0.0.i345.sroa.speculated.i.i
  br i1 %.not55.i.i, label %bb.hb, label %.noexc.i.i

bb.hb:                                            ; preds = %bb.ha
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !1189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !1189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !1189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false), !noalias !1189
  invoke void @_RNvMNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_responseNtB2_11DnsResponse11from_buffer(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.ap, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ao)
          to label %bb.hd unwind label %bb.hc, !noalias !1193

bb.hc:                                            ; preds = %bb.hb
  %i.ui = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !1189
  br label %.body37.i

bb.hd:                                            ; preds = %bb.hb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !1189
  %i.uj = load i64, ptr %i.ap, align 8, !range !192, !alias.scope !1346, !noalias !1349, !noundef !15 ; 2 uses
  %i.uk = icmp eq i64 %i.uj, -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8764.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.dv, i64 48, i1 false), !noalias !1189
  br i1 %i.uk, label %bb.km, label %bb.he

bb.he:                                            ; preds = %bb.hd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5769.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.10766.0..sroa_idx767.i.i, i64 120, i1 false), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !1189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8764.i.i, i64 48, i1 false), !noalias !1189
  store i64 %i.uj, ptr %i.aq, align 8, !noalias !1189
  %i.ul = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 600 ; 2 uses
  %i.um = load i16, ptr %i.ul, align 8, !noalias !1185, !noundef !15
  %i.un = load i16, ptr %i.dw, align 2, !noalias !1189, !noundef !15
  %.not58.i.i = icmp eq i16 %i.um, %i.un
  br i1 %.not58.i.i, label %bb.hf, label %.noexc184.i.i

bb.hf:                                            ; preds = %bb.he
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !1189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !1189
  %i.uo = getelementptr i8, ptr %.sroa.01.0.i.i, i64 392
  %.val229.i.i = load ptr, ptr %i.uo, align 8, !noalias !1185, !nonnull !15, !noundef !15
  %i.up = getelementptr i8, ptr %.sroa.01.0.i.i, i64 400
  %.val230.i.i = load i64, ptr %i.up, align 8, !noalias !1185, !noundef !15
  invoke void @_RNvMNtNtCsjXdHNeFfodD_13hickory_proto2op7messageNtB2_7Message8from_vec(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(address) dereferenceable(152) %i.ai, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val229.i.i, i64 noundef %.val230.i.i)
          to label %bb.hh unwind label %bb.hg, !noalias !1193

bb.hg:                                            ; preds = %bb.hf
  %i.uq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !1189
  br label %.thread892.i.i

bb.hh:                                            ; preds = %bb.hf
  %i.ur = load i64, ptr %i.ai, align 8, !range !192, !alias.scope !1351, !noalias !1354, !noundef !15 ; 2 uses
  %i.us = icmp eq i64 %i.ur, -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8782.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.ea, i64 40, i1 false), !noalias !1189
  br i1 %i.us, label %.thread884.i.i, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5788.0..sroa_idx.i.i.a, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.10784.0..sroa_idx785.i.i, i64 104, i1 false), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !1189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4787.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8782.i.i, i64 40, i1 false), !noalias !1189
  store i64 %i.ur, ptr %i.aj, align 8, !noalias !1189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !1189
  store ptr %i.aj, ptr %i.ah, align 8, !noalias !1189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !1189
  store ptr %i.aq, ptr %i.ag, align 8, !noalias !1189
  %.val237.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1189, !nonnull !15, !noundef !15 ; 2 uses
  %.val238.i.i = load i64, ptr %i.eb, align 8, !noalias !1189, !noundef !15 ; 2 uses
  %.idx = mul nuw nsw i64 %.val238.i.i, 88
  %i.ut = getelementptr inbounds nuw i8, ptr %.val237.i.i, i64 %.idx
  %i.uu = load ptr, ptr %.sroa.4787.0..sroa_idx.i.i, align 8, !alias.scope !1356, !noalias !1359, !nonnull !15
  %i.uv = load i64, ptr %i.ec, align 8, !alias.scope !1356, !noalias !1359
  %i.uw = icmp eq i64 %.val238.i.i, 0
  br i1 %i.uw, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB2y_10UdpRequestNtNtNtB2C_7runtime13tokio_runtime20TokioRuntimeProviderENtB2y_7Request4send00ECsi17nFaBu4HY_10ech_client.exit.i.i, label %.lr.ph

bb.hj:                                            ; preds = %.noexc350.i.i.a
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uz, i64 88 ; 2 uses
  %i.uy = icmp eq ptr %i.ux, %i.ut
  br i1 %i.uy, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB2y_10UdpRequestNtNtNtB2C_7runtime13tokio_runtime20TokioRuntimeProviderENtB2y_7Request4send00ECsi17nFaBu4HY_10ech_client.exit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.hi, %bb.hj
  %i.uz = phi ptr [ %i.ux, %bb.hj ], [ %.val237.i.i, %bb.hi ] ; 2 uses
  %i.va = invoke noundef zeroext i1 @_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryNtB5_13SliceContains14slice_containsCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.uz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.uu, i64 noundef %i.uv)
          to label %.noexc350.i.i.a unwind label %bb.hk, !noalias !1193

.noexc350.i.i.a:                                  ; preds = %.lr.ph
  br i1 %i.va, label %bb.hj, label %.noexc190.i.i

bb.hk:                                            ; preds = %.lr.ph
  %i.vb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ju

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB2y_10UdpRequestNtNtNtB2C_7runtime13tokio_runtime20TokioRuntimeProviderENtB2y_7Request4send00ECsi17nFaBu4HY_10ech_client.exit.i.i: ; preds = %bb.hj, %bb.hi
  %i.vc = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 368 ; 2 uses
  %i.vd = load ptr, ptr %i.vc, align 8, !noalias !1185, !nonnull !15, !align !51, !noundef !15
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 361
  %i.vf = load i8, ptr %i.ve, align 1, !range !147, !noalias !1193, !noundef !15
  %i.vg = trunc nuw i8 %i.vf to i1
  br i1 %i.vg, label %bb.hl, label %.noexc187.i.i

bb.hl:                                            ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB2y_10UdpRequestNtNtNtB2C_7runtime13tokio_runtime20TokioRuntimeProviderENtB2y_7Request4send00ECsi17nFaBu4HY_10ech_client.exit.i.i
  %.val235.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1189, !nonnull !15, !noundef !15 ; 2 uses
  %.val236.i.i = load i64, ptr %i.eb, align 8, !noalias !1189, !noundef !15 ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %.val236.i.i, 88
  %i.vh = getelementptr inbounds nuw i8, ptr %.val235.i.i, i64 %.idx.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1361)
  %i.vi = icmp eq i64 %.val236.i.i, 0
  br i1 %i.vi, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB2y_10UdpRequestNtNtNtB2C_7runtime13tokio_runtime20TokioRuntimeProviderENtB2y_7Request4send0s_0ECsi17nFaBu4HY_10ech_client.exit.thread956.thread.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.hl
  %i.vj = load ptr, ptr %.sroa.4787.0..sroa_idx.i.i, align 8, !alias.scope !1361, !noalias !1364, !nonnull !15, !noundef !15 ; 3 uses
  %i.vk = load i64, ptr %i.ec, align 8, !alias.scope !1361, !noalias !1364, !noundef !15 ; 2 uses
  %.idx.i.i.i.i = mul nuw nsw i64 %i.vk, 88
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vj, i64 %.idx.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.vk, 0
  br i1 %.not.i.i.i.i.i, label %.lr.ph.split.us.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1368)
  br label %.noexc193.i.i

_RNCNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB9_10UdpRequestNtNtNtBd_7runtime13tokio_runtime20TokioRuntimeProviderENtB9_7Request4send0s_0Csi17nFaBu4HY_10ech_client.exit.loopexit.i.i.i: ; preds = %.noexc355.i.i, %.noexc353.i.i.a
  %i.vm = icmp eq ptr %i.vo, %i.vh
  br i1 %i.vm, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB2y_10UdpRequestNtNtNtB2C_7runtime13tokio_runtime20TokioRuntimeProviderENtB2y_7Request4send0s_0ECsi17nFaBu4HY_10ech_client.exit.thread956.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i, %_RNCNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB9_10UdpRequestNtNtNtBd_7runtime13tokio_runtime20TokioRuntimeProviderENtB9_7Request4send0s_0Csi17nFaBu4HY_10ech_client.exit.loopexit.i.i.i
  %i.vn = phi ptr [ %i.vo, %_RNCNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB9_10UdpRequestNtNtNtBd_7runtime13tokio_runtime20TokioRuntimeProviderENtB9_7Request4send0s_0Csi17nFaBu4HY_10ech_client.exit.loopexit.i.i.i ], [ %.val235.i.i, %.lr.ph.i.i.i ] ; 9 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 88 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1368)
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vn, i64 84
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vn, i64 86
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vn, i64 80
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vn, i64 82
  %i.vt = load i16, ptr %i.vp, align 4, !range !1369, !alias.scope !1368, !noalias !1370
  %.fr7.i.i.i = freeze i16 %i.vt                  ; 2 uses
  %i.vu = load i16, ptr %i.vq, align 2, !alias.scope !1368, !noalias !1370
  %i.vv = load i16, ptr %i.vr, align 8, !range !1371, !alias.scope !1368, !noalias !1370 ; 4 uses
  %i.vw = load i16, ptr %i.vs, align 2, !alias.scope !1368, !noalias !1370 ; 4 uses
  %i.vx = icmp eq i16 %.fr7.i.i.i, 37
  br i1 %i.vx, label %.lr.ph.i.i.split.us.i.i.i, label %.lr.ph.i.i.split.i.i.i

.lr.ph.i.i.split.us.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i, %.backedge.i.i.us.i.i.i
  %i.vy = phi ptr [ %i.vz, %.backedge.i.i.us.i.i.i ], [ %i.vj, %.lr.ph.i.i.i.i.i ] ; 7 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 88 ; 2 uses
  %i.wa = invoke noundef zeroext i1 @_RNvXs9_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB5_4NameNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.vy, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.vn)
end_hunk_4
begin_hunk_5_@_RNvYINtNtNtCsgO2xhGITpH9_12futures_util6stream17futures_unordered16FuturesUnorderedNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB1r_10UdpRequestNtNtNtB1v_7runtime13tokio_runtime20TokioRuntimeProviderENtB1r_7Request4send0ENtNtB7_6stream9StreamExt15poll_next_unpinCsi17nFaBu4HY_10ech_client:bb.a
  store ptr %i.ul, ptr %i.ak, align 8, !noalias !1189
  store ptr @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.5777.0..sroa_idx.i.i, align 8, !noalias !1189
  store ptr %i.dw, ptr %i.dx, align 8, !noalias !1189
  store ptr @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.5779.0..sroa_idx.i.i, align 8, !noalias !1189
  store ptr @38, ptr %i.al, align 8, !noalias !1189
  store ptr %i.ak, ptr %i.dy, align 8, !noalias !1189
  store ptr %i.al, ptr %i.am, align 8, !noalias !1189
  store ptr @10, ptr %i.dz, align 8, !noalias !1189
  store i64 1, ptr %i.an, align 8, !noalias !1189
  store ptr %i.am, ptr %.sroa.7773.0..sroa_idx.i.i, align 8, !noalias !1189
  store i64 1, ptr %.sroa.8774.0..sroa_idx.i.i, align 8, !noalias !1189
  store ptr %i.abr, ptr %.sroa.9775.0..sroa_idx.i.i, align 8, !noalias !1189
  invoke void @_RNvMNtCsjpgBhlqJ253_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.abq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.an)
          to label %_RNCNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB9_10UdpRequestNtNtNtBd_7runtime13tokio_runtime20TokioRuntimeProviderENtB9_7Request4send0s3_0Csi17nFaBu4HY_10ech_client.exit.i.i unwind label %bb.kl, !noalias !1193

bb.kl:                                            ; preds = %bb.kk
  %i.abs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !1189
  br label %.thread887.i.i

_RNCNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB9_10UdpRequestNtNtNtBd_7runtime13tokio_runtime20TokioRuntimeProviderENtB9_7Request4send0s3_0Csi17nFaBu4HY_10ech_client.exit.i.i: ; preds = %bb.kk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !1189
  br label %.critedge175.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseECsi17nFaBu4HY_10ech_client.exit.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsi17nFaBu4HY_10ech_client.exit.i376.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !1189
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsi17nFaBu4HY_10ech_client.exit504.i.i

.thread887.i.i:                                   ; preds = %bb.kl, %bb.kh, %bb.kf, %bb.kc, %.thread892.i.i, %.thread895.i.i
  %.pn99.pn.pn890.i.i = phi { ptr, i32 } [ %i.yd, %.thread895.i.i ], [ %i.abf, %bb.kc ], [ %.pn92.pn.ph.i.i, %.thread892.i.i ], [ %i.abl, %bb.kf ], [ %i.abs, %bb.kl ], [ %i.abn, %bb.kh ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(176) %i.aq) #24
          to label %.body37.i unwind label %bb.dj, !noalias !1193

bb.km:                                            ; preds = %bb.hd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !1189
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %.sroa.4.8..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8764.i.i, i64 48, i1 false), !noalias !1189
  store i8 8, ptr %i.df, align 8, !alias.scope !1408, !noalias !1411
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.4.i.i.i, i64 55, i1 false), !noalias !1411
  store i64 -1, ptr %i.t, align 8, !alias.scope !1408, !noalias !1411
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseECsi17nFaBu4HY_10ech_client.exit.i

bb.kn:                                            ; preds = %bb.mp, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseECsi17nFaBu4HY_10ech_client.exit.i
  %i.abt = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 608 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.abt)
          to label %bb.kp unwind label %bb.ko, !noalias !1193

bb.ko:                                            ; preds = %bb.kn
  %i.abu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.abt)
          to label %.body271.i.i unwind label %bb.kq, !noalias !1193

bb.kp:                                            ; preds = %bb.kn
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.abt)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsi17nFaBu4HY_10ech_client.exit.i.i unwind label %bb.lp, !noalias !1193

bb.kq:                                            ; preds = %bb.ko
  %i.abv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !noalias !1193
  unreachable

.body37.i:                                        ; preds = %.thread887.i.i, %bb.kc, %bb.kb, %bb.jy, %bb.jw, %bb.ip, %bb.in, %bb.hc
  %.pn103.pn.i.i = phi { ptr, i32 } [ %i.ui, %bb.hc ], [ %i.abf, %bb.kc ], [ %.pn99.pn.pn890.i.i, %.thread887.i.i ], [ %i.yh, %bb.in ], [ %i.yi, %bb.ip ], [ %i.abe, %bb.kb ], [ %i.abb, %bb.jy ], [ %i.aba, %bb.jw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !1189
  br label %.body502.i.i

.noexc.i.i:                                       ; preds = %bb.ha, %bb.gz, %.split.i.i, %_RNvMs0_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_6IpAddr12to_canonical.exit341.i.i
  %i.abw = load atomic i64, ptr @_RNvNtCsjpgBhlqJ253_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !1189
  %i.abx = and i64 %i.abw, -2
  %switch967.i.i = icmp eq i64 %i.abx, 4
  br i1 %switch967.i.i, label %.critedge179.i.i, label %bb.kr

bb.kr:                                            ; preds = %.noexc.i.i
  %i.aby = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB9_10UdpRequestpENtB9_7Request4send0s0_10___CALLSITE, i64 16) monotonic, align 8, !noalias !1189 ; 2 uses
  %i.abz = icmp ult i8 %i.aby, 3
  br i1 %i.abz, label %bb.ku, label %bb.ks, !prof !973

bb.ks:                                            ; preds = %bb.kr
  %i.aca = invoke noundef i8 @_RNvMNtCsjpgBhlqJ253_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB9_10UdpRequestpENtB9_7Request4send0s0_10___CALLSITE) #22
          to label %bb.ku unwind label %bb.kt, !noalias !1193

bb.kt:                                            ; preds = %bb.ks
  %i.acb = landingpad { ptr, i32 }
          cleanup
  br label %bb.mm

bb.ku:                                            ; preds = %bb.ks, %bb.kr
  %.sroa.0.0.i402.i.i = phi i8 [ %i.aby, %bb.kr ], [ %i.aca, %bb.ks ] ; 2 uses
  %i.acc = icmp eq i8 %.sroa.0.0.i402.i.i, 0
  br i1 %i.acc, label %.critedge179.i.i, label %bb.kw

bb.kv:                                            ; preds = %bb.kw
  %i.acd = landingpad { ptr, i32 }
          cleanup
  br label %bb.mm

bb.kw:                                            ; preds = %bb.ku
  %i.ace = load ptr, ptr @_RNvNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB9_10UdpRequestpENtB9_7Request4send0s0_10___CALLSITE, align 8, !noalias !1189, !nonnull !15, !align !51, !noundef !15
  %i.acf = invoke noundef zeroext i1 @_RNvNtCsiIyHGM5EznH_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ace, i8 noundef %.sroa.0.0.i402.i.i)
          to label %bb.kx unwind label %bb.kv, !noalias !1193

bb.kx:                                            ; preds = %bb.kw
  br i1 %i.acf, label %bb.ky, label %.critedge179.i.i

bb.ky:                                            ; preds = %bb.kx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !1189
  %i.acg = load ptr, ptr @_RNvNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB9_10UdpRequestpENtB9_7Request4send0s0_10___CALLSITE, align 8, !noalias !1189, !nonnull !15, !align !51, !noundef !15 ; 2 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acg, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !1189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !1189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !1189
  call void @llvm.experimental.noalias.scope.decl(metadata !1413)
  %i.aci = load i16, ptr %i.bb, align 4, !range !193, !alias.scope !1416, !noalias !1418, !noundef !15
  %i.acj = trunc nuw i16 %i.aci to i1
  br i1 %i.acj, label %bb.kz, label %bb.la

bb.kz:                                            ; preds = %bb.ky
  %.sroa.7666.1.copyload.i.i = load i32, ptr %i.dp, align 4, !alias.scope !1419, !noalias !1189 ; 5 uses
  %.sroa.7666.sroa.8.0.extract.shift704.i.i = lshr i32 %.sroa.7666.1.copyload.i.i, 8
  %.sroa.13669.1.copyload.i.i = load i8, ptr %.sroa.13669.1..sroa_idx.i.i, align 4, !alias.scope !1419, !noalias !1189 ; 2 uses
  %.sroa.14672.1.copyload.i.i = load i8, ptr %.sroa.14672.1..sroa_idx.i.i, align 1, !alias.scope !1419, !noalias !1189 ; 2 uses
  %.sroa.15675.1.copyload.i.i = load i8, ptr %.sroa.15675.1..sroa_idx.i.i, align 2, !alias.scope !1419, !noalias !1189 ; 2 uses
  %.sroa.16678.1.copyload.i.i = load i8, ptr %.sroa.16678.1..sroa_idx.i.i, align 1, !alias.scope !1419, !noalias !1189 ; 2 uses
  %.sroa.17681.1.copyload.i.i = load i8, ptr %.sroa.17681.1..sroa_idx.i.i, align 4, !alias.scope !1419, !noalias !1189 ; 2 uses
  %.sroa.18684.1.copyload.i.i = load i8, ptr %.sroa.18684.1..sroa_idx.i.i, align 1, !alias.scope !1419, !noalias !1189 ; 2 uses
  %.sroa.19687.1.copyload.i.i = load i8, ptr %.sroa.19687.1..sroa_idx.i.i, align 2, !alias.scope !1419, !noalias !1189 ; 2 uses
  %.sroa.20690.1.copyload.i.i = load i8, ptr %.sroa.20690.1..sroa_idx.i.i, align 1, !alias.scope !1419, !noalias !1189 ; 2 uses
  %.sroa.21693.1.copyload.i.i = load i32, ptr %.sroa.21693.1..sroa_idx.i.i, align 4, !alias.scope !1419, !noalias !1189 ; 2 uses
  %i.ack = or i32 %.sroa.7666.sroa.8.0.extract.shift704.i.i, %.sroa.7666.1.copyload.i.i
  %i.acl = and i32 %i.ack, 255
  %or.cond.i.i411.i.i = icmp eq i32 %i.acl, 0
  br i1 %or.cond.i.i411.i.i, label %_RNvMsi_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_8Ipv6Addr14to_ipv4_mapped.exit.i413.i.i, label %.critedge.i412.i.i

_RNvMsi_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_8Ipv6Addr14to_ipv4_mapped.exit.i413.i.i: ; preds = %bb.kz
  %.sroa.7666.sroa.9.0.extract.shift710.i.i = lshr i32 %.sroa.7666.1.copyload.i.i, 16
  %.sroa.7666.sroa.10.0.extract.shift716.i.i = lshr i32 %.sroa.7666.1.copyload.i.i, 24
  %.sroa.7666.sroa.9.0.extract.shift710.masked.i.i = and i32 %.sroa.7666.sroa.9.0.extract.shift710.i.i, 255
  %i.acm = or i32 %.sroa.7666.sroa.9.0.extract.shift710.masked.i.i, %.sroa.7666.sroa.10.0.extract.shift716.i.i
  %or.cond5.i.i434.i.i = icmp eq i32 %i.acm, 0
  %i.acn = or i8 %.sroa.14672.1.copyload.i.i, %.sroa.13669.1.copyload.i.i
  %or.cond8.i.i435.i.i = icmp eq i8 %i.acn, 0
  %or.cond29.i.i436.i.i = select i1 %or.cond5.i.i434.i.i, i1 %or.cond8.i.i435.i.i, i1 false
  %i.aco = or i8 %.sroa.16678.1.copyload.i.i, %.sroa.15675.1.copyload.i.i
  %or.cond11.i.i437.i.i = icmp eq i8 %i.aco, 0
  %or.cond30.i.i438.i.i = select i1 %or.cond29.i.i436.i.i, i1 %or.cond11.i.i437.i.i, i1 false
  %i.acp = or i8 %.sroa.18684.1.copyload.i.i, %.sroa.17681.1.copyload.i.i
  %or.cond14.i.i439.i.i = icmp eq i8 %i.acp, 0
  %or.cond31.i.i440.i.i = select i1 %or.cond30.i.i438.i.i, i1 %or.cond14.i.i439.i.i, i1 false
  %i.acq = and i8 %.sroa.20690.1.copyload.i.i, %.sroa.19687.1.copyload.i.i
  %or.cond17.i.i441.i.i = icmp eq i8 %i.acq, -1
  %or.cond32.i.i442.i.i = select i1 %or.cond31.i.i440.i.i, i1 %or.cond17.i.i441.i.i, i1 false
  br i1 %or.cond32.i.i442.i.i, label %bb.lb, label %.critedge.i412.i.i

bb.la:                                            ; preds = %bb.ky
  %.sroa.0.0.copyload.i405.i.i = load i32, ptr %.sroa.2.sroa.2.0..sroa_idx.i.i, align 2, !alias.scope !1416, !noalias !1418
  call void @llvm.experimental.noalias.scope.decl(metadata !1420)
  store i8 0, ptr %i.av, align 1, !alias.scope !1423, !noalias !1189
  store i32 %.sroa.0.0.copyload.i405.i.i, ptr %.sroa.7666.0..sroa_idx.i.i, align 1, !alias.scope !1423, !noalias !1189
  br label %bb.lc

bb.lb:                                            ; preds = %_RNvMsi_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_8Ipv6Addr14to_ipv4_mapped.exit.i413.i.i
  store i32 %.sroa.21693.1.copyload.i.i, ptr %.sroa.7666.0..sroa_idx.i.i, align 1, !alias.scope !1425, !noalias !1426
  store i8 0, ptr %i.av, align 1, !alias.scope !1425, !noalias !1426
  br label %bb.lc

.critedge.i412.i.i:                               ; preds = %_RNvMsi_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_8Ipv6Addr14to_ipv4_mapped.exit.i413.i.i, %bb.kz
  store i8 1, ptr %i.av, align 1, !alias.scope !1423, !noalias !1189
  store i32 %.sroa.7666.1.copyload.i.i, ptr %.sroa.7666.0..sroa_idx.i.i, align 1, !alias.scope !1423, !noalias !1189
  store i8 %.sroa.13669.1.copyload.i.i, ptr %.sroa.13669.0..sroa_idx670.i.i, align 1, !alias.scope !1423, !noalias !1189
  store i8 %.sroa.14672.1.copyload.i.i, ptr %.sroa.14672.0..sroa_idx673.i.i, align 1, !alias.scope !1423, !noalias !1189
  store i8 %.sroa.15675.1.copyload.i.i, ptr %.sroa.15675.0..sroa_idx676.i.i, align 1, !alias.scope !1423, !noalias !1189
  store i8 %.sroa.16678.1.copyload.i.i, ptr %.sroa.16678.0..sroa_idx679.i.i, align 1, !alias.scope !1423, !noalias !1189
  store i8 %.sroa.17681.1.copyload.i.i, ptr %.sroa.17681.0..sroa_idx682.i.i, align 1, !alias.scope !1423, !noalias !1189
  store i8 %.sroa.18684.1.copyload.i.i, ptr %.sroa.18684.0..sroa_idx685.i.i, align 1, !alias.scope !1423, !noalias !1189
  store i8 %.sroa.19687.1.copyload.i.i, ptr %.sroa.19687.0..sroa_idx688.i.i, align 1, !alias.scope !1423, !noalias !1189
  store i8 %.sroa.20690.1.copyload.i.i, ptr %.sroa.20690.0..sroa_idx691.i.i, align 1, !alias.scope !1423, !noalias !1189
  store i32 %.sroa.21693.1.copyload.i.i, ptr %.sroa.21693.0..sroa_idx694.i.i, align 1, !alias.scope !1423, !noalias !1189
  br label %bb.lc

bb.lc:                                            ; preds = %.critedge.i412.i.i, %bb.lb, %bb.la
  %.sroa.0.0.in.v.i446.sroa.sel.v.sroa.phi.i.i = phi ptr [ %.sroa.0.0.in.v.i446.sroa.sel.v.sroa.gep.i.i, %bb.la ], [ %.sroa.0.0.in.v.i446.sroa.sel.v.sroa.gep985.i.i, %bb.lb ], [ %.sroa.0.0.in.v.i446.sroa.sel.v.sroa.gep985.i.i, %.critedge.i412.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !1189
  %.sroa.0.0.i448.i.i = load i16, ptr %.sroa.0.0.in.v.i446.sroa.sel.v.sroa.phi.i.i, align 2, !alias.scope !1427, !noalias !1189, !noundef !15
  store i16 %.sroa.0.0.i448.i.i, ptr %i.au, align 2, !noalias !1189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !1189
  br i1 %i.ts, label %bb.ld, label %bb.le

bb.ld:                                            ; preds = %bb.lc
  %.sroa.10612.2.extract.shift627.i.i = lshr i32 %.sroa.10612.0.copyload.i.i, 16
  %sum.shift.i.i = lshr i32 %.sroa.10612.0.copyload.i.i, 24 ; 2 uses
  %4 = zext i16 %.sroa.14614.0.copyload.i.i to i32
  %5 = shl nuw i32 %4, 16
  %.sroa.10612.2.extract.shift627.masked.i.i = and i32 %.sroa.10612.2.extract.shift627.i.i, 255 ; 2 uses
  %i.acr = or i32 %.sroa.10612.2.extract.shift627.masked.i.i, %sum.shift.i.i
  %or.cond.i.i455.i.i = icmp eq i32 %i.acr, 0
  br i1 %or.cond.i.i455.i.i, label %_RNvMsi_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_8Ipv6Addr14to_ipv4_mapped.exit.i457.i.i, label %.critedge.i456.i.i

_RNvMsi_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_8Ipv6Addr14to_ipv4_mapped.exit.i457.i.i: ; preds = %bb.ld
  %.sroa.14724.12.extract.shift.i.i = lshr i96 %.sroa.16617.sroa.0.0.copyload.i.i, 56
  %.sroa.14724.11.extract.shift.i.i = lshr i96 %.sroa.16617.sroa.0.0.copyload.i.i, 48
  %.sroa.14724.10.extract.shift.i.i = lshr i96 %.sroa.16617.sroa.0.0.copyload.i.i, 40
  %.sroa.14724.9.extract.shift.i.i = lshr i96 %.sroa.16617.sroa.0.0.copyload.i.i, 32
  %.sroa.14724.8.extract.shift.i.i = lshr i96 %.sroa.16617.sroa.0.0.copyload.i.i, 24
  %.sroa.14724.7.extract.shift.i.i = lshr i96 %.sroa.16617.sroa.0.0.copyload.i.i, 16
  %.sroa.14724.6.extract.shift.i.i = lshr i96 %.sroa.16617.sroa.0.0.copyload.i.i, 8
  %.sroa.14614.0.copyload.masked961.i.i = and i16 %.sroa.14614.0.copyload.i.i, 255
  %i.acs = or i16 %3, %.sroa.14614.0.copyload.masked961.i.i
  %or.cond5.i.i478.i.i = icmp eq i16 %i.acs, 0
  %i.act = or i96 %.sroa.14724.6.extract.shift.i.i, %.sroa.16617.sroa.0.0.copyload.i.i
  %i.acu = trunc i96 %i.act to i8
  %or.cond8.i.i479.i.i = icmp eq i8 %i.acu, 0
  %or.cond29.i.i480.i.i = select i1 %or.cond5.i.i478.i.i, i1 %or.cond8.i.i479.i.i, i1 false
  %i.acv = or i96 %.sroa.14724.7.extract.shift.i.i, %.sroa.14724.8.extract.shift.i.i
  %i.acw = trunc i96 %i.acv to i8
  %or.cond11.i.i481.i.i = icmp eq i8 %i.acw, 0
  %or.cond30.i.i482.i.i = select i1 %or.cond29.i.i480.i.i, i1 %or.cond11.i.i481.i.i, i1 false
  %i.acx = or i96 %.sroa.14724.9.extract.shift.i.i, %.sroa.14724.10.extract.shift.i.i
  %i.acy = trunc i96 %i.acx to i8
  %or.cond14.i.i483.i.i = icmp eq i8 %i.acy, 0
  %or.cond31.i.i484.i.i = select i1 %or.cond30.i.i482.i.i, i1 %or.cond14.i.i483.i.i, i1 false
  %i.acz = and i96 %.sroa.14724.11.extract.shift.i.i, %.sroa.14724.12.extract.shift.i.i
  %i.ada = trunc i96 %i.acz to i8
  %or.cond17.i.i485.i.i = icmp eq i8 %i.ada, -1
  %or.cond32.i.i486.i.i = select i1 %or.cond31.i.i484.i.i, i1 %or.cond17.i.i485.i.i, i1 false
  br i1 %or.cond32.i.i486.i.i, label %bb.lf, label %.critedge.i456.i.i

bb.le:                                            ; preds = %bb.lc
  call void @llvm.experimental.noalias.scope.decl(metadata !1430)
  store i8 0, ptr %i.at, align 1, !alias.scope !1433, !noalias !1189
  store i32 %.sroa.10612.0.copyload.i.i, ptr %.sroa.7720.0..sroa_idx.i.i, align 1, !alias.scope !1433, !noalias !1189
  br label %bb.lg

bb.lf:                                            ; preds = %_RNvMsi_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_8Ipv6Addr14to_ipv4_mapped.exit.i457.i.i
  %.sroa.14724.13.extract.shift.i.i = lshr i96 %.sroa.16617.sroa.0.0.copyload.i.i, 64
  %.sroa.14724.13.extract.trunc.i.i = trunc nuw i96 %.sroa.14724.13.extract.shift.i.i to i32
  store i32 %.sroa.14724.13.extract.trunc.i.i, ptr %.sroa.7720.0..sroa_idx.i.i, align 1, !alias.scope !1435, !noalias !1436
  store i8 0, ptr %i.at, align 1, !alias.scope !1435, !noalias !1436
  br label %bb.lg

.critedge.i456.i.i:                               ; preds = %_RNvMsi_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_8Ipv6Addr14to_ipv4_mapped.exit.i457.i.i, %bb.ld
  store i8 1, ptr %i.at, align 1, !alias.scope !1433, !noalias !1189
  %.sroa.7720.sroa.0.sroa.8.0.insert.shift749.i.i = shl nuw nsw i32 %sum.shift.i.i, 8
  %i.adb = or disjoint i32 %5, %.sroa.7720.sroa.0.sroa.8.0.insert.shift749.i.i
  %.sroa.7720.sroa.0.0.insert.insert729.i.i = or disjoint i32 %i.adb, %.sroa.10612.2.extract.shift627.masked.i.i
  store i32 %.sroa.7720.sroa.0.0.insert.insert729.i.i, ptr %.sroa.7720.0..sroa_idx.i.i, align 1, !alias.scope !1433, !noalias !1189
  store i96 %.sroa.16617.sroa.0.0.copyload.i.i, ptr %.sroa.14724.0..sroa_idx725.i.i, align 1, !alias.scope !1433, !noalias !1189
  br label %bb.lg

bb.lg:                                            ; preds = %.critedge.i456.i.i, %bb.lf, %bb.le
  %.sroa.0.0.i492.sroa.speculated.i.i = phi i16 [ %.sroa.14614.0.copyload.i.i, %bb.le ], [ %.sroa.16619.0.copyload.i.i, %bb.lf ], [ %.sroa.16619.0.copyload.i.i, %.critedge.i456.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !1189
  store i16 %.sroa.0.0.i492.sroa.speculated.i.i, ptr %i.as, align 2, !noalias !1189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !1189
  store ptr %i.av, ptr %i.ar, align 8, !noalias !1189
  store ptr @_RNvXs2_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_6IpAddrNtNtB9_3fmt7Display3fmt, ptr %.sroa.5755.0..sroa_idx.i.i.a, align 8, !noalias !1189
  store ptr %i.au, ptr %i.dq, align 8, !noalias !1189
  store ptr @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.5757.0..sroa_idx.i.i, align 8, !noalias !1189
  store ptr %i.at, ptr %i.dr, align 8, !noalias !1189
  store ptr @_RNvXs2_NtNtCsj6eKBz9Db1c_4core3net7ip_addrNtB5_6IpAddrNtNtB9_3fmt7Display3fmt, ptr %.sroa.5759.0..sroa_idx.i.i, align 8, !noalias !1189
  store ptr %i.as, ptr %i.ds, align 8, !noalias !1189
  store ptr @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.5761.0..sroa_idx.i.i, align 8, !noalias !1189
  store ptr @39, ptr %i.aw, align 8, !noalias !1189
  store ptr %i.ar, ptr %i.dt, align 8, !noalias !1189
  store ptr %i.aw, ptr %i.ax, align 8, !noalias !1189
  store ptr @10, ptr %i.du, align 8, !noalias !1189
  store i64 1, ptr %i.ay, align 8, !noalias !1189
  store ptr %i.ax, ptr %.sroa.10661.0..sroa_idx.i.i, align 8, !noalias !1189
  store i64 1, ptr %.sroa.11662.0..sroa_idx.i.i, align 8, !noalias !1189
  store ptr %i.ach, ptr %.sroa.12663.0..sroa_idx.i.i, align 8, !noalias !1189
  invoke void @_RNvMNtCsjpgBhlqJ253_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.acg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ay)
          to label %_RNCNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB9_10UdpRequestNtNtNtBd_7runtime13tokio_runtime20TokioRuntimeProviderENtB9_7Request4send0s2_0Csi17nFaBu4HY_10ech_client.exit.i.i unwind label %bb.lh, !noalias !1193

bb.lh:                                            ; preds = %bb.lg
  %i.adc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !1189
  br label %bb.mm

_RNCNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB9_10UdpRequestNtNtNtBd_7runtime13tokio_runtime20TokioRuntimeProviderENtB9_7Request4send0s2_0Csi17nFaBu4HY_10ech_client.exit.i.i: ; preds = %bb.lg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !1189
  br label %.critedge179.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsi17nFaBu4HY_10ech_client.exit504.i.i: ; preds = %bb.lj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseECsi17nFaBu4HY_10ech_client.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !1189
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 632
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !1437, !noalias !1442
  %.phi.trans.insert987.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 636
  %.pre988.i.i = load i32, ptr %.phi.trans.insert987.i.i, align 4, !alias.scope !1443, !noalias !1444
  br label %bb.fm

.critedge179.i.i:                                 ; preds = %_RNCNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp17udp_client_streamINtB9_10UdpRequestNtNtNtBd_7runtime13tokio_runtime20TokioRuntimeProviderENtB9_7Request4send0s2_0Csi17nFaBu4HY_10ech_client.exit.i.i, %bb.kx, %bb.ku, %.noexc.i.i
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %bb.lj unwind label %bb.li, !noalias !1193

bb.li:                                            ; preds = %.critedge179.i.i
  %i.add = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %.body502.i.i unwind label %bb.lk, !noalias !1193

bb.lj:                                            ; preds = %.critedge179.i.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsi17nFaBu4HY_10ech_client.exit504.i.i unwind label %bb.gq, !noalias !1193

bb.lk:                                            ; preds = %bb.li
  %i.ade = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !noalias !1193
  unreachable

bb.ll:                                            ; preds = %bb.fm
  store i8 4, ptr %i.df, align 8, !noalias !1189
  store ptr @40, ptr %.sroa.5831.0..sroa_idx.i.i, align 8, !noalias !1189
  store i64 29, ptr %.sroa.6832.0..sroa_idx.i.i, align 8, !noalias !1189
  store i64 -1, ptr %i.t, align 8, !noalias !1189
  %i.adf = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 608 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.adf)
          to label %bb.ln unwind label %bb.lm, !noalias !1193

bb.lm:                                            ; preds = %bb.ll
  %i.adg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.adf)
          to label %.body271.i.i unwind label %bb.lo, !noalias !1193

bb.ln:                                            ; preds = %bb.ll
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.adf)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsi17nFaBu4HY_10ech_client.exit509.i.i unwind label %bb.lp, !noalias !1193

bb.lo:                                            ; preds = %bb.lm
  %i.adh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !noalias !1193
  unreachable

bb.lp:                                            ; preds = %bb.ln, %bb.kp
  %i.adi = landingpad { ptr, i32 }
          cleanup
  br label %.body271.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsi17nFaBu4HY_10ech_client.exit509.i.i: ; preds = %bb.ln
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !1189
  %i.adj = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 48 ; 3 uses
  invoke void @_RNvXs3_NtNtCskruEhpekJ3V_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtCsUoH6ltOcnV_3mio3net3udp9UdpSocketENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.adj)
          to label %bb.ls unwind label %bb.lq, !noalias !1193

bb.lq:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsi17nFaBu4HY_10ech_client.exit509.i.i
  %i.adk = landingpad { ptr, i32 }
          cleanup
  %i.adl = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 72
  %.val2.i.i510.i.i = load i32, ptr %i.adl, align 4, !alias.scope !1445, !noalias !1185, !noundef !15 ; 2 uses
  %i.adm = icmp eq i32 %.val2.i.i510.i.i, -1
  br i1 %i.adm, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsUoH6ltOcnV_3mio3net3udp9UdpSocketEECsi17nFaBu4HY_10ech_client.exit.i.i511.i.i, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.adn = call noundef i32 @close(i32 noundef %.val2.i.i510.i.i) #26, !noalias !1193 ; 0 uses
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsUoH6ltOcnV_3mio3net3udp9UdpSocketEECsi17nFaBu4HY_10ech_client.exit.i.i511.i.i

bb.ls:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsi17nFaBu4HY_10ech_client.exit509.i.i
  %i.ado = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 72
  %.val.i.i512.i.i = load i32, ptr %i.ado, align 8, !alias.scope !1445, !noalias !1185, !noundef !15 ; 2 uses
  %i.adp = icmp eq i32 %.val.i.i512.i.i, -1
  br i1 %i.adp, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtCsUoH6ltOcnV_3mio3net3udp9UdpSocketEECsi17nFaBu4HY_10ech_client.exit.i513.i.i, label %bb.lt

bb.lt:                                            ; preds = %bb.ls
  %i.adq = call noundef i32 @close(i32 noundef %.val.i.i512.i.i) #26, !noalias !1193 ; 0 uses
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtCsUoH6ltOcnV_3mio3net3udp9UdpSocketEECsi17nFaBu4HY_10ech_client.exit.i513.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsUoH6ltOcnV_3mio3net3udp9UdpSocketEECsi17nFaBu4HY_10ech_client.exit.i.i511.i.i: ; preds = %bb.lr, %bb.lq
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12registration12RegistrationECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.adj) #24
          to label %.body289.i.i unwind label %bb.lu, !noalias !1193

bb.lu:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsUoH6ltOcnV_3mio3net3udp9UdpSocketEECsi17nFaBu4HY_10ech_client.exit.i.i511.i.i
  %i.adr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !noalias !1193
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtCsUoH6ltOcnV_3mio3net3udp9UdpSocketEECsi17nFaBu4HY_10ech_client.exit.i513.i.i: ; preds = %bb.lt, %bb.ls
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12registration12RegistrationECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.adj)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCskruEhpekJ3V_5tokio3net3udp9UdpSocketECsi17nFaBu4HY_10ech_client.exit517.i.i unwind label %bb.lv, !noalias !1193

bb.lv:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtCsUoH6ltOcnV_3mio3net3udp9UdpSocketEECsi17nFaBu4HY_10ech_client.exit.i513.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtCsUoH6ltOcnV_3mio3net3udp9UdpSocketEECsi17nFaBu4HY_10ech_client.exit.i.i.i
  %i.ads = landingpad { ptr, i32 }
          cleanup
  br label %.body289.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCskruEhpekJ3V_5tokio3net3udp9UdpSocketECsi17nFaBu4HY_10ech_client.exit517.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtCsUoH6ltOcnV_3mio3net3udp9UdpSocketEECsi17nFaBu4HY_10ech_client.exit.i513.i.i
  %i.adt = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 440
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op7message7MessageECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(152) %i.adt)
          to label %bb.lx unwind label %bb.lw, !noalias !1193

bb.lw:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCskruEhpekJ3V_5tokio3net3udp9UdpSocketECsi17nFaBu4HY_10ech_client.exit517.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCskruEhpekJ3V_5tokio3net3udp9UdpSocketECsi17nFaBu4HY_10ech_client.exit.i.i
  %i.adu = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.lx:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCskruEhpekJ3V_5tokio3net3udp9UdpSocketECsi17nFaBu4HY_10ech_client.exit517.i.i
  %i.adv = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 384 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.adv)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsi17nFaBu4HY_10ech_client.exit.i519.i.i unwind label %bb.ly, !noalias !1193

bb.ly:                                            ; preds = %bb.lx
  %i.adw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.adv)
          to label %.body259.i.i unwind label %bb.lz, !noalias !1193

bb.lz:                                            ; preds = %bb.ly
  %i.adx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !noalias !1193
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsi17nFaBu4HY_10ech_client.exit.i519.i.i: ; preds = %bb.lx
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.adv)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op14serial_message13SerialMessageECsi17nFaBu4HY_10ech_client.exit523.i.i unwind label %bb.ma, !noalias !1193

bb.ma:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsi17nFaBu4HY_10ech_client.exit.i519.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsi17nFaBu4HY_10ech_client.exit.i.i.i
  %i.ady = landingpad { ptr, i32 }
          cleanup
  br label %.body259.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op14serial_message13SerialMessageECsi17nFaBu4HY_10ech_client.exit523.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsi17nFaBu4HY_10ech_client.exit.i519.i.i
  %i.adz = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 602
  store i8 0, ptr %i.adz, align 2, !noalias !1185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !1189
  %i.aea = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 80
end_hunk_5

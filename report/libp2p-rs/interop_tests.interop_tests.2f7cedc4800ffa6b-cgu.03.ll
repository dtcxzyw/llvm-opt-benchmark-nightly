Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/interop_tests.interop_tests.2f7cedc4800ffa6b-cgu.03?download=true
inline.NumInlined: 3215
inline.NumDeleted: 1667
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RINvNtNtCsc13h7DQFCSE_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtCs4LZN9PPmi2I_11hickory_net4xfer12dns_exchange21DnsExchangeBackgroundINtNtB1W_15dns_multiplexer14DnsMultiplexerINtNtNtB1Y_3tcp17tcp_client_stream15TcpClientStreamINtNtNtB1Y_7runtime8iocompat17AsyncIoTokioAsStdNtNtNtNtB6_3net3tcp6stream9TcpStreamEEENtB4F_9TokioTimeEEEINtNtB1n_4sync3ArcNtNtNtNtB4_9scheduler12multi_thread6handle6HandleEECs44McOc0n4RX_13interop_tests:bb.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsc13h7DQFCSE_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtCs4LZN9PPmi2I_11hickory_net4xfer12dns_exchange21DnsExchangeBackgroundINtNtNtB1Y_3udp17udp_client_stream15UdpClientStreamNtNtNtB1Y_7runtime13tokio_runtime20TokioRuntimeProviderENtB3Y_9TokioTimeEEEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECs44McOc0n4RX_13interop_tests(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef nonnull align 8 %1, ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB5_4CellINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtCs4LZN9PPmi2I_11hickory_net4xfer12dns_exchange21DnsExchangeBackgroundINtNtNtB2a_3udp17udp_client_stream15UdpClientStreamNtNtNtB2a_7runtime13tokio_runtime20TokioRuntimeProviderENtB4a_9TokioTimeEEEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE3newCs44McOc0n4RX_13interop_tests(ptr noalias noundef nonnull align 8 %1, ptr noundef nonnull %2, i64 noundef 204, i64 noundef %3) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsc13h7DQFCSE_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtCs4LZN9PPmi2I_11hickory_net4xfer12dns_exchange21DnsExchangeBackgroundINtNtNtB1Y_3udp17udp_client_stream15UdpClientStreamNtNtNtB1Y_7runtime13tokio_runtime20TokioRuntimeProviderENtB3Y_9TokioTimeEEEINtNtB1n_4sync3ArcNtNtNtNtB4_9scheduler12multi_thread6handle6HandleEECs44McOc0n4RX_13interop_tests(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef nonnull align 8 %1, ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB5_4CellINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtCs4LZN9PPmi2I_11hickory_net4xfer12dns_exchange21DnsExchangeBackgroundINtNtNtB2a_3udp17udp_client_stream15UdpClientStreamNtNtNtB2a_7runtime13tokio_runtime20TokioRuntimeProviderENtB4a_9TokioTimeEEEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newCs44McOc0n4RX_13interop_tests(ptr noalias noundef nonnull align 8 %1, ptr noundef nonnull %2, i64 noundef 204, i64 noundef %3) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsc13h7DQFCSE_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtCsl9hx9jpF0W9_12futures_util6future6future3MapINtNtNtB1Y_6stream6stream7ForwardINtNtB2L_3map3MapINtNtB2N_7poll_fn6PollFnNCINvMs2_NtNtCs5hzaM3VbZx4_5redis3aio22multiplexed_connectionNtB43_8Pipeline3newINtNtNtCs3r7LNfiWgbg_10tokio_util5codec6framed6FramedIBN_IB1j_DNtB45_11AsyncStreamNtNtBR_6marker4SendNtB6y_4SyncEL_EENtNtNtB47_6parser11aio_support10ValueCodecEE0ENcNtINtNtBR_6result6ResultNtB43_15PipelineMessageuE2Ok0EINtB43_12PipelineSinkB5c_EENCB3W_s_0EEEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECs44McOc0n4RX_13interop_tests(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef nonnull align 8 %1, ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB5_4CellINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtCsl9hx9jpF0W9_12futures_util6future6future3MapINtNtNtB2a_6stream6stream7ForwardINtNtB2X_3map3MapINtNtB2Z_7poll_fn6PollFnNCINvMs2_NtNtCs5hzaM3VbZx4_5redis3aio22multiplexed_connectionNtB4f_8Pipeline3newINtNtNtCs3r7LNfiWgbg_10tokio_util5codec6framed6FramedIBZ_IB1v_DNtB4h_11AsyncStreamNtNtB13_6marker4SendNtB6K_4SyncEL_EENtNtNtB4j_6parser11aio_support10ValueCodecEE0ENcNtINtNtB13_6result6ResultNtB4f_15PipelineMessageuE2Ok0EINtB4f_12PipelineSinkB5o_EENCB48_s_0EEEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE3newCs44McOc0n4RX_13interop_tests(ptr noalias noundef nonnull align 8 %1, ptr noundef nonnull %2, i64 noundef 204, i64 noundef %3) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsc13h7DQFCSE_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtCsl9hx9jpF0W9_12futures_util6future6future3MapINtNtNtB1Y_6stream6stream7ForwardINtNtB2L_3map3MapINtNtB2N_7poll_fn6PollFnNCINvMs2_NtNtCs5hzaM3VbZx4_5redis3aio22multiplexed_connectionNtB43_8Pipeline3newINtNtNtCs3r7LNfiWgbg_10tokio_util5codec6framed6FramedIBN_IB1j_DNtB45_11AsyncStreamNtNtBR_6marker4SendNtB6y_4SyncEL_EENtNtNtB47_6parser11aio_support10ValueCodecEE0ENcNtINtNtBR_6result6ResultNtB43_15PipelineMessageuE2Ok0EINtB43_12PipelineSinkB5c_EENCB3W_s_0EEEINtNtB1n_4sync3ArcNtNtNtNtB4_9scheduler12multi_thread6handle6HandleEECs44McOc0n4RX_13interop_tests(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef nonnull align 8 %1, ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB5_4CellINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtCsl9hx9jpF0W9_12futures_util6future6future3MapINtNtNtB2a_6stream6stream7ForwardINtNtB2X_3map3MapINtNtB2Z_7poll_fn6PollFnNCINvMs2_NtNtCs5hzaM3VbZx4_5redis3aio22multiplexed_connectionNtB4f_8Pipeline3newINtNtNtCs3r7LNfiWgbg_10tokio_util5codec6framed6FramedIBZ_IB1v_DNtB4h_11AsyncStreamNtNtB13_6marker4SendNtB6K_4SyncEL_EENtNtNtB4j_6parser11aio_support10ValueCodecEE0ENcNtINtNtB13_6result6ResultNtB4f_15PipelineMessageuE2Ok0EINtB4f_12PipelineSinkB5o_EENCB48_s_0EEEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newCs44McOc0n4RX_13interop_tests(ptr noalias noundef nonnull align 8 %1, ptr noundef nonnull %2, i64 noundef 204, i64 noundef %3) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsc13h7DQFCSE_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver11name_serverINtB1Y_12ProbeRequestNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE3run0EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECs44McOc0n4RX_13interop_tests(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB5_4CellINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver11name_serverINtB2a_12ProbeRequestNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE3run0EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE3newCs44McOc0n4RX_13interop_tests(ptr noundef nonnull align 8 %1, ptr noundef nonnull %2, i64 noundef 204, i64 noundef %3) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsc13h7DQFCSE_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver11name_serverINtB1Y_12ProbeRequestNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE3run0EEINtNtB1n_4sync3ArcNtNtNtNtB4_9scheduler12multi_thread6handle6HandleEECs44McOc0n4RX_13interop_tests(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB5_4CellINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver11name_serverINtB2a_12ProbeRequestNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE3run0EEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newCs44McOc0n4RX_13interop_tests(ptr noundef nonnull align 8 %1, ptr noundef nonnull %2, i64 noundef 204, i64 noundef %3) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsc13h7DQFCSE_5tokio7runtime4task8new_taskINtNtNtCs4LZN9PPmi2I_11hickory_net4xfer12dns_exchange21DnsExchangeBackgroundINtNtBR_15dns_multiplexer14DnsMultiplexerINtNtNtBT_3tcp17tcp_client_stream15TcpClientStreamINtNtNtBT_7runtime8iocompat17AsyncIoTokioAsStdNtNtNtNtB6_3net3tcp6stream9TcpStreamEEENtB3y_9TokioTimeEINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECs44McOc0n4RX_13interop_tests(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(656) %1, ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB5_4CellINtNtNtCs4LZN9PPmi2I_11hickory_net4xfer12dns_exchange21DnsExchangeBackgroundINtNtB13_15dns_multiplexer14DnsMultiplexerINtNtNtB15_3tcp17tcp_client_stream15TcpClientStreamINtNtNtB15_7runtime8iocompat17AsyncIoTokioAsStdNtNtNtNtBb_3net3tcp6stream9TcpStreamEEENtB3M_9TokioTimeEINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE3newCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(656) %1, ptr noundef nonnull %2, i64 noundef 204, i64 noundef %3) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsc13h7DQFCSE_5tokio7runtime4task8new_taskINtNtNtCs4LZN9PPmi2I_11hickory_net4xfer12dns_exchange21DnsExchangeBackgroundINtNtBR_15dns_multiplexer14DnsMultiplexerINtNtNtBT_3tcp17tcp_client_stream15TcpClientStreamINtNtNtBT_7runtime8iocompat17AsyncIoTokioAsStdNtNtNtNtB6_3net3tcp6stream9TcpStreamEEENtB3y_9TokioTimeEINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB4_9scheduler12multi_thread6handle6HandleEECs44McOc0n4RX_13interop_tests(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(656) %1, ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB5_4CellINtNtNtCs4LZN9PPmi2I_11hickory_net4xfer12dns_exchange21DnsExchangeBackgroundINtNtB13_15dns_multiplexer14DnsMultiplexerINtNtNtB15_3tcp17tcp_client_stream15TcpClientStreamINtNtNtB15_7runtime8iocompat17AsyncIoTokioAsStdNtNtNtNtBb_3net3tcp6stream9TcpStreamEEENtB3M_9TokioTimeEINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(656) %1, ptr noundef nonnull %2, i64 noundef 204, i64 noundef %3) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsc13h7DQFCSE_5tokio7runtime4task8new_taskINtNtNtCs4LZN9PPmi2I_11hickory_net4xfer12dns_exchange21DnsExchangeBackgroundINtNtNtBT_3udp17udp_client_stream15UdpClientStreamNtNtNtBT_7runtime13tokio_runtime20TokioRuntimeProviderENtB2S_9TokioTimeEINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECs44McOc0n4RX_13interop_tests(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(424) %1, ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB5_4CellINtNtNtCs4LZN9PPmi2I_11hickory_net4xfer12dns_exchange21DnsExchangeBackgroundINtNtNtB15_3udp17udp_client_stream15UdpClientStreamNtNtNtB15_7runtime13tokio_runtime20TokioRuntimeProviderENtB35_9TokioTimeEINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE3newCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(424) %1, ptr noundef nonnull %2, i64 noundef 204, i64 noundef %3) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsc13h7DQFCSE_5tokio7runtime4task8new_taskINtNtNtCs4LZN9PPmi2I_11hickory_net4xfer12dns_exchange21DnsExchangeBackgroundINtNtNtBT_3udp17udp_client_stream15UdpClientStreamNtNtNtBT_7runtime13tokio_runtime20TokioRuntimeProviderENtB2S_9TokioTimeEINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB4_9scheduler12multi_thread6handle6HandleEECs44McOc0n4RX_13interop_tests(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(424) %1, ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB5_4CellINtNtNtCs4LZN9PPmi2I_11hickory_net4xfer12dns_exchange21DnsExchangeBackgroundINtNtNtB15_3udp17udp_client_stream15UdpClientStreamNtNtNtB15_7runtime13tokio_runtime20TokioRuntimeProviderENtB35_9TokioTimeEINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(424) %1, ptr noundef nonnull %2, i64 noundef 204, i64 noundef %3) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsc13h7DQFCSE_5tokio7runtime4task8new_taskINtNtNtCsl9hx9jpF0W9_12futures_util6future6future3MapINtNtNtBT_6stream6stream7ForwardINtNtB1G_3map3MapINtNtB1I_7poll_fn6PollFnNCINvMs2_NtNtCs5hzaM3VbZx4_5redis3aio22multiplexed_connectionNtB2X_8Pipeline3newINtNtNtCs3r7LNfiWgbg_10tokio_util5codec6framed6FramedINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB2Z_11AsyncStreamNtNtB52_6marker4SendNtB6o_4SyncEL_EENtNtNtB31_6parser11aio_support10ValueCodecEE0ENcNtINtNtB52_6result6ResultNtB2X_15PipelineMessageuE2Ok0EINtB2X_12PipelineSinkB46_EENCB2Q_s_0EINtNtB5y_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECs44McOc0n4RX_13interop_tests(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(280) %1, ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB5_4CellINtNtNtCsl9hx9jpF0W9_12futures_util6future6future3MapINtNtNtB15_6stream6stream7ForwardINtNtB1S_3map3MapINtNtB1U_7poll_fn6PollFnNCINvMs2_NtNtCs5hzaM3VbZx4_5redis3aio22multiplexed_connectionNtB3a_8Pipeline3newINtNtNtCs3r7LNfiWgbg_10tokio_util5codec6framed6FramedINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB3c_11AsyncStreamNtNtB5f_6marker4SendNtB6B_4SyncEL_EENtNtNtB3e_6parser11aio_support10ValueCodecEE0ENcNtINtNtB5f_6result6ResultNtB3a_15PipelineMessageuE2Ok0EINtB3a_12PipelineSinkB4j_EENCB33_s_0EINtNtB5L_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE3newCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(280) %1, ptr noundef nonnull %2, i64 noundef 204, i64 noundef %3) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsc13h7DQFCSE_5tokio7runtime4task8new_taskINtNtNtCsl9hx9jpF0W9_12futures_util6future6future3MapINtNtNtBT_6stream6stream7ForwardINtNtB1G_3map3MapINtNtB1I_7poll_fn6PollFnNCINvMs2_NtNtCs5hzaM3VbZx4_5redis3aio22multiplexed_connectionNtB2X_8Pipeline3newINtNtNtCs3r7LNfiWgbg_10tokio_util5codec6framed6FramedINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB2Z_11AsyncStreamNtNtB52_6marker4SendNtB6o_4SyncEL_EENtNtNtB31_6parser11aio_support10ValueCodecEE0ENcNtINtNtB52_6result6ResultNtB2X_15PipelineMessageuE2Ok0EINtB2X_12PipelineSinkB46_EENCB2Q_s_0EINtNtB5y_4sync3ArcNtNtNtNtB4_9scheduler12multi_thread6handle6HandleEECs44McOc0n4RX_13interop_tests(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(280) %1, ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB5_4CellINtNtNtCsl9hx9jpF0W9_12futures_util6future6future3MapINtNtNtB15_6stream6stream7ForwardINtNtB1S_3map3MapINtNtB1U_7poll_fn6PollFnNCINvMs2_NtNtCs5hzaM3VbZx4_5redis3aio22multiplexed_connectionNtB3a_8Pipeline3newINtNtNtCs3r7LNfiWgbg_10tokio_util5codec6framed6FramedINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB3c_11AsyncStreamNtNtB5f_6marker4SendNtB6B_4SyncEL_EENtNtNtB3e_6parser11aio_support10ValueCodecEE0ENcNtINtNtB5f_6result6ResultNtB3a_15PipelineMessageuE2Ok0EINtB3a_12PipelineSinkB4j_EENCB33_s_0EINtNtB5L_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(280) %1, ptr noundef nonnull %2, i64 noundef 204, i64 noundef %3) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsc13h7DQFCSE_5tokio7runtime4task8new_taskNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver11name_serverINtBT_12ProbeRequestNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE3run0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECs44McOc0n4RX_13interop_tests(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(376) %1, ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB5_4CellNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver11name_serverINtB15_12ProbeRequestNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE3run0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE3newCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(376) %1, ptr noundef nonnull %2, i64 noundef 204, i64 noundef %3) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsc13h7DQFCSE_5tokio7runtime4task8new_taskNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver11name_serverINtBT_12ProbeRequestNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE3run0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB4_9scheduler12multi_thread6handle6HandleEECs44McOc0n4RX_13interop_tests(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(376) %1, ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB5_4CellNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver11name_serverINtB15_12ProbeRequestNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE3run0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(376) %1, ptr noundef nonnull %2, i64 noundef 204, i64 noundef %3) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable7ipnsortTyjENvYBT_NtNtB8_3cmp10PartialOrd2ltECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull %2) unnamed_addr #2 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE7reverseCs44McOc0n4RX_13interop_tests.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val9 = load i64, ptr %i.b, align 8, !noundef !10 ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 24
  %.val10 = load i64, ptr %i.c, align 8           ; 3 uses
  %.val11 = load i64, ptr %0, align 8, !noundef !10 ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val12 = load i64, ptr %i.d, align 8
  %i.e = icmp eq i64 %.val9, %.val11
  %i.f = icmp ult i64 %.val9, %.val11
  %i.g = icmp ult i64 %.val10, %.val12
  %.sroa.0.0.i.i = select i1 %i.e, i1 %i.g, i1 %i.f ; 2 uses
  %.not29 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %.sroa.0.0.i.i, label %.preheader, label %.preheader19

.preheader19:                                     ; preds = %bb.b
  br i1 %.not29, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyjENvYB12_NtNtB8_3cmp10PartialOrd2ltECs44McOc0n4RX_13interop_tests.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not29, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyjENvYB12_NtNtB8_3cmp10PartialOrd2ltECs44McOc0n4RX_13interop_tests.exit, label %.lr.ph25

.lr.ph:                                           ; preds = %.preheader19, %bb.c
  %.val8 = phi i64 [ %.val6, %bb.c ], [ %.val10, %.preheader19 ]
  %.val7 = phi i64 [ %.val5, %bb.c ], [ %.val9, %.preheader19 ] ; 2 uses
  %.sroa.01.0.i21 = phi i64 [ %i.m, %bb.c ], [ 2, %.preheader19 ] ; 4 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i21 ; 2 uses
  %3 = add nsw i64 %.sroa.01.0.i21, -1
  %4 = icmp samesign ult i64 %3, %1
  tail call void @llvm.assume(i1 %4)
  %.val5 = load i64, ptr %i.h, align 8, !noundef !10 ; 3 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val6 = load i64, ptr %i.i, align 8            ; 2 uses
  %i.j = icmp eq i64 %.val5, %.val7
  %i.k = icmp ult i64 %.val5, %.val7
  %i.l = icmp ult i64 %.val6, %.val8
  %.sroa.0.0.i.i13 = select i1 %i.j, i1 %i.l, i1 %i.k
  br i1 %.sroa.0.0.i.i13, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyjENvYB12_NtNtB8_3cmp10PartialOrd2ltECs44McOc0n4RX_13interop_tests.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.m = add nuw nsw i64 %.sroa.01.0.i21, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.m, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyjENvYB12_NtNtB8_3cmp10PartialOrd2ltECs44McOc0n4RX_13interop_tests.exit.thread, label %.lr.ph

.lr.ph25:                                         ; preds = %.preheader, %bb.d
  %.val4 = phi i64 [ %.val2, %bb.d ], [ %.val10, %.preheader ]
  %.val3 = phi i64 [ %.val, %bb.d ], [ %.val9, %.preheader ] ; 2 uses
  %.sroa.01.1.i24 = phi i64 [ %i.s, %bb.d ], [ 2, %.preheader ] ; 4 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.1.i24 ; 2 uses
  %5 = add nsw i64 %.sroa.01.1.i24, -1
  %6 = icmp samesign ult i64 %5, %1
  tail call void @llvm.assume(i1 %6)
  %.val = load i64, ptr %i.n, align 8, !noundef !10 ; 3 uses
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %.val2 = load i64, ptr %i.o, align 8            ; 2 uses
  %i.p = icmp eq i64 %.val, %.val3
  %i.q = icmp ult i64 %.val, %.val3
  %i.r = icmp ult i64 %.val2, %.val4
  %.sroa.0.0.i.i14 = select i1 %i.p, i1 %i.r, i1 %i.q
  br i1 %.sroa.0.0.i.i14, label %bb.d, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyjENvYB12_NtNtB8_3cmp10PartialOrd2ltECs44McOc0n4RX_13interop_tests.exit

bb.d:                                             ; preds = %.lr.ph25
  %i.s = add nuw nsw i64 %.sroa.01.1.i24, 1       ; 2 uses
  %exitcond32.not = icmp eq i64 %i.s, %1
  br i1 %exitcond32.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyjENvYB12_NtNtB8_3cmp10PartialOrd2ltECs44McOc0n4RX_13interop_tests.exit.thread, label %.lr.ph25

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyjENvYB12_NtNtB8_3cmp10PartialOrd2ltECs44McOc0n4RX_13interop_tests.exit: ; preds = %.lr.ph, %.lr.ph25, %.preheader19, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader19 ], [ 2, %.preheader ], [ %.sroa.01.1.i24, %.lr.ph25 ], [ %.sroa.01.0.i21, %.lr.ph ] ; 2 uses
  %i.t = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.u, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyjENvYB12_NtNtB8_3cmp10PartialOrd2ltECs44McOc0n4RX_13interop_tests.exit.thread, label %bb.e

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyjENvYB12_NtNtB8_3cmp10PartialOrd2ltECs44McOc0n4RX_13interop_tests.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyjENvYB12_NtNtB8_3cmp10PartialOrd2ltECs44McOc0n4RX_13interop_tests.exit
  br i1 %.sroa.0.0.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCs44McOc0n4RX_13interop_tests.exit11.preheader.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE7reverseCs44McOc0n4RX_13interop_tests.exit

bb.e:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyjENvYB12_NtNtB8_3cmp10PartialOrd2ltECs44McOc0n4RX_13interop_tests.exit
  %i.v = or i64 %1, 1
  %i.w = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.v, i1 true)
  %i.x = trunc nuw nsw i64 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 1
  %i.z = xor i32 %i.y, 126
  tail call fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort9quicksortTyjENvYB17_NtNtBa_3cmp10PartialOrd2ltECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, i32 noundef %i.z, ptr noalias nofree noundef nonnull %2)
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE7reverseCs44McOc0n4RX_13interop_tests.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE7reverseCs44McOc0n4RX_13interop_tests.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCs44McOc0n4RX_13interop_tests.exit11.i.i
  %i.aa = and i64 %1, 2
  %lcmp.mod.not = icmp eq i64 %i.aa, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE7reverseCs44McOc0n4RX_13interop_tests.exit, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCs44McOc0n4RX_13interop_tests.exit11.i.i.epil.preheader

_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCs44McOc0n4RX_13interop_tests.exit11.i.i.epil.preheader: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE7reverseCs44McOc0n4RX_13interop_tests.exit.loopexit.unr-lcssa, %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCs44McOc0n4RX_13interop_tests.exit11.preheader.i.i
  %.sroa.0.016.i.i.epil.init = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCs44McOc0n4RX_13interop_tests.exit11.preheader.i.i ], [ %i.ar, %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE7reverseCs44McOc0n4RX_13interop_tests.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod55 = trunc i64 %i.af to i1
  tail call void @llvm.assume(i1 %lcmp.mod55)
  %i.ab = xor i64 %.sroa.0.016.i.i.epil.init, -1
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.i.epil.init ; 2 uses
  %i.ad = getelementptr [16 x i8], ptr %i.ag, i64 %i.ab ; 2 uses
  %i.ae = load <2 x i64>, ptr %i.ac, align 8, !alias.scope !2477, !noalias !2478
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false), !alias.scope !2479
  store <2 x i64> %i.ae, ptr %i.ad, align 8, !alias.scope !2480, !noalias !2481
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE7reverseCs44McOc0n4RX_13interop_tests.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE7reverseCs44McOc0n4RX_13interop_tests.exit: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCs44McOc0n4RX_13interop_tests.exit11.i.i.epil.preheader, %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE7reverseCs44McOc0n4RX_13interop_tests.exit.loopexit.unr-lcssa, %bb.a, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyjENvYB12_NtNtB8_3cmp10PartialOrd2ltECs44McOc0n4RX_13interop_tests.exit.thread, %bb.e
  ret void

_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCs44McOc0n4RX_13interop_tests.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyjENvYB12_NtNtB8_3cmp10PartialOrd2ltECs44McOc0n4RX_13interop_tests.exit.thread
  %i.af = lshr i64 %1, 1                          ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2481)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2478)
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1 ; 3 uses
  %i.ah = icmp eq i64 %i.af, 1
  br i1 %i.ah, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCs44McOc0n4RX_13interop_tests.exit11.i.i.epil.preheader, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCs44McOc0n4RX_13interop_tests.exit11.preheader.i.i.new

_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCs44McOc0n4RX_13interop_tests.exit11.preheader.i.i.new: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCs44McOc0n4RX_13interop_tests.exit11.preheader.i.i
  %unroll_iter = and i64 %i.af, 288230376151711742
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCs44McOc0n4RX_13interop_tests.exit11.i.i

_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCs44McOc0n4RX_13interop_tests.exit11.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCs44McOc0n4RX_13interop_tests.exit11.i.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCs44McOc0n4RX_13interop_tests.exit11.preheader.i.i.new
  %.sroa.0.016.i.i = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCs44McOc0n4RX_13interop_tests.exit11.preheader.i.i.new ], [ %i.ar, %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCs44McOc0n4RX_13interop_tests.exit11.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCs44McOc0n4RX_13interop_tests.exit11.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCs44McOc0n4RX_13interop_tests.exit11.i.i ]
  %i.ai = xor i64 %.sroa.0.016.i.i, -1
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 2 uses
  %i.ak = getelementptr [16 x i8], ptr %i.ag, i64 %i.ai ; 2 uses
  %i.al = load <2 x i64>, ptr %i.aj, align 8, !alias.scope !2477, !noalias !2478
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 16, i1 false), !alias.scope !2479
  store <2 x i64> %i.al, ptr %i.ak, align 8, !alias.scope !2480, !noalias !2481
  %i.am = xor i64 %.sroa.0.016.i.i, -2
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.ap = getelementptr [16 x i8], ptr %i.ag, i64 %i.am ; 2 uses
  %i.aq = load <2 x i64>, ptr %i.ao, align 8, !alias.scope !2477, !noalias !2478
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false), !alias.scope !2479
  store <2 x i64> %i.aq, ptr %i.ap, align 8, !alias.scope !2480, !noalias !2481
  %i.ar = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE7reverseCs44McOc0n4RX_13interop_tests.exit.loopexit.unr-lcssa, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCs44McOc0n4RX_13interop_tests.exit11.i.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB14_11sort_by_keybNCINvMB17_INtB17_10NameServerB29_E3newATNtNtB2f_4xfer8ProtocolINtNtB4X_12dns_exchange11DnsExchangeB29_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests(ptr nofree noundef nonnull readonly %0, ptr nofree noundef nonnull readonly %1, ptr nofree noundef nonnull readonly %2, i64 noundef range(i64 0, 28823037615171175) %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3INtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSBZ_11sort_by_keybNCINvMB12_INtB12_10NameServerB24_E3newATNtNtB2a_4xfer8ProtocolINtNtB4R_12dns_exchange11DnsExchangeB24_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB14_11sort_by_keybNCINvMB17_INtB17_10NameServerB29_E3newATNtNtB2f_4xfer8ProtocolINtNtB4X_12dns_exchange11DnsExchangeB29_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB14_11sort_by_keybNCINvMB17_INtB17_10NameServerB29_E3newATNtNtB2f_4xfer8ProtocolINtNtB4X_12dns_exchange11DnsExchangeB29_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB14_11sort_by_keybNCINvMB17_INtB17_10NameServerB29_E3newATNtNtB2f_4xfer8ProtocolINtNtB4X_12dns_exchange11DnsExchangeB29_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3INtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSBZ_11sort_by_keybNCINvMB12_INtB12_10NameServerB24_E3newATNtNtB2a_4xfer8ProtocolINtNtB4R_12dns_exchange11DnsExchangeB24_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3INtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSBZ_11sort_by_keybNCINvMB12_INtB12_10NameServerB24_E3newATNtNtB2a_4xfer8ProtocolINtNtB4R_12dns_exchange11DnsExchangeB24_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit: ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %i.n = getelementptr i8, ptr %.sroa.0.0, i64 32
  %.sroa.0.0.val13 = load i8, ptr %i.n, align 8, !range !32, !noundef !10
  %i.o = getelementptr i8, ptr %.sroa.04.0, i64 32
  %.sroa.04.0.val14 = load i8, ptr %i.o, align 8, !range !32, !noundef !10
  %.not.i = icmp eq i8 %.sroa.0.0.val13, 0        ; 2 uses
  %i.p = icmp ne i8 %.sroa.04.0.val14, 0          ; 2 uses
  %i.q = getelementptr i8, ptr %.sroa.08.0, i64 32
  %.sroa.08.0.val12 = load i8, ptr %i.q, align 8, !range !32, !noundef !10
  %i.r = icmp ne i8 %.sroa.08.0.val12, 0          ; 2 uses
  %i.s = xor i1 %i.p, %i.r
  %i.t = and i1 %.not.i, %i.s
  %i.u = select i1 %i.p, i1 %.not.i, i1 %i.r
  %..i = select i1 %i.u, ptr %.sroa.08.0, ptr %.sroa.04.0
  %.sroa.0.0.i = select i1 %i.t, ptr %.sroa.0.0, ptr %..i
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recTyjENvYB14_NtNtBa_3cmp10PartialOrd2ltECs44McOc0n4RX_13interop_tests(ptr nofree noundef nonnull readonly %0, ptr nofree noundef nonnull readonly %1, ptr nofree noundef nonnull readonly %2, i64 noundef range(i64 0, 72057594037927936) %3) unnamed_addr #3 {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recTyjENvYB14_NtNtBa_3cmp10PartialOrd2ltECs44McOc0n4RX_13interop_tests(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recTyjENvYB14_NtNtBa_3cmp10PartialOrd2ltECs44McOc0n4RX_13interop_tests(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recTyjENvYB14_NtNtBa_3cmp10PartialOrd2ltECs44McOc0n4RX_13interop_tests(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %.sroa.0.0.val17 = load i64, ptr %.sroa.0.0, align 8, !noundef !10 ; 4 uses
  %i.n = getelementptr i8, ptr %.sroa.0.0, i64 8
  %.sroa.0.0.val18 = load i64, ptr %i.n, align 8  ; 2 uses
  %.sroa.04.0.val19 = load i64, ptr %.sroa.04.0, align 8, !noundef !10 ; 4 uses
  %i.o = getelementptr i8, ptr %.sroa.04.0, i64 8
  %.sroa.04.0.val20 = load i64, ptr %i.o, align 8 ; 2 uses
  %i.p = icmp eq i64 %.sroa.0.0.val17, %.sroa.04.0.val19
  %i.q = icmp ult i64 %.sroa.0.0.val17, %.sroa.04.0.val19
  %i.r = icmp ult i64 %.sroa.0.0.val18, %.sroa.04.0.val20
  %.sroa.0.0.i.i = select i1 %i.p, i1 %i.r, i1 %i.q ; 2 uses
  %.sroa.08.0.val15 = load i64, ptr %.sroa.08.0, align 8, !noundef !10 ; 4 uses
  %i.s = getelementptr i8, ptr %.sroa.08.0, i64 8
  %.sroa.08.0.val16 = load i64, ptr %i.s, align 8 ; 2 uses
  %i.t = icmp eq i64 %.sroa.0.0.val17, %.sroa.08.0.val15
  %i.u = icmp ult i64 %.sroa.0.0.val17, %.sroa.08.0.val15
  %i.v = icmp ult i64 %.sroa.0.0.val18, %.sroa.08.0.val16
  %.sroa.0.0.i.i21 = select i1 %i.t, i1 %i.v, i1 %i.u
  %i.w = xor i1 %.sroa.0.0.i.i, %.sroa.0.0.i.i21
  br i1 %i.w, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3TyjENvYBZ_NtNtBa_3cmp10PartialOrd2ltECs44McOc0n4RX_13interop_tests.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = icmp eq i64 %.sroa.04.0.val19, %.sroa.08.0.val15
  %i.y = icmp ult i64 %.sroa.04.0.val19, %.sroa.08.0.val15
  %i.z = icmp ult i64 %.sroa.04.0.val20, %.sroa.08.0.val16
  %.sroa.0.0.i.i22 = select i1 %i.x, i1 %i.z, i1 %i.y
  %i.aa = xor i1 %.sroa.0.0.i.i, %.sroa.0.0.i.i22
  %..i = select i1 %i.aa, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3TyjENvYBZ_NtNtBa_3cmp10PartialOrd2ltECs44McOc0n4RX_13interop_tests.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3TyjENvYBZ_NtNtBa_3cmp10PartialOrd2ltECs44McOc0n4RX_13interop_tests.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_11sort_by_keybNCINvMBZ_INtBZ_10NameServerB21_E3newATNtNtB27_4xfer8ProtocolINtNtB4M_12dns_exchange11DnsExchangeB21_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i84 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cc, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ca, %bb.y ] ; 3 uses
  %i.k = icmp samesign ult i64 %.sroa.09.0, %1    ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keybNCINvMB16_INtB16_10NameServerB28_E3newATNtNtB2e_4xfer8ProtocolINtNtB4W_12dns_exchange11DnsExchangeB28_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit
  %.sroa.021.0 = phi i8 [ %i.at, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keybNCINvMB16_INtB16_10NameServerB28_E3newATNtNtB2e_4xfer8ProtocolINtNtB4W_12dns_exchange11DnsExchangeB28_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keybNCINvMB16_INtB16_10NameServerB28_E3newATNtNtB2e_4xfer8ProtocolINtNtB4W_12dns_exchange11DnsExchangeB28_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph58, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 10 uses
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.09.0 ; 6 uses
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keybNCINvMB15_INtB15_10NameServerB27_E3newATNtNtB2d_4xfer8ProtocolINtNtB4V_12dns_exchange11DnsExchangeB27_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit.i.thread, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keybNCINvMB15_INtB15_10NameServerB27_E3newATNtNtB2d_4xfer8ProtocolINtNtB4V_12dns_exchange11DnsExchangeB27_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit.i, %bb.h
  br i1 %4, label %bb.o, label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE7reverseCs44McOc0n4RX_13interop_tests.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr i8, ptr %i.n, i64 72
  %.val10.i = load i8, ptr %i.p, align 8, !range !32, !alias.scope !2488, !noalias !2489, !noundef !10 ; 2 uses
  %i.q = getelementptr i8, ptr %i.n, i64 32
  %.val11.i = load i8, ptr %i.q, align 8, !range !32, !alias.scope !2488, !noalias !2489, !noundef !10
  %.not.i37 = icmp eq i8 %.val10.i, 0
  %i.r = icmp ne i8 %.val11.i, 0
  %i.s = and i1 %.not.i37, %i.r                   ; 2 uses
  br i1 %i.s, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keybNCINvMB15_INtB15_10NameServerB27_E3newATNtNtB2d_4xfer8ProtocolINtNtB4V_12dns_exchange11DnsExchangeB27_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit.i, label %.preheader46

.preheader46:                                     ; preds = %bb.k
  %.not64 = icmp eq i64 %i.m, 2
  br i1 %.not64, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keybNCINvMB15_INtB15_10NameServerB27_E3newATNtNtB2d_4xfer8ProtocolINtNtB4V_12dns_exchange11DnsExchangeB27_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit.i.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader46, %bb.l
  %.val9.i = phi i8 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader46 ]
  %.sroa.01.0.i.i48 = phi i64 [ %i.x, %bb.l ], [ 2, %.preheader46 ] ; 4 uses
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.01.0.i.i48
  %6 = add nsw i64 %.sroa.01.0.i.i48, -1
  %7 = icmp ult i64 %6, %i.m
  tail call void @llvm.assume(i1 %7)
  %i.u = getelementptr i8, ptr %i.t, i64 32
  %.val8.i = load i8, ptr %i.u, align 8, !range !32, !alias.scope !2488, !noalias !2489, !noundef !10 ; 2 uses
  %.not.i36 = icmp eq i8 %.val8.i, 0
  %i.v = icmp ne i8 %.val9.i, 0
  %i.w = and i1 %.not.i36, %i.v
  br i1 %i.w, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keybNCINvMB15_INtB15_10NameServerB27_E3newATNtNtB2d_4xfer8ProtocolINtNtB4V_12dns_exchange11DnsExchangeB27_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.x = add nuw i64 %.sroa.01.0.i.i48, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.x, %i.m
  br i1 %exitcond.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keybNCINvMB15_INtB15_10NameServerB27_E3newATNtNtB2d_4xfer8ProtocolINtNtB4V_12dns_exchange11DnsExchangeB27_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit.i, label %.lr.ph

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keybNCINvMB15_INtB15_10NameServerB27_E3newATNtNtB2d_4xfer8ProtocolINtNtB4V_12dns_exchange11DnsExchangeB27_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit.i: ; preds = %bb.l, %.lr.ph, %bb.k
  %.sroa.0.0.i.i = phi i64 [ 2, %bb.k ], [ %.sroa.01.0.i.i48, %.lr.ph ], [ %i.m, %bb.l ] ; 7 uses
  %i.y = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.y)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.m

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keybNCINvMB15_INtB15_10NameServerB27_E3newATNtNtB2d_4xfer8ProtocolINtNtB4V_12dns_exchange11DnsExchangeB27_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit.i.thread: ; preds = %.preheader46
  br i1 %.not5.i84, label %bb.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE7reverseCs44McOc0n4RX_13interop_tests.exit

bb.m:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keybNCINvMB15_INtB15_10NameServerB27_E3newATNtNtB2d_4xfer8ProtocolINtNtB4V_12dns_exchange11DnsExchangeB27_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit.i
  br i1 %i.s, label %bb.p, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE7reverseCs44McOc0n4RX_13interop_tests.exit

bb.n:                                             ; preds = %bb.i
  %..i34 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 230584300921369396) %i.m, i64 %.sroa.01.0)
  %i.z = shl nuw nsw i64 %..i34, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keybNCINvMB16_INtB16_10NameServerB28_E3newATNtNtB2e_4xfer8ProtocolINtNtB4W_12dns_exchange11DnsExchangeB28_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit

bb.o:                                             ; preds = %bb.i
  %..i33 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 230584300921369396) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keybNCINvMB18_INtB18_10NameServerB2a_E3newATNtNtB2g_4xfer8ProtocolINtNtB4Y_12dns_exchange11DnsExchangeB2a_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i33, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #35, !inline_history !2486
  %i.aa = shl nuw nsw i64 %..i33, 1
  %i.ab = or disjoint i64 %i.aa, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keybNCINvMB16_INtB16_10NameServerB28_E3newATNtNtB2e_4xfer8ProtocolINtNtB4W_12dns_exchange11DnsExchangeB28_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE7reverseCs44McOc0n4RX_13interop_tests.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEECs44McOc0n4RX_13interop_tests.exit.i.i, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keybNCINvMB15_INtB15_10NameServerB27_E3newATNtNtB2d_4xfer8ProtocolINtNtB4V_12dns_exchange11DnsExchangeB27_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit.i.thread, %bb.j, %bb.p, %bb.m
  %.sroa.0.0.i.i4245 = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.m ], [ %.sroa.0.0.i.i, %bb.p ], [ 2, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keybNCINvMB15_INtB15_10NameServerB27_E3newATNtNtB2d_4xfer8ProtocolINtNtB4V_12dns_exchange11DnsExchangeB27_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit.i.thread ], [ %.sroa.0.0.i.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEECs44McOc0n4RX_13interop_tests.exit.i.i ]
  %i.ac = shl nuw nsw i64 %.sroa.0.0.i.i4245, 1
  %i.ad = or disjoint i64 %i.ac, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keybNCINvMB16_INtB16_10NameServerB28_E3newATNtNtB2e_4xfer8ProtocolINtNtB4W_12dns_exchange11DnsExchangeB28_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit

bb.p:                                             ; preds = %bb.m
  %i.ae = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE7reverseCs44McOc0n4RX_13interop_tests.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.p
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.0.0.i.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEECs44McOc0n4RX_13interop_tests.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.ak, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEECs44McOc0n4RX_13interop_tests.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ag = xor i64 %.sroa.0.017.i.i, -1
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.0.017.i.i
  %i.ai = getelementptr [40 x i8], ptr %i.af, i64 %i.ag
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs44McOc0n4RX_13interop_tests(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.ai, i64 noundef 5)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEECs44McOc0n4RX_13interop_tests.exit.i.i unwind label %bb.q, !noalias !2489

bb.q:                                             ; preds = %.lr.ph.i.i
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #34, !noalias !2489
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEECs44McOc0n4RX_13interop_tests.exit.i.i: ; preds = %.lr.ph.i.i
  %i.ak = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ak, %i.ae
  br i1 %exitcond.not.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE7reverseCs44McOc0n4RX_13interop_tests.exit, label %.lr.ph.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keybNCINvMB16_INtB16_10NameServerB28_E3newATNtNtB2e_4xfer8ProtocolINtNtB4W_12dns_exchange11DnsExchangeB28_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit: ; preds = %bb.n, %bb.o, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE7reverseCs44McOc0n4RX_13interop_tests.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ad, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE7reverseCs44McOc0n4RX_13interop_tests.exit ], [ %i.ab, %bb.o ], [ %i.z, %bb.n ] ; 2 uses
  %i.al = lshr i64 %.sroa.023.0, 1
  %i.am = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.an = sub nsw i64 %factor, %i.al
  %i.ao = add nuw nsw i64 %i.am, %factor
  %i.ap = mul i64 %i.an, %.sroa.0.0
  %i.aq = mul i64 %i.ao, %.sroa.0.0
  %i.ar = xor i64 %i.aq, %i.ap
  %i.as = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ar, i1 false)
  %i.at = trunc nuw nsw i64 %i.as to i8
  br label %bb.g

.lr.ph58:                                         ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keybNCINvMB19_INtB19_10NameServerB2b_E3newATNtNtB2h_4xfer8ProtocolINtNtB4Z_12dns_exchange11DnsExchangeB2b_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit
  %.sroa.02.157 = phi i64 [ %i.au, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keybNCINvMB19_INtB19_10NameServerB2b_E3newATNtNtB2h_4xfer8ProtocolINtNtB4Z_12dns_exchange11DnsExchangeB2b_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.156 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keybNCINvMB19_INtB19_10NameServerB2b_E3newATNtNtB2h_4xfer8ProtocolINtNtB4Z_12dns_exchange11DnsExchangeB2b_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.au = add i64 %.sroa.02.157, -1               ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noundef !10
  %.not28 = icmp ult i8 %i.aw, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keybNCINvMB19_INtB19_10NameServerB2b_E3newATNtNtB2h_4xfer8ProtocolINtNtB4Z_12dns_exchange11DnsExchangeB2b_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit, %.lr.ph58, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.156, %.lr.ph58 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keybNCINvMB19_INtB19_10NameServerB2b_E3newATNtNtB2h_4xfer8ProtocolINtNtB4Z_12dns_exchange11DnsExchangeB2b_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.157, %.lr.ph58 ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keybNCINvMB19_INtB19_10NameServerB2b_E3newATNtNtB2h_4xfer8ProtocolINtNtB4Z_12dns_exchange11DnsExchangeB2b_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.ay, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph58
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.au
  %i.ba = load i64, ptr %i.az, align 8, !noundef !10 ; 3 uses
  %i.bb = lshr i64 %i.ba, 1                       ; 5 uses
  %i.bc = lshr i64 %.sroa.023.156, 1              ; 3 uses
  %i.bd = add nuw i64 %i.bb, %i.bc                ; 5 uses
  %i.be = sub i64 %.sroa.09.0, %i.bd
  %i.bf = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.be ; 3 uses
  %i.bg = icmp samesign ugt i64 %i.bd, %3
  %i.bh = trunc i64 %.sroa.023.156 to i1
  %i.bi = or i64 %i.ba, %.sroa.023.156
  %i.bj = trunc i64 %i.bi to i1
  %or.cond3.i = or i1 %i.bg, %i.bj
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bk = trunc i64 %i.ba to i1
  br i1 %i.bk, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bl = shl nuw nsw i64 %i.bd, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keybNCINvMB19_INtB19_10NameServerB2b_E3newATNtNtB2h_4xfer8ProtocolINtNtB4Z_12dns_exchange11DnsExchangeB2b_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bh, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bm = or i64 %i.bb, 1
  %i.bn = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bm, i1 true)
  %i.bo = trunc nuw nsw i64 %i.bn to i32
  %i.bp = shl nuw nsw i32 %i.bo, 1
  %i.bq = xor i32 %i.bp, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keybNCINvMB18_INtB18_10NameServerB2a_E3newATNtNtB2g_4xfer8ProtocolINtNtB4Y_12dns_exchange11DnsExchangeB2a_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 %i.bf, i64 noundef range(i64 0, 230584300921369396) %i.bb, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.bq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #35, !inline_history !2487
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.br = getelementptr inbounds nuw [40 x i8], ptr %i.bf, i64 %i.bb
  %i.bs = or i64 %i.bc, 1
  %i.bt = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bs, i1 true)
  %i.bu = trunc nuw nsw i64 %i.bt to i32
  %i.bv = shl nuw nsw i32 %i.bu, 1
  %i.bw = xor i32 %i.bv, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keybNCINvMB18_INtB18_10NameServerB2a_E3newATNtNtB2g_4xfer8ProtocolINtNtB4Y_12dns_exchange11DnsExchangeB2a_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 %i.br, i64 noundef range(i64 0, 230584300921369396) %i.bc, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.bw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #35, !inline_history !2487
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_11sort_by_keybNCINvMB10_INtB10_10NameServerB22_E3newATNtNtB28_4xfer8ProtocolINtNtB4P_12dns_exchange11DnsExchangeB22_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 %i.bf, i64 noundef range(i64 0, 230584300921369396) %i.bd, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i64 noundef %i.bb, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.bx = shl nuw nsw i64 %i.bd, 1
  %i.by = or disjoint i64 %i.bx, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keybNCINvMB19_INtB19_10NameServerB2b_E3newATNtNtB2h_4xfer8ProtocolINtNtB4Z_12dns_exchange11DnsExchangeB2b_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keybNCINvMB19_INtB19_10NameServerB2b_E3newATNtNtB2h_4xfer8ProtocolINtNtB4Z_12dns_exchange11DnsExchangeB2b_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.by, %bb.x ], [ %i.bl, %bb.t ] ; 2 uses
  %i.bz = icmp ugt i64 %i.au, 1
  br i1 %i.bz, label %.lr.ph58, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.ca = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.cb = lshr i64 %.sroa.018.0, 1
  %i.cc = add nuw nsw i64 %i.cb, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cd = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cd, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ce = or i64 %1, 1
  %i.cf = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.ce, i1 true)
  %i.cg = trunc nuw nsw i64 %i.cf to i32
  %i.ch = shl nuw nsw i32 %i.cg, 1
  %i.ci = xor i32 %i.ch, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keybNCINvMB18_INtB18_10NameServerB2a_E3newATNtNtB2g_4xfer8ProtocolINtNtB4Y_12dns_exchange11DnsExchangeB2a_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.ci, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #35, !inline_history !2487
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keybNCINvMB18_INtB18_10NameServerB2a_E3newATNtNtB2g_4xfer8ProtocolINtNtB4Y_12dns_exchange11DnsExchangeB2a_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(40) %5, ptr noalias nofree noundef align 8 dereferenceable(8) %6) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph98 = phi ptr [ %i.cr, %.outer ], [ %0, %bb.a ] ; 20 uses
  %.sroa.16.0.ph97 = phi i64 [ %i.cc, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph96 = phi i32 [ %i.h, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph95 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
end_hunk_0

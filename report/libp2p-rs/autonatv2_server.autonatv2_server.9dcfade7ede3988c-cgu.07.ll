Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/autonatv2_server.autonatv2_server.9dcfade7ede3988c-cgu.07?download=true
inline.NumInlined: 1782
inline.NumDeleted: 850
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsbTgMbcnmcyu_13hickory_proto9serialize6binary7decoder11DecodeErrorECsdy1Aheh0r2i_16autonatv2_server:bb.a
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsdy1Aheh0r2i_16autonatv2_server.exit3: ; preds = %bb.k
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
  br label %bb.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp8listener11TcpListenerECsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs3_NtNtCsc13h7DQFCSE_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp8listener11TcpListenerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i = load i32, ptr %i.b, align 8, !alias.scope !1668, !noundef !8 ; 2 uses
  %i.c = icmp eq i32 %.val2.i, -1
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp8listener11TcpListenerEECsdy1Aheh0r2i_16autonatv2_server.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef i32 @close(i32 noundef %.val2.i) #26 ; 0 uses
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp8listener11TcpListenerEECsdy1Aheh0r2i_16autonatv2_server.exit.i

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load i32, ptr %i.e, align 8, !alias.scope !1668, !noundef !8 ; 2 uses
  %i.f = icmp eq i32 %.val.i, -1
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio2io12poll_evented11PollEventedNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp8listener11TcpListenerEECsdy1Aheh0r2i_16autonatv2_server.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = tail call noundef i32 @close(i32 noundef %.val.i) #26 ; 0 uses
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio2io12poll_evented11PollEventedNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp8listener11TcpListenerEECsdy1Aheh0r2i_16autonatv2_server.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp8listener11TcpListenerEECsdy1Aheh0r2i_16autonatv2_server.exit.i: ; preds = %bb.c, %bb.b
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12registration12RegistrationECsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) #32
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp8listener11TcpListenerEECsdy1Aheh0r2i_16autonatv2_server.exit.i
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp8listener11TcpListenerEECsdy1Aheh0r2i_16autonatv2_server.exit.i
  resume { ptr, i32 } %i.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio2io12poll_evented11PollEventedNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp8listener11TcpListenerEECsdy1Aheh0r2i_16autonatv2_server.exit: ; preds = %bb.d, %bb.e
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12registration12RegistrationECsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12registration12RegistrationECsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs1_NtNtNtCsc13h7DQFCSE_5tokio7runtime2io12registrationNtB5_12RegistrationNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler6HandleECsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef align 8 dereferenceable(16) %0) #32
          to label %bb.h unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1687)
  %i.b = load i64, ptr %0, align 8, !range !16, !alias.scope !1687, !noundef !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1688)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1689)
  %i.e = load ptr, ptr %i.c, align 8, !alias.scope !1690, !nonnull !8, !noundef !8
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !1690
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler6HandleECsdy1Aheh0r2i_16autonatv2_server.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #35
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler6HandleECsdy1Aheh0r2i_16autonatv2_server.exit unwind label %bb.j

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1691)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1692)
  %i.h = load ptr, ptr %i.c, align 8, !alias.scope !1693, !nonnull !8, !noundef !8
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !1693
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler6HandleECsdy1Aheh0r2i_16autonatv2_server.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #35
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler6HandleECsdy1Aheh0r2i_16autonatv2_server.exit unwind label %bb.j

bb.h:                                             ; preds = %bb.j, %bb.b
  %.pn = phi { ptr, i32 } [ %i.o, %bb.j ], [ %i.a, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1694)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1695)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !1696, !nonnull !8, !noundef !8
  %i.m = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !1696
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12scheduled_io11ScheduledIoEECsdy1Aheh0r2i_16autonatv2_server.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12scheduled_io11ScheduledIoE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #35
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12scheduled_io11ScheduledIoEECsdy1Aheh0r2i_16autonatv2_server.exit unwind label %bb.l

bb.j:                                             ; preds = %bb.g, %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler6HandleECsdy1Aheh0r2i_16autonatv2_server.exit: ; preds = %bb.f, %bb.d, %bb.e, %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1697)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1698)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !1699, !nonnull !8, !noundef !8
  %i.r = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !1699
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12scheduled_io11ScheduledIoEECsdy1Aheh0r2i_16autonatv2_server.exit4

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler6HandleECsdy1Aheh0r2i_16autonatv2_server.exit
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12scheduled_io11ScheduledIoE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #35
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12scheduled_io11ScheduledIoEECsdy1Aheh0r2i_16autonatv2_server.exit4

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12scheduled_io11ScheduledIoEECsdy1Aheh0r2i_16autonatv2_server.exit4: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler6HandleECsdy1Aheh0r2i_16autonatv2_server.exit, %bb.k
  ret void

bb.l:                                             ; preds = %bb.i, %bb.b
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12scheduled_io11ScheduledIoEECsdy1Aheh0r2i_16autonatv2_server.exit: ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_11sort_by_keybNCINvMBZ_INtBZ_10NameServerB21_E3newATNtNtB27_4xfer8ProtocolINtNtB4M_12dns_exchange11DnsExchangeB21_EEj0_Es_0E0ECsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ab, label %bb.b

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
  %.not5.i83 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.x, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.x ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cj, %bb.x ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ch, %bb.x ] ; 3 uses
  %i.k = icmp samesign ult i64 %.sroa.09.0, %1    ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keybNCINvMB16_INtB16_10NameServerB28_E3newATNtNtB2e_4xfer8ProtocolINtNtB4W_12dns_exchange11DnsExchangeB28_EEj0_Es_0E0ECsdy1Aheh0r2i_16autonatv2_server.exit
  %.sroa.021.0 = phi i8 [ %i.ba, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keybNCINvMB16_INtB16_10NameServerB28_E3newATNtNtB2e_4xfer8ProtocolINtNtB4W_12dns_exchange11DnsExchangeB28_EEj0_Es_0E0ECsdy1Aheh0r2i_16autonatv2_server.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keybNCINvMB16_INtB16_10NameServerB28_E3newATNtNtB2e_4xfer8ProtocolINtNtB4W_12dns_exchange11DnsExchangeB28_EEj0_Es_0E0ECsdy1Aheh0r2i_16autonatv2_server.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph58, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 10 uses
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.09.0 ; 6 uses
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keybNCINvMB15_INtB15_10NameServerB27_E3newATNtNtB2d_4xfer8ProtocolINtNtB4V_12dns_exchange11DnsExchangeB27_EEj0_Es_0E0ECsdy1Aheh0r2i_16autonatv2_server.exit.i.thread, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keybNCINvMB15_INtB15_10NameServerB27_E3newATNtNtB2d_4xfer8ProtocolINtNtB4V_12dns_exchange11DnsExchangeB27_EEj0_Es_0E0ECsdy1Aheh0r2i_16autonatv2_server.exit.i, %bb.h
  br i1 %4, label %bb.o, label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE7reverseCsdy1Aheh0r2i_16autonatv2_server.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr i8, ptr %i.n, i64 72
  %.val10.i = load i8, ptr %i.p, align 8, !range !30, !alias.scope !1722, !noalias !1723, !noundef !8 ; 2 uses
  %i.q = getelementptr i8, ptr %i.n, i64 32
  %.val11.i = load i8, ptr %i.q, align 8, !range !30, !alias.scope !1722, !noalias !1723, !noundef !8
  %.not.i37 = icmp eq i8 %.val10.i, 0
  %i.r = icmp ne i8 %.val11.i, 0
  %i.s = and i1 %.not.i37, %i.r                   ; 2 uses
  br i1 %i.s, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keybNCINvMB15_INtB15_10NameServerB27_E3newATNtNtB2d_4xfer8ProtocolINtNtB4V_12dns_exchange11DnsExchangeB27_EEj0_Es_0E0ECsdy1Aheh0r2i_16autonatv2_server.exit.i, label %.preheader46

.preheader46:                                     ; preds = %bb.k
  %.not64 = icmp eq i64 %i.m, 2
  br i1 %.not64, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keybNCINvMB15_INtB15_10NameServerB27_E3newATNtNtB2d_4xfer8ProtocolINtNtB4V_12dns_exchange11DnsExchangeB27_EEj0_Es_0E0ECsdy1Aheh0r2i_16autonatv2_server.exit.i.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader46, %bb.l
  %.val9.i = phi i8 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader46 ]
  %.sroa.01.0.i.i48 = phi i64 [ %i.x, %bb.l ], [ 2, %.preheader46 ] ; 4 uses
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.01.0.i.i48
  %6 = add nsw i64 %.sroa.01.0.i.i48, -1
  %7 = icmp ult i64 %6, %i.m
  tail call void @llvm.assume(i1 %7)
  %i.u = getelementptr i8, ptr %i.t, i64 32
  %.val8.i = load i8, ptr %i.u, align 8, !range !30, !alias.scope !1722, !noalias !1723, !noundef !8 ; 2 uses
  %.not.i36 = icmp eq i8 %.val8.i, 0
  %i.v = icmp ne i8 %.val9.i, 0
  %i.w = and i1 %.not.i36, %i.v
  br i1 %i.w, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keybNCINvMB15_INtB15_10NameServerB27_E3newATNtNtB2d_4xfer8ProtocolINtNtB4V_12dns_exchange11DnsExchangeB27_EEj0_Es_0E0ECsdy1Aheh0r2i_16autonatv2_server.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.x = add nuw i64 %.sroa.01.0.i.i48, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.x, %i.m
  br i1 %exitcond.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keybNCINvMB15_INtB15_10NameServerB27_E3newATNtNtB2d_4xfer8ProtocolINtNtB4V_12dns_exchange11DnsExchangeB27_EEj0_Es_0E0ECsdy1Aheh0r2i_16autonatv2_server.exit.i, label %.lr.ph

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keybNCINvMB15_INtB15_10NameServerB27_E3newATNtNtB2d_4xfer8ProtocolINtNtB4V_12dns_exchange11DnsExchangeB27_EEj0_Es_0E0ECsdy1Aheh0r2i_16autonatv2_server.exit.i: ; preds = %bb.l, %.lr.ph, %bb.k
  %.sroa.0.0.i.i = phi i64 [ 2, %bb.k ], [ %.sroa.01.0.i.i48, %.lr.ph ], [ %i.m, %bb.l ] ; 7 uses
  %i.y = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.y)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.m

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keybNCINvMB15_INtB15_10NameServerB27_E3newATNtNtB2d_4xfer8ProtocolINtNtB4V_12dns_exchange11DnsExchangeB27_EEj0_Es_0E0ECsdy1Aheh0r2i_16autonatv2_server.exit.i.thread: ; preds = %.preheader46
  br i1 %.not5.i83, label %bb.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE7reverseCsdy1Aheh0r2i_16autonatv2_server.exit

bb.m:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keybNCINvMB15_INtB15_10NameServerB27_E3newATNtNtB2d_4xfer8ProtocolINtNtB4V_12dns_exchange11DnsExchangeB27_EEj0_Es_0E0ECsdy1Aheh0r2i_16autonatv2_server.exit.i
  br i1 %i.s, label %bb.p, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE7reverseCsdy1Aheh0r2i_16autonatv2_server.exit

bb.n:                                             ; preds = %bb.i
  %..i34 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 230584300921369396) %i.m, i64 %.sroa.01.0)
  %i.z = shl nuw nsw i64 %..i34, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keybNCINvMB16_INtB16_10NameServerB28_E3newATNtNtB2e_4xfer8ProtocolINtNtB4W_12dns_exchange11DnsExchangeB28_EEj0_Es_0E0ECsdy1Aheh0r2i_16autonatv2_server.exit

bb.o:                                             ; preds = %bb.i
  %..i33 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 230584300921369396) %i.m, i64 32) ; 2 uses
  tail call fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keybNCINvMB18_INtB18_10NameServerB2a_E3newATNtNtB2g_4xfer8ProtocolINtNtB4Y_12dns_exchange11DnsExchangeB2a_EEj0_Es_0E0ECsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i33, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #35, !inline_history !1704
  %i.aa = shl nuw nsw i64 %..i33, 1
  %i.ab = or disjoint i64 %i.aa, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keybNCINvMB16_INtB16_10NameServerB28_E3newATNtNtB2e_4xfer8ProtocolINtNtB4W_12dns_exchange11DnsExchangeB28_EEj0_Es_0E0ECsdy1Aheh0r2i_16autonatv2_server.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE7reverseCsdy1Aheh0r2i_16autonatv2_server.exit: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE12split_at_mutCsdy1Aheh0r2i_16autonatv2_server.exit11.i.i, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keybNCINvMB15_INtB15_10NameServerB27_E3newATNtNtB2d_4xfer8ProtocolINtNtB4V_12dns_exchange11DnsExchangeB27_EEj0_Es_0E0ECsdy1Aheh0r2i_16autonatv2_server.exit.i.thread, %bb.j, %bb.p, %bb.m
  %.sroa.0.0.i.i4245 = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.m ], [ %.sroa.0.0.i.i, %bb.p ], [ 2, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keybNCINvMB15_INtB15_10NameServerB27_E3newATNtNtB2d_4xfer8ProtocolINtNtB4V_12dns_exchange11DnsExchangeB27_EEj0_Es_0E0ECsdy1Aheh0r2i_16autonatv2_server.exit.i.thread ], [ %.sroa.0.0.i.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE12split_at_mutCsdy1Aheh0r2i_16autonatv2_server.exit11.i.i ]
  %i.ac = shl nuw nsw i64 %.sroa.0.0.i.i4245, 1
  %i.ad = or disjoint i64 %i.ac, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keybNCINvMB16_INtB16_10NameServerB28_E3newATNtNtB2e_4xfer8ProtocolINtNtB4W_12dns_exchange11DnsExchangeB28_EEj0_Es_0E0ECsdy1Aheh0r2i_16autonatv2_server.exit

bb.p:                                             ; preds = %bb.m
  %i.ae = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1724), !noalias !1723
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1725), !noalias !1723
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE7reverseCsdy1Aheh0r2i_16autonatv2_server.exit, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE12split_at_mutCsdy1Aheh0r2i_16autonatv2_server.exit11.preheader.i.i

_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE12split_at_mutCsdy1Aheh0r2i_16autonatv2_server.exit11.preheader.i.i: ; preds = %bb.p
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.0.0.i.i
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE12split_at_mutCsdy1Aheh0r2i_16autonatv2_server.exit11.i.i

_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE12split_at_mutCsdy1Aheh0r2i_16autonatv2_server.exit11.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE12split_at_mutCsdy1Aheh0r2i_16autonatv2_server.exit11.i.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE12split_at_mutCsdy1Aheh0r2i_16autonatv2_server.exit11.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.ar, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE12split_at_mutCsdy1Aheh0r2i_16autonatv2_server.exit11.i.i ], [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE12split_at_mutCsdy1Aheh0r2i_16autonatv2_server.exit11.preheader.i.i ] ; 3 uses
  %i.ag = xor i64 %.sroa.0.016.i.i, -1
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.0.016.i.i ; 4 uses
  %i.ai = getelementptr [40 x i8], ptr %i.af, i64 %i.ag ; 4 uses
  %i.aj = load <2 x i64>, ptr %i.ah, align 8, !alias.scope !1726, !noalias !1727
  %i.ak = load <2 x i64>, ptr %i.ai, align 8, !alias.scope !1728, !noalias !1729
  store <2 x i64> %i.ak, ptr %i.ah, align 8, !alias.scope !1726, !noalias !1727
  store <2 x i64> %i.aj, ptr %i.ai, align 8, !alias.scope !1728, !noalias !1729
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.an = load <2 x i64>, ptr %i.al, align 8, !alias.scope !1730, !noalias !1727
  %i.ao = load <2 x i64>, ptr %i.am, align 8, !alias.scope !1731, !noalias !1729
  store <2 x i64> %i.ao, ptr %i.al, align 8, !alias.scope !1730, !noalias !1727
  store <2 x i64> %i.an, ptr %i.am, align 8, !alias.scope !1731, !noalias !1729
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1732), !noalias !1723
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1733), !noalias !1723
  %.sroa.0.0.copyload.i.i.i.4.i.i.i.i = load i64, ptr %i.ap, align 8, !alias.scope !1734, !noalias !1735
  %.sroa.02.0.copyload.i.i.i.4.i.i.i.i = load i64, ptr %i.aq, align 8, !alias.scope !1736, !noalias !1737
  store i64 %.sroa.02.0.copyload.i.i.i.4.i.i.i.i, ptr %i.ap, align 8, !alias.scope !1734, !noalias !1735
  store i64 %.sroa.0.0.copyload.i.i.i.4.i.i.i.i, ptr %i.aq, align 8, !alias.scope !1736, !noalias !1737
  %i.ar = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ar, %i.ae
  br i1 %exitcond.not.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE7reverseCsdy1Aheh0r2i_16autonatv2_server.exit, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE12split_at_mutCsdy1Aheh0r2i_16autonatv2_server.exit11.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keybNCINvMB16_INtB16_10NameServerB28_E3newATNtNtB2e_4xfer8ProtocolINtNtB4W_12dns_exchange11DnsExchangeB28_EEj0_Es_0E0ECsdy1Aheh0r2i_16autonatv2_server.exit: ; preds = %bb.n, %bb.o, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE7reverseCsdy1Aheh0r2i_16autonatv2_server.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ad, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE7reverseCsdy1Aheh0r2i_16autonatv2_server.exit ], [ %i.ab, %bb.o ], [ %i.z, %bb.n ] ; 2 uses
  %i.as = lshr i64 %.sroa.023.0, 1
  %i.at = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.au = sub nsw i64 %factor, %i.as
  %i.av = add nuw nsw i64 %i.at, %factor
  %i.aw = mul i64 %i.au, %.sroa.0.0
  %i.ax = mul i64 %i.av, %.sroa.0.0
  %i.ay = xor i64 %i.ax, %i.aw
  %i.az = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ay, i1 false)
  %i.ba = trunc nuw nsw i64 %i.az to i8
  br label %bb.g

.lr.ph58:                                         ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keybNCINvMB19_INtB19_10NameServerB2b_E3newATNtNtB2h_4xfer8ProtocolINtNtB4Z_12dns_exchange11DnsExchangeB2b_EEj0_Es_0E0ECsdy1Aheh0r2i_16autonatv2_server.exit
  %.sroa.02.157 = phi i64 [ %i.bb, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keybNCINvMB19_INtB19_10NameServerB2b_E3newATNtNtB2h_4xfer8ProtocolINtNtB4Z_12dns_exchange11DnsExchangeB2b_EEj0_Es_0E0ECsdy1Aheh0r2i_16autonatv2_server.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.156 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keybNCINvMB19_INtB19_10NameServerB2b_E3newATNtNtB2h_4xfer8ProtocolINtNtB4Z_12dns_exchange11DnsExchangeB2b_EEj0_Es_0E0ECsdy1Aheh0r2i_16autonatv2_server.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bb = add i64 %.sroa.02.157, -1               ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !noundef !8
  %.not28 = icmp ult i8 %i.bd, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.q

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keybNCINvMB19_INtB19_10NameServerB2b_E3newATNtNtB2h_4xfer8ProtocolINtNtB4Z_12dns_exchange11DnsExchangeB2b_EEj0_Es_0E0ECsdy1Aheh0r2i_16autonatv2_server.exit, %.lr.ph58, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.156, %.lr.ph58 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keybNCINvMB19_INtB19_10NameServerB2b_E3newATNtNtB2h_4xfer8ProtocolINtNtB4Z_12dns_exchange11DnsExchangeB2b_EEj0_Es_0E0ECsdy1Aheh0r2i_16autonatv2_server.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.157, %.lr.ph58 ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keybNCINvMB19_INtB19_10NameServerB2b_E3newATNtNtB2h_4xfer8ProtocolINtNtB4Z_12dns_exchange11DnsExchangeB2b_EEj0_Es_0E0ECsdy1Aheh0r2i_16autonatv2_server.exit ] ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bf, align 1
  br i1 %i.k, label %bb.x, label %bb.y

bb.q:                                             ; preds = %.lr.ph58
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bb
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !8 ; 3 uses
  %i.bi = lshr i64 %i.bh, 1                       ; 5 uses
  %i.bj = lshr i64 %.sroa.023.156, 1              ; 3 uses
  %i.bk = add nuw i64 %i.bi, %i.bj                ; 5 uses
  %i.bl = sub i64 %.sroa.09.0, %i.bk
  %i.bm = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.bl ; 3 uses
  %i.bn = icmp samesign ugt i64 %i.bk, %3
  %i.bo = trunc i64 %.sroa.023.156 to i1
  %i.bp = or i64 %i.bh, %.sroa.023.156
  %i.bq = trunc i64 %i.bp to i1
  %or.cond3.i = or i1 %i.bn, %i.bq
  br i1 %or.cond3.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.br = trunc i64 %i.bh to i1
  br i1 %i.br, label %bb.t, label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.bs = shl nuw nsw i64 %i.bk, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keybNCINvMB19_INtB19_10NameServerB2b_E3newATNtNtB2h_4xfer8ProtocolINtNtB4Z_12dns_exchange11DnsExchangeB2b_EEj0_Es_0E0ECsdy1Aheh0r2i_16autonatv2_server.exit

bb.t:                                             ; preds = %bb.u, %bb.r
  br i1 %i.bo, label %bb.w, label %bb.v

bb.u:                                             ; preds = %bb.r
  %i.bt = or i64 %i.bi, 1
  %i.bu = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bt, i1 true)
  %i.bv = trunc nuw nsw i64 %i.bu to i32
  %i.bw = shl nuw nsw i32 %i.bv, 1
  %i.bx = xor i32 %i.bw, 126
  tail call fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keybNCINvMB18_INtB18_10NameServerB2a_E3newATNtNtB2g_4xfer8ProtocolINtNtB4Y_12dns_exchange11DnsExchangeB2a_EEj0_Es_0E0ECsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef nonnull align 8 %i.bm, i64 noundef range(i64 0, 230584300921369396) %i.bi, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.bx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #35, !inline_history !1721
  br label %bb.t

bb.v:                                             ; preds = %bb.t
  %i.by = getelementptr inbounds nuw [40 x i8], ptr %i.bm, i64 %i.bi
  %i.bz = or i64 %i.bj, 1
  %i.ca = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bz, i1 true)
  %i.cb = trunc nuw nsw i64 %i.ca to i32
  %i.cc = shl nuw nsw i32 %i.cb, 1
  %i.cd = xor i32 %i.cc, 126
  tail call fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keybNCINvMB18_INtB18_10NameServerB2a_E3newATNtNtB2g_4xfer8ProtocolINtNtB4Y_12dns_exchange11DnsExchangeB2a_EEj0_Es_0E0ECsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef nonnull align 8 %i.by, i64 noundef range(i64 0, 230584300921369396) %i.bj, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.cd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #35, !inline_history !1721
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_11sort_by_keybNCINvMB10_INtB10_10NameServerB22_E3newATNtNtB28_4xfer8ProtocolINtNtB4P_12dns_exchange11DnsExchangeB22_EEj0_Es_0E0ECsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef nonnull align 8 %i.bm, i64 noundef range(i64 0, 230584300921369396) %i.bk, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i64 noundef %i.bi, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.ce = shl nuw nsw i64 %i.bk, 1
  %i.cf = or disjoint i64 %i.ce, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keybNCINvMB19_INtB19_10NameServerB2b_E3newATNtNtB2h_4xfer8ProtocolINtNtB4Z_12dns_exchange11DnsExchangeB2b_EEj0_Es_0E0ECsdy1Aheh0r2i_16autonatv2_server.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keybNCINvMB19_INtB19_10NameServerB2b_E3newATNtNtB2h_4xfer8ProtocolINtNtB4Z_12dns_exchange11DnsExchangeB2b_EEj0_Es_0E0ECsdy1Aheh0r2i_16autonatv2_server.exit: ; preds = %bb.s, %bb.w
  %.sroa.0.0.i = phi i64 [ %i.cf, %bb.w ], [ %i.bs, %bb.s ] ; 2 uses
  %i.cg = icmp ugt i64 %i.bb, 1
  br i1 %i.cg, label %.lr.ph58, label %._crit_edge

bb.x:                                             ; preds = %._crit_edge
  %i.ch = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ci = lshr i64 %.sroa.018.0, 1
  %i.cj = add nuw nsw i64 %i.ci, %.sroa.09.0
  br label %bb.f

bb.y:                                             ; preds = %._crit_edge
  %i.ck = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.ck, 0
  br i1 %.not30, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cl = or i64 %1, 1
  %i.cm = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cl, i1 true)
  %i.cn = trunc nuw nsw i64 %i.cm to i32
  %i.co = shl nuw nsw i32 %i.cn, 1
  %i.cp = xor i32 %i.co, 126
  tail call fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keybNCINvMB18_INtB18_10NameServerB2a_E3newATNtNtB2g_4xfer8ProtocolINtNtB4Y_12dns_exchange11DnsExchangeB2a_EEj0_Es_0E0ECsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.cp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #35, !inline_history !1721
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.a, %bb.aa
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keybNCINvMB18_INtB18_10NameServerB2a_E3newATNtNtB2g_4xfer8ProtocolINtNtB4Y_12dns_exchange11DnsExchangeB2a_EEj0_Es_0E0ECsdy1Aheh0r2i_16autonatv2_server(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef range(i32 0, 115) %4, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(40) %5, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6) unnamed_addr #2 personality ptr @rust_eh_personality {
end_hunk_0

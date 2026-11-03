Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/browser_webrtc_example.browser_webrtc_example.706e6decb745cbbe-cgu.13?download=true
inline.NumInlined: 1392
inline.NumDeleted: 809
begin_hunk_0_@_RNvXs0_NtNtCsG258MDvU3F_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBW_6helper12lazy_resolve0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9Et6OYOsIUY_22browser_webrtc_example:bb.a
bb.j:                                             ; preds = %.lr.ph
  %i.s = icmp eq i64 %i.u, %.val1.i.i
  br i1 %i.s, label %.sink.split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %bb.j
  %.sroa.0.0.i.i.i.i6 = phi i64 [ %i.u, %bb.j ], [ 0, %bb.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw [56 x i8], ptr %.val.i.i, i64 %.sroa.0.0.i.i.i.i6
  %i.u = add nuw nsw i64 %.sroa.0.0.i.i.i.i6, 1   ; 4 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std9backtrace14BacktraceFrameECs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef align 8 dereferenceable(56) %i.t)
          to label %bb.j unwind label %bb.l, !noalias !1750

bb.k:                                             ; preds = %.lr.ph8
  %i.v = add nuw nsw i64 %.sroa.0.1.i.i.i.i7, 1   ; 2 uses
  %i.w = icmp eq i64 %i.v, %.val1.i.i
  br i1 %i.w, label %.body.i.i, label %.lr.ph8

bb.l:                                             ; preds = %.lr.ph
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = icmp eq i64 %i.u, %.val1.i.i
  br i1 %i.y, label %.body.i.i, label %.lr.ph8

.lr.ph8:                                          ; preds = %bb.l, %bb.k
  %.sroa.0.1.i.i.i.i7 = phi i64 [ %i.v, %bb.k ], [ %i.u, %bb.l ] ; 2 uses
  %i.z = getelementptr inbounds nuw [56 x i8], ptr %.val.i.i, i64 %.sroa.0.1.i.i.i.i7
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std9backtrace14BacktraceFrameECs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef align 8 dereferenceable(56) %i.z) #25
          to label %bb.k unwind label %bb.m, !noalias !1750

bb.m:                                             ; preds = %.lr.ph8
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !1750
  unreachable

.body.i.i:                                        ; preds = %bb.k, %bb.l
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsG258MDvU3F_3std9backtrace14BacktraceFrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %.body.i.i
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

.sink.split:                                      ; preds = %bb.j, %bb.d, %bb.i, %bb.c
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsG258MDvU3F_3std9backtrace14BacktraceFrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB7_3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = invoke { ptr, i64 } @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsbli3iz7XG76_9multiaddr9MultiaddrE8as_sliceCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, i64 } %i.b, 0
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1755, !noundef !10 ; 5 uses
  %i.g = load i64, ptr %0, align 8, !range !23, !alias.scope !1755, !noundef !10
  %i.h = sub i64 %i.g, %i.f
  %i.i = icmp ugt i64 %i.d, %i.h
  br i1 %i.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrE7reserveCs9Et6OYOsIUY_22browser_webrtc_example.exit.thread.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrE7reserveCs9Et6OYOsIUY_22browser_webrtc_example.exit.i, !prof !14

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrE7reserveCs9Et6OYOsIUY_22browser_webrtc_example.exit.thread.i: ; preds = %bb.b
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.f, i64 noundef %i.d, i64 noundef 8, i64 noundef 32)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrE7reserveCs9Et6OYOsIUY_22browser_webrtc_example.exit.thread.i
  %i.j = load i64, ptr %i.e, align 8, !alias.scope !1756, !noundef !10 ; 2 uses
  %i.k = icmp ult i64 %i.j, 288230376151711744
  tail call void @llvm.assume(i1 %i.k)
  br label %bb.c

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrE7reserveCs9Et6OYOsIUY_22browser_webrtc_example.exit.i: ; preds = %bb.b
  %i.l = icmp ult i64 %i.f, 288230376151711744
  tail call void @llvm.assume(i1 %i.l)
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECs9Et6OYOsIUY_22browser_webrtc_example.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrE7reserveCs9Et6OYOsIUY_22browser_webrtc_example.exit.i, %.noexc
  %i.m = phi i64 [ %i.j, %.noexc ], [ %i.f, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrE7reserveCs9Et6OYOsIUY_22browser_webrtc_example.exit.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !1756, !nonnull !10, !noundef !10
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.m
  %i.q = shl nuw nsw i64 %i.d, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr readonly align 8 %i.c, i64 %i.q, i1 false)
  %.pre.i = load i64, ptr %i.e, align 8, !alias.scope !1756
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECs9Et6OYOsIUY_22browser_webrtc_example.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECs9Et6OYOsIUY_22browser_webrtc_example.exit: ; preds = %bb.c, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrE7reserveCs9Et6OYOsIUY_22browser_webrtc_example.exit.i
  %i.r = phi i64 [ %.pre.i, %bb.c ], [ %i.f, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrE7reserveCs9Et6OYOsIUY_22browser_webrtc_example.exit.i ]
  %i.s = add i64 %i.r, %i.d
  store i64 %i.s, ptr %i.e, align 8, !alias.scope !1756
  %i.t = load ptr, ptr %1, align 8, !nonnull !10, !noundef !10
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.v, ptr %i.a, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.t, ptr %i.w, align 8
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsbli3iz7XG76_9multiaddr9MultiaddrEECs9Et6OYOsIUY_22browser_webrtc_example.exit: ; preds = %bb.d
  resume { ptr, i32 } %lpad.thr_comm

bb.d:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrE7reserveCs9Et6OYOsIUY_22browser_webrtc_example.exit.thread.i, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCsbli3iz7XG76_9multiaddr9MultiaddrEECs9Et6OYOsIUY_22browser_webrtc_example.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs0_NtNtNtCse0yMYRRwETY_5hyper6common2io6compatINtB5_6CompatINtNtNtCs5IbPN03UQpS_10hyper_util6common6rewind6RewindINtNtNtB16_2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEENtNtNtB2r_2io11async_write10AsyncWrite10poll_flushCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_RNvXs0_NtNtCs5IbPN03UQpS_10hyper_util6common6rewindINtB5_6RewindINtNtNtB9_2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEENtNtNtCse0yMYRRwETY_5hyper2rt2io5Write10poll_flushCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs0_NtNtNtCse0yMYRRwETY_5hyper6common2io6compatINtB5_6CompatINtNtNtCs5IbPN03UQpS_10hyper_util6common6rewind6RewindINtNtNtB16_2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEENtNtNtB2r_2io11async_write10AsyncWrite10poll_writeCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_RNvXs0_NtNtCs5IbPN03UQpS_10hyper_util6common6rewindINtB5_6RewindINtNtNtB9_2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEENtNtNtCse0yMYRRwETY_5hyper2rt2io5Write10poll_writeCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs0_NtNtNtCse0yMYRRwETY_5hyper6common2io6compatINtB5_6CompatINtNtNtCs5IbPN03UQpS_10hyper_util6common6rewind6RewindINtNtNtB16_2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEENtNtNtB2r_2io11async_write10AsyncWrite13poll_shutdownCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_RNvXs0_NtNtCs5IbPN03UQpS_10hyper_util6common6rewindINtB5_6RewindINtNtNtB9_2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEENtNtNtCse0yMYRRwETY_5hyper2rt2io5Write13poll_shutdownCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs0_NtNtNtCse0yMYRRwETY_5hyper6common2io6compatINtB5_6CompatINtNtNtCs5IbPN03UQpS_10hyper_util6common6rewind6RewindINtNtNtB16_2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEENtNtNtB2r_2io11async_write10AsyncWrite17is_write_vectoredCs9Et6OYOsIUY_22browser_webrtc_example(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs0_NtNtCs5IbPN03UQpS_10hyper_util6common6rewindINtB5_6RewindINtNtNtB9_2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEENtNtNtCse0yMYRRwETY_5hyper2rt2io5Write17is_write_vectoredCs9Et6OYOsIUY_22browser_webrtc_example(ptr noundef nonnull align 8 %0)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs0_NtNtNtCse0yMYRRwETY_5hyper6common2io6compatINtB5_6CompatINtNtNtCs5IbPN03UQpS_10hyper_util6common6rewind6RewindINtNtNtB16_2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEENtNtNtB2r_2io11async_write10AsyncWrite19poll_write_vectoredCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 576460752303423488) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_RNvXs0_NtNtCs5IbPN03UQpS_10hyper_util6common6rewindINtB5_6RewindINtNtNtB9_2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEENtNtNtCse0yMYRRwETY_5hyper2rt2io5Write19poll_write_vectoredCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3)
  ret { i64, ptr } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_6filter6FilterINtNtNtBb_3str4iter5SplitcENCINvMNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env7builderNtB23_7Builder11parse_lossyReE0ENCB1Z_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCs9Et6OYOsIUY_22browser_webrtc_example(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1789)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1790)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1791)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1792)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1793
  store ptr %i.d, ptr %i.b, align 8, !noalias !1794
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %1, ptr %i.e, align 8, !noalias !1794
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 73 ; 3 uses
  %.promoted.i.i.i = load i8, ptr %i.f, align 1, !alias.scope !1795
  %.promoted26.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !1796 ; 4 uses
  %i.g = trunc nuw i8 %.promoted.i.i.i to i1
  br i1 %i.g, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyReE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECs9Et6OYOsIUY_22browser_webrtc_example.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !1795, !nonnull !10, !noundef !10 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val1.i.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !1795, !noundef !10 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !1797, !noundef !10 ; 7 uses
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.l, %.val1.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = load i8, ptr %i.n, align 8, !alias.scope !1796 ; 2 uses
  %i.p = zext nneg i8 %i.o to i64                 ; 4 uses
  %i.q = icmp ult i8 %i.o, 5
  %i.r = getelementptr i8, ptr %i.m, i64 %i.p
  %i.s = getelementptr i8, ptr %i.r, i64 -1
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.u = load i8, ptr %i.t, align 8, !range !18, !alias.scope !1796
  %i.v = trunc nuw i8 %i.u to i1
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre2.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !alias.scope !1796 ; 4 uses
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.preheader.i.i.i

.lr.ph.split.preheader.i.i.i:                     ; preds = %.lr.ph.i.i.i
  %.promoted30.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !1797
  br label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i
  store i8 1, ptr %i.f, align 1, !alias.scope !1798
  %.not.i3.i.i.us.not.i.i.i = icmp eq i64 %.pre2.i.i.i.i.i.i, %.promoted26.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1799)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1800)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1801)
  br i1 %.not.i3.i.i.us.not.i.i.i, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyReE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECs9Et6OYOsIUY_22browser_webrtc_example.exit, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.us.us.i.i.i

_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.us.us.i.i.i: ; preds = %.lr.ph.split.us.i.i.i
  %.sroa.0.1.i.i.us.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.promoted26.i.i.i
  %2 = sub nuw i64 %.pre2.i.i.i.i.i.i, %.promoted26.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1802
  call void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvMNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env7builderNtBU_7Builder11parse_lossyReEs_0INtB7_5FnMutTB2h_EE8call_mutCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.us.i.i.i, i64 noundef %2), !noalias !1803
  %i.w = load i64, ptr %i.a, align 8, !range !48, !noalias !1802, !noundef !10 ; 2 uses
  %.not.i.i.us.us.i.i.i = icmp eq i64 %i.w, -2
  br i1 %.not.i.i.us.us.i.i.i, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyReE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECs9Et6OYOsIUY_22browser_webrtc_example.exit.sink.split, label %.loopexit.i

.lr.ph.split.i.i.i:                               ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Cs9Et6OYOsIUY_22browser_webrtc_example.exit.thread.i.i.i, %.lr.ph.split.preheader.i.i.i
  %i.x = phi i64 [ %i.at, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Cs9Et6OYOsIUY_22browser_webrtc_example.exit.thread.i.i.i ], [ %.promoted30.i.i.i, %.lr.ph.split.preheader.i.i.i ] ; 3 uses
  %.lcssa232829.i.i.i = phi i64 [ %.lcssa2327.i.i.i, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Cs9Et6OYOsIUY_22browser_webrtc_example.exit.thread.i.i.i ], [ %.promoted26.i.i.i, %.lr.ph.split.preheader.i.i.i ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1799)
  call void @llvm.experimental.noalias.scope.decl(metadata !1800)
  call void @llvm.experimental.noalias.scope.decl(metadata !1801)
  %i.y = icmp ult i64 %i.l, %i.x
  br i1 %i.y, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i.i

.lr.ph.split.preheader.i.i.i.i.i.i:               ; preds = %.lr.ph.split.i.i.i
  call void @llvm.assume(i1 %i.q)
  %.pre.i.i.i.i.i.i = load i8, ptr %i.s, align 1, !alias.scope !1797 ; 2 uses
  br label %.lr.ph.split.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i:                         ; preds = %bb.d, %.lr.ph.split.preheader.i.i.i.i.i.i
  %i.z = phi i64 [ %i.an, %bb.d ], [ %i.x, %.lr.ph.split.preheader.i.i.i.i.i.i ] ; 4 uses
  %i.aa = sub nuw i64 %i.l, %i.z                  ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.z ; 2 uses
  %i.ac = icmp samesign ult i64 %i.aa, 16
  br i1 %i.ac, label %.preheader.i.i.i.i.i.i.i, label %bb.b

.preheader.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.split.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.l, %i.z
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit15.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.split.i.i.i.i.i.i
  %i.ad = call { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef range(i64 0, -9223372036854775808) %i.aa), !noalias !1804 ; 2 uses
  %i.ae = extractvalue { i64, i64 } %i.ad, 0
  %i.af = extractvalue { i64, i64 } %i.ad, 1
  %i.ag = trunc nuw i64 %i.ae to i1
  br i1 %i.ag, label %.loopexit.i.i.i.i.i.i, label %.loopexit15.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.i.i, %bb.c
  %.sroa.04.011.i.i.i.i.i.i.i = phi i64 [ %i.ak, %bb.c ], [ 0, %.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sroa.04.011.i.i.i.i.i.i.i
  %i.ai = load i8, ptr %i.ah, align 1, !alias.scope !1805, !noalias !1804, !noundef !10
  %i.aj = icmp eq i8 %i.ai, %.pre.i.i.i.i.i.i
  br i1 %i.aj, label %.loopexit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ak = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.ak, %i.aa
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %.loopexit15.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.b
  %.sroa.5.0.i.i.i.i.i.i.i = phi i64 [ %i.af, %bb.b ], [ %.sroa.04.011.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %i.al = icmp ult i64 %.sroa.5.0.i.i.i.i.i.i.i, %i.aa
  call void @llvm.assume(i1 %i.al)
  %i.am = add i64 %i.z, 1
  %i.an = add i64 %i.am, %.sroa.5.0.i.i.i.i.i.i.i ; 10 uses
  store i64 %i.an, ptr %i.j, align 8, !alias.scope !1797
  %.not11.i.i.i.i.i.i = icmp ult i64 %i.an, %i.p
  %.not12.i.i.i.i.i.i = icmp ugt i64 %i.an, %.val1.i.i.i.i.i
  %or.cond.i.i.i.i.i.i = or i1 %.not11.i.i.i.i.i.i, %.not12.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.d, label %bb.e

.loopexit15.i.i.i.i.i.i:                          ; preds = %bb.b, %.preheader.i.i.i.i.i.i.i, %bb.c
  store i64 %i.l, ptr %i.j, align 8, !alias.scope !1797
  br label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.e, %.loopexit.i.i.i.i.i.i
  %i.ao = icmp ult i64 %i.l, %i.an
  br i1 %i.ao, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i

bb.e:                                             ; preds = %.loopexit.i.i.i.i.i.i
  %i.ap = sub nuw i64 %i.an, %i.p                 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.ap
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.aq, ptr nonnull %i.m, i64 %i.p), !noalias !1806
  %i.ar = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.ar, label %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i, label %bb.d

_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i: ; preds = %bb.e
  store i64 %i.an, ptr %i.c, align 8, !alias.scope !1795
  br label %select.unfold.i.i.i

_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i.i: ; preds = %bb.d, %.loopexit15.i.i.i.i.i.i, %.lr.ph.split.i.i.i
  %i.as = phi i64 [ %i.x, %.lr.ph.split.i.i.i ], [ %i.l, %.loopexit15.i.i.i.i.i.i ], [ %i.an, %bb.d ]
  store i8 1, ptr %i.f, align 1, !alias.scope !1798
  %.not.i3.i.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i.i, %.lcssa232829.i.i.i
  %or.cond.not.i.i.i.i.i.i = select i1 %i.v, i1 true, i1 %.not.i3.i.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i.i, label %select.unfold.i.i.i, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyReE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECs9Et6OYOsIUY_22browser_webrtc_example.exit

select.unfold.i.i.i:                              ; preds = %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i.i, %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i
  %i.at = phi i64 [ %i.an, %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i ], [ %i.as, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i.i ]
  %.lcssa2327.i.i.i = phi i64 [ %i.an, %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i ], [ %.lcssa232829.i.i.i, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i.i ]
  %i.au = phi i1 [ false, %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i ], [ true, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i.i ]
  %.pn.i.i.i = phi i64 [ %i.ap, %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i ], [ %.pre2.i.i.i.i.i.i, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.pn.i.i.i, %.lcssa232829.i.i.i
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Cs9Et6OYOsIUY_22browser_webrtc_example.exit.thread.i.i.i, label %bb.f

bb.f:                                             ; preds = %select.unfold.i.i.i
  %.sroa.4.1.i.i.i.i.i = sub nuw i64 %.pn.i.i.i, %.lcssa232829.i.i.i
  %.sroa.0.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.lcssa232829.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1802
  call void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvMNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env7builderNtBU_7Builder11parse_lossyReEs_0INtB7_5FnMutTB2h_EE8call_mutCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i.i, i64 noundef %.sroa.4.1.i.i.i.i.i), !noalias !1803
  %i.av = load i64, ptr %i.a, align 8, !range !48, !noalias !1802, !noundef !10 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.av, -2
  br i1 %.not.i.i.i.i.i, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Cs9Et6OYOsIUY_22browser_webrtc_example.exit.thread16.i.i.i, label %.loopexit.i

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Cs9Et6OYOsIUY_22browser_webrtc_example.exit.thread16.i.i.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1802
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Cs9Et6OYOsIUY_22browser_webrtc_example.exit.thread.i.i.i

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Cs9Et6OYOsIUY_22browser_webrtc_example.exit.thread.i.i.i: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Cs9Et6OYOsIUY_22browser_webrtc_example.exit.thread16.i.i.i, %select.unfold.i.i.i
  br i1 %i.au, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyReE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECs9Et6OYOsIUY_22browser_webrtc_example.exit, label %.lr.ph.split.i.i.i

.loopexit.i:                                      ; preds = %bb.f, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.us.us.i.i.i
  %.us-phi.i.i.i = phi i64 [ %i.w, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.us.us.i.i.i ], [ %i.av, %bb.f ]
  %.sroa.79.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.79.0..sroa_idx.i.i.i, i64 72, i1 false), !noalias !1807
  br label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyReE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECs9Et6OYOsIUY_22browser_webrtc_example.exit.sink.split

_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyReE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECs9Et6OYOsIUY_22browser_webrtc_example.exit.sink.split: ; preds = %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.us.us.i.i.i, %.loopexit.i
  %storemerge.i.ph = phi i64 [ %.us-phi.i.i.i, %.loopexit.i ], [ -2, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.us.us.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1802
  br label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyReE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECs9Et6OYOsIUY_22browser_webrtc_example.exit

_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyReE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECs9Et6OYOsIUY_22browser_webrtc_example.exit: ; preds = %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i.i, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Cs9Et6OYOsIUY_22browser_webrtc_example.exit.thread.i.i.i, %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyReE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECs9Et6OYOsIUY_22browser_webrtc_example.exit.sink.split, %bb.a, %.lr.ph.split.us.i.i.i
  %storemerge.i = phi i64 [ -2, %.lr.ph.split.us.i.i.i ], [ -2, %bb.a ], [ %storemerge.i.ph, %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyReE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECs9Et6OYOsIUY_22browser_webrtc_example.exit.sink.split ], [ -2, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Cs9Et6OYOsIUY_22browser_webrtc_example.exit.thread.i.i.i ], [ -2, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1793
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !1789
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs1_NtNtCs5IbPN03UQpS_10hyper_util2rt5tokioINtB5_7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamENtNtNtCse0yMYRRwETY_5hyper2rt2io4Read9poll_readCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !10 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !10 ; 6 uses
  %i.f = icmp ugt i64 %i.e, %i.c
  br i1 %i.f, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8, !nonnull !10, !noundef !10
  %i.h = sub nuw i64 %i.c, %i.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.e
  store ptr %i.i, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 %i.h, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.l = call { i64, ptr } @_RNvXs0_NtNtNtCsc13h7DQFCSE_5tokio3net3tcp6streamNtB5_9TcpStreamNtNtNtBb_2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) ; 3 uses
  %i.m = extractvalue { i64, ptr } %i.l, 0
  %i.n = extractvalue { i64, ptr } %i.l, 1        ; 2 uses
  %i.o = trunc nuw i64 %i.m to i1
  %.not = icmp ne ptr %i.n, null
  %or.cond.not = select i1 %i.o, i1 true, i1 %.not
  br i1 %or.cond.not, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.e, i64 noundef %i.c, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #26
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.p = load i64, ptr %i.j, align 8, !noundef !10 ; 2 uses
  %i.q = load i64, ptr %i.k, align 8, !noundef !10 ; 3 uses
  %.not7 = icmp ugt i64 %i.q, %i.p
  br i1 %.not7, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEEECs9Et6OYOsIUY_22browser_webrtc_example.exit, !prof !49

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEEECs9Et6OYOsIUY_22browser_webrtc_example.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.r = add i64 %i.q, %i.e                       ; 3 uses
  %i.s = icmp ult i64 %i.r, %i.e
  br i1 %i.s, label %bb.f, label %_RNvMs0_NtNtCse0yMYRRwETY_5hyper2rt2ioNtB5_13ReadBufCursor7advance.exit, !prof !14

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEEECs9Et6OYOsIUY_22browser_webrtc_example.exit
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #26
  unreachable

_RNvMs0_NtNtCse0yMYRRwETY_5hyper2rt2ioNtB5_13ReadBufCursor7advance.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEEECs9Et6OYOsIUY_22browser_webrtc_example.exit
  store i64 %i.r, ptr %i.d, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !noundef !10
  %..i.i = call noundef i64 @llvm.umax.i64(i64 %i.u, i64 %i.r)
  store i64 %..i.i, ptr %i.t, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.q, i64 noundef %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #24
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %_RNvMs0_NtNtCse0yMYRRwETY_5hyper2rt2ioNtB5_13ReadBufCursor7advance.exit, %bb.d
  %.sroa.3.0 = phi ptr [ %i.n, %bb.d ], [ null, %_RNvMs0_NtNtCse0yMYRRwETY_5hyper2rt2ioNtB5_13ReadBufCursor7advance.exit ]
  %i.v = insertvalue { i64, ptr } %i.l, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.v

bb.i:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEEECs9Et6OYOsIUY_22browser_webrtc_example(i64 0, ptr null) #25
          to label %bb.l unwind label %bb.k

bb.j:                                             ; preds = %bb.g
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.l:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.w
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 -1, 3) i8 @_RNvXs1_NtNtCsl9hx9jpF0W9_12futures_util4sink8send_allINtB5_7SendAllINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB3j_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEINtNtNtNtB9_6stream6stream3map3MapINtNtB57_7poll_fn6PollFnNCNvMs2_B1W_INtB1W_10ConnectionNtB4e_7HandlerE5close0ENCNCINvB1S_30new_for_established_connectionB6r_E0s0_0EENtNtNtB3j_6future6future6Future4pollCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef align 8 dereferenceable(152) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 7 uses
  %i.b = alloca [128 x i8], align 8               ; 9 uses
  %i.c = alloca [128 x i8], align 8               ; 6 uses
  %.sroa.02.0.copyload = load i64, ptr %0, align 8 ; 2 uses
  store i64 -1, ptr %0, align 8
  %.not = icmp eq i64 %.sroa.02.0.copyload, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa.0.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %.sroa.02.0.copyload, ptr %i.c, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.6.0..sroa.0.0..sroa_idx, i64 120, i1 false)
  %i.d = call fastcc noundef i8 @_RNvMs0_NtNtCsl9hx9jpF0W9_12futures_util4sink8send_allINtB5_7SendAllINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB3j_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEINtNtNtNtB9_6stream6stream3map3MapINtNtB57_7poll_fn6PollFnNCNvMs2_B1W_INtB1W_10ConnectionNtB4e_7HandlerE5close0ENCNCINvB1S_30new_for_established_connectionB6r_E0s0_0EE14try_start_sendCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef align 8 dereferenceable(152) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(128) %i.c) ; 3 uses
  switch i8 %i.d, label %bb.d [
    i8 -1, label %bb.f
    i8 2, label %bb.e
  ]

bb.c:                                             ; preds = %bb.e, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %.sroa.629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i8 %i.d, 2
  tail call void @llvm.assume(i1 %i.f)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.c

bb.f:                                             ; preds = %bb.b, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.g:                                             ; preds = %bb.l, %bb.i, %.loopexit, %bb.l, %bb.m, %bb.j, %bb.j, %bb.p, %bb.f
  %.sroa.01.1 = phi i8 [ %i.d, %bb.f ], [ -1, %bb.j ], [ -1, %bb.j ], [ %i.l, %.loopexit ], [ %i.o, %bb.l ], [ %i.h, %bb.i ], [ %i.o, %bb.m ], [ %i.k, %bb.p ], [ %i.o, %bb.l ]
  ret i8 %.sroa.01.1

bb.h:                                             ; preds = %bb.o, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs0_NtNtNtCsl9hx9jpF0W9_12futures_util6stream6stream4fuseINtB5_4FuseQINtNtB7_3map3MapINtNtB9_7poll_fn6PollFnNCNvMs2_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB1T_10ConnectionNtNtCskAdJPD5N6XB_11libp2p_ping7handler7HandlerE5close0ENCNCINvNtNtB1T_4pool4task30new_for_established_connectionB2S_E0s0_0EENtNtCsgtKVDLJNbYN_12futures_core6stream6Stream9poll_nextCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.g = load i64, ptr %i.b, align 8, !range !50, !noundef !10 ; 2 uses
  switch i64 %i.g, label %bb.k [
    i64 -3, label %bb.j
    i64 -2, label %bb.l
    i64 -1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.h = load i8, ptr %.sroa.456.0..sroa_idx, align 8, !range !18, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !10, !align !15, !noundef !10
  %i.k = call noundef i8 @_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB2x_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10poll_flushCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) ; 3 uses
  switch i8 %i.k, label %bb.p [
    i8 -1, label %bb.g
    i8 2, label %bb.g
  ]

bb.k:                                             ; preds = %bb.h
  %.sroa.456.0.copyload = load i8, ptr %.sroa.456.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(119) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(119) %.sroa.557.0..sroa_idx, i64 119, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.g, ptr %i.a, align 8
  store i8 %.sroa.456.0.copyload, ptr %.sroa.629.0..sroa_idx, align 8
  %i.l = call fastcc noundef i8 @_RNvMs0_NtNtCsl9hx9jpF0W9_12futures_util4sink8send_allINtB5_7SendAllINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB3j_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEINtNtNtNtB9_6stream6stream3map3MapINtNtB57_7poll_fn6PollFnNCNvMs2_B1W_INtB1W_10ConnectionNtB4e_7HandlerE5close0ENCNCINvB1S_30new_for_established_connectionB6r_E0s0_0EE14try_start_sendCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef align 8 dereferenceable(152) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(128) %i.a) ; 3 uses
  switch i8 %i.l, label %bb.n [
    i8 -1, label %.loopexit
    i8 2, label %bb.o
  ]

bb.l:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !10, !align !15, !noundef !10
  %i.o = call noundef i8 @_RNvXNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc9sink_implINtB4_6SenderINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtNtCskKLDkoKarTP_4core6result6ResultNtNtB2x_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEEEINtCs7OkeAlsyVKR_12futures_sink4SinkB13_E10poll_flushCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) ; 5 uses
  switch i8 %i.o, label %bb.m [
    i8 -1, label %bb.g
    i8 2, label %bb.g
  ]

bb.m:                                             ; preds = %bb.l
  %i.p = icmp samesign ult i8 %i.o, 2
  call void @llvm.assume(i1 %i.p)
  br label %bb.g

bb.n:                                             ; preds = %bb.k
  %i.q = icmp samesign ult i8 %i.l, 2
  call void @llvm.assume(i1 %i.q)
  br label %.loopexit

end_hunk_0

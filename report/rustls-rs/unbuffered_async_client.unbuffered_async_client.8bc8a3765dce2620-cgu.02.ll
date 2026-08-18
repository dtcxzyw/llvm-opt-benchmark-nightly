inline.NumInlined: 403
inline.NumDeleted: 214
begin_hunk_0_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake17HandshakeDeframerECsc044841uM34_23unbuffered_async_client:bb.a
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanEECsc044841uM34_23unbuffered_async_client.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanEECsc044841uM34_23unbuffered_async_client.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanEECsc044841uM34_23unbuffered_async_client.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanEECsc044841uM34_23unbuffered_async_client.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs3_NtNtCskruEhpekJ3V_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i = load i32, ptr %i.b, align 8, !alias.scope !313, !noundef !6 ; 2 uses
  %i.c = icmp eq i32 %.val2.i, -1
  br i1 %i.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef i32 @close(i32 noundef %.val2.i) #18 ; 0 uses
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load i32, ptr %i.e, align 8, !alias.scope !313, !noundef !6 ; 2 uses
  %i.f = icmp eq i32 %.val.i, -1
  br i1 %i.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = tail call noundef i32 @close(i32 noundef %.val.i) #18 ; 0 uses
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i: ; preds = %bb.c, %bb.b
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12registration12RegistrationECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) #16
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.g:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i
  resume { ptr, i32 } %i.a

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit: ; preds = %bb.d, %bb.e
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12registration12RegistrationECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12registration12RegistrationECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs1_NtNtNtCskruEhpekJ3V_5tokio7runtime2io12registrationNtB5_12RegistrationNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler6HandleECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(16) %0) #16
          to label %bb.h unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !316)
  %i.b = load i64, ptr %0, align 8, !range !217, !alias.scope !316, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322)
  %i.e = load ptr, ptr %i.c, align 8, !alias.scope !325, !nonnull !6, !noundef !6
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !325
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler6HandleECsc044841uM34_23unbuffered_async_client.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #17
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler6HandleECsc044841uM34_23unbuffered_async_client.exit unwind label %bb.j

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !326)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !329)
  %i.h = load ptr, ptr %i.c, align 8, !alias.scope !332, !nonnull !6, !noundef !6
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !332
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.g, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler6HandleECsc044841uM34_23unbuffered_async_client.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #17
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler6HandleECsc044841uM34_23unbuffered_async_client.exit unwind label %bb.j

bb.h:                                             ; preds = %bb.j, %bb.b
  %.pn = phi { ptr, i32 } [ %i.o, %bb.j ], [ %i.a, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !339, !nonnull !6, !noundef !6
  %i.m = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !339
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12scheduled_io11ScheduledIoEECsc044841uM34_23unbuffered_async_client.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12scheduled_io11ScheduledIoE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #17
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12scheduled_io11ScheduledIoEECsc044841uM34_23unbuffered_async_client.exit unwind label %bb.l

bb.j:                                             ; preds = %bb.g, %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler6HandleECsc044841uM34_23unbuffered_async_client.exit: ; preds = %bb.f, %bb.d, %bb.e, %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !346, !nonnull !6, !noundef !6
  %i.r = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !346
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.k, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12scheduled_io11ScheduledIoEECsc044841uM34_23unbuffered_async_client.exit4

bb.k:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler6HandleECsc044841uM34_23unbuffered_async_client.exit
  fence acquire
  tail call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12scheduled_io11ScheduledIoE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #17
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12scheduled_io11ScheduledIoEECsc044841uM34_23unbuffered_async_client.exit4

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12scheduled_io11ScheduledIoEECsc044841uM34_23unbuffered_async_client.exit4: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler6HandleECsc044841uM34_23unbuffered_async_client.exit, %bb.k
  ret void

bb.l:                                             ; preds = %bb.i, %bb.b
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12scheduled_io11ScheduledIoEECsc044841uM34_23unbuffered_async_client.exit: ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvCsc044841uM34_23unbuffered_async_client4main0B3_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [64 x i8], align 8                ; 9 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %.sroa.5.i.i.i.i = alloca [16 x i8], align 8    ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.517.i.i.i = alloca [16 x i8], align 8    ; 8 uses
  %.sroa.915.i.i.i = alloca [16 x i8], align 8    ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 8 uses
  %i.j = alloca [32 x i8], align 4                ; 8 uses
  %.sroa.958.i.i = alloca [16 x i8], align 8      ; 7 uses
  %.sroa.955.i.i = alloca [16 x i8], align 8      ; 11 uses
  %i.k = alloca [32 x i8], align 4                ; 10 uses
  %.sroa.6.i.i = alloca [24 x i8], align 8        ; 6 uses
  %i.l = alloca [40 x i8], align 8                ; 9 uses
  %i.m = alloca [32 x i8], align 8                ; 5 uses
  %i.n = alloca [32 x i8], align 8                ; 8 uses
  %i.o = alloca [40 x i8], align 8                ; 14 uses
  %i.p = alloca [24 x i8], align 8                ; 9 uses
  %i.q = alloca [64 x i8], align 8                ; 4 uses
  %i.r = alloca [64 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [16 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 8 uses
  %i.v = alloca [24 x i8], align 8                ; 8 uses
  %i.w = alloca [16 x i8], align 8                ; 6 uses
  %i.x = alloca [24 x i8], align 8                ; 8 uses
  %i.y = alloca [24 x i8], align 8                ; 8 uses
  %i.z = alloca [24 x i8], align 8                ; 8 uses
  %i.aa = alloca [24 x i8], align 8               ; 8 uses
  %i.ab = alloca [24 x i8], align 8               ; 8 uses
  %i.ac = alloca [8 x i8], align 8                ; 5 uses
  %i.ad = alloca [16 x i8], align 8               ; 6 uses
  %i.ae = alloca [32 x i8], align 8               ; 12 uses
  %i.af = alloca [16 x i8], align 8               ; 6 uses
  %i.ag = alloca [16 x i8], align 8               ; 6 uses
  %i.ah = alloca [24 x i8], align 8               ; 7 uses
  %i.ai = alloca [64 x i8], align 8               ; 11 uses
  %i.aj = alloca [48 x i8], align 8               ; 15 uses
  %i.ak = alloca [16 x i8], align 8               ; 6 uses
  %i.al = alloca [8 x i8], align 8                ; 5 uses
  %i.am = alloca [16 x i8], align 8               ; 6 uses
  %i.an = alloca [56 x i8], align 8               ; 7 uses
  %i.ao = alloca [72 x i8], align 8               ; 6 uses
  %i.ap = alloca [64 x i8], align 8               ; 23 uses
  %.sroa.6258.i = alloca [16 x i8], align 8       ; 6 uses
  %.sroa.10255.i = alloca [16 x i8], align 8      ; 7 uses
  %i.aq = alloca [32 x i8], align 8               ; 8 uses
  %i.ar = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.0247.i = alloca [24 x i8], align 8       ; 8 uses
  %.sroa.8.i = alloca [64 x i8], align 8          ; 7 uses
  %.sroa.5.i = alloca [904 x i8], align 8         ; 4 uses
  %i.as = alloca [32 x i8], align 8               ; 7 uses
  %i.at = alloca [32 x i8], align 8               ; 7 uses
  %i.au = alloca [8 x i8], align 8                ; 13 uses
  %i.av = alloca [976 x i8], align 8              ; 10 uses
  %i.aw = alloca [360 x i8], align 8              ; 7 uses
  %i.ax = alloca [24 x i8], align 8               ; 5 uses
  %i.ay = alloca [8 x i8], align 8                ; 5 uses
  %i.az = alloca [168 x i8], align 8              ; 5 uses
  %i.ba = alloca [184 x i8], align 8              ; 5 uses
  %i.bb = alloca [344 x i8], align 8              ; 7 uses
  %i.bc = alloca [24 x i8], align 8               ; 5 uses
  %i.bd = alloca [24 x i8], align 8               ; 8 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 1393 ; 3 uses
  %i.bf = load i8, ptr %i.be, align 1, !range !178, !noundef !6
  switch i8 %i.bf, label %default.unreachable159 [
    i8 0, label %bb.b
    i8 1, label %bb.w
    i8 2, label %bb.x
    i8 3, label %bb.y
  ]

default.unreachable159:                           ; preds = %bb.ga, %bb.dr, %bb.dl, %bb.cc, %bb.bw, %bb.bd, %bb.y, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 1392 ; 3 uses
  store i8 0, ptr %i.bg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  invoke void @_RNvXsw_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorEINtNtCsj6eKBz9Db1c_4core7convert4FromRSBF_E4fromCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @247, i64 noundef 121)
          to label %_RNvXs1_NtCsj6eKBz9Db1c_4core7convertRSNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorINtB5_4IntoINtNtCs4wP2HXfJTCR_5alloc3vec3VecBA_EE4intoCsc044841uM34_23unbuffered_async_client.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  br label %bb.v

_RNvXs1_NtCsj6eKBz9Db1c_4core7convertRSNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorINtB5_4IntoINtNtCs4wP2HXfJTCR_5alloc3vec3VecBA_EE4intoCsc044841uM34_23unbuffered_async_client.exit: ; preds = %bb.b
  store i8 1, ptr %i.bg, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  store ptr @_RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS13, ptr %i.ay, align 8
  invoke void @_RNvMNtNtCs7ZUl82OSlxp_6rustls6client11client_connNtB2_12ClientConfig30builder_with_protocol_versions(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(address) dereferenceable(168) %i.az, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ay, i64 noundef 1)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %_RNvXs1_NtCsj6eKBz9Db1c_4core7convertRSNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorINtB5_4IntoINtNtCs4wP2HXfJTCR_5alloc3vec3VecBA_EE4intoCsc044841uM34_23unbuffered_async_client.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.e:                                             ; preds = %_RNvXs1_NtCsj6eKBz9Db1c_4core7convertRSNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorINtB5_4IntoINtNtCs4wP2HXfJTCR_5alloc3vec3VecBA_EE4intoCsc044841uM34_23unbuffered_async_client.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  store i8 0, ptr %i.bg, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i64 24, i1 false)
  invoke void @_RINvMs_NtNtCs7ZUl82OSlxp_6rustls6client7builderINtNtB9_7builder13ConfigBuilderNtNtB7_11client_conn12ClientConfigNtBM_13WantsVerifierE22with_root_certificatesNtNtNtB9_6webpki7anchors13RootCertStoreECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.ba, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %i.az, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ax)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  br label %bb.u

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  invoke void @_RNvMs0_NtNtCs7ZUl82OSlxp_6rustls6client7builderINtNtB9_7builder13ConfigBuilderNtNtB7_11client_conn12ClientConfigNtB5_15WantsClientCertE19with_no_client_auth(ptr noalias nofree noundef nonnull sret([344 x i8]) align 8 captures(address) dereferenceable(344) %i.bb, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %i.ba)
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %bb.u, %bb.i
  %.pn6 = phi { ptr, i32 } [ %i.bk, %bb.i ], [ %.pn, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  br label %.body

bb.i:                                             ; preds = %bb.g
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !347
  store i64 1, ptr %i.aw, align 8, !noalias !347
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 1, ptr %i.bl, align 8, !noalias !347
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.bm, ptr noundef nonnull readonly align 8 dereferenceable(344) %i.bb, i64 344, i1 false)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !350
  %i.bn = call noundef align 8 dereferenceable_or_null(360) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 360, i64 noundef 8) #18, !noalias !350 ; 3 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.k, label %bb.o, !prof !353

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 360) #19
          to label %.noexc.i unwind label %bb.l, !noalias !347

.noexc.i:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync8ArcInnerNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(360) %i.aw) #16
          to label %.body unwind label %bb.m, !noalias !347

bb.m:                                             ; preds = %bb.l
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !347
  unreachable

.body:                                            ; preds = %.body29, %bb.p, %bb.n, %bb.l, %bb.h
  %.pn16 = phi { ptr, i32 } [ %.pn6, %bb.h ], [ %i.bp, %bb.l ], [ %i.bu, %bb.n ], [ %.pn14, %bb.p ], [ %.pn14, %.body29 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 1392
  %i.bs = load i8, ptr %i.br, align 8, !range !259, !noundef !6
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.mm, label %bb.v

bb.n:                                             ; preds = %bb.mk, %bb.mc
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.bn, ptr noundef nonnull align 8 dereferenceable(360) %i.aw, i64 360, i1 false), !noalias !347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !347
  store ptr %i.bn, ptr %1, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_RINvNtCs4wP2HXfJTCR_5alloc3vec9from_elemhECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bv, i8 noundef 0, i64 noundef 16384)
          to label %bb.r unwind label %bb.q

.body29:                                          ; preds = %bb.mh, %bb.lz, %bb.q, %.body25
  %.pn14 = phi { ptr, i32 } [ %.pn12, %.body25 ], [ %i.abb, %bb.lz ], [ %i.bz, %bb.q ], [ %i.abn, %bb.mh ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !354)
  call void @llvm.experimental.noalias.scope.decl(metadata !357)
  %i.bw = load ptr, ptr %1, align 8, !alias.scope !360, !nonnull !6, !noundef !6
  %i.bx = atomicrmw sub ptr %i.bw, i64 1 release, align 8, !noalias !360
  %i.by = icmp eq i64 %i.bx, 1
  br i1 %i.by, label %bb.p, label %.body

bb.p:                                             ; preds = %.body29
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) #17
          to label %.body unwind label %bb.ml

bb.q:                                             ; preds = %bb.mi, %bb.ma, %bb.o
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body29

bb.r:                                             ; preds = %bb.o
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  invoke void @_RINvNtCs4wP2HXfJTCR_5alloc3vec9from_elemhECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ca, i8 noundef 0, i64 noundef 1024)
          to label %.thread unwind label %bb.s

.body25:                                          ; preds = %bb.me, %bb.lw, %bb.s, %bb.t
  %.pn12 = phi { ptr, i32 } [ %.pn10, %bb.t ], [ %i.aay, %bb.lw ], [ %i.cc, %bb.s ], [ %i.abk, %bb.me ]
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cb) #16
          to label %.body29 unwind label %bb.ml

bb.s:                                             ; preds = %bb.mf, %bb.lx, %bb.r
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %.body25

.thread:                                          ; preds = %bb.r
  %i.cd = getelementptr i8, ptr %1, i64 16
  %.val = load ptr, ptr %i.cd, align 8, !nonnull !6, !noundef !6
  %i.ce = getelementptr i8, ptr %1, i64 24
  %.val19 = load i64, ptr %i.ce, align 8, !noundef !6
  %.sroa.849.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1080
  store ptr %.val, ptr %.sroa.849.0..sroa_idx, align 8
  %.sroa.950.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1088
end_hunk_0
begin_hunk_1_@_RNCNvCsc044841uM34_23unbuffered_async_client4main0B3_:bb.a

select.unfold.i.i.i:                              ; preds = %bb.hb, %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i
  %.sroa.4.1.i.i.i.i.i = phi i64 [ %.sroa.10287.8.copyload289.i, %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i ], [ %i.ry, %bb.hb ] ; 4 uses
  %i.sc = insertvalue { ptr, i64 } poison, ptr %.sroa.6285.8.copyload286.i, 0
  %i.sd = insertvalue { ptr, i64 } %i.sc, i64 %.sroa.4.1.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !516
  store i32 10, ptr %i.b, align 4, !noalias !516
  %i.se = invoke noundef zeroext i1 @_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.6285.8.copyload286.i, i64 noundef %.sroa.4.1.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
          to label %.noexc190.i unwind label %.loopexit.split-lp.i, !noalias !365

.noexc190.i:                                      ; preds = %select.unfold.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !516
  br i1 %i.se, label %bb.hc, label %_RNvXs4_NtCsj6eKBz9Db1c_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function5FnMutTReEE8call_mut.exit.i.i.i

bb.hc:                                            ; preds = %.noexc190.i
  %i.sf = add i64 %.sroa.4.1.i.i.i.i.i, -1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !516
  store i32 13, ptr %i.a, align 4, !noalias !516
  %i.sg = invoke noundef zeroext i1 @_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.6285.8.copyload286.i, i64 noundef %i.sf, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1)
          to label %.noexc191.i unwind label %.loopexit.split-lp.i, !noalias !365 ; 2 uses

.noexc191.i:                                      ; preds = %bb.hc
  %i.sh = insertvalue { ptr, i64 } %i.sd, i64 %i.sf, 1
  %i.si = add i64 %.sroa.4.1.i.i.i.i.i, -2
  %.sroa.0.0.i15.i.i.i.i.i = select i1 %i.sg, ptr %.sroa.6285.8.copyload286.i, ptr null
  %i.sj = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i15.i.i.i.i.i, 0
  %i.sk = insertvalue { ptr, i64 } %i.sj, i64 %i.si, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !516
  %..i.i.i.i.i = select i1 %i.sg, { ptr, i64 } %i.sk, { ptr, i64 } %i.sh
  br label %_RNvXs4_NtCsj6eKBz9Db1c_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function5FnMutTReEE8call_mut.exit.i.i.i

_RNvXs4_NtCsj6eKBz9Db1c_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function5FnMutTReEE8call_mut.exit.i.i.i: ; preds = %.noexc191.i, %.noexc190.i
  %.merged.i.i.i.i.i = phi { ptr, i64 } [ %..i.i.i.i.i, %.noexc191.i ], [ %i.sd, %.noexc190.i ] ; 2 uses
  %i.sl = extractvalue { ptr, i64 } %.merged.i.i.i.i.i, 0
  %i.sm = extractvalue { ptr, i64 } %.merged.i.i.i.i.i, 1
  br label %bb.hd

bb.hd:                                            ; preds = %_RNvXs4_NtCsj6eKBz9Db1c_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function5FnMutTReEE8call_mut.exit.i.i.i, %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i
  %.sroa.3.0.i.i.i = phi i64 [ %i.sm, %_RNvXs4_NtCsj6eKBz9Db1c_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function5FnMutTReEE8call_mut.exit.i.i.i ], [ undef, %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.sl, %_RNvXs4_NtCsj6eKBz9Db1c_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function5FnMutTReEE8call_mut.exit.i.i.i ], [ null, %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i ] ; 2 uses
  %.not.i192.i = icmp eq ptr %.sroa.0.0.i.i.i, null ; 2 uses
  %..i193.i = select i1 %.not.i192.i, ptr %.sroa.6285.8.copyload286.i, ptr %.sroa.0.0.i.i.i
  %.5.i.i = select i1 %.not.i192.i, i64 %.sroa.10287.8.copyload289.i, i64 %.sroa.3.0.i.i.i
  store ptr %..i193.i, ptr %i.ag, align 8, !noalias !361
  store i64 %.5.i.i, ptr %i.qo, align 8, !noalias !361
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !361
  store ptr %i.ag, ptr %i.af, align 8, !noalias !361
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsc044841uM34_23unbuffered_async_client, ptr %.sroa.5293.0..sroa_idx.i, align 8, !noalias !361
  invoke void @_RNvNtNtCsaKJjC64KgbL_3std2io5stdio6__print(ptr noundef nonnull @268, ptr noundef nonnull %i.af)
          to label %bb.hf unwind label %bb.he, !noalias !365

bb.he:                                            ; preds = %bb.hd
  %i.sn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !361
  br label %bb.hg

bb.hf:                                            ; preds = %bb.hd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !361
  br label %bb.gu

bb.hg:                                            ; preds = %bb.he, %.loopexit.split-lp.i, %.loopexit.i
  %.pn108.pn.i = phi { ptr, i32 } [ %i.sn, %bb.he ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !361
  br label %bb.hr

bb.hh:                                            ; preds = %bb.gx
  %i.so = landingpad { ptr, i32 }
          cleanup
  br label %bb.hr

bb.hi:                                            ; preds = %bb.gx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !498
  br label %bb.hj

bb.hj:                                            ; preds = %bb.ho, %bb.hi
  %.pn117.i = phi { ptr, ptr } [ %i.ra, %bb.ho ], [ %i.rj, %bb.hi ]
  %i.sp = load i64, ptr %i.aj, align 8, !range !5, !alias.scope !521, !noalias !361, !noundef !6
  %i.sq = icmp eq i64 %i.sp, -1
  br i1 %i.sq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit200.i, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aj)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i196.i unwind label %bb.hl, !noalias !365

bb.hl:                                            ; preds = %bb.hk
  %i.sr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aj)
          to label %.body180.i unwind label %bb.hm, !noalias !365

bb.hm:                                            ; preds = %bb.hl
  %i.ss = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !365
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i196.i: ; preds = %bb.hk
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aj)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit200.i unwind label %bb.hp, !noalias !365

bb.hn:                                            ; preds = %bb.gn
  %i.st = landingpad { ptr, i32 }
          cleanup
  br label %bb.hr

bb.ho:                                            ; preds = %bb.gn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !488
  br label %bb.hj

.body180.i:                                       ; preds = %bb.hr, %bb.hp, %bb.hl, %bb.gl
  %.pn119.i = phi { ptr, i32 } [ %.pn113.pn.pn.i, %bb.hr ], [ %i.qy, %bb.gl ], [ %i.su, %bb.hp ], [ %i.sr, %bb.hl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !361
  br label %bb.hs

bb.hp:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i196.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i.i
  %i.su = landingpad { ptr, i32 }
          cleanup
  br label %.body180.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit200.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i196.i, %bb.hj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !361
  br label %bb.hq

bb.hq:                                            ; preds = %bb.lf, %bb.kh, %bb.kg, %bb.js, %bb.jr, %bb.jg, %bb.iu, %bb.in, %bb.ib, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit200.i
  %i.sv = phi ptr [ %i.nb, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit200.i ], [ %i.nb, %bb.ib ], [ %i.uj, %bb.in ], [ %i.vb, %bb.iu ], [ %i.xz, %bb.kh ], [ %i.yo, %bb.kg ], [ %i.ns, %bb.lf ], [ %i.nb, %bb.js ], [ %i.xc, %bb.jr ], [ %i.wh, %bb.jg ] ; 4 uses
  %i.sw = phi ptr [ %i.nc, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit200.i ], [ %i.nc, %bb.ib ], [ %i.uk, %bb.in ], [ %i.vc, %bb.iu ], [ %i.ya, %bb.kh ], [ %i.yp, %bb.kg ], [ %i.nt, %bb.lf ], [ %i.nc, %bb.js ], [ %i.xd, %bb.jr ], [ %i.wi, %bb.jg ] ; 7 uses
  %.pn117.pn.i = phi { ptr, ptr } [ %.pn117.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit200.i ], [ %i.to, %bb.ib ], [ %i.ux, %bb.in ], [ %i.vm, %bb.iu ], [ %i.zb, %bb.kh ], [ %i.yz, %bb.kg ], [ %i.aai, %bb.lf ], [ %i.xr, %bb.js ], [ %i.xo, %bb.jr ], [ %i.ws, %bb.jg ] ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %1, i64 1136 ; 2 uses
  %i.sy = load i64, ptr %i.sx, align 8, !range !155, !noalias !361, !noundef !6
  switch i64 %i.sy, label %bb.lg [
    i64 0, label %bb.lh
    i64 4, label %bb.lh
    i64 5, label %bb.lh
    i64 7, label %bb.lh
  ]

bb.hr:                                            ; preds = %bb.hn, %bb.hh, %bb.hg, %bb.gv, %bb.gs, %bb.gp, %bb.gg
  %.pn113.pn.pn.i = phi { ptr, i32 } [ %i.qu, %bb.gg ], [ %i.st, %bb.hn ], [ %i.re, %bb.gp ], [ %.pn108.pn.i, %bb.hg ], [ %i.rf, %bb.gs ], [ %i.so, %bb.hh ], [ %i.rg, %bb.gv ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(48) %i.aj) #16
          to label %.body180.i unwind label %bb.az, !noalias !365

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i.i, %bb.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !361
  br label %bb.ew

bb.hs:                                            ; preds = %bb.ki, %bb.kc, %bb.jw, %bb.jm, %bb.ji, %bb.jc, %bb.iw, %bb.iq, %bb.ii, %bb.ie, %.body203.i, %.body180.i, %bb.es
  %i.sz = phi ptr [ %i.nb, %.body180.i ], [ %i.nb, %.body203.i ], [ %i.uj, %bb.ii ], [ %i.nb, %bb.ie ], [ %i.nb, %bb.ki ], [ %i.vb, %bb.iq ], [ %i.xz, %bb.jw ], [ %i.yo, %bb.kc ], [ %i.ns, %bb.es ], [ %i.nb, %bb.ji ], [ %i.xc, %bb.jm ], [ %i.wh, %bb.jc ], [ %i.nb, %bb.iw ] ; 5 uses
  %i.ta = phi ptr [ %i.nc, %.body180.i ], [ %i.nc, %.body203.i ], [ %i.uk, %bb.ii ], [ %i.nc, %bb.ie ], [ %i.nc, %bb.ki ], [ %i.vc, %bb.iq ], [ %i.ya, %bb.jw ], [ %i.yp, %bb.kc ], [ %i.nt, %bb.es ], [ %i.nc, %bb.ji ], [ %i.xd, %bb.jm ], [ %i.wi, %bb.jc ], [ %i.nc, %bb.iw ] ; 5 uses
  %.pn119.pn.i = phi { ptr, i32 } [ %.pn119.i, %.body180.i ], [ %.pn97.i, %.body203.i ], [ %i.um, %bb.ii ], [ %i.uc, %bb.ie ], [ %i.zc, %bb.ki ], [ %i.ve, %bb.iq ], [ %i.yc, %bb.jw ], [ %i.yr, %bb.kc ], [ %i.nv, %bb.es ], [ %i.wu, %bb.ji ], [ %i.xf, %bb.jm ], [ %i.wk, %bb.jc ], [ %i.vx, %bb.iw ] ; 5 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %1, i64 1136 ; 2 uses
  %i.tc = load i64, ptr %i.tb, align 8, !range !155, !noalias !361, !noundef !6
  switch i64 %i.tc, label %bb.ln [
    i64 0, label %.body.i
    i64 4, label %.body.i
    i64 5, label %.body.i
    i64 7, label %.body.i
  ]

bb.ht:                                            ; preds = %bb.gd
  %i.td = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !361
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered13EncodeTlsDataNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ae) #16
          to label %.body203.i unwind label %bb.az, !noalias !365

bb.hu:                                            ; preds = %bb.gd
  %i.te = load ptr, ptr %i.ad, align 8, !alias.scope !526, !noalias !529, !noundef !6 ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.tg = load i64, ptr %i.tf, align 8, !alias.scope !526, !noalias !529 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !361
  %.not94.i = icmp eq ptr %i.te, null
  br i1 %.not94.i, label %bb.hv, label %bb.ia

bb.hv:                                            ; preds = %bb.hu
  %i.th = load i64, ptr %i.ae, align 8, !range !5, !alias.scope !531, !noalias !361, !noundef !6
  %i.ti = icmp eq i64 %i.th, -1
  br i1 %i.ti, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered13EncodeTlsDataNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit.i, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ae)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i202.i unwind label %bb.hx, !noalias !365

bb.hx:                                            ; preds = %bb.hw
  %i.tj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ae)
          to label %.body203.i unwind label %bb.hy, !noalias !365

bb.hy:                                            ; preds = %bb.hx
  %i.tk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !365
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i202.i: ; preds = %bb.hw
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ae)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered13EncodeTlsDataNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit.i unwind label %bb.hz, !noalias !365

.body203.i:                                       ; preds = %bb.hz, %bb.hx, %bb.ht
  %.pn97.i = phi { ptr, i32 } [ %i.td, %bb.ht ], [ %i.tl, %bb.hz ], [ %i.tj, %bb.hx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !361
  br label %bb.hs

bb.hz:                                            ; preds = %bb.ia, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i202.i
  %i.tl = landingpad { ptr, i32 }
          cleanup
  br label %.body203.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered13EncodeTlsDataNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i202.i, %bb.hv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !361
  br label %bb.ew

bb.ia:                                            ; preds = %bb.hu
  %i.tm = icmp ne i64 %i.tg, 0
  call void @llvm.assume(i1 %i.tm)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered13EncodeTlsDataNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ae)
          to label %bb.ib unwind label %bb.hz, !noalias !365

bb.ib:                                            ; preds = %bb.ia
  %i.tn = insertvalue { ptr, ptr } poison, ptr %i.te, 0
  %.sink1.i.i = inttoptr i64 %i.tg to ptr
  %i.to = insertvalue { ptr, ptr } %i.tn, ptr %.sink1.i.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !361
  br label %bb.hq

bb.ic:                                            ; preds = %bb.ga
  %i.tp = getelementptr inbounds nuw i8, ptr %1, i64 1224
  %i.tq = getelementptr inbounds nuw i8, ptr %1, i64 1144
  %i.tr = load ptr, ptr %i.tq, align 8, !noalias !361, !nonnull !6, !align !204, !noundef !6 ; 3 uses
  store ptr %i.tr, ptr %i.tp, align 8, !noalias !361
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 822
  %i.tt = load i8, ptr %i.ts, align 2, !range !259, !noalias !365, !noundef !6
  %i.tu = trunc nuw i8 %i.tt to i1
  br i1 %i.tu, label %bb.id, label %bb.ig

bb.id:                                            ; preds = %bb.ic
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !361
  store ptr %i.tr, ptr %i.ac, align 8, !noalias !361
  %i.tv = getelementptr inbounds nuw i8, ptr %1, i64 1096
  %i.tw = load ptr, ptr %i.tv, align 8, !noalias !361, !nonnull !6, !align !204, !noundef !6 ; 2 uses
  %i.tx = getelementptr i8, ptr %i.tw, i64 8
  %.val.i = load ptr, ptr %i.tx, align 8, !noalias !365, !nonnull !6, !noundef !6
  %i.ty = getelementptr i8, ptr %i.tw, i64 16
  %.val143.i = load i64, ptr %i.ty, align 8, !noalias !365, !noundef !6
  %i.tz = getelementptr inbounds nuw i8, ptr %1, i64 1218
  %i.ua = getelementptr inbounds nuw i8, ptr %1, i64 1112
  %i.ub = invoke noundef zeroext i1 @_RNvCsc044841uM34_23unbuffered_async_client20encrypt_http_request(ptr noalias nofree noundef nonnull dereferenceable(1) %i.tz, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noalias nofree noundef nonnull %.val.i, i64 noundef %.val143.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ua)
          to label %bb.if unwind label %bb.ie, !noalias !365 ; 0 uses

bb.ie:                                            ; preds = %bb.id
  %i.uc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !361
  br label %bb.hs

bb.if:                                            ; preds = %bb.id
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !361
  br label %bb.ig

bb.ig:                                            ; preds = %bb.if, %bb.ic
  %i.ud = getelementptr inbounds nuw i8, ptr %1, i64 1096
  %i.ue = load ptr, ptr %i.ud, align 8, !noalias !361, !nonnull !6, !align !204, !noundef !6 ; 2 uses
  %i.uf = getelementptr i8, ptr %i.ue, i64 8
  %.val152.i = load ptr, ptr %i.uf, align 8, !noalias !365, !nonnull !6, !noundef !6
  %i.ug = getelementptr i8, ptr %i.ue, i64 16
  %.val153.i = load i64, ptr %i.ug, align 8, !noalias !365, !noundef !6
  %i.uh = getelementptr inbounds nuw i8, ptr %1, i64 1112
  %i.ui = getelementptr inbounds nuw i8, ptr %1, i64 1232
  store ptr %i.nc, ptr %i.ui, align 8, !noalias !361
  %.sroa.8304.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1240
  store ptr %.val152.i, ptr %.sroa.8304.0..sroa_idx.i, align 8, !noalias !361
  %.sroa.9305.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1248
  store i64 %.val153.i, ptr %.sroa.9305.0..sroa_idx.i, align 8, !noalias !361
  %.sroa.10306.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1256
  store ptr %i.uh, ptr %.sroa.10306.0..sroa_idx.i, align 8, !noalias !361
  %.sroa.12308.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1296
  store i8 0, ptr %.sroa.12308.0..sroa_idx.i, align 8, !noalias !361
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ig, %bb.ab
  %i.uj = phi ptr [ %i.nb, %bb.ig ], [ %i.ck, %bb.ab ] ; 4 uses
  %i.uk = phi ptr [ %i.nc, %bb.ig ], [ %i.cj, %bb.ab ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !361
  %i.ul = getelementptr inbounds nuw i8, ptr %1, i64 1232
  invoke fastcc void @_RNCNvCsc044841uM34_23unbuffered_async_client8send_tls0B3_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ab, ptr noundef nonnull align 8 %i.ul, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ij unwind label %bb.ii, !noalias !365

bb.ii:                                            ; preds = %bb.ih
  %i.um = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !361
  br label %bb.hs

bb.ij:                                            ; preds = %bb.ih
  %i.un = load i64, ptr %i.ab, align 8, !range !217, !noalias !361, !noundef !6
  %i.uo = trunc nuw i64 %i.un to i1
  br i1 %i.uo, label %bb.ik, label %bb.il

bb.ik:                                            ; preds = %bb.ij
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !361
  br label %bb.lr

bb.il:                                            ; preds = %bb.ij
  %i.up = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.uq = load ptr, ptr %i.up, align 8, !noalias !361, !noundef !6 ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.us = load ptr, ptr %i.ur, align 8, !noalias !361 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !361
  %.not.i206.i = icmp eq ptr %i.uq, null
  br i1 %.not.i206.i, label %bb.im, label %bb.in

bb.im:                                            ; preds = %bb.il
  %i.ut = getelementptr inbounds nuw i8, ptr %1, i64 1224
  %i.uu = load ptr, ptr %i.ut, align 8, !noalias !361, !nonnull !6, !align !204, !noundef !6
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 968
  store i8 0, ptr %i.uv, align 8, !alias.scope !536, !noalias !365
  br label %bb.ew

bb.in:                                            ; preds = %bb.il
  %i.uw = insertvalue { ptr, ptr } poison, ptr %i.uq, 0
  %i.ux = insertvalue { ptr, ptr } %i.uw, ptr %i.us, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.us) ]
  br label %bb.hq

bb.io:                                            ; preds = %bb.ga
  %i.uy = load ptr, ptr %i.pr, align 8, !noalias !361, !nonnull !6, !noundef !6
  %i.uz = load i64, ptr %i.ps, align 8, !noalias !361, !noundef !6
  %i.va = getelementptr inbounds nuw i8, ptr %1, i64 1224
  store ptr %i.nc, ptr %i.va, align 8, !noalias !361
  %.sroa.8318.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1232
  store ptr %i.uy, ptr %.sroa.8318.0..sroa_idx.i, align 8, !noalias !361
  %.sroa.9319.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1240
  store i64 %i.uz, ptr %.sroa.9319.0..sroa_idx.i, align 8, !noalias !361
  %.sroa.10320.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1248
  store ptr %i.pu, ptr %.sroa.10320.0..sroa_idx.i, align 8, !noalias !361
  %.sroa.12322.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1288
  store i8 0, ptr %.sroa.12322.0..sroa_idx.i, align 8, !noalias !361
  br label %bb.ip

bb.ip:                                            ; preds = %bb.io, %bb.ac
  %i.vb = phi ptr [ %i.nb, %bb.io ], [ %i.ck, %bb.ac ] ; 4 uses
  %i.vc = phi ptr [ %i.nc, %bb.io ], [ %i.cj, %bb.ac ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !361
  %i.vd = getelementptr inbounds nuw i8, ptr %1, i64 1224
  invoke fastcc void @_RNCNvCsc044841uM34_23unbuffered_async_client8recv_tls0B3_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.aa, ptr noundef nonnull align 8 %i.vd, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ir unwind label %bb.iq, !noalias !365

bb.iq:                                            ; preds = %bb.ip
  %i.ve = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !361
  br label %bb.hs

bb.ir:                                            ; preds = %bb.ip
  %i.vf = load i64, ptr %i.aa, align 8, !range !217, !noalias !361, !noundef !6
  %i.vg = trunc nuw i64 %i.vf to i1
  br i1 %i.vg, label %bb.is, label %bb.it

bb.is:                                            ; preds = %bb.ir
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !361
  br label %bb.lr

bb.it:                                            ; preds = %bb.ir
  %i.vh = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.vi = load ptr, ptr %i.vh, align 8, !noalias !361, !noundef !6 ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.vk = load ptr, ptr %i.vj, align 8, !noalias !361 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !361
  %.not.i208.i = icmp eq ptr %i.vi, null
  br i1 %.not.i208.i, label %bb.ew, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.vl = insertvalue { ptr, ptr } poison, ptr %i.vi, 0
  %i.vm = insertvalue { ptr, ptr } %i.vl, ptr %i.vk, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.vk) ]
  br label %bb.hq

bb.iv:                                            ; preds = %bb.ga
  %i.vn = getelementptr inbounds nuw i8, ptr %1, i64 1192 ; 3 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %1, i64 1144
  %i.vp = load ptr, ptr %i.vo, align 8, !noalias !361, !nonnull !6, !align !204, !noundef !6
  store ptr %i.vp, ptr %i.vn, align 8, !noalias !361
  %i.vq = getelementptr inbounds nuw i8, ptr %1, i64 1096 ; 4 uses
  %i.vr = load ptr, ptr %i.vq, align 8, !noalias !361, !nonnull !6, !align !204, !noundef !6 ; 2 uses
  %i.vs = getelementptr i8, ptr %i.vr, i64 8
  %.val144.i = load ptr, ptr %i.vs, align 8, !noalias !365, !nonnull !6, !noundef !6
  %i.vt = getelementptr i8, ptr %i.vr, i64 16
  %.val145.i = load i64, ptr %i.vt, align 8, !noalias !365, !noundef !6
  %i.vu = getelementptr inbounds nuw i8, ptr %1, i64 1218
  %i.vv = getelementptr inbounds nuw i8, ptr %1, i64 1112 ; 4 uses
  %i.vw = invoke noundef zeroext i1 @_RNvCsc044841uM34_23unbuffered_async_client20encrypt_http_request(ptr noalias nofree noundef nonnull dereferenceable(1) %i.vu, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.vn, ptr noalias nofree noundef nonnull %.val144.i, i64 noundef %.val145.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.vv)
          to label %bb.ix unwind label %bb.iw, !noalias !365

bb.iw:                                            ; preds = %bb.iv
  %i.vx = landingpad { ptr, i32 }
          cleanup
  br label %bb.hs

bb.ix:                                            ; preds = %bb.iv
  br i1 %i.vw, label %bb.ju, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.vy = getelementptr inbounds nuw i8, ptr %1, i64 1219
  %i.vz = load i8, ptr %i.vy, align 1, !range !259, !noalias !361, !noundef !6
  %i.wa = trunc nuw i8 %i.vz to i1
  br i1 %i.wa, label %bb.iz, label %bb.ja

bb.iz:                                            ; preds = %bb.iy
  %i.wb = getelementptr inbounds nuw i8, ptr %1, i64 1216
  %i.wc = load i8, ptr %i.wb, align 8, !range !259, !noalias !361, !noundef !6
  %i.wd = trunc nuw i8 %i.wc to i1
  br i1 %i.wd, label %bb.jt, label %bb.jh

bb.ja:                                            ; preds = %bb.iy
  %i.we = load ptr, ptr %i.pr, align 8, !noalias !361, !nonnull !6, !noundef !6
  %i.wf = load i64, ptr %i.ps, align 8, !noalias !361, !noundef !6
  %i.wg = getelementptr inbounds nuw i8, ptr %1, i64 1224
  store ptr %i.nc, ptr %i.wg, align 8, !noalias !361
  %.sroa.8360.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1232
  store ptr %i.we, ptr %.sroa.8360.0..sroa_idx.i, align 8, !noalias !361
  %.sroa.9361.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1240
  store i64 %i.wf, ptr %.sroa.9361.0..sroa_idx.i, align 8, !noalias !361
  %.sroa.10362.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1248
  store ptr %i.pu, ptr %.sroa.10362.0..sroa_idx.i, align 8, !noalias !361
  %.sroa.12364.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1288
  store i8 0, ptr %.sroa.12364.0..sroa_idx.i, align 8, !noalias !361
  br label %bb.jb

bb.jb:                                            ; preds = %bb.ja, %bb.af
  %i.wh = phi ptr [ %i.nb, %bb.ja ], [ %i.ck, %bb.af ] ; 4 uses
  %i.wi = phi ptr [ %i.nc, %bb.ja ], [ %i.cj, %bb.af ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !361
  %i.wj = getelementptr inbounds nuw i8, ptr %1, i64 1224
  invoke fastcc void @_RNCNvCsc044841uM34_23unbuffered_async_client8recv_tls0B3_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.x, ptr noundef nonnull align 8 %i.wj, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.jd unwind label %bb.jc, !noalias !365

bb.jc:                                            ; preds = %bb.jb
  %i.wk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !361
  br label %bb.hs

bb.jd:                                            ; preds = %bb.jb
  %i.wl = load i64, ptr %i.x, align 8, !range !217, !noalias !361, !noundef !6
  %i.wm = trunc nuw i64 %i.wl to i1
  br i1 %i.wm, label %bb.je, label %bb.jf

bb.je:                                            ; preds = %bb.jd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !361
  br label %bb.lr

bb.jf:                                            ; preds = %bb.jd
  %i.wn = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.wo = load ptr, ptr %i.wn, align 8, !noalias !361, !noundef !6 ; 2 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.wq = load ptr, ptr %i.wp, align 8, !noalias !361 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !361
  %.not.i210.i = icmp eq ptr %i.wo, null
  br i1 %.not.i210.i, label %bb.ew, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %i.wr = insertvalue { ptr, ptr } poison, ptr %i.wo, 0
  %i.ws = insertvalue { ptr, ptr } %i.wr, ptr %i.wq, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.wq) ]
  br label %bb.hq

bb.jh:                                            ; preds = %bb.iz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !361
  %i.wt = load ptr, ptr %i.vq, align 8, !noalias !361, !nonnull !6, !align !204, !noundef !6
  invoke void @_RINvCsc044841uM34_23unbuffered_async_client23try_or_resize_and_retryNtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered12EncryptErrorNCNCNvB2_8converse0s0_0NCB22_s1_0EB2_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.vn, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.wt, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.vv)
          to label %bb.jj unwind label %bb.ji, !noalias !365

bb.ji:                                            ; preds = %bb.jh
  %i.wu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !361
  br label %bb.hs

bb.jj:                                            ; preds = %bb.jh
  %i.wv = load ptr, ptr %i.w, align 8, !alias.scope !539, !noalias !542, !noundef !6 ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.wx = load i64, ptr %i.ww, align 8, !alias.scope !539, !noalias !542 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !361
  %.not55.i = icmp eq ptr %i.wv, null
  br i1 %.not55.i, label %bb.jk, label %bb.js

bb.jk:                                            ; preds = %bb.jj
  %i.wy = load ptr, ptr %i.vq, align 8, !noalias !361, !nonnull !6, !align !204, !noundef !6 ; 2 uses
  %i.wz = getelementptr i8, ptr %i.wy, i64 8
  %.val148.i = load ptr, ptr %i.wz, align 8, !noalias !365, !nonnull !6, !noundef !6
  %i.xa = getelementptr i8, ptr %i.wy, i64 16
  %.val149.i = load i64, ptr %i.xa, align 8, !noalias !365, !noundef !6
  %i.xb = getelementptr inbounds nuw i8, ptr %1, i64 1224
  store ptr %i.nc, ptr %i.xb, align 8, !noalias !361
  %.sroa.8376.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1232
  store ptr %.val148.i, ptr %.sroa.8376.0..sroa_idx.i, align 8, !noalias !361
  %.sroa.9377.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1240
  store i64 %.val149.i, ptr %.sroa.9377.0..sroa_idx.i, align 8, !noalias !361
  %.sroa.10378.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1248
  store ptr %i.vv, ptr %.sroa.10378.0..sroa_idx.i, align 8, !noalias !361
  %.sroa.12380.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1288
  store i8 0, ptr %.sroa.12380.0..sroa_idx.i, align 8, !noalias !361
  br label %bb.jl

bb.jl:                                            ; preds = %bb.jk, %bb.ag
  %i.xc = phi ptr [ %i.nb, %bb.jk ], [ %i.ck, %bb.ag ] ; 4 uses
  %i.xd = phi ptr [ %i.nc, %bb.jk ], [ %i.cj, %bb.ag ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !361
  %i.xe = getelementptr inbounds nuw i8, ptr %1, i64 1224
  invoke fastcc void @_RNCNvCsc044841uM34_23unbuffered_async_client8send_tls0B3_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.v, ptr noundef nonnull align 8 %i.xe, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.jn unwind label %bb.jm, !noalias !365

bb.jm:                                            ; preds = %bb.jl
  %i.xf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !361
  br label %bb.hs

bb.jn:                                            ; preds = %bb.jl
  %i.xg = load i64, ptr %i.v, align 8, !range !217, !noalias !361, !noundef !6
  %i.xh = trunc nuw i64 %i.xg to i1
  br i1 %i.xh, label %bb.jo, label %bb.jp

bb.jo:                                            ; preds = %bb.jn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !361
  br label %bb.lr

bb.jp:                                            ; preds = %bb.jn
  %i.xi = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.xj = load ptr, ptr %i.xi, align 8, !noalias !361, !noundef !6 ; 2 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.xl = load ptr, ptr %i.xk, align 8, !noalias !361 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !361
  %.not.i213.i = icmp eq ptr %i.xj, null
  br i1 %.not.i213.i, label %bb.jq, label %bb.jr

bb.jq:                                            ; preds = %bb.jp
  %i.xm = getelementptr inbounds nuw i8, ptr %1, i64 1216
  store i8 1, ptr %i.xm, align 8, !noalias !361
  br label %bb.ew

bb.jr:                                            ; preds = %bb.jp
  %i.xn = insertvalue { ptr, ptr } poison, ptr %i.xj, 0
  %i.xo = insertvalue { ptr, ptr } %i.xn, ptr %i.xl, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.xl) ]
  br label %bb.hq

bb.js:                                            ; preds = %bb.jj
  %.sink1.i212.i = inttoptr i64 %i.wx to ptr
  %i.xp = icmp ne i64 %i.wx, 0
  call void @llvm.assume(i1 %i.xp)
  %i.xq = insertvalue { ptr, ptr } poison, ptr %i.wv, 0
  %i.xr = insertvalue { ptr, ptr } %i.xq, ptr %.sink1.i212.i, 1
  br label %bb.hq

bb.jt:                                            ; preds = %bb.iz
  %i.xs = load ptr, ptr %i.pr, align 8, !noalias !361, !nonnull !6, !noundef !6
  %i.xt = load i64, ptr %i.ps, align 8, !noalias !361, !noundef !6
  %i.xu = getelementptr inbounds nuw i8, ptr %1, i64 1224
  store ptr %i.nc, ptr %i.xu, align 8, !noalias !361
  %.sroa.8390.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1232
  store ptr %i.xs, ptr %.sroa.8390.0..sroa_idx.i, align 8, !noalias !361
  %.sroa.9391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1240
  store i64 %i.xt, ptr %.sroa.9391.0..sroa_idx.i, align 8, !noalias !361
  %.sroa.10392.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1248
  store ptr %i.pu, ptr %.sroa.10392.0..sroa_idx.i, align 8, !noalias !361
  %.sroa.12394.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1288
  store i8 0, ptr %.sroa.12394.0..sroa_idx.i, align 8, !noalias !361
  br label %bb.er

bb.ju:                                            ; preds = %bb.ix
  %i.xv = load ptr, ptr %i.vq, align 8, !noalias !361, !nonnull !6, !align !204, !noundef !6 ; 2 uses
  %i.xw = getelementptr i8, ptr %i.xv, i64 8
  %.val150.i = load ptr, ptr %i.xw, align 8, !noalias !365, !nonnull !6, !noundef !6
  %i.xx = getelementptr i8, ptr %i.xv, i64 16
  %.val151.i = load i64, ptr %i.xx, align 8, !noalias !365, !noundef !6
  %i.xy = getelementptr inbounds nuw i8, ptr %1, i64 1224
  store ptr %i.nc, ptr %i.xy, align 8, !noalias !361
  %.sroa.8332.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1232
  store ptr %.val150.i, ptr %.sroa.8332.0..sroa_idx.i, align 8, !noalias !361
  %.sroa.9333.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1240
  store i64 %.val151.i, ptr %.sroa.9333.0..sroa_idx.i, align 8, !noalias !361
  %.sroa.10334.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1248
  store ptr %i.vv, ptr %.sroa.10334.0..sroa_idx.i, align 8, !noalias !361
  %.sroa.12336.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1288
  store i8 0, ptr %.sroa.12336.0..sroa_idx.i, align 8, !noalias !361
  br label %bb.jv

bb.jv:                                            ; preds = %bb.ju, %bb.ad
  %i.xz = phi ptr [ %i.nb, %bb.ju ], [ %i.ck, %bb.ad ] ; 4 uses
  %i.ya = phi ptr [ %i.nc, %bb.ju ], [ %i.cj, %bb.ad ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !361
  %i.yb = getelementptr inbounds nuw i8, ptr %1, i64 1224 ; 2 uses
  invoke fastcc void @_RNCNvCsc044841uM34_23unbuffered_async_client8send_tls0B3_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.z, ptr noundef nonnull align 8 %i.yb, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.jx unwind label %bb.jw, !noalias !365

bb.jw:                                            ; preds = %bb.jv
  %i.yc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !361
  br label %bb.hs

bb.jx:                                            ; preds = %bb.jv
  %i.yd = load i64, ptr %i.z, align 8, !range !217, !noalias !361, !noundef !6
  %i.ye = trunc nuw i64 %i.yd to i1
  br i1 %i.ye, label %bb.jy, label %bb.jz

bb.jy:                                            ; preds = %bb.jx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !361
  br label %bb.lr

bb.jz:                                            ; preds = %bb.jx
  %i.yf = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.yg = load ptr, ptr %i.yf, align 8, !noalias !361, !noundef !6 ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.yi = load ptr, ptr %i.yh, align 8, !noalias !361 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !361
  %.not.i215.i = icmp eq ptr %i.yg, null
  br i1 %.not.i215.i, label %bb.ka, label %bb.kh

bb.ka:                                            ; preds = %bb.jz
  %i.yj = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.yk = load ptr, ptr %i.yj, align 8, !noalias !361, !nonnull !6, !noundef !6
  %i.yl = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ym = load i64, ptr %i.yl, align 8, !noalias !361, !noundef !6
  %i.yn = getelementptr inbounds nuw i8, ptr %1, i64 1104
  store ptr %i.ya, ptr %i.yb, align 8, !noalias !361
  %.sroa.8346.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1232
  store ptr %i.yk, ptr %.sroa.8346.0..sroa_idx.i, align 8, !noalias !361
  %.sroa.9347.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1240
  store i64 %i.ym, ptr %.sroa.9347.0..sroa_idx.i, align 8, !noalias !361
  %.sroa.10348.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1248
  store ptr %i.yn, ptr %.sroa.10348.0..sroa_idx.i, align 8, !noalias !361
  %.sroa.12350.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1288
  store i8 0, ptr %.sroa.12350.0..sroa_idx.i, align 8, !noalias !361
  br label %bb.kb

bb.kb:                                            ; preds = %bb.ka, %bb.ae
  %i.yo = phi ptr [ %i.xz, %bb.ka ], [ %i.ck, %bb.ae ] ; 4 uses
  %i.yp = phi ptr [ %i.ya, %bb.ka ], [ %i.cj, %bb.ae ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !361
  %i.yq = getelementptr inbounds nuw i8, ptr %1, i64 1224
  invoke fastcc void @_RNCNvCsc044841uM34_23unbuffered_async_client8recv_tls0B3_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.y, ptr noundef nonnull align 8 %i.yq, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.kd unwind label %bb.kc, !noalias !365

bb.kc:                                            ; preds = %bb.kb
  %i.yr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !361
  br label %bb.hs

bb.kd:                                            ; preds = %bb.kb
  %i.ys = load i64, ptr %i.y, align 8, !range !217, !noalias !361, !noundef !6
  %i.yt = trunc nuw i64 %i.ys to i1
  br i1 %i.yt, label %bb.ke, label %bb.kf

bb.ke:                                            ; preds = %bb.kd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !361
  br label %bb.lr

bb.kf:                                            ; preds = %bb.kd
  %i.yu = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.yv = load ptr, ptr %i.yu, align 8, !noalias !361, !noundef !6 ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.yx = load ptr, ptr %i.yw, align 8, !noalias !361 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !361
  %.not.i217.i = icmp eq ptr %i.yv, null
  br i1 %.not.i217.i, label %bb.ew, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.yy = insertvalue { ptr, ptr } poison, ptr %i.yv, 0
  %i.yz = insertvalue { ptr, ptr } %i.yy, ptr %i.yx, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.yx) ]
  br label %bb.hq

bb.kh:                                            ; preds = %bb.jz
  %i.za = insertvalue { ptr, ptr } poison, ptr %i.yg, 0
  %i.zb = insertvalue { ptr, ptr } %i.za, ptr %i.yi, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.yi) ]
  br label %bb.hq

bb.ki:                                            ; preds = %bb.ge
  %i.zc = landingpad { ptr, i32 }
          cleanup
  br label %bb.hs

bb.kj:                                            ; preds = %bb.fz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !361
  br label %.body.i

bb.kk:                                            ; preds = %bb.fs, %bb.fq
  %.pn45.i = phi { ptr, i32 } [ %i.pz, %bb.fs ], [ %i.pw, %bb.fq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !361
  br label %bb.ko

bb.kl:                                            ; preds = %bb.fn
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @270, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @271) #19
          to label %bb.ff unwind label %bb.kn, !noalias !365

bb.km:                                            ; preds = %bb.fn
  %i.zd = getelementptr inbounds nuw i8, ptr %1, i64 1219
  %i.ze = load i8, ptr %i.zd, align 1, !range !259, !noalias !361, !noundef !6
  %i.zf = trunc nuw i8 %i.ze to i1
  br i1 %i.zf, label %bb.kq, label %bb.kp, !prof !474

bb.kn:                                            ; preds = %bb.kl
  %i.zg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ko

bb.ko:                                            ; preds = %bb.lo, %bb.lc, %bb.ku, %bb.kr, %bb.kn, %bb.kk
  %i.zh = phi ptr [ %i.nb, %bb.lc ], [ %i.nb, %bb.ku ], [ %i.nb, %bb.kr ], [ %i.nb, %bb.kn ], [ %i.pj, %bb.lo ], [ %i.nb, %bb.kk ]
  %i.zi = phi ptr [ %i.nc, %bb.lc ], [ %i.nc, %bb.ku ], [ %i.nc, %bb.kr ], [ %i.nc, %bb.kn ], [ %i.pk, %bb.lo ], [ %i.nc, %bb.kk ] ; 2 uses
  %.pn126.i = phi { ptr, i32 } [ %i.zz, %bb.lc ], [ %i.zq, %bb.ku ], [ %i.zm, %bb.kr ], [ %i.zg, %bb.kn ], [ %.pn123.pn.i, %bb.lo ], [ %.pn45.i, %bb.kk ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.zi) #16
          to label %.body219.i unwind label %bb.az, !noalias !365

bb.kp:                                            ; preds = %bb.km
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @272, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @273) #19
          to label %bb.ff unwind label %bb.kr, !noalias !365

bb.kq:                                            ; preds = %bb.km
  %i.zj = getelementptr inbounds nuw i8, ptr %1, i64 1104 ; 2 uses
  %i.zk = load i64, ptr %i.zj, align 8, !noalias !361, !noundef !6
  %i.zl = icmp eq i64 %i.zk, 0
  br i1 %i.zl, label %bb.kt, label %bb.ks, !prof !474

bb.kr:                                            ; preds = %bb.kp
  %i.zm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ko

bb.ks:                                            ; preds = %bb.kq
  invoke void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @274, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.zj, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @275) #19
          to label %bb.ff unwind label %bb.ku, !noalias !365

bb.kt:                                            ; preds = %bb.kq
  %i.zn = getelementptr inbounds nuw i8, ptr %1, i64 1112 ; 2 uses
  %i.zo = load i64, ptr %i.zn, align 8, !noalias !361, !noundef !6
  %i.zp = icmp eq i64 %i.zo, 0
  br i1 %i.zp, label %bb.kw, label %bb.kv, !prof !474

bb.ku:                                            ; preds = %bb.ks
  %i.zq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ko

bb.kv:                                            ; preds = %bb.kt
  invoke void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @274, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.zn, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @276) #19
          to label %bb.ff unwind label %bb.lc, !noalias !365

bb.kw:                                            ; preds = %bb.kt
  invoke void @_RNvXs3_NtNtCskruEhpekJ3V_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.nc)
          to label %bb.kz unwind label %bb.kx, !noalias !365

bb.kx:                                            ; preds = %bb.kw
  %i.zr = landingpad { ptr, i32 }
          cleanup
  %i.zs = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val2.i.i.i = load i32, ptr %i.zs, align 8, !alias.scope !544, !noalias !361, !noundef !6 ; 2 uses
  %i.zt = icmp eq i32 %.val2.i.i.i, -1
  br i1 %i.zt, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.zu = call noundef i32 @close(i32 noundef %.val2.i.i.i) #18, !noalias !365 ; 0 uses
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i

bb.kz:                                            ; preds = %bb.kw
  %i.zv = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val.i.i.i = load i32, ptr %i.zv, align 8, !alias.scope !544, !noalias !361, !noundef !6 ; 2 uses
  %i.zw = icmp eq i32 %.val.i.i.i, -1
  br i1 %i.zw, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i, label %bb.la

bb.la:                                            ; preds = %bb.kz
  %i.zx = call noundef i32 @close(i32 noundef %.val.i.i.i) #18, !noalias !365 ; 0 uses
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i: ; preds = %bb.ky, %bb.kx
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12registration12RegistrationECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.nc) #16
          to label %.body219.i unwind label %bb.lb, !noalias !365

bb.lb:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i
  %i.zy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !365
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i: ; preds = %bb.la, %bb.kz
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12registration12RegistrationECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.nc)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit.i unwind label %bb.ld, !noalias !365

bb.lc:                                            ; preds = %bb.kv
  %i.zz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ko

bb.ld:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i225.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i
  %i.aaa = phi ptr [ %i.sv, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i225.i ], [ %i.nb, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i ]
  %i.aab = phi ptr [ %i.sw, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i225.i ], [ %i.nc, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i ]
  %i.aac = landingpad { ptr, i32 }
          cleanup
  br label %.body219.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i
  %i.aad = getelementptr inbounds nuw i8, ptr %1, i64 104
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn26UnbufferedClientConnectionECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(976) %i.aad)
          to label %bb.ls unwind label %bb.le, !noalias !365

bb.le:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit229.i
  %i.aae = phi ptr [ %i.nb, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit.i ], [ %i.nj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit229.i ]
  %i.aaf = phi ptr [ %i.nc, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit.i ], [ %i.nk, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit229.i ]
  %i.aag = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.lf:                                            ; preds = %bb.ev
  %i.aah = insertvalue { ptr, ptr } poison, ptr %i.nz, 0
  %i.aai = insertvalue { ptr, ptr } %i.aah, ptr %i.ob, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ob) ]
  br label %bb.hq

bb.lg:                                            ; preds = %bb.hq
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered15ConnectionStateNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(56) %i.sx)
          to label %bb.lh unwind label %bb.ez, !noalias !365

bb.lh:                                            ; preds = %bb.lg, %bb.hq, %bb.hq, %bb.hq, %bb.hq
  %i.aaj = getelementptr inbounds nuw i8, ptr %1, i64 1220
  store i8 0, ptr %i.aaj, align 4, !noalias !361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !361
  invoke void @_RNvXs3_NtNtCskruEhpekJ3V_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.sw)
          to label %bb.lk unwind label %bb.li, !noalias !365

bb.li:                                            ; preds = %bb.lh
  %i.aak = landingpad { ptr, i32 }
          cleanup
  %i.aal = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val2.i.i222.i = load i32, ptr %i.aal, align 8, !alias.scope !549, !noalias !361, !noundef !6 ; 2 uses
  %i.aam = icmp eq i32 %.val2.i.i222.i, -1
  br i1 %i.aam, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i223.i, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.aan = call noundef i32 @close(i32 noundef %.val2.i.i222.i) #18, !noalias !365 ; 0 uses
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i223.i

bb.lk:                                            ; preds = %bb.lh
  %i.aao = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val.i.i224.i = load i32, ptr %i.aao, align 8, !alias.scope !549, !noalias !361, !noundef !6 ; 2 uses
  %i.aap = icmp eq i32 %.val.i.i224.i, -1
  br i1 %i.aap, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i225.i, label %bb.ll

bb.ll:                                            ; preds = %bb.lk
  %i.aaq = call noundef i32 @close(i32 noundef %.val.i.i224.i) #18, !noalias !365 ; 0 uses
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i225.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i223.i: ; preds = %bb.lj, %bb.li
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12registration12RegistrationECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.sw) #16
          to label %.body219.i unwind label %bb.lm, !noalias !365

bb.lm:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i223.i
  %i.aar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !365
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i225.i: ; preds = %bb.ll, %bb.lk
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12registration12RegistrationECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.sw)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i225._RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit229_crit_edge.i unwind label %bb.ld, !noalias !365

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i225._RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit229_crit_edge.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i225.i
  %.pre496.i = extractvalue { ptr, ptr } %.pn117.pn.i, 1
  %.pre497.i = extractvalue { ptr, ptr } %.pn117.pn.i, 0
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit229.i

bb.ln:                                            ; preds = %bb.hs
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered15ConnectionStateNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(56) %i.tb) #16
          to label %.body.i unwind label %bb.az, !noalias !365

bb.lo:                                            ; preds = %bb.lp, %.body.i
  store i8 0, ptr %i.pl, align 4, !noalias !361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !361
  br label %bb.ko

bb.lp:                                            ; preds = %.body.i
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered15ConnectionStateNtNtNtB14_6client11client_conn20ClientConnectionDataENtNtB14_5error5ErrorEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(64) %i.ap) #16
          to label %bb.lo unwind label %bb.az, !noalias !365

bb.lq:                                            ; preds = %bb.bc, %bb.bb
  %i.aas = landingpad { ptr, i32 }
          cleanup
  br label %.body20

common.ret:                                       ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit45, %bb.lr
  %storemerge = phi i8 [ 1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit45 ], [ 3, %bb.lr ]
  store i8 %storemerge, ptr %i.be, align 1
  ret void

bb.lr:                                            ; preds = %bb.je, %bb.ei, %bb.ik, %bb.is, %bb.jy, %bb.ke, %bb.eu, %bb.jo
  %i.aat = phi ptr [ %i.ns, %bb.eu ], [ %i.uj, %bb.ik ], [ %i.vb, %bb.is ], [ %i.wh, %bb.je ], [ %i.xc, %bb.jo ], [ %i.xz, %bb.jy ], [ %i.yo, %bb.ke ], [ %i.mp, %bb.ei ]
  %.sink.i.ph = phi i8 [ 10, %bb.eu ], [ 4, %bb.ik ], [ 5, %bb.is ], [ 8, %bb.je ], [ 9, %bb.jo ], [ 6, %bb.jy ], [ 7, %bb.ke ], [ 3, %bb.ei ]
  store i8 %.sink.i.ph, ptr %i.aat, align 1, !noalias !361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6258.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  br label %common.ret

bb.ls:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit229.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit162.i, %bb.at
  %i.aau = phi ptr [ %i.nb, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit.i ], [ %i.nj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit229.i ], [ %i.cl, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit162.i ], [ %i.cl, %bb.at ]
  %i.aav = phi ptr [ %i.nc, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit.i ], [ %i.nk, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit229.i ], [ %i.cm, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit162.i ], [ %i.cm, %bb.at ]
  %.sroa.1453.0 = phi ptr [ null, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit.i ], [ %.sroa.031.1.pre-phi.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit229.i ], [ %i.dx, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit162.i ], [ %i.dv, %bb.at ] ; 2 uses
  %.sroa.16.0 = phi ptr [ undef, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit.i ], [ %.sroa.16.1.pre-phi.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit229.i ], [ %i.dy, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit162.i ], [ %i.dw, %bb.at ] ; 3 uses
  store i8 1, ptr %i.aau, align 1, !noalias !361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6258.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvCsc044841uM34_23unbuffered_async_client8converse0EBF_(ptr noundef nonnull align 8 %i.aav)
          to label %bb.lu unwind label %bb.lt

bb.lt:                                            ; preds = %bb.ls
  %i.aaw = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.lu:                                            ; preds = %bb.ls
  %.not.i = icmp eq ptr %.sroa.1453.0, null
  br i1 %.not.i, label %bb.lv, label %bb.md

bb.lv:                                            ; preds = %bb.lu
  %i.aax = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aax)
          to label %bb.lx unwind label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  %i.aay = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aax)
          to label %.body25 unwind label %bb.ly

bb.lx:                                            ; preds = %bb.lv
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aax)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit unwind label %bb.s

bb.ly:                                            ; preds = %bb.lw
  %i.aaz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit: ; preds = %bb.lx
  %i.aba = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aba)
          to label %bb.ma unwind label %bb.lz

bb.lz:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit
  %i.abb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aba)
          to label %.body29 unwind label %bb.mb

bb.ma:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aba)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit31 unwind label %bb.q

bb.mb:                                            ; preds = %bb.lz
  %i.abc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit31: ; preds = %bb.ma
  call void @llvm.experimental.noalias.scope.decl(metadata !554)
  call void @llvm.experimental.noalias.scope.decl(metadata !557)
  %i.abd = load ptr, ptr %1, align 8, !alias.scope !560, !nonnull !6, !noundef !6
  %i.abe = atomicrmw sub ptr %i.abd, i64 1 release, align 8, !noalias !560
  %i.abf = icmp eq i64 %i.abe, 1
  br i1 %i.abf, label %bb.mc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit45

bb.mc:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit31
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) #17
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit45 unwind label %bb.n

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit45: ; preds = %bb.mc, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit31, %bb.mk, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit43
  %.sroa.3.0 = phi ptr [ %.sroa.16.0, %bb.mk ], [ %.sroa.16.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit43 ], [ undef, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit31 ], [ undef, %bb.mc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  %i.abg = getelementptr inbounds nuw i8, ptr %1, i64 1392
  store i8 0, ptr %i.abg, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  %i.abh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.1453.0, ptr %i.abh, align 8
  %i.abi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.3.0, ptr %i.abi, align 8
  store i64 0, ptr %0, align 8
  br label %common.ret

bb.md:                                            ; preds = %bb.lu
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.16.0) ]
  %i.abj = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.abj)
          to label %bb.mf unwind label %bb.me

bb.me:                                            ; preds = %bb.md
  %i.abk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.abj)
          to label %.body25 unwind label %bb.mg

bb.mf:                                            ; preds = %bb.md
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.abj)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit38 unwind label %bb.s

bb.mg:                                            ; preds = %bb.me
  %i.abl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit38: ; preds = %bb.mf
  %i.abm = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.abm)
          to label %bb.mi unwind label %bb.mh

bb.mh:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit38
  %i.abn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.abm)
          to label %.body29 unwind label %bb.mj

bb.mi:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit38
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.abm)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit43 unwind label %bb.q

bb.mj:                                            ; preds = %bb.mh
  %i.abo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit43: ; preds = %bb.mi
  call void @llvm.experimental.noalias.scope.decl(metadata !561)
  call void @llvm.experimental.noalias.scope.decl(metadata !564)
  %i.abp = load ptr, ptr %1, align 8, !alias.scope !567, !nonnull !6, !noundef !6
  %i.abq = atomicrmw sub ptr %i.abp, i64 1 release, align 8, !noalias !567
  %i.abr = icmp eq i64 %i.abq, 1
  br i1 %i.abr, label %bb.mk, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit45

bb.mk:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit43
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) #17
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit45 unwind label %bb.n

.body20:                                          ; preds = %bb.lq, %bb.ba
  %i.abs = phi ptr [ %i.ej, %bb.ba ], [ %i.cj, %bb.lq ]
  %.pn8 = phi { ptr, i32 } [ %.pn135.pn.pn.pn.pn.i, %bb.ba ], [ %i.aas, %bb.lq ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvCsc044841uM34_23unbuffered_async_client8converse0EBF_(ptr noundef nonnull align 8 %i.abs) #16
          to label %bb.t unwind label %bb.ml

bb.ml:                                            ; preds = %bb.p, %bb.mm, %.body20, %bb.t, %.body25
  %i.abt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.mm:                                            ; preds = %.body
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6webpki7anchors13RootCertStoreECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bd) #16
          to label %bb.v unwind label %bb.ml
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvCsc044841uM34_23unbuffered_async_client8recv_tls0B3_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !178, !noundef !6
  switch i8 %i.d, label %default.unreachable22 [
    i8 0, label %bb.b
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.d
  ]

default.unreachable22:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !nonnull !6, !align !204, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !6 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !6, !align !204, !noundef !6 ; 2 uses
  store ptr %i.l, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.m = load i64, ptr %i.l, align 8, !noundef !6 ; 4 uses
  %i.n = icmp ugt i64 %i.m, %i.i
  br i1 %i.n, label %bb.c, label %bb.f, !prof !353

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.m, i64 noundef range(i64 0, -9223372036854775808) %i.i, i64 noundef range(i64 0, -9223372036854775808) %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @277) #20
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.f:                                             ; preds = %bb.b
  %i.p = sub nuw nsw i64 %i.i, %i.m
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.m
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.e, ptr %i.r, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.q, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %i.p, ptr %.sroa.9.0..sroa_idx, align 8
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @278) #20
  unreachable

bb.h:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @278) #20
  unreachable

bb.i:                                             ; preds = %bb.d, %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = invoke { i64, ptr } @_RNvXNtNtNtCskruEhpekJ3V_5tokio2io4util4readINtB2_4ReadNtNtNtNtB8_3net3tcp6stream9TcpStreamENtNtNtCsj6eKBz9Db1c_4core6future6future6Future4pollCsc044841uM34_23unbuffered_async_client(ptr noundef nonnull align 8 %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.k unwind label %bb.j       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.k:                                             ; preds = %bb.i
  %i.v = extractvalue { i64, ptr } %i.t, 0        ; 2 uses
  %i.w = icmp eq i64 %i.v, 2
  br i1 %i.w, label %bb.l, label %bb.m

common.ret:                                       ; preds = %bb.r, %bb.l
  %storemerge = phi i8 [ 1, %bb.r ], [ 3, %bb.l ]
  store i8 %storemerge, ptr %i.c, align 8
  ret void

bb.l:                                             ; preds = %bb.k
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %common.ret

bb.m:                                             ; preds = %bb.k
  %i.x = extractvalue { i64, ptr } %i.t, 1        ; 2 uses
  %i.y = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.z = trunc nuw i64 %i.v to i1
  br i1 %i.z, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aa = invoke { ptr, ptr } @_RNvXsd_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtB7_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorEL_EINtNtBW_7convert4FromNtNtNtBW_2io5error5ErrorE4fromCsc044841uM34_23unbuffered_async_client(ptr noundef nonnull %i.x)
          to label %bb.u unwind label %bb.t       ; 2 uses

bb.o:                                             ; preds = %bb.m
  store i64 %i.y, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.518.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsaKJjC64KgbL_3std2io5stdio7__eprint(ptr noundef nonnull @279, ptr noundef nonnull %i.a)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !6, !align !204, !noundef !6 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !6
  %i.af = add i64 %i.ae, %i.y
  store i64 %i.af, ptr %i.ad, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.u, %bb.q
  %.sroa.05.0 = phi ptr [ %i.aj, %bb.u ], [ null, %bb.q ]
  %.sroa.3.0 = phi ptr [ %i.ak, %bb.u ], [ undef, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.05.0, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.3.0, ptr %i.ah, align 8
  store i64 0, ptr %0, align 8
  br label %common.ret

bb.s:                                             ; preds = %bb.t, %bb.j, %bb.e, %bb.p
  %.pn12.pn = phi { ptr, i32 } [ %i.ab, %bb.p ], [ %i.ai, %bb.t ], [ %i.u, %bb.j ], [ %i.o, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i8 2, ptr %i.c, align 8
  resume { ptr, i32 } %.pn12.pn

bb.t:                                             ; preds = %bb.n
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.u:                                             ; preds = %bb.n
  %i.aj = extractvalue { ptr, ptr } %i.aa, 0      ; 2 uses
  %i.ak = extractvalue { ptr, ptr } %i.aa, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aj) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  br label %bb.r
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvCsc044841uM34_23unbuffered_async_client8send_tls0B3_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !range !178, !noundef !6
  switch i8 %i.c, label %default.unreachable21 [
    i8 0, label %bb.b
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
  ]

default.unreachable21:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = load <2 x ptr>, ptr %1, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !6 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !6, !align !204, !noundef !6 ; 2 uses
  store ptr %i.i, ptr %i.g, align 8
  %i.j = load i64, ptr %i.i, align 8, !noundef !6 ; 3 uses
  %.not.i.i = icmp ugt i64 %i.j, %i.f
  br i1 %.not.i.i, label %bb.c, label %bb.e, !prof !353

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.j, i64 noundef range(i64 0, -9223372036854775808) %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @280) #20
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  store <2 x ptr> %i.d, ptr %i.l, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %i.j, ptr %.sroa.9.0..sroa_idx, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @281) #20
  unreachable

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @281) #20
  unreachable

bb.h:                                             ; preds = %bb.e, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = invoke { i64, ptr } @_RNvXNtNtNtCskruEhpekJ3V_5tokio2io4util9write_allINtB2_8WriteAllNtNtNtNtB8_3net3tcp6stream9TcpStreamENtNtNtCsj6eKBz9Db1c_4core6future6future6Future4pollCsc044841uM34_23unbuffered_async_client(ptr noundef nonnull align 8 %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.j unwind label %bb.i       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %bb.h
  %i.p = extractvalue { i64, ptr } %i.n, 0
  %i.q = trunc nuw i64 %i.p to i1
  br i1 %i.q, label %common.ret, label %bb.k

common.ret:                                       ; preds = %bb.j, %bb.p
  %storemerge18 = phi i64 [ 0, %bb.p ], [ 1, %bb.j ]
  %storemerge = phi i8 [ 1, %bb.p ], [ 3, %bb.j ]
  store i64 %storemerge18, ptr %0, align 8
  store i8 %storemerge, ptr %i.b, align 8
  ret void

bb.k:                                             ; preds = %bb.j
  %i.r = extractvalue { i64, ptr } %i.n, 1        ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = invoke { ptr, ptr } @_RNvXsd_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtB7_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorEL_EINtNtBW_7convert4FromNtNtNtBW_2io5error5ErrorE4fromCsc044841uM34_23unbuffered_async_client(ptr noundef nonnull %i.r)
          to label %bb.s unwind label %bb.r       ; 2 uses

bb.m:                                             ; preds = %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.t, ptr %i.a, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1j_NtCsj6eKBz9Db1c_4core3fmtQjNtB6_7Display3fmtCsc044841uM34_23unbuffered_async_client, ptr %.sroa.517.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsaKJjC64KgbL_3std2io5stdio7__eprint(ptr noundef nonnull @282, ptr noundef nonnull %i.a)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.v = load ptr, ptr %i.t, align 8, !nonnull !6, !align !204, !noundef !6
  store i64 0, ptr %i.v, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.s, %bb.o
  %.sroa.04.0 = phi ptr [ %i.z, %bb.s ], [ null, %bb.o ]
  %.sroa.3.0 = phi ptr [ %i.aa, %bb.s ], [ undef, %bb.o ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.04.0, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.3.0, ptr %i.x, align 8
  br label %common.ret

bb.q:                                             ; preds = %bb.r, %bb.i, %bb.d, %bb.n
  %.pn11.pn = phi { ptr, i32 } [ %i.u, %bb.n ], [ %i.y, %bb.r ], [ %i.o, %bb.i ], [ %i.k, %bb.d ]
  store i8 2, ptr %i.b, align 8
  resume { ptr, i32 } %.pn11.pn

bb.r:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.s:                                             ; preds = %bb.l
  %i.z = extractvalue { ptr, ptr } %i.s, 0        ; 2 uses
  %i.aa = extractvalue { ptr, ptr } %i.s, 1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.z) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  br label %bb.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsj6eKBz9Db1c_4core6future6futureINtNtB8_3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNCNvCsc044841uM34_23unbuffered_async_client4main0EENtB4_6Future4pollB1y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  tail call fastcc void @_RNCNvCsc044841uM34_23unbuffered_async_client4main0B3_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %.val, ptr noalias nofree noundef align 8 dereferenceable(32) %2) #21
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsj6eKBz9Db1c_4core6future6futureINtNtB8_3pin3PinQIBG_INtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNCNvCsc044841uM34_23unbuffered_async_client4main0EEENtB4_6Future4pollB1D_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !6, !align !204, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !568)
  %.val.i = load ptr, ptr %.val, align 8, !alias.scope !568, !noalias !571, !nonnull !6, !noundef !6
  tail call fastcc void @_RNCNvCsc044841uM34_23unbuffered_async_client4main0B3_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %.val.i, ptr noalias nofree noundef align 8 dereferenceable(32) %2) #21, !noalias !568
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsj6eKBz9Db1c_4core6future6futureINtNtB8_3pin3PinQNCNvCsc044841uM34_23unbuffered_async_client4main0ENtB4_6Future4pollB10_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !6, !align !204, !noundef !6
  tail call fastcc void @_RNCNvCsc044841uM34_23unbuffered_async_client4main0B3_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %.val, ptr noalias nofree noundef align 8 dereferenceable(32) %2) #21
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsg_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = load i8, ptr %0, align 8, !range !230, !noundef !6
  switch i8 %i.m, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
    i8 12, label %bb.n
    i8 13, label %bb.o
    i8 14, label %bb.p
    i8 15, label %bb.q
    i8 16, label %bb.r
    i8 17, label %bb.s
    i8 18, label %bb.t
    i8 19, label %bb.u
    i8 20, label %bb.v
    i8 21, label %bb.w
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.o, ptr %i.l, align 8
  %i.p = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @289, i64 noundef 20, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @290, i64 noundef 12, ptr noundef nonnull %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @287, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @291, i64 noundef 8, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @288)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.x

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.r, ptr %i.k, align 8
  %i.s = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @294, i64 noundef 29, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @290, i64 noundef 12, ptr noundef nonnull %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @292, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @291, i64 noundef 8, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @293)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.x

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.t, ptr %i.j, align 8
  %i.u = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @296, i64 noundef 27, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @295)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.x

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.i, align 8
  %i.w = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @298, i64 noundef 14, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @297)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.x

bb.f:                                             ; preds = %bb.a
  %i.x = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @299, i64 noundef 23)
  br label %bb.x

bb.g:                                             ; preds = %bb.a
  %i.y = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @300, i64 noundef 19)
  br label %bb.x

bb.h:                                             ; preds = %bb.a
  %i.z = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @301, i64 noundef 12)
  br label %bb.x

bb.i:                                             ; preds = %bb.a
  %i.aa = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @302, i64 noundef 12)
  br label %bb.x

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %i.h, align 8
  %i.ac = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @304, i64 noundef 16, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @303)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.x

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.ad, ptr %i.g, align 8
  %i.ae = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @306, i64 noundef 14, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @305)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.x

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.af, ptr %i.f, align 8
  %i.ag = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @308, i64 noundef 13, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @307)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.x

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ah, ptr %i.e, align 8
  %i.ai = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @310, i64 noundef 18, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @309)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.x

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aj, ptr %i.d, align 8
  %i.ak = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @312, i64 noundef 25, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @311)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.x

bb.o:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.al, ptr %i.c, align 8
  %i.am = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @314, i64 noundef 7, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @313)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.x

bb.p:                                             ; preds = %bb.a
  %i.an = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @315, i64 noundef 22)
  br label %bb.x

bb.q:                                             ; preds = %bb.a
  %i.ao = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @316, i64 noundef 22)
  br label %bb.x

bb.r:                                             ; preds = %bb.a
  %i.ap = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @317, i64 noundef 20)
  br label %bb.x

bb.s:                                             ; preds = %bb.a
  %i.aq = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @318, i64 noundef 23)
  br label %bb.x

bb.t:                                             ; preds = %bb.a
  %i.ar = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @319, i64 noundef 21)
  br label %bb.x

bb.u:                                             ; preds = %bb.a
  %i.as = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @320, i64 noundef 18)
  br label %bb.x

bb.v:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.at, ptr %i.b, align 8
  %i.au = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @322, i64 noundef 16, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @321)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.x

bb.w:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.a, align 8
  %i.aw = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @324, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @323)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.p, %bb.b ], [ %i.s, %bb.c ], [ %i.u, %bb.d ], [ %i.w, %bb.e ], [ %i.x, %bb.f ], [ %i.y, %bb.g ], [ %i.z, %bb.h ], [ %i.aa, %bb.i ], [ %i.ac, %bb.j ], [ %i.ae, %bb.k ], [ %i.ag, %bb.l ], [ %i.ai, %bb.m ], [ %i.ak, %bb.n ], [ %i.am, %bb.o ], [ %i.an, %bb.p ], [ %i.ao, %bb.q ], [ %i.ap, %bb.r ], [ %i.aq, %bb.s ], [ %i.ar, %bb.t ], [ %i.as, %bb.u ], [ %i.au, %bb.v ], [ %i.aw, %bb.w ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvNtNtCsj6eKBz9Db1c_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsc044841uM34_23unbuffered_async_client(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0
end_hunk_1
begin_hunk_2_@llvm.experimental.noalias.scope.decl
!336 = !{!337}
!337 = distinct !{!337, !338, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12scheduled_io11ScheduledIoENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client: argument 0"}
!338 = distinct !{!338, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12scheduled_io11ScheduledIoENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client"}
!339 = !{!337, !334}
!340 = !{!341}
!341 = distinct !{!341, !342, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12scheduled_io11ScheduledIoEECsc044841uM34_23unbuffered_async_client: argument 0"}
!342 = distinct !{!342, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12scheduled_io11ScheduledIoEECsc044841uM34_23unbuffered_async_client"}
!343 = !{!344}
!344 = distinct !{!344, !345, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12scheduled_io11ScheduledIoENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client: argument 0"}
!345 = distinct !{!345, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12scheduled_io11ScheduledIoENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client"}
!346 = !{!344, !341}
!347 = !{!348}
!348 = distinct !{!348, !349, !"_RNvMse_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigE3newCsc044841uM34_23unbuffered_async_client: argument 0"}
!349 = distinct !{!349, !"_RNvMse_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigE3newCsc044841uM34_23unbuffered_async_client"}
!350 = !{!351, !348}
!351 = distinct !{!351, !352, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEE3newCsc044841uM34_23unbuffered_async_client: argument 0"}
!352 = distinct !{!352, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEE3newCsc044841uM34_23unbuffered_async_client"}
!353 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!354 = !{!355}
!355 = distinct !{!355, !356, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client: argument 0"}
!356 = distinct !{!356, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client"}
!357 = !{!358}
!358 = distinct !{!358, !359, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client: argument 0"}
!359 = distinct !{!359, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client"}
!360 = !{!358, !355}
!361 = !{!362, !364}
!362 = distinct !{!362, !363, !"_RNCNvCsc044841uM34_23unbuffered_async_client8converse0B3_: argument 0"}
!363 = distinct !{!363, !"_RNCNvCsc044841uM34_23unbuffered_async_client8converse0B3_"}
!364 = distinct !{!364, !363, !"_RNCNvCsc044841uM34_23unbuffered_async_client8converse0B3_: argument 1"}
!365 = !{!362}
!366 = !{!367}
!367 = distinct !{!367, !368, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client: argument 0"}
!368 = distinct !{!368, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client"}
!369 = !{!370}
!370 = distinct !{!370, !371, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client: argument 0"}
!371 = distinct !{!371, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client"}
!372 = !{!370, !367}
!373 = !{!370, !367, !362}
!374 = !{!375}
!375 = distinct !{!375, !376, !"_RNvXsp_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameNtBM_19InvalidDnsNameErrorENtNtNtB7_3ops9try_trait3Try6branchCsc044841uM34_23unbuffered_async_client: argument 1"}
!376 = distinct !{!376, !"_RNvXsp_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameNtBM_19InvalidDnsNameErrorENtNtNtB7_3ops9try_trait3Try6branchCsc044841uM34_23unbuffered_async_client"}
!377 = !{!378, !362, !364}
!378 = distinct !{!378, !376, !"_RNvXsp_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameNtBM_19InvalidDnsNameErrorENtNtNtB7_3ops9try_trait3Try6branchCsc044841uM34_23unbuffered_async_client: argument 0"}
!379 = !{i64 0, i64 3}
!380 = !{!381}
!381 = distinct !{!381, !382, !"_RNvXsp_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn26UnbufferedClientConnectionNtNtBQ_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsc044841uM34_23unbuffered_async_client: argument 1"}
!382 = distinct !{!382, !"_RNvXsp_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn26UnbufferedClientConnectionNtNtBQ_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsc044841uM34_23unbuffered_async_client"}
!383 = !{!384, !362, !364}
!384 = distinct !{!384, !382, !"_RNvXsp_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn26UnbufferedClientConnectionNtNtBQ_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsc044841uM34_23unbuffered_async_client: argument 0"}
!385 = !{!386, !362, !364}
!386 = distinct !{!386, !387, !"_RNvXsq_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultuINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB7_5error5ErrorEL_EEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEE13from_residualCsc044841uM34_23unbuffered_async_client: argument 0"}
!387 = distinct !{!387, !"_RNvXsq_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultuINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB7_5error5ErrorEL_EEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEE13from_residualCsc044841uM34_23unbuffered_async_client"}
!388 = !{!389}
!389 = distinct !{!389, !390, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client: argument 0"}
!390 = distinct !{!390, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client"}
!391 = !{!392}
!392 = distinct !{!392, !393, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client: argument 0"}
!393 = distinct !{!393, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client"}
!394 = !{!392, !389}
!395 = !{!392, !389, !362}
!396 = !{!397}
!397 = distinct !{!397, !398, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client: argument 0"}
!398 = distinct !{!398, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client"}
!399 = !{!400}
!400 = distinct !{!400, !401, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client: argument 0"}
!401 = distinct !{!401, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client"}
!402 = !{!400, !397}
!403 = !{!400, !397, !362}
!404 = !{!405, !407, !362, !364}
!405 = distinct !{!405, !406, !"_RNCINvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtB5_9TcpStream7connectNtNtCs4wP2HXfJTCR_5alloc6string6StringE0Csc044841uM34_23unbuffered_async_client: argument 0"}
!406 = distinct !{!406, !"_RNCINvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtB5_9TcpStream7connectNtNtCs4wP2HXfJTCR_5alloc6string6StringE0Csc044841uM34_23unbuffered_async_client"}
!407 = distinct !{!407, !406, !"_RNCINvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtB5_9TcpStream7connectNtNtCs4wP2HXfJTCR_5alloc6string6StringE0Csc044841uM34_23unbuffered_async_client: argument 1"}
!408 = !{!405, !362}
!409 = !{!410, !412}
!410 = distinct !{!410, !411, !"_RNvXNtNtCsj6eKBz9Db1c_4core6future11into_futureNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed10MaybeReadyNtB2_10IntoFuture11into_futureCsc044841uM34_23unbuffered_async_client: argument 0"}
!411 = distinct !{!411, !"_RNvXNtNtCsj6eKBz9Db1c_4core6future11into_futureNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed10MaybeReadyNtB2_10IntoFuture11into_futureCsc044841uM34_23unbuffered_async_client"}
!412 = distinct !{!412, !411, !"_RNvXNtNtCsj6eKBz9Db1c_4core6future11into_futureNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed10MaybeReadyNtB2_10IntoFuture11into_futureCsc044841uM34_23unbuffered_async_client: argument 1"}
!413 = !{!414, !416}
!414 = distinct !{!414, !415, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed5StateECsc044841uM34_23unbuffered_async_client: argument 0"}
!415 = distinct !{!415, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed5StateECsc044841uM34_23unbuffered_async_client"}
!416 = distinct !{!416, !417, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed10MaybeReadyECsc044841uM34_23unbuffered_async_client: argument 0"}
!417 = distinct !{!417, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed10MaybeReadyECsc044841uM34_23unbuffered_async_client"}
!418 = !{i32 -1, i32 3}
!419 = !{!420, !422}
!420 = distinct !{!420, !421, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed5StateECsc044841uM34_23unbuffered_async_client: argument 0"}
!421 = distinct !{!421, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed5StateECsc044841uM34_23unbuffered_async_client"}
!422 = distinct !{!422, !423, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed10MaybeReadyECsc044841uM34_23unbuffered_async_client: argument 0"}
!423 = distinct !{!423, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed10MaybeReadyECsc044841uM34_23unbuffered_async_client"}
!424 = !{!425, !427, !405, !407, !362, !364}
!425 = distinct !{!425, !426, !"_RNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtB4_9TcpStream12connect_addr0Csc044841uM34_23unbuffered_async_client: argument 0"}
!426 = distinct !{!426, !"_RNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtB4_9TcpStream12connect_addr0Csc044841uM34_23unbuffered_async_client"}
!427 = distinct !{!427, !426, !"_RNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtB4_9TcpStream12connect_addr0Csc044841uM34_23unbuffered_async_client: argument 1"}
!428 = !{!425, !405, !362}
!429 = !{!430}
!430 = distinct !{!430, !431, !"_RNvXsp_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamNtNtNtB7_2io5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsc044841uM34_23unbuffered_async_client: argument 1"}
!431 = distinct !{!431, !"_RNvXsp_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamNtNtNtB7_2io5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsc044841uM34_23unbuffered_async_client"}
!432 = !{!433, !425, !427, !405, !407, !362, !364}
!433 = distinct !{!433, !431, !"_RNvXsp_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamNtNtNtB7_2io5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsc044841uM34_23unbuffered_async_client: argument 0"}
!434 = !{!427, !405, !407, !362, !364}
!435 = !{!436, !438, !425, !427, !405, !407, !362, !364}
!436 = distinct !{!436, !437, !"_RNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtB4_9TcpStream11connect_mio0Csc044841uM34_23unbuffered_async_client: argument 0"}
!437 = distinct !{!437, !"_RNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtB4_9TcpStream11connect_mio0Csc044841uM34_23unbuffered_async_client"}
!438 = distinct !{!438, !437, !"_RNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtB4_9TcpStream11connect_mio0Csc044841uM34_23unbuffered_async_client: argument 1"}
!439 = !{!436, !438, !425, !405, !362}
!440 = !{!441}
!441 = distinct !{!441, !442, !"_RNvXsp_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamNtNtNtB7_2io5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsc044841uM34_23unbuffered_async_client: argument 0"}
!442 = distinct !{!442, !"_RNvXsp_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamNtNtNtB7_2io5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsc044841uM34_23unbuffered_async_client"}
!443 = !{!444}
!444 = distinct !{!444, !442, !"_RNvXsp_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamNtNtNtB7_2io5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsc044841uM34_23unbuffered_async_client: argument 1"}
!445 = !{!441, !436, !438, !425, !427, !405, !407, !362, !364}
!446 = !{!444, !441}
!447 = !{!436, !425, !405, !362}
!448 = !{i8 -1, i8 3}
!449 = !{!450, !452}
!450 = distinct !{!450, !451, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client: argument 0"}
!451 = distinct !{!451, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client"}
!452 = distinct !{!452, !453, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client: argument 0"}
!453 = distinct !{!453, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client"}
!454 = !{!455}
!455 = distinct !{!455, !456, !"_RINvNtNtNtCsj6eKBz9Db1c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsc044841uM34_23unbuffered_async_client: argument 0"}
!456 = distinct !{!456, !"_RINvNtNtNtCsj6eKBz9Db1c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsc044841uM34_23unbuffered_async_client"}
!457 = !{!458}
!458 = distinct !{!458, !459, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client: argument 0"}
!459 = distinct !{!459, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client"}
!460 = !{!461}
!461 = distinct !{!461, !462, !"_RINvNtNtNtCsj6eKBz9Db1c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsc044841uM34_23unbuffered_async_client: argument 0"}
!462 = distinct !{!462, !"_RINvNtNtNtCsj6eKBz9Db1c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsc044841uM34_23unbuffered_async_client"}
!463 = !{!464}
!464 = distinct !{!464, !465, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client: argument 0"}
!465 = distinct !{!465, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client"}
!466 = !{i16 0, i16 3}
!467 = !{!468}
!468 = distinct !{!468, !469, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client: argument 0"}
!469 = distinct !{!469, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client"}
!470 = !{!407, !362, !364}
!471 = !{!472}
!472 = distinct !{!472, !473, !"_RINvMNtCsj6eKBz9Db1c_4core5sliceSh11copy_withinINtNtNtB5_3ops5range5RangejEECsc044841uM34_23unbuffered_async_client: argument 0"}
!473 = distinct !{!473, !"_RINvMNtCsj6eKBz9Db1c_4core5sliceSh11copy_withinINtNtNtB5_3ops5range5RangejEECsc044841uM34_23unbuffered_async_client"}
!474 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!475 = !{!476, !478, !362, !364}
!476 = distinct !{!476, !477, !"_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered15ConnectionStateNtNtNtBO_6client11client_conn20ClientConnectionDataENtNtBO_5error5ErrorE6unwrapCsc044841uM34_23unbuffered_async_client: argument 0"}
!477 = distinct !{!477, !"_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered15ConnectionStateNtNtNtBO_6client11client_conn20ClientConnectionDataENtNtBO_5error5ErrorE6unwrapCsc044841uM34_23unbuffered_async_client"}
!478 = distinct !{!478, !477, !"_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered15ConnectionStateNtNtNtBO_6client11client_conn20ClientConnectionDataENtNtBO_5error5ErrorE6unwrapCsc044841uM34_23unbuffered_async_client: argument 1"}
!479 = !{!476, !362, !364}
!480 = !{!476, !478, !362}
!481 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 1}
!482 = !{i8 -2, i8 22}
!483 = !{!484, !486}
!484 = distinct !{!484, !485, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsc044841uM34_23unbuffered_async_client: argument 0"}
!485 = distinct !{!485, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsc044841uM34_23unbuffered_async_client"}
!486 = distinct !{!486, !487, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client: argument 0"}
!487 = distinct !{!487, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client"}
!488 = !{!489, !362, !364}
!489 = distinct !{!489, !490, !"_RNvXsq_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultuINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB7_5error5ErrorEL_EEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEE13from_residualCsc044841uM34_23unbuffered_async_client: argument 0"}
!490 = distinct !{!490, !"_RNvXsq_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultuINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB7_5error5ErrorEL_EEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEE13from_residualCsc044841uM34_23unbuffered_async_client"}
!491 = !{!492}
!492 = distinct !{!492, !493, !"_RNvXsp_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultReNtNtNtB7_3str5error9Utf8ErrorENtNtNtB7_3ops9try_trait3Try6branchCsc044841uM34_23unbuffered_async_client: argument 0"}
!493 = distinct !{!493, !"_RNvXsp_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultReNtNtNtB7_3str5error9Utf8ErrorENtNtNtB7_3ops9try_trait3Try6branchCsc044841uM34_23unbuffered_async_client"}
!494 = !{!495}
!495 = distinct !{!495, !493, !"_RNvXsp_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultReNtNtNtB7_3str5error9Utf8ErrorENtNtNtB7_3ops9try_trait3Try6branchCsc044841uM34_23unbuffered_async_client: argument 1"}
!496 = !{!492, !362, !364}
!497 = !{!492, !495}
!498 = !{!499, !362, !364}
!499 = distinct !{!499, !500, !"_RNvXsq_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultuINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB7_5error5ErrorEL_EEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtNtB7_3str5error9Utf8ErrorEE13from_residualCsc044841uM34_23unbuffered_async_client: argument 0"}
!500 = distinct !{!500, !"_RNvXsq_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultuINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB7_5error5ErrorEL_EEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtNtB7_3str5error9Utf8ErrorEE13from_residualCsc044841uM34_23unbuffered_async_client"}
!501 = !{!502}
!502 = distinct !{!502, !503, !"_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr6memchr: argument 0"}
!503 = distinct !{!503, !"_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr6memchr"}
!504 = !{!505, !507, !508, !510, !512, !514, !362}
!505 = distinct !{!505, !506, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 0"}
!506 = distinct !{!506, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match"}
!507 = distinct !{!507, !506, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 1"}
!508 = distinct !{!508, !509, !"_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE14next_inclusiveCsc044841uM34_23unbuffered_async_client: argument 0"}
!509 = distinct !{!509, !"_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE14next_inclusiveCsc044841uM34_23unbuffered_async_client"}
!510 = distinct !{!510, !511, !"_RNvXsH_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_14SplitInclusivecENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsc044841uM34_23unbuffered_async_client: argument 0"}
!511 = distinct !{!511, !"_RNvXsH_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_14SplitInclusivecENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsc044841uM34_23unbuffered_async_client"}
!512 = distinct !{!512, !513, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter14SplitInclusivecENtB11_8LinesMapENtNtNtB9_6traits8iterator8Iterator4nextCsc044841uM34_23unbuffered_async_client: argument 0"}
!513 = distinct !{!513, !"_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter14SplitInclusivecENtB11_8LinesMapENtNtNtB9_6traits8iterator8Iterator4nextCsc044841uM34_23unbuffered_async_client"}
!514 = distinct !{!514, !515, !"_RNvXss_NtNtCsj6eKBz9Db1c_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next: argument 0"}
!515 = distinct !{!515, !"_RNvXss_NtNtCsj6eKBz9Db1c_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next"}
!516 = !{!517, !519, !512, !514, !362, !364}
!517 = distinct !{!517, !518, !"_RNvXs3_NtCsj6eKBz9Db1c_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call: argument 0"}
!518 = distinct !{!518, !"_RNvXs3_NtCsj6eKBz9Db1c_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call"}
!519 = distinct !{!519, !520, !"_RNvXs4_NtCsj6eKBz9Db1c_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function5FnMutTReEE8call_mut: argument 0"}
!520 = distinct !{!520, !"_RNvXs4_NtCsj6eKBz9Db1c_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function5FnMutTReEE8call_mut"}
!521 = !{!522, !524}
!522 = distinct !{!522, !523, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsc044841uM34_23unbuffered_async_client: argument 0"}
!523 = distinct !{!523, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsc044841uM34_23unbuffered_async_client"}
!524 = distinct !{!524, !525, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client: argument 0"}
!525 = distinct !{!525, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client"}
!526 = !{!527}
!527 = distinct !{!527, !528, !"_RNvXsp_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultjINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB7_5error5ErrorEL_EENtNtNtB7_3ops9try_trait3Try6branchCsc044841uM34_23unbuffered_async_client: argument 1"}
!528 = distinct !{!528, !"_RNvXsp_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultjINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB7_5error5ErrorEL_EENtNtNtB7_3ops9try_trait3Try6branchCsc044841uM34_23unbuffered_async_client"}
!529 = !{!530, !362, !364}
!530 = distinct !{!530, !528, !"_RNvXsp_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultjINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB7_5error5ErrorEL_EENtNtNtB7_3ops9try_trait3Try6branchCsc044841uM34_23unbuffered_async_client: argument 0"}
!531 = !{!532, !534}
!532 = distinct !{!532, !533, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsc044841uM34_23unbuffered_async_client: argument 0"}
!533 = distinct !{!533, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsc044841uM34_23unbuffered_async_client"}
!534 = distinct !{!534, !535, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered13EncodeTlsDataNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client: argument 0"}
!535 = distinct !{!535, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered13EncodeTlsDataNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client"}
!536 = !{!537}
!537 = distinct !{!537, !538, !"_RNvMsa_NtNtCs7ZUl82OSlxp_6rustls4conn10unbufferedINtB5_15TransmitTlsDataNtNtNtB9_6client11client_conn20ClientConnectionDataE4doneCsc044841uM34_23unbuffered_async_client: argument 0"}
!538 = distinct !{!538, !"_RNvMsa_NtNtCs7ZUl82OSlxp_6rustls4conn10unbufferedINtB5_15TransmitTlsDataNtNtNtB9_6client11client_conn20ClientConnectionDataE4doneCsc044841uM34_23unbuffered_async_client"}
!539 = !{!540}
!540 = distinct !{!540, !541, !"_RNvXsp_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultjINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB7_5error5ErrorEL_EENtNtNtB7_3ops9try_trait3Try6branchCsc044841uM34_23unbuffered_async_client: argument 1"}
!541 = distinct !{!541, !"_RNvXsp_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultjINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB7_5error5ErrorEL_EENtNtNtB7_3ops9try_trait3Try6branchCsc044841uM34_23unbuffered_async_client"}
!542 = !{!543, !362, !364}
!543 = distinct !{!543, !541, !"_RNvXsp_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultjINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB7_5error5ErrorEL_EENtNtNtB7_3ops9try_trait3Try6branchCsc044841uM34_23unbuffered_async_client: argument 0"}
!544 = !{!545, !547}
!545 = distinct !{!545, !546, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client: argument 0"}
!546 = distinct !{!546, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client"}
!547 = distinct !{!547, !548, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client: argument 0"}
!548 = distinct !{!548, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client"}
!549 = !{!550, !552}
!550 = distinct !{!550, !551, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client: argument 0"}
!551 = distinct !{!551, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client"}
!552 = distinct !{!552, !553, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client: argument 0"}
!553 = distinct !{!553, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client"}
!554 = !{!555}
!555 = distinct !{!555, !556, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client: argument 0"}
!556 = distinct !{!556, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client"}
!557 = !{!558}
!558 = distinct !{!558, !559, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client: argument 0"}
!559 = distinct !{!559, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client"}
!560 = !{!558, !555}
!561 = !{!562}
!562 = distinct !{!562, !563, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client: argument 0"}
!563 = distinct !{!563, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client"}
!564 = !{!565}
!565 = distinct !{!565, !566, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client: argument 0"}
!566 = distinct !{!566, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client"}
!567 = !{!565, !562}
!568 = !{!569}
!569 = distinct !{!569, !570, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core6future6futureINtNtB8_3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNCNvCsc044841uM34_23unbuffered_async_client4main0EENtB4_6Future4pollB1y_: argument 1"}
!570 = distinct !{!570, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core6future6futureINtNtB8_3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNCNvCsc044841uM34_23unbuffered_async_client4main0EENtB4_6Future4pollB1y_"}
!571 = !{!572, !573}
!572 = distinct !{!572, !570, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core6future6futureINtNtB8_3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNCNvCsc044841uM34_23unbuffered_async_client4main0EENtB4_6Future4pollB1y_: argument 0"}
!573 = distinct !{!573, !570, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core6future6futureINtNtB8_3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNCNvCsc044841uM34_23unbuffered_async_client4main0EENtB4_6Future4pollB1y_: argument 2"}
end_hunk_2

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.158?download=true
inline.NumInlined: 435
inline.NumDeleted: 234
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelECsl8OoimOLbh_6qdrant:bb.a
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc7bounded6SenderINtNtNtCs5TwP8AC98I6_5tower6buffer7message7MessageINtNtCs577yCKf7gy3_4http7request7RequestNtNtCsgOCJwUSa4vG_5tonic4body4BodyEINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB2I_8response8ResponseB3h_EIB47_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB6B_4SyncEL_EEB6z_EL_EEEEEECsl8OoimOLbh_6qdrant.exit.i.i unwind label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.h, %bb.d, %bb.c
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.l, %bb.h ], [ %i.d, %bb.d ], [ %i.d, %bb.c ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5o4a4rbYuNS_10tokio_util4sync4mpsc5StateINtNtNtCs5TwP8AC98I6_5tower6buffer7message7MessageINtNtCs577yCKf7gy3_4http7request7RequestNtNtCsgOCJwUSa4vG_5tonic4body4BodyEINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB2h_8response8ResponseB2Q_EIB3G_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB6a_4SyncEL_EEB68_EL_EEEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) #23
          to label %bb.i unwind label %bb.q

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc7bounded6SenderINtNtNtCs5TwP8AC98I6_5tower6buffer7message7MessageINtNtCs577yCKf7gy3_4http7request7RequestNtNtCsgOCJwUSa4vG_5tonic4body4BodyEINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB2I_8response8ResponseB3h_EIB47_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB6B_4SyncEL_EEB6z_EL_EEEEEECsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.f, %bb.e, %bb.a
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5o4a4rbYuNS_10tokio_util4sync4mpsc5StateINtNtNtCs5TwP8AC98I6_5tower6buffer7message7MessageINtNtCs577yCKf7gy3_4http7request7RequestNtNtCsgOCJwUSa4vG_5tonic4body4BodyEINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB2h_8response8ResponseB2Q_EIB3G_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB6a_4SyncEL_EEB68_EL_EEEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %bb.k unwind label %bb.j

bb.i:                                             ; preds = %bb.j, %.body.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.o, %bb.j ], [ %eh.lpad-body.i.i, %.body.i.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i = load ptr, ptr %i.m, align 8, !alias.scope !835
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val4.i.i = load ptr, ptr %i.n, align 8, !alias.scope !835, !nonnull !5, !align !8, !noundef !5
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5o4a4rbYuNS_10tokio_util4sync4mpsc16PollSenderFutureINtNtNtCs5TwP8AC98I6_5tower6buffer7message7MessageINtNtCs577yCKf7gy3_4http7request7RequestNtNtCsgOCJwUSa4vG_5tonic4body4BodyEINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB2t_8response8ResponseB32_EIB3S_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB6m_4SyncEL_EEB6k_EL_EEEEECsl8OoimOLbh_6qdrant(ptr %.val3.i.i, ptr nonnull %.val4.i.i) #23
          to label %.body.i unwind label %bb.q

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc7bounded6SenderINtNtNtCs5TwP8AC98I6_5tower6buffer7message7MessageINtNtCs577yCKf7gy3_4http7request7RequestNtNtCsgOCJwUSa4vG_5tonic4body4BodyEINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB2I_8response8ResponseB3h_EIB47_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB6B_4SyncEL_EEB6z_EL_EEEEEECsl8OoimOLbh_6qdrant.exit.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc7bounded6SenderINtNtNtCs5TwP8AC98I6_5tower6buffer7message7MessageINtNtCs577yCKf7gy3_4http7request7RequestNtNtCsgOCJwUSa4vG_5tonic4body4BodyEINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB2I_8response8ResponseB3h_EIB47_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB6B_4SyncEL_EEB6z_EL_EEEEEECsl8OoimOLbh_6qdrant.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i = load ptr, ptr %i.p, align 8, !alias.scope !835 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i.i = load ptr, ptr %i.q, align 8, !alias.scope !835, !nonnull !5, !align !8, !noundef !5 ; 5 uses
  %i.r = load ptr, ptr %.val2.i.i, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.r(ptr noundef nonnull %.val.i.i)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.s = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !9, !invariant.load !5 ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5o4a4rbYuNS_10tokio_util4sync4mpsc10PollSenderINtNtNtCs5TwP8AC98I6_5tower6buffer7message7MessageINtNtCs577yCKf7gy3_4http7request7RequestNtNtCsgOCJwUSa4vG_5tonic4body4BodyEINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB2n_8response8ResponseB2W_EIB3M_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB6g_4SyncEL_EEB6e_EL_EEEEECsl8OoimOLbh_6qdrant.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.v = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 16
  %i.w = load i64, ptr %i.v, align 8, !range !10, !invariant.load !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.t, i64 noundef range(i64 1, 536870913) %i.w) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5o4a4rbYuNS_10tokio_util4sync4mpsc10PollSenderINtNtNtCs5TwP8AC98I6_5tower6buffer7message7MessageINtNtCs577yCKf7gy3_4http7request7RequestNtNtCsgOCJwUSa4vG_5tonic4body4BodyEINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB2n_8response8ResponseB2W_EIB3M_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB6g_4SyncEL_EEB6e_EL_EEEEECsl8OoimOLbh_6qdrant.exit.i

bb.o:                                             ; preds = %bb.l
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !9, !invariant.load !5 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.body.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ab = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !10, !invariant.load !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.z, i64 noundef range(i64 1, 536870913) %i.ac) #21
  br label %.body.i

bb.q:                                             ; preds = %bb.i, %.body.i.i
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

.body.i:                                          ; preds = %bb.p, %bb.o, %bb.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %.pn.i.i, %bb.i ], [ %i.x, %bb.o ], [ %i.x, %bb.p ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !836)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !837)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !838)
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !839, !nonnull !5, !noundef !5
  %i.ag = atomicrmw sub ptr %i.af, i64 1 release, align 8, !noalias !840
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5TwP8AC98I6_5tower6buffer6worker6HandleECsl8OoimOLbh_6qdrant.exit.i

bb.r:                                             ; preds = %.body.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCs5TwP8AC98I6_5tower6buffer5error12ServiceErrorEEE9drop_slowCsgOCJwUSa4vG_5tonic(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ae) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5TwP8AC98I6_5tower6buffer6worker6HandleECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.t

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5o4a4rbYuNS_10tokio_util4sync4mpsc10PollSenderINtNtNtCs5TwP8AC98I6_5tower6buffer7message7MessageINtNtCs577yCKf7gy3_4http7request7RequestNtNtCsgOCJwUSa4vG_5tonic4body4BodyEINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB2n_8response8ResponseB2W_EIB3M_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB6g_4SyncEL_EEB6e_EL_EEEEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.n, %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !841)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !842)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !843)
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !844, !nonnull !5, !noundef !5
  %i.ak = atomicrmw sub ptr %i.aj, i64 1 release, align 8, !noalias !845
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5TwP8AC98I6_5tower6buffer7service6BufferINtNtCs577yCKf7gy3_4http7request7RequestNtNtCsgOCJwUSa4vG_5tonic4body4BodyEINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB1t_8response8ResponseB22_EIB2S_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB5m_4SyncEL_EEB5k_EL_EEEECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5o4a4rbYuNS_10tokio_util4sync4mpsc10PollSenderINtNtNtCs5TwP8AC98I6_5tower6buffer7message7MessageINtNtCs577yCKf7gy3_4http7request7RequestNtNtCsgOCJwUSa4vG_5tonic4body4BodyEINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB2n_8response8ResponseB2W_EIB3M_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB6g_4SyncEL_EEB6e_EL_EEEEECsl8OoimOLbh_6qdrant.exit.i
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCs5TwP8AC98I6_5tower6buffer5error12ServiceErrorEEE9drop_slowCsgOCJwUSa4vG_5tonic(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ai) #25
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5TwP8AC98I6_5tower6buffer7service6BufferINtNtCs577yCKf7gy3_4http7request7RequestNtNtCsgOCJwUSa4vG_5tonic4body4BodyEINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB1t_8response8ResponseB22_EIB2S_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB5m_4SyncEL_EEB5k_EL_EEEECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.r
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5TwP8AC98I6_5tower6buffer6worker6HandleECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.r, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5TwP8AC98I6_5tower6buffer7service6BufferINtNtCs577yCKf7gy3_4http7request7RequestNtNtCsgOCJwUSa4vG_5tonic4body4BodyEINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB1t_8response8ResponseB22_EIB2S_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB5m_4SyncEL_EEB5k_EL_EEEECsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5o4a4rbYuNS_10tokio_util4sync4mpsc10PollSenderINtNtNtCs5TwP8AC98I6_5tower6buffer7message7MessageINtNtCs577yCKf7gy3_4http7request7RequestNtNtCsgOCJwUSa4vG_5tonic4body4BodyEINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB2n_8response8ResponseB2W_EIB3M_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB6g_4SyncEL_EEB6e_EL_EEEEECsl8OoimOLbh_6qdrant.exit.i, %bb.s
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry14CollectionNameEBJ_(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsl8OoimOLbh_6qdrant.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference8api_keys14InferenceTokenEBJ_(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !12, !alias.scope !848, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsl8OoimOLbh_6qdrant.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXsw_NtNtNtCsdS7EUc5kOLy_4rand5distr7uniform3intINtB6_10UniformIntyENtB8_14UniformSampler13sample_singleNtNtNtBc_4rngs6thread9ThreadRngyyECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, i64 noundef %1, i64 noundef %2, ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ult i64 %1, %2
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.b, align 1
  br label %_RINvXsw_NtNtNtCsdS7EUc5kOLy_4rand5distr7uniform3intINtB6_10UniformIntyENtB8_14UniformSampler23sample_single_inclusiveNtNtNtBc_4rngs6thread9ThreadRngyyECsl8OoimOLbh_6qdrant.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !865)
  %i.c = sub nuw i64 %2, %1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 9 uses
  %i.e = load i32, ptr %i.d, align 4, !noalias !865, !noundef !5 ; 4 uses
  %i.f = icmp ult i32 %i.e, 63
  br i1 %i.f, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 268
  %i.h = load i32, ptr %i.g, align 4, !alias.scope !866, !noalias !867, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 272 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0.val, i64 320
  %i.k = load i64, ptr %i.j, align 4, !alias.scope !868, !noalias !869
  %i.l = icmp ugt i64 %i.k, 1023
  br i1 %i.l, label %bb.e, label %_RNvXNtNtCsdS7EUc5kOLy_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs8EjlWUFl8r5_9rand_core5block9Generator8generate.exit.i.i.i.i9.i, !prof !7

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvMs_NtNtCsdS7EUc5kOLy_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.i) #25, !noalias !869
  br label %_RNvXNtNtCsdS7EUc5kOLy_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs8EjlWUFl8r5_9rand_core5block9Generator8generate.exit.i.i.i.i9.i

_RNvXNtNtCsdS7EUc5kOLy_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs8EjlWUFl8r5_9rand_core5block9Generator8generate.exit.i.i.i.i9.i: ; preds = %bb.e, %bb.d
  tail call void @_RNvXs_NtCs1XrQGnCAlpr_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCs8EjlWUFl8r5_9rand_core5block9Generator8generateCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.i, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.d), !noalias !867
  %i.m = load i32, ptr %i.d, align 4, !alias.scope !866, !noalias !867, !noundef !5 ; 2 uses
  %.not.i.i.i.i10.i = icmp eq i32 %i.e, 63
  br i1 %.not.i.i.i.i10.i, label %_RINvYNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsl8OoimOLbh_6qdrant.exit14.i, label %bb.f

bb.f:                                             ; preds = %_RNvXNtNtCsdS7EUc5kOLy_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs8EjlWUFl8r5_9rand_core5block9Generator8generate.exit.i.i.i.i9.i
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val, i64 20
  %i.o = load i32, ptr %i.n, align 4, !alias.scope !866, !noalias !867, !noundef !5
  br label %_RINvYNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsl8OoimOLbh_6qdrant.exit14.i

bb.g:                                             ; preds = %bb.c
  %i.p = zext nneg i32 %i.e to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.p ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !alias.scope !866, !noalias !867, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.t = load i32, ptr %i.s, align 4, !alias.scope !866, !noalias !867, !noundef !5
  %i.u = add nuw nsw i32 %i.e, 2
  br label %_RINvYNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsl8OoimOLbh_6qdrant.exit14.i

_RINvYNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsl8OoimOLbh_6qdrant.exit14.i: ; preds = %bb.g, %bb.f, %_RNvXNtNtCsdS7EUc5kOLy_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs8EjlWUFl8r5_9rand_core5block9Generator8generate.exit.i.i.i.i9.i
  %.sroa.0.018.i.i.i.i11.i = phi i32 [ %i.u, %bb.g ], [ 1, %_RNvXNtNtCsdS7EUc5kOLy_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs8EjlWUFl8r5_9rand_core5block9Generator8generate.exit.i.i.i.i9.i ], [ 2, %bb.f ] ; 5 uses
  %.sroa.02.017.i.i.i.i12.i = phi i32 [ %i.r, %bb.g ], [ %i.h, %_RNvXNtNtCsdS7EUc5kOLy_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs8EjlWUFl8r5_9rand_core5block9Generator8generate.exit.i.i.i.i9.i ], [ %i.m, %bb.f ]
  %.sroa.03.016.i.i.i.i13.i = phi i32 [ %i.t, %bb.g ], [ %i.m, %_RNvXNtNtCsdS7EUc5kOLy_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs8EjlWUFl8r5_9rand_core5block9Generator8generate.exit.i.i.i.i9.i ], [ %i.o, %bb.f ]
  store i32 %.sroa.0.018.i.i.i.i11.i, ptr %i.d, align 4, !alias.scope !866, !noalias !867
  %i.v = zext i32 %.sroa.03.016.i.i.i.i13.i to i64
  %i.w = shl nuw i64 %i.v, 32
  %i.x = zext i32 %.sroa.02.017.i.i.i.i12.i to i64
  %i.y = or disjoint i64 %i.w, %i.x
  %i.z = zext i64 %i.y to i128
  %i.aa = zext i64 %i.c to i128                   ; 2 uses
  %i.ab = mul nuw i128 %i.z, %i.aa                ; 2 uses
  %i.ac = lshr i128 %i.ab, 64
  %i.ad = trunc nuw i128 %i.ac to i64             ; 2 uses
  %i.ae = trunc i128 %i.ab to i64                 ; 2 uses
  %i.af = sub i64 %1, %2
  %i.ag = icmp ult i64 %i.af, %i.ae
  br i1 %i.ag, label %bb.h, label %bb.m

bb.h:                                             ; preds = %_RINvYNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsl8OoimOLbh_6qdrant.exit14.i
  %i.ah = icmp samesign ult i32 %.sroa.0.018.i.i.i.i11.i, 63
  br i1 %i.ah, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.val, i64 268
  %i.aj = load i32, ptr %i.ai, align 4, !alias.scope !870, !noalias !871, !noundef !5
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.val, i64 272 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0.val, i64 320
  %i.am = load i64, ptr %i.al, align 4, !alias.scope !872, !noalias !873
  %i.an = icmp ugt i64 %i.am, 1023
  br i1 %i.an, label %bb.j, label %_RNvXNtNtCsdS7EUc5kOLy_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs8EjlWUFl8r5_9rand_core5block9Generator8generate.exit.i.i.i.i15.i, !prof !7

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvMs_NtNtCsdS7EUc5kOLy_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.ak) #25, !noalias !873
  br label %_RNvXNtNtCsdS7EUc5kOLy_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs8EjlWUFl8r5_9rand_core5block9Generator8generate.exit.i.i.i.i15.i

_RNvXNtNtCsdS7EUc5kOLy_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs8EjlWUFl8r5_9rand_core5block9Generator8generate.exit.i.i.i.i15.i: ; preds = %bb.j, %bb.i
  tail call void @_RNvXs_NtCs1XrQGnCAlpr_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCs8EjlWUFl8r5_9rand_core5block9Generator8generateCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.ak, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.d), !noalias !871
  %i.ao = load i32, ptr %i.d, align 4, !alias.scope !870, !noalias !871, !noundef !5 ; 2 uses
  %.not.i.i.i.i16.i = icmp eq i32 %.sroa.0.018.i.i.i.i11.i, 63
  br i1 %.not.i.i.i.i16.i, label %_RINvYNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsl8OoimOLbh_6qdrant.exit20.i, label %bb.k

bb.k:                                             ; preds = %_RNvXNtNtCsdS7EUc5kOLy_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs8EjlWUFl8r5_9rand_core5block9Generator8generate.exit.i.i.i.i15.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.val, i64 20
  %i.aq = load i32, ptr %i.ap, align 4, !alias.scope !870, !noalias !871, !noundef !5
  br label %_RINvYNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsl8OoimOLbh_6qdrant.exit20.i

bb.l:                                             ; preds = %bb.h
  %i.ar = zext nneg i32 %.sroa.0.018.i.i.i.i11.i to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ar ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !alias.scope !870, !noalias !871, !noundef !5
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.av = load i32, ptr %i.au, align 4, !alias.scope !870, !noalias !871, !noundef !5
  %i.aw = add nuw nsw i32 %.sroa.0.018.i.i.i.i11.i, 2
  br label %_RINvYNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsl8OoimOLbh_6qdrant.exit20.i

_RINvYNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsl8OoimOLbh_6qdrant.exit20.i: ; preds = %bb.l, %bb.k, %_RNvXNtNtCsdS7EUc5kOLy_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs8EjlWUFl8r5_9rand_core5block9Generator8generate.exit.i.i.i.i15.i
  %.sroa.0.018.i.i.i.i17.i = phi i32 [ %i.aw, %bb.l ], [ 1, %_RNvXNtNtCsdS7EUc5kOLy_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs8EjlWUFl8r5_9rand_core5block9Generator8generate.exit.i.i.i.i15.i ], [ 2, %bb.k ]
  %.sroa.02.017.i.i.i.i18.i = phi i32 [ %i.at, %bb.l ], [ %i.aj, %_RNvXNtNtCsdS7EUc5kOLy_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs8EjlWUFl8r5_9rand_core5block9Generator8generate.exit.i.i.i.i15.i ], [ %i.ao, %bb.k ]
  %.sroa.03.016.i.i.i.i19.i = phi i32 [ %i.av, %bb.l ], [ %i.ao, %_RNvXNtNtCsdS7EUc5kOLy_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs8EjlWUFl8r5_9rand_core5block9Generator8generate.exit.i.i.i.i15.i ], [ %i.aq, %bb.k ]
  store i32 %.sroa.0.018.i.i.i.i17.i, ptr %i.d, align 4, !alias.scope !870, !noalias !871
  %i.ax = zext i32 %.sroa.03.016.i.i.i.i19.i to i64
  %i.ay = shl nuw i64 %i.ax, 32
  %i.az = zext i32 %.sroa.02.017.i.i.i.i18.i to i64
  %i.ba = or disjoint i64 %i.ay, %i.az
  %3 = zext i64 %i.ba to i128
  %4 = mul nuw i128 %3, %i.aa
  %5 = lshr i128 %4, 64
  %6 = trunc nuw i128 %5 to i64
  %i.bb = xor i64 %i.ae, -1
  %.not6.i = icmp ult i64 %i.bb, %6
  %i.bc = zext i1 %.not6.i to i64
  %i.bd = add nuw i64 %i.bc, %i.ad
  br label %bb.m

bb.m:                                             ; preds = %_RINvYNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsl8OoimOLbh_6qdrant.exit20.i, %_RINvYNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsl8OoimOLbh_6qdrant.exit14.i
  %.sroa.01.0.i = phi i64 [ %i.bd, %_RINvYNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsl8OoimOLbh_6qdrant.exit20.i ], [ %i.ad, %_RINvYNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsl8OoimOLbh_6qdrant.exit14.i ]
  %i.be = add i64 %.sroa.01.0.i, %1
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.be, ptr %i.bf, align 8, !alias.scope !865
  br label %_RINvXsw_NtNtNtCsdS7EUc5kOLy_4rand5distr7uniform3intINtB6_10UniformIntyENtB8_14UniformSampler23sample_single_inclusiveNtNtNtBc_4rngs6thread9ThreadRngyyECsl8OoimOLbh_6qdrant.exit

_RINvXsw_NtNtNtCsdS7EUc5kOLy_4rand5distr7uniform3intINtB6_10UniformIntyENtB8_14UniformSampler23sample_single_inclusiveNtNtNtBc_4rngs6thread9ThreadRngyyECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.m, %bb.b
  %storemerge = phi i8 [ 1, %bb.b ], [ 0, %bb.m ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCskKLDkoKarTP_4core3ops5range7RangeTojEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %bb.m, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %.val1 = load ptr, ptr %0, align 8              ; 7 uses
  %i.d = icmp ugt i64 %1, 4294967295
  br i1 %i.d, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = trunc nuw i64 %1 to i32
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.f = getelementptr inbounds nuw i8, ptr %.val1, i64 16 ; 9 uses
  %i.g = load i32, ptr %i.f, align 4, !noalias !895, !noundef !5 ; 3 uses
  %i.h = icmp ugt i32 %i.g, 63
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 272 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val1, i64 320
  %i.k = load i64, ptr %i.j, align 4, !alias.scope !896, !noalias !897
  %i.l = icmp ugt i64 %i.k, 1023
  br i1 %i.l, label %bb.e, label %.thread.i.i.i.i14.i.i.i.i, !prof !7

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvMs_NtNtCsdS7EUc5kOLy_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.i) #25, !noalias !897
  br label %.thread.i.i.i.i14.i.i.i.i

.thread.i.i.i.i14.i.i.i.i:                        ; preds = %bb.e, %bb.d
  tail call void @_RNvXs_NtCs1XrQGnCAlpr_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCs8EjlWUFl8r5_9rand_core5block9Generator8generateCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.i, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.f), !noalias !898
  br label %_RINvYNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECsl8OoimOLbh_6qdrant.exit15.i.i.i.i

bb.f:                                             ; preds = %bb.c
  %i.m = zext nneg i32 %i.g to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.m
  %i.o = add nuw nsw i32 %i.g, 1
  br label %_RINvYNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECsl8OoimOLbh_6qdrant.exit15.i.i.i.i

_RINvYNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECsl8OoimOLbh_6qdrant.exit15.i.i.i.i: ; preds = %bb.f, %.thread.i.i.i.i14.i.i.i.i
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i12.i.i.i.i = phi i32 [ 1, %.thread.i.i.i.i14.i.i.i.i ], [ %i.o, %bb.f ] ; 4 uses
  %.in.i.i.i.i13.i.i.i.i = phi ptr [ %i.f, %.thread.i.i.i.i14.i.i.i.i ], [ %i.n, %bb.f ]
  %i.p = load i32, ptr %.in.i.i.i.i13.i.i.i.i, align 4, !alias.scope !899, !noalias !898, !noundef !5
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i12.i.i.i.i, ptr %i.f, align 4, !alias.scope !899, !noalias !898
  %i.q = zext i32 %i.p to i64
  %i.r = mul nuw i64 %1, %i.q                     ; 2 uses
  %i.s = lshr i64 %i.r, 32                        ; 2 uses
  %i.t = trunc i64 %i.r to i32                    ; 2 uses
  %i.u = sub i32 0, %i.e
  %i.v = icmp ult i32 %i.u, %i.t
  br i1 %i.v, label %bb.g, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtCsdS7EUc5kOLy_4rand5distr7uniform5ErrorE6unwrapCsl8OoimOLbh_6qdrant.exit

bb.g:                                             ; preds = %_RINvYNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECsl8OoimOLbh_6qdrant.exit15.i.i.i.i
  %i.w = icmp samesign ugt i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i12.i.i.i.i, 63
  br i1 %i.w, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %.val1, i64 272 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val1, i64 320
  %i.z = load i64, ptr %i.y, align 4, !alias.scope !900, !noalias !901
  %i.aa = icmp ugt i64 %i.z, 1023
  br i1 %i.aa, label %bb.i, label %.thread.i.i.i.i18.i.i.i.i, !prof !7

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvMs_NtNtCsdS7EUc5kOLy_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.x) #25, !noalias !901
  br label %.thread.i.i.i.i18.i.i.i.i

.thread.i.i.i.i18.i.i.i.i:                        ; preds = %bb.i, %bb.h
  tail call void @_RNvXs_NtCs1XrQGnCAlpr_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCs8EjlWUFl8r5_9rand_core5block9Generator8generateCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.x, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.f), !noalias !902
  br label %_RINvYNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECsl8OoimOLbh_6qdrant.exit19.i.i.i.i

bb.j:                                             ; preds = %bb.g
  %i.ab = zext nneg i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i12.i.i.i.i to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ab
  %i.ad = add nuw nsw i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i12.i.i.i.i, 1
  br label %_RINvYNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECsl8OoimOLbh_6qdrant.exit19.i.i.i.i

_RINvYNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECsl8OoimOLbh_6qdrant.exit19.i.i.i.i: ; preds = %bb.j, %.thread.i.i.i.i18.i.i.i.i
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i16.i.i.i.i = phi i32 [ 1, %.thread.i.i.i.i18.i.i.i.i ], [ %i.ad, %bb.j ]
  %.in.i.i.i.i17.i.i.i.i = phi ptr [ %i.f, %.thread.i.i.i.i18.i.i.i.i ], [ %i.ac, %bb.j ]
  %i.ae = load i32, ptr %.in.i.i.i.i17.i.i.i.i, align 4, !alias.scope !903, !noalias !902, !noundef !5
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i16.i.i.i.i, ptr %i.f, align 4, !alias.scope !903, !noalias !902
  %3 = zext i32 %i.ae to i64
  %4 = mul nuw i64 %1, %3
  %5 = lshr i64 %4, 32
  %6 = trunc nuw i64 %5 to i32
  %i.af = xor i32 %i.t, -1
  %.not9.i.i.i.i = icmp ult i32 %i.af, %6
  %i.ag = zext i1 %.not9.i.i.i.i to i64
  %i.ah = add nuw nsw i64 %i.s, %i.ag
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtCsdS7EUc5kOLy_4rand5distr7uniform5ErrorE6unwrapCsl8OoimOLbh_6qdrant.exit

bb.k:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !895
  call fastcc void @_RINvXsw_NtNtNtCsdS7EUc5kOLy_4rand5distr7uniform3intINtB6_10UniformIntyENtB8_14UniformSampler13sample_singleNtNtNtBc_4rngs6thread9ThreadRngyyECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.a, i64 noundef 0, i64 noundef %1, ptr %.val1) #19, !noalias !895
  %i.ai = load i8, ptr %i.a, align 8, !range !13, !noalias !895, !noundef !5
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.l, label %_RINvXsv_NtNtCsdS7EUc5kOLy_4rand5distr7uniformINtNtNtCskKLDkoKarTP_4core3ops5range7RangeTojEINtB6_11SampleRangejE13sample_singleNtNtNtBa_4rngs6thread9ThreadRngECsl8OoimOLbh_6qdrant.exit

_RINvXsv_NtNtCsdS7EUc5kOLy_4rand5distr7uniformINtNtNtCskKLDkoKarTP_4core3ops5range7RangeTojEINtB6_11SampleRangejE13sample_singleNtNtNtBa_4rngs6thread9ThreadRngECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !noalias !895, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !895
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtCsdS7EUc5kOLy_4rand5distr7uniform5ErrorE6unwrapCsl8OoimOLbh_6qdrant.exit

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.an = load i8, ptr %i.am, align 1, !range !13, !noalias !895, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !895
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !904
  store i8 %i.an, ptr %i.b, align 1, !noalias !904
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @44, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #20, !noalias !905
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtCsdS7EUc5kOLy_4rand5distr7uniform5ErrorE6unwrapCsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvYNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECsl8OoimOLbh_6qdrant.exit15.i.i.i.i, %_RINvYNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECsl8OoimOLbh_6qdrant.exit19.i.i.i.i, %_RINvXsv_NtNtCsdS7EUc5kOLy_4rand5distr7uniformINtNtNtCskKLDkoKarTP_4core3ops5range7RangeTojEINtB6_11SampleRangejE13sample_singleNtNtNtBa_4rngs6thread9ThreadRngECsl8OoimOLbh_6qdrant.exit
  %.sroa.93.17 = phi i64 [ %i.al, %_RINvXsv_NtNtCsdS7EUc5kOLy_4rand5distr7uniformINtNtNtCskKLDkoKarTP_4core3ops5range7RangeTojEINtB6_11SampleRangejE13sample_singleNtNtNtBa_4rngs6thread9ThreadRngECsl8OoimOLbh_6qdrant.exit ], [ %i.s, %_RINvYNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECsl8OoimOLbh_6qdrant.exit15.i.i.i.i ], [ %i.ah, %_RINvYNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECsl8OoimOLbh_6qdrant.exit19.i.i.i.i ]
  ret i64 %.sroa.93.17

bb.m:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @37, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangeyINtNtNtCskKLDkoKarTP_4core3ops5range5RangeyEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %.not = icmp ult i64 %1, %2
  br i1 %.not, label %bb.b, label %bb.d, !prof !6

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.val2 = load ptr, ptr %0, align 8
  call fastcc void @_RINvXsw_NtNtNtCsdS7EUc5kOLy_4rand5distr7uniform3intINtB6_10UniformIntyENtB8_14UniformSampler13sample_singleNtNtNtBc_4rngs6thread9ThreadRngyyECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.b, i64 noundef %1, i64 noundef %2, ptr %.val2) #19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !909)
  %i.c = load i8, ptr %i.b, align 8, !range !13, !alias.scope !909, !noalias !910, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultyNtNtNtCsdS7EUc5kOLy_4rand5distr7uniform5ErrorE6unwrapCsl8OoimOLbh_6qdrant.exit, !prof !7

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !911
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.f = load i8, ptr %i.e, align 1, !range !13, !alias.scope !909, !noalias !910, !noundef !5
  store i8 %i.f, ptr %i.a, align 1, !noalias !911
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @44, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #20, !noalias !909
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultyNtNtNtCsdS7EUc5kOLy_4rand5distr7uniform5ErrorE6unwrapCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !909, !noalias !910, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.h

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @37, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvYNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6samplebNtNtNtB9_5distr9bernoulli9BernoulliECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val1 = load ptr, ptr %0, align 8              ; 6 uses
  %i.a = icmp eq i64 %1, -1
  br i1 %i.a, label %_RINvXs1_NtNtCsdS7EUc5kOLy_4rand5distr9bernoulliNtB6_9BernoulliINtNtB8_12distribution12DistributionbE6sampleNtNtNtBa_4rngs6thread9ThreadRngECsl8OoimOLbh_6qdrant.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 16 ; 5 uses
  %i.c = load i32, ptr %i.b, align 4, !alias.scope !919, !noalias !920, !noundef !5 ; 4 uses
  %i.d = icmp ult i32 %i.c, 63
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val1, i64 268
  %i.f = load i32, ptr %i.e, align 4, !alias.scope !919, !noalias !920, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %.val1, i64 272 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val1, i64 320
  %i.i = load i64, ptr %i.h, align 4, !alias.scope !921, !noalias !922
  %i.j = icmp ugt i64 %i.i, 1023
  br i1 %i.j, label %bb.d, label %_RNvXNtNtCsdS7EUc5kOLy_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs8EjlWUFl8r5_9rand_core5block9Generator8generate.exit.i.i.i.i.i, !prof !7

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs_NtNtCsdS7EUc5kOLy_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.g) #25, !noalias !922
  br label %_RNvXNtNtCsdS7EUc5kOLy_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs8EjlWUFl8r5_9rand_core5block9Generator8generate.exit.i.i.i.i.i

_RNvXNtNtCsdS7EUc5kOLy_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs8EjlWUFl8r5_9rand_core5block9Generator8generate.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c
  tail call void @_RNvXs_NtCs1XrQGnCAlpr_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCs8EjlWUFl8r5_9rand_core5block9Generator8generateCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.g, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.b), !noalias !920
  %i.k = load i32, ptr %i.b, align 4, !alias.scope !919, !noalias !920, !noundef !5 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.c, 63
  br i1 %.not.i.i.i.i.i, label %_RINvYNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsl8OoimOLbh_6qdrant.exit.i, label %bb.e

bb.e:                                             ; preds = %_RNvXNtNtCsdS7EUc5kOLy_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs8EjlWUFl8r5_9rand_core5block9Generator8generate.exit.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.val1, i64 20
  %i.m = load i32, ptr %i.l, align 4, !alias.scope !919, !noalias !920, !noundef !5
  br label %_RINvYNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsl8OoimOLbh_6qdrant.exit.i

bb.f:                                             ; preds = %bb.b
  %i.n = zext nneg i32 %i.c to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.n ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !alias.scope !919, !noalias !920, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.r = load i32, ptr %i.q, align 4, !alias.scope !919, !noalias !920, !noundef !5
  %i.s = add nuw nsw i32 %i.c, 2
  br label %_RINvYNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsl8OoimOLbh_6qdrant.exit.i

_RINvYNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.f, %bb.e, %_RNvXNtNtCsdS7EUc5kOLy_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs8EjlWUFl8r5_9rand_core5block9Generator8generate.exit.i.i.i.i.i
  %.sroa.0.018.i.i.i.i.i = phi i32 [ %i.s, %bb.f ], [ 1, %_RNvXNtNtCsdS7EUc5kOLy_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs8EjlWUFl8r5_9rand_core5block9Generator8generate.exit.i.i.i.i.i ], [ 2, %bb.e ]
  %.sroa.02.017.i.i.i.i.i = phi i32 [ %i.p, %bb.f ], [ %i.f, %_RNvXNtNtCsdS7EUc5kOLy_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs8EjlWUFl8r5_9rand_core5block9Generator8generate.exit.i.i.i.i.i ], [ %i.k, %bb.e ]
  %.sroa.03.016.i.i.i.i.i = phi i32 [ %i.r, %bb.f ], [ %i.k, %_RNvXNtNtCsdS7EUc5kOLy_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs8EjlWUFl8r5_9rand_core5block9Generator8generate.exit.i.i.i.i.i ], [ %i.m, %bb.e ]
  store i32 %.sroa.0.018.i.i.i.i.i, ptr %i.b, align 4, !alias.scope !919, !noalias !920
  %i.t = zext i32 %.sroa.03.016.i.i.i.i.i to i64
  %i.u = shl nuw i64 %i.t, 32
  %i.v = zext i32 %.sroa.02.017.i.i.i.i.i to i64
  %i.w = or disjoint i64 %i.u, %i.v
  %i.x = icmp ult i64 %i.w, %1
  br label %_RINvXs1_NtNtCsdS7EUc5kOLy_4rand5distr9bernoulliNtB6_9BernoulliINtNtB8_12distribution12DistributionbE6sampleNtNtNtBa_4rngs6thread9ThreadRngECsl8OoimOLbh_6qdrant.exit

_RINvXs1_NtNtCsdS7EUc5kOLy_4rand5distr9bernoulliNtB6_9BernoulliINtNtB8_12distribution12DistributionbE6sampleNtNtNtBa_4rngs6thread9ThreadRngECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a, %_RINvYNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsl8OoimOLbh_6qdrant.exit.i
  %.sroa.0.0.i = phi i1 [ %i.x, %_RINvYNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsl8OoimOLbh_6qdrant.exit.i ], [ true, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYNtNtNtCse6u8J169Qgj_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng9gen_rangejINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp ult i64 %1, %2
  br i1 %.not, label %bb.b, label %bb.h, !prof !6

bb.b:                                             ; preds = %bb.a
  %.val2 = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.a = sub nuw i64 %2, %1                       ; 3 uses
  %i.b = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.a, i1 true)
  %i.c = shl i64 %i.a, %i.b
  %i.d = add i64 %i.c, -1
  %i.e = getelementptr inbounds nuw i8, ptr %.val2, i64 16 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val2, i64 272 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val2, i64 288 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val2, i64 268
  %i.i = zext i64 %i.a to i128
  %.pre.i.i.i = load i64, ptr %i.f, align 16, !alias.scope !935, !noalias !936
  br label %bb.c

bb.c:                                             ; preds = %_RINvYNtNtNtCse6u8J169Qgj_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng3genjECsl8OoimOLbh_6qdrant.exit7.i.i.i, %bb.b
  %i.j = phi i64 [ %i.v, %_RINvYNtNtNtCse6u8J169Qgj_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng3genjECsl8OoimOLbh_6qdrant.exit7.i.i.i ], [ %.pre.i.i.i, %bb.b ] ; 4 uses
  %i.k = icmp ult i64 %i.j, 63
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i5.i.i.i = icmp eq i64 %i.j, 63
  br i1 %.not.i.i.i5.i.i.i, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.l = add nuw nsw i64 %i.j, 2                  ; 2 uses
  store i64 %i.l, ptr %i.f, align 16, !alias.scope !935, !noalias !936
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.j
  %i.n = load i64, ptr %i.m, align 4, !alias.scope !937, !noalias !936
  br label %_RINvYNtNtNtCse6u8J169Qgj_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng3genjECsl8OoimOLbh_6qdrant.exit7.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.o = load i32, ptr %i.h, align 4, !alias.scope !935, !noalias !936, !noundef !5
  tail call void @_RNvXs2_NtNtNtCse6u8J169Qgj_4rand4rngs7adapter9reseedingINtB5_13ReseedingCoreNtNtCsaMR8KmZgjhT_11rand_chacha6chacha12ChaCha12CoreNtNtCs7ekpqem23au_9rand_core2os5OsRngENtNtB26_5block12BlockRngCore8generateCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 16 dereferenceable(80) %i.g, ptr noalias nofree noundef nonnull align 16 dereferenceable(352) %i.e), !noalias !936
  store i64 1, ptr %i.f, align 16, !alias.scope !938, !noalias !936
  %i.p = zext i32 %i.o to i64
  %i.q = load i32, ptr %i.e, align 16, !alias.scope !935, !noalias !936, !noundef !5
  %i.r = zext i32 %i.q to i64
  %i.s = shl nuw i64 %i.r, 32
  %i.t = or disjoint i64 %i.s, %i.p
  br label %_RINvYNtNtNtCse6u8J169Qgj_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng3genjECsl8OoimOLbh_6qdrant.exit7.i.i.i

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvXs2_NtNtNtCse6u8J169Qgj_4rand4rngs7adapter9reseedingINtB5_13ReseedingCoreNtNtCsaMR8KmZgjhT_11rand_chacha6chacha12ChaCha12CoreNtNtCs7ekpqem23au_9rand_core2os5OsRngENtNtB26_5block12BlockRngCore8generateCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 16 dereferenceable(80) %i.g, ptr noalias nofree noundef nonnull align 16 dereferenceable(352) %i.e), !noalias !936
  store i64 2, ptr %i.f, align 16, !alias.scope !939, !noalias !936
  %i.u = load i64, ptr %i.e, align 16, !alias.scope !940, !noalias !936
  br label %_RINvYNtNtNtCse6u8J169Qgj_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng3genjECsl8OoimOLbh_6qdrant.exit7.i.i.i

_RINvYNtNtNtCse6u8J169Qgj_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng3genjECsl8OoimOLbh_6qdrant.exit7.i.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.v = phi i64 [ %i.l, %bb.e ], [ 2, %bb.g ], [ 1, %bb.f ]
  %.sroa.0.0.i.i.i6.i.i.i = phi i64 [ %i.n, %bb.e ], [ %i.u, %bb.g ], [ %i.t, %bb.f ]
  %i.w = zext i64 %.sroa.0.0.i.i.i6.i.i.i to i128
  %i.x = mul nuw i128 %i.w, %i.i                  ; 2 uses
  %i.y = trunc i128 %i.x to i64
  %.not3.i.i.i = icmp ult i64 %i.d, %i.y
  br i1 %.not3.i.i.i, label %bb.c, label %_RINvXs4_NtNtCse6u8J169Qgj_4rand13distributions7uniformINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEINtB6_11SampleRangejE13sample_singleNtNtNtBa_4rngs6thread9ThreadRngECsl8OoimOLbh_6qdrant.exit

_RINvXs4_NtNtCse6u8J169Qgj_4rand13distributions7uniformINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEINtB6_11SampleRangejE13sample_singleNtNtNtBa_4rngs6thread9ThreadRngECsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvYNtNtNtCse6u8J169Qgj_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng3genjECsl8OoimOLbh_6qdrant.exit7.i.i.i
  %i.z = lshr i128 %i.x, 64
  %i.aa = trunc nuw i128 %i.z to i64
  %i.ab = add i64 %1, %i.aa
  ret i64 %i.ab

bb.h:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvYQNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngNtNtBa_3rng6RngExt12random_rangemINtNtNtCskKLDkoKarTP_4core3ops5range7RangeTomEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.j, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %.val5 = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !955)
  %i.b = load ptr, ptr %.val5, align 8, !alias.scope !955, !nonnull !5, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.d = load i32, ptr %i.c, align 4, !alias.scope !956, !noalias !955, !noundef !5 ; 3 uses
  %i.e = icmp ugt i32 %i.d, 63
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 272 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %i.h = load i64, ptr %i.g, align 4, !alias.scope !957, !noalias !958
  %i.i = icmp ugt i64 %i.h, 1023
  br i1 %i.i, label %bb.d, label %.thread.i.i.i.i.i14.i.i.i, !prof !7

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs_NtNtCsdS7EUc5kOLy_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.f) #25, !noalias !958
  br label %.thread.i.i.i.i.i14.i.i.i

.thread.i.i.i.i.i14.i.i.i:                        ; preds = %bb.d, %bb.c
  tail call void @_RNvXs_NtCs1XrQGnCAlpr_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCs8EjlWUFl8r5_9rand_core5block9Generator8generateCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.c), !noalias !955
  br label %_RINvYQNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngNtNtBa_3rng6RngExt6randommECsl8OoimOLbh_6qdrant.exit15.i.i.i

bb.e:                                             ; preds = %bb.b
  %i.j = zext nneg i32 %i.d to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.j
  %i.l = add nuw nsw i32 %i.d, 1
  br label %_RINvYQNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngNtNtBa_3rng6RngExt6randommECsl8OoimOLbh_6qdrant.exit15.i.i.i

_RINvYQNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngNtNtBa_3rng6RngExt6randommECsl8OoimOLbh_6qdrant.exit15.i.i.i: ; preds = %bb.e, %.thread.i.i.i.i.i14.i.i.i
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i12.i.i.i = phi i32 [ 1, %.thread.i.i.i.i.i14.i.i.i ], [ %i.l, %bb.e ]
  %.in.i.i.i.i.i13.i.i.i = phi ptr [ %i.c, %.thread.i.i.i.i.i14.i.i.i ], [ %i.k, %bb.e ]
  %i.m = load i32, ptr %.in.i.i.i.i.i13.i.i.i, align 4, !alias.scope !956, !noalias !955, !noundef !5
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i12.i.i.i, ptr %i.c, align 4, !alias.scope !956, !noalias !955
  %i.n = zext i32 %i.m to i64
  %i.o = zext i32 %1 to i64                       ; 2 uses
  %i.p = mul nuw i64 %i.n, %i.o                   ; 2 uses
  %i.q = lshr i64 %i.p, 32                        ; 2 uses
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  %i.s = sub i32 0, %1
  %i.t = icmp ugt i32 %i.r, %i.s
  br i1 %i.t, label %bb.f, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultmNtNtNtCsdS7EUc5kOLy_4rand5distr7uniform5ErrorE6unwrapCsl8OoimOLbh_6qdrant.exit

bb.f:                                             ; preds = %_RINvYQNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngNtNtBa_3rng6RngExt6randommECsl8OoimOLbh_6qdrant.exit15.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !959)
  %i.u = load ptr, ptr %.val5, align 8, !alias.scope !959, !nonnull !5, !noundef !5 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 5 uses
  %i.w = load i32, ptr %i.v, align 4, !alias.scope !960, !noalias !959, !noundef !5 ; 3 uses
  %i.x = icmp ugt i32 %i.w, 63
  br i1 %i.x, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 272 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 320
  %i.aa = load i64, ptr %i.z, align 4, !alias.scope !961, !noalias !962
  %i.ab = icmp ugt i64 %i.aa, 1023
  br i1 %i.ab, label %bb.h, label %.thread.i.i.i.i.i18.i.i.i, !prof !7

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvMs_NtNtCsdS7EUc5kOLy_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.y) #25, !noalias !962
  br label %.thread.i.i.i.i.i18.i.i.i

.thread.i.i.i.i.i18.i.i.i:                        ; preds = %bb.h, %bb.g
  tail call void @_RNvXs_NtCs1XrQGnCAlpr_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCs8EjlWUFl8r5_9rand_core5block9Generator8generateCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.y, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.v), !noalias !959
  br label %_RINvYQNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngNtNtBa_3rng6RngExt6randommECsl8OoimOLbh_6qdrant.exit19.i.i.i

bb.i:                                             ; preds = %bb.f
  %i.ac = zext nneg i32 %i.w to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.ac
  %i.ae = add nuw nsw i32 %i.w, 1
  br label %_RINvYQNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngNtNtBa_3rng6RngExt6randommECsl8OoimOLbh_6qdrant.exit19.i.i.i

_RINvYQNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngNtNtBa_3rng6RngExt6randommECsl8OoimOLbh_6qdrant.exit19.i.i.i: ; preds = %bb.i, %.thread.i.i.i.i.i18.i.i.i
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i16.i.i.i = phi i32 [ 1, %.thread.i.i.i.i.i18.i.i.i ], [ %i.ae, %bb.i ]
  %.in.i.i.i.i.i17.i.i.i = phi ptr [ %i.v, %.thread.i.i.i.i.i18.i.i.i ], [ %i.ad, %bb.i ]
  %i.af = load i32, ptr %.in.i.i.i.i.i17.i.i.i, align 4, !alias.scope !960, !noalias !959, !noundef !5
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i16.i.i.i, ptr %i.v, align 4, !alias.scope !960, !noalias !959
  %3 = zext i32 %i.af to i64
  %4 = mul nuw i64 %3, %i.o
  %5 = lshr i64 %4, 32
  %6 = trunc nuw i64 %5 to i32
  %i.ag = xor i32 %i.r, -1
  %.not9.i.i.i = icmp ult i32 %i.ag, %6
  %i.ah = zext i1 %.not9.i.i.i to i64
  %i.ai = add nuw nsw i64 %i.q, %i.ah
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultmNtNtNtCsdS7EUc5kOLy_4rand5distr7uniform5ErrorE6unwrapCsl8OoimOLbh_6qdrant.exit

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultmNtNtNtCsdS7EUc5kOLy_4rand5distr7uniform5ErrorE6unwrapCsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvYQNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngNtNtBa_3rng6RngExt6randommECsl8OoimOLbh_6qdrant.exit19.i.i.i, %_RINvYQNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngNtNtBa_3rng6RngExt6randommECsl8OoimOLbh_6qdrant.exit15.i.i.i
  %.sroa.04.0.i.i.i = phi i64 [ %i.ai, %_RINvYQNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngNtNtBa_3rng6RngExt6randommECsl8OoimOLbh_6qdrant.exit19.i.i.i ], [ %i.q, %_RINvYQNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngNtNtBa_3rng6RngExt6randommECsl8OoimOLbh_6qdrant.exit15.i.i.i ]
  %.sroa.6.0.extract.trunc.i = trunc nuw i64 %.sroa.04.0.i.i.i to i32
  ret i32 %.sroa.6.0.extract.trunc.i

bb.j:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @37, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs1_NtNtCshMzyYDJGtjv_3api4grpc12dynamic_poolINtB5_11DynamicPoolNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelE10random_idxCsl8OoimOLbh_6qdrant() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call noundef nonnull ptr @_RNvNtNtCsdS7EUc5kOLy_4rand4rngs6thread3rng() ; 6 uses
  store ptr %i.b, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.d = load i32, ptr %i.c, align 4, !alias.scope !980, !noundef !5 ; 4 uses
  %i.e = icmp ult i32 %i.d, 63
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 268
  %i.g = load i32, ptr %i.f, align 4, !alias.scope !980, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 272 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %i.j = load i64, ptr %i.i, align 4, !alias.scope !981, !noalias !982
  %i.k = icmp ugt i64 %i.j, 1023
  br i1 %i.k, label %bb.c, label %_RNvXNtNtCsdS7EUc5kOLy_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs8EjlWUFl8r5_9rand_core5block9Generator8generate.exit.i, !prof !7

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs_NtNtCsdS7EUc5kOLy_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.h) #25
          to label %_RNvXNtNtCsdS7EUc5kOLy_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs8EjlWUFl8r5_9rand_core5block9Generator8generate.exit.i unwind label %bb.f

_RNvXNtNtCsdS7EUc5kOLy_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs8EjlWUFl8r5_9rand_core5block9Generator8generate.exit.i: ; preds = %bb.c, %bb.b
  invoke void @_RNvXs_NtCs1XrQGnCAlpr_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCs8EjlWUFl8r5_9rand_core5block9Generator8generateCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.h, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.c)
          to label %.noexc1 unwind label %bb.f

.noexc1:                                          ; preds = %_RNvXNtNtCsdS7EUc5kOLy_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs8EjlWUFl8r5_9rand_core5block9Generator8generate.exit.i
  %i.l = load i32, ptr %i.c, align 4, !alias.scope !980, !noundef !5 ; 2 uses
  %.not.i = icmp eq i32 %i.d, 63
  br i1 %.not.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %.noexc1
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.n = load i32, ptr %i.m, align 4, !alias.scope !980, !noundef !5
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.o = zext nneg i32 %i.d to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.o ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !alias.scope !980, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.s = load i32, ptr %i.r, align 4, !alias.scope !980, !noundef !5
  %i.t = add nuw nsw i32 %i.d, 2
  br label %bb.h

bb.f:                                             ; preds = %_RNvXNtNtCsdS7EUc5kOLy_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs8EjlWUFl8r5_9rand_core5block9Generator8generate.exit.i, %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !983)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !984)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !985)
  %i.v = load ptr, ptr %i.a, align 8, !alias.scope !986, !nonnull !5, !noundef !5 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !noalias !986, !noundef !5
  %i.x = add i64 %i.w, -1                         ; 2 uses
  store i64 %i.x, ptr %i.v, align 8, !noalias !986
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngECsl8OoimOLbh_6qdrant.exit

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell10UnsafeCellINtNtCs8EjlWUFl8r5_9rand_core5block8BlockRngNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread13ReseedingCoreEEE9drop_slowB26_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngECsl8OoimOLbh_6qdrant.exit unwind label %bb.j

bb.h:                                             ; preds = %bb.e, %bb.d, %.noexc1
  %.sroa.0.018.i = phi i32 [ %i.t, %bb.e ], [ 1, %.noexc1 ], [ 2, %bb.d ]
  %.sroa.02.017.i = phi i32 [ %i.q, %bb.e ], [ %i.g, %.noexc1 ], [ %i.l, %bb.d ]
  %.sroa.03.016.i = phi i32 [ %i.s, %bb.e ], [ %i.l, %.noexc1 ], [ %i.n, %bb.d ]
  store i32 %.sroa.0.018.i, ptr %i.c, align 4, !alias.scope !980
  tail call void @llvm.experimental.noalias.scope.decl(metadata !987)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !988)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !989)
  %i.z = load ptr, ptr %i.a, align 8, !alias.scope !990, !nonnull !5, !noundef !5 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !noalias !990, !noundef !5
  %i.ab = add i64 %i.aa, -1                       ; 2 uses
  store i64 %i.ab, ptr %i.z, align 8, !noalias !990
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngECsl8OoimOLbh_6qdrant.exit3

bb.i:                                             ; preds = %bb.h
  call void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell10UnsafeCellINtNtCs8EjlWUFl8r5_9rand_core5block8BlockRngNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread13ReseedingCoreEEE9drop_slowB26_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #25
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngECsl8OoimOLbh_6qdrant.exit3

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngECsl8OoimOLbh_6qdrant.exit3: ; preds = %bb.h, %bb.i
  %i.ad = zext i32 %.sroa.03.016.i to i64
  %i.ae = shl nuw i64 %i.ad, 32
  %i.af = zext i32 %.sroa.02.017.i to i64
  %i.ag = or disjoint i64 %i.ae, %i.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.ag

bb.j:                                             ; preds = %bb.g
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.f, %bb.g
  resume { ptr, i32 } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtCshMzyYDJGtjv_3api4grpc12dynamic_poolINtB5_11DynamicPoolNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelE3addCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(104) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = invoke { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now()
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %i.d) #23
          to label %common.resume unwind label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.h = extractvalue { i64, i32 } %i.f, 0
  %i.i = extractvalue { i64, i32 } %i.f, 1
  store i64 %i.h, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !range !14, !noundef !5
  %i.o = invoke { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant14duration_since(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c, i64 noundef %i.l, i32 noundef %i.n)
          to label %bb.d unwind label %bb.b       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.p = extractvalue { i64, i32 } %i.o, 0
  %i.q = extractvalue { i64, i32 } %i.o, 1        ; 2 uses
  %i.r = mul i64 %i.p, 1000
  %i.s = icmp ult i32 %i.q, 1000000000
  call void @llvm.assume(i1 %i.s)
  %i.t = udiv i32 %i.q, 1000000
  %i.u = zext nneg i32 %i.t to i64
  %i.v = add i64 %i.r, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 1, ptr %i.a, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.x, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 %i.v, ptr %.sroa.5.0..sroa_idx, align 8
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !1003
  %i.y = call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 8, 129) 80, i64 noundef range(i64 4, 9) 8) #21, !noalias !1003 ; 5 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.e, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCshMzyYDJGtjv_3api4grpc12dynamic_pool13ItemWithStatsNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelEEE3newCsl8OoimOLbh_6qdrant.exit, !prof !7

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #22
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.w)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.i, %bb.h, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.aa, %bb.f ], [ %i.g, %bb.b ], [ %i.ad, %bb.i ], [ %i.ad, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCshMzyYDJGtjv_3api4grpc12dynamic_pool13ItemWithStatsNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelEEE3newCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.y, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false)
end_hunk_0
begin_hunk_1_@_RNvXs1_NtCs577yCKf7gy3_4http10extensionsNtNtCsgOCJwUSa4vG_5tonic6status6StatusNtB5_8AnyClone9clone_boxCsl8OoimOLbh_6qdrant
declare hidden { ptr, ptr } @_RNvXs1_NtCs577yCKf7gy3_4http10extensionsNtNtCsgOCJwUSa4vG_5tonic6status6StatusNtB5_8AnyClone9clone_boxCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXs1_NtCs577yCKf7gy3_4http10extensionsNtNtCsgwvynAR9gqy_2h23ext8ProtocolNtB5_8AnyClone9clone_boxCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXs1_NtCs577yCKf7gy3_4http10extensionsNtNtNtCsgGgPqgSfnMH_7storage4rbac4auth4AuthNtB5_8AnyClone9clone_boxCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXs1_NtCs577yCKf7gy3_4http10extensionsNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server4conn14TcpConnectInfoNtB5_8AnyClone9clone_boxCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXs1_NtCs577yCKf7gy3_4http10extensionsNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry14CollectionNameNtB5_8AnyClone9clone_boxBK_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXs1_NtCs577yCKf7gy3_4http10extensionsNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference8api_keys14InferenceTokenNtB5_8AnyClone9clone_boxBK_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs577yCKf7gy3_4http10extensions8AnyCloneNtNtBS_6marker4SendNtB2G_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtB1Y_8IdHasherEE6removeBO_ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapyuINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs8KboJy7ZneP_6fxhash8FxHasherEE4iterCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IteryuENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 0, 3) i8 @_RNvXNtNtNtCskKLDkoKarTP_4core3ops8function5implsRNCNvMs0_NtCs3r24GR8eSjc_4raft7trackerNtBT_15ProgressTracker10has_quorum0INtB4_2FnTyEE4callCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcINtNtB7_5boxed3BoxDINtNtCs931dBByOpY6_6issues6broker10SubscriberNtNtCsPYQCUnoTxQ_10collection6events14SlowQueryEventENtNtCskKLDkoKarTP_4core6marker4SendNtB2R_4SyncEL_EEENtNtNtB2T_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcINtNtB7_5boxed3BoxDINtNtCs931dBByOpY6_6issues6broker10SubscriberNtNtCsPYQCUnoTxQ_10collection6events17IndexCreatedEventENtNtCskKLDkoKarTP_4core6marker4SendNtB2U_4SyncEL_EEENtNtNtB2W_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcINtNtB7_5boxed3BoxDINtNtCs931dBByOpY6_6issues6broker10SubscriberNtNtCsPYQCUnoTxQ_10collection6events22CollectionDeletedEventENtNtCskKLDkoKarTP_4core6marker4SendNtB2Z_4SyncEL_EEENtNtNtB31_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs577yCKf7gy3_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs577yCKf7gy3_4http6header3map6BucketNtNtBK_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsgGgPqgSfnMH_7storage4rbac16CollectionAccessENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcINtNtB7_5boxed3BoxDINtNtCs931dBByOpY6_6issues6broker10SubscriberNtNtCsPYQCUnoTxQ_10collection6events14SlowQueryEventENtNtCskKLDkoKarTP_4core6marker4SendNtB2Y_4SyncEL_EEENtNtNtB30_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcINtNtB7_5boxed3BoxDINtNtCs931dBByOpY6_6issues6broker10SubscriberNtNtCsPYQCUnoTxQ_10collection6events17IndexCreatedEventENtNtCskKLDkoKarTP_4core6marker4SendNtB31_4SyncEL_EEENtNtNtB33_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcINtNtB7_5boxed3BoxDINtNtCs931dBByOpY6_6issues6broker10SubscriberNtNtCsPYQCUnoTxQ_10collection6events22CollectionDeletedEventENtNtCskKLDkoKarTP_4core6marker4SendNtB36_4SyncEL_EEENtNtNtB38_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs577yCKf7gy3_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs577yCKf7gy3_4http6header3map6BucketNtNtBR_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsgGgPqgSfnMH_7storage4rbac16CollectionAccessENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs9_NtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc4chanINtB5_2TxINtNtNtCs5TwP8AC98I6_5tower6buffer7message7MessageINtNtCs577yCKf7gy3_4http7request7RequestNtNtCsgOCJwUSa4vG_5tonic4body4BodyEINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB2Z_6future6future6Futurep6OutputINtNtB2Z_6result6ResultINtNtB1M_8response8ResponseB2l_EIB3r_DNtNtB2Z_5error5ErrorNtNtB2Z_6marker4SendNtB5Y_4SyncEL_EEB5W_EL_EEENtNtB7_7bounded9SemaphoreENtNtNtB2Z_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsh_NtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc7boundedINtB5_11OwnedPermitINtNtNtCs5TwP8AC98I6_5tower6buffer7message7MessageINtNtCs577yCKf7gy3_4http7request7RequestNtNtCsgOCJwUSa4vG_5tonic4body4BodyEINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB3c_6future6future6Futurep6OutputINtNtB3c_6result6ResultINtNtB1Z_8response8ResponseB2y_EIB3E_DNtNtB3c_5error5ErrorNtNtB3c_6marker4SendNtB6b_4SyncEL_EEB69_EL_EEEENtNtNtB3c_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6filter6FilterIBO_INtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IteryINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCshMzyYDJGtjv_3api4grpc12dynamic_pool13ItemWithStatsNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelEEENCNvMs1_B2Q_INtB2Q_11DynamicPoolB3K_E6chooses_0ENCB4F_s0_0ENCINvNvNtNtNtBa_6traits8iterator8Iterator10min_by_key3keyTRyjEjNCB4F_s1_0E0EB5H_4foldINtNtBc_3cmp11KeyAndValuejB6v_ENvYB6X_NtB70_3Ord3minECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IteryINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCshMzyYDJGtjv_3api4grpc12dynamic_pool13ItemWithStatsNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelEEENCNvMs1_B2q_INtB2q_11DynamicPoolB3k_E6chooses_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB4Z_4find5checkTRyjEQNCB4f_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowB63_EECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownNtNtCskKLDkoKarTP_4core3any6TypeIdINtB2_10EquivalentBq_E10equivalentCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownyINtB2_10EquivalentyE10equivalentCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #6

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvNtNtCsdS7EUc5kOLy_4rand4rngs6thread3rng() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant14duration_since(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapyINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCshMzyYDJGtjv_3api4grpc12dynamic_pool13ItemWithStatsNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48), i64 noundef, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs1c_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB7_7HashMapyINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCshMzyYDJGtjv_3api4grpc12dynamic_pool13ItemWithStatsNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelEEEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorTyB15_EE9from_iterINtNtNtB3A_8adapters3map3MapINtNtNtB1a_3vec9into_iter8IntoIterB2A_ENCNvMs1_B1G_INtB1G_11DynamicPoolB2A_E3new0EECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcINtNtNtCshMzyYDJGtjv_3api4grpc12dynamic_pool13ItemWithStatsNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelEEE6retainNCNvMs1_BZ_INtBZ_11DynamicPoolB1T_E6choose0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapyINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCshMzyYDJGtjv_3api4grpc12dynamic_pool13ItemWithStatsNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE4iterCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #14

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapyINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCshMzyYDJGtjv_3api4grpc12dynamic_pool13ItemWithStatsNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6removeyECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcINtNtNtCshMzyYDJGtjv_3api4grpc12dynamic_pool13ItemWithStatsNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelEEE8grow_oneCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtNtCse6u8J169Qgj_4rand4rngs7adapter9reseedingINtB5_13ReseedingCoreNtNtCsaMR8KmZgjhT_11rand_chacha6chacha12ChaCha12CoreNtNtCs7ekpqem23au_9rand_core2os5OsRngENtNtB26_5block12BlockRngCore8generateCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 16 dereferenceable(80), ptr noalias nofree noundef align 4 dereferenceable(256)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #10

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #16

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RNvMs_NtNtCsdS7EUc5kOLy_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef align 4 dereferenceable(64)) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtCs1XrQGnCAlpr_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCs8EjlWUFl8r5_9rand_core5block9Generator8generateCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 4 dereferenceable(64), ptr noalias nofree noundef align 4 dereferenceable(256)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetyINtNtB8_4hash18BuildHasherDefaultNtCs8KboJy7ZneP_6fxhash8FxHasherEENtB6_5Debug3fmtCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_E9drop_slowCsbM8FbnNn9aS_6rustls(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare hidden void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecNtCsg2eWlRba8yQ_16rustls_pki_types14CertificateDerEE9drop_slowCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCshMzyYDJGtjv_3api4grpc12dynamic_pool13ItemWithStatsNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelEE9drop_slowBN_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCs5TwP8AC98I6_5tower6buffer5error12ServiceErrorEEE9drop_slowCsgOCJwUSa4vG_5tonic(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtNtCsjZG7hsAZr3B_5tokio4sync7oneshot8ReceiverINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs3WWrd2JY12C_5hyper7upgrade8UpgradedNtNtB2X_5error5ErrorEEEE9drop_slowB2X_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc4chan4ChanINtNtNtCs5TwP8AC98I6_5tower6buffer7message7MessageINtNtCs577yCKf7gy3_4http7request7RequestNtNtCsgOCJwUSa4vG_5tonic4body4BodyEINtNtCskKLDkoKarTP_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB3z_6future6future6Futurep6OutputINtNtB3z_6result6ResultINtNtB2m_8response8ResponseB2V_EIB41_DNtNtB3z_5error5ErrorNtNtB3z_6marker4SendNtB6h_4SyncEL_EEB6f_EL_EEENtNtBL_7bounded9SemaphoreEE9drop_slowB2Z_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell10UnsafeCellINtNtCs8EjlWUFl8r5_9rand_core5block8BlockRngNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread13ReseedingCoreEEE9drop_slowB26_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { inlinehint }
attributes #20 = { noinline noreturn }
attributes #21 = { nounwind }
attributes #22 = { noreturn }
attributes #23 = { cold }
attributes #24 = { cold noreturn nounwind }
attributes #25 = { noinline }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!5 = !{}
!6 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = !{i64 8}
!9 = !{i64 0, i64 -9223372036854775808}
!10 = !{i64 1, i64 536870913}
!11 = !{!"branch_weights", !"expected", i32 2144049392, i32 3434256}
!12 = !{i64 -1, i64 -9223372036854775808}
!13 = !{i8 0, i8 2}
!14 = !{i32 0, i32 1000000000}
!15 = distinct !{!15, !"_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_ENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECsl8OoimOLbh_6qdrant"}
!16 = distinct !{!16, !15, !"_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_ENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECsl8OoimOLbh_6qdrant: argument 0"}
!17 = distinct !{!17, !15, !"_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_ENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECsl8OoimOLbh_6qdrant: argument 1"}
!18 = distinct !{!18, !"_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB29_4SyncEL_EEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECsl8OoimOLbh_6qdrant"}
!19 = distinct !{!19, !18, !"_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB29_4SyncEL_EEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECsl8OoimOLbh_6qdrant: argument 0"}
!20 = distinct !{!20, !"_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!21 = distinct !{!21, !20, !"_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!22 = distinct !{!22, !18, !"_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB29_4SyncEL_EEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECsl8OoimOLbh_6qdrant: argument 1"}
!23 = distinct !{!23, !20, !"_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!24 = distinct !{!24, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128"}
!25 = distinct !{!25, !24, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!26 = distinct !{!26, !"_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBU_3AnyNtNtBW_6marker4SendNtB2b_4SyncEL_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1q_E0E0Csl8OoimOLbh_6qdrant"}
!27 = distinct !{!27, !26, !"_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBU_3AnyNtNtBW_6marker4SendNtB2b_4SyncEL_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1q_E0E0Csl8OoimOLbh_6qdrant: argument 0"}
!28 = distinct !{null}
!29 = !{!16}
!30 = !{!17}
!31 = !{!19}
!32 = !{!21}
!33 = !{!21, !19, !16}
!34 = !{!23, !22, !17}
!35 = !{!25, !21, !23, !19}
!36 = !{!27, !21, !23, !19}
!37 = distinct !{!37, !"_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_ENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECsl8OoimOLbh_6qdrant"}
!38 = distinct !{!38, !37, !"_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_ENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECsl8OoimOLbh_6qdrant: argument 0"}
!39 = distinct !{!39, !37, !"_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_ENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECsl8OoimOLbh_6qdrant: argument 1"}
!40 = distinct !{!40, !"_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB29_4SyncEL_EEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECsl8OoimOLbh_6qdrant"}
!41 = distinct !{!41, !40, !"_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB29_4SyncEL_EEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECsl8OoimOLbh_6qdrant: argument 0"}
!42 = distinct !{!42, !"_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!43 = distinct !{!43, !42, !"_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!44 = distinct !{!44, !40, !"_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB29_4SyncEL_EEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECsl8OoimOLbh_6qdrant: argument 1"}
!45 = distinct !{!45, !42, !"_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!46 = distinct !{!46, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128"}
!47 = distinct !{!47, !46, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!48 = distinct !{!48, !"_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBU_3AnyNtNtBW_6marker4SendNtB2b_4SyncEL_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1q_E0E0Csl8OoimOLbh_6qdrant"}
!49 = distinct !{!49, !48, !"_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBU_3AnyNtNtBW_6marker4SendNtB2b_4SyncEL_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1q_E0E0Csl8OoimOLbh_6qdrant: argument 0"}
!50 = distinct !{null}
!51 = !{!38}
!52 = !{!39}
!53 = !{!41}
!54 = !{!43}
!55 = !{!43, !41, !38}
!56 = !{!45, !44, !39}
!57 = !{!47, !43, !45, !41}
!58 = !{!49, !43, !45, !41}
!59 = distinct !{!59, !"_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_ENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECsl8OoimOLbh_6qdrant"}
!60 = distinct !{!60, !59, !"_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_ENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECsl8OoimOLbh_6qdrant: argument 0"}
!61 = distinct !{!61, !59, !"_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_ENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECsl8OoimOLbh_6qdrant: argument 1"}
!62 = distinct !{!62, !"_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB29_4SyncEL_EEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECsl8OoimOLbh_6qdrant"}
!63 = distinct !{!63, !62, !"_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB29_4SyncEL_EEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECsl8OoimOLbh_6qdrant: argument 0"}
!64 = distinct !{!64, !"_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!65 = distinct !{!65, !64, !"_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!66 = distinct !{!66, !62, !"_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB29_4SyncEL_EEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECsl8OoimOLbh_6qdrant: argument 1"}
!67 = distinct !{!67, !64, !"_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!68 = distinct !{!68, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128"}
!69 = distinct !{!69, !68, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!70 = distinct !{!70, !"_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBU_3AnyNtNtBW_6marker4SendNtB2b_4SyncEL_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1q_E0E0Csl8OoimOLbh_6qdrant"}
!71 = distinct !{!71, !70, !"_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBU_3AnyNtNtBW_6marker4SendNtB2b_4SyncEL_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1q_E0E0Csl8OoimOLbh_6qdrant: argument 0"}
!72 = distinct !{null}
!73 = !{!60}
!74 = !{!61}
!75 = !{!63}
!76 = !{!65}
!77 = !{!65, !63, !60}
!78 = !{!67, !66, !61}
!79 = !{!69, !65, !67, !63}
!80 = !{!71, !65, !67, !63}
!81 = distinct !{!81, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_3vec3VecINtNtB4_4sync3ArcIBv_DINtNtCs931dBByOpY6_6issues6broker10SubscriberNtNtCsPYQCUnoTxQ_10collection6events14SlowQueryEventENtNtCskKLDkoKarTP_4core6marker4SendNtB2S_4SyncEL_EEEE3newCsl8OoimOLbh_6qdrant"}
!82 = distinct !{!82, !81, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_3vec3VecINtNtB4_4sync3ArcIBv_DINtNtCs931dBByOpY6_6issues6broker10SubscriberNtNtCsPYQCUnoTxQ_10collection6events14SlowQueryEventENtNtCskKLDkoKarTP_4core6marker4SendNtB2S_4SyncEL_EEEE3newCsl8OoimOLbh_6qdrant: argument 0"}
!83 = !{!82}
!84 = distinct !{!84, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_3vec3VecINtNtB4_4sync3ArcIBv_DINtNtCs931dBByOpY6_6issues6broker10SubscriberNtNtCsPYQCUnoTxQ_10collection6events17IndexCreatedEventENtNtCskKLDkoKarTP_4core6marker4SendNtB2V_4SyncEL_EEEE3newCsl8OoimOLbh_6qdrant"}
!85 = distinct !{!85, !84, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_3vec3VecINtNtB4_4sync3ArcIBv_DINtNtCs931dBByOpY6_6issues6broker10SubscriberNtNtCsPYQCUnoTxQ_10collection6events17IndexCreatedEventENtNtCskKLDkoKarTP_4core6marker4SendNtB2V_4SyncEL_EEEE3newCsl8OoimOLbh_6qdrant: argument 0"}
!86 = !{!85}
!87 = distinct !{!87, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_3vec3VecINtNtB4_4sync3ArcIBv_DINtNtCs931dBByOpY6_6issues6broker10SubscriberNtNtCsPYQCUnoTxQ_10collection6events22CollectionDeletedEventENtNtCskKLDkoKarTP_4core6marker4SendNtB30_4SyncEL_EEEE3newCsl8OoimOLbh_6qdrant"}
!88 = distinct !{!88, !87, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_3vec3VecINtNtB4_4sync3ArcIBv_DINtNtCs931dBByOpY6_6issues6broker10SubscriberNtNtCsPYQCUnoTxQ_10collection6events22CollectionDeletedEventENtNtCskKLDkoKarTP_4core6marker4SendNtB30_4SyncEL_EEEE3newCsl8OoimOLbh_6qdrant: argument 0"}
!89 = !{!88}
!90 = distinct !{null}
!91 = distinct !{null}
!92 = distinct !{null}
!93 = distinct !{!93, !"_RINvMs1_NtNtCs4hE0XgIM7pO_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner6insertINtNtNtBa_3fmt9fmt_layer15FormattedFieldsNtNtB1B_6format13DefaultFieldsEECsl8OoimOLbh_6qdrant"}
!94 = distinct !{!94, !93, !"_RINvMs1_NtNtCs4hE0XgIM7pO_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner6insertINtNtNtBa_3fmt9fmt_layer15FormattedFieldsNtNtB1B_6format13DefaultFieldsEECsl8OoimOLbh_6qdrant: argument 2"}
!95 = distinct !{!95, !93, !"_RINvMs1_NtNtCs4hE0XgIM7pO_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner6insertINtNtNtBa_3fmt9fmt_layer15FormattedFieldsNtNtB1B_6format13DefaultFieldsEECsl8OoimOLbh_6qdrant: argument 1"}
!96 = distinct !{!96, !93, !"_RINvMs1_NtNtCs4hE0XgIM7pO_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner6insertINtNtNtBa_3fmt9fmt_layer15FormattedFieldsNtNtB1B_6format13DefaultFieldsEECsl8OoimOLbh_6qdrant: argument 0"}
!97 = distinct !{!97, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtNtCs4hE0XgIM7pO_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtBJ_6format13DefaultFieldsEE3newCsl8OoimOLbh_6qdrant"}
!98 = distinct !{!98, !97, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtNtCs4hE0XgIM7pO_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtBJ_6format13DefaultFieldsEE3newCsl8OoimOLbh_6qdrant: argument 0"}
!99 = distinct !{!99, !"_RNCINvMs1_NtNtCs4hE0XgIM7pO_18tracing_subscriber8registry10extensionsNtB8_15ExtensionsInner6insertINtNtNtBc_3fmt9fmt_layer15FormattedFieldsNtNtB1D_6format13DefaultFieldsEE0Csl8OoimOLbh_6qdrant"}
!100 = distinct !{!100, !99, !"_RNCINvMs1_NtNtCs4hE0XgIM7pO_18tracing_subscriber8registry10extensionsNtB8_15ExtensionsInner6insertINtNtNtBc_3fmt9fmt_layer15FormattedFieldsNtNtB1D_6format13DefaultFieldsEE0Csl8OoimOLbh_6qdrant: argument 1"}
!101 = distinct !{!101, !"_RINvMsa_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB8_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyEL_E8downcastINtNtNtCs4hE0XgIM7pO_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtB1G_6format13DefaultFieldsEECsl8OoimOLbh_6qdrant"}
!102 = distinct !{!102, !101, !"_RINvMsa_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB8_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyEL_E8downcastINtNtNtCs4hE0XgIM7pO_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtB1G_6format13DefaultFieldsEECsl8OoimOLbh_6qdrant: argument 1"}
!103 = distinct !{!103, !99, !"_RNCINvMs1_NtNtCs4hE0XgIM7pO_18tracing_subscriber8registry10extensionsNtB8_15ExtensionsInner6insertINtNtNtBc_3fmt9fmt_layer15FormattedFieldsNtNtB1D_6format13DefaultFieldsEE0Csl8OoimOLbh_6qdrant: argument 0"}
!104 = distinct !{!104, !101, !"_RINvMsa_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB8_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyEL_E8downcastINtNtNtCs4hE0XgIM7pO_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtB1G_6format13DefaultFieldsEECsl8OoimOLbh_6qdrant: argument 0"}
!105 = !{!98, !96, !95, !94}
!106 = !{!96, !95, !94}
!107 = !{!96, !95}
!108 = !{!96, !94}
!109 = !{!100}
!110 = !{!102}
!111 = !{!104, !102, !103, !100, !96, !95, !94}
!112 = !{!102, !100}
!113 = !{!104, !103, !96, !94}
!114 = !{!104, !102, !103, !100, !96, !94}
!115 = !{!103, !96, !94}
!116 = !{!103, !100, !96, !94}
!117 = !{!100, !94}
!118 = distinct !{!118, !"_RINvMs1_NtNtCs4hE0XgIM7pO_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner6insertINtNtNtBa_3fmt9fmt_layer15FormattedFieldsNtNtNtB1B_6format4json10JsonFieldsEECsl8OoimOLbh_6qdrant"}
!119 = distinct !{!119, !118, !"_RINvMs1_NtNtCs4hE0XgIM7pO_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner6insertINtNtNtBa_3fmt9fmt_layer15FormattedFieldsNtNtNtB1B_6format4json10JsonFieldsEECsl8OoimOLbh_6qdrant: argument 2"}
!120 = distinct !{!120, !118, !"_RINvMs1_NtNtCs4hE0XgIM7pO_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner6insertINtNtNtBa_3fmt9fmt_layer15FormattedFieldsNtNtNtB1B_6format4json10JsonFieldsEECsl8OoimOLbh_6qdrant: argument 1"}
!121 = distinct !{!121, !118, !"_RINvMs1_NtNtCs4hE0XgIM7pO_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner6insertINtNtNtBa_3fmt9fmt_layer15FormattedFieldsNtNtNtB1B_6format4json10JsonFieldsEECsl8OoimOLbh_6qdrant: argument 0"}
!122 = distinct !{!122, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtNtCs4hE0XgIM7pO_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtNtBJ_6format4json10JsonFieldsEE3newCsl8OoimOLbh_6qdrant"}
!123 = distinct !{!123, !122, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtNtCs4hE0XgIM7pO_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtNtBJ_6format4json10JsonFieldsEE3newCsl8OoimOLbh_6qdrant: argument 0"}
!124 = distinct !{!124, !"_RNCINvMs1_NtNtCs4hE0XgIM7pO_18tracing_subscriber8registry10extensionsNtB8_15ExtensionsInner6insertINtNtNtBc_3fmt9fmt_layer15FormattedFieldsNtNtNtB1D_6format4json10JsonFieldsEE0Csl8OoimOLbh_6qdrant"}
!125 = distinct !{!125, !124, !"_RNCINvMs1_NtNtCs4hE0XgIM7pO_18tracing_subscriber8registry10extensionsNtB8_15ExtensionsInner6insertINtNtNtBc_3fmt9fmt_layer15FormattedFieldsNtNtNtB1D_6format4json10JsonFieldsEE0Csl8OoimOLbh_6qdrant: argument 1"}
!126 = distinct !{!126, !"_RINvMsa_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB8_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyEL_E8downcastINtNtNtCs4hE0XgIM7pO_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtNtB1G_6format4json10JsonFieldsEECsl8OoimOLbh_6qdrant"}
!127 = distinct !{!127, !126, !"_RINvMsa_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB8_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyEL_E8downcastINtNtNtCs4hE0XgIM7pO_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtNtB1G_6format4json10JsonFieldsEECsl8OoimOLbh_6qdrant: argument 1"}
!128 = distinct !{!128, !124, !"_RNCINvMs1_NtNtCs4hE0XgIM7pO_18tracing_subscriber8registry10extensionsNtB8_15ExtensionsInner6insertINtNtNtBc_3fmt9fmt_layer15FormattedFieldsNtNtNtB1D_6format4json10JsonFieldsEE0Csl8OoimOLbh_6qdrant: argument 0"}
!129 = distinct !{!129, !126, !"_RINvMsa_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB8_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyEL_E8downcastINtNtNtCs4hE0XgIM7pO_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtNtB1G_6format4json10JsonFieldsEECsl8OoimOLbh_6qdrant: argument 0"}
!130 = !{!123, !121, !120, !119}
!131 = !{!121, !120, !119}
!132 = !{!121, !120}
!133 = !{!121, !119}
!134 = !{!125}
!135 = !{!127}
!136 = !{!129, !127, !128, !125, !121, !120, !119}
!137 = !{!127, !125}
!138 = !{!129, !128, !121, !119}
!139 = !{!129, !127, !128, !125, !121, !119}
!140 = !{!128, !121, !119}
!141 = !{!128, !125, !121, !119}
!142 = !{!125, !119}
!143 = distinct !{!143, !"_RINvMs1_NtNtCs4hE0XgIM7pO_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner6insertNtNtNtBa_3fmt9fmt_layer7TimingsECsl8OoimOLbh_6qdrant"}
!144 = distinct !{!144, !143, !"_RINvMs1_NtNtCs4hE0XgIM7pO_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner6insertNtNtNtBa_3fmt9fmt_layer7TimingsECsl8OoimOLbh_6qdrant: argument 2"}
!145 = distinct !{!145, !143, !"_RINvMs1_NtNtCs4hE0XgIM7pO_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner6insertNtNtNtBa_3fmt9fmt_layer7TimingsECsl8OoimOLbh_6qdrant: argument 1"}
!146 = distinct !{!146, !143, !"_RINvMs1_NtNtCs4hE0XgIM7pO_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner6insertNtNtNtBa_3fmt9fmt_layer7TimingsECsl8OoimOLbh_6qdrant: argument 0"}
!147 = distinct !{!147, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCs4hE0XgIM7pO_18tracing_subscriber3fmt9fmt_layer7TimingsE3newCsl8OoimOLbh_6qdrant"}
!148 = distinct !{!148, !147, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCs4hE0XgIM7pO_18tracing_subscriber3fmt9fmt_layer7TimingsE3newCsl8OoimOLbh_6qdrant: argument 0"}
!149 = distinct !{!149, !"_RNCINvMs1_NtNtCs4hE0XgIM7pO_18tracing_subscriber8registry10extensionsNtB8_15ExtensionsInner6insertNtNtNtBc_3fmt9fmt_layer7TimingsE0Csl8OoimOLbh_6qdrant"}
!150 = distinct !{!150, !149, !"_RNCINvMs1_NtNtCs4hE0XgIM7pO_18tracing_subscriber8registry10extensionsNtB8_15ExtensionsInner6insertNtNtNtBc_3fmt9fmt_layer7TimingsE0Csl8OoimOLbh_6qdrant: argument 1"}
!151 = distinct !{!151, !"_RINvMsa_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB8_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyEL_E8downcastNtNtNtCs4hE0XgIM7pO_18tracing_subscriber3fmt9fmt_layer7TimingsECsl8OoimOLbh_6qdrant"}
!152 = distinct !{!152, !151, !"_RINvMsa_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB8_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyEL_E8downcastNtNtNtCs4hE0XgIM7pO_18tracing_subscriber3fmt9fmt_layer7TimingsECsl8OoimOLbh_6qdrant: argument 1"}
!153 = distinct !{!153, !149, !"_RNCINvMs1_NtNtCs4hE0XgIM7pO_18tracing_subscriber8registry10extensionsNtB8_15ExtensionsInner6insertNtNtNtBc_3fmt9fmt_layer7TimingsE0Csl8OoimOLbh_6qdrant: argument 0"}
!154 = distinct !{!154, !151, !"_RINvMsa_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB8_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyEL_E8downcastNtNtNtCs4hE0XgIM7pO_18tracing_subscriber3fmt9fmt_layer7TimingsECsl8OoimOLbh_6qdrant: argument 0"}
!155 = !{!148, !146, !145, !144}
!156 = !{!146, !145}
!157 = !{!146, !145, !144}
!158 = !{!146, !144}
!159 = !{!150}
!160 = !{!152}
!161 = !{!154, !152, !153, !150, !146, !145, !144}
!162 = !{!152, !150}
!163 = !{!154, !153, !146, !144}
!164 = !{!154, !152, !153, !150, !146, !144}
!165 = !{!153, !146, !144}
!166 = !{!153, !150, !146, !144}
end_hunk_1

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_rendezvous-2ad7321e65efd16c.libp2p_rendezvous.bc366a826b06a5dd-cgu.09?download=true
inline.NumInlined: 291
inline.NumDeleted: 176
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler15OutboundMessageNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5CodecEEB1M_:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.j:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 464
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEBF_.exit.i.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdTHTBGblh3Z_11libp2p_core11peer_record10PeerRecordECsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(424) %i.a) #18
          to label %.body unwind label %bb.n

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEBF_.exit.i.i: ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 336
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec15NewRegistrationEBF_.exit.i unwind label %bb.l

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEBF_.exit.i.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdTHTBGblh3Z_11libp2p_core15signed_envelope14SignedEnvelopeECsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(424) %i.a) #18
          to label %.body unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec15NewRegistrationEBF_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEBF_.exit.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdTHTBGblh3Z_11libp2p_core15signed_envelope14SignedEnvelopeECsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(424) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec7MessageEBF_.exit unwind label %bb.u

bb.o:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %.invoke

bb.p:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !range !10, !alias.scope !141, !noundef !6
  %i.y = icmp eq i64 %i.x, -1
  br i1 %i.y, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEEB11_.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEEB11_.exit.i unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !range !142, !alias.scope !143, !noundef !6
  %switch.i.i = icmp ugt i64 %i.ab, -3
  br i1 %switch.i.i, label %.body, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %.body unwind label %bb.t

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEEB11_.exit.i: ; preds = %bb.q, %bb.p
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !range !142, !alias.scope !144, !noundef !6
  %switch.i2.i = icmp ugt i64 %i.ad, -3
  br i1 %switch.i2.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec7MessageEBF_.exit, label %.invoke

.invoke:                                          ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEEB11_.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec12RegistrationEEB1c_.exit.i.i.i, %bb.o
  %i.ae = phi ptr [ %i.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec12RegistrationEEB1c_.exit.i.i.i ], [ %i.v, %bb.o ], [ %i.ac, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEEB11_.exit.i ]
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec7MessageEBF_.exit unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.u:                                             ; preds = %.invoke, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec15NewRegistrationEBF_.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i.i.i, %bb.h, %bb.k, %bb.l, %bb.r, %bb.s, %bb.u
  %eh.lpad-body = phi { ptr, i32 } [ %i.ag, %bb.u ], [ %i.q, %bb.k ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %eh.lpad-body.i.i.i, %bb.h ], [ %i.s, %bb.l ], [ %i.z, %bb.r ], [ %i.z, %bb.s ]
  invoke void @_RNvXsw_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolj2_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsczYENlYh6wI_8smallvec8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolj2_EECsg9QLscIEtAL_17libp2p_rendezvous.exit unwind label %bb.v

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec7MessageEBF_.exit: ; preds = %.invoke, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEEB11_.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec12RegistrationEEB1c_.exit.i.i.i, %bb.b, %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec15NewRegistrationEBF_.exit.i
  tail call void @_RNvXsw_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolj2_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0)
  ret void

bb.v:                                             ; preds = %.body
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsczYENlYh6wI_8smallvec8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolj2_EECsg9QLscIEtAL_17libp2p_rendezvous.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsfoiTdJnOWBy_23libp2p_request_response10ConnectionECsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !153, !noundef !6 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEECsg9QLscIEtAL_17libp2p_rendezvous.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !157, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !noalias !157, !nonnull !6, !noundef !6
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !157, !noundef !6
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !157, !noundef !6
  invoke void %i.g(ptr noundef %i.e, ptr noundef %i.i, i64 noundef %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEECsg9QLscIEtAL_17libp2p_rendezvous.exit unwind label %bb.c, !inline_history !1

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtCsfoiTdJnOWBy_23libp2p_request_response17OutboundRequestIduEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtCsfoiTdJnOWBy_23libp2p_request_response17OutboundRequestIdEECsg9QLscIEtAL_17libp2p_rendezvous.exit unwind label %bb.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEECsg9QLscIEtAL_17libp2p_rendezvous.exit: ; preds = %bb.a, %bb.b
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtCsfoiTdJnOWBy_23libp2p_request_response17OutboundRequestIduEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtCsfoiTdJnOWBy_23libp2p_request_response17OutboundRequestIdEECsg9QLscIEtAL_17libp2p_rendezvous.exit4 unwind label %bb.d

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtCsfoiTdJnOWBy_23libp2p_request_response17OutboundRequestIdEECsg9QLscIEtAL_17libp2p_rendezvous.exit: ; preds = %bb.c, %bb.d
  %.pn = phi { ptr, i32 } [ %i.n, %bb.d ], [ %i.l, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtCsfoiTdJnOWBy_23libp2p_request_response16InboundRequestIduEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtCsfoiTdJnOWBy_23libp2p_request_response16InboundRequestIdEECsg9QLscIEtAL_17libp2p_rendezvous.exit unwind label %bb.e

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEECsg9QLscIEtAL_17libp2p_rendezvous.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtCsfoiTdJnOWBy_23libp2p_request_response17OutboundRequestIdEECsg9QLscIEtAL_17libp2p_rendezvous.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtCsfoiTdJnOWBy_23libp2p_request_response17OutboundRequestIdEECsg9QLscIEtAL_17libp2p_rendezvous.exit4: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEECsg9QLscIEtAL_17libp2p_rendezvous.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtCsfoiTdJnOWBy_23libp2p_request_response16InboundRequestIduEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.o)
  ret void

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtCsfoiTdJnOWBy_23libp2p_request_response17OutboundRequestIdEECsg9QLscIEtAL_17libp2p_rendezvous.exit, %bb.c
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtCsfoiTdJnOWBy_23libp2p_request_response16InboundRequestIdEECsg9QLscIEtAL_17libp2p_rendezvous.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtCsfoiTdJnOWBy_23libp2p_request_response17OutboundRequestIdEECsg9QLscIEtAL_17libp2p_rendezvous.exit
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdTHTBGblh3Z_11libp2p_core11peer_record10PeerRecordECsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdTHTBGblh3Z_11libp2p_core15signed_envelope14SignedEnvelopeECsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef align 8 dereferenceable(272) %0) #18
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdTHTBGblh3Z_11libp2p_core15signed_envelope14SignedEnvelopeECsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef align 8 dereferenceable(272) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdTHTBGblh3Z_11libp2p_core15signed_envelope14SignedEnvelopeECsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !11, !alias.scope !162, !noundef !6
  %1 = trunc nuw i64 %i.a to i1
  br i1 %1, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2iisHxfqoT7_15libp2p_identity7keypair9PublicKeyECsg9QLscIEtAL_17libp2p_rendezvous.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2iisHxfqoT7_15libp2p_identity7keypair9PublicKeyECsg9QLscIEtAL_17libp2p_rendezvous.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsg9QLscIEtAL_17libp2p_rendezvous.exit unwind label %bb.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2iisHxfqoT7_15libp2p_identity7keypair9PublicKeyECsg9QLscIEtAL_17libp2p_rendezvous.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsg9QLscIEtAL_17libp2p_rendezvous.exit6 unwind label %bb.d

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsg9QLscIEtAL_17libp2p_rendezvous.exit: ; preds = %bb.c, %bb.d
  %.pn = phi { ptr, i32 } [ %i.g, %bb.d ], [ %i.c, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 224
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsg9QLscIEtAL_17libp2p_rendezvous.exit8 unwind label %bb.f

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2iisHxfqoT7_15libp2p_identity7keypair9PublicKeyECsg9QLscIEtAL_17libp2p_rendezvous.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsg9QLscIEtAL_17libp2p_rendezvous.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsg9QLscIEtAL_17libp2p_rendezvous.exit6: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2iisHxfqoT7_15libp2p_identity7keypair9PublicKeyECsg9QLscIEtAL_17libp2p_rendezvous.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 224
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsg9QLscIEtAL_17libp2p_rendezvous.exit10 unwind label %bb.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsg9QLscIEtAL_17libp2p_rendezvous.exit8: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsg9QLscIEtAL_17libp2p_rendezvous.exit, %bb.e
  %.pn2 = phi { ptr, i32 } [ %i.j, %bb.e ], [ %.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsg9QLscIEtAL_17libp2p_rendezvous.exit ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 248
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsg9QLscIEtAL_17libp2p_rendezvous.exit12 unwind label %bb.f

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsg9QLscIEtAL_17libp2p_rendezvous.exit6
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsg9QLscIEtAL_17libp2p_rendezvous.exit8

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsg9QLscIEtAL_17libp2p_rendezvous.exit10: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsg9QLscIEtAL_17libp2p_rendezvous.exit6
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 248
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
  ret void

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsg9QLscIEtAL_17libp2p_rendezvous.exit8, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsg9QLscIEtAL_17libp2p_rendezvous.exit, %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsg9QLscIEtAL_17libp2p_rendezvous.exit12: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsg9QLscIEtAL_17libp2p_rendezvous.exit8
  resume { ptr, i32 } %.pn2
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec12RegistrationEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(416) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEBF_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdTHTBGblh3Z_11libp2p_core11peer_record10PeerRecordECsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef align 8 dereferenceable(384) %0) #18
          to label %common.resume unwind label %bb.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEBF_.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdTHTBGblh3Z_11libp2p_core11peer_record10PeerRecordECsg9QLscIEtAL_17libp2p_rendezvous.exit unwind label %bb.c

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEBF_.exit
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdTHTBGblh3Z_11libp2p_core15signed_envelope14SignedEnvelopeECsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %0) #18
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.c ], [ %i.b, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdTHTBGblh3Z_11libp2p_core11peer_record10PeerRecordECsg9QLscIEtAL_17libp2p_rendezvous.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEBF_.exit
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdTHTBGblh3Z_11libp2p_core15signed_envelope14SignedEnvelopeECsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %0)
  ret void

bb.e:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7message8RegisterEBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !range !10, !alias.scope !169, !noundef !6
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsg9QLscIEtAL_17libp2p_rendezvous.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsg9QLscIEtAL_17libp2p_rendezvous.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !range !10, !alias.scope !170, !noundef !6
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsg9QLscIEtAL_17libp2p_rendezvous.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsg9QLscIEtAL_17libp2p_rendezvous.exit unwind label %bb.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsg9QLscIEtAL_17libp2p_rendezvous.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !range !10, !alias.scope !171, !noundef !6
  %i.j = icmp eq i64 %i.i, -1
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsg9QLscIEtAL_17libp2p_rendezvous.exit2, label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsg9QLscIEtAL_17libp2p_rendezvous.exit
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsg9QLscIEtAL_17libp2p_rendezvous.exit2

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsg9QLscIEtAL_17libp2p_rendezvous.exit2: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsg9QLscIEtAL_17libp2p_rendezvous.exit, %bb.e
  ret void

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsg9QLscIEtAL_17libp2p_rendezvous.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCsbZN1VVVQjZP_5prost8encodingINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtB6_6sealed12BytesAdapter12replace_withINtNtNtCs1eA6bChxBZF_5bytes3buf4take4TakeQQRShEECsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef align 8 dereferenceable(24) initializes((16, 24)) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store i64 0, ptr %i.d, align 8
  %i.e = call noundef i64 @_RNvXs_NtNtCs1eA6bChxBZF_5bytes3buf4takeINtB4_4TakeQQRShENtNtB6_8buf_impl3Buf9remainingCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b) ; 2 uses
  %i.f = load i64, ptr %0, align 8, !range !7, !alias.scope !183, !noundef !6 ; 2 uses
  %i.g = icmp ugt i64 %i.e, %i.f
  br i1 %i.g, label %bb.b, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsg9QLscIEtAL_17libp2p_rendezvous.exit, !prof !12

bb.b:                                             ; preds = %bb.a
  call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0, i64 noundef %i.e, i64 noundef 1, i64 noundef 1)
  %.pre = load i64, ptr %i.d, align 8, !alias.scope !184, !noalias !185
  %.pre1 = load i64, ptr %0, align 8, !range !7, !alias.scope !184, !noalias !185
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsg9QLscIEtAL_17libp2p_rendezvous.exit

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsg9QLscIEtAL_17libp2p_rendezvous.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i64 [ %i.f, %bb.a ], [ %.pre1, %bb.b ]
  %i.i = phi i64 [ 0, %bb.a ], [ %.pre, %bb.b ]   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !186)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !noalias !187
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %2, ptr %i.j, align 8, !noalias !187
  %i.k = call noundef i64 @_RNvXs_NtNtCs1eA6bChxBZF_5bytes3buf4takeINtB4_4TakeQQRShENtNtB6_8buf_impl3Buf9remainingCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a), !noalias !186 ; 2 uses
  %i.l = sub i64 %i.h, %i.i
  %i.m = icmp ugt i64 %i.k, %i.l
  br i1 %i.m, label %bb.c, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsg9QLscIEtAL_17libp2p_rendezvous.exit.i, !prof !12

bb.c:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsg9QLscIEtAL_17libp2p_rendezvous.exit
  call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.i, i64 noundef %i.k, i64 noundef 1, i64 noundef 1)
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsg9QLscIEtAL_17libp2p_rendezvous.exit.i

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsg9QLscIEtAL_17libp2p_rendezvous.exit.i: ; preds = %bb.c, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsg9QLscIEtAL_17libp2p_rendezvous.exit
  %i.n = call noundef zeroext i1 @_RNvYINtNtNtCs1eA6bChxBZF_5bytes3buf4take4TakeQQRShENtNtB7_8buf_impl3Buf13has_remainingCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  br i1 %i.n, label %.lr.ph.i, label %_RINvXs2_NtNtCs1eA6bChxBZF_5bytes3buf7buf_mutINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_6BufMut3putINtNtB8_4take4TakeQQRShEECsg9QLscIEtAL_17libp2p_rendezvous.exit

.lr.ph.i:                                         ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsg9QLscIEtAL_17libp2p_rendezvous.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.d

bb.d:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsg9QLscIEtAL_17libp2p_rendezvous.exit.i, %.lr.ph.i
  %i.p = call { ptr, i64 } @_RNvXs_NtNtCs1eA6bChxBZF_5bytes3buf4takeINtB4_4TakeQQRShENtNtB6_8buf_impl3Buf5chunkCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a) ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsg9QLscIEtAL_17libp2p_rendezvous:bb.a
; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsg9QLscIEtAL_17libp2p_rendezvous(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !noundef !6 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !552
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !552
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 288230376151711744) %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32), !noalias !552
  %i.h = load i64, ptr %i.a, align 8, !range !11, !noalias !552, !noundef !6
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !13, !noalias !552, !noundef !6 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsg9QLscIEtAL_17libp2p_rendezvous.exit.i, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !552
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #20, !noalias !552
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsg9QLscIEtAL_17libp2p_rendezvous.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !552, !nonnull !6, !noundef !6 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !552
  store i64 %i.k, ptr %i.c, align 8, !noalias !552
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !552
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.g
  %i.s = icmp eq i64 %i.k, 0
  br i1 %i.s, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtCsbli3iz7XG76_9multiaddr9MultiaddrNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsg9QLscIEtAL_17libp2p_rendezvous.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsg9QLscIEtAL_17libp2p_rendezvous.exit.i, %_RNvXsl_Csbli3iz7XG76_9multiaddrNtB5_9MultiaddrNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i
  %.sroa.012.023.i = phi ptr [ %i.ad, %_RNvXsl_Csbli3iz7XG76_9multiaddrNtB5_9MultiaddrNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %i.f, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsg9QLscIEtAL_17libp2p_rendezvous.exit.i ] ; 6 uses
  %.sroa.7.022.i = phi i64 [ %i.ac, %_RNvXsl_Csbli3iz7XG76_9multiaddrNtB5_9MultiaddrNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsg9QLscIEtAL_17libp2p_rendezvous.exit.i ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %i.t, %_RNvXsl_Csbli3iz7XG76_9multiaddrNtB5_9MultiaddrNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %i.k, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsg9QLscIEtAL_17libp2p_rendezvous.exit.i ]
  %i.t = add i64 %.sroa.10.021.i, -1              ; 2 uses
  %i.u = icmp eq ptr %.sroa.012.023.i, %i.r
  br i1 %i.u, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtCsbli3iz7XG76_9multiaddr9MultiaddrNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsg9QLscIEtAL_17libp2p_rendezvous.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !552
  %i.v = load ptr, ptr %.sroa.012.023.i, align 8, !noalias !553, !nonnull !6, !align !9, !noundef !6
  %i.w = load ptr, ptr %i.v, align 8, !noalias !553, !nonnull !6, !noundef !6
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !noalias !553, !noundef !6
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !553, !noundef !6
  invoke void %i.w(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noundef nonnull align 8 %i.x, ptr noundef %i.z, i64 noundef %i.ab)
          to label %_RNvXsl_Csbli3iz7XG76_9multiaddrNtB5_9MultiaddrNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i unwind label %bb.e, !noalias !552, !inline_history !551

_RNvXsl_Csbli3iz7XG76_9multiaddrNtB5_9MultiaddrNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i: ; preds = %bb.c
  %i.ac = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 32
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !552
  %i.af = icmp eq i64 %i.t, 0
  br i1 %i.af, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtCsbli3iz7XG76_9multiaddr9MultiaddrNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsg9QLscIEtAL_17libp2p_rendezvous.exit, label %.lr.ph.i

bb.d:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !552
  unreachable

bb.e:                                             ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.q, align 8, !noalias !552
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #18
          to label %bb.f unwind label %bb.d, !noalias !552

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtCsbli3iz7XG76_9multiaddr9MultiaddrNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsg9QLscIEtAL_17libp2p_rendezvous.exit: ; preds = %.lr.ph.i, %_RNvXsl_Csbli3iz7XG76_9multiaddrNtB5_9MultiaddrNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsg9QLscIEtAL_17libp2p_rendezvous.exit.i
  store i64 %i.g, ptr %i.q, align 8, !noalias !552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !552
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec12RegistrationENtNtCskKLDkoKarTP_4core5clone5Clone5cloneBJ_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5.sroa.7.i.i.i.i = alloca [168 x i8], align 8 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [200 x i8], align 8               ; 8 uses
  %.sroa.0.i.i.i = alloca [248 x i8], align 8     ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.036.i = alloca [248 x i8], align 8       ; 4 uses
  %.sroa.740.i = alloca [24 x i8], align 8        ; 4 uses
  %.sroa.1043.i = alloca [24 x i8], align 8       ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.o = load i64, ptr %i.l, align 8, !noundef !6 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !590)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !591
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !591
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef range(i64 0, 22171567396285519) %i.o, i1 noundef zeroext false, i64 noundef 8, i64 noundef 416), !noalias !591
  %i.p = load i64, ptr %i.j, align 8, !range !11, !noalias !591, !noundef !6
  %i.q = trunc nuw i64 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !13, !noalias !591, !noundef !6 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  br i1 %i.q, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsg9QLscIEtAL_17libp2p_rendezvous.exit.i, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.u = load i64, ptr %i.t, align 8, !noalias !591
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.s, i64 %i.u) #20, !noalias !592
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsg9QLscIEtAL_17libp2p_rendezvous.exit.i: ; preds = %bb.a
  %i.v = load ptr, ptr %i.t, align 8, !noalias !591, !nonnull !6, !noundef !6 ; 2 uses
  %i.w = icmp ule i64 %i.o, %i.s
  tail call void @llvm.assume(i1 %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !591
  store i64 %i.s, ptr %i.k, align 8, !noalias !591
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.v, ptr %i.x, align 8, !noalias !591
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw [416 x i8], ptr %i.n, i64 %i.o
  %i.aa = icmp eq i64 %i.s, 0
  br i1 %i.aa, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec12RegistrationNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBO_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsg9QLscIEtAL_17libp2p_rendezvous.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.0.200..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i, i64 200
  %.sroa.0.224..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i, i64 224
  br label %bb.c

bb.c:                                             ; preds = %bb.u, %.lr.ph.i
  %.sroa.012.0135.i = phi ptr [ %i.n, %.lr.ph.i ], [ %i.ap, %bb.u ] ; 19 uses
  %.sroa.7.0134.i = phi i64 [ 0, %.lr.ph.i ], [ %i.aq, %bb.u ] ; 3 uses
  %.sroa.10.0133.i = phi i64 [ %i.s, %.lr.ph.i ], [ %i.an, %bb.u ]
  %i.an = add i64 %.sroa.10.0133.i, -1            ; 2 uses
  %i.ao = icmp eq ptr %.sroa.012.0135.i, %i.z
  br i1 %i.ao, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec12RegistrationNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBO_.exit, label %bb.d

.loopexit.i:                                      ; preds = %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.d:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.012.0135.i, i64 416
  %i.aq = add nuw nsw i64 %.sroa.7.0134.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !593)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !594
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.012.0135.i, i64 384
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ar)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !592

.noexc.i:                                         ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !595)
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.012.0135.i, i64 376
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !596, !noalias !597, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !598
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.012.0135.i, i64 272
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.au)
          to label %.noexc.i.i unwind label %bb.s, !noalias !599

.noexc.i.i:                                       ; preds = %.noexc.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !601
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.7.i.i.i.i)
  %i.av = load i64, ptr %.sroa.012.0135.i, align 8, !range !11, !alias.scope !602, !noalias !603, !noundef !6
  %i.aw = trunc nuw i64 %i.av to i1
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.012.0135.i, i64 16 ; 2 uses
  br i1 %i.aw, label %bb.e, label %bb.h

bb.e:                                             ; preds = %.noexc.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !604)
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.012.0135.i, i64 24
  %i.az = load ptr, ptr %i.ax, align 8, !alias.scope !605, !noalias !606, !nonnull !6, !noundef !6
  %i.ba = load i64, ptr %i.ay, align 8, !alias.scope !605, !noalias !606, !noundef !6 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !607
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef range(i64 0, -9223372036854775808) %i.ba, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i.i.i unwind label %.loopexit50.i, !noalias !608

.noexc.i.i.i:                                     ; preds = %bb.e
  %i.bb = load i64, ptr %i.d, align 8, !range !11, !noalias !607, !noundef !6
  %i.bc = trunc nuw i64 %i.bb to i1
  %i.bd = load i64, ptr %i.ab, align 8, !range !13, !noalias !607, !noundef !6 ; 4 uses
  br i1 %i.bc, label %bb.f, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i.i.i.i.i, !prof !12

bb.f:                                             ; preds = %.noexc.i.i.i
  %i.be = load i64, ptr %i.ac, align 8, !noalias !607
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.bd, i64 %i.be) #20
          to label %.noexc1.i.i.i unwind label %.loopexit.split-lp51.i, !noalias !608

.noexc1.i.i.i:                                    ; preds = %bb.f
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i.i.i.i.i: ; preds = %.noexc.i.i.i
  %i.bf = load ptr, ptr %i.ac, align 8, !noalias !607, !nonnull !6, !noundef !6 ; 3 uses
  %i.bg = icmp ule i64 %i.ba, %i.bd
  tail call void @llvm.assume(i1 %i.bg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !607
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i.i.i.i.i, label %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bf, ptr nonnull readonly align 1 %i.az, i64 range(i64 0, -9223372036854775808) %i.ba, i1 false), !noalias !609
  br label %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i.i.i

bb.h:                                             ; preds = %.noexc.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.012.0135.i, i64 8
  %.sroa.032.0.copyload.i.i.i.i = load i64, ptr %i.bh, align 8, !alias.scope !602, !noalias !603
  %.sroa.433.0.copyload.i.i.i.i = load ptr, ptr %i.ax, align 8, !alias.scope !602, !noalias !603
  %.sroa.5.0..sroa_idx34.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.0135.i, i64 24
  %.sroa.5.0.copyload.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx34.i.i.i.i, align 8, !alias.scope !602, !noalias !603
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.0135.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.5.sroa.7.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(168) %.sroa.6.0..sroa_idx.i.i.i.i, i64 168, i1 false), !noalias !603
  br label %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i.i.i

_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i.i.i: ; preds = %bb.h, %bb.g, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i.i.i.i.i
  %.sroa.5.sroa.6.0.i.i.i.i = phi i64 [ %.sroa.5.0.copyload.i.i.i.i, %bb.h ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i.i.i.i.i ], [ %i.ba, %bb.g ]
  %.sroa.5.sroa.5.0.i.i.i.i = phi ptr [ %.sroa.433.0.copyload.i.i.i.i, %bb.h ], [ %i.bf, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i.i.i.i.i ], [ %i.bf, %bb.g ]
  %.sroa.5.sroa.0.0.i.i.i.i = phi i64 [ %.sroa.032.0.copyload.i.i.i.i, %bb.h ], [ %i.bd, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i.i.i.i.i ], [ %i.bd, %bb.g ]
  %i.bi = phi i64 [ 0, %bb.h ], [ 1, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i.i.i.i.i ], [ 1, %bb.g ] ; 2 uses
  store i64 %i.bi, ptr %i.g, align 8, !noalias !601
  store i64 %.sroa.5.sroa.0.0.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !601
  store ptr %.sroa.5.sroa.5.0.i.i.i.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !601
  store i64 %.sroa.5.sroa.6.0.i.i.i.i, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !601
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.5.sroa.7.i.i.i.i, i64 168, i1 false), !noalias !601
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.7.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !601
  tail call void @llvm.experimental.noalias.scope.decl(metadata !610)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !611)
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.012.0135.i, i64 216
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.012.0135.i, i64 208
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !612, !noalias !613, !nonnull !6, !noundef !6
  %i.bm = load i64, ptr %i.bj, align 8, !alias.scope !612, !noalias !613, !noundef !6 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !614)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !615
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef range(i64 0, -9223372036854775808) %i.bm, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i.i.i.i unwind label %.loopexit55.i, !noalias !616

.noexc.i.i.i.i:                                   ; preds = %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i.i.i
  %i.bn = load i64, ptr %i.c, align 8, !range !11, !noalias !615, !noundef !6
  %i.bo = trunc nuw i64 %i.bn to i1
  %i.bp = load i64, ptr %i.ad, align 8, !range !13, !noalias !615, !noundef !6 ; 3 uses
  br i1 %i.bo, label %bb.i, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i4.i.i.i.i, !prof !12

bb.i:                                             ; preds = %.noexc.i.i.i.i
  %i.bq = load i64, ptr %i.ae, align 8, !noalias !615
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.bp, i64 %i.bq) #20
          to label %.noexc6.i.i.i.i unwind label %.loopexit.split-lp56.i, !noalias !616

.noexc6.i.i.i.i:                                  ; preds = %bb.i
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i4.i.i.i.i: ; preds = %.noexc.i.i.i.i
  %i.br = load ptr, ptr %i.ae, align 8, !noalias !615, !nonnull !6, !noundef !6 ; 2 uses
  %i.bs = icmp ule i64 %i.bm, %i.bp
  tail call void @llvm.assume(i1 %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !615
  store i64 %i.bp, ptr %i.f, align 8, !alias.scope !617, !noalias !618
  store ptr %i.br, ptr %i.af, align 8, !alias.scope !617, !noalias !618
  store i64 0, ptr %i.ag, align 8, !alias.scope !617, !noalias !618
  %.not.i.i5.i.i.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not.i.i5.i.i.i.i, label %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsg9QLscIEtAL_17libp2p_rendezvous.exit7.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i4.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.br, ptr nonnull readonly align 1 %i.bl, i64 range(i64 0, -9223372036854775808) %i.bm, i1 false), !noalias !619
  store i64 %i.bm, ptr %i.ag, align 8, !alias.scope !617, !noalias !618
  br label %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsg9QLscIEtAL_17libp2p_rendezvous.exit7.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsg9QLscIEtAL_17libp2p_rendezvous.exit21.i.i.i.i, %.loopexit.split-lp56.i, %.loopexit55.i
  %.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsg9QLscIEtAL_17libp2p_rendezvous.exit21.i.i.i.i ], [ %lpad.loopexit57.i, %.loopexit55.i ], [ %lpad.loopexit.split-lp58.i, %.loopexit.split-lp56.i ] ; 2 uses
  %2 = trunc nuw i64 %i.bi to i1
  br i1 %2, label %bb.k, label %.body.i.i.i

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i.i.i)
          to label %.body.i.i.i unwind label %bb.q, !noalias !616

.loopexit55.i:                                    ; preds = %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i.i.i
  %lpad.loopexit57.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i.i.i

.loopexit.split-lp56.i:                           ; preds = %bb.i
  %lpad.loopexit.split-lp58.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i.i.i

_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsg9QLscIEtAL_17libp2p_rendezvous.exit7.i.i.i.i: ; preds = %bb.j, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i4.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !601
  tail call void @llvm.experimental.noalias.scope.decl(metadata !620)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !621)
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.012.0135.i, i64 240
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.012.0135.i, i64 232
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !622, !noalias !623, !nonnull !6, !noundef !6
  %i.bw = load i64, ptr %i.bt, align 8, !alias.scope !622, !noalias !623, !noundef !6 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !624)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !625
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, -9223372036854775808) %i.bw, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc11.i.i.i.i unwind label %.loopexit60.i, !noalias !616

.noexc11.i.i.i.i:                                 ; preds = %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsg9QLscIEtAL_17libp2p_rendezvous.exit7.i.i.i.i
  %i.bx = load i64, ptr %i.b, align 8, !range !11, !noalias !625, !noundef !6
  %i.by = trunc nuw i64 %i.bx to i1
  %i.bz = load i64, ptr %i.ah, align 8, !range !13, !noalias !625, !noundef !6 ; 3 uses
  br i1 %i.by, label %bb.l, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i9.i.i.i.i, !prof !12

bb.l:                                             ; preds = %.noexc11.i.i.i.i
  %i.ca = load i64, ptr %i.ai, align 8, !noalias !625
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.bz, i64 %i.ca) #20
          to label %.noexc12.i.i.i.i unwind label %.loopexit.split-lp61.i, !noalias !616

.noexc12.i.i.i.i:                                 ; preds = %bb.l
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i9.i.i.i.i: ; preds = %.noexc11.i.i.i.i
  %i.cb = load ptr, ptr %i.ai, align 8, !noalias !625, !nonnull !6, !noundef !6 ; 2 uses
  %i.cc = icmp ule i64 %i.bw, %i.bz
  tail call void @llvm.assume(i1 %i.cc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !625
  store i64 %i.bz, ptr %i.e, align 8, !alias.scope !626, !noalias !627
  store ptr %i.cb, ptr %i.aj, align 8, !alias.scope !626, !noalias !627
  store i64 0, ptr %i.ak, align 8, !alias.scope !626, !noalias !627
  %.not.i.i10.i.i.i.i = icmp eq i64 %i.bw, 0
  br i1 %.not.i.i10.i.i.i.i, label %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsg9QLscIEtAL_17libp2p_rendezvous.exit13.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i9.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cb, ptr nonnull readonly align 1 %i.bv, i64 range(i64 0, -9223372036854775808) %i.bw, i1 false), !noalias !628
  store i64 %i.bw, ptr %i.ak, align 8, !alias.scope !626, !noalias !627
  br label %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsg9QLscIEtAL_17libp2p_rendezvous.exit13.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsg9QLscIEtAL_17libp2p_rendezvous.exit21.i.i.i.i: ; preds = %bb.p, %.loopexit.split-lp61.i, %.loopexit60.i
  %.pn.i.i.i.i = phi { ptr, i32 } [ %lpad.phi69.i, %bb.p ], [ %lpad.loopexit62.i, %.loopexit60.i ], [ %lpad.loopexit.split-lp63.i, %.loopexit.split-lp61.i ]
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i.i.i unwind label %bb.q, !noalias !616

.loopexit60.i:                                    ; preds = %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsg9QLscIEtAL_17libp2p_rendezvous.exit7.i.i.i.i
  %lpad.loopexit62.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsg9QLscIEtAL_17libp2p_rendezvous.exit21.i.i.i.i

.loopexit.split-lp61.i:                           ; preds = %bb.l
  %lpad.loopexit.split-lp63.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsg9QLscIEtAL_17libp2p_rendezvous.exit21.i.i.i.i

_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsg9QLscIEtAL_17libp2p_rendezvous.exit13.i.i.i.i: ; preds = %bb.m, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i9.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !629)
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.012.0135.i, i64 264
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.012.0135.i, i64 256
  %i.cf = load ptr, ptr %i.ce, align 8, !alias.scope !630, !noalias !631, !nonnull !6, !noundef !6
  %i.cg = load i64, ptr %i.cd, align 8, !alias.scope !630, !noalias !631, !noundef !6 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !632
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %i.cg, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc17.i.i.i.i unwind label %.loopexit65.i, !noalias !616

.noexc17.i.i.i.i:                                 ; preds = %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsg9QLscIEtAL_17libp2p_rendezvous.exit13.i.i.i.i
  %i.ch = load i64, ptr %i.a, align 8, !range !11, !noalias !632, !noundef !6
  %i.ci = trunc nuw i64 %i.ch to i1
  %i.cj = load i64, ptr %i.al, align 8, !range !13, !noalias !632, !noundef !6 ; 3 uses
  br i1 %i.ci, label %bb.n, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i15.i.i.i.i, !prof !12

bb.n:                                             ; preds = %.noexc17.i.i.i.i
  %i.ck = load i64, ptr %i.am, align 8, !noalias !632
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.cj, i64 %i.ck) #20
          to label %.noexc18.i.i.i.i unwind label %.loopexit.split-lp66.i, !noalias !616

.noexc18.i.i.i.i:                                 ; preds = %bb.n
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i15.i.i.i.i: ; preds = %.noexc17.i.i.i.i
  %i.cl = load ptr, ptr %i.am, align 8, !noalias !632, !nonnull !6, !noundef !6 ; 2 uses
  %i.cm = icmp ule i64 %i.cg, %i.cj
  tail call void @llvm.assume(i1 %i.cm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !632
  %.not.i.i16.i.i.i.i = icmp eq i64 %i.cg, 0
  br i1 %.not.i.i16.i.i.i.i, label %bb.u, label %bb.o

bb.o:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i15.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cl, ptr nonnull readonly align 1 %i.cf, i64 range(i64 0, -9223372036854775808) %i.cg, i1 false), !noalias !633
  br label %bb.u

.loopexit65.i:                                    ; preds = %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsg9QLscIEtAL_17libp2p_rendezvous.exit13.i.i.i.i
  %lpad.loopexit67.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp66.i:                           ; preds = %bb.n
  %lpad.loopexit.split-lp68.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp66.i, %.loopexit65.i
  %lpad.phi69.i = phi { ptr, i32 } [ %lpad.loopexit67.i, %.loopexit65.i ], [ %lpad.loopexit.split-lp68.i, %.loopexit.split-lp66.i ]
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsg9QLscIEtAL_17libp2p_rendezvous.exit21.i.i.i.i unwind label %bb.q, !noalias !616

bb.q:                                             ; preds = %bb.p, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsg9QLscIEtAL_17libp2p_rendezvous.exit21.i.i.i.i, %bb.k
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !616
  unreachable

.loopexit50.i:                                    ; preds = %bb.e
  %lpad.loopexit52.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp51.i:                           ; preds = %bb.f
  %lpad.loopexit.split-lp53.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp51.i, %.loopexit50.i, %bb.k, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i.i.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i.i.i ], [ %.pn.pn.i.i.i.i, %bb.k ], [ %lpad.loopexit52.i, %.loopexit50.i ], [ %lpad.loopexit.split-lp53.i, %.loopexit.split-lp51.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #18
          to label %.body.i.i unwind label %bb.r, !noalias !608

bb.r:                                             ; preds = %.body.i.i.i
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !608
  unreachable

bb.s:                                             ; preds = %.noexc.i
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.s, %.body.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.cp, %bb.s ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.w unwind label %bb.t, !noalias !599

bb.t:                                             ; preds = %.body.i.i
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !599
  unreachable

bb.u:                                             ; preds = %bb.o, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i15.i.i.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.012.0135.i, i64 296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(200) %i.g, i64 200, i1 false), !noalias !594
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.200..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !594
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.224..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !601
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.740.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.740.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !598
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.012.0135.i, i64 408
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !634, !noalias !599, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1043.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1043.i, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !591
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.036.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.036.i, ptr noundef nonnull align 8 dereferenceable(248) %.sroa.0.i.i.i, i64 248, i1 false), !noalias !591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !594
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.cu = getelementptr inbounds nuw [416 x i8], ptr %i.v, i64 %.sroa.7.0134.i ; 9 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.cu, ptr noundef nonnull align 8 dereferenceable(248) %.sroa.036.i, i64 248, i1 false), !noalias !592
  %.sroa.437.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 248
  store i64 %i.cj, ptr %.sroa.437.0..sroa_idx.i, align 8, !noalias !592
  %.sroa.538.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 256
  store ptr %i.cl, ptr %.sroa.538.0..sroa_idx.i, align 8, !noalias !592
  %.sroa.639.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 264
  store i64 %i.cg, ptr %.sroa.639.0..sroa_idx.i, align 8, !noalias !592
  %.sroa.740.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.740.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.740.i, i64 24, i1 false), !noalias !592
  %.sroa.841.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 296
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.841.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(80) %i.cr, i64 80, i1 false), !noalias !592
  %.sroa.942.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 376
  store i64 %i.at, ptr %.sroa.942.0..sroa_idx.i, align 8, !noalias !592
end_hunk_1
begin_hunk_2_@_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCskKLDkoKarTP_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtBK_6future6future6Futurep6OutputTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceENtNtBK_6marker4SendEL_EEENtNtNtBK_3ops4drop4Drop4dropB2Z_:bb.a

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !661)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtCsbli3iz7XG76_9multiaddr9MultiaddrECsg9QLscIEtAL_17libp2p_rendezvous.exit, label %.lr.ph

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsg9QLscIEtAL_17libp2p_rendezvous.exit.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtCsbli3iz7XG76_9multiaddr9MultiaddrECsg9QLscIEtAL_17libp2p_rendezvous.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsg9QLscIEtAL_17libp2p_rendezvous.exit.i
  %.sroa.0.0.i1 = phi i64 [ %i.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsg9QLscIEtAL_17libp2p_rendezvous.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.0.i1 ; 4 uses
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !662)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !663)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !664)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !665, !noundef !6
  %i.k = load ptr, ptr %i.g, align 8, !alias.scope !665, !nonnull !6, !align !9, !noundef !6
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !noalias !665, !nonnull !6, !noundef !6
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !665, !noundef !6
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !665, !noundef !6
  invoke void %i.m(ptr noundef %i.j, ptr noundef %i.o, i64 noundef %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsg9QLscIEtAL_17libp2p_rendezvous.exit.i unwind label %bb.b, !noalias !661, !inline_history !0

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsg9QLscIEtAL_17libp2p_rendezvous.exit7.i: ; preds = %.lr.ph3
  %i.r = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.s = icmp eq i64 %i.r, %i.d
  br i1 %i.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsg9QLscIEtAL_17libp2p_rendezvous.exit7.i._crit_edge, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = icmp eq i64 %i.h, %i.d
  br i1 %i.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsg9QLscIEtAL_17libp2p_rendezvous.exit7.i._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsg9QLscIEtAL_17libp2p_rendezvous.exit7.i
  %.sroa.0.1.i2 = phi i64 [ %i.r, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsg9QLscIEtAL_17libp2p_rendezvous.exit7.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.1.i2 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !666)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !667)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !668)
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !669, !noundef !6
  %i.y = load ptr, ptr %i.v, align 8, !alias.scope !669, !nonnull !6, !align !9, !noundef !6
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !669, !nonnull !6, !noundef !6
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !669, !noundef !6
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !669, !noundef !6
  invoke void %i.aa(ptr noundef %i.x, ptr noundef %i.ac, i64 noundef %i.ae)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsg9QLscIEtAL_17libp2p_rendezvous.exit7.i unwind label %bb.c, !noalias !661, !inline_history !0

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsg9QLscIEtAL_17libp2p_rendezvous.exit7.i._crit_edge: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsg9QLscIEtAL_17libp2p_rendezvous.exit7.i, %bb.b
  resume { ptr, i32 } %i.t

bb.c:                                             ; preds = %.lr.ph3
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !661
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtCsbli3iz7XG76_9multiaddr9MultiaddrECsg9QLscIEtAL_17libp2p_rendezvous.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECsg9QLscIEtAL_17libp2p_rendezvous.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCsfoiTdJnOWBy_23libp2p_request_response10ConnectionENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtCsfoiTdJnOWBy_23libp2p_request_response10ConnectionECsg9QLscIEtAL_17libp2p_rendezvous.exit, label %.lr.ph

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsfoiTdJnOWBy_23libp2p_request_response10ConnectionECsg9QLscIEtAL_17libp2p_rendezvous.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtCsfoiTdJnOWBy_23libp2p_request_response17OutboundRequestIdEECsg9QLscIEtAL_17libp2p_rendezvous.exit4.i.i
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtCsfoiTdJnOWBy_23libp2p_request_response10ConnectionECsg9QLscIEtAL_17libp2p_rendezvous.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsfoiTdJnOWBy_23libp2p_request_response10ConnectionECsg9QLscIEtAL_17libp2p_rendezvous.exit.i
  %.sroa.0.0.i22 = phi i64 [ %i.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsfoiTdJnOWBy_23libp2p_request_response10ConnectionECsg9QLscIEtAL_17libp2p_rendezvous.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [136 x i8], ptr %i.b, i64 %.sroa.0.0.i22 ; 8 uses
  %i.h = add nuw nsw i64 %.sroa.0.0.i22, 1        ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !682)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  tail call void @llvm.experimental.noalias.scope.decl(metadata !683)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !684, !noundef !6 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEECsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !685)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !686)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !687)
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !688, !noundef !6
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !noalias !689, !nonnull !6, !noundef !6
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !688, !noundef !6
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !688, !noundef !6
  invoke void %i.o(ptr noundef %i.m, ptr noundef %i.q, i64 noundef %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEECsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i unwind label %bb.c, !noalias !682, !inline_history !1

bb.c:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtCsfoiTdJnOWBy_23libp2p_request_response17OutboundRequestIduEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtCsfoiTdJnOWBy_23libp2p_request_response17OutboundRequestIdEECsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i unwind label %bb.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEECsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i: ; preds = %bb.b, %.lr.ph
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtCsfoiTdJnOWBy_23libp2p_request_response17OutboundRequestIduEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtCsfoiTdJnOWBy_23libp2p_request_response17OutboundRequestIdEECsg9QLscIEtAL_17libp2p_rendezvous.exit4.i.i unwind label %bb.d

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtCsfoiTdJnOWBy_23libp2p_request_response17OutboundRequestIdEECsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i: ; preds = %bb.d, %bb.c
  %.pn.i.i = phi { ptr, i32 } [ %i.v, %bb.d ], [ %i.t, %bb.c ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtCsfoiTdJnOWBy_23libp2p_request_response16InboundRequestIduEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.u)
          to label %.body.i unwind label %bb.e

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEECsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtCsfoiTdJnOWBy_23libp2p_request_response17OutboundRequestIdEECsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtCsfoiTdJnOWBy_23libp2p_request_response17OutboundRequestIdEECsg9QLscIEtAL_17libp2p_rendezvous.exit4.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEECsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtCsfoiTdJnOWBy_23libp2p_request_response16InboundRequestIduEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.w)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsfoiTdJnOWBy_23libp2p_request_response10ConnectionECsg9QLscIEtAL_17libp2p_rendezvous.exit.i unwind label %bb.g

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtCsfoiTdJnOWBy_23libp2p_request_response17OutboundRequestIdEECsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i, %bb.c
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.f:                                             ; preds = %.lr.ph24
  %i.y = add i64 %.sroa.0.1.i23, 1                ; 2 uses
  %i.z = icmp eq i64 %i.y, %i.d
  br i1 %i.z, label %._crit_edge, label %.lr.ph24

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtCsfoiTdJnOWBy_23libp2p_request_response17OutboundRequestIdEECsg9QLscIEtAL_17libp2p_rendezvous.exit4.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtCsfoiTdJnOWBy_23libp2p_request_response17OutboundRequestIdEECsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.aa, %bb.g ], [ %.pn.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtCsfoiTdJnOWBy_23libp2p_request_response17OutboundRequestIdEECsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i ]
  %i.ab = icmp eq i64 %i.h, %i.d
  br i1 %i.ab, label %._crit_edge, label %.lr.ph24

.lr.ph24:                                         ; preds = %.body.i, %bb.f
  %.sroa.0.1.i23 = phi i64 [ %i.y, %bb.f ], [ %i.h, %.body.i ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [136 x i8], ptr %i.b, i64 %.sroa.0.1.i23
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsfoiTdJnOWBy_23libp2p_request_response10ConnectionECsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef align 8 dereferenceable(136) %i.ac) #18
          to label %bb.f unwind label %bb.h

._crit_edge:                                      ; preds = %bb.f, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

bb.h:                                             ; preds = %.lr.ph24
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtCsfoiTdJnOWBy_23libp2p_request_response10ConnectionECsg9QLscIEtAL_17libp2p_rendezvous.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsfoiTdJnOWBy_23libp2p_request_response10ConnectionECsg9QLscIEtAL_17libp2p_rendezvous.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECsg9QLscIEtAL_17libp2p_rendezvous.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECsg9QLscIEtAL_17libp2p_rendezvous.exit.i
  %.sroa.0.09.i = phi i64 [ %i.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECsg9QLscIEtAL_17libp2p_rendezvous.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.09.i ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !708)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !709)
  %i.h = load i64, ptr %i.f, align 8, !range !11, !alias.scope !710, !noundef !6
  %1 = trunc nuw i64 %i.h to i1
  br i1 %1, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECsg9QLscIEtAL_17libp2p_rendezvous.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !711)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !712)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !713, !nonnull !6, !noundef !6
  %i.k = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !714
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECsg9QLscIEtAL_17libp2p_rendezvous.exit.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceE9drop_slowCs6b9j1MKPRPC_12libp2p_swarm(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECsg9QLscIEtAL_17libp2p_rendezvous.exit.i unwind label %bb.d

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECsg9QLscIEtAL_17libp2p_rendezvous.exit.i: ; preds = %bb.c, %bb.b, %.lr.ph.i
  %i.m = icmp eq i64 %i.g, %i.d
  br i1 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECsg9QLscIEtAL_17libp2p_rendezvous.exit, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = icmp eq i64 %i.g, %i.d
  br i1 %i.o, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECsg9QLscIEtAL_17libp2p_rendezvous.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.q, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECsg9QLscIEtAL_17libp2p_rendezvous.exit8.i ], [ %i.g, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.110.i ; 2 uses
  %i.q = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !715)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !716)
  %i.r = load i64, ptr %i.p, align 8, !range !11, !alias.scope !717, !noundef !6
  %2 = trunc nuw i64 %i.r to i1
  br i1 %2, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECsg9QLscIEtAL_17libp2p_rendezvous.exit8.i

bb.e:                                             ; preds = %.lr.ph12.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !718)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !719)
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !720, !nonnull !6, !noundef !6
  %i.u = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !721
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECsg9QLscIEtAL_17libp2p_rendezvous.exit8.i

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceE9drop_slowCs6b9j1MKPRPC_12libp2p_swarm(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.s) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECsg9QLscIEtAL_17libp2p_rendezvous.exit8.i unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECsg9QLscIEtAL_17libp2p_rendezvous.exit8.i: ; preds = %bb.f, %bb.e, %.lr.ph12.i
  %i.w = icmp eq i64 %i.q, %i.d
  br i1 %i.w, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECsg9QLscIEtAL_17libp2p_rendezvous.exit8.i, %bb.d
  resume { ptr, i32 } %i.n

bb.g:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECsg9QLscIEtAL_17libp2p_rendezvous.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECsg9QLscIEtAL_17libp2p_rendezvous.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec12RegistrationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec12RegistrationEBG_.exit, label %.lr.ph

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec12RegistrationEBF_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdTHTBGblh3Z_11libp2p_core11peer_record10PeerRecordECsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec12RegistrationEBG_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec12RegistrationEBF_.exit.i
  %.sroa.0.0.i21 = phi i64 [ %i.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec12RegistrationEBF_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [416 x i8], ptr %i.b, i64 %.sroa.0.0.i21 ; 5 uses
  %i.h = add nuw nsw i64 %.sroa.0.0.i21, 1        ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEBF_.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdTHTBGblh3Z_11libp2p_core11peer_record10PeerRecordECsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(416) %i.g) #18
          to label %.body.i unwind label %bb.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEBF_.exit.i.i: ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdTHTBGblh3Z_11libp2p_core11peer_record10PeerRecordECsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEBF_.exit.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdTHTBGblh3Z_11libp2p_core15signed_envelope14SignedEnvelopeECsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(416) %i.g) #18
          to label %.body.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdTHTBGblh3Z_11libp2p_core11peer_record10PeerRecordECsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEBF_.exit.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdTHTBGblh3Z_11libp2p_core15signed_envelope14SignedEnvelopeECsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(416) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec12RegistrationEBF_.exit.i unwind label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.f:                                             ; preds = %.lr.ph23
  %i.o = add i64 %.sroa.0.1.i22, 1                ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.d
  br i1 %i.p, label %._crit_edge, label %.lr.ph23

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdTHTBGblh3Z_11libp2p_core11peer_record10PeerRecordECsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.g, %bb.c, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.q, %bb.g ], [ %i.l, %bb.c ], [ %i.j, %bb.b ]
  %i.r = icmp eq i64 %i.h, %i.d
  br i1 %i.r, label %._crit_edge, label %.lr.ph23

.lr.ph23:                                         ; preds = %.body.i, %bb.f
  %.sroa.0.1.i22 = phi i64 [ %i.o, %bb.f ], [ %i.h, %.body.i ] ; 2 uses
  %i.s = getelementptr inbounds nuw [416 x i8], ptr %i.b, i64 %.sroa.0.1.i22
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec12RegistrationEBF_(ptr noalias nofree noundef align 8 dereferenceable(416) %i.s) #18
          to label %bb.f unwind label %bb.h

._crit_edge:                                      ; preds = %bb.f, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

bb.h:                                             ; preds = %.lr.ph23
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec12RegistrationEBG_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec12RegistrationEBF_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsg9QLscIEtAL_17libp2p_rendezvous6server14RegistrationIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7message8RegisterENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBP_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7message8RegisterEBM_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7message8RegisterEBL_.exit.i
  %.sroa.0.010.i = phi i64 [ %i.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7message8RegisterEBL_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %.sroa.0.010.i ; 3 uses
  %i.g = add nuw nsw i64 %.sroa.0.010.i, 1        ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !range !10, !alias.scope !732, !noundef !6
  %i.j = icmp eq i64 %i.i, -1
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !range !10, !alias.scope !733, !noundef !6
  %i.n = icmp eq i64 %i.m, -1
  br i1 %i.n, label %.body.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body.i unwind label %bb.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i: ; preds = %bb.b, %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !range !10, !alias.scope !734, !noundef !6
  %i.q = icmp eq i64 %i.p, -1
  br i1 %i.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7message8RegisterEBL_.exit.i, label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7message8RegisterEBL_.exit.i unwind label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7message8RegisterEBL_.exit.i: ; preds = %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsg9QLscIEtAL_17libp2p_rendezvous.exit.i.i
  %i.s = icmp eq i64 %i.g, %i.d
  br i1 %i.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5proto13rendezvous_pb7message8RegisterEBM_.exit, label %.lr.ph.i

bb.g:                                             ; preds = %.lr.ph
  %i.t = add i64 %.sroa.0.1.i22, 1                ; 2 uses
  %i.u = icmp eq i64 %i.t, %i.d
  br i1 %i.u, label %._crit_edge, label %.lr.ph

bb.h:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.h, %bb.d, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.v, %bb.h ], [ %i.k, %bb.d ], [ %i.k, %bb.c ]
  %i.w = icmp eq i64 %i.g, %i.d
  br i1 %i.w, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i, %bb.g
  %.sroa.0.1.i22 = phi i64 [ %i.t, %bb.g ], [ %i.g, %.body.i ] ; 2 uses
  %i.x = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %.sroa.0.1.i22
end_hunk_2

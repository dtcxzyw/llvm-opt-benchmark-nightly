Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_rendezvous-2ad7321e65efd16c.libp2p_rendezvous.bc366a826b06a5dd-cgu.04?download=true
inline.NumInlined: 274
inline.NumDeleted: 156
begin_hunk_0_@_RNvMNtCsg9QLscIEtAL_17libp2p_rendezvous6clientNtB2_9Behaviour8register:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.aa, align 8
  %i.ab = invoke noundef i64 @_RNvMs8_CsfoiTdJnOWBy_23libp2p_request_responseINtB5_9BehaviourNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5CodecE27send_request_with_addressesB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(360) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(424) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.m unwind label %bb.h

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %3, i64 80, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 648
  call void @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtCsfoiTdJnOWBy_23libp2p_request_response17OutboundRequestIdTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertB2E_(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ad, i64 noundef %i.ab, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 4 uses
  %i.af = load i64, ptr %i.ae, align 8, !range !11, !alias.scope !313, !noundef !4
  %i.ag = icmp eq i64 %i.af, -1
  br i1 %i.ag, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEEEB1Q_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEEB1u_.exit.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEEB1u_.exit.i: ; preds = %bb.n
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEEEB1Q_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEEEB1Q_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEEB1u_.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.q

bb.q:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEBF_.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEEEB1Q_.exit
  ret void

bb.r:                                             ; preds = %bb.k
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdTHTBGblh3Z_11libp2p_core11peer_record10PeerRecordECsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef align 8 dereferenceable(384) %i.h) #22
          to label %.thread unwind label %bb.s

bb.s:                                             ; preds = %.thread, %bb.r
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECsg9QLscIEtAL_17libp2p_rendezvous.exit: ; preds = %bb.f, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEBF_.exit unwind label %bb.t

bb.t:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECsg9QLscIEtAL_17libp2p_rendezvous.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

common.resume:                                    ; preds = %.thread, %bb.o, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.ak, %bb.t ], [ %.pn24, %.thread ], [ %i.ah, %bb.o ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEBF_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECsg9QLscIEtAL_17libp2p_rendezvous.exit
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.q

.thread:                                          ; preds = %bb.r, %bb.e, %bb.h
  %.pn24 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.r ], [ %i.v, %bb.h ], [ %i.t, %bb.e ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %2) #22
          to label %common.resume unwind label %bb.s
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCsg9QLscIEtAL_17libp2p_rendezvous6clientNtB5_9Behaviour21discovered_peer_addrs(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 captures(address, read_provenance) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 768
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !324, !noundef !4
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 744
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 776
  %i.f = tail call noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdECsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %2) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !326)
  %i.g = lshr i64 %i.f, 57
  %i.h = trunc nuw nsw i64 %i.g to i8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 752
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !327, !noundef !4 ; 2 uses
  %i.k = load ptr, ptr %i.d, align 8, !alias.scope !327, !nonnull !4, !noundef !4 ; 2 uses
  %i.l = insertelement <16 x i8> poison, i8 %i.h, i64 0
  %i.m = shufflevector <16 x i8> %i.l, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ad, %bb.e ]
  %.pn.i.i = phi i64 [ %i.f, %bb.b ], [ %i.ae, %bb.e ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.j      ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.n, align 1, !noalias !328 ; 2 uses
  %i.o = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %i.m
  %i.p = bitcast <16 x i1> %i.o to i16            ; 2 uses
  %.not.i.not30.i.i = icmp eq i16 %i.p, 0
  br i1 %.not.i.not30.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.06.0.i31.i.i = phi i16 [ %i.ac, %bb.d ], [ %i.p, %bb.c ] ; 3 uses
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = add i64 %.sroa.01.0.i.i.i, %i.r
  %i.t = and i64 %i.s, %i.j
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds [128 x i8], ptr %i.k, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -128
  %i.x = tail call noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdINtB2_10EquivalentBq_E10equivalentCsg9QLscIEtAL_17libp2p_rendezvous(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.w), !noalias !329
  br i1 %i.x, label %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEENtNtNtB1L_4hash6random11RandomStateE3getBO_EB2A_.exit, label %bb.d, !prof !19

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.y = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.z = bitcast <16 x i1> %i.y to i16
  %i.aa = icmp eq i16 %i.z, 0
  br i1 %i.aa, label %bb.e, label %select.unfold, !prof !20

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ab = add i16 %.sroa.06.0.i31.i.i, -1
  %i.ac = and i16 %i.ab, %.sroa.06.0.i31.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ad = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.ae = add i64 %.sroa.01.0.i.i.i, %i.ad
  br label %bb.c

_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEENtNtNtB1L_4hash6random11RandomStateE3getBO_EB2A_.exit: ; preds = %.lr.ph.i.i
  %i.af = getelementptr inbounds i8, ptr %i.v, i64 -48
  %.sroa.3.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE4iterBR_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %.sroa.3.sroa.7.0..sroa_idx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.af)
  store ptr null, ptr %0, align 8
  %.sroa.3.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.3.sroa.5.0..sroa_idx, align 8
  br label %bb.f

select.unfold:                                    ; preds = %._crit_edge.i.i, %bb.a
  tail call void @_RNvXse_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEEENtNtBb_7default7Default7defaultB21_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0)
  br label %bb.f

bb.f:                                             ; preds = %select.unfold, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEENtNtNtB1L_4hash6random11RandomStateE3getBO_EB2A_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNCNvMs0_NtCsg9QLscIEtAL_17libp2p_rendezvous6clientNtBY_9Behaviour15handle_response00INtB7_5FnMutTRNtCsbli3iz7XG76_9multiaddr9MultiaddrEE8call_mutB10_(ptr dead_on_unwind noalias nofree noundef writable sret([592 x i8]) align 8 captures(address) dereferenceable(592) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef nonnull align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.5.i = alloca [80 x i8], align 8          ; 4 uses
  %i.e = alloca [72 x i8], align 8                ; 14 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = load ptr, ptr %1, align 8, !nonnull !4, !align !12, !noundef !4 ; 2 uses
  %.val = load ptr, ptr %i.g, align 8, !nonnull !4, !align !12, !noundef !4
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %.val1 = load ptr, ptr %i.h, align 8, !nonnull !4, !align !12, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !370)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %2, ptr %i.f, align 8, !noalias !370
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !370
  call fastcc void @_RNvMs0_NtCsg9QLscIEtAL_17libp2p_rendezvous6clientNtB5_9Behaviour21discovered_peer_addrs(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.e, ptr noundef nonnull align 8 %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.val1), !noalias !370
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !370
  store ptr %i.f, ptr %i.d, align 8, !noalias !372
  %i.i = load ptr, ptr %i.e, align 8, !alias.scope !371, !noalias !370, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !373)
  call void @llvm.experimental.noalias.scope.decl(metadata !374)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !375
  store ptr %i.d, ptr %i.c, align 8, !noalias !376
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !377, !noalias !370, !nonnull !4, !noundef !4
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %3 = phi ptr [ %4, %bb.d ], [ %i.i, %bb.b ]     ; 3 uses
  %.not.not.not.i.not.not.not.i.not.i.i = icmp eq ptr %3, %i.k
  br i1 %.not.not.not.i.not.not.not.i.not.i.i, label %_RNCINvNvXsi_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterNtCsbli3iz7XG76_9multiaddr9MultiaddrEuINtNtNtBg_3ops12control_flow11ControlFlowuENCINvNvB1j_3any5checkRB2y_NCNCNCNvMs0_NtCsg9QLscIEtAL_17libp2p_rendezvous6clientNtB4t_9Behaviour15handle_response000E0E0B4v_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.l = call noundef zeroext i1 @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtCsbli3iz7XG76_9multiaddr9MultiaddrNCNCNCNvMs0_NtCsg9QLscIEtAL_17libp2p_rendezvous6clientNtB2x_9Behaviour15handle_response000E0INtB7_5FnMutTuB1K_EE8call_mutB2z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 %3), !noalias !378
  br i1 %i.l, label %bb.e, label %bb.c

_RNCINvNvXsi_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterNtCsbli3iz7XG76_9multiaddr9MultiaddrEuINtNtNtBg_3ops12control_flow11ControlFlowuENCINvNvB1j_3any5checkRB2y_NCNCNCNvMs0_NtCsg9QLscIEtAL_17libp2p_rendezvous6clientNtB4t_9Behaviour15handle_response000E0E0B4v_.exit.i.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !375
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !375
  br label %bb.p

bb.f:                                             ; preds = %_RNCINvNvXsi_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterNtCsbli3iz7XG76_9multiaddr9MultiaddrEuINtNtNtBg_3ops12control_flow11ControlFlowuENCINvNvB1j_3any5checkRB2y_NCNCNCNvMs0_NtCsg9QLscIEtAL_17libp2p_rendezvous6clientNtB4t_9Behaviour15handle_response000E0E0B4v_.exit.i.i, %bb.a
  store ptr null, ptr %i.e, align 8, !alias.scope !371, !noalias !370
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !379)
  call void @llvm.experimental.noalias.scope.decl(metadata !380)
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !381, !noalias !370, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !382)
  %i.o = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.m), !noalias !383 ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.o, 0
  %.not.i11.i.i.i.i = icmp ne ptr %i.p, null
  %i.q = extractvalue { ptr, ptr } %i.o, 1        ; 2 uses
  %.not812.i.i.i.i = icmp ne ptr %i.q, null
  %.not13.i.i.i.i = select i1 %.not.i11.i.i.i.i, i1 %.not812.i.i.i.i, i1 false
  br i1 %.not13.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %bb.h

bb.h:                                             ; preds = %_RNCINvNvMsg_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtBa_13FlattenCompatppE13iter_try_fold7flattenRINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEuINtNtNtBg_3ops12control_flow11ControlFlowuENCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterB2e_EuB2Q_NCINvNvB3O_3any5checkRB2e_NCNCNCNvMs0_NtCsg9QLscIEtAL_17libp2p_rendezvous6clientNtB5P_9Behaviour15handle_response000E0E0E0B5R_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.s = phi ptr [ %i.q, %.lr.ph.i.i.i.i ], [ %i.ab, %_RNCINvNvMsg_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtBa_13FlattenCompatppE13iter_try_fold7flattenRINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEuINtNtNtBg_3ops12control_flow11ControlFlowuENCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterB2e_EuB2Q_NCINvNvB3O_3any5checkRB2e_NCNCNCNvMs0_NtCsg9QLscIEtAL_17libp2p_rendezvous6clientNtB5P_9Behaviour15handle_response000E0E0E0B5R_.exit.i.i.i.i ] ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %.val6.i.i.i.i = load ptr, ptr %i.t, align 8, !noalias !384, !nonnull !4, !noundef !4 ; 2 uses
  %i.u = getelementptr i8, ptr %i.s, i64 16
  %.val7.i.i.i.i = load i64, ptr %i.u, align 8, !noalias !384, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %.val7.i.i.i.i, 5
  %i.v = getelementptr inbounds nuw i8, ptr %.val6.i.i.i.i, i64 %.idx ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !385)
  call void @llvm.experimental.noalias.scope.decl(metadata !386)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !387
  store ptr %i.d, ptr %i.b, align 8, !noalias !388
  %.not.not.not.i.not.not.not.i.not.not.not.i.not.i.i.i.i13 = icmp eq i64 %.val7.i.i.i.i, 0
  br i1 %.not.not.not.i.not.not.not.i.not.not.not.i.not.i.i.i.i13, label %_RNCINvNvMsg_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtBa_13FlattenCompatppE13iter_try_fold7flattenRINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEuINtNtNtBg_3ops12control_flow11ControlFlowuENCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterB2e_EuB2Q_NCINvNvB3O_3any5checkRB2e_NCNCNCNvMs0_NtCsg9QLscIEtAL_17libp2p_rendezvous6clientNtB5P_9Behaviour15handle_response000E0E0E0B5R_.exit.i.i.i.i, label %.lr.ph

bb.i:                                             ; preds = %.lr.ph
  %.not.not.not.i.not.not.not.i.not.not.not.i.not.i.i.i.i = icmp eq ptr %i.x, %i.v
  br i1 %.not.not.not.i.not.not.not.i.not.not.not.i.not.i.i.i.i, label %_RNCINvNvMsg_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtBa_13FlattenCompatppE13iter_try_fold7flattenRINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEuINtNtNtBg_3ops12control_flow11ControlFlowuENCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterB2e_EuB2Q_NCINvNvB3O_3any5checkRB2e_NCNCNCNvMs0_NtCsg9QLscIEtAL_17libp2p_rendezvous6clientNtB5P_9Behaviour15handle_response000E0E0E0B5R_.exit.i.i.i.i.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %bb.i
  %i.w = phi ptr [ %i.x, %bb.i ], [ %.val6.i.i.i.i, %bb.h ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32 ; 4 uses
  %i.y = call noundef zeroext i1 @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtCsbli3iz7XG76_9multiaddr9MultiaddrNCNCNCNvMs0_NtCsg9QLscIEtAL_17libp2p_rendezvous6clientNtB2x_9Behaviour15handle_response000E0INtB7_5FnMutTuB1K_EE8call_mutB2z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 %i.w), !noalias !389
  br i1 %i.y, label %bb.j, label %bb.i

_RNCINvNvMsg_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtBa_13FlattenCompatppE13iter_try_fold7flattenRINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEuINtNtNtBg_3ops12control_flow11ControlFlowuENCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterB2e_EuB2Q_NCINvNvB3O_3any5checkRB2e_NCNCNCNvMs0_NtCsg9QLscIEtAL_17libp2p_rendezvous6clientNtB5P_9Behaviour15handle_response000E0E0E0B5R_.exit.i.i.i.i.loopexit: ; preds = %bb.i
  store ptr %i.x, ptr %i.e, align 8, !alias.scope !390, !noalias !370
  br label %_RNCINvNvMsg_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtBa_13FlattenCompatppE13iter_try_fold7flattenRINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEuINtNtNtBg_3ops12control_flow11ControlFlowuENCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterB2e_EuB2Q_NCINvNvB3O_3any5checkRB2e_NCNCNCNvMs0_NtCsg9QLscIEtAL_17libp2p_rendezvous6clientNtB5P_9Behaviour15handle_response000E0E0E0B5R_.exit.i.i.i.i

_RNCINvNvMsg_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtBa_13FlattenCompatppE13iter_try_fold7flattenRINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEuINtNtNtBg_3ops12control_flow11ControlFlowuENCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterB2e_EuB2Q_NCINvNvB3O_3any5checkRB2e_NCNCNCNvMs0_NtCsg9QLscIEtAL_17libp2p_rendezvous6clientNtB5P_9Behaviour15handle_response000E0E0E0B5R_.exit.i.i.i.i: ; preds = %_RNCINvNvMsg_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtBa_13FlattenCompatppE13iter_try_fold7flattenRINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEuINtNtNtBg_3ops12control_flow11ControlFlowuENCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterB2e_EuB2Q_NCINvNvB3O_3any5checkRB2e_NCNCNCNvMs0_NtCsg9QLscIEtAL_17libp2p_rendezvous6clientNtB5P_9Behaviour15handle_response000E0E0E0B5R_.exit.i.i.i.i.loopexit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !387
  %i.z = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec9NamespaceINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.m), !noalias !384 ; 2 uses
  %i.aa = extractvalue { ptr, ptr } %i.z, 0
  %.not.i.i.i.i.i = icmp ne ptr %i.aa, null
  %i.ab = extractvalue { ptr, ptr } %i.z, 1       ; 2 uses
  %.not8.i.i.i.i = icmp ne ptr %i.ab, null
  %.not.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 %.not8.i.i.i.i, i1 false
  br i1 %.not.i.i.i.i, label %bb.h, label %.loopexit.i.loopexit.i

bb.j:                                             ; preds = %.lr.ph
  store ptr %i.x, ptr %i.e, align 8, !alias.scope !390, !noalias !370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !387
  br label %bb.p

.loopexit.i.loopexit.i:                           ; preds = %_RNCINvNvMsg_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtBa_13FlattenCompatppE13iter_try_fold7flattenRINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEuINtNtNtBg_3ops12control_flow11ControlFlowuENCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterB2e_EuB2Q_NCINvNvB3O_3any5checkRB2e_NCNCNCNvMs0_NtCsg9QLscIEtAL_17libp2p_rendezvous6clientNtB5P_9Behaviour15handle_response000E0E0E0B5R_.exit.i.i.i.i
  store ptr %i.v, ptr %i.r, align 8, !alias.scope !391, !noalias !370
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.i.loopexit.i, %bb.g, %bb.f
  store ptr null, ptr %i.e, align 8, !alias.scope !371, !noalias !370
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !371, !noalias !370, !noundef !4 ; 2 uses
  %.not5.i.i = icmp eq ptr %i.ad, null
  br i1 %.not5.i.i, label %bb.o, label %bb.k

bb.k:                                             ; preds = %.loopexit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !392)
  call void @llvm.experimental.noalias.scope.decl(metadata !393)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !394
  store ptr %i.d, ptr %i.a, align 8, !noalias !395
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !396, !noalias !370, !nonnull !4, !noundef !4
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.ag = phi ptr [ %i.ah, %bb.m ], [ %i.ad, %bb.k ] ; 3 uses
  %.not.not.not.i.not.not.not.i7.not.i.i = icmp eq ptr %i.ag, %i.af
  br i1 %.not.not.not.i.not.not.not.i7.not.i.i, label %_RNCINvNvXsi_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterNtCsbli3iz7XG76_9multiaddr9MultiaddrEuINtNtNtBg_3ops12control_flow11ControlFlowuENCINvNvB1j_3any5checkRB2y_NCNCNCNvMs0_NtCsg9QLscIEtAL_17libp2p_rendezvous6clientNtB4t_9Behaviour15handle_response000E0E0B4v_.exit8.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 2 uses
  store ptr %i.ah, ptr %i.ac, align 8, !alias.scope !396, !noalias !370
  %i.ai = call noundef zeroext i1 @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtCsbli3iz7XG76_9multiaddr9MultiaddrNCNCNCNvMs0_NtCsg9QLscIEtAL_17libp2p_rendezvous6clientNtB2x_9Behaviour15handle_response000E0INtB7_5FnMutTuB1K_EE8call_mutB2z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 %i.ag), !noalias !397
  br i1 %i.ai, label %bb.n, label %bb.l

_RNCINvNvXsi_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterNtCsbli3iz7XG76_9multiaddr9MultiaddrEuINtNtNtBg_3ops12control_flow11ControlFlowuENCINvNvB1j_3any5checkRB2y_NCNCNCNvMs0_NtCsg9QLscIEtAL_17libp2p_rendezvous6clientNtB4t_9Behaviour15handle_response000E0E0B4v_.exit8.i.i: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !394
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !394
  br label %bb.p

bb.o:                                             ; preds = %_RNCINvNvXsi_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterNtCsbli3iz7XG76_9multiaddr9MultiaddrEuINtNtNtBg_3ops12control_flow11ControlFlowuENCINvNvB1j_3any5checkRB2y_NCNCNCNvMs0_NtCsg9QLscIEtAL_17libp2p_rendezvous6clientNtB4t_9Behaviour15handle_response000E0E0B4v_.exit8.i.i, %.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !370
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.i, ptr noundef nonnull readonly align 8 dereferenceable(80) %.val1, i64 80, i1 false), !noalias !370
  %i.aj = load ptr, ptr %2, align 8, !noalias !370, !nonnull !4, !align !12, !noundef !4
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !370, !nonnull !4, !noundef !4
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !noalias !370, !noundef !4
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !370, !noundef !4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void %i.ak(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 %i.al, ptr noundef %i.an, i64 noundef %i.ap), !inline_history !369
  store i64 11, ptr %0, align 8, !alias.scope !370
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.i, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %_RNCNCNvMs0_NtCsg9QLscIEtAL_17libp2p_rendezvous6clientNtB9_9Behaviour15handle_response00Bb_.exit

bb.p:                                             ; preds = %bb.n, %bb.j, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !370
  store i64 -1, ptr %0, align 8, !alias.scope !370
  br label %_RNCNCNvMs0_NtCsg9QLscIEtAL_17libp2p_rendezvous6clientNtB9_9Behaviour15handle_response00Bb_.exit

_RNCNCNvMs0_NtCsg9QLscIEtAL_17libp2p_rendezvous6clientNtB9_9Behaviour15handle_response00Bb_.exit: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs3_NtCsg9QLscIEtAL_17libp2p_rendezvous6clientNtB5_13RegisterErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !11, !noundef !4
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 31)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 62)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.b, %bb.b ], [ %i.c, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtCs9Bqz0CSWZZv_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite8metadata(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !12, !noundef !4
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtCsg9QLscIEtAL_17libp2p_rendezvous6clientNtB4_9BehaviourNtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour16NetworkBehaviour14on_swarm_event(ptr noalias nofree noundef align 8 dereferenceable(864) %0, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(128) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [128 x i8], align 8               ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 2 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 8 uses
  %i.n = alloca [40 x i8], align 8                ; 7 uses
  %i.o = alloca [40 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [80 x i8], align 8                ; 4 uses
  %i.r = alloca [112 x i8], align 8               ; 7 uses
  %i.s = alloca [64 x i8], align 8                ; 6 uses
  %i.t = alloca [64 x i8], align 8                ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.v = tail call noundef zeroext i1 @_RNvMNtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour18external_addressesNtB2_17ExternalAddresses14on_swarm_event(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.c, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 128, i1 false)
  call void @_RNvXs9_CsfoiTdJnOWBy_23libp2p_request_responseINtB5_9BehaviourNtNtCsg9QLscIEtAL_17libp2p_rendezvous5codec5CodecENtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour16NetworkBehaviour14on_swarm_eventB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(360) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(128) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
end_hunk_0
